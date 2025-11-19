uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebCore::MediaPromiseConverter,Messages::RemoteSourceBufferProxy::ComputeSeekTime,WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>>(WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1},void,IPC::Connection*,std::unique_ptr<IPC::Decoder> &>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F1128FB0;
  WTF::NativePromiseProducer<WTF::MediaTime,WebCore::PlatformMediaError,0u>::~NativePromiseProducer((a1 + 8));
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebCore::MediaPromiseConverter,Messages::RemoteSourceBufferProxy::ComputeSeekTime,WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>>(WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1},void,IPC::Connection*,std::unique_ptr<IPC::Decoder> &>::~CallableWrapper(atomic_uint **a1)
{
  *a1 = &unk_1F1128FB0;
  WTF::NativePromiseProducer<WTF::MediaTime,WebCore::PlatformMediaError,0u>::~NativePromiseProducer(a1 + 1);

  return WTF::fastFree(a1, v2);
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebCore::MediaPromiseConverter,Messages::RemoteSourceBufferProxy::ComputeSeekTime,WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>>(WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1},void,IPC::Connection*,std::unique_ptr<IPC::Decoder> &>::call(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  *a3 = 0;
  v5 = WTF::fastMalloc(0x10);
  *v5 = &unk_1F1128FD8;
  v5[1] = v4;
  v8 = v5;
  v7[0] = 0;
  v7[1] = 0;
  v7[2] = "operator()";
  v7[3] = 0;
  WTF::NativePromiseProducer<WTF::MediaTime,WebCore::PlatformMediaError,0u>::settleWithFunction<std::enable_if<true,void>>((a1 + 8), &v8, v7);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebCore::MediaPromiseConverter,Messages::RemoteSourceBufferProxy::ComputeSeekTime,WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>>(WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1}::operator()(IPC::Connection*,std::unique_ptr<IPC::Decoder> &)::{lambda(void)#1},std::experimental::fundamentals_v3::expected<WTF::MediaTime,WebCore::PlatformMediaError>>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F1128FD8;
  std::unique_ptr<IPC::Decoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebCore::MediaPromiseConverter,Messages::RemoteSourceBufferProxy::ComputeSeekTime,WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>>(WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1}::operator()(IPC::Connection*,std::unique_ptr<IPC::Decoder> &)::{lambda(void)#1},std::experimental::fundamentals_v3::expected<WTF::MediaTime,WebCore::PlatformMediaError>>::~CallableWrapper(IPC::Decoder **a1)
{
  *a1 = &unk_1F1128FD8;
  std::unique_ptr<IPC::Decoder>::reset[abi:sn200100](a1 + 1, 0);

  return WTF::fastFree(a1, v2);
}

IPC::Decoder **WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebCore::MediaPromiseConverter,Messages::RemoteSourceBufferProxy::ComputeSeekTime,WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>>(WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1}::operator()(IPC::Connection*,std::unique_ptr<IPC::Decoder> &)::{lambda(void)#1},std::experimental::fundamentals_v3::expected<WTF::MediaTime,WebCore::PlatformMediaError>>::call@<X0>(IPC::Decoder **result@<X0>, uint64_t a2@<X8>)
{
  v3 = result[1];
  if (v3 && *v3 && ((result = IPC::ArgumentCoder<std::tuple<std::experimental::fundamentals_v3::expected<WTF::MediaTime,WebCore::PlatformMediaError>>,void>::decode<IPC::Decoder>(result[1], &v7), (v9 & 1) != 0) || ((v4 = *v3, v5 = *(v3 + 1), *v3 = 0, *(v3 + 1) = 0, (result = *(v3 + 3)) != 0) ? (v6 = v5 == 0) : (v6 = 1), !v6 && (result = (*(*result + 2))(result, v4), (v9 & 1) != 0))))
  {
    *a2 = v7;
    *(a2 + 16) = v8;
  }

  else
  {
    *a2 = 4;
    *(a2 + 16) = 1;
  }

  return result;
}

unint64_t WTF::Vector<WTF::NativePromiseProducer<WTF::MediaTime,WebCore::PlatformMediaError,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || &v5[10 * *(a1 + 12)] <= a3)
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

    WTF::Vector<WTF::NativePromiseProducer<WTF::MediaTime,WebCore::PlatformMediaError,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WTF::NativePromiseProducer<WTF::MediaTime,WebCore::PlatformMediaError,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

atomic_uint **WTF::Vector<WTF::NativePromiseProducer<WTF::MediaTime,WebCore::PlatformMediaError,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(atomic_uint **result, unint64_t a2)
{
  if (*(result + 2) < a2)
  {
    if (a2 >= 0x6666667)
    {
      __break(0xC471u);
    }

    else
    {
      v2 = result;
      v3 = *result;
      v4 = *(result + 3);
      v5 = 40 * a2;
      result = WTF::fastMalloc((40 * a2));
      *(v2 + 2) = v5 / 0x28;
      *v2 = result;
      if (v4)
      {
        v7 = result;
        result = v3;
        do
        {
          v8 = *result;
          *result = 0;
          *v7 = v8;
          v9 = *(result + 1);
          *(v7 + 3) = *(result + 3);
          *(v7 + 1) = v9;
          v7 += 5;
          result = WTF::NativePromiseProducer<WTF::MediaTime,WebCore::PlatformMediaError,0u>::~NativePromiseProducer(result) + 5;
        }

        while (result != &v3[10 * v4]);
      }

      if (v3)
      {
        if (*v2 == v3)
        {
          *v2 = 0;
          *(v2 + 2) = 0;
        }

        return WTF::fastFree(v3, v6);
      }
    }
  }

  return result;
}

uint64_t WTF::NativePromiseProducer<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>::NativePromiseProducer<std::enable_if<true,void>>(uint64_t a1, WTF::Logger::LogSiteIdentifier *a2)
{
  v4 = WTF::fastMalloc(0x88);
  v5 = WTF::NativePromise<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>::NativePromise(v4, a2);
  *a1 = v5;
  v6 = *a2;
  *(a1 + 24) = *(a2 + 1);
  *(a1 + 8) = v6;
  v7 = (v5 + 8);
  atomic_fetch_add((v5 + 8), 1u);
  WTF::NativePromise<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>::setDispatchMode(v5, 0, a2);
  if (atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v7);
    (*(*v4 + 16))(v4);
  }

  return a1;
}

WTF::StringImpl *WTF::NativePromise<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>::setDispatchMode(atomic_uchar *a1, unsigned __int8 a2, WTF::Logger::LogSiteIdentifier *a3)
{
  v5 = a1;
  v6 = 0;
  v7 = (a1 + 48);
  atomic_compare_exchange_strong_explicit(a1 + 48, &v6, 1u, memory_order_acquire, memory_order_acquire);
  if (v6)
  {
    a1 = MEMORY[0x19EB01E30](a1 + 48);
  }

  result = WTF::NativePromiseBase::logChannel(a1);
  if (*result)
  {
    v9 = *(result + 16) >= 4u;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    result = WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [27],WTF::NativePromise<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>>(result, a3, " runSynchronouslyOnTarget ", v5);
  }

  atomic_store(a2, (v5 + 129));
  v10 = 1;
  atomic_compare_exchange_strong_explicit((v5 + 48), &v10, 0, memory_order_release, memory_order_relaxed);
  if (v10 != 1)
  {

    return WTF::Lock::unlockSlow(v7);
  }

  return result;
}

uint64_t WTF::NativePromise<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>::NativePromise(uint64_t a1, _OWORD *a2)
{
  v33[2] = *MEMORY[0x1E69E9840];
  *(a1 + 8) = 1;
  *a1 = &unk_1F1129000;
  v3 = a2[1];
  *(a1 + 16) = *a2;
  *(a1 + 32) = v3;
  *(a1 + 48) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = a1 + 104;
  *(a1 + 96) = 1;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
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
  WTF::LogArgument<WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>::toString(a1, &v28);
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
              WTF::LogArgument<WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>::toString(a1, v33);
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

uint64_t WTF::NativePromise<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>::assertIsDead(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = (result + 48);
  atomic_compare_exchange_strong_explicit((result + 48), &v2, 1u, memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    result = MEMORY[0x19EB01E30](result + 48);
  }

  v4 = *(v1 + 124);
  if (v4)
  {
    v5 = *(v1 + 112);
    v6 = 40 * v4;
    do
    {
      result = WTF::NativePromiseProducer<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>::assertIsDead(v5);
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

uint64_t WTF::NativePromise<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>::~NativePromise(uint64_t a1)
{
  v1 = WTF::NativePromise<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>::~NativePromise(a1);

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
    WTF::LogArgument<WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>::toString(a1, &v31);
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
              WTF::LogArgument<WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>::toString(a1, v36);
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

  WTF::NativePromise<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>::assertIsDead(a1);
  WTF::Vector<WTF::NativePromiseProducer<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 112, v26);
  WTF::Vector<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 88, v27);
  if (*(a1 + 80) > 1u)
  {
    if (*(a1 + 80) == 2)
    {
      v29 = *(a1 + 56);
      *(a1 + 56) = 0;
      if (v29)
      {
        (*(*v29 + 8))(v29);
      }
    }
  }

  else if (*(a1 + 80))
  {
    if (!*(a1 + 72))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 56, v28);
    }

    *(a1 + 72) = -1;
  }

  *(a1 + 80) = -1;
  return a1;
}

atomic_uint **WTF::NativePromiseProducer<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>::assertIsDead(atomic_uint **result)
{
  v1 = *result;
  if (*result)
  {
    atomic_fetch_add(v1 + 2, 1u);
    result = WTF::NativePromise<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>::assertIsDead(v1);
    if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v1 + 2);
      v2 = *(*v1 + 16);

      return v2(v1);
    }
  }

  return result;
}

uint64_t WTF::Vector<WTF::NativePromiseProducer<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = *a1;
    v5 = 40 * v3;
    do
    {
      v4 = WTF::NativePromiseProducer<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>::~NativePromiseProducer(v4) + 5;
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

WTF::StringImpl *WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [27],WTF::NativePromise<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>>(uint64_t a1, WTF::Logger::LogSiteIdentifier *this, const char *a3, uint64_t a4)
{
  v38[2] = *MEMORY[0x1E69E9840];
  WTF::Logger::LogSiteIdentifier::toString(&v32, this);
  WTF::String::String(&v31, a3);
  WTF::LogArgument<WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>::toString(a4, &v30);
  WTF::makeString<WTF::String,WTF::String,WTF::String>(&v32, &v31, &v30, &v33);
  v9 = v30;
  v30 = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v8);
  }

  v10 = v31;
  v31 = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v8);
  }

  v11 = v32;
  v32 = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v8);
  }

  v12 = *(a1 + 32);
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v13)
  {
    WTF::String::utf8();
    v15 = v29[0] ? v29[0] + 16 : 0;
    *buf = 136446210;
    v35 = v15;
    _os_log_impl(&dword_19D52D000, v12, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
    v13 = v29[0];
    v29[0] = 0;
    if (v13)
    {
      if (*v13 == 1)
      {
        v13 = WTF::fastFree(v13, v14);
      }

      else
      {
        --*v13;
      }
    }
  }

  if (*a1 && *(a1 + 16) >= 4u)
  {
    v16 = MEMORY[0x1E696EBC0];
    while (1)
    {
      v17 = *v16;
      if (v17)
      {
        break;
      }

      v18 = *v16;
      atomic_compare_exchange_strong_explicit(v16, &v18, v17 | 1, memory_order_acquire, memory_order_acquire);
      if (v18 == v17)
      {
        v19 = WTF::Logger::observers(v13);
        v20 = *(v19 + 12);
        if (v20)
        {
          v21 = *v19;
          v22 = *v19 + 8 * v20;
          do
          {
            v23 = *v21;
            *buf = 0;
            WTF::Logger::LogSiteIdentifier::toString((&v35 + 4), this);
            v36 = 0;
            WTF::String::String(v37, a3);
            v37[2] = 0;
            WTF::LogArgument<WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>::toString(a4, v38);
            WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v29, buf, 3uLL);
            (*(*v23 + 16))(v23, a1, 4, v29);
            WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v29, v24);
            for (i = 40; i != -8; i -= 16)
            {
              v26 = *&buf[i];
              *&buf[i] = 0;
              if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v26, v14);
              }
            }

            ++v21;
          }

          while (v21 != v22);
        }

        v27 = 1;
        atomic_compare_exchange_strong_explicit(v16, &v27, 0, memory_order_release, memory_order_relaxed);
        if (v27 != 1)
        {
          WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
        }

        break;
      }
    }
  }

  result = v33;
  v33 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v14);
    }
  }

  return result;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZNS_L11invokeAsyncIZN6WebKit25SourceBufferPrivateRemote25bufferedSamplesForTrackIdEyE3__0EEDaRNS_24SerialFunctionDispatcherEOT_RKNS_6Logger17LogSiteIdentifierEEUlvE_vJEED1Ev(uint64_t a1)
{
  *a1 = &unk_1F1129028;
  v2 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivate,(WTF::DestructionThread)1>::deref((v2 + 8));
  }

  WTF::NativePromiseProducer<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>::~NativePromiseProducer((a1 + 8));
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZNS_L11invokeAsyncIZN6WebKit25SourceBufferPrivateRemote25bufferedSamplesForTrackIdEyE3__0EEDaRNS_24SerialFunctionDispatcherEOT_RKNS_6Logger17LogSiteIdentifierEEUlvE_vJEED0Ev(uint64_t a1)
{
  *a1 = &unk_1F1129028;
  v2 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivate,(WTF::DestructionThread)1>::deref((v2 + 8));
  }

  WTF::NativePromiseProducer<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>::~NativePromiseProducer((a1 + 8));

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZNS_L11invokeAsyncIZN6WebKit25SourceBufferPrivateRemote25bufferedSamplesForTrackIdEyE3__0EEDaRNS_24SerialFunctionDispatcherEOT_RKNS_6Logger17LogSiteIdentifierEEUlvE_vJEE4callEv(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(v2 + 392);
  if (!v3)
  {
    v25 = 0;
LABEL_14:
    LOBYTE(v28) = 4;
    v31 = 0;
    *&v32 = 0;
    *(&v32 + 1) = "operator()";
    *&v33 = 0;
    WTF::NativePromise<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>::createAndReject<WebCore::PlatformMediaError,std::enable_if<true,void>>(&v24, &v28, &v31);
    goto LABEL_15;
  }

  WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(v3, *(v2 + 384), &v25);
  if (!v25)
  {
    goto LABEL_14;
  }

  v4 = atomic_load((v2 + 424));
  if (v4)
  {
    goto LABEL_14;
  }

  v5 = *(a1 + 64);
  WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(*(v2 + 392), *(v2 + 384), &v26);
  v6 = *(v26 + 32);
  v7 = *(v2 + 408);
  v31 = 0;
  *&v32 = 0;
  *(&v32 + 1) = "sendWithPromisedReply";
  *&v33 = 0;
  WTF::NativePromiseProducer<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>::NativePromiseProducer<std::enable_if<true,void>>(&v28, &v31);
  v8 = v28;
  if (v28)
  {
    atomic_fetch_add(v28 + 2, 1u);
    v9 = v28;
  }

  else
  {
    v9 = 0;
  }

  v24 = v8;
  v28 = 0;
  v32 = v29;
  v33 = v30;
  v10 = WTF::fastMalloc(0x30);
  *v10 = &unk_1F1129050;
  *(v10 + 8) = v9;
  v31 = 0;
  v11 = v33;
  *(v10 + 16) = v32;
  *(v10 + 32) = v11;
  v27[0] = v10;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
    return result;
  }

  v27[1] = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  WTF::NativePromiseProducer<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>::~NativePromiseProducer(&v31);
  v13 = IPC::Encoder::operator new(0x238, v12);
  *v13 = 1637;
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  *(v13 + 1) = v7;
  *(v13 + 68) = 0;
  *(v13 + 70) = 0;
  *(v13 + 69) = 0;
  IPC::Encoder::encodeHeader(v13);
  v31 = v13;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v13, v5);
  IPC::Connection::sendMessageWithAsyncReplyWithDispatcher(v6, &v31, v27, 0, 0);
  v15 = v31;
  v31 = 0;
  if (v15)
  {
    IPC::Encoder::~Encoder(v15, v14);
    bmalloc::api::tzoneFree(v22, v23);
  }

  v16 = v27[0];
  v27[0] = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  WTF::NativePromiseProducer<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>::~NativePromiseProducer(&v28);
  v18 = v26;
  v26 = 0;
  if (v18)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref((v18 + 24), v17);
  }

LABEL_15:
  v19 = v25;
  v25 = 0;
  if (v19)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref((v19 + 24), v17);
  }

  v20 = v24;
  v31 = 0;
  *&v32 = 0;
  *(&v32 + 1) = "invokeAsync proxy";
  *&v33 = 0;
  result = WTF::NativePromise<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>::chainTo(v24, a1 + 8, &v31);
  v24 = 0;
  if (v20)
  {
    if (atomic_fetch_add(v20 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v20 + 2);
      return (*(*v20 + 16))(v20);
    }
  }

  return result;
}

uint64_t WTF::NativePromise<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>::chainTo(atomic_uchar *a1, unint64_t a2, WTF::Logger::LogSiteIdentifier *a3)
{
  v4 = a1;
  v5 = 0;
  v71[1] = *MEMORY[0x1E69E9840];
  v6 = a1 + 48;
  atomic_compare_exchange_strong_explicit(a1 + 48, &v5, 1u, memory_order_acquire, memory_order_acquire);
  if (v5)
  {
    a1 = MEMORY[0x19EB01E30](a1 + 48);
  }

  *(v4 + 128) = 1;
  v7 = *a2;
  if (*a2)
  {
    atomic_fetch_add(v7 + 2, 1u);
  }

  v8 = WTF::NativePromiseBase::logChannel(a1);
  if (*v8)
  {
    v9 = v8[16] >= 4u;
  }

  else
  {
    v9 = 0;
  }

  if (!v9)
  {
    goto LABEL_59;
  }

  v10 = v8;
  WTF::Logger::LogSiteIdentifier::toString(&v59, a3);
  WTF::String::String(&v58, " invoking chainTo() [");
  WTF::LogArgument<WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>::toString(v4, &v57);
  WTF::String::String(&v56, " chainedPromise:");
  WTF::LogArgument<WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>::toString(v7, &v55);
  WTF::String::String(&v54, " isNothing:");
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  WTF::String::String(&v52, "]");
  result = WTF::tryMakeString<WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String>(&v59, &v58, &v57, &v56, &v55, &v54, &v53, &v52, &v60);
  if (!v60)
  {
    __break(0xC471u);
    return result;
  }

  v13 = v52;
  v52 = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v12);
  }

  v14 = v53;
  v53 = 0;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, v12);
  }

  v15 = v54;
  v54 = 0;
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, v12);
  }

  v16 = v55;
  v55 = 0;
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, v12);
  }

  v17 = v56;
  v56 = 0;
  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, v12);
  }

  v18 = v57;
  v57 = 0;
  if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v18, v12);
  }

  v19 = v58;
  v58 = 0;
  if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v19, v12);
  }

  v20 = v59;
  v59 = 0;
  if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v20, v12);
  }

  v21 = *(v10 + 4);
  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
  if (v22)
  {
    WTF::String::utf8();
    v24 = v51[0] ? v51[0] + 16 : 0;
    *buf = 136446210;
    v62 = v24;
    _os_log_impl(&dword_19D52D000, v21, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
    v22 = v51[0];
    v51[0] = 0;
    if (v22)
    {
      if (*v22 == 1)
      {
        v22 = WTF::fastFree(v22, v23);
      }

      else
      {
        --*v22;
      }
    }
  }

  if (*v10 && v10[16] >= 4u)
  {
    v25 = MEMORY[0x1E696EBC0];
    while (1)
    {
      v26 = *v25;
      if (v26)
      {
        break;
      }

      v27 = *v25;
      atomic_compare_exchange_strong_explicit(v25, &v27, v26 | 1, memory_order_acquire, memory_order_acquire);
      if (v27 == v26)
      {
        v48 = a2;
        v49 = v6;
        v28 = WTF::Logger::observers(v22);
        v29 = *(v28 + 12);
        if (v29)
        {
          v30 = *v28;
          v31 = *v28 + 8 * v29;
          do
          {
            v32 = *v30;
            *buf = 0;
            WTF::Logger::LogSiteIdentifier::toString((&v62 + 4), a3);
            v63 = 0;
            WTF::String::String(v64, " invoking chainTo() [");
            v64[2] = 0;
            WTF::LogArgument<WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>::toString(v4, &v65);
            v66 = 0;
            WTF::String::String(v67, " chainedPromise:");
            v67[2] = 0;
            WTF::LogArgument<WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>::toString(v7, &v68);
            v69 = 0;
            WTF::String::String(v70, " isNothing:");
            v70[2] = 0;
            WTF::StringImpl::createWithoutCopyingNonEmpty();
            v70[6] = 0;
            WTF::String::String(v71, "]");
            WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v51, buf, 8uLL);
            (*(*v32 + 16))(v32, v10, 4, v51);
            WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v51, v33);
            for (i = 120; i != -8; i -= 16)
            {
              v35 = *&buf[i];
              *&buf[i] = 0;
              if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v35, v23);
              }
            }

            ++v30;
          }

          while (v30 != v31);
        }

        v36 = 1;
        atomic_compare_exchange_strong_explicit(v25, &v36, 0, memory_order_release, memory_order_relaxed);
        a2 = v48;
        v6 = v49;
        if (v36 != 1)
        {
          WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
        }

        break;
      }
    }
  }

  v37 = v60;
  v60 = 0;
  if (v37 && atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v37, v23);
    if (v7)
    {
LABEL_60:
      if (atomic_fetch_add(v7 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v7 + 2);
        (*(*v7 + 16))(v7);
      }
    }
  }

  else
  {
LABEL_59:
    if (v7)
    {
      goto LABEL_60;
    }
  }

  v38 = atomic_load((v4 + 129));
  v39 = *a2;
  if (*a2)
  {
    atomic_fetch_add(v39 + 2, 1u);
    result = WTF::NativePromise<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>::setDispatchMode(v39, v38, a3);
    if (atomic_fetch_add(v39 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v39 + 2);
      result = (*(*v39 + 16))(v39);
    }
  }

  else
  {
    result = WTF::NativePromise<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>::setDispatchMode(0, v38, a3);
  }

  if (*(v4 + 80))
  {
    result = WTF::NativePromise<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>::settleChainedPromise(v4, a2);
  }

  else
  {
    v40 = *(v4 + 124);
    if (v40 == *(v4 + 120))
    {
      result = WTF::Vector<WTF::NativePromiseProducer<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(v4 + 112, v40 + 1, a2);
      v41 = *(v4 + 112) + 40 * *(v4 + 124);
      v42 = *result;
      *result = 0;
      *v41 = v42;
      v43 = *(result + 24);
      *(v41 + 8) = *(result + 8);
      *(v41 + 24) = v43;
    }

    else
    {
      v44 = *(v4 + 112) + 40 * v40;
      v45 = *a2;
      *a2 = 0;
      *v44 = v45;
      v46 = *(a2 + 8);
      *(v44 + 24) = *(a2 + 24);
      *(v44 + 8) = v46;
    }

    ++*(v4 + 124);
  }

  v47 = 1;
  atomic_compare_exchange_strong_explicit(v6, &v47, 0, memory_order_release, memory_order_relaxed);
  if (v47 != 1)
  {
    return WTF::Lock::unlockSlow(v6);
  }

  return result;
}

WTF::Lock *WTF::NativePromise<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>::createAndReject<WebCore::PlatformMediaError,std::enable_if<true,void>>(uint64_t *a1, char *a2, WTF::Logger::LogSiteIdentifier *a3)
{
  v49[2] = *MEMORY[0x1E69E9840];
  v6 = WTF::fastMalloc(0x88);
  v7 = WTF::NativePromise<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>::NativePromise(v6, a3);
  v8 = 0;
  *a1 = v7;
  v9 = (v7 + 48);
  v38 = v9;
  v39 = 1;
  atomic_compare_exchange_strong_explicit(v9, &v8, 1u, memory_order_acquire, memory_order_acquire);
  if (v8)
  {
    v9 = MEMORY[0x19EB01E30]();
  }

  v10 = WTF::NativePromiseBase::logChannel(v9);
  if (*v10)
  {
    v12 = v10[16] >= 4u;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    v13 = v10;
    WTF::Logger::LogSiteIdentifier::toString(&v43, a3);
    WTF::String::String(&v42, " rejecting ");
    WTF::LogArgument<WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>::toString(v6, &v41);
    WTF::makeString<WTF::String,WTF::String,WTF::String>(&v43, &v42, &v41, &v44);
    v15 = v41;
    v41 = 0;
    if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v14);
    }

    v16 = v42;
    v42 = 0;
    if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v14);
    }

    v17 = v43;
    v43 = 0;
    if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, v14);
    }

    v18 = *(v13 + 4);
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    if (v19)
    {
      WTF::String::utf8();
      v20 = v40[0] ? v40[0] + 16 : 0;
      *buf = 136446210;
      v46 = v20;
      _os_log_impl(&dword_19D52D000, v18, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
      v19 = v40[0];
      v40[0] = 0;
      if (v19)
      {
        if (*v19 == 1)
        {
          v19 = WTF::fastFree(v19, v11);
        }

        else
        {
          --*v19;
        }
      }
    }

    if (*v13 && v13[16] >= 4u)
    {
      v21 = MEMORY[0x1E696EBC0];
      while (1)
      {
        v22 = *v21;
        if (v22)
        {
          break;
        }

        v23 = *v21;
        atomic_compare_exchange_strong_explicit(v21, &v23, v22 | 1, memory_order_acquire, memory_order_acquire);
        if (v23 == v22)
        {
          v24 = WTF::Logger::observers(v19);
          v25 = *(v24 + 12);
          if (v25)
          {
            v26 = *v24;
            v27 = *v24 + 8 * v25;
            do
            {
              v28 = *v26;
              *buf = 0;
              WTF::Logger::LogSiteIdentifier::toString((&v46 + 4), a3);
              v47 = 0;
              WTF::String::String(v48, " rejecting ");
              v48[2] = 0;
              WTF::LogArgument<WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>::toString(v6, v49);
              WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v40, buf, 3uLL);
              (*(*v28 + 16))(v28, v13, 4, v40);
              WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v40, v29);
              for (i = 40; i != -8; i -= 16)
              {
                v31 = *&buf[i];
                *&buf[i] = 0;
                if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v31, v11);
                }
              }

              ++v26;
            }

            while (v26 != v27);
          }

          v32 = 1;
          atomic_compare_exchange_strong_explicit(v21, &v32, 0, memory_order_release, memory_order_relaxed);
          if (v32 != 1)
          {
            WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
          }

          break;
        }
      }
    }

    v33 = v44;
    v44 = 0;
    if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v33, v11);
    }
  }

  v34 = *a2;
  if (*(v6 + 80) > 1u)
  {
    if (*(v6 + 80) == 2)
    {
      v35 = *(v6 + 56);
      *(v6 + 56) = 0;
      if (v35)
      {
        (*(*v35 + 8))(v35);
      }
    }
  }

  else if (*(v6 + 80) && !*(v6 + 72))
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v6 + 56, v11);
  }

  *(v6 + 56) = v34;
  v36 = 1;
  *(v6 + 72) = 1;
  *(v6 + 80) = 1;
  result = WTF::NativePromise<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>::dispatchAll(v6, &v38);
  if (v39 == 1)
  {
    result = v38;
    atomic_compare_exchange_strong_explicit(v38, &v36, 0, memory_order_release, memory_order_relaxed);
    if (v36 != 1)
    {
      return WTF::Lock::unlockSlow(result);
    }
  }

  return result;
}

uint64_t WTF::NativePromise<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>::dispatchAll(uint64_t a1, atomic_uchar *volatile *a2)
{
  v18 = &v20;
  v19 = 1;
  __dst = &v23;
  v22 = 1;
  WTF::VectorBuffer<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::FastMalloc>::adopt(&__dst, (a1 + 88));
  v4 = *(a1 + 100);
  if (v4)
  {
    WTF::VectorDestructor<true,WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>>::destruct(*(a1 + 88), (*(a1 + 88) + 8 * v4));
  }

  WTF::VectorBuffer<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::FastMalloc>::adopt((a1 + 88), &v18);
  WTF::Vector<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v18, v5);
  *&v6 = 0;
  v7 = *(a1 + 112);
  v18 = v7;
  v8 = *(a1 + 124);
  LODWORD(v19) = *(a1 + 120);
  HIDWORD(v19) = v8;
  v17 = v6;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  WTF::Vector<WTF::NativePromiseProducer<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v17, v9);
  if (HIDWORD(v22))
  {
    v11 = __dst;
    v12 = 8 * HIDWORD(v22);
    do
    {
      v13 = *v11++;
      WTF::NativePromise<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>::ThenCallbackBase::dispatch(v13, a1, a2);
      v12 -= 8;
    }

    while (v12);
  }

  if (v8)
  {
    v14 = 40 * v8;
    do
    {
      WTF::NativePromise<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>::settleChainedPromise(a1, v7);
      v7 += 5;
      v14 -= 40;
    }

    while (v14);
  }

  WTF::Vector<WTF::NativePromiseProducer<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v18, v10);
  return WTF::Vector<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&__dst, v15);
}

atomic_uint **WTF::NativePromise<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>::settleChainedPromise(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  *a2 = 0;
  v9 = v2;
  v3 = *(a2 + 24);
  v10 = *(a2 + 8);
  v11 = v3;
  if (v2)
  {
    atomic_fetch_add(v2 + 2, 1u);
    v5 = 0;
    v6 = 0;
    v7 = "<chained promise>";
    v8 = 0;
    WTF::NativePromise<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>::settleAsChainedPromise<WTF::NativePromise<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>::Storage>(v2, a1 + 56, &v5);
    if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2 + 2);
      (*(*v2 + 16))(v2);
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = "<chained promise>";
    v8 = 0;
    WTF::NativePromise<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>::settleAsChainedPromise<WTF::NativePromise<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>::Storage>(0, a1 + 56, &v5);
  }

  return WTF::NativePromiseProducer<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>::~NativePromiseProducer(&v9);
}

WTF::Lock *WTF::NativePromise<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>::settleAsChainedPromise<WTF::NativePromise<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>::Storage>(unsigned __int8 *a1, uint64_t a2, WTF::Logger::LogSiteIdentifier *a3)
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
    v10 = v8[16] >= 4u;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [27],WTF::NativePromise<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>>(v8, a3, " settling chained promise ", a1);
  }

  v11 = a1[80];
  v12 = *(a2 + 24);
  if (v11 != 255 || v12 != 255)
  {
    switch(v12)
    {
      case 255:
        if (a1[80] > 1u)
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

        else if (a1[80])
        {
          if (!a1[72])
          {
            WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 56), v9);
          }

          a1[72] = -1;
        }

        v15 = -1;
        goto LABEL_29;
      case 2:
        if (a1[80] > 1u)
        {
          if (v11 != 255)
          {
            v21 = *a2;
            *a2 = 0;
            v22 = *(a1 + 7);
            *(a1 + 7) = v21;
            if (v22)
            {
              (*(*v22 + 8))(v22);
            }

            goto LABEL_30;
          }
        }

        else if (a1[80])
        {
          if (!a1[72])
          {
            WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 56), v9);
          }

          a1[72] = -1;
        }

        v19 = *a2;
        *a2 = 0;
        *(a1 + 7) = v19;
        v15 = 2;
        goto LABEL_29;
      case 1:
        if (a1[80] > 1u)
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

        else if (a1[80])
        {
          mpark::detail::move_assignment<mpark::detail::traits<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError>,(mpark::detail::Trait)1>::move_assignment(v25, a2);
          mpark::detail::move_assignment<mpark::detail::traits<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError>,(mpark::detail::Trait)1>::move_assignment(v26, v25);
          mpark::variant<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError>::operator=(v25, a1 + 56);
          mpark::variant<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError>::operator=((a1 + 56), v26);
          if (!v26[16])
          {
            WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v26, v13);
          }

          if (!v25[16])
          {
            WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v25, v13);
          }

          goto LABEL_30;
        }

        a1[80] = -1;
        mpark::detail::move_assignment<mpark::detail::traits<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError>,(mpark::detail::Trait)1>::move_assignment((a1 + 56), a2);
        v15 = 1;
LABEL_29:
        a1[80] = v15;
        goto LABEL_30;
    }

    if (a1[80] > 1u)
    {
      if (v11 == 2)
      {
        v20 = *(a1 + 7);
        *(a1 + 7) = 0;
        if (v20)
        {
          (*(*v20 + 8))(v20);
        }
      }
    }

    else
    {
      if (!a1[80])
      {
        goto LABEL_30;
      }

      if (!a1[72])
      {
        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 56), v9);
      }

      a1[72] = -1;
    }

    a1[80] = 0;
  }

LABEL_30:
  result = WTF::NativePromise<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>::dispatchAll(a1, &v23);
  v17 = v24;
  if (v24 == 1)
  {
    result = v23;
    atomic_compare_exchange_strong_explicit(v23, &v17, 0, memory_order_release, memory_order_relaxed);
    if (v17 != 1)
    {
      return WTF::Lock::unlockSlow(result);
    }
  }

  return result;
}

uint64_t mpark::variant<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError>::operator=(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *(a1 + 16);
  v5 = a2[16];
  if (v4 == 255)
  {
    if (v5 != 255)
    {
      if (!a2[16])
      {
        goto LABEL_14;
      }

      goto LABEL_16;
    }
  }

  else
  {
    if (v5 == 255)
    {
      if (!*(a1 + 16))
      {
        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1, a2);
      }

      v6 = -1;
      goto LABEL_17;
    }

    if (a2[16])
    {
      if (*(a1 + 16))
      {
        if (v4 == 1)
        {
          *a1 = *a2;
          return a1;
        }
      }

      else
      {
        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1, a2);
      }

LABEL_16:
      *a1 = *a2;
      v6 = 1;
LABEL_17:
      *(a1 + 16) = v6;
      return a1;
    }

    if (*(a1 + 16))
    {
LABEL_14:
      *(a1 + 16) = -1;
      *a1 = 0;
      *(a1 + 8) = 0;
      WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1, a2);
      *(a1 + 16) = 0;
      return a1;
    }

    v8 = *(a1 + 12);
    if (v8)
    {
      WTF::VectorDestructor<true,WTF::String>::destruct(*a1, (*a1 + 8 * v8));
    }

    WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebCore::MediaPromiseConverter,Messages::RemoteSourceBufferProxy::BufferedSamplesForTrackId,WTF::NativePromise<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>>(WTF::NativePromise<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1},void,IPC::Connection*,std::unique_ptr<IPC::Decoder> &>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F1129050;
  WTF::NativePromiseProducer<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>::~NativePromiseProducer((a1 + 8));
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebCore::MediaPromiseConverter,Messages::RemoteSourceBufferProxy::BufferedSamplesForTrackId,WTF::NativePromise<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>>(WTF::NativePromise<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1},void,IPC::Connection*,std::unique_ptr<IPC::Decoder> &>::~CallableWrapper(atomic_uint **a1)
{
  *a1 = &unk_1F1129050;
  WTF::NativePromiseProducer<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>::~NativePromiseProducer(a1 + 1);

  return WTF::fastFree(a1, v2);
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebCore::MediaPromiseConverter,Messages::RemoteSourceBufferProxy::BufferedSamplesForTrackId,WTF::NativePromise<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>>(WTF::NativePromise<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1},void,IPC::Connection*,std::unique_ptr<IPC::Decoder> &>::call(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  *a3 = 0;
  v5 = WTF::fastMalloc(0x10);
  *v5 = &unk_1F1129078;
  v5[1] = v4;
  v8 = v5;
  v7[0] = 0;
  v7[1] = 0;
  v7[2] = "operator()";
  v7[3] = 0;
  WTF::NativePromiseProducer<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>::settleWithFunction<std::enable_if<true,void>>((a1 + 8), &v8, v7);
  result = v8;
  if (v8)
  {
    return (*(*v8 + 8))(v8);
  }

  return result;
}

unsigned __int8 *WTF::NativePromiseProducer<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>::settleWithFunction<std::enable_if<true,void>>(atomic_uchar *a1, uint64_t *a2, WTF::Logger::LogSiteIdentifier *a3)
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
      WTF::LogArgument<WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>::toString(v10, &v37);
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
                WTF::LogArgument<WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>::toString(v10, v45);
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
    result = WTF::NativePromise<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>::settleWithFunction(v10, a2, a3);
    if (atomic_fetch_add(v10 + 2, 0xFFFFFFFF) != 1)
    {
      return result;
    }

    atomic_store(1u, v10 + 2);
    goto LABEL_58;
  }

  return WTF::NativePromise<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>::settleWithFunction(0, a2, a3);
}

WTF::Lock *WTF::NativePromise<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>::settleWithFunction(uint64_t a1, uint64_t *a2, WTF::Logger::LogSiteIdentifier *a3)
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
    WTF::LogArgument<WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>::toString(a1, &v39);
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
              WTF::LogArgument<WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>::toString(a1, v47);
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
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 56, v9);
    }

    *(a1 + 72) = -1;
  }

  v33 = *a2;
  *a2 = 0;
  *(a1 + 56) = v33;
  *(a1 + 80) = 2;
  result = WTF::NativePromise<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>::dispatchAll(a1, &v36);
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

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebCore::MediaPromiseConverter,Messages::RemoteSourceBufferProxy::BufferedSamplesForTrackId,WTF::NativePromise<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>>(WTF::NativePromise<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1}::operator()(IPC::Connection*,std::unique_ptr<IPC::Decoder> &)::{lambda(void)#1},std::experimental::fundamentals_v3::expected<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError>>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F1129078;
  std::unique_ptr<IPC::Decoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebCore::MediaPromiseConverter,Messages::RemoteSourceBufferProxy::BufferedSamplesForTrackId,WTF::NativePromise<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>>(WTF::NativePromise<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1}::operator()(IPC::Connection*,std::unique_ptr<IPC::Decoder> &)::{lambda(void)#1},std::experimental::fundamentals_v3::expected<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError>>::~CallableWrapper(IPC::Decoder **a1)
{
  *a1 = &unk_1F1129078;
  std::unique_ptr<IPC::Decoder>::reset[abi:sn200100](a1 + 1, 0);

  return WTF::fastFree(a1, v2);
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebCore::MediaPromiseConverter,Messages::RemoteSourceBufferProxy::BufferedSamplesForTrackId,WTF::NativePromise<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>>(WTF::NativePromise<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1}::operator()(IPC::Connection*,std::unique_ptr<IPC::Decoder> &)::{lambda(void)#1},std::experimental::fundamentals_v3::expected<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError>>::call@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(result + 8);
  if (v3 && *v3 && (result = IPC::Decoder::decode<std::tuple<std::experimental::fundamentals_v3::expected<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError>>>(v5, v3), v6 == 1))
  {
    result = mpark::detail::move_assignment<mpark::detail::traits<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError>,(mpark::detail::Trait)1>::move_assignment(a2, v5);
    if ((v6 & 1) != 0 && !v5[16])
    {
      return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v5, v4);
    }
  }

  else
  {
    *a2 = 4;
    a2[16] = 1;
  }

  return result;
}

uint64_t IPC::Decoder::decode<std::tuple<std::experimental::fundamentals_v3::expected<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError>>>(_BYTE *a1, IPC::Decoder *this)
{
  v4 = *(this + 2);
  v5 = *this;
  v6 = *(this + 1);
  if (v6 <= &v4[-v5])
  {
    *this = 0;
    *(this + 1) = 0;
    v22 = *(this + 3);
    if (v22)
    {
      if (v6)
      {
        (*(*v22 + 16))(v22);
        v5 = *this;
        v6 = *(this + 1);
        goto LABEL_29;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
LABEL_29:
    *this = 0;
    *(this + 1) = 0;
    v23 = *(this + 3);
    if (v23)
    {
      if (v6)
      {
        (*(*v23 + 16))(v23, v5);
        v5 = *this;
        v6 = *(this + 1);
        goto LABEL_32;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
LABEL_32:
    *this = 0;
    *(this + 1) = 0;
    v24 = *(this + 3);
    if (v24 && v6)
    {
      (*(*v24 + 16))(v24, v5);
    }

    goto LABEL_8;
  }

  *(this + 2) = v4 + 1;
  if (!v4)
  {
    goto LABEL_29;
  }

  v7 = *v4;
  if (v7 >= 2)
  {
    goto LABEL_32;
  }

  if (v7)
  {
    IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(this, &v28);
    if ((v30 & 1) == 0)
    {
      v19 = *this;
      v20 = *(this + 1);
      *this = 0;
      *(this + 1) = 0;
      v21 = *(this + 3);
      if (!v21)
      {
        goto LABEL_8;
      }

      if (!v20)
      {
        goto LABEL_8;
      }

      (*(*v21 + 16))(v21, v19);
      if ((v30 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    v25[0] = v28;
    v9 = v29;
    v28 = 0;
    v29 = 0;
    v25[1] = v9;
    v26 = 0;
    v27 = 1;
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v28, v8);
LABEL_16:
    result = mpark::detail::move_assignment<mpark::detail::traits<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError>,(mpark::detail::Trait)1>::move_assignment(a1, v25);
    v18 = v27;
    a1[24] = 1;
    if ((v18 & 1) == 0)
    {
      return result;
    }

    if (v26)
    {
      return result;
    }

    result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v25, v17);
    if (a1[24])
    {
      return result;
    }

    goto LABEL_10;
  }

  v10 = IPC::Decoder::decode<WebCore::PlatformMediaError>(this);
  if ((v10 & 0x100) != 0)
  {
    LOBYTE(v25[0]) = v10;
    v26 = 1;
    v27 = 1;
    goto LABEL_16;
  }

LABEL_8:
  v11 = *this;
  v12 = *(this + 1);
  *this = 0;
  *(this + 1) = 0;
  v13 = *(this + 3);
  if (v13 && v12)
  {
    (*(*v13 + 16))(v13, v11);
  }

  *a1 = 0;
  a1[24] = 0;
LABEL_10:
  v14 = *(this + 1);
  *this = 0;
  *(this + 1) = 0;
  result = *(this + 3);
  if (result && v14)
  {
    v16 = *(*result + 16);

    return v16();
  }

  return result;
}

unint64_t WTF::Vector<WTF::NativePromiseProducer<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || &v5[10 * *(a1 + 12)] <= a3)
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

    WTF::Vector<WTF::NativePromiseProducer<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WTF::NativePromiseProducer<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

atomic_uint **WTF::Vector<WTF::NativePromiseProducer<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(atomic_uint **result, unint64_t a2)
{
  if (*(result + 2) < a2)
  {
    if (a2 >= 0x6666667)
    {
      __break(0xC471u);
    }

    else
    {
      v2 = result;
      v3 = *result;
      v4 = *(result + 3);
      v5 = 40 * a2;
      result = WTF::fastMalloc((40 * a2));
      *(v2 + 2) = v5 / 0x28;
      *v2 = result;
      if (v4)
      {
        v7 = result;
        result = v3;
        do
        {
          v8 = *result;
          *result = 0;
          *v7 = v8;
          v9 = *(result + 1);
          *(v7 + 3) = *(result + 3);
          *(v7 + 1) = v9;
          v7 += 5;
          result = WTF::NativePromiseProducer<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>::~NativePromiseProducer(result) + 5;
        }

        while (result != &v3[10 * v4]);
      }

      if (v3)
      {
        if (*v2 == v3)
        {
          *v2 = 0;
          *(v2 + 2) = 0;
        }

        return WTF::fastFree(v3, v6);
      }
    }
  }

  return result;
}

atomic_uint **WTF::NativePromiseProducer<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>::~NativePromiseProducer(atomic_uint **a1)
{
  WTF::NativePromiseProducer<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>::assertIsDead(a1);
  v2 = *a1;
  *a1 = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 16))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZNS_L11invokeAsyncIZN6WebKit25SourceBufferPrivateRemote25enqueuedSamplesForTrackIDEyE3__0EEDaRNS_24SerialFunctionDispatcherEOT_RKNS_6Logger17LogSiteIdentifierEEUlvE_vJEED1Ev(uint64_t a1)
{
  *a1 = &unk_1F11290A0;
  v2 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivate,(WTF::DestructionThread)1>::deref((v2 + 8));
  }

  WTF::NativePromiseProducer<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>::~NativePromiseProducer((a1 + 8));
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZNS_L11invokeAsyncIZN6WebKit25SourceBufferPrivateRemote25enqueuedSamplesForTrackIDEyE3__0EEDaRNS_24SerialFunctionDispatcherEOT_RKNS_6Logger17LogSiteIdentifierEEUlvE_vJEED0Ev(uint64_t a1)
{
  *a1 = &unk_1F11290A0;
  v2 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivate,(WTF::DestructionThread)1>::deref((v2 + 8));
  }

  WTF::NativePromiseProducer<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>::~NativePromiseProducer((a1 + 8));

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZNS_L11invokeAsyncIZN6WebKit25SourceBufferPrivateRemote25enqueuedSamplesForTrackIDEyE3__0EEDaRNS_24SerialFunctionDispatcherEOT_RKNS_6Logger17LogSiteIdentifierEEUlvE_vJEE4callEv(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(v2 + 392);
  if (!v3)
  {
    v25 = 0;
LABEL_14:
    LOBYTE(v28) = 4;
    v31 = 0;
    *&v32 = 0;
    *(&v32 + 1) = "operator()";
    *&v33 = 0;
    WTF::NativePromise<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>::createAndReject<WebCore::PlatformMediaError,std::enable_if<true,void>>(&v24, &v28, &v31);
    goto LABEL_15;
  }

  WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(v3, *(v2 + 384), &v25);
  if (!v25)
  {
    goto LABEL_14;
  }

  v4 = atomic_load((v2 + 424));
  if (v4)
  {
    goto LABEL_14;
  }

  v5 = *(a1 + 64);
  WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(*(v2 + 392), *(v2 + 384), &v26);
  v6 = *(v26 + 32);
  v7 = *(v2 + 408);
  v31 = 0;
  *&v32 = 0;
  *(&v32 + 1) = "sendWithPromisedReply";
  *&v33 = 0;
  WTF::NativePromiseProducer<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>::NativePromiseProducer<std::enable_if<true,void>>(&v28, &v31);
  v8 = v28;
  if (v28)
  {
    atomic_fetch_add(v28 + 2, 1u);
    v9 = v28;
  }

  else
  {
    v9 = 0;
  }

  v24 = v8;
  v28 = 0;
  v32 = v29;
  v33 = v30;
  v10 = WTF::fastMalloc(0x30);
  *v10 = &unk_1F11290C8;
  *(v10 + 8) = v9;
  v31 = 0;
  v11 = v33;
  *(v10 + 16) = v32;
  *(v10 + 32) = v11;
  v27[0] = v10;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
    return result;
  }

  v27[1] = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  WTF::NativePromiseProducer<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>::~NativePromiseProducer(&v31);
  v13 = IPC::Encoder::operator new(0x238, v12);
  *v13 = 1641;
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  *(v13 + 1) = v7;
  *(v13 + 68) = 0;
  *(v13 + 70) = 0;
  *(v13 + 69) = 0;
  IPC::Encoder::encodeHeader(v13);
  v31 = v13;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v13, v5);
  IPC::Connection::sendMessageWithAsyncReplyWithDispatcher(v6, &v31, v27, 0, 0);
  v15 = v31;
  v31 = 0;
  if (v15)
  {
    IPC::Encoder::~Encoder(v15, v14);
    bmalloc::api::tzoneFree(v22, v23);
  }

  v16 = v27[0];
  v27[0] = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  WTF::NativePromiseProducer<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>::~NativePromiseProducer(&v28);
  v18 = v26;
  v26 = 0;
  if (v18)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref((v18 + 24), v17);
  }

LABEL_15:
  v19 = v25;
  v25 = 0;
  if (v19)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref((v19 + 24), v17);
  }

  v20 = v24;
  v31 = 0;
  *&v32 = 0;
  *(&v32 + 1) = "invokeAsync proxy";
  *&v33 = 0;
  result = WTF::NativePromise<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>::chainTo(v24, a1 + 8, &v31);
  v24 = 0;
  if (v20)
  {
    if (atomic_fetch_add(v20 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v20 + 2);
      return (*(*v20 + 16))(v20);
    }
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebCore::MediaPromiseConverter,Messages::RemoteSourceBufferProxy::EnqueuedSamplesForTrackID,WTF::NativePromise<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>>(WTF::NativePromise<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1},void,IPC::Connection*,std::unique_ptr<IPC::Decoder> &>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F11290C8;
  WTF::NativePromiseProducer<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>::~NativePromiseProducer((a1 + 8));
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebCore::MediaPromiseConverter,Messages::RemoteSourceBufferProxy::EnqueuedSamplesForTrackID,WTF::NativePromise<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>>(WTF::NativePromise<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1},void,IPC::Connection*,std::unique_ptr<IPC::Decoder> &>::~CallableWrapper(atomic_uint **a1)
{
  *a1 = &unk_1F11290C8;
  WTF::NativePromiseProducer<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>::~NativePromiseProducer(a1 + 1);

  return WTF::fastFree(a1, v2);
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebCore::MediaPromiseConverter,Messages::RemoteSourceBufferProxy::EnqueuedSamplesForTrackID,WTF::NativePromise<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>>(WTF::NativePromise<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1},void,IPC::Connection*,std::unique_ptr<IPC::Decoder> &>::call(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  *a3 = 0;
  v5 = WTF::fastMalloc(0x10);
  *v5 = &unk_1F11290F0;
  v5[1] = v4;
  v8 = v5;
  v7[0] = 0;
  v7[1] = 0;
  v7[2] = "operator()";
  v7[3] = 0;
  WTF::NativePromiseProducer<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>::settleWithFunction<std::enable_if<true,void>>((a1 + 8), &v8, v7);
  result = v8;
  if (v8)
  {
    return (*(*v8 + 8))(v8);
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebCore::MediaPromiseConverter,Messages::RemoteSourceBufferProxy::EnqueuedSamplesForTrackID,WTF::NativePromise<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>>(WTF::NativePromise<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1}::operator()(IPC::Connection*,std::unique_ptr<IPC::Decoder> &)::{lambda(void)#1},std::experimental::fundamentals_v3::expected<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError>>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F11290F0;
  std::unique_ptr<IPC::Decoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebCore::MediaPromiseConverter,Messages::RemoteSourceBufferProxy::EnqueuedSamplesForTrackID,WTF::NativePromise<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>>(WTF::NativePromise<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1}::operator()(IPC::Connection*,std::unique_ptr<IPC::Decoder> &)::{lambda(void)#1},std::experimental::fundamentals_v3::expected<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError>>::~CallableWrapper(IPC::Decoder **a1)
{
  *a1 = &unk_1F11290F0;
  std::unique_ptr<IPC::Decoder>::reset[abi:sn200100](a1 + 1, 0);

  return WTF::fastFree(a1, v2);
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebCore::MediaPromiseConverter,Messages::RemoteSourceBufferProxy::EnqueuedSamplesForTrackID,WTF::NativePromise<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>>(WTF::NativePromise<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1}::operator()(IPC::Connection*,std::unique_ptr<IPC::Decoder> &)::{lambda(void)#1},std::experimental::fundamentals_v3::expected<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError>>::call@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(result + 8);
  if (v3 && *v3 && (result = IPC::Decoder::decode<std::tuple<std::experimental::fundamentals_v3::expected<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError>>>(v5, v3), v6 == 1))
  {
    result = mpark::detail::move_assignment<mpark::detail::traits<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError>,(mpark::detail::Trait)1>::move_assignment(a2, v5);
    if ((v6 & 1) != 0 && !v5[16])
    {
      return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v5, v4);
    }
  }

  else
  {
    *a2 = 4;
    a2[16] = 1;
  }

  return result;
}

void WebCore::VideoTrackPrivate::~VideoTrackPrivate(WebCore::VideoTrackPrivate *this, WTF::StringImpl *a2)
{
  *this = &unk_1F1129118;
  v3 = *(this + 19);
  *(this + 19) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  if (*(this + 144) == 1)
  {
    v4 = *(this + 17);
    *(this + 17) = 0;
    if (v4)
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

  v5 = *(this + 8);
  *(this + 8) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  WebCore::TrackPrivateBase::~TrackPrivateBase(this, a2);
}

{
  *this = &unk_1F1129118;
  v3 = *(this + 19);
  *(this + 19) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  if (*(this + 144) == 1)
  {
    v4 = *(this + 17);
    *(this + 17) = 0;
    if (v4)
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

  v5 = *(this + 8);
  *(this + 8) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  WebCore::TrackPrivateBase::~TrackPrivateBase(this, a2);

  bmalloc::api::tzoneFree(v6, v7);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN7WebCore17VideoTrackPrivate11setSelectedEbEUlRT_E_vJRNS2_22TrackPrivateBaseClientEEE4callES8_(uint64_t a1, uint64_t a2)
{
  if ((*(*a2 + 16))(a2) == 2)
  {
    v4 = *(a1 + 8);
    v5 = *(*a2 + 56);

    return v5(a2, v4);
  }

  else
  {
    result = 96;
    __break(0xC471u);
  }

  return result;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN7WebCore17VideoTrackPrivate16setConfigurationEONS2_31PlatformVideoTrackConfigurationEEUlRT_E_vJRNS2_22TrackPrivateBaseClientEEED1Ev(uint64_t a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F11291E8;
  if (*(a1 + 88) == 1)
  {
    v3 = *(a1 + 80);
    *(a1 + 80) = 0;
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

  v4 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN7WebCore17VideoTrackPrivate16setConfigurationEONS2_31PlatformVideoTrackConfigurationEEUlRT_E_vJRNS2_22TrackPrivateBaseClientEEED0Ev(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F11291E8;
  if (*(this + 88) == 1)
  {
    v3 = *(this + 10);
    *(this + 10) = 0;
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

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN7WebCore17VideoTrackPrivate16setConfigurationEONS2_31PlatformVideoTrackConfigurationEEUlRT_E_vJRNS2_22TrackPrivateBaseClientEEE4callESA_(uint64_t a1, uint64_t a2)
{
  if ((*(*a2 + 16))(a2) == 2)
  {
    v4 = *(*a2 + 64);

    return v4(a2, a1 + 8);
  }

  else
  {
    result = 96;
    __break(0xC471u);
  }

  return result;
}

unint64_t WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::RemoteRemoteCommandListener,(WTF::DestructionThread)0>::controlBlock(atomic_ullong *a1)
{
  result = *a1;
  if (result)
  {
    result = WTF::fastMalloc(0x20);
    *result = 0;
    *(result + 8) = xmmword_19E7014F0;
    *(result + 24) = a1 - 10;
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

uint64_t WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::RemoteRemoteCommandListener,(WTF::DestructionThread)0>::weakRefCount(atomic_ullong *a1)
{
  if (*a1)
  {
    return 0;
  }

  v1 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::RemoteRemoteCommandListener,(WTF::DestructionThread)0>::controlBlock(a1);

  return WTF::ThreadSafeWeakPtrControlBlock::weakRefCount(v1);
}

uint64_t WTF::HashTable<WebCore::MediaPlayerMediaEngineIdentifier,WTF::KeyValuePair<WebCore::MediaPlayerMediaEngineIdentifier,std::unique_ptr<WebKit::RemoteMediaPlayerMIMETypeCache>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::MediaPlayerMediaEngineIdentifier,std::unique_ptr<WebKit::RemoteMediaPlayerMIMETypeCache>>>,WTF::IntHash<WebCore::MediaPlayerMediaEngineIdentifier>,WTF::HashMap<WebCore::MediaPlayerMediaEngineIdentifier,std::unique_ptr<WebKit::RemoteMediaPlayerMIMETypeCache>,WTF::IntHash<WebCore::MediaPlayerMediaEngineIdentifier>,WTF::StrongEnumHashTraits<WebCore::MediaPlayerMediaEngineIdentifier>,WTF::HashTraits<std::unique_ptr<WebKit::RemoteMediaPlayerMIMETypeCache>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::StrongEnumHashTraits<WebCore::MediaPlayerMediaEngineIdentifier>,WTF::FastMalloc>::expand(uint64_t *a1, unsigned __int8 *a2)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = *(v4 - 4);
    v6 = *(v4 - 12);
    if (v5)
    {
      v7 = v5 << (6 * v6 >= (2 * v5));
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = 8;
LABEL_6:
  v8 = WTF::fastMalloc((16 * v7 + 16));
  if (v7)
  {
    v10 = v7;
    v11 = v8 + 6;
    do
    {
      *(v11 - 8) = -1;
      *v11 = 0;
      v11 += 2;
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
      v14 = (v4 + 16 * v12);
      v15 = *v14;
      if (v15 != 254)
      {
        if (v15 == 255)
        {
          v16 = *(v14 + 1);
          *(v14 + 1) = 0;
          if (v16)
          {
            WebKit::RemoteMediaPlayerMIMETypeCache::operator delete(v16, 0x40);
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

          v19 = 0;
          v20 = 9 * ((~(v15 << 15) + v15) ^ ((~(v15 << 15) + v15) >> 10));
          v21 = ((v20 ^ (v20 >> 6)) + ~((v20 ^ (v20 >> 6)) << 11)) ^ (((v20 ^ (v20 >> 6)) + ~((v20 ^ (v20 >> 6)) << 11)) >> 16);
          do
          {
            v22 = v21 & v18;
            v21 = ++v19 + v22;
          }

          while (*(v17 + 16 * v22) != 255);
          v23 = v17 + 16 * v22;
          v24 = *(v23 + 8);
          *(v23 + 8) = 0;
          if (v24)
          {
            WebKit::RemoteMediaPlayerMIMETypeCache::operator delete(v24, 0x40);
          }

          *v23 = *v14;
          v25 = *(v14 + 1);
          *(v14 + 1) = 0;
          *(v23 + 8) = v25;
          v26 = *(v14 + 1);
          *(v14 + 1) = 0;
          if (v26)
          {
            WebKit::RemoteMediaPlayerMIMETypeCache::operator delete(v26, 0x40);
          }

          if (v14 == a2)
          {
            v13 = v23;
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

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,WTF::NoTaggingTraits<WebKit::MediaPlayerPrivateRemote>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,WTF::NoTaggingTraits<WebKit::MediaPlayerPrivateRemote>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,WTF::NoTaggingTraits<WebKit::MediaPlayerPrivateRemote>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,WTF::NoTaggingTraits<WebKit::MediaPlayerPrivateRemote>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,WTF::NoTaggingTraits<WebKit::MediaPlayerPrivateRemote>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,WTF::NoTaggingTraits<WebKit::MediaPlayerPrivateRemote>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t *a2)
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
    JUMPOUT(0x19E2B1D3CLL);
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

atomic_uchar *WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,WTF::NoTaggingTraits<WebKit::MediaPlayerPrivateRemote>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,WTF::NoTaggingTraits<WebKit::MediaPlayerPrivateRemote>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,WTF::NoTaggingTraits<WebKit::MediaPlayerPrivateRemote>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,WTF::NoTaggingTraits<WebKit::MediaPlayerPrivateRemote>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>@<X0>(atomic_uchar *result@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *a2;
  if (*a2 == -1 || !v3)
  {
    __break(0xC471u);
    JUMPOUT(0x19E2B1E4CLL);
  }

  v5 = *result;
  if (!*result)
  {
LABEL_11:
    *a3 = 0;
    a3[1] = 0;
    return result;
  }

  v6 = *(v5 - 8);
  v7 = (v3 + ~(v3 << 32)) ^ ((v3 + ~(v3 << 32)) >> 22);
  v8 = 9 * ((v7 + ~(v7 << 13)) ^ ((v7 + ~(v7 << 13)) >> 8));
  v9 = (v8 ^ (v8 >> 15)) + ~((v8 ^ (v8 >> 15)) << 27);
  v10 = v6 & ((v9 >> 31) ^ v9);
  v11 = *(v5 + 24 * v10);
  if (v11 != v3)
  {
    v12 = 1;
    while (v11)
    {
      v10 = (v10 + v12) & v6;
      v11 = *(v5 + 24 * v10);
      ++v12;
      if (v11 == v3)
      {
        goto LABEL_8;
      }
    }

    goto LABEL_11;
  }

LABEL_8:
  v13 = v5 + 24 * v10;
  result = *(v13 + 16);
  *a3 = *(v13 + 8);
  if (result)
  {
    result = WTF::ThreadSafeWeakPtrControlBlock::weakRef(result);
  }

  a3[1] = result;
  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::RemoteMediaPlayerManager::setUseGPUProcess(BOOL)::$_2,void,void (*)(std::unique_ptr<WebCore::MediaPlayerFactory> &&),WebCore::MediaPlayerMediaEngineIdentifier>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F1129210;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteMediaPlayerManager::setUseGPUProcess(BOOL)::$_2,void,void (*)(std::unique_ptr<WebCore::MediaPlayerFactory> &&),WebCore::MediaPlayerMediaEngineIdentifier>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1129210;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

atomic_uchar **WTF::Detail::CallableWrapper<WebKit::RemoteMediaPlayerManager::setUseGPUProcess(BOOL)::$_2,void,void (*)(std::unique_ptr<WebCore::MediaPlayerFactory> &&),WebCore::MediaPlayerMediaEngineIdentifier>::call(uint64_t a1, void *a2, char a3)
{
  v6 = *(a1 + 16);
  if (v6)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(v6, *(a1 + 8), &v14);
    v7 = v14;
  }

  else
  {
    v7 = 0;
    v14 = 0;
  }

  if (WebKit::MediaPlayerRemoteFactory::operator new(unsigned long)::s_heapRef)
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::MediaPlayerRemoteFactory::operator new(unsigned long)::s_heapRef, a2);
  }

  else
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompactSlow();
  }

  v9 = NonCompact;
  *NonCompact = &unk_1F1129238;
  *(NonCompact + 8) = 0;
  *(NonCompact + 16) = a3;
  *(NonCompact + 24) = v7;
  v10 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::RemoteMediaPlayerManager,(WTF::DestructionThread)0>::controlBlock((v7 + 8));
  *(v9 + 32) = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v10);
  v15 = v9;
  (a2)(&v15);
  result = v15;
  v15 = 0;
  if (result)
  {
    result = (*(*result + 1))(result);
  }

  v13 = v14;
  v14 = 0;
  if (v13)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::RemoteMediaPlayerManager,(WTF::DestructionThread)0>::deref((v13 + 8), v11);
  }

  return result;
}

void WebKit::MediaPlayerRemoteFactory::~MediaPlayerRemoteFactory(WebKit::MediaPlayerRemoteFactory *this, void *a2)
{
  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }

  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, a2);
}

{
  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }

  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, a2);

  bmalloc::api::tzoneFree(this, v4);
}

void WebKit::MediaPlayerRemoteFactory::createMediaEnginePlayer(WebKit::MediaPlayerRemoteFactory *this@<X0>, WTF::StringImpl **a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(this + 4);
  if (v6)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(v6, *(this + 3), v10);
    v7 = *v10;
    WebKit::RemoteMediaPlayerManager::createRemoteMediaPlayer(a3, *v10, a2, *(this + 16));
    if (v7)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::RemoteMediaPlayerManager,(WTF::DestructionThread)0>::deref(v7 + 1, v8);
    }
  }

  else
  {
    v9 = *(this + 16);

    WebKit::RemoteMediaPlayerManager::createRemoteMediaPlayer(a3, 0, a2, v9);
  }
}

WTF::StringImpl ***WebKit::MediaPlayerRemoteFactory::getSupportedTypes(uint64_t a1, WTF::StringImpl ***a2)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(v4, *(a1 + 24), &v11);
    v5 = v11;
  }

  else
  {
    v5 = 0;
  }

  v6 = WebKit::RemoteMediaPlayerManager::typeCache(v5, *(a1 + 16));
  v8 = WebKit::RemoteMediaPlayerMIMETypeCache::supportedTypes(v6, v7);
  result = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::operator=(a2, v8);
  if (v5)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::RemoteMediaPlayerManager,(WTF::DestructionThread)0>::deref((v5 + 8), v10);
  }

  return result;
}

uint64_t WebKit::MediaPlayerRemoteFactory::supportsTypeAndCodecs(WebKit::MediaPlayerRemoteFactory *this, const WebCore::MediaEngineSupportParameters *a2)
{
  v4 = *(this + 4);
  if (v4)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(v4, *(this + 3), &v10);
    v5 = v10;
    v7 = WebKit::RemoteMediaPlayerManager::supportsTypeAndCodecs(v10, *(this + 16), a2);
    if (v5)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::RemoteMediaPlayerManager,(WTF::DestructionThread)0>::deref((v5 + 8), v6);
    }

    return v7;
  }

  else
  {
    v9 = *(this + 16);

    return WebKit::RemoteMediaPlayerManager::supportsTypeAndCodecs(0, v9, a2);
  }
}

uint64_t WebKit::MediaPlayerRemoteFactory::supportsKeySystem(WebKit::MediaPlayerRemoteFactory *this, const WTF::String *a2, const WTF::String *a3)
{
  v4 = *(this + 4);
  if (v4)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(v4, *(this + 3), &v7);
    if (v7)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::RemoteMediaPlayerManager,(WTF::DestructionThread)0>::deref((v7 + 8), v5);
    }
  }

  return 0;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteMediaResourceManager::ResponseReceived,WebKit::RemoteMediaResourceProxy::responseReceived(WebCore::PlatformMediaResource &,WebCore::ResourceResponse const&,WTF::CompletionHandler<void ()(WebCore::ShouldContinuePolicyCheck)> &&)::$_0>(WebKit::RemoteMediaResourceProxy::responseReceived(WebCore::PlatformMediaResource &,WebCore::ResourceResponse const&,WTF::CompletionHandler<void ()(WebCore::ShouldContinuePolicyCheck)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::RemoteMediaResourceProxy::responseReceived(WebCore::PlatformMediaResource &,WebCore::ResourceResponse const&,WTF::CompletionHandler<void ()(WebCore::ShouldContinuePolicyCheck)> &&)::$_0,IPC::Decoder)#1},void,WebKit::RemoteMediaResourceProxy::responseReceived(WebCore::PlatformMediaResource &,WebCore::ResourceResponse const&,WTF::CompletionHandler<void ()(WebCore::ShouldContinuePolicyCheck)> &&)::$_0,IPC::Decoder>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1129298;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteMediaResourceManager::ResponseReceived,WebKit::RemoteMediaResourceProxy::responseReceived(WebCore::PlatformMediaResource &,WebCore::ResourceResponse const&,WTF::CompletionHandler<void ()(WebCore::ShouldContinuePolicyCheck)> &&)::$_0>(WebKit::RemoteMediaResourceProxy::responseReceived(WebCore::PlatformMediaResource &,WebCore::ResourceResponse const&,WTF::CompletionHandler<void ()(WebCore::ShouldContinuePolicyCheck)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::RemoteMediaResourceProxy::responseReceived(WebCore::PlatformMediaResource &,WebCore::ResourceResponse const&,WTF::CompletionHandler<void ()(WebCore::ShouldContinuePolicyCheck)> &&)::$_0,IPC::Decoder)#1},void,WebKit::RemoteMediaResourceProxy::responseReceived(WebCore::PlatformMediaResource &,WebCore::ResourceResponse const&,WTF::CompletionHandler<void ()(WebCore::ShouldContinuePolicyCheck)> &&)::$_0,IPC::Decoder>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1129298;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteMediaResourceManager::ResponseReceived,WebKit::RemoteMediaResourceProxy::responseReceived(WebCore::PlatformMediaResource &,WebCore::ResourceResponse const&,WTF::CompletionHandler<void ()(WebCore::ShouldContinuePolicyCheck)> &&)::$_0>(WebKit::RemoteMediaResourceProxy::responseReceived(WebCore::PlatformMediaResource &,WebCore::ResourceResponse const&,WTF::CompletionHandler<void ()(WebCore::ShouldContinuePolicyCheck)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::RemoteMediaResourceProxy::responseReceived(WebCore::PlatformMediaResource &,WebCore::ResourceResponse const&,WTF::CompletionHandler<void ()(WebCore::ShouldContinuePolicyCheck)> &&)::$_0,IPC::Decoder)#1},void,WebKit::RemoteMediaResourceProxy::responseReceived(WebCore::PlatformMediaResource &,WebCore::ResourceResponse const&,WTF::CompletionHandler<void ()(WebCore::ShouldContinuePolicyCheck)> &&)::$_0,IPC::Decoder>::call(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (!a3)
  {
    goto LABEL_6;
  }

  v4 = *a3;
  if (!*a3)
  {
    goto LABEL_6;
  }

  v5 = a3[1];
  v6 = a3[2];
  if (v5 <= &v6[-v4])
  {
    v20 = a1;
    *a3 = 0;
    a3[1] = 0;
    v10 = a3;
    v11 = a3[3];
    if (v11)
    {
      if (v5)
      {
        (*(*v11 + 16))(v11);
        v4 = *v10;
        v5 = v10[1];
        goto LABEL_12;
      }
    }

    else
    {
      v5 = 0;
    }

    v4 = 0;
  }

  else
  {
    a3[2] = (v6 + 1);
    if (v6)
    {
      if (*v6 < 2u)
      {
        goto LABEL_6;
      }

      v10 = a3;
      v20 = a1;
      goto LABEL_16;
    }

    v10 = a3;
    v20 = a1;
  }

LABEL_12:
  *v10 = 0;
  v10[1] = 0;
  v12 = v10[3];
  if (v12)
  {
    if (v5)
    {
      (*(*v12 + 16))(v12, v4);
      v4 = *v10;
      v5 = v10[1];
      goto LABEL_16;
    }
  }

  else
  {
    v5 = 0;
  }

  v4 = 0;
LABEL_16:
  *v10 = 0;
  v10[1] = 0;
  v13 = v10[3];
  if (!v13 || !v5 || ((*(*v13 + 16))(v13, v4), v14 = v10[3], v15 = *v10, v16 = v10[1], *v10 = 0, v10[1] = 0, !v14) || !v16)
  {
    *v10 = 0;
    v10[1] = 0;
LABEL_18:
    a1 = v20;
    goto LABEL_6;
  }

  (*(*v14 + 16))(v14, v15);
  v17 = *v10;
  v18 = v10[1];
  v19 = v10[3];
  *v10 = 0;
  v10[1] = 0;
  if (!v19)
  {
    goto LABEL_18;
  }

  a1 = v20;
  if (v18)
  {
    (*(*v19 + 16))(v19, v17);
    a1 = v20;
  }

LABEL_6:
  v7 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v7 + 16))(v7);
  v8 = *(*v7 + 8);

  return v8(v7);
}

void *WTF::Detail::CallableWrapper<WebCore::ResourceResponse const&<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteMediaResourceManager::RedirectReceived,WebKit::RemoteMediaResourceProxy::redirectReceived(WebCore::PlatformMediaResource &,WebCore::ResourceRequest &&,WebCore::ResourceResponse const&,WTF::CompletionHandler<void ()(WebCore::ResourceRequest &)> &&)::$_0>(WebKit::RemoteMediaResourceProxy::redirectReceived(WebCore::PlatformMediaResource &,WebCore::ResourceRequest &&,WebCore::ResourceResponse const&,WTF::CompletionHandler<void ()(WebCore::ResourceRequest &)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ResourceRequest &)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(WebCore::ResourceRequest &)> &&,IPC::Connection*>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F11292C0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebCore::ResourceResponse const&<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteMediaResourceManager::RedirectReceived,WebKit::RemoteMediaResourceProxy::redirectReceived(WebCore::PlatformMediaResource &,WebCore::ResourceRequest &&,WebCore::ResourceResponse const&,WTF::CompletionHandler<void ()(WebCore::ResourceRequest &)> &&)::$_0>(WebKit::RemoteMediaResourceProxy::redirectReceived(WebCore::PlatformMediaResource &,WebCore::ResourceRequest &&,WebCore::ResourceResponse const&,WTF::CompletionHandler<void ()(WebCore::ResourceRequest &)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ResourceRequest &)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(WebCore::ResourceRequest &)> &&,IPC::Connection*>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F11292C0;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<WebCore::ResourceResponse const&<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteMediaResourceManager::RedirectReceived,WebKit::RemoteMediaResourceProxy::redirectReceived(WebCore::PlatformMediaResource &,WebCore::ResourceRequest &&,WebCore::ResourceResponse const&,WTF::CompletionHandler<void ()(WebCore::ResourceRequest &)> &&)::$_0>(WebKit::RemoteMediaResourceProxy::redirectReceived(WebCore::PlatformMediaResource &,WebCore::ResourceRequest &&,WebCore::ResourceResponse const&,WTF::CompletionHandler<void ()(WebCore::ResourceRequest &)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ResourceRequest &)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(WebCore::ResourceRequest &)> &&,IPC::Connection*>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
{
  if (a3 && *a3)
  {
    IPC::ArgumentCoder<std::tuple<WebCore::ResourceRequest>,void>::decode<IPC::Decoder>(a3, v10);
    if (v11 & 1) != 0 || (v7 = *a3, v8 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v9 = *(a3 + 3)) != 0) && v8 && ((*(*v9 + 16))(v9, v7), (v11))
    {
      v5 = *(a1 + 8);
      *(a1 + 8) = 0;
      (*(*v5 + 16))(v5, v10);
      (*(*v5 + 8))(v5);
      if (v11)
      {
        WebCore::ResourceRequest::~ResourceRequest(v10);
      }
    }

    else
    {
      IPC::Connection::cancelReply<Messages::DownloadProxy::WillSendRequest,WTF::CompletionHandler<void ()(WebCore::ResourceRequest &&)>>((a1 + 8));
    }
  }

  else
  {
    v6 = (a1 + 8);

    IPC::Connection::cancelReply<Messages::DownloadProxy::WillSendRequest,WTF::CompletionHandler<void ()(WebCore::ResourceRequest &&)>>(v6);
  }
}

void WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteMediaResourceManager::DataReceived,WebKit::RemoteMediaResourceProxy::dataReceived(WebCore::PlatformMediaResource &,WebCore::SharedBuffer const&)::$_0>(WebKit::RemoteMediaResourceProxy::dataReceived(WebCore::PlatformMediaResource &,WebCore::SharedBuffer const&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
{
  if (a3 && *a3)
  {
    IPC::ArgumentCoder<std::optional<WebCore::SharedMemoryHandle>,void>::decode<IPC::Decoder>(a3, v14);
    if (v17 & 1) != 0 || (v4 = *a3, v5 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v6 = *(a3 + 3)) != 0) && v5 && ((*(*v6 + 16))(v6, v4), (v17))
    {
      v10[0] = 0;
      v12 = 0;
      if (v16 == 1)
      {
        WTF::MachSendRight::MachSendRight();
        v11 = v15;
        v12 = 1;
        v13 = 1;
        if (v17 & 1) != 0 && (v16)
        {
          WTF::MachSendRight::~MachSendRight(v14);
        }
      }

      else
      {
        v13 = 1;
      }
    }

    else
    {
      v10[0] = 0;
      v13 = 0;
      v7 = *a3;
      v8 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v9 = *(a3 + 3);
      if (!v9)
      {
        return;
      }

      if (!v8)
      {
        return;
      }

      (*(*v9 + 16))(v9, v7);
      if ((v13 & 1) == 0)
      {
        return;
      }
    }

    if (v12 == 1)
    {
      WebCore::SharedMemoryHandle::takeOwnershipOfMemory();
      if (v13 & 1) != 0 && (v12)
      {
        WTF::MachSendRight::~MachSendRight(v10);
      }
    }
  }
}

uint64_t WTF::ThreadSafeRefCounted<WebKit::RemoteVideoDecoderCallbacks,(WTF::DestructionThread)0>::deref(uint64_t this, void *a2)
{
  add = atomic_fetch_add(this, 0xFFFFFFFF);
  if (add == 1)
  {
    v4 = this;
    atomic_store(add, this);
    v5 = *(this + 40);
    if (v5)
    {
      do
      {
        v6 = *v5;
        WTF::fastFree(v5, a2);
        v5 = v6;
      }

      while (v6);
    }

    v7 = *(v4 + 3);
    *(v4 + 3) = 0;
    if (v7)
    {
      WTF::fastFree(v7, a2);
    }

    v8 = *(v4 + 1);
    *(v4 + 1) = 0;
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    return WTF::fastFree(v4, a2);
  }

  return this;
}

uint64_t WTF::ThreadSafeRefCounted<WebKit::RemoteVideoEncoderCallbacks,(WTF::DestructionThread)0>::deref(uint64_t this, void *a2)
{
  add = atomic_fetch_add(this, 0xFFFFFFFF);
  if (add == 1)
  {
    v4 = this;
    atomic_store(add, this);
    v5 = *(this + 16);
    *(v4 + 2) = 0;
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = *(v4 + 1);
    *(v4 + 1) = 0;
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    return WTF::fastFree(v4, a2);
  }

  return this;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteVideoCodecFactory::createDecoder(WTF::String const&,WebCore::VideoDecoder::Config const&,WTF::Function<void ()(std::experimental::fundamentals_v3::expected<WTF::Ref<WebCore::VideoDecoder,WTF::RawPtrTraits<WebCore::VideoDecoder>,WTF::DefaultRefDerefTraits<WebCore::VideoDecoder>>,WTF::String> &&)> &&,WTF::Function<void ()(std::experimental::fundamentals_v3::expected<WebCore::VideoDecoder::DecodedFrame,WTF::String> &&)> &&)::$_0,void,WebKit::LibWebRTCCodecs::Decoder *>::~CallableWrapper(uint64_t a1, void *a2)
{
  *a1 = &unk_1F1129310;
  v3 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    WTF::fastFree(v5, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteVideoCodecFactory::createDecoder(WTF::String const&,WebCore::VideoDecoder::Config const&,WTF::Function<void ()(std::experimental::fundamentals_v3::expected<WTF::Ref<WebCore::VideoDecoder,WTF::RawPtrTraits<WebCore::VideoDecoder>,WTF::DefaultRefDerefTraits<WebCore::VideoDecoder>>,WTF::String> &&)> &&,WTF::Function<void ()(std::experimental::fundamentals_v3::expected<WebCore::VideoDecoder::DecodedFrame,WTF::String> &&)> &&)::$_0,void,WebKit::LibWebRTCCodecs::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1129310;
  v3 = *(this + 6);
  *(this + 6) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 5);
  *(this + 5) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 3);
  if (v5)
  {
    *(this + 3) = 0;
    *(this + 8) = 0;
    WTF::fastFree(v5, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteVideoCodecFactory::createDecoder(WTF::String const&,WebCore::VideoDecoder::Config const&,WTF::Function<void ()(std::experimental::fundamentals_v3::expected<WTF::Ref<WebCore::VideoDecoder,WTF::RawPtrTraits<WebCore::VideoDecoder>,WTF::DefaultRefDerefTraits<WebCore::VideoDecoder>>,WTF::String> &&)> &&,WTF::Function<void ()(std::experimental::fundamentals_v3::expected<WebCore::VideoDecoder::DecodedFrame,WTF::String> &&)> &&)::$_0,void,WebKit::LibWebRTCCodecs::Decoder *>::call(uint64_t a1, void *a2)
{
  if (a2)
  {
    if (*(a1 + 36))
    {
      {
        v4 = WebKit::WebProcess::singleton(void)::process;
      }

      else
      {
        v25 = WebKit::WebProcess::operator new(0x370, a2);
        v4 = WebKit::WebProcess::WebProcess(v25);
        WebKit::WebProcess::singleton(void)::process = v4;
      }

      WebKit::WebProcess::protectedLibWebRTCCodecs(v4, a2, &v26);
      v5 = v26;
      WebKit::LibWebRTCCodecs::setDecoderFormatDescription(v26, a2, *(a1 + 24), *(a1 + 36), *(a1 + 8), *(a1 + 16));
      if (v5)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v5 + 1, v6);
      }
    }

    v8 = WTF::fastMalloc(0x40);
    *v8 = 1;
    v9 = *(a1 + 48);
    *(a1 + 48) = 0;
    *(v8 + 8) = v9;
    *(v8 + 16) = 0;
    *(v8 + 24) = 0u;
    *(v8 + 40) = 0u;
    *(v8 + 56) = 1065353216;
    atomic_fetch_add(v8, 1u);
    if (WebKit::RemoteVideoDecoder::s_heapRef)
    {
      NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::RemoteVideoDecoder::s_heapRef, v7);
    }

    else
    {
      NonCompact = WebKit::RemoteVideoDecoder::operatorNewSlow(0);
    }

    v11 = NonCompact;
    v12 = WebCore::VideoDecoder::VideoDecoder(NonCompact);
    *v12 = &unk_1F1128910;
    v12[2] = a2;
    v12[3] = v8;
    {
      v14 = WebKit::WebProcess::singleton(void)::process;
    }

    else
    {
      v24 = WebKit::WebProcess::operator new(0x370, v13);
      v14 = WebKit::WebProcess::WebProcess(v24);
      WebKit::WebProcess::singleton(void)::process = v14;
    }

    WebKit::WebProcess::protectedLibWebRTCCodecs(v14, v13, &v26);
    v15 = v26;
    v16 = *(v11 + 2);
    v17 = *(v11 + 3);
    atomic_fetch_add(v17, 1u);
    v18 = WTF::fastMalloc(0x10);
    *v18 = &unk_1F1129360;
    v18[1] = v17;
    v28 = v18;
    WebKit::LibWebRTCCodecs::registerDecodedVideoFrameCallback(v15, v16, &v28);
    if (v28)
    {
      (*(*v28 + 8))(v28);
    }

    if (v26)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v26 + 1, v19);
    }

    v26 = v11;
    v27 = 0;
    (*(**(a1 + 40) + 16))(*(a1 + 40), &v26);
    std::experimental::fundamentals_v3::expected<WTF::Ref<WebCore::VideoDecoder,WTF::RawPtrTraits<WebCore::VideoDecoder>,WTF::DefaultRefDerefTraits<WebCore::VideoDecoder>>,WTF::String>::~expected(&v26, v20);
    return WTF::ThreadSafeRefCounted<WebKit::RemoteVideoDecoderCallbacks,(WTF::DestructionThread)0>::deref(v8, v21);
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v27 = 1;
    (*(**(a1 + 40) + 16))(*(a1 + 40), &v26);
    return std::experimental::fundamentals_v3::expected<WTF::Ref<WebCore::VideoDecoder,WTF::RawPtrTraits<WebCore::VideoDecoder>,WTF::DefaultRefDerefTraits<WebCore::VideoDecoder>>,WTF::String>::~expected(&v26, v23);
  }
}

uint64_t std::experimental::fundamentals_v3::expected<WTF::Ref<WebCore::VideoDecoder,WTF::RawPtrTraits<WebCore::VideoDecoder>,WTF::DefaultRefDerefTraits<WebCore::VideoDecoder>>,WTF::String>::~expected(uint64_t a1, WTF::StringImpl *a2)
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

    else if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v4 + 2);
      (*(*v4 + 8))(v4);
    }
  }

  *(a1 + 8) = -1;
  return a1;
}

void *WTF::Detail::CallableWrapper<WebKit::RemoteVideoCodecFactory::createEncoder(WTF::String const&,WebCore::VideoEncoder::Config const&,WTF::Function<void ()(std::experimental::fundamentals_v3::expected<WTF::Ref<WebCore::VideoEncoder,WTF::RawPtrTraits<WebCore::VideoEncoder>,WTF::DefaultRefDerefTraits<WebCore::VideoEncoder>>,WTF::String> &&)> &&,WTF::Function<void ()(WebCore::VideoEncoderActiveConfiguration &&)> &&,WTF::Function<void ()(WebCore::VideoEncoder::EncodedFrame &&)> &&)::$_0,void,WebKit::LibWebRTCCodecs::Encoder *>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1129338;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

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
    (*(*v4 + 8))(v4);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteVideoCodecFactory::createEncoder(WTF::String const&,WebCore::VideoEncoder::Config const&,WTF::Function<void ()(std::experimental::fundamentals_v3::expected<WTF::Ref<WebCore::VideoEncoder,WTF::RawPtrTraits<WebCore::VideoEncoder>,WTF::DefaultRefDerefTraits<WebCore::VideoEncoder>>,WTF::String> &&)> &&,WTF::Function<void ()(WebCore::VideoEncoderActiveConfiguration &&)> &&,WTF::Function<void ()(WebCore::VideoEncoder::EncodedFrame &&)> &&)::$_0,void,WebKit::LibWebRTCCodecs::Encoder *>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1129338;
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
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 1);
  *(this + 1) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteVideoCodecFactory::createEncoder(WTF::String const&,WebCore::VideoEncoder::Config const&,WTF::Function<void ()(std::experimental::fundamentals_v3::expected<WTF::Ref<WebCore::VideoEncoder,WTF::RawPtrTraits<WebCore::VideoEncoder>,WTF::DefaultRefDerefTraits<WebCore::VideoEncoder>>,WTF::String> &&)> &&,WTF::Function<void ()(WebCore::VideoEncoderActiveConfiguration &&)> &&,WTF::Function<void ()(WebCore::VideoEncoder::EncodedFrame &&)> &&)::$_0,void,WebKit::LibWebRTCCodecs::Encoder *>::call(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v5 = WTF::fastMalloc(0x20);
    *v5 = 1;
    v6 = *(a1 + 16);
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(v5 + 8) = v6;
    *(v5 + 24) = 0;
    if (WebKit::RemoteVideoEncoder::s_heapRef)
    {
      NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::RemoteVideoEncoder::s_heapRef, v4);
    }

    else
    {
      NonCompact = WebKit::RemoteVideoEncoder::operatorNewSlow(0);
    }

    v9 = NonCompact;
    *(NonCompact + 8) = 1;
    *NonCompact = &unk_1F1128950;
    *(NonCompact + 16) = a2;
    *(NonCompact + 24) = v5;
    {
      v10 = WebKit::WebProcess::singleton(void)::process;
    }

    else
    {
      v24 = WebKit::WebProcess::operator new(0x370, v8);
      v10 = WebKit::WebProcess::WebProcess(v24);
      WebKit::WebProcess::singleton(void)::process = v10;
    }

    v11 = WebKit::WebProcess::libWebRTCCodecs(v10, v8);
    v12 = (v11 + 8);
    while (1)
    {
      v13 = *v12;
      if ((*v12 & 1) == 0)
      {
        break;
      }

      v14 = *v12;
      atomic_compare_exchange_strong_explicit(v12, &v14, v13 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v14 == v13)
      {
        goto LABEL_11;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v12);
LABEL_11:
    v15 = *(v9 + 16);
    v16 = *(v9 + 24);
    atomic_fetch_add(v16, 1u);
    v17 = WTF::fastMalloc(0x10);
    *v17 = &unk_1F1129388;
    v17[1] = v16;
    v25 = v17;
    WebKit::LibWebRTCCodecs::registerEncodedVideoFrameCallback(v11, v15, &v25);
    if (v25)
    {
      (*(*v25 + 8))(v25);
    }

    v18 = *(v9 + 16);
    v19 = *(v9 + 24);
    atomic_fetch_add(v19, 1u);
    v20 = WTF::fastMalloc(0x10);
    *v20 = &unk_1F11293B0;
    v20[1] = v19;
    v25 = v20;
    WebKit::LibWebRTCCodecs::registerEncoderDescriptionCallback(v11, v18, &v25);
    if (v25)
    {
      (*(*v25 + 8))(v25);
    }

    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v12, v21);
    v25 = v9;
    v26 = 0;
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v26 = 1;
  }

  (*(**(a1 + 8) + 16))(*(a1 + 8), &v25);
  return std::experimental::fundamentals_v3::expected<WTF::Ref<WebCore::VideoEncoder,WTF::RawPtrTraits<WebCore::VideoEncoder>,WTF::DefaultRefDerefTraits<WebCore::VideoEncoder>>,WTF::String>::~expected(&v25, v22);
}

uint64_t std::experimental::fundamentals_v3::expected<WTF::Ref<WebCore::VideoEncoder,WTF::RawPtrTraits<WebCore::VideoEncoder>,WTF::DefaultRefDerefTraits<WebCore::VideoEncoder>>,WTF::String>::~expected(uint64_t a1, WTF::StringImpl *a2)
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

    else if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v4 + 2);
      (*(*v4 + 8))(v4);
    }
  }

  *(a1 + 8) = -1;
  return a1;
}

void *WTF::Detail::CallableWrapper<WebKit::RemoteVideoDecoder::RemoteVideoDecoder(WebKit::LibWebRTCCodecs::Decoder &,WTF::Ref<WebKit::RemoteVideoDecoderCallbacks,WTF::RawPtrTraits<WebKit::RemoteVideoDecoderCallbacks>,WTF::DefaultRefDerefTraits<WebKit::RemoteVideoDecoderCallbacks>> &&)::$_0,void,WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore>,WTF::DefaultRefDerefTraits<WebCore>> &&,long long>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F1129360;
  a1[1] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WebKit::RemoteVideoDecoderCallbacks,(WTF::DestructionThread)0>::deref(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteVideoDecoder::RemoteVideoDecoder(WebKit::LibWebRTCCodecs::Decoder &,WTF::Ref<WebKit::RemoteVideoDecoderCallbacks,WTF::RawPtrTraits<WebKit::RemoteVideoDecoderCallbacks>,WTF::DefaultRefDerefTraits<WebKit::RemoteVideoDecoderCallbacks>> &&)::$_0,void,WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore>,WTF::DefaultRefDerefTraits<WebCore>> &&,long long>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1129360;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WebKit::RemoteVideoDecoderCallbacks,(WTF::DestructionThread)0>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteVideoDecoder::RemoteVideoDecoder(WebKit::LibWebRTCCodecs::Decoder &,WTF::Ref<WebKit::RemoteVideoDecoderCallbacks,WTF::RawPtrTraits<WebKit::RemoteVideoDecoderCallbacks>,WTF::DefaultRefDerefTraits<WebKit::RemoteVideoDecoderCallbacks>> &&)::$_0,void,WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore>,WTF::DefaultRefDerefTraits<WebCore>> &&,long long>::call(uint64_t result, uint64_t *a2, unint64_t a3)
{
  v3 = *(result + 8);
  if (*(v3 + 16))
  {
    return result;
  }

  v5 = *a2;
  if (!*a2)
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v26 = 1;
    goto LABEL_23;
  }

  v7 = *(v3 + 32);
  if (!*&v7)
  {
    goto LABEL_21;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = a3;
    if (*&v7 <= a3)
    {
      v9 = a3 % *&v7;
    }
  }

  else
  {
    v9 = (*&v7 - 1) & a3;
  }

  v10 = *(v3 + 24);
  v11 = *(v10 + 8 * v9);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_21:
    v15 = 0;
    goto LABEL_22;
  }

  v13 = *&v7 - 1;
  while (1)
  {
    v14 = *(v12 + 1);
    if (v14 == a3)
    {
      break;
    }

    if (v8.u32[0] > 1uLL)
    {
      if (v14 >= *&v7)
      {
        v14 %= *&v7;
      }
    }

    else
    {
      v14 &= v13;
    }

    if (v14 != v9)
    {
      goto LABEL_21;
    }

LABEL_20:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_21;
    }
  }

  if (*(v12 + 2) != a3)
  {
    goto LABEL_20;
  }

  v15 = *(v12 + 3);
  v17 = *v12;
  if (v8.u32[0] > 1uLL)
  {
    v18 = a3;
    if (*&v7 <= a3)
    {
      v18 = a3 % *&v7;
    }
  }

  else
  {
    v18 = v13 & a3;
  }

  v19 = *(v10 + 8 * v18);
  do
  {
    v20 = v19;
    v19 = *v19;
  }

  while (v19 != v12);
  if (v20 == (v3 + 40))
  {
    goto LABEL_42;
  }

  v21 = v20[1];
  if (v8.u32[0] > 1uLL)
  {
    if (v21 >= *&v7)
    {
      v21 %= *&v7;
    }
  }

  else
  {
    v21 &= v13;
  }

  if (v21 == v18)
  {
LABEL_44:
    if (v17)
    {
      v22 = *(v17 + 1);
      goto LABEL_46;
    }
  }

  else
  {
LABEL_42:
    if (!v17)
    {
      goto LABEL_43;
    }

    v22 = *(v17 + 1);
    if (v8.u32[0] > 1uLL)
    {
      v23 = *(v17 + 1);
      if (v22 >= *&v7)
      {
        v23 = v22 % *&v7;
      }
    }

    else
    {
      v23 = v22 & v13;
    }

    if (v23 != v18)
    {
LABEL_43:
      *(v10 + 8 * v18) = 0;
      v17 = *v12;
      goto LABEL_44;
    }

LABEL_46:
    if (v8.u32[0] > 1uLL)
    {
      if (v22 >= *&v7)
      {
        v22 %= *&v7;
      }
    }

    else
    {
      v22 &= v13;
    }

    if (v22 != v18)
    {
      *(*(v3 + 24) + 8 * v22) = v20;
      v17 = *v12;
    }
  }

  *v20 = v17;
  *v12 = 0;
  --*(v3 + 48);
  WTF::fastFree(v12, a2);
  v5 = *a2;
LABEL_22:
  *a2 = 0;
  v24[0] = v5;
  v24[1] = a3;
  v24[2] = v15;
  v25 = 1;
  v26 = 0;
LABEL_23:
  (*(**(v3 + 8) + 16))(*(v3 + 8), v24);
  return std::experimental::fundamentals_v3::expected<WebCore::VideoDecoder::DecodedFrame,WTF::String>::~expected(v24, v16);
}

void *WTF::Detail::CallableWrapper<WebKit::RemoteVideoEncoder::RemoteVideoEncoder(WebKit::LibWebRTCCodecs::Encoder &,WTF::Ref<WebKit::RemoteVideoEncoderCallbacks,WTF::RawPtrTraits<WebKit::RemoteVideoEncoderCallbacks>,WTF::DefaultRefDerefTraits<WebKit::RemoteVideoEncoderCallbacks>> &&)::$_0,void,std::span<unsigned char const,18446744073709551615ul>,BOOL,long long,WebKit::RemoteVideoEncoder::RemoteVideoEncoder(WebKit::LibWebRTCCodecs::Encoder &,WTF::Ref<WebKit::RemoteVideoEncoderCallbacks,WTF::RawPtrTraits<WebKit::RemoteVideoEncoderCallbacks>,WTF::DefaultRefDerefTraits<WebKit::RemoteVideoEncoderCallbacks>> &&)::$_0::optional<unsigned long long>,std::span<unsigned char const,18446744073709551615ul><unsigned int>>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F1129388;
  a1[1] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WebKit::RemoteVideoEncoderCallbacks,(WTF::DestructionThread)0>::deref(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteVideoEncoder::RemoteVideoEncoder(WebKit::LibWebRTCCodecs::Encoder &,WTF::Ref<WebKit::RemoteVideoEncoderCallbacks,WTF::RawPtrTraits<WebKit::RemoteVideoEncoderCallbacks>,WTF::DefaultRefDerefTraits<WebKit::RemoteVideoEncoderCallbacks>> &&)::$_0,void,std::span<unsigned char const,18446744073709551615ul>,BOOL,long long,WebKit::RemoteVideoEncoder::RemoteVideoEncoder(WebKit::LibWebRTCCodecs::Encoder &,WTF::Ref<WebKit::RemoteVideoEncoderCallbacks,WTF::RawPtrTraits<WebKit::RemoteVideoEncoderCallbacks>,WTF::DefaultRefDerefTraits<WebKit::RemoteVideoEncoderCallbacks>> &&)::$_0::optional<unsigned long long>,std::span<unsigned char const,18446744073709551615ul><unsigned int>>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1129388;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WebKit::RemoteVideoEncoderCallbacks,(WTF::DestructionThread)0>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

WTF *WTF::Detail::CallableWrapper<WebKit::RemoteVideoEncoder::RemoteVideoEncoder(WebKit::LibWebRTCCodecs::Encoder &,WTF::Ref<WebKit::RemoteVideoEncoderCallbacks,WTF::RawPtrTraits<WebKit::RemoteVideoEncoderCallbacks>,WTF::DefaultRefDerefTraits<WebKit::RemoteVideoEncoderCallbacks>> &&)::$_0,void,std::span<unsigned char const,18446744073709551615ul>,BOOL,long long,WebKit::RemoteVideoEncoder::RemoteVideoEncoder(WebKit::LibWebRTCCodecs::Encoder &,WTF::Ref<WebKit::RemoteVideoEncoderCallbacks,WTF::RawPtrTraits<WebKit::RemoteVideoEncoderCallbacks>,WTF::DefaultRefDerefTraits<WebKit::RemoteVideoEncoderCallbacks>> &&)::$_0::optional<unsigned long long>,std::span<unsigned char const,18446744073709551615ul><unsigned int>>::call(WTF *result, uint64_t a2, WTF *this, char a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  v14 = *(result + 1);
  if (this)
  {
    if (this >> 32)
    {
      __break(0xC471u);
      return result;
    }

    v16 = WTF::fastMalloc(this);
    v18 = 0;
    do
    {
      *(v18 + v16) = *(v18 + a2);
      v18 = (v18 + 1);
    }

    while (this != v18);
    if (*(v14 + 24))
    {

      return WTF::fastFree(v16, v17);
    }
  }

  else
  {
    if (*(v14 + 24))
    {
      return result;
    }

    v16 = 0;
  }

  v20 = v16;
  v21 = this;
  v22 = this;
  v23 = a4;
  v24 = a5;
  v25 = a6;
  v26 = a7;
  v27 = a8;
  v28 = BYTE4(a8);
  (*(**(v14 + 16) + 16))(*(v14 + 16), &v20);
  result = v20;
  if (v20)
  {
    v20 = 0;
    v21 = 0;
    return WTF::fastFree(result, v19);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::RemoteVideoEncoder::RemoteVideoEncoder(WebKit::LibWebRTCCodecs::Encoder &,WTF::Ref<WebKit::RemoteVideoEncoderCallbacks,WTF::RawPtrTraits<WebKit::RemoteVideoEncoderCallbacks>,WTF::DefaultRefDerefTraits<WebKit::RemoteVideoEncoderCallbacks>> &&)::$_1,void,WebCore::VideoEncoderActiveConfiguration &&>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F11293B0;
  a1[1] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WebKit::RemoteVideoEncoderCallbacks,(WTF::DestructionThread)0>::deref(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteVideoEncoder::RemoteVideoEncoder(WebKit::LibWebRTCCodecs::Encoder &,WTF::Ref<WebKit::RemoteVideoEncoderCallbacks,WTF::RawPtrTraits<WebKit::RemoteVideoEncoderCallbacks>,WTF::DefaultRefDerefTraits<WebKit::RemoteVideoEncoderCallbacks>> &&)::$_1,void,WebCore::VideoEncoderActiveConfiguration &&>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F11293B0;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WebKit::RemoteVideoEncoderCallbacks,(WTF::DestructionThread)0>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteVideoEncoder::RemoteVideoEncoder(WebKit::LibWebRTCCodecs::Encoder &,WTF::Ref<WebKit::RemoteVideoEncoderCallbacks,WTF::RawPtrTraits<WebKit::RemoteVideoEncoderCallbacks>,WTF::DefaultRefDerefTraits<WebKit::RemoteVideoEncoderCallbacks>> &&)::$_1,void,WebCore::VideoEncoderActiveConfiguration &&>::call(uint64_t result)
{
  v1 = *(result + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    return (*(**(v1 + 8) + 16))();
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteVideoFrameProxy::pixelBuffer(void)::$_0,void,WTF::RetainPtr<__CVBuffer *> &&>::call(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  v4 = **(a1 + 8);
  v5 = *(v4 + 128);
  *(v4 + 128) = v3;
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(a1 + 16);

  return WTF::BinarySemaphore::signal(v6);
}

void *WTF::Detail::CallableWrapper<WebKit::SourceBufferPrivateRemote::ensureWeakOnDispatcher(WTF::Function<void ()(WebKit::SourceBufferPrivateRemote&)> &&)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F1129400;
  v3 = a1[3];
  a1[3] = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::SourceBufferPrivateRemote::ensureWeakOnDispatcher(WTF::Function<void ()(WebKit::SourceBufferPrivateRemote&)> &&)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1129400;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return WTF::fastFree(this, a2);
}

atomic_uchar *WTF::Detail::CallableWrapper<WebKit::SourceBufferPrivateRemote::ensureWeakOnDispatcher(WTF::Function<void ()(WebKit::SourceBufferPrivateRemote&)> &&)::$_0,void>::call(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(result, *(a1 + 16), &v8);
    if (v8)
    {
      result = *(v8 + 392);
      if (result)
      {
        result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(result, *(v8 + 384), &v7);
        if (v7)
        {
          v4 = atomic_load((v8 + 424));
          if ((v4 & 1) == 0)
          {
            result = (*(**(a1 + 8) + 16))(*(a1 + 8), v8);
          }

          v5 = v7;
          v7 = 0;
          if (v5)
          {
            result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref((v5 + 24), v3);
          }
        }
      }

      v6 = v8;
      v8 = 0;
      if (v6)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivate,(WTF::DestructionThread)1>::deref((v6 + 8));
      }
    }
  }

  return result;
}

IPC::Encoder *WTF::Detail::CallableWrapper<WebKit::SourceBufferPrivateRemote::abort(void)::$_0,void,WebKit::SourceBufferPrivateRemote&>::call(uint64_t a1, uint64_t a2)
{
  WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(*(a2 + 392), *(a2 + 384), &v12);
  v3 = *(v12 + 32);
  v4 = *(a2 + 408);
  v6 = IPC::Encoder::operator new(0x238, v5);
  *v6 = 1632;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = v4;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v13 = v6;
  IPC::Connection::sendMessageImpl(v3, &v13, 0, 0);
  result = v13;
  v13 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v7);
    result = bmalloc::api::tzoneFree(v10, v11);
  }

  v9 = v12;
  v12 = 0;
  if (v9)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref((v9 + 24), v7);
  }

  return result;
}

IPC::Encoder *WTF::Detail::CallableWrapper<WebKit::SourceBufferPrivateRemote::resetParserState(void)::$_0,void,WebKit::SourceBufferPrivateRemote&>::call(uint64_t a1, uint64_t a2)
{
  WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(*(a2 + 392), *(a2 + 384), &v12);
  v3 = *(v12 + 32);
  v4 = *(a2 + 408);
  v6 = IPC::Encoder::operator new(0x238, v5);
  *v6 = 1646;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = v4;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v13 = v6;
  IPC::Connection::sendMessageImpl(v3, &v13, 0, 0);
  result = v13;
  v13 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v7);
    result = bmalloc::api::tzoneFree(v10, v11);
  }

  v9 = v12;
  v12 = 0;
  if (v9)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref((v9 + 24), v7);
  }

  return result;
}

IPC::Encoder *WTF::Detail::CallableWrapper<WebKit::SourceBufferPrivateRemote::removedFromMediaSource(void)::$_0,void,WebKit::SourceBufferPrivateRemote&>::call(uint64_t a1, uint64_t a2)
{
  atomic_store(1u, (a2 + 424));
  WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(*(a2 + 392), *(a2 + 384), &v12);
  v3 = *(v12 + 32);
  v4 = *(a2 + 408);
  v6 = IPC::Encoder::operator new(0x238, v5);
  *v6 = 1645;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = v4;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v13 = v6;
  IPC::Connection::sendMessageImpl(v3, &v13, 0, 0);
  result = v13;
  v13 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v7);
    result = bmalloc::api::tzoneFree(v10, v11);
  }

  v9 = v12;
  v12 = 0;
  if (v9)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref((v9 + 24), v7);
  }

  return result;
}

atomic_uchar **WTF::Detail::CallableWrapper<WebKit::SourceBufferPrivateRemote::setActive(BOOL)::$_0,void,WebKit::SourceBufferPrivateRemote&>::call(atomic_uchar **result, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    v4 = result;
    result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::LibWebRTCCodecsProxy>(&v16, v3, *(a2 + 16));
    v5 = v16;
    if (v16)
    {
      v15 = *(v4 + 8);
      WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(*(a2 + 392), *(a2 + 384), &v17);
      v6 = *(v17 + 32);
      v7 = *(a2 + 408);
      v9 = IPC::Encoder::operator new(0x238, v8);
      *v9 = 1650;
      *(v9 + 2) = 0;
      *(v9 + 3) = 0;
      *(v9 + 1) = v7;
      *(v9 + 68) = 0;
      *(v9 + 70) = 0;
      *(v9 + 69) = 0;
      IPC::Encoder::encodeHeader(v9);
      v18 = v9;
      IPC::Encoder::operator<<<BOOL &>(v9, &v15);
      IPC::Connection::sendMessageImpl(v6, &v18, 0, 0);
      v11 = v18;
      v18 = 0;
      if (v11)
      {
        IPC::Encoder::~Encoder(v11, v10);
        bmalloc::api::tzoneFree(v13, v14);
      }

      v12 = v17;
      v17 = 0;
      if (v12)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref((v12 + 24), v10);
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaSourcePrivate,(WTF::DestructionThread)0>::deref((v5 + 8), v10);
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::SourceBufferPrivateRemote::canSwitchToType(WebCore::ContentType const&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F11294C8;
  a1[1] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::SourceBufferPrivateRemote::canSwitchToType(WebCore::ContentType const&)::$_0,void>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F11294C8;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

atomic_uchar **WTF::Detail::CallableWrapper<WebKit::SourceBufferPrivateRemote::canSwitchToType(WebCore::ContentType const&)::$_0,void>::call(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = *(v2 + 392);
  if (result)
  {
    result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(result, *(v2 + 384), &v27);
    if (v27)
    {
      v5 = atomic_load((v2 + 424));
      if (v5)
      {
LABEL_26:
        v18 = v27;
        v27 = 0;
        if (v18)
        {
          return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref((v18 + 24), v4);
        }

        return result;
      }

      WebCore::ContentType::ContentType(&v25, (a1 + 8));
      v6 = *(v27 + 32);
      IPC::Connection::createSyncMessageEncoder(0x101C, *(v2 + 408), v30);
      v7 = v30[0];
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v30[0], &v25);
      LOBYTE(v28) = v26;
      IPC::Encoder::operator<<<BOOL>(v7, &v28);
      v8 = IPC::Connection::sendSyncMessage(v6, v30[1], v30, 0, &v28, INFINITY);
      if (v29)
      {
        if (v29 != 1)
        {
          mpark::throw_bad_variant_access(v8);
        }

        v9 = v28;
        v10 = 1;
LABEL_15:
        v16 = v30[0];
        v30[0] = 0;
        if (v16)
        {
          IPC::Encoder::~Encoder(v16, v4);
          bmalloc::api::tzoneFree(v19, v20);
        }

        if (v10)
        {
          v17 = 0;
        }

        else
        {
          v17 = v7;
        }

        **(a1 + 24) = v17;
        if (!v10 && v9)
        {
          IPC::Decoder::~Decoder(v9);
          bmalloc::api::tzoneFree(v23, v24);
        }

        result = v25;
        v25 = 0;
        if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, v4);
        }

        goto LABEL_26;
      }

      v9 = v28;
      v28 = 0;
      if (*(v9 + 50) == 3194)
      {
        v11 = 11;
      }

      else
      {
        v14 = IPC::Decoder::decode<std::tuple<BOOL>>(v9);
        if (v14 >= 0x100u)
        {
          LOBYTE(v7) = v14;
          v10 = 0;
          goto LABEL_12;
        }

        v11 = 14;
      }

      IPC::Decoder::~Decoder(v9);
      bmalloc::api::tzoneFree(v12, v13);
      v10 = 1;
      v9 = v11;
LABEL_12:
      if (!v29)
      {
        v15 = v28;
        v28 = 0;
        if (v15)
        {
          IPC::Decoder::~Decoder(v15);
          bmalloc::api::tzoneFree(v21, v22);
        }
      }

      goto LABEL_15;
    }
  }

  return result;
}

IPC::Encoder *WTF::Detail::CallableWrapper<WebKit::SourceBufferPrivateRemote::setMediaSourceEnded(BOOL)::$_0,void,WebKit::SourceBufferPrivateRemote&>::call(uint64_t a1, uint64_t a2)
{
  v12 = *(a1 + 8);
  WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(*(a2 + 392), *(a2 + 384), &v13);
  v3 = *(v13 + 32);
  v4 = *(a2 + 408);
  v6 = IPC::Encoder::operator new(0x238, v5);
  *v6 = 1658;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = v4;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v14 = v6;
  IPC::Encoder::operator<<<BOOL &>(v6, &v12);
  IPC::Connection::sendMessageImpl(v3, &v14, 0, 0);
  result = v14;
  v14 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v7);
    result = bmalloc::api::tzoneFree(v10, v11);
  }

  v9 = v13;
  v13 = 0;
  if (v9)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref((v9 + 24), v7);
  }

  return result;
}

IPC::Encoder *WTF::Detail::CallableWrapper<WebKit::SourceBufferPrivateRemote::setMode(WebCore::SourceBufferAppendMode)::$_0,void,WebKit::SourceBufferPrivateRemote&>::call(uint64_t a1, uint64_t a2)
{
  WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(*(a2 + 392), *(a2 + 384), &v13);
  v4 = *(v13 + 32);
  v5 = *(a2 + 408);
  v7 = IPC::Encoder::operator new(0x238, v6);
  *v7 = 1659;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = v5;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  IPC::Encoder::encodeHeader(v7);
  v14 = v7;
  v15 = *(a1 + 8);
  IPC::Encoder::operator<<<unsigned char>(v7, &v15);
  IPC::Connection::sendMessageImpl(v4, &v14, 0, 0);
  result = v14;
  v14 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v8);
    result = bmalloc::api::tzoneFree(v11, v12);
  }

  v10 = v13;
  v13 = 0;
  if (v10)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref((v10 + 24), v8);
  }

  return result;
}

IPC::Encoder *WTF::Detail::CallableWrapper<WebKit::SourceBufferPrivateRemote::evictCodedFrames(unsigned long long,WTF::MediaTime const&)::$_0,void,WebKit::SourceBufferPrivateRemote&>::call(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(*(a2 + 392), *(a2 + 384), &v14);
  v5 = *(v14 + 32);
  v6 = *(a2 + 408);
  v8 = IPC::Encoder::operator new(0x238, v7);
  *v8 = 1635;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = v6;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v15 = v8;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v8, v4);
  IPC::ArgumentCoder<WTF::MediaTime,void>::encode(v8, (a1 + 16));
  IPC::Connection::sendMessageImpl(v5, &v15, 0, 0);
  result = v15;
  v15 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v9);
    result = bmalloc::api::tzoneFree(v12, v13);
  }

  v11 = v14;
  v14 = 0;
  if (v11)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref((v11 + 24), v9);
  }

  return result;
}

IPC::Encoder *WTF::Detail::CallableWrapper<WebKit::SourceBufferPrivateRemote::evictCodedFrames(unsigned long long,WTF::MediaTime const&)::$_1,void>::call(void *a1)
{
  v2 = a1[1];
  result = *(v2 + 392);
  if (result)
  {
    result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(result, *(v2 + 384), &v60);
    if (v60)
    {
      v5 = atomic_load((v2 + 424));
      if (v5)
      {
        goto LABEL_52;
      }

      v6 = *(v60 + 32);
      v7 = a1[2];
      v8 = a1[3];
      v9 = *v7;
      IPC::Connection::createSyncMessageEncoder(0x101D, *(v2 + 408), v67);
      v10 = v67[0];
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v67[0], v9);
      IPC::ArgumentCoder<WTF::MediaTime,void>::encode(v10, v8);
      result = IPC::Connection::sendSyncMessage(v6, v67[1], v67, 0, &v65, INFINITY);
      if (v66)
      {
        if (v66 != 1)
        {
          goto LABEL_57;
        }

        LOBYTE(v57[0]) = v65;
        v12 = 1;
        v59 = 1;
LABEL_29:
        result = v67[0];
        v67[0] = 0;
        if (result)
        {
          IPC::Encoder::~Encoder(result, v4);
          result = bmalloc::api::tzoneFree(v52, v53);
          if (!v12)
          {
LABEL_31:
            result = WebCore::SourceBufferPrivate::client(&v68, v2);
            if (!v68)
            {
LABEL_48:
              if (!v59)
              {
                WTF::Vector<WebCore::PlatformTimeRanges,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v57[1], v4);
                result = v57[0];
                v57[0] = 0;
                if (result)
                {
                  IPC::Decoder::~Decoder(result);
                  result = bmalloc::api::tzoneFree(v50, v51);
                }
              }

              goto LABEL_52;
            }

            v37 = 0;
            v61[0] = 0;
            v61[1] = 0;
            v13 = (v2 + 425);
            atomic_compare_exchange_strong_explicit((v2 + 425), &v37, 1u, memory_order_acquire, memory_order_acquire);
            if (!v37)
            {
              goto LABEL_33;
            }

            goto LABEL_56;
          }
        }

        else if (!v12)
        {
          goto LABEL_31;
        }

LABEL_52:
        v54 = v60;
        v60 = 0;
        if (v54)
        {
          return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref((v54 + 24), v4);
        }

        return result;
      }

      v13 = v65;
      v65 = 0;
      if (*(v13 + 25) == 3194)
      {
        v14 = 11;
LABEL_25:
        LOBYTE(v57[0]) = v14;
        v59 = 1;
        IPC::Decoder::~Decoder(v13);
        bmalloc::api::tzoneFree(v34, v35);
        v12 = 1;
LABEL_26:
        if (!v66)
        {
          v36 = v65;
          v65 = 0;
          if (v36)
          {
            IPC::Decoder::~Decoder(v36);
            bmalloc::api::tzoneFree(v55, v56);
          }
        }

        goto LABEL_29;
      }

      IPC::VectorArgumentCoder<false,WebCore::PlatformTimeRanges,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(v13, &v68, v11);
      if (v69 & 1) != 0 || (v26 = *v13, v27 = *(v13 + 1), *v13 = 0, *(v13 + 1) = 0, (v28 = *(v13 + 3)) != 0) && v27 && ((*(*v28 + 16))(v28, v26), (v69))
      {
        IPC::ArgumentCoder<WebCore::SourceBufferEvictionData,void>::decode(v13, &v70);
        if (v71[16] & 1) != 0 || (v15 = *v13, v29 = *(v13 + 1), *v13 = 0, *(v13 + 1) = 0, (v30 = *(v13 + 3)) != 0) && v29 && ((*(*v30 + 16))(v30, v15), (v71[16]))
        {
          if ((v69 & 1) == 0)
          {
            __break(1u);
LABEL_56:
            result = MEMORY[0x19EB01E30](v13);
LABEL_33:
            if (!v59)
            {
              v38 = v57[1];
              v39 = *v58;
              v57[1] = 0;
              *v58 = 0;
              *(&v40 + 1) = *&v58[16];
              *v71 = *&v58[8];
              *&v71[16] = *&v58[24];
              v41 = v61[0];
              if (HIDWORD(v61[1]))
              {
                v42 = 16 * HIDWORD(v61[1]);
                v43 = v61[0];
                do
                {
                  v44 = *v43;
                  if (*v43)
                  {
                    *v43 = 0;
                    *(v43 + 2) = 0;
                    WTF::fastFree(v44, v4);
                  }

                  v43 = (v43 + 16);
                  v42 -= 16;
                }

                while (v42);
              }

              if (v41)
              {
                WTF::fastFree(v41, v4);
              }

              *&v40 = 0;
              v70 = v40;
              v61[0] = v38;
              v61[1] = v39;
              v45 = *&v71[16];
              *(v2 + 40) = *v71;
              *(v2 + 56) = v45;
              WTF::Vector<WebCore::PlatformTimeRanges,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v70, v4);
              v46 = 1;
              atomic_compare_exchange_strong_explicit(v13, &v46, 0, memory_order_release, memory_order_relaxed);
              if (v46 != 1)
              {
                WTF::Lock::unlockSlow(v13);
              }

              (*(*v68 + 24))(&v70);
              v48 = v70;
              *&v70 = 0;
              if (v48 && atomic_fetch_add(v48 + 2, 0xFFFFFFFF) == 1)
              {
                atomic_store(1u, v48 + 2);
                (*(*v48 + 16))(v48);
              }

              result = WTF::Vector<WebCore::PlatformTimeRanges,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v61, v47);
              v49 = v68;
              *&v68 = 0;
              if (v49)
              {
                result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivateClient,(WTF::DestructionThread)0>::deref((v49 + 8), v4);
              }

              goto LABEL_48;
            }

LABEL_57:
            mpark::throw_bad_variant_access(result);
          }

          *&v16 = 0;
          v17 = v68;
          v68 = v16;
          v57[0] = v17;
          *v58 = v70;
          *&v58[16] = *v71;
          v58[32] = 1;
          WTF::Vector<WebCore::PlatformTimeRanges,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v68, v15);
          *v57 = 0uLL;
          *v61 = v17;
          v62 = *v58;
          v63 = *&v58[16];
          v64 = 1;
          WTF::Vector<WebCore::PlatformTimeRanges,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v57, v18);
          if (v64)
          {
            *&v20 = 0;
            v21 = v61[0];
            v22 = v61[1];
            *v61 = v20;
            *&v71[8] = v62;
            *&v71[24] = v63;
            v70 = 0uLL;
            v57[0] = v13;
            v57[1] = v21;
            *v71 = 0;
            *v58 = v22;
            *&v58[8] = v62;
            *&v58[24] = v63;
            v59 = 0;
            WTF::Vector<WebCore::PlatformTimeRanges,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v70 + 8, v19);
            v23 = v70;
            *&v70 = 0;
            if (v23)
            {
              IPC::Decoder::~Decoder(v23);
              bmalloc::api::tzoneFree(v24, v25);
            }

            if (v64)
            {
              WTF::Vector<WebCore::PlatformTimeRanges,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v61, v4);
            }

            v12 = 0;
            goto LABEL_26;
          }

          goto LABEL_24;
        }

        if (v69)
        {
          WTF::Vector<WebCore::PlatformTimeRanges,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v68, v15);
        }
      }

      else
      {
        LOBYTE(v57[0]) = 0;
      }

      v31 = *v13;
      v32 = *(v13 + 1);
      *v13 = 0;
      *(v13 + 1) = 0;
      v33 = *(v13 + 3);
      if (v33 && v32)
      {
        (*(*v33 + 16))(v33, v31);
      }

LABEL_24:
      v14 = 14;
      goto LABEL_25;
    }
  }

  return result;
}

IPC::Encoder *WTF::Detail::CallableWrapper<WebKit::SourceBufferPrivateRemote::addTrackBuffer(unsigned long long,WTF::RefPtr<WebCore::MediaDescription,WTF::RawPtrTraits<WebCore::MediaDescription>,WTF::DefaultRefDerefTraits<WebCore::MediaDescription>> &&)::$_0,void,WebKit::SourceBufferPrivateRemote&>::call(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(*(a2 + 392), *(a2 + 384), &v13);
  v4 = *(v13 + 32);
  v5 = *(a2 + 408);
  v7 = IPC::Encoder::operator new(0x238, v6);
  *v7 = 1633;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = v5;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  IPC::Encoder::encodeHeader(v7);
  v14 = v7;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v7, v3);
  IPC::Connection::sendMessageImpl(v4, &v14, 0, 0);
  result = v14;
  v14 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v8);
    result = bmalloc::api::tzoneFree(v11, v12);
  }

  v10 = v13;
  v13 = 0;
  if (v10)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref((v10 + 24), v8);
  }

  return result;
}

IPC::Encoder *WTF::Detail::CallableWrapper<WebKit::SourceBufferPrivateRemote::resetTrackBuffers(void)::$_0,void,WebKit::SourceBufferPrivateRemote&>::call(uint64_t a1, uint64_t a2)
{
  WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(*(a2 + 392), *(a2 + 384), &v12);
  v3 = *(v12 + 32);
  v4 = *(a2 + 408);
  v6 = IPC::Encoder::operator new(0x238, v5);
  *v6 = 1648;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = v4;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v13 = v6;
  IPC::Connection::sendMessageImpl(v3, &v13, 0, 0);
  result = v13;
  v13 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v7);
    result = bmalloc::api::tzoneFree(v10, v11);
  }

  v9 = v12;
  v12 = 0;
  if (v9)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref((v9 + 24), v7);
  }

  return result;
}

IPC::Encoder *WTF::Detail::CallableWrapper<WebKit::SourceBufferPrivateRemote::clearTrackBuffers(BOOL)::$_0,void,WebKit::SourceBufferPrivateRemote&>::call(uint64_t a1, uint64_t a2)
{
  WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(*(a2 + 392), *(a2 + 384), &v12);
  v3 = *(v12 + 32);
  v4 = *(a2 + 408);
  v6 = IPC::Encoder::operator new(0x238, v5);
  *v6 = 1638;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = v4;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v13 = v6;
  IPC::Connection::sendMessageImpl(v3, &v13, 0, 0);
  result = v13;
  v13 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v7);
    result = bmalloc::api::tzoneFree(v10, v11);
  }

  v9 = v12;
  v12 = 0;
  if (v9)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref((v9 + 24), v7);
  }

  return result;
}

IPC::Encoder *WTF::Detail::CallableWrapper<WebKit::SourceBufferPrivateRemote::setAllTrackBuffersNeedRandomAccess(void)::$_0,void,WebKit::SourceBufferPrivateRemote&>::call(uint64_t a1, uint64_t a2)
{
  WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(*(a2 + 392), *(a2 + 384), &v12);
  v3 = *(v12 + 32);
  v4 = *(a2 + 408);
  v6 = IPC::Encoder::operator new(0x238, v5);
  *v6 = 1651;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = v4;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v13 = v6;
  IPC::Connection::sendMessageImpl(v3, &v13, 0, 0);
  result = v13;
  v13 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v7);
    result = bmalloc::api::tzoneFree(v10, v11);
  }

  v9 = v12;
  v12 = 0;
  if (v9)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref((v9 + 24), v7);
  }

  return result;
}

IPC::Encoder *WTF::Detail::CallableWrapper<WebKit::SourceBufferPrivateRemote::setGroupStartTimestamp(WTF::MediaTime const&)::$_0,void,WebKit::SourceBufferPrivateRemote&>::call(uint64_t a1, uint64_t a2)
{
  WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(*(a2 + 392), *(a2 + 384), &v13);
  v4 = *(v13 + 32);
  v5 = *(a2 + 408);
  v7 = IPC::Encoder::operator new(0x238, v6);
  *v7 = 1654;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = v5;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  IPC::Encoder::encodeHeader(v7);
  v14 = v7;
  IPC::ArgumentCoder<WTF::MediaTime,void>::encode(v7, (a1 + 8));
  IPC::Connection::sendMessageImpl(v4, &v14, 0, 0);
  result = v14;
  v14 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v8);
    result = bmalloc::api::tzoneFree(v11, v12);
  }

  v10 = v13;
  v13 = 0;
  if (v10)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref((v10 + 24), v8);
  }

  return result;
}

IPC::Encoder *WTF::Detail::CallableWrapper<WebKit::SourceBufferPrivateRemote::setGroupStartTimestampToEndTimestamp(void)::$_0,void,WebKit::SourceBufferPrivateRemote&>::call(uint64_t a1, uint64_t a2)
{
  WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(*(a2 + 392), *(a2 + 384), &v12);
  v3 = *(v12 + 32);
  v4 = *(a2 + 408);
  v6 = IPC::Encoder::operator new(0x238, v5);
  *v6 = 1655;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = v4;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v13 = v6;
  IPC::Connection::sendMessageImpl(v3, &v13, 0, 0);
  result = v13;
  v13 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v7);
    result = bmalloc::api::tzoneFree(v10, v11);
  }

  v9 = v12;
  v12 = 0;
  if (v9)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref((v9 + 24), v7);
  }

  return result;
}

IPC::Encoder *WTF::Detail::CallableWrapper<WebKit::SourceBufferPrivateRemote::setShouldGenerateTimestamps(BOOL)::$_0,void,WebKit::SourceBufferPrivateRemote&>::call(uint64_t a1, uint64_t a2)
{
  v12 = *(a1 + 8);
  WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(*(a2 + 392), *(a2 + 384), &v13);
  v3 = *(v13 + 32);
  v4 = *(a2 + 408);
  v6 = IPC::Encoder::operator new(0x238, v5);
  *v6 = 1660;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = v4;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v14 = v6;
  IPC::Encoder::operator<<<BOOL &>(v6, &v12);
  IPC::Connection::sendMessageImpl(v3, &v14, 0, 0);
  result = v14;
  v14 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v7);
    result = bmalloc::api::tzoneFree(v10, v11);
  }

  v9 = v13;
  v13 = 0;
  if (v9)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref((v9 + 24), v7);
  }

  return result;
}

IPC::Encoder *WTF::Detail::CallableWrapper<WebKit::SourceBufferPrivateRemote::reenqueueMediaIfNeeded(WTF::MediaTime const&)::$_0,void,WebKit::SourceBufferPrivateRemote&>::call(uint64_t a1, uint64_t a2)
{
  WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(*(a2 + 392), *(a2 + 384), &v13);
  v4 = *(v13 + 32);
  v5 = *(a2 + 408);
  v7 = IPC::Encoder::operator new(0x238, v6);
  *v7 = 1643;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = v5;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  IPC::Encoder::encodeHeader(v7);
  v14 = v7;
  IPC::ArgumentCoder<WTF::MediaTime,void>::encode(v7, (a1 + 8));
  IPC::Connection::sendMessageImpl(v4, &v14, 0, 0);
  result = v14;
  v14 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v8);
    result = bmalloc::api::tzoneFree(v11, v12);
  }

  v10 = v13;
  v13 = 0;
  if (v10)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref((v10 + 24), v8);
  }

  return result;
}

IPC::Encoder *WTF::Detail::CallableWrapper<WebKit::SourceBufferPrivateRemote::resetTimestampOffsetInTrackBuffers(void)::$_0,void,WebKit::SourceBufferPrivateRemote&>::call(uint64_t a1, uint64_t a2)
{
  WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(*(a2 + 392), *(a2 + 384), &v12);
  v3 = *(v12 + 32);
  v4 = *(a2 + 408);
  v6 = IPC::Encoder::operator new(0x238, v5);
  *v6 = 1647;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = v4;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v13 = v6;
  IPC::Connection::sendMessageImpl(v3, &v13, 0, 0);
  result = v13;
  v13 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v7);
    result = bmalloc::api::tzoneFree(v10, v11);
  }

  v9 = v12;
  v12 = 0;
  if (v9)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref((v9 + 24), v7);
  }

  return result;
}

IPC::Encoder *WTF::Detail::CallableWrapper<WebKit::SourceBufferPrivateRemote::startChangingType(void)::$_0,void,WebKit::SourceBufferPrivateRemote&>::call(uint64_t a1, uint64_t a2)
{
  WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(*(a2 + 392), *(a2 + 384), &v12);
  v3 = *(v12 + 32);
  v4 = *(a2 + 408);
  v6 = IPC::Encoder::operator new(0x238, v5);
  *v6 = 1662;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = v4;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v13 = v6;
  IPC::Connection::sendMessageImpl(v3, &v13, 0, 0);
  result = v13;
  v13 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v7);
    result = bmalloc::api::tzoneFree(v10, v11);
  }

  v9 = v12;
  v12 = 0;
  if (v9)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref((v9 + 24), v7);
  }

  return result;
}

IPC::Encoder *WTF::Detail::CallableWrapper<WebKit::SourceBufferPrivateRemote::setTimestampOffset(WTF::MediaTime const&)::$_0,void,WebKit::SourceBufferPrivateRemote&>::call(uint64_t a1, uint64_t a2)
{
  WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(*(a2 + 392), *(a2 + 384), &v13);
  v4 = *(v13 + 32);
  v5 = *(a2 + 408);
  v7 = IPC::Encoder::operator new(0x238, v6);
  *v7 = 1661;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = v5;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  IPC::Encoder::encodeHeader(v7);
  v14 = v7;
  IPC::ArgumentCoder<WTF::MediaTime,void>::encode(v7, (a1 + 8));
  IPC::Connection::sendMessageImpl(v4, &v14, 0, 0);
  result = v14;
  v14 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v8);
    result = bmalloc::api::tzoneFree(v11, v12);
  }

  v10 = v13;
  v13 = 0;
  if (v10)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref((v10 + 24), v8);
  }

  return result;
}

IPC::Encoder *WTF::Detail::CallableWrapper<WebKit::SourceBufferPrivateRemote::setAppendWindowStart(WTF::MediaTime const&)::$_0,void,WebKit::SourceBufferPrivateRemote&>::call(uint64_t a1, uint64_t a2)
{
  WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(*(a2 + 392), *(a2 + 384), &v13);
  v4 = *(v13 + 32);
  v5 = *(a2 + 408);
  v7 = IPC::Encoder::operator new(0x238, v6);
  *v7 = 1653;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = v5;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  IPC::Encoder::encodeHeader(v7);
  v14 = v7;
  IPC::ArgumentCoder<WTF::MediaTime,void>::encode(v7, (a1 + 8));
  IPC::Connection::sendMessageImpl(v4, &v14, 0, 0);
  result = v14;
  v14 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v8);
    result = bmalloc::api::tzoneFree(v11, v12);
  }

  v10 = v13;
  v13 = 0;
  if (v10)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref((v10 + 24), v8);
  }

  return result;
}

IPC::Encoder *WTF::Detail::CallableWrapper<WebKit::SourceBufferPrivateRemote::setAppendWindowEnd(WTF::MediaTime const&)::$_0,void,WebKit::SourceBufferPrivateRemote&>::call(uint64_t a1, uint64_t a2)
{
  WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(*(a2 + 392), *(a2 + 384), &v13);
  v4 = *(v13 + 32);
  v5 = *(a2 + 408);
  v7 = IPC::Encoder::operator new(0x238, v6);
  *v7 = 1652;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = v5;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  IPC::Encoder::encodeHeader(v7);
  v14 = v7;
  IPC::ArgumentCoder<WTF::MediaTime,void>::encode(v7, (a1 + 8));
  IPC::Connection::sendMessageImpl(v4, &v14, 0, 0);
  result = v14;
  v14 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v8);
    result = bmalloc::api::tzoneFree(v11, v12);
  }

  v10 = v13;
  v13 = 0;
  if (v10)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref((v10 + 24), v8);
  }

  return result;
}

atomic_uint **WTF::NativePromiseProducer<void,void,16u>::~NativePromiseProducer(atomic_uint **a1)
{
  v2 = *a1;
  if (*a1)
  {
    atomic_fetch_add(v2 + 2, 1u);
    isSettled = WTF::NativePromise<void,void,0u>::isSettled(v2);
    v4 = isSettled;
    if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2 + 2);
      isSettled = (*(*v2 + 16))(v2);
      if (v4)
      {
        goto LABEL_13;
      }
    }

    else if (isSettled)
    {
      goto LABEL_13;
    }

    v5 = *a1;
    if (*a1)
    {
      atomic_fetch_add(v5 + 2, 1u);
    }

    v6 = WTF::NativePromiseBase::logChannel(isSettled);
    if (*v6 && v6[16] >= 4u)
    {
      WTF::Logger::log<char [10],WTF::NativePromise<void,void,0u>>(v6, 4, "Non settled AutoRejectProducer, reject with default value", v5);
    }

    if (v5 && atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v5 + 2);
      (*(*v5 + 16))(v5);
    }

    v9[0] = 0;
    v9[1] = 0;
    v9[2] = "~NativePromiseProducer";
    v9[3] = 0;
    WTF::NativePromiseProducer<void,void,16u>::reject<std::enable_if<true,void>>(a1, v9);
  }

LABEL_13:
  WTF::NativePromiseProducer<void,void,0u>::assertIsDead(a1);
  v7 = *a1;
  *a1 = 0;
  if (v7 && atomic_fetch_add(v7 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v7 + 2);
    (*(*v7 + 16))(v7);
  }

  return a1;
}

WTF::Lock *WTF::NativePromiseProducer<void,void,16u>::reject<std::enable_if<true,void>>(atomic_uint **a1, WTF::NativePromiseBase *a2)
{
  isNothing = WTF::NativePromiseProducer<void,void,0u>::isNothing(a1);
  v5 = *a1;
  if (isNothing)
  {
    if (v5)
    {
      atomic_fetch_add(v5 + 2, 1u);
      result = WTF::NativePromise<void,void,0u>::reject<std::enable_if<true,void>>(v5, a2);
      if (atomic_fetch_add(v5 + 2, 0xFFFFFFFF) != 1)
      {
        return result;
      }

      goto LABEL_16;
    }

    return WTF::NativePromise<void,void,0u>::reject<std::enable_if<true,void>>(0, a2);
  }

  else
  {
    if (v5)
    {
      atomic_fetch_add(v5 + 2, 1u);
    }

    result = WTF::NativePromiseBase::logChannel(isNothing);
    if (*result)
    {
      v7 = *(result + 16) >= 4u;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      result = WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [39],WTF::NativePromise<void,void,0u>>(result, 4u, a2, " ignored already resolved or rejected ", v5);
    }

    if (v5 && atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
    {
LABEL_16:
      atomic_store(1u, v5 + 2);
      v8 = *(*v5 + 16);

      return v8(v5);
    }
  }

  return result;
}

WTF::Lock *WTF::NativePromise<void,void,0u>::reject<std::enable_if<true,void>>(unsigned __int8 *a1, WTF::NativePromiseBase *a2)
{
  v4 = 0;
  v7 = (a1 + 48);
  v8 = 1;
  atomic_compare_exchange_strong_explicit(a1 + 48, &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    MEMORY[0x19EB01E30]();
  }

  WTF::NativePromiseBase::log<WTF::Logger::LogSiteIdentifier,char [12],WTF::NativePromise<void,void,0u>>(a2, " rejecting ", a1);
  mpark::detail::destructor<mpark::detail::traits<WTF::NativePromise<void,void,0u>::Storage::NoResult,std::experimental::fundamentals_v3::expected<void,WTF::detail::VoidPlaceholder>,WTF::Function<std::experimental::fundamentals_v3::expected<void,WTF::detail::VoidPlaceholder> ()(void)>>,(mpark::detail::Trait)1>::destroy(a1 + 56);
  a1[57] = 1;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::SourceBufferPrivateRemote::setMaximumBufferSize(unsigned long)::$_0,void,WebKit::SourceBufferPrivateRemote&>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F1129798;
  WTF::NativePromiseProducer<void,void,16u>::~NativePromiseProducer((a1 + 16));
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::SourceBufferPrivateRemote::setMaximumBufferSize(unsigned long)::$_0,void,WebKit::SourceBufferPrivateRemote&>::~CallableWrapper(atomic_uint **a1)
{
  *a1 = &unk_1F1129798;
  WTF::NativePromiseProducer<void,void,16u>::~NativePromiseProducer(a1 + 2);

  return WTF::fastFree(a1, v2);
}

atomic_uint **WTF::Detail::CallableWrapper<WebKit::SourceBufferPrivateRemote::setMaximumBufferSize(unsigned long)::$_0,void,WebKit::SourceBufferPrivateRemote&>::call(uint64_t a1, uint64_t a2)
{
  v81[2] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 8);
  WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(*(a2 + 392), *(a2 + 384), v62);
  v5 = *(v62[0] + 4);
  v6 = *(a2 + 408);
  *buf = 0;
  *&buf[8] = 0;
  *&buf[16] = "sendWithPromisedReply";
  *&buf[24] = 0;
  WTF::NativePromiseProducer<void,IPC::Error,0u>::NativePromiseProducer<std::enable_if<true,void>>(&v63, 0, buf);
  v7 = v63;
  if (v63)
  {
    atomic_fetch_add(v63 + 2, 1u);
    v8 = v63;
  }

  else
  {
    v8 = 0;
  }

  v63 = 0;
  *&buf[8] = v64;
  *&buf[24] = v65;
  v9 = WTF::fastMalloc(0x30);
  *v9 = &unk_1F11297C0;
  *(v9 + 8) = v8;
  *buf = 0;
  v10 = *&buf[24];
  *(v9 + 16) = *&buf[8];
  *(v9 + 32) = v10;
  v58 = v9;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    __break(0xC471u);
    goto LABEL_79;
  }

  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  WTF::NativePromiseProducer<void,IPC::Error,0u>::~NativePromiseProducer(buf);
  v12 = IPC::Encoder::operator new(0x238, v11);
  *v12 = 1656;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = v6;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  *buf = v12;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, v4);
  IPC::Connection::sendMessageWithAsyncReplyWithDispatcher(v5, buf, &v58, 0, 0);
  v14 = *buf;
  *buf = 0;
  if (v14)
  {
    IPC::Encoder::~Encoder(v14, v13);
    bmalloc::api::tzoneFree(v56, v57);
  }

  v15 = v58;
  v58 = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  WTF::NativePromiseProducer<void,IPC::Error,0u>::~NativePromiseProducer(&v63);
  v17 = v62[0];
  v62[0] = 0;
  if (v17)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref(v17 + 3, v16);
  }

  v58 = 0;
  IdentifierInternal = 0;
  v60 = "operator()";
  v61 = 0;
  v18 = *(a1 + 16);
  if (v18)
  {
    atomic_fetch_add(v18 + 2, 1u);
  }

  isSettled = WTF::NativePromise<void,void,0u>::isSettled(v7);
  v20 = WTF::NativePromiseBase::logChannel(isSettled);
  if (!*v20)
  {
    goto LABEL_63;
  }

  v21 = v20;
  if (v20[16] < 4u)
  {
    goto LABEL_63;
  }

  WTF::Logger::LogSiteIdentifier::toString(&v73, &v58);
  WTF::String::String(&v72, " invoking chainTo() [");
  WTF::LogArgument<WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>::toString(v7, &v71);
  WTF::String::String(&v70, " chainedPromise:");
  WTF::LogArgument<WTF::NativePromise<void,void,0u>>::toString(v18, &v69);
  WTF::String::String(&v68, " isSettled:");
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  WTF::String::String(&v66, "]");
  WTF::tryMakeString<WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String>(&v73, &v72, &v71, &v70, &v69, &v68, &v67, &v66, v62);
  if (!v62[0])
  {
    __break(0xC471u);
LABEL_79:
    JUMPOUT(0x19E2B6054);
  }

  v23 = v66;
  v66 = 0;
  if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v23, v22);
  }

  v24 = v67;
  v67 = 0;
  if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v24, v22);
  }

  v25 = v68;
  v68 = 0;
  if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v25, v22);
  }

  v26 = v69;
  v69 = 0;
  if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v26, v22);
  }

  v27 = v70;
  v70 = 0;
  if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v27, v22);
  }

  v28 = v71;
  v71 = 0;
  if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v28, v22);
  }

  v29 = v72;
  v72 = 0;
  if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v29, v22);
  }

  v30 = v73;
  v73 = 0;
  if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v30, v22);
  }

  v31 = *(v21 + 4);
  v32 = os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
  if (v32)
  {
    WTF::String::utf8();
    v34 = v63 ? v63 + 16 : 0;
    *buf = 136446210;
    *&buf[4] = v34;
    _os_log_impl(&dword_19D52D000, v31, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
    v32 = v63;
    v63 = 0;
    if (v32)
    {
      if (*v32 == 1)
      {
        v32 = WTF::fastFree(v32, v33);
      }

      else
      {
        --*v32;
      }
    }
  }

  if (*v21 && v21[16] >= 4u)
  {
    v35 = MEMORY[0x1E696EBC0];
    while (1)
    {
      v36 = *v35;
      if (v36)
      {
        break;
      }

      v37 = *v35;
      atomic_compare_exchange_strong_explicit(v35, &v37, v36 | 1, memory_order_acquire, memory_order_acquire);
      if (v37 == v36)
      {
        v38 = WTF::Logger::observers(v32);
        v39 = *(v38 + 12);
        if (v39)
        {
          v40 = *v38;
          v41 = *v38 + 8 * v39;
          do
          {
            v42 = *v40;
            *buf = 0;
            WTF::Logger::LogSiteIdentifier::toString(&buf[8], &v58);
            *&buf[16] = 0;
            WTF::String::String(&buf[24], " invoking chainTo() [");
            *&buf[32] = 0;
            WTF::LogArgument<WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>::toString(v7, &v75);
            v76 = 0;
            WTF::String::String(v77, " chainedPromise:");
            v77[2] = 0;
            WTF::LogArgument<WTF::NativePromise<void,void,0u>>::toString(v18, &v78);
            v79 = 0;
            WTF::String::String(v80, " isSettled:");
            v80[2] = 0;
            WTF::StringImpl::createWithoutCopyingNonEmpty();
            v80[6] = 0;
            WTF::String::String(v81, "]");
            WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v63, buf, 8uLL);
            (*(*v42 + 16))(v42, v21, 4, &v63);
            WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v63, v43);
            for (i = 120; i != -8; i -= 16)
            {
              v45 = *&buf[i];
              *&buf[i] = 0;
              if (v45 && atomic_fetch_add_explicit(v45, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v45, v33);
              }
            }

            ++v40;
          }

          while (v40 != v41);
        }

        v46 = 1;
        atomic_compare_exchange_strong_explicit(v35, &v46, 0, memory_order_release, memory_order_relaxed);
        if (v46 != 1)
        {
          WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
        }

        break;
      }
    }
  }

  v47 = v62[0];
  v62[0] = 0;
  if (v47 && atomic_fetch_add_explicit(v47, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v47, v33);
    if (!v18)
    {
      goto LABEL_66;
    }

    goto LABEL_64;
  }

LABEL_63:
  if (!v18)
  {
    goto LABEL_66;
  }

LABEL_64:
  if (atomic_fetch_add(v18 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v18 + 2);
    (*(*v18 + 16))(v18);
  }

LABEL_66:
  v48 = atomic_load(v7 + 113);
  v49 = *(a1 + 16);
  if (v49)
  {
    atomic_fetch_add((v49 + 8), 1u);
    WTF::NativePromise<void,void,0u>::setDispatchMode(v49, v48, &v58);
    if (atomic_fetch_add((v49 + 8), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, (v49 + 8));
      (*(*v49 + 16))(v49);
    }
  }

  else
  {
    WTF::NativePromise<void,void,0u>::setDispatchMode(0, v48, &v58);
  }

  v50 = *(a1 + 16);
  *(a1 + 16) = 0;
  v51 = *(a1 + 40);
  v64 = *(a1 + 24);
  v65 = v51;
  v62[0] = 0;
  v62[1] = 0;
  v52 = WTF::fastMalloc(0x50);
  v53 = WTF::fastMalloc(0x30);
  *v53 = &unk_1F1129810;
  *(v53 + 8) = v50;
  v63 = 0;
  v54 = v65;
  *(v53 + 16) = v64;
  *(v53 + 32) = v54;
  *(v52 + 8) = 1;
  *(v52 + 16) = 0;
  *(v52 + 24) = 0;
  *(v52 + 32) = 0;
  *(v52 + 40) = "chainTo";
  *(v52 + 48) = 0;
  *(v52 + 56) = 0;
  *v52 = &unk_1F1129CC0;
  *(v52 + 64) = 0;
  *(v52 + 72) = v53;
  atomic_fetch_add(v7 + 2, 1u);
  *buf = v7;
  *&buf[8] = v52;
  *&buf[16] = *v62;
  *&buf[32] = "chainTo";
  v75 = 0;
  WTF::NativePromise<void,IPC::Error,0u>::ThenCommand<WTF::NativePromise<void,IPC::Error,0u>::ThenCallback<false,void>>::~ThenCommand(buf);
  result = WTF::NativePromiseProducer<void,void,16u>::~NativePromiseProducer(&v63);
  if (atomic_fetch_add(v7 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v7 + 2);
    return (*(*v7 + 16))(v7);
  }

  return result;
}

uint64_t WTF::NativePromiseProducer<void,IPC::Error,0u>::NativePromiseProducer<std::enable_if<true,void>>(uint64_t a1, unsigned __int8 a2, WTF::Logger::LogSiteIdentifier *a3)
{
  v6 = WTF::fastMalloc(0x78);
  v7 = WTF::NativePromise<void,IPC::Error,0u>::NativePromise(v6, a3);
  *a1 = v7;
  v8 = *a3;
  *(a1 + 24) = *(a3 + 1);
  *(a1 + 8) = v8;
  v9 = (v7 + 8);
  atomic_fetch_add((v7 + 8), 1u);
  WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::setDispatchMode(v7, a2, a3);
  if (atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v9);
    (*(*v6 + 16))(v6);
  }

  return a1;
}

uint64_t WTF::NativePromise<void,IPC::Error,0u>::NativePromise(uint64_t a1, _OWORD *a2)
{
  *(a1 + 8) = 1;
  *a1 = &unk_1F1129C70;
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
  if (*v4 && v4[16] >= 4u)
  {
    WTF::Logger::log<char [10],WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>(v4, 4, "creating ", a1);
  }

  return a1;
}

uint64_t WTF::NativePromise<void,IPC::Error,0u>::assertIsDead(uint64_t result)
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
      result = WTF::NativePromiseProducer<void,IPC::Error,0u>::assertIsDead(v5);
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

uint64_t WTF::NativePromise<void,IPC::Error,0u>::~NativePromise(uint64_t a1)
{
  v1 = WTF::NativePromise<void,IPC::Error,0u>::~NativePromise(a1);

  return WTF::fastFree(v1, v2);
}

{
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
    WTF::Logger::log<char [10],WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>(v2, 4, "destroying ", a1);
  }

  WTF::NativePromise<void,IPC::Error,0u>::assertIsDead(a1);
  WTF::Vector<WTF::NativePromiseProducer<void,IPC::Error,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 96, v4);
  WTF::Vector<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 72, v5);
  v6 = *(a1 + 64);
  if (v6 >= 2 && v6 != 255)
  {
    v7 = *(a1 + 56);
    *(a1 + 56) = 0;
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }
  }

  *(a1 + 64) = -1;
  return a1;
}

atomic_uint **WTF::NativePromiseProducer<void,IPC::Error,0u>::assertIsDead(atomic_uint **result)
{
  v1 = *result;
  if (*result)
  {
    atomic_fetch_add(v1 + 2, 1u);
    result = WTF::NativePromise<void,IPC::Error,0u>::assertIsDead(v1);
    if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v1 + 2);
      v2 = *(*v1 + 16);

      return v2(v1);
    }
  }

  return result;
}

uint64_t WTF::Vector<WTF::NativePromiseProducer<void,IPC::Error,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = *a1;
    v5 = 40 * v3;
    do
    {
      v4 = WTF::NativePromiseProducer<void,IPC::Error,0u>::~NativePromiseProducer(v4) + 5;
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

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<IPC::Connection::NoOpPromiseConverter,Messages::RemoteSourceBufferProxy::SetMaximumBufferSize,WTF::NativePromise<void,IPC::Error,0u>>(WTF::NativePromise<void,IPC::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1},void,IPC::Connection*,std::unique_ptr<IPC::Decoder> &>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F11297C0;
  WTF::NativePromiseProducer<void,IPC::Error,0u>::~NativePromiseProducer((a1 + 8));
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<IPC::Connection::NoOpPromiseConverter,Messages::RemoteSourceBufferProxy::SetMaximumBufferSize,WTF::NativePromise<void,IPC::Error,0u>>(WTF::NativePromise<void,IPC::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1},void,IPC::Connection*,std::unique_ptr<IPC::Decoder> &>::~CallableWrapper(atomic_uint **a1)
{
  *a1 = &unk_1F11297C0;
  WTF::NativePromiseProducer<void,IPC::Error,0u>::~NativePromiseProducer(a1 + 1);

  return WTF::fastFree(a1, v2);
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<IPC::Connection::NoOpPromiseConverter,Messages::RemoteSourceBufferProxy::SetMaximumBufferSize,WTF::NativePromise<void,IPC::Error,0u>>(WTF::NativePromise<void,IPC::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1},void,IPC::Connection*,std::unique_ptr<IPC::Decoder> &>::call(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  *a3 = 0;
  v5 = WTF::fastMalloc(0x10);
  *v5 = &unk_1F11297E8;
  v5[1] = v4;
  v8 = v5;
  v7[0] = 0;
  v7[1] = 0;
  v7[2] = "operator()";
  v7[3] = 0;
  WTF::NativePromiseProducer<void,IPC::Error,0u>::settleWithFunction<std::enable_if<true,void>>((a1 + 8), &v8, v7);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

WTF::Lock *WTF::NativePromiseProducer<void,IPC::Error,0u>::settleWithFunction<std::enable_if<true,void>>(atomic_uint **a1, uint64_t *a2, WTF::Logger::LogSiteIdentifier *a3)
{
  isNothing = WTF::NativePromiseProducer<void,void,0u>::isNothing(a1);
  v7 = *a1;
  if (isNothing)
  {
    if (v7)
    {
      atomic_fetch_add(v7 + 2, 1u);
      result = WTF::NativePromise<void,IPC::Error,0u>::settleWithFunction(v7, a2, a3);
      if (atomic_fetch_add(v7 + 2, 0xFFFFFFFF) != 1)
      {
        return result;
      }

      goto LABEL_16;
    }

    return WTF::NativePromise<void,IPC::Error,0u>::settleWithFunction(0, a2, a3);
  }

  else
  {
    if (v7)
    {
      atomic_fetch_add(v7 + 2, 1u);
    }

    result = WTF::NativePromiseBase::logChannel(isNothing);
    if (*result)
    {
      v9 = *(result + 16) >= 4u;
    }

    else
    {
      v9 = 0;
    }

    if (v9)
    {
      result = WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [12],WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>(result, 4u, a3, " ignored already resolved or rejected ", v7);
    }

    if (v7 && atomic_fetch_add(v7 + 2, 0xFFFFFFFF) == 1)
    {
LABEL_16:
      atomic_store(1u, v7 + 2);
      v10 = *(*v7 + 16);

      return v10(v7);
    }
  }

  return result;
}

WTF::Lock *WTF::NativePromise<void,IPC::Error,0u>::settleWithFunction(uint64_t a1, uint64_t *a2, WTF::Logger::LogSiteIdentifier *a3)
{
  v6 = 0;
  v7 = (a1 + 48);
  v12 = v7;
  v13 = 1;
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
    WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [12],WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>(v8, 4u, a3, " settling ", a1);
  }

  WTF::NativePromise<void,IPC::Error,0u>::Storage::emplace<WTF::Function<std::experimental::fundamentals_v3::expected<void,IPC::Error> ()(void)>>((a1 + 56), a2);
  result = WTF::NativePromise<void,IPC::Error,0u>::dispatchAll(a1, &v12);
  v11 = v13;
  if (v13 == 1)
  {
    result = v12;
    atomic_compare_exchange_strong_explicit(v12, &v11, 0, memory_order_release, memory_order_relaxed);
    if (v11 != 1)
    {
      return WTF::Lock::unlockSlow(result);
    }
  }

  return result;
}

unsigned __int8 *WTF::NativePromise<void,IPC::Error,0u>::Storage::emplace<WTF::Function<std::experimental::fundamentals_v3::expected<void,IPC::Error> ()(void)>>(unsigned __int8 *result, uint64_t *a2)
{
  v3 = result;
  v4 = result[8];
  if (v4 >= 2 && v4 != 255)
  {
    result = *result;
    *v3 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }
  }

  v5 = *a2;
  *a2 = 0;
  *v3 = v5;
  v3[8] = 2;
  return result;
}

uint64_t WTF::NativePromise<void,IPC::Error,0u>::dispatchAll(uint64_t a1, atomic_uchar *volatile *a2)
{
  v18 = &v20;
  v19 = 1;
  __dst = &v23;
  v22 = 1;
  WTF::VectorBuffer<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::FastMalloc>::adopt(&__dst, (a1 + 72));
  v4 = *(a1 + 84);
  if (v4)
  {
    WTF::VectorDestructor<true,WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>>::destruct(*(a1 + 72), (*(a1 + 72) + 8 * v4));
  }

  WTF::VectorBuffer<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::FastMalloc>::adopt((a1 + 72), &v18);
  WTF::Vector<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v18, v5);
  *&v6 = 0;
  v7 = *(a1 + 96);
  v18 = v7;
  v8 = *(a1 + 108);
  LODWORD(v19) = *(a1 + 104);
  HIDWORD(v19) = v8;
  v17 = v6;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  WTF::Vector<WTF::NativePromiseProducer<void,IPC::Error,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v17, v9);
  if (HIDWORD(v22))
  {
    v11 = __dst;
    v12 = 8 * HIDWORD(v22);
    do
    {
      v13 = *v11++;
      WTF::NativePromise<void,IPC::Error,0u>::ThenCallbackBase::dispatch(v13, a1, a2);
      v12 -= 8;
    }

    while (v12);
  }

  if (v8)
  {
    v14 = 40 * v8;
    do
    {
      WTF::NativePromise<void,IPC::Error,0u>::settleChainedPromise(a1, v7);
      v7 += 40;
      v14 -= 40;
    }

    while (v14);
  }

  WTF::Vector<WTF::NativePromiseProducer<void,IPC::Error,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v18, v10);
  return WTF::Vector<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&__dst, v15);
}

unsigned __int8 *WTF::NativePromise<void,IPC::Error,0u>::ThenCallbackBase::dispatch(WTF::NativePromiseBase *a1, uint64_t a2, atomic_uchar *volatile *a3)
{
  v5 = a1;
  if (!*(a1 + 2) || (v6 = atomic_load((a2 + 113)), v6 == 1) && (a1 = (*(**(a1 + 2) + 24))(*(a1 + 2)), a1))
  {
    if (*(v5 + 56) == 1)
    {
      v16 = v5;
      result = WTF::NativePromiseBase::logChannel(a1);
      if (*result)
      {
        v10 = result[16] >= 4u;
      }

      else
      {
        v10 = 0;
      }

      if (v10)
      {
        return WTF::Logger::log<char [32],WTF::NativePromise<void,WebCore::PlatformMediaError,0u>,char [21],void const*,char [11],WTF::Logger::LogSiteIdentifier,char [2]>(result, 4u, "ThenCallback disconnected from ", a2, " aborting [callback:", &v16, " callSite:", (v5 + 24), "]");
      }
    }

    else
    {
      v11 = *a3;
      v12 = 1;
      atomic_compare_exchange_strong_explicit(*a3, &v12, 0, memory_order_release, memory_order_relaxed);
      if (v12 != 1)
      {
        WTF::Lock::unlockSlow(v11);
      }

      if (WTF::NativePromise<void,void,0u>::hasRunnable(a2))
      {
        WTF::NativePromise<void,void,0u>::takeResultRunnable(a2, &v16);
        (*(*v16 + 16))(v15);
        (*(*v5 + 24))(v5, a2, v15);
        v13 = v16;
        v16 = 0;
        if (v13)
        {
          (*(*v13 + 8))(v13);
        }
      }

      else
      {
        WTF::NativePromise<void,void,0u>::takeResult(a2, &v16);
        (*(*v5 + 24))(v5, a2, &v16);
      }

      v14 = 0;
      result = *a3;
      atomic_compare_exchange_strong_explicit(*a3, &v14, 1u, memory_order_acquire, memory_order_acquire);
      if (v14)
      {
        return MEMORY[0x19EB01E30]();
      }
    }
  }

  else
  {
    v7 = *(v5 + 2);
    atomic_fetch_add(v5 + 2, 1u);
    atomic_fetch_add((a2 + 8), 1u);
    v8 = WTF::fastMalloc(0x18);
    *v8 = &unk_1F1129C98;
    *(v8 + 1) = v5;
    *(v8 + 2) = a2;
    v16 = v8;
    (*(*v7 + 16))(v7, &v16);
    result = v16;
    v16 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

atomic_uint **WTF::NativePromise<void,IPC::Error,0u>::settleChainedPromise(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  *a2 = 0;
  v9 = v2;
  v3 = *(a2 + 24);
  v10 = *(a2 + 8);
  v11 = v3;
  if (v2)
  {
    atomic_fetch_add(v2 + 2, 1u);
    v5 = 0;
    v6 = 0;
    v7 = "<chained promise>";
    v8 = 0;
    WTF::NativePromise<void,IPC::Error,0u>::settleAsChainedPromise<WTF::NativePromise<void,IPC::Error,0u>::Storage>(v2, (a1 + 56), &v5);
    if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2 + 2);
      (*(*v2 + 16))(v2);
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = "<chained promise>";
    v8 = 0;
    WTF::NativePromise<void,IPC::Error,0u>::settleAsChainedPromise<WTF::NativePromise<void,IPC::Error,0u>::Storage>(0, (a1 + 56), &v5);
  }

  return WTF::NativePromiseProducer<void,IPC::Error,0u>::~NativePromiseProducer(&v9);
}

void *WTF::Detail::CallableWrapper<WTF::NativePromise<void,IPC::Error,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<void,IPC::Error,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1129C98;
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

uint64_t WTF::Detail::CallableWrapper<WTF::NativePromise<void,IPC::Error,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<void,IPC::Error,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1129C98;
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

unsigned __int8 *WTF::NativePromise<void,IPC::Error,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<void,IPC::Error,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1}::operator()(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (*(*a1 + 56) == 1)
  {
    v10 = *a1;
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
      return WTF::Logger::log<char [32],WTF::NativePromise<void,WebCore::PlatformMediaError,0u>,char [21],void const*,char [11],WTF::Logger::LogSiteIdentifier,char [2]>(result, 4u, "ThenCallback disconnected from ", v1, " aborting [callback:", &v10, " callSite:", (v2 + 24), "]");
    }
  }

  else
  {
    hasRunnable = WTF::NativePromise<void,void,0u>::hasRunnable(a1[1]);
    v7 = *a1;
    v8 = a1[1];
    if (hasRunnable)
    {
      WTF::NativePromise<void,void,0u>::takeResultRunnable(v8, &v10);
      (*(*v10 + 16))(v9);
      (*(*v7 + 24))(v7, v8, v9);
      result = v10;
      v10 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }

    else
    {
      WTF::NativePromise<void,void,0u>::takeResult(v8, &v10);
      return (*(*v7 + 24))(v7, v8, &v10);
    }
  }

  return result;
}

WTF::Lock *WTF::NativePromise<void,IPC::Error,0u>::settleAsChainedPromise<WTF::NativePromise<void,IPC::Error,0u>::Storage>(_BYTE *a1, unsigned __int16 *a2, WTF::Logger::LogSiteIdentifier *a3)
{
  v6 = 0;
  v7 = (a1 + 48);
  v20 = v7;
  v21 = 1;
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
    WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [12],WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>(v8, 4u, a3, " settling chained promise ", a1);
  }

  v10 = a1[64];
  v11 = *(a2 + 8);
  if (v10 != 255 || v11 != 255)
  {
    v12 = (a1 + 56);
    switch(v11)
    {
      case 255:
        if (v10 >= 2 && v10 != 255)
        {
          v13 = *v12;
          *v12 = 0;
          if (v13)
          {
            (*(*v13 + 8))(v13);
          }
        }

        a1[64] = -1;
        break;
      case 2:
        if (v10 == 2)
        {
          v17 = *a2;
          *a2 = 0;
          v18 = *v12;
          *v12 = v17;
          if (v18)
          {
            (*(*v18 + 8))(v18);
          }
        }

        else
        {
          v22 = a1 + 56;
          v23 = a2;
          mpark::detail::assignment<mpark::detail::traits<WTF::NativePromise<void,IPC::Error,0u>::Storage::NoResult,std::experimental::fundamentals_v3::expected<void,IPC::Error>,WTF::Function<std::experimental::fundamentals_v3::expected<void,IPC::Error> ()(void)>>>::assign_alt<2ul,WTF::Function<std::experimental::fundamentals_v3::expected<void,IPC::Error> ()(void)>,WTF::Function<std::experimental::fundamentals_v3::expected<void,IPC::Error> ()(void)>>(mpark::detail::alt<2ul,WTF::Function<std::experimental::fundamentals_v3::expected<void,IPC::Error> ()(void)>> &,WTF::Function<std::experimental::fundamentals_v3::expected<void,IPC::Error> ()(void)> &&)::{unnamed type#1}::operator()(&v22);
        }

        break;
      case 1:
        if (v10 == 1)
        {
          v16 = *a2;
          if (a1[57] == v16 >> 8)
          {
            if ((v16 & 0x100) != 0)
            {
              *v12 = v16;
            }
          }

          else if ((v16 & 0x100) != 0)
          {
            a1[56] = v16;
            a1[57] = 1;
          }

          else if (a1[57])
          {
            a1[57] = 0;
          }
        }

        else
        {
          v22 = a1 + 56;
          v23 = a2;
          mpark::detail::assignment<mpark::detail::traits<WTF::NativePromise<void,IPC::Error,0u>::Storage::NoResult,std::experimental::fundamentals_v3::expected<void,IPC::Error>,WTF::Function<std::experimental::fundamentals_v3::expected<void,IPC::Error> ()(void)>>>::assign_alt<1ul,std::experimental::fundamentals_v3::expected<void,IPC::Error>,std::experimental::fundamentals_v3::expected<void,IPC::Error>>(mpark::detail::alt<1ul,std::experimental::fundamentals_v3::expected<void,IPC::Error>> &,std::experimental::fundamentals_v3::expected<void,IPC::Error> &&)::{unnamed type#1}::operator()(&v22);
        }

        break;
      default:
        if (a1[64])
        {
          if (v10 != 1 && v10 != 255)
          {
            v19 = *v12;
            *v12 = 0;
            if (v19)
            {
              (*(*v19 + 8))(v19);
            }
          }

          a1[64] = 0;
        }

        break;
    }
  }

  result = WTF::NativePromise<void,IPC::Error,0u>::dispatchAll(a1, &v20);
  v15 = v21;
  if (v21 == 1)
  {
    result = v20;
    atomic_compare_exchange_strong_explicit(v20, &v15, 0, memory_order_release, memory_order_relaxed);
    if (v15 != 1)
    {
      return WTF::Lock::unlockSlow(result);
    }
  }

  return result;
}

void *mpark::detail::assignment<mpark::detail::traits<WTF::NativePromise<void,IPC::Error,0u>::Storage::NoResult,std::experimental::fundamentals_v3::expected<void,IPC::Error>,WTF::Function<std::experimental::fundamentals_v3::expected<void,IPC::Error> ()(void)>>>::assign_alt<1ul,std::experimental::fundamentals_v3::expected<void,IPC::Error>,std::experimental::fundamentals_v3::expected<void,IPC::Error>>(mpark::detail::alt<1ul,std::experimental::fundamentals_v3::expected<void,IPC::Error>> &,std::experimental::fundamentals_v3::expected<void,IPC::Error> &&)::{unnamed type#1}::operator()(void *result)
{
  v1 = *result;
  v2 = result[1];
  v3 = *(*result + 8);
  if (v3 >= 2 && v3 != 255)
  {
    result = *v1;
    *v1 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }
  }

  *(v1 + 8) = -1;
  *v1 = *v2;
  *(v1 + 8) = 1;
  return result;
}

void *mpark::detail::assignment<mpark::detail::traits<WTF::NativePromise<void,IPC::Error,0u>::Storage::NoResult,std::experimental::fundamentals_v3::expected<void,IPC::Error>,WTF::Function<std::experimental::fundamentals_v3::expected<void,IPC::Error> ()(void)>>>::assign_alt<2ul,WTF::Function<std::experimental::fundamentals_v3::expected<void,IPC::Error> ()(void)>,WTF::Function<std::experimental::fundamentals_v3::expected<void,IPC::Error> ()(void)>>(mpark::detail::alt<2ul,WTF::Function<std::experimental::fundamentals_v3::expected<void,IPC::Error> ()(void)>> &,WTF::Function<std::experimental::fundamentals_v3::expected<void,IPC::Error> ()(void)> &&)::{unnamed type#1}::operator()(void *result)
{
  v1 = *result;
  v2 = result[1];
  v3 = *(*result + 8);
  if (v3 >= 2 && v3 != 255)
  {
    result = *v1;
    *v1 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }
  }

  v4 = *v2;
  *v2 = 0;
  *v1 = v4;
  *(v1 + 8) = 2;
  return result;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<IPC::Connection::NoOpPromiseConverter,Messages::RemoteSourceBufferProxy::SetMaximumBufferSize,WTF::NativePromise<void,IPC::Error,0u>>(WTF::NativePromise<void,IPC::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1}::operator()(IPC::Connection*,std::unique_ptr<IPC::Decoder> &)::{lambda(void)#1},std::experimental::fundamentals_v3::expected<void,IPC::Error>>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F11297E8;
  std::unique_ptr<IPC::Decoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<IPC::Connection::NoOpPromiseConverter,Messages::RemoteSourceBufferProxy::SetMaximumBufferSize,WTF::NativePromise<void,IPC::Error,0u>>(WTF::NativePromise<void,IPC::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1}::operator()(IPC::Connection*,std::unique_ptr<IPC::Decoder> &)::{lambda(void)#1},std::experimental::fundamentals_v3::expected<void,IPC::Error>>::~CallableWrapper(IPC::Decoder **a1)
{
  *a1 = &unk_1F11297E8;
  std::unique_ptr<IPC::Decoder>::reset[abi:sn200100](a1 + 1, 0);

  return WTF::fastFree(a1, v2);
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<IPC::Connection::NoOpPromiseConverter,Messages::RemoteSourceBufferProxy::SetMaximumBufferSize,WTF::NativePromise<void,IPC::Error,0u>>(WTF::NativePromise<void,IPC::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1}::operator()(IPC::Connection*,std::unique_ptr<IPC::Decoder> &)::{lambda(void)#1},std::experimental::fundamentals_v3::expected<void,IPC::Error>>::call@<X0>(uint64_t result@<X0>, __int16 *a2@<X8>)
{
  v2 = *(result + 8);
  if (v2)
  {
    if (*v2)
    {
      *a2 = 0;
      return result;
    }

    v3 = 270;
  }

  else
  {
    v3 = 257;
  }

  *a2 = v3;
  return result;
}

atomic_uint **WTF::NativePromiseProducer<void,IPC::Error,0u>::~NativePromiseProducer(atomic_uint **a1)
{
  WTF::NativePromiseProducer<void,IPC::Error,0u>::assertIsDead(a1);
  v2 = *a1;
  *a1 = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 16))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<void WTF::NativePromise<void,IPC::Error,0u>::chainTo<void,void,16u>(WTF::NativePromiseProducer<void,void,16u> &&,WTF::Logger::LogSiteIdentifier const&)::{lambda(void&&)#1},void,std::experimental::fundamentals_v3::expected<void,IPC::Error> &&>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F1129810;
  WTF::NativePromiseProducer<void,void,16u>::~NativePromiseProducer((a1 + 8));
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<void WTF::NativePromise<void,IPC::Error,0u>::chainTo<void,void,16u>(WTF::NativePromiseProducer<void,void,16u> &&,WTF::Logger::LogSiteIdentifier const&)::{lambda(void&&)#1},void,std::experimental::fundamentals_v3::expected<void,IPC::Error> &&>::~CallableWrapper(atomic_uint **a1)
{
  *a1 = &unk_1F1129810;
  WTF::NativePromiseProducer<void,void,16u>::~NativePromiseProducer(a1 + 1);

  return WTF::fastFree(a1, v2);
}

WTF::Lock *WTF::Detail::CallableWrapper<void WTF::NativePromise<void,IPC::Error,0u>::chainTo<void,void,16u>(WTF::NativePromiseProducer<void,void,16u> &&,WTF::Logger::LogSiteIdentifier const&)::{lambda(void&&)#1},void,std::experimental::fundamentals_v3::expected<void,IPC::Error> &&>::call(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 1) == 1)
  {
    v3 = 0;
    v4 = 0;
    v5 = "operator()";
    v6 = 0;
    return WTF::NativePromiseProducer<void,void,16u>::reject<std::enable_if<true,void>>((a1 + 8), &v3);
  }

  else
  {
    v3 = 0;
    v4 = 0;
    v5 = "operator()";
    v6 = 0;
    return WTF::NativePromiseProducer<void,void,0u>::resolve<std::enable_if<true,void>>((a1 + 8), &v3);
  }
}

uint64_t WTF::NativePromise<void,IPC::Error,0u>::ThenCallback<false,void>::~ThenCallback(uint64_t a1)
{
  *a1 = &unk_1F1129CC0;
  v2 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::unique_ptr<WTF::NativePromiseProducer<void,void,0u>>::reset[abi:sn200100]((a1 + 64), 0);
  *a1 = &unk_1F1129C40;
  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v3 + 8));
  }

  return a1;
}

{
  *a1 = &unk_1F1129CC0;
  v2 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::unique_ptr<WTF::NativePromiseProducer<void,void,0u>>::reset[abi:sn200100]((a1 + 64), 0);
  *a1 = &unk_1F1129C40;
  v4 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v4 + 8));
  }

  return WTF::fastFree(a1, v3);
}

uint64_t WTF::NativePromise<void,IPC::Error,0u>::ThenCallback<false,void>::disconnect(uint64_t a1)
{
  *(a1 + 56) = 1;
  result = *(a1 + 72);
  *(a1 + 72) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t WTF::NativePromise<void,IPC::Error,0u>::ThenCallback<false,void>::processResult(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 1);
  v16[0] = a1;
  v7 = WTF::NativePromiseBase::logChannel(a1);
  if (*v7)
  {
    v8 = v7[16] >= 4u;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    if (v6)
    {
      v9 = "Rejecting";
    }

    else
    {
      v9 = "Resolving";
    }

    WTF::Logger::log<char [10],char [24],WTF::Logger::LogSiteIdentifier,char [2],WTF::NativePromise<void,WebCore::PlatformMediaError,0u>,char [11],void const*,char [2]>(v7, 4u, v9, " then() call made from ", (a1 + 24), "[", a2, " callback:", v16, "]");
  }

  v10 = 0;
  v11 = 1;
  atomic_compare_exchange_strong_explicit((a1 + 57), &v10, 1u, memory_order_acquire, memory_order_acquire);
  if (v10)
  {
    MEMORY[0x19EB01E30](a1 + 57);
  }

  v12 = *(a1 + 64);
  *(a1 + 64) = 0;
  std::unique_ptr<WTF::NativePromiseProducer<void,void,0u>>::reset[abi:sn200100]((a1 + 64), 0);
  atomic_compare_exchange_strong_explicit((a1 + 57), &v11, 0, memory_order_release, memory_order_relaxed);
  if (v11 != 1)
  {
    WTF::Lock::unlockSlow((a1 + 57));
  }

  (*(**(a1 + 72) + 16))(*(a1 + 72), a3);
  if (v12)
  {
    v16[0] = 0;
    v16[1] = 0;
    v16[2] = "<chained completion promise>";
    v16[3] = 0;
    WTF::NativePromiseProducer<void,void,0u>::resolve<std::enable_if<true,void>>(v12, v16);
  }

  result = *(a1 + 72);
  *(a1 + 72) = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  if (v12)
  {
    v14 = WTF::NativePromiseProducer<void,void,0u>::~NativePromiseProducer(v12);
    return WTF::fastFree(v14, v15);
  }

  return result;
}

uint64_t *WTF::NativePromise<void,IPC::Error,0u>::ThenCommand<WTF::NativePromise<void,IPC::Error,0u>::ThenCallback<false,void>>::~ThenCommand(uint64_t *a1)
{
  v2 = a1[1];
  if (v2)
  {
    v3 = *a1;
    a1[1] = 0;
    v8 = v2;
    WTF::NativePromise<void,IPC::Error,0u>::maybeSettle(v3, &v8, (a1 + 2));
    v4 = v8;
    v8 = 0;
    if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v4 + 2);
      (*(*v4 + 8))(v4);
    }

    v5 = a1[1];
    a1[1] = 0;
    if (v5 && atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v5 + 2);
      (*(*v5 + 8))(v5);
    }
  }

  v6 = *a1;
  *a1 = 0;
  if (v6 && atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v6 + 2);
    (*(*v6 + 16))(v6);
  }

  return a1;
}

unsigned __int8 *WTF::NativePromise<void,IPC::Error,0u>::maybeSettle(uint64_t a1, WTF::NativePromiseBase **a2, WTF::Logger::LogSiteIdentifier *a3)
{
  v6 = 0;
  v7 = (a1 + 48);
  v17 = v7;
  v18 = 1;
  atomic_compare_exchange_strong_explicit(v7, &v6, 1u, memory_order_acquire, memory_order_acquire);
  if (v6)
  {
    v7 = MEMORY[0x19EB01E30]();
  }

  *(a1 + 112) = 1;
  v16 = *a2;
  v15 = *(a1 + 64) == 0;
  result = WTF::NativePromiseBase::logChannel(v7);
  if (*result)
  {
    v9 = result[16] >= 4u;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    result = WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [26],WTF::NativePromise<void,WebCore::PlatformMediaError,0u>,char [11],void const*,char [12],BOOL,char [2]>(result, 4u, a3, " invoking maybeSettle() [", a1, " callback:", &v16, " isNothing:", &v15, "]");
  }

  if (*(a1 + 64))
  {
    result = WTF::NativePromise<void,IPC::Error,0u>::ThenCallbackBase::dispatch(*a2, a1, &v17);
  }

  else
  {
    v10 = *(a1 + 84);
    if (v10 == *(a1 + 80))
    {
      result = WTF::Vector<WTF::Ref<WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1 + 72, v10 + 1, a2);
      v10 = *(a1 + 84);
      v11 = v10 + 1;
      v12 = *(a1 + 72);
      v13 = *result;
      *result = 0;
    }

    else
    {
      v11 = v10 + 1;
      v12 = *(a1 + 72);
      v13 = *a2;
      *a2 = 0;
    }

    *(v12 + 8 * v10) = v13;
    *(a1 + 84) = v11;
  }

  v14 = v18;
  if (v18 == 1)
  {
    result = v17;
    atomic_compare_exchange_strong_explicit(v17, &v14, 0, memory_order_release, memory_order_relaxed);
    if (v14 != 1)
    {
      return WTF::Lock::unlockSlow(result);
    }
  }

  return result;
}

IPC::Encoder *WTF::Detail::CallableWrapper<WebKit::SourceBufferPrivateRemote::seekToTime(WTF::MediaTime const&)::$_0,void,WebKit::SourceBufferPrivateRemote&>::call(uint64_t a1, uint64_t a2)
{
  WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(*(a2 + 392), *(a2 + 384), &v13);
  v4 = *(v13 + 32);
  v5 = *(a2 + 408);
  v7 = IPC::Encoder::operator new(0x238, v6);
  *v7 = 1649;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = v5;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  IPC::Encoder::encodeHeader(v7);
  v14 = v7;
  IPC::ArgumentCoder<WTF::MediaTime,void>::encode(v7, (a1 + 8));
  IPC::Connection::sendMessageImpl(v4, &v14, 0, 0);
  result = v14;
  v14 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v8);
    result = bmalloc::api::tzoneFree(v11, v12);
  }

  v10 = v13;
  v13 = 0;
  if (v10)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref((v10 + 24), v8);
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::SourceBufferPrivateRemote::updateTrackIds(WTF::Vector<std::pair<unsigned long long,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::$_0,void,WebKit::SourceBufferPrivateRemote&>::~CallableWrapper(uint64_t a1, void *a2)
{
  *a1 = &unk_1F1129860;
  v3 = *(a1 + 8);
  if (v3)
  {
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    WTF::fastFree(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::SourceBufferPrivateRemote::updateTrackIds(WTF::Vector<std::pair<unsigned long long,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::$_0,void,WebKit::SourceBufferPrivateRemote&>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1129860;
  v3 = *(this + 1);
  if (v3)
  {
    *(this + 1) = 0;
    *(this + 4) = 0;
    WTF::fastFree(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *WTF::Detail::CallableWrapper<WebKit::SourceBufferPrivateRemote::updateTrackIds(WTF::Vector<std::pair<unsigned long long,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::$_0,void,WebKit::SourceBufferPrivateRemote&>::call(uint64_t a1, uint64_t a2)
{
  WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(*(a2 + 392), *(a2 + 384), &v16);
  v4 = *(v16 + 32);
  v5 = *(a2 + 408);
  v7 = IPC::Encoder::operator new(0x238, v6);
  *v7 = 1663;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = v5;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  IPC::Encoder::encodeHeader(v7);
  v17 = v7;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v7, *(a1 + 20));
  v8 = *(a1 + 20);
  if (v8)
  {
    v9 = *(a1 + 8);
    v10 = &v9[2 * v8];
    do
    {
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v7, *v9);
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v7, v9[1]);
      v9 += 2;
    }

    while (v9 != v10);
  }

  IPC::Connection::sendMessageImpl(v4, &v17, 0, 0);
  result = v17;
  v17 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v11);
    result = bmalloc::api::tzoneFree(v14, v15);
  }

  v13 = v16;
  v16 = 0;
  if (v13)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref((v13 + 24), v11);
  }

  return result;
}

uint64_t WTF::Vector<WebCore::SourceBufferPrivateClient::InitializationSegment::AudioTrackInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorTypeOperations<WebCore::SourceBufferPrivateClient::InitializationSegment::AudioTrackInformation>::destruct(*a1, (*a1 + 16 * v3));
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

unsigned int *WTF::VectorTypeOperations<WebCore::SourceBufferPrivateClient::InitializationSegment::AudioTrackInformation>::destruct(unsigned int *result, unsigned int *a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      v4 = *(v3 + 1);
      *(v3 + 1) = 0;
      if (v4)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::TrackPrivateBase,(WTF::DestructionThread)0>::deref((v4 + 8), a2);
      }

      result = *v3;
      *v3 = 0;
      if (result)
      {
        if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, result + 2);
          result = (*(*result + 8))(result);
        }
      }

      v3 += 4;
    }

    while (v3 != a2);
  }

  return result;
}

uint64_t WebKit::RemoteMediaDescription::create(WebKit::RemoteMediaDescription *this, const WebKit::MediaDescriptionInfo *a2)
{
  v4 = WTF::fastMalloc(0x20);
  result = WTF::String::isolatedCopy();
  *(v4 + 8) = 1;
  *(v4 + 16) = v6;
  *v4 = &unk_1F1129888;
  *(v4 + 24) = *(a2 + 8);
  *(v4 + 25) = *(a2 + 9);
  *this = v4;
  return result;
}

void WebKit::RemoteMediaDescription::~RemoteMediaDescription(WebKit::RemoteMediaDescription *this, WTF::StringImpl *a2)
{
  WebCore::MediaDescription::~MediaDescription(this, a2);

  WTF::fastFree(v2, v3);
}

void WebCore::MediaDescription::~MediaDescription(WebCore::MediaDescription *this, WTF::StringImpl *a2)
{
  *this = &unk_1F11298C0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, a2);
    }
  }
}

void *WTF::Detail::CallableWrapper<WebKit::SourceBufferPrivateRemote::memoryPressure(WTF::MediaTime const&)::$_0,void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F11298F8;
  a1[1] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivate,(WTF::DestructionThread)1>::deref((v2 + 8));
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::SourceBufferPrivateRemote::memoryPressure(WTF::MediaTime const&)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F11298F8;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivate,(WTF::DestructionThread)1>::deref((v3 + 8));
  }

  return WTF::fastFree(this, a2);
}

atomic_uchar **WTF::Detail::CallableWrapper<WebKit::SourceBufferPrivateRemote::memoryPressure(WTF::MediaTime const&)::$_0,void>::call(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = *(v2 + 392);
  if (result)
  {
    result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(result, *(v2 + 384), &v14);
    if (v14)
    {
      v5 = atomic_load((v2 + 424));
      if ((v5 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(*(v2 + 392), *(v2 + 384), &v15);
        v6 = *(v15 + 32);
        v7 = *(v2 + 408);
        v9 = IPC::Encoder::operator new(0x238, v8);
        *v9 = 1642;
        *(v9 + 2) = 0;
        *(v9 + 3) = 0;
        *(v9 + 1) = v7;
        *(v9 + 68) = 0;
        *(v9 + 70) = 0;
        *(v9 + 69) = 0;
        IPC::Encoder::encodeHeader(v9);
        v16 = v9;
        IPC::ArgumentCoder<WTF::MediaTime,void>::encode(v9, (a1 + 24));
        IPC::Connection::sendMessageImpl(v6, &v16, 0, 0);
        result = v16;
        v16 = 0;
        if (result)
        {
          IPC::Encoder::~Encoder(result, v4);
          result = bmalloc::api::tzoneFree(v12, v13);
        }

        v10 = v15;
        v15 = 0;
        if (v10)
        {
          result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref((v10 + 24), v4);
        }
      }

      v11 = v14;
      v14 = 0;
      if (v11)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref((v11 + 24), v4);
      }
    }
  }

  return result;
}

atomic_uchar **WTF::Detail::CallableWrapper<WebKit::SourceBufferPrivateRemote::minimumUpcomingPresentationTimeForTrackID(unsigned long long)::$_0,void>::call(uint64_t a1)
{
  v4 = *(a1 + 8);
  result = *(v4 + 392);
  if (result)
  {
    result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(result, *(v4 + 384), &v30);
    if (v30)
    {
      v7 = atomic_load((v4 + 424));
      if (v7)
      {
LABEL_26:
        v23 = v30;
        v30 = 0;
        if (v23)
        {
          return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref((v23 + 24), v6);
        }

        return result;
      }

      v8 = *(v30 + 32);
      v9 = **(a1 + 16);
      IPC::Connection::createSyncMessageEncoder(0x101E, *(v4 + 408), v33);
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v33[0], v9);
      v10 = IPC::Connection::sendSyncMessage(v8, v33[1], v33, 0, &v31, INFINITY);
      if (v32)
      {
        if (v32 != 1)
        {
          mpark::throw_bad_variant_access(v10);
        }

        v12 = v31;
        v13 = 1;
LABEL_16:
        v17 = v33[0];
        v33[0] = 0;
        if (v17)
        {
          IPC::Encoder::~Encoder(v17, v11);
          v17 = bmalloc::api::tzoneFree(v24, v25);
        }

        result = WTF::MediaTime::invalidTime(v17);
        v18 = v4 | (v2 << 8);
        v19 = *result;
        v20 = result[1];
        if (!v13)
        {
          v19 = v18;
        }

        v21 = *(a1 + 24);
        *v21 = v19;
        if (v13)
        {
          v22 = v20;
        }

        else
        {
          v22 = v1;
        }

        *(v21 + 8) = v22;
        *(v21 + 12) = BYTE4(v22);
        if (!v13 && v12)
        {
          IPC::Decoder::~Decoder(v12);
          result = bmalloc::api::tzoneFree(v28, v29);
        }

        goto LABEL_26;
      }

      v12 = v31;
      v31 = 0;
      if (*(v12 + 50) == 3194)
      {
        v2 = 11;
      }

      else
      {
        IPC::Decoder::decode<std::tuple<WTF::MediaTime>>(v12, &v34);
        if (v39)
        {
          v13 = 0;
          LOBYTE(v4) = v34;
          v2 = v35 | ((v36 | (v37 << 16)) << 32);
          v1 = v38;
LABEL_13:
          if (!v32)
          {
            v16 = v31;
            v31 = 0;
            if (v16)
            {
              IPC::Decoder::~Decoder(v16);
              bmalloc::api::tzoneFree(v26, v27);
            }
          }

          goto LABEL_16;
        }

        v2 = 14;
      }

      IPC::Decoder::~Decoder(v12);
      bmalloc::api::tzoneFree(v14, v15);
      v13 = 1;
      v12 = v2;
      goto LABEL_13;
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::SourceBufferPrivateRemote::setMaximumQueueDepthForTrackID(unsigned long long,unsigned long long)::$_0,void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1129948;
  a1[1] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivate,(WTF::DestructionThread)1>::deref((v2 + 8));
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::SourceBufferPrivateRemote::setMaximumQueueDepthForTrackID(unsigned long long,unsigned long long)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1129948;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivate,(WTF::DestructionThread)1>::deref((v3 + 8));
  }

  return WTF::fastFree(this, a2);
}

atomic_uchar **WTF::Detail::CallableWrapper<WebKit::SourceBufferPrivateRemote::setMaximumQueueDepthForTrackID(unsigned long long,unsigned long long)::$_0,void>::call(void *a1)
{
  v2 = a1[2];
  result = *(v2 + 392);
  if (result)
  {
    result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(result, *(v2 + 384), &v16);
    if (v16)
    {
      v5 = atomic_load((v2 + 424));
      if ((v5 & 1) == 0)
      {
        v7 = a1[3];
        v6 = a1[4];
        WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(*(v2 + 392), *(v2 + 384), &v17);
        v8 = *(v17 + 32);
        v9 = *(v2 + 408);
        v11 = IPC::Encoder::operator new(0x238, v10);
        *v11 = 1657;
        *(v11 + 2) = 0;
        *(v11 + 3) = 0;
        *(v11 + 1) = v9;
        *(v11 + 68) = 0;
        *(v11 + 70) = 0;
        *(v11 + 69) = 0;
        IPC::Encoder::encodeHeader(v11);
        v18 = v11;
        IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v11, v7);
        IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v11, v6);
        IPC::Connection::sendMessageImpl(v8, &v18, 0, 0);
        result = v18;
        v18 = 0;
        if (result)
        {
          IPC::Encoder::~Encoder(result, v4);
          result = bmalloc::api::tzoneFree(v14, v15);
        }

        v12 = v17;
        v17 = 0;
        if (v12)
        {
          result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref((v12 + 24), v4);
        }
      }

      v13 = v16;
      v16 = 0;
      if (v13)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref((v13 + 24), v4);
      }
    }
  }

  return result;
}

unint64_t WTF::makeString<WTF::ASCIILiteral,unsigned long long,WTF::ASCIILiteral,long long,WTF::ASCIILiteral,unsigned long long,WTF::ASCIILiteral,unsigned long long,WTF::ASCIILiteral>(void *a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  v5 = a5;
  v7 = a3;
  v10 = 0;
  v51[4] = *MEMORY[0x1E69E9840];
  v11 = a2;
  do
  {
    ++v10;
    v12 = v11 > 9;
    v11 /= 0xAuLL;
  }

  while (v12);
  if ((a3 & 0x8000000000000000) != 0)
  {
    v15 = -a3;
    v13 = 1;
    do
    {
      ++v13;
      v16 = v15 >= 0xA;
      v15 /= 0xAuLL;
    }

    while (v16);
  }

  else
  {
    v13 = 0;
    v14 = a3;
    do
    {
      ++v13;
      v12 = v14 > 9;
      v14 /= 0xAuLL;
    }

    while (v12);
  }

  v17 = 0;
  v18 = a4;
  do
  {
    ++v17;
    v12 = v18 > 9;
    v18 /= 0xAuLL;
  }

  while (v12);
  v19 = 0;
  v20 = a5;
  do
  {
    ++v19;
    v12 = v20 > 9;
    v20 /= 0xAuLL;
  }

  while (v12);
  result = WTF::checkedSum<int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int>(14, v10, 15, v13, 19, v17, 12, v19, v49, 2);
  if (v49[0])
  {
    goto LABEL_48;
  }

  v22 = v50;
  if (!v50)
  {
LABEL_47:
    v48 = MEMORY[0x1E696EB88];
    atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
    *a1 = v48;
    return result;
  }

  if ((v50 & 0x80000000) != 0 || (result = WTF::tryFastCompactMalloc((v50 + 20)), (v23 = v51[0]) == 0))
  {
LABEL_48:
    *a1 = 0;
    __break(0xC471u);
    return result;
  }

  *v51[0] = 2;
  *(v23 + 4) = v22;
  qmemcpy((v23 + 20), "{ contentSize:", 14);
  *(v23 + 8) = v23 + 20;
  *(v23 + 16) = 4;
  if (v22 <= 0xD)
  {
    goto LABEL_46;
  }

  v24 = v22 - 14;
  result = WTF::writeIntegerToBufferImpl<unsigned char,unsigned long long,(WTF::PositiveOrNegativeNumber)0>(a2, v23 + 34, v22 - 14);
  LODWORD(v25) = 0;
  do
  {
    v25 = (v25 + 1);
    v12 = a2 > 9;
    a2 /= 0xAuLL;
  }

  while (v12);
  if (v24 < v25)
  {
    goto LABEL_46;
  }

  v26 = v24 - v25;
  v27 = (v23 + 34 + v25);
  qmemcpy(v27, " evictableData:", 15);
  if (v24 - v25 <= 0xE)
  {
    goto LABEL_46;
  }

  v28 = v26 - 15;
  v29 = v27 + 15;
  if ((v7 & 0x8000000000000000) != 0)
  {
    v31 = -v7;
    v32 = 24;
    v33 = -v7;
    while (v32 != -1)
    {
      *(v51 + v32--) = (v33 % 0xA) | 0x30;
      v12 = v33 > 9;
      v33 /= 0xAuLL;
      if (!v12)
      {
        if (v32 < 0x19)
        {
          v34 = v32 - 24;
          v35 = v32 - 23;
          *(v51 + v32) = 45;
          v36 = (v23 + v25 + 49);
          v37 = v22 - v25 - 29;
          while (v37)
          {
            *v36++ = *(&v51[3] + v34);
            ++v35;
            ++v34;
            --v37;
            if (v35 == 2)
            {
              v30 = 1;
              do
              {
                ++v30;
                v16 = v31 >= 0xA;
                v31 /= 0xAuLL;
              }

              while (v16);
              goto LABEL_35;
            }
          }
        }

        goto LABEL_46;
      }
    }

    goto LABEL_46;
  }

  result = WTF::writeIntegerToBufferImpl<unsigned char,unsigned long long,(WTF::PositiveOrNegativeNumber)0>(v7, (v27 + 15), v26 - 15);
  v30 = 0;
  do
  {
    ++v30;
    v12 = v7 > 9;
    v7 /= 0xAuLL;
  }

  while (v12);
LABEL_35:
  if (v28 < v30)
  {
    goto LABEL_46;
  }

  v38 = v28 - v30;
  v39 = &v29[v30];
  *v39 = *" maximumBufferSize:";
  *(v39 + 15) = 979729001;
  if (v38 <= 0x12)
  {
    goto LABEL_46;
  }

  v40 = v38 - 19;
  v41 = v39 + 19;
  result = WTF::writeIntegerToBufferImpl<unsigned char,unsigned long long,(WTF::PositiveOrNegativeNumber)0>(a4, (v39 + 19), v38 - 19);
  LODWORD(v42) = 0;
  do
  {
    v42 = (v42 + 1);
    v12 = a4 > 9;
    a4 /= 0xAuLL;
  }

  while (v12);
  if (v40 < v42)
  {
    goto LABEL_46;
  }

  v43 = v40 - v42;
  v44 = &v41[v42];
  *v44 = *" numSamples:";
  *(v44 + 2) = 980641132;
  if (v43 <= 0xB)
  {
    goto LABEL_46;
  }

  v45 = v43 - 12;
  v46 = v44 + 12;
  result = WTF::writeIntegerToBufferImpl<unsigned char,unsigned long long,(WTF::PositiveOrNegativeNumber)0>(v5, (v44 + 12), v43 - 12);
  v47 = 0;
  do
  {
    ++v47;
    v12 = v5 > 9;
    v5 /= 0xAuLL;
  }

  while (v12);
  if (v45 < v47)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  *&v46[v47] = 32032;
  *a1 = v23;
  return result;
}

unint64_t WTF::writeIntegerToBufferImpl<unsigned char,unsigned long long,(WTF::PositiveOrNegativeNumber)0>(unint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v7 = *MEMORY[0x1E69E9840];
  do
  {
    if (v3 == -25)
    {
LABEL_8:
      __break(1u);
    }

    v6[v3-- + 24] = (result % 0xA) | 0x30;
    v4 = result > 9;
    result /= 0xAuLL;
  }

  while (v4);
  v5 = 0;
  do
  {
    if (a3 == v5)
    {
      goto LABEL_8;
    }

    *(a2 + v5) = v6[v5 + 25 + v3];
    ++v5;
  }

  while (-v3 != v5);
  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::SourceBufferPrivateRemote::detach(void)::$_0,void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1129970;
  a1[1] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivate,(WTF::DestructionThread)1>::deref((v2 + 8));
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::SourceBufferPrivateRemote::detach(void)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1129970;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivate,(WTF::DestructionThread)1>::deref((v3 + 8));
  }

  return WTF::fastFree(this, a2);
}

atomic_uchar **WTF::Detail::CallableWrapper<WebKit::SourceBufferPrivateRemote::detach(void)::$_0,void>::call(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = *(v1 + 392);
  if (result)
  {
    result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(result, *(v1 + 384), &v13);
    if (v13)
    {
      v4 = atomic_load((v1 + 424));
      if ((v4 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(*(v1 + 392), *(v1 + 384), &v14);
        v5 = *(v14 + 32);
        v6 = *(v1 + 408);
        v8 = IPC::Encoder::operator new(0x238, v7);
        *v8 = 1640;
        *(v8 + 2) = 0;
        *(v8 + 3) = 0;
        *(v8 + 1) = v6;
        *(v8 + 68) = 0;
        *(v8 + 70) = 0;
        *(v8 + 69) = 0;
        IPC::Encoder::encodeHeader(v8);
        v15 = v8;
        IPC::Connection::sendMessageImpl(v5, &v15, 0, 0);
        result = v15;
        v15 = 0;
        if (result)
        {
          IPC::Encoder::~Encoder(result, v3);
          result = bmalloc::api::tzoneFree(v11, v12);
        }

        v9 = v14;
        v14 = 0;
        if (v9)
        {
          result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref((v9 + 24), v3);
        }
      }

      v10 = v13;
      v13 = 0;
      if (v10)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref((v10 + 24), v3);
      }
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::SourceBufferPrivateRemote::attach(void)::$_0,void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1129998;
  a1[1] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivate,(WTF::DestructionThread)1>::deref((v2 + 8));
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::SourceBufferPrivateRemote::attach(void)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1129998;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivate,(WTF::DestructionThread)1>::deref((v3 + 8));
  }

  return WTF::fastFree(this, a2);
}

atomic_uchar **WTF::Detail::CallableWrapper<WebKit::SourceBufferPrivateRemote::attach(void)::$_0,void>::call(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = *(v1 + 392);
  if (result)
  {
    result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(result, *(v1 + 384), &v13);
    if (v13)
    {
      v4 = atomic_load((v1 + 424));
      if ((v4 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(*(v1 + 392), *(v1 + 384), &v14);
        v5 = *(v14 + 32);
        v6 = *(v1 + 408);
        v8 = IPC::Encoder::operator new(0x238, v7);
        *v8 = 1636;
        *(v8 + 2) = 0;
        *(v8 + 3) = 0;
        *(v8 + 1) = v6;
        *(v8 + 68) = 0;
        *(v8 + 70) = 0;
        *(v8 + 69) = 0;
        IPC::Encoder::encodeHeader(v8);
        v15 = v8;
        IPC::Connection::sendMessageImpl(v5, &v15, 0, 0);
        result = v15;
        v15 = 0;
        if (result)
        {
          IPC::Encoder::~Encoder(result, v3);
          result = bmalloc::api::tzoneFree(v11, v12);
        }

        v9 = v14;
        v14 = 0;
        if (v9)
        {
          result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref((v9 + 24), v3);
        }
      }

      v10 = v13;
      v13 = 0;
      if (v10)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref((v10 + 24), v3);
      }
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::TextTrackPrivateRemote::updateConfiguration(WebKit::TextTrackPrivateRemoteConfiguration &&)::$_1,void,WebCore::TrackPrivateBaseClient &>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F11299E8;
  a1[1] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::TextTrackPrivateRemote::updateConfiguration(WebKit::TextTrackPrivateRemoteConfiguration &&)::$_1,void,WebCore::TrackPrivateBaseClient &>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F11299E8;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::TextTrackPrivateRemote::updateConfiguration(WebKit::TextTrackPrivateRemoteConfiguration &&)::$_1,void,WebCore::TrackPrivateBaseClient &>::call(uint64_t a1, uint64_t a2)
{
  WTF::String::isolatedCopy();
  v3 = 0;
  if (v10)
  {
    v3 = v10;
    if ((*(v10 + 16) & 0x10) == 0)
    {
      WTF::AtomStringImpl::addSlowCase();
      v8 = v11;
      v11 = 0;
      v9 = v8;
      if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v10, v7);
      }

      v3 = v9;
    }
  }

  v11 = v3;
  (*(*a2 + 32))(a2, &v11);
  v5 = v11;
  v11 = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v4);
  }

  return 0;
}

void *WTF::Detail::CallableWrapper<WebKit::TextTrackPrivateRemote::updateConfiguration(WebKit::TextTrackPrivateRemoteConfiguration &&)::$_2,void,WebCore::TrackPrivateBaseClient &>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F1129A10;
  a1[1] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::TextTrackPrivateRemote::updateConfiguration(WebKit::TextTrackPrivateRemoteConfiguration &&)::$_2,void,WebCore::TrackPrivateBaseClient &>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1129A10;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::TextTrackPrivateRemote::updateConfiguration(WebKit::TextTrackPrivateRemoteConfiguration &&)::$_2,void,WebCore::TrackPrivateBaseClient &>::call(uint64_t a1, uint64_t a2)
{
  WTF::String::isolatedCopy();
  v3 = 0;
  if (v10)
  {
    v3 = v10;
    if ((*(v10 + 16) & 0x10) == 0)
    {
      WTF::AtomStringImpl::addSlowCase();
      v8 = v11;
      v11 = 0;
      v9 = v8;
      if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v10, v7);
      }

      v3 = v9;
    }
  }

  v11 = v3;
  (*(*a2 + 40))(a2, &v11);
  v5 = v11;
  v11 = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v4);
  }

  return 0;
}

void *WTF::Detail::CallableWrapper<WebKit::TextTrackPrivateRemote::addGenericCue(WTF::Ref<WebCore::InbandGenericCue,WTF::RawPtrTraits<WebCore::InbandGenericCue>,WTF::DefaultRefDerefTraits<WebCore::InbandGenericCue>>)::$_0,void,WebCore::TrackPrivateBaseClient &>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F1129A38;
  a1[1] = 0;
  if (v3)
  {
    WTF::RefCounted<WebCore::InbandGenericCue>::deref(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::TextTrackPrivateRemote::addGenericCue(WTF::Ref<WebCore::InbandGenericCue,WTF::RawPtrTraits<WebCore::InbandGenericCue>,WTF::DefaultRefDerefTraits<WebCore::InbandGenericCue>>)::$_0,void,WebCore::TrackPrivateBaseClient &>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1129A38;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::RefCounted<WebCore::InbandGenericCue>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::TextTrackPrivateRemote::addGenericCue(WTF::Ref<WebCore::InbandGenericCue,WTF::RawPtrTraits<WebCore::InbandGenericCue>,WTF::DefaultRefDerefTraits<WebCore::InbandGenericCue>>)::$_0,void,WebCore::TrackPrivateBaseClient &>::call(uint64_t a1, uint64_t a2)
{
  if ((*(*a2 + 16))(a2))
  {
    result = 96;
    __break(0xC471u);
  }

  else
  {
    v4 = *(a1 + 8);
    v5 = *(*a2 + 88);

    return v5(a2, v4);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::TextTrackPrivateRemote::updateGenericCue(WTF::Ref<WebCore::InbandGenericCue,WTF::RawPtrTraits<WebCore::InbandGenericCue>,WTF::DefaultRefDerefTraits<WebCore::InbandGenericCue>>)::$_0,void,WebCore::TrackPrivateBaseClient &>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F1129A60;
  a1[1] = 0;
  if (v3)
  {
    WTF::RefCounted<WebCore::InbandGenericCue>::deref(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::TextTrackPrivateRemote::updateGenericCue(WTF::Ref<WebCore::InbandGenericCue,WTF::RawPtrTraits<WebCore::InbandGenericCue>,WTF::DefaultRefDerefTraits<WebCore::InbandGenericCue>>)::$_0,void,WebCore::TrackPrivateBaseClient &>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1129A60;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::RefCounted<WebCore::InbandGenericCue>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::TextTrackPrivateRemote::updateGenericCue(WTF::Ref<WebCore::InbandGenericCue,WTF::RawPtrTraits<WebCore::InbandGenericCue>,WTF::DefaultRefDerefTraits<WebCore::InbandGenericCue>>)::$_0,void,WebCore::TrackPrivateBaseClient &>::call(uint64_t a1, uint64_t a2)
{
  if ((*(*a2 + 16))(a2))
  {
    result = 96;
    __break(0xC471u);
  }

  else
  {
    v4 = *(a1 + 8);
    v5 = *(*a2 + 96);

    return v5(a2, v4);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::TextTrackPrivateRemote::removeGenericCue(WTF::Ref<WebCore::InbandGenericCue,WTF::RawPtrTraits<WebCore::InbandGenericCue>,WTF::DefaultRefDerefTraits<WebCore::InbandGenericCue>>)::$_0,void,WebCore::TrackPrivateBaseClient &>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F1129A88;
  a1[1] = 0;
  if (v3)
  {
    WTF::RefCounted<WebCore::InbandGenericCue>::deref(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::TextTrackPrivateRemote::removeGenericCue(WTF::Ref<WebCore::InbandGenericCue,WTF::RawPtrTraits<WebCore::InbandGenericCue>,WTF::DefaultRefDerefTraits<WebCore::InbandGenericCue>>)::$_0,void,WebCore::TrackPrivateBaseClient &>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1129A88;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::RefCounted<WebCore::InbandGenericCue>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::TextTrackPrivateRemote::removeGenericCue(WTF::Ref<WebCore::InbandGenericCue,WTF::RawPtrTraits<WebCore::InbandGenericCue>,WTF::DefaultRefDerefTraits<WebCore::InbandGenericCue>>)::$_0,void,WebCore::TrackPrivateBaseClient &>::call(uint64_t a1, uint64_t a2)
{
  if ((*(*a2 + 16))(a2))
  {
    result = 96;
    __break(0xC471u);
  }

  else
  {
    v4 = *(a1 + 8);
    v5 = *(*a2 + 104);

    return v5(a2, v4);
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::TextTrackPrivateRemote::parseWebVTTFileHeader(WTF::String &&)::$_0,void,WebCore::TrackPrivateBaseClient &>::call(uint64_t a1, uint64_t a2)
{
  if ((*(*a2 + 16))(a2))
  {
    result = 96;
    __break(0xC471u);
  }

  else
  {
    v4 = *(a1 + 8);
    v5 = *(*a2 + 112);

    return v5(a2, v4);
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::TextTrackPrivateRemote::parseWebVTTCueData(std::span<unsigned char const,18446744073709551615ul>)::$_0,void,WebCore::TrackPrivateBaseClient &>::call(uint64_t a1, uint64_t a2)
{
  if ((*(*a2 + 16))(a2))
  {
    result = 96;
    __break(0xC471u);
  }

  else
  {
    v4 = *(a1 + 8);
    v5 = *v4;
    v6 = v4[1];
    v7 = *(*a2 + 120);

    return v7(a2, v5, v6);
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::TextTrackPrivateRemote::parseWebVTTCueDataStruct(WebCore::ISOWebVTTCue &&)::$_0,void,WebCore::TrackPrivateBaseClient &>::call(uint64_t a1, uint64_t a2)
{
  if ((*(*a2 + 16))(a2))
  {
    result = 96;
    __break(0xC471u);
  }

  else
  {
    v4 = *(a1 + 8);
    v5 = *(*a2 + 128);

    return v5(a2, v4);
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::TextTrackPrivateRemote::addDataCue(WTF::MediaTime &&,WTF::MediaTime &,std::span<unsigned char const,18446744073709551615ul>)::$_0,void,WebCore::TrackPrivateBaseClient &>::call(void *a1, uint64_t a2)
{
  if ((*(*a2 + 16))(a2))
  {
    result = 96;
    __break(0xC471u);
  }

  else
  {
    v4 = a1[1];
    v5 = a1[2];
    v6 = a1[3];
    v7 = *v6;
    v8 = v6[1];
    v9 = *(*a2 + 56);

    return v9(a2, v4, v5, v7, v8);
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::TextTrackPrivateRemote::addDataCueWithType(WTF::MediaTime &&,WTF::MediaTime &,WebCore::SerializedPlatformDataCueValue &&,WTF::String &&)::$_0,void,WTF::MediaTime &&::TrackPrivateBaseClient &>::call(void *a1, uint64_t a2)
{
  if ((*(*a2 + 16))(a2))
  {
    result = 96;
    __break(0xC471u);
  }

  else
  {
    v4 = a1[1];
    v5 = a1[2];
    WebCore::SerializedPlatformDataCue::create();
    (*(*a2 + 64))(a2, v4, v5, &v7, a1[4]);
    result = v7;
    v7 = 0;
    if (result)
    {
      if (*(result + 8) == 1)
      {
        return (*(*result + 8))(result);
      }

      else
      {
        --*(result + 8);
      }
    }
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::TextTrackPrivateRemote::updateDataCue(WTF::MediaTime &&,WTF::MediaTime &,WebCore::SerializedPlatformDataCueValue &&)::$_0,void,WTF::MediaTime &&::TrackPrivateBaseClient &>::call(uint64_t a1, uint64_t a2)
{
  if ((*(*a2 + 16))(a2))
  {
    result = 96;
    __break(0xC471u);
  }

  else
  {
    v4 = *(a1 + 8);
    v5 = *(a1 + 16);
    WebCore::SerializedPlatformDataCue::create();
    (*(*a2 + 72))(a2, v4, v5);
    result = v7;
    if (v7)
    {
      if (v7[2] == 1)
      {
        return (*(*v7 + 8))();
      }

      else
      {
        --v7[2];
      }
    }
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::TextTrackPrivateRemote::removeDataCue(WTF::MediaTime &&,WTF::MediaTime &,WebCore::SerializedPlatformDataCueValue &&)::$_0,void,WTF::MediaTime &&::TrackPrivateBaseClient &>::call(uint64_t a1, uint64_t a2)
{
  if ((*(*a2 + 16))(a2))
  {
    result = 96;
    __break(0xC471u);
  }

  else
  {
    v4 = *(a1 + 8);
    v5 = *(a1 + 16);
    WebCore::SerializedPlatformDataCue::create();
    (*(*a2 + 80))(a2, v4, v5);
    result = v7;
    if (v7)
    {
      if (v7[2] == 1)
      {
        return (*(*v7 + 8))();
      }

      else
      {
        --v7[2];
      }
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::VideoTrackPrivateRemote::updateConfiguration(WebKit::VideoTrackPrivateRemoteConfiguration &&)::$_1,void,WebCore::TrackPrivateBaseClient &>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F1129BF0;
  a1[1] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::VideoTrackPrivateRemote::updateConfiguration(WebKit::VideoTrackPrivateRemoteConfiguration &&)::$_1,void,WebCore::TrackPrivateBaseClient &>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1129BF0;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::VideoTrackPrivateRemote::updateConfiguration(WebKit::VideoTrackPrivateRemoteConfiguration &&)::$_1,void,WebCore::TrackPrivateBaseClient &>::call(uint64_t a1, uint64_t a2)
{
  WTF::String::isolatedCopy();
  v3 = 0;
  if (v10)
  {
    v3 = v10;
    if ((*(v10 + 16) & 0x10) == 0)
    {
      WTF::AtomStringImpl::addSlowCase();
      v8 = v11;
      v11 = 0;
      v9 = v8;
      if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v10, v7);
      }

      v3 = v9;
    }
  }

  v11 = v3;
  (*(*a2 + 32))(a2, &v11);
  v5 = v11;
  v11 = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v4);
  }

  return 0;
}

void *WTF::Detail::CallableWrapper<WebKit::VideoTrackPrivateRemote::updateConfiguration(WebKit::VideoTrackPrivateRemoteConfiguration &&)::$_2,void,WebCore::TrackPrivateBaseClient &>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F1129C18;
  a1[1] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::VideoTrackPrivateRemote::updateConfiguration(WebKit::VideoTrackPrivateRemoteConfiguration &&)::$_2,void,WebCore::TrackPrivateBaseClient &>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1129C18;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::VideoTrackPrivateRemote::updateConfiguration(WebKit::VideoTrackPrivateRemoteConfiguration &&)::$_2,void,WebCore::TrackPrivateBaseClient &>::call(uint64_t a1, uint64_t a2)
{
  WTF::String::isolatedCopy();
  v3 = 0;
  if (v10)
  {
    v3 = v10;
    if ((*(v10 + 16) & 0x10) == 0)
    {
      WTF::AtomStringImpl::addSlowCase();
      v8 = v11;
      v11 = 0;
      v9 = v8;
      if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v10, v7);
      }

      v3 = v9;
    }
  }

  v11 = v3;
  (*(*a2 + 40))(a2, &v11);
  v5 = v11;
  v11 = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v4);
  }

  return 0;
}

void WebKit::WebMediaStrategy::~WebMediaStrategy(WebKit::WebMediaStrategy *this)
{
  WebCore::MediaStrategy::~MediaStrategy(this);

  JUMPOUT(0x19EB14CF0);
}

uint64_t WebKit::WebMediaStrategy::createAudioDestination@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = atomic_load((a1 + 9));
  if (v4)
  {
    v5 = WTF::fastMalloc(0x10);
    *v5 = &unk_1F112A2C0;
    v7 = v5;
    WebCore::SharedAudioDestination::create();
    result = v7;
    *a3 = v8;
    if (v7)
    {
      return (*(*v7 + 8))(v7);
    }
  }

  else
  {

    return MEMORY[0x1EEE56218](a2);
  }

  return result;
}

void *WebKit::WebMediaStrategy::createNowPlayingManager@<X0>(WebKit::WebMediaStrategy *this@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v4 = atomic_load(this + 9);
  if (v4)
  {
    v5 = WebCore::NowPlayingManager::operator new(0xB0, a2);
    *v5 = 0u;
    *(v5 + 1) = 0u;
    *(v5 + 2) = 0u;
    *(v5 + 3) = 0u;
    *(v5 + 4) = 0u;
    *(v5 + 5) = 0u;
    *(v5 + 6) = 0u;
    *(v5 + 7) = 0u;
    *(v5 + 8) = 0u;
    *(v5 + 9) = 0u;
    *(v5 + 10) = 0u;
    result = WebCore::NowPlayingManager::NowPlayingManager(v5);
    *result = &unk_1F112A108;
    *a3 = result;
  }

  else
  {

    return MEMORY[0x1EEE5C880]();
  }

  return result;
}

atomic_ullong *WebKit::WebMediaStrategy::enableMockMediaSource(WebKit::WebMediaStrategy *this)
{
  v2 = WebCore::DeprecatedGlobalSettings::setAVFoundationEnabled(0);
  *(this + 8) = 1;
  v4 = atomic_load(this + 9);
  if (v4)
  {
    {
      v5 = WebKit::WebProcess::singleton(void)::process;
    }

    else
    {
      v16 = WebKit::WebProcess::operator new(0x370, v3);
      v5 = WebKit::WebProcess::WebProcess(v16);
      WebKit::WebProcess::singleton(void)::process = v5;
    }

    v7 = WebKit::WebProcess::ensureGPUProcessConnection(v5)[4];
    while (1)
    {
      v8 = *v7;
      if ((*v7 & 1) == 0)
      {
        break;
      }

      v9 = *v7;
      atomic_compare_exchange_strong_explicit(v7, &v9, v8 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v9 == v8)
      {
        goto LABEL_12;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v7);
LABEL_12:
    v11 = IPC::Encoder::operator new(0x238, v6);
    *v11 = 45;
    *(v11 + 68) = 0;
    *(v11 + 70) = 0;
    *(v11 + 69) = 0;
    *(v11 + 2) = 0;
    *(v11 + 3) = 0;
    *(v11 + 1) = 0;
    IPC::Encoder::encodeHeader(v11);
    v17 = v11;
    IPC::Connection::sendMessageImpl(v7, &v17, 0, 0);
    v13 = v17;
    v17 = 0;
    if (v13)
    {
      IPC::Encoder::~Encoder(v13, v12);
      bmalloc::api::tzoneFree(v14, v15);
    }

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v7);
  }

  else
  {

    return WebCore::MediaStrategy::addMockMediaSourceEngine(v2);
  }
}

unsigned int *WebKit::WebMediaStrategy::nativeImageFromVideoFrame(uint64_t a1, void *a2, uint64_t *a3)
{
  {
    v5 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v18 = WebKit::WebProcess::operator new(0x370, a2);
    v5 = WebKit::WebProcess::WebProcess(v18);
    WebKit::WebProcess::singleton(void)::process = v5;
  }

  WebKit::WebProcess::ensureProtectedGPUProcessConnection(v5, &v19);
  v6 = WebKit::GPUProcessConnection::videoFrameObjectHeapProxy(v19);
  atomic_fetch_add(v6, 1u);
  WebKit::RemoteVideoFrameObjectHeapProxyProcessor::getNativeImage(*(v6 + 8), a2, &v20);
  v7 = v20;
  v20 = 0;
  v21 = v7;
  v22 = 1;
  v8 = *a3;
  *a3 = 0;
  (*(*v8 + 16))(v8, &v21);
  (*(*v8 + 8))(v8);
  if (v22 == 1)
  {
    v10 = v21;
    v21 = 0;
    if (v10)
    {
      do
      {
        v11 = v10[1];
        if ((v11 & 1) == 0)
        {
          WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::RenderingResource,(WTF::DestructionThread)0>(v10[1], v9);
          goto LABEL_9;
        }

        v12 = v10[1];
        atomic_compare_exchange_strong_explicit(v10 + 1, &v12, (v11 - 2), memory_order_relaxed, memory_order_relaxed);
      }

      while (v12 != v11);
      if (v11 == 3)
      {
        (*(*v10 + 1))(v10);
      }
    }
  }

LABEL_9:
  v13 = v20;
  v20 = 0;
  if (v13)
  {
    do
    {
      v14 = v13[1];
      if ((v14 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::RenderingResource,(WTF::DestructionThread)0>(v13[1], v9);
        goto LABEL_14;
      }

      v15 = v13[1];
      atomic_compare_exchange_strong_explicit(v13 + 1, &v15, (v14 - 2), memory_order_relaxed, memory_order_relaxed);
    }

    while (v15 != v14);
    if (v14 == 3)
    {
      (*(*v13 + 1))(v13);
    }
  }

LABEL_14:
  result = WTF::ThreadSafeRefCounted<WebKit::RemoteVideoFrameObjectHeapProxy,(WTF::DestructionThread)2>::deref(v6);
  if (v19)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref(v19 + 3, v17);
  }

  return result;
}

atomic_uchar **WebKit::RemoteAudioSourceProvider::create@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = WTF::fastMalloc(0x120);
  v7 = WebKit::RemoteAudioSourceProvider::RemoteAudioSourceProvider(v6, a1, a2);
  *a3 = v7;
  v8 = *(v7 + 264);
  if (v8)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(v8, *(v6 + 256), &v14);
    v8 = v14;
  }

  else
  {
    v14 = 0;
  }

  v9 = WebKit::GPUProcessConnection::audioSourceProviderManager(v8);
  (**v9)(v9);
  atomic_fetch_add((v6 + 8), 1u);
  v13 = v6;
  WebKit::RemoteAudioSourceProviderManager::addProvider(v9, &v13);
  if (v13)
  {
    WTF::ThreadSafeRefCounted<WebCore::WebAudioSourceProvider,(WTF::DestructionThread)1>::deref((v13 + 8));
  }

  result = (*(*v9 + 8))(v9);
  v12 = v14;
  v14 = 0;
  if (v12)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref(v12 + 3, v11);
  }

  return result;
}

atomic_ullong *WebKit::RemoteAudioSourceProviderManager::addProvider(uint64_t a1, void *a2)
{
  {
    v4 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v13 = WebKit::WebProcess::operator new(0x370, a2);
    v4 = WebKit::WebProcess::WebProcess(v13);
    WebKit::WebProcess::singleton(void)::process = v4;
  }

  v5 = WebKit::WebProcess::ensureGPUProcessConnection(v4)[4];
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
  v14 = v5;
  WebKit::RemoteAudioSourceProviderManager::setConnection(a1, &v14);
  v8 = v14;
  v14 = 0;
  if (v8)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v8);
  }

  v9 = *(a1 + 16);
  (**a1)(a1);
  v10 = *a2;
  *a2 = 0;
  v11 = WTF::fastMalloc(0x20);
  *v11 = &unk_1F112A2E8;
  v11[1] = a1;
  v11[2] = a1;
  v11[3] = v10;
  v14 = v11;
  (*(*v9 + 48))(v9, &v14);
  result = v14;
  v14 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t WebKit::RemoteAudioSourceProvider::RemoteAudioSourceProvider(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = WebCore::WebAudioSourceProviderCocoa::WebAudioSourceProviderCocoa(a1);
  *v6 = &unk_1F1129CF0;
  v6[30] = &unk_1F1129D58;
  v6[31] = a2;
  {
    v8 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v21 = WebKit::WebProcess::operator new(0x370, v7);
    v8 = WebKit::WebProcess::WebProcess(v21);
    WebKit::WebProcess::singleton(void)::process = v8;
  }

  v9 = WebKit::WebProcess::ensureGPUProcessConnection(v8);
  *(a1 + 256) = v9;
  v10 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::controlBlock(v9 + 3);
  *(a1 + 264) = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v10);
  v11 = (*(*a3 + 16))(a3);
  atomic_fetch_add((v11 + 8), 1u);
  *(a1 + 272) = v11;
  *(a1 + 280) = (*(*a3 + 40))(a3);
  WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(*(a1 + 264), *(a1 + 256), &v22);
  v12 = *(v22 + 32);
  v14 = IPC::Encoder::operator new(0x238, v13);
  *v14 = 1406;
  *(v14 + 2) = 0;
  *(v14 + 3) = 0;
  *(v14 + 1) = a2;
  *(v14 + 68) = 0;
  *(v14 + 70) = 0;
  *(v14 + 69) = 0;
  IPC::Encoder::encodeHeader(v14);
  v23 = v14;
  IPC::Connection::sendMessageImpl(v12, &v23, 0, 0);
  v16 = v23;
  v23 = 0;
  if (v16)
  {
    IPC::Encoder::~Encoder(v16, v15);
    bmalloc::api::tzoneFree(v19, v20);
  }

  v17 = v22;
  v22 = 0;
  if (v17)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref((v17 + 24), v15);
  }

  return a1;
}

void WebKit::RemoteAudioSourceProvider::~RemoteAudioSourceProvider(WebKit::RemoteAudioSourceProvider *this, void *a2)
{
  v3 = *(this + 34);
  *(this + 34) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 33);
  *(this + 33) = 0;
  if (v4)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v4, a2);
  }

  MEMORY[0x1EEE598E0](this);
}

{
  WebKit::RemoteAudioSourceProvider::~RemoteAudioSourceProvider(this, a2);

  WTF::fastFree(v2, v3);
}

void non-virtual thunk toWebKit::RemoteAudioSourceProvider::~RemoteAudioSourceProvider(WebKit::RemoteAudioSourceProvider *this, void *a2)
{
  WebKit::RemoteAudioSourceProvider::~RemoteAudioSourceProvider((this - 240), a2);
}

{
  WebKit::RemoteAudioSourceProvider::~RemoteAudioSourceProvider((this - 240), a2);

  WTF::fastFree(v2, v3);
}

atomic_uchar **WebKit::RemoteAudioSourceProvider::close(WebKit::RemoteAudioSourceProvider *this)
{
  result = *(this + 33);
  if (result)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(result, *(this + 32), &v6);
    result = v6;
    if (v6)
    {
      v3 = WebKit::GPUProcessConnection::audioSourceProviderManager(v6);
      (**v3)(v3);
      WebKit::RemoteAudioSourceProviderManager::removeProvider(v3, *(this + 31));
      result = (*(*v3 + 8))(v3);
      v5 = v6;
      v6 = 0;
      if (v5)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref(v5 + 3, v4);
      }
    }
  }

  return result;
}

uint64_t WebKit::RemoteAudioSourceProviderManager::removeProvider(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  (**a1)(a1);
  v5 = WTF::fastMalloc(0x20);
  *v5 = &unk_1F112A310;
  v5[1] = a1;
  v5[2] = a1;
  v5[3] = a2;
  v7 = v5;
  (*(*v4 + 48))(v4, &v7);
  result = v7;
  v7 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

atomic_uchar **WebKit::RemoteAudioSourceProvider::hasNewClient(void *a1, uint64_t a2)
{
  result = a1[33];
  if (result)
  {
    result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(result, a1[32], &v14);
    if (v14)
    {
      v6 = *(v14 + 32);
      v13 = a2 != 0;
      v7 = a1[31];
      v8 = IPC::Encoder::operator new(0x238, v5);
      *v8 = 1444;
      *(v8 + 2) = 0;
      *(v8 + 3) = 0;
      *(v8 + 1) = v7;
      *(v8 + 68) = 0;
      *(v8 + 70) = 0;
      *(v8 + 69) = 0;
      IPC::Encoder::encodeHeader(v8);
      v15 = v8;
      IPC::Encoder::operator<<<BOOL &>(v8, &v13);
      IPC::Connection::sendMessageImpl(v6, &v15, 0, 0);
      result = v15;
      v15 = 0;
      if (result)
      {
        IPC::Encoder::~Encoder(result, v9);
        result = bmalloc::api::tzoneFree(v11, v12);
      }

      v10 = v14;
      v14 = 0;
      if (v10)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref((v10 + 24), v9);
      }
    }
  }

  return result;
}

void WebKit::RemoteAudioSourceProviderManager::~RemoteAudioSourceProviderManager(WebKit::RemoteAudioSourceProviderManager *this, void *a2)
{
  *this = &unk_1F1129D98;
  v3 = *(this + 4);
  if (v3)
  {
    v4 = *(v3 - 4);
    if (v4)
    {
      v5 = (v3 + 8);
      do
      {
        if (*(v5 - 1) != -1)
        {
          std::unique_ptr<WebKit::RemoteAudioSourceProviderManager::RemoteAudio>::reset[abi:sn200100](v5, 0);
        }

        v5 += 2;
        --v4;
      }

      while (v4);
    }

    WTF::fastFree((v3 - 16), a2);
  }

  v6 = *(this + 3);
  *(this + 3) = 0;
  if (v6)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v6);
  }

  v7 = *(this + 2);
  *(this + 2) = 0;
  if (v7)
  {
    (*(*v7 + 40))(v7);
  }
}

{
  WebKit::RemoteAudioSourceProviderManager::~RemoteAudioSourceProviderManager(this, a2);

  WTF::fastFree(v2, v3);
}

atomic_ullong *WebKit::RemoteAudioSourceProviderManager::stopListeningForIPC(WebKit::RemoteAudioSourceProviderManager *this)
{
  v2 = 0;
  WebKit::RemoteAudioSourceProviderManager::setConnection(this, &v2);
  result = v2;
  v2 = 0;
  if (result)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(result);
  }

  return result;
}

void WebKit::RemoteAudioSourceProviderManager::setConnection(uint64_t a1, atomic_ullong **a2)
{
  v2 = *(a1 + 24);
  if (v2 != *a2)
  {
    if (v2)
    {
      while (1)
      {
        v5 = *v2;
        if ((*v2 & 1) == 0)
        {
          break;
        }

        v6 = *v2;
        atomic_compare_exchange_strong_explicit(v2, &v6, v5 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v6 == v5)
        {
          goto LABEL_7;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v2);
LABEL_7:
      IPC::Connection::removeWorkQueueMessageReceiver(v2, 0x3Cu, 0);
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
    }

    WTF::RefPtr<IPC::Connection,WTF::RawPtrTraits<IPC::Connection>,WTF::DefaultRefDerefTraits<IPC::Connection>>::copyRef(a2, &v10);
    v7 = v10;
    v10 = 0;
    v8 = *(a1 + 24);
    *(a1 + 24) = v7;
    if (v8)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v8);
      v9 = v10;
      v10 = 0;
      if (v9)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v9);
      }
    }

    if (*a2)
    {
      IPC::Connection::addWorkQueueMessageReceiver(*a2, 0x3C, *(a1 + 16), a1, 0);
    }
  }
}

atomic_ullong **WTF::RefPtr<IPC::Connection,WTF::RawPtrTraits<IPC::Connection>,WTF::DefaultRefDerefTraits<IPC::Connection>>::copyRef@<X0>(atomic_ullong **result@<X0>, atomic_ullong **a2@<X8>)
{
  v3 = *result;
  if (*result)
  {
    while (1)
    {
      v4 = *v3;
      if ((*v3 & 1) == 0)
      {
        break;
      }

      v5 = *v3;
      atomic_compare_exchange_strong_explicit(v3, &v5, v4 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v5 == v4)
      {
        goto LABEL_6;
      }
    }

    result = WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v3);
  }

LABEL_6:
  *a2 = v3;
  return result;
}

void WebKit::RemoteAudioSourceProviderManager::audioStorageChanged(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v8 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::RemoteAudioSourceProviderManager::RemoteAudio>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::RemoteAudioSourceProviderManager::RemoteAudio>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::RemoteAudioSourceProviderManager::RemoteAudio>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::RemoteAudioSourceProviderManager::RemoteAudio>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::RemoteAudioSourceProviderManager::RemoteAudio>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::RemoteAudioSourceProviderManager::RemoteAudio>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(*(a1 + 32), a2);
  v9 = *(a1 + 32);
  if (v9)
  {
    v9 += 16 * *(v9 - 4);
  }

  if (v9 == v8)
  {
    v16 = qword_1ED640D38;
    if (os_log_type_enabled(qword_1ED640D38, OS_LOG_TYPE_ERROR))
    {
      *v21 = 134217984;
      *&v21[4] = a2;
      _os_log_error_impl(&dword_19D52D000, v16, OS_LOG_TYPE_ERROR, "Unable to find provider %llu for storageChanged", v21, 0xCu);
    }
  }

  else
  {
    v10 = *(v8 + 8);
    std::unique_ptr<WebCore::WebAudioBufferList>::reset[abi:sn200100]((v10 + 104), 0);
    WebCore::SharedMemoryHandle::takeOwnershipOfMemory();
    WebKit::ConsumerSharedCARingBuffer::map(a4, a3, v21);
    v11 = *v21;
    *v21 = 0;
    std::unique_ptr<WebKit::ConsumerSharedCARingBuffer>::reset[abi:sn200100]((v10 + 96), v11);
    std::unique_ptr<WebKit::ConsumerSharedCARingBuffer>::reset[abi:sn200100](v21, 0);
    if (*(v10 + 96))
    {
      if (*(v10 + 88) == 1)
      {
        v13 = *(a4 + 8);
        v14 = *(a4 + 24);
        *(v10 + 48) = *(a4 + 40);
        *(v10 + 16) = v13;
        *(v10 + 32) = v14;
        v15 = *(a4 + 48);
        *(v10 + 72) = *(a4 + 64);
        *(v10 + 56) = v15;
        *(v10 + 80) = *(a4 + 72);
      }

      else
      {
        *(v10 + 8) = MEMORY[0x1E69E2E98] + 16;
        *(v10 + 16) = *(a4 + 8);
        v17 = *(a4 + 24);
        v18 = *(a4 + 40);
        v19 = *(a4 + 56);
        *(v10 + 80) = *(a4 + 72);
        *(v10 + 48) = v18;
        *(v10 + 64) = v19;
        *(v10 + 32) = v17;
        *(v10 + 88) = 1;
      }

      v20 = WebCore::WebAudioBufferList::operator new(0x48, v12);
      MEMORY[0x19EB080E0](v20, a4);
      std::unique_ptr<WebCore::WebAudioBufferList>::reset[abi:sn200100]((v10 + 104), v20);
    }
  }
}

void WebKit::RemoteAudioSourceProviderManager::audioSamplesAvailable(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = *MEMORY[0x1E69E9840];
  v9 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::RemoteAudioSourceProviderManager::RemoteAudio>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::RemoteAudioSourceProviderManager::RemoteAudio>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::RemoteAudioSourceProviderManager::RemoteAudio>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::RemoteAudioSourceProviderManager::RemoteAudio>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::RemoteAudioSourceProviderManager::RemoteAudio>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::RemoteAudioSourceProviderManager::RemoteAudio>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(*(a1 + 32), a2);
  v10 = *(a1 + 32);
  if (v10)
  {
    v10 += 16 * *(v10 - 4);
  }

  if (v10 == v9)
  {
    v14 = qword_1ED640D38;
    if (!os_log_type_enabled(qword_1ED640D38, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v18 = 134217984;
    v19 = a2;
    v15 = "Unable to find provider %llu for audioSamplesAvailable";
LABEL_17:
    _os_log_error_impl(&dword_19D52D000, v14, OS_LOG_TYPE_ERROR, v15, &v18, 0xCu);
    return;
  }

  v11 = *(v9 + 8);
  if (!v11[13])
  {
    v14 = qword_1ED640D38;
    if (!os_log_type_enabled(qword_1ED640D38, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v16 = *(*v11 + 248);
    v18 = 134217984;
    v19 = v16;
    v15 = "buffer for audio provider %llu is null";
    goto LABEL_17;
  }

  if ((v11[11] & 1) == 0)
  {
    goto LABEL_19;
  }

  if ((WebCore::WebAudioBufferList::isSupportedDescription() & 1) == 0)
  {
    v14 = qword_1ED640D38;
    if (!os_log_type_enabled(qword_1ED640D38, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v17 = *(*v11 + 248);
    v18 = 134217984;
    v19 = v17;
    v15 = "Unable to support description with given number of frames for audio provider %llu";
    goto LABEL_17;
  }

  WebCore::WebAudioBufferList::setSampleCount(v11[13]);
  WebCore::CARingBuffer::fetch();
  if ((v11[11] & 1) == 0)
  {
LABEL_19:
    __break(1u);
  }

  v12 = v11[13];
  v13 = *v11;

  MEMORY[0x1EEE598D0](v13, v12, v11 + 1, a4, a5);
}

atomic_uchar **WebKit::RemoteImageDecoderAVFManager::ensureGPUProcessConnection(WebKit::RemoteImageDecoderAVFManager *this, void *a2)
{
  v3 = *(this + 6);
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(v3, *(this + 5), &v14);
    v4 = v14;
    if (v14)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v14 = 0;
  }

  {
    v5 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v13 = WebKit::WebProcess::operator new(0x370, a2);
    v5 = WebKit::WebProcess::WebProcess(v13);
    WebKit::WebProcess::singleton(void)::process = v5;
  }

  v6 = WebKit::WebProcess::ensureGPUProcessConnection(v5);
  v8 = v6;
  while (1)
  {
    v9 = v6[3];
    if ((v9 & 1) == 0)
    {
      break;
    }

    v10 = v6[3];
    atomic_compare_exchange_strong_explicit(v6 + 3, &v10, (v9 + 2), memory_order_relaxed, memory_order_relaxed);
    if (v10 == v9)
    {
      goto LABEL_12;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(v6[3]);
LABEL_12:
  v11 = v14;
  v14 = v8;
  if (v11)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref(v11 + 3, v7);
  }

  WTF::ThreadSafeWeakPtr<WebKit::GPUProcessConnection,WTF::NoTaggingTraits<WebKit::GPUProcessConnection>>::operator=<WebKit::GPUProcessConnection>(this + 5, &v14);
  WTF::ThreadSafeWeakHashSet<WebKit::GPUProcessConnection::Client>::add<WebKit::GPUProcessConnection::Client>((v14 + 23), this);
  v16 = 89;
  WTF::HashMap<IPC::ReceiverName,WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::IntHash<IPC::ReceiverName>,WTF::StrongEnumHashTraits<IPC::ReceiverName>,WTF::HashTraits<WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<IPC::ReceiverName const&,IPC::MessageReceiver&>(v14 + 5, &v16, this + 8, v15);
  v4 = v14;
LABEL_15:
  v14 = 0;
  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref(v4 + 3, a2);
  return v4;
}

void WebKit::RemoteImageDecoderAVF::~RemoteImageDecoderAVF(WebKit::RemoteImageDecoderAVF *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::LibWebRTCCodecsProxy>(&v17, v2, *(this + 5));
    v3 = v17;
    WebKit::RemoteImageDecoderAVFManager::deleteRemoteImageDecoder(v17, this + 7);
    if (v3)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::RemoteImageDecoderAVFManager,(WTF::DestructionThread)0>::deref(v3 + 3, v4);
    }
  }

  else
  {
    WebKit::RemoteImageDecoderAVFManager::deleteRemoteImageDecoder(0, this + 7);
  }

  v5 = *(this + 13);
  if (v5)
  {
    *(this + 13) = 0;
    *(this + 28) = 0;
    WTF::fastFree(v5, v4);
  }

  v6 = *(this + 12);
  if (v6)
  {
    v7 = *(v6 - 4);
    if (v7)
    {
      v8 = (v6 + 8);
      do
      {
        if (*(v8 - 2) != 2147483646)
        {
          v9 = *v8;
          *v8 = 0;
          if (v9)
          {
            CFRelease(v9);
          }
        }

        v8 += 2;
        --v7;
      }

      while (v7);
    }

    WTF::fastFree((v6 - 16), v4);
  }

  v10 = *(this + 11);
  *(this + 11) = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v11 = *(this + 9);
  *(this + 9) = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v4);
  }

  v12 = *(this + 8);
  *(this + 8) = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v4);
  }

  v13 = *(this + 6);
  *(this + 6) = 0;
  if (v13)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v13, v4);
  }

  v14 = *(this + 4);
  *(this + 4) = 0;
  if (v14)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v14, v4);
  }

  v15 = *(this + 2);
  if (v15)
  {
    *(v15 + 8) = 0;
    v16 = *(this + 2);
    *(this + 2) = 0;
    if (v16)
    {
      if (atomic_fetch_add(v16, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v16);
        WTF::fastFree(v16, v4);
      }
    }
  }

  MEMORY[0x1EEE54C58](this);
}

{
  WebKit::RemoteImageDecoderAVF::~RemoteImageDecoderAVF(this);

  bmalloc::api::tzoneFree(v1, v2);
}