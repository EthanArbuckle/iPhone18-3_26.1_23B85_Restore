uint64_t IPC::handleMessage<Messages::WebSWServerConnection::RetrieveRecordResponseBody,IPC::Connection,WebKit::WebSWServerConnection,WebKit::WebSWServerConnection,void ()(WTF::ObjectIdentifierGeneric<WebCore::BackgroundFetchRecordIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::RetrieveRecordResponseBodyCallbackIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>)>(uint64_t *a1, uint64_t a2)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if (v5 & 1) != 0 && (v6 = v4, v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1), (v8))
  {

    return WebKit::WebSWServerConnection::retrieveRecordResponseBody(a2, v6, v7);
  }

  else
  {
    v10 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    result = a1[3];
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
      v12 = *(*result + 16);

      return v12();
    }
  }

  return result;
}

void *IPC::handleMessageAsync<Messages::WebSWServerConnection::AddCookieChangeSubscriptions,IPC::Connection,WebKit::WebSWServerConnection,WebKit::WebSWServerConnection,void ()(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WebCore::CookieChangeSubscription,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(std::optional<WebCore::ExceptionData> &&)> &&)>(atomic_ullong *a1, uint64_t *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WebCore::CookieChangeSubscription,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(&v13, a2);
  if (v15 == 1)
  {
    v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if ((v8 & 1) == 0)
    {
      return WTF::Vector<std::pair<WTF::AtomString,WTF::AtomString>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v14, v8);
    }

    v9 = v7;
    while (1)
    {
      v10 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v11 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v11, v10 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v11 == v10)
      {
        goto LABEL_8;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
    result = WTF::fastMalloc(0x18);
    *result = &unk_1F10F8528;
    result[1] = v9;
    result[2] = a1;
    v12 = result;
    if ((v15 & 1) == 0)
    {
      __break(1u);
      return result;
    }

    WebKit::WebSWServerConnection::addCookieChangeSubscriptions(a3, v13, v14, &v12);
    result = v12;
    v12 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    if (v15)
    {
      return WTF::Vector<std::pair<WTF::AtomString,WTF::AtomString>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v14, v8);
    }
  }

  return result;
}

void *IPC::handleMessageAsync<Messages::WebSWServerConnection::RemoveCookieChangeSubscriptions,IPC::Connection,WebKit::WebSWServerConnection,WebKit::WebSWServerConnection,void ()(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WebCore::CookieChangeSubscription,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(std::optional<WebCore::ExceptionData> &&)> &&)>(atomic_ullong *a1, uint64_t *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WebCore::CookieChangeSubscription,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(&v13, a2);
  if (v15 == 1)
  {
    v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if ((v8 & 1) == 0)
    {
      return WTF::Vector<std::pair<WTF::AtomString,WTF::AtomString>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v14, v8);
    }

    v9 = v7;
    while (1)
    {
      v10 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v11 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v11, v10 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v11 == v10)
      {
        goto LABEL_8;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
    result = WTF::fastMalloc(0x18);
    *result = &unk_1F10F8550;
    result[1] = v9;
    result[2] = a1;
    v12 = result;
    if ((v15 & 1) == 0)
    {
      __break(1u);
      return result;
    }

    WebKit::WebSWServerConnection::removeCookieChangeSubscriptions(a3, v13, v14, &v12);
    result = v12;
    v12 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    if (v15)
    {
      return WTF::Vector<std::pair<WTF::AtomString,WTF::AtomString>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v14, v8);
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebSWServerConnection::CookieChangeSubscriptions,IPC::Connection,WebKit::WebSWServerConnection,WebKit::WebSWServerConnection,void ()(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Vector<WebCore::CookieChangeSubscription,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::ExceptionData> &&)> &&)>(atomic_ullong *a1, uint64_t *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a2);
  if (v7)
  {
    v8 = result;
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v9)
    {
      v10 = result;
      while (1)
      {
        v11 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v12 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v12 == v11)
        {
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      v13 = WTF::fastMalloc(0x18);
      *v13 = &unk_1F10F8578;
      v13[1] = v10;
      v13[2] = a1;
      v14 = v13;
      WebKit::WebSWServerConnection::cookieChangeSubscriptions(a3, v8, &v14);
      result = v14;
      v14 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

void IPC::handleMessageAsync<Messages::WebSWServerConnection::AddRoutes,IPC::Connection,WebKit::WebSWServerConnection,WebKit::WebSWServerConnection,void ()(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WebCore::ServiceWorkerRoute,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<void,WebCore::ExceptionData> &&)> &&)>(atomic_ullong *a1, uint64_t *a2, uint64_t a3)
{
  v6 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v7 & 1) == 0)
  {
    goto LABEL_85;
  }

  v8 = a2[1];
  v9 = ((a2[2] + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = *a2;
  v11 = v9 - *a2;
  v12 = v8 >= v11;
  v13 = v8 - v11;
  if (!v12 || v13 <= 7)
  {
    *a2 = 0;
    a2[1] = 0;
    v73 = a2[3];
    if (v73)
    {
      if (v8)
      {
        (*(*v73 + 16))(v73);
        v8 = a2[1];
      }
    }

    else
    {
      v8 = 0;
    }

    goto LABEL_96;
  }

  a2[2] = (v9 + 1);
  if (!v9)
  {
LABEL_96:
    *a2 = 0;
    a2[1] = 0;
    v74 = a2[3];
    if (v74 && v8)
    {
      (*(*v74 + 16))(v74);
    }

    goto LABEL_84;
  }

  v15 = v6;
  v16 = *v9;
  v97 = 0;
  v98 = 0;
  if (v16 >= 0x2000)
  {
    while (1)
    {
      IPC::Decoder::decode<WebCore::ServiceWorkerRoute>(&v78, a2);
      v46 = v96;
      if (v96 == 1)
      {
        v47 = HIDWORD(v98);
        if (HIDWORD(v98) == v98)
        {
          WTF::Vector<WebCore::ServiceWorkerRoute,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::ServiceWorkerRoute>(&v97, &v78);
        }

        else
        {
          v48 = v97 + (HIDWORD(v98) << 7);
          *v48 = 0;
          *(v48 + 64) = 0;
          if (v86 == 1)
          {
            v49 = v78;
            v78 = 0;
            *v48 = v49;
            v50 = v79;
            v79 = 0;
            *(v48 + 8) = v50;
            v51 = v80;
            v80 = 0;
            *(v48 + 16) = v51;
            v52 = v81;
            v81 = 0;
            *(v48 + 24) = v52;
            v53 = v82;
            v82 = 0;
            *(v48 + 32) = v53;
            v54 = v83;
            v83 = 0;
            *(v48 + 40) = v54;
            v55 = v84;
            v84 = 0;
            *(v48 + 48) = v55;
            v56 = v85;
            v85 = 0;
            *(v48 + 56) = v56;
            *(v48 + 64) = 1;
          }

          v57 = v87;
          v87 = 0;
          *(v48 + 72) = v57;
          LODWORD(v57) = v88;
          *(v48 + 84) = v89;
          *(v48 + 80) = v57;
          *(v48 + 88) = 0;
          *(v48 + 96) = 0;
          v58 = v90;
          v90 = 0;
          *(v48 + 88) = v58;
          LODWORD(v58) = v91;
          v91 = 0;
          *(v48 + 96) = v58;
          LODWORD(v58) = v92;
          v92 = 0;
          *(v48 + 100) = v58;
          v59 = v93;
          v93 = 0;
          *(v48 + 104) = v59;
          *(v48 + 112) = 0;
          *(v48 + 120) = -1;
          v60 = v95;
          if (v95 != 255)
          {
            if (v95)
            {
              *(v48 + 112) = v94;
            }

            else
            {
              v61 = v94;
              v94 = 0;
              *(v48 + 112) = v61;
            }

            *(v48 + 120) = v60;
          }

          HIDWORD(v98) = v47 + 1;
        }
      }

      if (v96 == 1)
      {
        if (!v95)
        {
          v62 = v94;
          v94 = 0;
          if (v62)
          {
            if (atomic_fetch_add_explicit(v62, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v62, v10);
            }
          }
        }

        v95 = -1;
        std::unique_ptr<WebCore::ServiceWorkerRouteCondition>::reset[abi:sn200100](&v93, 0);
        WTF::Vector<WebCore::ServiceWorkerRouteCondition,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v90, v63);
        v64 = v87;
        v87 = 0;
        if (v64 && atomic_fetch_add_explicit(v64, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v64, v10);
        }

        if (v86 == 1)
        {
          WebCore::ServiceWorkerRoutePattern::~ServiceWorkerRoutePattern(&v78, v10);
        }
      }

      if ((v46 & 1) == 0)
      {
        goto LABEL_83;
      }

      if (!--v16)
      {
        v37 = v98;
        v36 = HIDWORD(v98);
        v16 = v97;
        if (v98 <= HIDWORD(v98))
        {
          goto LABEL_36;
        }

        v65 = v97;
        if (HIDWORD(v98))
        {
          if (HIDWORD(v98) >> 25)
          {
            __break(0xC471u);
            goto LABEL_102;
          }

          v65 = WTF::fastMalloc((HIDWORD(v98) << 7));
          if (v65 != v16)
          {
            v75 = v65;
            WTF::VectorMover<false,WebCore::ServiceWorkerRoute>::move(v16, v16 + (v36 << 7), v65);
            v65 = v75;
          }

          v37 = v36;
        }

        if (v16)
        {
          if (v65 == v16)
          {
            v37 = 0;
            v66 = 0;
          }

          else
          {
            v66 = v65;
          }

          WTF::fastFree(v16, v10);
          v16 = v66;
        }

        else
        {
          v16 = v65;
        }

        goto LABEL_36;
      }
    }
  }

  if (v16)
  {
    LODWORD(v98) = v16;
    v97 = WTF::fastMalloc((v16 << 7));
    while (1)
    {
      IPC::Decoder::decode<WebCore::ServiceWorkerRoute>(&v78, a2);
      v17 = v96;
      if (v96 == 1)
      {
        v18 = HIDWORD(v98);
        if (HIDWORD(v98) == v98)
        {
          WTF::Vector<WebCore::ServiceWorkerRoute,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::ServiceWorkerRoute>(&v97, &v78);
        }

        else
        {
          v19 = v97 + (HIDWORD(v98) << 7);
          *v19 = 0;
          *(v19 + 64) = 0;
          if (v86 == 1)
          {
            v20 = v78;
            v78 = 0;
            *v19 = v20;
            v21 = v79;
            v79 = 0;
            *(v19 + 8) = v21;
            v22 = v80;
            v80 = 0;
            *(v19 + 16) = v22;
            v23 = v81;
            v81 = 0;
            *(v19 + 24) = v23;
            v24 = v82;
            v82 = 0;
            *(v19 + 32) = v24;
            v25 = v83;
            v83 = 0;
            *(v19 + 40) = v25;
            v26 = v84;
            v84 = 0;
            *(v19 + 48) = v26;
            v27 = v85;
            v85 = 0;
            *(v19 + 56) = v27;
            *(v19 + 64) = 1;
          }

          v28 = v87;
          v87 = 0;
          *(v19 + 72) = v28;
          LODWORD(v28) = v88;
          *(v19 + 84) = v89;
          *(v19 + 80) = v28;
          *(v19 + 88) = 0;
          *(v19 + 96) = 0;
          v29 = v90;
          v90 = 0;
          *(v19 + 88) = v29;
          LODWORD(v29) = v91;
          v91 = 0;
          *(v19 + 96) = v29;
          LODWORD(v29) = v92;
          v92 = 0;
          *(v19 + 100) = v29;
          v30 = v93;
          v93 = 0;
          *(v19 + 104) = v30;
          *(v19 + 112) = 0;
          *(v19 + 120) = -1;
          v31 = v95;
          if (v95 != 255)
          {
            if (v95)
            {
              *(v19 + 112) = v94;
            }

            else
            {
              v32 = v94;
              v94 = 0;
              *(v19 + 112) = v32;
            }

            *(v19 + 120) = v31;
          }

          HIDWORD(v98) = v18 + 1;
        }
      }

      if (v96 == 1)
      {
        if (!v95)
        {
          v33 = v94;
          v94 = 0;
          if (v33)
          {
            if (atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v33, v10);
            }
          }
        }

        v95 = -1;
        std::unique_ptr<WebCore::ServiceWorkerRouteCondition>::reset[abi:sn200100](&v93, 0);
        WTF::Vector<WebCore::ServiceWorkerRouteCondition,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v90, v34);
        v35 = v87;
        v87 = 0;
        if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v35, v10);
        }

        if (v86 == 1)
        {
          WebCore::ServiceWorkerRoutePattern::~ServiceWorkerRoutePattern(&v78, v10);
        }
      }

      if ((v17 & 1) == 0)
      {
        break;
      }

      if (!--v16)
      {
        v16 = v97;
        v37 = v98;
        LODWORD(v36) = HIDWORD(v98);
        goto LABEL_36;
      }
    }

LABEL_83:
    WTF::Vector<WebCore::ServiceWorkerRoute,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v97, v10);
LABEL_84:
    v67 = *a2;
    v68 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    v69 = a2[3];
    if (v69 && v68)
    {
      (*(*v69 + 16))(v69, v67);
    }

LABEL_85:
    LOBYTE(v78) = 0;
    LOBYTE(v81) = 0;
    v40 = *a2;
    v70 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    v71 = a2[3];
    if (v71)
    {
      v72 = v70 == 0;
    }

    else
    {
      v72 = 1;
    }

    if (v72)
    {
      goto LABEL_46;
    }

    (*(*v71 + 16))(v71, v40);
    if ((v81 & 1) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_37;
  }

  LODWORD(v36) = 0;
  v37 = 0;
LABEL_36:
  v97 = 0;
  v98 = 0;
  v77 = 1;
  WTF::Vector<WebCore::ServiceWorkerRoute,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v97, v10);
  v76[0] = 0;
  v76[1] = 0;
  v78 = v15;
  v79 = v16;
  v80 = __PAIR64__(v36, v37);
  LOBYTE(v81) = 1;
  WTF::Vector<WebCore::ServiceWorkerRoute,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v76, v38);
LABEL_37:
  v39 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if (v40)
  {
    v41 = v39;
    while (1)
    {
      v42 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v43 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v43, v42 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v43 == v42)
      {
        goto LABEL_43;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_43:
    v44 = WTF::fastMalloc(0x18);
    *v44 = &unk_1F10F85A0;
    v44[1] = v41;
    v44[2] = a1;
    v76[0] = v44;
    if ((v81 & 1) == 0)
    {
LABEL_102:
      __break(1u);
      return;
    }

    WebKit::WebSWServerConnection::addRoutes(a3, v78, &v79, v76);
    v45 = v76[0];
    v76[0] = 0;
    if (v45)
    {
      (*(*v45 + 8))(v45);
    }
  }

LABEL_46:
  if (v81 == 1)
  {
    WTF::Vector<WebCore::ServiceWorkerRoute,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v79, v40);
  }
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::WebSWServerConnection::GetNotifications,IPC::Connection,WebKit::WebSWServerConnection,WebKit::WebSWServerConnection,void ()(WTF::URL const&,WTF::String const&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::ExceptionData> &&)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, WebKit::WebSWServerConnection *a3)
{
  IPC::ArgumentCoder<std::tuple<WTF::URL,WTF::String>,void>::decode<IPC::Decoder>(a2, v15);
  if (v17 & 1) != 0 || ((v7 = *a2, v12 = *(a2 + 1), *a2 = 0, *(a2 + 1) = 0, (result = *(a2 + 3)) != 0) ? (v13 = v12 == 0) : (v13 = 1), !v13 && (result = (*(*result + 16))(result, v7), (v17)))
  {
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v7)
    {
      v8 = result;
      while (1)
      {
        v9 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v10 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v10 == v9)
        {
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      result = WTF::fastMalloc(0x18);
      *result = &unk_1F10F85C8;
      *(result + 1) = v8;
      *(result + 2) = a1;
      v14 = result;
      if ((v17 & 1) == 0)
      {
        __break(1u);
        return result;
      }

      WebKit::WebSWServerConnection::getNotifications(a3, v15, &v16, &v14);
      result = v14;
      v14 = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }
    }
  }

  if (v17 == 1)
  {
    v11 = v16;
    v16 = 0;
    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v7);
    }

    result = v15[0];
    v15[0] = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v7);
      }
    }
  }

  return result;
}

atomic_uint *WebKit::WebSWServerToContextConnection::didReceiveMessage(WebKit::WebSWServerToContextConnection *this, atomic_ullong *a2, atomic_uint *a3)
{
  v3 = a3;
  v122 = *MEMORY[0x1E69E9840];
  ++*(this + 4);
  v5 = *(a3 + 25);
  switch(*(a3 + 25))
  {
    case 0xC36:
      result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
      if ((v8 & 1) == 0)
      {
        goto LABEL_154;
      }

      result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v3);
      if ((v8 & 1) == 0)
      {
        goto LABEL_154;
      }

      v10 = result;
      while (1)
      {
        v11 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v12 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v12 == v11)
        {
          goto LABEL_115;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_115:
      v71 = WTF::fastMalloc(0x18);
      *v71 = &unk_1F10F8668;
      v71[1] = v10;
      v71[2] = a2;
      *buf = v71;
      WebCore::SWServerToContextConnection::claim();
      result = *buf;
      *buf = 0;
      if (result)
      {
        goto LABEL_116;
      }

      goto LABEL_154;
    case 0xC37:
      result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
      if (v8)
      {
        result = WebCore::SWServerToContextConnection::didFailHeartBeatCheck();
      }

      goto LABEL_154;
    case 0xC38:
      result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
      if (v8)
      {
        result = WebKit::WebSWServerToContextConnection::didFinishActivation(this);
      }

      goto LABEL_154;
    case 0xC39:
      result = IPC::Decoder::decode<std::tuple<std::optional<WebCore::ServiceWorkerJobDataIdentifier>,WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,BOOL>>(buf, a3);
      if (LOBYTE(v111[1]) == 1)
      {
        result = WebKit::WebSWServerToContextConnection::didFinishInstall(this);
      }

      goto LABEL_154;
    case 0xC3A:
      result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String>>(buf, a3);
      if (buf[16] != 1)
      {
        goto LABEL_110;
      }

      result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v3);
      if ((v8 & 1) == 0)
      {
        goto LABEL_110;
      }

      v3 = result;
      while (1)
      {
        v26 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v27 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v27, v26 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v27 == v26)
        {
          goto LABEL_107;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_107:
      v70 = WTF::fastMalloc(0x18);
      *v70 = &unk_1F10F8618;
      v70[1] = v3;
      v70[2] = a2;
      *v119 = v70;
      if ((buf[16] & 1) == 0)
      {
        goto LABEL_163;
      }

      WebCore::SWServerToContextConnection::findClientByVisibleIdentifier();
      result = *v119;
      *v119 = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }

LABEL_110:
      if (buf[16] == 1)
      {
        goto LABEL_111;
      }

      goto LABEL_154;
    case 0xC3B:
      result = IPC::Decoder::decode<std::tuple<WebCore::ProcessQualified<WTF::UUID>>>(buf, a3);
      if (LOBYTE(v111[0]) != 1)
      {
        goto LABEL_154;
      }

      result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v3);
      if ((v8 & 1) == 0)
      {
        goto LABEL_154;
      }

      v3 = result;
      while (1)
      {
        v39 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v40 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v40, v39 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v40 == v39)
        {
          goto LABEL_118;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_118:
      v72 = WTF::fastMalloc(0x18);
      *v72 = &unk_1F10F8690;
      v72[1] = v3;
      v72[2] = a2;
      *v117 = v72;
      if ((v111[0] & 1) == 0)
      {
        goto LABEL_163;
      }

      *v119 = *buf;
      *&v119[16] = *&buf[16];
      WebKit::WebSWServerToContextConnection::focus(this, v119, v117);
      result = *v117;
      *v117 = 0;
      if (result)
      {
        goto LABEL_105;
      }

      goto LABEL_154;
    case 0xC3C:
      v41 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v42 & 1) == 0)
      {
        goto LABEL_82;
      }

      v43 = v41;
      v44 = IPC::ArgumentCoder<WebCore::ServiceWorkerClientQueryOptions,void>::decode(v3);
      if ((v44 & 0x10000) == 0)
      {
        goto LABEL_164;
      }

      *buf = v43;
      *&buf[8] = v44;
      buf[16] = 1;
      result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v3);
      if ((v8 & 1) == 0)
      {
        goto LABEL_154;
      }

      v45 = result;
      while (1)
      {
        v46 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v47 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v47, v46 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v47 == v46)
        {
          goto LABEL_143;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_143:
      v78 = WTF::fastMalloc(0x18);
      *v78 = &unk_1F10F8640;
      v78[1] = v45;
      v78[2] = a2;
      *v119 = v78;
      WebCore::SWServerToContextConnection::matchAll();
      result = *v119;
      *v119 = 0;
      if (result)
      {
LABEL_116:
        result = (*(*result + 8))(result);
      }

      goto LABEL_154;
    case 0xC3D:
      IPC::ArgumentCoder<WebCore::ProcessQualified<WTF::UUID>,void>::decode(a3, v117);
      if ((v117[32] & 1) == 0)
      {
        goto LABEL_164;
      }

      v32 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(v3);
      if ((v33 & 1) == 0)
      {
        goto LABEL_82;
      }

      v34 = v32;
      IPC::ArgumentCoder<WTF::URL,void>::decode(v3, v119);
      if ((v119[40] & 1) == 0)
      {
        v95 = *v3;
        v96 = *(v3 + 1);
        *v3 = 0;
        *(v3 + 1) = 0;
        v97 = *(v3 + 3);
        if (!v97)
        {
          goto LABEL_82;
        }

        if (!v96)
        {
          goto LABEL_82;
        }

        (*(*v97 + 16))(v97, v95);
        if ((v119[40] & 1) == 0)
        {
          goto LABEL_82;
        }
      }

      *buf = *v117;
      *&buf[16] = *&v117[16];
      v35 = *v119;
      v111[0] = v34;
      v111[1] = *v119;
      *v112 = *&v119[8];
      *v113 = *&v119[24];
      LOBYTE(v114) = 1;
      result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v3);
      if ((v8 & 1) == 0)
      {
        goto LABEL_150;
      }

      v36 = result;
      while (1)
      {
        v37 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v38 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v38, v37 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v38 == v37)
        {
          goto LABEL_146;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_146:
      v79 = WTF::fastMalloc(0x18);
      *v79 = &unk_1F10F86B8;
      v79[1] = v36;
      v79[2] = a2;
      *v117 = v79;
      *v119 = *buf;
      *&v119[16] = *&buf[16];
      WebKit::WebSWServerToContextConnection::navigate(this, v119, v34, &v111[1], v117);
      result = *v117;
      *v117 = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }

      if (v114)
      {
        v35 = v111[1];
LABEL_150:
        v111[1] = 0;
        if (v35)
        {
          goto LABEL_151;
        }
      }

      goto LABEL_154;
    case 0xC3E:
      v63 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v64 & 1) == 0)
      {
        goto LABEL_82;
      }

      v65 = v63;
      IPC::ArgumentCoder<WTF::URL,void>::decode(v3, v119);
      if ((v119[40] & 1) == 0)
      {
        v92 = *v3;
        v93 = *(v3 + 1);
        *v3 = 0;
        *(v3 + 1) = 0;
        v94 = *(v3 + 3);
        if (!v94)
        {
          goto LABEL_82;
        }

        if (!v93)
        {
          goto LABEL_82;
        }

        (*(*v94 + 16))(v94, v92);
        if ((v119[40] & 1) == 0)
        {
          goto LABEL_82;
        }
      }

      v35 = *v119;
      *buf = v65;
      *&buf[8] = *v119;
      *&buf[16] = *&v119[8];
      *v111 = *&v119[24];
      LOBYTE(v112[0]) = 1;
      result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v3);
      if ((v8 & 1) == 0)
      {
        goto LABEL_126;
      }

      v66 = result;
      while (1)
      {
        v67 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v68 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v68, v67 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v68 == v67)
        {
          goto LABEL_122;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_122:
      v73 = WTF::fastMalloc(0x18);
      *v73 = &unk_1F10F86E0;
      v73[1] = v66;
      v73[2] = a2;
      *v119 = v73;
      (*(*this + 104))(this, v65, &buf[8], v119);
      result = *v119;
      *v119 = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }

      if (v112[0])
      {
        v35 = *&buf[8];
LABEL_126:
        *&buf[8] = 0;
        if (v35)
        {
LABEL_151:
          if (atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            result = v35;
            goto LABEL_153;
          }
        }
      }

      goto LABEL_154;
    case 0xC3F:
      IPC::ArgumentCoder<WebCore::ProcessQualified<WTF::UUID>,void>::decode(a3, v119);
      if ((v119[32] & 1) == 0)
      {
        goto LABEL_164;
      }

      IPC::Decoder::decode<WebCore::MessageWithMessagePorts>(v3, v117);
      if (v117[24] != 1)
      {
        goto LABEL_82;
      }

      v29 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(v3);
      if (v28)
      {
        IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(v3, &v108);
        if (v109 & 1) != 0 || (v28 = *v3, v104 = *(v3 + 1), *v3 = 0, *(v3 + 1) = 0, (v105 = *(v3 + 3)) != 0) && v104 && ((*(*v105 + 16))(v105, v28), (v109))
        {
          if ((v117[24] & 1) == 0)
          {
            goto LABEL_163;
          }

          *buf = *v119;
          *&buf[16] = *&v119[16];
          v30 = *v117;
          memset(v117, 0, 24);
          *v111 = v30;
          v112[1] = v29;
          v113[0] = v108;
          v31 = 1;
          v112[0] = *&v117[16];
        }

        else
        {
          v31 = 0;
          buf[0] = 0;
        }

        LOBYTE(v114) = v31;
      }

      else
      {
        v31 = 0;
        buf[0] = 0;
        LOBYTE(v114) = 0;
      }

      if ((v117[24] & 1) == 0)
      {
        goto LABEL_133;
      }

      v74 = *&v117[8];
      if (*&v117[8])
      {
        *&v117[8] = 0;
        *&v117[16] = 0;
        WTF::fastFree(v74, v28);
      }

      v75 = *v117;
      *v117 = 0;
      if (v75)
      {
        WTF::ThreadSafeRefCounted<WebCore::SerializedScriptValue,(WTF::DestructionThread)0>::deref(v75);
        if ((v31 & 1) == 0)
        {
          goto LABEL_82;
        }
      }

      else
      {
LABEL_133:
        if ((v31 & 1) == 0)
        {
          goto LABEL_82;
        }
      }

      result = WebKit::WebSWServerToContextConnection::postMessageToServiceWorkerClient(this, buf, v111, v29, v113);
      if (v114)
      {
        v76 = v113[0];
        v113[0] = 0;
        if (v76 && atomic_fetch_add_explicit(v76, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v76, v8);
        }

        v77 = v111[1];
        if (v111[1])
        {
          v111[1] = 0;
          LODWORD(v112[0]) = 0;
          WTF::fastFree(v77, v8);
        }

        result = v111[0];
        v111[0] = 0;
        if (result)
        {
          result = WTF::ThreadSafeRefCounted<WebCore::SerializedScriptValue,(WTF::DestructionThread)0>::deref(result);
        }
      }

      goto LABEL_154;
    case 0xC40:
      v49 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v50 & 1) == 0)
      {
        goto LABEL_82;
      }

      v51 = v49;
      v52 = IPC::Decoder::decode<JSC::MessageSource>(v3);
      if ((v52 & 0x100) == 0)
      {
        goto LABEL_82;
      }

      v53 = v52;
      v54 = IPC::Decoder::decode<JSC::MessageLevel>(v3);
      if ((v54 & 0x100) == 0)
      {
        goto LABEL_82;
      }

      v55 = v54;
      IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(v3, v119);
      if ((v119[8] & 1) == 0)
      {
        v101 = *v3;
        v102 = *(v3 + 1);
        *v3 = 0;
        *(v3 + 1) = 0;
        v103 = *(v3 + 3);
        if (!v103)
        {
          goto LABEL_82;
        }

        if (!v102)
        {
          goto LABEL_82;
        }

        (*(*v103 + 16))(v103, v101);
        if ((v119[8] & 1) == 0)
        {
          goto LABEL_82;
        }
      }

      v56 = *(v3 + 1);
      v57 = ((*(v3 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
      v58 = *v3;
      v59 = v57 - *v3;
      v60 = v56 >= v59;
      v61 = v56 - v59;
      if (v60 && v61 > 7)
      {
        *(v3 + 2) = v57 + 1;
        if (v57)
        {
          v62 = *v57;
          *buf = v51;
          buf[8] = v53;
          buf[9] = v55;
          *&buf[16] = *v119;
          *&buf[24] = v62;
          LOBYTE(v111[0]) = 1;
          result = WebKit::WebSWServerToContextConnection::reportConsoleMessage(this, v51, v53, v55, &buf[16], v62);
          if (v111[0])
          {
            result = *&buf[16];
            *&buf[16] = 0;
            if (result)
            {
              goto LABEL_112;
            }
          }

          goto LABEL_154;
        }
      }

      else
      {
        *v3 = 0;
        *(v3 + 1) = 0;
        v106 = *(v3 + 3);
        if (v106)
        {
          if (v56)
          {
            (*(*v106 + 16))(v106);
            v58 = *v3;
            v56 = *(v3 + 1);
            goto LABEL_200;
          }
        }

        else
        {
          v56 = 0;
        }

        v58 = 0;
      }

LABEL_200:
      *v3 = 0;
      *(v3 + 1) = 0;
      v107 = *(v3 + 3);
      if (v107 && v56)
      {
        (*(*v107 + 16))(v107);
      }

      if (v119[8])
      {
        v88 = *v119;
        *v119 = 0;
        if (v88)
        {
          goto LABEL_170;
        }
      }

      goto LABEL_82;
    case 0xC41:
      IPC::Decoder::decode<std::optional<WebCore::ServiceWorkerJobDataIdentifier>>(v119, a3);
      if (v119[24] != 1)
      {
        goto LABEL_82;
      }

      v23 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(v3);
      if ((v24 & 1) == 0)
      {
        goto LABEL_82;
      }

      v25 = v23;
      IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(v3, v117);
      if ((v117[8] & 1) == 0)
      {
        v98 = *v3;
        v99 = *(v3 + 1);
        *v3 = 0;
        *(v3 + 1) = 0;
        v100 = *(v3 + 3);
        if (!v100)
        {
          goto LABEL_82;
        }

        if (!v99)
        {
          goto LABEL_82;
        }

        (*(*v100 + 16))(v100, v98);
        if ((v117[8] & 1) == 0)
        {
          goto LABEL_82;
        }
      }

      if ((v119[24] & 1) == 0)
      {
        goto LABEL_163;
      }

      *buf = *v119;
      *&buf[16] = *&v119[16];
      *&buf[24] = v25;
      v111[0] = *v117;
      LOBYTE(v111[1]) = 1;
      WebCore::SWServerToContextConnection::scriptContextFailedToStart();
      result = v111[0];
      v111[0] = 0;
      if (result)
      {
        goto LABEL_112;
      }

      goto LABEL_154;
    case 0xC42:
      result = IPC::Decoder::decode<std::tuple<std::optional<WebCore::ServiceWorkerJobDataIdentifier>,WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,BOOL>>(buf, a3);
      if (LOBYTE(v111[1]) == 1)
      {
        result = WebCore::SWServerToContextConnection::scriptContextStarted();
      }

      goto LABEL_154;
    case 0xC43:
      result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,BOOL>>(buf, a3);
      if (buf[16] == 1)
      {
        result = WebKit::WebSWServerToContextConnection::setAsInspected(this, *buf, buf[8]);
      }

      goto LABEL_154;
    case 0xC44:
      v17 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v18 & 1) == 0)
      {
        goto LABEL_82;
      }

      v19 = v17;
      IPC::ArgumentCoder<WTF::URL,void>::decode(v3, v117);
      if ((v118 & 1) == 0)
      {
        v89 = *v3;
        v90 = *(v3 + 1);
        *v3 = 0;
        *(v3 + 1) = 0;
        v91 = *(v3 + 3);
        if (!v91)
        {
          goto LABEL_82;
        }

        if (!v90)
        {
          goto LABEL_82;
        }

        (*(*v91 + 16))(v91, v89);
        if ((v118 & 1) == 0)
        {
          goto LABEL_82;
        }
      }

      IPC::ArgumentCoder<WebCore::ServiceWorkerImportedScript,void>::decode(v3, v119);
      if ((v121 & 1) == 0)
      {
        v58 = *v3;
        v86 = *(v3 + 1);
        *v3 = 0;
        *(v3 + 1) = 0;
        v87 = *(v3 + 3);
        if (!v87 || !v86 || ((*(*v87 + 16))(v87, v58), (v121 & 1) == 0))
        {
          buf[0] = 0;
          v116 = 0;
          if (v118)
          {
            v88 = *v117;
            *v117 = 0;
            if (v88)
            {
LABEL_170:
              if (atomic_fetch_add_explicit(v88, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v88, v58);
              }
            }
          }

          goto LABEL_82;
        }
      }

      if ((v118 & 1) == 0)
      {
LABEL_163:
        __break(1u);
LABEL_164:
        v83 = *v3;
        v84 = *(v3 + 1);
        *v3 = 0;
        *(v3 + 1) = 0;
        v85 = *(v3 + 3);
        if (v85 && v84)
        {
          (*(*v85 + 16))(v85, v83);
        }

LABEL_82:
        v8 = *v3;
        v9 = *(v3 + 1);
        *v3 = 0;
        *(v3 + 1) = 0;
        result = *(v3 + 3);
        if (result && v9)
        {
          result = (*(*result + 16))(result, v8);
        }

        goto LABEL_154;
      }

      *buf = v19;
      *&buf[8] = *v117;
      *&buf[16] = *&v117[8];
      *v111 = *&v117[24];
      *v112 = *v119;
      *v113 = *&v119[16];
      v114 = *&v119[32];
      v115 = v120;
      v116 = 1;
      WebCore::SWServerToContextConnection::setScriptResource();
      v20 = v115;
      v115 = 0;
      if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v20, v8);
      }

      v21 = v112[1];
      v112[1] = 0;
      if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v21, v8);
      }

      v22 = v112[0];
      v112[0] = 0;
      if (v22 && atomic_fetch_add(v22 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v22 + 2);
        (*(*v22 + 8))(v22);
      }

LABEL_111:
      result = *&buf[8];
      *&buf[8] = 0;
      if (result)
      {
LABEL_112:
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
LABEL_153:
          result = WTF::StringImpl::destroy(result, v8);
        }
      }

LABEL_154:
      if (*(this + 4) == 1)
      {
        return (*(*this + 8))(this, v8, v9);
      }

      --*(this + 4);
      return result;
    case 0xC45:
      result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,BOOL>>(buf, a3);
      if (buf[16] == 1)
      {
        result = WebCore::SWServerToContextConnection::setServiceWorkerHasPendingEvents();
      }

      goto LABEL_154;
    case 0xC46:
      result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
      if ((v8 & 1) == 0)
      {
        goto LABEL_154;
      }

      v13 = result;
      result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v3);
      if ((v8 & 1) == 0)
      {
        goto LABEL_154;
      }

      v14 = result;
      while (1)
      {
        v15 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v16 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v16, v15 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v16 == v15)
        {
          goto LABEL_104;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_104:
      v69 = WTF::fastMalloc(0x18);
      *v69 = &unk_1F10F85F0;
      v69[1] = v14;
      v69[2] = a2;
      *buf = v69;
      WebKit::WebSWServerToContextConnection::skipWaiting(this, v13, buf);
      result = *buf;
      *buf = 0;
      if (result)
      {
LABEL_105:
        result = (*(*result + 8))(result);
      }

      goto LABEL_154;
    case 0xC47:
      result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
      if (v8)
      {
        result = WebKit::WebSWServerToContextConnection::workerTerminated(this);
      }

      goto LABEL_154;
    default:
      v48 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        if (v5 >= 0x107F)
        {
          v80 = 4223;
        }

        else
        {
          v80 = v5;
        }

        v81 = (&IPC::Detail::messageDescriptions)[3 * v80];
        v82 = *(v3 + 7);
        *buf = 136315394;
        *&buf[4] = v81;
        *&buf[12] = 2048;
        *&buf[14] = v82;
        _os_log_error_impl(&dword_19D52D000, v48, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", buf, 0x16u);
      }

      goto LABEL_82;
  }
}

void WebKit::WebSocketChannel::didReceiveMessage(WebKit::WebSocketChannel *this, IPC::Connection *a2, IPC::Decoder *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  ++*(this + 10);
  v5 = *(a3 + 25);
  if (v5 <= 0xC60)
  {
    if (v5 == 3166)
    {
      v8 = *(a3 + 1);
      v9 = ((*(a3 + 2) + 1) & 0xFFFFFFFFFFFFFFFELL);
      v10 = v9 - *a3;
      v11 = v8 >= v10;
      v12 = v8 - v10;
      if (v11 && v12 > 1)
      {
        *(a3 + 2) = v9 + 1;
        if (v9)
        {
          v14 = *v9;
          IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, &v32);
          if (v33 & 1) != 0 || (v27 = *a3, v28 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v29 = *(a3 + 3)) != 0) && v28 && ((*(*v29 + 16))(v29, v27), (v33))
          {
            *buf = v14;
            *&buf[8] = v32;
            buf[16] = 1;
            WebKit::WebSocketChannel::didClose(this, v14, &buf[8]);
            if ((buf[16] & 1) == 0)
            {
              goto LABEL_56;
            }

            v15 = *&buf[8];
            *&buf[8] = 0;
            if (!v15)
            {
              goto LABEL_56;
            }

LABEL_40:
            if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v15, v6);
            }

            goto LABEL_56;
          }

          goto LABEL_28;
        }
      }

      else
      {
        *a3 = 0;
        *(a3 + 1) = 0;
        v30 = *(a3 + 3);
        if (v30)
        {
          if (v8)
          {
            (*(*v30 + 16))(v30);
            v8 = *(a3 + 1);
          }
        }

        else
        {
          v8 = 0;
        }
      }

      *a3 = 0;
      *(a3 + 1) = 0;
      v31 = *(a3 + 3);
      if (v31 && v8)
      {
        (*(*v31 + 16))(v31);
      }

LABEL_28:
      v6 = *a3;
      v7 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v17 = *(a3 + 3);
      if (v17 && v7)
      {
        (*(*v17 + 16))(v17, v6);
      }

      goto LABEL_56;
    }

    if (v5 == 3167)
    {
      IPC::ArgumentCoder<std::tuple<WTF::String,WTF::String>,void>::decode<IPC::Decoder>(a3, buf);
      if ((buf[16] & 1) == 0)
      {
        v6 = *a3;
        v7 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v26 = *(a3 + 3);
        if (!v26)
        {
          goto LABEL_56;
        }

        if (!v7)
        {
          goto LABEL_56;
        }

        (*(*v26 + 16))(v26, v6);
        if ((buf[16] & 1) == 0)
        {
          goto LABEL_56;
        }
      }

      WebKit::WebSocketChannel::didConnect(this, buf, &buf[8]);
      if ((buf[16] & 1) == 0)
      {
        goto LABEL_56;
      }

      v19 = *&buf[8];
      *&buf[8] = 0;
      if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v19, v6);
      }

      goto LABEL_39;
    }

    if (v5 != 3168)
    {
LABEL_27:
      v16 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        if (v5 >= 0x107F)
        {
          v20 = 4223;
        }

        else
        {
          v20 = v5;
        }

        v21 = (&IPC::Detail::messageDescriptions)[3 * v20];
        v22 = *(a3 + 7);
        *buf = 136315394;
        *&buf[4] = v21;
        *&buf[12] = 2048;
        *&buf[14] = v22;
        _os_log_error_impl(&dword_19D52D000, v16, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", buf, 0x16u);
      }

      goto LABEL_28;
    }

    IPC::Decoder::decode<std::tuple<std::span<unsigned char const,18446744073709551615ul>>>(a3, buf);
    if (buf[16] == 1)
    {
      WebKit::WebSocketChannel::didReceiveBinaryData(this, *buf, *&buf[8]);
    }
  }

  else if (*(a3 + 25) > 0xC62u)
  {
    if (v5 == 3171)
    {
      IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a3, buf);
      if ((buf[8] & 1) == 0)
      {
        v6 = *a3;
        v7 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v23 = *(a3 + 3);
        if (!v23)
        {
          goto LABEL_56;
        }

        if (!v7)
        {
          goto LABEL_56;
        }

        (*(*v23 + 16))(v23, v6);
        if ((buf[8] & 1) == 0)
        {
          goto LABEL_56;
        }
      }

      WebKit::WebSocketChannel::didReceiveText(this, buf);
      goto LABEL_38;
    }

    if (v5 != 3172)
    {
      goto LABEL_27;
    }

    IPC::ArgumentCoder<std::tuple<WebCore::ResourceRequest>,void>::decode<IPC::Decoder>(a3, buf);
    if (v35 & 1) != 0 || (v6 = *a3, v7 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v25 = *(a3 + 3)) != 0) && v7 && ((*(*v25 + 16))(v25, v6), (v35))
    {
      WebKit::WebSocketChannel::didSendHandshakeRequest(this, buf);
      if (v35)
      {
        WebCore::ResourceRequest::~ResourceRequest(buf);
      }
    }
  }

  else
  {
    if (v5 != 3169)
    {
      if (v5 == 3170)
      {
        IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a3, buf);
        if ((buf[8] & 1) == 0)
        {
          v6 = *a3;
          v7 = *(a3 + 1);
          *a3 = 0;
          *(a3 + 1) = 0;
          v24 = *(a3 + 3);
          if (!v24)
          {
            goto LABEL_56;
          }

          if (!v7)
          {
            goto LABEL_56;
          }

          (*(*v24 + 16))(v24, v6);
          if ((buf[8] & 1) == 0)
          {
            goto LABEL_56;
          }
        }

        WebKit::WebSocketChannel::didReceiveMessageError(this, buf);
LABEL_38:
        if ((buf[8] & 1) == 0)
        {
          goto LABEL_56;
        }

LABEL_39:
        v15 = *buf;
        *buf = 0;
        if (!v15)
        {
          goto LABEL_56;
        }

        goto LABEL_40;
      }

      goto LABEL_27;
    }

    IPC::Decoder::decode<std::tuple<WebCore::ResourceResponse>>(buf, a3);
    if (v37 == 1)
    {
      WebKit::WebSocketChannel::didReceiveHandshakeResponse(this, buf);
      if (v37)
      {
        v18 = cf;
        cf = 0;
        if (v18)
        {
          CFRelease(v18);
        }

        WebCore::ResourceResponseBase::~ResourceResponseBase(buf, v6);
      }
    }
  }

LABEL_56:
  if (*(this + 10) == 1)
  {
    (*(*this + 8))(this, v6, v7);
  }

  else
  {
    --*(this + 10);
  }
}

WTF *IPC::Decoder::decode<WebKit::RTCNetwork>(uint64_t a1, uint64_t *a2)
{
  result = IPC::ArgumentCoder<WebKit::RTCNetwork,void>::decode(a2, a1);
  if ((*(a1 + 96) & 1) == 0)
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

WTF *WTF::Vector<WebKit::RTCNetwork,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::RTCNetwork>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<WebKit::RTCNetwork,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  v4 = (*a1 + 96 * *(a1 + 12));
  *v4 = 0;
  v4[1] = 0;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(v4, v3);
  v4[3] = 0;
  v4[2] = 0;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt((v4 + 2), (v3 + 16));
  v5 = *(v3 + 32);
  v6 = *(v3 + 48);
  v7 = *(v3 + 60);
  v4[10] = 0;
  v4 += 10;
  *(v4 - 20) = v7;
  *(v4 - 3) = v5;
  *(v4 - 2) = v6;
  v4[1] = 0;
  result = WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(v4, (v3 + 80));
  ++*(a1 + 12);
  return result;
}

unint64_t WTF::Vector<WebKit::RTCNetwork,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 96 * *(a1 + 12) <= a3)
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

    WTF::Vector<WebKit::RTCNetwork,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebKit::RTCNetwork,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WebKit::RTCNetwork,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    if (a2 >= 0x2AAAAAB)
    {
      __break(0xC471u);
      JUMPOUT(0x19DAECE24);
    }

    v3 = *a1;
    v4 = (*a1 + 96 * *(a1 + 12));
    v5 = 96 * a2;
    v6 = WTF::fastMalloc((96 * a2));
    *(a1 + 8) = v5 / 0x60;
    *a1 = v6;
    WTF::VectorMover<false,WebKit::RTCNetwork>::move(v3, v4, v6);
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

WTF *WTF::VectorMover<false,WebKit::RTCNetwork>::move(WTF *result, WTF *a2, void *a3)
{
  if (result != a2)
  {
    v5 = result;
    do
    {
      *a3 = 0;
      a3[1] = 0;
      WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a3, v5);
      a3[3] = 0;
      a3[2] = 0;
      WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt((a3 + 2), v5 + 4);
      v6 = *(v5 + 2);
      v7 = *(v5 + 3);
      v8 = *(v5 + 60);
      a3[10] = 0;
      v9 = (a3 + 10);
      *(v9 - 20) = v8;
      *(v9 - 48) = v6;
      *(v9 - 32) = v7;
      *(v9 + 8) = 0;
      WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(v9, v5 + 20);
      v11 = *(v5 + 10);
      if (v11)
      {
        *(v5 + 10) = 0;
        *(v5 + 22) = 0;
        WTF::fastFree(v11, v10);
      }

      v12 = *(v5 + 2);
      if (v12)
      {
        *(v5 + 2) = 0;
        *(v5 + 6) = 0;
        WTF::fastFree(v12, v10);
      }

      result = *v5;
      if (*v5)
      {
        *v5 = 0;
        *(v5 + 2) = 0;
        result = WTF::fastFree(result, v10);
      }

      v5 = (v5 + 96);
      a3 = (v9 + 16);
    }

    while (v5 != a2);
  }

  return result;
}

uint64_t WTF::Vector<WebKit::RTCNetwork,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(uint64_t result, unint64_t this)
{
  if (*(result + 8) > this)
  {
    v3 = result;
    v4 = *(result + 12);
    if (v4 > this)
    {
      result = WTF::VectorTypeOperations<WebKit::RTCNetwork>::destruct((*result + 96 * this), (*result + 96 * v4));
      *(v3 + 12) = this;
      LODWORD(v4) = this;
    }

    v5 = *v3;
    if (this)
    {
      if (this >= 0x2AAAAAB)
      {
        __break(0xC471u);
        JUMPOUT(0x19DAECFF8);
      }

      v6 = (96 * this);
      result = WTF::fastMalloc(v6);
      *(v3 + 8) = v6 / 0x60;
      *v3 = result;
      if (result != v5)
      {
        result = WTF::VectorMover<false,WebKit::RTCNetwork>::move(v5, (v5 + 96 * v4), result);
      }
    }

    if (v5)
    {
      if (*v3 == v5)
      {
        *v3 = 0;
        *(v3 + 8) = 0;
      }

      return WTF::fastFree(v5, this);
    }
  }

  return result;
}

WTF *WTF::VectorTypeOperations<WebKit::RTCNetwork>::destruct(WTF *result, WTF *a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      v4 = *(v3 + 10);
      if (v4)
      {
        *(v3 + 10) = 0;
        *(v3 + 22) = 0;
        WTF::fastFree(v4, a2);
      }

      v5 = *(v3 + 2);
      if (v5)
      {
        *(v3 + 2) = 0;
        *(v3 + 6) = 0;
        WTF::fastFree(v5, a2);
      }

      result = *v3;
      if (*v3)
      {
        *v3 = 0;
        *(v3 + 2) = 0;
        result = WTF::fastFree(result, a2);
      }

      v3 = (v3 + 96);
    }

    while (v3 != a2);
  }

  return result;
}

uint64_t WTF::Vector<WebKit::RTCNetwork,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorTypeOperations<WebKit::RTCNetwork>::destruct(*a1, (*a1 + 96 * v3));
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

WebKit::WebRTCResolver *WTF::RefCounted<WebKit::WebRTCResolver>::deref(WebKit::WebRTCResolver *result)
{
  if (*result == 1)
  {
    WebKit::WebRTCResolver::~WebRTCResolver(result);

    return bmalloc::api::tzoneFree(v2, v3);
  }

  else
  {
    --*result;
  }

  return result;
}

void IPC::Decoder::decode<std::tuple<WebCore::ResourceRequest,IPC::FormDataReference,WebCore::ResourceResponse>>(_BYTE *a1, IPC::Decoder *a2)
{
  IPC::ArgumentCoder<std::tuple<WebCore::ResourceRequest,IPC::FormDataReference,WebCore::ResourceResponse>,void>::decode<IPC::Decoder>(a1, a2);
  if ((a1[472] & 1) == 0)
  {

    IPC::Decoder::markInvalid(a2);
  }
}

void IPC::ArgumentCoder<std::tuple<WebCore::ResourceRequest,IPC::FormDataReference,WebCore::ResourceResponse>,void>::decode<IPC::Decoder>(_BYTE *a1, IPC::Decoder *a2)
{
  IPC::Decoder::decode<WebCore::ResourceRequest>(a2, v4);
  if (v5 == 1)
  {
    IPC::ArgumentCoder<std::tuple<WebCore::ResourceRequest,IPC::FormDataReference,WebCore::ResourceResponse>,void>::decode<IPC::Decoder,WebCore::ResourceRequest>(a1, a2, v4);
    if (v5)
    {
      WebCore::ResourceRequest::~ResourceRequest(v4);
    }
  }

  else
  {
    *a1 = 0;
    a1[472] = 0;
  }
}

WTF::RefCountedBase *IPC::ArgumentCoder<std::tuple<WebCore::ResourceRequest,IPC::FormDataReference,WebCore::ResourceResponse>,void>::decode<IPC::Decoder,WebCore::ResourceRequest>(_BYTE *a1, WTF *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<IPC::FormDataReference>(a2, &v7);
  if (v8 == 1)
  {
    result = IPC::ArgumentCoder<std::tuple<WebCore::ResourceRequest,IPC::FormDataReference,WebCore::ResourceResponse>,void>::decode<IPC::Decoder,WebCore::ResourceRequest,IPC::FormDataReference>(a1, a2, a3, &v7);
    if (v8)
    {
      result = v7;
      v7 = 0;
      if (result)
      {
        return WTF::RefCounted<WebCore::FormData>::deref(result);
      }
    }
  }

  else
  {
    *a1 = 0;
    a1[472] = 0;
  }

  return result;
}

WebCore::ResourceResponseBase *IPC::ArgumentCoder<std::tuple<WebCore::ResourceRequest,IPC::FormDataReference,WebCore::ResourceResponse>,void>::decode<IPC::Decoder,WebCore::ResourceRequest,IPC::FormDataReference>(_BYTE *a1, IPC::Decoder *a2, uint64_t a3, uint64_t a4)
{
  IPC::Decoder::decode<WebCore::ResourceResponse>(a2, v9);
  if (v9[264])
  {
    IPC::ArgumentCoder<std::tuple<WebCore::ResourceRequest,IPC::FormDataReference,WebCore::ResourceResponse>,void>::decode<IPC::Decoder,WebCore::ResourceRequest,IPC::FormDataReference,WebCore::ResourceResponse>(a1, a3, a4, v9);
  }

  else
  {
    *a1 = 0;
    a1[472] = 0;
  }

  return std::optional<WebCore::ResourceResponse>::~optional(v9, v7);
}

uint64_t IPC::ArgumentCoder<std::tuple<WebCore::ResourceRequest,IPC::FormDataReference,WebCore::ResourceResponse>,void>::decode<IPC::Decoder,WebCore::ResourceRequest,IPC::FormDataReference,WebCore::ResourceResponse>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 200) & 1) != 0 && (*(a3 + 8) & 1) != 0 && (*(a4 + 264))
  {
    result = _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2EEEEJN7WebCore15ResourceRequestEN3IPC17FormDataReferenceENS3_16ResourceResponseEEEC2B8sn200100IJLm0ELm1ELm2EEJS4_S6_S7_EJEJEJS4_S6_S7_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSB_IJDpT2_EEEDpOT3_(result, a2, a3, a4);
    *(result + 472) = 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2EEEEJN7WebCore15ResourceRequestEN3IPC17FormDataReferenceENS3_16ResourceResponseEEEC2B8sn200100IJLm0ELm1ELm2EEJS4_S6_S7_EJEJEJS4_S6_S7_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSB_IJDpT2_EEEDpOT3_(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v7 = std::__tuple_leaf<0ul,WebCore::ResourceRequest,false>::__tuple_leaf[abi:sn200100]<WebCore::ResourceRequest,0>(a1, a2);
  v8 = *a3;
  *a3 = 0;
  *(v7 + 200) = v8;
  std::__tuple_leaf<0ul,WebCore::ResourceResponse,false>::__tuple_leaf[abi:sn200100]<WebCore::ResourceResponse,0>(v7 + 208, a4);
  return a1;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages17WebResourceLoader15WillSendRequestENS2_10ConnectionEN6WebKit17WebResourceLoaderES9_FvON7WebCore15ResourceRequestEONS2_17FormDataReferenceEONSA_16ResourceResponseEONS_17CompletionHandlerIFvSC_bEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSC_bEED1Ev(void *a1)
{
  *a1 = &unk_1F10F80C8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages17WebResourceLoader15WillSendRequestENS2_10ConnectionEN6WebKit17WebResourceLoaderES9_FvON7WebCore15ResourceRequestEONS2_17FormDataReferenceEONSA_16ResourceResponseEONS_17CompletionHandlerIFvSC_bEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSC_bEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F80C8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *IPC::Connection::sendAsyncReply<Messages::WebResourceLoader::WillSendRequest,WebCore::ResourceRequest,BOOL>(uint64_t *a1, void *a2, WebCore::ResourceRequest *a3, char *a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 3939;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a2;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v13 = v8;
  IPC::ArgumentCoder<WebCore::ResourceRequest,void>::encode(v8, a3);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v8, *a4);
  IPC::Connection::sendMessageImpl(a1, &v13, 0, 0);
  result = v13;
  v13 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v9);
    return bmalloc::api::tzoneFree(v11, v12);
  }

  return result;
}

uint64_t std::optional<std::tuple<WebCore::ResourceRequest,IPC::FormDataReference,WebCore::ResourceResponse>>::~optional(uint64_t a1, WTF::StringImpl *a2)
{
  if (*(a1 + 472) == 1)
  {
    v3 = *(a1 + 456);
    *(a1 + 456) = 0;
    if (v3)
    {
      CFRelease(v3);
    }

    WebCore::ResourceResponseBase::~ResourceResponseBase((a1 + 208), a2);
    v4 = *(a1 + 200);
    *(a1 + 200) = 0;
    if (v4)
    {
      WTF::RefCounted<WebCore::FormData>::deref(v4);
    }

    WebCore::ResourceRequest::~ResourceRequest(a1);
  }

  return a1;
}

void IPC::Decoder::decode<IPC::SharedBufferReference>(uint64_t a1, IPC::Decoder *a2)
{
  IPC::ArgumentCoder<IPC::SharedBufferReference,void>::decode(a2, a1);
  if ((*(a1 + 24) & 1) == 0)
  {

    IPC::Decoder::markInvalid(a2);
  }
}

uint64_t std::optional<std::tuple<WebCore::ResourceError>>::~optional(uint64_t a1, WTF::StringImpl *a2)
{
  if (*(a1 + 80) == 1)
  {
    v3 = *(a1 + 64);
    *(a1 + 64) = 0;
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = *(a1 + 48);
    *(a1 + 48) = 0;
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }

    v5 = *(a1 + 8);
    *(a1 + 8) = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, a2);
    }

    v6 = *a1;
    *a1 = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, a2);
    }
  }

  return a1;
}

IPC::Decoder *IPC::Decoder::decode<std::tuple<WTF::UUID,WTF::UUID>>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<std::tuple<WTF::UUID,WTF::UUID>,void>::decode<IPC::Decoder>(a1, a2);
  if ((*(a1 + 32) & 1) == 0)
  {

    return IPC::Decoder::markInvalid(a2);
  }

  return result;
}

IPC::Decoder *IPC::ArgumentCoder<std::tuple<WTF::UUID,WTF::UUID>,void>::decode<IPC::Decoder>(uint64_t a1, IPC::Decoder *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  result = IPC::Decoder::decode<WTF::UUID>(a2, &v7);
  if (v8)
  {
    result = IPC::Decoder::decode<WTF::UUID>(a2, &v9);
    if (v10)
    {
      if ((v8 & 1) == 0)
      {
        __break(1u);
      }

      v5 = v9;
      *a1 = v7;
      *(a1 + 16) = v5;
      v6 = 1;
    }

    else
    {
      v6 = 0;
      *a1 = 0;
    }

    *(a1 + 32) = v6;
  }

  else
  {
    *a1 = 0;
    *(a1 + 32) = 0;
  }

  return result;
}

void IPC::Decoder::decode<std::tuple<WebCore::ResourceResponse>>(_BYTE *a1, IPC::Decoder *a2)
{
  IPC::ArgumentCoder<std::tuple<WebCore::ResourceResponse>,void>::decode<IPC::Decoder>(a2, a1);
  if ((a1[264] & 1) == 0)
  {
    v4 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v5 = *(a2 + 3);
    if (v5 && v4 != 0)
    {
      v7 = *(*v5 + 16);

      v7();
    }
  }
}

void IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ServiceWorkerRegistrationState,std::optional<WebCore::ServiceWorkerData>>>(uint64_t a1, uint64_t *a2)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v6 & 1) == 0)
  {
LABEL_22:
    *a1 = 0;
    *(a1 + 88) = 0;
LABEL_23:
    v18 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    v19 = a2[3];
    if (v19)
    {
      v20 = v18 == 0;
    }

    else
    {
      v20 = 1;
    }

    if (!v20)
    {
      v21 = *(*v19 + 16);

      v21(v5);
    }

    return;
  }

  v7 = a2[1];
  v8 = a2[2];
  v9 = *a2;
  if (v7 <= &v8[-*a2])
  {
    *a2 = 0;
    a2[1] = 0;
    v15 = a2[3];
    if (v15)
    {
      if (v7)
      {
        (*(*v15 + 16))(v15);
        v7 = a2[1];
      }
    }

    else
    {
      v7 = 0;
    }

    goto LABEL_18;
  }

  a2[2] = (v8 + 1);
  if (!v8)
  {
LABEL_18:
    *a2 = 0;
    a2[1] = 0;
    v16 = a2[3];
    if (v16)
    {
      if (v7)
      {
        (*(*v16 + 16))(v16);
        v9 = *a2;
        v7 = a2[1];
        goto LABEL_21;
      }
    }

    else
    {
      v7 = 0;
    }

    v9 = 0;
LABEL_21:
    *a2 = 0;
    a2[1] = 0;
    v17 = a2[3];
    if (v17 && v7)
    {
      (*(*v17 + 16))(v17, v9);
    }

    goto LABEL_22;
  }

  v10 = *v8;
  if (v10 >= 3)
  {
    goto LABEL_21;
  }

  v11 = v4;
  IPC::Decoder::decode<std::optional<WebCore::ServiceWorkerData>>(a2, &v22);
  if (v26 == 1)
  {
    *a1 = v11;
    *(a1 + 8) = v10;
    *(a1 + 16) = 0;
    *(a1 + 80) = 0;
    if (v25 == 1)
    {
      *(a1 + 16) = v22;
      v5.n128_f64[0] = WTF::URL::URL(a1 + 32, &v23);
      *(a1 + 72) = v24;
      *(a1 + 80) = 1;
      v13 = v26;
      *(a1 + 88) = 1;
      if (v13 & 1) != 0 && (v25)
      {
        v14 = v23;
        v23 = 0;
        if (v14)
        {
          if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v14, v12);
          }
        }
      }
    }

    else
    {
      *(a1 + 88) = 1;
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 88) = 0;
  }

  if ((*(a1 + 88) & 1) == 0)
  {
    goto LABEL_23;
  }
}

uint64_t IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ServiceWorkerState>>(uint64_t a1, uint64_t *a2)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v5 & 1) != 0 && (v6 = v4, result = IPC::Decoder::decode<WebCore::ServiceWorkerState>(a2), (result & 0x100) != 0))
  {
    *a1 = v6;
    *(a1 + 8) = result;
    *(a1 + 16) = 1;
  }

  else
  {
    *a1 = 0;
    *(a1 + 16) = 0;
    v8 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    result = a2[3];
    if (result)
    {
      v9 = v8 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      v10 = *(*result + 16);

      return v10();
    }
  }

  return result;
}

uint64_t IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WallTime>>(uint64_t a1, uint64_t *a2)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if (v5 & 1) != 0 && (v6 = v4, result = IPC::Decoder::decode<WTF::Seconds>(a2), (v8))
  {
    *a1 = v6;
    *(a1 + 8) = result;
    *(a1 + 16) = 1;
  }

  else
  {
    *a1 = 0;
    *(a1 + 16) = 0;
    v9 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    result = a2[3];
    if (result)
    {
      v10 = v9 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (!v10)
    {
      v11 = *(*result + 16);

      return v11();
    }
  }

  return result;
}

uint64_t IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ServiceWorkerUpdateViaCache>>(uint64_t a1, uint64_t *a2)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v5 & 1) != 0 && (v6 = v4, result = IPC::Decoder::decode<WebCore::WritingDirection>(a2), (result & 0x100) != 0))
  {
    *a1 = v6;
    *(a1 + 8) = result;
    *(a1 + 16) = 1;
  }

  else
  {
    *a1 = 0;
    *(a1 + 16) = 0;
    v8 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    result = a2[3];
    if (result)
    {
      v9 = v8 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      v10 = *(*result + 16);

      return v10();
    }
  }

  return result;
}

_DWORD *WTF::HashTable<WebCore::ProcessQualified<WTF::UUID>,WebCore::ProcessQualified<WTF::UUID>,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::FastMalloc>::expand(uint64_t *a1)
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
  result = WTF::fastMalloc(((32 * v5) | 0x10));
  if (v5)
  {
    v9 = result + 4;
    do
    {
      *v9 = 0;
      v9[1] = 0;
      v9[2] = 0;
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
    for (i = 0; i != v3; ++i)
    {
      v11 = (v2 + 32 * i);
      v12 = v11[2];
      if (v12 != -1)
      {
        v8 = v11[1];
        if (v12 || *v11 != 0)
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

          v16 = WTF::IdentityHashTranslator<WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>>::hash<WebCore::ProcessQualified<WTF::UUID>>(*v11, v8);
          v17 = 0;
          do
          {
            v18 = v16 & v15;
            v19 = v14 + 32 * v18;
            v16 = ++v17 + v18;
          }

          while (*v19 != 0 || *(v19 + 16) != 0);
          v21 = *(v11 + 1);
          *v19 = *v11;
          *(v19 + 16) = v21;
        }
      }
    }
  }

  else if (!v2)
  {
    return result;
  }

  return WTF::fastFree((v2 - 16), v8);
}

uint64_t WTF::IdentityHashTranslator<WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>>::hash<WebCore::ProcessQualified<WTF::UUID>>(unint64_t a1, unint64_t a2)
{
  v9 = 0;
  v10 = 0;
  v2 = (a2 >> 5) & 0x7FFF800 ^ ((a2 - 1640531527) << 16) ^ (a2 - 1640531527);
  v3 = (a2 >> 37) & 0x7FFF800 ^ ((v2 + WORD2(a2) + (v2 >> 11)) << 16) ^ (v2 + WORD2(a2) + (v2 >> 11));
  v4 = (a1 >> 5) & 0x7FFF800 ^ ((v3 + a1 + (v3 >> 11)) << 16) ^ (v3 + a1 + (v3 >> 11));
  v5 = v4 + WORD2(a1) + (v4 >> 11);
  v6 = (a1 >> 37) & 0x7FFF800 ^ (v5 << 16);
  v8 = (v6 ^ v5) + ((v6 ^ v5) >> 11);
  return WTF::SuperFastHash::hash(&v8);
}

uint64_t IPC::Decoder::decode<WebCore::BackgroundFetchInformation>(uint64_t a1, uint64_t *a2)
{
  result = IPC::ArgumentCoder<WebCore::BackgroundFetchInformation,void>::decode(a2, a1);
  if ((*(a1 + 56) & 1) == 0)
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21WebSWClientConnection34SetServiceWorkerClientIsControlledENS2_10ConnectionEN6WebKit21WebSWClientConnectionES9_FvN7WebCore16ProcessQualifiedINS_4UUIDEEEONSA_29ServiceWorkerRegistrationDataEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED1Ev(void *a1)
{
  *a1 = &unk_1F10F80F0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21WebSWClientConnection34SetServiceWorkerClientIsControlledENS2_10ConnectionEN6WebKit21WebSWClientConnectionES9_FvN7WebCore16ProcessQualifiedINS_4UUIDEEEONSA_29ServiceWorkerRegistrationDataEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F80F0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21WebSWClientConnection34SetServiceWorkerClientIsControlledENS2_10ConnectionEN6WebKit21WebSWClientConnectionES9_FvN7WebCore16ProcessQualifiedINS_4UUIDEEEONSA_29ServiceWorkerRegistrationDataEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEE4callEb(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3941;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v12 = v5;
  v6 = IPC::Encoder::grow(v5, 1uLL, 1);
  if (v7)
  {
    *v6 = v2;
    IPC::Connection::sendMessageImpl(v3, &v12, 0, 0);
    result = v12;
    v12 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v8);
      return bmalloc::api::tzoneFree(v10, v11);
    }
  }

  else
  {
    result = 1067;
    __break(0xC471u);
  }

  return result;
}

uint64_t IPC::Decoder::decode<std::tuple<WebCore::ProcessQualified<WTF::UUID>>>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<std::tuple<WebCore::ProcessQualified<WTF::UUID>>,void>::decode<IPC::Decoder>(a2, a1);
  if ((*(a1 + 32) & 1) == 0)
  {

    return IPC::Decoder::markInvalid(a2);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21WebSWClientConnection24FocusServiceWorkerClientENS2_10ConnectionEN6WebKit21WebSWClientConnectionES9_FvN7WebCore16ProcessQualifiedINS_4UUIDEEEONS_17CompletionHandlerIFvONSt3__18optionalINSA_23ServiceWorkerClientDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSJ_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F8118;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21WebSWClientConnection24FocusServiceWorkerClientENS2_10ConnectionEN6WebKit21WebSWClientConnectionES9_FvN7WebCore16ProcessQualifiedINS_4UUIDEEEONS_17CompletionHandlerIFvONSt3__18optionalINSA_23ServiceWorkerClientDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSJ_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F8118;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21WebSWClientConnection24FocusServiceWorkerClientENS2_10ConnectionEN6WebKit21WebSWClientConnectionES9_FvN7WebCore16ProcessQualifiedINS_4UUIDEEEONS_17CompletionHandlerIFvONSt3__18optionalINSA_23ServiceWorkerClientDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSJ_EE4callESJ_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3940;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::optional<WebCore::ServiceWorkerClientData>,void>::encode<IPC::Encoder,std::optional<WebCore::ServiceWorkerClientData>>(v5, a2);
  IPC::Connection::sendMessageImpl(v3, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v6);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

char *IPC::ArgumentCoder<std::optional<WebCore::ServiceWorkerClientData>,void>::encode<IPC::Encoder,std::optional<WebCore::ServiceWorkerClientData>>(IPC::Encoder *a1, uint64_t a2)
{
  v4 = *(a2 + 192);
  result = IPC::Encoder::grow(a1, 1uLL, 1);
  if ((v4 & 1) == 0)
  {
    if (v6)
    {
      *result = 0;
      return result;
    }

LABEL_10:
    __break(0xC471u);
    JUMPOUT(0x19DAEE314);
  }

  if (!v6)
  {
    goto LABEL_10;
  }

  *result = 1;
  if ((*(a2 + 192) & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:sn200100]();
    goto LABEL_10;
  }

  return IPC::ArgumentCoder<WebCore::ServiceWorkerClientData,void>::encode(a1, a2);
}

unint64_t IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(uint64_t a1, IPC::Decoder *a2)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if (v5 & 1) != 0 && (v6 = v4, v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a2), (v8) && (v9 = v7, result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a2), (v11))
  {
    *a1 = v6;
    *(a1 + 8) = v9;
    *(a1 + 16) = result;
    *(a1 + 24) = 1;
  }

  else
  {
    *a1 = 0;
    *(a1 + 24) = 0;
    v12 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result)
    {
      v13 = v12 == 0;
    }

    else
    {
      v13 = 1;
    }

    if (!v13)
    {
      v14 = *(*result + 16);

      return v14();
    }
  }

  return result;
}

uint64_t mpark::variant<WebCore::ServiceWorkerData,WebCore::ServiceWorkerClientData>::~variant(uint64_t a1, void *a2)
{
  if (*(a1 + 192) == 255)
  {
    goto LABEL_11;
  }

  if (!*(a1 + 192))
  {
    v3 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (!v3)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 168, a2);
  v4 = *(a1 + 80);
  *(a1 + 80) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v3 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v3)
  {
LABEL_9:
    if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, a2);
    }
  }

LABEL_11:
  *(a1 + 192) = -1;
  return a1;
}

void IPC::ArgumentCoder<std::optional<WebCore::NotificationPayload>,void>::decode<IPC::Decoder>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 1);
  v5 = *(a1 + 2);
  v6 = *a1;
  if (v4 <= &v5[-*a1])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v19 = *(a1 + 3);
    if (v19)
    {
      if (v4)
      {
        (*(*v19 + 16))(v19);
        v4 = *(a1 + 1);
      }
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_43;
  }

  *(a1 + 2) = v5 + 1;
  if (!v5)
  {
LABEL_43:
    *a1 = 0;
    *(a1 + 1) = 0;
    v20 = *(a1 + 3);
    if (v20)
    {
      if (v4)
      {
        (*(*v20 + 16))(v20);
        v6 = *a1;
        v4 = *(a1 + 1);
        goto LABEL_46;
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = 0;
LABEL_46:
    *a1 = 0;
    *(a1 + 1) = 0;
    v21 = *(a1 + 3);
    if (v21 && v4)
    {
      (*(*v21 + 16))(v21, v6);
    }

    goto LABEL_37;
  }

  v7 = *v5;
  if (v7 >= 2)
  {
    goto LABEL_46;
  }

  if (v7)
  {
    IPC::ArgumentCoder<WebCore::NotificationPayload,void>::decode(a1, v22);
    if ((v32 & 1) == 0)
    {
      v16 = *a1;
      v17 = *(a1 + 1);
      *a1 = 0;
      *(a1 + 1) = 0;
      v18 = *(a1 + 3);
      if (!v18 || !v17 || ((*(*v18 + 16))(v18, v16), (v32 & 1) == 0))
      {
LABEL_37:
        *a2 = 0;
        *(a2 + 144) = 0;
        return;
      }
    }

    WTF::URL::URL(a2, v22);
    *(a2 + 40) = v23;
    *(a2 + 48) = v24;
    *(a2 + 64) = 0;
    *(a2 + 120) = 0;
    if (v30 == 1)
    {
      *(a2 + 64) = v25;
      *(a2 + 72) = *v26;
      *(a2 + 88) = *v27;
      *(a2 + 104) = v28;
      *(a2 + 112) = v29;
      *(a2 + 120) = 1;
      *(a2 + 128) = v31;
      *(a2 + 136) = 1;
      *(a2 + 144) = 1;
      if ((v32 & 1) == 0)
      {
        return;
      }

      v28 = 0;
      *v27 = 0u;
      *v26 = 0u;
    }

    else
    {
      *(a2 + 128) = v31;
      *(a2 + 136) = 1;
      *(a2 + 144) = 1;
      if ((v32 & 1) == 0)
      {
        return;
      }
    }

    v15 = v22[0];
    v23 = 0;
  }

  else
  {
    LOBYTE(v22[0]) = 0;
    v32 = 0;
    std::optional<WebCore::NotificationPayload>::optional[abi:sn200100](a2, v22);
    *(a2 + 144) = 1;
    if (v32 != 1)
    {
      return;
    }

    if (v30 == 1)
    {
      v9 = v28;
      v28 = 0;
      if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v9, v8);
      }

      v10 = v27[1];
      v27[1] = 0;
      if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v10, v8);
      }

      v11 = v27[0];
      v27[0] = 0;
      if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v11, v8);
      }

      v12 = v26[1];
      v26[1] = 0;
      if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v12, v8);
      }

      v13 = v26[0];
      v26[0] = 0;
      if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v8);
      }
    }

    v14 = v23;
    v23 = 0;
    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v8);
    }

    v15 = v22[0];
  }

  v22[0] = 0;
  if (v15)
  {
    if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v8);
    }
  }
}

void std::optional<WebCore::NotificationPayload>::optional[abi:sn200100](_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[136] = 0;
  if (*(a2 + 136) == 1)
  {
    WTF::URL::URL(a1, a2);
    v4 = *(a2 + 40);
    *(a2 + 40) = 0;
    *(v3 + 40) = v4;
    *(v3 + 48) = *(a2 + 48);
    *(v3 + 64) = 0;
    *(v3 + 120) = 0;
    if (*(a2 + 120) == 1)
    {
      *(v3 + 64) = *(a2 + 64);
      v5 = *(a2 + 72);
      *(a2 + 72) = 0;
      *(v3 + 72) = v5;
      v6 = *(a2 + 80);
      *(a2 + 80) = 0;
      *(v3 + 80) = v6;
      v7 = *(a2 + 88);
      *(a2 + 88) = 0;
      *(v3 + 88) = v7;
      v8 = *(a2 + 96);
      *(a2 + 96) = 0;
      *(v3 + 96) = v8;
      v9 = *(a2 + 104);
      *(a2 + 104) = 0;
      *(v3 + 104) = v9;
      *(v3 + 112) = *(a2 + 112);
      *(v3 + 120) = 1;
    }

    *(v3 + 128) = *(a2 + 128);
    *(v3 + 136) = 1;
  }
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29WebSWContextManagerConnection13FirePushEventENS2_10ConnectionEN6WebKit29WebSWContextManagerConnectionES9_FvNS_23ObjectIdentifierGenericIN7WebCore27ServiceWorkerIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEENSt3__18optionalINSG_4spanIKhLm18446744073709551615EEEEEONSH_INSB_19NotificationPayloadEEEONS_17CompletionHandlerIFvbSO_EEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbSO_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F8140;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29WebSWContextManagerConnection13FirePushEventENS2_10ConnectionEN6WebKit29WebSWContextManagerConnectionES9_FvNS_23ObjectIdentifierGenericIN7WebCore27ServiceWorkerIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEENSt3__18optionalINSG_4spanIKhLm18446744073709551615EEEEEONSH_INSB_19NotificationPayloadEEEONS_17CompletionHandlerIFvbSO_EEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbSO_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F8140;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29WebSWContextManagerConnection13FirePushEventENS2_10ConnectionEN6WebKit29WebSWContextManagerConnectionES9_FvNS_23ObjectIdentifierGenericIN7WebCore27ServiceWorkerIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEENSt3__18optionalINSG_4spanIKhLm18446744073709551615EEEEEONSH_INSB_19NotificationPayloadEEEONS_17CompletionHandlerIFvbSO_EEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbSO_EE4callEbSO_(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = IPC::Encoder::operator new(0x238, a2);
  *v7 = 3945;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = v6;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  IPC::Encoder::encodeHeader(v7);
  v14 = v7;
  v8 = IPC::Encoder::grow(v7, 1uLL, 1);
  if (v9)
  {
    *v8 = v4;
    IPC::ArgumentCoder<std::optional<WebCore::NotificationPayload>,void>::encode<IPC::Encoder,std::optional<WebCore::NotificationPayload>>(v7, a3);
    IPC::Connection::sendMessageImpl(v5, &v14, 0, 0);
    result = v14;
    v14 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v10);
      return bmalloc::api::tzoneFree(v12, v13);
    }
  }

  else
  {
    result = 1067;
    __break(0xC471u);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29WebSWContextManagerConnection21FireNotificationEventENS2_10ConnectionEN6WebKit29WebSWContextManagerConnectionES9_FvNS_23ObjectIdentifierGenericIN7WebCore27ServiceWorkerIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONSB_16NotificationDataENSB_21NotificationEventTypeEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED1Ev(void *a1)
{
  *a1 = &unk_1F10F8168;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29WebSWContextManagerConnection21FireNotificationEventENS2_10ConnectionEN6WebKit29WebSWContextManagerConnectionES9_FvNS_23ObjectIdentifierGenericIN7WebCore27ServiceWorkerIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONSB_16NotificationDataENSB_21NotificationEventTypeEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F8168;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29WebSWContextManagerConnection21FireNotificationEventENS2_10ConnectionEN6WebKit29WebSWContextManagerConnectionES9_FvNS_23ObjectIdentifierGenericIN7WebCore27ServiceWorkerIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONSB_16NotificationDataENSB_21NotificationEventTypeEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEE4callEb(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3944;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v12 = v5;
  v6 = IPC::Encoder::grow(v5, 1uLL, 1);
  if (v7)
  {
    *v6 = v2;
    IPC::Connection::sendMessageImpl(v3, &v12, 0, 0);
    result = v12;
    v12 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v8);
      return bmalloc::api::tzoneFree(v10, v11);
    }
  }

  else
  {
    result = 1067;
    __break(0xC471u);
  }

  return result;
}

uint64_t IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::BackgroundFetchInformation>>(uint64_t a1, uint64_t *a2)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v5 & 1) != 0 && (v6 = v4, result = IPC::Decoder::decode<WebCore::BackgroundFetchInformation>(v14, a2), v17 == 1))
  {
    v8 = v14[0];
    v9 = v14[1];
    *a1 = v6;
    *(a1 + 8) = v8;
    *(a1 + 16) = v9;
    v10 = *v16;
    *(a1 + 24) = v15;
    *(a1 + 40) = v10;
    *(a1 + 55) = *&v16[15];
    *(a1 + 64) = 1;
  }

  else
  {
    *a1 = 0;
    *(a1 + 64) = 0;
    v11 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    result = a2[3];
    if (result)
    {
      v12 = v11 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (!v12)
    {
      v13 = *(*result + 16);

      return v13();
    }
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29WebSWContextManagerConnection24FireBackgroundFetchEventENS2_10ConnectionEN6WebKit29WebSWContextManagerConnectionES9_FvNS_23ObjectIdentifierGenericIN7WebCore27ServiceWorkerIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONSB_26BackgroundFetchInformationEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED1Ev(void *a1)
{
  *a1 = &unk_1F10F8190;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29WebSWContextManagerConnection24FireBackgroundFetchEventENS2_10ConnectionEN6WebKit29WebSWContextManagerConnectionES9_FvNS_23ObjectIdentifierGenericIN7WebCore27ServiceWorkerIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONSB_26BackgroundFetchInformationEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F8190;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29WebSWContextManagerConnection24FireBackgroundFetchEventENS2_10ConnectionEN6WebKit29WebSWContextManagerConnectionES9_FvNS_23ObjectIdentifierGenericIN7WebCore27ServiceWorkerIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONSB_26BackgroundFetchInformationEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEE4callEb(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3943;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v12 = v5;
  v6 = IPC::Encoder::grow(v5, 1uLL, 1);
  if (v7)
  {
    *v6 = v2;
    IPC::Connection::sendMessageImpl(v3, &v12, 0, 0);
    result = v12;
    v12 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v8);
      return bmalloc::api::tzoneFree(v10, v11);
    }
  }

  else
  {
    result = 1067;
    __break(0xC471u);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29WebSWContextManagerConnection29FireBackgroundFetchClickEventENS2_10ConnectionEN6WebKit29WebSWContextManagerConnectionES9_FvNS_23ObjectIdentifierGenericIN7WebCore27ServiceWorkerIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONSB_26BackgroundFetchInformationEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED1Ev(void *a1)
{
  *a1 = &unk_1F10F81B8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29WebSWContextManagerConnection29FireBackgroundFetchClickEventENS2_10ConnectionEN6WebKit29WebSWContextManagerConnectionES9_FvNS_23ObjectIdentifierGenericIN7WebCore27ServiceWorkerIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONSB_26BackgroundFetchInformationEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F81B8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29WebSWContextManagerConnection29FireBackgroundFetchClickEventENS2_10ConnectionEN6WebKit29WebSWContextManagerConnectionES9_FvNS_23ObjectIdentifierGenericIN7WebCore27ServiceWorkerIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONSB_26BackgroundFetchInformationEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEE4callEb(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3942;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v12 = v5;
  v6 = IPC::Encoder::grow(v5, 1uLL, 1);
  if (v7)
  {
    *v6 = v2;
    IPC::Connection::sendMessageImpl(v3, &v12, 0, 0);
    result = v12;
    v12 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v8);
      return bmalloc::api::tzoneFree(v10, v11);
    }
  }

  else
  {
    result = 1067;
    __break(0xC471u);
  }

  return result;
}

uint64_t WTF::HashTable<WTF::URL,WTF::KeyValuePair<WTF::URL,WebCore::ScriptBuffer>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::URL,WebCore::ScriptBuffer>>,WTF::DefaultHash<WTF::URL>,WTF::HashMap<WTF::URL,WebCore::ScriptBuffer,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WebCore::ScriptBuffer>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::URL>,WTF::FastMalloc>::expand(uint64_t *a1, WTF::StringImpl **a2)
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

  return WTF::HashTable<WTF::URL,WTF::KeyValuePair<WTF::URL,WebCore::ScriptBuffer>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::URL,WebCore::ScriptBuffer>>,WTF::DefaultHash<WTF::URL>,WTF::HashMap<WTF::URL,WebCore::ScriptBuffer,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WebCore::ScriptBuffer>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::URL>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

uint64_t WTF::HashTable<WTF::URL,WTF::KeyValuePair<WTF::URL,WebCore::ScriptBuffer>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::URL,WebCore::ScriptBuffer>>,WTF::DefaultHash<WTF::URL>,WTF::HashMap<WTF::URL,WebCore::ScriptBuffer,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WebCore::ScriptBuffer>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::URL>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, WTF::StringImpl **a3)
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

  Table = WTF::HashTable<WTF::URL,WTF::KeyValuePair<WTF::URL,WebCore::ScriptBuffer>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::URL,WebCore::ScriptBuffer>>,WTF::DefaultHash<WTF::URL>,WTF::HashMap<WTF::URL,WebCore::ScriptBuffer,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WebCore::ScriptBuffer>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::URL>,WTF::FastMalloc>::allocateTable(a2);
  *a1 = Table;
  *(Table - 8) = a2 - 1;
  *(Table - 4) = a2;
  *(Table - 16) = 0;
  *(Table - 12) = v6;
  if (v5)
  {
    v9 = 0;
    v10 = 0;
    v11 = v5;
    v32 = v4;
    do
    {
      v12 = (v4 + 48 * v9);
      if (*v12 != -1)
      {
        if (WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WTF::URL>,false>::isEmptyValue<WTF::URL>((v4 + 48 * v9)))
        {
          v13 = v12[5];
          v12[5] = 0;
          if (v13 && atomic_fetch_add(v13 + 2, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v13 + 2);
            (*(*v13 + 8))(v13);
          }

          v14 = *v12;
          *v12 = 0;
          if (v14)
          {
            if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v14, v8);
            }
          }
        }

        else
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

          v17 = *(*v12 + 4);
          v18 = v10;
          if (v17 < 0x100)
          {
            v19 = WTF::StringImpl::hashSlowCase(*v12);
          }

          else
          {
            v19 = v17 >> 8;
          }

          v20 = 0;
          do
          {
            v21 = v19 & v16;
            v22 = v15 + 48 * (v19 & v16);
            v24 = WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WTF::URL>,false>::isEmptyValue<WTF::URL>(v22);
            v19 = ++v20 + v21;
          }

          while (!v24);
          v25 = *(v22 + 40);
          *(v22 + 40) = 0;
          if (v25 && atomic_fetch_add(v25 + 2, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v25 + 2);
            (*(*v25 + 8))(v25);
          }

          v26 = *v22;
          *v22 = 0;
          v10 = v18;
          if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v26, v23);
          }

          v27 = WTF::URL::URL(v15 + 48 * v21, v12);
          v28 = v12[5];
          v12[5] = 0;
          *(v22 + 40) = v28;
          v29 = v12[5];
          v12[5] = 0;
          v4 = v32;
          if (v29 && atomic_fetch_add(v29 + 2, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v29 + 2);
            (*(*v29 + 8))(v29, v27);
          }

          v30 = *v12;
          *v12 = 0;
          if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v30, v8);
          }

          if (v12 == a3)
          {
            v10 = v15 + 48 * v21;
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
    if (!v4)
    {
      return result;
    }
  }

  WTF::fastFree((v4 - 16), v8);
  return v10;
}

uint64_t WTF::HashTable<WTF::URL,WTF::KeyValuePair<WTF::URL,WebCore::ScriptBuffer>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::URL,WebCore::ScriptBuffer>>,WTF::DefaultHash<WTF::URL>,WTF::HashMap<WTF::URL,WebCore::ScriptBuffer,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WebCore::ScriptBuffer>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::URL>,WTF::FastMalloc>::allocateTable(unsigned int a1)
{
  LODWORD(v1) = a1;
  v2 = WTF::fastMalloc((48 * a1 + 16));
  v3 = v2;
  if (v1)
  {
    v1 = v1;
    v4 = (v2 + 56);
    do
    {
      *(v4 - 5) = 0;
      WTF::URL::invalidate((v4 - 5));
      *v4 = 0;
      v4 += 6;
      --v1;
    }

    while (v1);
  }

  return v3 + 16;
}

uint64_t WTF::HashTable<WTF::URL,WTF::KeyValuePair<WTF::URL,WebCore::ScriptBuffer>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::URL,WebCore::ScriptBuffer>>,WTF::DefaultHash<WTF::URL>,WTF::HashMap<WTF::URL,WebCore::ScriptBuffer,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WebCore::ScriptBuffer>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::URL>,WTF::FastMalloc>::deallocateTable(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = a1;
    do
    {
      if (*v4 != -1)
      {
        v5 = *(v4 + 40);
        *(v4 + 40) = 0;
        if (v5 && atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v5 + 2);
          (*(*v5 + 8))(v5);
        }

        v6 = *v4;
        *v4 = 0;
        if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v6, a2);
        }
      }

      v4 += 48;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

IPC::Decoder *IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String>>(_BYTE *a1, uint64_t *a2)
{
  result = IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String>,void>::decode<IPC::Decoder>(a2, a1);
  if ((a1[16] & 1) == 0)
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

uint64_t *IPC::Decoder::decode<mpark::variant<WebCore::ProcessQualified<WTF::UUID>,WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(_BYTE *a1, uint64_t *a2)
{
  result = IPC::ArgumentCoder<mpark::variant<WebCore::ProcessQualified<WTF::UUID>,WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(a2, a1);
  if ((a1[48] & 1) == 0)
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21WebSWServerConnection29ScheduleUnregisterJobInServerENS2_10ConnectionEN6WebKit21WebSWServerConnectionES9_FvNS_23ObjectIdentifierGenericIN7WebCore30ServiceWorkerJobIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEENSA_INSB_39ServiceWorkerRegistrationIdentifierTypeESE_yEEN5mpark7variantIJNSB_16ProcessQualifiedINS_4UUIDEEENSA_INSB_27ServiceWorkerIdentifierTypeESE_yEEEEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIbNSB_13ExceptionDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSW_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F81E0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21WebSWServerConnection29ScheduleUnregisterJobInServerENS2_10ConnectionEN6WebKit21WebSWServerConnectionES9_FvNS_23ObjectIdentifierGenericIN7WebCore30ServiceWorkerJobIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEENSA_INSB_39ServiceWorkerRegistrationIdentifierTypeESE_yEEN5mpark7variantIJNSB_16ProcessQualifiedINS_4UUIDEEENSA_INSB_27ServiceWorkerIdentifierTypeESE_yEEEEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIbNSB_13ExceptionDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSW_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F81E0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21WebSWServerConnection29ScheduleUnregisterJobInServerENS2_10ConnectionEN6WebKit21WebSWServerConnectionES9_FvNS_23ObjectIdentifierGenericIN7WebCore30ServiceWorkerJobIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEENSA_INSB_39ServiceWorkerRegistrationIdentifierTypeESE_yEEN5mpark7variantIJNSB_16ProcessQualifiedINS_4UUIDEEENSA_INSB_27ServiceWorkerIdentifierTypeESE_yEEEEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIbNSB_13ExceptionDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSW_EE4callESW_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3963;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<BOOL,WebCore::ExceptionData>,void>::encode<IPC::Encoder>(v5, a2);
  IPC::Connection::sendMessageImpl(v3, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v6);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

void IPC::Decoder::decode<std::tuple<WebCore::SecurityOriginData,WTF::URL>>(uint64_t a1, IPC::Decoder *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  IPC::ArgumentCoder<WebCore::SecurityOriginData,void>::decode(a2, v22);
  if ((v25 & 1) == 0)
  {
    v14 = *a2;
    v15 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v16 = *(a2 + 3);
    if (v16)
    {
      v17 = v15 == 0;
    }

    else
    {
      v17 = 1;
    }

    if (!v17)
    {
      (*(*v16 + 16))(v16, v14);
    }

    *a1 = 0;
    *(a1 + 72) = 0;
    goto LABEL_17;
  }

  IPC::ArgumentCoder<WTF::URL,void>::decode(a2, v20);
  if ((v21 & 1) == 0)
  {
    v7 = *a2;
    v18 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v19 = *(a2 + 3);
    if (!v19 || !v18 || ((*(*v19 + 16))(v19, v7), (v21 & 1) == 0))
    {
      *a1 = 0;
      *(a1 + 72) = 0;
      if (v24)
      {
        goto LABEL_17;
      }

      goto LABEL_11;
    }
  }

  *a1 = 0;
  *(a1 + 24) = -1;
  v5 = v24;
  if (v24)
  {
    if (v24 == 255)
    {
      goto LABEL_6;
    }

    *a1 = *v22;
  }

  else
  {
    v6 = *v22;
    v22[0] = 0;
    v22[1] = 0;
    *a1 = v6;
    *(a1 + 16) = v23;
  }

  *(a1 + 24) = v5;
LABEL_6:
  v4.n128_f64[0] = WTF::URL::URL(a1 + 32, v20);
  *(a1 + 72) = 1;
  if (v21)
  {
    v8 = v20[0];
    v20[0] = 0;
    if (v8)
    {
      if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v7);
      }
    }
  }

  if (!v5)
  {
LABEL_11:
    v9 = v22[1];
    if (v22[1] && atomic_fetch_add_explicit(v22[1], 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, v7);
    }

    v10 = v22[0];
    if (v22[0] && atomic_fetch_add_explicit(v22[0], 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v7);
    }
  }

LABEL_17:
  if ((*(a1 + 72) & 1) == 0)
  {
    v11 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v12 = *(a2 + 3);
    if (v12)
    {
      if (v11)
      {
        v13 = *(*v12 + 16);

        v13(v4);
      }
    }
  }
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21WebSWServerConnection17MatchRegistrationENS2_10ConnectionEN6WebKit21WebSWServerConnectionES9_FvRKN7WebCore18SecurityOriginDataERKNS_3URLEONS_17CompletionHandlerIFvONSt3__18optionalINSA_29ServiceWorkerRegistrationDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSM_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F8208;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21WebSWServerConnection17MatchRegistrationENS2_10ConnectionEN6WebKit21WebSWServerConnectionES9_FvRKN7WebCore18SecurityOriginDataERKNS_3URLEONS_17CompletionHandlerIFvONSt3__18optionalINSA_29ServiceWorkerRegistrationDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSM_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F8208;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21WebSWServerConnection17MatchRegistrationENS2_10ConnectionEN6WebKit21WebSWServerConnectionES9_FvRKN7WebCore18SecurityOriginDataERKNS_3URLEONS_17CompletionHandlerIFvONSt3__18optionalINSA_29ServiceWorkerRegistrationDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSM_EE4callESM_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3960;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::optional<WebCore::ServiceWorkerRegistrationData>,void>::encode<IPC::Encoder,std::optional<WebCore::ServiceWorkerRegistrationData>>(v5, a2);
  IPC::Connection::sendMessageImpl(v3, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v6);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

void IPC::ArgumentCoder<std::optional<WebCore::ServiceWorkerRegistrationData>,void>::encode<IPC::Encoder,std::optional<WebCore::ServiceWorkerRegistrationData>>(IPC::Encoder *a1, uint64_t a2)
{
  v4 = *(a2 + 352);
  v5 = IPC::Encoder::grow(a1, 1uLL, 1);
  if ((v4 & 1) == 0)
  {
    if (v6)
    {
      *v5 = 0;
      return;
    }

LABEL_10:
    __break(0xC471u);
    JUMPOUT(0x19DAEFA68);
  }

  if (!v6)
  {
    goto LABEL_10;
  }

  *v5 = 1;
  if ((*(a2 + 352) & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:sn200100]();
    goto LABEL_10;
  }

  IPC::ArgumentCoder<WebCore::ServiceWorkerRegistrationData,void>::encode(a1, a2);
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21WebSWServerConnection21WhenRegistrationReadyENS2_10ConnectionEN6WebKit21WebSWServerConnectionES9_FvRKN7WebCore18SecurityOriginDataERKNS_3URLEONS_17CompletionHandlerIFvONSt3__18optionalINSA_29ServiceWorkerRegistrationDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSM_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F8230;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21WebSWServerConnection21WhenRegistrationReadyENS2_10ConnectionEN6WebKit21WebSWServerConnectionES9_FvRKN7WebCore18SecurityOriginDataERKNS_3URLEONS_17CompletionHandlerIFvONSt3__18optionalINSA_29ServiceWorkerRegistrationDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSM_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F8230;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21WebSWServerConnection21WhenRegistrationReadyENS2_10ConnectionEN6WebKit21WebSWServerConnectionES9_FvRKN7WebCore18SecurityOriginDataERKNS_3URLEONS_17CompletionHandlerIFvONSt3__18optionalINSA_29ServiceWorkerRegistrationDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSM_EE4callESM_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3970;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::optional<WebCore::ServiceWorkerRegistrationData>,void>::encode<IPC::Encoder,std::optional<WebCore::ServiceWorkerRegistrationData>>(v5, a2);
  IPC::Connection::sendMessageImpl(v3, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v6);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21WebSWServerConnection16GetRegistrationsENS2_10ConnectionEN6WebKit21WebSWServerConnectionES9_FvRKN7WebCore18SecurityOriginDataERKNS_3URLEONS_17CompletionHandlerIFvRKNS_6VectorINSA_29ServiceWorkerRegistrationDataELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSO_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F8258;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21WebSWServerConnection16GetRegistrationsENS2_10ConnectionEN6WebKit21WebSWServerConnectionES9_FvRKN7WebCore18SecurityOriginDataERKNS_3URLEONS_17CompletionHandlerIFvRKNS_6VectorINSA_29ServiceWorkerRegistrationDataELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSO_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F8258;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21WebSWServerConnection16GetRegistrationsENS2_10ConnectionEN6WebKit21WebSWServerConnectionES9_FvRKN7WebCore18SecurityOriginDataERKNS_3URLEONS_17CompletionHandlerIFvRKNS_6VectorINSA_29ServiceWorkerRegistrationDataELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSO_EE4callESO_(uint64_t a1, unsigned int *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3958;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v13 = v5;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v5, a2[3]);
  v6 = a2[3];
  if (v6)
  {
    v7 = *a2;
    v8 = 352 * v6;
    do
    {
      IPC::ArgumentCoder<WebCore::ServiceWorkerRegistrationData,void>::encode(v5, v7);
      v7 += 352;
      v8 -= 352;
    }

    while (v8);
  }

  IPC::Connection::sendMessageImpl(v3, &v13, 0, 0);
  result = v13;
  v13 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v9);
    return bmalloc::api::tzoneFree(v11, v12);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21WebSWServerConnection25TerminateWorkerFromClientENS2_10ConnectionEN6WebKit21WebSWServerConnectionES9_FvNS_23ObjectIdentifierGenericIN7WebCore27ServiceWorkerIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10F8280;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21WebSWServerConnection25TerminateWorkerFromClientENS2_10ConnectionEN6WebKit21WebSWServerConnectionES9_FvNS_23ObjectIdentifierGenericIN7WebCore27ServiceWorkerIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F8280;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21WebSWServerConnection25TerminateWorkerFromClientENS2_10ConnectionEN6WebKit21WebSWServerConnectionES9_FvNS_23ObjectIdentifierGenericIN7WebCore27ServiceWorkerIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3968;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = v3;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::Connection::sendMessageImpl(v2, &v9, 0, 0);
  result = v9;
  v9 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21WebSWServerConnection39WhenServiceWorkerIsTerminatedForTestingENS2_10ConnectionEN6WebKit21WebSWServerConnectionES9_FvNS_23ObjectIdentifierGenericIN7WebCore27ServiceWorkerIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10F82A8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21WebSWServerConnection39WhenServiceWorkerIsTerminatedForTestingENS2_10ConnectionEN6WebKit21WebSWServerConnectionES9_FvNS_23ObjectIdentifierGenericIN7WebCore27ServiceWorkerIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F82A8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21WebSWServerConnection39WhenServiceWorkerIsTerminatedForTestingENS2_10ConnectionEN6WebKit21WebSWServerConnectionES9_FvNS_23ObjectIdentifierGenericIN7WebCore27ServiceWorkerIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3971;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = v3;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::Connection::sendMessageImpl(v2, &v9, 0, 0);
  result = v9;
  v9 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21WebSWServerConnection24StoreRegistrationsOnDiskENS2_10ConnectionEN6WebKit21WebSWServerConnectionEN7WebCore8SWServer10ConnectionEFvONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10F82D0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21WebSWServerConnection24StoreRegistrationsOnDiskENS2_10ConnectionEN6WebKit21WebSWServerConnectionEN7WebCore8SWServer10ConnectionEFvONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F82D0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21WebSWServerConnection24StoreRegistrationsOnDiskENS2_10ConnectionEN6WebKit21WebSWServerConnectionEN7WebCore8SWServer10ConnectionEFvONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3966;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = v3;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::Connection::sendMessageImpl(v2, &v9, 0, 0);
  result = v9;
  v9 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21WebSWServerConnection22SubscribeToPushServiceENS2_10ConnectionEN6WebKit21WebSWServerConnectionES9_FvNS_23ObjectIdentifierGenericIN7WebCore39ServiceWorkerRegistrationIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINSB_20PushSubscriptionDataENSB_13ExceptionDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSS_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F82F8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21WebSWServerConnection22SubscribeToPushServiceENS2_10ConnectionEN6WebKit21WebSWServerConnectionES9_FvNS_23ObjectIdentifierGenericIN7WebCore39ServiceWorkerRegistrationIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINSB_20PushSubscriptionDataENSB_13ExceptionDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSS_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F82F8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21WebSWServerConnection22SubscribeToPushServiceENS2_10ConnectionEN6WebKit21WebSWServerConnectionES9_FvNS_23ObjectIdentifierGenericIN7WebCore39ServiceWorkerRegistrationIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINSB_20PushSubscriptionDataENSB_13ExceptionDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSS_EE4callESS_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3967;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<WebCore::PushSubscriptionData,WebCore::ExceptionData>,void>::encode<IPC::Encoder>(v5, a2);
  IPC::Connection::sendMessageImpl(v3, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v6);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21WebSWServerConnection26UnsubscribeFromPushServiceENS2_10ConnectionEN6WebKit21WebSWServerConnectionES9_FvNS_23ObjectIdentifierGenericIN7WebCore39ServiceWorkerRegistrationIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEENSA_INSB_30PushSubscriptionIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIbNSB_13ExceptionDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSQ_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F8320;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21WebSWServerConnection26UnsubscribeFromPushServiceENS2_10ConnectionEN6WebKit21WebSWServerConnectionES9_FvNS_23ObjectIdentifierGenericIN7WebCore39ServiceWorkerRegistrationIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEENSA_INSB_30PushSubscriptionIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIbNSB_13ExceptionDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSQ_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F8320;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21WebSWServerConnection26UnsubscribeFromPushServiceENS2_10ConnectionEN6WebKit21WebSWServerConnectionES9_FvNS_23ObjectIdentifierGenericIN7WebCore39ServiceWorkerRegistrationIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEENSA_INSB_30PushSubscriptionIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIbNSB_13ExceptionDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSQ_EE4callESQ_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3969;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<BOOL,WebCore::ExceptionData>,void>::encode<IPC::Encoder>(v5, a2);
  IPC::Connection::sendMessageImpl(v3, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v6);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21WebSWServerConnection19GetPushSubscriptionENS2_10ConnectionEN6WebKit21WebSWServerConnectionES9_FvNS_23ObjectIdentifierGenericIN7WebCore39ServiceWorkerRegistrationIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINSt3__18optionalINSB_20PushSubscriptionDataEEENSB_13ExceptionDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSQ_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F8348;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21WebSWServerConnection19GetPushSubscriptionENS2_10ConnectionEN6WebKit21WebSWServerConnectionES9_FvNS_23ObjectIdentifierGenericIN7WebCore39ServiceWorkerRegistrationIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINSt3__18optionalINSB_20PushSubscriptionDataEEENSB_13ExceptionDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSQ_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F8348;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21WebSWServerConnection19GetPushSubscriptionENS2_10ConnectionEN6WebKit21WebSWServerConnectionES9_FvNS_23ObjectIdentifierGenericIN7WebCore39ServiceWorkerRegistrationIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINSt3__18optionalINSB_20PushSubscriptionDataEEENSB_13ExceptionDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSQ_EE4callESQ_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3957;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<std::optional<WebCore::PushSubscriptionData>,WebCore::ExceptionData>,void>::encode<IPC::Encoder>(v5, a2);
  IPC::Connection::sendMessageImpl(v3, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v6);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21WebSWServerConnection22GetPushPermissionStateENS2_10ConnectionEN6WebKit21WebSWServerConnectionES9_FvNS_23ObjectIdentifierGenericIN7WebCore39ServiceWorkerRegistrationIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIhNSB_13ExceptionDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSM_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F8370;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21WebSWServerConnection22GetPushPermissionStateENS2_10ConnectionEN6WebKit21WebSWServerConnectionES9_FvNS_23ObjectIdentifierGenericIN7WebCore39ServiceWorkerRegistrationIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIhNSB_13ExceptionDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSM_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F8370;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21WebSWServerConnection22GetPushPermissionStateENS2_10ConnectionEN6WebKit21WebSWServerConnectionES9_FvNS_23ObjectIdentifierGenericIN7WebCore39ServiceWorkerRegistrationIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIhNSB_13ExceptionDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSM_EE4callESM_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3956;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<unsigned char,WebCore::ExceptionData>,void>::encode<IPC::Encoder>(v5, a2);
  IPC::Connection::sendMessageImpl(v3, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v6);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21WebSWServerConnection23EnableNavigationPreloadENS2_10ConnectionEN6WebKit21WebSWServerConnectionES9_FvNS_23ObjectIdentifierGenericIN7WebCore39ServiceWorkerRegistrationIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_17CompletionHandlerIFvONSt3__18optionalINSB_13ExceptionDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSL_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F8398;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21WebSWServerConnection23EnableNavigationPreloadENS2_10ConnectionEN6WebKit21WebSWServerConnectionES9_FvNS_23ObjectIdentifierGenericIN7WebCore39ServiceWorkerRegistrationIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_17CompletionHandlerIFvONSt3__18optionalINSB_13ExceptionDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSL_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F8398;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21WebSWServerConnection23EnableNavigationPreloadENS2_10ConnectionEN6WebKit21WebSWServerConnectionES9_FvNS_23ObjectIdentifierGenericIN7WebCore39ServiceWorkerRegistrationIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_17CompletionHandlerIFvONSt3__18optionalINSB_13ExceptionDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSL_EE4callESL_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3953;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::optional<WebCore::Exception>,void>::encode<IPC::Encoder,std::optional<WebCore::Exception>>(v5, a2);
  IPC::Connection::sendMessageImpl(v3, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v6);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21WebSWServerConnection24DisableNavigationPreloadENS2_10ConnectionEN6WebKit21WebSWServerConnectionES9_FvNS_23ObjectIdentifierGenericIN7WebCore39ServiceWorkerRegistrationIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_17CompletionHandlerIFvONSt3__18optionalINSB_13ExceptionDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSL_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F83C0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21WebSWServerConnection24DisableNavigationPreloadENS2_10ConnectionEN6WebKit21WebSWServerConnectionES9_FvNS_23ObjectIdentifierGenericIN7WebCore39ServiceWorkerRegistrationIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_17CompletionHandlerIFvONSt3__18optionalINSB_13ExceptionDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSL_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F83C0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21WebSWServerConnection24DisableNavigationPreloadENS2_10ConnectionEN6WebKit21WebSWServerConnectionES9_FvNS_23ObjectIdentifierGenericIN7WebCore39ServiceWorkerRegistrationIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_17CompletionHandlerIFvONSt3__18optionalINSB_13ExceptionDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSL_EE4callESL_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3952;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::optional<WebCore::Exception>,void>::encode<IPC::Encoder,std::optional<WebCore::Exception>>(v5, a2);
  IPC::Connection::sendMessageImpl(v3, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v6);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21WebSWServerConnection31SetNavigationPreloadHeaderValueENS2_10ConnectionEN6WebKit21WebSWServerConnectionES9_FvNS_23ObjectIdentifierGenericIN7WebCore39ServiceWorkerRegistrationIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_6StringEONS_17CompletionHandlerIFvONSt3__18optionalINSB_13ExceptionDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F83E8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21WebSWServerConnection31SetNavigationPreloadHeaderValueENS2_10ConnectionEN6WebKit21WebSWServerConnectionES9_FvNS_23ObjectIdentifierGenericIN7WebCore39ServiceWorkerRegistrationIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_6StringEONS_17CompletionHandlerIFvONSt3__18optionalINSB_13ExceptionDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F83E8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21WebSWServerConnection31SetNavigationPreloadHeaderValueENS2_10ConnectionEN6WebKit21WebSWServerConnectionES9_FvNS_23ObjectIdentifierGenericIN7WebCore39ServiceWorkerRegistrationIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_6StringEONS_17CompletionHandlerIFvONSt3__18optionalINSB_13ExceptionDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_EE4callESN_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3964;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::optional<WebCore::Exception>,void>::encode<IPC::Encoder,std::optional<WebCore::Exception>>(v5, a2);
  IPC::Connection::sendMessageImpl(v3, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v6);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21WebSWServerConnection25GetNavigationPreloadStateENS2_10ConnectionEN6WebKit21WebSWServerConnectionES9_FvNS_23ObjectIdentifierGenericIN7WebCore39ServiceWorkerRegistrationIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINSB_22NavigationPreloadStateENSB_13ExceptionDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F8410;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21WebSWServerConnection25GetNavigationPreloadStateENS2_10ConnectionEN6WebKit21WebSWServerConnectionES9_FvNS_23ObjectIdentifierGenericIN7WebCore39ServiceWorkerRegistrationIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINSB_22NavigationPreloadStateENSB_13ExceptionDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F8410;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21WebSWServerConnection25GetNavigationPreloadStateENS2_10ConnectionEN6WebKit21WebSWServerConnectionES9_FvNS_23ObjectIdentifierGenericIN7WebCore39ServiceWorkerRegistrationIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINSB_22NavigationPreloadStateENSB_13ExceptionDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_EE4callESN_(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3954;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v12 = v5;
  LODWORD(v4) = *(a2 + 16);
  v6 = IPC::Encoder::grow(v5, 1uLL, 1);
  if (v4)
  {
    if (v7)
    {
      *v6 = 0;
      if (*(a2 + 16) == 1)
      {
        IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v5, *a2);
        goto LABEL_8;
      }

LABEL_11:
      mpark::throw_bad_variant_access(v6);
    }

LABEL_12:
    __break(0xC471u);
    JUMPOUT(0x19DAF0BE0);
  }

  if (!v7)
  {
    goto LABEL_12;
  }

  *v6 = 1;
  if (*(a2 + 16))
  {
    goto LABEL_11;
  }

  IPC::Encoder::operator<<<BOOL>(v5, a2);
LABEL_8:
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v5, a2 + 1);
  IPC::Connection::sendMessageImpl(v3, &v12, 0, 0);
  result = v12;
  v12 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v8);
    return bmalloc::api::tzoneFree(v10, v11);
  }

  return result;
}

void IPC::Decoder::decode<WebCore::BackgroundFetchRequest>(uint64_t a1, IPC::Decoder *a2)
{
  IPC::ArgumentCoder<WebCore::BackgroundFetchRequest,void>::decode(a2, a1);
  if ((*(a1 + 336) & 1) == 0)
  {
    v4 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v5 = *(a2 + 3);
    if (v5 && v4 != 0)
    {
      v7 = *(*v5 + 16);

      v7();
    }
  }
}

uint64_t WTF::Vector<WebCore::BackgroundFetchRequest,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::BackgroundFetchRequest>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<WebCore::BackgroundFetchRequest,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  v4 = *a1 + 336 * *(a1 + 12);
  WTF::URL::URL(v4, v3);
  WTF::URL::URL(v4 + 40, (v3 + 40));
  *(v4 + 80) = *(v3 + 80);
  v5 = *(v3 + 88);
  *(v3 + 88) = 0;
  *(v4 + 88) = v5;
  *(v4 + 104) = 0;
  *(v4 + 96) = 0;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(v4 + 96, (v3 + 96));
  *(v4 + 120) = 0;
  *(v4 + 112) = 0;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(v4 + 112, (v3 + 112));
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  v4 += 128;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(v4, (v3 + 128));
  v6 = *(v3 + 144);
  *(v4 + 20) = *(v3 + 148);
  *(v4 + 16) = v6;
  v7 = *(v3 + 152);
  *(v3 + 152) = 0;
  *(v4 + 24) = v7;
  v8 = *(v3 + 160);
  *(v3 + 160) = 0;
  *(v4 + 32) = v8;
  v9 = *(v3 + 168);
  *(v3 + 168) = 0;
  *(v4 + 40) = v9;
  v10 = *(v3 + 176);
  *(v4 + 56) = *(v3 + 184);
  *(v4 + 48) = v10;
  v11 = *(v3 + 192);
  *(v3 + 192) = 0;
  *(v4 + 64) = v11;
  LODWORD(v11) = *(v3 + 208);
  *(v4 + 83) = *(v3 + 211);
  *(v4 + 80) = v11;
  v12 = *(v3 + 216);
  *(v3 + 216) = 0;
  *(v4 + 88) = v12;
  v13 = *(v3 + 240);
  *(v4 + 96) = *(v3 + 224);
  *(v4 + 112) = v13;
  *(v4 + 128) = *(v3 + 256);
  *(v4 + 136) = 0;
  *(v4 + 144) = 0;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(v4 + 136, (v3 + 264));
  *(v4 + 152) = 0;
  *(v4 + 160) = 0;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(v4 + 152, (v3 + 280));
  v14 = *(v3 + 296);
  *(v3 + 296) = 0;
  *(v4 + 176) = 0;
  *(v4 + 184) = 0;
  *(v4 + 168) = v14;
  result = WTF::VectorBuffer<unsigned short,0ul,WTF::FastMalloc>::adopt(v4 + 176, (v3 + 304));
  v16 = *(v3 + 320);
  *(v4 + 196) = *(v3 + 324);
  *(v4 + 192) = v16;
  ++*(a1 + 12);
  return result;
}

unint64_t WTF::Vector<WebCore::BackgroundFetchRequest,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 336 * *(a1 + 12) <= a3)
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

    WTF::Vector<WebCore::BackgroundFetchRequest,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebCore::BackgroundFetchRequest,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

void WTF::Vector<WebCore::BackgroundFetchRequest,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    if (a2 >= 0xC30C31)
    {
      __break(0xC471u);
      JUMPOUT(0x19DAF0F98);
    }

    v3 = *a1;
    v4 = *a1 + 336 * *(a1 + 12);
    v5 = 336 * a2;
    v6 = WTF::fastMalloc((336 * a2));
    *(a1 + 8) = v5 / 0x150;
    *a1 = v6;
    WTF::VectorMover<false,WebCore::BackgroundFetchRequest>::move(v3, v4, v6);
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
}

void WTF::VectorMover<false,WebCore::BackgroundFetchRequest>::move(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v6 = 0;
    do
    {
      v7 = a1 + v6;
      v8 = (a3 + v6);
      WTF::URL::URL(a3 + v6, (a1 + v6));
      WTF::URL::URL(a3 + v6 + 40, (a1 + v6 + 40));
      v8[10] = *(a1 + v6 + 80);
      v9 = *(a1 + v6 + 88);
      *(v7 + 88) = 0;
      v8[11] = v9;
      v8[13] = 0;
      v8[12] = 0;
      WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a3 + v6 + 96, (a1 + v6 + 96));
      v8[15] = 0;
      v8[14] = 0;
      WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a3 + v6 + 112, (a1 + v6 + 112));
      v8[16] = 0;
      v8[17] = 0;
      v10 = a3 + v6 + 128;
      WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(v10, (a1 + v6 + 128));
      v11 = *(a1 + v6 + 144);
      *(v10 + 20) = *(a1 + v6 + 148);
      *(v10 + 16) = v11;
      v12 = *(a1 + v6 + 152);
      *(v7 + 152) = 0;
      *(v10 + 24) = v12;
      v13 = *(a1 + v6 + 160);
      *(v7 + 160) = 0;
      *(v10 + 32) = v13;
      v14 = *(a1 + v6 + 168);
      *(v7 + 168) = 0;
      *(v10 + 40) = v14;
      v15 = *(a1 + v6 + 176);
      *(v10 + 56) = *(a1 + v6 + 184);
      *(v10 + 48) = v15;
      v16 = *(a1 + v6 + 192);
      *(v7 + 192) = 0;
      *(v10 + 64) = v16;
      LODWORD(v16) = *(a1 + v6 + 208);
      *(v10 + 83) = *(a1 + v6 + 211);
      *(v10 + 80) = v16;
      v17 = *(a1 + v6 + 216);
      *(v7 + 216) = 0;
      *(v10 + 88) = v17;
      v18 = *(a1 + v6 + 240);
      *(v10 + 96) = *(a1 + v6 + 224);
      *(v10 + 112) = v18;
      *(v10 + 128) = *(a1 + v6 + 256);
      *(v10 + 136) = 0;
      *(v10 + 144) = 0;
      WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a3 + v6 + 264, (a1 + v6 + 264));
      *(v10 + 152) = 0;
      *(v10 + 160) = 0;
      WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a3 + v6 + 280, (a1 + v6 + 280));
      v19 = *(a1 + v6 + 296);
      *(v7 + 296) = 0;
      *(v10 + 176) = 0;
      *(v10 + 184) = 0;
      *(v10 + 168) = v19;
      WTF::VectorBuffer<unsigned short,0ul,WTF::FastMalloc>::adopt(a3 + v6 + 304, (a1 + v6 + 304));
      v20 = *(a1 + v6 + 320);
      *(v10 + 196) = *(a1 + v6 + 324);
      *(v10 + 192) = v20;
      WTF::Vector<std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + v6 + 304, v21);
      v23 = *(a1 + v6 + 296);
      *(v7 + 296) = 0;
      if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v23, v22);
      }

      WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::~Vector((v7 + 280), v22);
      WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::~Vector(v7 + 264, v24);
      v26 = *(v7 + 216);
      *(v7 + 216) = 0;
      if (v26)
      {
        if (atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v26, v25);
        }
      }

      WebCore::ResourceRequest::~ResourceRequest((a1 + v6));
      v6 += 336;
    }

    while (a1 + v6 != a2);
  }
}

void WTF::VectorTypeOperations<WebCore::BackgroundFetchRequest>::destruct(void *a1, void *a2)
{
  if (a1 != a2)
  {
    v3 = a1 + 304;
    do
    {
      WTF::Vector<std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v3, a2);
      v5 = *(v3 - 8);
      *(v3 - 8) = 0;
      if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, v4);
      }

      WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::~Vector((v3 - 24), v4);
      WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::~Vector(v3 - 40, v6);
      v8 = *(v3 - 88);
      *(v3 - 88) = 0;
      if (v8)
      {
        if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v8, v7);
        }
      }

      WebCore::ResourceRequest::~ResourceRequest((v3 - 304));
      v9 = (v3 + 32);
      v3 += 336;
    }

    while (v9 != a2);
  }
}

uint64_t WTF::Vector<WebCore::BackgroundFetchRequest,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorTypeOperations<WebCore::BackgroundFetchRequest>::destruct(*a1, (*a1 + 336 * v3));
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21WebSWServerConnection20StartBackgroundFetchENS2_10ConnectionEN6WebKit21WebSWServerConnectionEN7WebCore8SWServer10ConnectionEFvNS_23ObjectIdentifierGenericINSA_39ServiceWorkerRegistrationIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEERKNS_6StringEONS_6VectorINSA_22BackgroundFetchRequestELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONSA_22BackgroundFetchOptionsEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINSt3__18optionalINSA_26BackgroundFetchInformationEEENSA_13ExceptionDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJS13_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F8438;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21WebSWServerConnection20StartBackgroundFetchENS2_10ConnectionEN6WebKit21WebSWServerConnectionEN7WebCore8SWServer10ConnectionEFvNS_23ObjectIdentifierGenericINSA_39ServiceWorkerRegistrationIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEERKNS_6StringEONS_6VectorINSA_22BackgroundFetchRequestELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONSA_22BackgroundFetchOptionsEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINSt3__18optionalINSA_26BackgroundFetchInformationEEENSA_13ExceptionDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJS13_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F8438;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21WebSWServerConnection20StartBackgroundFetchENS2_10ConnectionEN6WebKit21WebSWServerConnectionEN7WebCore8SWServer10ConnectionEFvNS_23ObjectIdentifierGenericINSA_39ServiceWorkerRegistrationIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEERKNS_6StringEONS_6VectorINSA_22BackgroundFetchRequestELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONSA_22BackgroundFetchOptionsEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINSt3__18optionalINSA_26BackgroundFetchInformationEEENSA_13ExceptionDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJS13_EE4callES13_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3965;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<std::optional<WebCore::BackgroundFetchInformation>,WebCore::ExceptionData>,void>::encode<IPC::Encoder>(v5, a2);
  IPC::Connection::sendMessageImpl(v3, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v6);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

char *IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<std::optional<WebCore::BackgroundFetchInformation>,WebCore::ExceptionData>,void>::encode<IPC::Encoder>(IPC::Encoder *a1, uint64_t a2)
{
  v4 = *(a2 + 64);
  v5 = IPC::Encoder::grow(a1, 1uLL, 1);
  if (v4)
  {
    if (v6)
    {
      *v5 = 0;
      if (*(a2 + 64) == 1)
      {
        IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *a2);

        return IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 8));
      }

LABEL_17:
      mpark::throw_bad_variant_access(v5);
    }

LABEL_22:
    __break(0xC471u);
    JUMPOUT(0x19DAF14ECLL);
  }

  if (!v6)
  {
    __break(0xC471u);
    JUMPOUT(0x19DAF150CLL);
  }

  *v5 = 1;
  if (*(a2 + 64))
  {
    goto LABEL_17;
  }

  v8 = *(a2 + 56);
  result = IPC::Encoder::grow(a1, 1uLL, 1);
  if ((v8 & 1) == 0)
  {
    if (v9)
    {
      *result = 0;
      return result;
    }

    goto LABEL_22;
  }

  if (!v9)
  {
    __break(0xC471u);
    JUMPOUT(0x19DAF152CLL);
  }

  *result = 1;
  if ((*(a2 + 56) & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:sn200100]();
    goto LABEL_22;
  }

  return IPC::ArgumentCoder<WebCore::BackgroundFetchInformation,void>::encode(a1, a2);
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21WebSWServerConnection26BackgroundFetchInformationENS2_10ConnectionEN6WebKit21WebSWServerConnectionEN7WebCore8SWServer10ConnectionEFvNS_23ObjectIdentifierGenericINSA_39ServiceWorkerRegistrationIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEERKNS_6StringEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINSt3__18optionalINSA_26BackgroundFetchInformationEEENSA_13ExceptionDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSV_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F8460;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21WebSWServerConnection26BackgroundFetchInformationENS2_10ConnectionEN6WebKit21WebSWServerConnectionEN7WebCore8SWServer10ConnectionEFvNS_23ObjectIdentifierGenericINSA_39ServiceWorkerRegistrationIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEERKNS_6StringEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINSt3__18optionalINSA_26BackgroundFetchInformationEEENSA_13ExceptionDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSV_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F8460;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21WebSWServerConnection26BackgroundFetchInformationENS2_10ConnectionEN6WebKit21WebSWServerConnectionEN7WebCore8SWServer10ConnectionEFvNS_23ObjectIdentifierGenericINSA_39ServiceWorkerRegistrationIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEERKNS_6StringEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINSt3__18optionalINSA_26BackgroundFetchInformationEEENSA_13ExceptionDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSV_EE4callESV_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3950;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<std::optional<WebCore::BackgroundFetchInformation>,WebCore::ExceptionData>,void>::encode<IPC::Encoder>(v5, a2);
  IPC::Connection::sendMessageImpl(v3, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v6);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21WebSWServerConnection26BackgroundFetchIdentifiersENS2_10ConnectionEN6WebKit21WebSWServerConnectionEN7WebCore8SWServer10ConnectionEFvNS_23ObjectIdentifierGenericINSA_39ServiceWorkerRegistrationIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_17CompletionHandlerIFvONS_6VectorINS_6StringELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSO_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F8488;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21WebSWServerConnection26BackgroundFetchIdentifiersENS2_10ConnectionEN6WebKit21WebSWServerConnectionEN7WebCore8SWServer10ConnectionEFvNS_23ObjectIdentifierGenericINSA_39ServiceWorkerRegistrationIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_17CompletionHandlerIFvONS_6VectorINS_6StringELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSO_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F8488;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21WebSWServerConnection26BackgroundFetchIdentifiersENS2_10ConnectionEN6WebKit21WebSWServerConnectionEN7WebCore8SWServer10ConnectionEFvNS_23ObjectIdentifierGenericINSA_39ServiceWorkerRegistrationIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_17CompletionHandlerIFvONS_6VectorINS_6StringELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSO_EE4callESO_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3949;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v5, a2);
  IPC::Connection::sendMessageImpl(v3, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v6);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21WebSWServerConnection20AbortBackgroundFetchENS2_10ConnectionEN6WebKit21WebSWServerConnectionEN7WebCore8SWServer10ConnectionEFvNS_23ObjectIdentifierGenericINSA_39ServiceWorkerRegistrationIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEERKNS_6StringEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED1Ev(void *a1)
{
  *a1 = &unk_1F10F84B0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21WebSWServerConnection20AbortBackgroundFetchENS2_10ConnectionEN6WebKit21WebSWServerConnectionEN7WebCore8SWServer10ConnectionEFvNS_23ObjectIdentifierGenericINSA_39ServiceWorkerRegistrationIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEERKNS_6StringEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F84B0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21WebSWServerConnection20AbortBackgroundFetchENS2_10ConnectionEN6WebKit21WebSWServerConnectionEN7WebCore8SWServer10ConnectionEFvNS_23ObjectIdentifierGenericINSA_39ServiceWorkerRegistrationIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEERKNS_6StringEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEE4callEb(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3946;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v12 = v5;
  v6 = IPC::Encoder::grow(v5, 1uLL, 1);
  if (v7)
  {
    *v6 = v2;
    IPC::Connection::sendMessageImpl(v3, &v12, 0, 0);
    result = v12;
    v12 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v8);
      return bmalloc::api::tzoneFree(v10, v11);
    }
  }

  else
  {
    result = 1067;
    __break(0xC471u);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21WebSWServerConnection20MatchBackgroundFetchENS2_10ConnectionEN6WebKit21WebSWServerConnectionEN7WebCore8SWServer10ConnectionEFvNS_23ObjectIdentifierGenericINSA_39ServiceWorkerRegistrationIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEERKNS_6StringEONSA_22RetrieveRecordsOptionsEONS_17CompletionHandlerIFvONS_6VectorINSA_32BackgroundFetchRecordInformationELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJST_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F84D8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21WebSWServerConnection20MatchBackgroundFetchENS2_10ConnectionEN6WebKit21WebSWServerConnectionEN7WebCore8SWServer10ConnectionEFvNS_23ObjectIdentifierGenericINSA_39ServiceWorkerRegistrationIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEERKNS_6StringEONSA_22RetrieveRecordsOptionsEONS_17CompletionHandlerIFvONS_6VectorINSA_32BackgroundFetchRecordInformationELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJST_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F84D8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21WebSWServerConnection20MatchBackgroundFetchENS2_10ConnectionEN6WebKit21WebSWServerConnectionEN7WebCore8SWServer10ConnectionEFvNS_23ObjectIdentifierGenericINSA_39ServiceWorkerRegistrationIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEERKNS_6StringEONSA_22RetrieveRecordsOptionsEONS_17CompletionHandlerIFvONS_6VectorINSA_32BackgroundFetchRecordInformationELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJST_EE4callEST_(uint64_t a1, unsigned int *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3959;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v13 = v5;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v5, a2[3]);
  v6 = a2[3];
  if (v6)
  {
    v7 = *a2;
    v8 = 304 * v6;
    do
    {
      IPC::ArgumentCoder<WebCore::BackgroundFetchRecordInformation,void>::encode(v5, v7);
      v7 += 304;
      v8 -= 304;
    }

    while (v8);
  }

  IPC::Connection::sendMessageImpl(v3, &v13, 0, 0);
  result = v13;
  v13 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v9);
    return bmalloc::api::tzoneFree(v11, v12);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21WebSWServerConnection22RetrieveRecordResponseENS2_10ConnectionEN6WebKit21WebSWServerConnectionEN7WebCore8SWServer10ConnectionEFvNS_23ObjectIdentifierGenericINSA_35BackgroundFetchRecordIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINSA_16ResourceResponseENSA_13ExceptionDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSP_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F8500;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21WebSWServerConnection22RetrieveRecordResponseENS2_10ConnectionEN6WebKit21WebSWServerConnectionEN7WebCore8SWServer10ConnectionEFvNS_23ObjectIdentifierGenericINSA_35BackgroundFetchRecordIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINSA_16ResourceResponseENSA_13ExceptionDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSP_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F8500;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21WebSWServerConnection22RetrieveRecordResponseENS2_10ConnectionEN6WebKit21WebSWServerConnectionEN7WebCore8SWServer10ConnectionEFvNS_23ObjectIdentifierGenericINSA_35BackgroundFetchRecordIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINSA_16ResourceResponseENSA_13ExceptionDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSP_EE4callESP_(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3962;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v12 = v5;
  LODWORD(v4) = *(a2 + 264);
  v6 = IPC::Encoder::grow(v5, 1uLL, 1);
  if (v4)
  {
    if (v7)
    {
      *v6 = 0;
      if (*(a2 + 264) == 1)
      {
        IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v5, *a2);
        IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v5, a2 + 1);
        goto LABEL_8;
      }

LABEL_11:
      mpark::throw_bad_variant_access(v6);
    }

LABEL_12:
    __break(0xC471u);
    JUMPOUT(0x19DAF1CA0);
  }

  if (!v7)
  {
    goto LABEL_12;
  }

  *v6 = 1;
  if (*(a2 + 264))
  {
    goto LABEL_11;
  }

  IPC::ArgumentCoder<WebCore::ResourceResponse,void>::encode(v5, a2);
LABEL_8:
  IPC::Connection::sendMessageImpl(v3, &v12, 0, 0);
  result = v12;
  v12 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v8);
    return bmalloc::api::tzoneFree(v10, v11);
  }

  return result;
}

uint64_t IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WebCore::CookieChangeSubscription,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(uint64_t a1, uint64_t *a2)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if (v6 & 1) != 0 && ((v7 = v4, IPC::VectorArgumentCoder<false,WebCore::CookieChangeSubscription,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a2, &v18, v5), (v20) || (v12 = *a2, v13 = a2[1], *a2 = 0, a2[1] = 0, (v14 = a2[3]) != 0) && v13 && ((*(*v14 + 16))(v14, v12), (v20)))
  {
    v9 = v18;
    *a1 = v7;
    *(a1 + 8) = v9;
    v10 = v19;
    v18 = 0;
    v19 = 0;
    *(a1 + 16) = v10;
    *(a1 + 24) = 1;
    return WTF::Vector<std::pair<WTF::AtomString,WTF::AtomString>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v18, v8);
  }

  else
  {
    *a1 = 0;
    *(a1 + 24) = 0;
    v15 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    result = a2[3];
    if (result)
    {
      v16 = v15 == 0;
    }

    else
    {
      v16 = 1;
    }

    if (!v16)
    {
      v17 = *(*result + 16);

      return v17();
    }
  }

  return result;
}

uint64_t IPC::VectorArgumentCoder<false,WebCore::CookieChangeSubscription,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q1>)
{
  v5 = *(a1 + 1);
  v6 = ((*(a1 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *a1;
  v8 = v6 - *a1;
  v9 = v5 >= v8;
  v10 = v5 - v8;
  if (!v9 || v10 <= 7)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v39 = *(a1 + 3);
    if (v39)
    {
      if (v5)
      {
        (*(*v39 + 16))(v39);
        v5 = *(a1 + 1);
      }
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_43;
  }

  *(a1 + 2) = v6 + 1;
  if (!v6)
  {
LABEL_43:
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result)
    {
      if (v5)
      {
        result = (*(*result + 16))(result);
      }
    }

    *a2 = 0;
    *(a2 + 16) = 0;
    return result;
  }

  v12 = *v6;
  v43 = 0uLL;
  if (v12 >= 0x10000)
  {
    while (1)
    {
      IPC::Decoder::decode<WebCore::CookieChangeSubscription>(a1, &v40);
      if (v42 != 1)
      {
LABEL_39:
        *(a2 + 16) = 0;
        *a2 = 0;
        return WTF::Vector<std::pair<WTF::AtomString,WTF::AtomString>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v43, v7);
      }

      if (v43.n128_u32[3] != v43.n128_u32[2])
      {
        break;
      }

      v26 = WTF::Vector<WebCore::CookieChangeSubscription,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v43, v43.n128_u32[3] + 1, &v40);
      v27 = v43.n128_u32[3] + 1;
      v28 = (v43.n128_u64[0] + 16 * v43.n128_u32[3]);
      v29 = *v26;
      *v26 = 0;
      *v28 = v29;
      v30 = v26[1];
      v26[1] = 0;
      v28[1] = v30;
      v43.n128_u32[3] = v27;
      if (v42)
      {
        goto LABEL_31;
      }

LABEL_37:
      if (!--v12)
      {
        WTF::Vector<WebCore::HTTPHeaderField,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v43, v43.n128_u32[3]);
        *a2 = v43.n128_u64[0];
        v37 = v43.n128_u64[1];
        v43 = 0uLL;
        *(a2 + 8) = v37;
        goto LABEL_25;
      }
    }

    v31 = v43.n128_u32[3] + 1;
    v32 = (v43.n128_u64[0] + 16 * v43.n128_u32[3]);
    v33 = v40;
    v40 = 0;
    *v32 = v33;
    v34 = v41;
    v41 = 0;
    v32[1] = v34;
    v43.n128_u32[3] = v31;
LABEL_31:
    v35 = v41;
    v41 = 0;
    if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v35, v7);
    }

    v36 = v40;
    v40 = 0;
    if (v36 && atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v36, v7);
    }

    goto LABEL_37;
  }

  if (v12)
  {
    v43.n128_u32[2] = v12;
    v43.n128_u64[0] = WTF::fastMalloc((16 * v12));
    while (1)
    {
      IPC::Decoder::decode<WebCore::CookieChangeSubscription>(a1, &v40);
      if (v42 != 1)
      {
        goto LABEL_39;
      }

      if (v43.n128_u32[3] != v43.n128_u32[2])
      {
        break;
      }

      v13 = WTF::Vector<WebCore::CookieChangeSubscription,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v43, v43.n128_u32[3] + 1, &v40);
      v14 = v43.n128_u32[3] + 1;
      v15 = (v43.n128_u64[0] + 16 * v43.n128_u32[3]);
      v16 = *v13;
      *v13 = 0;
      *v15 = v16;
      v17 = v13[1];
      v13[1] = 0;
      v15[1] = v17;
      v43.n128_u32[3] = v14;
      if (v42)
      {
        goto LABEL_15;
      }

LABEL_21:
      if (!--v12)
      {
        v25 = v43.n128_u64[1];
        v24 = v43.n128_u64[0];
        goto LABEL_24;
      }
    }

    v18 = v43.n128_u32[3] + 1;
    v19 = (v43.n128_u64[0] + 16 * v43.n128_u32[3]);
    v20 = v40;
    v40 = 0;
    *v19 = v20;
    v21 = v41;
    v41 = 0;
    v19[1] = v21;
    v43.n128_u32[3] = v18;
LABEL_15:
    v22 = v41;
    v41 = 0;
    if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v22, v7);
    }

    v23 = v40;
    v40 = 0;
    if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v23, v7);
    }

    goto LABEL_21;
  }

  v24 = 0;
  v25 = 0;
LABEL_24:
  a3.n128_u64[0] = 0;
  v43 = a3;
  *a2 = v24;
  *(a2 + 8) = v25;
LABEL_25:
  *(a2 + 16) = 1;
  return WTF::Vector<std::pair<WTF::AtomString,WTF::AtomString>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v43, v7);
}

WTF::StringImpl *IPC::Decoder::decode<WebCore::CookieChangeSubscription>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<WebCore::CookieChangeSubscription,void>::decode(a1, a2);
  if ((*(a2 + 16) & 1) == 0)
  {
    v5 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result && v5 != 0)
    {
      v7 = *(*result + 16);

      return v7();
    }
  }

  return result;
}

unint64_t WTF::Vector<WebCore::CookieChangeSubscription,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 16 * *(a1 + 12) <= a3)
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

    WTF::Vector<WebCore::CookieChangeSubscription,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebCore::CookieChangeSubscription,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WebCore::CookieChangeSubscription,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t result, unint64_t a2)
{
  if (*(result + 8) >= a2)
  {
    return 1;
  }

  v2 = a2;
  if (!(a2 >> 28))
  {
    v3 = result;
    v4 = *result;
    v5 = (*result + 16 * *(result + 12));
    v6 = WTF::fastMalloc((16 * a2));
    *(v3 + 8) = v2;
    *v3 = v6;
    WTF::VectorTypeOperations<WebCore::DataListSuggestion>::move(v4, v5, v6);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21WebSWServerConnection28AddCookieChangeSubscriptionsENS2_10ConnectionEN6WebKit21WebSWServerConnectionES9_FvNS_23ObjectIdentifierGenericIN7WebCore39ServiceWorkerRegistrationIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_6VectorINSB_24CookieChangeSubscriptionELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvONSt3__18optionalINSB_13ExceptionDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSR_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F8528;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21WebSWServerConnection28AddCookieChangeSubscriptionsENS2_10ConnectionEN6WebKit21WebSWServerConnectionES9_FvNS_23ObjectIdentifierGenericIN7WebCore39ServiceWorkerRegistrationIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_6VectorINSB_24CookieChangeSubscriptionELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvONSt3__18optionalINSB_13ExceptionDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSR_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F8528;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21WebSWServerConnection28AddCookieChangeSubscriptionsENS2_10ConnectionEN6WebKit21WebSWServerConnectionES9_FvNS_23ObjectIdentifierGenericIN7WebCore39ServiceWorkerRegistrationIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_6VectorINSB_24CookieChangeSubscriptionELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvONSt3__18optionalINSB_13ExceptionDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSR_EE4callESR_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3947;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::optional<WebCore::Exception>,void>::encode<IPC::Encoder,std::optional<WebCore::Exception>>(v5, a2);
  IPC::Connection::sendMessageImpl(v3, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v6);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21WebSWServerConnection31RemoveCookieChangeSubscriptionsENS2_10ConnectionEN6WebKit21WebSWServerConnectionES9_FvNS_23ObjectIdentifierGenericIN7WebCore39ServiceWorkerRegistrationIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_6VectorINSB_24CookieChangeSubscriptionELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvONSt3__18optionalINSB_13ExceptionDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSR_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F8550;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21WebSWServerConnection31RemoveCookieChangeSubscriptionsENS2_10ConnectionEN6WebKit21WebSWServerConnectionES9_FvNS_23ObjectIdentifierGenericIN7WebCore39ServiceWorkerRegistrationIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_6VectorINSB_24CookieChangeSubscriptionELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvONSt3__18optionalINSB_13ExceptionDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSR_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F8550;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21WebSWServerConnection31RemoveCookieChangeSubscriptionsENS2_10ConnectionEN6WebKit21WebSWServerConnectionES9_FvNS_23ObjectIdentifierGenericIN7WebCore39ServiceWorkerRegistrationIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_6VectorINSB_24CookieChangeSubscriptionELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvONSt3__18optionalINSB_13ExceptionDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSR_EE4callESR_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3961;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::optional<WebCore::Exception>,void>::encode<IPC::Encoder,std::optional<WebCore::Exception>>(v5, a2);
  IPC::Connection::sendMessageImpl(v3, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v6);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21WebSWServerConnection25CookieChangeSubscriptionsENS2_10ConnectionEN6WebKit21WebSWServerConnectionES9_FvNS_23ObjectIdentifierGenericIN7WebCore39ServiceWorkerRegistrationIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINS_6VectorINSB_24CookieChangeSubscriptionELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEENSB_13ExceptionDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSR_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F8578;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21WebSWServerConnection25CookieChangeSubscriptionsENS2_10ConnectionEN6WebKit21WebSWServerConnectionES9_FvNS_23ObjectIdentifierGenericIN7WebCore39ServiceWorkerRegistrationIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINS_6VectorINSB_24CookieChangeSubscriptionELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEENSB_13ExceptionDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSR_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F8578;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21WebSWServerConnection25CookieChangeSubscriptionsENS2_10ConnectionEN6WebKit21WebSWServerConnectionES9_FvNS_23ObjectIdentifierGenericIN7WebCore39ServiceWorkerRegistrationIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINS_6VectorINSB_24CookieChangeSubscriptionELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEENSB_13ExceptionDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSR_EE4callESR_(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3951;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v15 = v5;
  LODWORD(v4) = *(a2 + 16);
  v6 = IPC::Encoder::grow(v5, 1uLL, 1);
  if (v4)
  {
    if (v7)
    {
      *v6 = 0;
      if (*(a2 + 16) == 1)
      {
        IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v5, *a2);
        IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v5, a2 + 1);
        goto LABEL_10;
      }

LABEL_13:
      mpark::throw_bad_variant_access(v6);
    }

LABEL_14:
    __break(0xC471u);
    JUMPOUT(0x19DAF2770);
  }

  if (!v7)
  {
    goto LABEL_14;
  }

  *v6 = 1;
  if (*(a2 + 16))
  {
    goto LABEL_13;
  }

  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v5, *(a2 + 3));
  v8 = *(a2 + 3);
  if (v8)
  {
    v9 = *a2;
    v10 = &v9[2 * v8];
    do
    {
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v5, v9);
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v5, v9 + 1);
      v9 += 2;
    }

    while (v9 != v10);
  }

LABEL_10:
  IPC::Connection::sendMessageImpl(v3, &v15, 0, 0);
  result = v15;
  v15 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v11);
    return bmalloc::api::tzoneFree(v13, v14);
  }

  return result;
}

void IPC::Decoder::decode<WebCore::ServiceWorkerRoute>(uint64_t a1, IPC::Decoder *a2)
{
  IPC::ArgumentCoder<WebCore::ServiceWorkerRoute,void>::decode(a2, a1);
  if ((*(a1 + 128) & 1) == 0)
  {
    v4 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v5 = *(a2 + 3);
    if (v5 && v4 != 0)
    {
      v7 = *(*v5 + 16);

      v7();
    }
  }
}

WTF *WTF::Vector<WebCore::ServiceWorkerRoute,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::ServiceWorkerRoute>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<WebCore::ServiceWorkerRoute,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  v4 = v3;
  v5 = *a1 + (*(a1 + 12) << 7);
  *v5 = 0;
  *(v5 + 64) = 0;
  if (*(v3 + 64) == 1)
  {
    v6 = *v3;
    *v3 = 0;
    *v5 = v6;
    v7 = *(v3 + 8);
    *(v3 + 8) = 0;
    *(v5 + 8) = v7;
    v8 = *(v3 + 16);
    *(v3 + 16) = 0;
    *(v5 + 16) = v8;
    v9 = *(v3 + 24);
    *(v3 + 24) = 0;
    *(v5 + 24) = v9;
    v10 = *(v3 + 32);
    *(v3 + 32) = 0;
    *(v5 + 32) = v10;
    v11 = *(v3 + 40);
    *(v3 + 40) = 0;
    *(v5 + 40) = v11;
    v12 = *(v3 + 48);
    *(v3 + 48) = 0;
    *(v5 + 48) = v12;
    v13 = *(v3 + 56);
    *(v3 + 56) = 0;
    *(v5 + 56) = v13;
    *(v5 + 64) = 1;
  }

  v14 = *(v3 + 72);
  *(v3 + 72) = 0;
  *(v5 + 72) = v14;
  LODWORD(v14) = *(v3 + 80);
  v15 = *(v3 + 84);
  *(v5 + 88) = 0;
  *(v5 + 84) = v15;
  *(v5 + 80) = v14;
  *(v5 + 96) = 0;
  result = WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(v5 + 88, (v3 + 88));
  v17 = *(v4 + 104);
  *(v4 + 104) = 0;
  *(v5 + 104) = v17;
  *(v5 + 112) = 0;
  *(v5 + 120) = -1;
  v18 = *(v4 + 120);
  if (v18 != 255)
  {
    if (*(v4 + 120))
    {
      *(v5 + 112) = *(v4 + 112);
    }

    else
    {
      v19 = *(v4 + 112);
      *(v4 + 112) = 0;
      *(v5 + 112) = v19;
    }

    *(v5 + 120) = v18;
  }

  ++*(a1 + 12);
  return result;
}

unint64_t WTF::Vector<WebCore::ServiceWorkerRoute,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + (*(a1 + 12) << 7) <= a3)
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

    WTF::Vector<WebCore::ServiceWorkerRoute,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebCore::ServiceWorkerRoute,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

void WTF::Vector<WebCore::ServiceWorkerRoute,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    v2 = a2;
    if (a2 >> 25)
    {
      __break(0xC471u);
      JUMPOUT(0x19DAF2AC8);
    }

    v4 = *a1;
    v5 = *a1 + (*(a1 + 12) << 7);
    v6 = WTF::fastMalloc((a2 << 7));
    *(a1 + 8) = v2;
    *a1 = v6;
    WTF::VectorMover<false,WebCore::ServiceWorkerRoute>::move(v4, v5, v6);
    if (v4)
    {
      if (*a1 == v4)
      {
        *a1 = 0;
        *(a1 + 8) = 0;
      }

      WTF::fastFree(v4, v7);
    }
  }
}

void WTF::VectorMover<false,WebCore::ServiceWorkerRoute>::move(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v6 = 0;
    do
    {
      v7 = a3 + v6;
      v8 = (a1 + v6);
      *v7 = 0;
      *(v7 + 64) = 0;
      if (*(a1 + v6 + 64) == 1)
      {
        v9 = *v8;
        *v8 = 0;
        *v7 = v9;
        v10 = v8[1];
        v8[1] = 0;
        *(v7 + 8) = v10;
        v11 = v8[2];
        v8[2] = 0;
        *(v7 + 16) = v11;
        v12 = v8[3];
        v8[3] = 0;
        *(v7 + 24) = v12;
        v13 = v8[4];
        v8[4] = 0;
        *(v7 + 32) = v13;
        v14 = v8[5];
        v8[5] = 0;
        *(v7 + 40) = v14;
        v15 = v8[6];
        v8[6] = 0;
        *(v7 + 48) = v15;
        v16 = v8[7];
        v8[7] = 0;
        *(v7 + 56) = v16;
        *(v7 + 64) = 1;
      }

      v17 = v8[9];
      v8[9] = 0;
      *(v7 + 72) = v17;
      LODWORD(v17) = *(v8 + 20);
      *(v7 + 84) = *(v8 + 42);
      *(v7 + 80) = v17;
      *(v7 + 96) = 0;
      *(v7 + 88) = 0;
      WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(v7 + 88, v8 + 22);
      v19 = v8[13];
      v8[13] = 0;
      *(v7 + 104) = v19;
      *(v7 + 112) = 0;
      *(v7 + 120) = -1;
      v20 = *(v8 + 120);
      if (v20 != 255)
      {
        if (*(v8 + 120))
        {
          *(v7 + 112) = *(v8 + 112);
        }

        else
        {
          v21 = v8[14];
          v8[14] = 0;
          *(v7 + 112) = v21;
        }

        *(v7 + 120) = v20;
      }

      mpark::detail::move_constructor<mpark::detail::traits<WebCore::RouterSourceDict,WebCore::RouterSourceEnum>,(mpark::detail::Trait)1>::~move_constructor((v8 + 14), v18);
      std::unique_ptr<WebCore::ServiceWorkerRouteCondition>::reset[abi:sn200100](v8 + 13, 0);
      WTF::Vector<WebCore::ServiceWorkerRouteCondition,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((v8 + 11), v22);
      v24 = v8[9];
      v8[9] = 0;
      if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v24, v23);
      }

      if (*(v8 + 64) == 1)
      {
        WebCore::ServiceWorkerRoutePattern::~ServiceWorkerRoutePattern((a1 + v6), v23);
      }

      v6 += 128;
    }

    while (a1 + v6 != a2);
  }
}

void WTF::VectorTypeOperations<WebCore::ServiceWorkerRoute>::destruct(WTF::StringImpl *a1, WTF::StringImpl *a2)
{
  if (a1 != a2)
  {
    v3 = a1 + 112;
    do
    {
      mpark::detail::move_constructor<mpark::detail::traits<WebCore::RouterSourceDict,WebCore::RouterSourceEnum>,(mpark::detail::Trait)1>::~move_constructor(v3, a2);
      std::unique_ptr<WebCore::ServiceWorkerRouteCondition>::reset[abi:sn200100]((v3 - 8), 0);
      WTF::Vector<WebCore::ServiceWorkerRouteCondition,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v3 - 24, v4);
      v5 = *(v3 - 40);
      *(v3 - 40) = 0;
      if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, a2);
      }

      if (*(v3 - 48) == 1)
      {
        WebCore::ServiceWorkerRoutePattern::~ServiceWorkerRoutePattern((v3 - 112), a2);
      }

      v6 = (v3 + 16);
      v3 += 128;
    }

    while (v6 != a2);
  }
}

uint64_t WTF::Vector<WebCore::ServiceWorkerRoute,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorTypeOperations<WebCore::ServiceWorkerRoute>::destruct(*a1, (*a1 + (v3 << 7)));
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21WebSWServerConnection9AddRoutesENS2_10ConnectionEN6WebKit21WebSWServerConnectionES9_FvNS_23ObjectIdentifierGenericIN7WebCore39ServiceWorkerRegistrationIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_6VectorINSB_18ServiceWorkerRouteELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvNSB_13ExceptionDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSS_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F85A0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21WebSWServerConnection9AddRoutesENS2_10ConnectionEN6WebKit21WebSWServerConnectionES9_FvNS_23ObjectIdentifierGenericIN7WebCore39ServiceWorkerRegistrationIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_6VectorINSB_18ServiceWorkerRouteELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvNSB_13ExceptionDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSS_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F85A0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21WebSWServerConnection9AddRoutesENS2_10ConnectionEN6WebKit21WebSWServerConnectionES9_FvNS_23ObjectIdentifierGenericIN7WebCore39ServiceWorkerRegistrationIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_6VectorINSB_18ServiceWorkerRouteELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvNSB_13ExceptionDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSS_EE4callESS_(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3948;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v12 = v5;
  LODWORD(v4) = *(a2 + 16);
  v6 = IPC::Encoder::grow(v5, 1uLL, 1);
  if (v4 == 1)
  {
    if (v7)
    {
      *v6 = 0;
      if (a2[2])
      {
        IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v5, *a2);
        IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v5, a2 + 1);
        goto LABEL_7;
      }
    }

    else
    {
      __break(0xC471u);
    }

    __break(1u);
LABEL_12:
    result = 1067;
    __break(0xC471u);
    return result;
  }

  if (!v7)
  {
    goto LABEL_12;
  }

  *v6 = 1;
LABEL_7:
  IPC::Connection::sendMessageImpl(v3, &v12, 0, 0);
  result = v12;
  v12 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v8);
    return bmalloc::api::tzoneFree(v10, v11);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21WebSWServerConnection16GetNotificationsENS2_10ConnectionEN6WebKit21WebSWServerConnectionES9_FvRKNS_3URLERKNS_6StringEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINS_6VectorIN7WebCore16NotificationDataELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEENSL_13ExceptionDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSS_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F85C8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21WebSWServerConnection16GetNotificationsENS2_10ConnectionEN6WebKit21WebSWServerConnectionES9_FvRKNS_3URLERKNS_6StringEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINS_6VectorIN7WebCore16NotificationDataELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEENSL_13ExceptionDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSS_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F85C8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21WebSWServerConnection16GetNotificationsENS2_10ConnectionEN6WebKit21WebSWServerConnectionES9_FvRKNS_3URLERKNS_6StringEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINS_6VectorIN7WebCore16NotificationDataELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEENSL_13ExceptionDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSS_EE4callESS_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3955;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::ExceptionData>,void>::encode<IPC::Encoder>(v5, a2);
  IPC::Connection::sendMessageImpl(v3, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v6);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

uint64_t *IPC::Decoder::decode<std::optional<WebCore::ServiceWorkerJobDataIdentifier>>(uint64_t a1, uint64_t *a2)
{
  result = IPC::ArgumentCoder<std::optional<WebCore::ServiceWorkerJobDataIdentifier>,void>::decode<IPC::Decoder>(a2, a1);
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

unint64_t IPC::Decoder::decode<std::tuple<std::optional<WebCore::ServiceWorkerJobDataIdentifier>,WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,BOOL>>(uint64_t a1, uint64_t *a2)
{
  IPC::Decoder::decode<std::optional<WebCore::ServiceWorkerJobDataIdentifier>>(&v16, a2);
  if (v18 == 1)
  {
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v5)
    {
      v6 = a2[1];
      v7 = a2[2];
      v8 = *a2;
      if (v6 > &v7[-*a2])
      {
        a2[2] = (v7 + 1);
        if (!v7)
        {
LABEL_11:
          *a2 = 0;
          a2[1] = 0;
          v11 = a2[3];
          if (v11)
          {
            if (v6)
            {
              (*(*v11 + 16))(v11);
              v8 = *a2;
              v6 = a2[1];
              goto LABEL_14;
            }
          }

          else
          {
            v6 = 0;
          }

          v8 = 0;
LABEL_14:
          *a2 = 0;
          a2[1] = 0;
          v12 = a2[3];
          if (v12 && v6)
          {
            (*(*v12 + 16))(v12, v8);
          }

          goto LABEL_15;
        }

        v9 = *v7;
        if (v9 >= 2)
        {
          goto LABEL_14;
        }

        if (v18)
        {
          *a1 = v16;
          *(a1 + 16) = v17;
          *(a1 + 24) = result;
          *(a1 + 32) = v9;
          *(a1 + 40) = 1;
          return result;
        }

        __break(1u);
      }

      *a2 = 0;
      a2[1] = 0;
      v10 = a2[3];
      if (v10)
      {
        if (v6)
        {
          (*(*v10 + 16))(v10);
          v6 = a2[1];
        }
      }

      else
      {
        v6 = 0;
      }

      goto LABEL_11;
    }
  }

LABEL_15:
  *a1 = 0;
  *(a1 + 40) = 0;
  v13 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  result = a2[3];
  if (result)
  {
    v14 = v13 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (!v14)
  {
    v15 = *(*result + 16);

    return v15();
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages30WebSWServerToContextConnection11SkipWaitingENS2_10ConnectionEN6WebKit30WebSWServerToContextConnectionES9_FvNS_23ObjectIdentifierGenericIN7WebCore27ServiceWorkerIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10F85F0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages30WebSWServerToContextConnection11SkipWaitingENS2_10ConnectionEN6WebKit30WebSWServerToContextConnectionES9_FvNS_23ObjectIdentifierGenericIN7WebCore27ServiceWorkerIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F85F0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages30WebSWServerToContextConnection11SkipWaitingENS2_10ConnectionEN6WebKit30WebSWServerToContextConnectionES9_FvNS_23ObjectIdentifierGenericIN7WebCore27ServiceWorkerIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3978;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = v3;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::Connection::sendMessageImpl(v2, &v9, 0, 0);
  result = v9;
  v9 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages30WebSWServerToContextConnection29FindClientByVisibleIdentifierENS2_10ConnectionEN6WebKit30WebSWServerToContextConnectionEN7WebCore27SWServerToContextConnectionEFvNS_23ObjectIdentifierGenericINSA_27ServiceWorkerIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEERKNS_6StringEONS_17CompletionHandlerIFvONSt3__18optionalINSA_23ServiceWorkerClientDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSP_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F8618;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages30WebSWServerToContextConnection29FindClientByVisibleIdentifierENS2_10ConnectionEN6WebKit30WebSWServerToContextConnectionEN7WebCore27SWServerToContextConnectionEFvNS_23ObjectIdentifierGenericINSA_27ServiceWorkerIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEERKNS_6StringEONS_17CompletionHandlerIFvONSt3__18optionalINSA_23ServiceWorkerClientDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSP_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F8618;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages30WebSWServerToContextConnection29FindClientByVisibleIdentifierENS2_10ConnectionEN6WebKit30WebSWServerToContextConnectionEN7WebCore27SWServerToContextConnectionEFvNS_23ObjectIdentifierGenericINSA_27ServiceWorkerIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEERKNS_6StringEONS_17CompletionHandlerIFvONSt3__18optionalINSA_23ServiceWorkerClientDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSP_EE4callESP_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3973;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::optional<WebCore::ServiceWorkerClientData>,void>::encode<IPC::Encoder,std::optional<WebCore::ServiceWorkerClientData>>(v5, a2);
  IPC::Connection::sendMessageImpl(v3, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v6);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages30WebSWServerToContextConnection8MatchAllENS2_10ConnectionEN6WebKit30WebSWServerToContextConnectionEN7WebCore27SWServerToContextConnectionEFvNS_23ObjectIdentifierGenericINSA_27ServiceWorkerIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEERKNSA_31ServiceWorkerClientQueryOptionsEONS_17CompletionHandlerIFvONS_6VectorINSA_23ServiceWorkerClientDataELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSQ_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F8640;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages30WebSWServerToContextConnection8MatchAllENS2_10ConnectionEN6WebKit30WebSWServerToContextConnectionEN7WebCore27SWServerToContextConnectionEFvNS_23ObjectIdentifierGenericINSA_27ServiceWorkerIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEERKNSA_31ServiceWorkerClientQueryOptionsEONS_17CompletionHandlerIFvONS_6VectorINSA_23ServiceWorkerClientDataELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSQ_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F8640;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages30WebSWServerToContextConnection8MatchAllENS2_10ConnectionEN6WebKit30WebSWServerToContextConnectionEN7WebCore27SWServerToContextConnectionEFvNS_23ObjectIdentifierGenericINSA_27ServiceWorkerIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEERKNSA_31ServiceWorkerClientQueryOptionsEONS_17CompletionHandlerIFvONS_6VectorINSA_23ServiceWorkerClientDataELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSQ_EE4callESQ_(uint64_t a1, unsigned int *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3975;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v13 = v5;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v5, a2[3]);
  v6 = a2[3];
  if (v6)
  {
    v7 = *a2;
    v8 = 192 * v6;
    do
    {
      IPC::ArgumentCoder<WebCore::ServiceWorkerClientData,void>::encode(v5, v7);
      v7 += 192;
      v8 -= 192;
    }

    while (v8);
  }

  IPC::Connection::sendMessageImpl(v3, &v13, 0, 0);
  result = v13;
  v13 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v9);
    return bmalloc::api::tzoneFree(v11, v12);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages30WebSWServerToContextConnection5ClaimENS2_10ConnectionEN6WebKit30WebSWServerToContextConnectionEN7WebCore27SWServerToContextConnectionEFvNS_23ObjectIdentifierGenericINSA_27ServiceWorkerIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_17CompletionHandlerIFvONSt3__18optionalINSA_13ExceptionDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSM_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F8668;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages30WebSWServerToContextConnection5ClaimENS2_10ConnectionEN6WebKit30WebSWServerToContextConnectionEN7WebCore27SWServerToContextConnectionEFvNS_23ObjectIdentifierGenericINSA_27ServiceWorkerIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_17CompletionHandlerIFvONSt3__18optionalINSA_13ExceptionDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSM_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F8668;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages30WebSWServerToContextConnection5ClaimENS2_10ConnectionEN6WebKit30WebSWServerToContextConnectionEN7WebCore27SWServerToContextConnectionEFvNS_23ObjectIdentifierGenericINSA_27ServiceWorkerIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_17CompletionHandlerIFvONSt3__18optionalINSA_13ExceptionDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSM_EE4callESM_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3972;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::optional<WebCore::Exception>,void>::encode<IPC::Encoder,std::optional<WebCore::Exception>>(v5, a2);
  IPC::Connection::sendMessageImpl(v3, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v6);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages30WebSWServerToContextConnection5FocusENS2_10ConnectionEN6WebKit30WebSWServerToContextConnectionES9_FvN7WebCore16ProcessQualifiedINS_4UUIDEEEONS_17CompletionHandlerIFvONSt3__18optionalINSA_23ServiceWorkerClientDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSJ_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F8690;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages30WebSWServerToContextConnection5FocusENS2_10ConnectionEN6WebKit30WebSWServerToContextConnectionES9_FvN7WebCore16ProcessQualifiedINS_4UUIDEEEONS_17CompletionHandlerIFvONSt3__18optionalINSA_23ServiceWorkerClientDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSJ_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F8690;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages30WebSWServerToContextConnection5FocusENS2_10ConnectionEN6WebKit30WebSWServerToContextConnectionES9_FvN7WebCore16ProcessQualifiedINS_4UUIDEEEONS_17CompletionHandlerIFvONSt3__18optionalINSA_23ServiceWorkerClientDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSJ_EE4callESJ_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3974;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::optional<WebCore::ServiceWorkerClientData>,void>::encode<IPC::Encoder,std::optional<WebCore::ServiceWorkerClientData>>(v5, a2);
  IPC::Connection::sendMessageImpl(v3, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v6);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages30WebSWServerToContextConnection8NavigateENS2_10ConnectionEN6WebKit30WebSWServerToContextConnectionES9_FvN7WebCore16ProcessQualifiedINS_4UUIDEEENS_23ObjectIdentifierGenericINSA_27ServiceWorkerIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEERKNS_3URLEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINSt3__18optionalINSA_23ServiceWorkerClientDataEEENSA_13ExceptionDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSW_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F86B8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages30WebSWServerToContextConnection8NavigateENS2_10ConnectionEN6WebKit30WebSWServerToContextConnectionES9_FvN7WebCore16ProcessQualifiedINS_4UUIDEEENS_23ObjectIdentifierGenericINSA_27ServiceWorkerIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEERKNS_3URLEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINSt3__18optionalINSA_23ServiceWorkerClientDataEEENSA_13ExceptionDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSW_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F86B8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages30WebSWServerToContextConnection8NavigateENS2_10ConnectionEN6WebKit30WebSWServerToContextConnectionES9_FvN7WebCore16ProcessQualifiedINS_4UUIDEEENS_23ObjectIdentifierGenericINSA_27ServiceWorkerIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEERKNS_3URLEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINSt3__18optionalINSA_23ServiceWorkerClientDataEEENSA_13ExceptionDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSW_EE4callESW_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3976;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<std::optional<WebCore::ServiceWorkerClientData>,WebCore::ExceptionData>,void>::encode<IPC::Encoder>(v5, a2);
  IPC::Connection::sendMessageImpl(v3, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v6);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

char *IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<std::optional<WebCore::ServiceWorkerClientData>,WebCore::ExceptionData>,void>::encode<IPC::Encoder>(IPC::Encoder *a1, uint64_t a2)
{
  v4 = *(a2 + 208);
  v5 = IPC::Encoder::grow(a1, 1uLL, 1);
  if (v4)
  {
    if (v6)
    {
      *v5 = 0;
      if (*(a2 + 208) == 1)
      {
        IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *a2);

        return IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 8));
      }

LABEL_12:
      mpark::throw_bad_variant_access(v5);
    }

LABEL_13:
    __break(0xC471u);
    JUMPOUT(0x19DAF3B8CLL);
  }

  if (!v6)
  {
    goto LABEL_13;
  }

  *v5 = 1;
  if (*(a2 + 208))
  {
    goto LABEL_12;
  }

  return IPC::ArgumentCoder<std::optional<WebCore::ServiceWorkerClientData>,void>::encode<IPC::Encoder,std::optional<WebCore::ServiceWorkerClientData>>(a1, a2);
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages30WebSWServerToContextConnection10OpenWindowENS2_10ConnectionEN6WebKit30WebSWServerToContextConnectionES9_FvNS_23ObjectIdentifierGenericIN7WebCore27ServiceWorkerIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEERKNS_3URLEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINSt3__18optionalINSB_23ServiceWorkerClientDataEEENSB_13ExceptionDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJST_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F86E0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages30WebSWServerToContextConnection10OpenWindowENS2_10ConnectionEN6WebKit30WebSWServerToContextConnectionES9_FvNS_23ObjectIdentifierGenericIN7WebCore27ServiceWorkerIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEERKNS_3URLEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINSt3__18optionalINSB_23ServiceWorkerClientDataEEENSB_13ExceptionDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJST_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F86E0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages30WebSWServerToContextConnection10OpenWindowENS2_10ConnectionEN6WebKit30WebSWServerToContextConnectionES9_FvNS_23ObjectIdentifierGenericIN7WebCore27ServiceWorkerIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEERKNS_3URLEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINSt3__18optionalINSB_23ServiceWorkerClientDataEEENSB_13ExceptionDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJST_EE4callEST_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3977;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<std::optional<WebCore::ServiceWorkerClientData>,WebCore::ExceptionData>,void>::encode<IPC::Encoder>(v5, a2);
  IPC::Connection::sendMessageImpl(v3, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v6);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

void IPC::ArgumentCoder<std::tuple<WebCore::ResourceRequest>,void>::decode<IPC::Decoder>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  IPC::ArgumentCoder<WebCore::ResourceRequest,void>::decode(a1, v9);
  if (v10 & 1) != 0 || ((v5 = *a1, v6 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (v7 = *(a1 + 3)) != 0) ? (v8 = v6 == 0) : (v8 = 1), !v8 && ((*(*v7 + 16))(v7, v5), (v10)))
  {
    std::__tuple_leaf<0ul,WebCore::ResourceRequest,false>::__tuple_leaf[abi:sn200100]<WebCore::ResourceRequest,0>(a2, v9);
    v4 = v10;
    a2[200] = 1;
    if (v4)
    {
      WebCore::ResourceRequest::~ResourceRequest(v9);
    }
  }

  else
  {
    *a2 = 0;
    a2[200] = 0;
  }
}

void sub_19DAF3EB0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DAF4140(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    CFRelease(*(a10 + 8));
  }

  _Unwind_Resume(exception_object);
}

void sub_19DAF48A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (v11)
  {
  }

  if (v10)
  {
  }

  _Unwind_Resume(a1);
}

void sub_19DAF48BC(int a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, IPC::Encoder *a14)
{
  if (a13 == 1 && a11)
  {
    (*(*a11 + 8))(a11);
  }

  if (a14)
  {
    IPC::Encoder::~Encoder(a14, a2);
    bmalloc::api::tzoneFree(v14, v15);
  }

  JUMPOUT(0x19DAF4920);
}

void sub_19DAF4B34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
{
  if (v13)
  {
  }

  if (v12)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DAF4F04(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DAF5284(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, WTF::StringImpl *a19, uint64_t a20, uint64_t a21, WTF::StringImpl **a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, WTF::StringImpl **a31)
{
  if (a19 && atomic_fetch_add_explicit(a19, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a19, a2);
  }

  if (a22)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(a22, a2);
  }

  if (a31)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(a31, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DAF5AB8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, WTF::StringImpl *a10, uint64_t a11, void *a12)
{
  if (a12)
  {
  }

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

void sub_19DAF5C84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, WTF::StringImpl *a16, WTF::StringImpl *a17)
{
  _Block_release(v17);
  if (a16 && atomic_fetch_add_explicit(a16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a16, v20);
  }

  if (a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, v20);
  }

  v21 = *(v18 - 40);
  *(v18 - 40) = 0;
  if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v21, v20);
  }

  if (a17)
  {
    if (atomic_fetch_add_explicit(a17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a17, v20);
    }
  }

  _Unwind_Resume(a1);
}

uint64_t WebKit::WebProcessPool::supplement<WebKit::WebNotificationManagerProxy>(uint64_t a1)
{
  if ("WebNotificationManagerProxy" == -1)
  {
    result = 372;
    __break(0xC471u);
  }

  else
  {
    v22 = v1;
    v23 = v2;
    v3 = *(a1 + 456);
    if (v3 && (v4 = *(v3 - 8), v19 = -1640531527, v20 = 0, v21 = 0, WTF::SuperFastHash::addCharacters<char,WTF::StringHasher::DefaultConverter>(&v19, "WebNotificationManagerProxy", 0x1Bu), v5 = WTF::SuperFastHash::hash(&v19) & v4, v6 = (v3 + 24 * v5), (v7 = v6[1]) != 0))
    {
      v8 = 1;
      while (1)
      {
        if (v7 == 28)
        {
          v9 = *v6;
          if (*v6 != -1)
          {
            v10 = *v9;
            v11 = v9[1];
            v12 = v9[2];
            v13 = *(v9 + 6);
            v14 = v10 == *"WebNotificationManagerProxy" && v11 == *"icationManagerProxy";
            v15 = v14 && v12 == *"anagerProxy";
            if (v15 && v13 == *"oxy")
            {
              break;
            }
          }
        }

        v5 = (v5 + v8) & v4;
        v6 = (v3 + 24 * v5);
        v7 = v6[1];
        ++v8;
        if (!v7)
        {
          goto LABEL_18;
        }
      }

      v17 = v6[2];
    }

    else
    {
LABEL_18:
      v17 = 0;
    }

    if (v17)
    {
      return (v17 - 2);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_19DAF60D0(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v10 = v9;
  if (v10)
  {
  }

  WTF::Vector<WTF::Ref<WebKit::NetworkProcessProxy,WTF::RawPtrTraits<WebKit::NetworkProcessProxy>,WTF::DefaultRefDerefTraits<WebKit::NetworkProcessProxy>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va, a2);
  if (v8)
  {
  }

  _Unwind_Resume(a1);
}

void sub_19DAF6204(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  if (v9)
  {
  }

  WTF::Vector<WTF::Ref<WebKit::WebProcessPool,WTF::RawPtrTraits<WebKit::WebProcessPool>,WTF::DefaultRefDerefTraits<WebKit::WebProcessPool>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va, a2);
  if (v8)
  {
  }

  _Unwind_Resume(a1);
}

void sub_19DAF6454(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  WTF::Vector<WTF::Ref<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va, v5);
  _Unwind_Resume(a1);
}

void sub_19DAF6A1C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DAF6B10(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DAF6C00(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a9)
  {
    WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(a9, a2);
  }

  if (a10)
  {
    WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(a10, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DAF6CDC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  v12 = *(v10 - 32);
  *(v10 - 32) = 0;
  if (v12)
  {
    WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v12, a2);
  }

  v13 = *(v10 - 24);
  *(v10 - 24) = 0;
  if (v13)
  {
    WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v13, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DAF7090(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v11)
  {

    if (!v10)
    {
LABEL_4:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v10)
  {
    goto LABEL_4;
  }

  goto LABEL_4;
}

uint64_t getExceptionTypeFromMainRunLoop(uint64_t *a1)
{
  v5 = 0;
  v1 = *a1;
  *a1 = 0;
  v2 = WTF::fastMalloc(0x18);
  *v2 = &unk_1F10F8728;
  v2[1] = v1;
  v2[2] = &v5;
  v4 = v2;
  WTF::callOnMainRunLoopAndWait();
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return v5;
}

void sub_19DAF71D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    (*(*a9 + 8))(a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t raiseExceptionIfNecessary(uint64_t result)
{
  if (result <= 5)
  {
    return [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:off_1E7631478[result]];
  }

  return result;
}

void sub_19DAF7328(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DAF743C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DAF7544(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DAF764C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DAF7784(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v11)
  {

    if (!v10)
    {
LABEL_4:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v10)
  {
    goto LABEL_4;
  }

  goto LABEL_4;
}

void sub_19DAF7A0C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
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

void sub_19DAF7B24(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DAF7C98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (v10)
  {
    if (v10[2] == 1)
    {
      (*(*v10 + 8))(v10);
    }

    else
    {
      --v10[2];
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_19DAF7E54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (v10)
  {
    if (v10[2] == 1)
    {
      (*(*v10 + 8))(v10);
    }

    else
    {
      --v10[2];
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_19DAF8170(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
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

void sub_19DAF8204(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
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

void sub_19DAF82D0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
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

void sub_19DAF8364(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
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

void sub_19DAF83F0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
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

void sub_19DAF860C(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<ScriptMessageHandlerDelegate>::reset[abi:sn200100](va, a2);
  _Unwind_Resume(a1);
}

void sub_19DAF8768(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
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

void sub_19DAF8940(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, WTF::StringImpl *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, WTF::StringImpl *a19, char a20)
{
  WebCore::UserScript::~UserScript(&a20, a2);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a10, v21);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a12, v22);
  v24 = a14;
  a14 = 0;
  if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v24, v23);
  }

  v25 = a19;
  a19 = 0;
  if (v25)
  {
    if (atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v25, v23);
    }
  }

  _Unwind_Resume(a1);
}

void API::Object::constructInWrapper<API::UserScript,WebCore::UserScript,API::ContentWorld &>(API::Object *a1, uint64_t *a2, uint64_t a3)
{
  v6 = API::Object::apiObjectsUnderConstruction(a1);
  v11 = a1;
  v12 = [(API::Object *)a1 _apiObject];
  WTF::HashMap<API::Object *,void const*,WTF::DefaultHash<API::Object *>,WTF::HashTraits<API::Object *>,WTF::HashTraits<void const*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<void const*>(v6, &v12, &v11, v10);
  v7 = [(API::Object *)a1 _apiObject];
  WebCore::UserScript::UserScript(v9, a2);
  API::UserScript::UserScript(v7, v9, a3);
  WebCore::UserScript::~UserScript(v9, v8);
}

void sub_19DAF8B50(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DAF8EA4(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, WTF::StringImpl *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, WTF::StringImpl *a19, char a20)
{
  WebCore::UserScript::~UserScript(&a20, a2);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a10, v21);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a12, v22);
  v24 = a14;
  a14 = 0;
  if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v24, v23);
  }

  v25 = a19;
  a19 = 0;
  if (v25)
  {
    if (atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v25, v23);
    }
  }

  _Unwind_Resume(a1);
}

void *WTF::Detail::CallableWrapper<getExceptionTypeFromMainRunLoop(WTF::Function<WebKit::WebURLSchemeTask::ExceptionType ()(void)> &&)::$_0,void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F10F8728;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<getExceptionTypeFromMainRunLoop(WTF::Function<WebKit::WebURLSchemeTask::ExceptionType ()(void)> &&)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10F8728;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<getExceptionTypeFromMainRunLoop(WTF::Function<WebKit::WebURLSchemeTask::ExceptionType ()(void)> &&)::$_0,void>::call(uint64_t a1)
{
  result = (*(**(a1 + 8) + 16))(*(a1 + 8));
  **(a1 + 16) = result;
  return result;
}

uint64_t ScriptMessageHandlerDelegate::operator new(ScriptMessageHandlerDelegate *this, void *a2)
{
  if (ScriptMessageHandlerDelegate::operator new(unsigned long)::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(ScriptMessageHandlerDelegate::operator new(unsigned long)::s_heapRef, a2);
  }

  else
  {
    return bmalloc::api::tzoneAllocateNonCompactSlow();
  }
}

uint64_t ScriptMessageHandlerDelegate::ScriptMessageHandlerDelegate(uint64_t a1, void *a2, void *a3, void *a4)
{
  *a1 = &unk_1F10F8750;
  *(a1 + 8) = a2;
  if (a2)
  {
    v7 = a2;
  }

  *(a1 + 16) = a3;
  if (a3)
  {
    v8 = a3;
  }

  *(a1 + 24) = [a4 copy];
  *(a1 + 32) = 0;
  return a1;
}

void sub_19DAF915C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  *(v1 + 8) = 0;
  if (v3)
  {
  }

  _Unwind_Resume(exception_object);
}

void ScriptMessageHandlerDelegate::~ScriptMessageHandlerDelegate(ScriptMessageHandlerDelegate *this)
{
  v2 = *(this + 3);
  *(this + 3) = 0;
  if (v2)
  {
  }

  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
  }
}

void ScriptMessageHandlerDelegate::~ScriptMessageHandlerDelegate(ScriptMessageHandlerDelegate *this, void *a2)
{
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
  }

  v5 = *(this + 1);
  *(this + 1) = 0;
  if (v5)
  {
  }

  bmalloc::api::tzoneFree(this, a2);
}

void ScriptMessageHandlerDelegate::didPostMessage(uint64_t a1, CFTypeRef *a2, uint64_t a3, uint64_t a4, WebKit::JavaScriptEvaluationResult *a5)
{
  v10 = objc_autoreleasePoolPush();
  WebKit::WebPageProxy::cocoaView(a2, &v25);
  v11 = v25;
  if (!v25)
  {
    goto LABEL_17;
  }

  CFRetain(a2[1]);
  v24 = a2;
  v12 = API::Object::newObject(0x180uLL, 59);
  v13 = *(API::FrameInfo::FrameInfo(v12, a3, &v24) + 8);
  if (v13)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_18;
    }

    v14 = v13;
    v15 = *(v12 + 8);
  }

  else
  {
    v15 = 0;
  }

  CFRelease(v15);
  if (v24)
  {
    CFRelease(v24[1]);
  }

  v16 = [WKScriptMessage alloc];
  WebKit::JavaScriptEvaluationResult::toID(a5, v17, &v24, v18);
  v19 = v24;
  v20 = *(a1 + 24);
  v21 = *(a4 + 8);
  if (v21)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_18:
      __break(0xC471u);
      JUMPOUT(0x19DAF93E0);
    }
  }

  v22 = [(WKScriptMessage *)v16 _initWithBody:v19 webView:v11 frameInfo:v13 name:v20 world:v21, v24];
  v23 = v24;
  v24 = 0;
  if (v23)
  {
  }

  [*(a1 + 16) userContentController:*(a1 + 8) didReceiveScriptMessage:{v22, v24}];
  if (v22)
  {
  }

  if (v13)
  {
  }

LABEL_17:
  objc_autoreleasePoolPop(v10);
}

void sub_19DAF9404(_Unwind_Exception *a1)
{
  if (v3)
  {
  }

  if (v2)
  {
  }

  _Unwind_Resume(a1);
}

void ScriptMessageHandlerDelegate::didPostMessageWithAsyncReply(void *a1, CFTypeRef *this, uint64_t a3, uint64_t a4, WebKit::JavaScriptEvaluationResult *a5, uint64_t *a6)
{
  WebKit::WebPageProxy::cocoaView(this, &v35);
  v12 = v35;
  if (!v35)
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v32[0] = v36;
    v34 = 1;
    (*(**a6 + 16))(*a6, v32);
    std::experimental::fundamentals_v3::expected<WebKit::JavaScriptEvaluationResult,WTF::String>::~expected(v32, v20);
    return;
  }

  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x4012000000;
  v32[3] = __Block_byref_object_copy__4;
  v32[4] = __Block_byref_object_dispose__4;
  v32[5] = &unk_19EA2799F;
  v13 = WTF::fastMalloc(0x10);
  *v13 = &unk_1F10F8788;
  v14 = *a6;
  *a6 = 0;
  v33[0] = v14;
  v33[1] = v13;
  v15 = objc_autoreleasePoolPush();
  CFRetain(this[1]);
  v36 = this;
  v16 = API::Object::newObject(0x180uLL, 59);
  v17 = *(API::FrameInfo::FrameInfo(v16, a3, &v36) + 8);
  if (v17)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_18;
    }

    v18 = v17;
    v19 = *(v16 + 8);
  }

  else
  {
    v19 = 0;
  }

  CFRelease(v19);
  if (v36)
  {
    CFRelease(v36[1]);
  }

  v21 = [WKScriptMessage alloc];
  WebKit::JavaScriptEvaluationResult::toID(a5, v22, &v36, v23);
  v24 = v36;
  v25 = a1[3];
  v26 = *(a4 + 8);
  if (v26)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_18:
      __break(0xC471u);
      JUMPOUT(0x19DAF9750);
    }
  }

  v27 = [(WKScriptMessage *)v21 _initWithBody:v24 webView:v12 frameInfo:v17 name:v25 world:v26];
  v28 = v36;
  v36 = 0;
  if (v28)
  {
  }

  v30 = a1[1];
  v29 = a1[2];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = ___ZN28ScriptMessageHandlerDelegate28didPostMessageWithAsyncReplyERN6WebKit12WebPageProxyEONS0_13FrameInfoDataERN3API12ContentWorldEONS0_26JavaScriptEvaluationResultEON3WTF8FunctionIFvONSt12experimental15fundamentals_v38expectedIS8_NSA_6StringEEEEEE_block_invoke;
  v31[3] = &unk_1E7631458;
  v31[4] = v32;
  [v29 userContentController:v30 didReceiveScriptMessage:v27 replyHandler:v31];
  if (v27)
  {
  }

  if (v17)
  {
  }

  objc_autoreleasePoolPop(v15);
  _Block_object_dispose(v32, 8);
  WTF::CompletionHandlerWithFinalizer<void ()(std::experimental::fundamentals_v3::expected<WebKit::JavaScriptEvaluationResult,WTF::String> &&)>::~CompletionHandlerWithFinalizer(v33);
}

void sub_19DAF9774(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::experimental::fundamentals_v3::expected<WebKit::JavaScriptEvaluationResult,WTF::String>::~expected(va, a2);
  _Unwind_Resume(a1);
}

WebKit::JavaScriptEvaluationResult *std::experimental::fundamentals_v3::expected<WebKit::JavaScriptEvaluationResult,WTF::String>::~expected(WTF::StringImpl **this, WTF::StringImpl *a2)
{
  if (*(this + 128) != 255)
  {
    if (*(this + 128))
    {
      v3 = *this;
      *this = 0;
      if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v3, a2);
      }
    }

    else
    {
      WebKit::JavaScriptEvaluationResult::~JavaScriptEvaluationResult(this, a2);
    }
  }

  *(this + 128) = -1;
  return this;
}

__n128 __Block_byref_object_copy__4(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a1[3] = result;
  return result;
}

void ___ZN28ScriptMessageHandlerDelegate28didPostMessageWithAsyncReplyERN6WebKit12WebPageProxyEONS0_13FrameInfoDataERN3API12ContentWorldEONS0_26JavaScriptEvaluationResultEON3WTF8FunctionIFvONSt12experimental15fundamentals_v38expectedIS8_NSA_6StringEEEEEE_block_invoke(uint64_t a1, objc_object *this, uint64_t a3)
{
  if (*(*(*(a1 + 32) + 8) + 48))
  {
    if (a3)
    {
LABEL_3:
      v6 = *(*(a1 + 32) + 8);
      MEMORY[0x19EB02040](v13, a3);
      v14 = 1;
      WTF::CompletionHandlerWithFinalizer<void ()(std::experimental::fundamentals_v3::expected<WebKit::JavaScriptEvaluationResult,WTF::String> &&)>::operator()((v6 + 48));
      std::experimental::fundamentals_v3::expected<WebKit::JavaScriptEvaluationResult,WTF::String>::~expected(v13, v7);
      return;
    }
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"replyHandler passed to userContentController:didReceiveScriptMessage:replyHandler: should not be called twice"];
    if (a3)
    {
      goto LABEL_3;
    }
  }

  WebKit::JavaScriptEvaluationResult::extract(this, this, v13);
  v8 = *(*(a1 + 32) + 8);
  if (v14)
  {
    WebKit::JavaScriptEvaluationResult::JavaScriptEvaluationResult(v11, v13);
    v12 = 0;
    WTF::CompletionHandlerWithFinalizer<void ()(std::experimental::fundamentals_v3::expected<WebKit::JavaScriptEvaluationResult,WTF::String> &&)>::operator()((v8 + 48));
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v11[0] = v15;
    v12 = 1;
    WTF::CompletionHandlerWithFinalizer<void ()(std::experimental::fundamentals_v3::expected<WebKit::JavaScriptEvaluationResult,WTF::String> &&)>::operator()((v8 + 48));
  }

  std::experimental::fundamentals_v3::expected<WebKit::JavaScriptEvaluationResult,WTF::String>::~expected(v11, v9);
  if (v14 == 1)
  {
    WebKit::JavaScriptEvaluationResult::~JavaScriptEvaluationResult(v13, v10);
  }
}

void sub_19DAF99C4(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, WTF::StringImpl *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  std::experimental::fundamentals_v3::expected<WebKit::JavaScriptEvaluationResult,WTF::String>::~expected(&a10, a2);
  if (a43 == 1)
  {
    WebKit::JavaScriptEvaluationResult::~JavaScriptEvaluationResult(&a27, v44);
  }

  _Unwind_Resume(a1);
}

uint64_t WTF::CompletionHandlerWithFinalizer<void ()(std::experimental::fundamentals_v3::expected<WebKit::JavaScriptEvaluationResult,WTF::String> &&)>::operator()(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

uint64_t *WTF::CompletionHandlerWithFinalizer<void ()(std::experimental::fundamentals_v3::expected<WebKit::JavaScriptEvaluationResult,WTF::String> &&)>::~CompletionHandlerWithFinalizer(uint64_t *a1)
{
  if (*a1)
  {
    (*(*a1[1] + 16))(a1[1], a1);
  }

  v2 = a1[1];
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void sub_19DAF9B74(_Unwind_Exception *exception_object)
{
  v3 = v1[1];
  v1[1] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *v1;
  *v1 = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  _Unwind_Resume(exception_object);
}

WebKit::JavaScriptEvaluationResult *_ZN3WTF6Detail15CallableWrapperIZN28ScriptMessageHandlerDelegate28didPostMessageWithAsyncReplyERN6WebKit12WebPageProxyEONS3_13FrameInfoDataERN3API12ContentWorldEONS3_26JavaScriptEvaluationResultEONS_8FunctionIFvONSt12experimental15fundamentals_v38expectedISB_NS_6StringEEEEEEEUlRT_E_vJRSL_EE4callESQ_(uint64_t a1, void *a2)
{
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v6 = 1;
  (*(**a2 + 16))(*a2, v5);
  return std::experimental::fundamentals_v3::expected<WebKit::JavaScriptEvaluationResult,WTF::String>::~expected(v5, v3);
}

void sub_19DAF9C60(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::experimental::fundamentals_v3::expected<WebKit::JavaScriptEvaluationResult,WTF::String>::~expected(va, a2);
  _Unwind_Resume(a1);
}

bmalloc::api **std::unique_ptr<ScriptMessageHandlerDelegate>::reset[abi:sn200100](bmalloc::api **result, void *a2)
{
  v2 = *result;
  *result = 0;
  if (v2)
  {
    v3 = *(v2 + 3);
    *(v2 + 3) = 0;
    if (v3)
    {
    }

    v4 = *(v2 + 2);
    *(v2 + 2) = 0;
    if (v4)
    {
    }

    v5 = *(v2 + 1);
    *(v2 + 1) = 0;
    if (v5)
    {
    }

    return bmalloc::api::tzoneFree(v2, a2);
  }

  return result;
}

void sub_19DAF9E94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DAFA158(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Block_release(0);
  WebCore::ResourceRequest::~ResourceRequest(&a11);
  v69 = a67;
  a67 = 0;
  if (v69)
  {
  }

  WebCore::ResourceResponseBase::~ResourceResponseBase(&a36, v68);
  _Unwind_Resume(a1);
}

unsigned int *WebCore::SharedBuffer::create<NSData *>@<X0>(WebCore::FragmentedSharedBuffer **a1@<X0>, NSData *a2@<X1>, uint64_t *a3@<X8>)
{
  WebCore::FragmentedSharedBuffer::create(&v6, *a1, a2);
  v4 = WTF::fastMalloc(0x40);
  MEMORY[0x19EB04740](v4, &v6);
  *a3 = v4;
  result = v6;
  v6 = 0;
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

void sub_19DAFA5F8(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, unsigned int *a10)
{
  WTF::fastFree(v10, a2);
  if (a10)
  {
    if (atomic_fetch_add(a10 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, a10 + 2);
      (*(*a10 + 8))(a10);
    }
  }

  _Unwind_Resume(a1);
}

void sub_19DAFA7D0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, WTF::StringImpl *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, WTF::StringImpl *a15, uint64_t a16, void *a17)
{
  if (a17)
  {
  }

  if (a15 && atomic_fetch_add_explicit(a15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a15, a2);
  }

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

uint64_t WebCore::ResourceErrorBase::ResourceErrorBase(uint64_t a1, char a2)
{
  *a1 = 0;
  WTF::URL::URL((a1 + 8));
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 60) = a2;
  *(a1 + 61) = 0;
  return a1;
}

void sub_19DAFA890(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *v2;
  *v2 = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_19DAFAA50(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, WTF::StringImpl *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, WTF::StringImpl *a15, uint64_t a16, void *a17)
{
  if (a17)
  {
  }

  if (a15 && atomic_fetch_add_explicit(a15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a15, a2);
  }

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

void sub_19DAFAC4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  WebCore::ResourceRequest::~ResourceRequest(&a9);
  v67 = a65;
  a65 = 0;
  if (v67)
  {
  }

  WebCore::ResourceResponseBase::~ResourceResponseBase(&a34, v66);
  _Unwind_Resume(a1);
}

WTF::StringImpl *WebKit::WebSpeechRecognitionConnection::didReceiveMessage(WebKit::WebSpeechRecognitionConnection *this, IPC::Connection *a2, IPC::Decoder *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  ++*(this + 2);
  v5 = *(a3 + 25);
  if (v5 == 3173)
  {
    IPC::ArgumentCoder<WebCore::SpeechRecognitionUpdate,void>::decode(a3, buf);
    if ((v26 & 1) == 0)
    {
      v8 = *a3;
      v9 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      result = *(a3 + 3);
      if (!result || !v9)
      {
        *a3 = 0;
        *(a3 + 1) = 0;
        goto LABEL_23;
      }

      (*(*result + 16))(result, v8);
      if ((v26 & 1) == 0)
      {
        result = *(a3 + 3);
        v8 = *a3;
        v9 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        if (!result)
        {
          goto LABEL_23;
        }

        goto LABEL_8;
      }
    }

    v15 = *buf;
    v16 = buf[8];
    LOBYTE(v17) = 0;
    v19 = -1;
    if (v25 > 1u)
    {
      if (v25 == 2)
      {
        v17 = *&v23[2];
        v11 = v24;
        *&v23[2] = 0;
        v24 = 0;
        v18 = v11;
        v19 = 2;
        v20 = 1;
        WTF::Vector<WebCore::SpeechRecognitionResultData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v23[2], v6);
        goto LABEL_15;
      }
    }

    else if (v25)
    {
      LOBYTE(v17) = v23[2];
      v18 = v24;
      v19 = 1;
    }

    else
    {
      v19 = 0;
    }

    v20 = 1;
LABEL_15:
    result = (*(*this + 56))(this, &v15);
    if (v20)
    {
      if (v19 > 1u)
      {
        if (v19 == 2)
        {
          result = WTF::Vector<WebCore::SpeechRecognitionResultData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v17, v8);
        }
      }

      else if (v19)
      {
        result = v18;
        v18 = 0;
        if (result)
        {
          if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            result = WTF::StringImpl::destroy(result, v8);
          }
        }
      }
    }

    goto LABEL_23;
  }

  v7 = qword_1ED6416C8;
  if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
  {
    if (v5 >= 0x107F)
    {
      v12 = 4223;
    }

    else
    {
      v12 = v5;
    }

    v13 = (&IPC::Detail::messageDescriptions)[3 * v12];
    v14 = *(a3 + 7);
    *buf = 136315394;
    *&buf[4] = v13;
    v22 = 2048;
    *v23 = v14;
    _os_log_error_impl(&dword_19D52D000, v7, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", buf, 0x16u);
  }

  v8 = *a3;
  v9 = *(a3 + 1);
  *a3 = 0;
  *(a3 + 1) = 0;
  result = *(a3 + 3);
  if (result)
  {
LABEL_8:
    if (v9)
    {
      result = (*(*result + 16))(result, v8);
    }
  }

LABEL_23:
  if (*(this + 2) == 1)
  {
    return (*(*this + 8))(this, v8, v9);
  }

  --*(this + 2);
  return result;
}

void WebKit::WebUserContentController::didReceiveMessage(WebKit::WebUserContentController *this, IPC::Connection *a2, IPC::Decoder *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  ++*(this + 2);
  v5 = *(a3 + 25);
  switch(*(a3 + 25))
  {
    case 0xC6B:
      IPC::handleMessage<Messages::WebUserContentController::AddContentRuleLists,IPC::Connection,WebKit::WebUserContentController,WebKit::WebUserContentController,void ()(WTF::Vector<std::pair<WebKit::WebCompiledContentRuleListData,WTF::URL>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>(a3, this);
      break;
    case 0xC6C:
      IPC::handleMessage<Messages::WebUserContentController::AddContentWorlds,IPC::Connection,WebKit::WebUserContentController,WebKit::WebUserContentController,void ()(WTF::Vector<WebKit::ContentWorldData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)>(a3, this);
      break;
    case 0xC6D:
      IPC::handleMessage<Messages::WebUserContentController::AddUserScriptMessageHandlers,IPC::Connection,WebKit::WebUserContentController,WebKit::WebUserContentController,void ()(WTF::Vector<WebKit::WebScriptMessageHandlerData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)>(a3, this);
      break;
    case 0xC6E:
      IPC::handleMessage<Messages::WebUserContentController::AddUserScripts,IPC::Connection,WebKit::WebUserContentController,WebKit::WebUserContentController,void ()(WTF::Vector<WebKit::WebUserScriptData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WebKit::InjectUserScriptImmediately)>(a3, this);
      break;
    case 0xC6F:
      IPC::handleMessage<Messages::WebUserContentController::AddUserStyleSheets,IPC::Connection,WebKit::WebUserContentController,WebKit::WebUserContentController,void ()(WTF::Vector<WebKit::WebUserStyleSheetData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)>(a3, this);
      break;
    case 0xC70:
      WebKit::WebUserContentController::removeAllContentRuleLists(this);
      break;
    case 0xC71:
      WebKit::WebUserContentController::removeAllUserScriptMessageHandlers(this, a2);
      break;
    case 0xC72:
      IPC::handleMessage<Messages::WebUserContentController::RemoveAllUserScriptMessageHandlersForWorlds,IPC::Connection,WebKit::WebUserContentController,WebKit::WebUserContentController,void ()(WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)>(a3, this);
      break;
    case 0xC73:
      IPC::handleMessage<Messages::WebUserContentController::RemoveAllUserScripts,IPC::Connection,WebKit::WebUserContentController,WebKit::WebUserContentController,void ()(WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)>(a3, this);
      break;
    case 0xC74:
      IPC::handleMessage<Messages::WebUserContentController::RemoveAllUserStyleSheets,IPC::Connection,WebKit::WebUserContentController,WebKit::WebUserContentController,void ()(WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)>(a3, this);
      break;
    case 0xC75:
      IPC::handleMessage<Messages::WebUserContentController::RemoveContentRuleList,IPC::Connection,WebKit::WebUserContentController,WebKit::WebUserContentController,void ()(WTF::String const&)>(a3, this);
      break;
    case 0xC76:
      IPC::handleMessage<Messages::WebUserContentController::RemoveContentWorlds,IPC::Connection,WebKit::WebUserContentController,WebKit::WebUserContentController,void ()(WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)>(a3, this);
      break;
    case 0xC77:
      IPC::handleMessage<Messages::WebUserContentController::RemoveUserScript,IPC::Connection,WebKit::WebUserContentController,WebKit::WebUserContentController,void ()(WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::UserScriptIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>)>(a3, this);
      break;
    case 0xC78:
      IPC::handleMessage<Messages::WebUserContentController::RemoveUserScriptMessageHandler,IPC::Connection,WebKit::WebUserContentController,WebKit::WebUserContentController,void ()(WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>)>(a3, this);
      break;
    case 0xC79:
      IPC::handleMessage<Messages::WebUserContentController::RemoveUserStyleSheet,IPC::Connection,WebKit::WebUserContentController,WebKit::WebUserContentController,void ()(WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::UserStyleSheetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>)>(a3, this);
      break;
    default:
      v6 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        if (v5 >= 0x107F)
        {
          v7 = 4223;
        }

        else
        {
          v7 = v5;
        }

        v8 = (&IPC::Detail::messageDescriptions)[3 * v7];
        v9 = *(a3 + 7);
        v10 = 136315394;
        v11 = v8;
        v12 = 2048;
        v13 = v9;
        _os_log_error_impl(&dword_19D52D000, v6, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", &v10, 0x16u);
      }

      IPC::Decoder::markInvalid(a3);
      break;
  }

  if (*(this + 2) == 1)
  {
    (*(*this + 8))(this);
  }

  else
  {
    --*(this + 2);
  }
}

void IPC::handleMessage<Messages::WebUserContentController::AddContentWorlds,IPC::Connection,WebKit::WebUserContentController,WebKit::WebUserContentController,void ()(WTF::Vector<WebKit::ContentWorldData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)>(IPC::Decoder *a1, WTF::StringImpl *a2)
{
  IPC::VectorArgumentCoder<false,WebKit::ContentWorldData,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a1, a2, &v16);
  if (v18 & 1) != 0 || ((v7 = *a1, v8 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (v9 = *(a1 + 3)) != 0) ? (v10 = v8 == 0) : (v10 = 1), !v10 && ((*(*v9 + 16))(v9, v7), (v18)))
  {
    v14[0] = v16;
    v5 = v17;
    v16 = 0;
    v17 = 0;
    v14[1] = v5;
    v15 = 1;
    WTF::Vector<WebKit::ContentWorldData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v16, v4);
    WebKit::WebUserContentController::addContentWorlds(a2, v14);
    if (v15)
    {
      WTF::Vector<WebKit::ContentWorldData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v14, v6);
    }
  }

  else
  {
    v11 = *a1;
    v12 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v13 = *(a1 + 3);
    if (v13 && v12)
    {
      (*(*v13 + 16))(v13, v11);
    }
  }
}

void IPC::handleMessage<Messages::WebUserContentController::RemoveContentWorlds,IPC::Connection,WebKit::WebUserContentController,WebKit::WebUserContentController,void ()(WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)>(IPC::Decoder *a1, WebKit *a2)
{
  IPC::Decoder::decode<std::tuple<WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(&v5, a1);
  if (v7 == 1)
  {
    WebKit::WebUserContentController::removeContentWorlds(a2, &v5);
    if (v7)
    {
      v4 = v5;
      if (v5)
      {
        v5 = 0;
        v6 = 0;
        WTF::fastFree(v4, v3);
      }
    }
  }
}

void IPC::handleMessage<Messages::WebUserContentController::AddUserScripts,IPC::Connection,WebKit::WebUserContentController,WebKit::WebUserContentController,void ()(WTF::Vector<WebKit::WebUserScriptData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WebKit::InjectUserScriptImmediately)>(IPC::Decoder *a1, void *a2)
{
  IPC::VectorArgumentCoder<false,WebKit::WebUserScriptData,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a1, a2, &v25);
  if (v27 & 1) != 0 || ((v10 = *a1, v11 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (v12 = *(a1 + 3)) != 0) ? (v13 = v11 == 0) : (v13 = 1), !v13 && ((*(*v12 + 16))(v12, v10), (v27)))
  {
    v4 = *(a1 + 1);
    v5 = *(a1 + 2);
    v6 = *a1;
    if (v4 <= &v5[-*a1])
    {
      *a1 = 0;
      *(a1 + 1) = 0;
      v17 = *(a1 + 3);
      if (v17)
      {
        if (v4)
        {
          (*(*v17 + 16))(v17);
          v4 = *(a1 + 1);
        }
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      *(a1 + 2) = v5 + 1;
      if (v5)
      {
        v7 = *v5;
        if (v7 < 2)
        {
          v22[0] = v25;
          v8 = v26;
          v25 = 0;
          v26 = 0;
          v22[1] = v8;
          v23 = v7;
          v24 = 1;
          WTF::Vector<WebKit::WebUserScriptData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v25, v6);
          WebKit::WebUserContentController::addUserScripts(a2, v22, v7 & 1);
          if (v24)
          {
            WTF::Vector<WebKit::WebUserScriptData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v22, v9);
          }

          return;
        }

        goto LABEL_23;
      }
    }

    *a1 = 0;
    *(a1 + 1) = 0;
    v18 = *(a1 + 3);
    if (v18)
    {
      if (v4)
      {
        (*(*v18 + 16))(v18);
        v6 = *a1;
        v4 = *(a1 + 1);
LABEL_23:
        *a1 = 0;
        *(a1 + 1) = 0;
        v19 = *(a1 + 3);
        if (v19)
        {
          if (v4)
          {
            (*(*v19 + 16))(v19, v6);
            v20 = *(a1 + 3);
            v6 = *a1;
            v21 = *(a1 + 1);
            *a1 = 0;
            *(a1 + 1) = 0;
            if (v20)
            {
              if (v21)
              {
                (*(*v20 + 16))(v20, v6);
              }
            }
          }
        }

        if (v27)
        {
          WTF::Vector<WebKit::WebUserScriptData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v25, v6);
        }

        goto LABEL_13;
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = 0;
    goto LABEL_23;
  }

LABEL_13:
  v14 = *a1;
  v15 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  v16 = *(a1 + 3);
  if (v16 && v15)
  {
    (*(*v16 + 16))(v16, v14);
  }
}

void IPC::handleMessage<Messages::WebUserContentController::RemoveUserScript,IPC::Connection,WebKit::WebUserContentController,WebKit::WebUserContentController,void ()(WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::UserScriptIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>)>(IPC::Decoder *a1, uint64_t *a2)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if (v5 & 1) != 0 && (v6 = v4, v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1), (v8))
  {

    WebKit::WebUserContentController::removeUserScript(a2, v6, v7);
  }

  else
  {
    v9 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v10 = *(a1 + 3);
    if (v10)
    {
      v11 = v9 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {
      v12 = *(*v10 + 16);

      v12();
    }
  }
}

void IPC::handleMessage<Messages::WebUserContentController::RemoveAllUserScripts,IPC::Connection,WebKit::WebUserContentController,WebKit::WebUserContentController,void ()(WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)>(IPC::Decoder *a1, uint64_t *a2)
{
  IPC::Decoder::decode<std::tuple<WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(&v5, a1);
  if (v7 == 1)
  {
    WebKit::WebUserContentController::removeAllUserScripts(a2, &v5);
    if (v7)
    {
      v4 = v5;
      if (v5)
      {
        v5 = 0;
        v6 = 0;
        WTF::fastFree(v4, v3);
      }
    }
  }
}

uint64_t IPC::handleMessage<Messages::WebUserContentController::AddUserStyleSheets,IPC::Connection,WebKit::WebUserContentController,WebKit::WebUserContentController,void ()(WTF::Vector<WebKit::WebUserStyleSheetData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)>(IPC::Decoder *a1, void *a2)
{
  IPC::VectorArgumentCoder<false,WebKit::WebUserStyleSheetData,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a1, a2, &v16);
  if (v18 & 1) != 0 || ((v8 = *a1, v9 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (v10 = *(a1 + 3)) != 0) ? (v11 = v9 == 0) : (v11 = 1), !v11 && ((*(*v10 + 16))(v10, v8), (v18)))
  {
    v14[0] = v16;
    v5 = v17;
    v16 = 0;
    v17 = 0;
    v14[1] = v5;
    v15 = 1;
    WTF::Vector<WebKit::WebUserStyleSheetData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v16, v4);
    result = WebKit::WebUserContentController::addUserStyleSheets(a2, v14);
    if (v15)
    {
      return WTF::Vector<WebKit::WebUserStyleSheetData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v14, v7);
    }
  }

  else
  {
    v12 = *a1;
    v13 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result && v13)
    {
      return (*(*result + 16))(result, v12);
    }
  }

  return result;
}

void IPC::handleMessage<Messages::WebUserContentController::RemoveUserStyleSheet,IPC::Connection,WebKit::WebUserContentController,WebKit::WebUserContentController,void ()(WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::UserStyleSheetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>)>(IPC::Decoder *a1, uint64_t *a2)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if (v5 & 1) != 0 && (v6 = v4, v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1), (v8))
  {

    WebKit::WebUserContentController::removeUserStyleSheet(a2, v6, v7);
  }

  else
  {
    v9 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v10 = *(a1 + 3);
    if (v10)
    {
      v11 = v9 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {
      v12 = *(*v10 + 16);

      v12();
    }
  }
}

void IPC::handleMessage<Messages::WebUserContentController::RemoveAllUserStyleSheets,IPC::Connection,WebKit::WebUserContentController,WebKit::WebUserContentController,void ()(WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)>(IPC::Decoder *a1, uint64_t *a2)
{
  IPC::Decoder::decode<std::tuple<WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(&v5, a1);
  if (v7 == 1)
  {
    WebKit::WebUserContentController::removeAllUserStyleSheets(a2, &v5);
    if (v7)
    {
      v4 = v5;
      if (v5)
      {
        v5 = 0;
        v6 = 0;
        WTF::fastFree(v4, v3);
      }
    }
  }
}

void IPC::handleMessage<Messages::WebUserContentController::AddUserScriptMessageHandlers,IPC::Connection,WebKit::WebUserContentController,WebKit::WebUserContentController,void ()(WTF::Vector<WebKit::WebScriptMessageHandlerData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)>(IPC::Decoder *a1, WTF::StringImpl *a2)
{
  IPC::VectorArgumentCoder<false,WebKit::WebScriptMessageHandlerData,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a1, a2, &v16);
  if (v18 & 1) != 0 || ((v7 = *a1, v8 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (v9 = *(a1 + 3)) != 0) ? (v10 = v8 == 0) : (v10 = 1), !v10 && ((*(*v9 + 16))(v9, v7), (v18)))
  {
    v14[0] = v16;
    v5 = v17;
    v16 = 0;
    v17 = 0;
    v14[1] = v5;
    v15 = 1;
    WTF::Vector<WebKit::WebScriptMessageHandlerData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v16, v4);
    WebKit::WebUserContentController::addUserScriptMessageHandlers(a2, v14);
    if (v15)
    {
      WTF::Vector<WebKit::WebScriptMessageHandlerData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v14, v6);
    }
  }

  else
  {
    v11 = *a1;
    v12 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v13 = *(a1 + 3);
    if (v13 && v12)
    {
      (*(*v13 + 16))(v13, v11);
    }
  }
}

void IPC::handleMessage<Messages::WebUserContentController::RemoveUserScriptMessageHandler,IPC::Connection,WebKit::WebUserContentController,WebKit::WebUserContentController,void ()(WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>)>(IPC::Decoder *a1, uint64_t a2)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if (v5 & 1) != 0 && (v6 = v4, v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1), (v8))
  {

    WebKit::WebUserContentController::removeUserScriptMessageHandler(a2, v6, v7);
  }

  else
  {
    v9 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v10 = *(a1 + 3);
    if (v10)
    {
      v11 = v9 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {
      v12 = *(*v10 + 16);

      v12();
    }
  }
}

void IPC::handleMessage<Messages::WebUserContentController::RemoveAllUserScriptMessageHandlersForWorlds,IPC::Connection,WebKit::WebUserContentController,WebKit::WebUserContentController,void ()(WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)>(IPC::Decoder *a1, uint64_t *a2)
{
  IPC::Decoder::decode<std::tuple<WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(&v5, a1);
  if (v7 == 1)
  {
    WebKit::WebUserContentController::removeAllUserScriptMessageHandlersForWorlds(a2, &v5);
    if (v7)
    {
      v4 = v5;
      if (v5)
      {
        v5 = 0;
        v6 = 0;
        WTF::fastFree(v4, v3);
      }
    }
  }
}

void IPC::handleMessage<Messages::WebUserContentController::AddContentRuleLists,IPC::Connection,WebKit::WebUserContentController,WebKit::WebUserContentController,void ()(WTF::Vector<std::pair<WebKit::WebCompiledContentRuleListData,WTF::URL>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>(IPC::Decoder *a1, uint64_t a2)
{
  IPC::Decoder::decode<std::tuple<WTF::Vector<std::pair<WebKit::WebCompiledContentRuleListData,WTF::URL>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(v4, a1);
  if (v5 == 1)
  {
    WebKit::WebUserContentController::addContentRuleLists(a2, v4);
    if (v5)
    {
      WTF::Vector<std::pair<WebKit::WebCompiledContentRuleListData,WTF::URL>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v4, v3);
    }
  }
}

WTF::StringImpl *IPC::handleMessage<Messages::WebUserContentController::RemoveContentRuleList,IPC::Connection,WebKit::WebUserContentController,WebKit::WebUserContentController,void ()(WTF::String const&)>(IPC::Decoder *a1, WebKit::WebUserContentController *a2)
{
  IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a1, &v9);
  if (v10 & 1) != 0 || ((v6 = *a1, v7 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (result = *(a1 + 3)) != 0) ? (v8 = v7 == 0) : (v8 = 1), !v8 && (result = (*(*result + 16))(result, v6), (v10)))
  {
    result = WebKit::WebUserContentController::removeContentRuleList(a2, &v9);
    if (v10)
    {
      result = v9;
      v9 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v5);
        }
      }
    }
  }

  return result;
}

void WebKit::WebUserContentControllerProxy::didReceiveMessage(CFTypeRef *this, atomic_ullong *a2, IPC::Decoder *a3)
{
  v118 = *MEMORY[0x1E69E9840];
  CFRetain(this[1]);
  v7 = *(a3 + 25);
  if (v7 != 3178)
  {
    v28 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
    {
      if (v7 >= 0x107F)
      {
        v32 = 4223;
      }

      else
      {
        v32 = v7;
      }

      v33 = (&IPC::Detail::messageDescriptions)[3 * v32];
      v34 = *(a3 + 7);
      *buf = 136315394;
      *&buf[4] = v33;
      v48 = 2048;
      *v49 = v34;
      _os_log_error_impl(&dword_19D52D000, v28, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", buf, 0x16u);
    }

    v29 = *a3;
    v30 = *(a3 + 1);
    *a3 = 0;
    *(a3 + 1) = 0;
    v31 = *(a3 + 3);
    if (v31 && v30)
    {
      (*(*v31 + 16))(v31, v29);
    }

    goto LABEL_46;
  }

  v8 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
  if ((v9 & 1) == 0)
  {
    buf[0] = 0;
    v83 = 0;
    goto LABEL_25;
  }

  v3 = v8;
  IPC::ArgumentCoder<WebKit::FrameInfoData,void>::decode(a3, &v84);
  if (v117)
  {
    goto LABEL_4;
  }

  v14 = *a3;
  v15 = *(a3 + 1);
  *a3 = 0;
  *(a3 + 1) = 0;
  v13 = *(a3 + 3);
  if (v13)
  {
    goto LABEL_49;
  }

LABEL_23:
  buf[0] = 0;
  v83 = 0;
LABEL_33:
  if ((v83 & 1) == 0)
  {
LABEL_25:
    v35 = *a3;
    v36 = *(a3 + 1);
    *a3 = 0;
    *(a3 + 1) = 0;
    v37 = *(a3 + 3);
    if (!v37)
    {
      goto LABEL_43;
    }

    if (!v36)
    {
      goto LABEL_43;
    }

    (*(*v37 + 16))(v37, v35);
    if ((v83 & 1) == 0)
    {
      goto LABEL_43;
    }
  }

  v41 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
  if (v35)
  {
    a3 = v41;
    while (1)
    {
      v42 = *a2;
      if ((*a2 & 1) == 0)
      {
        break;
      }

      v43 = *a2;
      atomic_compare_exchange_strong_explicit(a2, &v43, v42 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v43 == v42)
      {
        goto LABEL_40;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_40:
    v13 = WTF::fastMalloc(0x18);
    *v13 = &unk_1F10F8940;
    v13[1] = a3;
    v13[2] = a2;
    v84 = v13;
    if ((v83 & 1) == 0)
    {
      while (1)
      {
        __break(1u);
LABEL_49:
        if (!v15)
        {
          goto LABEL_23;
        }

        (*(*v13 + 16))(v13, v14);
        if ((v117 & 1) == 0)
        {
          goto LABEL_23;
        }

LABEL_4:
        v10 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
        if ((v11 & 1) == 0)
        {
          break;
        }

        v12 = v10;
        IPC::ArgumentCoder<WebKit::JavaScriptEvaluationResult,void>::decode(a3, v45);
        if ((v46 & 1) == 0)
        {
          v38 = *a3;
          v39 = *(a3 + 1);
          *a3 = 0;
          *(a3 + 1) = 0;
          v40 = *(a3 + 3);
          if (!v40)
          {
            break;
          }

          if (!v39)
          {
            break;
          }

          v13 = (*(*v40 + 16))(v40, v38);
          if ((v46 & 1) == 0)
          {
            break;
          }
        }

        if (v117)
        {
          *buf = v3;
          v49[1] = v84;
          v16 = v86;
          LODWORD(v86) = v86 & 0xFFFFFFFE;
          v17 = v85;
          v18 = v88;
          v85 = 0;
          v50 = v16;
          v51 = v87;
          v88 = 0;
          *&v49[5] = v17;
          v52 = v18;
          v53 = v89;
          v54 = v90;
          LODWORD(v89) = v89 & 0xFFFFFFFE;
          v19 = v92;
          v92 = 0u;
          v56 = v19;
          v20 = v93;
          v93 = 0;
          v55 = v91;
          v57 = v20;
          v21 = v94;
          v94 = 0;
          v58 = v21;
          *&v19 = v95;
          v95 = 0;
          v59 = v19;
          v22 = v96;
          v96 = 0;
          v60 = v22;
          *&v19 = v97;
          v97 = 0;
          v61 = v19;
          v63 = v99;
          v62 = v98;
          v23 = v100;
          v100 = 0u;
          v64 = v23;
          v67 = v103;
          v65 = v101;
          v66 = v102;
          v24 = v104;
          v101 = 0;
          v104 = 0;
          v68 = v24;
          LOBYTE(v69) = 0;
          v71 = -1;
          if (!v107)
          {
            v25 = v105;
            v105 = 0uLL;
            v69 = v25;
            v70 = v106;
            goto LABEL_9;
          }

          if (v107 != 255)
          {
            v69 = v105;
LABEL_9:
            v71 = v107;
          }

          v73 = v109;
          v74 = v110;
          v75 = v111;
          v72 = v108;
          v26 = v113;
          v108 = 0;
          v113 = 0;
          v76 = v112;
          v77 = v26;
          v78 = v114;
          v79 = v115;
          v80 = v116;
          v81 = v12;
          WebKit::JavaScriptEvaluationResult::JavaScriptEvaluationResult(v82, v45);
          v83 = 1;
          if (v46)
          {
            WebKit::JavaScriptEvaluationResult::~JavaScriptEvaluationResult(v45, v27);
          }

LABEL_31:
          if (v117)
          {
            WebKit::FrameInfoData::~FrameInfoData(&v84);
          }

          goto LABEL_33;
        }
      }

      buf[0] = 0;
      v83 = 0;
      goto LABEL_31;
    }

    WebKit::WebUserContentControllerProxy::didPostMessage(this, *buf, &v49[1], v81, v82, &v84);
    v44 = v84;
    v84 = 0;
    if (v44)
    {
      (*(*v44 + 8))(v44);
    }
  }

LABEL_43:
  if (v83 == 1)
  {
    WebKit::JavaScriptEvaluationResult::~JavaScriptEvaluationResult(v82, v35);
    WebKit::FrameInfoData::~FrameInfoData(&v49[1]);
  }

  if (this)
  {
LABEL_46:
    CFRelease(this[1]);
  }
}