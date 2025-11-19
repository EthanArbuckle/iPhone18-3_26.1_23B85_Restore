unint64_t WTF::Vector<WTF::NativePromiseProducer<WTF::Ref<WebCore::WritableStreamSink,WTF::RawPtrTraits<WebCore::WritableStreamSink>,WTF::DefaultRefDerefTraits<WebCore::WritableStreamSink>>,void,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
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

    WTF::Vector<WTF::NativePromiseProducer<WTF::Ref<WebCore::WritableStreamSink,WTF::RawPtrTraits<WebCore::WritableStreamSink>,WTF::DefaultRefDerefTraits<WebCore::WritableStreamSink>>,void,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WTF::NativePromiseProducer<WTF::Ref<WebCore::WritableStreamSink,WTF::RawPtrTraits<WebCore::WritableStreamSink>,WTF::DefaultRefDerefTraits<WebCore::WritableStreamSink>>,void,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

atomic_uint **WTF::Vector<WTF::NativePromiseProducer<WTF::Ref<WebCore::WritableStreamSink,WTF::RawPtrTraits<WebCore::WritableStreamSink>,WTF::DefaultRefDerefTraits<WebCore::WritableStreamSink>>,void,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(atomic_uint **result, unint64_t a2)
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
          result = WTF::NativePromiseProducer<WTF::Ref<WebCore::WritableStreamSink,WTF::RawPtrTraits<WebCore::WritableStreamSink>,WTF::DefaultRefDerefTraits<WebCore::WritableStreamSink>>,void,0u>::~NativePromiseProducer(result) + 5;
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

void *_ZN3WTF6Detail15CallableWrapperIZNS_13NativePromiseINSt3__18optionalINS_23ObjectIdentifierGenericIN7WebCore32WebTransportStreamIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEN3IPC5ErrorELj0EE11whenSettledIZN6WebKit19WebTransportSession25createBidirectionalStreamEvE3__0EEDaRNS_34GuaranteedSerialFunctionDispatcherEOT_RKNS_6Logger17LogSiteIdentifierEEUlONSt12experimental15fundamentals_v38expectedISB_SD_EEE_NS_3RefINS2_INS6_53WebTransportBidirectionalStreamConstructionParametersEvLj0EEENS_12RawPtrTraitsIS10_EENS_21DefaultRefDerefTraitsIS10_EEEEJSW_EED1Ev(void *a1, void *a2)
{
  *a1 = &unk_1F112D118;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZNS_13NativePromiseINSt3__18optionalINS_23ObjectIdentifierGenericIN7WebCore32WebTransportStreamIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEN3IPC5ErrorELj0EE11whenSettledIZN6WebKit19WebTransportSession25createBidirectionalStreamEvE3__0EEDaRNS_34GuaranteedSerialFunctionDispatcherEOT_RKNS_6Logger17LogSiteIdentifierEEUlONSt12experimental15fundamentals_v38expectedISB_SD_EEE_NS_3RefINS2_INS6_53WebTransportBidirectionalStreamConstructionParametersEvLj0EEENS_12RawPtrTraitsIS10_EENS_21DefaultRefDerefTraitsIS10_EEEEJSW_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F112D118;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

WTF::Lock *_ZN3WTF6Detail15CallableWrapperIZNS_13NativePromiseINSt3__18optionalINS_23ObjectIdentifierGenericIN7WebCore32WebTransportStreamIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEN3IPC5ErrorELj0EE11whenSettledIZN6WebKit19WebTransportSession25createBidirectionalStreamEvE3__0EEDaRNS_34GuaranteedSerialFunctionDispatcherEOT_RKNS_6Logger17LogSiteIdentifierEEUlONSt12experimental15fundamentals_v38expectedISB_SD_EEE_NS_3RefINS2_INS6_53WebTransportBidirectionalStreamConstructionParametersEvLj0EEENS_12RawPtrTraitsIS10_EENS_21DefaultRefDerefTraitsIS10_EEEEJSW_EE4callESW_@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a1 + 16);
  if (v6)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(v6, *(a1 + 8), &v32);
  }

  else
  {
    v32 = 0;
  }

  if (!*(a2 + 16) && *(a2 + 8) == 1 && v32)
  {
    WebKit::WebTransportSendStreamSink::create(&v26, v32, *a2);
    v7 = v26;
    v26 = 0;
    v27 = v7;
    WebCore::WebTransportBidirectionalStreamConstructionParameters::WebTransportBidirectionalStreamConstructionParameters();
    v29 = 0uLL;
    v30 = "operator()";
    v31 = 0;
    v8 = WTF::fastMalloc(0x88);
    v9 = WTF::NativePromise<WebCore::WebTransportBidirectionalStreamConstructionParameters,void,0u>::NativePromise(v8, &v29);
    v10 = 0;
    *a3 = v9;
    v11 = (v9 + 48);
    v34 = v11;
    v35 = 1;
    atomic_compare_exchange_strong_explicit(v11, &v10, 1u, memory_order_acquire, memory_order_acquire);
    if (v10)
    {
      v11 = MEMORY[0x19EB01E30]();
    }

    v12 = WTF::NativePromiseBase::logChannel(v11);
    if (*v12 && v12[16] >= 4u)
    {
      WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [27],WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>>(v12, &v29, " resolving ", v8);
    }

    WebCore::WebTransportBidirectionalStreamConstructionParameters::isolatedCopy();
    if (v8[80] > 1u)
    {
      if (v8[80] == 2)
      {
        v22 = *(v8 + 7);
        *(v8 + 7) = 0;
        if (v22)
        {
          (*(*v22 + 8))(v22);
        }
      }
    }

    else if (v8[80])
    {
      if (!v8[72])
      {
        WebCore::WebTransportBidirectionalStreamConstructionParameters::~WebTransportBidirectionalStreamConstructionParameters((v8 + 56));
      }

      v8[72] = -1;
    }

    v8[80] = -1;
    WebCore::WebTransportBidirectionalStreamConstructionParameters::WebTransportBidirectionalStreamConstructionParameters();
    v8[72] = 0;
    v23 = 1;
    v8[80] = 1;
    WTF::NativePromise<WebCore::WebTransportBidirectionalStreamConstructionParameters,void,0u>::dispatchAll(v8, &v34);
    WebCore::WebTransportBidirectionalStreamConstructionParameters::~WebTransportBidirectionalStreamConstructionParameters(v33);
    if (v35 == 1)
    {
      v24 = v34;
      atomic_compare_exchange_strong_explicit(v34, &v23, 0, memory_order_release, memory_order_relaxed);
      if (v23 != 1)
      {
        WTF::Lock::unlockSlow(v24);
      }
    }

    WebCore::WebTransportBidirectionalStreamConstructionParameters::~WebTransportBidirectionalStreamConstructionParameters(v28);
    v25 = v27;
    v27 = 0;
    if (v25)
    {
      if (v25[2] == 1)
      {
        (*(*v25 + 8))(v25);
      }

      else
      {
        --v25[2];
      }
    }

    result = v26;
    if (v26)
    {
      if (v26[2] == 1)
      {
        result = (*(*v26 + 8))();
      }

      else
      {
        --v26[2];
      }
    }
  }

  else
  {
    v29 = 0uLL;
    v30 = "operator()";
    v31 = 0;
    v13 = WTF::fastMalloc(0x88);
    v14 = WTF::NativePromise<WebCore::WebTransportBidirectionalStreamConstructionParameters,void,0u>::NativePromise(v13, &v29);
    v15 = 0;
    *a3 = v14;
    v16 = (v14 + 48);
    v34 = v16;
    v35 = 1;
    atomic_compare_exchange_strong_explicit(v16, &v15, 1u, memory_order_acquire, memory_order_acquire);
    if (v15)
    {
      v16 = MEMORY[0x19EB01E30]();
    }

    v17 = WTF::NativePromiseBase::logChannel(v16);
    if (*v17 && v17[16] >= 4u)
    {
      WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [27],WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>>(v17, &v29, " rejecting ", v13);
    }

    if (v13[80] > 1u)
    {
      if (v13[80] == 2)
      {
        v18 = *(v13 + 7);
        *(v13 + 7) = 0;
        if (v18)
        {
          (*(*v18 + 8))(v18);
        }
      }
    }

    else if (v13[80] && !v13[72])
    {
      WebCore::WebTransportBidirectionalStreamConstructionParameters::~WebTransportBidirectionalStreamConstructionParameters((v13 + 56));
    }

    v19 = 1;
    v13[72] = 1;
    v13[80] = 1;
    result = WTF::NativePromise<WebCore::WebTransportBidirectionalStreamConstructionParameters,void,0u>::dispatchAll(v13, &v34);
    if (v35 == 1)
    {
      result = v34;
      atomic_compare_exchange_strong_explicit(v34, &v19, 0, memory_order_release, memory_order_relaxed);
      if (v19 != 1)
      {
        result = WTF::Lock::unlockSlow(result);
      }
    }
  }

  v21 = v32;
  v32 = 0;
  if (v21)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebTransportSession,(WTF::DestructionThread)2>::deref((v21 + 32));
  }

  return result;
}

uint64_t WTF::NativePromise<WebCore::WebTransportBidirectionalStreamConstructionParameters,void,0u>::NativePromise(uint64_t a1, _OWORD *a2)
{
  v33[2] = *MEMORY[0x1E69E9840];
  *(a1 + 8) = 1;
  *a1 = &unk_1F112D140;
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

uint64_t WTF::NativePromise<WebCore::WebTransportBidirectionalStreamConstructionParameters,void,0u>::assertIsDead(uint64_t result)
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
      result = WTF::NativePromiseProducer<WebCore::WebTransportBidirectionalStreamConstructionParameters,void,0u>::assertIsDead(v5);
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

uint64_t WTF::NativePromise<WebCore::WebTransportBidirectionalStreamConstructionParameters,void,0u>::~NativePromise(_BYTE *a1)
{
  v1 = WTF::NativePromise<WebCore::WebTransportBidirectionalStreamConstructionParameters,void,0u>::~NativePromise(a1);

  return WTF::fastFree(v1, v2);
}

{
  v35[2] = *MEMORY[0x1E69E9840];
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
    WTF::String::String(&v31, "destroying ");
    WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(&v30, a1);
    *buf = v31;
    v29[0] = v30;
    result = WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(buf, v29, &v32);
    if (!v32)
    {
      __break(0xC471u);
      return result;
    }

    v7 = v30;
    v30 = 0;
    if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v6);
    }

    v8 = v31;
    v31 = 0;
    if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v6);
    }

    v9 = *(v4 + 4);
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      WTF::String::utf8();
      v12 = v29[0] ? v29[0] + 16 : 0;
      *buf = 136446210;
      *&buf[4] = v12;
      _os_log_impl(&dword_19D52D000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
      v10 = v29[0];
      v29[0] = 0;
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
              v34 = 0;
              WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(v35, a1);
              WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v29, buf, 2uLL);
              (*(*v20 + 16))(v20, v4, 4, v29);
              WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v29, v21);
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

    v25 = v32;
    v32 = 0;
    if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v25, v11);
    }
  }

  WTF::NativePromise<WebCore::WebTransportBidirectionalStreamConstructionParameters,void,0u>::assertIsDead(a1);
  WTF::Vector<WTF::NativePromiseProducer<WebCore::WebTransportBidirectionalStreamConstructionParameters,void,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 112), v26);
  WTF::Vector<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 88), v27);
  if (a1[80] > 1u)
  {
    if (a1[80] == 2)
    {
      v28 = *(a1 + 7);
      *(a1 + 7) = 0;
      if (v28)
      {
        (*(*v28 + 8))(v28);
      }
    }
  }

  else if (a1[80])
  {
    if (!a1[72])
    {
      WebCore::WebTransportBidirectionalStreamConstructionParameters::~WebTransportBidirectionalStreamConstructionParameters((a1 + 56));
    }

    a1[72] = -1;
  }

  a1[80] = -1;
  return a1;
}

atomic_uint **WTF::NativePromiseProducer<WebCore::WebTransportBidirectionalStreamConstructionParameters,void,0u>::assertIsDead(atomic_uint **result)
{
  v1 = *result;
  if (*result)
  {
    atomic_fetch_add(v1 + 2, 1u);
    result = WTF::NativePromise<WebCore::WebTransportBidirectionalStreamConstructionParameters,void,0u>::assertIsDead(v1);
    if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v1 + 2);
      v2 = *(*v1 + 16);

      return v2(v1);
    }
  }

  return result;
}

uint64_t WTF::Vector<WTF::NativePromiseProducer<WebCore::WebTransportBidirectionalStreamConstructionParameters,void,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = *a1;
    v5 = 40 * v3;
    do
    {
      v4 = WTF::NativePromiseProducer<WebCore::WebTransportBidirectionalStreamConstructionParameters,void,0u>::~NativePromiseProducer(v4) + 5;
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

atomic_uint **WTF::NativePromiseProducer<WebCore::WebTransportBidirectionalStreamConstructionParameters,void,0u>::~NativePromiseProducer(atomic_uint **a1)
{
  WTF::NativePromiseProducer<WebCore::WebTransportBidirectionalStreamConstructionParameters,void,0u>::assertIsDead(a1);
  v2 = *a1;
  *a1 = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 16))(v2);
  }

  return a1;
}

uint64_t WTF::NativePromise<WebCore::WebTransportBidirectionalStreamConstructionParameters,void,0u>::dispatchAll(uint64_t a1, atomic_uchar *volatile *a2)
{
  *&v33 = &v34;
  *(&v33 + 1) = 1;
  __dst = &v31;
  v30 = 1;
  WTF::VectorBuffer<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::FastMalloc>::adopt(&__dst, (a1 + 88));
  v4 = *(a1 + 100);
  if (v4)
  {
    WTF::VectorDestructor<true,WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>>::destruct(*(a1 + 88), (*(a1 + 88) + 8 * v4));
  }

  WTF::VectorBuffer<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::FastMalloc>::adopt((a1 + 88), &v33);
  WTF::Vector<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v33, v5);
  *&v6 = 0;
  v7 = *(a1 + 112);
  v26 = v7;
  v8 = *(a1 + 124);
  v27 = *(a1 + 120);
  v28 = v8;
  v33 = v6;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  v10 = WTF::Vector<WTF::NativePromiseProducer<WebCore::WebTransportBidirectionalStreamConstructionParameters,void,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v33, v9);
  if (HIDWORD(v30))
  {
    v12 = __dst;
    v13 = 8 * HIDWORD(v30);
    do
    {
      v14 = *v12;
      if (!*(*v12 + 16) || (v15 = atomic_load((a1 + 129)), v15 == 1) && (v10 = (*(**(v14 + 16) + 24))(*(v14 + 16)), v10))
      {
        if (*(v14 + 56) == 1)
        {
          *&v33 = v14;
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
            v10 = WTF::Logger::log<char [32],WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>,char [21],void const*,char [11],WTF::Logger::LogSiteIdentifier,char [2]>(v10, a1, &v33, (v14 + 24));
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

          if (WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>::hasRunnable(a1))
          {
            WTF::NativePromise<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError,0u>::takeResultRunnable(&v32, a1);
            v21 = v32;
            (*(*v32 + 16))(&v33, v32);
            (*(*v14 + 24))(v14, a1, &v33);
            if (!v34)
            {
              WebCore::WebTransportBidirectionalStreamConstructionParameters::~WebTransportBidirectionalStreamConstructionParameters(&v33);
            }

            v34 = -1;
            (*(*v21 + 8))(v21);
          }

          else
          {
            WTF::NativePromise<WebCore::WebTransportBidirectionalStreamConstructionParameters,void,0u>::takeResult(&v33, a1);
            (*(*v14 + 24))(v14, a1, &v33);
            if (!v34)
            {
              WebCore::WebTransportBidirectionalStreamConstructionParameters::~WebTransportBidirectionalStreamConstructionParameters(&v33);
            }
          }

          v22 = 0;
          v10 = *a2;
          atomic_compare_exchange_strong_explicit(*a2, &v22, 1u, memory_order_acquire, memory_order_acquire);
          if (v22)
          {
            v10 = MEMORY[0x19EB01E30]();
          }
        }
      }

      else
      {
        v16 = *(v14 + 16);
        atomic_fetch_add((v14 + 8), 1u);
        atomic_fetch_add((a1 + 8), 1u);
        v17 = WTF::fastMalloc(0x18);
        *v17 = &unk_1F112D168;
        v17[1] = v14;
        v17[2] = a1;
        *&v33 = v17;
        (*(*v16 + 16))(v16, &v33);
        v10 = v33;
        *&v33 = 0;
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
    v23 = 40 * v8;
    do
    {
      WTF::NativePromise<WebCore::WebTransportBidirectionalStreamConstructionParameters,void,0u>::settleChainedPromise(a1, v7);
      v7 += 40;
      v23 -= 40;
    }

    while (v23);
  }

  WTF::Vector<WTF::NativePromiseProducer<WebCore::WebTransportBidirectionalStreamConstructionParameters,void,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v26, v11);
  return WTF::Vector<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&__dst, v24);
}

atomic_uint **WTF::NativePromise<WebCore::WebTransportBidirectionalStreamConstructionParameters,void,0u>::settleChainedPromise(uint64_t a1, uint64_t a2)
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
    WTF::NativePromise<WebCore::WebTransportBidirectionalStreamConstructionParameters,void,0u>::settleAsChainedPromise<WTF::NativePromise<WebCore::WebTransportBidirectionalStreamConstructionParameters,void,0u>::Storage>(v2, a1 + 56, &v5);
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
    WTF::NativePromise<WebCore::WebTransportBidirectionalStreamConstructionParameters,void,0u>::settleAsChainedPromise<WTF::NativePromise<WebCore::WebTransportBidirectionalStreamConstructionParameters,void,0u>::Storage>(0, a1 + 56, &v5);
  }

  return WTF::NativePromiseProducer<WebCore::WebTransportBidirectionalStreamConstructionParameters,void,0u>::~NativePromiseProducer(&v9);
}

_BYTE *WTF::NativePromise<WebCore::WebTransportBidirectionalStreamConstructionParameters,void,0u>::takeResult(mpark *a1, uint64_t a2)
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

  result = mpark::detail::move_assignment<mpark::detail::traits<WebCore::WebTransportBidirectionalStreamConstructionParameters,WTF::detail::VoidPlaceholder>,(mpark::detail::Trait)1>::move_assignment(v3, a2 + 56);
  v7 = 1;
  atomic_compare_exchange_strong_explicit((a2 + 48), &v7, 0, memory_order_release, memory_order_relaxed);
  if (v7 != 1)
  {

    return WTF::Lock::unlockSlow(v5);
  }

  return result;
}

_BYTE *mpark::detail::move_assignment<mpark::detail::traits<WebCore::WebTransportBidirectionalStreamConstructionParameters,WTF::detail::VoidPlaceholder>,(mpark::detail::Trait)1>::move_assignment(_BYTE *result, uint64_t a2)
{
  *result = 0;
  result[16] = -1;
  v2 = *(a2 + 16);
  if (v2 != 255)
  {
    if (!*(a2 + 16))
    {
      result = WebCore::WebTransportBidirectionalStreamConstructionParameters::WebTransportBidirectionalStreamConstructionParameters();
      LOBYTE(v2) = *(a2 + 16);
    }

    result[16] = v2;
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WTF::NativePromise<WebCore::WebTransportBidirectionalStreamConstructionParameters,void,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<WebCore::WebTransportBidirectionalStreamConstructionParameters,void,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F112D168;
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

uint64_t WTF::Detail::CallableWrapper<WTF::NativePromise<WebCore::WebTransportBidirectionalStreamConstructionParameters,void,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<WebCore::WebTransportBidirectionalStreamConstructionParameters,void,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F112D168;
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

void WTF::Detail::CallableWrapper<WTF::NativePromise<WebCore::WebTransportBidirectionalStreamConstructionParameters,void,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<WebCore::WebTransportBidirectionalStreamConstructionParameters,void,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::call(WTF::NativePromiseBase *a1)
{
  v2 = *(a1 + 1);
  v1 = *(a1 + 2);
  if (*(v2 + 56) == 1)
  {
    v11[0] = *(a1 + 1);
    v3 = WTF::NativePromiseBase::logChannel(a1);
    if (*v3)
    {
      v4 = v3[16] >= 4u;
    }

    else
    {
      v4 = 0;
    }

    if (v4)
    {
      WTF::Logger::log<char [32],WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>,char [21],void const*,char [11],WTF::Logger::LogSiteIdentifier,char [2]>(v3, v1, v11, (v2 + 24));
    }
  }

  else
  {
    hasRunnable = WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>::hasRunnable(*(a1 + 2));
    v7 = *(a1 + 1);
    v8 = *(a1 + 2);
    if (hasRunnable)
    {
      WTF::NativePromise<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError,0u>::takeResultRunnable(&v10, v8);
      v9 = v10;
      (*(*v10 + 16))(v11, v10);
      (*(*v7 + 24))(v7, v8, v11);
      if (!v12)
      {
        WebCore::WebTransportBidirectionalStreamConstructionParameters::~WebTransportBidirectionalStreamConstructionParameters(v11);
      }

      v12 = -1;
      (*(*v9 + 8))(v9);
    }

    else
    {
      WTF::NativePromise<WebCore::WebTransportBidirectionalStreamConstructionParameters,void,0u>::takeResult(v11, v8);
      (*(*v7 + 24))(v7, v8, v11);
      if (!v12)
      {
        WebCore::WebTransportBidirectionalStreamConstructionParameters::~WebTransportBidirectionalStreamConstructionParameters(v11);
      }
    }
  }
}

WTF::Lock *WTF::NativePromise<WebCore::WebTransportBidirectionalStreamConstructionParameters,void,0u>::settleAsChainedPromise<WTF::NativePromise<WebCore::WebTransportBidirectionalStreamConstructionParameters,void,0u>::Storage>(_BYTE *a1, uint64_t a2, WTF::Logger::LogSiteIdentifier *a3)
{
  v6 = 0;
  v7 = (a1 + 48);
  v21 = v7;
  v22 = 1;
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

  v10 = a1[80];
  v11 = *(a2 + 24);
  if (v10 != 255 || v11 != 255)
  {
    switch(v11)
    {
      case 255:
        if (a1[80] > 1u)
        {
          if (v10 == 2)
          {
            v12 = *(a1 + 7);
            *(a1 + 7) = 0;
            if (v12)
            {
              (*(*v12 + 8))(v12);
            }
          }
        }

        else if (a1[80])
        {
          if (!a1[72])
          {
            WebCore::WebTransportBidirectionalStreamConstructionParameters::~WebTransportBidirectionalStreamConstructionParameters((a1 + 56));
          }

          a1[72] = -1;
        }

        v13 = -1;
        goto LABEL_29;
      case 2:
        if (a1[80] > 1u)
        {
          if (v10 != 255)
          {
            v19 = *a2;
            *a2 = 0;
            v20 = *(a1 + 7);
            *(a1 + 7) = v19;
            if (v20)
            {
              (*(*v20 + 8))(v20);
            }

            goto LABEL_30;
          }
        }

        else if (a1[80])
        {
          if (!a1[72])
          {
            WebCore::WebTransportBidirectionalStreamConstructionParameters::~WebTransportBidirectionalStreamConstructionParameters((a1 + 56));
          }

          a1[72] = -1;
        }

        v17 = *a2;
        *a2 = 0;
        *(a1 + 7) = v17;
        v13 = 2;
        goto LABEL_29;
      case 1:
        if (a1[80] > 1u)
        {
          if (v10 == 2)
          {
            v16 = *(a1 + 7);
            *(a1 + 7) = 0;
            if (v16)
            {
              (*(*v16 + 8))(v16);
            }
          }
        }

        else if (a1[80])
        {
          mpark::detail::move_assignment<mpark::detail::traits<WebCore::WebTransportBidirectionalStreamConstructionParameters,WTF::detail::VoidPlaceholder>,(mpark::detail::Trait)1>::move_assignment(v23, a2);
          mpark::detail::move_assignment<mpark::detail::traits<WebCore::WebTransportBidirectionalStreamConstructionParameters,WTF::detail::VoidPlaceholder>,(mpark::detail::Trait)1>::move_assignment(v24, v23);
          mpark::variant<WebCore::WebTransportBidirectionalStreamConstructionParameters,WTF::detail::VoidPlaceholder>::operator=(v23, (a1 + 56));
          mpark::variant<WebCore::WebTransportBidirectionalStreamConstructionParameters,WTF::detail::VoidPlaceholder>::operator=((a1 + 56), v24);
          if (!v24[16])
          {
            WebCore::WebTransportBidirectionalStreamConstructionParameters::~WebTransportBidirectionalStreamConstructionParameters(v24);
          }

          if (!v23[16])
          {
            WebCore::WebTransportBidirectionalStreamConstructionParameters::~WebTransportBidirectionalStreamConstructionParameters(v23);
          }

          goto LABEL_30;
        }

        a1[80] = -1;
        mpark::detail::move_assignment<mpark::detail::traits<WebCore::WebTransportBidirectionalStreamConstructionParameters,WTF::detail::VoidPlaceholder>,(mpark::detail::Trait)1>::move_assignment(a1 + 56, a2);
        v13 = 1;
LABEL_29:
        a1[80] = v13;
        goto LABEL_30;
    }

    if (a1[80] > 1u)
    {
      if (v10 == 2)
      {
        v18 = *(a1 + 7);
        *(a1 + 7) = 0;
        if (v18)
        {
          (*(*v18 + 8))(v18);
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
        WebCore::WebTransportBidirectionalStreamConstructionParameters::~WebTransportBidirectionalStreamConstructionParameters((a1 + 56));
      }

      a1[72] = -1;
    }

    a1[80] = 0;
  }

LABEL_30:
  result = WTF::NativePromise<WebCore::WebTransportBidirectionalStreamConstructionParameters,void,0u>::dispatchAll(a1, &v21);
  v15 = v22;
  if (v22 == 1)
  {
    result = v21;
    atomic_compare_exchange_strong_explicit(v21, &v15, 0, memory_order_release, memory_order_relaxed);
    if (v15 != 1)
    {
      return WTF::Lock::unlockSlow(result);
    }
  }

  return result;
}

WebCore::WebTransportBidirectionalStreamConstructionParameters *mpark::variant<WebCore::WebTransportBidirectionalStreamConstructionParameters,WTF::detail::VoidPlaceholder>::operator=(WebCore::WebTransportBidirectionalStreamConstructionParameters *this, uint64_t a2)
{
  v3 = *(this + 16);
  v4 = *(a2 + 16);
  if (v3 == 255)
  {
    if (*(a2 + 16))
    {
      if (v4 != 255)
      {
LABEL_15:
        v5 = 1;
LABEL_16:
        *(this + 16) = v5;
        return this;
      }

      return this;
    }

LABEL_11:
    *(this + 16) = -1;
    WebCore::WebTransportBidirectionalStreamConstructionParameters::WebTransportBidirectionalStreamConstructionParameters();
    *(this + 16) = 0;
    return this;
  }

  if (!*(a2 + 16))
  {
    if (!*(this + 16))
    {
      WebCore::WebTransportBidirectionalStreamConstructionParameters::operator=();
      return this;
    }

    goto LABEL_11;
  }

  if (v4 == 255)
  {
    if (!*(this + 16))
    {
      WebCore::WebTransportBidirectionalStreamConstructionParameters::~WebTransportBidirectionalStreamConstructionParameters(this);
    }

    v5 = -1;
    goto LABEL_16;
  }

  if (v3 != 1)
  {
    if (!*(this + 16))
    {
      WebCore::WebTransportBidirectionalStreamConstructionParameters::~WebTransportBidirectionalStreamConstructionParameters(this);
    }

    goto LABEL_15;
  }

  return this;
}

uint64_t WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::ThenCallback<true,WTF::NativePromise<WebCore::WebTransportBidirectionalStreamConstructionParameters,void,0u>>::~ThenCallback(uint64_t a1)
{
  *a1 = &unk_1F112D190;
  v2 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::unique_ptr<WTF::NativePromiseProducer<WebCore::WebTransportBidirectionalStreamConstructionParameters,void,0u>>::reset[abi:sn200100]((a1 + 64), 0);
  *a1 = &unk_1F112D0E8;
  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v3 + 8));
  }

  return a1;
}

{
  *a1 = &unk_1F112D190;
  v2 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::unique_ptr<WTF::NativePromiseProducer<WebCore::WebTransportBidirectionalStreamConstructionParameters,void,0u>>::reset[abi:sn200100]((a1 + 64), 0);
  *a1 = &unk_1F112D0E8;
  v4 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v4 + 8));
  }

  return WTF::fastFree(a1, v3);
}

uint64_t WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::ThenCallback<true,WTF::NativePromise<WebCore::WebTransportBidirectionalStreamConstructionParameters,void,0u>>::disconnect(uint64_t a1)
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

uint64_t WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::ThenCallback<true,WTF::NativePromise<WebCore::WebTransportBidirectionalStreamConstructionParameters,void,0u>>::processResult(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v82[1] = *MEMORY[0x1E69E9840];
  v5 = *(a3 + 16);
  *buf = a1;
  v6 = WTF::NativePromiseBase::logChannel(a1);
  if (*v6)
  {
    v7 = v6[16] >= 4u;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    if (v5)
    {
      v8 = "Rejecting";
    }

    else
    {
      v8 = "Resolving";
    }

    WTF::Logger::log<char [10],char [24],WTF::Logger::LogSiteIdentifier,char [2],WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>,char [11],void const*,char [2]>(v6, v8, (a1 + 24), a2);
  }

  v9 = 0;
  v10 = 1;
  atomic_compare_exchange_strong_explicit((a1 + 57), &v9, 1u, memory_order_acquire, memory_order_acquire);
  if (v9)
  {
    MEMORY[0x19EB01E30](a1 + 57);
  }

  v11 = *(a1 + 64);
  *(a1 + 64) = 0;
  std::unique_ptr<WTF::NativePromiseProducer<WebCore::WebTransportBidirectionalStreamConstructionParameters,void,0u>>::reset[abi:sn200100]((a1 + 64), 0);
  atomic_compare_exchange_strong_explicit((a1 + 57), &v10, 0, memory_order_release, memory_order_relaxed);
  if (v10 != 1)
  {
    WTF::Lock::unlockSlow((a1 + 57));
  }

  v12 = (*(**(a1 + 72) + 16))(&v62);
  if (!v11)
  {
    goto LABEL_84;
  }

  v13 = 0;
  v14 = v62;
  v61[0] = 0;
  v61[1] = 0;
  v61[2] = "<chained completion promise>";
  v61[3] = 0;
  v15 = (v62 + 48);
  atomic_compare_exchange_strong_explicit((v62 + 48), &v13, 1u, memory_order_acquire, memory_order_acquire);
  if (v13)
  {
    v12 = MEMORY[0x19EB01E30](v15);
  }

  *(v14 + 128) = 1;
  v16 = *v11;
  if (*v11)
  {
    atomic_fetch_add(v16 + 2, 1u);
  }

  v17 = WTF::NativePromiseBase::logChannel(v12);
  if (!*v17)
  {
    goto LABEL_70;
  }

  v18 = v17;
  if (v17[16] < 4u)
  {
    goto LABEL_70;
  }

  WTF::Logger::LogSiteIdentifier::toString(&v71, v61);
  WTF::String::String(&v70, " invoking chainTo() [");
  WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(&v69, v14);
  WTF::String::String(&v68, " chainedPromise:");
  WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(&v67, v16);
  WTF::String::String(&v66, " isNothing:");
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  WTF::String::String(&v64, "]");
  result = WTF::tryMakeString<WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String>(&v71, &v70, &v69, &v68, &v67, &v66, &v65, &v64, &v72);
  if (!v72)
  {
    __break(0xC471u);
    return result;
  }

  v21 = v64;
  v64 = 0;
  if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v21, v20);
  }

  v22 = v65;
  v65 = 0;
  if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v22, v20);
  }

  v23 = v66;
  v66 = 0;
  if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v23, v20);
  }

  v24 = v67;
  v67 = 0;
  if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v24, v20);
  }

  v25 = v68;
  v68 = 0;
  if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v25, v20);
  }

  v26 = v69;
  v69 = 0;
  if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v26, v20);
  }

  v27 = v70;
  v70 = 0;
  if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v27, v20);
  }

  v28 = v71;
  v71 = 0;
  if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v28, v20);
  }

  v29 = *(v18 + 4);
  v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
  if (v30)
  {
    WTF::String::utf8();
    v32 = v63[0] ? v63[0] + 16 : 0;
    *buf = 136446210;
    *&buf[4] = v32;
    _os_log_impl(&dword_19D52D000, v29, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
    v30 = v63[0];
    v63[0] = 0;
    if (v30)
    {
      if (*v30 == 1)
      {
        v30 = WTF::fastFree(v30, v31);
      }

      else
      {
        --*v30;
      }
    }
  }

  if (*v18 && v18[16] >= 4u)
  {
    v33 = MEMORY[0x1E696EBC0];
    while (1)
    {
      v34 = *v33;
      if (v34)
      {
        break;
      }

      v35 = *v33;
      atomic_compare_exchange_strong_explicit(v33, &v35, v34 | 1, memory_order_acquire, memory_order_acquire);
      if (v35 == v34)
      {
        v60 = v15;
        v36 = WTF::Logger::observers(v30);
        v37 = *(v36 + 12);
        if (v37)
        {
          v38 = *v36;
          v39 = *v36 + 8 * v37;
          do
          {
            v40 = *v38;
            *buf = 0;
            WTF::Logger::LogSiteIdentifier::toString(&buf[8], v61);
            v74 = 0;
            WTF::String::String(v75, " invoking chainTo() [");
            v75[2] = 0;
            WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(&v76, v14);
            v77 = 0;
            WTF::String::String(v78, " chainedPromise:");
            v78[2] = 0;
            WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(&v79, v16);
            v80 = 0;
            WTF::String::String(v81, " isNothing:");
            v81[2] = 0;
            WTF::StringImpl::createWithoutCopyingNonEmpty();
            v81[6] = 0;
            WTF::String::String(v82, "]");
            WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v63, buf, 8uLL);
            (*(*v40 + 16))(v40, v18, 4, v63);
            WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v63, v41);
            for (i = 120; i != -8; i -= 16)
            {
              v43 = *&buf[i];
              *&buf[i] = 0;
              if (v43 && atomic_fetch_add_explicit(v43, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v43, v31);
              }
            }

            ++v38;
          }

          while (v38 != v39);
        }

        v44 = 1;
        atomic_compare_exchange_strong_explicit(v33, &v44, 0, memory_order_release, memory_order_relaxed);
        v15 = v60;
        if (v44 != 1)
        {
          WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
        }

        break;
      }
    }
  }

  v45 = v72;
  v72 = 0;
  if (v45 && atomic_fetch_add_explicit(v45, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v45, v31);
    if (v16)
    {
LABEL_71:
      if (atomic_fetch_add(v16 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v16 + 2);
        (*(*v16 + 16))(v16);
      }
    }
  }

  else
  {
LABEL_70:
    if (v16)
    {
      goto LABEL_71;
    }
  }

  v46 = atomic_load((v14 + 129));
  v47 = *v11;
  if (*v11)
  {
    atomic_fetch_add(v47 + 2, 1u);
    WTF::NativePromise<WebCore::WebTransportBidirectionalStreamConstructionParameters,void,0u>::setDispatchMode(v47, v46, v61);
    if (atomic_fetch_add(v47 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v47 + 2);
      (*(*v47 + 16))(v47);
    }
  }

  else
  {
    WTF::NativePromise<WebCore::WebTransportBidirectionalStreamConstructionParameters,void,0u>::setDispatchMode(0, v46, v61);
  }

  if (*(v14 + 80))
  {
    WTF::NativePromise<WebCore::WebTransportBidirectionalStreamConstructionParameters,void,0u>::settleChainedPromise(v14, v11);
  }

  else
  {
    v48 = *(v14 + 124);
    if (v48 == *(v14 + 120))
    {
      v49 = WTF::Vector<WTF::NativePromiseProducer<WebCore::WebTransportBidirectionalStreamConstructionParameters,void,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(v14 + 112, v48 + 1, v11);
      v50 = *(v14 + 112) + 40 * *(v14 + 124);
      v51 = *v49;
      *v49 = 0;
      *v50 = v51;
      v52 = *(v49 + 24);
      *(v50 + 8) = *(v49 + 8);
      *(v50 + 24) = v52;
    }

    else
    {
      v53 = *(v14 + 112) + 40 * v48;
      v54 = *v11;
      *v11 = 0;
      *v53 = v54;
      v55 = *(v11 + 8);
      *(v53 + 24) = *(v11 + 24);
      *(v53 + 8) = v55;
    }

    ++*(v14 + 124);
  }

  v56 = 1;
  atomic_compare_exchange_strong_explicit(v15, &v56, 0, memory_order_release, memory_order_relaxed);
  if (v56 != 1)
  {
    WTF::Lock::unlockSlow(v15);
  }

LABEL_84:
  v57 = v62;
  v62 = 0;
  if (v57 && atomic_fetch_add(v57 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v57 + 2);
    (*(*v57 + 16))(v57);
  }

  result = *(a1 + 72);
  *(a1 + 72) = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  if (v11)
  {
    v58 = WTF::NativePromiseProducer<WebCore::WebTransportBidirectionalStreamConstructionParameters,void,0u>::~NativePromiseProducer(v11);
    return WTF::fastFree(v58, v59);
  }

  return result;
}

atomic_uint **std::unique_ptr<WTF::NativePromiseProducer<WebCore::WebTransportBidirectionalStreamConstructionParameters,void,0u>>::reset[abi:sn200100](atomic_uint ***a1, atomic_uint **a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    v4 = WTF::NativePromiseProducer<WebCore::WebTransportBidirectionalStreamConstructionParameters,void,0u>::~NativePromiseProducer(result);

    return WTF::fastFree(v4, v5);
  }

  return result;
}

WTF::StringImpl *WTF::NativePromise<WebCore::WebTransportBidirectionalStreamConstructionParameters,void,0u>::setDispatchMode(atomic_uchar *a1, unsigned __int8 a2, WTF::Logger::LogSiteIdentifier *a3)
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
    result = WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [27],WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>>(result, a3, " runSynchronouslyOnTarget ", v5);
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

unint64_t WTF::Vector<WTF::NativePromiseProducer<WebCore::WebTransportBidirectionalStreamConstructionParameters,void,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
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

    WTF::Vector<WTF::NativePromiseProducer<WebCore::WebTransportBidirectionalStreamConstructionParameters,void,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WTF::NativePromiseProducer<WebCore::WebTransportBidirectionalStreamConstructionParameters,void,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

atomic_uint **WTF::Vector<WTF::NativePromiseProducer<WebCore::WebTransportBidirectionalStreamConstructionParameters,void,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(atomic_uint **result, unint64_t a2)
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
          result = WTF::NativePromiseProducer<WebCore::WebTransportBidirectionalStreamConstructionParameters,void,0u>::~NativePromiseProducer(result) + 5;
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

WTF::Lock *_ZN3WTF6Detail15CallableWrapperIZNS_13NativePromiseINSt3__18optionalIN7WebCore9ExceptionEEEN3IPC5ErrorELj0EE11whenSettledIZN6WebKit19WebTransportSession15streamSendBytesENS_23ObjectIdentifierGenericINS5_32WebTransportStreamIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENS3_4spanIKhLm18446744073709551615EEEbE3__0EEDaRNS_34GuaranteedSerialFunctionDispatcherEOT_RKNS_6Logger17LogSiteIdentifierEEUlONSt12experimental15fundamentals_v38expectedIS7_S9_EEE_NS_3RefINS2_IS7_vLj0EEENS_12RawPtrTraitsIS13_EENS_21DefaultRefDerefTraitsIS13_EEEEJS10_EE4callES10_@<X0>(char *a1@<X1>, uint64_t *a2@<X8>)
{
  if (a1[24])
  {
    v3 = 0;
    v4 = 0;
    v5 = "operator()";
    v6 = 0;
    return WTF::NativePromise<std::optional<WebCore::Exception>,void,0u>::createAndReject<std::enable_if<true,void>>(a2, &v3);
  }

  else
  {
    v3 = 0;
    v4 = 0;
    v5 = "operator()";
    v6 = 0;
    return WTF::NativePromise<std::optional<WebCore::Exception>,void,0u>::createAndResolve<std::optional<WebCore::Exception>&,std::enable_if<true,void>>(a2, a1, &v3);
  }
}

uint64_t WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::LibWebRTCSocket,WTF::RawPtrTraits<WebKit::LibWebRTCSocket>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::LibWebRTCSocket,WTF::RawPtrTraits<WebKit::LibWebRTCSocket>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::LibWebRTCSocket,WTF::RawPtrTraits<WebKit::LibWebRTCSocket>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::LibWebRTCSocket,WTF::RawPtrTraits<WebKit::LibWebRTCSocket>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2 == -1 || !v2)
  {
    __break(0xC471u);
    JUMPOUT(0x19E322820);
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

uint64_t std::unique_ptr<webrtc::Network>::reset[abi:sn200100](uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    MEMORY[0x19EB02AD0]();

    JUMPOUT(0x19EB14CF0);
  }

  return result;
}

void std::__tree<std::__value_type<std::string,std::unique_ptr<webrtc::Network>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<webrtc::Network>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<webrtc::Network>>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,std::unique_ptr<webrtc::Network>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<webrtc::Network>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<webrtc::Network>>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,std::unique_ptr<webrtc::Network>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<webrtc::Network>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<webrtc::Network>>>>::destroy(*(a1 + 1));
    std::unique_ptr<webrtc::Network>::reset[abi:sn200100](a1 + 7, 0);
    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

uint64_t sigslot::_signal_base<sigslot::single_threaded>::disconnect_all(uint64_t result)
{
  v1 = result;
  for (i = *(result + 32); i; i = v1[4])
  {
    v3 = v1[3];
    v4 = v3[3];
    v6 = *v3;
    v5 = v3[1];
    *(v6 + 8) = v5;
    *v5 = v6;
    v1[4] = i - 1;
    operator delete(v3);
    result = (*(v4 + 16))(v4, v1);
  }

  v1[5] = v1 + 2;
  return result;
}

void *std::__list_imp<sigslot::_opaque_connection>::clear(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    *(v3 + 8) = v2;
    *v2 = v3;
    v1[2] = 0;
    if (result != v1)
    {
      do
      {
        v4 = result[1];
        operator delete(result);
        result = v4;
      }

      while (v4 != v1);
    }
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(webrtc::IPAddress const&,std::string_view)>::~__value_func[abi:sn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::LibWebRTCResolverIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::LibWebRTCResolverIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::LibWebRTCResolver,WTF::RawPtrTraits<WebKit::LibWebRTCResolver>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::LibWebRTCResolverIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::LibWebRTCResolver,WTF::RawPtrTraits<WebKit::LibWebRTCResolver>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::LibWebRTCResolverIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::LibWebRTCResolverIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::LibWebRTCResolver,WTF::RawPtrTraits<WebKit::LibWebRTCResolver>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::LibWebRTCResolverIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::LibWebRTCResolverIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::LibWebRTCResolver,WTF::RawPtrTraits<WebKit::LibWebRTCResolver>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::LibWebRTCResolverIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t *a3)
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
          v17 = *a1;
          if (*a1)
          {
            v18 = *(v17 - 8);
          }

          else
          {
            v18 = 0;
          }

          v19 = (v14 + ~(v14 << 32)) ^ ((v14 + ~(v14 << 32)) >> 22);
          v20 = 9 * ((v19 + ~(v19 << 13)) ^ ((v19 + ~(v19 << 13)) >> 8));
          v21 = (v20 ^ (v20 >> 15)) + ~((v20 ^ (v20 >> 15)) << 27);
          v22 = v18 & ((v21 >> 31) ^ v21);
          v23 = 1;
          do
          {
            v24 = v22;
            v25 = *(v17 + 16 * v22);
            v22 = (v22 + v23++) & v18;
          }

          while (v25);
          v26 = (v17 + 16 * v24);
          v27 = v26[1];
          v26[1] = 0;
          if (v27)
          {
            v28 = *(v27 + 16);
            if (!v28)
            {
              __break(0xC471u);
              JUMPOUT(0x19E322C38);
            }

            *(v27 + 16) = v28 - 1;
          }

          *v26 = *v13;
          v29 = v13[1];
          v13[1] = 0;
          v26[1] = v29;
          v30 = v13[1];
          v13[1] = 0;
          if (v30)
          {
            v31 = *(v30 + 16);
            if (!v31)
            {
LABEL_31:
              __break(0xC471u);
              JUMPOUT(0x19E322C18);
            }

            *(v30 + 16) = v31 - 1;
          }

          if (v13 == a3)
          {
            v12 = v26;
          }
        }

        else
        {
          v15 = v13[1];
          v13[1] = 0;
          if (v15)
          {
            v16 = *(v15 + 16);
            if (!v16)
            {
              goto LABEL_31;
            }

            *(v15 + 16) = v16 - 1;
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

atomic_uint *WTF::ThreadSafeRefCounted<WebCore::RTCNetworkManager,(WTF::DestructionThread)2>::deref(atomic_uint *result)
{
  add = atomic_fetch_add(result, 0xFFFFFFFF);
  if (add == 1)
  {
    v2 = result;
    atomic_store(add, result);
    v3 = WTF::fastMalloc(0x10);
    *v3 = &unk_1F112D230;
    *(v3 + 1) = v2;
    v4 = v3;
    WTF::ensureOnMainRunLoop();
    result = v4;
    if (v4)
    {
      return (*(*v4 + 8))(v4);
    }
  }

  return result;
}

uint64_t WTF::NativePromiseProducer<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>::NativePromiseProducer<std::enable_if<true,void>>(uint64_t a1, WTF::Logger::LogSiteIdentifier *a2)
{
  v4 = WTF::fastMalloc(0x80);
  v5 = WTF::NativePromise<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>::NativePromise(v4, a2);
  *a1 = v5;
  v6 = *a2;
  *(a1 + 24) = *(a2 + 1);
  *(a1 + 8) = v6;
  v7 = (v5 + 8);
  atomic_fetch_add((v5 + 8), 1u);
  WTF::NativePromise<void,WTF::String,0u>::setDispatchMode(v5, 0, a2);
  if (atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v7);
    (*(*v4 + 16))(v4);
  }

  return a1;
}

atomic_uint **WTF::NativePromiseProducer<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>::~NativePromiseProducer(atomic_uint **a1)
{
  WTF::NativePromiseProducer<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>::assertIsDead(a1);
  v2 = *a1;
  *a1 = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 16))(v2);
  }

  return a1;
}

void *WTF::Detail::CallableWrapper<WebKit::WebSocketProvider::initializeWebTransportSession(WebCore::ScriptExecutionContext &,WebCore::WebTransportSessionClient &,WTF::URL const&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F112D258;
  WebKit::WebSocketProvider::initializeWebTransportSession(WebCore::ScriptExecutionContext &,WebCore::WebTransportSessionClient &,WTF::URL const&)::$_0::~$_0((a1 + 2), a2);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebSocketProvider::initializeWebTransportSession(WebCore::ScriptExecutionContext &,WebCore::WebTransportSessionClient &,WTF::URL const&)::$_0,void>::~CallableWrapper(WTF *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F112D258;
  WebKit::WebSocketProvider::initializeWebTransportSession(WebCore::ScriptExecutionContext &,WebCore::WebTransportSessionClient &,WTF::URL const&)::$_0::~$_0(a1 + 16, a2);

  return WTF::fastFree(a1, v3);
}

atomic_ullong *WTF::Detail::CallableWrapper<WebKit::WebSocketProvider::initializeWebTransportSession(WebCore::ScriptExecutionContext &,WebCore::WebTransportSessionClient &,WTF::URL const&)::$_0,void>::call(uint64_t a1, void *a2)
{
  v91[2] = *MEMORY[0x1E69E9840];
  {
    v3 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v61 = WebKit::WebProcess::operator new(0x370, a2);
    v3 = WebKit::WebProcess::WebProcess(v61);
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
  v65 = v4;
  v7 = WebKit::WebTransportSession::initialize(&v66, &v65, (a1 + 160), (a1 + 176), (a1 + 88), a1 + 96);
  v8 = v66;
  v9 = WTF::RunLoop::mainSingleton(v7);
  v10 = *(a1 + 48);
  *(a1 + 48) = 0;
  v11 = *(a1 + 72);
  v63 = *(a1 + 56);
  v64 = v11;
  v62 = 0;
  *buf = v10;
  *&buf[8] = *(a1 + 56);
  v86 = *(a1 + 72);
  v12 = WTF::fastMalloc(0x50);
  while (1)
  {
    v13 = *(v9 + 8);
    if ((v13 & 1) == 0)
    {
      break;
    }

    v14 = *(v9 + 8);
    atomic_compare_exchange_strong_explicit((v9 + 8), &v14, v13 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v14 == v13)
    {
      goto LABEL_13;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v9 + 8));
LABEL_13:
  v15 = WTF::fastMalloc(0x30);
  *v15 = &unk_1F112D280;
  *(v15 + 8) = v10;
  *buf = 0;
  v16 = v86;
  *(v15 + 16) = *&buf[8];
  *(v15 + 32) = v16;
  *(v12 + 8) = 1;
  *(v12 + 16) = v9;
  *(v12 + 24) = 0uLL;
  *(v12 + 40) = "operator()";
  *(v12 + 48) = 0;
  *(v12 + 56) = 0;
  *v12 = &unk_1F112D2A8;
  *(v12 + 64) = 0;
  *(v12 + 72) = v15;
  atomic_fetch_add(v8 + 2, 1u);
  v67 = v8;
  v68 = v12;
  v69 = 0uLL;
  v70 = "operator()";
  v71 = 0;
  WTF::NativePromiseProducer<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>::~NativePromiseProducer(buf);
  v17 = v68;
  if (v68)
  {
    v18 = 0;
    v19 = v67;
    v68 = 0;
    v20 = (v67 + 12);
    v72 = v17;
    v73 = (v67 + 12);
    v74 = 1;
    atomic_compare_exchange_strong_explicit(v67 + 48, &v18, 1u, memory_order_acquire, memory_order_acquire);
    if (v18)
    {
      v20 = MEMORY[0x19EB01E30]();
    }

    *(v19 + 120) = 1;
    v21 = WTF::NativePromiseBase::logChannel(v20);
    if (*v21)
    {
      v22 = v21;
      if (v21[16] >= 4u)
      {
        WTF::Logger::LogSiteIdentifier::toString(&v83, &v69);
        WTF::String::String(&v82, " invoking maybeSettle() [");
        WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(&v81, v19);
        WTF::String::String(&v80, " callback:");
        WTF::LogArgument<void const*>::toString();
        WTF::String::String(&v78, " isNothing:");
        WTF::StringImpl::createWithoutCopyingNonEmpty();
        WTF::String::String(&v76, "]");
        result = WTF::tryMakeString<WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String>(&v83, &v82, &v81, &v80, &v79, &v78, &v77, &v76, &v84);
        if (!v84)
        {
          __break(0xC471u);
          return result;
        }

        v25 = v76;
        v76 = 0;
        if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v25, v24);
        }

        v26 = v77;
        v77 = 0;
        if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v26, v24);
        }

        v27 = v78;
        v78 = 0;
        if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v27, v24);
        }

        v28 = v79;
        v79 = 0;
        if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v28, v24);
        }

        v29 = v80;
        v80 = 0;
        if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v29, v24);
        }

        v30 = v81;
        v81 = 0;
        if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v30, v24);
        }

        v31 = v82;
        v82 = 0;
        if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v31, v24);
        }

        v32 = v83;
        v83 = 0;
        if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v32, v24);
        }

        v33 = *(v22 + 4);
        v34 = os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
        if (v34)
        {
          WTF::String::utf8();
          v36 = v75[0] ? v75[0] + 16 : 0;
          *buf = 136446210;
          *&buf[4] = v36;
          _os_log_impl(&dword_19D52D000, v33, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
          v34 = v75[0];
          v75[0] = 0;
          if (v34)
          {
            if (*v34 == 1)
            {
              v34 = WTF::fastFree(v34, v35);
            }

            else
            {
              --*v34;
            }
          }
        }

        if (*v22 && v22[16] >= 4u)
        {
          v37 = MEMORY[0x1E696EBC0];
          while (1)
          {
            v38 = *v37;
            if (v38)
            {
              break;
            }

            v39 = *v37;
            atomic_compare_exchange_strong_explicit(v37, &v39, v38 | 1, memory_order_acquire, memory_order_acquire);
            if (v39 == v38)
            {
              v40 = WTF::Logger::observers(v34);
              v41 = *(v40 + 12);
              if (v41)
              {
                v42 = *v40;
                v43 = *v40 + 8 * v41;
                do
                {
                  v44 = *v42;
                  *buf = 0;
                  WTF::Logger::LogSiteIdentifier::toString(&buf[8], &v69);
                  *&buf[16] = 0;
                  WTF::String::String(&v86, " invoking maybeSettle() [");
                  DWORD2(v86) = 0;
                  WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(&v87, v19);
                  v88 = 0;
                  WTF::String::String(v89, " callback:");
                  v89[2] = 0;
                  WTF::LogArgument<void const*>::toString();
                  v89[6] = 0;
                  WTF::String::String(v90, " isNothing:");
                  v90[2] = 0;
                  WTF::StringImpl::createWithoutCopyingNonEmpty();
                  v90[6] = 0;
                  WTF::String::String(v91, "]");
                  WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v75, buf, 8uLL);
                  (*(*v44 + 16))(v44, v22, 4, v75);
                  WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v75, v45);
                  for (i = 120; i != -8; i -= 16)
                  {
                    v47 = *&buf[i];
                    *&buf[i] = 0;
                    if (v47 && atomic_fetch_add_explicit(v47, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v47, v35);
                    }
                  }

                  ++v42;
                }

                while (v42 != v43);
              }

              v48 = 1;
              atomic_compare_exchange_strong_explicit(v37, &v48, 0, memory_order_release, memory_order_relaxed);
              if (v48 != 1)
              {
                WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
              }

              break;
            }
          }
        }

        v49 = v84;
        v84 = 0;
        if (v49 && atomic_fetch_add_explicit(v49, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v49, v35);
        }
      }
    }

    if (*(v19 + 72))
    {
      WTF::NativePromise<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>::ThenCallbackBase::dispatch(v72, v19, &v73);
    }

    else
    {
      v50 = *(v19 + 92);
      if (v50 == *(v19 + 88))
      {
        v51 = WTF::Vector<WTF::Ref<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(v19 + 80, v50 + 1, &v72);
        v50 = *(v19 + 92);
        v52 = v50 + 1;
        v53 = *(v19 + 80);
        v54 = *v51;
        *v51 = 0;
      }

      else
      {
        v52 = v50 + 1;
        v53 = *(v19 + 80);
        v54 = v72;
        v72 = 0;
      }

      *(v53 + 8 * v50) = v54;
      *(v19 + 92) = v52;
    }

    v55 = v74;
    if (v74 == 1)
    {
      v56 = v73;
      atomic_compare_exchange_strong_explicit(v73, &v55, 0, memory_order_release, memory_order_relaxed);
      if (v55 != 1)
      {
        WTF::Lock::unlockSlow(v56);
      }
    }

    v57 = v72;
    v72 = 0;
    if (v57 && atomic_fetch_add(v57 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v57 + 2);
      (*(*v57 + 8))(v57);
    }

    v58 = v68;
    v68 = 0;
    if (v58 && atomic_fetch_add(v58 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v58 + 2);
      (*(*v58 + 8))(v58);
    }
  }

  v59 = v67;
  v67 = 0;
  if (v59 && atomic_fetch_add(v59 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v59 + 2);
    (*(*v59 + 16))(v59);
  }

  WTF::NativePromiseProducer<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>::~NativePromiseProducer(&v62);
  v60 = v66;
  v66 = 0;
  if (v60 && atomic_fetch_add(v60 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v60 + 2);
    (*(*v60 + 16))(v60);
  }

  result = v65;
  if (v65)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v65);
  }

  return result;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZNS_13NativePromiseINS_3RefIN7WebCore19WebTransportSessionENS_12RawPtrTraitsIS5_EENS_21DefaultRefDerefTraitsIS5_EEEEvLj0EE11whenSettledIZZN6WebKit17WebSocketProvider29initializeWebTransportSessionERNS4_22ScriptExecutionContextERNS4_25WebTransportSessionClientERKNS_3URLEEN3__0clEvEUlOT_E_EEDaRNS_34GuaranteedSerialFunctionDispatcherESO_RKNS_6Logger17LogSiteIdentifierEEUlONSt12experimental15fundamentals_v38expectedISA_NS_6detail15VoidPlaceholderEEEE_vJS13_EED1Ev(uint64_t a1)
{
  *a1 = &unk_1F112D280;
  WTF::NativePromiseProducer<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>::~NativePromiseProducer((a1 + 8));
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZNS_13NativePromiseINS_3RefIN7WebCore19WebTransportSessionENS_12RawPtrTraitsIS5_EENS_21DefaultRefDerefTraitsIS5_EEEEvLj0EE11whenSettledIZZN6WebKit17WebSocketProvider29initializeWebTransportSessionERNS4_22ScriptExecutionContextERNS4_25WebTransportSessionClientERKNS_3URLEEN3__0clEvEUlOT_E_EEDaRNS_34GuaranteedSerialFunctionDispatcherESO_RKNS_6Logger17LogSiteIdentifierEEUlONSt12experimental15fundamentals_v38expectedISA_NS_6detail15VoidPlaceholderEEEE_vJS13_EED0Ev(atomic_uint **a1)
{
  *a1 = &unk_1F112D280;
  WTF::NativePromiseProducer<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>::~NativePromiseProducer(a1 + 1);

  return WTF::fastFree(a1, v2);
}

WTF::Lock *_ZN3WTF6Detail15CallableWrapperIZNS_13NativePromiseINS_3RefIN7WebCore19WebTransportSessionENS_12RawPtrTraitsIS5_EENS_21DefaultRefDerefTraitsIS5_EEEEvLj0EE11whenSettledIZZN6WebKit17WebSocketProvider29initializeWebTransportSessionERNS4_22ScriptExecutionContextERNS4_25WebTransportSessionClientERKNS_3URLEEN3__0clEvEUlOT_E_EEDaRNS_34GuaranteedSerialFunctionDispatcherESO_RKNS_6Logger17LogSiteIdentifierEEUlONSt12experimental15fundamentals_v38expectedISA_NS_6detail15VoidPlaceholderEEEE_vJS13_EE4callES13_(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 8))
  {
    v7 = 0;
    v8 = 0;
    v9 = "operator()";
    v10 = 0;
    isNothing = WTF::NativePromiseProducer<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>::isNothing(*(a1 + 8));
    v4 = *(a1 + 8);
    if (isNothing)
    {
      if (!v4)
      {
        return WTF::NativePromise<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>::resolve<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,std::enable_if<true,void>>(0, a2, &v7);
      }

      atomic_fetch_add(v4 + 2, 1u);
      result = WTF::NativePromise<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>::resolve<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,std::enable_if<true,void>>(v4, a2, &v7);
      if (atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
      {
        goto LABEL_18;
      }

      return result;
    }

LABEL_10:
    if (v4)
    {
      atomic_fetch_add(v4 + 2, 1u);
    }

    result = WTF::NativePromiseBase::logChannel(isNothing);
    if (*result && *(result + 16) >= 4u)
    {
      result = WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [39],WTF::NativePromise<void,WTF::String,0u>>(result, &v7, v4);
    }

    if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
    {
      goto LABEL_18;
    }

    return result;
  }

  v7 = 0;
  v8 = 0;
  v9 = "operator()";
  v10 = 0;
  isNothing = WTF::NativePromiseProducer<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>::isNothing(*(a1 + 8));
  v4 = *(a1 + 8);
  if (!isNothing)
  {
    goto LABEL_10;
  }

  if (!v4)
  {
    return WTF::NativePromise<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>::reject<std::enable_if<true,void>>(0, &v7);
  }

  atomic_fetch_add(v4 + 2, 1u);
  result = WTF::NativePromise<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>::reject<std::enable_if<true,void>>(v4, &v7);
  if (atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
LABEL_18:
    atomic_store(1u, v4 + 2);
    return (*(*v4 + 16))(v4);
  }

  return result;
}

BOOL WTF::NativePromiseProducer<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>::isNothing(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = 0;
  v2 = 1;
  atomic_fetch_add((a1 + 8), 1u);
  v3 = (a1 + 48);
  atomic_compare_exchange_strong_explicit((a1 + 48), &v1, 1u, memory_order_acquire, memory_order_acquire);
  if (v1)
  {
    v9 = a1;
    MEMORY[0x19EB01E30](a1 + 48);
    v2 = 1;
    a1 = v9;
  }

  v4 = *(a1 + 72);
  atomic_compare_exchange_strong_explicit(v3, &v2, 0, memory_order_release, memory_order_relaxed);
  if (v2 != 1)
  {
    v10 = a1;
    v7 = v3;
    v8 = v4;
    WTF::Lock::unlockSlow(v7);
    v4 = v8;
    a1 = v10;
  }

  v5 = v4 == 0;
  if (atomic_fetch_add((a1 + 8), 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, (a1 + 8));
    (*(*a1 + 16))(a1);
  }

  return v5;
}

WTF::Lock *WTF::NativePromise<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>::resolve<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,std::enable_if<true,void>>(uint64_t a1, uint64_t *a2, WTF::Logger::LogSiteIdentifier *a3)
{
  v6 = 0;
  v7 = (a1 + 48);
  v14 = v7;
  v15 = 1;
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
    WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [27],WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>>(v8, a3, " resolving ", a1);
  }

  if (*(a1 + 72) > 1u)
  {
    if (*(a1 + 72) == 2)
    {
      v10 = *(a1 + 56);
      *(a1 + 56) = 0;
      if (v10)
      {
        goto LABEL_16;
      }
    }
  }

  else if (*(a1 + 72))
  {
    if (!*(a1 + 64))
    {
      v10 = *(a1 + 56);
      *(a1 + 56) = 0;
      if (v10)
      {
LABEL_16:
        (*(*v10 + 8))(v10);
      }
    }
  }

  v11 = *a2;
  *a2 = 0;
  *(a1 + 56) = v11;
  *(a1 + 64) = 0;
  v12 = 1;
  *(a1 + 72) = 1;
  result = WTF::NativePromise<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>::dispatchAll(a1, &v14);
  if (v15 == 1)
  {
    result = v14;
    atomic_compare_exchange_strong_explicit(v14, &v12, 0, memory_order_release, memory_order_relaxed);
    if (v12 != 1)
    {

      return WTF::Lock::unlockSlow(result);
    }
  }

  return result;
}

uint64_t WTF::NativePromise<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>::ThenCallback<false,void>::~ThenCallback(uint64_t a1)
{
  *a1 = &unk_1F112D2A8;
  v2 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::unique_ptr<WTF::NativePromiseProducer<void,void,0u>>::reset[abi:sn200100]((a1 + 64), 0);
  *a1 = &unk_1F112D2D8;
  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v3 + 8));
  }

  return a1;
}

{
  *a1 = &unk_1F112D2A8;
  v2 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::unique_ptr<WTF::NativePromiseProducer<void,void,0u>>::reset[abi:sn200100]((a1 + 64), 0);
  *a1 = &unk_1F112D2D8;
  v4 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v4 + 8));
  }

  return WTF::fastFree(a1, v3);
}

uint64_t WTF::NativePromise<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>::ThenCallback<false,void>::disconnect(uint64_t a1)
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

uint64_t WTF::NativePromise<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>::ThenCallback<false,void>::processResult(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v64[1] = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 8);
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
    v9 = v7;
    if (v6)
    {
      v10 = "Rejecting";
    }

    else
    {
      v10 = "Resolving";
    }

    v43 = v10;
    WTF::String::String(&v52, v10);
    WTF::String::String(&v51, " then() call made from ");
    WTF::Logger::LogSiteIdentifier::toString(&v50, (a1 + 24));
    WTF::String::String(&v49, "[");
    WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(&v48, a2);
    WTF::String::String(&v47, " callback:");
    WTF::LogArgument<void const*>::toString();
    WTF::String::String(&v45, "]");
    result = WTF::tryMakeString<WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String>(&v52, &v51, &v50, &v49, &v48, &v47, &v46, &v45, &v53);
    if (!v53)
    {
      __break(0xC471u);
      return result;
    }

    v13 = v45;
    v45 = 0;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v12);
    }

    v14 = v46;
    v46 = 0;
    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v12);
    }

    v15 = v47;
    v47 = 0;
    if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v12);
    }

    v16 = v48;
    v48 = 0;
    if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v12);
    }

    v17 = v49;
    v49 = 0;
    if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, v12);
    }

    v18 = v50;
    v50 = 0;
    if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v18, v12);
    }

    v19 = v51;
    v51 = 0;
    if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v19, v12);
    }

    v20 = v52;
    v52 = 0;
    if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v20, v12);
    }

    v21 = *(v9 + 4);
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
    if (v22)
    {
      WTF::String::utf8();
      v24 = v44[0] ? v44[0] + 16 : 0;
      *buf = 136446210;
      *&buf[4] = v24;
      _os_log_impl(&dword_19D52D000, v21, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
      v22 = v44[0];
      v44[0] = 0;
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

    if (*v9 && v9[16] >= 4u)
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
              WTF::String::String(&buf[8], v43);
              LODWORD(v55) = 0;
              WTF::String::String(&v56, " then() call made from ");
              v57 = 0;
              WTF::Logger::LogSiteIdentifier::toString(&v58, (a1 + 24));
              v59 = 0;
              WTF::String::String(v60, "[");
              v60[2] = 0;
              WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(&v61, a2);
              v62 = 0;
              WTF::String::String(v63, " callback:");
              v63[2] = 0;
              WTF::LogArgument<void const*>::toString();
              v63[6] = 0;
              WTF::String::String(v64, "]");
              WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v44, buf, 8uLL);
              (*(*v32 + 16))(v32, v9, 4, v44);
              WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v44, v33);
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
          if (v36 != 1)
          {
            WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
          }

          break;
        }
      }
    }

    v37 = v53;
    v53 = 0;
    if (v37 && atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v37, v23);
    }
  }

  v38 = 0;
  v39 = 1;
  atomic_compare_exchange_strong_explicit((a1 + 57), &v38, 1u, memory_order_acquire, memory_order_acquire);
  if (v38)
  {
    MEMORY[0x19EB01E30](a1 + 57);
  }

  v40 = *(a1 + 64);
  *(a1 + 64) = 0;
  std::unique_ptr<WTF::NativePromiseProducer<void,void,0u>>::reset[abi:sn200100]((a1 + 64), 0);
  atomic_compare_exchange_strong_explicit((a1 + 57), &v39, 0, memory_order_release, memory_order_relaxed);
  if (v39 != 1)
  {
    WTF::Lock::unlockSlow((a1 + 57));
  }

  (*(**(a1 + 72) + 16))(*(a1 + 72), a3);
  if (v40)
  {
    *buf = 0uLL;
    v55 = "<chained completion promise>";
    v56 = 0;
    WTF::NativePromiseProducer<void,void,0u>::resolve<std::enable_if<true,void>>(v40, buf);
  }

  result = *(a1 + 72);
  *(a1 + 72) = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  if (v40)
  {
    v41 = WTF::NativePromiseProducer<void,void,0u>::~NativePromiseProducer(v40);
    return WTF::fastFree(v41, v42);
  }

  return result;
}

unsigned int *WTF::WeakHashSet<WTF::NativePromiseRequest,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::add<WTF::NativePromiseRequest>(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v6 = *(a2 + 12);
  v7 = *(a2 + 8) + 1;
  *(a2 + 8) = v7;
  if (v7 > v6)
  {
    v8 = *a2;
    if (*a2)
    {
      v9 = *(v8 - 4);
      if (!v9)
      {
LABEL_15:
        v15 = *(v8 - 4);
        if (6 * *(v8 - 12) < v15 && v15 > 8)
        {
          WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::shrinkToBestSize(a2);
          v8 = *a2;
          *(a2 + 8) = 0;
          if (!v8)
          {
            goto LABEL_22;
          }
        }

        else
        {
          *(a2 + 8) = 0;
        }

        LODWORD(v8) = *(v8 - 12);
        if (v8 > 0x7FFFFFFE)
        {
          v17 = -2;
          goto LABEL_24;
        }

LABEL_22:
        v17 = 2 * v8;
LABEL_24:
        *(a2 + 12) = v17;
        goto LABEL_25;
      }

      v10 = 0;
      v11 = 8 * v9;
      v12 = v8 - 8;
      do
      {
        v13 = *(v12 + v11);
        if ((v13 + 1) >= 2 && !*(v13 + 8))
        {
          *(v12 + v11) = 0;
          if (atomic_fetch_add(v13, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v13);
            WTF::fastFree(v13, a2);
          }

          *(v12 + v11) = -1;
          ++v10;
        }

        v11 -= 8;
      }

      while (v11);
      v8 = *a2;
      if (v10)
      {
        v14 = *(v8 - 12) - v10;
        *(v8 - 16) += v10;
        *(v8 - 12) = v14;
        goto LABEL_15;
      }

      if (v8)
      {
        goto LABEL_15;
      }
    }

    LODWORD(v8) = 0;
    *(a2 + 8) = 0;
    goto LABEL_22;
  }

LABEL_25:
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a3, a3);
  v18 = *a3;
  atomic_fetch_add(*a3, 1u);
  v21 = v18;
  WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(a2, &v21, a1);
  result = v21;
  v21 = 0;
  if (result)
  {
    if (atomic_fetch_add(result, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result);
      return WTF::fastFree(result, v19);
    }
  }

  return result;
}

unsigned int *WTF::NativePromise<std::optional<WebCore::Exception>,void,0u>::ThenCommand<WTF::NativePromise<std::optional<WebCore::Exception>,void,0u>::ThenCallback<false,void>>::track(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  atomic_fetch_add((v3 + 8), 1u);
  v4 = *(a2 + 8);
  *(a2 + 8) = v3;
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 2);
    (*(*v4 + 8))(v4);
  }

  v5 = *a1;
  v6 = a1[1];
  a1[1] = 0;
  v8 = v6;
  WTF::NativePromise<std::optional<WebCore::Exception>,void,0u>::maybeSettle(v5, &v8, (a1 + 2));
  result = v8;
  v8 = 0;
  if (result)
  {
    if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result + 2);
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZNS_13NativePromiseINSt3__18optionalIN7WebCore9ExceptionEEEvLj0EE11whenSettledIZNS5_22ScriptExecutionContext22enqueueTaskWhenSettledIS8_ZZN6WebKit26WebTransportSendStreamSink5writeERSA_N3JSC7JSValueEONS5_18DOMPromiseDeferredIvEEENK3__0clINS_6RefPtrINSF_11ArrayBufferENS_12RawPtrTraitsISN_EENS_21DefaultRefDerefTraitsISN_EEEEEEDaOT_EUlSV_E_EEvONS_3RefISU_NSO_ISU_EENSQ_ISU_EEEENS5_10TaskSourceEOT0_EUlSV_E_EEST_RNS_34GuaranteedSerialFunctionDispatcherESV_RKNS_6Logger17LogSiteIdentifierEEUlONSt12experimental15fundamentals_v38expectedIS7_NS_6detail15VoidPlaceholderEEEE_vJS1I_EED1Ev(uint64_t a1, void *a2)
{
  *a1 = &unk_1F112D308;
  std::unique_ptr<WTF::NativePromiseRequest>::reset[abi:sn200100]((a1 + 32), a2);
  v4 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v4)
  {
    if (v4[4] == 1)
    {
      (*(*v4 + 16))(v4);
    }

    else
    {
      --v4[4];
    }
  }

  v5 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5);
    WTF::fastFree(v5, v3);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZNS_13NativePromiseINSt3__18optionalIN7WebCore9ExceptionEEEvLj0EE11whenSettledIZNS5_22ScriptExecutionContext22enqueueTaskWhenSettledIS8_ZZN6WebKit26WebTransportSendStreamSink5writeERSA_N3JSC7JSValueEONS5_18DOMPromiseDeferredIvEEENK3__0clINS_6RefPtrINSF_11ArrayBufferENS_12RawPtrTraitsISN_EENS_21DefaultRefDerefTraitsISN_EEEEEEDaOT_EUlSV_E_EEvONS_3RefISU_NSO_ISU_EENSQ_ISU_EEEENS5_10TaskSourceEOT0_EUlSV_E_EEST_RNS_34GuaranteedSerialFunctionDispatcherESV_RKNS_6Logger17LogSiteIdentifierEEUlONSt12experimental15fundamentals_v38expectedIS7_NS_6detail15VoidPlaceholderEEEE_vJS1I_EED0Ev(uint64_t a1, void *a2)
{
  *a1 = &unk_1F112D308;
  std::unique_ptr<WTF::NativePromiseRequest>::reset[abi:sn200100]((a1 + 32), a2);
  v4 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v4)
  {
    if (v4[4] == 1)
    {
      (*(*v4 + 16))(v4);
    }

    else
    {
      --v4[4];
    }
  }

  v5 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5);
    WTF::fastFree(v5, v3);
  }

  return WTF::fastFree(a1, v3);
}

unsigned int *_ZN3WTF6Detail15CallableWrapperIZNS_13NativePromiseINSt3__18optionalIN7WebCore9ExceptionEEEvLj0EE11whenSettledIZNS5_22ScriptExecutionContext22enqueueTaskWhenSettledIS8_ZZN6WebKit26WebTransportSendStreamSink5writeERSA_N3JSC7JSValueEONS5_18DOMPromiseDeferredIvEEENK3__0clINS_6RefPtrINSF_11ArrayBufferENS_12RawPtrTraitsISN_EENS_21DefaultRefDerefTraitsISN_EEEEEEDaOT_EUlSV_E_EEvONS_3RefISU_NSO_ISU_EENSQ_ISU_EEEENS5_10TaskSourceEOT0_EUlSV_E_EEST_RNS_34GuaranteedSerialFunctionDispatcherESV_RKNS_6Logger17LogSiteIdentifierEEUlONSt12experimental15fundamentals_v38expectedIS7_NS_6detail15VoidPlaceholderEEEE_vJS1I_EE4callES1I_(WTF::StringImpl *a1, uint64_t a2)
{
  v3 = a1;
  v4 = *(a1 + 4);
  result = *(v4 + 8);
  *(v4 + 8) = 0;
  if (result && atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, result + 2);
    result = (*(*result + 8))(result);
  }

  v6 = *(v3 + 1);
  if (v6)
  {
    v7 = *(v6 + 8);
    if (v7)
    {
      v8 = (v7 - 104);
      WebCore::ScriptExecutionContext::ref((v7 - 104));
      (*(*v8 + 104))(v8);
      v9 = *(v3 + 3);
      *(v3 + 3) = 0;
      v10 = *(a2 + 24);
      if (*(a2 + 24))
      {
        if (v10 == 255)
        {
          v11 = WTF::fastMalloc(0x30);
          *v11 = &unk_1F112D330;
          *(v11 + 8) = v9;
          *(v11 + 16) = 0;
          *(v11 + 40) = -1;
LABEL_16:
          v15 = v11;
          WebCore::EventLoopTaskGroup::queueTask();
          if (v15)
          {
            (*(*v15 + 8))(v15);
          }

          if (!((v10 != 0) | a2 & 1) && v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v3, v14);
          }

          return WebCore::ScriptExecutionContext::deref(v8);
        }

        v11 = WTF::fastMalloc(0x30);
        *v11 = &unk_1F112D330;
        *(v11 + 8) = v9;
        *(v11 + 16) = 0;
        *(v11 + 40) = -1;
      }

      else
      {
        v12 = *(a2 + 16);
        if (v12 == 1)
        {
          v13 = *a2;
          v3 = *(a2 + 8);
          *(a2 + 8) = 0;
        }

        else
        {
          v13 = 0;
        }

        v11 = WTF::fastMalloc(0x30);
        *v11 = &unk_1F112D330;
        *(v11 + 8) = v9;
        *(v11 + 16) = 0;
        *(v11 + 40) = -1;
        *(v11 + 32) = 0;
        LOBYTE(a2) = 1;
        if (v12)
        {
          *(v11 + 16) = v13;
          *(v11 + 24) = v3;
          *(v11 + 32) = 1;
          LOBYTE(a2) = 0;
          v3 = 0;
        }
      }

      *(v11 + 40) = v10;
      goto LABEL_16;
    }
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZZN7WebCore22ScriptExecutionContext22enqueueTaskWhenSettledINS_13NativePromiseINSt3__18optionalINS2_9ExceptionEEEvLj0EEEZZN6WebKit26WebTransportSendStreamSink5writeERS3_N3JSC7JSValueEONS2_18DOMPromiseDeferredIvEEENK3__0clINS_6RefPtrINSE_11ArrayBufferENS_12RawPtrTraitsISM_EENS_21DefaultRefDerefTraitsISM_EEEEEEDaOT_EUlSU_E_EEvONS_3RefIST_NSN_IST_EENSP_IST_EEEENS2_10TaskSourceEOT0_ENUlSU_E_clINSt12experimental15fundamentals_v38expectedIS9_NS_6detail15VoidPlaceholderEEEEESS_SU_EUlvE_vJEED1Ev(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F112D330;
  mpark::detail::move_constructor<mpark::detail::traits<std::optional<WebCore::Exception>,WTF::detail::VoidPlaceholder>,(mpark::detail::Trait)1>::~move_constructor((a1 + 2), a2);
  v3 = a1[1];
  a1[1] = 0;
  if (v3)
  {
    if (v3[4] == 1)
    {
      (*(*v3 + 16))(v3);
    }

    else
    {
      --v3[4];
    }
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN7WebCore22ScriptExecutionContext22enqueueTaskWhenSettledINS_13NativePromiseINSt3__18optionalINS2_9ExceptionEEEvLj0EEEZZN6WebKit26WebTransportSendStreamSink5writeERS3_N3JSC7JSValueEONS2_18DOMPromiseDeferredIvEEENK3__0clINS_6RefPtrINSE_11ArrayBufferENS_12RawPtrTraitsISM_EENS_21DefaultRefDerefTraitsISM_EEEEEEDaOT_EUlSU_E_EEvONS_3RefIST_NSN_IST_EENSP_IST_EEEENS2_10TaskSourceEOT0_ENUlSU_E_clINSt12experimental15fundamentals_v38expectedIS9_NS_6detail15VoidPlaceholderEEEEESS_SU_EUlvE_vJEED0Ev(WTF *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F112D330;
  mpark::detail::move_constructor<mpark::detail::traits<std::optional<WebCore::Exception>,WTF::detail::VoidPlaceholder>,(mpark::detail::Trait)1>::~move_constructor(a1 + 16, a2);
  v4 = *(a1 + 1);
  *(a1 + 1) = 0;
  if (v4)
  {
    if (v4[4] == 1)
    {
      (*(*v4 + 16))(v4);
    }

    else
    {
      --v4[4];
    }
  }

  return WTF::fastFree(a1, v3);
}

WTF::StringImpl *_ZN3WTF6Detail15CallableWrapperIZZN7WebCore22ScriptExecutionContext22enqueueTaskWhenSettledINS_13NativePromiseINSt3__18optionalINS2_9ExceptionEEEvLj0EEEZZN6WebKit26WebTransportSendStreamSink5writeERS3_N3JSC7JSValueEONS2_18DOMPromiseDeferredIvEEENK3__0clINS_6RefPtrINSE_11ArrayBufferENS_12RawPtrTraitsISM_EENS_21DefaultRefDerefTraitsISM_EEEEEEDaOT_EUlSU_E_EEvONS_3RefIST_NSN_IST_EENSP_IST_EEEENS2_10TaskSourceEOT0_ENUlSU_E_clINSt12experimental15fundamentals_v38expectedIS9_NS_6detail15VoidPlaceholderEEEEESS_SU_EUlvE_vJEE4callEv(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v6[0] = 15;
    v7 = 0;
LABEL_5:
    v8 = 1;
    result = WebCore::DOMPromiseDeferred<void>::settle((a1 + 8), v6);
    if (v8 == 1)
    {
      result = v7;
      if (v7)
      {
        if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v4);
        }
      }
    }

    return result;
  }

  if (*(a1 + 32) == 1)
  {
    v1 = *(a1 + 16);
    v2 = *(a1 + 24);
    *(a1 + 24) = 0;
    v6[0] = v1;
    v7 = v2;
    goto LABEL_5;
  }

  v5 = *(a1 + 8);

  return WebCore::DeferredPromise::resolve(v5);
}

uint64_t WTF::NativePromise<std::optional<WebCore::Exception>,void,0u>::ThenCallback<false,void>::~ThenCallback(uint64_t a1)
{
  *a1 = &unk_1F112D358;
  v2 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::unique_ptr<WTF::NativePromiseProducer<void,void,0u>>::reset[abi:sn200100]((a1 + 64), 0);
  *a1 = &unk_1F112D388;
  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v3 + 8));
  }

  return a1;
}

{
  *a1 = &unk_1F112D358;
  v2 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::unique_ptr<WTF::NativePromiseProducer<void,void,0u>>::reset[abi:sn200100]((a1 + 64), 0);
  *a1 = &unk_1F112D388;
  v4 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v4 + 8));
  }

  return WTF::fastFree(a1, v3);
}

uint64_t WTF::NativePromise<std::optional<WebCore::Exception>,void,0u>::ThenCallback<false,void>::disconnect(uint64_t a1)
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

uint64_t WTF::NativePromise<std::optional<WebCore::Exception>,void,0u>::ThenCallback<false,void>::processResult(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v64[1] = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 24);
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
    v9 = v7;
    if (v6)
    {
      v10 = "Rejecting";
    }

    else
    {
      v10 = "Resolving";
    }

    v43 = v10;
    WTF::String::String(&v52, v10);
    WTF::String::String(&v51, " then() call made from ");
    WTF::Logger::LogSiteIdentifier::toString(&v50, (a1 + 24));
    WTF::String::String(&v49, "[");
    WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(&v48, a2);
    WTF::String::String(&v47, " callback:");
    WTF::LogArgument<void const*>::toString();
    WTF::String::String(&v45, "]");
    result = WTF::tryMakeString<WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String>(&v52, &v51, &v50, &v49, &v48, &v47, &v46, &v45, &v53);
    if (!v53)
    {
      __break(0xC471u);
      return result;
    }

    v13 = v45;
    v45 = 0;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v12);
    }

    v14 = v46;
    v46 = 0;
    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v12);
    }

    v15 = v47;
    v47 = 0;
    if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v12);
    }

    v16 = v48;
    v48 = 0;
    if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v12);
    }

    v17 = v49;
    v49 = 0;
    if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, v12);
    }

    v18 = v50;
    v50 = 0;
    if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v18, v12);
    }

    v19 = v51;
    v51 = 0;
    if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v19, v12);
    }

    v20 = v52;
    v52 = 0;
    if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v20, v12);
    }

    v21 = *(v9 + 4);
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
    if (v22)
    {
      WTF::String::utf8();
      v24 = v44[0] ? v44[0] + 16 : 0;
      *buf = 136446210;
      *&buf[4] = v24;
      _os_log_impl(&dword_19D52D000, v21, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
      v22 = v44[0];
      v44[0] = 0;
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

    if (*v9 && v9[16] >= 4u)
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
              WTF::String::String(&buf[8], v43);
              LODWORD(v55) = 0;
              WTF::String::String(&v56, " then() call made from ");
              v57 = 0;
              WTF::Logger::LogSiteIdentifier::toString(&v58, (a1 + 24));
              v59 = 0;
              WTF::String::String(v60, "[");
              v60[2] = 0;
              WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(&v61, a2);
              v62 = 0;
              WTF::String::String(v63, " callback:");
              v63[2] = 0;
              WTF::LogArgument<void const*>::toString();
              v63[6] = 0;
              WTF::String::String(v64, "]");
              WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v44, buf, 8uLL);
              (*(*v32 + 16))(v32, v9, 4, v44);
              WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v44, v33);
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
          if (v36 != 1)
          {
            WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
          }

          break;
        }
      }
    }

    v37 = v53;
    v53 = 0;
    if (v37 && atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v37, v23);
    }
  }

  v38 = 0;
  v39 = 1;
  atomic_compare_exchange_strong_explicit((a1 + 57), &v38, 1u, memory_order_acquire, memory_order_acquire);
  if (v38)
  {
    MEMORY[0x19EB01E30](a1 + 57);
  }

  v40 = *(a1 + 64);
  *(a1 + 64) = 0;
  std::unique_ptr<WTF::NativePromiseProducer<void,void,0u>>::reset[abi:sn200100]((a1 + 64), 0);
  atomic_compare_exchange_strong_explicit((a1 + 57), &v39, 0, memory_order_release, memory_order_relaxed);
  if (v39 != 1)
  {
    WTF::Lock::unlockSlow((a1 + 57));
  }

  (*(**(a1 + 72) + 16))(*(a1 + 72), a3);
  if (v40)
  {
    *buf = 0uLL;
    v55 = "<chained completion promise>";
    v56 = 0;
    WTF::NativePromiseProducer<void,void,0u>::resolve<std::enable_if<true,void>>(v40, buf);
  }

  result = *(a1 + 72);
  *(a1 + 72) = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  if (v40)
  {
    v41 = WTF::NativePromiseProducer<void,void,0u>::~NativePromiseProducer(v40);
    return WTF::fastFree(v41, v42);
  }

  return result;
}

unsigned __int8 *WTF::NativePromise<std::optional<WebCore::Exception>,void,0u>::maybeSettle(uint64_t a1, WTF::NativePromiseBase **a2, WTF::Logger::LogSiteIdentifier *a3)
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

  *(a1 + 136) = 1;
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

  if (*(a1 + 88))
  {
    result = WTF::NativePromise<std::optional<WebCore::Exception>,void,0u>::ThenCallbackBase::dispatch(*a2, a1, &v42);
  }

  else
  {
    v35 = *(a1 + 108);
    if (v35 == *(a1 + 104))
    {
      result = WTF::Vector<WTF::Ref<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1 + 96, v35 + 1, a2);
      v35 = *(a1 + 108);
      v36 = v35 + 1;
      v37 = *(a1 + 96);
      v38 = *result;
      *result = 0;
    }

    else
    {
      v36 = v35 + 1;
      v37 = *(a1 + 96);
      v38 = *a2;
      *a2 = 0;
    }

    *(v37 + 8 * v35) = v38;
    *(a1 + 108) = v36;
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

uint64_t *WTF::NativePromise<std::optional<WebCore::Exception>,void,0u>::ThenCommand<WTF::NativePromise<std::optional<WebCore::Exception>,void,0u>::ThenCallback<false,void>>::~ThenCommand(uint64_t *a1)
{
  v2 = a1[1];
  if (v2)
  {
    v3 = *a1;
    a1[1] = 0;
    v8 = v2;
    WTF::NativePromise<std::optional<WebCore::Exception>,void,0u>::maybeSettle(v3, &v8, (a1 + 2));
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

WTF **std::unique_ptr<WTF::NativePromiseRequest>::reset[abi:sn200100](WTF **result, void *a2)
{
  v2 = *result;
  *result = 0;
  if (v2)
  {
    v3 = *(v2 + 1);
    *(v2 + 1) = 0;
    if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3 + 2);
      (*(*v3 + 8))(v3);
    }

    if (*v2)
    {
      *(*v2 + 8) = 0;
      v4 = *v2;
      *v2 = 0;
      if (v4)
      {
        if (atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v4);
          WTF::fastFree(v4, a2);
        }
      }
    }

    return WTF::fastFree(v2, a2);
  }

  return result;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZNS_13NativePromiseINSt3__18optionalIN7WebCore9ExceptionEEEvLj0EE11whenSettledIZNS5_22ScriptExecutionContext22enqueueTaskWhenSettledIS8_ZZN6WebKit26WebTransportSendStreamSink5writeERSA_N3JSC7JSValueEONS5_18DOMPromiseDeferredIvEEENK3__0clINS_6RefPtrINSF_15ArrayBufferViewENS_12RawPtrTraitsISN_EENS_21DefaultRefDerefTraitsISN_EEEEEEDaOT_EUlSV_E_EEvONS_3RefISU_NSO_ISU_EENSQ_ISU_EEEENS5_10TaskSourceEOT0_EUlSV_E_EEST_RNS_34GuaranteedSerialFunctionDispatcherESV_RKNS_6Logger17LogSiteIdentifierEEUlONSt12experimental15fundamentals_v38expectedIS7_NS_6detail15VoidPlaceholderEEEE_vJS1I_EED1Ev(uint64_t a1, void *a2)
{
  *a1 = &unk_1F112D3B8;
  std::unique_ptr<WTF::NativePromiseRequest>::reset[abi:sn200100]((a1 + 32), a2);
  v4 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v4)
  {
    if (v4[4] == 1)
    {
      (*(*v4 + 16))(v4);
    }

    else
    {
      --v4[4];
    }
  }

  v5 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5);
    WTF::fastFree(v5, v3);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZNS_13NativePromiseINSt3__18optionalIN7WebCore9ExceptionEEEvLj0EE11whenSettledIZNS5_22ScriptExecutionContext22enqueueTaskWhenSettledIS8_ZZN6WebKit26WebTransportSendStreamSink5writeERSA_N3JSC7JSValueEONS5_18DOMPromiseDeferredIvEEENK3__0clINS_6RefPtrINSF_15ArrayBufferViewENS_12RawPtrTraitsISN_EENS_21DefaultRefDerefTraitsISN_EEEEEEDaOT_EUlSV_E_EEvONS_3RefISU_NSO_ISU_EENSQ_ISU_EEEENS5_10TaskSourceEOT0_EUlSV_E_EEST_RNS_34GuaranteedSerialFunctionDispatcherESV_RKNS_6Logger17LogSiteIdentifierEEUlONSt12experimental15fundamentals_v38expectedIS7_NS_6detail15VoidPlaceholderEEEE_vJS1I_EED0Ev(uint64_t a1, void *a2)
{
  *a1 = &unk_1F112D3B8;
  std::unique_ptr<WTF::NativePromiseRequest>::reset[abi:sn200100]((a1 + 32), a2);
  v4 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v4)
  {
    if (v4[4] == 1)
    {
      (*(*v4 + 16))(v4);
    }

    else
    {
      --v4[4];
    }
  }

  v5 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5);
    WTF::fastFree(v5, v3);
  }

  return WTF::fastFree(a1, v3);
}

unsigned int *_ZN3WTF6Detail15CallableWrapperIZNS_13NativePromiseINSt3__18optionalIN7WebCore9ExceptionEEEvLj0EE11whenSettledIZNS5_22ScriptExecutionContext22enqueueTaskWhenSettledIS8_ZZN6WebKit26WebTransportSendStreamSink5writeERSA_N3JSC7JSValueEONS5_18DOMPromiseDeferredIvEEENK3__0clINS_6RefPtrINSF_15ArrayBufferViewENS_12RawPtrTraitsISN_EENS_21DefaultRefDerefTraitsISN_EEEEEEDaOT_EUlSV_E_EEvONS_3RefISU_NSO_ISU_EENSQ_ISU_EEEENS5_10TaskSourceEOT0_EUlSV_E_EEST_RNS_34GuaranteedSerialFunctionDispatcherESV_RKNS_6Logger17LogSiteIdentifierEEUlONSt12experimental15fundamentals_v38expectedIS7_NS_6detail15VoidPlaceholderEEEE_vJS1I_EE4callES1I_(WTF::StringImpl *a1, uint64_t a2)
{
  v3 = a1;
  v4 = *(a1 + 4);
  result = *(v4 + 8);
  *(v4 + 8) = 0;
  if (result && atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, result + 2);
    result = (*(*result + 8))(result);
  }

  v6 = *(v3 + 1);
  if (v6)
  {
    v7 = *(v6 + 8);
    if (v7)
    {
      v8 = (v7 - 104);
      WebCore::ScriptExecutionContext::ref((v7 - 104));
      (*(*v8 + 104))(v8);
      v9 = *(v3 + 3);
      *(v3 + 3) = 0;
      v10 = *(a2 + 24);
      if (*(a2 + 24))
      {
        if (v10 == 255)
        {
          v11 = WTF::fastMalloc(0x30);
          *v11 = &unk_1F112D3E0;
          *(v11 + 8) = v9;
          *(v11 + 16) = 0;
          *(v11 + 40) = -1;
LABEL_16:
          v15 = v11;
          WebCore::EventLoopTaskGroup::queueTask();
          if (v15)
          {
            (*(*v15 + 8))(v15);
          }

          if (!((v10 != 0) | a2 & 1) && v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v3, v14);
          }

          return WebCore::ScriptExecutionContext::deref(v8);
        }

        v11 = WTF::fastMalloc(0x30);
        *v11 = &unk_1F112D3E0;
        *(v11 + 8) = v9;
        *(v11 + 16) = 0;
        *(v11 + 40) = -1;
      }

      else
      {
        v12 = *(a2 + 16);
        if (v12 == 1)
        {
          v13 = *a2;
          v3 = *(a2 + 8);
          *(a2 + 8) = 0;
        }

        else
        {
          v13 = 0;
        }

        v11 = WTF::fastMalloc(0x30);
        *v11 = &unk_1F112D3E0;
        *(v11 + 8) = v9;
        *(v11 + 16) = 0;
        *(v11 + 40) = -1;
        *(v11 + 32) = 0;
        LOBYTE(a2) = 1;
        if (v12)
        {
          *(v11 + 16) = v13;
          *(v11 + 24) = v3;
          *(v11 + 32) = 1;
          LOBYTE(a2) = 0;
          v3 = 0;
        }
      }

      *(v11 + 40) = v10;
      goto LABEL_16;
    }
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZZN7WebCore22ScriptExecutionContext22enqueueTaskWhenSettledINS_13NativePromiseINSt3__18optionalINS2_9ExceptionEEEvLj0EEEZZN6WebKit26WebTransportSendStreamSink5writeERS3_N3JSC7JSValueEONS2_18DOMPromiseDeferredIvEEENK3__0clINS_6RefPtrINSE_15ArrayBufferViewENS_12RawPtrTraitsISM_EENS_21DefaultRefDerefTraitsISM_EEEEEEDaOT_EUlSU_E_EEvONS_3RefIST_NSN_IST_EENSP_IST_EEEENS2_10TaskSourceEOT0_ENUlSU_E_clINSt12experimental15fundamentals_v38expectedIS9_NS_6detail15VoidPlaceholderEEEEESS_SU_EUlvE_vJEED1Ev(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F112D3E0;
  mpark::detail::move_constructor<mpark::detail::traits<std::optional<WebCore::Exception>,WTF::detail::VoidPlaceholder>,(mpark::detail::Trait)1>::~move_constructor((a1 + 2), a2);
  v3 = a1[1];
  a1[1] = 0;
  if (v3)
  {
    if (v3[4] == 1)
    {
      (*(*v3 + 16))(v3);
    }

    else
    {
      --v3[4];
    }
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN7WebCore22ScriptExecutionContext22enqueueTaskWhenSettledINS_13NativePromiseINSt3__18optionalINS2_9ExceptionEEEvLj0EEEZZN6WebKit26WebTransportSendStreamSink5writeERS3_N3JSC7JSValueEONS2_18DOMPromiseDeferredIvEEENK3__0clINS_6RefPtrINSE_15ArrayBufferViewENS_12RawPtrTraitsISM_EENS_21DefaultRefDerefTraitsISM_EEEEEEDaOT_EUlSU_E_EEvONS_3RefIST_NSN_IST_EENSP_IST_EEEENS2_10TaskSourceEOT0_ENUlSU_E_clINSt12experimental15fundamentals_v38expectedIS9_NS_6detail15VoidPlaceholderEEEEESS_SU_EUlvE_vJEED0Ev(WTF *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F112D3E0;
  mpark::detail::move_constructor<mpark::detail::traits<std::optional<WebCore::Exception>,WTF::detail::VoidPlaceholder>,(mpark::detail::Trait)1>::~move_constructor(a1 + 16, a2);
  v4 = *(a1 + 1);
  *(a1 + 1) = 0;
  if (v4)
  {
    if (v4[4] == 1)
    {
      (*(*v4 + 16))(v4);
    }

    else
    {
      --v4[4];
    }
  }

  return WTF::fastFree(a1, v3);
}

WTF::StringImpl *_ZN3WTF6Detail15CallableWrapperIZZN7WebCore22ScriptExecutionContext22enqueueTaskWhenSettledINS_13NativePromiseINSt3__18optionalINS2_9ExceptionEEEvLj0EEEZZN6WebKit26WebTransportSendStreamSink5writeERS3_N3JSC7JSValueEONS2_18DOMPromiseDeferredIvEEENK3__0clINS_6RefPtrINSE_15ArrayBufferViewENS_12RawPtrTraitsISM_EENS_21DefaultRefDerefTraitsISM_EEEEEEDaOT_EUlSU_E_EEvONS_3RefIST_NSN_IST_EENSP_IST_EEEENS2_10TaskSourceEOT0_ENUlSU_E_clINSt12experimental15fundamentals_v38expectedIS9_NS_6detail15VoidPlaceholderEEEEESS_SU_EUlvE_vJEE4callEv(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v6[0] = 15;
    v7 = 0;
LABEL_5:
    v8 = 1;
    result = WebCore::DOMPromiseDeferred<void>::settle((a1 + 8), v6);
    if (v8 == 1)
    {
      result = v7;
      if (v7)
      {
        if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v4);
        }
      }
    }

    return result;
  }

  if (*(a1 + 32) == 1)
  {
    v1 = *(a1 + 16);
    v2 = *(a1 + 24);
    *(a1 + 24) = 0;
    v6[0] = v1;
    v7 = v2;
    goto LABEL_5;
  }

  v5 = *(a1 + 8);

  return WebCore::DeferredPromise::resolve(v5);
}

uint64_t WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::assertIsDead(uint64_t result)
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
      result = WTF::NativePromiseProducer<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::assertIsDead(v5);
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

uint64_t WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::~NativePromise(uint64_t a1)
{
  v1 = WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::~NativePromise(a1);

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

  WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::assertIsDead(a1);
  WTF::Vector<WTF::NativePromiseProducer<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 112, v26);
  WTF::Vector<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 88, v27);
  v28 = *(a1 + 80);
  if (v28 >= 2 && v28 != 255)
  {
    v29 = *(a1 + 56);
    *(a1 + 56) = 0;
    if (v29)
    {
      (*(*v29 + 8))(v29);
    }
  }

  *(a1 + 80) = -1;
  return a1;
}

atomic_uint **WTF::NativePromiseProducer<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::assertIsDead(atomic_uint **result)
{
  v1 = *result;
  if (*result)
  {
    atomic_fetch_add(v1 + 2, 1u);
    result = WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::assertIsDead(v1);
    if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v1 + 2);
      v2 = *(*v1 + 16);

      return v2(v1);
    }
  }

  return result;
}

uint64_t WTF::Vector<WTF::NativePromiseProducer<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = *a1;
    v5 = 40 * v3;
    do
    {
      v4 = WTF::NativePromiseProducer<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::~NativePromiseProducer(v4) + 5;
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

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<IPC::Connection::NoOpPromiseConverter,Messages::NetworkConnectionToWebProcess::InitializeWebTransportSession,WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>>(WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1},void,IPC::Connection*,std::unique_ptr<IPC::Decoder> &>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F112D430;
  WTF::NativePromiseProducer<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::~NativePromiseProducer((a1 + 8));
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<IPC::Connection::NoOpPromiseConverter,Messages::NetworkConnectionToWebProcess::InitializeWebTransportSession,WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>>(WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1},void,IPC::Connection*,std::unique_ptr<IPC::Decoder> &>::~CallableWrapper(atomic_uint **a1)
{
  *a1 = &unk_1F112D430;
  WTF::NativePromiseProducer<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::~NativePromiseProducer(a1 + 1);

  return WTF::fastFree(a1, v2);
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<IPC::Connection::NoOpPromiseConverter,Messages::NetworkConnectionToWebProcess::InitializeWebTransportSession,WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>>(WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1},void,IPC::Connection*,std::unique_ptr<IPC::Decoder> &>::call(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v47[1] = *MEMORY[0x1E69E9840];
  v4 = *a3;
  *a3 = 0;
  v5 = WTF::fastMalloc(0x10);
  *v5 = &unk_1F112D480;
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
    WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::settleWithFunction(v11, &v37, v36);
    if (atomic_fetch_add(v11 + 2, 0xFFFFFFFF) != 1)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

  WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::settleWithFunction(0, &v37, v36);
LABEL_54:
  result = v37;
  if (v37)
  {
    return (*(*v37 + 8))(v37);
  }

  return result;
}

WTF::Lock *WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::settleWithFunction(uint64_t a1, uint64_t *a2, WTF::Logger::LogSiteIdentifier *a3)
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

  v32 = *(a1 + 80);
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
  *(a1 + 80) = 2;
  result = WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::dispatchAll(a1, &v37);
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

uint64_t WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::dispatchAll(uint64_t a1, atomic_uchar *volatile *a2)
{
  v29[0] = &v29[2];
  v29[1] = 1;
  __dst = &v24;
  v23 = 1;
  WTF::VectorBuffer<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::FastMalloc>::adopt(&__dst, (a1 + 88));
  v4 = *(a1 + 100);
  if (v4)
  {
    WTF::VectorDestructor<true,WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>>::destruct(*(a1 + 88), (*(a1 + 88) + 8 * v4));
  }

  WTF::VectorBuffer<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::FastMalloc>::adopt((a1 + 88), v29);
  WTF::Vector<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v29, v5);
  *&v6 = 0;
  v7 = *(a1 + 112);
  v19 = v7;
  v8 = *(a1 + 124);
  v20 = *(a1 + 120);
  v21 = v8;
  *v29 = v6;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  WTF::Vector<WTF::NativePromiseProducer<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v29, v9);
  if (HIDWORD(v23))
  {
    v11 = __dst;
    v12 = 8 * HIDWORD(v23);
    do
    {
      v13 = *v11++;
      WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::ThenCallbackBase::dispatch(v13, a1, a2);
      v12 -= 8;
    }

    while (v12);
  }

  if (v8)
  {
    v14 = v7 + 40 * v8;
    do
    {
      v15 = *v7;
      *v7 = 0;
      v29[0] = v15;
      v16 = *(v7 + 24);
      *&v29[1] = *(v7 + 8);
      *&v29[3] = v16;
      if (v15)
      {
        atomic_fetch_add(v15 + 2, 1u);
        v25 = 0;
        v26 = 0;
        v27 = "<chained promise>";
        v28 = 0;
        WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::settleAsChainedPromise<WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::Storage>(v15, (a1 + 56), &v25);
        if (atomic_fetch_add(v15 + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v15 + 2);
          (*(*v15 + 16))(v15);
        }
      }

      else
      {
        v25 = 0;
        v26 = 0;
        v27 = "<chained promise>";
        v28 = 0;
        WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::settleAsChainedPromise<WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::Storage>(0, (a1 + 56), &v25);
      }

      WTF::NativePromiseProducer<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::~NativePromiseProducer(v29);
      v7 += 40;
    }

    while (v7 != v14);
  }

  WTF::Vector<WTF::NativePromiseProducer<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v19, v10);
  return WTF::Vector<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&__dst, v17);
}

unsigned __int8 *WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::ThenCallbackBase::dispatch(WTF::NativePromiseBase *a1, uint64_t a2, atomic_uchar *volatile *a3)
{
  v5 = a1;
  if (!*(a1 + 2) || (v6 = atomic_load((a2 + 129)), v6 == 1) && (a1 = (*(**(a1 + 2) + 24))(*(a1 + 2)), a1))
  {
    if (*(v5 + 56) == 1)
    {
      v16[0] = v5;
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
        return WTF::Logger::log<char [32],WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>,char [21],void const*,char [11],WTF::Logger::LogSiteIdentifier,char [2]>(result, a2, v16, (v5 + 24));
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

      if (WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>::hasRunnable(a2))
      {
        WTF::NativePromise<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError,0u>::takeResultRunnable(&v15, a2);
        v13 = v15;
        (*(*v15 + 16))(v16, v15);
        (*(*v5 + 24))(v5, a2, v16);
        (*(*v13 + 8))(v13);
      }

      else
      {
        WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::takeResult(v16, a2);
        (*(*v5 + 24))(v5, a2, v16);
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
    *v8 = &unk_1F112D458;
    v8[1] = v5;
    v8[2] = a2;
    v16[0] = v8;
    (*(*v7 + 16))(v7, v16);
    result = v16[0];
    v16[0] = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

mpark *WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::takeResult(mpark *result, uint64_t a2)
{
  v3 = result;
  v4 = 0;
  v5 = (a2 + 48);
  atomic_compare_exchange_strong_explicit((a2 + 48), &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    result = MEMORY[0x19EB01E30](a2 + 48);
  }

  if (*(a2 + 80) != 1)
  {
    mpark::throw_bad_variant_access(result);
  }

  *v3 = *(a2 + 56);
  *(v3 + 2) = *(a2 + 72);
  v6 = 1;
  atomic_compare_exchange_strong_explicit((a2 + 48), &v6, 0, memory_order_release, memory_order_relaxed);
  if (v6 != 1)
  {

    return WTF::Lock::unlockSlow(v5);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F112D458;
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

uint64_t WTF::Detail::CallableWrapper<WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F112D458;
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

WTF::StringImpl *WTF::Detail::CallableWrapper<WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::call(WTF::NativePromiseBase *a1)
{
  v2 = *(a1 + 1);
  v1 = *(a1 + 2);
  if (*(v2 + 56) == 1)
  {
    v11[0] = *(a1 + 1);
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
      return WTF::Logger::log<char [32],WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>,char [21],void const*,char [11],WTF::Logger::LogSiteIdentifier,char [2]>(result, v1, v11, (v2 + 24));
    }
  }

  else
  {
    hasRunnable = WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>::hasRunnable(*(a1 + 2));
    v7 = *(a1 + 1);
    v8 = *(a1 + 2);
    if (hasRunnable)
    {
      WTF::NativePromise<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError,0u>::takeResultRunnable(&v10, v8);
      v9 = v10;
      (*(*v10 + 16))(v11, v10);
      (*(*v7 + 24))(v7, v8, v11);
      return (*(*v9 + 8))(v9);
    }

    else
    {
      WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::takeResult(v11, v8);
      return (*(*v7 + 24))(v7, v8, v11);
    }
  }

  return result;
}

WTF::Lock *WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::settleAsChainedPromise<WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::Storage>(uint64_t a1, uint64_t *a2, WTF::Logger::LogSiteIdentifier *a3)
{
  v6 = 0;
  v7 = (a1 + 48);
  v24 = v7;
  v25 = 1;
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

  v10 = *(a1 + 80);
  v11 = *(a2 + 24);
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
        goto LABEL_40;
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

            goto LABEL_41;
          }

          v20 = *(a1 + 56);
          *(a1 + 56) = 0;
          if (v20)
          {
            (*(*v20 + 8))(v20);
          }
        }

        v21 = *a2;
        *a2 = 0;
        *(a1 + 56) = v21;
        v13 = 2;
        goto LABEL_40;
      case 1:
        if (*(a1 + 80) && v10 != 255)
        {
          if (v10 == 1)
          {
            v14 = *a2;
            *(a1 + 72) = a2[2];
            *(a1 + 56) = v14;
            goto LABEL_41;
          }

          v18 = *(a1 + 56);
          *(a1 + 56) = 0;
          if (v18)
          {
            (*(*v18 + 8))(v18);
          }
        }

        *(a1 + 80) = -1;
        v19 = *a2;
        *(a1 + 72) = a2[2];
        *(a1 + 56) = v19;
        v13 = 1;
LABEL_40:
        *(a1 + 80) = v13;
        goto LABEL_41;
    }

    if (*(a1 + 80))
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

      *(a1 + 80) = 0;
    }
  }

LABEL_41:
  result = WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::dispatchAll(a1, &v24);
  v23 = v25;
  if (v25 == 1)
  {
    result = v24;
    atomic_compare_exchange_strong_explicit(v24, &v23, 0, memory_order_release, memory_order_relaxed);
    if (v23 != 1)
    {

      return WTF::Lock::unlockSlow(result);
    }
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<IPC::Connection::NoOpPromiseConverter,Messages::NetworkConnectionToWebProcess::InitializeWebTransportSession,WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>>(WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1}::operator()(IPC::Connection*,std::unique_ptr<IPC::Decoder> &)::{lambda(void)#1},std::experimental::fundamentals_v3::expected<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error>>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F112D480;
  std::unique_ptr<IPC::Decoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<IPC::Connection::NoOpPromiseConverter,Messages::NetworkConnectionToWebProcess::InitializeWebTransportSession,WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>>(WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1}::operator()(IPC::Connection*,std::unique_ptr<IPC::Decoder> &)::{lambda(void)#1},std::experimental::fundamentals_v3::expected<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error>>::~CallableWrapper(IPC::Decoder **a1)
{
  *a1 = &unk_1F112D480;
  std::unique_ptr<IPC::Decoder>::reset[abi:sn200100](a1 + 1, 0);

  return WTF::fastFree(a1, v2);
}

void *WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<IPC::Connection::NoOpPromiseConverter,Messages::NetworkConnectionToWebProcess::InitializeWebTransportSession,WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>>(WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1}::operator()(IPC::Connection*,std::unique_ptr<IPC::Decoder> &)::{lambda(void)#1},std::experimental::fundamentals_v3::expected<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error>>::call@<X0>(void *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = result[1];
  if (v3)
  {
    v4 = *v3;
    if (!*v3)
    {
LABEL_28:
      *a2 = 14;
      v10 = 1;
      goto LABEL_29;
    }

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
          if (!v7)
          {
            v9 = 0;
            result = 0;
            goto LABEL_11;
          }

          result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(v3);
          if (v8)
          {
            v9 = 1;
LABEL_11:
            v10 = 0;
            *a2 = result;
            a2[8] = v9;
            goto LABEL_29;
          }

          goto LABEL_23;
        }

LABEL_18:
        *v3 = 0;
        v3[1] = 0;
        v13 = v3[3];
        if (v13)
        {
          v14 = v5 == 0;
        }

        else
        {
          v14 = 1;
        }

        if (!v14)
        {
          (*(*v13 + 16))(v13, v4, v5);
        }

LABEL_23:
        v15 = *v3;
        v16 = v3[1];
        *v3 = 0;
        v3[1] = 0;
        result = v3[3];
        if (result)
        {
          v17 = v16 == 0;
        }

        else
        {
          v17 = 1;
        }

        if (!v17)
        {
          (*(*result + 16))(result, v15);
          v18 = *v3;
          v19 = v3[1];
          result = v3[3];
          *v3 = 0;
          v3[1] = 0;
          if (result)
          {
            if (v19)
            {
              result = (*(*result + 16))(result, v18);
            }
          }
        }

        goto LABEL_28;
      }

LABEL_15:
      *v3 = 0;
      v3[1] = 0;
      v12 = v3[3];
      if (v12)
      {
        if (v5)
        {
          (*(*v12 + 16))(v12, v4);
          v4 = *v3;
          v5 = v3[1];
          goto LABEL_18;
        }
      }

      else
      {
        v5 = 0;
      }

      v4 = 0;
      goto LABEL_18;
    }

    *v3 = 0;
    v3[1] = 0;
    v11 = v3[3];
    if (v11)
    {
      if (v5)
      {
        (*(*v11 + 16))(v11);
        v4 = *v3;
        v5 = v3[1];
        goto LABEL_15;
      }
    }

    else
    {
      v5 = 0;
    }

    v4 = 0;
    goto LABEL_15;
  }

  v10 = 1;
  *a2 = 1;
LABEL_29:
  a2[16] = v10;
  return result;
}

atomic_uint **WTF::NativePromiseProducer<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::~NativePromiseProducer(atomic_uint **a1)
{
  WTF::NativePromiseProducer<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::assertIsDead(a1);
  v2 = *a1;
  *a1 = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 16))(v2);
  }

  return a1;
}

unsigned __int8 *WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::maybeSettle(uint64_t a1, WTF::NativePromiseBase **a2, WTF::Logger::LogSiteIdentifier *a3)
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
    result = WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::ThenCallbackBase::dispatch(*a2, a1, &v42);
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

atomic_uint **WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::ThenCallback<true,WTF::NativePromise<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>>::setCompletionPromise(uint64_t a1, atomic_uint ***a2)
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
  result = std::unique_ptr<WTF::NativePromiseProducer<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>>::reset[abi:sn200100]((a1 + 64), v7);
  atomic_compare_exchange_strong_explicit(v5, &v6, 0, memory_order_release, memory_order_relaxed);
  if (v6 != 1)
  {

    return WTF::Lock::unlockSlow(v5);
  }

  return result;
}

atomic_uchar **WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::WebTransportSessionClient,(WTF::DestructionThread)0>::deref(atomic_uchar **result, void *a2)
{
  do
  {
    v2 = *result;
    if ((*result & 1) == 0)
    {
      return WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::WebTransportSessionClient,(WTF::DestructionThread)0>(*result, a2);
    }

    v3 = *result;
    atomic_compare_exchange_strong_explicit(result, &v3, (v2 - 2), memory_order_relaxed, memory_order_relaxed);
  }

  while (v3 != v2);
  if (v2 == 3)
  {
    return (*(*(result - 1) + 1))();
  }

  return result;
}

uint64_t WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::WebTransportSessionClient,(WTF::DestructionThread)0>(atomic_uchar *this, void *a2)
{
  v3 = 0;
  atomic_compare_exchange_strong_explicit(this, &v3, 1u, memory_order_acquire, memory_order_acquire);
  if (v3)
  {
    MEMORY[0x19EB01E30](this);
  }

  v4 = *(this + 1) - 1;
  *(this + 1) = v4;
  if (v4)
  {
    result = 0;
  }

  else
  {
    result = *(this + 3);
    ++*(this + 2);
    *(this + 3) = 0;
  }

  v6 = 1;
  atomic_compare_exchange_strong_explicit(this, &v6, 0, memory_order_release, memory_order_relaxed);
  if (v6 == 1)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    v10 = v4;
    v11 = result;
    WTF::Lock::unlockSlow(this);
    result = v11;
    if (v10)
    {
      return result;
    }
  }

  if (result)
  {
    result = (*(*result + 8))(result);
  }

  v7 = 0;
  v8 = 1;
  atomic_compare_exchange_strong_explicit(this, &v7, 1u, memory_order_acquire, memory_order_acquire);
  if (v7)
  {
    result = MEMORY[0x19EB01E30](this);
    v8 = 1;
  }

  v9 = *(this + 2) - 1;
  *(this + 2) = v9;
  atomic_compare_exchange_strong_explicit(this, &v8, 0, memory_order_release, memory_order_relaxed);
  if (v8 == 1)
  {
    if (v9)
    {
      return result;
    }
  }

  else
  {
    v12 = v9;
    result = WTF::Lock::unlockSlow(this);
    if (v12)
    {
      return result;
    }
  }

  return WTF::fastFree(this, a2);
}

WTF::Lock *WTF::NativePromise<std::optional<WebCore::Exception>,IPC::Error,0u>::createAndReject<IPC::Error,std::enable_if<true,void>>(uint64_t *a1, char *a2, WTF::Logger::LogSiteIdentifier *a3)
{
  v49[2] = *MEMORY[0x1E69E9840];
  v6 = WTF::fastMalloc(0x90);
  v7 = WTF::NativePromise<std::optional<WebCore::Exception>,IPC::Error,0u>::NativePromise(v6, a3);
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
    WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(&v41, v6);
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
              WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(v49, v6);
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
  if (*(v6 + 88) > 1u)
  {
    if (*(v6 + 88) == 2)
    {
      v35 = *(v6 + 56);
      *(v6 + 56) = 0;
      if (v35)
      {
        (*(*v35 + 8))(v35);
      }
    }
  }

  else if (*(v6 + 88))
  {
    mpark::detail::move_constructor<mpark::detail::traits<std::optional<WebCore::Exception>,WTF::detail::VoidPlaceholder>,(mpark::detail::Trait)1>::~move_constructor(v6 + 56, v11);
  }

  *(v6 + 56) = v34;
  v36 = 1;
  *(v6 + 80) = 1;
  *(v6 + 88) = 1;
  result = WTF::NativePromise<std::optional<WebCore::Exception>,IPC::Error,0u>::dispatchAll(v6, &v38);
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

uint64_t WTF::NativePromiseProducer<std::optional<WebCore::Exception>,IPC::Error,0u>::NativePromiseProducer<std::enable_if<true,void>>(uint64_t a1, WTF::Logger::LogSiteIdentifier *a2)
{
  v4 = WTF::fastMalloc(0x90);
  v5 = WTF::NativePromise<std::optional<WebCore::Exception>,IPC::Error,0u>::NativePromise(v4, a2);
  v6 = 0;
  *a1 = v5;
  v7 = *a2;
  *(a1 + 24) = *(a2 + 1);
  *(a1 + 8) = v7;
  atomic_fetch_add((v5 + 8), 1u);
  v8 = (v5 + 48);
  atomic_compare_exchange_strong_explicit((v5 + 48), &v6, 1u, memory_order_acquire, memory_order_acquire);
  if (v6)
  {
    v5 = MEMORY[0x19EB01E30](v5 + 48);
  }

  v9 = WTF::NativePromiseBase::logChannel(v5);
  if (*v9)
  {
    v10 = v9[16] >= 4u;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [27],WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>>(v9, a2, " runSynchronouslyOnTarget ", v4);
  }

  atomic_store(0, (v4 + 137));
  v11 = 1;
  atomic_compare_exchange_strong_explicit((v4 + 48), &v11, 0, memory_order_release, memory_order_relaxed);
  if (v11 != 1)
  {
    WTF::Lock::unlockSlow(v8);
  }

  if (atomic_fetch_add((v4 + 8), 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, (v4 + 8));
    (*(*v4 + 16))(v4);
  }

  return a1;
}

uint64_t WTF::NativePromise<std::optional<WebCore::Exception>,IPC::Error,0u>::NativePromise(uint64_t a1, _OWORD *a2)
{
  v33[2] = *MEMORY[0x1E69E9840];
  *(a1 + 8) = 1;
  *a1 = &unk_1F112D4A8;
  v3 = a2[1];
  *(a1 + 16) = *a2;
  *(a1 + 32) = v3;
  *(a1 + 48) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = a1 + 112;
  *(a1 + 104) = 1;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
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

uint64_t WTF::NativePromise<std::optional<WebCore::Exception>,IPC::Error,0u>::assertIsDead(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = (result + 48);
  atomic_compare_exchange_strong_explicit((result + 48), &v2, 1u, memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    result = MEMORY[0x19EB01E30](result + 48);
  }

  v4 = *(v1 + 132);
  if (v4)
  {
    v5 = *(v1 + 120);
    v6 = 40 * v4;
    do
    {
      result = WTF::NativePromiseProducer<std::optional<WebCore::Exception>,IPC::Error,0u>::assertIsDead(v5);
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

uint64_t WTF::NativePromise<std::optional<WebCore::Exception>,IPC::Error,0u>::~NativePromise(uint64_t a1)
{
  v1 = WTF::NativePromise<std::optional<WebCore::Exception>,IPC::Error,0u>::~NativePromise(a1);

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

  WTF::NativePromise<std::optional<WebCore::Exception>,IPC::Error,0u>::assertIsDead(a1);
  WTF::Vector<WTF::NativePromiseProducer<std::optional<WebCore::Exception>,IPC::Error,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 120, v26);
  WTF::Vector<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 96, v27);
  if (*(a1 + 88) > 1u)
  {
    if (*(a1 + 88) == 2)
    {
      v29 = *(a1 + 56);
      *(a1 + 56) = 0;
      if (v29)
      {
        (*(*v29 + 8))(v29);
      }
    }
  }

  else if (*(a1 + 88))
  {
    mpark::detail::move_constructor<mpark::detail::traits<std::optional<WebCore::Exception>,WTF::detail::VoidPlaceholder>,(mpark::detail::Trait)1>::~move_constructor(a1 + 56, v28);
  }

  *(a1 + 88) = -1;
  return a1;
}

atomic_uint **WTF::NativePromiseProducer<std::optional<WebCore::Exception>,IPC::Error,0u>::assertIsDead(atomic_uint **result)
{
  v1 = *result;
  if (*result)
  {
    atomic_fetch_add(v1 + 2, 1u);
    result = WTF::NativePromise<std::optional<WebCore::Exception>,IPC::Error,0u>::assertIsDead(v1);
    if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v1 + 2);
      v2 = *(*v1 + 16);

      return v2(v1);
    }
  }

  return result;
}

uint64_t WTF::Vector<WTF::NativePromiseProducer<std::optional<WebCore::Exception>,IPC::Error,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = *a1;
    v5 = 40 * v3;
    do
    {
      v4 = WTF::NativePromiseProducer<std::optional<WebCore::Exception>,IPC::Error,0u>::~NativePromiseProducer(v4) + 5;
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

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<IPC::Connection::NoOpPromiseConverter,Messages::NetworkTransportSession::SendDatagram,WTF::NativePromise<std::optional<WebCore::Exception>,IPC::Error,0u>>(WTF::NativePromise<std::optional<WebCore::Exception>,IPC::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1},void,IPC::Connection*,std::unique_ptr<IPC::Decoder> &>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F112D4D0;
  WTF::NativePromiseProducer<std::optional<WebCore::Exception>,IPC::Error,0u>::~NativePromiseProducer((a1 + 8));
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<IPC::Connection::NoOpPromiseConverter,Messages::NetworkTransportSession::SendDatagram,WTF::NativePromise<std::optional<WebCore::Exception>,IPC::Error,0u>>(WTF::NativePromise<std::optional<WebCore::Exception>,IPC::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1},void,IPC::Connection*,std::unique_ptr<IPC::Decoder> &>::~CallableWrapper(atomic_uint **a1)
{
  *a1 = &unk_1F112D4D0;
  WTF::NativePromiseProducer<std::optional<WebCore::Exception>,IPC::Error,0u>::~NativePromiseProducer(a1 + 1);

  return WTF::fastFree(a1, v2);
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<IPC::Connection::NoOpPromiseConverter,Messages::NetworkTransportSession::SendDatagram,WTF::NativePromise<std::optional<WebCore::Exception>,IPC::Error,0u>>(WTF::NativePromise<std::optional<WebCore::Exception>,IPC::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1},void,IPC::Connection*,std::unique_ptr<IPC::Decoder> &>::call(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  *a3 = 0;
  v5 = WTF::fastMalloc(0x10);
  *v5 = &unk_1F112D520;
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

unsigned __int8 *WTF::NativePromiseProducer<std::optional<WebCore::Exception>,IPC::Error,0u>::settleWithFunction<std::enable_if<true,void>>(atomic_uchar *a1, uint64_t *a2, WTF::Logger::LogSiteIdentifier *a3)
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

  v8 = *(v3 + 88);
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
    result = WTF::NativePromise<std::optional<WebCore::Exception>,IPC::Error,0u>::settleWithFunction(v10, a2, a3);
    if (atomic_fetch_add(v10 + 2, 0xFFFFFFFF) != 1)
    {
      return result;
    }

    atomic_store(1u, v10 + 2);
    goto LABEL_58;
  }

  return WTF::NativePromise<std::optional<WebCore::Exception>,IPC::Error,0u>::settleWithFunction(0, a2, a3);
}

WTF::Lock *WTF::NativePromise<std::optional<WebCore::Exception>,IPC::Error,0u>::settleWithFunction(uint64_t a1, uint64_t *a2, WTF::Logger::LogSiteIdentifier *a3)
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
    mpark::detail::move_constructor<mpark::detail::traits<std::optional<WebCore::Exception>,WTF::detail::VoidPlaceholder>,(mpark::detail::Trait)1>::~move_constructor(a1 + 56, v9);
  }

  v33 = *a2;
  *a2 = 0;
  *(a1 + 56) = v33;
  *(a1 + 88) = 2;
  result = WTF::NativePromise<std::optional<WebCore::Exception>,IPC::Error,0u>::dispatchAll(a1, &v36);
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

uint64_t WTF::NativePromise<std::optional<WebCore::Exception>,IPC::Error,0u>::dispatchAll(uint64_t a1, atomic_uchar *volatile *a2)
{
  v29[0] = &v29[2];
  v29[1] = 1;
  __dst = &v24;
  v23 = 1;
  WTF::VectorBuffer<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::FastMalloc>::adopt(&__dst, (a1 + 96));
  v4 = *(a1 + 108);
  if (v4)
  {
    WTF::VectorDestructor<true,WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>>::destruct(*(a1 + 96), (*(a1 + 96) + 8 * v4));
  }

  WTF::VectorBuffer<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::FastMalloc>::adopt((a1 + 96), v29);
  WTF::Vector<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v29, v5);
  *&v6 = 0;
  v7 = *(a1 + 120);
  v19 = v7;
  v8 = *(a1 + 132);
  v20 = *(a1 + 128);
  v21 = v8;
  *v29 = v6;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  WTF::Vector<WTF::NativePromiseProducer<std::optional<WebCore::Exception>,IPC::Error,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v29, v9);
  if (HIDWORD(v23))
  {
    v11 = __dst;
    v12 = 8 * HIDWORD(v23);
    do
    {
      v13 = *v11++;
      WTF::NativePromise<std::optional<WebCore::Exception>,IPC::Error,0u>::ThenCallbackBase::dispatch(v13, a1, a2);
      v12 -= 8;
    }

    while (v12);
  }

  if (v8)
  {
    v14 = v7 + 40 * v8;
    do
    {
      v15 = *v7;
      *v7 = 0;
      v29[0] = v15;
      v16 = *(v7 + 24);
      *&v29[1] = *(v7 + 8);
      *&v29[3] = v16;
      if (v15)
      {
        atomic_fetch_add(v15 + 2, 1u);
        v25 = 0;
        v26 = 0;
        v27 = "<chained promise>";
        v28 = 0;
        WTF::NativePromise<std::optional<WebCore::Exception>,IPC::Error,0u>::settleAsChainedPromise<WTF::NativePromise<std::optional<WebCore::Exception>,IPC::Error,0u>::Storage>(v15, a1 + 56, &v25);
        if (atomic_fetch_add(v15 + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v15 + 2);
          (*(*v15 + 16))(v15);
        }
      }

      else
      {
        v25 = 0;
        v26 = 0;
        v27 = "<chained promise>";
        v28 = 0;
        WTF::NativePromise<std::optional<WebCore::Exception>,IPC::Error,0u>::settleAsChainedPromise<WTF::NativePromise<std::optional<WebCore::Exception>,IPC::Error,0u>::Storage>(0, a1 + 56, &v25);
      }

      WTF::NativePromiseProducer<std::optional<WebCore::Exception>,IPC::Error,0u>::~NativePromiseProducer(v29);
      v7 += 40;
    }

    while (v7 != v14);
  }

  WTF::Vector<WTF::NativePromiseProducer<std::optional<WebCore::Exception>,IPC::Error,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v19, v10);
  return WTF::Vector<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&__dst, v17);
}

unsigned __int8 *WTF::NativePromise<std::optional<WebCore::Exception>,IPC::Error,0u>::ThenCallbackBase::dispatch(WTF::NativePromiseBase *a1, uint64_t a2, atomic_uchar *volatile *a3)
{
  v5 = a1;
  if (!*(a1 + 2) || (v6 = atomic_load((a2 + 137)), v6 == 1) && (a1 = (*(**(a1 + 2) + 24))(*(a1 + 2)), a1))
  {
    if (*(v5 + 56) == 1)
    {
      v20 = v5;
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
        return WTF::Logger::log<char [32],WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>,char [21],void const*,char [11],WTF::Logger::LogSiteIdentifier,char [2]>(result, a2, &v20, (v5 + 24));
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

      if (WTF::NativePromise<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String,0u>::hasRunnable(a2))
      {
        WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::takeResultRunnable(&v19, a2);
        v13 = v19;
        (*(*v19 + 16))(&v20, v19);
        (*(*v5 + 24))(v5, a2, &v20);
        if (!v23 && v22 == 1)
        {
          v15 = v21;
          v21 = 0;
          if (v15)
          {
            if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v15, v14);
            }
          }
        }

        v23 = -1;
        (*(*v13 + 8))(v13);
      }

      else
      {
        WTF::NativePromise<std::optional<WebCore::Exception>,IPC::Error,0u>::takeResult(&v20, a2);
        (*(*v5 + 24))(v5, a2, &v20);
        if (!v23 && v22 == 1)
        {
          v17 = v21;
          v21 = 0;
          if (v17)
          {
            if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v17, v16);
            }
          }
        }
      }

      v18 = 0;
      result = *a3;
      atomic_compare_exchange_strong_explicit(*a3, &v18, 1u, memory_order_acquire, memory_order_acquire);
      if (v18)
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
    *v8 = &unk_1F112D4F8;
    *(v8 + 1) = v5;
    *(v8 + 2) = a2;
    v20 = v8;
    (*(*v7 + 16))(v7, &v20);
    result = v20;
    v20 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t WTF::NativePromise<std::optional<WebCore::Exception>,IPC::Error,0u>::takeResult(mpark *a1, uint64_t a2)
{
  v3 = a1;
  v4 = 0;
  v5 = (a2 + 48);
  atomic_compare_exchange_strong_explicit((a2 + 48), &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    a1 = MEMORY[0x19EB01E30](a2 + 48);
  }

  if (*(a2 + 88) != 1)
  {
    mpark::throw_bad_variant_access(a1);
  }

  result = mpark::detail::move_assignment<mpark::detail::traits<std::optional<WebCore::Exception>,IPC::Error>,(mpark::detail::Trait)1>::move_assignment(v3, a2 + 56);
  v7 = 1;
  atomic_compare_exchange_strong_explicit((a2 + 48), &v7, 0, memory_order_release, memory_order_relaxed);
  if (v7 != 1)
  {

    return WTF::Lock::unlockSlow(v5);
  }

  return result;
}

uint64_t mpark::detail::move_assignment<mpark::detail::traits<std::optional<WebCore::Exception>,IPC::Error>,(mpark::detail::Trait)1>::move_assignment(uint64_t result, uint64_t a2)
{
  *result = 0;
  *(result + 24) = -1;
  v2 = *(a2 + 24);
  if (v2 != 255)
  {
    if (*(a2 + 24))
    {
      *result = *a2;
    }

    else
    {
      *(result + 16) = 0;
      if (*(a2 + 16) == 1)
      {
        *result = *a2;
        v3 = *(a2 + 8);
        *(a2 + 8) = 0;
        *(result + 8) = v3;
        *(result + 16) = 1;
      }
    }

    *(result + 24) = v2;
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WTF::NativePromise<std::optional<WebCore::Exception>,IPC::Error,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<std::optional<WebCore::Exception>,IPC::Error,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F112D4F8;
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

uint64_t WTF::Detail::CallableWrapper<WTF::NativePromise<std::optional<WebCore::Exception>,IPC::Error,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<std::optional<WebCore::Exception>,IPC::Error,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F112D4F8;
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

unsigned __int8 *WTF::Detail::CallableWrapper<WTF::NativePromise<std::optional<WebCore::Exception>,IPC::Error,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<std::optional<WebCore::Exception>,IPC::Error,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::call(WTF::NativePromiseBase *a1)
{
  v2 = *(a1 + 1);
  v1 = *(a1 + 2);
  if (*(v2 + 56) == 1)
  {
    v14 = *(a1 + 1);
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
    hasRunnable = WTF::NativePromise<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String,0u>::hasRunnable(*(a1 + 2));
    v7 = *(a1 + 1);
    v8 = *(a1 + 2);
    if (hasRunnable)
    {
      WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::takeResultRunnable(&v13, v8);
      v9 = v13;
      (*(*v13 + 16))(&v14, v13);
      (*(*v7 + 24))(v7, v8, &v14);
      if (!v17 && v16 == 1)
      {
        v11 = v15;
        v15 = 0;
        if (v11)
        {
          if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v11, v10);
          }
        }
      }

      v17 = -1;
      return (*(*v9 + 8))(v9);
    }

    else
    {
      WTF::NativePromise<std::optional<WebCore::Exception>,IPC::Error,0u>::takeResult(&v14, v8);
      result = (*(*v7 + 24))(v7, v8, &v14);
      if (!v17 && v16 == 1)
      {
        result = v15;
        v15 = 0;
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

WTF::Lock *WTF::NativePromise<std::optional<WebCore::Exception>,IPC::Error,0u>::settleAsChainedPromise<WTF::NativePromise<std::optional<WebCore::Exception>,IPC::Error,0u>::Storage>(uint64_t a1, uint64_t a2, WTF::Logger::LogSiteIdentifier *a3)
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

  v11 = *(a1 + 88);
  v12 = *(a2 + 32);
  if (v11 != 255 || v12 != 255)
  {
    switch(v12)
    {
      case 255:
        if (*(a1 + 88) > 1u)
        {
          if (v11 == 2)
          {
            v14 = *(a1 + 56);
            *(a1 + 56) = 0;
            if (v14)
            {
              (*(*v14 + 8))(v14);
            }
          }
        }

        else if (*(a1 + 88))
        {
          mpark::detail::move_constructor<mpark::detail::traits<std::optional<WebCore::Exception>,WTF::detail::VoidPlaceholder>,(mpark::detail::Trait)1>::~move_constructor(a1 + 56, v9);
        }

        v15 = -1;
        goto LABEL_26;
      case 2:
        if (*(a1 + 88) > 1u)
        {
          if (v11 != 255)
          {
            v21 = *a2;
            *a2 = 0;
            v22 = *(a1 + 56);
            *(a1 + 56) = v21;
            if (v22)
            {
              (*(*v22 + 8))(v22);
            }

            goto LABEL_27;
          }
        }

        else if (*(a1 + 88))
        {
          mpark::detail::move_constructor<mpark::detail::traits<std::optional<WebCore::Exception>,WTF::detail::VoidPlaceholder>,(mpark::detail::Trait)1>::~move_constructor(a1 + 56, v9);
        }

        v19 = *a2;
        *a2 = 0;
        *(a1 + 56) = v19;
        v15 = 2;
        goto LABEL_26;
      case 1:
        if (*(a1 + 88) > 1u)
        {
          if (v11 == 2)
          {
            v18 = *(a1 + 56);
            *(a1 + 56) = 0;
            if (v18)
            {
              (*(*v18 + 8))(v18);
            }
          }
        }

        else if (*(a1 + 88))
        {
          v30[0] = 0;
          v33 = -1;
          v13 = *(a2 + 24);
          if (*(a2 + 24))
          {
            if (v13 == 255)
            {
              v34[0] = 0;
            }

            else
            {
              v30[0] = *a2;
              v33 = v13;
              v34[0] = v30[0];
            }
          }

          else
          {
            v32 = 0;
            if (*(a2 + 16))
            {
              v30[0] = *a2;
              v23 = v30[0];
              v24 = *(a2 + 8);
              *(a2 + 8) = 0;
              v32 = 1;
              v33 = 0;
              v34[0] = v23;
              v31 = 0;
              v35 = v24;
              v36 = 1;
            }

            else
            {
              v33 = 0;
              v34[0] = 0;
              v36 = 0;
            }
          }

          v37 = v13;
          mpark::variant<std::optional<WebCore::Exception>,IPC::Error>::operator=(v30, a1 + 56);
          mpark::variant<std::optional<WebCore::Exception>,IPC::Error>::operator=(a1 + 56, v34);
          if (!v37 && v36 == 1)
          {
            v26 = v35;
            if (v35)
            {
              if (atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v26, v25);
              }
            }
          }

          if (!v33 && v32 == 1)
          {
            v27 = v31;
            v31 = 0;
            if (v27)
            {
              if (atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v27, v25);
              }
            }
          }

          goto LABEL_27;
        }

        *(a1 + 88) = -1;
        mpark::detail::move_assignment<mpark::detail::traits<std::optional<WebCore::Exception>,IPC::Error>,(mpark::detail::Trait)1>::move_assignment(a1 + 56, a2);
        v15 = 1;
LABEL_26:
        *(a1 + 88) = v15;
        goto LABEL_27;
    }

    if (*(a1 + 88) > 1u)
    {
      if (v11 == 2)
      {
        v20 = *(a1 + 56);
        *(a1 + 56) = 0;
        if (v20)
        {
          (*(*v20 + 8))(v20);
        }
      }
    }

    else
    {
      if (!*(a1 + 88))
      {
        goto LABEL_27;
      }

      mpark::detail::move_constructor<mpark::detail::traits<std::optional<WebCore::Exception>,WTF::detail::VoidPlaceholder>,(mpark::detail::Trait)1>::~move_constructor(a1 + 56, v9);
    }

    *(a1 + 88) = 0;
  }

LABEL_27:
  result = WTF::NativePromise<std::optional<WebCore::Exception>,IPC::Error,0u>::dispatchAll(a1, &v28);
  v17 = v29;
  if (v29 == 1)
  {
    result = v28;
    atomic_compare_exchange_strong_explicit(v28, &v17, 0, memory_order_release, memory_order_relaxed);
    if (v17 != 1)
    {
      return WTF::Lock::unlockSlow(result);
    }
  }

  return result;
}

uint64_t mpark::variant<std::optional<WebCore::Exception>,IPC::Error>::operator=(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  v5 = *(a2 + 24);
  if (v4 == 255)
  {
    if (*(a2 + 24))
    {
      if (v5 != 255)
      {
        goto LABEL_25;
      }

      return a1;
    }

LABEL_14:
    *a1 = 0;
    *(a1 + 16) = 0;
    if (*(a2 + 16) == 1)
    {
      *a1 = *a2;
      v8 = *(a2 + 8);
      *(a2 + 8) = 0;
      *(a1 + 8) = v8;
      *(a1 + 16) = 1;
    }

    *(a1 + 24) = 0;
    return a1;
  }

  if (!*(a2 + 24))
  {
    if (!*(a1 + 24))
    {
      std::__optional_storage_base<WebCore::Exception,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::Exception,false>>(a1, a2);
      return a1;
    }

    goto LABEL_14;
  }

  if (v5 == 255)
  {
    if (!*(a1 + 24) && *(a1 + 16) == 1)
    {
      v6 = *(a1 + 8);
      *(a1 + 8) = 0;
      if (v6)
      {
        if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v6, a2);
        }
      }
    }

    v7 = -1;
    goto LABEL_26;
  }

  if (!*(a1 + 24))
  {
    if (*(a1 + 16) == 1)
    {
      v9 = *(a1 + 8);
      *(a1 + 8) = 0;
      if (v9)
      {
        if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v9, a2);
        }
      }
    }

    goto LABEL_25;
  }

  if (v4 != 1)
  {
LABEL_25:
    *a1 = *a2;
    v7 = 1;
LABEL_26:
    *(a1 + 24) = v7;
    return a1;
  }

  *a1 = *a2;
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<IPC::Connection::NoOpPromiseConverter,Messages::NetworkTransportSession::SendDatagram,WTF::NativePromise<std::optional<WebCore::Exception>,IPC::Error,0u>>(WTF::NativePromise<std::optional<WebCore::Exception>,IPC::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1}::operator()(IPC::Connection*,std::unique_ptr<IPC::Decoder> &)::{lambda(void)#1},std::experimental::fundamentals_v3::expected<std::optional<WebCore::Exception>,IPC::Error>>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F112D520;
  std::unique_ptr<IPC::Decoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<IPC::Connection::NoOpPromiseConverter,Messages::NetworkTransportSession::SendDatagram,WTF::NativePromise<std::optional<WebCore::Exception>,IPC::Error,0u>>(WTF::NativePromise<std::optional<WebCore::Exception>,IPC::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1}::operator()(IPC::Connection*,std::unique_ptr<IPC::Decoder> &)::{lambda(void)#1},std::experimental::fundamentals_v3::expected<std::optional<WebCore::Exception>,IPC::Error>>::~CallableWrapper(IPC::Decoder **a1)
{
  *a1 = &unk_1F112D520;
  std::unique_ptr<IPC::Decoder>::reset[abi:sn200100](a1 + 1, 0);

  return WTF::fastFree(a1, v2);
}

uint64_t *WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<IPC::Connection::NoOpPromiseConverter,Messages::NetworkTransportSession::SendDatagram,WTF::NativePromise<std::optional<WebCore::Exception>,IPC::Error,0u>>(WTF::NativePromise<std::optional<WebCore::Exception>,IPC::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1}::operator()(IPC::Connection*,std::unique_ptr<IPC::Decoder> &)::{lambda(void)#1},std::experimental::fundamentals_v3::expected<std::optional<WebCore::Exception>,IPC::Error>>::call@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *IPC::Decoder::decode<std::tuple<std::optional<WebCore::Exception>>>(uint64_t a1, uint64_t *a2)
{
  result = IPC::ArgumentCoder<std::tuple<std::optional<WebCore::Exception>>,void>::decode<IPC::Decoder>(a2, a1);
  if ((*(a1 + 24) & 1) == 0)
  {
    v5 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    result = a2[3];
    if (result && v5 != 0)
    {
      v7 = *(*result + 16);

      return v7();
    }
  }

  return result;
}

uint64_t *IPC::ArgumentCoder<std::tuple<std::optional<WebCore::Exception>>,void>::decode<IPC::Decoder>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<std::optional<WebCore::Exception>,void>::decode<IPC::Decoder>(a1, v9);
  if (v12 & 1) != 0 || ((v6 = *a1, v7 = a1[1], *a1 = 0, a1[1] = 0, (result = a1[3]) != 0) ? (v8 = v7 == 0) : (v8 = 1), !v8 && (result = (*(*result + 16))(result, v6), (v12)))
  {
    *a2 = 0;
    *(a2 + 16) = 0;
    v5 = 1;
    if (v11)
    {
      *a2 = v9[0];
      *(a2 + 8) = v10;
      *(a2 + 16) = 1;
    }
  }

  else
  {
    v5 = 0;
    *a2 = 0;
  }

  *(a2 + 24) = v5;
  return result;
}

atomic_uint **WTF::NativePromiseProducer<std::optional<WebCore::Exception>,IPC::Error,0u>::~NativePromiseProducer(atomic_uint **a1)
{
  WTF::NativePromiseProducer<std::optional<WebCore::Exception>,IPC::Error,0u>::assertIsDead(a1);
  v2 = *a1;
  *a1 = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 16))(v2);
  }

  return a1;
}

uint64_t *WTF::NativePromise<std::optional<WebCore::Exception>,IPC::Error,0u>::ThenCommand<WTF::NativePromise<std::optional<WebCore::Exception>,IPC::Error,0u>::ThenCallback<true,WTF::NativePromise<std::optional<WebCore::Exception>,void,0u>>>::~ThenCommand(uint64_t *a1)
{
  v2 = a1[1];
  if (v2)
  {
    v3 = *a1;
    a1[1] = 0;
    v8 = v2;
    WTF::NativePromise<std::optional<WebCore::Exception>,IPC::Error,0u>::maybeSettle(v3, &v8, (a1 + 2));
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

unsigned __int8 *WTF::NativePromise<std::optional<WebCore::Exception>,IPC::Error,0u>::maybeSettle(uint64_t a1, WTF::NativePromiseBase **a2, WTF::Logger::LogSiteIdentifier *a3)
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

  *(a1 + 136) = 1;
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

  if (*(a1 + 88))
  {
    result = WTF::NativePromise<std::optional<WebCore::Exception>,IPC::Error,0u>::ThenCallbackBase::dispatch(*a2, a1, &v42);
  }

  else
  {
    v35 = *(a1 + 108);
    if (v35 == *(a1 + 104))
    {
      result = WTF::Vector<WTF::Ref<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1 + 96, v35 + 1, a2);
      v35 = *(a1 + 108);
      v36 = v35 + 1;
      v37 = *(a1 + 96);
      v38 = *result;
      *result = 0;
    }

    else
    {
      v36 = v35 + 1;
      v37 = *(a1 + 96);
      v38 = *a2;
      *a2 = 0;
    }

    *(v37 + 8 * v35) = v38;
    *(a1 + 108) = v36;
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

atomic_uint **WTF::NativePromise<std::optional<WebCore::Exception>,IPC::Error,0u>::ThenCommand<WTF::NativePromise<std::optional<WebCore::Exception>,IPC::Error,0u>::ThenCallback<true,WTF::NativePromise<std::optional<WebCore::Exception>,void,0u>>>::completionPromise(atomic_uint **a1, uint64_t *a2)
{
  v17 = 0uLL;
  *&v18 = "<completion promise>";
  *(&v18 + 1) = 0;
  v4 = WTF::fastMalloc(0x28);
  v5 = WTF::fastMalloc(0x90);
  v6 = WTF::NativePromise<std::optional<WebCore::Exception>,void,0u>::NativePromise(v5, &v17);
  *v4 = v6;
  v7 = v17;
  *(v4 + 24) = v18;
  *(v4 + 8) = v7;
  v8 = (v6 + 8);
  atomic_fetch_add((v6 + 8), 1u);
  WTF::NativePromise<std::optional<WebCore::Exception>,void,0u>::setDispatchMode(v6, 0, &v17);
  if (atomic_fetch_add(v8, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v8);
    (*(*v5 + 16))(v5);
  }

  v19 = v4;
  v9 = *v4;
  if (*v4)
  {
    atomic_fetch_add(v9 + 2, 1u);
  }

  *a1 = v9;
  v10 = a2[1];
  if (v10)
  {
    atomic_fetch_add(v10 + 2, 1u);
    WTF::NativePromise<std::optional<WebCore::Exception>,IPC::Error,0u>::ThenCallback<true,WTF::NativePromise<std::optional<WebCore::Exception>,void,0u>>::setCompletionPromise(v10, &v19);
    if (atomic_fetch_add(v10 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v10 + 2);
      (*(*v10 + 8))(v10);
    }
  }

  else
  {
    WTF::NativePromise<std::optional<WebCore::Exception>,IPC::Error,0u>::ThenCallback<true,WTF::NativePromise<std::optional<WebCore::Exception>,void,0u>>::setCompletionPromise(0, &v19);
  }

  v11 = *a2;
  v12 = a2[1];
  a2[1] = 0;
  *&v17 = v12;
  WTF::NativePromise<std::optional<WebCore::Exception>,IPC::Error,0u>::maybeSettle(v11, &v17, (a2 + 2));
  v13 = v17;
  *&v17 = 0;
  if (v13 && atomic_fetch_add(v13 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v13 + 2);
    (*(*v13 + 8))(v13);
  }

  result = v19;
  if (v19)
  {
    v15 = WTF::NativePromiseProducer<std::optional<WebCore::Exception>,void,0u>::~NativePromiseProducer(v19);
    return WTF::fastFree(v15, v16);
  }

  return result;
}

atomic_uint **WTF::NativePromise<std::optional<WebCore::Exception>,IPC::Error,0u>::ThenCallback<true,WTF::NativePromise<std::optional<WebCore::Exception>,void,0u>>::setCompletionPromise(uint64_t a1, atomic_uint ***a2)
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
  result = std::unique_ptr<WTF::NativePromiseProducer<std::optional<WebCore::Exception>,void,0u>>::reset[abi:sn200100]((a1 + 64), v7);
  atomic_compare_exchange_strong_explicit(v5, &v6, 0, memory_order_release, memory_order_relaxed);
  if (v6 != 1)
  {

    return WTF::Lock::unlockSlow(v5);
  }

  return result;
}

WTF::Lock *WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::createAndReject<IPC::Error,std::enable_if<true,void>>(uint64_t *a1, char *a2, WTF::Logger::LogSiteIdentifier *a3)
{
  v50[2] = *MEMORY[0x1E69E9840];
  v6 = WTF::fastMalloc(0x88);
  v7 = WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::NativePromise(v6, a3);
  v8 = 0;
  *a1 = v7;
  v9 = (v7 + 48);
  v39 = v9;
  v40 = 1;
  atomic_compare_exchange_strong_explicit(v9, &v8, 1u, memory_order_acquire, memory_order_acquire);
  if (v8)
  {
    v9 = MEMORY[0x19EB01E30]();
  }

  v10 = WTF::NativePromiseBase::logChannel(v9);
  if (*v10)
  {
    v11 = v10[16] >= 4u;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    v12 = v10;
    WTF::Logger::LogSiteIdentifier::toString(&v44, a3);
    WTF::String::String(&v43, " rejecting ");
    WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(&v42, v6);
    WTF::makeString<WTF::String,WTF::String,WTF::String>(&v44, &v43, &v42, &v45);
    v14 = v42;
    v42 = 0;
    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v13);
    }

    v15 = v43;
    v43 = 0;
    if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v13);
    }

    v16 = v44;
    v44 = 0;
    if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v13);
    }

    v17 = *(v12 + 4);
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    if (v18)
    {
      WTF::String::utf8();
      v20 = v41[0] ? v41[0] + 16 : 0;
      *buf = 136446210;
      v47 = v20;
      _os_log_impl(&dword_19D52D000, v17, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
      v18 = v41[0];
      v41[0] = 0;
      if (v18)
      {
        if (*v18 == 1)
        {
          v18 = WTF::fastFree(v18, v19);
        }

        else
        {
          --*v18;
        }
      }
    }

    if (*v12 && v12[16] >= 4u)
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
          v24 = WTF::Logger::observers(v18);
          v25 = *(v24 + 12);
          if (v25)
          {
            v26 = *v24;
            v27 = *v24 + 8 * v25;
            do
            {
              v28 = *v26;
              *buf = 0;
              WTF::Logger::LogSiteIdentifier::toString((&v47 + 4), a3);
              v48 = 0;
              WTF::String::String(v49, " rejecting ");
              v49[2] = 0;
              WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(v50, v6);
              WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v41, buf, 3uLL);
              (*(*v28 + 16))(v28, v12, 4, v41);
              WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v41, v29);
              for (i = 40; i != -8; i -= 16)
              {
                v31 = *&buf[i];
                *&buf[i] = 0;
                if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v31, v19);
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

    v33 = v45;
    v45 = 0;
    if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v33, v19);
    }
  }

  v34 = *a2;
  v35 = *(v6 + 80);
  if (v35 >= 2 && v35 != 255)
  {
    v36 = *(v6 + 56);
    *(v6 + 56) = 0;
    if (v36)
    {
      (*(*v36 + 8))(v36);
    }
  }

  *(v6 + 56) = v34;
  v37 = 1;
  *(v6 + 72) = 1;
  *(v6 + 80) = 1;
  result = WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::dispatchAll(v6, &v39);
  if (v40 == 1)
  {
    result = v39;
    atomic_compare_exchange_strong_explicit(v39, &v37, 0, memory_order_release, memory_order_relaxed);
    if (v37 != 1)
    {
      return WTF::Lock::unlockSlow(result);
    }
  }

  return result;
}

uint64_t WTF::NativePromiseProducer<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::NativePromiseProducer<std::enable_if<true,void>>(uint64_t a1, WTF::Logger::LogSiteIdentifier *a2)
{
  v4 = WTF::fastMalloc(0x88);
  v5 = WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::NativePromise(v4, a2);
  v6 = 0;
  *a1 = v5;
  v7 = *a2;
  *(a1 + 24) = *(a2 + 1);
  *(a1 + 8) = v7;
  atomic_fetch_add((v5 + 8), 1u);
  v8 = (v5 + 48);
  atomic_compare_exchange_strong_explicit((v5 + 48), &v6, 1u, memory_order_acquire, memory_order_acquire);
  if (v6)
  {
    v5 = MEMORY[0x19EB01E30](v5 + 48);
  }

  v9 = WTF::NativePromiseBase::logChannel(v5);
  if (*v9)
  {
    v10 = v9[16] >= 4u;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [27],WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>>(v9, a2, " runSynchronouslyOnTarget ", v4);
  }

  atomic_store(0, (v4 + 129));
  v11 = 1;
  atomic_compare_exchange_strong_explicit((v4 + 48), &v11, 0, memory_order_release, memory_order_relaxed);
  if (v11 != 1)
  {
    WTF::Lock::unlockSlow(v8);
  }

  if (atomic_fetch_add((v4 + 8), 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, (v4 + 8));
    (*(*v4 + 16))(v4);
  }

  return a1;
}

uint64_t WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::NativePromise(uint64_t a1, _OWORD *a2)
{
  v33[2] = *MEMORY[0x1E69E9840];
  *(a1 + 8) = 1;
  *a1 = &unk_1F112D548;
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

uint64_t WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::assertIsDead(uint64_t result)
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
      result = WTF::NativePromiseProducer<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::assertIsDead(v5);
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

uint64_t WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::~NativePromise(uint64_t a1)
{
  v1 = WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::~NativePromise(a1);

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

  WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::assertIsDead(a1);
  WTF::Vector<WTF::NativePromiseProducer<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 112, v26);
  WTF::Vector<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 88, v27);
  v28 = *(a1 + 80);
  if (v28 >= 2 && v28 != 255)
  {
    v29 = *(a1 + 56);
    *(a1 + 56) = 0;
    if (v29)
    {
      (*(*v29 + 8))(v29);
    }
  }

  *(a1 + 80) = -1;
  return a1;
}

atomic_uint **WTF::NativePromiseProducer<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::assertIsDead(atomic_uint **result)
{
  v1 = *result;
  if (*result)
  {
    atomic_fetch_add(v1 + 2, 1u);
    result = WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::assertIsDead(v1);
    if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v1 + 2);
      v2 = *(*v1 + 16);

      return v2(v1);
    }
  }

  return result;
}

uint64_t WTF::Vector<WTF::NativePromiseProducer<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = *a1;
    v5 = 40 * v3;
    do
    {
      v4 = WTF::NativePromiseProducer<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::~NativePromiseProducer(v4) + 5;
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

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<IPC::Connection::NoOpPromiseConverter,Messages::NetworkTransportSession::CreateOutgoingUnidirectionalStream,WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>>(WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1},void,IPC::Connection*,std::unique_ptr<IPC::Decoder> &>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F112D570;
  WTF::NativePromiseProducer<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::~NativePromiseProducer((a1 + 8));
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<IPC::Connection::NoOpPromiseConverter,Messages::NetworkTransportSession::CreateOutgoingUnidirectionalStream,WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>>(WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1},void,IPC::Connection*,std::unique_ptr<IPC::Decoder> &>::~CallableWrapper(atomic_uint **a1)
{
  *a1 = &unk_1F112D570;
  WTF::NativePromiseProducer<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::~NativePromiseProducer(a1 + 1);

  return WTF::fastFree(a1, v2);
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<IPC::Connection::NoOpPromiseConverter,Messages::NetworkTransportSession::CreateOutgoingUnidirectionalStream,WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>>(WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1},void,IPC::Connection*,std::unique_ptr<IPC::Decoder> &>::call(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  *a3 = 0;
  v5 = WTF::fastMalloc(0x10);
  *v5 = &unk_1F112D5C0;
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

unsigned __int8 *WTF::NativePromiseProducer<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::settleWithFunction<std::enable_if<true,void>>(atomic_uchar *a1, uint64_t *a2, WTF::Logger::LogSiteIdentifier *a3)
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
    result = WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::settleWithFunction(v10, a2, a3);
    if (atomic_fetch_add(v10 + 2, 0xFFFFFFFF) != 1)
    {
      return result;
    }

    atomic_store(1u, v10 + 2);
    goto LABEL_58;
  }

  return WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::settleWithFunction(0, a2, a3);
}

WTF::Lock *WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::settleWithFunction(uint64_t a1, uint64_t *a2, WTF::Logger::LogSiteIdentifier *a3)
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

  v32 = *(a1 + 80);
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
  *(a1 + 80) = 2;
  result = WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::dispatchAll(a1, &v37);
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

uint64_t WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::dispatchAll(uint64_t a1, atomic_uchar *volatile *a2)
{
  v29[0] = &v29[2];
  v29[1] = 1;
  __dst = &v24;
  v23 = 1;
  WTF::VectorBuffer<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::FastMalloc>::adopt(&__dst, (a1 + 88));
  v4 = *(a1 + 100);
  if (v4)
  {
    WTF::VectorDestructor<true,WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>>::destruct(*(a1 + 88), (*(a1 + 88) + 8 * v4));
  }

  WTF::VectorBuffer<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::FastMalloc>::adopt((a1 + 88), v29);
  WTF::Vector<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v29, v5);
  *&v6 = 0;
  v7 = *(a1 + 112);
  v19 = v7;
  v8 = *(a1 + 124);
  v20 = *(a1 + 120);
  v21 = v8;
  *v29 = v6;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  WTF::Vector<WTF::NativePromiseProducer<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v29, v9);
  if (HIDWORD(v23))
  {
    v11 = __dst;
    v12 = 8 * HIDWORD(v23);
    do
    {
      v13 = *v11++;
      WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::ThenCallbackBase::dispatch(v13, a1, a2);
      v12 -= 8;
    }

    while (v12);
  }

  if (v8)
  {
    v14 = v7 + 40 * v8;
    do
    {
      v15 = *v7;
      *v7 = 0;
      v29[0] = v15;
      v16 = *(v7 + 24);
      *&v29[1] = *(v7 + 8);
      *&v29[3] = v16;
      if (v15)
      {
        atomic_fetch_add(v15 + 2, 1u);
        v25 = 0;
        v26 = 0;
        v27 = "<chained promise>";
        v28 = 0;
        WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::settleAsChainedPromise<WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::Storage>(v15, (a1 + 56), &v25);
        if (atomic_fetch_add(v15 + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v15 + 2);
          (*(*v15 + 16))(v15);
        }
      }

      else
      {
        v25 = 0;
        v26 = 0;
        v27 = "<chained promise>";
        v28 = 0;
        WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::settleAsChainedPromise<WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::Storage>(0, (a1 + 56), &v25);
      }

      WTF::NativePromiseProducer<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::~NativePromiseProducer(v29);
      v7 += 40;
    }

    while (v7 != v14);
  }

  WTF::Vector<WTF::NativePromiseProducer<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v19, v10);
  return WTF::Vector<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&__dst, v17);
}

unsigned __int8 *WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::ThenCallbackBase::dispatch(WTF::NativePromiseBase *a1, uint64_t a2, atomic_uchar *volatile *a3)
{
  v5 = a1;
  if (!*(a1 + 2) || (v6 = atomic_load((a2 + 129)), v6 == 1) && (a1 = (*(**(a1 + 2) + 24))(*(a1 + 2)), a1))
  {
    if (*(v5 + 56) == 1)
    {
      v16[0] = v5;
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
        return WTF::Logger::log<char [32],WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>,char [21],void const*,char [11],WTF::Logger::LogSiteIdentifier,char [2]>(result, a2, v16, (v5 + 24));
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

      if (WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>::hasRunnable(a2))
      {
        WTF::NativePromise<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError,0u>::takeResultRunnable(&v15, a2);
        v13 = v15;
        (*(*v15 + 16))(v16, v15);
        (*(*v5 + 24))(v5, a2, v16);
        (*(*v13 + 8))(v13);
      }

      else
      {
        WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::takeResult(v16, a2);
        (*(*v5 + 24))(v5, a2, v16);
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
    *v8 = &unk_1F112D598;
    v8[1] = v5;
    v8[2] = a2;
    v16[0] = v8;
    (*(*v7 + 16))(v7, v16);
    result = v16[0];
    v16[0] = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F112D598;
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

uint64_t WTF::Detail::CallableWrapper<WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F112D598;
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

WTF::StringImpl *WTF::Detail::CallableWrapper<WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::call(WTF::NativePromiseBase *a1)
{
  v2 = *(a1 + 1);
  v1 = *(a1 + 2);
  if (*(v2 + 56) == 1)
  {
    v11[0] = *(a1 + 1);
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
      return WTF::Logger::log<char [32],WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>,char [21],void const*,char [11],WTF::Logger::LogSiteIdentifier,char [2]>(result, v1, v11, (v2 + 24));
    }
  }

  else
  {
    hasRunnable = WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>::hasRunnable(*(a1 + 2));
    v7 = *(a1 + 1);
    v8 = *(a1 + 2);
    if (hasRunnable)
    {
      WTF::NativePromise<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError,0u>::takeResultRunnable(&v10, v8);
      v9 = v10;
      (*(*v10 + 16))(v11, v10);
      (*(*v7 + 24))(v7, v8, v11);
      return (*(*v9 + 8))(v9);
    }

    else
    {
      WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::takeResult(v11, v8);
      return (*(*v7 + 24))(v7, v8, v11);
    }
  }

  return result;
}

WTF::Lock *WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::settleAsChainedPromise<WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::Storage>(uint64_t a1, uint64_t *a2, WTF::Logger::LogSiteIdentifier *a3)
{
  v6 = 0;
  v7 = (a1 + 48);
  v24 = v7;
  v25 = 1;
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

  v10 = *(a1 + 80);
  v11 = *(a2 + 24);
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
        goto LABEL_40;
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

            goto LABEL_41;
          }

          v20 = *(a1 + 56);
          *(a1 + 56) = 0;
          if (v20)
          {
            (*(*v20 + 8))(v20);
          }
        }

        v21 = *a2;
        *a2 = 0;
        *(a1 + 56) = v21;
        v13 = 2;
        goto LABEL_40;
      case 1:
        if (*(a1 + 80) && v10 != 255)
        {
          if (v10 == 1)
          {
            v14 = *a2;
            *(a1 + 72) = a2[2];
            *(a1 + 56) = v14;
            goto LABEL_41;
          }

          v18 = *(a1 + 56);
          *(a1 + 56) = 0;
          if (v18)
          {
            (*(*v18 + 8))(v18);
          }
        }

        *(a1 + 80) = -1;
        v19 = *a2;
        *(a1 + 72) = a2[2];
        *(a1 + 56) = v19;
        v13 = 1;
LABEL_40:
        *(a1 + 80) = v13;
        goto LABEL_41;
    }

    if (*(a1 + 80))
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

      *(a1 + 80) = 0;
    }
  }

LABEL_41:
  result = WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::dispatchAll(a1, &v24);
  v23 = v25;
  if (v25 == 1)
  {
    result = v24;
    atomic_compare_exchange_strong_explicit(v24, &v23, 0, memory_order_release, memory_order_relaxed);
    if (v23 != 1)
    {

      return WTF::Lock::unlockSlow(result);
    }
  }

  return result;
}