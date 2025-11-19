uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<IPC::Connection::NoOpPromiseConverter,Messages::NetworkTransportSession::CreateOutgoingUnidirectionalStream,WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>>(WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1}::operator()(IPC::Connection*,std::unique_ptr<IPC::Decoder> &)::{lambda(void)#1},std::experimental::fundamentals_v3::expected<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error>>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F112D5C0;
  std::unique_ptr<IPC::Decoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<IPC::Connection::NoOpPromiseConverter,Messages::NetworkTransportSession::CreateOutgoingUnidirectionalStream,WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>>(WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1}::operator()(IPC::Connection*,std::unique_ptr<IPC::Decoder> &)::{lambda(void)#1},std::experimental::fundamentals_v3::expected<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error>>::~CallableWrapper(IPC::Decoder **a1)
{
  *a1 = &unk_1F112D5C0;
  std::unique_ptr<IPC::Decoder>::reset[abi:sn200100](a1 + 1, 0);

  return WTF::fastFree(a1, v2);
}

unint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<IPC::Connection::NoOpPromiseConverter,Messages::NetworkTransportSession::CreateOutgoingUnidirectionalStream,WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>>(WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1}::operator()(IPC::Connection*,std::unique_ptr<IPC::Decoder> &)::{lambda(void)#1},std::experimental::fundamentals_v3::expected<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error>>::call@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 8);
  if (v3)
  {
    if (*v3)
    {
      result = IPC::Decoder::decode<std::tuple<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(&v4, v3);
      if (v5 == 1)
      {
        *a2 = v4;
        *(a2 + 16) = 0;
        return result;
      }
    }

    *a2 = 14;
  }

  else
  {
    *a2 = 1;
  }

  *(a2 + 16) = 1;
  return result;
}

unint64_t IPC::Decoder::decode<std::tuple<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(uint64_t a1, uint64_t *a2)
{
  v4 = a2[2];
  v5 = *a2;
  v6 = a2[1];
  if (v6 <= &v4[-v5])
  {
    *a2 = 0;
    a2[1] = 0;
    v10 = a2[3];
    if (v10)
    {
      if (v6)
      {
        (*(*v10 + 16))(v10);
        v5 = *a2;
        v6 = a2[1];
        goto LABEL_12;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
LABEL_12:
    *a2 = 0;
    a2[1] = 0;
    v11 = a2[3];
    if (v11)
    {
      if (v6)
      {
        (*(*v11 + 16))(v11, v5);
        v5 = *a2;
        v6 = a2[1];
        goto LABEL_15;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
LABEL_15:
    *a2 = 0;
    a2[1] = 0;
    v12 = a2[3];
    if (v12 && v6)
    {
      (*(*v12 + 16))(v12, v5);
    }

    goto LABEL_16;
  }

  a2[2] = (v4 + 1);
  if (!v4)
  {
    goto LABEL_12;
  }

  v7 = *v4;
  if (v7 >= 2)
  {
    goto LABEL_15;
  }

  if (!v7)
  {
    result = 0;
    goto LABEL_8;
  }

  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if (v9)
  {
    LOBYTE(v7) = 1;
LABEL_8:
    *a1 = result;
    *(a1 + 8) = v7;
    *(a1 + 16) = 1;
    return result;
  }

LABEL_16:
  v13 = *a2;
  v14 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  result = a2[3];
  if (result)
  {
    if (v14)
    {
      (*(*result + 16))(result, v13);
      v14 = a2[1];
      result = a2[3];
    }
  }

  else
  {
    v14 = 0;
  }

  *a1 = 0;
  *(a1 + 16) = 0;
  *a2 = 0;
  a2[1] = 0;
  if (result && v14)
  {
    v15 = *(*result + 16);

    return v15();
  }

  return result;
}

atomic_uint **WTF::NativePromiseProducer<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::~NativePromiseProducer(atomic_uint **a1)
{
  WTF::NativePromiseProducer<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::assertIsDead(a1);
  v2 = *a1;
  *a1 = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 16))(v2);
  }

  return a1;
}

unsigned __int8 *WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::maybeSettle(uint64_t a1, WTF::NativePromiseBase **a2, WTF::Logger::LogSiteIdentifier *a3)
{
  v5 = 0;
  v62[1] = *MEMORY[0x1E69E9840];
  v6 = (a1 + 48);
  v42 = v6;
  v43 = 1;
  atomic_compare_exchange_strong_explicit(v6, &v5, 1u, memory_order_acquire, memory_order_acquire);
  if (v5)
  {
    v6 = MEMORY[0x19EB01E30]();
  }

  *(a1 + 128) = 1;
  result = WTF::NativePromiseBase::logChannel(v6);
  if (*result)
  {
    v8 = result[16] >= 4u;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    v9 = result;
    WTF::Logger::LogSiteIdentifier::toString(&v52, a3);
    WTF::String::String(&v51, " invoking maybeSettle() [");
    WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(&v50, a1);
    WTF::String::String(&v49, " callback:");
    WTF::LogArgument<void const*>::toString();
    WTF::String::String(&v47, " isNothing:");
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    WTF::String::String(&v45, "]");
    result = WTF::tryMakeString<WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String>(&v52, &v51, &v50, &v49, &v48, &v47, &v46, &v45, &v53);
    if (!v53)
    {
      __break(0xC471u);
      return result;
    }

    v11 = v45;
    v45 = 0;
    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v10);
    }

    v12 = v46;
    v46 = 0;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v10);
    }

    v13 = v47;
    v47 = 0;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v10);
    }

    v14 = v48;
    v48 = 0;
    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v10);
    }

    v15 = v49;
    v49 = 0;
    if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v10);
    }

    v16 = v50;
    v50 = 0;
    if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v10);
    }

    v17 = v51;
    v51 = 0;
    if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, v10);
    }

    v18 = v52;
    v52 = 0;
    if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v18, v10);
    }

    v19 = *(v9 + 4);
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
    if (v20)
    {
      WTF::String::utf8();
      v22 = v44[0] ? v44[0] + 16 : 0;
      *buf = 136446210;
      v55 = v22;
      _os_log_impl(&dword_19D52D000, v19, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
      v20 = v44[0];
      v44[0] = 0;
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

    if (*v9 && v9[16] >= 4u)
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
          v40 = a2;
          v26 = WTF::Logger::observers(v20);
          v27 = *(v26 + 12);
          if (v27)
          {
            v28 = *v26;
            v29 = *v26 + 8 * v27;
            do
            {
              v30 = *v28;
              *buf = 0;
              WTF::Logger::LogSiteIdentifier::toString((&v55 + 4), a3);
              v56 = 0;
              WTF::String::String(v57, " invoking maybeSettle() [");
              v57[2] = 0;
              WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(&v58, a1);
              v59 = 0;
              WTF::String::String(v60, " callback:");
              v60[2] = 0;
              WTF::LogArgument<void const*>::toString();
              v60[6] = 0;
              WTF::String::String(v61, " isNothing:");
              v61[2] = 0;
              WTF::StringImpl::createWithoutCopyingNonEmpty();
              v61[6] = 0;
              WTF::String::String(v62, "]");
              WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v44, buf, 8uLL);
              (*(*v30 + 16))(v30, v9, 4, v44);
              WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v44, v31);
              for (i = 120; i != -8; i -= 16)
              {
                v33 = *&buf[i];
                *&buf[i] = 0;
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
          a2 = v40;
          if (v34 != 1)
          {
            WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
          }

          break;
        }
      }
    }

    result = v53;
    v53 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v21);
    }
  }

  if (*(a1 + 80))
  {
    result = WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::ThenCallbackBase::dispatch(*a2, a1, &v42);
  }

  else
  {
    v35 = *(a1 + 100);
    if (v35 == *(a1 + 96))
    {
      result = WTF::Vector<WTF::Ref<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1 + 88, v35 + 1, a2);
      v35 = *(a1 + 100);
      v36 = v35 + 1;
      v37 = *(a1 + 88);
      v38 = *result;
      *result = 0;
    }

    else
    {
      v36 = v35 + 1;
      v37 = *(a1 + 88);
      v38 = *a2;
      *a2 = 0;
    }

    *(v37 + 8 * v35) = v38;
    *(a1 + 100) = v36;
  }

  v39 = v43;
  if (v43 == 1)
  {
    result = v42;
    atomic_compare_exchange_strong_explicit(v42, &v39, 0, memory_order_release, memory_order_relaxed);
    if (v39 != 1)
    {
      return WTF::Lock::unlockSlow(result);
    }
  }

  return result;
}

atomic_uint **WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::ThenCallback<true,WTF::NativePromise<WTF::Ref<WebCore::WritableStreamSink,WTF::RawPtrTraits<WebCore::WritableStreamSink>,WTF::DefaultRefDerefTraits<WebCore::WritableStreamSink>>,void,0u>>::setCompletionPromise(uint64_t a1, atomic_uint ***a2)
{
  v4 = 0;
  v5 = (a1 + 57);
  v6 = 1;
  atomic_compare_exchange_strong_explicit((a1 + 57), &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    MEMORY[0x19EB01E30](a1 + 57);
  }

  v7 = *a2;
  *a2 = 0;
  result = std::unique_ptr<WTF::NativePromiseProducer<WTF::Ref<WebCore::WritableStreamSink,WTF::RawPtrTraits<WebCore::WritableStreamSink>,WTF::DefaultRefDerefTraits<WebCore::WritableStreamSink>>,void,0u>>::reset[abi:sn200100]((a1 + 64), v7);
  atomic_compare_exchange_strong_explicit(v5, &v6, 0, memory_order_release, memory_order_relaxed);
  if (v6 != 1)
  {

    return WTF::Lock::unlockSlow(v5);
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<IPC::Connection::NoOpPromiseConverter,Messages::NetworkTransportSession::CreateBidirectionalStream,WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>>(WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1},void,IPC::Connection*,std::unique_ptr<IPC::Decoder> &>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F112D5E8;
  WTF::NativePromiseProducer<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::~NativePromiseProducer((a1 + 8));
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<IPC::Connection::NoOpPromiseConverter,Messages::NetworkTransportSession::CreateBidirectionalStream,WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>>(WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1},void,IPC::Connection*,std::unique_ptr<IPC::Decoder> &>::~CallableWrapper(atomic_uint **a1)
{
  *a1 = &unk_1F112D5E8;
  WTF::NativePromiseProducer<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::~NativePromiseProducer(a1 + 1);

  return WTF::fastFree(a1, v2);
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<IPC::Connection::NoOpPromiseConverter,Messages::NetworkTransportSession::CreateBidirectionalStream,WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>>(WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1},void,IPC::Connection*,std::unique_ptr<IPC::Decoder> &>::call(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  *a3 = 0;
  v5 = WTF::fastMalloc(0x10);
  *v5 = &unk_1F112D610;
  v5[1] = v4;
  v8 = v5;
  v7[0] = 0;
  v7[1] = 0;
  v7[2] = "operator()";
  v7[3] = 0;
  WTF::NativePromiseProducer<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::settleWithFunction<std::enable_if<true,void>>((a1 + 8), &v8, v7);
  result = v8;
  if (v8)
  {
    return (*(*v8 + 8))(v8);
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<IPC::Connection::NoOpPromiseConverter,Messages::NetworkTransportSession::CreateBidirectionalStream,WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>>(WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1}::operator()(IPC::Connection*,std::unique_ptr<IPC::Decoder> &)::{lambda(void)#1},std::experimental::fundamentals_v3::expected<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error>>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F112D610;
  std::unique_ptr<IPC::Decoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<IPC::Connection::NoOpPromiseConverter,Messages::NetworkTransportSession::CreateBidirectionalStream,WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>>(WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1}::operator()(IPC::Connection*,std::unique_ptr<IPC::Decoder> &)::{lambda(void)#1},std::experimental::fundamentals_v3::expected<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error>>::~CallableWrapper(IPC::Decoder **a1)
{
  *a1 = &unk_1F112D610;
  std::unique_ptr<IPC::Decoder>::reset[abi:sn200100](a1 + 1, 0);

  return WTF::fastFree(a1, v2);
}

unint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<IPC::Connection::NoOpPromiseConverter,Messages::NetworkTransportSession::CreateBidirectionalStream,WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>>(WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1}::operator()(IPC::Connection*,std::unique_ptr<IPC::Decoder> &)::{lambda(void)#1},std::experimental::fundamentals_v3::expected<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error>>::call@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 8);
  if (v3)
  {
    if (*v3)
    {
      result = IPC::Decoder::decode<std::tuple<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(&v4, v3);
      if (v5 == 1)
      {
        *a2 = v4;
        *(a2 + 16) = 0;
        return result;
      }
    }

    *a2 = 14;
  }

  else
  {
    *a2 = 1;
  }

  *(a2 + 16) = 1;
  return result;
}

atomic_uint **WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::ThenCallback<true,WTF::NativePromise<WebCore::WebTransportBidirectionalStreamConstructionParameters,void,0u>>::setCompletionPromise(uint64_t a1, atomic_uint ***a2)
{
  v4 = 0;
  v5 = (a1 + 57);
  v6 = 1;
  atomic_compare_exchange_strong_explicit((a1 + 57), &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    MEMORY[0x19EB01E30](a1 + 57);
  }

  v7 = *a2;
  *a2 = 0;
  result = std::unique_ptr<WTF::NativePromiseProducer<WebCore::WebTransportBidirectionalStreamConstructionParameters,void,0u>>::reset[abi:sn200100]((a1 + 64), v7);
  atomic_compare_exchange_strong_explicit(v5, &v6, 0, memory_order_release, memory_order_relaxed);
  if (v6 != 1)
  {

    return WTF::Lock::unlockSlow(v5);
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<IPC::Connection::NoOpPromiseConverter,Messages::NetworkTransportSession::StreamSendBytes,WTF::NativePromise<std::optional<WebCore::Exception>,IPC::Error,0u>>(WTF::NativePromise<std::optional<WebCore::Exception>,IPC::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1},void,IPC::Connection*,std::unique_ptr<IPC::Decoder> &>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F112D638;
  WTF::NativePromiseProducer<std::optional<WebCore::Exception>,IPC::Error,0u>::~NativePromiseProducer((a1 + 8));
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<IPC::Connection::NoOpPromiseConverter,Messages::NetworkTransportSession::StreamSendBytes,WTF::NativePromise<std::optional<WebCore::Exception>,IPC::Error,0u>>(WTF::NativePromise<std::optional<WebCore::Exception>,IPC::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1},void,IPC::Connection*,std::unique_ptr<IPC::Decoder> &>::~CallableWrapper(atomic_uint **a1)
{
  *a1 = &unk_1F112D638;
  WTF::NativePromiseProducer<std::optional<WebCore::Exception>,IPC::Error,0u>::~NativePromiseProducer(a1 + 1);

  return WTF::fastFree(a1, v2);
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<IPC::Connection::NoOpPromiseConverter,Messages::NetworkTransportSession::StreamSendBytes,WTF::NativePromise<std::optional<WebCore::Exception>,IPC::Error,0u>>(WTF::NativePromise<std::optional<WebCore::Exception>,IPC::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1},void,IPC::Connection*,std::unique_ptr<IPC::Decoder> &>::call(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  *a3 = 0;
  v5 = WTF::fastMalloc(0x10);
  *v5 = &unk_1F112D660;
  v5[1] = v4;
  v8 = v5;
  v7[0] = 0;
  v7[1] = 0;
  v7[2] = "operator()";
  v7[3] = 0;
  WTF::NativePromiseProducer<std::optional<WebCore::Exception>,IPC::Error,0u>::settleWithFunction<std::enable_if<true,void>>((a1 + 8), &v8, v7);
  result = v8;
  if (v8)
  {
    return (*(*v8 + 8))(v8);
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<IPC::Connection::NoOpPromiseConverter,Messages::NetworkTransportSession::StreamSendBytes,WTF::NativePromise<std::optional<WebCore::Exception>,IPC::Error,0u>>(WTF::NativePromise<std::optional<WebCore::Exception>,IPC::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1}::operator()(IPC::Connection*,std::unique_ptr<IPC::Decoder> &)::{lambda(void)#1},std::experimental::fundamentals_v3::expected<std::optional<WebCore::Exception>,IPC::Error>>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F112D660;
  std::unique_ptr<IPC::Decoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<IPC::Connection::NoOpPromiseConverter,Messages::NetworkTransportSession::StreamSendBytes,WTF::NativePromise<std::optional<WebCore::Exception>,IPC::Error,0u>>(WTF::NativePromise<std::optional<WebCore::Exception>,IPC::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1}::operator()(IPC::Connection*,std::unique_ptr<IPC::Decoder> &)::{lambda(void)#1},std::experimental::fundamentals_v3::expected<std::optional<WebCore::Exception>,IPC::Error>>::~CallableWrapper(IPC::Decoder **a1)
{
  *a1 = &unk_1F112D660;
  std::unique_ptr<IPC::Decoder>::reset[abi:sn200100](a1 + 1, 0);

  return WTF::fastFree(a1, v2);
}

uint64_t *WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<IPC::Connection::NoOpPromiseConverter,Messages::NetworkTransportSession::StreamSendBytes,WTF::NativePromise<std::optional<WebCore::Exception>,IPC::Error,0u>>(WTF::NativePromise<std::optional<WebCore::Exception>,IPC::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1}::operator()(IPC::Connection*,std::unique_ptr<IPC::Decoder> &)::{lambda(void)#1},std::experimental::fundamentals_v3::expected<std::optional<WebCore::Exception>,IPC::Error>>::call@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = result[1];
  if (!v3)
  {
    *a2 = 1;
    goto LABEL_9;
  }

  if (!*v3 || (result = IPC::Decoder::decode<std::tuple<std::optional<WebCore::Exception>>>(v4, v3), v7 != 1))
  {
    *a2 = 14;
LABEL_9:
    *(a2 + 24) = 1;
    return result;
  }

  *a2 = 0;
  *(a2 + 16) = 0;
  if (v6 == 1)
  {
    *a2 = v4[0];
    *(a2 + 8) = v5;
    *(a2 + 16) = 1;
  }

  *(a2 + 24) = 0;
  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::LibWebRTCDnsResolverFactory::CreateAndResolve(webrtc::SocketAddress const&,absl::AnyInvocable<void ()(void)>)::$_0,void>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F112D688;
  (*(a1 + 24))(1, a1 + 8, a1 + 8);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::LibWebRTCDnsResolverFactory::CreateAndResolve(webrtc::SocketAddress const&,absl::AnyInvocable<void ()(void)>)::$_0,void>::~CallableWrapper(WTF *a1)
{
  *a1 = &unk_1F112D688;
  (*(a1 + 3))(1, a1 + 8, a1 + 8);

  return WTF::fastFree(a1, v2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::LibWebRTCDnsResolverFactory::CreateAndResolve(webrtc::SocketAddress const&,int,absl::AnyInvocable<void ()(void)>)::$_0,void>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F112D6B0;
  (*(a1 + 24))(1, a1 + 8, a1 + 8);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::LibWebRTCDnsResolverFactory::CreateAndResolve(webrtc::SocketAddress const&,int,absl::AnyInvocable<void ()(void)>)::$_0,void>::~CallableWrapper(WTF *a1)
{
  *a1 = &unk_1F112D6B0;
  (*(a1 + 3))(1, a1 + 8, a1 + 8);

  return WTF::fastFree(a1, v2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::LibWebRTCDnsResolverFactory::Resolver::Start(webrtc::SocketAddress const&,absl::AnyInvocable<void ()(void)>)::$_0,void>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F112D6D8;
  (*(a1 + 24))(1, a1 + 8, a1 + 8);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::LibWebRTCDnsResolverFactory::Resolver::Start(webrtc::SocketAddress const&,absl::AnyInvocable<void ()(void)>)::$_0,void>::~CallableWrapper(WTF *a1)
{
  *a1 = &unk_1F112D6D8;
  (*(a1 + 3))(1, a1 + 8, a1 + 8);

  return WTF::fastFree(a1, v2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::LibWebRTCDnsResolverFactory::Resolver::Start(webrtc::SocketAddress const&,int,absl::AnyInvocable<void ()(void)>)::$_0,void>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F112D700;
  (*(a1 + 24))(1, a1 + 8, a1 + 8);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::LibWebRTCDnsResolverFactory::Resolver::Start(webrtc::SocketAddress const&,int,absl::AnyInvocable<void ()(void)>)::$_0,void>::~CallableWrapper(WTF *a1)
{
  *a1 = &unk_1F112D700;
  (*(a1 + 3))(1, a1 + 8, a1 + 8);

  return WTF::fastFree(a1, v2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::LibWebRTCNetwork::setSocketFactoryConnection(void)::$_0,void>::~CallableWrapper(uint64_t result)
{
  *result = &unk_1F112D728;
  v1 = *(result + 16);
  *(result + 16) = 0;
  if (v1)
  {
    if (!*(v1 + 24))
    {
      result = 120;
      __break(0xC471u);
    }
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::LibWebRTCNetwork::setSocketFactoryConnection(void)::$_0,void>::~CallableWrapper(WTF *a1, void *a2)
{
  *a1 = &unk_1F112D728;
  v2 = *(a1 + 2);
  *(a1 + 2) = 0;
  if (!v2 || *(v2 + 24))
  {
    return WTF::fastFree(a1, a2);
  }

  result = 120;
  __break(0xC471u);
  return result;
}

atomic_ullong *WTF::Detail::CallableWrapper<WebKit::LibWebRTCNetwork::setSocketFactoryConnection(void)::$_0,void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = 0;
  WebKit::LibWebRTCSocketFactory::setConnection(v1 + 32, &v3);
  result = v3;
  v3 = 0;
  if (result)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(result);
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkConnectionToWebProcess::CreateRTCProvider,WebKit::LibWebRTCNetwork::setSocketFactoryConnection(void)::$_1>(WebKit::LibWebRTCNetwork::setSocketFactoryConnection(void)::$_1 &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F112D750;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  v3 = a1[2];
  a1[2] = 0;
  if (!v3 || *(v3 + 24))
  {
    return a1;
  }

  result = 120;
  __break(0xC471u);
  return result;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkConnectionToWebProcess::CreateRTCProvider,WebKit::LibWebRTCNetwork::setSocketFactoryConnection(void)::$_1>(WebKit::LibWebRTCNetwork::setSocketFactoryConnection(void)::$_1 &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F112D750;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4 && !*(v4 + 24))
  {
    result = 120;
    __break(0xC471u);
  }

  else
  {

    return WTF::fastFree(this, a2);
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkConnectionToWebProcess::CreateRTCProvider,WebKit::LibWebRTCNetwork::setSocketFactoryConnection(void)::$_1>(WebKit::LibWebRTCNetwork::setSocketFactoryConnection(void)::$_1 &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t result, uint64_t a2, void *a3)
{
  if (a3 && *a3)
  {
    v3 = *(result + 8);
    v4 = atomic_load((*(result + 24) + 33));
    if ((v4 & 1) == 0)
    {
      return result;
    }

    if (!*(v3 + 24))
    {
      goto LABEL_11;
    }
  }

  else
  {
    v3 = *(result + 8);
    v5 = atomic_load((*(result + 24) + 33));
    if ((v5 & 1) == 0)
    {
      return result;
    }

    if (!*(v3 + 24))
    {
LABEL_11:
      __break(0xC471u);
      JUMPOUT(0x19E32E9A0);
    }
  }

  v6 = *(result + 24);
  *(result + 24) = 0;
  v7 = WTF::fastMalloc(0x20);
  *v7 = &unk_1F112D778;
  v7[1] = v3;
  v7[2] = v3;
  v7[3] = v6;
  v8 = v7;
  WebCore::LibWebRTCProvider::callOnWebRTCNetworkThread();
  result = v8;
  if (v8)
  {
    return (*(*v8 + 8))(v8);
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::LibWebRTCNetwork::setSocketFactoryConnection(void)::$_1::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F112D778;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  v3 = a1[2];
  a1[2] = 0;
  if (!v3 || *(v3 + 24))
  {
    return a1;
  }

  result = 120;
  __break(0xC471u);
  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::LibWebRTCNetwork::setSocketFactoryConnection(void)::$_1::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F112D778;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4 && !*(v4 + 24))
  {
    result = 120;
    __break(0xC471u);
  }

  else
  {

    return WTF::fastFree(this, a2);
  }

  return result;
}

uint64_t *WTF::HashTable<WebCore::ProcessQualified<WTF::UUID>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,WTF::WeakRef<WebCore::Document,WebCore::WeakPtrImplWithEventTargetData>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,WTF::WeakRef<WebCore::Document,WebCore::WeakPtrImplWithEventTargetData>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashMap<WebCore::ProcessQualified<WTF::UUID>,WTF::WeakRef<WebCore::Document,WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WTF::WeakRef<WebCore::Document,WebCore::WeakPtrImplWithEventTargetData>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::FastMalloc>::lookup<WTF::HashMapTranslatorAdapter<WTF::HashMap<WebCore::ProcessQualified<WTF::UUID>,WTF::WeakRef<WebCore::Document,WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WTF::WeakRef<WebCore::Document,WebCore::WeakPtrImplWithEventTargetData>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IdentityHashTranslator<WTF::HashMap<WebCore::ProcessQualified<WTF::UUID>,WTF::WeakRef<WebCore::Document,WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WTF::WeakRef<WebCore::Document,WebCore::WeakPtrImplWithEventTargetData>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>>>,(WTF::ShouldValidateKey)1,WebCore::ProcessQualified<WTF::UUID>>(uint64_t *a1, unint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  v7 = *a2 == 0 && v6 == 0;
  if (v7 || v6 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E32ECF4);
  }

  v32 = v2;
  v33 = v3;
  v8 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v10 = *(v8 - 8);
  v30 = 0;
  v31 = 0;
  v11 = (v5 >> 5) & 0x7FFF800 ^ ((v5 - 1640531527) << 16) ^ (v5 - 1640531527);
  v12 = (v5 >> 37) & 0x7FFF800 ^ ((v11 + WORD2(v5) + (v11 >> 11)) << 16) ^ (v11 + WORD2(v5) + (v11 >> 11));
  v13 = (v4 >> 5) & 0x7FFF800 ^ ((v12 + v4 + (v12 >> 11)) << 16) ^ (v12 + v4 + (v12 >> 11));
  v14 = (v4 >> 37) & 0x7FFF800 ^ ((v13 + WORD2(v4) + (v13 >> 11)) << 16) ^ (v13 + WORD2(v4) + (v13 >> 11));
  v29 = v14 + (v14 >> 11);
  v15 = WTF::SuperFastHash::hash(&v29);
  v16 = *a2;
  v17 = a2[1];
  v18 = a2[2];
  v19 = v15 & v10;
  result = (v8 + 48 * (v15 & v10));
  v21 = *result;
  v22 = result[1];
  v23 = v22 == v17 && v21 == v16;
  v24 = result[2];
  if (!v23 || v24 != v18)
  {
    v26 = 1;
    while (v21 | v22 || v24)
    {
      v19 = (v19 + v26) & v10;
      result = (v8 + 48 * v19);
      v21 = *result;
      v22 = result[1];
      v27 = v22 == v17 && v21 == v16;
      v24 = result[2];
      ++v26;
      if (v27 && v24 == v18)
      {
        return result;
      }
    }

    return 0;
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::LibWebRTCNetworkManager::signalUsedInterface(WebCore::ProcessQualified<WTF::UUID>,WTF::String &&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F112D7A0;
  v3 = a1[6];
  a1[6] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::LibWebRTCNetworkManager::signalUsedInterface(WebCore::ProcessQualified<WTF::UUID>,WTF::String &&)::$_0,void>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F112D7A0;
  v3 = *(this + 6);
  *(this + 6) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

atomic_uint *WTF::Detail::CallableWrapper<WebKit::LibWebRTCNetworkManager::signalUsedInterface(WebCore::ProcessQualified<WTF::UUID>,WTF::String &&)::$_0,void>::call(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v7[0] = *(a1 + 16);
  v7[1] = v2;
  result = WebKit::LibWebRTCNetworkManager::getOrCreate(&v6, v7);
  v5 = v6;
  if (v6)
  {
    WebKit::LibWebRTCNetworkManager::signalUsedInterface(v6, (a1 + 48), v4);
    return WTF::ThreadSafeRefCounted<WebCore::RTCNetworkManager,(WTF::DestructionThread)2>::deref((v5 + 8));
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::LibWebRTCNetworkManager::StartUpdating(void)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F112D7C8;
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::LibWebRTCNetworkManager::StartUpdating(void)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F112D7C8;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

atomic_uint *WTF::Detail::CallableWrapper<WebKit::LibWebRTCNetworkManager::StartUpdating(void)::$_0,void>::call(atomic_uint *result, void *a2)
{
  v2 = *(result + 1);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      atomic_fetch_add((v3 - 288), 1u);
      {
        v4 = WebKit::WebProcess::singleton(void)::process;
      }

      else
      {
        v8 = WebKit::WebProcess::operator new(0x370, a2);
        v4 = WebKit::WebProcess::WebProcess(v8);
        WebKit::WebProcess::singleton(void)::process = v4;
      }

      v5 = WebKit::WebProcess::libWebRTCNetwork(v4, a2);
      WebKit::WebRTCMonitor::ref(v5 + 104);
      if (*(v3 + 57) == 1)
      {
        atomic_fetch_add((v3 - 288), 1u);
        v7 = WTF::fastMalloc(0x10);
        *v7 = &unk_1F112D7F0;
        v7[1] = v3 - 296;
        v9 = v7;
        WebCore::LibWebRTCProvider::callOnWebRTCNetworkThread();
        if (v9)
        {
          (*(*v9 + 8))(v9);
        }
      }

      else if (*(v5 + 136) == 1)
      {
        *(v3 + 57) = 1;
        WebKit::LibWebRTCNetworkManager::networksChanged(v3 - 296, (v5 + 144), (v5 + 160), v5 + 180, 1, v6);
      }

      WebKit::WebRTCMonitor::startUpdating((v5 + 104));
      WebKit::WebRTCMonitor::ref(v5 + 104);
      return WTF::ThreadSafeRefCounted<WebCore::RTCNetworkManager,(WTF::DestructionThread)2>::deref((v3 - 288));
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::LibWebRTCNetworkManager::StartUpdating(void)::$_0::operator() const(void)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F112D7F0;
  a1[1] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WebCore::RTCNetworkManager,(WTF::DestructionThread)2>::deref((v2 + 8));
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::LibWebRTCNetworkManager::StartUpdating(void)::$_0::operator() const(void)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F112D7F0;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WebCore::RTCNetworkManager,(WTF::DestructionThread)2>::deref((v3 + 8));
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::LibWebRTCNetworkManager::StartUpdating(void)::$_0::operator() const(void)::{lambda(void)#1},void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  result = *(v1 + 56);
  *(v1 + 72) = result;
  while (result != v1 + 48)
  {
    v3 = *(result + 16);
    *(v1 + 72) = *(result + 8);
    v3();
    result = *(v1 + 72);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::LibWebRTCNetworkManager::StopUpdating(void)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F112D818;
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::LibWebRTCNetworkManager::StopUpdating(void)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F112D818;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::LibWebRTCNetworkManager::StopUpdating(void)::$_0,void>::call(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  if (v2 && *(v2 + 8))
  {
    {
      v3 = WebKit::WebProcess::singleton(void)::process;
    }

    else
    {
      v5 = WebKit::WebProcess::operator new(0x370, a2);
      v3 = WebKit::WebProcess::WebProcess(v5);
      WebKit::WebProcess::singleton(void)::process = v3;
    }

    v4 = WebKit::WebProcess::libWebRTCNetwork(v3, a2);
    WebKit::WebRTCMonitor::ref(v4 + 104);
    WebKit::WebRTCMonitor::stopUpdating((v4 + 104));

    return WebKit::WebRTCMonitor::ref(v4 + 104);
  }

  return result;
}

uint64_t WTF::Vector<char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(uint64_t a1, const void **a2)
{
  if (a2 != a1)
  {
    v4 = *(a1 + 12);
    v5 = *(a2 + 3);
    if (v4 <= v5)
    {
      v6 = *(a1 + 8);
      if (v5 > v6)
      {
        if (v6)
        {
          if (v4)
          {
            *(a1 + 12) = 0;
          }

          v7 = *a1;
          if (*a1)
          {
            *a1 = 0;
            *(a1 + 8) = 0;
            WTF::fastFree(v7, a2);
          }
        }

        WTF::Vector<WebCore::ContactProperty,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, *(a2 + 3));
        v4 = *(a1 + 12);
      }
    }

    else
    {
      *(a1 + 12) = v5;
      v4 = v5;
    }

    if (v4)
    {
      memmove(*a1, *a2, v4);
      v8 = *(a1 + 12);
    }

    else
    {
      v8 = 0;
    }

    memcpy((*a1 + v8), *a2 + v8, *(a2 + 3) - v8);
    *(a1 + 12) = *(a2 + 3);
  }

  return a1;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkRTCProvider::GetInterfaceName,WebKit::LibWebRTCNetworkManager::networksChanged(WTF::Vector<WebKit::RTCNetwork,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WebKit::WebRTCNetwork::IPAddress const&,WebKit::WebRTCNetwork::IPAddress const&,BOOL)::$_1>(WebKit::LibWebRTCNetworkManager::networksChanged(WTF::Vector<WebKit::RTCNetwork,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WebKit::WebRTCNetwork::IPAddress const&,WebKit::WebRTCNetwork::IPAddress const&,BOOL)::$_1 &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F112D840;
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkRTCProvider::GetInterfaceName,WebKit::LibWebRTCNetworkManager::networksChanged(WTF::Vector<WebKit::RTCNetwork,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WebKit::WebRTCNetwork::IPAddress const&,WebKit::WebRTCNetwork::IPAddress const&,BOOL)::$_1>(WebKit::LibWebRTCNetworkManager::networksChanged(WTF::Vector<WebKit::RTCNetwork,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WebKit::WebRTCNetwork::IPAddress const&,WebKit::WebRTCNetwork::IPAddress const&,BOOL)::$_1 &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F112D840;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkRTCProvider::GetInterfaceName,WebKit::LibWebRTCNetworkManager::networksChanged(WTF::Vector<WebKit::RTCNetwork,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WebKit::WebRTCNetwork::IPAddress const&,WebKit::WebRTCNetwork::IPAddress const&,BOOL)::$_1>(WebKit::LibWebRTCNetworkManager::networksChanged(WTF::Vector<WebKit::RTCNetwork,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WebKit::WebRTCNetwork::IPAddress const&,WebKit::WebRTCNetwork::IPAddress const&,BOOL)::$_1 &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(WTF::StringImpl *result, uint64_t a2, const WTF::StringImpl *a3)
{
  v3 = result;
  if (!a3 || (v4 = a3, !*a3) || (IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a3, &v13), (v14 & 1) == 0) && ((v9 = *v4, a3 = *(v4 + 1), *v4 = 0, *(v4 + 1) = 0, (result = *(v4 + 3)) == 0) || !a3 || (result = (*(*result + 16))(result, v9), (v14 & 1) == 0)))
  {
    v13 = 0;
    v10 = *(v3 + 1);
    if (!v10)
    {
      return result;
    }

    v11 = *(v10 + 8);
    if (!v11)
    {
      return result;
    }

    v12 = (v11 - 288);
    atomic_fetch_add((v11 - 288), 1u);
    if (v13)
    {
      WebKit::LibWebRTCNetworkManager::signalUsedInterface(v11 - 296, &v13, a3);
    }

    WTF::ThreadSafeRefCounted<WebCore::RTCNetworkManager,(WTF::DestructionThread)2>::deref(v12);
    goto LABEL_16;
  }

  v6 = *(v3 + 1);
  if (!v6)
  {
    goto LABEL_16;
  }

  v7 = *(v6 + 8);
  if (!v7)
  {
    goto LABEL_16;
  }

  v8 = (v7 - 288);
  atomic_fetch_add((v7 - 288), 1u);
  if (v13)
  {
    WebKit::LibWebRTCNetworkManager::signalUsedInterface(v7 - 296, &v13, a3);
  }

  result = WTF::ThreadSafeRefCounted<WebCore::RTCNetworkManager,(WTF::DestructionThread)2>::deref(v8);
  if (v14)
  {
LABEL_16:
    result = v13;
    v13 = 0;
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

void *WTF::Detail::CallableWrapper<WebKit::LibWebRTCNetworkManager::networksChanged(WTF::Vector<WebKit::RTCNetwork,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WebKit::WebRTCNetwork::IPAddress const&,WebKit::WebRTCNetwork::IPAddress const&,BOOL)::$_2,void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F112D868;
  WTF::Vector<WebKit::RTCNetwork,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 3), a2);
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WebCore::RTCNetworkManager,(WTF::DestructionThread)2>::deref((v3 + 8));
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::LibWebRTCNetworkManager::networksChanged(WTF::Vector<WebKit::RTCNetwork,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WebKit::WebRTCNetwork::IPAddress const&,WebKit::WebRTCNetwork::IPAddress const&,BOOL)::$_2,void>::~CallableWrapper(WTF *a1, void *a2)
{
  *a1 = &unk_1F112D868;
  WTF::Vector<WebKit::RTCNetwork,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 24, a2);
  v4 = *(a1 + 2);
  *(a1 + 2) = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCounted<WebCore::RTCNetworkManager,(WTF::DestructionThread)2>::deref((v4 + 8));
  }

  return WTF::fastFree(a1, v3);
}

void WTF::Detail::CallableWrapper<WebKit::LibWebRTCNetworkManager::networksChanged(WTF::Vector<WebKit::RTCNetwork,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WebKit::WebRTCNetwork::IPAddress const&,WebKit::WebRTCNetwork::IPAddress const&,BOOL)::$_2,void>::call(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (*(a1 + 36))
  {
    operator new();
  }

  v6 = 0;
  WebKit::WebRTCNetwork::IPAddress::rtcAddress((a1 + 40), v7);
  WebKit::WebRTCNetwork::IPAddress::rtcAddress((a1 + 60), v5);
  webrtc::NetworkManagerBase::set_default_local_addresses((v2 + 2), v7, v5);
  memset(v5, 0, 24);
  memset(v7, 0, 24);
  webrtc::NetworkManagerBase::MergeNetworkList();
  v8[0] = v5;
  std::vector<std::unique_ptr<webrtc::Network>>::__destroy_vector::operator()[abi:sn200100](v8);
  if ((v6 & 1) != 0 || *(a1 + 80) == 1)
  {
    v3 = v2[7];
    v2[9] = v3;
    while (v3 != v2 + 6)
    {
      v4 = *(v3 + 16);
      v2[9] = *(v3 + 8);
      v4();
      v3 = v2[9];
    }
  }

  v8[0] = v7;
  std::vector<std::unique_ptr<webrtc::Network>>::__destroy_vector::operator()[abi:sn200100](v8);
}

void std::vector<std::unique_ptr<webrtc::Network>>::__destroy_vector::operator()[abi:sn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        std::unique_ptr<webrtc::Network>::reset[abi:sn200100](--v4, 0);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *WTF::Detail::CallableWrapper<WebKit::LibWebRTCNetworkManager::networkProcessCrashed(void)::$_0,void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F112D890;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WebCore::RTCNetworkManager,(WTF::DestructionThread)2>::deref((v2 + 8));
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::LibWebRTCNetworkManager::networkProcessCrashed(void)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F112D890;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WebCore::RTCNetworkManager,(WTF::DestructionThread)2>::deref((v3 + 8));
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::LibWebRTCNetworkManager::networkProcessCrashed(void)::$_0,void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  result = *(v1 + 56);
  *(v1 + 72) = result;
  while (result != v1 + 48)
  {
    v3 = *(result + 16);
    *(v1 + 72) = *(result + 8);
    v3();
    result = *(v1 + 72);
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(webrtc::IPAddress const&,std::string_view)>::__value_func[abi:sn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v3;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *WTF::Detail::CallableWrapper<WebKit::LibWebRTCNetworkManager::CreateNameForAddress(webrtc::IPAddress const&,std::function<void ()(webrtc::IPAddress const&,std::string_view)>)::$_0,void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F112D8B8;
  std::__function::__value_func<void ()(webrtc::IPAddress const&,std::string_view)>::~__value_func[abi:sn200100]((a1 + 6));
  v3 = a1[1];
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::LibWebRTCNetworkManager::CreateNameForAddress(webrtc::IPAddress const&,std::function<void ()(webrtc::IPAddress const&,std::string_view)>)::$_0,void>::~CallableWrapper(WTF *a1)
{
  *a1 = &unk_1F112D8B8;
  std::__function::__value_func<void ()(webrtc::IPAddress const&,std::string_view)>::~__value_func[abi:sn200100](a1 + 48);
  v3 = *(a1 + 1);
  *(a1 + 1) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, v2);
  }

  return WTF::fastFree(a1, v2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::LibWebRTCNetworkManager::CreateNameForAddress(webrtc::IPAddress const&,std::function<void ()(webrtc::IPAddress const&,std::string_view)>)::$_0,void>::call(uint64_t result, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = *(result + 8);
  if (!v2 || !*(v2 + 8))
  {
    return result;
  }

  v3 = result;
  {
    v4 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v15 = WebKit::WebProcess::operator new(0x370, a2);
    v4 = WebKit::WebProcess::WebProcess(v15);
    WebKit::WebProcess::singleton(void)::process = v4;
  }

  v5 = WebKit::WebProcess::libWebRTCNetwork(v4, a2);
  if (!*(v5 + 24))
  {
    __break(0xC471u);
    JUMPOUT(0x19E32FDECLL);
  }

  v6 = v5;
  WebKit::WebMDNSRegister::ref(v5 + 200);
  v7 = *(v3 + 8);
  if (!v7 || (v8 = *(v7 + 8)) == 0)
  {
    __break(0xC471u);
    goto LABEL_26;
  }

  v9 = *(v8 + 40);
  v24[0] = *(v8 + 24);
  v24[1] = v9;
  webrtc::IPAddress::ToString(&__p, (v3 + 16));
  WTF::String::fromUTF8();
  v19[1] = &off_1F10EE1B0;
  v20 = *(v3 + 24);
  v21 = *(v3 + 28);
  std::__function::__value_func<void ()(webrtc::IPAddress const&,std::string_view)>::__value_func[abi:sn200100](v22, v3 + 48);
  v10 = WTF::fastMalloc(0x48);
  *v10 = &unk_1F112D8E0;
  *(v10 + 8) = &off_1F10EE1B0;
  *(v10 + 16) = v20;
  *(v10 + 20) = v21;
  v11 = v23;
  if (v23)
  {
    if (v23 == v22)
    {
      *(v10 + 64) = v10 + 40;
      (*(*v11 + 24))(v11);
    }

    else
    {
      *(v10 + 64) = v23;
      v23 = 0;
    }
  }

  else
  {
    *(v10 + 64) = 0;
  }

  v16 = v10;
  WebKit::WebMDNSRegister::registerMDNSName(v6 + 200, v24, v19, &v16);
  v12 = v16;
  v16 = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  std::__function::__value_func<void ()(webrtc::IPAddress const&,std::string_view)>::~__value_func[abi:sn200100](v22);
  v14 = v19[0];
  v19[0] = 0;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, v13);
  }

  if (v18 < 0)
  {
    operator delete(__p);
  }

  result = WebKit::WebMDNSRegister::ref(v6 + 200);
  if (!*(v6 + 24))
  {
    __break(0xC471u);
LABEL_26:
    JUMPOUT(0x19E32FDCCLL);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZZN6WebKit23LibWebRTCNetworkManager20CreateNameForAddressERKN6webrtc9IPAddressENSt3__18functionIFvS7_NS8_17basic_string_viewIcNS8_11char_traitsIcEEEEEEEEN3__0clEvEUlT_T0_E_vJRKNS_6StringENS8_8optionalIN7WebCore17MDNSRegisterErrorEEEEED1Ev(void *a1)
{
  *a1 = &unk_1F112D8E0;
  std::__function::__value_func<void ()(webrtc::IPAddress const&,std::string_view)>::~__value_func[abi:sn200100]((a1 + 5));
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit23LibWebRTCNetworkManager20CreateNameForAddressERKN6webrtc9IPAddressENSt3__18functionIFvS7_NS8_17basic_string_viewIcNS8_11char_traitsIcEEEEEEEEN3__0clEvEUlT_T0_E_vJRKNS_6StringENS8_8optionalIN7WebCore17MDNSRegisterErrorEEEEED0Ev(WTF *a1)
{
  *a1 = &unk_1F112D8E0;
  std::__function::__value_func<void ()(webrtc::IPAddress const&,std::string_view)>::~__value_func[abi:sn200100](a1 + 40);

  return WTF::fastFree(a1, v2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit23LibWebRTCNetworkManager20CreateNameForAddressERKN6webrtc9IPAddressENSt3__18functionIFvS7_NS8_17basic_string_viewIcNS8_11char_traitsIcEEEEEEEEN3__0clEvEUlT_T0_E_vJRKNS_6StringENS8_8optionalIN7WebCore17MDNSRegisterErrorEEEEE4callESM_SQ_(uint64_t a1, atomic_uint **a2, __int16 a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
  }

  v12 = v4;
  v13 = *(a1 + 16);
  v14 = *(a1 + 20);
  std::__function::__value_func<void ()(webrtc::IPAddress const&,std::string_view)>::__value_func[abi:sn200100](v15, a1 + 40);
  WTF::String::isolatedCopy();
  v18 = a3;
  v5 = WTF::fastMalloc(0x58);
  *v5 = &unk_1F112D908;
  *(v5 + 8) = &off_1F10EE1B0;
  *(v5 + 16) = v13;
  *(v5 + 20) = v14;
  v6 = v16;
  if (v16)
  {
    if (v16 == v15)
    {
      *(v5 + 64) = v5 + 40;
      (*(*v6 + 24))(v6);
    }

    else
    {
      *(v5 + 64) = v16;
      v16 = 0;
    }
  }

  else
  {
    *(v5 + 64) = 0;
  }

  v7 = v17;
  v17 = 0;
  *(v5 + 72) = v7;
  *(v5 + 80) = v18;
  WebCore::LibWebRTCProvider::callOnWebRTCNetworkThread();
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v9 = v17;
  v17 = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v8);
  }

  std::__function::__value_func<void ()(webrtc::IPAddress const&,std::string_view)>::~__value_func[abi:sn200100](v15);
  result = v12;
  if (v12)
  {
    if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(v12, v10);
    }
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZZZN6WebKit23LibWebRTCNetworkManager20CreateNameForAddressERKN6webrtc9IPAddressENSt3__18functionIFvS7_NS8_17basic_string_viewIcNS8_11char_traitsIcEEEEEEEEN3__0clEvENUlT_T0_E_clINS_6StringENS8_8optionalIN7WebCore17MDNSRegisterErrorEEEEEDaSH_SI_EUlvE_vJEED1Ev(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F112D908;
  v3 = a1[9];
  a1[9] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  std::__function::__value_func<void ()(webrtc::IPAddress const&,std::string_view)>::~__value_func[abi:sn200100]((a1 + 5));
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZZN6WebKit23LibWebRTCNetworkManager20CreateNameForAddressERKN6webrtc9IPAddressENSt3__18functionIFvS7_NS8_17basic_string_viewIcNS8_11char_traitsIcEEEEEEEEN3__0clEvENUlT_T0_E_clINS_6StringENS8_8optionalIN7WebCore17MDNSRegisterErrorEEEEEDaSH_SI_EUlvE_vJEED0Ev(WTF *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F112D908;
  v3 = *(a1 + 9);
  *(a1 + 9) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  std::__function::__value_func<void ()(webrtc::IPAddress const&,std::string_view)>::~__value_func[abi:sn200100](a1 + 40);

  return WTF::fastFree(a1, v4);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZZN6WebKit23LibWebRTCNetworkManager20CreateNameForAddressERKN6webrtc9IPAddressENSt3__18functionIFvS7_NS8_17basic_string_viewIcNS8_11char_traitsIcEEEEEEEEN3__0clEvENUlT_T0_E_clINS_6StringENS8_8optionalIN7WebCore17MDNSRegisterErrorEEEEEDaSH_SI_EUlvE_vJEE4callEv(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*(a1 + 81) == 1)
  {
    v6 = qword_1ED641580;
    if (os_log_type_enabled(qword_1ED641580, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 80);
      *buf = 67109120;
      *&buf[4] = v7;
      _os_log_error_impl(&dword_19D52D000, v6, OS_LOG_TYPE_ERROR, "MDNS registration of a host candidate failed with error %hhu", buf, 8u);
    }
  }

  WTF::String::utf8();
  if (!v8)
  {
    __break(1u);
LABEL_12:
    std::__throw_bad_function_call[abi:sn200100]();
  }

  v2 = strlen(v8 + 16);
  v3 = *(a1 + 64);
  *buf = v8 + 16;
  v10 = v2;
  if (!v3)
  {
    goto LABEL_12;
  }

  (*(*v3 + 48))(v3, a1 + 8, buf);
  result = v8;
  if (*v8 == 1)
  {
    return WTF::fastFree(v8, v4);
  }

  --*v8;
  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RTCSocketFactory::suspend(void)::$_0,void>::call(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  {
    v3 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v9 = WebKit::WebProcess::operator new(0x370, a2);
    v3 = WebKit::WebProcess::WebProcess(v9);
    WebKit::WebProcess::singleton(void)::process = v3;
  }

  v4 = WebKit::WebProcess::libWebRTCNetwork(v3, a2);
  v5 = *(a1 + 32);
  v11[0] = *(a1 + 16);
  v11[1] = v5;
  v6 = WTF::fastMalloc(0x10);
  *v6 = &unk_1F112D958;
  v10 = v6;
  WebKit::LibWebRTCSocketFactory::forSocketInGroup(v4 + 32, v11, &v10);
  v7 = *(*v6 + 8);

  return v7(v6);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RTCSocketFactory::resume(void)::$_0,void>::call(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  {
    v3 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v9 = WebKit::WebProcess::operator new(0x370, a2);
    v3 = WebKit::WebProcess::WebProcess(v9);
    WebKit::WebProcess::singleton(void)::process = v3;
  }

  v4 = WebKit::WebProcess::libWebRTCNetwork(v3, a2);
  v5 = *(a1 + 32);
  v11[0] = *(a1 + 16);
  v11[1] = v5;
  v6 = WTF::fastMalloc(0x10);
  *v6 = &unk_1F112D9A8;
  v10 = v6;
  WebKit::LibWebRTCSocketFactory::forSocketInGroup(v4 + 32, v11, &v10);
  v7 = *(*v6 + 8);

  return v7(v6);
}

void *WTF::Detail::CallableWrapper<WebKit::LibWebRTCResolver::sendOnMainThread(WTF::Function<void ()(IPC::Connection &)> &&)::$_0,void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F112D9D0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::LibWebRTCResolver::sendOnMainThread(WTF::Function<void ()(IPC::Connection &)> &&)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F112D9D0;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

atomic_ullong *WTF::Detail::CallableWrapper<WebKit::LibWebRTCResolver::sendOnMainThread(WTF::Function<void ()(IPC::Connection &)> &&)::$_0,void>::call(uint64_t a1, void *a2)
{
  {
    v3 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v8 = WebKit::WebProcess::operator new(0x370, a2);
    v3 = WebKit::WebProcess::WebProcess(v8);
    WebKit::WebProcess::singleton(void)::process = v3;
  }

  v4 = *(WebKit::WebProcess::ensureNetworkProcessConnection(v3) + 24);
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
      goto LABEL_8;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v4);
LABEL_8:
  (*(**(a1 + 8) + 16))(*(a1 + 8), v4);

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v4);
}

IPC::Encoder *WTF::Detail::CallableWrapper<WebKit::LibWebRTCResolver::~LibWebRTCResolver()::$_0,void,IPC::Connection &>::call(uint64_t a1, void *a2)
{
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 743;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v4, *(a1 + 8));
  IPC::Connection::sendMessageImpl(a2, &v9, 0, 0);
  result = v9;
  v9 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

uint64_t WTF::Vector<webrtc::IPAddress,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = *a1;
    v5 = 32 * v3;
    v6 = *a1;
    v7 = *a1;
    do
    {
      v8 = *v7;
      v7 = (v7 + 32);
      (*v8)(v6);
      v4 = (v4 + 32);
      v6 = v7;
      v5 -= 32;
    }

    while (v5);
  }

  v9 = *a1;
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v9, a2);
  }

  return a1;
}

void *WTF::Detail::CallableWrapper<WebKit::LibWebRTCResolver::start(webrtc::SocketAddress const&,WTF::Function<void ()(void)> &&)::$_0,void,IPC::Connection &>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F112DA20;
  v3 = a1[2];
  a1[2] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::LibWebRTCResolver::start(webrtc::SocketAddress const&,WTF::Function<void ()(void)> &&)::$_0,void,IPC::Connection &>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F112DA20;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *WTF::Detail::CallableWrapper<WebKit::LibWebRTCResolver::start(webrtc::SocketAddress const&,WTF::Function<void ()(void)> &&)::$_0,void,IPC::Connection &>::call(uint64_t a1, void *a2)
{
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 738;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v4, *(a1 + 8));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v4, (a1 + 16));
  IPC::Connection::sendMessageImpl(a2, &v9, 0, 0);
  result = v9;
  v9 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

uint64_t WebKit::LibWebRTCSocket::LibWebRTCSocket(uint64_t a1, atomic_uint *a2, _OWORD *a3, int a4, const webrtc::SocketAddress *a5, const webrtc::SocketAddress *a6)
{
  *(a1 + 8) = sigslot::has_slots<sigslot::single_threaded>::do_signal_connect;
  *(a1 + 16) = sigslot::has_slots<sigslot::single_threaded>::do_signal_disconnect;
  *(a1 + 40) = 0u;
  *(a1 + 24) = sigslot::has_slots<sigslot::single_threaded>::do_disconnect_all;
  *(a1 + 32) = a1 + 40;
  *a1 = MEMORY[0x1E69E2160] + 16;
  *(a1 + 56) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_disconnect;
  *(a1 + 64) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_duplicate;
  *(a1 + 72) = a1 + 72;
  *(a1 + 80) = a1 + 72;
  *(a1 + 88) = 0;
  *(a1 + 96) = a1 + 72;
  *(a1 + 104) = 0;
  *(a1 + 112) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_disconnect;
  *(a1 + 120) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_duplicate;
  *(a1 + 128) = a1 + 128;
  *(a1 + 136) = a1 + 128;
  *(a1 + 144) = 0;
  *(a1 + 152) = a1 + 128;
  *(a1 + 160) = 0;
  *(a1 + 168) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_disconnect;
  *(a1 + 176) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_duplicate;
  *(a1 + 184) = a1 + 184;
  *(a1 + 192) = a1 + 184;
  *(a1 + 200) = 0;
  *(a1 + 208) = a1 + 184;
  *(a1 + 216) = 0;
  *(a1 + 224) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_disconnect;
  *(a1 + 232) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_duplicate;
  *(a1 + 240) = a1 + 240;
  *(a1 + 248) = a1 + 240;
  *(a1 + 256) = 0;
  *(a1 + 264) = a1 + 240;
  *(a1 + 272) = 0;
  webrtc::callback_list_impl::CallbackListReceivers::CallbackListReceivers((a1 + 280));
  *(a1 + 328) = absl::internal_any_invocable::EmptyManager;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 352) = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  *(a1 + 360) = a2;
  *a1 = &unk_1F112DB38;
  atomic_fetch_add(a2, 1u);
  *(a1 + 368) = a4;
  webrtc::SocketAddress::SocketAddress((a1 + 376), a5);
  webrtc::SocketAddress::SocketAddress((a1 + 448), a6);
  *(a1 + 520) = 0x100000000;
  *(a1 + 536) = 0u;
  *(a1 + 528) = a1 + 536;
  *(a1 + 552) = 0;
  v12 = a3[1];
  *(a1 + 560) = *a3;
  *(a1 + 576) = v12;
  v13 = *(a1 + 360);
  if (!v13)
  {
    goto LABEL_29;
  }

  v14 = *(a1 + 352);
  if (v14 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E330C94);
  }

  if (!v14)
  {
    __break(0xC471u);
    JUMPOUT(0x19E330CB4);
  }

  v15 = *(v13 + 8);
  if (!v15)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::LibWebRTCSocket,WTF::RawPtrTraits<WebKit::LibWebRTCSocket>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::LibWebRTCSocket,WTF::RawPtrTraits<WebKit::LibWebRTCSocket>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::LibWebRTCSocket,WTF::RawPtrTraits<WebKit::LibWebRTCSocket>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::LibWebRTCSocket,WTF::RawPtrTraits<WebKit::LibWebRTCSocket>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand((v13 + 8));
    v15 = *(v13 + 8);
  }

  v16 = *(v15 - 8);
  v17 = (v14 + ~(v14 << 32)) ^ ((v14 + ~(v14 << 32)) >> 22);
  v18 = 9 * ((v17 + ~(v17 << 13)) ^ ((v17 + ~(v17 << 13)) >> 8));
  v19 = (v18 ^ (v18 >> 15)) + ~((v18 ^ (v18 >> 15)) << 27);
  v20 = v16 & ((v19 >> 31) ^ v19);
  v21 = (v15 + 16 * v20);
  v22 = *v21;
  if (*v21)
  {
    v23 = 0;
    v24 = 1;
    do
    {
      if (v22 == v14)
      {
        return a1;
      }

      if (v22 == -1)
      {
        v23 = v21;
      }

      v20 = (v20 + v24) & v16;
      v21 = (v15 + 16 * v20);
      v22 = *v21;
      ++v24;
    }

    while (*v21);
    if (v23)
    {
      *v23 = 0;
      v23[1] = 0;
      --*(*(v13 + 8) - 16);
      v21 = v23;
    }
  }

  v25 = v21[1];
  *v21 = v14;
  ++*(a1 + 344);
  v21[1] = a1;
  if (v25)
  {
    v26 = *(v25 + 344);
    if (v26)
    {
      *(v25 + 344) = v26 - 1;
      goto LABEL_17;
    }

LABEL_29:
    __break(0xC471u);
    JUMPOUT(0x19E330C74);
  }

LABEL_17:
  v27 = *(v13 + 8);
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
      return a1;
    }

    goto LABEL_22;
  }

  if (3 * v30 <= 4 * v29)
  {
LABEL_22:
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::LibWebRTCSocket,WTF::RawPtrTraits<WebKit::LibWebRTCSocket>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::LibWebRTCSocket,WTF::RawPtrTraits<WebKit::LibWebRTCSocket>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::LibWebRTCSocket,WTF::RawPtrTraits<WebKit::LibWebRTCSocket>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::LibWebRTCSocket,WTF::RawPtrTraits<WebKit::LibWebRTCSocket>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand((v13 + 8));
  }

  return a1;
}

void WebKit::LibWebRTCSocket::~LibWebRTCSocket(WebKit::LibWebRTCSocket *this)
{
  WebKit::LibWebRTCSocket::Close(this);
  v2 = *(this + 45);
  if (!v2)
  {
    __break(0xC471u);
    JUMPOUT(0x19E330E78);
  }

  v5 = *(v2 + 8);
  v3 = (v2 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = *(this + 44);
    if (v6 == -1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E330E98);
    }

    if (!v6)
    {
      __break(0xC471u);
      JUMPOUT(0x19E330EB8);
    }

    v7 = *(v4 - 8);
    v8 = (v6 + ~(v6 << 32)) ^ ((v6 + ~(v6 << 32)) >> 22);
    v9 = 9 * ((v8 + ~(v8 << 13)) ^ ((v8 + ~(v8 << 13)) >> 8));
    v10 = (v9 ^ (v9 >> 15)) + ~((v9 ^ (v9 >> 15)) << 27);
    v11 = v7 & ((v10 >> 31) ^ v10);
    v12 = *(v4 + 16 * v11);
    if (v12 != v6)
    {
      v13 = 1;
      while (v12)
      {
        v11 = (v11 + v13) & v7;
        v12 = *(v4 + 16 * v11);
        ++v13;
        if (v12 == v6)
        {
          goto LABEL_11;
        }
      }

      v11 = *(v4 - 4);
    }

LABEL_11:
    if (v11 != *(v4 - 4))
    {
      v14 = (v4 + 16 * v11);
      v15 = v14[1];
      *v14 = -1;
      v14[1] = 0;
      if (v15)
      {
        v16 = *(v15 + 344);
        if (!v16)
        {
          v21 = "/AppleInternal/Library/BuildRoots/4~CAtBugAdX2ypK3woS13W0YBGfMX4uuy1xhucdh4/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/wtf/CheckedRef.h";
          v22 = "void WTF::CanMakeCheckedPtrBase<WTF::SingleThreadIntegralWrapper<unsigned int>, unsigned int>::decrementCheckedPtrCount() const [StorageType = WTF::SingleThreadIntegralWrapper<unsigned int>, PtrCounterType = unsigned int]";
          v26 = 290;
          v23 = 37;
          __break(0xC471u);
          goto __ZN6webrtc17AsyncPacketSocketD2Ev;
        }

        *(v15 + 344) = v16 - 1;
      }

      v17 = *v3;
      v18 = vadd_s32(*(*v3 - 16), 0xFFFFFFFF00000001);
      *(v17 - 16) = v18;
      v19 = *(v17 - 4);
      if (6 * v18.i32[1] < v19 && v19 >= 9)
      {
        WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::LibWebRTCSocket,WTF::RawPtrTraits<WebKit::LibWebRTCSocket>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::LibWebRTCSocket,WTF::RawPtrTraits<WebKit::LibWebRTCSocket>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::LibWebRTCSocket,WTF::RawPtrTraits<WebKit::LibWebRTCSocket>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::LibWebRTCSocket,WTF::RawPtrTraits<WebKit::LibWebRTCSocket>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(v3, v19 >> 1);
      }
    }
  }

  std::__tree<std::__value_type<webrtc::Socket::Option,int>,std::__map_value_compare<webrtc::Socket::Option,std::__value_type<webrtc::Socket::Option,int>,std::less<webrtc::Socket::Option>,true>,WTF::FastAllocator<std::__value_type<webrtc::Socket::Option,int>>>::destroy(*(this + 67));
  if (*(this + 471) < 0)
  {
    operator delete(*(this + 56));
  }

  if (*(this + 399) < 0)
  {
    operator delete(*(this + 47));
  }

  v24 = *(this + 45);
  *(this + 45) = 0;
  if (v24)
  {
    if (!atomic_load(v24))
    {
      __break(0xC471u);
      JUMPOUT(0x19E330ED8);
    }

    atomic_fetch_add(v24, 0xFFFFFFFF);
  }

  v26 = this;

{
  WebKit::LibWebRTCSocket::~LibWebRTCSocket(this);
  if (v1[86])
  {

    bzero(v1, 0x250uLL);
  }

  else
  {

    bmalloc::api::tzoneFree(v1, v2);
  }
}

uint64_t WebKit::LibWebRTCSocket::Close(WebKit::LibWebRTCSocket *this)
{
  v1 = *(this + 45);
  if (v1)
  {
    v2 = *(v1 + 32);
    if (v2)
    {
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
          goto LABEL_7;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v2);
LABEL_7:
      if (*(this + 131))
      {
        *(this + 131) = 0;
        v7 = *(this + 44);
        v8 = &v7;
        IPC::Connection::send<Messages::NetworkRTCProvider::CloseSocket>(v2, &v8);
      }

      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
    }

    return 0;
  }

  else
  {
    result = 120;
    __break(0xC471u);
  }

  return result;
}

void *WebKit::LibWebRTCSocket::signalAddressReady(WebKit::LibWebRTCSocket *this, const webrtc::SocketAddress *a2)
{
  webrtc::SocketAddress::operator=();
  if (*(this + 92) == 1)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  *(this + 131) = v3;
  result = *(this + 24);
  *(this + 26) = result;
  while (result != (this + 184))
  {
    v6 = result[2];
    v5 = result + 2;
    *(this + 26) = *(v5 - 1);
    v6(v5, this, this + 376);
    result = *(this + 26);
  }

  return result;
}

uint64_t WebKit::LibWebRTCSocket::signalReadPacket(uint64_t result)
{
  if ((*(result + 552) & 1) == 0)
  {
    webrtc::SocketAddress::operator=();
    webrtc::ReceivedIpPacket::ReceivedIpPacket();
    return webrtc::AsyncPacketSocket::NotifyPacketReceived();
  }

  return result;
}

void WebKit::LibWebRTCSocket::signalSentPacket(WebKit::LibWebRTCSocket *this)
{
  webrtc::SentPacketInfo::SentPacketInfo(v5);
  v2 = *(this + 10);
  *(this + 12) = v2;
  while (v2 != (this + 72))
  {
    v4 = v2[2];
    v3 = v2 + 2;
    *(this + 12) = *(v3 - 1);
    v4(v3, this, v5);
    v2 = *(this + 12);
  }

  webrtc::PacketInfo::~PacketInfo(&v6);
}

uint64_t WebKit::LibWebRTCSocket::signalClose(WebKit::LibWebRTCSocket *this, int a2)
{
  *(this + 131) = 0;
  v4 = a2;
  v3 = this;
  v5 = &v3;
  v6 = &v4;
  return webrtc::callback_list_impl::CallbackListReceivers::Foreach();
}

size_t WebKit::LibWebRTCSocket::SendTo(WebKit::LibWebRTCSocket *this, const void *a2, size_t a3, const webrtc::SocketAddress *a4, const webrtc::AsyncSocketPacketOptions *a5)
{
  v5 = *(this + 45);
  if (v5)
  {
    v6 = *(v5 + 32);
    if (!v6)
    {
      return 0xFFFFFFFFLL;
    }

    while (1)
    {
      v11 = *v6;
      if ((*v6 & 1) == 0)
      {
        break;
      }

      v12 = *v6;
      atomic_compare_exchange_strong_explicit(v6, &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v12 == v11)
      {
        goto LABEL_7;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v6);
LABEL_7:
    if ((*(this + 552) & 1) == 0)
    {
      v13 = *(this + 44);
      WebKit::WebRTCNetwork::SocketAddress::SocketAddress(v24, a4);
      webrtc::AsyncSocketPacketOptions::AsyncSocketPacketOptions();
      v15 = IPC::Encoder::operator new(0x238, v14);
      *v15 = 741;
      *(v15 + 68) = 0;
      *(v15 + 70) = 0;
      *(v15 + 69) = 0;
      *(v15 + 2) = 0;
      *(v15 + 3) = 0;
      *(v15 + 1) = 0;
      IPC::Encoder::encodeHeader(v15);
      v27 = v15;
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v15, v13);
      IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(v15, a2, a3);
      IPC::ArgumentCoder<WebKit::WebRTCNetwork::SocketAddress,void>::encode(v15, v24);
      WebKit::RTCPacketOptions::serializableData(v23, v28);
      IPC::ArgumentCoder<WebKit::RTCPacketOptions::SerializableData,void>::encode(v15, v28);
      IPC::Connection::sendMessageImpl(v6, &v27, 0, 0);
      v17 = v27;
      v27 = 0;
      if (v17)
      {
        IPC::Encoder::~Encoder(v17, v16);
        bmalloc::api::tzoneFree(v21, v22);
      }

      webrtc::AsyncSocketPacketOptions::~AsyncSocketPacketOptions(v23);
      v19 = v25;
      if (v25)
      {
        v25 = 0;
        v26 = 0;
        WTF::fastFree(v19, v18);
      }
    }

    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v6);
    return a3;
  }

  else
  {
    result = 120;
    __break(0xC471u);
  }

  return result;
}

IPC::Encoder *IPC::Connection::send<Messages::NetworkRTCProvider::CloseSocket>(uint64_t *a1, void **a2)
{
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 736;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v4, **a2);
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

uint64_t WebKit::LibWebRTCSocket::GetOption(uint64_t a1, int a2, _DWORD *a3)
{
  v3 = *(a1 + 536);
  if (!v3)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = a1 + 536;
  do
  {
    if (*(v3 + 28) >= a2)
    {
      v4 = v3;
    }

    v3 = *(v3 + 8 * (*(v3 + 28) < a2));
  }

  while (v3);
  if (v4 == a1 + 536 || *(v4 + 28) > a2)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *a3 = *(v4 + 32);
  return result;
}

uint64_t WebKit::LibWebRTCSocket::SetOption(uint64_t a1, void *a2, int a3)
{
  v4 = a2;
  v6 = *(a1 + 536);
  if (v6)
  {
    while (1)
    {
      while (1)
      {
        v7 = v6;
        v8 = *(v6 + 28);
        if (v8 <= a2)
        {
          break;
        }

        v6 = *v7;
        v9 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (v8 >= a2)
      {
        break;
      }

      v6 = *(v7 + 8);
      if (!v6)
      {
        v9 = (v7 + 8);
        goto LABEL_9;
      }
    }
  }

  else
  {
    v9 = (a1 + 536);
    v7 = a1 + 536;
LABEL_9:
    v10 = v7;
    v7 = WTF::fastMalloc(0x28);
    *(v7 + 28) = v4;
    *(v7 + 32) = 0;
    *v7 = 0;
    *(v7 + 8) = 0;
    *(v7 + 16) = v10;
    *v9 = v7;
    v11 = **(a1 + 528);
    v12 = v7;
    if (v11)
    {
      *(a1 + 528) = v11;
      v12 = *v9;
    }

    std::__tree_balance_after_insert[abi:sn200100]<std::__tree_node_base<void *> *>(*(a1 + 536), v12);
    ++*(a1 + 544);
  }

  *(v7 + 32) = a3;
  v13 = *(a1 + 360);
  if (v13)
  {
    v14 = *(v13 + 32);
    if (v14)
    {
      while (1)
      {
        v15 = *v14;
        if ((*v14 & 1) == 0)
        {
          break;
        }

        v16 = *v14;
        atomic_compare_exchange_strong_explicit(v14, &v16, v15 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v16 == v15)
        {
          goto LABEL_18;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v14);
LABEL_18:
      v17 = *(a1 + 352);
      v18 = IPC::Encoder::operator new(0x238, a2);
      *v18 = 742;
      *(v18 + 68) = 0;
      *(v18 + 70) = 0;
      *(v18 + 69) = 0;
      *(v18 + 2) = 0;
      *(v18 + 3) = 0;
      *(v18 + 1) = 0;
      IPC::Encoder::encodeHeader(v18);
      v24 = v18;
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v18, v17);
      IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v18, v4);
      IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v18, a3);
      IPC::Connection::sendMessageImpl(v14, &v24, 0, 0);
      v20 = v24;
      v24 = 0;
      if (v20)
      {
        IPC::Encoder::~Encoder(v20, v19);
        bmalloc::api::tzoneFree(v22, v23);
      }

      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v14);
    }

    return 0;
  }

  else
  {
    result = 120;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::LibWebRTCSocket::suspend(uint64_t this)
{
  *(this + 552) = 1;
  if (*(this + 524))
  {
    v1 = this;
    *(this + 524) = 0;
    v7 = -1;
    v6 = this;
    v8[0] = &v6;
    v8[1] = &v7;
    this = webrtc::callback_list_impl::CallbackListReceivers::Foreach();
    v2 = *(v1 + 360);
    if (v2)
    {
      v3 = *(v2 + 32);
      if (v3)
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
            goto LABEL_8;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v3);
LABEL_8:
        v6 = *(v1 + 352);
        v8[0] = &v6;
        IPC::Connection::send<Messages::NetworkRTCProvider::CloseSocket>(v3, v8);
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
      }
    }

    else
    {
      this = 120;
      __break(0xC471u);
    }
  }

  return this;
}

atomic_ullong *WebKit::LibWebRTCSocketFactory::setConnection(uint64_t a1, atomic_ullong **a2)
{
  WTF::RefPtr<IPC::Connection,WTF::RawPtrTraits<IPC::Connection>,WTF::DefaultRefDerefTraits<IPC::Connection>>::copyRef(a2, &v11);
  v4 = v11;
  v11 = 0;
  result = *(a1 + 32);
  *(a1 + 32) = v4;
  if (result)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(result);
    result = v11;
    v11 = 0;
    if (result)
    {
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(result);
    }

    v4 = *(a1 + 32);
  }

  if (v4)
  {
    while (1)
    {
      v6 = *(a1 + 40);
      if (v6 == *(a1 + 48))
      {
        break;
      }

      v7 = *(a1 + 64);
      if (v6 >= v7)
      {
        __break(1u);
        return result;
      }

      v8 = *(a1 + 56);
      v9 = *(v8 + 8 * v6);
      *(v8 + 8 * v6) = 0;
      if (v6 == v7 - 1)
      {
        v10 = 0;
      }

      else
      {
        v10 = v6 + 1;
      }

      *(a1 + 40) = v10;
      (*(*v9 + 16))(v9, *a2);
      result = (*(*v9 + 8))(v9);
    }
  }

  return result;
}

uint64_t WebKit::LibWebRTCSocketFactory::createUdpSocket(uint64_t a1, _OWORD *a2, const webrtc::SocketAddress *a3, __int16 a4, __int16 a5, uint64_t a6, char a7, char a8, atomic_uint **a9)
{
  v55 = *MEMORY[0x1E69E9840];
  v52 = a6;
  webrtc::SocketAddress::SocketAddress(&__p);
  v18 = WebKit::LibWebRTCSocket::operator new(0x250, v17);
  v19 = a2[1];
  *v53 = *a2;
  v54 = v19;
  WebKit::LibWebRTCSocket::LibWebRTCSocket(v18, a1, v53, 0, a3, &__p);
  if (SHIBYTE(v44) < 0)
  {
    operator delete(__p);
  }

  v20 = *(a1 + 32);
  if (v20)
  {
    while (1)
    {
      v21 = *v20;
      if ((*v20 & 1) == 0)
      {
        break;
      }

      v22 = *v20;
      atomic_compare_exchange_strong_explicit(v20, &v22, v21 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v22 == v21)
      {
        goto LABEL_8;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v20);
LABEL_8:
    v51 = *(v18 + 352);
    WebKit::WebRTCNetwork::SocketAddress::SocketAddress(v53, a3);
    __p = &v51;
    v43 = v53;
    LOWORD(v44) = a4;
    WORD1(v44) = a5;
    v45 = &v52;
    LOBYTE(v46) = a7;
    BYTE1(v46) = a8;
    *(&v46 + 1) = a9;
    IPC::Connection::send<Messages::NetworkRTCProvider::CreateUDPSocket>(v20, &__p);
    v24 = v53[1];
    if (v53[1])
    {
      v53[1] = 0;
      LODWORD(v54) = 0;
      WTF::fastFree(v24, v23);
    }

    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v20);
    return v18;
  }

  v26 = WTF::fastMalloc(0x10);
  *v26 = &unk_1F112DCF0;
  __p = v26;
  WTF::callOnMainRunLoop();
  v27 = __p;
  __p = 0;
  if (v27)
  {
    (*(*v27 + 8))(v27);
  }

  __p = *(v18 + 352);
  result = WebKit::WebRTCNetwork::SocketAddress::SocketAddress(&v43, a3);
  LOWORD(v48) = a4;
  WORD1(v48) = a5;
  *(&v48 + 1) = a6;
  LOBYTE(v49) = a7;
  HIBYTE(v49) = a8;
  v28 = *a9;
  if (*a9)
  {
    atomic_fetch_add_explicit(v28, 2u, memory_order_relaxed);
  }

  v50 = v28;
  v29 = *(a1 + 40);
  v30 = *(a1 + 48);
  if (v29)
  {
    if (v30 + 1 != v29)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v31 = *(a1 + 64);
  if (!v30)
  {
    if (v31)
    {
      v30 = 0;
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (v30 == v31 - 1)
  {
LABEL_24:
    result = WTF::Deque<WTF::Function<void ()(IPC::Connection &)>,0ul>::expandCapacity(a1 + 40);
    v30 = *(a1 + 48);
  }

LABEL_25:
  if (v30 < *(a1 + 64))
  {
    v32 = *(a1 + 56);
    v33 = WTF::fastMalloc(0x60);
    *v33 = &unk_1F112DD18;
    *(v33 + 8) = __p;
    *(v33 + 16) = v43;
    *(v33 + 24) = v44;
    v35 = v45;
    v44 = 0;
    v45 = 0;
    *(v33 + 32) = v35;
    v36 = v47;
    *(v33 + 40) = v46;
    *(v33 + 56) = v36;
    LOWORD(v36) = v49;
    *(v33 + 64) = v48;
    *(v33 + 80) = v36;
    v37 = v50;
    if (v50)
    {
      atomic_fetch_add_explicit(v50, 2u, memory_order_relaxed);
    }

    *(v33 + 88) = v37;
    *(v32 + 8 * v30) = v33;
    v38 = *(a1 + 48);
    if (v38 == *(a1 + 64) - 1)
    {
      v39 = 0;
    }

    else
    {
      v39 = v38 + 1;
    }

    *(a1 + 48) = v39;
    v40 = v50;
    v50 = 0;
    if (v40 && atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v40, v34);
    }

    v41 = v44;
    if (v44)
    {
      v44 = 0;
      LODWORD(v45) = 0;
      WTF::fastFree(v41, v34);
    }

    return v18;
  }

  __break(1u);
  return result;
}

IPC::Encoder *IPC::Connection::send<Messages::NetworkRTCProvider::CreateUDPSocket>(uint64_t *a1, void **a2)
{
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 739;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v4, **a2);
  IPC::ArgumentCoder<WebKit::WebRTCNetwork::SocketAddress,void>::encode(v4, a2[1]);
  IPC::ArgumentCoder<unsigned short,void>::encode<IPC::Encoder>(v4, *(a2 + 8));
  IPC::ArgumentCoder<unsigned short,void>::encode<IPC::Encoder>(v4, *(a2 + 9));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v4, *a2[3]);
  IPC::Encoder::operator<<<BOOL &>(v4, a2 + 32);
  IPC::Encoder::operator<<<BOOL &>(v4, a2 + 33);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v4, a2[5]);
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

uint64_t WebKit::LibWebRTCSocketFactory::createClientTcpSocket(uint64_t a1, __int128 *a2, const webrtc::SocketAddress *a3, const webrtc::SocketAddress *a4, atomic_uint **a5, _DWORD *a6, uint64_t a7, char a8, char a9, atomic_uint **a10)
{
  v85 = *MEMORY[0x1E69E9840];
  v72 = a7;
  v17 = WebKit::LibWebRTCSocket::operator new(0x250, a2);
  v18 = a2[1];
  v73 = *a2;
  v74 = v18;
  *(WebKit::LibWebRTCSocket::LibWebRTCSocket(v17, a1, &v73, 1, a3, a4) + 524) = 3;
  v19 = *(a1 + 32);
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
        goto LABEL_6;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v19);
LABEL_6:
    v71 = *(v17 + 352);
    v22 = *(a1 + 24);
    webrtc::SocketAddress::SocketAddress(&v73, a3);
    if (v22 == 1)
    {
      webrtc::SocketAddress::SetIP();
    }

    WebKit::WebRTCNetwork::SocketAddress::SocketAddress(v68, &v73);
    v23 = *(a1 + 24);
    webrtc::SocketAddress::SocketAddress(__p, a4);
    if (v23 == 1)
    {
      webrtc::SocketAddress::SetIP();
    }

    WebKit::WebRTCNetwork::SocketAddress::SocketAddress(v65, __p);
    v55[0] = &v71;
    v55[1] = v68;
    v56 = v65;
    v57 = a5;
    v58 = a6;
    v59 = &v72;
    v60 = a8;
    v61 = a9;
    v62 = a10;
    IPC::Connection::send<Messages::NetworkRTCProvider::CreateClientTCPSocket>(v19, v55);
    v25 = v66;
    if (v66)
    {
      v66 = 0;
      v67 = 0;
      WTF::fastFree(v25, v24);
    }

    if (v64 < 0)
    {
      operator delete(__p[0]);
    }

    v26 = v69;
    if (v69)
    {
      v69 = 0;
      v70 = 0;
      WTF::fastFree(v26, v24);
    }

    if (SBYTE7(v74) < 0)
    {
      operator delete(v73);
    }

    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v19);
    return v17;
  }

  v28 = WTF::fastMalloc(0x10);
  *v28 = &unk_1F112DD40;
  *&v73 = v28;
  WTF::callOnMainRunLoop();
  v29 = v73;
  *&v73 = 0;
  if (v29)
  {
    (*(*v29 + 8))(v29);
  }

  *&v73 = *(v17 + 352);
  v30 = *(a1 + 24);
  webrtc::SocketAddress::SocketAddress(__p, a3);
  if (v30 == 1)
  {
    webrtc::SocketAddress::SetIP();
  }

  WebKit::WebRTCNetwork::SocketAddress::SocketAddress((&v73 + 8), __p);
  v31 = *(a1 + 24);
  webrtc::SocketAddress::SocketAddress(v55, a4);
  if (v31 == 1)
  {
    webrtc::SocketAddress::SetIP();
  }

  result = WebKit::WebRTCNetwork::SocketAddress::SocketAddress(&v77, v55);
  v32 = *a5;
  if (*a5)
  {
    atomic_fetch_add_explicit(v32, 2u, memory_order_relaxed);
  }

  v81 = v32;
  LODWORD(v82) = *a6;
  *(&v82 + 1) = a7;
  LOBYTE(v83) = a8;
  HIBYTE(v83) = a9;
  v33 = *a10;
  if (*a10)
  {
    atomic_fetch_add_explicit(v33, 2u, memory_order_relaxed);
  }

  v84 = v33;
  v34 = *(a1 + 40);
  v35 = *(a1 + 48);
  if (v34)
  {
    if (v35 + 1 != v34)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  v36 = *(a1 + 64);
  if (!v35)
  {
    if (v36)
    {
      v35 = 0;
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  if (v35 == v36 - 1)
  {
LABEL_38:
    result = WTF::Deque<WTF::Function<void ()(IPC::Connection &)>,0ul>::expandCapacity(a1 + 40);
    v35 = *(a1 + 48);
  }

LABEL_39:
  if (v35 < *(a1 + 64))
  {
    v37 = *(a1 + 56);
    v38 = WTF::fastMalloc(0x98);
    *&v40 = 0;
    *v38 = &unk_1F112DD68;
    *(v38 + 8) = v73;
    v41 = v74;
    v74 = v40;
    *(v38 + 24) = v41;
    v42 = v76;
    *(v38 + 40) = v75;
    *(v38 + 56) = v42;
    *(v38 + 64) = v77;
    v43 = v78;
    v78 = v40;
    *(v38 + 72) = v43;
    v44 = v79;
    *(v38 + 104) = v80;
    *(v38 + 88) = v44;
    v45 = v81;
    v81 = 0;
    *(v38 + 112) = v45;
    v46 = v82;
    *(v38 + 136) = v83;
    *(v38 + 120) = v46;
    v47 = v84;
    if (v84)
    {
      atomic_fetch_add_explicit(v84, 2u, memory_order_relaxed);
    }

    *(v38 + 144) = v47;
    *(v37 + 8 * v35) = v38;
    v48 = *(a1 + 48);
    if (v48 == *(a1 + 64) - 1)
    {
      v49 = 0;
    }

    else
    {
      v49 = v48 + 1;
    }

    *(a1 + 48) = v49;
    v50 = v84;
    v84 = 0;
    if (v50 && atomic_fetch_add_explicit(v50, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v50, v39);
    }

    v51 = v81;
    v81 = 0;
    if (v51 && atomic_fetch_add_explicit(v51, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v51, v39);
    }

    v52 = v78;
    if (v78)
    {
      *&v78 = 0;
      DWORD2(v78) = 0;
      WTF::fastFree(v52, v39);
    }

    v53 = v74;
    if (v74)
    {
      *&v74 = 0;
      DWORD2(v74) = 0;
      WTF::fastFree(v53, v39);
    }

    if (SHIBYTE(v56) < 0)
    {
      operator delete(v55[0]);
    }

    if (v64 < 0)
    {
      operator delete(__p[0]);
    }

    return v17;
  }

  __break(1u);
  return result;
}

IPC::Encoder *IPC::Connection::send<Messages::NetworkRTCProvider::CreateClientTCPSocket>(uint64_t *a1, char *a2)
{
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 737;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v4, **a2);
  IPC::ArgumentCoder<WebKit::WebRTCNetwork::SocketAddress,void>::encode(v4, *(a2 + 1));
  IPC::ArgumentCoder<WebKit::WebRTCNetwork::SocketAddress,void>::encode(v4, *(a2 + 2));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v4, *(a2 + 3));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v4, **(a2 + 4));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v4, **(a2 + 5));
  IPC::Encoder::operator<<<BOOL &>(v4, a2 + 48);
  IPC::Encoder::operator<<<BOOL &>(v4, a2 + 49);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v4, *(a2 + 7));
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

uint64_t WebKit::LibWebRTCSocketFactory::forSocketInGroup(uint64_t a1, void *a2, void *a3)
{
  result = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::WallTime>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::WallTime>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::WallTime,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::WallTime>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin((a1 + 8));
  v7 = result;
  v9 = v8;
  v10 = *(a1 + 8);
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
    while (1)
    {
      v12 = v7[1];
      v13 = *(v12 + 344) + 1;
      *(v12 + 344) = v13;
      if (*(v12 + 568) == a2[1] && *(v12 + 560) == *a2 && *(v12 + 576) == a2[2])
      {
        result = (*(**a3 + 16))(*a3, v12);
        v13 = *(v12 + 344);
      }

      if (!v13)
      {
        break;
      }

      *(v12 + 344) = v13 - 1;
      do
      {
        v7 += 2;
      }

      while (v7 != v9 && (*v7 + 1) <= 1);
      if (v7 == v11)
      {
        return result;
      }
    }

    result = 290;
    __break(0xC471u);
  }

  return result;
}

uint64_t *WebKit::LibWebRTCSocketFactory::createAsyncDnsResolver@<X0>(WebKit::LibWebRTCSocketFactory *this@<X0>, void *a2@<X1>, WebKit::LibWebRTCResolver **a3@<X8>)
{
  v5 = WebKit::LibWebRTCResolver::operator new(0x88, a2);
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0u;
  *(v5 + 64) = 0u;
  *(v5 + 80) = 0u;
  *(v5 + 96) = 0u;
  *(v5 + 112) = 0u;
  *(v5 + 128) = 0;
  v6 = WebKit::LibWebRTCResolver::LibWebRTCResolver(v5);
  *a3 = v6;
  v9 = *(v6 + 3);
  return WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::LibWebRTCResolverIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::LibWebRTCResolver,WTF::RawPtrTraits<WebKit::LibWebRTCResolver>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::LibWebRTCResolverIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::LibWebRTCResolverIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::LibWebRTCResolver,WTF::RawPtrTraits<WebKit::LibWebRTCResolver>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WebKit::LibWebRTCResolver&>(this + 2, &v9, v5, &v8);
}

uint64_t *WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::LibWebRTCResolverIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::LibWebRTCResolver,WTF::RawPtrTraits<WebKit::LibWebRTCResolver>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::LibWebRTCResolverIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::LibWebRTCResolverIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::LibWebRTCResolver,WTF::RawPtrTraits<WebKit::LibWebRTCResolver>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WebKit::LibWebRTCResolver&>@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a2;
  if (*a2 == -1)
  {
    goto LABEL_31;
  }

  if (!v5)
  {
    __break(0xC471u);
    JUMPOUT(0x19E3325C8);
  }

  v8 = result;
  v9 = *result;
  if (!*result)
  {
    result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::LibWebRTCResolverIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::LibWebRTCResolverIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::LibWebRTCResolver,WTF::RawPtrTraits<WebKit::LibWebRTCResolver>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::LibWebRTCResolverIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::LibWebRTCResolver,WTF::RawPtrTraits<WebKit::LibWebRTCResolver>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::LibWebRTCResolverIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::LibWebRTCResolverIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::LibWebRTCResolver,WTF::RawPtrTraits<WebKit::LibWebRTCResolver>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::LibWebRTCResolverIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::LibWebRTCResolverIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::LibWebRTCResolver,WTF::RawPtrTraits<WebKit::LibWebRTCResolver>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::LibWebRTCResolverIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(result, 0);
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
  if (!*v15)
  {
LABEL_13:
    v19 = v15[1];
    *v15 = v5;
    ++*(a3 + 16);
    v15[1] = a3;
    if (!v19)
    {
      goto LABEL_16;
    }

    v20 = *(v19 + 16);
    if (v20)
    {
      *(v19 + 16) = v20 - 1;
LABEL_16:
      v21 = *v8;
      if (*v8)
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
LABEL_22:
          result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::LibWebRTCResolverIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::LibWebRTCResolverIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::LibWebRTCResolver,WTF::RawPtrTraits<WebKit::LibWebRTCResolver>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::LibWebRTCResolverIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::LibWebRTCResolver,WTF::RawPtrTraits<WebKit::LibWebRTCResolver>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::LibWebRTCResolverIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::LibWebRTCResolverIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::LibWebRTCResolver,WTF::RawPtrTraits<WebKit::LibWebRTCResolver>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::LibWebRTCResolverIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::LibWebRTCResolverIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::LibWebRTCResolver,WTF::RawPtrTraits<WebKit::LibWebRTCResolver>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::LibWebRTCResolverIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(v8, v15);
          v15 = result;
          v21 = *v8;
          if (*v8)
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
        goto LABEL_22;
      }

      v24 = v21 + 16 * v26;
      v23 = 1;
      goto LABEL_26;
    }

LABEL_31:
    __break(0xC471u);
    JUMPOUT(0x19E3325A8);
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
        --*(*v8 - 16);
        v5 = *a2;
        v15 = v17;
      }

      goto LABEL_13;
    }
  }

  v23 = 0;
  v24 = v9 + 16 * *(v9 - 4);
LABEL_26:
  *a4 = v15;
  *(a4 + 8) = v24;
  *(a4 + 16) = v23;
  return result;
}

uint64_t WebKit::RTCDataChannelRemoteManager::singleton(WebKit::RTCDataChannelRemoteManager *this)
{
  {
    operator new();
  }

  return WebKit::RTCDataChannelRemoteManager::singleton(void)::sharedManager;
}

WebKit::RTCDataChannelRemoteManager *WebKit::RTCDataChannelRemoteManager::RTCDataChannelRemoteManager(WebKit::RTCDataChannelRemoteManager *this)
{
  *this = &unk_1F10EBDB0;
  *(this + 1) = 0;
  WTF::WorkQueue::create();
  {
    v3 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v8 = WebKit::WebProcess::operator new(0x370, v2);
    v3 = WebKit::WebProcess::WebProcess(v8);
    WebKit::WebProcess::singleton(void)::process = v3;
  }

  v4 = *(WebKit::WebProcess::ensureNetworkProcessConnection(v3) + 24);
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
      goto LABEL_8;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v4);
LABEL_8:
  *(this + 3) = v4;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  return this;
}

uint64_t WebKit::RTCDataChannelRemoteManager::connectToRemoteSource(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17[0] = a4;
  v17[1] = a5;
  if (WebCore::Process::identifier(a1) != a3)
  {
    return 0;
  }

  WebCore::RTCDataChannel::handlerFromIdentifier();
  v6 = v16;
  if (!v16)
  {
    return 0;
  }

  v16 = 0;
  v13 = v6;
  v7 = WebKit::RTCDataChannelRemoteManager::remoteSourceConnection(a1);
  WTF::makeUniqueRefWithoutFastMallocCheck<WebCore::RTCDataChannelRemoteSource,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>> &,WTF::UniqueRef<WebCore::RTCDataChannelHandler>,WebCore::RTCDataChannelRemoteSourceConnection &>(&v13, v7, &v14);
  WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::UniqueRef<WebCore::RTCDataChannelRemoteSource>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::UniqueRef<WebCore::RTCDataChannelRemoteSource>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::UniqueRef<WebCore::RTCDataChannelRemoteSource>>(a1 + 6, v17, &v14, v15);
  v8 = v14;
  v14 = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = v13;
  v13 = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = v15[16];
  v11 = v16;
  v16 = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  return v10;
}

uint64_t *WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::UniqueRef<WebCore::RTCDataChannelRemoteSource>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::UniqueRef<WebCore::RTCDataChannelRemoteSource>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::UniqueRef<WebCore::RTCDataChannelRemoteSource>>@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a2;
  if (*a2 == -1 || !v5)
  {
    __break(0xC471u);
    JUMPOUT(0x19E332A60);
  }

  v8 = result;
  v9 = *result;
  if (!*result)
  {
    result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::UniqueRef<WebCore::RTCDataChannelRemoteSource>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::UniqueRef<WebCore::RTCDataChannelRemoteSource>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::UniqueRef<WebCore::RTCDataChannelRemoteSource>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::UniqueRef<WebCore::RTCDataChannelRemoteSource>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(result, 0);
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
        v22 = 0;
        v23 = v9 + 16 * *(v9 - 4);
        goto LABEL_25;
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
  v19 = *a3;
  *a3 = 0;
  result = v15[1];
  v15[1] = v19;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  v20 = *v8;
  if (*v8)
  {
    v21 = *(v20 - 12) + 1;
  }

  else
  {
    v21 = 1;
  }

  *(v20 - 12) = v21;
  v24 = (*(v20 - 16) + v21);
  v25 = *(v20 - 4);
  if (v25 > 0x400)
  {
    if (v25 <= 2 * v24)
    {
LABEL_21:
      result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::UniqueRef<WebCore::RTCDataChannelRemoteSource>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::UniqueRef<WebCore::RTCDataChannelRemoteSource>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::UniqueRef<WebCore::RTCDataChannelRemoteSource>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::UniqueRef<WebCore::RTCDataChannelRemoteSource>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(v8, v15);
      v15 = result;
      v20 = *v8;
      if (*v8)
      {
        v25 = *(v20 - 4);
      }

      else
      {
        v25 = 0;
      }
    }
  }

  else if (3 * v25 <= 4 * v24)
  {
    goto LABEL_21;
  }

  v23 = v20 + 16 * v25;
  v22 = 1;
LABEL_25:
  *a4 = v15;
  *(a4 + 8) = v23;
  *(a4 + 16) = v22;
  return result;
}

WebKit::RTCDataChannelRemoteManager::RemoteSourceConnection *WebKit::RTCDataChannelRemoteManager::remoteSourceConnection(WebKit::RTCDataChannelRemoteManager *this)
{
  result = *(this + 5);
  if (!result)
  {
    v3 = WTF::fastMalloc(0x18);
    result = WebKit::RTCDataChannelRemoteManager::RemoteSourceConnection::RemoteSourceConnection(v3, v4);
    v5 = *(this + 5);
    *(this + 5) = result;
    if (v5)
    {
      WTF::ThreadSafeRefCounted<WebCore::RTCDataChannelRemoteSourceConnection,(WTF::DestructionThread)1>::deref((v5 + 8));
      return *(this + 5);
    }
  }

  return result;
}

uint64_t WebKit::RTCDataChannelRemoteManager::remoteHandlerConnection(WebKit::RTCDataChannelRemoteManager *this)
{
  result = *(this + 4);
  if (!result)
  {
    v3 = *(this + 2);
    (*(*v3 + 32))(v3);
    v7 = v3;
    v4 = WTF::fastMalloc(0x20);
    v5 = WebKit::RTCDataChannelRemoteManager::RemoteHandlerConnection::RemoteHandlerConnection(v4, &v7);
    v6 = *(this + 4);
    *(this + 4) = v5;
    if (v6)
    {
      WTF::ThreadSafeRefCounted<WebCore::RTCDataChannelRemoteHandlerConnection,(WTF::DestructionThread)1>::deref((v6 + 8));
    }

    if (v7)
    {
      (*(*v7 + 40))(v7);
    }

    return *(this + 4);
  }

  return result;
}

uint64_t WebKit::RTCDataChannelRemoteManager::postTaskToHandler(WebCore::Process *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  result = WebCore::Process::identifier(a1);
  if (result != a3)
  {
    return result;
  }

  v9 = *(a1 + 7);
  if (!v9)
  {
    return result;
  }

  if (a2 == -1)
  {
    goto LABEL_20;
  }

  if (!a2)
  {
    __break(0xC471u);
    JUMPOUT(0x19E332D6CLL);
  }

  v10 = *(v9 - 8);
  v11 = (a2 + ~(a2 << 32)) ^ ((a2 + ~(a2 << 32)) >> 22);
  v12 = 9 * ((v11 + ~(v11 << 13)) ^ ((v11 + ~(v11 << 13)) >> 8));
  v13 = (v12 ^ (v12 >> 15)) + ~((v12 ^ (v12 >> 15)) << 27);
  v14 = v10 & ((v13 >> 31) ^ v13);
  v15 = *(v9 + (v14 << 6));
  if (v15 != a2)
  {
    v16 = 1;
    while (v15)
    {
      v14 = (v14 + v16) & v10;
      v15 = *(v9 + (v14 << 6));
      ++v16;
      if (v15 == a2)
      {
        goto LABEL_11;
      }
    }

    v14 = *(v9 - 4);
  }

LABEL_11:
  if (v14 != *(v9 - 4))
  {
    v17 = v9 + (v14 << 6);
    if (*(v17 + 32) != 0)
    {
      v18 = *(v17 + 16);
      if (v18)
      {
        atomic_fetch_add(v18, 1u);
      }

      v19 = *a4;
      *a4 = 0;
      v20 = WTF::fastMalloc(0x18);
      *v20 = &unk_1F112DD90;
      v20[1] = v18;
      v20[2] = v19;
      v21 = v20;
      WebCore::ScriptExecutionContext::postTaskTo();
      result = v21;
      if (v21)
      {
        return (*(*v21 + 8))(v21);
      }

      return result;
    }

LABEL_20:
    __break(0xC471u);
    JUMPOUT(0x19E332D4CLL);
  }

  return result;
}

uint64_t WebKit::RTCDataChannelRemoteManager::sourceFromIdentifier(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5[0] = a2;
  v5[1] = a3;
  if (WebCore::Process::identifier(a1) == a3)
  {
    return WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::UniqueRef<WebCore::RTCDataChannelRemoteSource>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::UniqueRef<WebCore::RTCDataChannelRemoteSource>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::UniqueRef<WebCore::RTCDataChannelRemoteSource>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::UniqueRef<WebCore::RTCDataChannelRemoteSource>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1 + 6, v5);
  }

  else
  {
    return 0;
  }
}

WTF *WebKit::RTCDataChannelRemoteManager::sendData(uint64_t *a1, uint64_t a2, uint64_t a3, int a4)
{
  result = WebKit::RTCDataChannelRemoteManager::sourceFromIdentifier(a1, a2, a3);
  if (result)
  {
    v6 = result;
    if (a4)
    {
      v7 = *(**(result + 4) + 32);

      return v7();
    }

    else
    {
      WTF::CString::CString();
      (*(**(v6 + 4) + 24))(*(v6 + 4), &v9);
      result = v9;
      v9 = 0;
      if (result)
      {
        if (*result == 1)
        {
          return WTF::fastFree(result, v8);
        }

        else
        {
          --*result;
        }
      }
    }
  }

  return result;
}

uint64_t WebKit::RTCDataChannelRemoteManager::close(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = WebKit::RTCDataChannelRemoteManager::sourceFromIdentifier(a1, a2, a3);
  if (result)
  {
    v4 = *(**(result + 32) + 40);

    return v4();
  }

  return result;
}

uint64_t WebKit::RTCDataChannelRemoteManager::changeReadyState(WebCore::Process *a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = WTF::fastMalloc(0x10);
  *v8 = &unk_1F112DDB8;
  *(v8 + 8) = a4;
  v11 = v8;
  WebKit::RTCDataChannelRemoteManager::postTaskToHandler(a1, a2, a3, &v11);
  result = v11;
  if (v11)
  {
    v10 = *(*v11 + 8);

    return v10();
  }

  return result;
}

WTF::StringImpl *WebKit::RTCDataChannelRemoteManager::receiveData(WTF::StringImpl *result, uint64_t a2, uint64_t a3, int a4, uint64_t a5, WTF *this)
{
  v6 = this;
  v8 = a4;
  v11 = result;
  v20 = 0;
  if (a4)
  {
    if (this)
    {
      if (this >> 32)
      {
        __break(0xC471u);
        return result;
      }

      v12 = WTF::fastMalloc(this);
      v13 = v12;
      v14 = 0;
      do
      {
        *(v14 + v12) = *(v14 + a5);
        v14 = (v14 + 1);
      }

      while (v6 != v14);
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    WTF::String::fromUTF8();
    v13 = 0;
    LODWORD(v6) = 0;
  }

  WTF::String::isolatedCopy();
  LODWORD(v18) = v6;
  HIDWORD(v18) = v6;
  v15 = WTF::fastMalloc(0x28);
  *v15 = &unk_1F112DDE0;
  *(v15 + 8) = v8;
  *(v15 + 16) = v17;
  *(v15 + 24) = v13;
  v19 = v15;
  *(v15 + 32) = v18;
  WebKit::RTCDataChannelRemoteManager::postTaskToHandler(v11, a2, a3, &v19);
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  result = v20;
  v20 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v16);
    }
  }

  return result;
}

uint64_t WebKit::RTCDataChannelRemoteManager::detectError(WebCore::Process *a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v9 = *a5;
  *a5 = 0;
  v10 = WTF::fastMalloc(0x18);
  *v10 = &unk_1F112DE08;
  *(v10 + 8) = a4;
  *(v10 + 16) = v9;
  v13 = v10;
  WebKit::RTCDataChannelRemoteManager::postTaskToHandler(a1, a2, a3, &v13);
  result = v13;
  if (v13)
  {
    v12 = *(*v13 + 8);

    return v12();
  }

  return result;
}

uint64_t WebKit::RTCDataChannelRemoteManager::bufferedAmountIsDecreasing(WebCore::Process *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = WTF::fastMalloc(0x10);
  *v8 = &unk_1F112DE30;
  v8[1] = a4;
  v11 = v8;
  WebKit::RTCDataChannelRemoteManager::postTaskToHandler(a1, a2, a3, &v11);
  result = v11;
  if (v11)
  {
    v10 = *(*v11 + 8);

    return v10();
  }

  return result;
}

uint64_t WebKit::RTCDataChannelRemoteManager::RemoteHandlerConnection::RemoteHandlerConnection(uint64_t a1, uint64_t *a2)
{
  *(a1 + 8) = 1;
  *a1 = &unk_1F112DBA8;
  {
    v4 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v10 = WebKit::WebProcess::operator new(0x370, a2);
    v4 = WebKit::WebProcess::WebProcess(v10);
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
  *(a1 + 16) = v5;
  v8 = *a2;
  *a2 = 0;
  *(a1 + 24) = v8;
  return a1;
}

uint64_t WebKit::RTCDataChannelRemoteManager::RemoteHandlerConnection::connectToSource(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v38 = *MEMORY[0x1E69E9840];
  v14 = *(a1 + 24);
  if (!*(a2 + 8))
  {
    v16 = WTF::fastCompactMalloc(0x10);
    *v16 = 1;
    *(v16 + 8) = a2;
    v17 = *(a2 + 8);
    *(a2 + 8) = v16;
    if (v17)
    {
      if (atomic_fetch_add(v17, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v17);
        WTF::fastFree(v17, v15);
      }
    }
  }

  v18 = *(a2 + 8);
  atomic_fetch_add(v18, 1u);
  v19 = a3[1];
  v35 = *a3;
  v36 = v19;
  LOBYTE(v37) = *(a3 + 32);
  v20 = WTF::fastMalloc(0x60);
  *v20 = &unk_1F112DE58;
  *(v20 + 16) = v18;
  *(v20 + 32) = v35;
  *(v20 + 48) = v36;
  *(v20 + 64) = v37;
  *(v20 + 80) = a4;
  *(v20 + 88) = a5;
  v33 = v20;
  (*(*v14 + 48))(v14, &v33);
  v21 = v33;
  v33 = 0;
  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

  v22 = *(a1 + 16);
  v23 = WTF::fastMalloc(0x18);
  *v23 = &unk_1F112DE80;
  v23[1] = a4;
  v23[2] = a5;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v24 = v23;
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v27 = IPC::Encoder::operator new(0x238, v26);
    *v27 = 435;
    *(v27 + 68) = 0;
    *(v27 + 70) = 0;
    *(v27 + 69) = 0;
    *(v27 + 2) = 0;
    *(v27 + 3) = 0;
    *(v27 + 1) = 0;
    IPC::Encoder::encodeHeader(v27);
    v33 = v27;
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v27, a4);
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v27, a5);
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v27, a6);
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v27, a7);
    v34 = v24;
    *&v35 = IdentifierInternal;
    IPC::Connection::sendMessageWithAsyncReply(v22, &v33, &v34, 0, 0);
    v29 = v34;
    v34 = 0;
    if (v29)
    {
      (*(*v29 + 8))(v29);
    }

    result = v33;
    v33 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v28);
      return bmalloc::api::tzoneFree(v31, v32);
    }
  }

  return result;
}

IPC::Encoder *WebKit::RTCDataChannelRemoteManager::RemoteHandlerConnection::sendData(uint64_t a1, void *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v15 = a2;
  v16 = a3;
  v14[0] = a5;
  v14[1] = a6;
  v6 = *(a1 + 16);
  v12[0] = a4;
  v13 = v14;
  v7 = IPC::Encoder::operator new(0x238, a2);
  *v7 = 918;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = 0;
  IPC::Encoder::encodeHeader(v7);
  v17 = v7;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v7, v15);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v7, v16);
  IPC::Encoder::operator<<<BOOL &>(v7, v12);
  IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(v7, *v13, v13[1]);
  IPC::Connection::sendMessageImpl(v6, &v17, 0, 0);
  result = v17;
  v17 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v8);
    return bmalloc::api::tzoneFree(v10, v11);
  }

  return result;
}

IPC::Encoder *WebKit::RTCDataChannelRemoteManager::RemoteHandlerConnection::close(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 16);
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 915;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = 0;
  IPC::Encoder::encodeHeader(v6);
  v11 = v6;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v6, a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v6, a3);
  IPC::Connection::sendMessageImpl(v5, &v11, 0, 0);
  result = v11;
  v11 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v7);
    return bmalloc::api::tzoneFree(v9, v10);
  }

  return result;
}

WebKit::RTCDataChannelRemoteManager::RemoteSourceConnection *WebKit::RTCDataChannelRemoteManager::RemoteSourceConnection::RemoteSourceConnection(WebKit::RTCDataChannelRemoteManager::RemoteSourceConnection *this, void *a2)
{
  *(this + 2) = 1;
  *this = &unk_1F112DBE0;
  {
    v3 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v8 = WebKit::WebProcess::operator new(0x370, a2);
    v3 = WebKit::WebProcess::WebProcess(v8);
    WebKit::WebProcess::singleton(void)::process = v3;
  }

  v4 = *(WebKit::WebProcess::ensureNetworkProcessConnection(v3) + 24);
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
      goto LABEL_8;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v4);
LABEL_8:
  *(this + 2) = v4;
  return this;
}

IPC::Encoder *WebKit::RTCDataChannelRemoteManager::RemoteSourceConnection::didChangeReadyState(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v7 = *(a1 + 16);
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 914;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = 0;
  IPC::Encoder::encodeHeader(v8);
  v13 = v8;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v8, a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v8, a3);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v8, a4);
  IPC::Connection::sendMessageImpl(v7, &v13, 0, 0);
  result = v13;
  v13 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v9);
    return bmalloc::api::tzoneFree(v11, v12);
  }

  return result;
}

WTF *WebKit::RTCDataChannelRemoteManager::RemoteSourceConnection::didReceiveStringData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14[0] = a2;
  v14[1] = a3;
  WTF::String::utf8();
  v4 = *(a1 + 16);
  v5 = v13;
  if (v13)
  {
    v6 = v13 + 16;
    v5 = *(v13 + 1);
  }

  else
  {
    v6 = 0;
  }

  v9[0] = v6;
  v9[1] = v5;
  v10 = v14;
  v11 = 0;
  v12 = v9;
  IPC::Connection::send<Messages::RTCDataChannelRemoteManagerProxy::ReceiveData>(v4, &v10);
  result = v13;
  v13 = 0;
  if (result)
  {
    if (*result == 1)
    {
      return WTF::fastFree(result, v7);
    }

    else
    {
      --*result;
    }
  }

  return result;
}

IPC::Encoder *IPC::Connection::send<Messages::RTCDataChannelRemoteManagerProxy::ReceiveData>(uint64_t *a1, char *a2)
{
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 917;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = 0;
  IPC::Encoder::encodeHeader(v4);
  v10 = v4;
  v5 = *a2;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v4, **a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v4, v5[1]);
  IPC::Encoder::operator<<<BOOL &>(v4, a2 + 8);
  IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(v4, **(a2 + 2), *(*(a2 + 2) + 8));
  IPC::Connection::sendMessageImpl(a1, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v6);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

IPC::Encoder *WebKit::RTCDataChannelRemoteManager::RemoteSourceConnection::didReceiveRawData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11[0] = a2;
  v11[1] = a3;
  v10[0] = a4;
  v10[1] = a5;
  v5 = *(a1 + 16);
  v7 = v11;
  v8 = 1;
  v9 = v10;
  return IPC::Connection::send<Messages::RTCDataChannelRemoteManagerProxy::ReceiveData>(v5, &v7);
}

IPC::Encoder *WebKit::RTCDataChannelRemoteManager::RemoteSourceConnection::didDetectError(uint64_t a1, void *a2, uint64_t a3, char a4, uint64_t *a5)
{
  v9 = *(a1 + 16);
  v10 = IPC::Encoder::operator new(0x238, a2);
  *v10 = 916;
  *(v10 + 68) = 0;
  *(v10 + 70) = 0;
  *(v10 + 69) = 0;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 1) = 0;
  IPC::Encoder::encodeHeader(v10);
  v15 = v10;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v10, a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v10, a3);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v10, a4);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v10, a5);
  IPC::Connection::sendMessageImpl(v9, &v15, 0, 0);
  result = v15;
  v15 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v11);
    return bmalloc::api::tzoneFree(v13, v14);
  }

  return result;
}

IPC::Encoder *WebKit::RTCDataChannelRemoteManager::RemoteSourceConnection::bufferedAmountIsDecreasing(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 16);
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 913;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = 0;
  IPC::Encoder::encodeHeader(v8);
  v13 = v8;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v8, a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v8, a3);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v8, a4);
  IPC::Connection::sendMessageImpl(v7, &v13, 0, 0);
  result = v13;
  v13 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v9);
    return bmalloc::api::tzoneFree(v11, v12);
  }

  return result;
}

WebKit::WebMDNSRegister *WebKit::WebMDNSRegister::WebMDNSRegister(WebKit::WebMDNSRegister *this, WebKit::LibWebRTCNetwork *a2)
{
  *this = 0;
  *(this + 1) = 0;
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2 + 4, a2 + 8);
  v4 = *(a2 + 2);
  atomic_fetch_add(v4, 1u);
  *(this + 2) = v4;
  return this;
}

uint64_t WebKit::WebMDNSRegister::ref(uint64_t this)
{
  v1 = *(*(this + 16) + 8);
  if (!v1 || !*(v1 + 16))
  {
    __break(0xC471u);
    JUMPOUT(0x19E333DB0);
  }

  return this;
}

uint64_t WebKit::WebMDNSRegister::finishedRegisteringMDNSName(uint64_t a1, WTF::UUIDHash *a2, WTF::StringImpl **a3, atomic_uint **a4, unsigned __int16 a5, uint64_t *a6)
{
  if ((a5 & 0x100) != 0)
  {
    goto LABEL_6;
  }

  v11 = WTF::HashTable<WebCore::ProcessQualified<WTF::UUID>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashMap<WebCore::ProcessQualified<WTF::UUID>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashTable<WebCore::ProcessQualified<WTF::UUID>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashMap<WebCore::ProcessQualified<WTF::UUID>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>>,(WTF::ShouldValidateKey)1,WebCore::ProcessQualified<WTF::UUID>>((a1 + 8), a2);
  v12 = *(a1 + 8);
  if (v12)
  {
    v12 += 6 * *(v12 - 1);
  }

  if (v12 != v11)
  {
    WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::String&>(v11 + 4, a3, a4, v17);
LABEL_6:
    v13 = *a6;
    *a6 = 0;
    (*(*v13 + 16))(v13, a4, a5);
    return (*(*v13 + 8))(v13);
  }

  v15 = *a6;
  *a6 = 0;
  (*(*v15 + 16))(v15, a4, 258);
  v16 = *(*v15 + 8);

  return v16(v15);
}

atomic_ullong *WebKit::WebMDNSRegister::unregisterMDNSNames(uint64_t a1, WTF::UUIDHash *a2)
{
  v4 = WTF::HashTable<WebCore::ProcessQualified<WTF::UUID>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashMap<WebCore::ProcessQualified<WTF::UUID>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashTable<WebCore::ProcessQualified<WTF::UUID>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashMap<WebCore::ProcessQualified<WTF::UUID>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>>,(WTF::ShouldValidateKey)1,WebCore::ProcessQualified<WTF::UUID>>((a1 + 8), a2);
  WTF::HashMap<WebCore::ProcessQualified<WTF::UUID>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::take((a1 + 8), v4, &v14);
  result = v14;
  if (v14)
  {
    v7 = *(v14 - 3);
    result = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v14, v5);
    if (v7)
    {
      {
        v9 = WebKit::WebProcess::singleton(void)::process;
      }

      else
      {
        v13 = WebKit::WebProcess::operator new(0x370, v8);
        v9 = WebKit::WebProcess::WebProcess(v13);
        WebKit::WebProcess::singleton(void)::process = v9;
      }

      v10 = *(WebKit::WebProcess::ensureNetworkProcessConnection(v9) + 24);
      while (1)
      {
        v11 = *v10;
        if ((*v10 & 1) == 0)
        {
          break;
        }

        v12 = *v10;
        atomic_compare_exchange_strong_explicit(v10, &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v12 == v11)
        {
          goto LABEL_11;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v10);
LABEL_11:
      v14 = a2;
      IPC::Connection::send<Messages::NetworkMDNSRegister::UnregisterMDNSNames>(v10, &v14, 0, 0, 0);
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v10);
    }
  }

  return result;
}

uint64_t IPC::Connection::send<Messages::NetworkMDNSRegister::UnregisterMDNSNames>(uint64_t *a1, uint64_t **a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = IPC::Encoder::operator new(0x238, a2);
  *v10 = 507;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 1) = a3;
  *(v10 + 68) = 0;
  *(v10 + 70) = 0;
  *(v10 + 69) = 0;
  IPC::Encoder::encodeHeader(v10);
  v17 = v10;
  IPC::ArgumentCoder<WebCore::ProcessQualified<WTF::UUID>,void>::encode(v10, *a2);
  v12 = IPC::Connection::sendMessageImpl(a1, &v17, a4, a5);
  v13 = v17;
  v17 = 0;
  if (v13)
  {
    IPC::Encoder::~Encoder(v13, v11);
    bmalloc::api::tzoneFree(v15, v16);
  }

  return v12;
}

IPC::Encoder *WebKit::WebMDNSRegister::registerMDNSName(uint64_t a1, WTF::UUIDHash *this, uint64_t *a3, uint64_t *a4)
{
  v61 = *MEMORY[0x1E69E9840];
  v4 = *(this + 2);
  if (*this == 0 && v4 == 0)
  {
    goto LABEL_73;
  }

  if (v4 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E334600);
  }

  v10 = *(a1 + 8);
  if (v10 || (WTF::HashTable<WebCore::ProcessQualified<WTF::UUID>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashMap<WebCore::ProcessQualified<WTF::UUID>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::FastMalloc>::expand((a1 + 8), 0), (v10 = *(a1 + 8)) != 0))
  {
    v11 = *(v10 - 8);
  }

  else
  {
    v11 = 0;
  }

  v13 = WTF::UUIDHash::hash(this, this) & v11;
  v14 = (v10 + 48 * v13);
  v16 = *v14;
  v15 = v14[1];
  v17 = v14[2];
  if (*v14 == 0 && v17 == 0)
  {
LABEL_30:
    v24 = v14[4];
    v25 = *(this + 2);
    *v14 = *this;
    v14[2] = v25;
    v14[4] = 0;
    if (v24)
    {
      WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v24, v12);
    }

    v12 = v14;
LABEL_33:
    v26 = *(a1 + 8);
    if (v26)
    {
      v27 = *(v26 - 12) + 1;
    }

    else
    {
      v27 = 1;
    }

    *(v26 - 12) = v27;
    v28 = (*(v26 - 16) + v27);
    v29 = *(v26 - 4);
    if (v29 > 0x400)
    {
      if (v29 > 2 * v28)
      {
        goto LABEL_38;
      }
    }

    else if (3 * v29 > 4 * v28)
    {
LABEL_38:
      v14 = v12;
      goto LABEL_42;
    }

    v14 = WTF::HashTable<WebCore::ProcessQualified<WTF::UUID>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashMap<WebCore::ProcessQualified<WTF::UUID>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::FastMalloc>::expand((a1 + 8), v12);
    goto LABEL_42;
  }

  v12 = 0;
  v19 = 1;
  while (1)
  {
    v20 = v15 == *(this + 1) && v16 == *this;
    if (v20 && v17 == *(this + 2))
    {
      break;
    }

    if (v17 == -1)
    {
      v12 = v14;
    }

    v13 = (v13 + v19) & v11;
    v14 = (v10 + 48 * v13);
    v16 = *v14;
    v15 = v14[1];
    v17 = v14[2];
    ++v19;
    if (*v14 == 0 && v17 == 0)
    {
      if (!v12)
      {
        goto LABEL_30;
      }

      *v12 = 0;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *(v12 + 4) = 0;
      --*(*(a1 + 8) - 16);
      v23 = *this;
      *(v12 + 2) = *(this + 2);
      *v12 = v23;
      *(v12 + 4) = 0;
      goto LABEL_33;
    }
  }

LABEL_42:
  v30 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,(WTF::ShouldValidateKey)1,WTF::String>(v14 + 4, a3);
  v32 = v14[4];
  if (v32)
  {
    v32 = (v32 + 16 * *(v32 - 1));
  }

  if (v32 != v30)
  {
    v33 = *a4;
    *a4 = 0;
    (*(*v33 + 16))(v33, v30 + 8, 0);
    v34 = *(*v33 + 8);

    return v34(v33);
  }

  {
    v36 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v55 = WebKit::WebProcess::operator new(0x370, v31);
    v36 = WebKit::WebProcess::WebProcess(v55);
    WebKit::WebProcess::singleton(void)::process = v36;
  }

  v37 = *(WebKit::WebProcess::ensureNetworkProcessConnection(v36) + 24);
  if (!*a1)
  {
    v39 = WTF::fastCompactMalloc(0x10);
    *v39 = 1;
    *(v39 + 8) = a1;
    v40 = *a1;
    *a1 = v39;
    if (v40)
    {
      if (atomic_fetch_add(v40, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v40);
        WTF::fastFree(v40, v38);
      }
    }
  }

  v41 = *a1;
  atomic_fetch_add(*a1, 1u);
  v42 = *a4;
  *a4 = 0;
  v57 = *this;
  *&v58 = *(this + 2);
  v43 = *a3;
  if (*a3)
  {
    atomic_fetch_add_explicit(v43, 2u, memory_order_relaxed);
    *v59 = v57;
    v60 = v58;
    atomic_fetch_add_explicit(v43, 2u, memory_order_relaxed);
  }

  else
  {
    *v59 = v57;
    v60 = v58;
  }

  v44 = WTF::fastMalloc(0x50);
  v46 = v44;
  *v44 = &unk_1F112DED0;
  *(v44 + 16) = v41;
  *(v44 + 24) = v42;
  v47 = v60;
  *(v44 + 32) = *v59;
  *(v44 + 48) = v47;
  if (v43)
  {
    atomic_fetch_add_explicit(v43, 2u, memory_order_relaxed);
    *(v44 + 64) = v43;
    if (atomic_fetch_add_explicit(v43, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v43, v45);
    }
  }

  else
  {
    *(v44 + 64) = 0;
  }

  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
LABEL_73:
    __break(0xC471u);
    JUMPOUT(0x19E3345E0);
  }

  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  v50 = IPC::Encoder::operator new(0x238, v49);
  *v50 = 506;
  *(v50 + 68) = 0;
  *(v50 + 70) = 0;
  *(v50 + 69) = 0;
  *(v50 + 2) = 0;
  *(v50 + 3) = 0;
  *(v50 + 1) = 0;
  IPC::Encoder::encodeHeader(v50);
  v59[0] = v50;
  IPC::ArgumentCoder<WebCore::ProcessQualified<WTF::UUID>,void>::encode(v50, this);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v50, a3);
  v56[0] = v46;
  v56[1] = IdentifierInternal;
  IPC::Connection::sendMessageWithAsyncReply(v37, v59, v56, 0, 0);
  v52 = v56[0];
  v56[0] = 0;
  if (v52)
  {
    (*(*v52 + 8))(v52);
  }

  result = v59[0];
  v59[0] = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v51);
    result = bmalloc::api::tzoneFree(v53, v54);
    if (!v43)
    {
      return result;
    }
  }

  else if (!v43)
  {
    return result;
  }

  if (atomic_fetch_add_explicit(v43, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    return WTF::StringImpl::destroy(v43, v51);
  }

  return result;
}

WebKit::WebRTCMonitor *WebKit::WebRTCMonitor::WebRTCMonitor(WebKit::WebRTCMonitor *this, WebKit::LibWebRTCNetwork *a2)
{
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2 + 4, a2 + 8);
  v4 = *(a2 + 2);
  atomic_fetch_add(v4, 1u);
  *this = v4;
  *(this + 2) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 72) = 0;
  *(this + 92) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 32) = 0;
  return this;
}

uint64_t WebKit::WebRTCMonitor::ref(uint64_t this)
{
  v1 = *(*this + 8);
  if (!v1 || !*(v1 + 16))
  {
    __break(0xC471u);
    JUMPOUT(0x19E3346B4);
  }

  return this;
}

IPC::Encoder *WebKit::WebRTCMonitor::startUpdating(WebKit::WebRTCMonitor *this)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED6416F0;
  if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 134217984;
    *&v13[4] = this;
    _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "%p - WebRTCMonitor::StartUpdating - Asking network process to start updating", v13, 0xCu);
  }

  {
    v4 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v12 = WebKit::WebProcess::operator new(0x370, v3);
    v4 = WebKit::WebProcess::WebProcess(v12);
    WebKit::WebProcess::singleton(void)::process = v4;
  }

  v5 = *(WebKit::WebProcess::ensureNetworkProcessConnection(v4) + 24);
  v7 = IPC::Encoder::operator new(0x238, v6);
  *v7 = 734;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = 0;
  IPC::Encoder::encodeHeader(v7);
  *v13 = v7;
  IPC::Connection::sendMessageImpl(v5, v13, 0, 0);
  result = *v13;
  *v13 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v8);
    result = bmalloc::api::tzoneFree(v10, v11);
  }

  ++*(this + 2);
  return result;
}

void WebKit::WebRTCMonitor::stopUpdating(WebKit::WebRTCMonitor *this)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED6416F0;
  if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 134217984;
    *&v15[4] = this;
    _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "%p - WebRTCMonitor::StopUpdating", v15, 0xCu);
  }

  v3 = *(this + 2) - 1;
  *(this + 2) = v3;
  if (!v3)
  {
    v4 = qword_1ED6416F0;
    if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 134217984;
      *&v15[4] = this;
      _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "%p - WebRTCMonitor::StopUpdating - Asking network process to stop updating", v15, 0xCu);
    }

    {
      v6 = WebKit::WebProcess::singleton(void)::process;
    }

    else
    {
      v14 = WebKit::WebProcess::operator new(0x370, v5);
      v6 = WebKit::WebProcess::WebProcess(v14);
      WebKit::WebProcess::singleton(void)::process = v6;
    }

    v7 = *(WebKit::WebProcess::ensureNetworkProcessConnection(v6) + 24);
    v9 = IPC::Encoder::operator new(0x238, v8);
    *v9 = 735;
    *(v9 + 68) = 0;
    *(v9 + 70) = 0;
    *(v9 + 69) = 0;
    *(v9 + 2) = 0;
    *(v9 + 3) = 0;
    *(v9 + 1) = 0;
    IPC::Encoder::encodeHeader(v9);
    *v15 = v9;
    IPC::Connection::sendMessageImpl(v7, v15, 0, 0);
    v11 = *v15;
    *v15 = 0;
    if (v11)
    {
      IPC::Encoder::~Encoder(v11, v10);
      bmalloc::api::tzoneFree(v12, v13);
    }
  }
}

void *WebKit::WebRTCMonitor::networksChanged(uint64_t a1, _DWORD *a2, __int128 *a3, __int128 *a4)
{
  *&v29[9] = *MEMORY[0x1E69E9840];
  v8 = qword_1ED6416F0;
  if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *v29 = a1;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "%p - WebRTCMonitor::NetworksChanged", buf, 0xCu);
  }

  *(a1 + 32) = 1;
  v10 = *(a1 + 52);
  if (v10)
  {
    v11 = *(a1 + 40);
    v12 = 96 * v10;
    do
    {
      v13 = *(v11 + 80);
      if (v13)
      {
        *(v11 + 80) = 0;
        *(v11 + 88) = 0;
        WTF::fastFree(v13, v9);
      }

      v14 = *(v11 + 16);
      if (v14)
      {
        *(v11 + 16) = 0;
        *(v11 + 24) = 0;
        WTF::fastFree(v14, v9);
      }

      v15 = *v11;
      if (*v11)
      {
        *v11 = 0;
        *(v11 + 8) = 0;
        WTF::fastFree(v15, v9);
      }

      v11 += 96;
      v12 -= 96;
    }

    while (v12);
  }

  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1 + 40, a2);
  v16 = *a3;
  *(a1 + 72) = *(a3 + 4);
  *(a1 + 56) = v16;
  v17 = *a4;
  *(a1 + 92) = *(a4 + 4);
  *(a1 + 76) = v17;
  WTF::WeakHashSet<WebKit::ApplicationStateTracker,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::begin((a1 + 16), buf);
  v18 = *(a1 + 16);
  if (v18)
  {
    v19 = *(v18 - 4);
    v20 = v18 + 8 * v19;
  }

  else
  {
    v20 = 0;
    v19 = 0;
  }

  v23 = a1 + 16;
  v24 = v20;
  v25 = v20;
  v26 = v20;
  v27 = v18 + 8 * v19;
  result = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v23);
  while (*&v29[1] != v24)
  {
    v22 = *(**&v29[1] + 8);
    (**v22)(v22);
    (*(*v22 + 32))(v22, a1 + 40, a1 + 56, a1 + 76);
    (*(*v22 + 8))(v22);
    result = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::operator++(buf);
  }

  return result;
}

void *WebKit::WebRTCMonitor::networkProcessCrashed(WebKit::WebRTCMonitor *this)
{
  v2 = this + 16;
  WTF::WeakHashSet<WebKit::ApplicationStateTracker,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::begin(this + 2, &v13);
  v3 = *(this + 2);
  if (v3)
  {
    v4 = *(v3 - 4);
    v5 = v3 + 8 * v4;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  v8 = v2;
  v9 = v5;
  v10 = v5;
  v11 = v5;
  v12 = v3 + 8 * v4;
  result = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v8);
  while (v14 != v9)
  {
    v7 = *(*v14 + 8);
    (**v7)(v7);
    (*(*v7 + 40))(v7);
    (*(*v7 + 8))(v7);
    result = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::operator++(&v13);
  }

  return result;
}

uint64_t WebKit::WebRTCResolver::create@<X0>(atomic_uint *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  if (WebKit::WebRTCResolver::s_heapRef)
  {
    result = bmalloc::api::tzoneAllocateNonCompact(WebKit::WebRTCResolver::s_heapRef, a2);
  }

  else
  {
    result = WebKit::WebRTCResolver::operatorNewSlow(0);
  }

  *result = 1;
  *(result + 8) = a1;
  atomic_fetch_add(a1, 1u);
  *(result + 16) = a2;
  *a3 = result;
  return result;
}

void WebKit::WebRTCResolver::~WebRTCResolver(WebKit::WebRTCResolver *this)
{
  v1 = *(this + 1);
  *(this + 1) = 0;
  if (v1)
  {
    if (!atomic_load(v1))
    {
LABEL_5:
      __break(0xC471u);
      JUMPOUT(0x19E334DBCLL);
    }

    atomic_fetch_add(v1, 0xFFFFFFFF);
  }

  if (*this != 1)
  {
    goto LABEL_5;
  }
}

uint64_t WebKit::WebRTCResolver::setResolvedAddress(uint64_t a1, uint64_t a2, double a3, __n128 a4)
{
  v23 = 0uLL;
  v5 = *(a2 + 12);
  if (v5)
  {
    if (v5 >> 27)
    {
      __break(0xC471u);
      goto LABEL_15;
    }

    v7 = WTF::fastMalloc((32 * v5));
    DWORD2(v23) = v5;
    *&v23 = v7;
    if (*(a2 + 12))
    {
      v8 = v7;
      v9 = 0;
      v10 = 0;
      v11 = (v7 + 12);
      do
      {
        WebKit::WebRTCNetwork::IPAddress::rtcAddress((*a2 + v9), &v24);
        *(v11 - 12) = &off_1F10EE1B0;
        *(v11 - 1) = *v25;
        *v11 = *&v25[4];
        v11 += 2;
        ++v10;
        v8 += 32;
        v9 += 20;
      }

      while (v10 < *(a2 + 12));
      HIDWORD(v23) = v10;
    }
  }

  a4.n128_u64[0] = 0;
  v21 = a4;
  v24 = *(a1 + 8);
  atomic_fetch_add(v24, 1u);
  *v25 = *(a1 + 16);
  v12 = *v25;
  v13 = v23;
  v23 = 0u;
  v14 = WTF::fastMalloc(0x28);
  *v14 = &unk_1F112DEF8;
  v15 = v24;
  v24 = 0;
  *(v14 + 8) = v15;
  *(v14 + 16) = v12;
  *&v25[8] = v21;
  *(v14 + 24) = v13;
  v22 = v14;
  WebCore::LibWebRTCProvider::callOnWebRTCNetworkThread();
  if (v22)
  {
    (*(*v22 + 8))(v22);
  }

  WTF::Vector<webrtc::IPAddress,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v25[8], v16);
  v18 = v24;
  v24 = 0;
  if (v18)
  {
    if (atomic_load(v18))
    {
      atomic_fetch_add(v18, 0xFFFFFFFF);
      return WTF::Vector<webrtc::IPAddress,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v23, v17);
    }

    __break(0xC471u);
LABEL_15:
    JUMPOUT(0x19E334FB0);
  }

  return WTF::Vector<webrtc::IPAddress,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v23, v17);
}

uint64_t WebKit::WebRTCResolver::resolvedAddressError(WebKit::WebRTCResolver *this, int a2)
{
  v3 = *(this + 1);
  atomic_fetch_add(v3, 1u);
  v4 = *(this + 2);
  v5 = WTF::fastMalloc(0x20);
  *v5 = &unk_1F112DF20;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
  *(v5 + 24) = a2;
  v7 = v5;
  WebCore::LibWebRTCProvider::callOnWebRTCNetworkThread();
  result = v7;
  if (v7)
  {
    return (*(*v7 + 8))(v7);
  }

  return result;
}

uint64_t WebKit::NotificationPermissionRequestManager::create@<X0>(WebKit::NotificationPermissionRequestManager *this@<X0>, uint64_t *a2@<X8>)
{
  result = WTF::fastMalloc(0x18);
  v6 = result;
  *result = 1;
  *(result + 8) = 0;
  if (this)
  {
    result = WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(this + 6, this + 16);
    v7 = *(this + 3);
    if (v7)
    {
      atomic_fetch_add(v7, 1u);
    }
  }

  else
  {
    v7 = 0;
  }

  *(v6 + 16) = v7;
  *a2 = v6;
  return result;
}

void WebKit::NotificationPermissionRequestManager::~NotificationPermissionRequestManager(WebKit::NotificationPermissionRequestManager *this)
{
  v9 = *(this + 1);
  *(this + 1) = 0;
  v3 = WTF::HashTable<WebCore::SecurityOriginData,WTF::KeyValuePair<WebCore::SecurityOriginData,WTF::Vector<WTF::CompletionHandler<void ()(WebCore::NotificationPermission)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::SecurityOriginData,WTF::Vector<WTF::CompletionHandler<void ()(WebCore::NotificationPermission)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashMap<WebCore::SecurityOriginData,WTF::Vector<WTF::CompletionHandler<void ()(WebCore::NotificationPermission)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WTF::Vector<WTF::CompletionHandler<void ()(WebCore::NotificationPermission)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::begin(&v9);
  v4 = v2;
  v5 = v9;
  if (v9)
  {
    v6 = (v9 + 48 * *(v9 - 1));
  }

  else
  {
    v6 = 0;
  }

  if (v6 != v3)
  {
    do
    {
      WebKit::NotificationPermissionRequestManager::callPermissionHandlersWith(v3 + 32, 1);
      do
      {
        v3 = (v3 + 48);
      }

      while (v3 != v4 && WTF::HashTable<WebCore::SecurityOriginData,WTF::KeyValuePair<WebCore::SecurityOriginData,unsigned long long>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::SecurityOriginData,unsigned long long>>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashMap<WebCore::SecurityOriginData,unsigned long long,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::isEmptyOrDeletedBucket(v3));
    }

    while (v3 != v6);
    v5 = v9;
  }

  if (v5)
  {
    WTF::HashTable<WebCore::SecurityOriginData,WTF::KeyValuePair<WebCore::SecurityOriginData,WTF::Vector<WTF::CompletionHandler<void ()(WebCore::NotificationPermission)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::SecurityOriginData,WTF::Vector<WTF::CompletionHandler<void ()(WebCore::NotificationPermission)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashMap<WebCore::SecurityOriginData,WTF::Vector<WTF::CompletionHandler<void ()(WebCore::NotificationPermission)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WTF::Vector<WTF::CompletionHandler<void ()(WebCore::NotificationPermission)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::deallocateTable(v5, v2);
  }

  v7 = *(this + 2);
  *(this + 2) = 0;
  if (v7 && atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v7);
    WTF::fastFree(v7, v2);
  }

  v8 = *(this + 1);
  if (v8)
  {
    WTF::HashTable<WebCore::SecurityOriginData,WTF::KeyValuePair<WebCore::SecurityOriginData,WTF::Vector<WTF::CompletionHandler<void ()(WebCore::NotificationPermission)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::SecurityOriginData,WTF::Vector<WTF::CompletionHandler<void ()(WebCore::NotificationPermission)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashMap<WebCore::SecurityOriginData,WTF::Vector<WTF::CompletionHandler<void ()(WebCore::NotificationPermission)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WTF::Vector<WTF::CompletionHandler<void ()(WebCore::NotificationPermission)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::deallocateTable(v8, v2);
  }

  if (*this != 1)
  {
    __break(0xC471u);
  }
}

uint64_t WebKit::NotificationPermissionRequestManager::callPermissionHandlersWith(uint64_t result, uint64_t a2)
{
  v2 = *(result + 12);
  if (v2)
  {
    v4 = *result;
    v5 = 8 * v2;
    do
    {
      v6 = *v4;
      *v4++ = 0;
      (*(*v6 + 16))(v6, a2);
      result = (*(*v6 + 8))(v6);
      v5 -= 8;
    }

    while (v5);
  }

  return result;
}

WTF::StringImpl *WebKit::NotificationPermissionRequestManager::startRequest(uint64_t a1, WebCore::SecurityOriginData *this, WTF::StringImpl *a3)
{
  v60 = *MEMORY[0x1E69E9840];
  v52 = 0;
  v53 = 0;
  isNull = WebCore::SecurityOriginData::isNull(this);
  if (isNull)
  {
    __break(0xC471u);
    goto LABEL_94;
  }

  if (*(this + 24))
  {
    if (*(this + 24) != 1)
    {
LABEL_17:
      mpark::throw_bad_variant_access(isNull);
    }
  }

  else if (*this == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E3358D0);
  }

  v7 = *(a1 + 8);
  if (v7 || (WTF::HashTable<WebCore::SecurityOriginData,WTF::KeyValuePair<WebCore::SecurityOriginData,WTF::Vector<WTF::CompletionHandler<void ()(WebCore::NotificationPermission)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::SecurityOriginData,WTF::Vector<WTF::CompletionHandler<void ()(WebCore::NotificationPermission)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashMap<WebCore::SecurityOriginData,WTF::Vector<WTF::CompletionHandler<void ()(WebCore::NotificationPermission)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WTF::Vector<WTF::CompletionHandler<void ()(WebCore::NotificationPermission)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::expand((a1 + 8), 0), (v7 = *(a1 + 8)) != 0))
  {
    v8 = *(v7 - 8);
  }

  else
  {
    v8 = 0;
  }

  LODWORD(v54) = -1640531527;
  WORD2(v54) = 0;
  BYTE6(v54) = 0;
  WTF::add<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(&v54, this);
  v9 = WTF::SuperFastHash::hash(&v54) & v8;
  v10 = v7 + 48 * v9;
  isNull = WebCore::SecurityOriginData::isNull(v10);
  if ((isNull & 1) == 0)
  {
    v11 = 0;
    v12 = 1;
    while (!*(v10 + 24))
    {
      if (*v10 != -1)
      {
        goto LABEL_11;
      }

      v11 = v10;
LABEL_14:
      v9 = (v9 + v12) & v8;
      v10 = v7 + 48 * v9;
      isNull = WebCore::SecurityOriginData::isNull(v10);
      ++v12;
      if (isNull)
      {
        if (v11)
        {
          v11[1] = 0u;
          v11[2] = 0u;
          *v11 = 0u;
          --*(*(a1 + 8) - 16);
          v10 = v11;
        }

        goto LABEL_20;
      }
    }

    if (*(v10 + 24) != 1)
    {
      goto LABEL_17;
    }

LABEL_11:
    if (WebCore::operator==())
    {
      v48 = 0;
      goto LABEL_35;
    }

    goto LABEL_14;
  }

LABEL_20:
  mpark::detail::assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>>::generic_assign<mpark::detail::copy_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1> const&>(v10, this);
  v16 = v52;
  v17 = v53;
  v52 = 0;
  v53 = 0;
  v18 = *(v10 + 44);
  v19 = *(v10 + 32);
  if (v18)
  {
    v20 = 8 * v18;
    do
    {
      v21 = *v19;
      *v19 = 0;
      if (v21)
      {
        (*(*v21 + 8))(v21);
      }

      v19 = (v19 + 8);
      v20 -= 8;
    }

    while (v20);
    v19 = *(v10 + 32);
  }

  if (v19)
  {
    *(v10 + 32) = 0;
    *(v10 + 40) = 0;
    WTF::fastFree(v19, v14);
  }

  *&v15 = 0;
  v54 = v15;
  *(v10 + 32) = v16;
  *(v10 + 40) = v17;
  WTF::Vector<WTF::CompletionHandler<void ()(WebCore::NotificationPermission)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v54, v14);
  v22 = *(a1 + 8);
  if (v22)
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
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  if (3 * v25 <= 4 * v24)
  {
LABEL_33:
    v10 = WTF::HashTable<WebCore::SecurityOriginData,WTF::KeyValuePair<WebCore::SecurityOriginData,WTF::Vector<WTF::CompletionHandler<void ()(WebCore::NotificationPermission)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::SecurityOriginData,WTF::Vector<WTF::CompletionHandler<void ()(WebCore::NotificationPermission)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashMap<WebCore::SecurityOriginData,WTF::Vector<WTF::CompletionHandler<void ()(WebCore::NotificationPermission)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WTF::Vector<WTF::CompletionHandler<void ()(WebCore::NotificationPermission)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::expand((a1 + 8), v10);
  }

LABEL_34:
  v48 = 1;
LABEL_35:
  WTF::Vector<WTF::CompletionHandler<void ()(WebCore::NotificationPermission)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v52, v13);
  v26 = *(v10 + 44);
  if (v26 == *(v10 + 40))
  {
    result = WTF::Vector<WTF::CompletionHandler<void ()(WebCore::NotificationPermission)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>((v10 + 32), v26 + 1, a3);
    v26 = *(v10 + 44);
    v28 = (*(v10 + 32) + 8 * v26);
  }

  else
  {
    v28 = (*(v10 + 32) + 8 * v26);
    result = a3;
  }

  v29 = *result;
  *result = 0;
  *v28 = v29;
  *(v10 + 44) = v26 + 1;
  if (v48)
  {
    v30 = *(a1 + 16);
    if (!v30 || (v31 = *(v30 + 8)) == 0)
    {
      __break(0xC471u);
      JUMPOUT(0x19E3358B0);
    }

    v32 = v31 + 16;
    WebCore::SecurityOriginData::toString(&v51, this);
    ++*a1;
    v33 = *(this + 24);
    if (*(this + 24))
    {
      if (v33 == 255)
      {
        v34 = 0;
      }

      else
      {
        v34 = *this;
        v48 = *(this + 1);
      }
    }

    else
    {
      v34 = *this;
      if (*this)
      {
        atomic_fetch_add_explicit(v34, 2u, memory_order_relaxed);
      }

      v48 = *(this + 1);
      if (v48)
      {
        atomic_fetch_add_explicit(v48, 2u, memory_order_relaxed);
      }

      v9 = *(this + 4);
      v33 = *(this + 24);
    }

    v35 = *a3;
    *a3 = 0;
    v36 = (*(*v32 + 56))(v32);
    v38 = IPC::Encoder::operator new(0x238, v37);
    *v38 = 2331;
    *(v38 + 2) = 0;
    *(v38 + 3) = 0;
    *(v38 + 1) = v36;
    *(v38 + 68) = 0;
    *(v38 + 70) = 0;
    *(v38 + 69) = 0;
    IPC::Encoder::encodeHeader(v38);
    v52 = v38;
    IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v38, &v51);
    *&v54 = a1;
    LOBYTE(v55) = 0;
    v58 = -1;
    if (v33)
    {
      if (v33 == 255)
      {
        goto LABEL_54;
      }

      v55 = v34;
      v56 = v48;
    }

    else
    {
      if (v34)
      {
        atomic_fetch_add_explicit(v34, 2u, memory_order_relaxed);
      }

      v55 = v34;
      if (v48)
      {
        atomic_fetch_add_explicit(v48, 2u, memory_order_relaxed);
      }

      v56 = v48;
      v57 = v9;
    }

    v58 = v33;
LABEL_54:
    v59 = v35;
    v39 = WTF::fastMalloc(0x40);
    *v39 = &unk_1F112DF48;
    *(v39 + 8) = a1;
    *(&v54 + 1) = 0;
    *(v39 + 16) = a1;
    mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment((v39 + 24), &v55);
    *(v39 + 56) = v59;
    v59 = 0;
    if (!v58)
    {
      v41 = v56;
      v56 = 0;
      if (v41 && atomic_fetch_add_explicit(v41, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v41, v40);
      }

      v42 = v55;
      v55 = 0;
      if (v42 && atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v42, v40);
      }
    }

    v58 = -1;
    v43 = *(&v54 + 1);
    *(&v54 + 1) = 0;
    if (v43)
    {
      WTF::RefCounted<WebKit::NotificationPermissionRequestManager>::deref(v43);
    }

    if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected != 1)
    {
      IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
      *&v54 = v39;
      *(&v54 + 1) = IdentifierInternal;
      (*(*v32 + 40))(v32, &v52, &v54, 0);
      v46 = v54;
      *&v54 = 0;
      if (v46)
      {
        (*(*v46 + 8))(v46);
      }

      v47 = v52;
      v52 = 0;
      if (v47)
      {
        IPC::Encoder::~Encoder(v47, v45);
        bmalloc::api::tzoneFree(v49, v50);
        if (v33)
        {
          goto LABEL_79;
        }
      }

      else if (v33)
      {
        goto LABEL_79;
      }

      if (v48 && atomic_fetch_add_explicit(v48, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v48, v45);
        if (v34)
        {
LABEL_71:
          if (atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v34, v45);
          }
        }
      }

      else if (v34)
      {
        goto LABEL_71;
      }

LABEL_79:
      result = v51;
      v51 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v45);
        }
      }

      return result;
    }

    __break(0xC471u);
LABEL_94:
    JUMPOUT(0x19E335890);
  }

  return result;
}

uint64_t WebKit::WebNotificationManager::policyForOrigin(WebKit::WebNotificationManager *this, atomic_uint **a2, WebKit::WebPage *a3)
{
  v58 = *MEMORY[0x1E69E9840];
  if (WebCore::DeprecatedGlobalSettings::builtInNotificationsEnabled(this))
  {
    {
      v8 = WebKit::WebProcess::singleton(void)::process;
    }

    else
    {
      v50 = WebKit::WebProcess::operator new(0x370, v6);
      v8 = WebKit::WebProcess::WebProcess(v50);
      WebKit::WebProcess::singleton(void)::process = v8;
    }

    v9 = *(WebKit::WebProcess::ensureNetworkProcessConnection(v8) + 24);
    while (1)
    {
      v10 = *v9;
      if ((*v9 & 1) == 0)
      {
        break;
      }

      v11 = *v9;
      atomic_compare_exchange_strong_explicit(v9, &v11, v10 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v11 == v10)
      {
        goto LABEL_21;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v9);
LABEL_21:
    WTF::URL::URL(buf, a2);
    WebCore::SecurityOriginData::fromURL(&v55, buf, v20);
    v22 = *buf;
    *buf = 0;
    if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v22, v21);
    }

    {
      v23 = WebKit::WebProcess::singleton(void)::process;
    }

    else
    {
      v51 = WebKit::WebProcess::operator new(0x370, v21);
      v23 = WebKit::WebProcess::WebProcess(v51);
      WebKit::WebProcess::singleton(void)::process = v23;
    }

    if ((*(v23 + 712) & 1) == 0)
    {
      __break(1u);
      goto LABEL_75;
    }

    IPC::Connection::createSyncMessageEncoder(0xFAF, *(v23 + 88), buf);
    IPC::ArgumentCoder<WebCore::SecurityOriginData,void>::encode(*buf, &v55);
    v24 = IPC::Connection::sendSyncMessage(v9, *&buf[8], buf, 0, &v52, INFINITY);
    if (v53)
    {
      if (v53 != 1)
      {
        mpark::throw_bad_variant_access(v24);
      }

      v25 = 0;
      v26 = v52;
      v27 = 1;
LABEL_50:
      v38 = *buf;
      *buf = 0;
      if (v38)
      {
        IPC::Encoder::~Encoder(v38, v21);
        bmalloc::api::tzoneFree(v40, v41);
        if (v27)
        {
          goto LABEL_52;
        }
      }

      else if (v27)
      {
LABEL_52:
        v39 = qword_1ED640EA0;
        if (!os_log_type_enabled(qword_1ED640EA0, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_53;
        }

        WTF::String::utf8();
        v49 = v52 ? v52 + 16 : 0;
        *buf = 136643075;
        *&buf[4] = v49;
        *&buf[12] = 1024;
        *&buf[14] = v26;
        _os_log_error_impl(&dword_19D52D000, v39, OS_LOG_TYPE_ERROR, "Could not look up notification permission for origin %{sensitive}s: %u", buf, 0x12u);
        v23 = v52;
        v52 = 0;
        if (!v23)
        {
          goto LABEL_53;
        }

        if (*v23 != 1)
        {
          --*v23;
LABEL_53:
          v36 = 1;
LABEL_58:
          if (!v57)
          {
            v42 = v56;
            v56 = 0;
            if (v42 && atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v42, v21);
            }

            v43 = v55;
            v55 = 0;
            if (v43 && atomic_fetch_add_explicit(v43, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v43, v21);
            }
          }

          WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v9);
          return v36;
        }

LABEL_75:
        WTF::fastFree(v23, v21);
        goto LABEL_53;
      }

      if (v25 < 3)
      {
        v36 = dword_19E7048A0[v25];
        if (v26)
        {
          IPC::Decoder::~Decoder(v26);
          bmalloc::api::tzoneFree(v47, v48);
        }

        goto LABEL_58;
      }

      __break(0xC471u);
LABEL_83:
      JUMPOUT(0x19E335DC4);
    }

    v26 = v52;
    v52 = 0;
    if (*(v26 + 50) == 3194)
    {
      v28 = 11;
    }

    else
    {
      v29 = IPC::Decoder::decode<std::tuple<WebCore::InspectorFrontendClientAppearance>>(v26);
      if (v29 >= 0x100u)
      {
        v27 = 0;
        v25 = v29;
        goto LABEL_47;
      }

      v28 = 14;
    }

    IPC::Decoder::~Decoder(v26);
    bmalloc::api::tzoneFree(v30, v31);
    v25 = 0;
    v27 = 1;
    v26 = v28;
LABEL_47:
    if (!v53)
    {
      v37 = v52;
      v52 = 0;
      if (v37)
      {
        IPC::Decoder::~Decoder(v37);
        bmalloc::api::tzoneFree(v45, v46);
      }
    }

    goto LABEL_50;
  }

  v12 = *a2;
  if (!*a2)
  {
    return 0;
  }

  if (!v12[1])
  {
    return 0;
  }

  v13 = *(this + 5);
  if (!v13)
  {
    return 0;
  }

  if (v12 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E335DE4);
  }

  if (!v12)
  {
    __break(0xC471u);
    goto LABEL_83;
  }

  v14 = *(v13 - 8);
  v15 = v12[4];
  v16 = v15 < 0x100 ? WTF::StringImpl::hashSlowCase(v12) : v15 >> 8;
  for (i = 0; ; v16 = ++i + v18)
  {
    v18 = v16 & v14;
    v19 = *(v13 + 16 * v18);
    if (v19 != -1)
    {
      if (!v19)
      {
        v32 = *(this + 5);
        if (!v32)
        {
          return 0;
        }

        v33 = v32 + 16 * *(v32 - 4);
        goto LABEL_76;
      }

      if (WTF::equal(v19, *a2, v7))
      {
        break;
      }
    }
  }

  v33 = v13 + 16 * v18;
  v32 = *(this + 5);
  if (!v32)
  {
    goto LABEL_38;
  }

LABEL_76:
  v32 += 16 * *(v32 - 4);
LABEL_38:
  if (v32 == v33)
  {
    return 0;
  }

  v34 = *(v33 + 8);
  if (a3 && (*(v33 + 8) & 1) != 0)
  {
    v35 = WTF::fastMalloc(0x10);
    *v35 = &unk_1F112DF70;
    v35[1] = &v55;
    *buf = v35;
    WebKit::sendMessage(a3, buf);
    (*(*v35 + 8))(v35);
    v34 = *(v33 + 8);
  }

  if (v34)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t WebKit::NotificationPermissionRequestManager::setPermissionLevelForTesting(WebKit::NotificationPermissionRequestManager *this, const WTF::String *a2, char a3)
{
  {
    v5 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v8 = WebKit::WebProcess::operator new(0x370, a2);
    v5 = WebKit::WebProcess::WebProcess(v8);
    WebKit::WebProcess::singleton(void)::process = v5;
  }

  WebKit::WebProcess::protectedNotificationManager(v5, &v9);
  v6 = v9;
  result = WebKit::WebNotificationManager::didUpdateNotificationDecision(v9, a2, a3);
  if (v6)
  {
    if (!*(*(v6 + 3) + 8))
    {
      result = 92;
      __break(0xC471u);
    }
  }

  return result;
}

uint64_t WebKit::WebNotificationManager::didUpdateNotificationDecision(uint64_t this, WTF::StringImpl **a2, char a3)
{
  v4 = a3;
  if (*a2)
  {
    if (*(*a2 + 1))
    {
      return WTF::HashMap<WTF::String,BOOL,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<BOOL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WTF::String const&,BOOL &>((this + 40), a2, &v4, &v3);
    }
  }

  return this;
}

uint64_t WebKit::NotificationPermissionRequestManager::removeAllPermissionsForTesting(WebKit::NotificationPermissionRequestManager *this, void *a2)
{
  {
    v2 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v6 = WebKit::WebProcess::operator new(0x370, a2);
    v2 = WebKit::WebProcess::WebProcess(v6);
    WebKit::WebProcess::singleton(void)::process = v2;
  }

  WebKit::WebProcess::protectedNotificationManager(v2, &v7);
  v4 = v7;
  result = *(v7 + 40);
  if (result)
  {
    *(v7 + 40) = 0;
    result = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,Inspector::SupplementalBackendDispatcher *,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<Inspector::SupplementalBackendDispatcher *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(result, v3);
  }

  if (!*(*(v4 + 24) + 8))
  {
    result = 92;
    __break(0xC471u);
  }

  return result;
}

void WebKit::WebNotificationManager::~WebNotificationManager(WebKit::WebNotificationManager *this, WTF::StringImpl *a2)
{
  *this = &unk_1F112DC28;
  *(this + 1) = &unk_1F112DC78;
  v3 = *(this + 5);
  if (v3)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,Inspector::SupplementalBackendDispatcher *,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<Inspector::SupplementalBackendDispatcher *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  v4 = *(this + 4);
  if (v4)
  {
    WTF::fastFree((v4 - 16), a2);
  }

  v5 = *(this + 3);
  *(this + 3) = 0;
  if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5);
    WTF::fastFree(v5, a2);
  }

  *(this + 1) = &unk_1F10EA5E0;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 2, a2);
}

{
  WebKit::WebNotificationManager::~WebNotificationManager(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

void non-virtual thunk toWebKit::WebNotificationManager::~WebNotificationManager(WebKit::WebNotificationManager *this, WTF::StringImpl *a2)
{
  WebKit::WebNotificationManager::~WebNotificationManager((this - 8), a2);
}

{
  WebKit::WebNotificationManager::~WebNotificationManager((this - 8), a2);

  bmalloc::api::tzoneFree(v2, v3);
}

uint64_t WebKit::WebNotificationManager::ref(uint64_t this)
{
  if (!*(*(this + 24) + 8))
  {
    this = 92;
    __break(0xC471u);
  }

  return this;
}

uint64_t non-virtual thunk toWebKit::WebNotificationManager::ref(uint64_t this)
{
  if (!*(*(this + 16) + 8))
  {
    this = 92;
    __break(0xC471u);
  }

  return this;
}

uint64_t WebKit::WebNotificationManager::deref(uint64_t this)
{
  if (!*(*(this + 24) + 8))
  {
    this = 92;
    __break(0xC471u);
  }

  return this;
}

uint64_t non-virtual thunk toWebKit::WebNotificationManager::deref(uint64_t this)
{
  if (!*(*(this + 16) + 8))
  {
    this = 92;
    __break(0xC471u);
  }

  return this;
}

WTF::StringImpl **WebKit::WebNotificationManager::didRemoveNotificationDecisions(WTF::StringImpl **result, uint64_t a2, const WTF::StringImpl *a3)
{
  v3 = *(a2 + 12);
  if (v3)
  {
    v4 = result;
    v5 = *a2;
    for (i = 8 * v3; i; i -= 8)
    {
      if (*v5 && *(*v5 + 1))
      {
        result = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,BOOL>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,BOOL>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,BOOL,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<BOOL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,BOOL,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<BOOL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,(WTF::ShouldValidateKey)1,WTF::String>(v4 + 5, v5, a3);
        v8 = v4[5];
        if (v8)
        {
          v9 = (v8 + 16 * *(v8 - 1));
          if (v9 != result)
          {
            goto LABEL_8;
          }
        }

        else if (result)
        {
          v9 = 0;
LABEL_8:
          if (v9 != result)
          {
            v10 = *result;
            *result = -1;
            if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              result = WTF::StringImpl::destroy(v10, v7);
            }

            v11 = v4[5];
            v12 = vadd_s32(*(v11 - 16), 0xFFFFFFFF00000001);
            *(v11 - 2) = v12;
            v13 = *(v11 - 1);
            if (6 * v12.i32[1] < v13 && v13 >= 9)
            {
              result = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,BOOL>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,BOOL>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,BOOL,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<BOOL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(v4 + 5, v13 >> 1, 0);
            }
          }
        }
      }

      ++v5;
    }
  }

  return result;
}

uint64_t WebKit::WebNotificationManager::show(uint64_t a1, uint64_t a2, uint64_t a3, WebCore::DeprecatedGlobalSettings *a4, uint64_t *a5)
{
  *v14 = *(a2 + 144);
  if (!a4 || (*(*(*(a4 + 7) + 120) + 738) & 2) != 0)
  {
    v13[0] = a2;
    v13[1] = a3;
    v10 = WTF::fastMalloc(0x18);
    *v10 = &unk_1F112DF98;
    v10[1] = v13;
    v10[2] = a5;
    v15 = v10;
    v11 = WebKit::sendMessage(a4, &v15);
    (*(*v10 + 8))(v10);
    if (v11)
    {
      if (!*(a2 + 96))
      {
        if ((*(a2 + 192) & 1) == 0)
        {
          result = 222;
          __break(0xC471u);
          return result;
        }

        WTF::HashMap<WTF::UUID,WebCore::ProcessQualified<WTF::UUID>,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WebCore::ProcessQualified<WTF::UUID>&>((a1 + 32), v14, (a2 + 160), v13);
      }

      return 1;
    }
  }

  else
  {
    v9 = *a5;
    *a5 = 0;
    (*(*v9 + 16))(v9);
    (*(*v9 + 8))(v9);
  }

  return 0;
}

uint64_t WTF::HashMap<WTF::UUID,WebCore::ProcessQualified<WTF::UUID>,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WebCore::ProcessQualified<WTF::UUID>&>@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  if (!(*a2 ^ 1 | a2[1]) || *a2 == 0)
  {
    __break(0xC471u);
    JUMPOUT(0x19E336630);
  }

  v8 = *a1;
  if (*a1 || (WTF::HashTable<WTF::UUID,WTF::KeyValuePair<WTF::UUID,WebCore::ProcessQualified<WTF::UUID>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::UUID,WebCore::ProcessQualified<WTF::UUID>>>,WTF::DefaultHash<WTF::UUID>,WTF::HashMap<WTF::UUID,WebCore::ProcessQualified<WTF::UUID>,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::UUID>,WTF::FastMalloc>::expand(a1, 0), (v8 = *a1) != 0))
  {
    v9 = *(v8 - 8);
  }

  else
  {
    v9 = 0;
  }

  v27 = -1640531527;
  v28 = 0;
  v29 = 0;
  WTF::add(&v27, *a2, a2[1]);
  result = WTF::SuperFastHash::hash(&v27);
  v11 = result & v9;
  v12 = v8 + 48 * (result & v9);
  v14 = *v12;
  v13 = *(v12 + 8);
  if (*v12 != 0)
  {
    v15 = 0;
    v16 = 1;
    do
    {
      if (v13 == a2[1] && v14 == *a2)
      {
        v21 = *a1;
        if (*a1)
        {
          v22 = *(v21 - 4);
        }

        else
        {
          v22 = 0;
        }

        v26 = 0;
        v25 = v21 + 48 * v22;
        goto LABEL_31;
      }

      if (!(v14 ^ 1 | v13))
      {
        v15 = v12;
      }

      v11 = (v11 + v16) & v9;
      v12 = v8 + 48 * v11;
      v14 = *v12;
      v13 = *(v12 + 8);
      ++v16;
    }

    while (*v12 != 0);
    if (v15)
    {
      *(v15 + 32) = 0;
      *v15 = 0u;
      *(v15 + 16) = 0u;
      --*(*a1 - 16);
      v12 = v15;
    }
  }

  *v12 = *a2;
  v18 = *a3;
  *(v12 + 32) = *(a3 + 2);
  *(v12 + 16) = v18;
  v19 = *a1;
  if (*a1)
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
LABEL_24:
      result = WTF::HashTable<WTF::UUID,WTF::KeyValuePair<WTF::UUID,WebCore::ProcessQualified<WTF::UUID>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::UUID,WebCore::ProcessQualified<WTF::UUID>>>,WTF::DefaultHash<WTF::UUID>,WTF::HashMap<WTF::UUID,WebCore::ProcessQualified<WTF::UUID>,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::UUID>,WTF::FastMalloc>::expand(a1, v12);
      v12 = result;
      v19 = *a1;
      if (*a1)
      {
        LODWORD(v24) = *(v19 - 4);
      }

      else
      {
        LODWORD(v24) = 0;
      }
    }
  }

  else if (3 * v24 <= 4 * v23)
  {
    goto LABEL_24;
  }

  v25 = v19 + 48 * v24;
  v26 = 1;
LABEL_31:
  *a4 = v12;
  *(a4 + 8) = v25;
  *(a4 + 16) = v26;
  return result;
}

WTF::StringImpl *WebKit::WebNotificationManager::cancel(uint64_t a1, uint64_t a2, WebCore::DeprecatedGlobalSettings *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = *(a2 + 144);
  WTF::URL::URL(v11, (a2 + 88));
  WebCore::SecurityOriginData::fromURL(&v14, v11, v4);
  v6 = v11[0];
  v11[0] = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v5);
  }

  v11[0] = &v14;
  v11[1] = &v12;
  v7 = WTF::fastMalloc(0x10);
  *v7 = &unk_1F112DFE8;
  v7[1] = v11;
  v13 = v7;
  WebKit::sendMessage(a3, &v13);
  result = (*(*v7 + 8))(v7);
  if (!v16)
  {
    v10 = v15;
    v15 = 0;
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v9);
    }

    result = v14;
    v14 = 0;
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

uint64_t WebKit::WebNotificationManager::requestPermission(uint64_t a1, uint64_t a2, WebCore::DeprecatedGlobalSettings **a3, uint64_t a4)
{
  v8 = a2;
  v5 = *a3;
  v6 = WTF::fastMalloc(0x18);
  *v6 = &unk_1F112E010;
  v6[1] = &v8;
  v6[2] = a4;
  v9 = v6;
  WebKit::sendMessage(v5, &v9);
  return (*(*v6 + 8))(v6);
}

uint64_t WebKit::WebNotificationManager::didDestroyNotification(uint64_t a1, uint64_t a2, WebCore::DeprecatedGlobalSettings *a3)
{
  *v11 = *(a2 + 144);
  if (!*(a2 + 96))
  {
    v7 = WTF::HashTable<WTF::UUID,WTF::KeyValuePair<WTF::UUID,WebCore::ProcessQualified<WTF::UUID>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::UUID,WebCore::ProcessQualified<WTF::UUID>>>,WTF::DefaultHash<WTF::UUID>,WTF::HashMap<WTF::UUID,WebCore::ProcessQualified<WTF::UUID>,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::UUID>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::UUID,WebCore::ProcessQualified<WTF::UUID>,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::UUID>>,(WTF::ShouldValidateKey)1,WTF::UUID>((a1 + 32), v11);
    v8 = *(a1 + 32);
    if (v8)
    {
      v9 = (v8 + 48 * *(v8 - 4));
      if (v9 == v7)
      {
        goto LABEL_2;
      }
    }

    else
    {
      if (!v7)
      {
        goto LABEL_2;
      }

      v9 = 0;
    }

    if (v9 != v7)
    {
      WTF::HashTable<WTF::UUID,WTF::KeyValuePair<WTF::UUID,WebCore::ProcessQualified<WTF::UUID>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::UUID,WebCore::ProcessQualified<WTF::UUID>>>,WTF::DefaultHash<WTF::UUID>,WTF::HashMap<WTF::UUID,WebCore::ProcessQualified<WTF::UUID>,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::UUID>,WTF::FastMalloc>::remove((a1 + 32), v7);
    }
  }

LABEL_2:
  v10 = v11;
  v4 = WTF::fastMalloc(0x10);
  *v4 = &unk_1F112E060;
  v4[1] = &v10;
  v12 = v4;
  WebKit::sendMessage(a3, &v12);
  return (*(*v4 + 8))(v4);
}

uint64_t WebKit::WebNotificationManager::didShowNotification(WebKit::WebNotificationManager *this, const WTF::UUID *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  result = WTF::HashMap<WTF::UUID,WebCore::ProcessQualified<WTF::UUID>,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::UUID,WebCore::ProcessQualified<WTF::UUID>,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::UUID>>,WTF::UUID>(this + 32, a2, &v5);
  if (v5 != 0)
  {
    v3 = WTF::fastMalloc(0x10);
    *v3 = &unk_1F112E088;
    v4 = v3;
    WebCore::Notification::ensureOnNotificationThread();
    result = v4;
    if (v4)
    {
      return (*(*v4 + 8))(v4);
    }
  }

  return result;
}

uint64_t WebKit::WebNotificationManager::didClickNotification(WebKit::WebNotificationManager *this, const WTF::UUID *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  result = WTF::HashMap<WTF::UUID,WebCore::ProcessQualified<WTF::UUID>,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::UUID,WebCore::ProcessQualified<WTF::UUID>,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::UUID>>,WTF::UUID>(this + 32, a2, &v5);
  if (v5 != 0)
  {
    v3 = WTF::fastMalloc(0x10);
    *v3 = &unk_1F112E0B0;
    v4 = v3;
    WebCore::Notification::ensureOnNotificationThread();
    result = v4;
    if (v4)
    {
      return (*(*v4 + 8))(v4);
    }
  }

  return result;
}

uint64_t WebKit::WebNotificationManager::didCloseNotifications(uint64_t result, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 12);
  if (v2)
  {
    v3 = result;
    v4 = *a2;
    v5 = 16 * v2;
    do
    {
      result = WTF::HashMap<WTF::UUID,WebCore::ProcessQualified<WTF::UUID>,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::UUID,WebCore::ProcessQualified<WTF::UUID>,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::UUID>>,WTF::UUID>(v3 + 32, v4, &v8);
      if (v8 != 0)
      {
        v6 = WTF::fastMalloc(0x10);
        *v6 = &unk_1F112E0D8;
        v7 = v6;
        WebCore::Notification::ensureOnNotificationThread();
        result = v7;
        if (v7)
        {
          result = (*(*v7 + 8))(v7);
        }
      }

      v4 += 2;
      v5 -= 16;
    }

    while (v5);
  }

  return result;
}

void WebKit::RTCDataChannelRemoteManager::RemoteHandlerConnection::~RemoteHandlerConnection(WebKit::RTCDataChannelRemoteManager::RemoteHandlerConnection *this)
{
  *this = &unk_1F112DBA8;
  v2 = *(this + 3);
  *(this + 3) = 0;
  if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }
}

void WebKit::RTCDataChannelRemoteManager::RemoteHandlerConnection::~RemoteHandlerConnection(WebKit::RTCDataChannelRemoteManager::RemoteHandlerConnection *this, void *a2)
{
  *this = &unk_1F112DBA8;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v4);
  }

  WTF::fastFree(this, a2);
}

void WebKit::RTCDataChannelRemoteManager::RemoteSourceConnection::~RemoteSourceConnection(WebKit::RTCDataChannelRemoteManager::RemoteSourceConnection *this)
{
  *this = &unk_1F112DBE0;
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }
}

void WebKit::RTCDataChannelRemoteManager::RemoteSourceConnection::~RemoteSourceConnection(WebKit::RTCDataChannelRemoteManager::RemoteSourceConnection *this, void *a2)
{
  *this = &unk_1F112DBE0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  WTF::fastFree(this, a2);
}

uint64_t sigslot::has_slots<sigslot::single_threaded>::do_signal_connect(uint64_t result, unint64_t a2)
{
  v2 = *(result + 40);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = v2[4];
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return result;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

void sigslot::has_slots<sigslot::single_threaded>::do_signal_disconnect(void *a1, unint64_t a2)
{
  v4 = a1 + 5;
  v3 = a1[5];
  if (v3)
  {
    v5 = v4;
    v6 = v3;
    do
    {
      v7 = v6[4];
      v8 = v7 >= a2;
      v9 = v7 < a2;
      if (v8)
      {
        v5 = v6;
      }

      v6 = v6[v9];
    }

    while (v6);
    if (v5 != v4 && v5[4] <= a2)
    {
      v10 = v5[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        v12 = v5;
        do
        {
          v11 = v12[2];
          v13 = *v11 == v12;
          v12 = v11;
        }

        while (!v13);
      }

      if (a1[4] == v5)
      {
        a1[4] = v11;
      }

      --a1[6];
      std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(v3, v5);

      operator delete(v5);
    }
  }
}

void sigslot::has_slots<sigslot::single_threaded>::do_disconnect_all(void *a1)
{
  v1 = a1[6];
  if (v1)
  {
    v3 = a1 + 5;
    do
    {
      v5 = a1[4];
      v10[0] = a1[5];
      v4 = v10[0];
      a1[5] = 0;
      a1[6] = 0;
      v10[1] = v1;
      v4[2] = v10;
      a1[4] = v3;
      if (v5 != v10)
      {
        do
        {
          v6 = v5[1];
          v7 = v5;
          if (v6)
          {
            do
            {
              v8 = v6;
              v6 = *v6;
            }

            while (v6);
          }

          else
          {
            do
            {
              v8 = v7[2];
              v9 = *v8 == v7;
              v7 = v8;
            }

            while (!v9);
          }

          (*v5[4])();
          v5 = v8;
        }

        while (v8 != v10);
        v4 = v10[0];
      }

      std::__tree<sigslot::_signal_base_interface *>::destroy(v4);
      v1 = a1[6];
    }

    while (v1);
  }
}

void std::__tree<sigslot::_signal_base_interface *>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<sigslot::_signal_base_interface *>::destroy(*a1);
    std::__tree<sigslot::_signal_base_interface *>::destroy(a1[1]);

    operator delete(a1);
  }
}

void sigslot::_signal_base<sigslot::single_threaded>::do_slot_disconnect(void *a1, uint64_t a2)
{
  v2 = a1 + 2;
  v3 = a1[3];
  if (v3 != a1 + 2)
  {
    do
    {
      v6 = v3;
      v3 = v3[1];
      if (v6[3] == a2)
      {
        v7 = *v6;
        *(v7 + 8) = v3;
        *v3 = v7;
        v8 = a1[5];
        --a1[4];
        operator delete(v6);
        if (v8 == v6)
        {
          a1[5] = v3;
        }
      }
    }

    while (v3 != v2);
  }
}

uint64_t sigslot::_signal_base<sigslot::single_threaded>::do_slot_duplicate(uint64_t result, uint64_t a2)
{
  for (i = *(result + 24); i != result + 16; i = *(i + 8))
  {
    if (*(i + 24) == a2)
    {
      operator new();
    }
  }

  return result;
}

uint64_t WebKit::LibWebRTCSocket::operator new(WebKit::LibWebRTCSocket *this, void *a2)
{
  if (WebKit::LibWebRTCSocket::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::LibWebRTCSocket::s_heapRef, a2);
  }

  else
  {
    return WebKit::LibWebRTCSocket::operatorNewSlow(0x250);
  }
}

uint64_t WebKit::LibWebRTCResolver::operator new(WebKit::LibWebRTCResolver *this, void *a2)
{
  if (this == 136 && WebKit::LibWebRTCResolver::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::LibWebRTCResolver::s_heapRef, a2);
  }

  else
  {
    return WebKit::LibWebRTCResolver::operatorNewSlow(this);
  }
}

WebKit::LibWebRTCResolver *WebKit::LibWebRTCResolver::LibWebRTCResolver(WebKit::LibWebRTCResolver *this)
{
  *this = &unk_1F112DAC8;
  *(this + 1) = &unk_1F112DCC0;
  *(this + 4) = 0;
  *(this + 3) = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  *(this + 4) = 0;
  *this = &unk_1F112DA48;
  *(this + 1) = &unk_1F112DA98;
  *(this + 5) = 0;
  webrtc::SocketAddress::SocketAddress((this + 48));
  *(this + 15) = 0;
  *(this + 32) = 0;
  *(this + 66) = 0;
  return this;
}

uint64_t WTF::HashTable<WebCore::SecurityOriginData,WTF::KeyValuePair<WebCore::SecurityOriginData,WTF::Vector<WTF::CompletionHandler<void ()(WebCore::NotificationPermission)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::SecurityOriginData,WTF::Vector<WTF::CompletionHandler<void ()(WebCore::NotificationPermission)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashMap<WebCore::SecurityOriginData,WTF::Vector<WTF::CompletionHandler<void ()(WebCore::NotificationPermission)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WTF::Vector<WTF::CompletionHandler<void ()(WebCore::NotificationPermission)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::deallocateTable(mpark *a1, void *a2)
{
  v2 = a1;
  v3 = *(a1 - 1);
  if (v3)
  {
    v4 = a1 + 32;
    while (!*(v4 - 8))
    {
      if (*(v4 - 32) != -1)
      {
        goto LABEL_5;
      }

LABEL_13:
      v4 += 48;
      if (!--v3)
      {
        goto LABEL_17;
      }
    }

    if (*(v4 - 8) != 1)
    {
      mpark::throw_bad_variant_access(a1);
    }

LABEL_5:
    a1 = WTF::Vector<WTF::CompletionHandler<void ()(WebCore::NotificationPermission)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v4, a2);
    if (!*(v4 - 8))
    {
      v5 = *(v4 - 24);
      *(v4 - 24) = 0;
      if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, a2);
      }

      a1 = *(v4 - 32);
      *(v4 - 32) = 0;
      if (a1 && atomic_fetch_add_explicit(a1, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        a1 = WTF::StringImpl::destroy(a1, a2);
      }
    }

    *(v4 - 8) = -1;
    goto LABEL_13;
  }

LABEL_17:

  return WTF::fastFree((v2 - 16), a2);
}

WTF::StringImpl ***WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,BOOL>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,BOOL>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,BOOL,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<BOOL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::operator=(WTF::StringImpl ***a1, WTF::StringImpl ***a2)
{
  WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,BOOL>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,BOOL>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,BOOL,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<BOOL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::HashTable(&v6, a2);
  v4 = *a1;
  *a1 = v6;
  v6 = v4;
  if (v4)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,Inspector::SupplementalBackendDispatcher *,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<Inspector::SupplementalBackendDispatcher *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v4, v3);
  }

  return a1;
}

uint64_t *WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,BOOL>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,BOOL>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,BOOL,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<BOOL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::HashTable(uint64_t *a1, WTF::StringImpl ***a2)
{
  *a1 = 0;
  v3 = *a2;
  if (*a2)
  {
    v5 = *(v3 - 3);
    if (v5)
    {
      v7 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,BOOL>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,BOOL>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,BOOL,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<BOOL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::computeBestTableSize(*(v3 - 3));
      v8 = WTF::fastZeroedMalloc((16 * v7 + 16));
      *a1 = (v8 + 4);
      v8[2] = v7 - 1;
      v8[3] = v7;
      *v8 = 0;
      v8[1] = v5;
      v9 = *a2;
      v10 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::begin(*a2);
      v11 = v10;
      v13 = v12;
      if (v9)
      {
        v9 += 2 * *(v9 - 1);
      }

      if (v9 != v10)
      {
        do
        {
          v16 = *a1;
          if (*a1)
          {
            v14 = *(v16 - 8);
          }

          else
          {
            v14 = 0;
          }

          v17 = *(*v11 + 4);
          if (v17 < 0x100)
          {
            v15 = WTF::StringImpl::hashSlowCase(*v11);
          }

          else
          {
            v15 = v17 >> 8;
          }

          v18 = 0;
          do
          {
            v19 = v15 & v14;
            v15 = ++v18 + v19;
          }

          while (*(v16 + 16 * v19));
          WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,BOOL,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<BOOL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>::translate<WTF::KeyValuePair<WTF::String,BOOL>,WTF::String,WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,BOOL>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,BOOL>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,BOOL,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<BOOL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::HashTable(WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,BOOL>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,BOOL>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,BOOL,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<BOOL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc> const&)::{lambda(void)#1}>(v16 + 16 * v19, v11);
          do
          {
            v11 += 2;
          }

          while (v11 != v13 && *v11 + 1 <= 1);
        }

        while (v11 != v9);
      }
    }
  }

  return a1;
}

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,BOOL>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,BOOL>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,BOOL,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<BOOL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::computeBestTableSize(uint64_t result)
{
  if (result >= 2)
  {
    v3 = __clz(result - 1);
    if (!v3)
    {
      __break(1u);
      return result;
    }

    v1 = (1 << -v3);
    v2 = result;
    if (result > 0x400)
    {
      if (v1 > 2 * result)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else
  {
    v1 = 1;
    v2 = 1;
  }

  if (3 * v1 <= 4 * v2)
  {
LABEL_6:
    LODWORD(v1) = 2 * v1;
  }

LABEL_7:
  if (v1 > 0x400)
  {
    v4 = 0.416666667;
  }

  else
  {
    v4 = 0.604166667;
  }

  if (v1 * v4 <= result)
  {
    LODWORD(v1) = 2 * v1;
  }

  if (v1 <= 8)
  {
    return 8;
  }

  else
  {
    return v1;
  }
}

WTF::StringImpl *WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,BOOL,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<BOOL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>::translate<WTF::KeyValuePair<WTF::String,BOOL>,WTF::String,WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,BOOL>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,BOOL>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,BOOL,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<BOOL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::HashTable(WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,BOOL>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,BOOL>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,BOOL,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<BOOL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc> const&)::{lambda(void)#1}>(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
  }

  v4 = *(a2 + 8);
  result = *a1;
  *a1 = v3;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, a2);
  }

  *(a1 + 8) = v4;
  return result;
}

WTF *std::__tree<std::__value_type<webrtc::Socket::Option,int>,std::__map_value_compare<webrtc::Socket::Option,std::__value_type<webrtc::Socket::Option,int>,std::less<webrtc::Socket::Option>,true>,WTF::FastAllocator<std::__value_type<webrtc::Socket::Option,int>>>::destroy(WTF *result)
{
  if (result)
  {
    v1 = result;
    std::__tree<std::__value_type<webrtc::Socket::Option,int>,std::__map_value_compare<webrtc::Socket::Option,std::__value_type<webrtc::Socket::Option,int>,std::less<webrtc::Socket::Option>,true>,WTF::FastAllocator<std::__value_type<webrtc::Socket::Option,int>>>::destroy(*result);
    std::__tree<std::__value_type<webrtc::Socket::Option,int>,std::__map_value_compare<webrtc::Socket::Option,std::__value_type<webrtc::Socket::Option,int>,std::less<webrtc::Socket::Option>,true>,WTF::FastAllocator<std::__value_type<webrtc::Socket::Option,int>>>::destroy(*(v1 + 1));

    return WTF::fastFree(v1, v2);
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::LibWebRTCSocketFactory::createUdpSocket(WebCore::ProcessQualified<WTF::UUID>,webrtc::SocketAddress const&,unsigned short,unsigned short,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,BOOL,BOOL,WebCore::RegistrableDomain const&)::$_0,void>::call(uint64_t a1, void *a2)
{
  {
    v3 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v5 = WebKit::WebProcess::operator new(0x370, a2);
    v3 = WebKit::WebProcess::WebProcess(v5);
    WebKit::WebProcess::singleton(void)::process = v3;
  }

  return WebKit::WebProcess::ensureNetworkProcessConnection(v3);
}

uint64_t WTF::Deque<WTF::Function<void ()(IPC::Connection &)>,0ul>::expandCapacity(uint64_t result)
{
  v1 = *(result + 24);
  v2 = v1 + (v1 >> 2);
  if (v2 >= 0x1FFFFFFF)
  {
    __break(0xC471u);
    return result;
  }

  v3 = result;
  v4 = *(result + 16);
  if (v2 <= 0xF)
  {
    v2 = 15;
  }

  v5 = v2 + 1;
  v6 = WTF::fastMalloc((8 * (v2 + 1)));
  *(v3 + 24) = v5;
  *(v3 + 16) = v6;
  v8 = *v3;
  v7 = *(v3 + 8);
  v9 = v7 - *v3;
  if (v7 >= *v3)
  {
    v7 = v1 - v8;
    if (v1 >= v8)
    {
      if (v9 == -1)
      {
LABEL_14:
        v9 = v7;
LABEL_15:
        result = WTF::VectorTypeOperations<WTF::Function<void ()(IPC::Connection &)>>::move(v4 + 8 * v8, v9, &v6[v8]);
        if (!v4)
        {
          return result;
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

  WTF::VectorTypeOperations<WTF::Function<void ()(IPC::Connection &)>>::move(v4, *(v3 + 8), v6);
  v7 = *v3;
  v8 = v1 - *v3;
  if (v1 < *v3)
  {
    goto LABEL_13;
  }

  v10 = *(v3 + 24);
  if (v10 < v8)
  {
    goto LABEL_13;
  }

  v11 = v10 - v8;
  result = WTF::VectorTypeOperations<WTF::Function<void ()(IPC::Connection &)>>::move(v4 + 8 * v7, v8, (*(v3 + 16) + 8 * (v10 - v8)));
  *v3 = v11;
  if (!v4)
  {
    return result;
  }

LABEL_16:
  if (*(v3 + 16) == v4)
  {
    *(v3 + 16) = 0;
    *(v3 + 24) = 0;
  }

  return WTF::fastFree(v4, v12);
}

uint64_t WTF::VectorTypeOperations<WTF::Function<void ()(IPC::Connection &)>>::move(uint64_t result, uint64_t a2, uint64_t *a3)
{
  if (a2)
  {
    v4 = result;
    v5 = 8 * a2;
    do
    {
      v6 = *v4;
      *v4 = 0;
      *a3 = v6;
      result = *v4;
      *v4 = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }

      ++a3;
      ++v4;
      v5 -= 8;
    }

    while (v5);
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::LibWebRTCSocketFactory::createUdpSocket(WebCore::ProcessQualified<WTF::UUID>,webrtc::SocketAddress const&,unsigned short,unsigned short,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,BOOL,BOOL,WebCore::RegistrableDomain const&)::$_1,void,IPC::Connection &>::~CallableWrapper(uint64_t a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F112DD18;
  v3 = *(a1 + 88);
  *(a1 + 88) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    WTF::fastFree(v4, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::LibWebRTCSocketFactory::createUdpSocket(WebCore::ProcessQualified<WTF::UUID>,webrtc::SocketAddress const&,unsigned short,unsigned short,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,BOOL,BOOL,WebCore::RegistrableDomain const&)::$_1,void,IPC::Connection &>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F112DD18;
  v3 = *(this + 11);
  *(this + 11) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *(this + 3);
  if (v4)
  {
    *(this + 3) = 0;
    *(this + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *WTF::Detail::CallableWrapper<WebKit::LibWebRTCSocketFactory::createUdpSocket(WebCore::ProcessQualified<WTF::UUID>,webrtc::SocketAddress const&,unsigned short,unsigned short,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,BOOL,BOOL,WebCore::RegistrableDomain const&)::$_1,void,IPC::Connection &>::call(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 80);
  v5[0] = (a1 + 8);
  v5[1] = (a1 + 16);
  v6 = v2;
  v7 = a1 + 72;
  v8 = v3;
  v9 = a1 + 88;
  return IPC::Connection::send<Messages::NetworkRTCProvider::CreateUDPSocket>(a2, v5);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::LibWebRTCSocketFactory::createClientTcpSocket(WebCore::ProcessQualified<WTF::UUID>,webrtc::SocketAddress const&,webrtc::SocketAddress const&,WTF::String &&,webrtc::PacketSocketTcpOptions const&,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,BOOL,BOOL,WebCore::RegistrableDomain const&)::$_0,void>::call(uint64_t a1, void *a2)
{
  {
    v3 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v5 = WebKit::WebProcess::operator new(0x370, a2);
    v3 = WebKit::WebProcess::WebProcess(v5);
    WebKit::WebProcess::singleton(void)::process = v3;
  }

  return WebKit::WebProcess::ensureNetworkProcessConnection(v3);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::LibWebRTCSocketFactory::createClientTcpSocket(WebCore::ProcessQualified<WTF::UUID>,webrtc::SocketAddress const&,webrtc::SocketAddress const&,WTF::String &&,webrtc::PacketSocketTcpOptions const&,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,BOOL,BOOL,WebCore::RegistrableDomain const&)::$_1,void,IPC::Connection &>::~CallableWrapper(uint64_t a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F112DD68;
  v3 = *(a1 + 144);
  *(a1 + 144) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *(a1 + 112);
  *(a1 + 112) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *(a1 + 72);
  if (v5)
  {
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    WTF::fastFree(v5, a2);
  }

  v6 = *(a1 + 24);
  if (v6)
  {
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    WTF::fastFree(v6, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::LibWebRTCSocketFactory::createClientTcpSocket(WebCore::ProcessQualified<WTF::UUID>,webrtc::SocketAddress const&,webrtc::SocketAddress const&,WTF::String &&,webrtc::PacketSocketTcpOptions const&,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,BOOL,BOOL,WebCore::RegistrableDomain const&)::$_1,void,IPC::Connection &>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F112DD68;
  v3 = *(this + 18);
  *(this + 18) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *(this + 14);
  *(this + 14) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *(this + 9);
  if (v5)
  {
    *(this + 9) = 0;
    *(this + 20) = 0;
    WTF::fastFree(v5, a2);
  }

  v6 = *(this + 3);
  if (v6)
  {
    *(this + 3) = 0;
    *(this + 8) = 0;
    WTF::fastFree(v6, a2);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *WTF::Detail::CallableWrapper<WebKit::LibWebRTCSocketFactory::createClientTcpSocket(WebCore::ProcessQualified<WTF::UUID>,webrtc::SocketAddress const&,webrtc::SocketAddress const&,WTF::String &&,webrtc::PacketSocketTcpOptions const&,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,BOOL,BOOL,WebCore::RegistrableDomain const&)::$_1,void,IPC::Connection &>::call(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 136);
  v4[0] = a1 + 8;
  v4[1] = a1 + 16;
  v4[2] = a1 + 64;
  v4[3] = a1 + 112;
  v4[4] = a1 + 120;
  v4[5] = a1 + 128;
  v5 = v2;
  v6 = a1 + 144;
  return IPC::Connection::send<Messages::NetworkRTCProvider::CreateClientTCPSocket>(a2, v4);
}

_DWORD *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::LibWebRTCSocket,WTF::RawPtrTraits<WebKit::LibWebRTCSocket>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::LibWebRTCSocket,WTF::RawPtrTraits<WebKit::LibWebRTCSocket>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::LibWebRTCSocket,WTF::RawPtrTraits<WebKit::LibWebRTCSocket>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::LibWebRTCSocket,WTF::RawPtrTraits<WebKit::LibWebRTCSocket>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1)
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

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::LibWebRTCSocket,WTF::RawPtrTraits<WebKit::LibWebRTCSocket>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::LibWebRTCSocket,WTF::RawPtrTraits<WebKit::LibWebRTCSocket>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::LibWebRTCSocket,WTF::RawPtrTraits<WebKit::LibWebRTCSocket>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::LibWebRTCSocket,WTF::RawPtrTraits<WebKit::LibWebRTCSocket>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v3);
}

_DWORD *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::LibWebRTCSocket,WTF::RawPtrTraits<WebKit::LibWebRTCSocket>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::LibWebRTCSocket,WTF::RawPtrTraits<WebKit::LibWebRTCSocket>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::LibWebRTCSocket,WTF::RawPtrTraits<WebKit::LibWebRTCSocket>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::LibWebRTCSocket,WTF::RawPtrTraits<WebKit::LibWebRTCSocket>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2)
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
          v14 = *a1;
          if (*a1)
          {
            v15 = *(v14 - 8);
          }

          else
          {
            v15 = 0;
          }

          v16 = (v11 + ~(v11 << 32)) ^ ((v11 + ~(v11 << 32)) >> 22);
          v17 = 9 * ((v16 + ~(v16 << 13)) ^ ((v16 + ~(v16 << 13)) >> 8));
          v18 = (v17 ^ (v17 >> 15)) + ~((v17 ^ (v17 >> 15)) << 27);
          v19 = v15 & ((v18 >> 31) ^ v18);
          v20 = 1;
          do
          {
            v21 = v19;
            v22 = *(v14 + 16 * v19);
            v19 = (v19 + v20++) & v15;
          }

          while (v22);
          v23 = (v14 + 16 * v21);
          v24 = v23[1];
          v23[1] = 0;
          if (v24)
          {
            v25 = *(v24 + 344);
            if (!v25)
            {
              __break(0xC471u);
              JUMPOUT(0x19E337EBCLL);
            }

            *(v24 + 344) = v25 - 1;
          }

          *v23 = *v10;
          v26 = v10[1];
          v10[1] = 0;
          v23[1] = v26;
          v27 = v10[1];
          v10[1] = 0;
          if (v27)
          {
            v28 = *(v27 + 344);
            if (!v28)
            {
LABEL_31:
              __break(0xC471u);
              JUMPOUT(0x19E337E9CLL);
            }

            *(v27 + 344) = v28 - 1;
          }
        }

        else
        {
          v12 = v10[1];
          v10[1] = 0;
          if (v12)
          {
            v13 = *(v12 + 344);
            if (!v13)
            {
              goto LABEL_31;
            }

            *(v12 + 344) = v13 - 1;
          }
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

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::LibWebRTCResolverIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::LibWebRTCResolverIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::LibWebRTCResolver,WTF::RawPtrTraits<WebKit::LibWebRTCResolver>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::LibWebRTCResolverIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::LibWebRTCResolver,WTF::RawPtrTraits<WebKit::LibWebRTCResolver>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::LibWebRTCResolverIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::LibWebRTCResolverIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::LibWebRTCResolver,WTF::RawPtrTraits<WebKit::LibWebRTCResolver>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::LibWebRTCResolverIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::LibWebRTCResolverIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::LibWebRTCResolver,WTF::RawPtrTraits<WebKit::LibWebRTCResolver>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::LibWebRTCResolverIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t *a2)
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

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::LibWebRTCResolverIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::LibWebRTCResolverIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::LibWebRTCResolver,WTF::RawPtrTraits<WebKit::LibWebRTCResolver>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::LibWebRTCResolverIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::LibWebRTCResolver,WTF::RawPtrTraits<WebKit::LibWebRTCResolver>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::LibWebRTCResolverIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::LibWebRTCResolverIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::LibWebRTCResolver,WTF::RawPtrTraits<WebKit::LibWebRTCResolver>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::LibWebRTCResolverIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::LibWebRTCResolverIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::LibWebRTCResolver,WTF::RawPtrTraits<WebKit::LibWebRTCResolver>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::LibWebRTCResolverIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

atomic_uint *WTF::makeUniqueRefWithoutFastMallocCheck<WebCore::RTCDataChannelRemoteSource,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>> &,WTF::UniqueRef<WebCore::RTCDataChannelHandler>,WebCore::RTCDataChannelRemoteSourceConnection &>@<X0>(void *a1@<X1>, uint64_t a2@<X2>, atomic_uint **a3@<X8>)
{
  WebCore::RTCDataChannelRemoteSource::operator new(0x30, a1);
  atomic_fetch_add((a2 + 8), 1u);
  result = WebCore::RTCDataChannelRemoteSource::RTCDataChannelRemoteSource();
  *a3 = result;
  if (a2)
  {
    return WTF::ThreadSafeRefCounted<WebCore::RTCDataChannelRemoteSourceConnection,(WTF::DestructionThread)1>::deref((a2 + 8));
  }

  return result;
}

uint64_t WebCore::RTCDataChannelRemoteSource::operator new(WebCore::RTCDataChannelRemoteSource *this, void *a2)
{
  if (this == 48 && *MEMORY[0x1E69E26D8])
  {
    return bmalloc::api::tzoneAllocateNonCompact(*MEMORY[0x1E69E26D8], a2);
  }

  else
  {
    return MEMORY[0x1EEE595A8]();
  }
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::UniqueRef<WebCore::RTCDataChannelRemoteSource>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::UniqueRef<WebCore::RTCDataChannelRemoteSource>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::UniqueRef<WebCore::RTCDataChannelRemoteSource>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::UniqueRef<WebCore::RTCDataChannelRemoteSource>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t *a2)
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
  v8 = WTF::fastZeroedMalloc((16 * v7 + 16));
  *a1 = (v8 + 4);
  v8[2] = v7 - 1;
  v8[3] = v7;
  *v8 = 0;
  v8[1] = v6;
  if (v5)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = (v4 + 16 * v10);
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
            v22 = v20;
            v23 = *(v15 + 16 * v20);
            v20 = (v20 + v21++) & v16;
          }

          while (v23);
          v24 = (v15 + 16 * v22);
          v25 = v24[1];
          v24[1] = 0;
          if (v25)
          {
            (*(*v25 + 8))(v25);
          }

          *v24 = *v12;
          v26 = v12[1];
          v12[1] = 0;
          v24[1] = v26;
          v27 = v12[1];
          v12[1] = 0;
          if (v27)
          {
            (*(*v27 + 8))(v27);
          }

          if (v12 == a2)
          {
            v11 = v24;
          }
        }

        else
        {
          v14 = v12[1];
          v12[1] = 0;
          if (v14)
          {
            (*(*v14 + 8))(v14);
          }
        }
      }

      ++v10;
    }

    while (v10 != v5);
  }

  else
  {
    v11 = 0;
    result = 0;
    if (!v4)
    {
      return result;
    }
  }

  WTF::fastFree((v4 - 16), v9);
  return v11;
}

void *WTF::Detail::CallableWrapper<WebKit::RTCDataChannelRemoteManager::postTaskToHandler(WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::Function<void ()(WebCore::RTCDataChannelRemoteHandler &)> &&)::$_0,void,WebCore::ScriptExecutionContext &>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F112DD90;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::RTCDataChannelRemoteManager::postTaskToHandler(WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::Function<void ()(WebCore::RTCDataChannelRemoteHandler &)> &&)::$_0,void,WebCore::ScriptExecutionContext &>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F112DD90;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::RTCDataChannelRemoteManager::postTaskToHandler(WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::Function<void ()(WebCore::RTCDataChannelRemoteHandler &)> &&)::$_0,void,WebCore::ScriptExecutionContext &>::call(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    if (*(v1 + 8))
    {
      return (*(**(result + 16) + 16))();
    }
  }

  return result;
}

uint64_t WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::UniqueRef<WebCore::RTCDataChannelRemoteSource>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::UniqueRef<WebCore::RTCDataChannelRemoteSource>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::UniqueRef<WebCore::RTCDataChannelRemoteSource>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::UniqueRef<WebCore::RTCDataChannelRemoteSource>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2 == -1 || !v2)
  {
    __break(0xC471u);
    JUMPOUT(0x19E3383F8);
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

    v10 = 1;
    while (v9)
    {
      v8 = (v8 + v10) & v4;
      v9 = *(v3 + 16 * v8);
      ++v10;
      if (v9 == v2)
      {
        return *(v3 + 16 * v8 + 8);
      }
    }
  }

  return 0;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RTCDataChannelRemoteManager::receiveData(WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,BOOL,std::span<unsigned char const,18446744073709551615ul>)::$_0,void,WebCore::RTCDataChannelRemoteHandler &>::~CallableWrapper(uint64_t a1, void *a2)
{
  *a1 = &unk_1F112DDE0;
  v3 = *(a1 + 24);
  if (v3)
  {
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    WTF::fastFree(v3, a2);
  }

  v4 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RTCDataChannelRemoteManager::receiveData(WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,BOOL,std::span<unsigned char const,18446744073709551615ul>)::$_0,void,WebCore::RTCDataChannelRemoteHandler &>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F112DDE0;
  v3 = *(this + 3);
  if (v3)
  {
    *(this + 3) = 0;
    *(this + 8) = 0;
    WTF::fastFree(v3, a2);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RTCDataChannelRemoteManager::receiveData(WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,BOOL,std::span<unsigned char const,18446744073709551615ul>)::$_0,void,WebCore::RTCDataChannelRemoteHandler &>::call(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    return MEMORY[0x1EEE597E8](a2, *(a1 + 24), *(a1 + 36));
  }

  else
  {
    return MEMORY[0x1EEE597F8](a2, a1 + 16);
  }
}

void *WTF::Detail::CallableWrapper<WebKit::RTCDataChannelRemoteManager::detectError(WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebCore::RTCErrorDetailType,WTF::String &&)::$_0,void,WebCore::RTCDataChannelRemoteHandler &>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F112DE08;
  v3 = a1[2];
  a1[2] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RTCDataChannelRemoteManager::detectError(WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebCore::RTCErrorDetailType,WTF::String &&)::$_0,void,WebCore::RTCDataChannelRemoteHandler &>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F112DE08;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

_DWORD *WTF::Detail::CallableWrapper<WebKit::RTCDataChannelRemoteManager::detectError(WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebCore::RTCErrorDetailType,WTF::String &&)::$_0,void,WebCore::RTCDataChannelRemoteHandler &>::call()
{
  WebCore::RTCError::create(&v1);
  WebCore::RTCDataChannelRemoteHandler::didDetectError();
  result = v1;
  v1 = 0;
  if (result)
  {
    if (result[2] == 1)
    {
      return (*(*result + 8))(result);
    }

    else
    {
      --result[2];
    }
  }

  return result;
}

uint64_t WebCore::RTCError::create(uint64_t *a1)
{
  WTF::fastMalloc(0x48);
  result = WebCore::RTCError::RTCError();
  *a1 = result;
  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::RTCDataChannelRemoteManager::RemoteHandlerConnection::connectToSource(WebCore::RTCDataChannelRemoteHandler &,std::optional<WebCore::ProcessQualified<WTF::UUID>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F112DE58;
  v3 = a1[2];
  a1[2] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RTCDataChannelRemoteManager::RemoteHandlerConnection::connectToSource(WebCore::RTCDataChannelRemoteHandler &,std::optional<WebCore::ProcessQualified<WTF::UUID>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F112DE58;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

_DWORD *WTF::Detail::CallableWrapper<WebKit::RTCDataChannelRemoteManager::RemoteHandlerConnection::connectToSource(WebCore::RTCDataChannelRemoteHandler &,std::optional<WebCore::ProcessQualified<WTF::UUID>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>)::$_0,void>::call(uint64_t a1)
{
  result = WebKit::RTCDataChannelRemoteManager::singleton(a1);
  v4 = *(a1 + 16);
  *(a1 + 16) = 0;
  if ((*(a1 + 64) & 1) == 0)
  {
    __break(1u);
  }

  v21 = *(a1 + 32);
  v22 = *(a1 + 48);
  v5 = *(a1 + 80);
  if (v5 == -1 || !v5)
  {
    __break(0xC471u);
    JUMPOUT(0x19E338AB0);
  }

  v6 = result;
  v7 = *(result + 7);
  if (!v7)
  {
    result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::RTCDataChannelRemoteManager::RemoteHandler>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::RTCDataChannelRemoteManager::RemoteHandler>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::RTCDataChannelRemoteManager::RemoteHandler,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::RTCDataChannelRemoteManager::RemoteHandler>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(result + 7);
    v7 = *(v6 + 7);
    v5 = *(a1 + 80);
  }

  v8 = *(v7 - 8);
  v9 = (v5 + ~(v5 << 32)) ^ ((v5 + ~(v5 << 32)) >> 22);
  v10 = 9 * ((v9 + ~(v9 << 13)) ^ ((v9 + ~(v9 << 13)) >> 8));
  v11 = (v10 ^ (v10 >> 15)) + ~((v10 ^ (v10 >> 15)) << 27);
  v12 = v8 & ((v11 >> 31) ^ v11);
  v13 = (v7 + (v12 << 6));
  v14 = *v13;
  if (*v13)
  {
    v15 = 0;
    v16 = 1;
    while (v14 != v5)
    {
      if (v14 == -1)
      {
        v15 = v13;
      }

      v12 = (v12 + v16) & v8;
      v13 = (v7 + (v12 << 6));
      v14 = *v13;
      ++v16;
      if (!*v13)
      {
        if (v15)
        {
          *v15 = 0;
          *(v15 + 1) = 0u;
          *(v15 + 2) = 0u;
          *(v15 + 3) = 0u;
          --*(*(v6 + 7) - 16);
          v5 = *(a1 + 80);
          v13 = v15;
        }

        goto LABEL_14;
      }
    }

    if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v4);

      return WTF::fastFree(v4, v3);
    }
  }

  else
  {
LABEL_14:
    *v13 = v5;
    result = v13[2];
    v13[2] = v4;
    if (result && atomic_fetch_add(result, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result);
      result = WTF::fastFree(result, v3);
    }

    *(v13 + 2) = v21;
    *(v13 + 3) = v22;
    v17 = *(v6 + 7);
    if (v17)
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
        return result;
      }
    }

    else if (3 * v20 > 4 * v19)
    {
      return result;
    }

    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::RTCDataChannelRemoteManager::RemoteHandler>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::RTCDataChannelRemoteManager::RemoteHandler>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::RTCDataChannelRemoteManager::RemoteHandler,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::RTCDataChannelRemoteManager::RemoteHandler>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(v6 + 7);
  }

  return result;
}

_DWORD *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::RTCDataChannelRemoteManager::RemoteHandler>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::RTCDataChannelRemoteManager::RemoteHandler>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::RTCDataChannelRemoteManager::RemoteHandler,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::RTCDataChannelRemoteManager::RemoteHandler>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1)
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
  v6 = v5;
  result = WTF::fastMalloc(((v5 << 6) | 0x10));
  if (v5)
  {
    v9 = result + 8;
    do
    {
      *(v9 - 2) = 0;
      *v9 = 0uLL;
      v9[1] = 0uLL;
      v9[2] = 0uLL;
      v9 += 4;
      --v6;
    }

    while (v6);
  }

  *a1 = (result + 4);
  result[2] = v5 - 1;
  result[3] = v5;
  *result = 0;
  result[1] = v4;
  if (v3)
  {
    v10 = 0;
    while (1)
    {
      v11 = (v2 + (v10 << 6));
      v12 = *v11;
      if (*v11 != -1)
      {
        if (v12)
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

          v16 = (v12 + ~(v12 << 32)) ^ ((v12 + ~(v12 << 32)) >> 22);
          v17 = 9 * ((v16 + ~(v16 << 13)) ^ ((v16 + ~(v16 << 13)) >> 8));
          v18 = (v17 ^ (v17 >> 15)) + ~((v17 ^ (v17 >> 15)) << 27);
          v19 = v15 & ((v18 >> 31) ^ v18);
          v20 = 1;
          do
          {
            v21 = v19;
            v22 = *(v14 + (v19 << 6));
            v19 = (v19 + v20++) & v15;
          }

          while (v22);
          v23 = v14 + (v21 << 6);
          v24 = *(v23 + 16);
          *(v23 + 16) = 0;
          if (v24 && atomic_fetch_add(v24, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v24);
            WTF::fastFree(v24, v8);
          }

          *v23 = *v11;
          v25 = v11[2];
          v11[2] = 0;
          *(v23 + 16) = v25;
          v26 = *(v11 + 3);
          *(v23 + 32) = *(v11 + 2);
          *(v23 + 48) = v26;
          v13 = v11[2];
          v11[2] = 0;
          if (!v13 || atomic_fetch_add(v13, 0xFFFFFFFF) != 1)
          {
            goto LABEL_27;
          }
        }

        else
        {
          v13 = v11[2];
          v11[2] = 0;
          if (!v13 || atomic_fetch_add(v13, 0xFFFFFFFF) != 1)
          {
            goto LABEL_27;
          }
        }

        atomic_store(1u, v13);
        WTF::fastFree(v13, v8);
      }

LABEL_27:
      if (++v10 == v3)
      {
        goto LABEL_30;
      }
    }
  }

  if (v2)
  {
LABEL_30:

    return WTF::fastFree((v2 - 16), v8);
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkConnectionToWebProcess::ConnectToRTCDataChannelRemoteSource,WebKit::RTCDataChannelRemoteManager::RemoteHandlerConnection::connectToSource(WebCore::RTCDataChannelRemoteHandler &,std::optional<WebCore::ProcessQualified<WTF::UUID>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>)::$_1>(WebKit::RTCDataChannelRemoteManager::RemoteHandlerConnection::connectToSource(WebCore::RTCDataChannelRemoteHandler &,std::optional<WebCore::ProcessQualified<WTF::UUID>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>)::$_1 &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(WebKit::RTCDataChannelRemoteManager *a1, uint64_t a2, IPC::Decoder *a3)
{
  if (a3 && *a3)
  {
    v4 = IPC::Decoder::decode<std::tuple<std::optional<BOOL>>>(a3);
    v5 = v4;
    v6 = WebKit::RTCDataChannelRemoteManager::singleton(v4);
    v7 = *(a1 + 1);
    v8 = *(a1 + 2);
    if ((v5 & 0x10000) != 0)
    {
      v9 = WTF::fastMalloc(0x10);
      *v9 = &unk_1F112DEA8;
      *(v9 + 8) = v5;
      goto LABEL_7;
    }
  }

  else
  {
    v6 = WebKit::RTCDataChannelRemoteManager::singleton(a1);
    v7 = *(a1 + 1);
    v8 = *(a1 + 2);
  }

  v9 = WTF::fastMalloc(0x10);
  *v9 = &unk_1F112DEA8;
  *(v9 + 8) = 0;
LABEL_7:
  v11 = v9;
  WebKit::RTCDataChannelRemoteManager::postTaskToHandler(v6, v7, v8, &v11);
  result = v11;
  if (v11)
  {
    return (*(*v11 + 8))(v11);
  }

  return result;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit27RTCDataChannelRemoteManager23RemoteHandlerConnection15connectToSourceERN7WebCore27RTCDataChannelRemoteHandlerENSt3__18optionalINS5_16ProcessQualifiedINS_4UUIDEEEEENSA_INS_23ObjectIdentifierGenericINS5_33RTCDataChannelLocalIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEEESJ_ENK3__1clINS9_IbEEEEDaOT_EUlRSO_E_vJS7_EE4callES7_(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 9) == 1 && (*(a1 + 8) & 1) != 0)
  {

    return MEMORY[0x1EEE597D8](a2);
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    WebCore::RTCError::create(&v6);
    WebCore::RTCDataChannelRemoteHandler::didDetectError();
    v3 = v6;
    v6 = 0;
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

    result = v5;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(v5, v2);
    }
  }

  return result;
}

uint64_t *WTF::HashTable<WebCore::ProcessQualified<WTF::UUID>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashMap<WebCore::ProcessQualified<WTF::UUID>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashTable<WebCore::ProcessQualified<WTF::UUID>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashMap<WebCore::ProcessQualified<WTF::UUID>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>>,(WTF::ShouldValidateKey)1,WebCore::ProcessQualified<WTF::UUID>>(uint64_t *a1, WTF::UUIDHash *this)
{
  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v4 = *(this + 2);
  v5 = *this == 0 && v4 == 0;
  if (v5 || v4 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E33902CLL);
  }

  v7 = *(v2 - 8);
  v8 = WTF::UUIDHash::hash(this, this);
  v9 = *this;
  v10 = *(this + 1);
  v11 = *(this + 2);
  v12 = v8 & v7;
  result = (v2 + 48 * (v8 & v7));
  v14 = *result;
  v15 = result[1];
  v16 = v15 == v10 && v14 == v9;
  v17 = result[2];
  if (!v16 || v17 != v11)
  {
    v19 = 1;
    while (v14 | v15 || v17)
    {
      v12 = (v12 + v19) & v7;
      result = (v2 + 48 * v12);
      v14 = *result;
      v15 = result[1];
      v20 = v15 == v10 && v14 == v9;
      v17 = result[2];
      ++v19;
      if (v20 && v17 == v11)
      {
        return result;
      }
    }

    if (*a1)
    {
      return (*a1 + 48 * *(*a1 - 4));
    }

    else
    {
      return 0;
    }
  }

  return result;
}

_DWORD *WTF::add(_DWORD *result, unint64_t a2, unint64_t a3)
{
  v3 = (a3 >> 5) & 0x7FFF800 ^ ((*result + a3) << 16) ^ (*result + a3);
  v4 = (a3 >> 37) & 0x7FFF800 ^ ((v3 + WORD2(a3) + (v3 >> 11)) << 16) ^ (v3 + WORD2(a3) + (v3 >> 11));
  v5 = (a2 >> 5) & 0x7FFF800 ^ ((v4 + a2 + (v4 >> 11)) << 16) ^ (v4 + a2 + (v4 >> 11));
  v6 = v5 + WORD2(a2) + (v5 >> 11);
  v7 = (a2 >> 37) & 0x7FFF800 ^ (v6 << 16);
  *result = (v7 ^ v6) + ((v7 ^ v6) >> 11);
  return result;
}

uint64_t *WTF::HashMap<WebCore::ProcessQualified<WTF::UUID>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::take@<X0>(uint64_t *a1@<X0>, WTF::StringImpl *a2@<X1>, void *a3@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    v3 = (v3 + 48 * *(v3 - 1));
  }

  if (v3 == a2)
  {
    *a3 = 0;
    return a1;
  }

  v4 = *(a2 + 4);
  *(a2 + 4) = 0;
  *a3 = v4;
  if (*a1)
  {
    v5 = (*a1 + 48 * *(*a1 - 4));
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
    return WTF::HashTable<WebCore::ProcessQualified<WTF::UUID>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashMap<WebCore::ProcessQualified<WTF::UUID>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::FastMalloc>::remove(a1, a2);
  }

  return a1;
}

WTF::StringImpl **WTF::HashTable<WebCore::ProcessQualified<WTF::UUID>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashMap<WebCore::ProcessQualified<WTF::UUID>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::FastMalloc>::remove(uint64_t *a1, WTF::StringImpl *a2)
{
  *a2 = 1;
  *(a2 + 1) = 0;
  *(a2 + 2) = -1;
  result = *(a2 + 4);
  if (result)
  {
    result = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(result, a2);
  }

  v4 = *a1;
  v5 = vadd_s32(*(*a1 - 16), 0xFFFFFFFF00000001);
  *(v4 - 16) = v5;
  v6 = *(v4 - 4);
  if (6 * v5.i32[1] < v6 && v6 >= 9)
  {

    return WTF::HashTable<WebCore::ProcessQualified<WTF::UUID>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashMap<WebCore::ProcessQualified<WTF::UUID>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::FastMalloc>::rehash(a1, v6 >> 1, 0);
  }

  return result;
}

uint64_t WTF::HashTable<WebCore::ProcessQualified<WTF::UUID>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashMap<WebCore::ProcessQualified<WTF::UUID>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t a3)
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

  v8 = WTF::fastMalloc((48 * a2 + 16));
  if (a2)
  {
    v10 = a2;
    v11 = v8 + 12;
    do
    {
      *(v11 - 4) = 0;
      *(v11 - 3) = 0;
      *(v11 - 2) = 0;
      *v11 = 0;
      v11 += 6;
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
      v14 = v5 + 48 * v12;
      v15 = *(v14 + 16);
      if (v15 != -1)
      {
        if (v15)
        {
          v16 = 0;
        }

        else
        {
          v16 = *v14 == 0;
        }

        if (v16)
        {
          v19 = *(v14 + 32);
          if (v19)
          {
            WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v19, v9);
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

          v20 = WTF::UUIDHash::hash((v5 + 48 * v12), v9);
          v21 = 0;
          do
          {
            v22 = v17 + 48 * (v20 & v18);
            v20 = ++v21 + (v20 & v18);
          }

          while (*v22 != 0 || *(v22 + 16) != 0);
          v24 = *(v22 + 32);
          if (v24)
          {
            WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v24, v9);
          }

          v25 = *(v14 + 16);
          *v22 = *v14;
          *(v22 + 16) = v25;
          *(v22 + 32) = 0;
          v26 = *(v14 + 32);
          *(v14 + 32) = 0;
          *(v22 + 32) = v26;
          v27 = *(v14 + 32);
          if (v27)
          {
            WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v27, v9);
          }

          if (v14 == a3)
          {
            v13 = v22;
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

uint64_t WTF::HashTable<WebCore::ProcessQualified<WTF::UUID>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashMap<WebCore::ProcessQualified<WTF::UUID>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t a2)
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

  return WTF::HashTable<WebCore::ProcessQualified<WTF::UUID>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashMap<WebCore::ProcessQualified<WTF::UUID>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkMDNSRegister::RegisterMDNSName,WebKit::WebMDNSRegister::registerMDNSName(WebCore::ProcessQualified<WTF::UUID>,WTF::String const&,WTF::CompletionHandler<void ()(WTF::String const&,std::optional<WebCore::MDNSRegisterError>)> &&)::$_1>(WebKit::WebMDNSRegister::registerMDNSName(WebCore::ProcessQualified<WTF::UUID>,WTF::String const&,WTF::CompletionHandler<void ()(WTF::String const&,std::optional<WebCore::MDNSRegisterError>)> &&)::$_1 &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::WebMDNSRegister::registerMDNSName(WebCore::ProcessQualified<WTF::UUID>,WTF::String const&,WTF::CompletionHandler<void ()(WTF::String const&,std::optional<WebCore::MDNSRegisterError>)> &&)::$_1,IPC::Decoder)#1},void,WebKit::WebMDNSRegister::registerMDNSName(WebCore::ProcessQualified<WTF::UUID>,WTF::String const&,WTF::CompletionHandler<void ()(WTF::String const&,std::optional<WebCore::MDNSRegisterError>)> &&)::$_1,IPC::Decoder>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F112DED0;
  v3 = a1[8];
  a1[8] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = a1[3];
  a1[3] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = a1[2];
  a1[2] = 0;
  if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5);
    WTF::fastFree(v5, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkMDNSRegister::RegisterMDNSName,WebKit::WebMDNSRegister::registerMDNSName(WebCore::ProcessQualified<WTF::UUID>,WTF::String const&,WTF::CompletionHandler<void ()(WTF::String const&,std::optional<WebCore::MDNSRegisterError>)> &&)::$_1>(WebKit::WebMDNSRegister::registerMDNSName(WebCore::ProcessQualified<WTF::UUID>,WTF::String const&,WTF::CompletionHandler<void ()(WTF::String const&,std::optional<WebCore::MDNSRegisterError>)> &&)::$_1 &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::WebMDNSRegister::registerMDNSName(WebCore::ProcessQualified<WTF::UUID>,WTF::String const&,WTF::CompletionHandler<void ()(WTF::String const&,std::optional<WebCore::MDNSRegisterError>)> &&)::$_1,IPC::Decoder)#1},void,WebKit::WebMDNSRegister::registerMDNSName(WebCore::ProcessQualified<WTF::UUID>,WTF::String const&,WTF::CompletionHandler<void ()(WTF::String const&,std::optional<WebCore::MDNSRegisterError>)> &&)::$_1,IPC::Decoder>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F112DED0;
  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *(this + 3);
  *(this + 3) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 2);
  *(this + 2) = 0;
  if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5);
    WTF::fastFree(v5, a2);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkMDNSRegister::RegisterMDNSName,WebKit::WebMDNSRegister::registerMDNSName(WebCore::ProcessQualified<WTF::UUID>,WTF::String const&,WTF::CompletionHandler<void ()(WTF::String const&,std::optional<WebCore::MDNSRegisterError>)> &&)::$_1>(WebKit::WebMDNSRegister::registerMDNSName(WebCore::ProcessQualified<WTF::UUID>,WTF::String const&,WTF::CompletionHandler<void ()(WTF::String const&,std::optional<WebCore::MDNSRegisterError>)> &&)::$_1 &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::WebMDNSRegister::registerMDNSName(WebCore::ProcessQualified<WTF::UUID>,WTF::String const&,WTF::CompletionHandler<void ()(WTF::String const&,std::optional<WebCore::MDNSRegisterError>)> &&)::$_1,IPC::Decoder)#1},void,WebKit::WebMDNSRegister::registerMDNSName(WebCore::ProcessQualified<WTF::UUID>,WTF::String const&,WTF::CompletionHandler<void ()(WTF::String const&,std::optional<WebCore::MDNSRegisterError>)> &&)::$_1,IPC::Decoder>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
{
  v46 = *MEMORY[0x1E69E9840];
  if (a3 && *a3)
  {
    IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, v44);
    if ((v44[1] & 1) == 0)
    {
      v12 = *a3;
      v13 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v14 = *(a3 + 3);
      if (!v14 || !v13 || ((*(*v14 + 16))(v14, v12), (v44[1] & 1) == 0))
      {
LABEL_37:
        v26 = *a3;
        v27 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v28 = *(a3 + 3);
        if (v28 && v27)
        {
          (*(*v28 + 16))(v28, v26);
        }

        goto LABEL_38;
      }
    }

    v5 = *(a3 + 1);
    v6 = *(a3 + 2);
    v7 = *a3;
    if (v5 <= &v6[-*a3])
    {
      *a3 = 0;
      *(a3 + 1) = 0;
      v15 = *(a3 + 3);
      if (v15)
      {
        if (v5)
        {
          (*(*v15 + 16))(v15);
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
      v8 = v6 + 1;
      *(a3 + 2) = v6 + 1;
      if (v6)
      {
        if (*v6 < 2u)
        {
          if (!*v6)
          {
            v11 = 0;
            LOWORD(v9) = 0;
            v10 = 0x10000;
            goto LABEL_32;
          }

          if (v5 <= v8 - v7)
          {
            v18 = 0;
            v19 = 0;
            *a3 = 0;
            *(a3 + 1) = 0;
            v20 = *(a3 + 3);
            if (v20)
            {
              (*(*v20 + 16))(v20);
              v19 = *a3;
              v18 = *(a3 + 1);
            }
          }

          else
          {
            *(a3 + 2) = v6 + 2;
            if (v6 != -1)
            {
              v9 = *v8;
              if (v9 < 5)
              {
                v10 = 0x10000;
                v11 = 256;
LABEL_32:
                if ((v10 | v11) >= 0x10000)
                {
                  if ((v44[1] & 1) == 0)
                  {
                    __break(1u);
                  }

                  v35 = v9 | v11;
                  v41 = v44[0];
                  v42 = v9 | v11;
                  v43 = 1;
                  v36 = *(a1 + 16);
                  if (v36 && (v37 = *(v36 + 8)) != 0)
                  {
                    WebKit::WebMDNSRegister::ref(*(v36 + 8));
                    v38 = *(a1 + 48);
                    *v44 = *(a1 + 32);
                    v45 = v38;
                    WebKit::WebMDNSRegister::finishedRegisteringMDNSName(v37, v44, (a1 + 64), &v41, v35, (a1 + 24));
                    result = WebKit::WebMDNSRegister::ref(v37);
                    if ((v43 & 1) == 0)
                    {
                      return result;
                    }
                  }

                  else
                  {
                    v44[0] = 0;
                    v39 = *(a1 + 24);
                    *(a1 + 24) = 0;
                    (*(*v39 + 16))(v39, v44, 259);
                    (*(*v39 + 8))(v39);
                    v40 = v44[0];
                    v44[0] = 0;
                    if (v40 && atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v40, v32);
                    }
                  }

                  goto LABEL_41;
                }

                if (v44[1])
                {
                  v25 = v44[0];
                  v44[0] = 0;
                  if (v25)
                  {
                    if (atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v25, v7);
                    }
                  }
                }

                goto LABEL_37;
              }

              goto LABEL_28;
            }

            v18 = v5;
            v19 = v7;
          }

          *a3 = 0;
          *(a3 + 1) = 0;
          v21 = *(a3 + 3);
          if (v21 && v18)
          {
            (*(*v21 + 16))(v21, v19, v18);
            v7 = *a3;
            v5 = *(a3 + 1);
          }

          else
          {
            v5 = 0;
            v7 = 0;
          }

LABEL_28:
          *a3 = 0;
          *(a3 + 1) = 0;
          v22 = *(a3 + 3);
          if (v22 && v5)
          {
            (*(*v22 + 16))(v22, v7);
          }

          v11 = 256;
LABEL_30:
          v7 = *a3;
          v23 = *(a3 + 1);
          *a3 = 0;
          *(a3 + 1) = 0;
          v24 = *(a3 + 3);
          if (v24 && v23)
          {
            (*(*v24 + 16))(v24, v7);
          }

          LOWORD(v9) = 0;
          v10 = 0;
          goto LABEL_32;
        }

LABEL_22:
        *a3 = 0;
        *(a3 + 1) = 0;
        v17 = *(a3 + 3);
        if (v17 && v5)
        {
          (*(*v17 + 16))(v17, v7);
        }

        v11 = 0;
        goto LABEL_30;
      }
    }

    *a3 = 0;
    *(a3 + 1) = 0;
    v16 = *(a3 + 3);
    if (v16)
    {
      if (v5)
      {
        (*(*v16 + 16))(v16);
        v7 = *a3;
        v5 = *(a3 + 1);
        goto LABEL_22;
      }
    }

    else
    {
      v5 = 0;
    }

    v7 = 0;
    goto LABEL_22;
  }

LABEL_38:
  v41 = 0;
  v42 = 0;
  v29 = *(a1 + 16);
  if (!v29 || (v30 = *(v29 + 8)) == 0)
  {
    v44[0] = 0;
    v34 = *(a1 + 24);
    *(a1 + 24) = 0;
    (*(*v34 + 16))(v34, v44, 259);
    (*(*v34 + 8))(v34);
    result = v44[0];
    v44[0] = 0;
    if (!result)
    {
      return result;
    }

    goto LABEL_44;
  }

  WebKit::WebMDNSRegister::ref(*(v29 + 8));
  v31 = *(a1 + 48);
  *v44 = *(a1 + 32);
  v45 = v31;
  WebKit::WebMDNSRegister::finishedRegisteringMDNSName(v30, v44, (a1 + 64), &v41, 0, (a1 + 24));
  WebKit::WebMDNSRegister::ref(v30);
LABEL_41:
  result = v41;
  v41 = 0;
  if (!result)
  {
    return result;
  }

LABEL_44:
  if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    return WTF::StringImpl::destroy(result, v32);
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebRTCResolver::setResolvedAddress(WTF::Vector<WebKit::WebRTCNetwork::IPAddress,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)::$_1,void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F112DEF8;
  WTF::Vector<webrtc::IPAddress,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 3), a2);
  v3 = a1[1];
  a1[1] = 0;
  if (!v3)
  {
    return a1;
  }

  if (atomic_load(v3))
  {
    atomic_fetch_add(v3, 0xFFFFFFFF);
    return a1;
  }

  result = 290;
  __break(0xC471u);
  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebRTCResolver::setResolvedAddress(WTF::Vector<WebKit::WebRTCNetwork::IPAddress,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)::$_1,void>::~CallableWrapper(WTF *a1, void *a2)
{
  *a1 = &unk_1F112DEF8;
  WTF::Vector<webrtc::IPAddress,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 24, a2);
  v4 = *(a1 + 1);
  *(a1 + 1) = 0;
  if (v4)
  {
    if (!atomic_load(v4))
    {
      result = 290;
      __break(0xC471u);
      return result;
    }

    atomic_fetch_add(v4, 0xFFFFFFFF);
  }

  return WTF::fastFree(a1, v3);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebRTCResolver::setResolvedAddress(WTF::Vector<WebKit::WebRTCNetwork::IPAddress,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)::$_1,void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E339C18);
  }

  result = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::LibWebRTCResolverIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::LibWebRTCResolver,WTF::RawPtrTraits<WebKit::LibWebRTCResolver>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::LibWebRTCResolverIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::LibWebRTCResolverIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::LibWebRTCResolver,WTF::RawPtrTraits<WebKit::LibWebRTCResolver>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::LibWebRTCResolverIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::LibWebRTCResolver,WTF::RawPtrTraits<WebKit::LibWebRTCResolver>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::LibWebRTCResolverIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::LibWebRTCResolverIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::LibWebRTCResolver,WTF::RawPtrTraits<WebKit::LibWebRTCResolver>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::LibWebRTCResolverIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::LibWebRTCResolverIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>((v1 + 16), *(a1 + 16));
  if (result)
  {
    v4 = result;
    ++*(result + 16);
    result = WebKit::LibWebRTCResolver::setResolvedAddress(result, (a1 + 24));
    v5 = *(v4 + 16);
    if (!v5)
    {
      __break(0xC471u);
      JUMPOUT(0x19E339C38);
    }

    *(v4 + 16) = v5 - 1;
  }

  return result;
}

uint64_t WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::LibWebRTCResolverIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::LibWebRTCResolver,WTF::RawPtrTraits<WebKit::LibWebRTCResolver>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::LibWebRTCResolverIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::LibWebRTCResolverIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::LibWebRTCResolver,WTF::RawPtrTraits<WebKit::LibWebRTCResolver>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::LibWebRTCResolverIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::LibWebRTCResolver,WTF::RawPtrTraits<WebKit::LibWebRTCResolver>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::LibWebRTCResolverIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::LibWebRTCResolverIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::LibWebRTCResolver,WTF::RawPtrTraits<WebKit::LibWebRTCResolver>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::LibWebRTCResolverIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::LibWebRTCResolverIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t a2)
{
  if (a2 == -1 || !a2)
  {
    __break(0xC471u);
    JUMPOUT(0x19E339CF0);
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

uint64_t WTF::Detail::CallableWrapper<WebKit::WebRTCResolver::resolvedAddressError(int)::$_0,void>::~CallableWrapper(uint64_t result)
{
  v1 = *(result + 8);
  *result = &unk_1F112DF20;
  *(result + 8) = 0;
  if (v1)
  {
    if (atomic_load(v1))
    {
      atomic_fetch_add(v1, 0xFFFFFFFF);
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebRTCResolver::resolvedAddressError(int)::$_0,void>::~CallableWrapper(WTF *a1, void *a2)
{
  v2 = *(a1 + 1);
  *a1 = &unk_1F112DF20;
  *(a1 + 1) = 0;
  if (!v2)
  {
    return WTF::fastFree(a1, a2);
  }

  if (atomic_load(v2))
  {
    atomic_fetch_add(v2, 0xFFFFFFFF);
    return WTF::fastFree(a1, a2);
  }

  result = 290;
  __break(0xC471u);
  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebRTCResolver::resolvedAddressError(int)::$_0,void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1)
  {
    goto LABEL_6;
  }

  result = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::LibWebRTCResolverIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::LibWebRTCResolver,WTF::RawPtrTraits<WebKit::LibWebRTCResolver>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::LibWebRTCResolverIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::LibWebRTCResolverIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::LibWebRTCResolver,WTF::RawPtrTraits<WebKit::LibWebRTCResolver>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::LibWebRTCResolverIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::LibWebRTCResolver,WTF::RawPtrTraits<WebKit::LibWebRTCResolver>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::LibWebRTCResolverIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::LibWebRTCResolverIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::LibWebRTCResolver,WTF::RawPtrTraits<WebKit::LibWebRTCResolver>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::LibWebRTCResolverIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::LibWebRTCResolverIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>((v1 + 16), *(a1 + 16));
  if (!result)
  {
    return result;
  }

  v4 = result;
  ++*(result + 16);
  *(result + 128) = *(a1 + 24);
  result = (*(**(result + 120) + 16))(*(result + 120));
  v5 = *(v4 + 16);
  if (!v5)
  {
LABEL_6:
    __break(0xC471u);
    JUMPOUT(0x19E339E68);
  }

  *(v4 + 16) = v5 - 1;
  return result;
}

WebCore::SecurityOriginData *WTF::HashTable<WebCore::SecurityOriginData,WTF::KeyValuePair<WebCore::SecurityOriginData,WTF::Vector<WTF::CompletionHandler<void ()(WebCore::NotificationPermission)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::SecurityOriginData,WTF::Vector<WTF::CompletionHandler<void ()(WebCore::NotificationPermission)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashMap<WebCore::SecurityOriginData,WTF::Vector<WTF::CompletionHandler<void ()(WebCore::NotificationPermission)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WTF::Vector<WTF::CompletionHandler<void ()(WebCore::NotificationPermission)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::begin(uint64_t *a1)
{
  v1 = *a1;
  if (!*a1)
  {
    return 0;
  }

  if (*(v1 - 3))
  {
    return WTF::HashTable<WebCore::SecurityOriginData,WTF::KeyValuePair<WebCore::SecurityOriginData,WTF::Vector<WTF::CompletionHandler<void ()(WebCore::NotificationPermission)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::SecurityOriginData,WTF::Vector<WTF::CompletionHandler<void ()(WebCore::NotificationPermission)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashMap<WebCore::SecurityOriginData,WTF::Vector<WTF::CompletionHandler<void ()(WebCore::NotificationPermission)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WTF::Vector<WTF::CompletionHandler<void ()(WebCore::NotificationPermission)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::makeIterator(a1, v1);
  }

  return (v1 + 48 * *(v1 - 1));
}

WebCore::SecurityOriginData *WTF::HashTable<WebCore::SecurityOriginData,WTF::KeyValuePair<WebCore::SecurityOriginData,WTF::Vector<WTF::CompletionHandler<void ()(WebCore::NotificationPermission)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::SecurityOriginData,WTF::Vector<WTF::CompletionHandler<void ()(WebCore::NotificationPermission)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashMap<WebCore::SecurityOriginData,WTF::Vector<WTF::CompletionHandler<void ()(WebCore::NotificationPermission)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WTF::Vector<WTF::CompletionHandler<void ()(WebCore::NotificationPermission)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::makeIterator(uint64_t *a1, WebCore::SecurityOriginData *a2)
{
  v2 = a2;
  v3 = *a1;
  if (*a1)
  {
    v4 = *(v3 - 4);
  }

  else
  {
    v4 = 0;
  }

  v5 = (v3 + 48 * v4);
  if (v5 != a2)
  {
    while (WTF::HashTable<WebCore::SecurityOriginData,WTF::KeyValuePair<WebCore::SecurityOriginData,unsigned long long>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::SecurityOriginData,unsigned long long>>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashMap<WebCore::SecurityOriginData,unsigned long long,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::isEmptyOrDeletedBucket(v2))
    {
      v2 = (v2 + 48);
      if (v2 == v5)
      {
        return v5;
      }
    }
  }

  return v2;
}

uint64_t WTF::Vector<WTF::CompletionHandler<void ()(WebCore::NotificationPermission)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  v4 = *a1;
  if (v3)
  {
    v5 = 8 * v3;
    do
    {
      v6 = *v4;
      *v4 = 0;
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }

      v4 = (v4 + 8);
      v5 -= 8;
    }

    while (v5);
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

uint64_t WTF::HashTable<WebCore::SecurityOriginData,WTF::KeyValuePair<WebCore::SecurityOriginData,WTF::Vector<WTF::CompletionHandler<void ()(WebCore::NotificationPermission)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::SecurityOriginData,WTF::Vector<WTF::CompletionHandler<void ()(WebCore::NotificationPermission)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashMap<WebCore::SecurityOriginData,WTF::Vector<WTF::CompletionHandler<void ()(WebCore::NotificationPermission)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WTF::Vector<WTF::CompletionHandler<void ()(WebCore::NotificationPermission)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t a2)
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

  return WTF::HashTable<WebCore::SecurityOriginData,WTF::KeyValuePair<WebCore::SecurityOriginData,WTF::Vector<WTF::CompletionHandler<void ()(WebCore::NotificationPermission)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::SecurityOriginData,WTF::Vector<WTF::CompletionHandler<void ()(WebCore::NotificationPermission)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashMap<WebCore::SecurityOriginData,WTF::Vector<WTF::CompletionHandler<void ()(WebCore::NotificationPermission)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WTF::Vector<WTF::CompletionHandler<void ()(WebCore::NotificationPermission)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

uint64_t WTF::HashTable<WebCore::SecurityOriginData,WTF::KeyValuePair<WebCore::SecurityOriginData,WTF::Vector<WTF::CompletionHandler<void ()(WebCore::NotificationPermission)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::SecurityOriginData,WTF::Vector<WTF::CompletionHandler<void ()(WebCore::NotificationPermission)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashMap<WebCore::SecurityOriginData,WTF::Vector<WTF::CompletionHandler<void ()(WebCore::NotificationPermission)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WTF::Vector<WTF::CompletionHandler<void ()(WebCore::NotificationPermission)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t a3)
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
    v12 = 0;
    v13 = v5;
    v32 = v5;
    while (1)
    {
      v14 = v4 + 48 * v11;
      if (*(v14 + 24))
      {
        break;
      }

      if (*v14 != -1)
      {
        goto LABEL_10;
      }

LABEL_41:
      if (++v11 == v13)
      {
        goto LABEL_46;
      }
    }

    if (*(v14 + 24) != 1)
    {
      mpark::throw_bad_variant_access(v7);
    }

LABEL_10:
    if (WebCore::SecurityOriginData::isNull((v4 + 48 * v11)))
    {
      v7 = WTF::Vector<WTF::CompletionHandler<void ()(WebCore::NotificationPermission)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v14 + 32, v15);
      if (!*(v14 + 24))
      {
        v16 = *(v14 + 8);
        *(v14 + 8) = 0;
        if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v16, v8);
        }

        v7 = *v14;
        *v14 = 0;
        if (v7)
        {
          if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            v7 = WTF::StringImpl::destroy(v7, v8);
          }
        }
      }

      *(v14 + 24) = -1;
    }

    else
    {
      v17 = v4;
      v18 = *a1;
      if (*a1)
      {
        v19 = *(v18 - 8);
      }

      else
      {
        v19 = 0;
      }

      v35 = -1640531527;
      v36 = 0;
      v37 = 0;
      WTF::add<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(&v35, v14);
      v20 = WTF::SuperFastHash::hash(&v35);
      v21 = 0;
      do
      {
        v22 = v20 & v19;
        v23 = v18 + 48 * (v20 & v19);
        isNull = WebCore::SecurityOriginData::isNull(v23);
        v20 = ++v21 + v22;
      }

      while (!isNull);
      WTF::Vector<WTF::CompletionHandler<void ()(WebCore::NotificationPermission)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v23 + 32, v24);
      v4 = v17;
      if (!*(v23 + 24))
      {
        v27 = *(v23 + 8);
        *(v23 + 8) = 0;
        if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v27, v26);
        }

        v28 = *v23;
        *v23 = 0;
        if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v28, v26);
        }
      }

      *(v23 + 24) = -1;
      mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment(v23);
      *(v23 + 32) = 0;
      *(v23 + 40) = 0;
      WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(v23 + 32, (v14 + 32));
      v7 = WTF::Vector<WTF::CompletionHandler<void ()(WebCore::NotificationPermission)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v14 + 32, v29);
      if (!*(v14 + 24))
      {
        v30 = *(v14 + 8);
        *(v14 + 8) = 0;
        if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v30, v8);
        }

        v7 = *v14;
        *v14 = 0;
        if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          v7 = WTF::StringImpl::destroy(v7, v8);
        }
      }

      *(v14 + 24) = -1;
      if (v14 == a3)
      {
        v12 = v23;
      }

      v13 = v32;
    }

    goto LABEL_41;
  }

  v12 = 0;
  result = 0;
  if (v4)
  {
LABEL_46:
    WTF::fastFree((v4 - 16), v8);
    return v12;
  }

  return result;
}

unint64_t WTF::Vector<WTF::CompletionHandler<void ()(WebCore::NotificationPermission)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(unsigned int *a1, unint64_t a2, unint64_t a3)
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

    WTF::Vector<WTF::CompletionHandler<void ()(WebCore::NotificationPermission)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WTF::CompletionHandler<void ()(WebCore::NotificationPermission)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

unsigned int *WTF::Vector<WTF::CompletionHandler<void ()(WebCore::NotificationPermission)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(unsigned int *result, unint64_t a2)
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

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPageProxy::RequestNotificationPermission,WebKit::NotificationPermissionRequestManager::startRequest(WebCore::SecurityOriginData const&,WTF::CompletionHandler<void ()(WebCore::NotificationPermission)> &&)::$_0>(WebKit::NotificationPermissionRequestManager::startRequest(WebCore::SecurityOriginData const&,WTF::CompletionHandler<void ()(WebCore::NotificationPermission)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::NotificationPermissionRequestManager::startRequest(WebCore::SecurityOriginData const&,WTF::CompletionHandler<void ()(WebCore::NotificationPermission)> &&)::$_0,IPC::Decoder)#1},void,WebKit::NotificationPermissionRequestManager::startRequest(WebCore::SecurityOriginData const&,WTF::CompletionHandler<void ()(WebCore::NotificationPermission)> &&)::$_0,IPC::Decoder>::~CallableWrapper(uint64_t a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F112DF48;
  v3 = *(a1 + 56);
  *(a1 + 56) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  if (!*(a1 + 48))
  {
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
  }

  *(a1 + 48) = -1;
  v6 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v6)
  {
    WTF::RefCounted<WebKit::NotificationPermissionRequestManager>::deref(v6);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPageProxy::RequestNotificationPermission,WebKit::NotificationPermissionRequestManager::startRequest(WebCore::SecurityOriginData const&,WTF::CompletionHandler<void ()(WebCore::NotificationPermission)> &&)::$_0>(WebKit::NotificationPermissionRequestManager::startRequest(WebCore::SecurityOriginData const&,WTF::CompletionHandler<void ()(WebCore::NotificationPermission)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::NotificationPermissionRequestManager::startRequest(WebCore::SecurityOriginData const&,WTF::CompletionHandler<void ()(WebCore::NotificationPermission)> &&)::$_0,IPC::Decoder)#1},void,WebKit::NotificationPermissionRequestManager::startRequest(WebCore::SecurityOriginData const&,WTF::CompletionHandler<void ()(WebCore::NotificationPermission)> &&)::$_0,IPC::Decoder>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F112DF48;
  v3 = *(this + 7);
  *(this + 7) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  if (!*(this + 48))
  {
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
  }

  *(this + 48) = -1;
  v6 = *(this + 2);
  *(this + 2) = 0;
  if (v6)
  {
    WTF::RefCounted<WebKit::NotificationPermissionRequestManager>::deref(v6);
  }

  return WTF::fastFree(this, a2);
}

WebKit::NotificationPermissionRequestManager *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPageProxy::RequestNotificationPermission,WebKit::NotificationPermissionRequestManager::startRequest(WebCore::SecurityOriginData const&,WTF::CompletionHandler<void ()(WebCore::NotificationPermission)> &&)::$_0>(WebKit::NotificationPermissionRequestManager::startRequest(WebCore::SecurityOriginData const&,WTF::CompletionHandler<void ()(WebCore::NotificationPermission)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::NotificationPermissionRequestManager::startRequest(WebCore::SecurityOriginData const&,WTF::CompletionHandler<void ()(WebCore::NotificationPermission)> &&)::$_0,IPC::Decoder)#1},void,WebKit::NotificationPermissionRequestManager::startRequest(WebCore::SecurityOriginData const&,WTF::CompletionHandler<void ()(WebCore::NotificationPermission)> &&)::$_0,IPC::Decoder>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
{
  if (a3 && *a3)
  {
    v4 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
    v5 = (v4 & (v4 << 23 >> 31));
  }

  else
  {
    v5 = 0;
  }

  return std::apply[abi:sn200100]<WebKit::NotificationPermissionRequestManager::startRequest(WebCore::SecurityOriginData const&,WTF::CompletionHandler<void ()(WebCore::NotificationPermission)> &&)::$_0,std::tuple<BOOL>>(a1 + 8, v5);
}

WebKit::NotificationPermissionRequestManager *std::apply[abi:sn200100]<WebKit::NotificationPermissionRequestManager::startRequest(WebCore::SecurityOriginData const&,WTF::CompletionHandler<void ()(WebCore::NotificationPermission)> &&)::$_0,std::tuple<BOOL>>(uint64_t a1, void *a2)
{
  v2 = a2;
  v44 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v38 = v3;
  ++*v3;
  v39 = v3;
  LOBYTE(v40) = 0;
  v42 = -1;
  LODWORD(v4) = *(a1 + 40);
  if (!*(a1 + 40))
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
    }

    *&v40 = v5;
    v4 = *(a1 + 24);
    if (v4)
    {
      atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
    }

    *(&v40 + 1) = v4;
    v41 = *(a1 + 32);
    LOBYTE(v4) = *(a1 + 40);
    goto LABEL_7;
  }

  if (v4 != 255)
  {
    v40 = *(a1 + 16);
LABEL_7:
    v42 = v4;
  }

  v6 = *(a1 + 48);
  *(a1 + 48) = 0;
  v43 = v6;
  {
    v7 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v35 = WebKit::WebProcess::operator new(0x370, a2);
    v7 = WebKit::WebProcess::WebProcess(v35);
    WebKit::WebProcess::singleton(void)::process = v7;
  }

  WebKit::WebProcess::protectedNotificationManager(v7, &v37);
  v8 = v37;
  WebCore::SecurityOriginData::toString(v36, &v40);
  WebKit::WebNotificationManager::didUpdateNotificationDecision(v8, v36, v2 & 1);
  isNull = v36[0];
  v36[0] = 0;
  if (isNull && atomic_fetch_add_explicit(isNull, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    isNull = WTF::StringImpl::destroy(isNull, v9);
    if (!v8)
    {
      goto LABEL_14;
    }
  }

  else if (!v8)
  {
    goto LABEL_14;
  }

  if (!*(*(v8 + 24) + 8))
  {
    goto LABEL_75;
  }

LABEL_14:
  v14 = v3[1];
  v12 = v3 + 1;
  v13 = v14;
  if (!v14)
  {
    goto LABEL_40;
  }

  if (v42)
  {
    if (v42 != 1)
    {
LABEL_63:
      mpark::throw_bad_variant_access(isNull);
    }

    goto LABEL_19;
  }

  if (v40 == 0 && (v41 & 0x10000) == 0)
  {
    __break(0xC471u);
    JUMPOUT(0x19E33AAE0);
  }

  if (v40 == -1)
  {
LABEL_75:
    __break(0xC471u);
    JUMPOUT(0x19E33AAC0);
  }

LABEL_19:
  v15 = *(v13 - 8);
  LODWORD(v37) = -1640531527;
  WORD2(v37) = 0;
  BYTE6(v37) = 0;
  WTF::add<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(&v37, &v40);
  v16 = WTF::SuperFastHash::hash(&v37) & v15;
  v17 = v13 + 48 * v16;
  isNull = WebCore::SecurityOriginData::isNull(v17);
  if (isNull)
  {
LABEL_20:
    v18 = *v12;
    if (*v12)
    {
      v17 = v18 + 48 * *(v18 - 4);
LABEL_22:
      v18 += 48 * *(v18 - 4);
      goto LABEL_23;
    }

    goto LABEL_40;
  }

  v34 = 1;
  while (!*(v17 + 24))
  {
    if (*v17 != -1)
    {
      goto LABEL_59;
    }

LABEL_60:
    v16 = (v16 + v34) & v15;
    v17 = v13 + 48 * v16;
    isNull = WebCore::SecurityOriginData::isNull(v17);
    ++v34;
    if (isNull)
    {
      goto LABEL_20;
    }
  }

  if (*(v17 + 24) != 1)
  {
    goto LABEL_63;
  }

LABEL_59:
  if ((WebCore::operator==() & 1) == 0)
  {
    goto LABEL_60;
  }

  v18 = *v12;
  if (*v12)
  {
    goto LABEL_22;
  }

LABEL_23:
  if (v18 == v17)
  {
LABEL_40:
    *&v10 = 0;
    *v36 = v10;
    v37 = v10;
    WTF::Vector<WTF::CompletionHandler<void ()(WebCore::NotificationPermission)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v37, v9);
    goto LABEL_41;
  }

  v36[0] = *(v17 + 32);
  v19 = *(v17 + 40);
  *(v17 + 32) = 0;
  *(v17 + 40) = 0;
  v36[1] = v19;
  v20 = *v12;
  if (!*v12 || (v20 += 48 * *(v20 - 4), v20 != v17))
  {
    if (v20 != v17)
    {
      if (!*(v17 + 24))
      {
        v21 = *(v17 + 8);
        *(v17 + 8) = 0;
        if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v21, v9);
        }

        v22 = *v17;
        *v17 = 0;
        if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v22, v9);
        }
      }

      *v17 = -1;
      *(v17 + 8) = 0;
      *(v17 + 16) = 0;
      *(v17 + 24) = 0;
      WTF::Vector<WTF::CompletionHandler<void ()(WebCore::NotificationPermission)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v17 + 32, v9);
      v23 = *v12;
      v24 = vadd_s32(*(*v12 - 16), 0xFFFFFFFF00000001);
      *(v23 - 16) = v24;
      v25 = *(v23 - 4);
      if (6 * v24.i32[1] < v25 && v25 >= 9)
      {
        WTF::HashTable<WebCore::SecurityOriginData,WTF::KeyValuePair<WebCore::SecurityOriginData,WTF::Vector<WTF::CompletionHandler<void ()(WebCore::NotificationPermission)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::SecurityOriginData,WTF::Vector<WTF::CompletionHandler<void ()(WebCore::NotificationPermission)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashMap<WebCore::SecurityOriginData,WTF::Vector<WTF::CompletionHandler<void ()(WebCore::NotificationPermission)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WTF::Vector<WTF::CompletionHandler<void ()(WebCore::NotificationPermission)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::rehash(v12, v25 >> 1, 0);
      }
    }
  }

LABEL_41:
  if (v2)
  {
    v27 = 2;
  }

  else
  {
    v27 = 1;
  }

  WebKit::NotificationPermissionRequestManager::callPermissionHandlersWith(v36, v27);
  WTF::Vector<WTF::CompletionHandler<void ()(WebCore::NotificationPermission)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v36, v28);
  v30 = v43;
  v43 = 0;
  if (v30)
  {
    (*(*v30 + 8))(v30);
  }

  if (!v42)
  {
    v31 = *(&v40 + 1);
    *(&v40 + 1) = 0;
    if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v31, v29);
    }

    v32 = v40;
    *&v40 = 0;
    if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v32, v29);
    }
  }

  v42 = -1;
  result = v39;
  v39 = 0;
  if (result)
  {
    return WTF::RefCounted<WebKit::NotificationPermissionRequestManager>::deref(result);
  }

  return result;
}