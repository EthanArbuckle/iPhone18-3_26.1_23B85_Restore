WTF::Lock *WTF::NativePromise<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::settleWithFunction(uint64_t a1, uint64_t *a2, WTF::Logger::LogSiteIdentifier *a3)
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

  if (*(a1 + 80) > 1u)
  {
    if (*(a1 + 80) == 2)
    {
      v32 = *(a1 + 56);
      *(a1 + 56) = 0;
      if (v32)
      {
        (*(*v32 + 8))(v32);
      }
    }
  }

  else if (*(a1 + 80))
  {
    if (!*(a1 + 72))
    {
      WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 56, v9);
    }

    *(a1 + 72) = -1;
  }

  v33 = *a2;
  *a2 = 0;
  *(a1 + 56) = v33;
  *(a1 + 80) = 2;
  result = WTF::NativePromise<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::dispatchAll(a1, &v36);
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

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebKit::WebCacheStorageConnection::PromiseConverter,Messages::NetworkStorageManager::CacheStorageRetrieveRecords,WTF::NativePromise<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>>(WTF::NativePromise<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1}::operator()(IPC::Connection*,std::unique_ptr<IPC::Decoder> &)::{lambda(void)#1},std::experimental::fundamentals_v3::expected<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error>>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F11229F0;
  std::unique_ptr<IPC::Decoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebKit::WebCacheStorageConnection::PromiseConverter,Messages::NetworkStorageManager::CacheStorageRetrieveRecords,WTF::NativePromise<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>>(WTF::NativePromise<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1}::operator()(IPC::Connection*,std::unique_ptr<IPC::Decoder> &)::{lambda(void)#1},std::experimental::fundamentals_v3::expected<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error>>::~CallableWrapper(IPC::Decoder **a1)
{
  *a1 = &unk_1F11229F0;
  std::unique_ptr<IPC::Decoder>::reset[abi:sn200100](a1 + 1, 0);

  return WTF::fastFree(a1, v2);
}

void *WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebKit::WebCacheStorageConnection::PromiseConverter,Messages::NetworkStorageManager::CacheStorageRetrieveRecords,WTF::NativePromise<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>>(WTF::NativePromise<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1}::operator()(IPC::Connection*,std::unique_ptr<IPC::Decoder> &)::{lambda(void)#1},std::experimental::fundamentals_v3::expected<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error>>::call@<X0>(void *result@<X0>, _BYTE *a2@<X8>, __n128 a3@<Q1>)
{
  v4 = result[1];
  if (!v4)
  {
    goto LABEL_17;
  }

  v5 = *v4;
  if (!*v4)
  {
    goto LABEL_17;
  }

  v6 = *(v4 + 8);
  v7 = *(v4 + 16);
  if (v6 <= v7 - v5)
  {
    *v4 = 0;
    *(v4 + 8) = 0;
    v23 = *(v4 + 24);
    if (v23)
    {
      if (v6)
      {
        (*(*v23 + 16))(v23);
        v5 = *v4;
        v6 = *(v4 + 8);
LABEL_36:
        *v4 = 0;
        *(v4 + 8) = 0;
        v24 = *(v4 + 24);
        if (v24)
        {
          if (v6)
          {
            (*(*v24 + 16))(v24, v5);
            v5 = *v4;
            v6 = *(v4 + 8);
LABEL_39:
            *v4 = 0;
            *(v4 + 8) = 0;
            v25 = *(v4 + 24);
            if (v25)
            {
              v26 = v6 == 0;
            }

            else
            {
              v26 = 1;
            }

            if (!v26)
            {
              (*(*v25 + 16))(v25, v5, v6);
            }

            goto LABEL_10;
          }
        }

        else
        {
          v6 = 0;
        }

        v5 = 0;
        goto LABEL_39;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
    goto LABEL_36;
  }

  *(v4 + 16) = v7 + 1;
  if (!v7)
  {
    goto LABEL_36;
  }

  v8 = *v7;
  if (v8 >= 2)
  {
    goto LABEL_39;
  }

  if (v8)
  {
    IPC::VectorArgumentCoder<false,WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(v4, &v32, a3);
    if ((v34 & 1) == 0)
    {
      v20 = *v4;
      v21 = *(v4 + 8);
      *v4 = 0;
      *(v4 + 8) = 0;
      v22 = *(v4 + 24);
      if (!v22 || !v21 || ((*(*v22 + 16))(v22, v20), (v34 & 1) == 0))
      {
LABEL_10:
        v12 = *v4;
        v13 = *(v4 + 8);
        *v4 = 0;
        *(v4 + 8) = 0;
        v14 = *(v4 + 24);
        if (v14)
        {
          v15 = v13 == 0;
        }

        else
        {
          v15 = 1;
        }

        if (!v15)
        {
          (*(*v14 + 16))(v14, v12);
        }

        v27[0] = 0;
        v28 = 0;
LABEL_16:
        v16 = *v4;
        v17 = *(v4 + 8);
        *v4 = 0;
        *(v4 + 8) = 0;
        result = *(v4 + 24);
        if (result)
        {
          if (v17)
          {
            result = (*(*result + 16))(result, v16);
            if (v28)
            {
              goto LABEL_23;
            }
          }
        }

LABEL_17:
        *a2 = 4;
        a2[16] = 1;
        return result;
      }
    }

    v29[0] = v32;
    v10 = v33;
    v32 = 0;
    v33 = 0;
    v29[1] = v10;
    v30 = 0;
    v31 = 1;
    WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v32, v9);
  }

  else
  {
    v11 = IPC::Decoder::decode<WebCore::DOMCacheEngine::Error>(v4);
    if (v11 < 0x100u)
    {
      goto LABEL_10;
    }

    LOBYTE(v29[0]) = v11;
    v30 = 1;
    v31 = 1;
  }

  mpark::detail::move_assignment<mpark::detail::traits<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error>,(mpark::detail::Trait)1>::move_assignment(v27, v29);
  v28 = 1;
  if ((v31 & 1) != 0 && !v30)
  {
    WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v29, v18);
    if ((v28 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

LABEL_23:
  result = mpark::detail::move_assignment<mpark::detail::traits<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error>,(mpark::detail::Trait)1>::move_assignment(a2, v27);
  if ((v28 & 1) != 0 && !v27[16])
  {
    return WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v27, v19);
  }

  return result;
}

uint64_t WTF::NativePromiseProducer<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::NativePromiseProducer<std::enable_if<true,void>>(uint64_t a1, WTF::Logger::LogSiteIdentifier *a2)
{
  v39[2] = *MEMORY[0x1E69E9840];
  v4 = WTF::fastMalloc(0x88);
  *(v4 + 8) = 1;
  *v4 = &unk_1F11222D8;
  v5 = *(a2 + 1);
  *(v4 + 16) = *a2;
  *(v4 + 32) = v5;
  *(v4 + 48) = 0;
  v6 = (v4 + 48);
  *(v4 + 80) = 0;
  *(v4 + 88) = v4 + 104;
  *(v4 + 96) = 1;
  *(v4 + 112) = 0;
  *(v4 + 120) = 0;
  *(v4 + 128) = 0;
  v7 = WTF::NativePromiseBase::logChannel(v4);
  if (*v7)
  {
    v8 = v7;
    if (v7[16] >= 4u)
    {
      WTF::String::String(&v35, "creating ");
      WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(&v34, v4);
      *buf = v35;
      v33[0] = v34;
      result = WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(buf, v33, &v36);
      if (!v36)
      {
        __break(0xC471u);
        return result;
      }

      v11 = v34;
      v34 = 0;
      if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v11, v10);
      }

      v12 = v35;
      v35 = 0;
      if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v12, v10);
      }

      v13 = *(v8 + 4);
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      if (v14)
      {
        WTF::String::utf8();
        v16 = v33[0] ? v33[0] + 16 : 0;
        *buf = 136446210;
        *&buf[4] = v16;
        _os_log_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
        v14 = v33[0];
        v33[0] = 0;
        if (v14)
        {
          if (*v14 == 1)
          {
            v14 = WTF::fastFree(v14, v15);
          }

          else
          {
            --*v14;
          }
        }
      }

      if (*v8 && v8[16] >= 4u)
      {
        v17 = MEMORY[0x1E696EBC0];
        while (1)
        {
          v18 = *v17;
          if (v18)
          {
            break;
          }

          v19 = *v17;
          atomic_compare_exchange_strong_explicit(v17, &v19, v18 | 1, memory_order_acquire, memory_order_acquire);
          if (v19 == v18)
          {
            v20 = WTF::Logger::observers(v14);
            v21 = *(v20 + 12);
            if (v21)
            {
              v22 = *v20;
              v23 = *v20 + 8 * v21;
              do
              {
                v24 = *v22;
                *buf = 0;
                WTF::String::String(&buf[8], "creating ");
                v38 = 0;
                WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(v39, v4);
                WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v33, buf, 2uLL);
                (*(*v24 + 16))(v24, v8, 4, v33);
                WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v33, v25);
                for (i = 24; i != -8; i -= 16)
                {
                  v27 = *&buf[i];
                  *&buf[i] = 0;
                  if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v27, v15);
                  }
                }

                ++v22;
              }

              while (v22 != v23);
            }

            v28 = 1;
            atomic_compare_exchange_strong_explicit(v17, &v28, 0, memory_order_release, memory_order_relaxed);
            if (v28 != 1)
            {
              WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
            }

            break;
          }
        }
      }

      v7 = v36;
      v36 = 0;
      if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        v7 = WTF::StringImpl::destroy(v7, v15);
      }
    }
  }

  v29 = 0;
  *a1 = v4;
  v30 = *a2;
  *(a1 + 24) = *(a2 + 1);
  *(a1 + 8) = v30;
  atomic_fetch_add((v4 + 8), 1u);
  atomic_compare_exchange_strong_explicit((v4 + 48), &v29, 1u, memory_order_acquire, memory_order_acquire);
  if (v29)
  {
    v7 = MEMORY[0x19EB01E30](v6);
  }

  v31 = WTF::NativePromiseBase::logChannel(v7);
  if (*v31 && v31[16] >= 4u)
  {
    WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [27],WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>>(v31, a2, " runSynchronouslyOnTarget ", v4);
  }

  atomic_store(0, (v4 + 129));
  v32 = 1;
  atomic_compare_exchange_strong_explicit((v4 + 48), &v32, 0, memory_order_release, memory_order_relaxed);
  if (v32 != 1)
  {
    WTF::Lock::unlockSlow(v6);
  }

  if (atomic_fetch_add((v4 + 8), 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, (v4 + 8));
    (*(*v4 + 16))(v4);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebKit::WebCacheStorageConnection::PromiseConverter,Messages::NetworkStorageManager::CacheStorageRemoveRecords,WTF::NativePromise<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>>(WTF::NativePromise<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1},void,IPC::Connection*,std::unique_ptr<IPC::Decoder> &>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F1122A18;
  WTF::NativePromiseProducer<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::~NativePromiseProducer((a1 + 8));
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebKit::WebCacheStorageConnection::PromiseConverter,Messages::NetworkStorageManager::CacheStorageRemoveRecords,WTF::NativePromise<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>>(WTF::NativePromise<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1},void,IPC::Connection*,std::unique_ptr<IPC::Decoder> &>::~CallableWrapper(atomic_uint **a1)
{
  *a1 = &unk_1F1122A18;
  WTF::NativePromiseProducer<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::~NativePromiseProducer(a1 + 1);

  return WTF::fastFree(a1, v2);
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebKit::WebCacheStorageConnection::PromiseConverter,Messages::NetworkStorageManager::CacheStorageRemoveRecords,WTF::NativePromise<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>>(WTF::NativePromise<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1},void,IPC::Connection*,std::unique_ptr<IPC::Decoder> &>::call(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  *a3 = 0;
  v5 = WTF::fastMalloc(0x10);
  *v5 = &unk_1F1122A40;
  v5[1] = v4;
  v8 = v5;
  v7[0] = 0;
  v7[1] = 0;
  v7[2] = "operator()";
  v7[3] = 0;
  WTF::NativePromiseProducer<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::settleWithFunction<std::enable_if<true,void>>((a1 + 8), &v8, v7);
  result = v8;
  if (v8)
  {
    return (*(*v8 + 8))(v8);
  }

  return result;
}

unsigned __int8 *WTF::NativePromiseProducer<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::settleWithFunction<std::enable_if<true,void>>(atomic_uchar *a1, uint64_t *a2, WTF::Logger::LogSiteIdentifier *a3)
{
  v45[2] = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = 1;
  if (!*a1)
  {
    v10 = 0;
    goto LABEL_12;
  }

  v6 = a1;
  v7 = 0;
  atomic_fetch_add((v3 + 8), 1u);
  a1 = (v3 + 48);
  atomic_compare_exchange_strong_explicit((v3 + 48), &v7, 1u, memory_order_acquire, memory_order_acquire);
  if (v7)
  {
    MEMORY[0x19EB01E30]();
    a1 = (v3 + 48);
  }

  v8 = *(v3 + 80);
  v9 = 1;
  atomic_compare_exchange_strong_explicit(a1, &v9, 0, memory_order_release, memory_order_relaxed);
  if (v9 != 1)
  {
    a1 = WTF::Lock::unlockSlow(a1);
  }

  if (atomic_fetch_add((v3 + 8), 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, (v3 + 8));
    a1 = (*(*v3 + 16))(v3);
  }

  v10 = *v6;
  if (v8)
  {
    if (v10)
    {
      atomic_fetch_add(v10 + 2, 1u);
      v4 = 0;
    }

LABEL_12:
    result = WTF::NativePromiseBase::logChannel(a1);
    if (*result)
    {
      v12 = result[16] >= 4u;
    }

    else
    {
      v12 = 0;
    }

    if (v12)
    {
      v13 = result;
      WTF::Logger::LogSiteIdentifier::toString(&v39, a3);
      WTF::String::String(&v38, " ignored already resolved or rejected ");
      WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(&v37, v10);
      WTF::makeString<WTF::String,WTF::String,WTF::String>(&v39, &v38, &v37, &v40);
      v15 = v37;
      v37 = 0;
      if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v15, v14);
      }

      v16 = v38;
      v38 = 0;
      if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v16, v14);
      }

      v17 = v39;
      v39 = 0;
      if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v17, v14);
      }

      v18 = *(v13 + 4);
      v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
      if (v19)
      {
        WTF::String::utf8();
        v21 = v36[0] ? v36[0] + 16 : 0;
        *buf = 136446210;
        v42 = v21;
        _os_log_impl(&dword_19D52D000, v18, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
        v19 = v36[0];
        v36[0] = 0;
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
                WTF::Logger::LogSiteIdentifier::toString((&v42 + 4), a3);
                v43 = 0;
                WTF::String::String(v44, " ignored already resolved or rejected ");
                v44[2] = 0;
                WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(v45, v10);
                WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v36, buf, 3uLL);
                (*(*v29 + 16))(v29, v13, 4, v36);
                WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v36, v30);
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

      result = v40;
      v40 = 0;
      if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v20);
      }
    }

    if ((v4 & 1) == 0 && atomic_fetch_add(v10 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v10 + 2);
LABEL_58:
      v34 = *(*v10 + 16);

      return v34(v10);
    }

    return result;
  }

  if (v10)
  {
    atomic_fetch_add(v10 + 2, 1u);
    result = WTF::NativePromise<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::settleWithFunction(v10, a2, a3);
    if (atomic_fetch_add(v10 + 2, 0xFFFFFFFF) != 1)
    {
      return result;
    }

    atomic_store(1u, v10 + 2);
    goto LABEL_58;
  }

  return WTF::NativePromise<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::settleWithFunction(0, a2, a3);
}

WTF::Lock *WTF::NativePromise<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::settleWithFunction(uint64_t a1, uint64_t *a2, WTF::Logger::LogSiteIdentifier *a3)
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
    v10 = v8[16] >= 4u;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = v8;
    WTF::Logger::LogSiteIdentifier::toString(&v42, a3);
    WTF::String::String(&v41, " settling ");
    WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(&v40, a1);
    WTF::makeString<WTF::String,WTF::String,WTF::String>(&v42, &v41, &v40, &v43);
    v13 = v40;
    v40 = 0;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v12);
    }

    v14 = v41;
    v41 = 0;
    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v12);
    }

    v15 = v42;
    v42 = 0;
    if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v12);
    }

    v16 = *(v11 + 4);
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    if (v17)
    {
      WTF::String::utf8();
      v18 = v39[0] ? v39[0] + 16 : 0;
      *buf = 136446210;
      v45 = v18;
      _os_log_impl(&dword_19D52D000, v16, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
      v17 = v39[0];
      v39[0] = 0;
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
              WTF::Logger::LogSiteIdentifier::toString((&v45 + 4), a3);
              v46 = 0;
              WTF::String::String(v47, " settling ");
              v47[2] = 0;
              WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(v48, a1);
              WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v39, buf, 3uLL);
              (*(*v26 + 16))(v26, v11, 4, v39);
              WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v39, v27);
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

    v31 = v43;
    v43 = 0;
    if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v31, v9);
    }
  }

  if (*(a1 + 80) > 1u)
  {
    if (*(a1 + 80) == 2)
    {
      v33 = *(a1 + 56);
      *(a1 + 56) = 0;
      if (v33)
      {
        (*(*v33 + 8))(v33);
      }
    }
  }

  else if (*(a1 + 80))
  {
    if (!*(a1 + 72))
    {
      v32 = *(a1 + 56);
      if (v32)
      {
        *(a1 + 56) = 0;
        *(a1 + 64) = 0;
        WTF::fastFree(v32, v9);
      }
    }

    *(a1 + 72) = -1;
  }

  v34 = *a2;
  *a2 = 0;
  *(a1 + 56) = v34;
  *(a1 + 80) = 2;
  result = WTF::NativePromise<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::dispatchAll(a1, &v37);
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

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebKit::WebCacheStorageConnection::PromiseConverter,Messages::NetworkStorageManager::CacheStorageRemoveRecords,WTF::NativePromise<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>>(WTF::NativePromise<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1}::operator()(IPC::Connection*,std::unique_ptr<IPC::Decoder> &)::{lambda(void)#1},std::experimental::fundamentals_v3::expected<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error>>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F1122A40;
  std::unique_ptr<IPC::Decoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebKit::WebCacheStorageConnection::PromiseConverter,Messages::NetworkStorageManager::CacheStorageRemoveRecords,WTF::NativePromise<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>>(WTF::NativePromise<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1}::operator()(IPC::Connection*,std::unique_ptr<IPC::Decoder> &)::{lambda(void)#1},std::experimental::fundamentals_v3::expected<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error>>::~CallableWrapper(IPC::Decoder **a1)
{
  *a1 = &unk_1F1122A40;
  std::unique_ptr<IPC::Decoder>::reset[abi:sn200100](a1 + 1, 0);

  return WTF::fastFree(a1, v2);
}

WTF *WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebKit::WebCacheStorageConnection::PromiseConverter,Messages::NetworkStorageManager::CacheStorageRemoveRecords,WTF::NativePromise<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>>(WTF::NativePromise<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1}::operator()(IPC::Connection*,std::unique_ptr<IPC::Decoder> &)::{lambda(void)#1},std::experimental::fundamentals_v3::expected<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error>>::call@<X0>(WTF *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(result + 1);
  if (v3 && *v3 && (result = IPC::Decoder::decode<std::tuple<std::experimental::fundamentals_v3::expected<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error>>>(&v5, v3), v8 == 1))
  {
    result = mpark::detail::move_assignment<mpark::detail::traits<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError>,(mpark::detail::Trait)1>::move_assignment(a2, &v5);
    if ((v8 & 1) != 0 && !v7)
    {
      result = v5;
      if (v5)
      {
        v5 = 0;
        v6 = 0;
        return WTF::fastFree(result, v4);
      }
    }
  }

  else
  {
    *a2 = 4;
    a2[16] = 1;
  }

  return result;
}

WTF *IPC::Decoder::decode<std::tuple<std::experimental::fundamentals_v3::expected<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error>>>(_BYTE *a1, IPC::Decoder *a2)
{
  v4 = *(a2 + 2);
  v5 = *a2;
  v6 = *(a2 + 1);
  if (v6 <= &v4[-v5])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v17 = *(a2 + 3);
    if (v17)
    {
      if (v6)
      {
        (*(*v17 + 16))(v17);
        v5 = *a2;
        v6 = *(a2 + 1);
        goto LABEL_27;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
LABEL_27:
    *a2 = 0;
    *(a2 + 1) = 0;
    v18 = *(a2 + 3);
    if (v18)
    {
      if (v6)
      {
        (*(*v18 + 16))(v18, v5);
        v5 = *a2;
        v6 = *(a2 + 1);
        goto LABEL_30;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
LABEL_30:
    *a2 = 0;
    *(a2 + 1) = 0;
    v19 = *(a2 + 3);
    if (v19 && v6)
    {
      (*(*v19 + 16))(v19, v5);
    }

    goto LABEL_8;
  }

  *(a2 + 2) = v4 + 1;
  if (!v4)
  {
    goto LABEL_27;
  }

  v7 = *v4;
  if (v7 >= 2)
  {
    goto LABEL_30;
  }

  if (v7)
  {
    IPC::Decoder::decode<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a2, v24);
    if (v25 == 1)
    {
      v20 = v24[0];
      v21 = v24[1];
      v22 = 0;
LABEL_16:
      v23 = 1;
      result = mpark::detail::move_assignment<mpark::detail::traits<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError>,(mpark::detail::Trait)1>::move_assignment(a1, &v20);
      v16 = v23;
      a1[24] = 1;
      if ((v16 & 1) == 0)
      {
        return result;
      }

      if (v22)
      {
        return result;
      }

      result = v20;
      if (!v20)
      {
        return result;
      }

      v20 = 0;
      LODWORD(v21) = 0;
      result = WTF::fastFree(result, v15);
      if (a1[24])
      {
        return result;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v8 = IPC::Decoder::decode<WebCore::DOMCacheEngine::Error>(a2);
    if (v8 >= 0x100u)
    {
      LOBYTE(v20) = v8;
      v22 = 1;
      goto LABEL_16;
    }
  }

LABEL_8:
  v9 = *a2;
  v10 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  v11 = *(a2 + 3);
  if (v11 && v10)
  {
    (*(*v11 + 16))(v11, v9);
  }

  *a1 = 0;
  a1[24] = 0;
LABEL_10:
  v12 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result && v12)
  {
    v14 = *(*result + 16);

    return v14();
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebKit::WebCacheStorageConnection::PromiseConverter,Messages::NetworkStorageManager::CacheStoragePutRecords,WTF::NativePromise<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>>(WTF::NativePromise<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1},void,IPC::Connection*,std::unique_ptr<IPC::Decoder> &>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F1122A68;
  WTF::NativePromiseProducer<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::~NativePromiseProducer((a1 + 8));
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebKit::WebCacheStorageConnection::PromiseConverter,Messages::NetworkStorageManager::CacheStoragePutRecords,WTF::NativePromise<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>>(WTF::NativePromise<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1},void,IPC::Connection*,std::unique_ptr<IPC::Decoder> &>::~CallableWrapper(atomic_uint **a1)
{
  *a1 = &unk_1F1122A68;
  WTF::NativePromiseProducer<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::~NativePromiseProducer(a1 + 1);

  return WTF::fastFree(a1, v2);
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebKit::WebCacheStorageConnection::PromiseConverter,Messages::NetworkStorageManager::CacheStoragePutRecords,WTF::NativePromise<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>>(WTF::NativePromise<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1},void,IPC::Connection*,std::unique_ptr<IPC::Decoder> &>::call(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  *a3 = 0;
  v5 = WTF::fastMalloc(0x10);
  *v5 = &unk_1F1122A90;
  v5[1] = v4;
  v8 = v5;
  v7[0] = 0;
  v7[1] = 0;
  v7[2] = "operator()";
  v7[3] = 0;
  WTF::NativePromiseProducer<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::settleWithFunction<std::enable_if<true,void>>((a1 + 8), &v8, v7);
  result = v8;
  if (v8)
  {
    return (*(*v8 + 8))(v8);
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebKit::WebCacheStorageConnection::PromiseConverter,Messages::NetworkStorageManager::CacheStoragePutRecords,WTF::NativePromise<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>>(WTF::NativePromise<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1}::operator()(IPC::Connection*,std::unique_ptr<IPC::Decoder> &)::{lambda(void)#1},std::experimental::fundamentals_v3::expected<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error>>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F1122A90;
  std::unique_ptr<IPC::Decoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebKit::WebCacheStorageConnection::PromiseConverter,Messages::NetworkStorageManager::CacheStoragePutRecords,WTF::NativePromise<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>>(WTF::NativePromise<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1}::operator()(IPC::Connection*,std::unique_ptr<IPC::Decoder> &)::{lambda(void)#1},std::experimental::fundamentals_v3::expected<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error>>::~CallableWrapper(IPC::Decoder **a1)
{
  *a1 = &unk_1F1122A90;
  std::unique_ptr<IPC::Decoder>::reset[abi:sn200100](a1 + 1, 0);

  return WTF::fastFree(a1, v2);
}

WTF *WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebKit::WebCacheStorageConnection::PromiseConverter,Messages::NetworkStorageManager::CacheStoragePutRecords,WTF::NativePromise<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>>(WTF::NativePromise<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1}::operator()(IPC::Connection*,std::unique_ptr<IPC::Decoder> &)::{lambda(void)#1},std::experimental::fundamentals_v3::expected<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error>>::call@<X0>(WTF *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(result + 1);
  if (v3 && *v3 && (result = IPC::Decoder::decode<std::tuple<std::experimental::fundamentals_v3::expected<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error>>>(&v5, v3), v8 == 1))
  {
    result = mpark::detail::move_assignment<mpark::detail::traits<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError>,(mpark::detail::Trait)1>::move_assignment(a2, &v5);
    if ((v8 & 1) != 0 && !v7)
    {
      result = v5;
      if (v5)
      {
        v5 = 0;
        v6 = 0;
        return WTF::fastFree(result, v4);
      }
    }
  }

  else
  {
    *a2 = 4;
    a2[16] = 1;
  }

  return result;
}

uint64_t WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,unsigned int>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,unsigned int,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t a2)
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

  return WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,unsigned int>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,unsigned int,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

uint64_t WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,unsigned int>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,unsigned int,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t a3)
{
  v4 = *a1;
  if (*a1)
  {
    LODWORD(v5) = *(v4 - 4);
    v6 = *(v4 - 12);
  }

  else
  {
    LODWORD(v5) = 0;
    v6 = 0;
  }

  v7 = WTF::fastMalloc((72 * a2 + 16));
  if (a2)
  {
    v9 = a2;
    v10 = (v7 + 16);
    do
    {
      v10[16] = 0;
      *(v10 + 2) = 0uLL;
      *(v10 + 3) = 0uLL;
      *v10 = 0uLL;
      *(v10 + 1) = 0uLL;
      v10 += 18;
      --v9;
    }

    while (v9);
  }

  *a1 = v7 + 16;
  *(v7 + 2) = a2 - 1;
  *(v7 + 3) = a2;
  *v7 = 0;
  *(v7 + 1) = v6;
  if (v5)
  {
    v11 = 0;
    v12 = 0;
    v5 = v5;
    v33 = v5;
    while (1)
    {
      v13 = v4 + 72 * v11;
      if (*(v13 + 24))
      {
        break;
      }

      if (*v13 != -1)
      {
        goto LABEL_11;
      }

LABEL_62:
      if (++v11 == v5)
      {
        goto LABEL_67;
      }
    }

    if (*(v13 + 24) != 1)
    {
      mpark::throw_bad_variant_access(v7);
    }

LABEL_11:
    v7 = WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WebCore::ClientOrigin>,false>::isEmptyValue<WebCore::ClientOrigin>();
    if (v7)
    {
      if (!*(v13 + 56))
      {
        v14 = *(v13 + 40);
        *(v13 + 40) = 0;
        if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v14, v8);
        }

        v7 = *(v13 + 32);
        *(v13 + 32) = 0;
        if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          v7 = WTF::StringImpl::destroy(v7, v8);
        }
      }

      *(v13 + 56) = -1;
      if (!*(v13 + 24))
      {
        v15 = *(v13 + 8);
        *(v13 + 8) = 0;
        if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v15, v8);
        }

        v7 = *v13;
        *v13 = 0;
        if (v7)
        {
          if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            v7 = WTF::StringImpl::destroy(v7, v8);
          }
        }
      }

      *(v13 + 24) = -1;
    }

    else
    {
      v16 = v4;
      v17 = v12;
      v18 = *a1;
      if (*a1)
      {
        v19 = *(v18 - 8);
      }

      else
      {
        v19 = 0;
      }

      v20 = WTF::computeHash<WebCore::ClientOrigin>(v13);
      v21 = 0;
      do
      {
        v22 = v20 & v19;
        v23 = v18 + 72 * (v20 & v19);
        v25 = WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WebCore::ClientOrigin>,false>::isEmptyValue<WebCore::ClientOrigin>();
        v20 = ++v21 + v22;
      }

      while (!v25);
      v12 = v17;
      v4 = v16;
      v5 = v33;
      if (!*(v23 + 56))
      {
        v26 = *(v23 + 40);
        *(v23 + 40) = 0;
        if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v26, v24);
        }

        v27 = *(v23 + 32);
        *(v23 + 32) = 0;
        if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v27, v24);
        }
      }

      *(v23 + 56) = -1;
      if (!*(v23 + 24))
      {
        v28 = *(v23 + 8);
        *(v23 + 8) = 0;
        if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v28, v24);
        }

        v29 = *v23;
        *v23 = 0;
        if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v29, v24);
        }
      }

      *(v23 + 24) = -1;
      mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment(v23);
      v7 = mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment((v23 + 32));
      *(v23 + 64) = *(v13 + 64);
      if (!*(v13 + 56))
      {
        v30 = *(v13 + 40);
        *(v13 + 40) = 0;
        if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v30, v8);
        }

        v7 = *(v13 + 32);
        *(v13 + 32) = 0;
        if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          v7 = WTF::StringImpl::destroy(v7, v8);
        }
      }

      *(v13 + 56) = -1;
      if (!*(v13 + 24))
      {
        v31 = *(v13 + 8);
        *(v13 + 8) = 0;
        if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v31, v8);
        }

        v7 = *v13;
        *v13 = 0;
        if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          v7 = WTF::StringImpl::destroy(v7, v8);
        }
      }

      *(v13 + 24) = -1;
      if (v13 == a3)
      {
        v12 = v23;
      }
    }

    goto LABEL_62;
  }

  v12 = 0;
  result = 0;
  if (v4)
  {
LABEL_67:
    WTF::fastFree((v4 - 16), v8);
    return v12;
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebKit::WebCacheStorageConnection::PromiseConverter,Messages::NetworkStorageManager::CacheStorageClearMemoryRepresentation,WTF::NativePromise<void,WebCore::DOMCacheEngine::Error,0u>>(WTF::NativePromise<void,WebCore::DOMCacheEngine::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1},void,IPC::Connection*,std::unique_ptr<IPC::Decoder> &>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F1122AB8;
  WTF::NativePromiseProducer<void,WebCore::DOMCacheEngine::Error,0u>::~NativePromiseProducer((a1 + 8));
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebKit::WebCacheStorageConnection::PromiseConverter,Messages::NetworkStorageManager::CacheStorageClearMemoryRepresentation,WTF::NativePromise<void,WebCore::DOMCacheEngine::Error,0u>>(WTF::NativePromise<void,WebCore::DOMCacheEngine::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1},void,IPC::Connection*,std::unique_ptr<IPC::Decoder> &>::~CallableWrapper(atomic_uint **a1)
{
  *a1 = &unk_1F1122AB8;
  WTF::NativePromiseProducer<void,WebCore::DOMCacheEngine::Error,0u>::~NativePromiseProducer(a1 + 1);

  return WTF::fastFree(a1, v2);
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebKit::WebCacheStorageConnection::PromiseConverter,Messages::NetworkStorageManager::CacheStorageClearMemoryRepresentation,WTF::NativePromise<void,WebCore::DOMCacheEngine::Error,0u>>(WTF::NativePromise<void,WebCore::DOMCacheEngine::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1},void,IPC::Connection*,std::unique_ptr<IPC::Decoder> &>::call(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v47[1] = *MEMORY[0x1E69E9840];
  v4 = *a3;
  *a3 = 0;
  v5 = WTF::fastMalloc(0x10);
  *v5 = &unk_1F1122AE0;
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
    WTF::NativePromise<void,WebCore::DOMCacheEngine::Error,0u>::settleWithFunction(v11, &v37, v36);
    if (atomic_fetch_add(v11 + 2, 0xFFFFFFFF) != 1)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

  WTF::NativePromise<void,WebCore::DOMCacheEngine::Error,0u>::settleWithFunction(0, &v37, v36);
LABEL_54:
  result = v37;
  if (v37)
  {
    return (*(*v37 + 8))(v37);
  }

  return result;
}

WTF::Lock *WTF::NativePromise<void,WebCore::DOMCacheEngine::Error,0u>::settleWithFunction(uint64_t a1, uint64_t *a2, WTF::Logger::LogSiteIdentifier *a3)
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
  result = WTF::NativePromise<void,WebCore::DOMCacheEngine::Error,0u>::dispatchAll(a1, &v37);
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

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebKit::WebCacheStorageConnection::PromiseConverter,Messages::NetworkStorageManager::CacheStorageClearMemoryRepresentation,WTF::NativePromise<void,WebCore::DOMCacheEngine::Error,0u>>(WTF::NativePromise<void,WebCore::DOMCacheEngine::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1}::operator()(IPC::Connection*,std::unique_ptr<IPC::Decoder> &)::{lambda(void)#1},std::experimental::fundamentals_v3::expected<void,WebCore::DOMCacheEngine::Error>>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F1122AE0;
  std::unique_ptr<IPC::Decoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebKit::WebCacheStorageConnection::PromiseConverter,Messages::NetworkStorageManager::CacheStorageClearMemoryRepresentation,WTF::NativePromise<void,WebCore::DOMCacheEngine::Error,0u>>(WTF::NativePromise<void,WebCore::DOMCacheEngine::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1}::operator()(IPC::Connection*,std::unique_ptr<IPC::Decoder> &)::{lambda(void)#1},std::experimental::fundamentals_v3::expected<void,WebCore::DOMCacheEngine::Error>>::~CallableWrapper(IPC::Decoder **a1)
{
  *a1 = &unk_1F1122AE0;
  std::unique_ptr<IPC::Decoder>::reset[abi:sn200100](a1 + 1, 0);

  return WTF::fastFree(a1, v2);
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebKit::WebCacheStorageConnection::PromiseConverter,Messages::NetworkStorageManager::CacheStorageClearMemoryRepresentation,WTF::NativePromise<void,WebCore::DOMCacheEngine::Error,0u>>(WTF::NativePromise<void,WebCore::DOMCacheEngine::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1}::operator()(IPC::Connection*,std::unique_ptr<IPC::Decoder> &)::{lambda(void)#1},std::experimental::fundamentals_v3::expected<void,WebCore::DOMCacheEngine::Error>>::call@<X0>(uint64_t result@<X0>, _WORD *a2@<X8>)
{
  v2 = *(result + 8);
  if (v2 && *v2)
  {
    *a2 = 0;
  }

  else
  {
    *a2 = 260;
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebKit::WebCacheStorageConnection::PromiseConverter,Messages::NetworkStorageManager::CacheStorageRepresentation,WTF::NativePromise<WTF::String,WebCore::DOMCacheEngine::Error,0u>>(WTF::NativePromise<WTF::String,WebCore::DOMCacheEngine::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1},void,IPC::Connection*,std::unique_ptr<IPC::Decoder> &>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F1122B08;
  WTF::NativePromiseProducer<WTF::String,WebCore::DOMCacheEngine::Error,0u>::~NativePromiseProducer((a1 + 8));
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebKit::WebCacheStorageConnection::PromiseConverter,Messages::NetworkStorageManager::CacheStorageRepresentation,WTF::NativePromise<WTF::String,WebCore::DOMCacheEngine::Error,0u>>(WTF::NativePromise<WTF::String,WebCore::DOMCacheEngine::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1},void,IPC::Connection*,std::unique_ptr<IPC::Decoder> &>::~CallableWrapper(atomic_uint **a1)
{
  *a1 = &unk_1F1122B08;
  WTF::NativePromiseProducer<WTF::String,WebCore::DOMCacheEngine::Error,0u>::~NativePromiseProducer(a1 + 1);

  return WTF::fastFree(a1, v2);
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebKit::WebCacheStorageConnection::PromiseConverter,Messages::NetworkStorageManager::CacheStorageRepresentation,WTF::NativePromise<WTF::String,WebCore::DOMCacheEngine::Error,0u>>(WTF::NativePromise<WTF::String,WebCore::DOMCacheEngine::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1},void,IPC::Connection*,std::unique_ptr<IPC::Decoder> &>::call(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v47[1] = *MEMORY[0x1E69E9840];
  v4 = *a3;
  *a3 = 0;
  v5 = WTF::fastMalloc(0x10);
  *v5 = &unk_1F1122B30;
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

  v9 = *(v6 + 72);
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
    WTF::NativePromise<WTF::String,WebCore::DOMCacheEngine::Error,0u>::settleWithFunction(v11, &v37, v36);
    if (atomic_fetch_add(v11 + 2, 0xFFFFFFFF) != 1)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

  WTF::NativePromise<WTF::String,WebCore::DOMCacheEngine::Error,0u>::settleWithFunction(0, &v37, v36);
LABEL_54:
  result = v37;
  if (v37)
  {
    return (*(*v37 + 8))(v37);
  }

  return result;
}

WTF::Lock *WTF::NativePromise<WTF::String,WebCore::DOMCacheEngine::Error,0u>::settleWithFunction(uint64_t a1, uint64_t *a2, WTF::Logger::LogSiteIdentifier *a3)
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

  if (*(a1 + 72) > 1u)
  {
    if (*(a1 + 72) == 2)
    {
      v32 = *(a1 + 56);
      *(a1 + 56) = 0;
      if (v32)
      {
        (*(*v32 + 8))(v32);
      }
    }
  }

  else if (*(a1 + 72))
  {
    mpark::detail::move_constructor<mpark::detail::traits<WebCore::RouterSourceDict,WebCore::RouterSourceEnum>,(mpark::detail::Trait)1>::~move_constructor(a1 + 56, v9);
  }

  v33 = *a2;
  *a2 = 0;
  *(a1 + 56) = v33;
  *(a1 + 72) = 2;
  result = WTF::NativePromise<WTF::String,WebCore::DOMCacheEngine::Error,0u>::dispatchAll(a1, &v36);
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

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebKit::WebCacheStorageConnection::PromiseConverter,Messages::NetworkStorageManager::CacheStorageRepresentation,WTF::NativePromise<WTF::String,WebCore::DOMCacheEngine::Error,0u>>(WTF::NativePromise<WTF::String,WebCore::DOMCacheEngine::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1}::operator()(IPC::Connection*,std::unique_ptr<IPC::Decoder> &)::{lambda(void)#1},std::experimental::fundamentals_v3::expected<WTF::String,WebCore::DOMCacheEngine::Error>>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F1122B30;
  std::unique_ptr<IPC::Decoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebKit::WebCacheStorageConnection::PromiseConverter,Messages::NetworkStorageManager::CacheStorageRepresentation,WTF::NativePromise<WTF::String,WebCore::DOMCacheEngine::Error,0u>>(WTF::NativePromise<WTF::String,WebCore::DOMCacheEngine::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1}::operator()(IPC::Connection*,std::unique_ptr<IPC::Decoder> &)::{lambda(void)#1},std::experimental::fundamentals_v3::expected<WTF::String,WebCore::DOMCacheEngine::Error>>::~CallableWrapper(IPC::Decoder **a1)
{
  *a1 = &unk_1F1122B30;
  std::unique_ptr<IPC::Decoder>::reset[abi:sn200100](a1 + 1, 0);

  return WTF::fastFree(a1, v2);
}

IPC::Decoder **WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebKit::WebCacheStorageConnection::PromiseConverter,Messages::NetworkStorageManager::CacheStorageRepresentation,WTF::NativePromise<WTF::String,WebCore::DOMCacheEngine::Error,0u>>(WTF::NativePromise<WTF::String,WebCore::DOMCacheEngine::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1}::operator()(IPC::Connection*,std::unique_ptr<IPC::Decoder> &)::{lambda(void)#1},std::experimental::fundamentals_v3::expected<WTF::String,WebCore::DOMCacheEngine::Error>>::call@<X0>(IPC::Decoder **result@<X0>, uint64_t a2@<X8>)
{
  v3 = result[1];
  if (v3 && *v3 && ((result = IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(result[1], &v7), (v8 & 1) != 0) || ((v4 = *v3, v5 = *(v3 + 1), *v3 = 0, *(v3 + 1) = 0, (result = *(v3 + 3)) != 0) ? (v6 = v5 == 0) : (v6 = 1), !v6 && (result = (*(*result + 2))(result, v4), (v8 & 1) != 0))))
  {
    *a2 = v7;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 4;
    *(a2 + 8) = 1;
  }

  return result;
}

void *WebKit::WebDatabaseProvider::getOrCreate@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result;
  v20 = 0;
  v21 = result;
  if ((_MergedGlobals_107 & 1) == 0)
  {
    qword_1ED642BB0 = 0;
    _MergedGlobals_107 = 1;
  }

  v19[0] = &v20;
  v19[1] = &v21;
  if (result == -1)
  {
    __break(0xC471u);
    goto LABEL_29;
  }

  if (!result)
  {
    __break(0xC471u);
    JUMPOUT(0x19E18E9FCLL);
  }

  v4 = qword_1ED642BB0;
  if (!qword_1ED642BB0)
  {
    result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebDatabaseProvider,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebDatabaseProvider,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebDatabaseProvider,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebDatabaseProvider,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(0);
    v4 = qword_1ED642BB0;
    v2 = v21;
  }

  v5 = *(v4 - 8);
  v6 = (v2 + ~(v2 << 32)) ^ ((v2 + ~(v2 << 32)) >> 22);
  v7 = 9 * ((v6 + ~(v6 << 13)) ^ ((v6 + ~(v6 << 13)) >> 8));
  v8 = (v7 ^ (v7 >> 15)) + ~((v7 ^ (v7 >> 15)) << 27);
  v9 = v5 & ((v8 >> 31) ^ v8);
  v10 = (v4 + 16 * v9);
  v11 = *v10;
  if (*v10)
  {
    v17 = 0;
    v18 = 1;
    while (v11 != v2)
    {
      if (v11 == -1)
      {
        v17 = v10;
      }

      v9 = (v9 + v18) & v5;
      v10 = (v4 + 16 * v9);
      v11 = *v10;
      ++v18;
      if (!*v10)
      {
        if (v17)
        {
          *v17 = 0;
          v17[1] = 0;
          --*(v4 - 16);
          v2 = v21;
          v10 = v17;
        }

        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    result = WTF::HashMapEnsureTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebDatabaseProvider,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebDatabaseProvider,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>::translate<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> const&,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebDatabaseProvider,WTF::DefaultWeakPtrImpl>>,WebKit::WebDatabaseProvider::getOrCreate(WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>)::$_0>(v10, v2, v19);
    v12 = qword_1ED642BB0;
    if (qword_1ED642BB0)
    {
      v13 = *(qword_1ED642BB0 - 12) + 1;
    }

    else
    {
      v13 = 1;
    }

    *(qword_1ED642BB0 - 12) = v13;
    v14 = (*(v12 - 16) + v13);
    v15 = *(v12 - 4);
    if (v15 > 0x400)
    {
      if (v15 > 2 * v14)
      {
        goto LABEL_12;
      }
    }

    else if (3 * v15 > 4 * v14)
    {
      goto LABEL_12;
    }

    result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebDatabaseProvider,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebDatabaseProvider,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebDatabaseProvider,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebDatabaseProvider,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(v10);
    v10 = result;
  }

LABEL_12:
  v16 = v20;
  if (!v20)
  {
    v16 = *(v10[1] + 8);
    if (v16)
    {
      ++*(v16 + 8);
      goto LABEL_15;
    }

    __break(0xC471u);
LABEL_29:
    JUMPOUT(0x19E18E9DCLL);
  }

LABEL_15:
  *a2 = v16;
  return result;
}

void WebKit::WebDatabaseProvider::~WebDatabaseProvider(WebKit::WebDatabaseProvider *this)
{
  if ((_MergedGlobals_107 & 1) == 0)
  {
    qword_1ED642BB0 = 0;
    _MergedGlobals_107 = 1;
  }

  v2 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebDatabaseProvider,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebDatabaseProvider,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebDatabaseProvider,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebDatabaseProvider,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebDatabaseProvider,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebDatabaseProvider,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(this + 3);
  WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebDatabaseProvider,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebDatabaseProvider,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::remove(v2, v3);
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 2, v4);

  MEMORY[0x1EEE562E0](this);
}

{
  WebKit::WebDatabaseProvider::~WebDatabaseProvider(this);

  WTF::fastFree(v1, v2);
}

uint64_t WebKit::WebDatabaseProvider::idbConnectionToServerForSession(WebKit::WebProcess *a1, void *a2)
{
  v2 = WebKit::WebProcess::singleton(a1, a2);
  v3 = WebKit::WebProcess::ensureNetworkProcessConnection(v2);
  ++*(v3 + 5);
  v5 = *(WebKit::NetworkProcessConnection::idbConnectionToServer(v3, v4) + 4);
  if (*(v3 + 5) == 1)
  {
    (*(*v3 + 24))(v3);
  }

  else
  {
    --*(v3 + 5);
  }

  return v5;
}

uint64_t WebKit::WebIDBConnectionToServer::create@<X0>(uint64_t *a1@<X8>)
{
  v2 = WTF::fastMalloc(0x28);
  result = WebKit::WebIDBConnectionToServer::WebIDBConnectionToServer(v2);
  *a1 = result;
  return result;
}

uint64_t WebKit::WebIDBConnectionToServer::WebIDBConnectionToServer(uint64_t a1)
{
  *(a1 + 24) = 1;
  *a1 = &unk_1F1122C00;
  *(a1 + 8) = 0;
  *(a1 + 16) = &unk_1F1122D10;
  WebCore::IDBClient::IDBConnectionToServer::create();
  return a1;
}

void WebKit::WebIDBConnectionToServer::~WebIDBConnectionToServer(WebKit::WebIDBConnectionToServer *this, void *a2)
{
  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WebCore::IDBClient::IDBConnectionToServer::operator delete(v3);
  }

  if (*(this + 6) == 1)
  {
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, a2);
  }

  else
  {
    __break(0xC471u);
  }
}

{
  WebKit::WebIDBConnectionToServer::~WebIDBConnectionToServer(this, a2);

  WTF::fastFree(v2, v3);
}

void non-virtual thunk toWebKit::WebIDBConnectionToServer::~WebIDBConnectionToServer(WebKit::WebIDBConnectionToServer *this, void *a2)
{
  WebKit::WebIDBConnectionToServer::~WebIDBConnectionToServer((this - 16), a2);
}

{
  WebKit::WebIDBConnectionToServer::~WebIDBConnectionToServer((this - 16), a2);

  WTF::fastFree(v2, v3);
}

uint64_t WebKit::WebIDBConnectionToServer::messageSenderConnection(WebKit::WebIDBConnectionToServer *this, void *a2)
{
  {
    v2 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v4 = WebKit::WebProcess::operator new(0x370, a2);
    v2 = WebKit::WebProcess::WebProcess(v4);
    WebKit::WebProcess::singleton(void)::process = v2;
  }

  return *(WebKit::WebProcess::ensureNetworkProcessConnection(v2) + 24);
}

uint64_t non-virtual thunk toWebKit::WebIDBConnectionToServer::messageSenderConnection(WebKit::WebIDBConnectionToServer *this, void *a2)
{
  {
    v2 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v4 = WebKit::WebProcess::operator new(0x370, a2);
    v2 = WebKit::WebProcess::WebProcess(v4);
    WebKit::WebProcess::singleton(void)::process = v2;
  }

  return *(WebKit::WebProcess::ensureNetworkProcessConnection(v2) + 24);
}

IPC::Encoder *WebKit::WebIDBConnectionToServer::deleteDatabase(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 16;
  v4 = (*(*(a1 + 16) + 56))(a1 + 16);
  v6 = IPC::Encoder::operator new(0x238, v5);
  *v6 = 774;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = v4;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v11 = v6;
  IPC::ArgumentCoder<WebCore::IDBOpenRequestData,void>::encode(v6, a2);
  (*(*v3 + 32))(v3, &v11, 0);
  result = v11;
  v11 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v7);
    return bmalloc::api::tzoneFree(v9, v10);
  }

  return result;
}

IPC::Encoder *WebKit::WebIDBConnectionToServer::openDatabase(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 16;
  v4 = (*(*(a1 + 16) + 56))(a1 + 16);
  v6 = IPC::Encoder::operator new(0x238, v5);
  *v6 = 801;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = v4;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v11 = v6;
  IPC::ArgumentCoder<WebCore::IDBOpenRequestData,void>::encode(v6, a2);
  (*(*v3 + 32))(v3, &v11, 0);
  result = v11;
  v11 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v7);
    return bmalloc::api::tzoneFree(v9, v10);
  }

  return result;
}

IPC::Encoder *WebKit::WebIDBConnectionToServer::abortTransaction(WebKit::WebIDBConnectionToServer *this, const WebCore::IDBResourceIdentifier *a2)
{
  v3 = this + 16;
  v4 = (*(*(this + 2) + 56))(this + 16);
  v6 = IPC::Encoder::operator new(0x238, v5);
  *v6 = 749;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = v4;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v11 = v6;
  IPC::ArgumentCoder<WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>> const&>(v6, a2);
  IPC::ArgumentCoder<WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>> const&>(v6, a2 + 1);
  (*(*v3 + 32))(v3, &v11, 0);
  result = v11;
  v11 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v7);
    return bmalloc::api::tzoneFree(v9, v10);
  }

  return result;
}

IPC::Encoder *WebKit::WebIDBConnectionToServer::commitTransaction(WebKit::WebIDBConnectionToServer *this, const WebCore::IDBResourceIdentifier *a2, uint64_t a3)
{
  v5 = this + 16;
  v6 = (*(*(this + 2) + 56))(this + 16);
  v8 = IPC::Encoder::operator new(0x238, v7);
  *v8 = 766;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = v6;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v13 = v8;
  IPC::ArgumentCoder<WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>> const&>(v8, a2);
  IPC::ArgumentCoder<WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>> const&>(v8, a2 + 1);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v8, a3);
  (*(*v5 + 32))(v5, &v13, 0);
  result = v13;
  v13 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v9);
    return bmalloc::api::tzoneFree(v11, v12);
  }

  return result;
}

IPC::Encoder *WebKit::WebIDBConnectionToServer::didFinishHandlingVersionChangeTransaction(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = a1 + 16;
  v6 = (*(*(a1 + 16) + 56))(a1 + 16);
  v8 = IPC::Encoder::operator new(0x238, v7);
  *v8 = 778;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = v6;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v13 = v8;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v8, a2);
  IPC::ArgumentCoder<WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>> const&>(v8, a3);
  IPC::ArgumentCoder<WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>> const&>(v8, a3 + 1);
  (*(*v5 + 32))(v5, &v13, 0);
  result = v13;
  v13 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v9);
    return bmalloc::api::tzoneFree(v11, v12);
  }

  return result;
}

IPC::Encoder *WebKit::WebIDBConnectionToServer::createObjectStore(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1 + 16;
  v6 = (*(*(a1 + 16) + 56))(a1 + 16);
  v8 = IPC::Encoder::operator new(0x238, v7);
  *v8 = 769;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = v6;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v13 = v8;
  IPC::ArgumentCoder<WebCore::IDBRequestData,void>::encode(v8, a2);
  IPC::ArgumentCoder<WebCore::IDBObjectStoreInfo,void>::encode(v8, a3);
  (*(*v5 + 32))(v5, &v13, 0);
  result = v13;
  v13 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v9);
    return bmalloc::api::tzoneFree(v11, v12);
  }

  return result;
}

IPC::Encoder *WebKit::WebIDBConnectionToServer::deleteObjectStore(WebKit::WebIDBConnectionToServer *this, const WebCore::IDBRequestData *a2, const WTF::String *a3)
{
  v5 = this + 16;
  v6 = (*(*(this + 2) + 56))(this + 16);
  v8 = IPC::Encoder::operator new(0x238, v7);
  *v8 = 776;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = v6;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v13 = v8;
  IPC::ArgumentCoder<WebCore::IDBRequestData,void>::encode(v8, a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v8, a3);
  (*(*v5 + 32))(v5, &v13, 0);
  result = v13;
  v13 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v9);
    return bmalloc::api::tzoneFree(v11, v12);
  }

  return result;
}

IPC::Encoder *WebKit::WebIDBConnectionToServer::renameObjectStore(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = a1 + 16;
  v8 = (*(*(a1 + 16) + 56))(a1 + 16);
  v10 = IPC::Encoder::operator new(0x238, v9);
  *v10 = 808;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 1) = v8;
  *(v10 + 68) = 0;
  *(v10 + 70) = 0;
  *(v10 + 69) = 0;
  IPC::Encoder::encodeHeader(v10);
  v15 = v10;
  IPC::ArgumentCoder<WebCore::IDBRequestData,void>::encode(v10, a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v10, a3);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v10, a4);
  (*(*v7 + 32))(v7, &v15, 0);
  result = v15;
  v15 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v11);
    return bmalloc::api::tzoneFree(v13, v14);
  }

  return result;
}

IPC::Encoder *WebKit::WebIDBConnectionToServer::clearObjectStore(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1 + 16;
  v6 = (*(*(a1 + 16) + 56))(a1 + 16);
  v8 = IPC::Encoder::operator new(0x238, v7);
  *v8 = 762;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = v6;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v13 = v8;
  IPC::ArgumentCoder<WebCore::IDBRequestData,void>::encode(v8, a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v8, a3);
  (*(*v5 + 32))(v5, &v13, 0);
  result = v13;
  v13 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v9);
    return bmalloc::api::tzoneFree(v11, v12);
  }

  return result;
}

IPC::Encoder *WebKit::WebIDBConnectionToServer::createIndex(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1 + 16;
  v6 = (*(*(a1 + 16) + 56))(a1 + 16);
  v8 = IPC::Encoder::operator new(0x238, v7);
  *v8 = 768;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = v6;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v13 = v8;
  IPC::ArgumentCoder<WebCore::IDBRequestData,void>::encode(v8, a2);
  IPC::ArgumentCoder<WebCore::IDBIndexInfo,void>::encode(v8, a3);
  (*(*v5 + 32))(v5, &v13, 0);
  result = v13;
  v13 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v9);
    return bmalloc::api::tzoneFree(v11, v12);
  }

  return result;
}

IPC::Encoder *WebKit::WebIDBConnectionToServer::deleteIndex(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = a1 + 16;
  v8 = (*(*(a1 + 16) + 56))(a1 + 16);
  v10 = IPC::Encoder::operator new(0x238, v9);
  *v10 = 775;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 1) = v8;
  *(v10 + 68) = 0;
  *(v10 + 70) = 0;
  *(v10 + 69) = 0;
  IPC::Encoder::encodeHeader(v10);
  v15 = v10;
  IPC::ArgumentCoder<WebCore::IDBRequestData,void>::encode(v10, a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v10, a3);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v10, a4);
  (*(*v7 + 32))(v7, &v15, 0);
  result = v15;
  v15 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v11);
    return bmalloc::api::tzoneFree(v13, v14);
  }

  return result;
}

IPC::Encoder *WebKit::WebIDBConnectionToServer::renameIndex(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v9 = a1 + 16;
  v10 = (*(*(a1 + 16) + 56))(a1 + 16);
  v12 = IPC::Encoder::operator new(0x238, v11);
  *v12 = 807;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = v10;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v17 = v12;
  IPC::ArgumentCoder<WebCore::IDBRequestData,void>::encode(v12, a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, a3);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, a4);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v12, a5);
  (*(*v9 + 32))(v9, &v17, 0);
  result = v17;
  v17 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v13);
    return bmalloc::api::tzoneFree(v15, v16);
  }

  return result;
}

IPC::Encoder *WebKit::WebIDBConnectionToServer::putOrAdd(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t **a5, char a6)
{
  v11 = a1 + 16;
  v12 = (*(*(a1 + 16) + 56))(a1 + 16);
  v14 = IPC::Encoder::operator new(0x238, v13);
  *v14 = 804;
  *(v14 + 2) = 0;
  *(v14 + 3) = 0;
  *(v14 + 1) = v12;
  *(v14 + 68) = 0;
  *(v14 + 70) = 0;
  *(v14 + 69) = 0;
  IPC::Encoder::encodeHeader(v14);
  v27 = v14;
  IPC::ArgumentCoder<WebCore::IDBRequestData,void>::encode(v14, a2);
  IPC::ArgumentCoder<WebCore::IDBKeyData,void>::encode(v14, a3);
  IPC::ArgumentCoder<WebCore::IDBValue,void>::encode(v14, a4);
  if (*a5)
  {
    v15 = *(*a5 - 3);
  }

  else
  {
    v15 = 0;
  }

  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v14, v15);
  v16 = *a5;
  if (!*a5)
  {
    v18 = 0;
    LODWORD(v17) = 0;
LABEL_14:
    v20 = v18;
    v18 = &v16[6 * v17];
    if (v16)
    {
      goto LABEL_12;
    }

LABEL_15:
    v22 = 0;
    goto LABEL_18;
  }

  v17 = *(v16 - 1);
  v18 = &v16[6 * v17];
  if (!*(v16 - 3))
  {
    goto LABEL_14;
  }

  if (!v17)
  {
    v21 = 0;
    v20 = v16;
    goto LABEL_17;
  }

  v19 = 48 * v17;
  v20 = v16;
  while ((*v20 + 1) <= 1)
  {
    v20 += 6;
    v19 -= 48;
    if (!v19)
    {
      v20 = v18;
      break;
    }
  }

  if (!v16)
  {
    goto LABEL_15;
  }

LABEL_12:
  v21 = *(v16 - 1);
LABEL_17:
  v22 = &v16[6 * v21];
LABEL_18:
  while (v20 != v22)
  {
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v14, *v20);
    IPC::ArgumentCoder<WebCore::IndexKey,void>::encode(v14, (v20 + 1));
    for (v20 += 6; v20 != v18; v20 += 6)
    {
      if ((*v20 + 1) > 1)
      {
        break;
      }
    }
  }

  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v14, a6);
  (*(*v11 + 32))(v11, &v27, 0);
  result = v27;
  v27 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v23);
    return bmalloc::api::tzoneFree(v25, v26);
  }

  return result;
}

IPC::Encoder *WebKit::WebIDBConnectionToServer::getRecord(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1 + 16;
  v6 = (*(*(a1 + 16) + 56))(a1 + 16);
  v8 = IPC::Encoder::operator new(0x238, v7);
  *v8 = 794;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = v6;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v13 = v8;
  IPC::ArgumentCoder<WebCore::IDBRequestData,void>::encode(v8, a2);
  IPC::ArgumentCoder<WebCore::IDBKeyRangeData,void>::encode(v8, a3);
  v14 = *(a3 + 72);
  IPC::Encoder::operator<<<BOOL>(v8, &v14);
  (*(*v5 + 32))(v5, &v13, 0);
  result = v13;
  v13 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v9);
    return bmalloc::api::tzoneFree(v11, v12);
  }

  return result;
}

IPC::Encoder *WebKit::WebIDBConnectionToServer::getAllRecords(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1 + 16;
  v6 = (*(*(a1 + 16) + 56))(a1 + 16);
  v8 = IPC::Encoder::operator new(0x238, v7);
  *v8 = 787;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = v6;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v13 = v8;
  IPC::ArgumentCoder<WebCore::IDBRequestData,void>::encode(v8, a2);
  IPC::ArgumentCoder<WebCore::IDBGetAllRecordsData,void>::encode(v8, a3);
  (*(*v5 + 32))(v5, &v13, 0);
  result = v13;
  v13 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v9);
    return bmalloc::api::tzoneFree(v11, v12);
  }

  return result;
}

IPC::Encoder *WebKit::WebIDBConnectionToServer::getCount(WebKit::WebIDBConnectionToServer *this, const WebCore::IDBRequestData *a2, const WebCore::IDBKeyRangeData *a3)
{
  v5 = this + 16;
  v6 = (*(*(this + 2) + 56))(this + 16);
  v8 = IPC::Encoder::operator new(0x238, v7);
  *v8 = 788;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = v6;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v13 = v8;
  IPC::ArgumentCoder<WebCore::IDBRequestData,void>::encode(v8, a2);
  IPC::ArgumentCoder<WebCore::IDBKeyRangeData,void>::encode(v8, a3);
  (*(*v5 + 32))(v5, &v13, 0);
  result = v13;
  v13 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v9);
    return bmalloc::api::tzoneFree(v11, v12);
  }

  return result;
}

IPC::Encoder *WebKit::WebIDBConnectionToServer::deleteRecord(WebKit::WebIDBConnectionToServer *this, const WebCore::IDBRequestData *a2, const WebCore::IDBKeyRangeData *a3)
{
  v5 = this + 16;
  v6 = (*(*(this + 2) + 56))(this + 16);
  v8 = IPC::Encoder::operator new(0x238, v7);
  *v8 = 777;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = v6;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v13 = v8;
  IPC::ArgumentCoder<WebCore::IDBRequestData,void>::encode(v8, a2);
  IPC::ArgumentCoder<WebCore::IDBKeyRangeData,void>::encode(v8, a3);
  (*(*v5 + 32))(v5, &v13, 0);
  result = v13;
  v13 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v9);
    return bmalloc::api::tzoneFree(v11, v12);
  }

  return result;
}

IPC::Encoder *WebKit::WebIDBConnectionToServer::openCursor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1 + 16;
  v6 = (*(*(a1 + 16) + 56))(a1 + 16);
  v8 = IPC::Encoder::operator new(0x238, v7);
  *v8 = 799;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = v6;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v13 = v8;
  IPC::ArgumentCoder<WebCore::IDBRequestData,void>::encode(v8, a2);
  IPC::ArgumentCoder<WebCore::IDBCursorInfo,void>::encode(v8, a3);
  (*(*v5 + 32))(v5, &v13, 0);
  result = v13;
  v13 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v9);
    return bmalloc::api::tzoneFree(v11, v12);
  }

  return result;
}

IPC::Encoder *WebKit::WebIDBConnectionToServer::iterateCursor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1 + 16;
  v6 = (*(*(a1 + 16) + 56))(a1 + 16);
  v8 = IPC::Encoder::operator new(0x238, v7);
  *v8 = 796;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = v6;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v13 = v8;
  IPC::ArgumentCoder<WebCore::IDBRequestData,void>::encode(v8, a2);
  IPC::ArgumentCoder<WebCore::IDBIterateCursorData,void>::encode(v8, a3);
  (*(*v5 + 32))(v5, &v13, 0);
  result = v13;
  v13 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v9);
    return bmalloc::api::tzoneFree(v11, v12);
  }

  return result;
}

IPC::Encoder *WebKit::WebIDBConnectionToServer::establishTransaction(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1 + 16;
  v6 = (*(*(a1 + 16) + 56))(a1 + 16);
  v8 = IPC::Encoder::operator new(0x238, v7);
  *v8 = 782;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = v6;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v13 = v8;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v8, a2);
  IPC::ArgumentCoder<WebCore::IDBTransactionInfo,void>::encode(v8, a3);
  (*(*v5 + 32))(v5, &v13, 0);
  result = v13;
  v13 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v9);
    return bmalloc::api::tzoneFree(v11, v12);
  }

  return result;
}

IPC::Encoder *WebKit::WebIDBConnectionToServer::databaseConnectionPendingClose(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 16;
  v4 = (*(*(a1 + 16) + 56))(a1 + 16);
  v6 = IPC::Encoder::operator new(0x238, v5);
  *v6 = 773;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = v4;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v11 = v6;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v6, a2);
  (*(*v3 + 32))(v3, &v11, 0);
  result = v11;
  v11 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v7);
    return bmalloc::api::tzoneFree(v9, v10);
  }

  return result;
}

IPC::Encoder *WebKit::WebIDBConnectionToServer::databaseConnectionClosed(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 16;
  v4 = (*(*(a1 + 16) + 56))(a1 + 16);
  v6 = IPC::Encoder::operator new(0x238, v5);
  *v6 = 772;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = v4;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v11 = v6;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v6, a2);
  (*(*v3 + 32))(v3, &v11, 0);
  result = v11;
  v11 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v7);
    return bmalloc::api::tzoneFree(v9, v10);
  }

  return result;
}

IPC::Encoder *WebKit::WebIDBConnectionToServer::abortOpenAndUpgradeNeeded(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1 + 16;
  v6 = (*(*(a1 + 16) + 56))(a1 + 16);
  v8 = IPC::Encoder::operator new(0x238, v7);
  *v8 = 748;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = v6;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v13 = v8;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v8, a2);
  IPC::ArgumentCoder<std::optional<WebCore::IDBResourceIdentifier>,void>::encode<IPC::Encoder,std::optional<WebCore::IDBResourceIdentifier> const&>(v8, a3);
  (*(*v5 + 32))(v5, &v13, 0);
  result = v13;
  v13 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v9);
    return bmalloc::api::tzoneFree(v11, v12);
  }

  return result;
}

IPC::Encoder *WebKit::WebIDBConnectionToServer::didFireVersionChangeEvent(uint64_t a1, uint64_t a2, uint64_t *a3, char a4)
{
  v7 = a1 + 16;
  v8 = (*(*(a1 + 16) + 56))(a1 + 16);
  v10 = IPC::Encoder::operator new(0x238, v9);
  *v10 = 779;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 1) = v8;
  *(v10 + 68) = 0;
  *(v10 + 70) = 0;
  *(v10 + 69) = 0;
  IPC::Encoder::encodeHeader(v10);
  v15 = v10;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v10, a2);
  IPC::ArgumentCoder<WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>> const&>(v10, a3);
  IPC::ArgumentCoder<WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>> const&>(v10, a3 + 1);
  v16 = a4;
  IPC::Encoder::operator<<<BOOL>(v10, &v16);
  (*(*v7 + 32))(v7, &v15, 0);
  result = v15;
  v15 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v11);
    return bmalloc::api::tzoneFree(v13, v14);
  }

  return result;
}

IPC::Encoder *WebKit::WebIDBConnectionToServer::didGenerateIndexKeyForRecord(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21[0] = a7;
  v21[1] = a8;
  v13 = a1 + 16;
  v14 = (*(*(a1 + 16) + 56))(a1 + 16);
  v16 = IPC::Encoder::operator new(0x238, v15);
  *v16 = 780;
  *(v16 + 2) = 0;
  *(v16 + 3) = 0;
  *(v16 + 1) = v14;
  *(v16 + 68) = 0;
  *(v16 + 70) = 0;
  *(v16 + 69) = 0;
  IPC::Encoder::encodeHeader(v16);
  v22 = v16;
  IPC::ArgumentCoder<WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>> const&>(v16, a2);
  IPC::ArgumentCoder<WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>> const&>(v16, a2 + 1);
  IPC::ArgumentCoder<WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>> const&>(v16, a3);
  IPC::ArgumentCoder<WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>> const&>(v16, a3 + 1);
  IPC::ArgumentCoder<WebCore::IDBIndexInfo,void>::encode(v16, a4);
  IPC::ArgumentCoder<WebCore::IDBKeyData,void>::encode(v16, a5);
  IPC::ArgumentCoder<WebCore::IndexKey,void>::encode(v16, a6);
  IPC::ArgumentCoder<std::optional<long long>,void>::encode<IPC::Encoder,std::optional<long long> const&>(v16, v21);
  (*(*v13 + 32))(v13, &v22, 0);
  result = v22;
  v22 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v17);
    return bmalloc::api::tzoneFree(v19, v20);
  }

  return result;
}

IPC::Encoder *WebKit::WebIDBConnectionToServer::openDBRequestCancelled(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 16;
  v4 = (*(*(a1 + 16) + 56))(a1 + 16);
  v6 = IPC::Encoder::operator new(0x238, v5);
  *v6 = 800;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = v4;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v11 = v6;
  IPC::ArgumentCoder<WebCore::IDBOpenRequestData,void>::encode(v6, a2);
  (*(*v3 + 32))(v3, &v11, 0);
  result = v11;
  v11 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v7);
    return bmalloc::api::tzoneFree(v9, v10);
  }

  return result;
}

IPC::Encoder *WebKit::WebIDBConnectionToServer::getAllDatabaseNamesAndVersions(WebKit::WebIDBConnectionToServer *this, const WebCore::IDBResourceIdentifier *a2, const WebCore::ClientOrigin *a3)
{
  v5 = this + 16;
  v6 = (*(*(this + 2) + 56))(this + 16);
  v8 = IPC::Encoder::operator new(0x238, v7);
  *v8 = 786;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = v6;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v13 = v8;
  IPC::ArgumentCoder<WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>> const&>(v8, a2);
  IPC::ArgumentCoder<WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>> const&>(v8, a2 + 1);
  IPC::ArgumentCoder<WebCore::ClientOrigin,void>::encode(v8, a3);
  (*(*v5 + 32))(v5, &v13, 0);
  result = v13;
  v13 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v9);
    return bmalloc::api::tzoneFree(v11, v12);
  }

  return result;
}

WTF::StringImpl *WebKit::WebIDBConnectionToServer::connectionToServerLost(WebKit::WebIDBConnectionToServer *this)
{
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  WebCore::IDBError::IDBError();
  WebCore::IDBClient::IDBConnectionToServer::connectionToServerLost();
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, v1);
  }

  result = v3;
  if (v3)
  {
    if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(v3, v1);
    }
  }

  return result;
}

WebKit::DigitalCredentialsCoordinator *WebKit::DigitalCredentialsCoordinator::DigitalCredentialsCoordinator(WebKit::DigitalCredentialsCoordinator *this, WebKit::WebPage *a2)
{
  *(this + 2) = 1;
  v4 = this + 16;
  *this = &unk_1F1122D60;
  *(this + 2) = &unk_1F1122DB0;
  *(this + 3) = 0;
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2 + 6, a2 + 16);
  v6 = *(a2 + 3);
  atomic_fetch_add(v6, 1u);
  *(this + 4) = v6;
  v7 = *(a2 + 6);
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 5) = v7;
  {
    v8 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v10 = WebKit::WebProcess::operator new(0x370, v5);
    v8 = WebKit::WebProcess::WebProcess(v10);
    WebKit::WebProcess::singleton(void)::process = v8;
    v7 = *(this + 5);
  }

  v12[0] = 4;
  v12[1] = v7;
  WTF::HashMap<std::pair<IPC::ReceiverName,unsigned long long>,WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<std::pair<IPC::ReceiverName,unsigned long long>>,WTF::PairHashTraits<WTF::StrongEnumHashTraits<IPC::ReceiverName>,WTF::HashTraits<unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<std::pair<IPC::ReceiverName,unsigned long long>,IPC::MessageReceiver&>(v8 + 7, v12, v4, v11);
  return this;
}

void WebKit::DigitalCredentialsCoordinator::~DigitalCredentialsCoordinator(WebKit::DigitalCredentialsCoordinator *this, void *a2)
{
  *this = &unk_1F1122D60;
  *(this + 2) = &unk_1F1122DB0;
  v3 = WebKit::WebProcess::singleton(this, a2);
  WebKit::AuxiliaryProcess::removeMessageReceiver(v3, 4u, *(this + 5));
  WTF::Vector<mpark::variant<WebCore::MobileDocumentRequest,WebCore::OpenID4VPRequest>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 48, v4);
  v6 = *(this + 4);
  *(this + 4) = 0;
  if (v6 && atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v6);
    WTF::fastFree(v6, v5);
  }

  *(this + 2) = &unk_1F10EA5E0;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 3, v5);
  if (*(this + 2) != 1)
  {
    __break(0xC471u);
  }
}

{
  WebKit::DigitalCredentialsCoordinator::~DigitalCredentialsCoordinator(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

void non-virtual thunk toWebKit::DigitalCredentialsCoordinator::~DigitalCredentialsCoordinator(WebKit::DigitalCredentialsCoordinator *this, void *a2)
{
  WebKit::DigitalCredentialsCoordinator::~DigitalCredentialsCoordinator((this - 16), a2);
}

{
  WebKit::DigitalCredentialsCoordinator::~DigitalCredentialsCoordinator((this - 16), a2);

  bmalloc::api::tzoneFree(v2, v3);
}

uint64_t WebKit::DigitalCredentialsCoordinator::operator new(WebKit::DigitalCredentialsCoordinator *this, void *a2)
{
  if (this == 64 && WebKit::DigitalCredentialsCoordinator::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::DigitalCredentialsCoordinator::s_heapRef, a2);
  }

  else
  {
    return WebKit::DigitalCredentialsCoordinator::operatorNewSlow(this);
  }
}

void WebKit::DigitalCredentialsCoordinator::showDigitalCredentialsPicker(uint64_t a1, WTF::StringImpl *a2, uint64_t a3, uint64_t *a4)
{
  v8 = *(a1 + 60);
  if (v8)
  {
    v9 = *(a1 + 48);
    v10 = 24 * v8;
    do
    {
      v9 = mpark::detail::copy_constructor<mpark::detail::traits<WebCore::MobileDocumentRequest,WebCore::OpenID4VPRequest>,(mpark::detail::Trait)1>::~copy_constructor(v9, a2) + 24;
      v10 -= 24;
    }

    while (v10);
  }

  v11 = *(a1 + 48);
  if (v11)
  {
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    WTF::fastFree(v11, a2);
  }

  v12 = *a2;
  *a2 = 0;
  *(a1 + 48) = v12;
  LODWORD(v12) = *(a2 + 2);
  *(a2 + 2) = 0;
  *(a1 + 56) = v12;
  LODWORD(v12) = *(a2 + 3);
  *(a2 + 3) = 0;
  *(a1 + 60) = v12;
  v13 = *(a1 + 32);
  if (v13 && (v14 = *(v13 + 8)) != 0)
  {
    CFRetain(*(v14 - 8));
    v15 = *a4;
    *a4 = 0;
    v16 = WTF::fastMalloc(0x18);
    *v16 = &unk_1F1122EF8;
    v16[1] = a1;
    v16[2] = v15;
    v25 = v16;
    v22 = a3;
    v17 = (*(*(v14 + 16) + 56))(v14 + 16);
    IPC::MessageSender::sendWithAsyncReply<Messages::WebPageProxy::ShowDigitalCredentialsPicker,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebCore::DigitalCredentialsResponseData,WebCore::ExceptionData> &&)>>(v14 + 16, &v22, &v25, v17, 0);
    v18 = v25;
    v25 = 0;
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }

    CFRelease(*(v14 - 8));
  }

  else
  {
    WTF::Vector<mpark::variant<WebCore::MobileDocumentRequest,WebCore::OpenID4VPRequest>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity((a1 + 48), 0);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    LOBYTE(v22) = 8;
    v24 = 1;
    v19 = *a4;
    *a4 = 0;
    (*(*v19 + 16))(v19, &v22);
    (*(*v19 + 8))(v19);
    if (v24 != 255)
    {
      v21 = v23;
      v23 = 0;
      if (v21)
      {
        if (atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v21, v20);
        }
      }
    }
  }
}

uint64_t WebKit::DigitalCredentialsCoordinator::validateAndParseDigitalCredentialRequests@<X0>(WebCore::SecurityOrigin *a1@<X1>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  WebKit::DigitalCredentials::validateRequests(a1, a2, &v7);
  *a3 = v7;
  v4 = v8;
  v7 = 0;
  v8 = 0;
  *(a3 + 8) = v4;
  *(a3 + 16) = 0;
  return WTF::Vector<mpark::variant<WebCore::ValidatedMobileDocumentRequest,WebCore::OpenID4VPRequest>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v7, v5);
}

void WebKit::DigitalCredentialsCoordinator::dismissDigitalCredentialsPicker(uint64_t a1, uint64_t *a2)
{
  WTF::Vector<mpark::variant<WebCore::MobileDocumentRequest,WebCore::OpenID4VPRequest>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity((a1 + 48), 0);
  v4 = *(a1 + 32);
  if (v4 && (v5 = *(v4 + 8)) != 0)
  {
    CFRetain(*(v5 - 8));
    v6 = (*(*(v5 + 16) + 56))(v5 + 16);
    IPC::MessageSender::sendWithAsyncReply<Messages::WebPageProxy::DismissDigitalCredentialsPicker,WTF::CompletionHandler<void ()(BOOL)>>(v5 + 16, &v10, a2, v6, 0);
    v7 = *(v5 - 8);

    CFRelease(v7);
  }

  else
  {
    v8 = *a2;
    *a2 = 0;
    (*(*v8 + 16))(v8, 0);
    v9 = *(*v8 + 8);

    v9(v8);
  }
}

unsigned int *WebKit::DigitalCredentialsCoordinator::provideRawDigitalCredentialRequests(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  (*(*v3 + 16))(v3, a1 + 48);
  (*(*v3 + 8))(v3);

  return WTF::Vector<mpark::variant<WebCore::MobileDocumentRequest,WebCore::OpenID4VPRequest>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity((a1 + 48), 0);
}

WebCore::Node *WebKit::MediaKeySystemPermissionRequestManager::startMediaKeySystemRequest(WebKit::MediaKeySystemPermissionRequestManager *this, WebCore::MediaKeySystemRequest *a2)
{
  v4 = WebCore::MediaKeySystemRequest::document(a2);
  if (!v4)
  {
    v44 = 0;
LABEL_57:
    WebCore::MediaKeySystemRequest::deny(a2, MEMORY[0x1E696EBA8]);
    goto LABEL_48;
  }

  v6 = v4;
  *(v4 + 28) += 2;
  v44 = v4;
  v7 = *(v4 + 552);
  if (!v7)
  {
    goto LABEL_57;
  }

  v8 = *(v7 + 8);
  if (!v8)
  {
    goto LABEL_57;
  }

  ++*(v8 + 16);
  v9 = *(v8 + 24);
  if (!v9 || (v10 = *(v9 + 8)) == 0)
  {
    WebCore::MediaKeySystemRequest::deny(a2, MEMORY[0x1E696EBA8]);
    goto LABEL_46;
  }

  if (*(v10 + 520) == 1)
  {
    WebKit::MediaKeySystemPermissionRequestManager::sendMediaKeySystemRequest(this, a2);
    goto LABEL_46;
  }

  v42 = 0;
  v43 = 0;
  if (v4 == -1)
  {
    __break(0xC471u);
    goto LABEL_60;
  }

  v11 = *(this + 4);
  if (!v11)
  {
    WTF::HashTable<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>,WTF::KeyValuePair<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>,WTF::Vector<WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>,WTF::Vector<WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>>,WTF::HashMap<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>,WTF::Vector<WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>>,WTF::HashTraits<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>>,WTF::HashTraits<WTF::Vector<WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>>,WTF::FastMalloc>::expand(this + 4, 0);
    v11 = *(this + 4);
  }

  v12 = *(v11 - 8);
  v13 = (v6 + ~(v6 << 32)) ^ ((v6 + ~(v6 << 32)) >> 22);
  v14 = 9 * ((v13 + ~(v13 << 13)) ^ ((v13 + ~(v13 << 13)) >> 8));
  v15 = (v14 ^ (v14 >> 15)) + ~((v14 ^ (v14 >> 15)) << 27);
  v16 = v12 & ((v15 >> 31) ^ v15);
  v17 = (v11 + 24 * v16);
  v18 = *v17;
  if (*v17)
  {
    v19 = 0;
    v20 = 1;
    while (v18 != v6)
    {
      if (v18 == -1)
      {
        v19 = v17;
      }

      v16 = (v16 + v20) & v12;
      v17 = (v11 + 24 * v16);
      v18 = *v17;
      ++v20;
      if (!*v17)
      {
        if (v19)
        {
          *v19 = 0;
          v19[1] = 0;
          v19[2] = 0;
          --*(*(this + 4) - 16);
          v17 = v19;
        }

        goto LABEL_20;
      }
    }

    goto LABEL_30;
  }

LABEL_20:
  WTF::GenericHashTraits<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>>::assignToEmpty<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>,WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>> const&>(v17, &v44);
  v23 = v42;
  v24 = v43;
  v42 = 0;
  v43 = 0;
  v25 = *(v17 + 5);
  if (v25)
  {
    WTF::VectorDestructor<true,WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>>::destruct(v17[1], v17[1] + v25);
  }

  v26 = v17[1];
  if (v26)
  {
    v17[1] = 0;
    *(v17 + 4) = 0;
    WTF::fastFree(v26, v21);
  }

  *&v22 = 0;
  v45 = v22;
  v17[1] = v23;
  v17[2] = v24;
  WTF::Vector<WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v45, v21);
  v27 = *(this + 4);
  if (v27)
  {
    v28 = *(v27 - 12) + 1;
  }

  else
  {
    v28 = 1;
  }

  *(v27 - 12) = v28;
  v29 = (*(v27 - 16) + v28);
  v30 = *(v27 - 4);
  if (v30 > 0x400)
  {
    if (v30 > 2 * v29)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  if (3 * v30 <= 4 * v29)
  {
LABEL_29:
    v17 = WTF::HashTable<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>,WTF::KeyValuePair<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>,WTF::Vector<WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>,WTF::Vector<WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>>,WTF::HashMap<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>,WTF::Vector<WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>>,WTF::HashTraits<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>>,WTF::HashTraits<WTF::Vector<WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>>,WTF::FastMalloc>::expand(this + 4, v17);
  }

LABEL_30:
  WTF::Vector<WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v42, v5);
  v31 = *(v17 + 5);
  if (!v31)
  {
    WebCore::Document::addMediaCanStartListener();
    v31 = *(v17 + 5);
  }

  v32 = v31;
  if (v31 == *(v17 + 4))
  {
    if (v31 + (v31 >> 1) <= v31 + 1)
    {
      v33 = v31 + 1;
    }

    else
    {
      v33 = v31 + (v31 >> 1);
    }

    if (!(v33 >> 29))
    {
      v34 = v17[1];
      if (v33 <= 0x10)
      {
        v35 = 16;
      }

      else
      {
        v35 = v33;
      }

      v36 = WTF::fastMalloc((8 * v35));
      *(v17 + 4) = v35;
      v17[1] = v36;
      memcpy(v36, v34, 8 * v32);
      if (v34)
      {
        if (v17[1] == v34)
        {
          v17[1] = 0;
          *(v17 + 4) = 0;
        }

        WTF::fastFree(v34, v37);
      }

      v38 = *(v17 + 5);
      v39 = v17[1];
      ++*(a2 + 8);
      *(v39 + v38) = a2;
      *(v17 + 5) = v38 + 1;
      goto LABEL_46;
    }

    __break(0xC471u);
LABEL_60:
    JUMPOUT(0x19E191590);
  }

  v40 = v17[1];
  ++*(a2 + 8);
  *(v40 + v31) = a2;
  *(v17 + 5) = v31 + 1;
LABEL_46:
  if (*(v8 + 16) == 1)
  {
    (*(*v8 + 8))(v8);
  }

  else
  {
    --*(v8 + 16);
  }

LABEL_48:
  result = v44;
  v44 = 0;
  if (result)
  {
    if (*(result + 7) == 2)
    {
      return WebCore::Node::removedLastRef(result);
    }

    else
    {
      *(result + 7) -= 2;
    }
  }

  return result;
}

void WebKit::MediaKeySystemPermissionRequestManager::sendMediaKeySystemRequest(WebKit::MediaKeySystemPermissionRequestManager *this, WebCore::MediaKeySystemRequest *a2)
{
  v58 = *MEMORY[0x1E69E9840];
  v4 = WebCore::MediaKeySystemRequest::document(a2);
  if (v4)
  {
    v5 = v4;
    *(v4 + 28) += 2;
    v6 = *(v4 + 552);
    if (!v6 || (v7 = *(v6 + 8)) == 0)
    {
      WebCore::MediaKeySystemRequest::deny(a2, MEMORY[0x1E696EBA8]);
LABEL_63:
      if (v5[7] == 2)
      {
        WebCore::Node::removedLastRef(v5);
      }

      else
      {
        v5[7] -= 2;
      }

      return;
    }

    ++v7[4];
    v8 = *(a2 + 5);
    if (v8 == -1)
    {
      __break(0xC471u);
      goto LABEL_81;
    }

    if (!v8)
    {
      __break(0xC471u);
      JUMPOUT(0x19E191B80);
    }

    v9 = *(this + 3);
    if (!v9)
    {
      WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(this + 3, 0);
      v9 = *(this + 3);
    }

    v10 = *(v9 - 8);
    v11 = (v8 + ~(v8 << 32)) ^ ((v8 + ~(v8 << 32)) >> 22);
    v12 = 9 * ((v11 + ~(v11 << 13)) ^ ((v11 + ~(v11 << 13)) >> 8));
    v13 = (v12 ^ (v12 >> 15)) + ~((v12 ^ (v12 >> 15)) << 27);
    v14 = v10 & ((v13 >> 31) ^ v13);
    v15 = (v9 + 16 * v14);
    v16 = *v15;
    if (*v15)
    {
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
            --*(*(this + 3) - 16);
            v15 = v17;
          }

          goto LABEL_16;
        }
      }

      goto LABEL_25;
    }

LABEL_16:
    v19 = v15[1];
    *v15 = v8;
    ++*(a2 + 8);
    v15[1] = a2;
    if (v19)
    {
      if (v19[8] == 1)
      {
        (*(*v19 + 24))(v19);
      }

      else
      {
        --v19[8];
      }
    }

    v20 = *(this + 3);
    if (v20)
    {
      v21 = *(v20 - 12) + 1;
    }

    else
    {
      v21 = 1;
    }

    *(v20 - 12) = v21;
    v22 = (*(v20 - 16) + v21);
    v23 = *(v20 - 4);
    if (v23 > 0x400)
    {
      if (v23 > 2 * v22)
      {
        goto LABEL_25;
      }
    }

    else if (3 * v23 > 4 * v22)
    {
LABEL_25:
      WebKit::WebFrame::fromCoreFrame(v7, &v50);
      v24 = *(*(this + 2) + 8);
      if (v24)
      {
        CFRetain(*(v24 - 8));
        v25 = *(a2 + 5);
        v26 = v50;
        v27 = *(v50 + 88);
        v28 = WebCore::Document::topOrigin(v5);
        LOBYTE(v52[0]) = 0;
        v54 = -1;
        LODWORD(v29) = *(v28 + 32);
        if (*(v28 + 32))
        {
          if (v29 == 255)
          {
LABEL_33:
            v31 = v24 + 16;
            v32 = WebCore::SecurityContext::securityOrigin((v5 + 52));
            LOBYTE(v55) = 0;
            v57 = -1;
            LODWORD(v33) = *(v32 + 32);
            if (*(v32 + 32))
            {
              if (v33 == 255)
              {
                goto LABEL_40;
              }

              v55 = *(v32 + 8);
            }

            else
            {
              v34 = *(v32 + 8);
              if (v34)
              {
                atomic_fetch_add_explicit(v34, 2u, memory_order_relaxed);
              }

              *&v55 = v34;
              v33 = *(v32 + 16);
              if (v33)
              {
                atomic_fetch_add_explicit(v33, 2u, memory_order_relaxed);
              }

              *(&v55 + 1) = v33;
              v56 = *(v32 + 24);
              LOBYTE(v33) = *(v32 + 32);
            }

            v57 = v33;
LABEL_40:
            v35 = *(a2 + 6);
            if (v35)
            {
              atomic_fetch_add_explicit(v35, 2u, memory_order_relaxed);
            }

            v49 = v35;
            v36 = (*(*v31 + 56))(v24 + 16);
            v38 = IPC::Encoder::operator new(0x238, v37);
            *v38 = 2330;
            *(v38 + 2) = 0;
            *(v38 + 3) = 0;
            *(v38 + 1) = v36;
            *(v38 + 68) = 0;
            *(v38 + 70) = 0;
            *(v38 + 69) = 0;
            IPC::Encoder::encodeHeader(v38);
            v51 = v38;
            IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v38, v25);
            IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v38, v27);
            IPC::ArgumentCoder<WebCore::ClientOrigin,void>::encode(v38, v52);
            IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v38, &v49);
            (*(*v31 + 32))(v24 + 16, &v51, 0);
            v40 = v51;
            v51 = 0;
            if (v40)
            {
              IPC::Encoder::~Encoder(v40, v39);
              bmalloc::api::tzoneFree(v46, v47);
            }

            v41 = v49;
            v49 = 0;
            if (v41 && atomic_fetch_add_explicit(v41, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v41, v39);
            }

            if (!v57)
            {
              v42 = *(&v55 + 1);
              *(&v55 + 1) = 0;
              if (v42 && atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v42, v39);
              }

              v43 = v55;
              *&v55 = 0;
              if (v43 && atomic_fetch_add_explicit(v43, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v43, v39);
              }
            }

            v57 = -1;
            if (!v54)
            {
              v44 = v52[1];
              v52[1] = 0;
              if (v44 && atomic_fetch_add_explicit(v44, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v44, v39);
              }

              v45 = v52[0];
              v52[0] = 0;
              if (v45 && atomic_fetch_add_explicit(v45, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v45, v39);
              }
            }

            CFRelease(*(v24 - 8));
            CFRelease(*(v26 + 8));
            if (v7[4] == 1)
            {
              (*(*v7 + 8))(v7);
            }

            else
            {
              --v7[4];
            }

            goto LABEL_63;
          }

          *v52 = *(v28 + 8);
        }

        else
        {
          v30 = *(v28 + 8);
          if (v30)
          {
            atomic_fetch_add_explicit(v30, 2u, memory_order_relaxed);
          }

          v52[0] = v30;
          v29 = *(v28 + 16);
          if (v29)
          {
            atomic_fetch_add_explicit(v29, 2u, memory_order_relaxed);
          }

          v52[1] = v29;
          v53 = *(v28 + 24);
          LOBYTE(v29) = *(v28 + 32);
        }

        v54 = v29;
        goto LABEL_33;
      }

      __break(0xC471u);
LABEL_81:
      JUMPOUT(0x19E191B60);
    }

    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(this + 3, v15);
    goto LABEL_25;
  }

  v48 = MEMORY[0x1E696EBA8];

  WebCore::MediaKeySystemRequest::deny(a2, v48);
}

uint64_t WebKit::MediaKeySystemPermissionRequestManager::cancelMediaKeySystemRequest(WebKit::MediaKeySystemPermissionRequestManager *this, WebCore::MediaKeySystemRequest *a2)
{
  v23 = *(a2 + 5);
  v4 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::MediaKeySystemRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::MediaKeySystemRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::MediaKeySystemRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::MediaKeySystemRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::MediaKeySystemRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::MediaKeySystemRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::MediaKeySystemRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::MediaKeySystemRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::MediaKeySystemRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::MediaKeySystemRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::MediaKeySystemRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::MediaKeySystemRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::MediaKeySystemRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>( this + 3,  &v23);
  WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::MediaKeySystemRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::MediaKeySystemRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::MediaKeySystemRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::take(this + 3, v4, &v24);
  result = v24;
  v24 = 0;
  if (result)
  {
    if (*(result + 32) == 1)
    {
      return (*(*result + 24))(result);
    }

    else
    {
      --*(result + 32);
    }
  }

  else
  {
    result = WebCore::MediaKeySystemRequest::document(a2);
    if (result)
    {
      v6 = result;
      *(result + 28) += 2;
      v7 = *(this + 4);
      if (v7)
      {
        if (result == -1)
        {
          __break(0xC471u);
          JUMPOUT(0x19E191E08);
        }

        v8 = *(v7 - 8);
        v9 = (~(result << 32) + result) ^ ((~(result << 32) + result) >> 22);
        v10 = 9 * ((v9 + ~(v9 << 13)) ^ ((v9 + ~(v9 << 13)) >> 8));
        v11 = (v10 ^ (v10 >> 15)) + ~((v10 ^ (v10 >> 15)) << 27);
        v12 = v8 & ((v11 >> 31) ^ v11);
        v13 = v7 + 24 * v12;
        v14 = *v13;
        if (*v13 != result)
        {
          v15 = 1;
          while (v14)
          {
            v12 = (v12 + v15) & v8;
            v13 = v7 + 24 * v12;
            v14 = *v13;
            ++v15;
            if (*v13 == result)
            {
              goto LABEL_15;
            }
          }

          v13 = v7 + 24 * *(v7 - 4);
        }

LABEL_15:
        if (v7 + 24 * *(v7 - 4) != v13)
        {
          v16 = *(v13 + 20);
          if (!v16)
          {
            goto LABEL_22;
          }

          v17 = *(v13 + 8);
          v18 = v17 + 8;
          while (*v17 != a2)
          {
            v17 += 8;
            v18 += 8;
            if (!--v16)
            {
              goto LABEL_26;
            }
          }

          v19 = v17;
          v20 = v18;
          WTF::VectorDestructor<true,WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>>::destruct(v17, (v17 + 8));
          result = memmove(v19, (v19 + 8), *(v13 + 8) + 8 * *(v13 + 20) - v20);
          v21 = *(v13 + 20) - 1;
          *(v13 + 20) = v21;
          if (!v21)
          {
LABEL_22:
            result = WebCore::Document::removeMediaCanStartListener();
            v22 = *(this + 4);
            if (!v22 || (v22 += 24 * *(v22 - 4), v22 != v13))
            {
              if (v22 != v13)
              {
                result = WTF::HashTable<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>,WTF::KeyValuePair<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>,WTF::Vector<WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>,WTF::Vector<WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>>,WTF::HashMap<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>,WTF::Vector<WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>>,WTF::HashTraits<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>>,WTF::HashTraits<WTF::Vector<WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>>,WTF::FastMalloc>::remove(this + 4, v13);
              }
            }
          }
        }
      }

LABEL_26:
      if (*(v6 + 7) == 2)
      {
        return WebCore::Node::removedLastRef(v6);
      }

      else
      {
        *(v6 + 7) -= 2;
      }
    }
  }

  return result;
}

uint64_t WebKit::MediaKeySystemPermissionRequestManager::mediaCanStart(WebKit::MediaKeySystemPermissionRequestManager *this, WebCore::Document *a2, __n128 a3)
{
  v6 = *(this + 4);
  v4 = (this + 32);
  v5 = v6;
  if (!v6)
  {
    goto LABEL_17;
  }

  v7 = a2;
  v8 = *(v5 - 8);
  v9 = (a2 + ~(a2 << 32)) ^ ((a2 + ~(a2 << 32)) >> 22);
  v10 = 9 * ((v9 + ~(v9 << 13)) ^ ((v9 + ~(v9 << 13)) >> 8));
  v11 = (v10 ^ (v10 >> 15)) + ~((v10 ^ (v10 >> 15)) << 27);
  v12 = v8 & ((v11 >> 31) ^ v11);
  a2 = (v5 + 24 * v12);
  v13 = *a2;
  if (*a2 != v7)
  {
    v14 = 1;
    while (v13)
    {
      v12 = (v12 + v14) & v8;
      a2 = (v5 + 24 * v12);
      v13 = *a2;
      ++v14;
      if (*a2 == v7)
      {
        goto LABEL_8;
      }
    }

    a2 = (v5 + 24 * *(v5 - 4));
  }

LABEL_8:
  if ((v5 + 24 * *(v5 - 4)) == a2)
  {
LABEL_17:
    a3.n128_u64[0] = 0;
    v22 = a3;
    v23 = a3;
    WTF::Vector<WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v23, a2);
  }

  else
  {
    v15 = *(a2 + 1);
    v22.n128_u64[0] = v15;
    v16 = *(a2 + 4);
    v17 = *(a2 + 5);
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    v22.n128_u64[1] = __PAIR64__(v17, v16);
    v18 = *v4;
    if (!*v4 || (v18 = (v18 + 24 * *(v18 - 1)), v18 != a2))
    {
      if (v18 != a2)
      {
        WTF::HashTable<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>,WTF::KeyValuePair<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>,WTF::Vector<WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>,WTF::Vector<WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>>,WTF::HashMap<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>,WTF::Vector<WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>>,WTF::HashTraits<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>>,WTF::HashTraits<WTF::Vector<WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>>,WTF::FastMalloc>::remove(v4, a2);
      }
    }

    if (v17)
    {
      v19 = 8 * v17;
      do
      {
        v20 = *v15++;
        WebKit::MediaKeySystemPermissionRequestManager::sendMediaKeySystemRequest(this, v20);
        v19 -= 8;
      }

      while (v19);
    }
  }

  return WTF::Vector<WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v22, a2);
}

_DWORD *WebKit::MediaKeySystemPermissionRequestManager::mediaKeySystemWasGranted(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  v3 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::MediaKeySystemRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::MediaKeySystemRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::MediaKeySystemRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::MediaKeySystemRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::MediaKeySystemRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::MediaKeySystemRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::MediaKeySystemRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::MediaKeySystemRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::MediaKeySystemRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::MediaKeySystemRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::MediaKeySystemRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::MediaKeySystemRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::MediaKeySystemRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>( (a1 + 24),  &v6);
  WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::MediaKeySystemRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::MediaKeySystemRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::MediaKeySystemRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::take((a1 + 24), v3, &v5);
  result = v5;
  if (v5)
  {
    WebCore::MediaKeySystemRequest::allow();
    result = v5;
    v5 = 0;
    if (result)
    {
      if (result[8] == 1)
      {
        return (*(*result + 24))(result);
      }

      else
      {
        --result[8];
      }
    }
  }

  return result;
}

WebCore::MediaKeySystemRequest *WebKit::MediaKeySystemPermissionRequestManager::mediaKeySystemWasDenied(uint64_t a1, uint64_t a2, const WTF::String *a3)
{
  v8 = a2;
  v5 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::MediaKeySystemRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::MediaKeySystemRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::MediaKeySystemRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::MediaKeySystemRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::MediaKeySystemRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::MediaKeySystemRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::MediaKeySystemRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::MediaKeySystemRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::MediaKeySystemRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::MediaKeySystemRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::MediaKeySystemRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::MediaKeySystemRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::MediaKeySystemRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>( (a1 + 24),  &v8);
  WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::MediaKeySystemRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::MediaKeySystemRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::MediaKeySystemRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::take((a1 + 24), v5, &v7);
  result = v7;
  if (v7)
  {
    WebCore::MediaKeySystemRequest::deny(v7, a3);
    result = v7;
    v7 = 0;
    if (result)
    {
      if (*(result + 8) == 1)
      {
        return (*(*result + 24))(result);
      }

      else
      {
        --*(result + 8);
      }
    }
  }

  return result;
}

uint64_t WebKit::MediaKeySystemPermissionRequestManager::ref(WebKit::MediaKeySystemPermissionRequestManager *this)
{
  v1 = *(*(this + 2) + 8);
  if (v1)
  {
    return CFRetain(*(v1 - 8));
  }

  result = 92;
  __break(0xC471u);
  return result;
}

void WebKit::MediaKeySystemPermissionRequestManager::deref(WebKit::MediaKeySystemPermissionRequestManager *this)
{
  v1 = *(*(this + 2) + 8);
  if (v1)
  {
    CFRelease(*(v1 - 8));
  }

  else
  {
    __break(0xC471u);
  }
}

unsigned int *WebKit::WebExtensionContextProxy::setBackgroundPage(WebKit::WebExtensionContextProxy *this, WebKit::WebPage *a2)
{
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2 + 6, a2 + 16);
  v5 = *(a2 + 3);
  atomic_fetch_add(v5, 1u);
  result = *(this + 22);
  *(this + 22) = v5;
  if (result && atomic_fetch_add(result, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, result);

    return WTF::fastFree(result, v4);
  }

  return result;
}

uint64_t WebKit::WebExtensionContextProxy::popupPages@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = 0;
  *(a6 + 8) = 0;
  v11 = (a1 + 184);
  v12 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::CoreIPCAuditToken>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::CoreIPCAuditToken>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::CoreIPCAuditToken,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::CoreIPCAuditToken>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::begin(*(a1 + 184));
  WTF::WeakHashMap<WebKit::WebPage,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultWeakPtrImpl>::WeakHashMapIteratorBase<WTF::WeakHashMap<WebKit::WebPage,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultWeakPtrImpl> const,WTF::HashTableConstIteratorAdapter<WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashMap<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>,WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>>,WTF::WeakHashMap<WebKit::WebPage,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultWeakPtrImpl>::PeekPtrType const,WTF::WeakHashMap<WebKit::WebPage,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultWeakPtrImpl>::PeekType const>::WeakHashMapIteratorBase( v29,  v11,  v12,  v13);
  v14 = *v11;
  if (*v11)
  {
    v15 = *(v14 - 4);
    v16 = v14 + 40 * v15;
  }

  else
  {
    v16 = 0;
    v15 = 0;
  }

  result = WTF::WeakHashMap<WebKit::WebPage,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultWeakPtrImpl>::WeakHashMapIteratorBase<WTF::WeakHashMap<WebKit::WebPage,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultWeakPtrImpl> const,WTF::HashTableConstIteratorAdapter<WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashMap<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>,WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>>,WTF::WeakHashMap<WebKit::WebPage,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultWeakPtrImpl>::PeekPtrType const,WTF::WeakHashMap<WebKit::WebPage,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultWeakPtrImpl>::PeekType const>::WeakHashMapIteratorBase( v27,  v11,  v16,  v14 + 40 * v15);
  v18 = v30;
  if (v30 != v28)
  {
    v19 = 0;
    LODWORD(v20) = 0;
    do
    {
      v21 = *(*v18 + 8);
      if (v21)
      {
        v22 = v21 - 16;
      }

      else
      {
        v22 = 0;
      }

      if (((a3 & 1) == 0 || *(v18 + 16) != 1 || *(v18 + 8) == a2) && ((a5 & 1) == 0 || *(v18 + 32) != 1 || *(v18 + 24) == a4))
      {
        CFRetain(*(v22 + 8));
        v26 = v22;
        if (v20 == *(a6 + 8))
        {
          v23 = WTF::Vector<WTF::Ref<WebCore::ApplePayError,WTF::RawPtrTraits<WebCore::ApplePayError>,WTF::DefaultRefDerefTraits<WebCore::ApplePayError>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a6, v20 + 1, &v26);
          v20 = *(a6 + 12);
          v19 = *a6;
          v24 = *v23;
          *v23 = 0;
          *(v19 + 8 * v20) = v24;
        }

        else
        {
          v26 = 0;
          *(v19 + 8 * v20) = v22;
        }

        LODWORD(v20) = v20 + 1;
        *(a6 + 12) = v20;
        v25 = v26;
        v26 = 0;
        if (v25)
        {
          CFRelease(*(v25 + 8));
        }
      }

      result = WTF::WeakHashMap<WebKit::WebPage,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultWeakPtrImpl>::WeakHashMapIteratorBase<WTF::WeakHashMap<WebKit::WebPage,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultWeakPtrImpl> const,WTF::HashTableConstIteratorAdapter<WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashMap<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>,WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>>,WTF::WeakHashMap<WebKit::WebPage,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultWeakPtrImpl>::PeekPtrType const,WTF::WeakHashMap<WebKit::WebPage,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultWeakPtrImpl>::PeekType const>::advance(v29);
      v18 = v30;
    }

    while (v30 != v28);
  }

  return result;
}

uint64_t WTF::WeakHashMap<WebKit::WebPage,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultWeakPtrImpl>::set<WebKit::WebPage,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>@<X0>(unsigned int *a1@<X0>, unsigned int *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = a1[2];
  v9 = a1[3];
  a1[2] = v8 + 1;
  if (v8 > v9)
  {
    WTF::WeakHashMap<WebKit::WebPage,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultWeakPtrImpl>::removeNullReferences(a1, a2);
  }

  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2 + 6, (a2 + 4));
  v10 = *(a2 + 3);
  atomic_fetch_add(v10, 1u);
  v14 = v10;
  WTF::HashMap<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(a1, &v14, a3, v15);
  v12 = v14;
  v14 = 0;
  if (v12 && atomic_fetch_add(v12, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v12);
    WTF::fastFree(v12, v11);
  }

  result = WTF::WeakHashMap<WebKit::WebPage,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultWeakPtrImpl>::WeakHashMapIteratorBase<WTF::WeakHashMap<WebKit::WebPage,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultWeakPtrImpl> const,WTF::HashTableConstIteratorAdapter<WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashMap<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>,WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>>,WTF::WeakHashMap<WebKit::WebPage,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultWeakPtrImpl>::PeekPtrType const,WTF::WeakHashMap<WebKit::WebPage,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultWeakPtrImpl>::PeekType const>::WeakHashMapIteratorBase( a4,  a1,  v15[0],  v15[1]);
  *(a4 + 48) = v16;
  return result;
}

uint64_t WebKit::WebExtensionContextProxy::tabPages@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = 0;
  *(a6 + 8) = 0;
  v11 = (a1 + 200);
  v12 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::CoreIPCAuditToken>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::CoreIPCAuditToken>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::CoreIPCAuditToken,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::CoreIPCAuditToken>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::begin(*(a1 + 200));
  WTF::WeakHashMap<WebKit::WebPage,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultWeakPtrImpl>::WeakHashMapIteratorBase<WTF::WeakHashMap<WebKit::WebPage,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultWeakPtrImpl> const,WTF::HashTableConstIteratorAdapter<WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashMap<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>,WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>>,WTF::WeakHashMap<WebKit::WebPage,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultWeakPtrImpl>::PeekPtrType const,WTF::WeakHashMap<WebKit::WebPage,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultWeakPtrImpl>::PeekType const>::WeakHashMapIteratorBase( v29,  v11,  v12,  v13);
  v14 = *v11;
  if (*v11)
  {
    v15 = *(v14 - 4);
    v16 = v14 + 40 * v15;
  }

  else
  {
    v16 = 0;
    v15 = 0;
  }

  result = WTF::WeakHashMap<WebKit::WebPage,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultWeakPtrImpl>::WeakHashMapIteratorBase<WTF::WeakHashMap<WebKit::WebPage,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultWeakPtrImpl> const,WTF::HashTableConstIteratorAdapter<WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashMap<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>,WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>>,WTF::WeakHashMap<WebKit::WebPage,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultWeakPtrImpl>::PeekPtrType const,WTF::WeakHashMap<WebKit::WebPage,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultWeakPtrImpl>::PeekType const>::WeakHashMapIteratorBase( v27,  v11,  v16,  v14 + 40 * v15);
  v18 = v30;
  if (v30 != v28)
  {
    v19 = 0;
    LODWORD(v20) = 0;
    do
    {
      v21 = *(*v18 + 8);
      if (v21)
      {
        v22 = v21 - 16;
      }

      else
      {
        v22 = 0;
      }

      if (((a3 & 1) == 0 || *(v18 + 16) != 1 || *(v18 + 8) == a2) && ((a5 & 1) == 0 || *(v18 + 32) != 1 || *(v18 + 24) == a4))
      {
        CFRetain(*(v22 + 8));
        v26 = v22;
        if (v20 == *(a6 + 8))
        {
          v23 = WTF::Vector<WTF::Ref<WebCore::ApplePayError,WTF::RawPtrTraits<WebCore::ApplePayError>,WTF::DefaultRefDerefTraits<WebCore::ApplePayError>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a6, v20 + 1, &v26);
          v20 = *(a6 + 12);
          v19 = *a6;
          v24 = *v23;
          *v23 = 0;
          *(v19 + 8 * v20) = v24;
        }

        else
        {
          v26 = 0;
          *(v19 + 8 * v20) = v22;
        }

        LODWORD(v20) = v20 + 1;
        *(a6 + 12) = v20;
        v25 = v26;
        v26 = 0;
        if (v25)
        {
          CFRelease(*(v25 + 8));
        }
      }

      result = WTF::WeakHashMap<WebKit::WebPage,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultWeakPtrImpl>::WeakHashMapIteratorBase<WTF::WeakHashMap<WebKit::WebPage,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultWeakPtrImpl> const,WTF::HashTableConstIteratorAdapter<WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashMap<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>,WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>>,WTF::WeakHashMap<WebKit::WebPage,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultWeakPtrImpl>::PeekPtrType const,WTF::WeakHashMap<WebKit::WebPage,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultWeakPtrImpl>::PeekType const>::advance(v29);
      v18 = v30;
    }

    while (v30 != v28);
  }

  return result;
}

void WebKit::WebExtensionContextProxy::setBackgroundPageIdentifier(WebKit::WebExtensionContextProxy *a1, void *a2)
{
  {
    v3 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v8 = a2;
    v7 = WebKit::WebProcess::operator new(0x370, a2);
    v3 = WebKit::WebProcess::WebProcess(v7);
    a2 = v8;
    WebKit::WebProcess::singleton(void)::process = v3;
  }

  v9 = a2;
  v4 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v3 + 17, &v9);
  if (v4)
  {
    v5 = v4;
    CFRetain(*(v4 + 8));
    WebKit::WebExtensionContextProxy::setBackgroundPage(a1, v5);
    v6 = *(v5 + 1);

    CFRelease(v6);
  }
}

void WebKit::WebExtensionContextProxy::addPopupPageIdentifier(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  {
    v11 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v15 = a2;
    v14 = WebKit::WebProcess::operator new(0x370, a2);
    v11 = WebKit::WebProcess::WebProcess(v14);
    a2 = v15;
    WebKit::WebProcess::singleton(void)::process = v11;
  }

  v16[0] = a2;
  v12 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v11 + 17, v16);
  if (v12)
  {
    v13 = v12;
    CFRetain(*(v12 + 8));
    v17[0] = a3;
    v17[1] = a4;
    v17[2] = a5;
    v17[3] = a6;
    WTF::WeakHashMap<WebKit::WebPage,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultWeakPtrImpl>::set<WebKit::WebPage,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>((a1 + 184), v13, v17, v16);
    CFRelease(*(v13 + 8));
  }
}

void WebKit::WebExtensionContextProxy::addTabPageIdentifier(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  {
    v9 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v13 = a2;
    v12 = WebKit::WebProcess::operator new(0x370, a2);
    v9 = WebKit::WebProcess::WebProcess(v12);
    a2 = v13;
    WebKit::WebProcess::singleton(void)::process = v9;
  }

  v14[0] = a2;
  v10 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v9 + 17, v14);
  if (v10)
  {
    v11 = v10;
    CFRetain(*(v10 + 8));
    v15[0] = a3;
    v15[1] = 1;
    v15[2] = a4;
    v15[3] = a5;
    WTF::WeakHashMap<WebKit::WebPage,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultWeakPtrImpl>::set<WebKit::WebPage,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>((a1 + 200), v11, v15, v14);
    CFRelease(*(v11 + 8));
  }
}

_DWORD *WebKit::WebExtensionContextProxy::setContentScriptWorld(WebKit::WebExtensionContextProxy *this, WebCore::DOMWrapperWorld *a2)
{
  ++*a2;
  result = *(this + 19);
  *(this + 19) = a2;
  if (result)
  {
    result = WTF::RefCounted<WebCore::DOMWrapperWorld>::deref(result);
  }

  *(a2 + 55) = 1;
  return result;
}

uint64_t WebKit::WebExtensionContextProxy::enumerateFramesAndNamespaceObjects(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = WTF::fastMalloc(0x18);
  *v6 = &unk_1F1122F20;
  v6[1] = a3;
  v6[2] = a2;
  v9 = v6;
  WTF::WeakHashSet<WebKit::WebFrame,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::forEach((a1 + 160), &v9);
  result = v9;
  if (v9)
  {
    v8 = *(*v9 + 8);

    return v8();
  }

  return result;
}

unsigned int *WTF::WeakHashSet<WebKit::WebFrame,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::forEach(unsigned int *result, void *a2)
{
  v3 = result;
  if (*result && (v4 = *(*result - 12), v4))
  {
    if (v4 >> 29)
    {
      __break(0xC471u);
      return result;
    }

    v5 = WTF::fastMalloc((8 * v4));
  }

  else
  {
    v5 = 0;
  }

  result = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(v3);
  v7 = result;
  v8 = v6;
  if (*v3)
  {
    v9 = *v3 + 8 * *(*v3 - 4);
  }

  else
  {
    v9 = 0;
  }

  if (v9 != result)
  {
    v10 = 0;
    v11 = 1;
    do
    {
      v12 = v11;
      v13 = *(*v7 + 8);
      if (v13)
      {
        result = WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v13 + 8), *(*v7 + 8));
        v14 = *(v13 + 8);
        if (v14)
        {
          atomic_fetch_add(v14, 1u);
        }
      }

      else
      {
        v14 = 0;
      }

      *(v5 + v10) = v14;
      do
      {
        v7 += 2;
      }

      while (v7 != v8 && (*v7 + 1) <= 1);
      ++v10;
      v11 = v12 + 1;
    }

    while (v7 != v9);
    if (v10)
    {
      v15 = v5;
      do
      {
        v16 = *v15;
        if (*v15)
        {
          v17 = *(v16 + 8);
          if (v17)
          {
            v18 = *v3;
            if (*v3)
            {
              v19 = *(v18 - 2);
              v20 = (~(v16 << 32) + v16) ^ ((~(v16 << 32) + v16) >> 22);
              v21 = 9 * ((v20 + ~(v20 << 13)) ^ ((v20 + ~(v20 << 13)) >> 8));
              v22 = (v21 ^ (v21 >> 15)) + ~((v21 ^ (v21 >> 15)) << 27);
              v23 = v19 & ((v22 >> 31) ^ v22);
              for (i = 1; ; ++i)
              {
                v25 = v18[v23];
                if (!v25)
                {
                  break;
                }

                if (v25 != -1 && v25 == v16)
                {
                  (*(**a2 + 16))(*a2, v17 - 16);
                  break;
                }

                v23 = (v23 + i) & v19;
              }
            }
          }
        }

        v15 = (v15 + 8);
      }

      while (v15 != (v5 + 8 * v10));
      v27 = 8 * v12;
      v28 = v5;
      do
      {
        result = *v28;
        *v28 = 0;
        if (result && atomic_fetch_add(result, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, result);
          result = WTF::fastFree(result, v6);
        }

        ++v28;
        v27 -= 8;
      }

      while (v27);
    }
  }

  if (v5)
  {

    return WTF::fastFree(v5, v6);
  }

  return result;
}

uint64_t WebKit::WebExtensionContextProxy::enumerateFramesAndWebPageNamespaceObjects(uint64_t a1, uint64_t a2)
{
  v4 = WTF::fastMalloc(0x10);
  *v4 = &unk_1F1122F48;
  v4[1] = a2;
  v7 = v4;
  WTF::WeakHashSet<WebKit::WebFrame,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::forEach((a1 + 160), &v7);
  result = v7;
  if (v7)
  {
    v6 = *(*v7 + 8);

    return v6();
  }

  return result;
}

uint64_t WebKit::WebExtensionControllerProxy::get(void *a1, uint64_t a2)
{
  v6 = a2;
  if ((byte_1ED642BA9 & 1) == 0)
  {
    qword_1ED642BB8 = 0;
    byte_1ED642BA9 = 1;
  }

  result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::lookup<WTF::HashMapTranslatorAdapter<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(&v6);
  if (result && (result = *(result + 8)) != 0)
  {
    atomic_fetch_add(result, 1u);
    v5 = *(result + 8);
    if (v5)
    {
      ++*(v5 + 16);
    }

    *a1 = v5;
    if (atomic_fetch_add(result, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result);
      return WTF::fastFree(result, v4);
    }
  }

  else
  {
    *a1 = 0;
  }

  return result;
}

void *WebKit::WebExtensionControllerProxy::getOrCreate@<X0>(WebKit::WebExtensionControllerProxy **a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v9[0] = a1;
  v9[1] = &v10;
  v10 = a2;
  WebKit::WebExtensionControllerProxy::get(&v8, *a1);
  v6 = v8;
  if (v8)
  {
    WebKit::WebExtensionControllerProxy::getOrCreate(WebKit::WebExtensionControllerParameters const&,WebKit::WebPage *)::$_0::operator()(v9, v8);
    ++*(v6 + 16);
    result = WTF::RefCounted<WebKit::WebExtensionControllerProxy>::deref((v6 + 16));
  }

  else
  {
    v6 = WebKit::WebExtensionControllerProxy::operator new(0x38, v5);
    WebKit::WebExtensionControllerProxy::WebExtensionControllerProxy(v6, a1);
    result = WebKit::WebExtensionControllerProxy::getOrCreate(WebKit::WebExtensionControllerParameters const&,WebKit::WebPage *)::$_0::operator()(v9, v6);
  }

  *a3 = v6;
  return result;
}

uint64_t *WebKit::WebExtensionControllerProxy::getOrCreate(WebKit::WebExtensionControllerParameters const&,WebKit::WebPage *)::$_0::operator()(WebKit::WebExtensionControllerProxy ***a1, uint64_t **a2)
{
  v17 = 0;
  v18 = 0;
  v3 = *a1;
  v4 = *(*a1 + 7);
  if (v4)
  {
    v9 = v3[2];
    v10 = (v9 + 160 * v4);
    do
    {
      WebKit::WebExtensionContextProxy::getOrCreate(v9, a2, *a1[1], &v16);
      v11 = (v9 + 16);
      WTF::URL::protocolHostAndPort(&v15, v11);
      WTF::HashMap<WTF::String,WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>&>(v14, &v17, &v15, &v16);
      v13 = v15;
      v15 = 0;
      if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v12);
      }

      WTF::HashTable<WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>,WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(v14, &v18, &v16);
      if (v16)
      {
        WTF::RefCounted<WebKit::WebExtensionContextProxy>::deref(v16 + 4, a2);
      }

      v9 = (v11 + 144);
    }

    while (v9 != v10);
    v3 = *a1;
    v5 = v18;
  }

  else
  {
    v5 = 0;
  }

  *(a2 + 32) = *(v3 + 8);
  v6 = a2[5];
  a2[5] = v5;
  if (v6)
  {
    WTF::HashTable<WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>,WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>>,WTF::FastMalloc>::deallocateTable(v6, a2);
  }

  result = a2[6];
  a2[6] = v17;
  if (result)
  {
    return WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(result, a2);
  }

  return result;
}

uint64_t WebKit::WebExtensionControllerProxy::operator new(WebKit::WebExtensionControllerProxy *this, void *a2)
{
  if (WebKit::WebExtensionControllerProxy::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::WebExtensionControllerProxy::s_heapRef, a2);
  }

  else
  {
    return WebKit::WebExtensionControllerProxy::operatorNewSlow(0x38);
  }
}

uint64_t WebKit::WebExtensionControllerProxy::WebExtensionControllerProxy(uint64_t a1, void *a2)
{
  *(a1 + 16) = 1;
  *a1 = &unk_1F1122E30;
  *(a1 + 8) = 0;
  *(a1 + 24) = *a2;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  if ((byte_1ED642BA9 & 1) == 0)
  {
    qword_1ED642BB8 = 0;
    byte_1ED642BA9 = 1;
  }

  v3 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WebKit::WebExtensionControllerProxy&>(v8, (a1 + 24), a1);
  v5 = WebKit::WebProcess::singleton(v3, v4);
  v6 = *(a1 + 24);
  v9[0] = 167;
  v9[1] = v6;
  WTF::HashMap<std::pair<IPC::ReceiverName,unsigned long long>,WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<std::pair<IPC::ReceiverName,unsigned long long>>,WTF::PairHashTraits<WTF::StrongEnumHashTraits<IPC::ReceiverName>,WTF::HashTraits<unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<std::pair<IPC::ReceiverName,unsigned long long>,IPC::MessageReceiver&>(v5 + 7, v9, a1, v8);
  return a1;
}

uint64_t WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WebKit::WebExtensionControllerProxy&>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v21 = a3;
  WTF::checkHashTableKey<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMapTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(*a2);
  v5 = qword_1ED642BB8;
  if (qword_1ED642BB8 || (WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(0), (v5 = qword_1ED642BB8) != 0))
  {
    v6 = *(v5 - 8);
  }

  else
  {
    v6 = 0;
  }

  result = WTF::ObjectIdentifierGenericBaseHash<unsigned long long>::hash(a2);
  v8 = result & v6;
  v9 = (v5 + 16 * (result & v6));
  v10 = *v9;
  v11 = *a2;
  if (*v9)
  {
    v18 = 0;
    v19 = 1;
    do
    {
      if (v10 == v11)
      {
        if (qword_1ED642BB8)
        {
          v20 = *(qword_1ED642BB8 - 4);
        }

        else
        {
          v20 = 0;
        }

        v17 = 0;
        v16 = qword_1ED642BB8 + 16 * v20;
        goto LABEL_10;
      }

      if (v10 == -1)
      {
        v18 = v9;
      }

      v8 = (v8 + v19) & v6;
      v9 = (v5 + 16 * v8);
      v10 = *v9;
      ++v19;
    }

    while (*v9);
    if (v18)
    {
      *v18 = 0;
      v18[1] = 0;
      --*(qword_1ED642BB8 - 16);
      v11 = *a2;
      v9 = v18;
    }
  }

  result = WTF::HashMapTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>::translate<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> const&,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>> WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::StorageAreaMap,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineAdd<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> const&,WebKit::StorageAreaMap&>(WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> const&,WebKit::StorageAreaMap&)::{lambda(void)#1}>( v9,  v11,  &v21);
  v12 = qword_1ED642BB8;
  if (qword_1ED642BB8)
  {
    v13 = *(qword_1ED642BB8 - 12) + 1;
  }

  else
  {
    v13 = 1;
  }

  *(qword_1ED642BB8 - 12) = v13;
  v14 = (*(v12 - 16) + v13);
  v15 = *(v12 - 4);
  if (v15 > 0x400)
  {
    if (v15 > 2 * v14)
    {
      goto LABEL_9;
    }

LABEL_20:
    result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(v9);
    v9 = result;
    v12 = qword_1ED642BB8;
    if (qword_1ED642BB8)
    {
      v15 = *(qword_1ED642BB8 - 4);
    }

    else
    {
      v15 = 0;
    }

    goto LABEL_9;
  }

  if (3 * v15 <= 4 * v14)
  {
    goto LABEL_20;
  }

LABEL_9:
  v16 = v12 + 16 * v15;
  v17 = 1;
LABEL_10:
  *a1 = v9;
  *(a1 + 8) = v16;
  *(a1 + 16) = v17;
  return result;
}

void WebKit::WebExtensionControllerProxy::~WebExtensionControllerProxy(WebKit::WebExtensionControllerProxy *this)
{
  if ((byte_1ED642BA9 & 1) == 0)
  {
    qword_1ED642BB8 = 0;
    byte_1ED642BA9 = 1;
  }

  v2 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(this + 3);
  v4 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::remove(v2, v3);
  v6 = WebKit::WebProcess::singleton(v4, v5);
  WebKit::AuxiliaryProcess::removeMessageReceiver(v6, this);
  v8 = *(this + 6);
  if (v8)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v8, v7);
  }

  v9 = *(this + 5);
  if (v9)
  {
    WTF::HashTable<WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>,WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>>,WTF::FastMalloc>::deallocateTable(v9, v7);
  }

  *this = &unk_1F10EA5E0;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, v7);
  if (*(this + 4) != 1)
  {
    __break(0xC471u);
  }
}

{
  WebKit::WebExtensionControllerProxy::~WebExtensionControllerProxy(this);

  bmalloc::api::tzoneFree(v1, v2);
}

uint64_t *WebKit::WebExtensionControllerProxy::load(WebKit::WebExtensionControllerProxy *this, const WebKit::WebExtensionContextParameters *a2)
{
  WebKit::WebExtensionContextProxy::getOrCreate(a2, this, 0, &v10);
  WTF::URL::protocolHostAndPort(&v9, (a2 + 16));
  WTF::HashMap<WTF::String,WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>&>(v8, this + 6, &v9, &v10);
  v5 = v9;
  v9 = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v4);
  }

  result = WTF::HashTable<WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>,WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(v8, this + 5, &v10);
  if (v10)
  {
    return WTF::RefCounted<WebKit::WebExtensionContextProxy>::deref(v10 + 4, v7);
  }

  return result;
}

WTF::StringImpl *WTF::HashMap<WTF::String,WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>&>(uint64_t a1, uint64_t *a2, WTF::StringImpl **a3, WTF **a4)
{
  if (*a3 == -1 || !*a3)
  {
    __break(0xC471u);
    JUMPOUT(0x19E19345CLL);
  }

  v8 = *a2;
  if (*a2 || (WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(a2, 0), (v8 = *a2) != 0))
  {
    v9 = *(v8 - 8);
  }

  else
  {
    v9 = 0;
  }

  v10 = *(*a3 + 4);
  if (v10 < 0x100)
  {
    v11 = WTF::StringImpl::hashSlowCase(*a3);
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
LABEL_14:
    v11 = i + v14;
  }

  if (!v16)
  {
    if (v12)
    {
      *v12 = 0;
      v12[1] = 0;
      --*(*a2 - 16);
      v15 = v12;
    }

    v18 = *a3;
    *a3 = 0;
    result = *v15;
    *v15 = v18;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, a2);
    }

    v19 = *a4;
    *(v19 + 4) = *(*a4 + 4) + 1;
    v20 = v15[1];
    v15[1] = v19;
    if (v20)
    {
      result = WTF::RefCounted<WebKit::WebExtensionContextProxy>::deref(v20 + 4, a2);
    }

    v21 = *a2;
    if (*a2)
    {
      v22 = *(v21 - 12) + 1;
    }

    else
    {
      v22 = 1;
    }

    *(v21 - 12) = v22;
    v25 = (*(v21 - 16) + v22);
    v26 = *(v21 - 4);
    if (v26 > 0x400)
    {
      if (v26 <= 2 * v25)
      {
LABEL_29:
        result = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(a2, v15);
        v15 = result;
        v21 = *a2;
        if (*a2)
        {
          v26 = *(v21 - 4);
        }

        else
        {
          v26 = 0;
        }
      }
    }

    else if (3 * v26 <= 4 * v25)
    {
      goto LABEL_29;
    }

    v28 = v21 + 16 * v26;
    v27 = 1;
    goto LABEL_36;
  }

  result = WTF::equal(v16, *a3, a3);
  if (!result)
  {
    goto LABEL_14;
  }

  v23 = *a2;
  if (*a2)
  {
    v24 = *(v23 - 4);
  }

  else
  {
    v24 = 0;
  }

  v27 = 0;
  v28 = v23 + 16 * v24;
LABEL_36:
  *a1 = v15;
  *(a1 + 8) = v28;
  *(a1 + 16) = v27;
  return result;
}

uint64_t *WebKit::WebExtensionControllerProxy::unload(uint64_t *result, WTF::StringImpl *a2)
{
  v3 = result;
  v5 = result + 6;
  v4 = result[6];
  if (v4)
  {
    v6 = *(v4 - 4);
    if (v6)
    {
      v7 = 0;
      v8 = v4 + 16 * v6 - 8;
      do
      {
        result = *(v8 - 8);
        if (result + 1 >= 2 && *(*v8 + 24) == a2)
        {
          *(v8 - 8) = -1;
          if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            result = WTF::StringImpl::destroy(result, a2);
          }

          v9 = *v8;
          *v8 = 0;
          if (v9)
          {
            result = WTF::RefCounted<WebKit::WebExtensionContextProxy>::deref((v9 + 16), a2);
          }

          ++v7;
        }

        v8 -= 16;
        --v6;
      }

      while (v6);
      v4 = *v5;
      if (v7)
      {
        v10 = *(v4 - 12) - v7;
        *(v4 - 16) += v7;
        *(v4 - 12) = v10;
      }

      else if (!v4)
      {
        goto LABEL_37;
      }
    }

    v11 = *(v4 - 12);
    v12 = *(v4 - 4);
    if (6 * v11 < v12 && v12 >= 9)
    {
      if (v11 > 1)
      {
        v15 = __clz(v11 - 1);
        if (!v15)
        {
          goto LABEL_73;
        }

        v14 = (1 << -v15);
        if (v11 > 0x400)
        {
          if (v14 > 2 * v11)
          {
            goto LABEL_28;
          }

          goto LABEL_27;
        }
      }

      else
      {
        v14 = 1;
      }

      if (3 * v14 > 4 * v11)
      {
LABEL_28:
        if (v14 > 0x400)
        {
          v16 = 0.416666667;
        }

        else
        {
          v16 = 0.604166667;
        }

        if (v14 * v16 <= v11)
        {
          LODWORD(v14) = 2 * v14;
        }

        if (v14 <= 8)
        {
          v17 = 8;
        }

        else
        {
          v17 = v14;
        }

        result = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(v5, v17, 0);
        goto LABEL_37;
      }

LABEL_27:
      LODWORD(v14) = 2 * v14;
      goto LABEL_28;
    }
  }

LABEL_37:
  v19 = v3[5];
  v3 += 5;
  v18 = v19;
  if (!v19)
  {
    return result;
  }

  v20 = *(v18 - 4);
  if (v20)
  {
    v21 = 0;
    v22 = 8 * v20;
    v23 = v18 - 8;
    do
    {
      v24 = *(v23 + v22);
      if ((v24 + 1) >= 2 && *(v24 + 24) == a2)
      {
        *(v23 + v22) = 0;
        result = WTF::RefCounted<WebKit::WebExtensionContextProxy>::deref((v24 + 16), a2);
        *(v23 + v22) = -1;
        ++v21;
      }

      v22 -= 8;
    }

    while (v22);
    v18 = *v3;
    if (v21)
    {
      v25 = *(v18 - 12) - v21;
      *(v18 - 16) += v21;
      *(v18 - 12) = v25;
    }

    else if (!v18)
    {
      return result;
    }
  }

  v11 = *(v18 - 12);
  v26 = *(v18 - 4);
  if (6 * v11 < v26 && v26 >= 9)
  {
    if (v11 <= 1)
    {
LABEL_74:
      v29 = 1;
      goto LABEL_56;
    }

    v28 = __clz(v11 - 1);
    if (v28)
    {
      v29 = (1 << -v28);
      if (v11 > 0x400)
      {
        if (v29 > 2 * v11)
        {
          goto LABEL_58;
        }

        goto LABEL_57;
      }

LABEL_56:
      if (3 * v29 > 4 * v11)
      {
LABEL_58:
        if (v29 > 0x400)
        {
          v30 = 0.416666667;
        }

        else
        {
          v30 = 0.604166667;
        }

        if (v29 * v30 <= v11)
        {
          LODWORD(v29) = 2 * v29;
        }

        if (v29 <= 8)
        {
          v31 = 8;
        }

        else
        {
          v31 = v29;
        }

        return WTF::HashTable<WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>,WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>>,WTF::FastMalloc>::rehash(v3, v31, 0);
      }

LABEL_57:
      LODWORD(v29) = 2 * v29;
      goto LABEL_58;
    }

LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  return result;
}

uint64_t WebKit::WebExtensionControllerProxy::extensionContext@<X0>(WebKit::WebExtensionControllerProxy *this@<X0>, const WTF::StringImpl **a2@<X1>, void *a3@<X8>)
{
  result = WTF::HashTable<WTF::Ref<WTF::SingleThreadWeakPtrImpl,WTF::RawPtrTraits<WTF::SingleThreadWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::SingleThreadWeakPtrImpl>>,WTF::Ref<WTF::SingleThreadWeakPtrImpl,WTF::RawPtrTraits<WTF::SingleThreadWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::SingleThreadWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::SingleThreadWeakPtrImpl,WTF::RawPtrTraits<WTF::SingleThreadWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::SingleThreadWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::SingleThreadWeakPtrImpl,WTF::RawPtrTraits<WTF::SingleThreadWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::SingleThreadWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::SingleThreadWeakPtrImpl,WTF::RawPtrTraits<WTF::SingleThreadWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::SingleThreadWeakPtrImpl>>>,WTF::FastMalloc>::begin(this + 5);
  v8 = result;
  v10 = v9;
  v11 = *(this + 5);
  if (v11)
  {
    v12 = v11 + 8 * *(v11 - 4);
  }

  else
  {
    v12 = 0;
  }

  if (v12 == result)
  {
LABEL_9:
    v13 = 0;
  }

  else
  {
    while (1)
    {
      result = WTF::equal(*(*v8 + 88), *a2, v7);
      if (result)
      {
        break;
      }

      do
      {
        v8 += 8;
      }

      while (v8 != v10 && (*v8 + 1) <= 1);
      if (v8 == v12)
      {
        goto LABEL_9;
      }
    }

    v13 = *v8;
    ++*(*v8 + 16);
  }

  *a3 = v13;
  return result;
}

WTF::StringImpl *WebKit::WebExtensionControllerProxy::extensionContext@<X0>(WebKit::WebExtensionControllerProxy *this@<X0>, const WTF::URL *a2@<X1>, WTF **a3@<X8>)
{
  WTF::URL::protocolHostAndPort(&v9, a2);
  v6 = WTF::HashMap<WTF::String,WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,WTF::String>(this + 6, &v9, v5);
  if (v6)
  {
    ++*(v6 + 4);
  }

  *a3 = v6;
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

uint64_t WebKit::WebExtensionControllerProxy::extensionContext@<X0>(WebKit::WebExtensionControllerProxy *this@<X0>, WebKit::WebFrame *a2@<X1>, WebCore::DOMWrapperWorld *a3@<X2>, WTF **a4@<X8>)
{
  if (*(a3 + 12))
  {
    result = *(a3 + 5);
    if (!result || (result = WTF::StringImpl::startsWith(), (result & 1) == 0))
    {
      *a4 = 0;
      return result;
    }

    v9 = *(a3 + 5);
    if (v9)
    {
      WTF::StringImpl::substring(v9);
    }

    else
    {
      v10[0] = 0;
    }

    WebKit::WebExtensionControllerProxy::extensionContext(this, v10, a4);
  }

  else
  {
    WebKit::WebFrame::url(a2, v10);
    WebKit::WebExtensionControllerProxy::extensionContext(this, v10, a4);
  }

  result = v10[0];
  v10[0] = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v6);
    }
  }

  return result;
}

JSValueRef WebKit::JSWebExtensionWrapper::wrap(JSContextRef ctx, void *a2)
{
  if (a2)
  {
    GlobalContext = JSContextGetGlobalContext(ctx);
    v5 = GlobalContext;
    if ((byte_1ED642BAA & 1) == 0)
    {
      qword_1ED642BC0 = 0;
      byte_1ED642BAA = 1;
    }

    if (GlobalContext == -1 || !GlobalContext)
    {
      __break(0xC471u);
      JUMPOUT(0x19E193BFCLL);
    }

    v6 = qword_1ED642BC0;
    if (!qword_1ED642BC0)
    {
      WTF::HashTable<OpaqueJSContext *,WTF::KeyValuePair<OpaqueJSContext *,OpaqueJSWeakObjectMap *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<OpaqueJSContext *,OpaqueJSWeakObjectMap *>>,WTF::DefaultHash<OpaqueJSContext *>,WTF::HashMap<OpaqueJSContext *,OpaqueJSWeakObjectMap *,WTF::DefaultHash<OpaqueJSContext *>,WTF::HashTraits<OpaqueJSContext *>,WTF::HashTraits<OpaqueJSWeakObjectMap *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<OpaqueJSContext *>,WTF::FastMalloc>::expand(0);
      v6 = qword_1ED642BC0;
    }

    v7 = *(v6 - 8);
    v8 = (v5 + ~(v5 << 32)) ^ ((v5 + ~(v5 << 32)) >> 22);
    v9 = 9 * ((v8 + ~(v8 << 13)) ^ ((v8 + ~(v8 << 13)) >> 8));
    v10 = (v9 ^ (v9 >> 15)) + ~((v9 ^ (v9 >> 15)) << 27);
    v11 = v7 & ((v10 >> 31) ^ v10);
    v12 = (v6 + 16 * v11);
    v13 = *v12;
    if (*v12)
    {
      v14 = 0;
      v15 = 1;
      while (v13 != v5)
      {
        if (v13 == -1)
        {
          v14 = v12;
        }

        v11 = (v11 + v15) & v7;
        v12 = (v6 + 16 * v11);
        v13 = *v12;
        ++v15;
        if (!*v12)
        {
          if (v14)
          {
            *v14 = 0;
            v14[1] = 0;
            --*(v6 - 16);
            v12 = v14;
          }

          goto LABEL_16;
        }
      }
    }

    else
    {
LABEL_16:
      *v12 = v5;
      v12[1] = JSWeakObjectMapCreate();
      v16 = qword_1ED642BC0;
      if (qword_1ED642BC0)
      {
        v17 = *(qword_1ED642BC0 - 12) + 1;
      }

      else
      {
        v17 = 1;
      }

      *(qword_1ED642BC0 - 12) = v17;
      v18 = (*(v16 - 16) + v17);
      v19 = *(v16 - 4);
      if (v19 > 0x400)
      {
        if (v19 > 2 * v18)
        {
          goto LABEL_20;
        }
      }

      else if (3 * v19 > 4 * v18)
      {
        goto LABEL_20;
      }

      WTF::HashTable<OpaqueJSContext *,WTF::KeyValuePair<OpaqueJSContext *,OpaqueJSWeakObjectMap *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<OpaqueJSContext *,OpaqueJSWeakObjectMap *>>,WTF::DefaultHash<OpaqueJSContext *>,WTF::HashMap<OpaqueJSContext *,OpaqueJSWeakObjectMap *,WTF::DefaultHash<OpaqueJSContext *>,WTF::HashTraits<OpaqueJSContext *>,WTF::HashTraits<OpaqueJSWeakObjectMap *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<OpaqueJSContext *>,WTF::FastMalloc>::expand(v12);
    }

LABEL_20:
    v20 = JSWeakObjectMapGet();
    if (v20)
    {
      v22 = v20;
      if (JSObjectGetPrivate(v20))
      {
        return v22;
      }

      JSWeakObjectMapRemove();
    }

    v21 = (*(*a2 + 16))(a2);
    v22 = JSObjectMake(ctx, v21, a2);
    JSWeakObjectMapSet();
    return v22;
  }

  return JSValueMakeNull(ctx);
}

_DWORD *WebKit::JSWebExtensionWrapper::initialize(WebKit::JSWebExtensionWrapper *this, JSObjectRef object, OpaqueJSValue *a3)
{
  result = JSObjectGetPrivate(object);
  if (result)
  {
    ++result[2];
  }

  return result;
}

uint64_t WebKit::JSWebExtensionWrapper::finalize(WebKit::JSWebExtensionWrapper *this, OpaqueJSValue *a2)
{
  result = JSObjectGetPrivate(this);
  if (result)
  {
    v4 = result;
    result = JSObjectSetPrivate(this, 0);
    if (v4[2] == 1)
    {
      v5 = *(*v4 + 8);

      return v5(v4);
    }

    else
    {
      --v4[2];
    }
  }

  return result;
}

void WebKit::toWebPage(WebKit *this@<X0>, uint64_t *a2@<X8>)
{
  GlobalContext = JSContextGetGlobalContext(this);
  WebKit::WebFrame::frameForContext(GlobalContext, v5, &v10);
  v6 = v10;
  if (v10)
  {
    v7 = WebKit::WebFrame::page(v10);
    v8 = v7;
    if (v7)
    {
      CFRetain(*(v7 + 8));
    }

    *a2 = v8;
    v9 = *(v6 + 1);

    CFRelease(v9);
  }

  else
  {
    *a2 = 0;
  }
}

void WebKit::BlobRegistryProxy::registerInternalFileBlobURL(uint64_t a1, uint64_t *a2, WebCore::BlobDataFileReference **a3, WTF **a4, uint64_t *a5)
{
  v29 = 0;
  v9 = *WebCore::BlobDataFileReference::path(*a3);
  if (v9)
  {
    if (*(v9 + 4))
    {
      WebCore::BlobDataFileReference::path(*a3);
      WebKit::SandboxExtension::createHandle(0, &v27);
      if (v28 == 1)
      {
        v10 = v27;
        v27 = 0;
        v29 = v10;
        WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v27);
      }
    }
  }

  v11 = WebCore::BlobDataFileReference::path(*a3);
  if (WTF::equal(*a4, *v11, v12))
  {
    v14 = MEMORY[0x1E696EBA0];
  }

  else
  {
    v14 = WebCore::BlobDataFileReference::path(*a3);
  }

  v15 = *v14;
  if (*v14)
  {
    atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed);
  }

  v26 = v15;
  {
    v16 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v25 = WebKit::WebProcess::operator new(0x370, v13);
    v16 = WebKit::WebProcess::WebProcess(v25);
    WebKit::WebProcess::singleton(void)::process = v16;
  }

  v17 = *(WebKit::WebProcess::ensureNetworkProcessConnection(v16) + 24);
  v19 = IPC::Encoder::operator new(0x238, v18);
  *v19 = 474;
  *(v19 + 68) = 0;
  *(v19 + 70) = 0;
  *(v19 + 69) = 0;
  *(v19 + 2) = 0;
  *(v19 + 3) = 0;
  *(v19 + 1) = 0;
  IPC::Encoder::encodeHeader(v19);
  v27 = v19;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v19, a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v19, a4);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v19, &v26);
  IPC::ArgumentCoder<WebKit::SandboxExtensionHandle,void>::encode(v19, &v29);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v19, a5);
  IPC::Connection::sendMessageImpl(v17, &v27, 0, 0);
  v21 = v27;
  v27 = 0;
  if (v21)
  {
    IPC::Encoder::~Encoder(v21, v20);
    bmalloc::api::tzoneFree(v23, v24);
  }

  v22 = v26;
  v26 = 0;
  if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v22, v20);
  }

  WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v29);
}

IPC::Encoder *WebKit::BlobRegistryProxy::registerInternalBlobURL(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4)
{
  {
    v7 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v18 = WebKit::WebProcess::operator new(0x370, a2);
    v7 = WebKit::WebProcess::WebProcess(v18);
    WebKit::WebProcess::singleton(void)::process = v7;
  }

  v8 = *(WebKit::WebProcess::ensureNetworkProcessConnection(v7) + 24);
  v10 = IPC::Encoder::operator new(0x238, v9);
  *v10 = 471;
  *(v10 + 68) = 0;
  *(v10 + 70) = 0;
  *(v10 + 69) = 0;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 1) = 0;
  IPC::Encoder::encodeHeader(v10);
  v19 = v10;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v10, a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v10, *(a3 + 12));
  v11 = *(a3 + 12);
  if (v11)
  {
    v12 = *a3;
    v13 = 48 * v11;
    do
    {
      v20 = *(v12 + 40);
      IPC::Encoder::operator<<<BOOL>(v10, &v20);
      IPC::ArgumentCoder<mpark::variant<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::URL>,void>::encode<IPC::Encoder,mpark::variant<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::URL> const&>(v10, v12, v20);
      v12 += 48;
      v13 -= 48;
    }

    while (v13);
  }

  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v10, a4);
  IPC::Connection::sendMessageImpl(v8, &v19, 0, 0);
  result = v19;
  v19 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v14);
    return bmalloc::api::tzoneFree(v16, v17);
  }

  return result;
}

IPC::Encoder *WebKit::BlobRegistryProxy::registerBlobURL(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  {
    v9 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v17 = WebKit::WebProcess::operator new(0x370, a2);
    v9 = WebKit::WebProcess::WebProcess(v17);
    WebKit::WebProcess::singleton(void)::process = v9;
  }

  v10 = *(WebKit::WebProcess::ensureNetworkProcessConnection(v9) + 24);
  v12 = IPC::Encoder::operator new(0x238, v11);
  *v12 = 469;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = 0;
  IPC::Encoder::encodeHeader(v12);
  v18 = v12;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v12, a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v12, a3);
  IPC::ArgumentCoder<WebCore::PolicyContainer,void>::encode(v12, a4);
  IPC::ArgumentCoder<std::optional<WebCore::SecurityOriginData>,void>::encode<IPC::Encoder,std::optional<WebCore::SecurityOriginData> const&>(v12, a5);
  IPC::Connection::sendMessageImpl(v10, &v18, 0, 0);
  result = v18;
  v18 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v13);
    return bmalloc::api::tzoneFree(v15, v16);
  }

  return result;
}

IPC::Encoder *WebKit::BlobRegistryProxy::registerInternalBlobURLOptionallyFileBacked(uint64_t a1, void *a2, uint64_t *a3, WebCore::BlobDataFileReference **a4, uint64_t *a5)
{
  {
    v9 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v18 = WebKit::WebProcess::operator new(0x370, a2);
    v9 = WebKit::WebProcess::WebProcess(v18);
    WebKit::WebProcess::singleton(void)::process = v9;
  }

  v10 = *(WebKit::WebProcess::ensureNetworkProcessConnection(v9) + 24);
  v11 = WebCore::BlobDataFileReference::path(*a4);
  v13 = IPC::Encoder::operator new(0x238, v12);
  *v13 = 473;
  *(v13 + 68) = 0;
  *(v13 + 70) = 0;
  *(v13 + 69) = 0;
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  *(v13 + 1) = 0;
  IPC::Encoder::encodeHeader(v13);
  v19 = v13;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v13, a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v13, a3);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v13, v11);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v13, a5);
  IPC::Connection::sendMessageImpl(v10, &v19, 0, 0);
  result = v19;
  v19 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v14);
    return bmalloc::api::tzoneFree(v16, v17);
  }

  return result;
}

IPC::Encoder *WebKit::BlobRegistryProxy::unregisterBlobURL(uint64_t a1, void *a2, uint64_t a3)
{
  {
    v5 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v13 = WebKit::WebProcess::operator new(0x370, a2);
    v5 = WebKit::WebProcess::WebProcess(v13);
    WebKit::WebProcess::singleton(void)::process = v5;
  }

  v6 = *(WebKit::WebProcess::ensureNetworkProcessConnection(v5) + 24);
  v8 = IPC::Encoder::operator new(0x238, v7);
  *v8 = 497;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = 0;
  IPC::Encoder::encodeHeader(v8);
  v14 = v8;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v8, a2);
  IPC::ArgumentCoder<std::optional<WebCore::SecurityOriginData>,void>::encode<IPC::Encoder,std::optional<WebCore::SecurityOriginData> const&>(v8, a3);
  IPC::Connection::sendMessageImpl(v6, &v14, 0, 0);
  result = v14;
  v14 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v9);
    return bmalloc::api::tzoneFree(v11, v12);
  }

  return result;
}

IPC::Encoder *WebKit::BlobRegistryProxy::registerInternalBlobURLForSlice(WebKit::BlobRegistryProxy *this, const WTF::URL *a2, const WTF::URL *a3, uint64_t a4, uint64_t a5, const WTF::String *a6)
{
  {
    v11 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v19 = WebKit::WebProcess::operator new(0x370, a2);
    v11 = WebKit::WebProcess::WebProcess(v19);
    WebKit::WebProcess::singleton(void)::process = v11;
  }

  v12 = *(WebKit::WebProcess::ensureNetworkProcessConnection(v11) + 24);
  v14 = IPC::Encoder::operator new(0x238, v13);
  *v14 = 472;
  *(v14 + 68) = 0;
  *(v14 + 70) = 0;
  *(v14 + 69) = 0;
  *(v14 + 2) = 0;
  *(v14 + 3) = 0;
  *(v14 + 1) = 0;
  IPC::Encoder::encodeHeader(v14);
  v20 = v14;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v14, a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v14, a3);
  IPC::ArgumentCoder<API::Int64,void>::encode(v14, a4);
  IPC::ArgumentCoder<API::Int64,void>::encode(v14, a5);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v14, a6);
  IPC::Connection::sendMessageImpl(v12, &v20, 0, 0);
  result = v20;
  v20 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v15);
    return bmalloc::api::tzoneFree(v17, v18);
  }

  return result;
}

IPC::Encoder *WebKit::BlobRegistryProxy::registerBlobURLHandle(WebKit::WebProcess *a1, void *a2, uint64_t a3)
{
  v5 = WebKit::WebProcess::singleton(a1, a2);
  v6 = *(WebKit::WebProcess::ensureNetworkProcessConnection(v5) + 24);
  v8[0] = a2;
  v8[1] = a3;
  return IPC::Connection::send<Messages::NetworkConnectionToWebProcess::RegisterBlobURLHandle>(v6, v8);
}

IPC::Encoder *IPC::Connection::send<Messages::NetworkConnectionToWebProcess::RegisterBlobURLHandle>(uint64_t *a1, void *a2)
{
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 470;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  Messages::NetworkConnectionToWebProcess::RegisterBlobURLHandle::encode<IPC::Encoder>(a2, v4);
  IPC::Connection::sendMessageImpl(a1, &v9, 0, 0);
  result = v9;
  v9 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

IPC::Encoder *WebKit::BlobRegistryProxy::unregisterBlobURLHandle(WebKit::WebProcess *a1, void *a2, uint64_t a3)
{
  v5 = WebKit::WebProcess::singleton(a1, a2);
  v6 = *(WebKit::WebProcess::ensureNetworkProcessConnection(v5) + 24);
  v8[0] = a2;
  v8[1] = a3;
  return IPC::Connection::send<Messages::NetworkConnectionToWebProcess::UnregisterBlobURLHandle>(v6, v8);
}

IPC::Encoder *IPC::Connection::send<Messages::NetworkConnectionToWebProcess::UnregisterBlobURLHandle>(uint64_t *a1, void *a2)
{
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 498;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  Messages::NetworkConnectionToWebProcess::RegisterBlobURLHandle::encode<IPC::Encoder>(a2, v4);
  IPC::Connection::sendMessageImpl(a1, &v9, 0, 0);
  result = v9;
  v9 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

IPC::Encoder *WebKit::BlobRegistryProxy::blobType@<X0>(const WTF::URL *a1@<X1>, unsigned __int8 **a2@<X8>)
{
  {
    v5 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v24 = WebKit::WebProcess::operator new(0x370, a1);
    v5 = WebKit::WebProcess::WebProcess(v24);
    WebKit::WebProcess::singleton(void)::process = v5;
  }

  v6 = *(WebKit::WebProcess::ensureNetworkProcessConnection(v5) + 24);
  IPC::Connection::createSyncMessageEncoder(0xF9E, 0, v29);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v29[0], a1);
  v7 = IPC::Connection::sendSyncMessage(v6, v29[1], v29, 0, &v27, INFINITY);
  if (v28)
  {
    if (v28 != 1)
    {
      mpark::throw_bad_variant_access(v7);
    }

    v9 = v27;
    v10 = 1;
    goto LABEL_15;
  }

  v9 = v27;
  v27 = 0;
  if (*(v9 + 50) == 3194)
  {
    v11 = 11;
LABEL_11:
    IPC::Decoder::~Decoder(v9);
    bmalloc::api::tzoneFree(v12, v13);
    v10 = 1;
    v9 = v11;
    goto LABEL_12;
  }

  LOBYTE(v25) = 0;
  v26 = 0;
  IPC::Decoder::operator>><std::tuple<WTF::String>>(v9, &v25);
  if (v26 != 1)
  {
    v11 = 14;
    goto LABEL_11;
  }

  v10 = 0;
  v6 = v25;
LABEL_12:
  if (!v28)
  {
    v14 = v27;
    v27 = 0;
    if (v14)
    {
      IPC::Decoder::~Decoder(v14);
      bmalloc::api::tzoneFree(v20, v21);
    }
  }

LABEL_15:
  result = v29[0];
  v29[0] = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v8);
    result = bmalloc::api::tzoneFree(v18, v19);
    if (v10)
    {
      goto LABEL_17;
    }
  }

  else if (v10)
  {
LABEL_17:
    v16 = *MEMORY[0x1E696EBA8];
    if (*MEMORY[0x1E696EBA8])
    {
      atomic_fetch_add_explicit(v16, 2u, memory_order_relaxed);
      v17 = v6;
      v6 = v16;
      goto LABEL_22;
    }

    result = v6;
    goto LABEL_26;
  }

  result = 0;
  v17 = 0;
  if (v6)
  {
LABEL_22:
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
    *a2 = v6;
    if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(v6, v8);
    }

    if (v10)
    {
      return result;
    }

    goto LABEL_27;
  }

LABEL_26:
  *a2 = 0;
  v17 = result;
  if (v10)
  {
    return result;
  }

LABEL_27:
  if (!v17 || atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) != 2)
  {
    if (!v9)
    {
      return result;
    }

LABEL_32:
    IPC::Decoder::~Decoder(v9);
    return bmalloc::api::tzoneFree(v22, v23);
  }

  result = WTF::StringImpl::destroy(v17, v8);
  if (v9)
  {
    goto LABEL_32;
  }

  return result;
}

unsigned __int8 *WebKit::BlobRegistryProxy::blobSize(WebKit::BlobRegistryProxy *this, const WTF::URL *a2)
{
  {
    v3 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v22 = WebKit::WebProcess::operator new(0x370, a2);
    v3 = WebKit::WebProcess::WebProcess(v22);
    WebKit::WebProcess::singleton(void)::process = v3;
  }

  v4 = *(WebKit::WebProcess::ensureNetworkProcessConnection(v3) + 24);
  IPC::Connection::createSyncMessageEncoder(0xF9D, 0, v25);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v25[0], a2);
  v5 = IPC::Connection::sendSyncMessage(v4, v25[1], v25, 0, &v23, INFINITY);
  if (v24)
  {
    if (v24 != 1)
    {
      mpark::throw_bad_variant_access(v5);
    }

    v7 = v23;
    v8 = 1;
    goto LABEL_15;
  }

  v7 = v23;
  v23 = 0;
  if (*(v7 + 50) == 3194)
  {
    v9 = 11;
LABEL_11:
    IPC::Decoder::~Decoder(v7);
    bmalloc::api::tzoneFree(v11, v12);
    v8 = 1;
    v7 = v9;
    goto LABEL_12;
  }

  v10 = IPC::Decoder::decode<std::tuple<unsigned long long>>(v7);
  if (!v6)
  {
    v9 = 14;
    goto LABEL_11;
  }

  v4 = v10;
  v8 = 0;
LABEL_12:
  if (!v24)
  {
    v13 = v23;
    v23 = 0;
    if (v13)
    {
      IPC::Decoder::~Decoder(v13);
      bmalloc::api::tzoneFree(v18, v19);
    }
  }

LABEL_15:
  v14 = v25[0];
  v25[0] = 0;
  if (v14)
  {
    IPC::Encoder::~Encoder(v14, v6);
    bmalloc::api::tzoneFree(v15, v16);
    if (v8)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (v7)
  {
    IPC::Decoder::~Decoder(v7);
    bmalloc::api::tzoneFree(v20, v21);
  }

  return v4;
}

uint64_t WebKit::BlobRegistryProxy::writeBlobsToTemporaryFilesForIndexedDB(uint64_t a1, void *a2, uint64_t *a3)
{
  {
    v5 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v9 = WebKit::WebProcess::operator new(0x370, a2);
    v5 = WebKit::WebProcess::WebProcess(v9);
    WebKit::WebProcess::singleton(void)::process = v5;
  }

  v6 = WebKit::WebProcess::ensureNetworkProcessConnection(v5);
  ++*(v6 + 20);
  v7 = *(v6 + 24);
  v10 = a2;
  result = IPC::Connection::sendWithAsyncReply<Messages::NetworkConnectionToWebProcess::WriteBlobsToTemporaryFilesForIndexedDB,WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>(v7, &v10, a3, 0, 0);
  if (*(v6 + 20) == 1)
  {
    return (*(*v6 + 24))(v6);
  }

  --*(v6 + 20);
  return result;
}

_DWORD *WebKit::DigitalCredentialsCoordinator::deref(_DWORD *this)
{
  if (this[2] == 1)
  {
    return (*(*this + 8))();
  }

  --this[2];
  return this;
}

uint64_t non-virtual thunk toWebKit::DigitalCredentialsCoordinator::deref(uint64_t this)
{
  if (*(this - 8) == 1)
  {
    return (*(*(this - 16) + 8))();
  }

  --*(this - 8);
  return this;
}

void WebKit::MediaKeySystemPermissionRequestManager::~MediaKeySystemPermissionRequestManager(WebKit::MediaKeySystemPermissionRequestManager *this, void *a2)
{
  WebKit::MediaKeySystemPermissionRequestManager::~MediaKeySystemPermissionRequestManager(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

{
  *this = &unk_1F1122DF8;
  v3 = *(this + 4);
  if (v3)
  {
    WTF::HashTable<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>,WTF::KeyValuePair<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>,WTF::Vector<WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>,WTF::Vector<WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>>,WTF::HashMap<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>,WTF::Vector<WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>>,WTF::HashTraits<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>>,WTF::HashTraits<WTF::Vector<WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  v4 = *(this + 3);
  if (v4)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v4, a2);
  }

  v5 = *(this + 2);
  *(this + 2) = 0;
  if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5);
    WTF::fastFree(v5, a2);
  }

  WTF::WeakPtrFactory<WebKit::SessionSet,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, a2);
}

void WebKit::BlobRegistryProxy::~BlobRegistryProxy(WebKit::BlobRegistryProxy *this)
{
  WebCore::BlobRegistry::~BlobRegistry(this);

  JUMPOUT(0x19EB14CF0);
}

uint64_t WTF::HashTable<WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>,WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>>,WTF::FastMalloc>::deallocateTable(uint64_t *a1, void *a2)
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
          WTF::RefCounted<WebKit::WebExtensionContextProxy>::deref((v5 + 16), a2);
        }
      }

      ++v4;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 2), a2);
}

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = a1;
    do
    {
      v5 = *v4;
      if (*v4 != -1)
      {
        v6 = *(v4 + 8);
        *(v4 + 8) = 0;
        if (v6)
        {
          WTF::RefCounted<WebKit::WebExtensionContextProxy>::deref((v6 + 16), a2);
          v5 = *v4;
        }

        *v4 = 0;
        if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v5, a2);
        }
      }

      v4 += 16;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

_DWORD *WTF::HashTable<OpaqueJSContext *,WTF::KeyValuePair<OpaqueJSContext *,OpaqueJSWeakObjectMap *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<OpaqueJSContext *,OpaqueJSWeakObjectMap *>>,WTF::DefaultHash<OpaqueJSContext *>,WTF::HashMap<OpaqueJSContext *,OpaqueJSWeakObjectMap *,WTF::DefaultHash<OpaqueJSContext *>,WTF::HashTraits<OpaqueJSContext *>,WTF::HashTraits<OpaqueJSWeakObjectMap *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<OpaqueJSContext *>,WTF::FastMalloc>::expand(void *a1)
{
  if (qword_1ED642BC0 && (v2 = *(qword_1ED642BC0 - 4)) != 0)
  {
    v3 = v2 << (6 * *(qword_1ED642BC0 - 12) >= (2 * v2));
  }

  else
  {
    v3 = 8;
  }

  return WTF::HashTable<OpaqueJSContext *,WTF::KeyValuePair<OpaqueJSContext *,OpaqueJSWeakObjectMap *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<OpaqueJSContext *,OpaqueJSWeakObjectMap *>>,WTF::DefaultHash<OpaqueJSContext *>,WTF::HashMap<OpaqueJSContext *,OpaqueJSWeakObjectMap *,WTF::DefaultHash<OpaqueJSContext *>,WTF::HashTraits<OpaqueJSContext *>,WTF::HashTraits<OpaqueJSWeakObjectMap *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<OpaqueJSContext *>,WTF::FastMalloc>::rehash(v3, a1);
}

_DWORD *WTF::HashTable<OpaqueJSContext *,WTF::KeyValuePair<OpaqueJSContext *,OpaqueJSWeakObjectMap *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<OpaqueJSContext *,OpaqueJSWeakObjectMap *>>,WTF::DefaultHash<OpaqueJSContext *>,WTF::HashMap<OpaqueJSContext *,OpaqueJSWeakObjectMap *,WTF::DefaultHash<OpaqueJSContext *>,WTF::HashTraits<OpaqueJSContext *>,WTF::HashTraits<OpaqueJSWeakObjectMap *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<OpaqueJSContext *>,WTF::FastMalloc>::rehash(unsigned int a1, void *a2)
{
  v4 = qword_1ED642BC0;
  if (qword_1ED642BC0)
  {
    v5 = *(qword_1ED642BC0 - 4);
    v6 = *(qword_1ED642BC0 - 12);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = WTF::fastZeroedMalloc((16 * a1 + 16));
  v9 = v7 + 4;
  qword_1ED642BC0 = (v7 + 4);
  v10 = a1 - 1;
  v7[2] = a1 - 1;
  v7[3] = a1;
  *v7 = 0;
  v7[1] = v6;
  if (v5)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = (v4 + 16 * v11);
      if ((*v13 + 1) >= 2)
      {
        v14 = (~(*v13 << 32) + *v13) ^ ((~(*v13 << 32) + *v13) >> 22);
        v15 = 9 * ((v14 + ~(v14 << 13)) ^ ((v14 + ~(v14 << 13)) >> 8));
        v16 = (v15 ^ (v15 >> 15)) + ~((v15 ^ (v15 >> 15)) << 27);
        v17 = v10 & ((v16 >> 31) ^ v16);
        v18 = 1;
        do
        {
          v19 = v17;
          v20 = *&v9[4 * v17];
          v17 = (v17 + v18++) & v10;
        }

        while (v20);
        *&v9[4 * v19] = *v13;
        if (v13 == a2)
        {
          v12 = &v9[4 * v19];
        }
      }

      ++v11;
    }

    while (v11 != v5);
    goto LABEL_11;
  }

  v12 = 0;
  result = 0;
  if (v4)
  {
LABEL_11:
    WTF::fastFree((v4 - 16), v8);
    return v12;
  }

  return result;
}

void WebKit::cacheMapDestroyed(uint64_t a1, uint64_t a2)
{
  if (byte_1ED642BAA)
  {
    v2 = qword_1ED642BC0;
    if (qword_1ED642BC0)
    {
      if (a2 == -1 || !a2)
      {
        __break(0xC471u);
        JUMPOUT(0x19E194FF0);
      }

      v4 = *(qword_1ED642BC0 - 8);
      v5 = WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>::hash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2) & v4;
      v6 = *(v2 + 16 * v5);
      if (v6 != a2)
      {
        v7 = 1;
        while (v6)
        {
          v5 = (v5 + v7) & v4;
          v6 = *(v2 + 16 * v5);
          ++v7;
          if (v6 == a2)
          {
            goto LABEL_11;
          }
        }

        v5 = *(v2 - 4);
      }

LABEL_11:
      if (v5 != *(v2 - 4))
      {
        *(v2 + 16 * v5) = -1;
        v8 = qword_1ED642BC0;
        v9 = vadd_s32(*(qword_1ED642BC0 - 16), 0xFFFFFFFF00000001);
        *(qword_1ED642BC0 - 16) = v9;
        v10 = *(v8 - 4);
        if (6 * v9.i32[1] < v10 && v10 >= 9)
        {

          WTF::HashTable<OpaqueJSContext *,WTF::KeyValuePair<OpaqueJSContext *,OpaqueJSWeakObjectMap *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<OpaqueJSContext *,OpaqueJSWeakObjectMap *>>,WTF::DefaultHash<OpaqueJSContext *>,WTF::HashMap<OpaqueJSContext *,OpaqueJSWeakObjectMap *,WTF::DefaultHash<OpaqueJSContext *>,WTF::HashTraits<OpaqueJSContext *>,WTF::HashTraits<OpaqueJSWeakObjectMap *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<OpaqueJSContext *>,WTF::FastMalloc>::rehash(v10 >> 1, 0);
        }
      }
    }
  }

  else
  {
    qword_1ED642BC0 = 0;
    byte_1ED642BAA = 1;
  }
}

uint64_t WTF::HashTable<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>,WTF::KeyValuePair<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>,WTF::Vector<WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>,WTF::Vector<WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>>,WTF::HashMap<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>,WTF::Vector<WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>>,WTF::HashTraits<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>>,WTF::HashTraits<WTF::Vector<WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = a1 + 8;
    do
    {
      if (*(v4 - 8) != -1)
      {
        WTF::Vector<WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v4, a2);
        v5 = *(v4 - 8);
        *(v4 - 8) = 0;
        if (v5)
        {
          if (*(v5 + 7) == 2)
          {
            WebCore::Node::removedLastRef(v5);
          }

          else
          {
            *(v5 + 7) -= 2;
          }
        }
      }

      v4 += 24;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

void *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebDatabaseProvider,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebDatabaseProvider,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebDatabaseProvider,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebDatabaseProvider,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(void *a1)
{
  if (qword_1ED642BB0 && (v2 = *(qword_1ED642BB0 - 4)) != 0)
  {
    v3 = v2 << (6 * *(qword_1ED642BB0 - 12) >= (2 * v2));
  }

  else
  {
    v3 = 8;
  }

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebDatabaseProvider,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebDatabaseProvider,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebDatabaseProvider,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebDatabaseProvider,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(v3, a1);
}

unsigned int *WTF::HashMapEnsureTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebDatabaseProvider,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebDatabaseProvider,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>::translate<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> const&,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebDatabaseProvider,WTF::DefaultWeakPtrImpl>>,WebKit::WebDatabaseProvider::getOrCreate(WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>)::$_0>(void *a1, uint64_t a2, uint64_t **a3)
{
  *a1 = a2;
  WebKit::WebDatabaseProvider::getOrCreate(WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>)::$_0::operator()(&v7, a3);
  v5 = v7;
  v7 = 0;
  result = a1[1];
  a1[1] = v5;
  if (result)
  {
    if (atomic_fetch_add(result, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result);
      WTF::fastFree(result, v4);
    }

    result = v7;
    v7 = 0;
    if (result && atomic_fetch_add(result, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result);

      return WTF::fastFree(result, v4);
    }
  }

  return result;
}

void *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebDatabaseProvider,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebDatabaseProvider,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebDatabaseProvider,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebDatabaseProvider,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(unsigned int a1, void *a2)
{
  v4 = qword_1ED642BB0;
  if (qword_1ED642BB0)
  {
    LODWORD(v5) = *(qword_1ED642BB0 - 4);
    v6 = *(qword_1ED642BB0 - 12);
  }

  else
  {
    LODWORD(v5) = 0;
    v6 = 0;
  }

  v7 = WTF::fastZeroedMalloc((16 * a1 + 16));
  qword_1ED642BB0 = (v7 + 4);
  v7[2] = a1 - 1;
  v7[3] = a1;
  *v7 = 0;
  v7[1] = v6;
  v9 = 0;
  if (v5)
  {
    v11 = v4;
    v5 = v5;
    do
    {
      if (*v11 != -1)
      {
        if (*v11)
        {
          v13 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebDatabaseProvider,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebDatabaseProvider,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebDatabaseProvider,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebDatabaseProvider,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::reinsert(v11, v8);
          v14 = v11[1];
          v11[1] = 0;
          if (v14 && atomic_fetch_add(v14, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v14);
            v15 = v13;
            WTF::fastFree(v14, v8);
            v13 = v15;
          }

          if (v11 == a2)
          {
            v9 = v13;
          }
        }

        else
        {
          v12 = v11[1];
          v11[1] = 0;
          if (v12)
          {
            if (atomic_fetch_add(v12, 0xFFFFFFFF) == 1)
            {
              atomic_store(1u, v12);
              WTF::fastFree(v12, v8);
            }
          }
        }
      }

      v11 += 2;
      --v5;
    }

    while (v5);
    goto LABEL_16;
  }

  result = 0;
  if (v4)
  {
LABEL_16:
    WTF::fastFree((v4 - 16), v8);
    return v9;
  }

  return result;
}

void *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebDatabaseProvider,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebDatabaseProvider,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebDatabaseProvider,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebDatabaseProvider,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::reinsert(void *a1, void *a2)
{
  if (qword_1ED642BB0)
  {
    v3 = *(qword_1ED642BB0 - 8);
  }

  else
  {
    v3 = 0;
  }

  v4 = *a1 + ~(*a1 << 32);
  v5 = (v4 ^ (v4 >> 22)) + ~((v4 ^ (v4 >> 22)) << 13);
  v6 = (9 * (v5 ^ (v5 >> 8))) ^ ((9 * (v5 ^ (v5 >> 8))) >> 15);
  v7 = v3 & (((v6 + ~(v6 << 27)) >> 31) ^ (v6 + ~(v6 << 27)));
  v8 = 1;
  do
  {
    v9 = v7;
    v10 = *(qword_1ED642BB0 + 16 * v7);
    v7 = (v7 + v8++) & v3;
  }

  while (v10);
  v11 = (qword_1ED642BB0 + 16 * v9);
  v12 = v11[1];
  v11[1] = 0;
  if (v12 && atomic_fetch_add(v12, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v12);
    WTF::fastFree(v12, a2);
  }

  *v11 = *a1;
  v13 = a1[1];
  a1[1] = 0;
  v11[1] = v13;
  return v11;
}

unsigned int *WebKit::WebDatabaseProvider::getOrCreate(WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>)::$_0::operator()(atomic_uint **a1, uint64_t **a2)
{
  v4 = WTF::fastMalloc(0x20);
  v5 = *a2[1];
  *(v4 + 8) = 1;
  *(v4 + 16) = 0;
  *(v4 + 24) = v5;
  *v4 = &unk_1F1122BD8;
  v6 = **a2;
  **a2 = v4;
  if (v6)
  {
    if (v6[2] == 1)
    {
      (*(*v6 + 8))(v6);
    }

    else
    {
      --v6[2];
    }
  }

  v7 = **a2;
  result = WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v7 + 16), v7);
  v9 = *(v7 + 16);
  atomic_fetch_add(v9, 1u);
  *a1 = v9;
  return result;
}

void *WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebDatabaseProvider,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebDatabaseProvider,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::remove(void *a1, void *a2)
{
  if (qword_1ED642BB0)
  {
    v2 = (qword_1ED642BB0 + 16 * *(qword_1ED642BB0 - 4));
    if (v2 == a1)
    {
      return a1;
    }
  }

  else
  {
    if (!a1)
    {
      return a1;
    }

    v2 = 0;
  }

  if (v2 != a1)
  {
    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebDatabaseProvider,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebDatabaseProvider,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebDatabaseProvider,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebDatabaseProvider,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(a1, a2);
  }

  return a1;
}

unsigned int *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebDatabaseProvider,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebDatabaseProvider,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebDatabaseProvider,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebDatabaseProvider,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(void *a1, void *a2)
{
  result = WTF::KeyValuePairHashTraits<WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebDatabaseProvider,WTF::DefaultWeakPtrImpl>>>::customDeleteBucket(a1, a2);
  v3 = qword_1ED642BB0;
  v4 = vadd_s32(*(qword_1ED642BB0 - 16), 0xFFFFFFFF00000001);
  *(qword_1ED642BB0 - 16) = v4;
  v5 = *(v3 - 4);
  if (6 * v4.i32[1] < v5 && v5 >= 9)
  {

    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebDatabaseProvider,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebDatabaseProvider,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebDatabaseProvider,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebDatabaseProvider,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(v5 >> 1, 0);
  }

  return result;
}

unsigned int *WTF::KeyValuePairHashTraits<WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebDatabaseProvider,WTF::DefaultWeakPtrImpl>>>::customDeleteBucket(void *a1, void *a2)
{
  result = a1[1];
  *a1 = -1;
  a1[1] = 0;
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

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebDatabaseProvider,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebDatabaseProvider,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebDatabaseProvider,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebDatabaseProvider,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebDatabaseProvider,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebDatabaseProvider,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1)
{
  if (!qword_1ED642BB0)
  {
    return 0;
  }

  result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebDatabaseProvider,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebDatabaseProvider,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebDatabaseProvider,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebDatabaseProvider,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebDatabaseProvider,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebDatabaseProvider,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if (!result)
  {
    if (qword_1ED642BB0)
    {
      return qword_1ED642BB0 + 16 * *(qword_1ED642BB0 - 4);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebDatabaseProvider,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebDatabaseProvider,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebDatabaseProvider,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebDatabaseProvider,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebDatabaseProvider,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebDatabaseProvider,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1)
{
  WTF::checkHashTableKey<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebDatabaseProvider,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebDatabaseProvider,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebDatabaseProvider,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebDatabaseProvider,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebDatabaseProvider,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebDatabaseProvider,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(*a1);
  v2 = qword_1ED642BB0;
  if (qword_1ED642BB0)
  {
    v3 = *(qword_1ED642BB0 - 8);
    v4 = WTF::ObjectIdentifierGenericBaseHash<unsigned long long>::hash(a1) & v3;
    v5 = *(v2 + 16 * v4);
    if (v5 == *a1)
    {
      return v2 + 16 * v4;
    }

    v7 = 1;
    while (v5)
    {
      v4 = (v4 + v7) & v3;
      v5 = *(v2 + 16 * v4);
      ++v7;
      if (v5 == *a1)
      {
        return v2 + 16 * v4;
      }
    }
  }

  return 0;
}

uint64_t WTF::checkHashTableKey<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebDatabaseProvider,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebDatabaseProvider,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebDatabaseProvider,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebDatabaseProvider,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebDatabaseProvider,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebDatabaseProvider,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::PageGroupIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t result)
{
  if (result == -1 || !result)
  {
    __break(0xC471u);
    JUMPOUT(0x19E1956F4);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::DigitalCredentialsCoordinator::showDigitalCredentialsPicker(WTF::Vector<mpark::variant<WebCore::MobileDocumentRequest,WebCore::OpenID4VPRequest>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WebCore::DigitalCredentialsRequestData const&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebCore::DigitalCredentialsResponseData,WebCore::ExceptionData> &&)> &&)::$_0,void,std::experimental::fundamentals_v3::expected<WebCore::DigitalCredentialsResponseData,WebCore::ExceptionData>>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1122EF8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::DigitalCredentialsCoordinator::showDigitalCredentialsPicker(WTF::Vector<mpark::variant<WebCore::MobileDocumentRequest,WebCore::OpenID4VPRequest>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WebCore::DigitalCredentialsRequestData const&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebCore::DigitalCredentialsResponseData,WebCore::ExceptionData> &&)> &&)::$_0,void,std::experimental::fundamentals_v3::expected<WebCore::DigitalCredentialsResponseData,WebCore::ExceptionData>>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1122EF8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::DigitalCredentialsCoordinator::showDigitalCredentialsPicker(WTF::Vector<mpark::variant<WebCore::MobileDocumentRequest,WebCore::OpenID4VPRequest>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WebCore::DigitalCredentialsRequestData const&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebCore::DigitalCredentialsResponseData,WebCore::ExceptionData> &&)> &&)::$_0,void,std::experimental::fundamentals_v3::expected<WebCore::DigitalCredentialsResponseData,WebCore::ExceptionData>>::call(uint64_t a1, uint64_t a2)
{
  WTF::Vector<mpark::variant<WebCore::MobileDocumentRequest,WebCore::OpenID4VPRequest>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity((*(a1 + 8) + 48), 0);
  v4 = *(a1 + 16);
  *(a1 + 16) = 0;
  (*(*v4 + 16))(v4, a2);
  v5 = *(*v4 + 8);

  return v5(v4);
}

uint64_t WTF::Vector<WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorDestructor<true,WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>>::destruct(*a1, (*a1 + 8 * v3));
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

_DWORD *WTF::VectorDestructor<true,WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>>::destruct(_DWORD *result, _DWORD **a2)
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
        if (result[8] == 1)
        {
          result = (*(*result + 24))(result);
        }

        else
        {
          --result[8];
        }
      }

      ++v3;
    }

    while (v3 != a2);
  }

  return result;
}

WebCore::Node **WTF::HashTable<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>,WTF::KeyValuePair<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>,WTF::Vector<WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>,WTF::Vector<WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>>,WTF::HashMap<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>,WTF::Vector<WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>>,WTF::HashTraits<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>>,WTF::HashTraits<WTF::Vector<WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t a2)
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

  return WTF::HashTable<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>,WTF::KeyValuePair<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>,WTF::Vector<WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>,WTF::Vector<WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>>,WTF::HashMap<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>,WTF::Vector<WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>>,WTF::HashTraits<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>>,WTF::HashTraits<WTF::Vector<WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

WebCore::Node **WTF::HashTable<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>,WTF::KeyValuePair<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>,WTF::Vector<WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>,WTF::Vector<WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>>,WTF::HashMap<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>,WTF::Vector<WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>>,WTF::HashTraits<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>>,WTF::HashTraits<WTF::Vector<WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t a3)
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
    do
    {
      v13 = v6 + 24 * v11;
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

          v18 = (v14 + ~(v14 << 32)) ^ ((v14 + ~(v14 << 32)) >> 22);
          v19 = 9 * ((v18 + ~(v18 << 13)) ^ ((v18 + ~(v18 << 13)) >> 8));
          v20 = (v19 ^ (v19 >> 15)) + ~((v19 ^ (v19 >> 15)) << 27);
          v21 = v17 & ((v20 >> 31) ^ v20);
          v22 = 1;
          do
          {
            v23 = (v16 + 24 * v21);
            v21 = (v21 + v22++) & v17;
          }

          while (*v23);
          WTF::Vector<WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((v23 + 1), v10);
          v24 = *v23;
          *v23 = 0;
          if (v24)
          {
            if (*(v24 + 7) == 2)
            {
              WebCore::Node::removedLastRef(v24);
            }

            else
            {
              *(v24 + 7) -= 2;
            }
          }

          v25 = *v13;
          *v13 = 0;
          v23[1] = 0;
          v23[2] = 0;
          *v23 = v25;
          WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt((v23 + 1), (v13 + 8));
          WTF::Vector<WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v13 + 8, v26);
          v27 = *v13;
          *v13 = 0;
          if (v27)
          {
            if (*(v27 + 7) == 2)
            {
              WebCore::Node::removedLastRef(v27);
            }

            else
            {
              *(v27 + 7) -= 2;
            }
          }

          if (v13 == a3)
          {
            v12 = v23;
          }
        }

        else
        {
          WTF::Vector<WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v13 + 8, v10);
          v15 = *v13;
          *v13 = 0;
          if (v15)
          {
            if (*(v15 + 7) == 2)
            {
              WebCore::Node::removedLastRef(v15);
            }

            else
            {
              *(v15 + 7) -= 2;
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

WebCore::Node *WTF::GenericHashTraits<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>>::assignToEmpty<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>,WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>> const&>(WebCore::Node **a1, WebCore::Node **a2)
{
  v3 = *a2;
  if (*a2)
  {
    *(v3 + 7) += 2;
  }

  result = *a1;
  *a1 = v3;
  if (result)
  {
    if (*(result + 7) == 2)
    {
      return WebCore::Node::removedLastRef(result);
    }

    else
    {
      *(result + 7) -= 2;
    }
  }

  return result;
}

uint64_t *WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::MediaKeySystemRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::MediaKeySystemRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::MediaKeySystemRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::take@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = (v3 + 16 * *(v3 - 4));
  }

  else
  {
    v4 = 0;
  }

  if (v4 == a2)
  {
    *a3 = 0;
    return a1;
  }

  v5 = a2[1];
  if (v5)
  {
    a2[1] = 0;
    v3 = *a1;
  }

  *a3 = v5;
  if (v3)
  {
    v6 = (v3 + 16 * *(v3 - 4));
    if (v6 == a2)
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

    v6 = 0;
  }

  if (v6 != a2)
  {
    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(a1, a2);
  }

  return a1;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::MediaKeySystemRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::MediaKeySystemRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::MediaKeySystemRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::MediaKeySystemRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::MediaKeySystemRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::MediaKeySystemRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::MediaKeySystemRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::MediaKeySystemRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::MediaKeySystemRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::MediaKeySystemRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::MediaKeySystemRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::MediaKeySystemRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::MediaKeySystemRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t *a2)
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
    JUMPOUT(0x19E195D14);
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

WebCore::Node **WTF::HashTable<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>,WTF::KeyValuePair<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>,WTF::Vector<WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>,WTF::Vector<WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>>,WTF::HashMap<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>,WTF::Vector<WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>>,WTF::HashTraits<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>>,WTF::HashTraits<WTF::Vector<WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>>,WTF::FastMalloc>::remove(uint64_t *a1, WebCore::Node **a2)
{
  v3 = *a2;
  *a2 = -1;
  if (v3)
  {
    if (*(v3 + 7) == 2)
    {
      v9 = a2;
      WebCore::Node::removedLastRef(v3);
      a2 = v9;
    }

    else
    {
      *(v3 + 7) -= 2;
    }
  }

  result = WTF::Vector<WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a2 + 1), a2);
  v5 = *a1;
  v6 = vadd_s32(*(*a1 - 16), 0xFFFFFFFF00000001);
  *(v5 - 16) = v6;
  v7 = *(v5 - 4);
  if (6 * v6.i32[1] < v7 && v7 >= 9)
  {

    return WTF::HashTable<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>,WTF::KeyValuePair<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>,WTF::Vector<WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>,WTF::Vector<WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>>,WTF::HashMap<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>,WTF::Vector<WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>>,WTF::HashTraits<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>>,WTF::HashTraits<WTF::Vector<WTF::Ref<WebCore::MediaKeySystemRequest,WTF::RawPtrTraits<WebCore::MediaKeySystemRequest>,WTF::DefaultRefDerefTraits<WebCore::MediaKeySystemRequest>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RefPtr<WebCore::Document,WTF::RawPtrTraits<WebCore::Document>,WTF::DefaultRefDerefTraits<WebCore::Document>>>,WTF::FastMalloc>::rehash(a1, v7 >> 1, 0);
  }

  return result;
}

uint64_t WTF::WeakHashMap<WebKit::WebPage,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultWeakPtrImpl>::WeakHashMapIteratorBase<WTF::WeakHashMap<WebKit::WebPage,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultWeakPtrImpl> const,WTF::HashTableConstIteratorAdapter<WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashMap<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>,WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>>,WTF::WeakHashMap<WebKit::WebPage,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultWeakPtrImpl>::PeekPtrType const,WTF::WeakHashMap<WebKit::WebPage,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultWeakPtrImpl>::PeekType const>::WeakHashMapIteratorBase(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  v5 = *a2;
  if (*a2)
  {
    v6 = *(v5 - 4);
    v7 = v5 + 40 * v6;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *(a1 + 24) = v7;
  *(a1 + 32) = v5 + 40 * v6;
  *(a1 + 40) = 0;
  WTF::WeakHashMap<WebKit::WebPage,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultWeakPtrImpl>::WeakHashMapIteratorBase<WTF::WeakHashMap<WebKit::WebPage,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultWeakPtrImpl> const,WTF::HashTableConstIteratorAdapter<WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashMap<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>,WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>>,WTF::WeakHashMap<WebKit::WebPage,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultWeakPtrImpl>::PeekPtrType const,WTF::WeakHashMap<WebKit::WebPage,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultWeakPtrImpl>::PeekType const>::skipEmptyBuckets(a1);
  return a1;
}

void *WTF::WeakHashMap<WebKit::WebPage,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultWeakPtrImpl>::WeakHashMapIteratorBase<WTF::WeakHashMap<WebKit::WebPage,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultWeakPtrImpl> const,WTF::HashTableConstIteratorAdapter<WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashMap<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>,WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>>,WTF::WeakHashMap<WebKit::WebPage,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultWeakPtrImpl>::PeekPtrType const,WTF::WeakHashMap<WebKit::WebPage,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultWeakPtrImpl>::PeekType const>::skipEmptyBuckets(void *result)
{
  v1 = result[3];
  v2 = result[1];
  while (v2 != v1 && !*(*v2 + 8))
  {
    v2 += 40;
    result[1] = v2;
    v3 = result[2];
    while (v2 != v3 && (*v2 + 1) <= 1)
    {
      v2 += 40;
      result[1] = v2;
    }
  }

  return result;
}

void *WTF::WeakHashMap<WebKit::WebPage,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultWeakPtrImpl>::WeakHashMapIteratorBase<WTF::WeakHashMap<WebKit::WebPage,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultWeakPtrImpl> const,WTF::HashTableConstIteratorAdapter<WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashMap<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>,WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>>,WTF::WeakHashMap<WebKit::WebPage,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultWeakPtrImpl>::PeekPtrType const,WTF::WeakHashMap<WebKit::WebPage,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultWeakPtrImpl>::PeekType const>::advance(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = (*(a1 + 8) + 40);
  *(a1 + 8) = v3;
  while (v3 != v2 && (*v3 + 1) <= 1)
  {
    v3 += 5;
    *(a1 + 8) = v3;
  }

  ++*(a1 + 40);
  result = WTF::WeakHashMap<WebKit::WebPage,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultWeakPtrImpl>::WeakHashMapIteratorBase<WTF::WeakHashMap<WebKit::WebPage,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultWeakPtrImpl> const,WTF::HashTableConstIteratorAdapter<WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashMap<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>,WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>>,WTF::WeakHashMap<WebKit::WebPage,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultWeakPtrImpl>::PeekPtrType const,WTF::WeakHashMap<WebKit::WebPage,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultWeakPtrImpl>::PeekType const>::skipEmptyBuckets(a1);
  ++*(*a1 + 8);
  return result;
}

unsigned int *WTF::WeakHashMap<WebKit::WebPage,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultWeakPtrImpl>::removeNullReferences(unsigned int *result, void *a2)
{
  v2 = result;
  v3 = *result;
  if (!*result)
  {
    goto LABEL_17;
  }

  v4 = *(v3 - 4);
  if (v4)
  {
    v5 = 0;
    v6 = (v3 + 40 * v4 - 40);
    do
    {
      if (*v6 + 1 >= 2 && !*(*v6 + 1))
      {
        result = WTF::hashTraitsDeleteBucket<WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>(v6, a2);
        ++v5;
      }

      v6 -= 5;
      --v4;
    }

    while (v4);
    v3 = *v2;
    if (v5)
    {
      v7 = *(v3 - 12) - v5;
      *(v3 - 16) += v5;
      *(v3 - 12) = v7;
      v8 = 1;
      goto LABEL_12;
    }

    if (!v3)
    {
LABEL_17:
      LODWORD(v3) = 0;
      v8 = 0;
      v2[2] = 0;
      goto LABEL_34;
    }
  }

  v8 = 0;
LABEL_12:
  v9 = *(v3 - 12);
  v10 = *(v3 - 4);
  if (6 * v9 >= v10 || v10 <= 8)
  {
    v2[2] = 0;
LABEL_33:
    LODWORD(v3) = *(v3 - 12);
    if (v3 > 0x7FFFFFFE)
    {
      v16 = -2;
      goto LABEL_36;
    }

LABEL_34:
    v16 = 2 * v3;
LABEL_36:
    v2[3] = v16;
    return v8;
  }

  if (v9 <= 1)
  {
    v12 = 1;
    goto LABEL_22;
  }

  v13 = __clz(v9 - 1);
  if (v13)
  {
    v12 = (1 << -v13);
    if (v9 > 0x400)
    {
      if (v12 > 2 * v9)
      {
LABEL_24:
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

        WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashMap<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::rehash(v2, v15, 0);
        v3 = *v2;
        v2[2] = 0;
        if (!v3)
        {
          goto LABEL_34;
        }

        goto LABEL_33;
      }

LABEL_23:
      LODWORD(v12) = 2 * v12;
      goto LABEL_24;
    }

LABEL_22:
    if (3 * v12 > 4 * v9)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  __break(1u);
  return result;
}

uint64_t WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashMap<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t a3)
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
  if (a2)
  {
    v10 = a2;
    v11 = v8 + 12;
    do
    {
      *(v11 - 1) = 0;
      *v11 = 0;
      *(v11 - 4) = 0;
      *(v11 - 3) = 0;
      *(v11 - 16) = 0;
      v11 += 40;
      --v10;
    }

    while (v10);
  }

  *a1 = (v8 + 4);
  v8[2] = a2 - 1;
  v8[3] = a2;
  *v8 = 0;
  v8[1] = v7;
  if (v6)
  {
    v12 = 0;
    v13 = 0;
    do
    {
      v14 = v5 + 40 * v12;
      if (*v14 != -1)
      {
        if (*v14)
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

          v17 = WTF::PtrHashBase<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,true>::hash((v5 + 40 * v12));
          v18 = 0;
          do
          {
            v19 = v15 + 40 * (v17 & v16);
            v17 = ++v18 + (v17 & v16);
          }

          while (*v19);
          v20 = *v14;
          *v14 = 0;
          *v19 = v20;
          v21 = *(v14 + 8);
          *(v19 + 24) = *(v14 + 24);
          *(v19 + 8) = v21;
          v22 = *v14;
          *v14 = 0;
          if (v22 && atomic_fetch_add(v22, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v22);
            WTF::fastFree(v22, v9);
          }

          if (v14 == a3)
          {
            v13 = v19;
          }
        }

        else
        {
          *v14 = 0;
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

uint64_t WTF::HashMap<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>@<X0>(uint64_t *a1@<X0>, unsigned int **a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  if (*a2 == -1 || !*a2)
  {
    __break(0xC471u);
    JUMPOUT(0x19E196468);
  }

  v8 = *a1;
  if (*a1 || (WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashMap<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::expand(a1, 0), (v8 = *a1) != 0))
  {
    v9 = *(v8 - 8);
  }

  else
  {
    v9 = 0;
  }

  result = WTF::PtrHashBase<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,true>::hash(a2);
  v11 = 0;
  for (i = 1; ; ++i)
  {
    v13 = result & v9;
    v14 = v8 + 40 * (result & v9);
    v15 = *v14;
    if (*v14 != -1)
    {
      break;
    }

    v11 = v8 + 40 * v13;
LABEL_12:
    result = i + v13;
  }

  if (!v15)
  {
    if (v11)
    {
      *(v11 + 24) = 0;
      *(v11 + 32) = 0;
      *v11 = 0;
      *(v11 + 8) = 0;
      *(v11 + 16) = 0;
      --*(*a1 - 16);
      v14 = v11;
    }

    result = WTF::GenericHashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>::assignToEmpty<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>(v14, a2);
    v25 = *(a3 + 1);
    v16 = *a3;
    *(v14 + 16) = *(a3 + 8);
    *(v14 + 8) = v16;
    *(v14 + 32) = BYTE8(v25);
    *(v14 + 24) = v25;
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
    v21 = (*(v17 - 16) + v18);
    v22 = *(v17 - 4);
    if (v22 > 0x400)
    {
      if (v22 <= 2 * v21)
      {
LABEL_22:
        result = WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashMap<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::expand(a1, v14);
        v14 = result;
        v17 = *a1;
        if (*a1)
        {
          LODWORD(v22) = *(v17 - 4);
        }

        else
        {
          LODWORD(v22) = 0;
        }
      }
    }

    else if (3 * v22 <= 4 * v21)
    {
      goto LABEL_22;
    }

    *a4 = v14;
    *(a4 + 8) = v17 + 40 * v22;
    *(a4 + 16) = 1;
    return result;
  }

  if (v15 != *a2)
  {
    goto LABEL_12;
  }

  v19 = *a1;
  if (*a1)
  {
    v20 = *(v19 - 4);
  }

  else
  {
    v20 = 0;
  }

  *a4 = v14;
  *(a4 + 8) = v19 + 40 * v20;
  *(a4 + 16) = 0;
  v23 = *a3;
  *(v14 + 16) = *(a3 + 8);
  *(v14 + 8) = v23;
  v24 = a3[2];
  *(v14 + 32) = *(a3 + 24);
  *(v14 + 24) = v24;
  return result;
}

uint64_t WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashMap<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t a2)
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

  return WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashMap<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

_DWORD *WTF::RefCounted<WebCore::DOMWrapperWorld>::deref(_DWORD *result)
{
  if (*result == 1)
  {
    v2 = MEMORY[0x19EB05E80](result);

    return WTF::fastFree(v2, v3);
  }

  else
  {
    --*result;
  }

  return result;
}

_DWORD *WTF::Detail::CallableWrapper<WebKit::WebExtensionContextProxy::enumerateFramesAndNamespaceObjects(WTF::Function<void ()(WebKit::WebFrame &,WebKit::WebExtensionAPINamespace &)> const&,WTF::Ref<WebCore::DOMWrapperWorld,WTF::RawPtrTraits<WebCore::DOMWrapperWorld>,WTF::DefaultRefDerefTraits<WebCore::DOMWrapperWorld>> &&)::$_0,void,WebKit::WebFrame &>::call(uint64_t a1, WebKit::WebFrame *this)
{
  result = WebKit::WebFrame::page(this);
  if (result)
  {
    result = WebKit::WebFrame::page(this);
    v5 = *(result + 7);
    if (v5)
    {
      v7 = *(v5 + 8);
      v6 = v5 + 8;
      *v6 = v7 + 1;
      v8 = **(a1 + 8);
      if (*(v6 + 1557) == 1)
      {
        v9 = WebKit::WebFrame::jsContextForServiceWorkerWorld(this, v8);
      }

      else
      {
        v9 = WebKit::WebFrame::jsContextForWorld(this, v8);
      }

      v10 = v9;
      GlobalObject = JSContextGetGlobalObject(v9);
      v12 = JSStringCreateWithUTF8CString("browser");
      Property = JSObjectGetProperty(v10, GlobalObject, v12, 0);
      if (v12)
      {
        JSStringRelease(v12);
      }

      if (Property)
      {
        if (JSValueIsObject(v10, Property))
        {
          v15 = WebKit::toWebExtensionAPINamespace(v10, Property, v14);
          if (v15)
          {
            goto LABEL_16;
          }
        }
      }

      v16 = JSStringCreateWithUTF8CString("chrome");
      v17 = JSObjectGetProperty(v10, GlobalObject, v16, 0);
      if (v16)
      {
        JSStringRelease(v16);
      }

      if (v17)
      {
        if (JSValueIsObject(v10, v17))
        {
          v15 = WebKit::toWebExtensionAPINamespace(v10, v17, v18);
          if (v15)
          {
LABEL_16:
            v19 = v15;
            ++*(v15 + 12);
            (*(***(a1 + 16) + 16))(**(a1 + 16), this, v15);
            if (*(v19 + 12) == 1)
            {
              (*(*(v19 + 5) + 8))(v19 + 40);
            }

            else
            {
              --*(v19 + 12);
            }
          }
        }
      }

      return WTF::RefCounted<WebCore::Page>::deref(v6);
    }
  }

  return result;
}

void WTF::Detail::CallableWrapper<WebKit::WebExtensionContextProxy::enumerateFramesAndWebPageNamespaceObjects(WTF::Function<void ()(WebKit::WebFrame &,WebKit::WebExtensionAPIWebPageNamespace &)> const&)::$_0,void,WebKit::WebFrame &>::call(WebCore *a1, WebKit::WebFrame *a2)
{
  v4 = WebCore::mainThreadNormalWorldSingleton(a1);
  v5 = WebKit::WebFrame::jsContextForWorld(a2, v4);
  GlobalObject = JSContextGetGlobalObject(v5);
  v7 = JSStringCreateWithUTF8CString("browser");
  Property = JSObjectGetProperty(v5, GlobalObject, v7, 0);
  if (v7)
  {
    JSStringRelease(v7);
  }

  if (Property)
  {
    if (JSValueIsObject(v5, Property))
    {
      v10 = WebKit::toWebExtensionAPIWebPageNamespace(v5, Property, v9);
      if (v10)
      {
        v11 = v10;
        ++*(v10 + 12);
        (*(***(a1 + 1) + 16))(**(a1 + 1), a2, v10);
        if (*(v11 + 12) == 1)
        {
          v12 = *(*(v11 + 5) + 8);

          v12(v11 + 40);
        }

        else
        {
          --*(v11 + 12);
        }
      }
    }
  }
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::lookup<WTF::HashMapTranslatorAdapter<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1)
{
  WTF::checkHashTableKey<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMapTranslatorAdapter<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(*a1);
  v2 = qword_1ED642BB8;
  if (!qword_1ED642BB8)
  {
    return 0;
  }

  v4 = *(qword_1ED642BB8 - 8);
  v5 = WTF::ObjectIdentifierGenericBaseHash<unsigned long long>::hash(a1) & v4;
  v6 = *(v2 + 16 * v5);
  if (v6 != *a1)
  {
    v7 = 1;
    while (v6)
    {
      v5 = (v5 + v7) & v4;
      v6 = *(v2 + 16 * v5);
      ++v7;
      if (v6 == *a1)
      {
        return v2 + 16 * v5;
      }
    }

    return 0;
  }

  return v2 + 16 * v5;
}

uint64_t WTF::checkHashTableKey<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMapTranslatorAdapter<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t result)
{
  if (result == -1 || !result)
  {
    __break(0xC471u);
    JUMPOUT(0x19E196904);
  }

  return result;
}

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t a2)
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

  return WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t a3)
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
      v13 = v6 + 16 * v11;
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
          v23 = *(v22 + 8);
          *(v22 + 8) = 0;
          if (v23)
          {
            WTF::RefCounted<WebKit::WebExtensionContextProxy>::deref((v23 + 16), v10);
            v28 = *v22;
            *v22 = 0;
            if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v28, v10);
            }
          }

          else
          {
            *v22 = 0;
          }

          v24 = *v13;
          *v13 = 0;
          *v22 = v24;
          v25 = *(v13 + 8);
          *(v13 + 8) = 0;
          *(v22 + 8) = v25;
          v26 = *(v13 + 8);
          *(v13 + 8) = 0;
          if (v26)
          {
            WTF::RefCounted<WebKit::WebExtensionContextProxy>::deref((v26 + 16), v10);
          }

          v27 = *v13;
          *v13 = 0;
          if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v27, v10);
          }

          if (v13 == a3)
          {
            v12 = v22;
          }
        }

        else
        {
          v15 = *(v13 + 8);
          *(v13 + 8) = 0;
          if (v15)
          {
            WTF::RefCounted<WebKit::WebExtensionContextProxy>::deref((v15 + 16), v10);
            v14 = *v13;
          }

          *v13 = 0;
          if (v14)
          {
            if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v14, v10);
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

uint64_t *WTF::HashTable<WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>,WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(uint64_t *result, uint64_t *a2, uint64_t *a3)
{
  if (*a3 == -1 || !*a3)
  {
    __break(0xC471u);
    JUMPOUT(0x19E196D1CLL);
  }

  v5 = result;
  v6 = *a2;
  if (*a2 || (result = WTF::HashTable<WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>,WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>>,WTF::FastMalloc>::expand(a2, 0), (v6 = *a2) != 0))
  {
    v7 = 0;
    v8 = *(v6 - 8);
  }

  else
  {
    v8 = 0;
    v7 = 1;
  }

  v9 = 0;
  v10 = *a3;
  v11 = ~(*a3 << 32) + *a3;
  v12 = 9 * (((v11 ^ (v11 >> 22)) + ~((v11 ^ (v11 >> 22)) << 13)) ^ (((v11 ^ (v11 >> 22)) + ~((v11 ^ (v11 >> 22)) << 13)) >> 8));
  v13 = (v12 ^ (v12 >> 15)) + ~((v12 ^ (v12 >> 15)) << 27);
  v14 = (v13 >> 31) ^ v13;
  for (i = 1; ; ++i)
  {
    v16 = v14 & v8;
    v17 = (v6 + 8 * v16);
    v18 = *v17;
    if (*v17 != -1)
    {
      break;
    }

    v9 = (v6 + 8 * v16);
LABEL_12:
    v14 = i + v16;
  }

  if (!v18)
  {
    if (v9)
    {
      *v9 = 0;
      --*(*a2 - 16);
      v19 = *a3;
      *(v19 + 16) = *(*a3 + 16) + 1;
      *v9 = v19;
      v17 = v9;
    }

    else
    {
      ++*(v10 + 16);
      *v17 = v10;
    }

    v23 = *a2;
    if (*a2)
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
      if (v26 <= 2 * v25)
      {
LABEL_24:
        result = WTF::HashTable<WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>,WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>>,WTF::FastMalloc>::expand(a2, v17);
        v17 = result;
        v23 = *a2;
        if (*a2)
        {
          v26 = *(v23 - 4);
        }

        else
        {
          v26 = 0;
        }
      }
    }

    else if (3 * v26 <= 4 * v25)
    {
      goto LABEL_24;
    }

    v22 = v23 + 8 * v26;
    v21 = 1;
    goto LABEL_29;
  }

  if (v18 != v10)
  {
    goto LABEL_12;
  }

  if (v7)
  {
    v20 = 0;
  }

  else
  {
    v20 = *(v6 - 4);
  }

  v21 = 0;
  v22 = v6 + 8 * v20;
LABEL_29:
  *v5 = v17;
  v5[1] = v22;
  *(v5 + 16) = v21;
  return result;
}

void *WTF::HashTable<WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>,WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t *a2)
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

  return WTF::HashTable<WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>,WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

void *WTF::HashTable<WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>,WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t *a3)
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
  if (v7)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = (v6 + 8 * v11);
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

          v17 = (~(v14 << 32) + v14) ^ ((~(v14 << 32) + v14) >> 22);
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
          *v13 = 0;
          *v24 = v14;
          v25 = *v13;
          *v13 = 0;
          if (v25)
          {
            WTF::RefCounted<WebKit::WebExtensionContextProxy>::deref((v25 + 16), v10);
          }

          if (v13 == a3)
          {
            v12 = v24;
          }
        }

        else
        {
          *v13 = 0;
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

uint64_t WTF::checkHashTableKey<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMapTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t result)
{
  if (result == -1 || !result)
  {
    __break(0xC471u);
    JUMPOUT(0x19E196F14);
  }

  return result;
}

void *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(void *a1)
{
  if (qword_1ED642BB8 && (v2 = *(qword_1ED642BB8 - 4)) != 0)
  {
    v3 = v2 << (6 * *(qword_1ED642BB8 - 12) >= (2 * v2));
  }

  else
  {
    v3 = 8;
  }

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(v3, a1);
}

void *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(unsigned int a1, void *a2)
{
  v4 = qword_1ED642BB8;
  if (qword_1ED642BB8)
  {
    LODWORD(v5) = *(qword_1ED642BB8 - 4);
    v6 = *(qword_1ED642BB8 - 12);
  }

  else
  {
    LODWORD(v5) = 0;
    v6 = 0;
  }

  v7 = WTF::fastMalloc((16 * a1 + 16));
  v9 = v7;
  v10 = v7 + 16;
  if (a1)
  {
    bzero((v7 + 16), 16 * a1);
  }

  qword_1ED642BB8 = v10;
  v9[2] = a1 - 1;
  v9[3] = a1;
  *v9 = 0;
  v9[1] = v6;
  v11 = 0;
  if (v5)
  {
    v13 = v4;
    v5 = v5;
    do
    {
      if (*v13 != -1)
      {
        if (*v13)
        {
          v15 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::reinsert(v13, v8);
          v16 = v13[1];
          v13[1] = 0;
          if (v16 && atomic_fetch_add(v16, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v16);
            WTF::fastFree(v16, v8);
          }

          if (v13 == a2)
          {
            v11 = v15;
          }
        }

        else
        {
          v14 = v13[1];
          v13[1] = 0;
          if (v14)
          {
            if (atomic_fetch_add(v14, 0xFFFFFFFF) == 1)
            {
              atomic_store(1u, v14);
              WTF::fastFree(v14, v8);
            }
          }
        }
      }

      v13 += 2;
      --v5;
    }

    while (v5);
    goto LABEL_21;
  }

  result = 0;
  if (v4)
  {
LABEL_21:
    WTF::fastFree((v4 - 16), v8);
    return v11;
  }

  return result;
}

void *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::reinsert(void *a1, void *a2)
{
  if (qword_1ED642BB8)
  {
    v3 = *(qword_1ED642BB8 - 8);
  }

  else
  {
    v3 = 0;
  }

  v4 = *a1 + ~(*a1 << 32);
  v5 = (v4 ^ (v4 >> 22)) + ~((v4 ^ (v4 >> 22)) << 13);
  v6 = (9 * (v5 ^ (v5 >> 8))) ^ ((9 * (v5 ^ (v5 >> 8))) >> 15);
  v7 = v3 & (((v6 + ~(v6 << 27)) >> 31) ^ (v6 + ~(v6 << 27)));
  v8 = 1;
  do
  {
    v9 = v7;
    v10 = *(qword_1ED642BB8 + 16 * v7);
    v7 = (v7 + v8++) & v3;
  }

  while (v10);
  v11 = (qword_1ED642BB8 + 16 * v9);
  v12 = v11[1];
  v11[1] = 0;
  if (v12 && atomic_fetch_add(v12, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v12);
    WTF::fastFree(v12, a2);
  }

  *v11 = *a1;
  v13 = a1[1];
  a1[1] = 0;
  v11[1] = v13;
  return v11;
}

void *WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::remove(void *a1, void *a2)
{
  if (qword_1ED642BB8)
  {
    v2 = (qword_1ED642BB8 + 16 * *(qword_1ED642BB8 - 4));
    if (v2 == a1)
    {
      return a1;
    }
  }

  else
  {
    if (!a1)
    {
      return a1;
    }

    v2 = 0;
  }

  if (v2 != a1)
  {
    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(a1, a2);
  }

  return a1;
}

unsigned int *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(void *a1, void *a2)
{
  result = WTF::KeyValuePairHashTraits<WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>::customDeleteBucket(a1, a2);
  v3 = qword_1ED642BB8;
  v4 = vadd_s32(*(qword_1ED642BB8 - 16), 0xFFFFFFFF00000001);
  *(qword_1ED642BB8 - 16) = v4;
  v5 = *(v3 - 4);
  if (6 * v4.i32[1] < v5 && v5 >= 9)
  {

    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(v5 >> 1, 0);
  }

  return result;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1)
{
  if (!qword_1ED642BB8)
  {
    return 0;
  }

  result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if (!result)
  {
    if (qword_1ED642BB8)
    {
      return qword_1ED642BB8 + 16 * *(qword_1ED642BB8 - 4);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1)
{
  WTF::checkHashTableKey<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(*a1);
  v2 = qword_1ED642BB8;
  if (qword_1ED642BB8)
  {
    v3 = *(qword_1ED642BB8 - 8);
    v4 = WTF::ObjectIdentifierGenericBaseHash<unsigned long long>::hash(a1) & v3;
    v5 = *(v2 + 16 * v4);
    if (v5 == *a1)
    {
      return v2 + 16 * v4;
    }

    v7 = 1;
    while (v5)
    {
      v4 = (v4 + v7) & v3;
      v5 = *(v2 + 16 * v4);
      ++v7;
      if (v5 == *a1)
      {
        return v2 + 16 * v4;
      }
    }
  }

  return 0;
}

uint64_t WTF::checkHashTableKey<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::WebExtensionControllerProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t result)
{
  if (result == -1 || !result)
  {
    __break(0xC471u);
    JUMPOUT(0x19E197364);
  }

  return result;
}

WTF *WTF::HashMap<WTF::String,WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WebKit::WebExtensionContextProxy,WTF::RawPtrTraits<WebKit::WebExtensionContextProxy>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionContextProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,WTF::String>(uint64_t *a1, const WTF::StringImpl **a2, const WTF::StringImpl *a3)
{
  v4 = *a2;
  if (*a2 == -1 || !v4)
  {
    __break(0xC471u);
    JUMPOUT(0x19E197450);
  }

  v5 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v8 = *(v5 - 8);
  v9 = *(v4 + 4);
  if (v9 < 0x100)
  {
    v10 = WTF::StringImpl::hashSlowCase(v4);
  }

  else
  {
    v10 = v9 >> 8;
  }

  for (i = 0; ; v10 = i + v12)
  {
    v12 = v10 & v8;
    result = *(v5 + 16 * v12);
    if (result != -1)
    {
      if (!result)
      {
        return result;
      }

      if (WTF::equal(result, *a2, a3))
      {
        break;
      }
    }

    ++i;
  }

  return *(v5 + 16 * v12 + 8);
}

mpark *Messages::NetworkConnectionToWebProcess::RegisterBlobURLHandle::encode<IPC::Encoder>(uint64_t a1, IPC::Encoder *a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a2, *a1);
  v4 = *(a1 + 8);

  return IPC::ArgumentCoder<std::optional<WebCore::SecurityOriginData>,void>::encode<IPC::Encoder,std::optional<WebCore::SecurityOriginData> const&>(a2, v4);
}

WebKit::WebFullScreenManager *WebKit::WebFullScreenManager::WebFullScreenManager(WebKit::WebFullScreenManager *this, CFTypeRef *a2)
{
  *(this + 4) = 1;
  *(this + 20) = 3;
  *this = &unk_1F1122F70;
  *(this + 1) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 0;
  v4 = CFRetain(a2[1]);
  *(this + 96) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 8) = a2;
  *(this + 88) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  v5 = WTF::RunLoop::mainSingleton(v4);
  v6 = v5;
  while (1)
  {
    v7 = *(v5 + 8);
    if ((v7 & 1) == 0)
    {
      break;
    }

    v8 = *(v5 + 8);
    atomic_compare_exchange_strong_explicit((v5 + 8), &v8, v7 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v8 == v7)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v5 + 8));
LABEL_6:
  v15 = v6;
  v9 = WTF::fastMalloc(0x20);
  *v9 = &unk_1F11235A8;
  v9[1] = this;
  v9[2] = WebKit::WebFullScreenManager::mainVideoElementTextRecognitionTimerFired;
  v9[3] = 0;
  WTF::RunLoop::TimerBase::TimerBase();
  *(this + 15) = &unk_1F10E6DC8;
  *(this + 20) = v9;
  if (v15)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v15 + 8));
  }

  *(this + 84) = 0;
  *(this + 170) = 0;
  v10 = WebKit::WebPage::logger(a2);
  atomic_fetch_add((v10 + 8), 1u);
  v11 = a2[6] + ~(a2[6] << 32);
  v12 = 9 * (((v11 ^ (v11 >> 22)) + ~((v11 ^ (v11 >> 22)) << 13)) ^ (((v11 ^ (v11 >> 22)) + ~((v11 ^ (v11 >> 22)) << 13)) >> 8));
  v13 = (v12 ^ (v12 >> 15)) + ~((v12 ^ (v12 >> 15)) << 27);
  *(this + 22) = v10;
  *(this + 23) = (v13 >> 31) ^ v13;
  return this;
}

IPC::Encoder *WebKit::WebFullScreenManager::mainVideoElementTextRecognitionTimerFired(IPC::Encoder *this)
{
  v1 = *(this + 9);
  if (v1)
  {
    v2 = this;
    v3 = WebCore::Document::fullscreen(*(*(v1 + 48) + 8));
    this = WebCore::DocumentFullscreen::fullscreenElement(v3);
    if (this)
    {
      this = WebKit::WebFullScreenManager::updateMainVideoElement(v2, v4, v5);
      v6 = *(v2 + 112);
      if (v6)
      {
        v7 = *(v6 + 8);
        if (v7)
        {
          if (*(v2 + 168))
          {
            WebKit::WebPage::cancelTextRecognitionForVideoInElementFullScreen(*(v2 + 64));
            v8 = *(v2 + 112);
            *(v2 + 168) = 1;
            if (!v8 || (v7 = *(v8 + 8)) == 0)
            {
              __break(0xC471u);
              JUMPOUT(0x19E1976F8);
            }
          }

          else
          {
            *(v2 + 168) = 1;
          }

          v9 = *(v2 + 64);

          return WebKit::WebPage::beginTextRecognitionForVideoInElementFullScreen(v9, v7);
        }
      }
    }
  }

  return this;
}

void WebKit::WebFullScreenManager::~WebFullScreenManager(unsigned int **this)
{
  WebKit::WebFullScreenManager::invalidate(this);
  v2 = this[22];
  this[22] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  this[15] = &unk_1F10E6DC8;
  v3 = this[20];
  this[20] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  WTF::RunLoop::TimerBase::~TimerBase((this + 15));
  v5 = this[14];
  this[14] = 0;
  if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5);
    WTF::fastFree(v5, v4);
  }

  v6 = this[13];
  this[13] = 0;
  if (v6)
  {
    if (*(v6 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v6);
    }

    else
    {
      *(v6 + 7) -= 2;
    }
  }

  v7 = this[10];
  this[10] = 0;
  if (v7)
  {
    WTF::ThreadSafeRefCounted<WebCore::WeakPtrImplWithEventTargetData,(WTF::DestructionThread)0>::deref(v7, v4);
  }

  v8 = this[9];
  this[9] = 0;
  if (v8)
  {
    if (*(v8 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v8);
    }

    else
    {
      *(v8 + 7) -= 2;
    }
  }

  v9 = this[8];
  this[8] = 0;
  if (v9)
  {
    CFRelease(*(v9 + 1));
  }

  if (*(this + 4) == 1)
  {
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, v4);
  }

  else
  {
    __break(0xC471u);
  }
}

{
  WebKit::WebFullScreenManager::~WebFullScreenManager(this);

  WTF::fastFree(v1, v2);
}

uint64_t WebKit::WebFullScreenManager::invalidate(WebKit::WebFullScreenManager *this)
{
  v2 = *(this + 22);
  atomic_fetch_add(v2 + 2, 1u);
  v3 = *(this + 23);
  v6[0] = "WebFullScreenManager";
  v6[1] = 21;
  v6[2] = "invalidate";
  v6[3] = v3;
  if (WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier>(v2, &WebKit2LogFullscreen, 0, v6))
  {
    WTF::Logger::log<WTF::Logger::LogSiteIdentifier>(&WebKit2LogFullscreen, 0, v6);
  }

  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  WebKit::WebFullScreenManager::clearElement(this, v4);
  v6[0] = 0;
  WebKit::WebFullScreenManager::setMainVideoElement(this, v6);
  return WTF::RunLoop::TimerBase::stop((this + 120));
}

uint64_t WebKit::WebFullScreenManager::clearElement(uint64_t this, WTF::StringImpl *a2)
{
  if (*(this + 72))
  {
    v2 = this;
    WebKit::eventsToObserve(this, a2);
    v3 = &unk_1ED642BD0;
    v4 = 24;
    do
    {
      v5 = *(v2 + 72);
      v6 = 1;
      (*(*v5 + 32))(v5, v3, v2, &v6);
      v3 += 8;
      v4 -= 8;
    }

    while (v4);
    this = *(v2 + 72);
    *(v2 + 72) = 0;
    if (this)
    {
      if (*(this + 28) == 2)
      {
        this = WebCore::Node::removedLastRef(this);
      }

      else
      {
        *(this + 28) -= 2;
      }
    }

    if (*(v2 + 96) == 1)
    {
      *(v2 + 96) = 0;
    }
  }

  return this;
}

uint64_t WebKit::WebFullScreenManager::setMainVideoElement(uint64_t result, WTF::StringImpl *a2)
{
  v3 = result;
  v4 = *(result + 112);
  if (v4)
  {
    v5 = *(v4 + 8);
  }

  else
  {
    v5 = 0;
  }

  if (*a2 == v5)
  {
    return result;
  }

  if (_MergedGlobals_108[0])
  {
    if (v4)
    {
      goto LABEL_7;
    }
  }

  else
  {
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v18 = *(StatusReg + 736);
    if (!v18 || (v19 = *(v18 + 96)) == 0)
    {
      result = WebCore::threadGlobalDataSlow(result);
      v19 = result;
    }

    v20 = *(v19 + 5);
    if (!v20)
    {
      result = WebCore::ThreadGlobalData::initializeEventNames(v19);
      v20 = *(v19 + 5);
    }

    v21 = *(v20 + 1808);
    if (v21)
    {
      atomic_fetch_add_explicit(v21, 2u, memory_order_relaxed);
    }

    v39 = v21;
    v22 = *(StatusReg + 736);
    if (!v22 || (v23 = *(v22 + 96)) == 0)
    {
      result = WebCore::threadGlobalDataSlow(result);
      v23 = result;
    }

    v24 = *(v23 + 5);
    if (!v24)
    {
      result = WebCore::ThreadGlobalData::initializeEventNames(v23);
      v24 = *(v23 + 5);
    }

    v25 = *(v24 + 1800);
    if (v25)
    {
      atomic_fetch_add_explicit(v25, 2u, memory_order_relaxed);
    }

    v40 = v25;
    v26 = *(StatusReg + 736);
    if (!v26 || (v27 = *(v26 + 96)) == 0)
    {
      result = WebCore::threadGlobalDataSlow(result);
      v27 = result;
    }

    v28 = *(v27 + 5);
    if (!v28)
    {
      result = WebCore::ThreadGlobalData::initializeEventNames(v27);
      v28 = *(v27 + 5);
    }

    v29 = *(v28 + 1504);
    if (v29)
    {
      atomic_fetch_add_explicit(v29, 2u, memory_order_relaxed);
    }

    v41 = v29;
    v30 = *(StatusReg + 736);
    if (!v30 || (v31 = *(v30 + 96)) == 0)
    {
      v31 = WebCore::threadGlobalDataSlow(result);
    }

    v32 = *(v31 + 5);
    if (!v32)
    {
      WebCore::ThreadGlobalData::initializeEventNames(v31);
      v32 = *(v31 + 5);
    }

    v33 = *(v32 + 1456);
    if (v33)
    {
      atomic_fetch_add_explicit(v33, 2u, memory_order_relaxed);
    }

    v34 = 0;
    v42 = v33;
    do
    {
      v35 = &(&v39)[v34];
      v36 = *&(&v39)[v34];
      *v35 = 0;
      v35[1] = 0;
      *&_MergedGlobals_108[v34 * 8 + 32] = v36;
      v34 += 2;
    }

    while (v34 != 4);
    for (i = 3; i != -1; --i)
    {
      v38 = (&v39)[i];
      (&v39)[i] = 0;
      if (v38 && atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v38, a2);
      }
    }

    _MergedGlobals_108[0] = 1;
    v4 = *(v3 + 112);
    if (v4)
    {
LABEL_7:
      if (*(v4 + 8))
      {
        v6 = &unk_1ED642BE8;
        v7 = 32;
        do
        {
          v8 = *(v3 + 112);
          if (!v8 || !*(v8 + 8))
          {
            goto LABEL_78;
          }

          LOBYTE(v39) = 0;
          WebCore::HTMLMediaElement::removeEventListener();
          v6 += 8;
          v7 -= 8;
        }

        while (v7);
        WebKit::WebFullScreenManager::endTextRecognitionForMainVideoIfNeeded(v3);
      }
    }
  }

  v9 = *a2;
  if (v9)
  {
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v9 + 336), v9);
    v10 = *(v9 + 336);
    if (v10)
    {
      atomic_fetch_add(v10, 1u);
    }
  }

  else
  {
    v10 = 0;
  }

  result = *(v3 + 112);
  *(v3 + 112) = v10;
  if (result)
  {
    if (atomic_fetch_add(result, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result);
      result = WTF::fastFree(result, a2);
    }

    v10 = *(v3 + 112);
  }

  if (v10 && *(v10 + 8))
  {
    v11 = &unk_1ED642BE8;
    v12 = 32;
    do
    {
      v13 = *(v3 + 112);
      if (!v13 || !*(v13 + 8))
      {
        __break(0xC471u);
        JUMPOUT(0x19E197E30);
      }

      ++*(v3 + 16);
      LOBYTE(v39) = 0;
      *(&v39 + 1) = 0;
      BYTE3(v39) = 0;
      v40 = 0;
      WebCore::HTMLMediaElement::addEventListener();
      v14 = v40;
      v40 = 0;
      if (v14)
      {
        WTF::RefCounted<WebCore::AbortSignal>::deref(v14 + 6);
      }

      if (v3)
      {
        if (*(v3 + 16) == 1)
        {
          (*(*v3 + 8))(v3);
        }

        else
        {
          --*(v3 + 16);
        }
      }

      v11 += 8;
      v12 -= 8;
    }

    while (v12);
    v15 = *(v3 + 112);
    if (!v15 || (v16 = *(v15 + 8)) == 0)
    {
LABEL_78:
      __break(0xC471u);
      JUMPOUT(0x19E197E10);
    }

    result = WebCore::HTMLMediaElement::paused(v16);
    if (result)
    {
      return WTF::RunLoop::TimerBase::start();
    }
  }

  return result;
}

uint64_t WebKit::WebFullScreenManager::videoControlsManagerDidChange(WebKit::WebFullScreenManager *this)
{
  v2 = *(this + 22);
  atomic_fetch_add(v2 + 2, 1u);
  v3 = *(this + 23);
  v9[0] = "WebFullScreenManager";
  v9[1] = 21;
  v9[2] = "videoControlsManagerDidChange";
  v9[3] = v3;
  if (WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier>(v2, &WebKit2LogFullscreen, 0, v9))
  {
    WTF::Logger::log<WTF::Logger::LogSiteIdentifier>(&WebKit2LogFullscreen, 0, v9);
  }

  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  if (!*(this + 9))
  {
    return WebKit::WebFullScreenManager::setPIPStandbyElement(this, 0);
  }

  v4 = WebKit::WebPage::playbackSessionManager(*(this + 8));
  v5 = *(v4 + 7);
  if (!v5)
  {
    return WebKit::WebFullScreenManager::setPIPStandbyElement(this, 0);
  }

  v6 = WebKit::PlaybackSessionManager::mediaElementWithContextId(v4, v5);
  if (!v6)
  {
    return WebKit::WebFullScreenManager::setPIPStandbyElement(this, 0);
  }

  v7 = v6;
  if (*(*(v6 + 104) + 24) != *(*MEMORY[0x1E69E2D10] + 24))
  {
    return WebKit::WebFullScreenManager::setPIPStandbyElement(this, 0);
  }

  *(v6 + 28) += 2;
  result = WebKit::WebFullScreenManager::setPIPStandbyElement(this, v6);
  if (*(v7 + 7) == 2)
  {
    return WebCore::Node::removedLastRef(v7);
  }

  *(v7 + 7) -= 2;
  return result;
}

uint64_t WebKit::WebFullScreenManager::setPIPStandbyElement(uint64_t this, WTF::String **a2)
{
  v67 = *MEMORY[0x1E69E9840];
  if (*(this + 104) == a2)
  {
    return this;
  }

  v2 = a2;
  v3 = this;
  v4 = *(this + 176);
  atomic_fetch_add(v4 + 2, 1u);
  v5 = *(this + 184);
  v49[0] = "WebFullScreenManager";
  v49[1] = 21;
  v49[2] = "setPIPStandbyElement";
  v49[3] = v5;
  v6 = *(this + 104);
  if (v6)
  {
    v48 = *(v6 + 1760);
    if (a2)
    {
LABEL_4:
      v7 = a2[220];
      goto LABEL_7;
    }
  }

  else
  {
    v48 = 0;
    if (a2)
    {
      goto LABEL_4;
    }
  }

  v7 = 0;
LABEL_7:
  v8 = MEMORY[0x1E696EBD0];
  while (1)
  {
    v9 = *v8;
    if (v9)
    {
      break;
    }

    v10 = *v8;
    atomic_compare_exchange_strong_explicit(v8, &v10, v9 | 1, memory_order_acquire, memory_order_acquire);
    if (v10 == v9)
    {
      v45 = v4;
      v47 = this;
      v11 = WTF::Logger::messageHandlerObservers(this);
      v12 = *(v11 + 12);
      if (v12)
      {
        v13 = *v11;
        v14 = *v11 + 8 * v12;
        do
        {
          v15 = *v13;
          *buf = 0;
          WTF::Logger::LogSiteIdentifier::toString(&buf[8], v49);
          v61 = 0;
          WTF::String::String(&v62, "old element ");
          v63 = 0;
          WTF::String::number(v48);
          v64 = 0;
          WTF::String::String(&v65, ", new element ");
          v66 = 0;
          WTF::String::number(v7);
          WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v50, buf, 5uLL);
          (*(*v15 + 16))(v15, &WebKit2LogFullscreen, 0, v50);
          WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v50, v16);
          for (i = 72; i != -8; i -= 16)
          {
            v19 = *&buf[i];
            *&buf[i] = 0;
            if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v19, v17);
            }
          }

          ++v13;
        }

        while (v13 != v14);
      }

      v20 = 1;
      atomic_compare_exchange_strong_explicit(v8, &v20, 0, memory_order_release, memory_order_relaxed);
      if (v20 != 1)
      {
        WTF::Lock::unlockSlow(MEMORY[0x1E696EBD0]);
      }

      v4 = v45;
      v2 = a2;
      v3 = v47;
      if ((v45[3] & 1) == 0)
      {
        goto LABEL_62;
      }

      WTF::Logger::LogSiteIdentifier::toString(&v55, v49);
      WTF::String::String(&v54, "old element ");
      WTF::String::number(v48);
      WTF::String::String(&v52, ", new element ");
      WTF::String::number(v7);
      v50[0] = v54;
      v59 = v53;
      *buf = v55;
      v57 = v51;
      v58 = v52;
      this = WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(buf, v50, &v59, &v58, &v57, &v56);
      if (!v56)
      {
        __break(0xC471u);
        return this;
      }

      v22 = v51;
      v51 = 0;
      if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v22, v21);
      }

      v23 = v52;
      v52 = 0;
      if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v23, v21);
      }

      v24 = v53;
      v53 = 0;
      if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v24, v21);
      }

      v25 = v54;
      v54 = 0;
      if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v25, v21);
      }

      v26 = v55;
      v55 = 0;
      if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v26, v21);
      }

      v27 = qword_1ED640AE0;
      v28 = os_log_type_enabled(qword_1ED640AE0, OS_LOG_TYPE_DEFAULT);
      if (v28)
      {
        WTF::String::utf8();
        v30 = v50[0] ? v50[0] + 16 : 0;
        *buf = 136446210;
        *&buf[4] = v30;
        _os_log_impl(&dword_19D52D000, v27, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
        v28 = v50[0];
        v50[0] = 0;
        if (v28)
        {
          if (*v28 == 1)
          {
            v28 = WTF::fastFree(v28, v29);
          }

          else
          {
            --*v28;
          }
        }
      }

      if (WebKit2LogFullscreen)
      {
        v31 = MEMORY[0x1E696EBC0];
        while (1)
        {
          v32 = *v31;
          if (v32)
          {
            break;
          }

          v33 = *v31;
          atomic_compare_exchange_strong_explicit(v31, &v33, v32 | 1, memory_order_acquire, memory_order_acquire);
          if (v33 == v32)
          {
            v34 = WTF::Logger::observers(v28);
            v35 = *(v34 + 12);
            if (v35)
            {
              v36 = *v34;
              v37 = *v34 + 8 * v35;
              do
              {
                v38 = *v36;
                *buf = 0;
                WTF::Logger::LogSiteIdentifier::toString(&buf[8], v49);
                v61 = 0;
                WTF::String::String(&v62, "old element ");
                v63 = 0;
                WTF::String::number(v48);
                v64 = 0;
                WTF::String::String(&v65, ", new element ");
                v66 = 0;
                WTF::String::number(v7);
                WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v50, buf, 5uLL);
                (*(*v38 + 16))(v38, &WebKit2LogFullscreen, 0, v50);
                WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v50, v39);
                for (j = 72; j != -8; j -= 16)
                {
                  v41 = *&buf[j];
                  *&buf[j] = 0;
                  if (v41 && atomic_fetch_add_explicit(v41, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v41, v29);
                  }
                }

                ++v36;
              }

              while (v36 != v37);
            }

            v42 = 1;
            atomic_compare_exchange_strong_explicit(v31, &v42, 0, memory_order_release, memory_order_relaxed);
            v2 = a2;
            v3 = v47;
            v4 = v45;
            if (v42 != 1)
            {
              WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
            }

            break;
          }
        }
      }

      v43 = v56;
      v56 = 0;
      if (v43 && atomic_fetch_add_explicit(v43, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v43, v29);
      }

      break;
    }
  }

  if (!v4)
  {
    goto LABEL_64;
  }

LABEL_62:
  if (atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 2);
    (*(*v4 + 8))(v4);
  }

LABEL_64:
  v44 = *(v3 + 104);
  if (v44)
  {
    WebCore::HTMLVideoElement::setVideoFullscreenStandby(v44);
  }

  if (v2)
  {
    *(v2 + 7) += 2;
  }

  this = *(v3 + 104);
  *(v3 + 104) = v2;
  if (this)
  {
    if (*(this + 28) == 2)
    {
      this = WebCore::Node::removedLastRef(this);
    }

    else
    {
      *(this + 28) -= 2;
    }

    v2 = *(v3 + 104);
  }

  if (v2)
  {
    return WebCore::HTMLVideoElement::setVideoFullscreenStandby(v2);
  }

  return this;
}