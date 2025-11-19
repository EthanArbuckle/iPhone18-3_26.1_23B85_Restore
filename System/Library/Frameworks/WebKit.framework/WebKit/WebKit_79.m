WTF::StringImpl *IPC::handleMessageAsync<Messages::NetworkConnectionToWebProcess::HasStorageAccess,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF<WebCore::PageIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::RegistrableDomain &&::CompletionHandler<void ()(BOOL)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  IPC::ArgumentCoder<WebCore::RegistrableDomain,void>::decode(a2, &v34);
  if ((v35 & 1) == 0)
  {
    v23 = *a2;
    v24 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v25 = *(a2 + 3);
    if (v25)
    {
      v26 = v24 == 0;
    }

    else
    {
      v26 = 1;
    }

    if (!v26)
    {
      (*(*v25 + 16))(v25, v23);
    }

    goto LABEL_36;
  }

  IPC::ArgumentCoder<WebCore::RegistrableDomain,void>::decode(a2, &v36);
  if (v37)
  {
    v3 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v8 & 1) != 0 && (v9 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2), (v8))
    {
      v4 = v9;
      v10 = v34;
      v34 = 0;
      v11 = v36;
      v36 = 0;
      v31 = v10;
      v32[0] = v11;
      v32[1] = v3;
      v32[2] = v9;
      v12 = 1;
    }

    else
    {
      v12 = 0;
      LOBYTE(v31) = 0;
    }

    v33 = v12;
    v13 = v36;
    if (v36 && atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v8);
    }
  }

  else
  {
    v8 = *a2;
    v29 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v30 = *(a2 + 3);
    if (v30 && v29)
    {
      (*(*v30 + 16))(v30, v8);
    }

    v12 = 0;
    LOBYTE(v31) = 0;
    v33 = 0;
  }

  v14 = v34;
  if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, v8);
    if (v12)
    {
      goto LABEL_13;
    }

LABEL_36:
    v27 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result && v27)
    {
      v28 = *(*result + 16);

      return v28();
    }

    return result;
  }

  if ((v12 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_13:
  v15 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v16 & 1) == 0)
  {
    goto LABEL_22;
  }

  v17 = v15;
  while (1)
  {
    v18 = *a1;
    if ((*a1 & 1) == 0)
    {
      break;
    }

    v19 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v19, v18 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v19 == v18)
    {
      goto LABEL_19;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_19:
  v20 = WTF::fastMalloc(0x18);
  *v20 = &unk_1F10EF2E0;
  *(v20 + 1) = v17;
  *(v20 + 2) = a1;
  v36 = v20;
  WebKit::NetworkConnectionToWebProcess::hasStorageAccess(a3, &v31, v32, v3, v4, &v36);
  result = v36;
  v36 = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  if (v33)
  {
LABEL_22:
    v22 = v32[0];
    v32[0] = 0;
    if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v22, v16);
    }

    result = v31;
    v31 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v16);
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::NetworkConnectionToWebProcess::RequestStorageAccess,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF<WebCore::PageIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WTF<WebKit::WebPageProxyIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessScope,WebCore::RegistrableDomain &&::CompletionHandler<void ()(WebCore::RequestStorageAccessResult)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  IPC::ArgumentCoder<WebCore::RegistrableDomain,void>::decode(a2, &v39);
  if ((v40 & 1) == 0)
  {
    v27 = *a2;
    v28 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v29 = *(a2 + 3);
    if (v29)
    {
      v30 = v28 == 0;
    }

    else
    {
      v30 = 1;
    }

    if (!v30)
    {
      (*(*v29 + 16))(v29, v27);
    }

    goto LABEL_38;
  }

  IPC::ArgumentCoder<WebCore::RegistrableDomain,void>::decode(a2, &v41);
  if (v42)
  {
    v3 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v10 & 1) != 0 && (v11 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2), (v10) && (v4 = v11, v12 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2), (v10) && (v5 = v12, v13 = IPC::Decoder::decode<WebKit::ColorControlSupportsAlpha>(a2), (v13 & 0x100) != 0))
    {
      v6 = v13;
      v25 = v39;
      v39 = 0;
      v26 = v41;
      v41 = 0;
      v35 = v25;
      v36[0] = v26;
      v36[1] = v3;
      v36[2] = v4;
      v36[3] = v5;
      v37 = v13;
      v14 = 1;
    }

    else
    {
      v14 = 0;
      LOBYTE(v35) = 0;
    }

    v38 = v14;
    v15 = v41;
    if (v41 && atomic_fetch_add_explicit(v41, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v10);
    }
  }

  else
  {
    v10 = *a2;
    v33 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v34 = *(a2 + 3);
    if (v34 && v33)
    {
      (*(*v34 + 16))(v34, v10);
    }

    v14 = 0;
    LOBYTE(v35) = 0;
    v38 = 0;
  }

  v16 = v39;
  if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, v10);
    if (v14)
    {
      goto LABEL_14;
    }

LABEL_38:
    v31 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result && v31)
    {
      v32 = *(*result + 16);

      return v32();
    }

    return result;
  }

  if ((v14 & 1) == 0)
  {
    goto LABEL_38;
  }

LABEL_14:
  v17 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v18 & 1) == 0)
  {
    goto LABEL_23;
  }

  v19 = v17;
  while (1)
  {
    v20 = *a1;
    if ((*a1 & 1) == 0)
    {
      break;
    }

    v21 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v21, v20 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v21 == v20)
    {
      goto LABEL_20;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_20:
  v22 = WTF::fastMalloc(0x18);
  *v22 = &unk_1F10EF308;
  *(v22 + 1) = v19;
  *(v22 + 2) = a1;
  v41 = v22;
  WebKit::NetworkConnectionToWebProcess::requestStorageAccess(a3, &v35, v36, v3, v4, v5, v6 & 1, &v41);
  result = v41;
  v41 = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  if (v38)
  {
LABEL_23:
    v24 = v36[0];
    v36[0] = 0;
    if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v24, v18);
    }

    result = v35;
    v35 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v18);
      }
    }
  }

  return result;
}

void IPC::handleMessageAsync<Messages::NetworkConnectionToWebProcess::StorageAccessQuirkForTopFrameDomain,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WTF::URL &&,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, int a3)
{
  IPC::Decoder::decode<std::tuple<WTF::URL>>(a2, v15);
  if (v16 == 1)
  {
    v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v6)
    {
      v8 = v7;
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
      v11 = WTF::fastMalloc(0x18);
      *v11 = &unk_1F10EF330;
      v11[1] = v8;
      v11[2] = a1;
      v14 = v11;
      if ((v16 & 1) == 0)
      {
        __break(1u);
        return;
      }

      WebKit::NetworkConnectionToWebProcess::storageAccessQuirkForTopFrameDomain(a3, v15, &v14);
      v12 = v14;
      v14 = 0;
      if (v12)
      {
        (*(*v12 + 8))(v12);
      }
    }
  }

  if (v16 == 1)
  {
    v13 = v15[0];
    v15[0] = 0;
    if (v13)
    {
      if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v6);
      }
    }
  }
}

WTF::StringImpl *IPC::handleMessage<Messages::NetworkConnectionToWebProcess::RequestStorageAccessUnderOpener,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WebCore::RegistrableDomain &&,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain &)>(IPC::Decoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WebCore::RegistrableDomain,void>::decode(a1, &v23);
  if (v24)
  {
    v5 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
    if (v4)
    {
      IPC::ArgumentCoder<WebCore::RegistrableDomain,void>::decode(a1, &v25);
      if (v26)
      {
        v6 = v23;
        v23 = 0;
        v20[0] = v6;
        v20[1] = v5;
        v21 = v25;
        v7 = 1;
      }

      else
      {
        v4 = *a1;
        v18 = *(a1 + 1);
        *a1 = 0;
        *(a1 + 1) = 0;
        v19 = *(a1 + 3);
        if (v19 && v18)
        {
          (*(*v19 + 16))(v19, v4);
        }

        v7 = 0;
        LOBYTE(v20[0]) = 0;
      }

      v22 = v7;
    }

    else
    {
      v7 = 0;
      LOBYTE(v20[0]) = 0;
      v22 = 0;
    }

    v8 = v23;
    if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v4);
      if (v7)
      {
LABEL_10:
        result = WebKit::NetworkConnectionToWebProcess::requestStorageAccessUnderOpener(a2, v20, v5, &v21);
        if (v22)
        {
          v11 = v21;
          v21 = 0;
          if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v11, v10);
          }

          result = v20[0];
          v20[0] = 0;
          if (result)
          {
            if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              return WTF::StringImpl::destroy(result, v10);
            }
          }
        }

        return result;
      }
    }

    else if (v7)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v12 = *a1;
    v13 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v14 = *(a1 + 3);
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
  }

  v16 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  result = *(a1 + 3);
  if (result && v16)
  {
    v17 = *(*result + 16);

    return v17();
  }

  return result;
}

WTF::StringImpl *IPC::handleMessage<Messages::NetworkConnectionToWebProcess::AddOriginAccessAllowListEntry,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WTF::String const&,WTF::String const&,WTF::String const&,BOOL)>(IPC::Decoder *a1, WebKit::NetworkConnectionToWebProcess *a2)
{
  result = IPC::Decoder::decode<std::tuple<WTF::String,WTF::String,WTF::String,BOOL>>(&v7, a1);
  if (v11 == 1)
  {
    result = WebKit::NetworkConnectionToWebProcess::addOriginAccessAllowListEntry(a2, &v7, &v8, &v9, v10);
    if (v11)
    {
      v5 = v9;
      v9 = 0;
      if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, v4);
      }

      v6 = v8;
      v8 = 0;
      if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, v4);
      }

      result = v7;
      v7 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v4);
        }
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessage<Messages::NetworkConnectionToWebProcess::RemoveOriginAccessAllowListEntry,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WTF::String const&,WTF::String const&,WTF::String const&,BOOL)>(IPC::Decoder *a1, WebKit::NetworkConnectionToWebProcess *a2)
{
  result = IPC::Decoder::decode<std::tuple<WTF::String,WTF::String,WTF::String,BOOL>>(&v7, a1);
  if (v11 == 1)
  {
    result = WebKit::NetworkConnectionToWebProcess::removeOriginAccessAllowListEntry(a2, &v7, &v8, &v9, v10);
    if (v11)
    {
      v5 = v9;
      v9 = 0;
      if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, v4);
      }

      v6 = v8;
      v8 = 0;
      if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, v4);
      }

      result = v7;
      v7 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v4);
        }
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::NetworkConnectionToWebProcess::EstablishSWContextConnection,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::Site &&,std::optional<WebCore::ProcessQualified<WTF::UUID>>,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, void *a3)
{
  v42 = *MEMORY[0x1E69E9840];
  v6 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v7 & 1) == 0)
  {
    goto LABEL_34;
  }

  v8 = v6;
  IPC::Decoder::decode<WebCore::Site>(a2, &v28);
  if (v30 != 1)
  {
    goto LABEL_34;
  }

  IPC::ArgumentCoder<std::optional<WebCore::ProcessQualified<WTF::UUID>>,void>::decode<IPC::Decoder>(a2, &v38);
  if (v41 & 1) != 0 || (v9 = *a2, v26 = *(a2 + 1), *a2 = 0, *(a2 + 1) = 0, (v27 = *(a2 + 3)) != 0) && v26 && ((*(*v27 + 16))(v27, v9), (v41))
  {
    if ((v30 & 1) == 0)
    {
      __break(1u);
    }

    v31 = v8;
    v10 = v28;
    if (v28)
    {
      atomic_fetch_add_explicit(v28, 2u, memory_order_relaxed);
    }

    v32 = v10;
    v11 = v29;
    if (v29)
    {
      atomic_fetch_add_explicit(v29, 2u, memory_order_relaxed);
    }

    v33 = v11;
    v34 = v38;
    v35 = v39;
    v36 = v40;
    v12 = 1;
  }

  else
  {
    v12 = 0;
    LOBYTE(v31) = 0;
  }

  v37 = v12;
  if (v30)
  {
    v13 = v29;
    v29 = 0;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v9);
    }

    v14 = v28;
    v28 = 0;
    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v9);
    }
  }

  if (v12)
  {
    v15 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if ((v16 & 1) == 0)
    {
      goto LABEL_27;
    }

    v17 = v15;
    while (1)
    {
      v18 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v19 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v19, v18 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v19 == v18)
      {
        goto LABEL_24;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_24:
    v20 = WTF::fastMalloc(0x18);
    *v20 = &unk_1F10EF358;
    *(v20 + 1) = v17;
    *(v20 + 2) = a1;
    v28 = v20;
    v38 = v34;
    v39 = v35;
    v40 = v36;
    WebKit::NetworkConnectionToWebProcess::establishSWContextConnection(a3, v31, &v32, &v38, &v28);
    result = v28;
    v28 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    if (v37)
    {
LABEL_27:
      v22 = v33;
      v33 = 0;
      if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v22, v16);
      }

      result = v32;
      v32 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v16);
        }
      }
    }
  }

  else
  {
LABEL_34:
    v23 = *a2;
    v24 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result)
    {
      v25 = v24 == 0;
    }

    else
    {
      v25 = 1;
    }

    if (!v25)
    {
      return (*(*result + 16))(result, v23);
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::NetworkConnectionToWebProcess::PingPongForServiceWorkers,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WTF::CompletionHandler<void ()(BOOL)> &&)>(atomic_ullong *a1, IPC::Decoder *a2)
{
  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if (v4)
  {
    v5 = result;
    while (1)
    {
      v6 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v7 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v7, v6 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v7 == v6)
      {
        goto LABEL_7;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_7:
    v8 = WTF::fastMalloc(0x18);
    *v8 = &unk_1F10EF380;
    v8[1] = v5;
    v8[2] = a1;
    _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29NetworkConnectionToWebProcess25PingPongForServiceWorkersENS2_10ConnectionEN6WebKit29NetworkConnectionToWebProcessES9_FvONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEE4callEb(v8, 1);
    v9 = *(*v8 + 8);

    return v9(v8);
  }

  return result;
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::NetworkConnectionToWebProcess::EstablishSharedWorkerContextConnection,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::Site &&,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, WebKit::NetworkConnectionToWebProcess *a3)
{
  v6 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v7 & 1) != 0 && (v8 = v6, IPC::Decoder::decode<WebCore::Site>(a2, &v28), v30 == 1))
  {
    v10 = v28;
    if (v28)
    {
      atomic_fetch_add_explicit(v28, 2u, memory_order_relaxed);
    }

    v25 = v10;
    v11 = v29;
    if (v29)
    {
      atomic_fetch_add_explicit(v29, 2u, memory_order_relaxed);
    }

    v26 = v11;
    v27 = 1;
    if (v30)
    {
      v12 = v29;
      v29 = 0;
      if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v12, v9);
      }

      v13 = v28;
      v28 = 0;
      if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v9);
      }
    }

    v14 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if ((v15 & 1) == 0)
    {
      goto LABEL_23;
    }

    v16 = v14;
    while (1)
    {
      v17 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v18 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v18, v17 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v18 == v17)
      {
        goto LABEL_20;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_20:
    v19 = WTF::fastMalloc(0x18);
    *v19 = &unk_1F10EF3A8;
    *(v19 + 1) = v16;
    *(v19 + 2) = a1;
    v28 = v19;
    WebKit::NetworkConnectionToWebProcess::establishSharedWorkerContextConnection(a3, v8, &v25, &v28);
    result = v28;
    v28 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    if (v27)
    {
LABEL_23:
      v21 = v26;
      v26 = 0;
      if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v21, v15);
      }

      result = v25;
      v25 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v15);
        }
      }
    }
  }

  else
  {
    v22 = *a2;
    v23 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result)
    {
      v24 = v23 == 0;
    }

    else
    {
      v24 = 1;
    }

    if (!v24)
    {
      return (*(*result + 16))(result, v22);
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::NetworkConnectionToWebProcess::CreateRTCProvider,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, WebKit::NetworkConnectionToWebProcess *a3)
{
  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if (v6)
  {
    v7 = result;
    while (1)
    {
      v8 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v9 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v9, v8 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v9 == v8)
      {
        goto LABEL_7;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_7:
    v10 = WTF::fastMalloc(0x18);
    *v10 = &unk_1F10EF3D0;
    v10[1] = v7;
    v10[2] = a1;
    v11 = v10;
    WebKit::NetworkConnectionToWebProcess::createRTCProvider(a3, &v11);
    result = v11;
    v11 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::NetworkConnectionToWebProcess::ConnectToRTCDataChannelRemoteSource,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::CompletionHandler<void ()(std::optional<BOOL>)> &&)>(atomic_ullong *a1, uint64_t *a2, WebKit::NetworkConnectionToWebProcess *a3)
{
  result = IPC::Decoder::decode<std::tuple<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>>(v13, a2);
  if (v14 == 1)
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
      v11 = WTF::fastMalloc(0x18);
      *v11 = &unk_1F10EF3F8;
      v11[1] = v8;
      v11[2] = a1;
      v12 = v11;
      WebKit::NetworkConnectionToWebProcess::connectToRTCDataChannelRemoteSource(a3, v13[0], v13[1], v13[2], v13[3], &v12);
      result = v12;
      v12 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

uint64_t IPC::handleMessage<Messages::NetworkConnectionToWebProcess::MessagePortDisentangled,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WebCore::MessagePortIdentifier const&)>(IPC::Decoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<std::tuple<WebCore::MessagePortIdentifier>,void>::decode<IPC::Decoder>(v8, a1);
  if (v9)
  {
    return WebKit::NetworkConnectionToWebProcess::messagePortDisentangled(a2, v8);
  }

  v5 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  result = *(a1 + 3);
  if (result)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = *(*result + 16);

    return v7();
  }

  return result;
}

atomic_uint *IPC::handleMessage<Messages::NetworkConnectionToWebProcess::PostMessageToRemote,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WebCore::MessageWithMessagePorts &&,WebCore::MessagePortIdentifier const&)>(IPC::Decoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WebCore::MessageWithMessagePorts,void>::decode(a1, v19);
  if (v21)
  {
    IPC::Decoder::decode<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(&v22, a1);
    if (v23)
    {
      v5 = *v19;
      v19[0] = 0;
      *v15 = v5;
      v16 = v20;
      v17 = v22;
      v18 = 1;
      result = WebKit::NetworkConnectionToWebProcess::postMessageToRemote(a2, v15, &v17);
      if (v18)
      {
        v8 = v15[1];
        if (v15[1])
        {
          v15[1] = 0;
          LODWORD(v16) = 0;
          WTF::fastFree(v8, v7);
        }

        result = v15[0];
        v15[0] = 0;
        if (result)
        {
          return WTF::ThreadSafeRefCounted<WebCore::SerializedScriptValue,(WTF::DestructionThread)0>::deref(result);
        }
      }

      return result;
    }

    if (v19[1])
    {
      WTF::fastFree(v19[1], v4);
    }

    if (v19[0])
    {
      WTF::ThreadSafeRefCounted<WebCore::SerializedScriptValue,(WTF::DestructionThread)0>::deref(v19[0]);
    }
  }

  else
  {
    v11 = *a1;
    v12 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v13 = *(a1 + 3);
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
  }

  v9 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  result = *(a1 + 3);
  if (result && v9)
  {
    v10 = *(*result + 16);

    return v10();
  }

  return result;
}

uint64_t IPC::handleMessage<Messages::NetworkConnectionToWebProcess::RegisterURLSchemesAsCORSEnabled,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>(IPC::Decoder *a1, uint64_t a2)
{
  result = IPC::Decoder::decode<std::tuple<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(a1, v5);
  if (v6 == 1)
  {
    result = WebKit::NetworkConnectionToWebProcess::registerURLSchemesAsCORSEnabled(a2, v5);
    if (v6)
    {
      return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v5, v4);
    }
  }

  return result;
}

uint64_t IPC::handleMessage<Messages::NetworkConnectionToWebProcess::SetCORSDisablingPatterns,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>(IPC::Decoder *a1, uint64_t a2)
{
  result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(&v5, a1);
  if (v7 == 1)
  {
    result = WebKit::NetworkConnectionToWebProcess::setCORSDisablingPatterns(a2, v5, v6);
    if (v7)
    {
      return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v6, v4);
    }
  }

  return result;
}

WTF *IPC::handleMessage<Messages::NetworkConnectionToWebProcess::PrioritizeResourceLoads,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)>(IPC::Decoder *a1, uint64_t a2)
{
  result = IPC::Decoder::decode<std::tuple<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(&v5, a1);
  if (v7 == 1)
  {
    result = WebKit::NetworkConnectionToWebProcess::prioritizeResourceLoads(a2, &v5);
    if (v7)
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

  return result;
}

WTF::StringImpl *IPC::handleMessage<Messages::NetworkConnectionToWebProcess::InstallMockContentFilter,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WebCore::MockContentFilterSettings &&)>(uint64_t *a1, WebCore::MockContentFilterSettings *a2)
{
  IPC::ArgumentCoder<WebCore::MockContentFilterSettings,void>::decode(a1, &v22);
  if (v25 & 1) != 0 || ((v12 = *a1, v13 = a1[1], *a1 = 0, a1[1] = 0, (v14 = a1[3]) != 0) ? (v15 = v13 == 0) : (v15 = 1), !v15 && ((*(*v14 + 16))(v14, v12), (v25)))
  {
    v18 = v22;
    v5 = v23;
    if (v23)
    {
      atomic_fetch_add_explicit(v23, 2u, memory_order_relaxed);
    }

    v19 = v5;
    v6 = v24;
    if (v24)
    {
      atomic_fetch_add_explicit(v24, 2u, memory_order_relaxed);
    }

    v20 = v6;
    v21 = 1;
    if (v25)
    {
      v7 = v24;
      v24 = 0;
      if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, v4);
      }

      v8 = v23;
      v23 = 0;
      if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v4);
      }
    }

    result = WebKit::NetworkConnectionToWebProcess::installMockContentFilter(a2, &v18);
    if (v21)
    {
      v11 = v20;
      v20 = 0;
      if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v11, v10);
      }

      result = v19;
      v19 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v10);
        }
      }
    }
  }

  else
  {
    v16 = *a1;
    v17 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    result = a1[3];
    if (result && v17)
    {
      return (*(*result + 16))(result, v16);
    }
  }

  return result;
}

void IPC::handleMessage<Messages::NetworkConnectionToWebProcess::UseRedirectionForCurrentNavigation,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ResourceResponse &&)>(IPC::Decoder *a1, uint64_t a2)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if (v5 & 1) != 0 && ((v6 = v4, IPC::ArgumentCoder<WebCore::ResourceResponse,void>::decode(a1, &v47), (v70) || (v16 = *a1, v17 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (v18 = *(a1 + 3)) != 0) && v17 && ((*(*v18 + 16))(v18, v16), (v70)))
  {
    v24 = v48;
    v25 = v49;
    v8 = v52;
    v52 = 0u;
    v9 = v53;
    v53 = 0u;
    v10 = v50;
    v23 = v47;
    v47 = 0;
    LODWORD(v48) = v48 & 0xFFFFFFFE;
    v50 = 0;
    v26 = v10;
    v27 = v51;
    v28 = v8;
    v29 = v9;
    *&v8 = v54;
    v54 = 0;
    v30 = v8;
    v11 = v55;
    v55 = 0;
    v31 = v11;
    *&v8 = v56;
    v56 = 0;
    v32 = v8;
    v12 = v57;
    v57 = 0;
    v33 = v12;
    LOBYTE(v34) = 0;
    v35 = 0;
    if (v59 == 1)
    {
      v15 = v58;
      v58 = 0;
      v34 = v15;
      v35 = 1;
    }

    v36 = v60;
    v37 = v61;
    v38 = v62;
    v62 = 0;
    v41 = v65;
    v42 = v66;
    v43[0] = v67[0];
    *(v43 + 11) = *(v67 + 11);
    v39 = v63;
    v40 = v64;
    cf = v68;
    v45 = v69;
    v46 = 1;
    if (v70)
    {
      v68 = 0;
      WebCore::ResourceResponseBase::~ResourceResponseBase(&v47, v7);
    }

    WebKit::NetworkConnectionToWebProcess::useRedirectionForCurrentNavigation(a2, v6, &v23);
    if (v46)
    {
      v14 = cf;
      cf = 0;
      if (v14)
      {
        CFRelease(v14);
      }

      WebCore::ResourceResponseBase::~ResourceResponseBase(&v23, v13);
    }
  }

  else
  {
    v19 = *a1;
    v20 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v21 = *(a1 + 3);
    if (v21)
    {
      v22 = v20 == 0;
    }

    else
    {
      v22 = 1;
    }

    if (!v22)
    {
      (*(*v21 + 16))(v21, v19);
    }
  }
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::NetworkConnectionToWebProcess::NavigatorSubscribeToPushService,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WTF::URL &&,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebCore::PushSubscriptionData,std::experimental::fundamentals_v3::ExceptionData> &&)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  IPC::ArgumentCoder<std::tuple<WTF::URL,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder>(a2, v15);
  if (v18 & 1) != 0 || ((v7 = *a2, v12 = *(a2 + 1), *a2 = 0, *(a2 + 1) = 0, (result = *(a2 + 3)) != 0) ? (v13 = v12 == 0) : (v13 = 1), !v13 && (result = (*(*result + 16))(result, v7), (v18)))
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
      *result = &unk_1F10EF448;
      *(result + 1) = v8;
      *(result + 2) = a1;
      v14 = result;
      if ((v18 & 1) == 0)
      {
        __break(1u);
        return result;
      }

      WebKit::NetworkConnectionToWebProcess::navigatorSubscribeToPushService(a3, v15, &v16, &v14);
      result = v14;
      v14 = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }
    }
  }

  if (v18 == 1)
  {
    v11 = v16;
    if (v16)
    {
      v16 = 0;
      v17 = 0;
      WTF::fastFree(v11, v7);
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

WTF::StringImpl *IPC::handleMessageAsync<Messages::NetworkConnectionToWebProcess::NavigatorUnsubscribeFromPushService,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WTF::URL &&,WTF::ObjectIdentifierGeneric<WebCore::PushSubscriptionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> const&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<BOOL,WTF::ObjectIdentifierGeneric::ExceptionData> &&)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  IPC::ArgumentCoder<WTF::URL,void>::decode(a2, &v29);
  if ((v32 & 1) == 0)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v6 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a2);
    v8 = v7;
    if ((v7 & 1) == 0)
    {
      LOBYTE(v24) = 0;
      v28 = 0;
      if (v32)
      {
        goto LABEL_6;
      }

      goto LABEL_30;
    }

    if (v32)
    {
      break;
    }

    __break(1u);
LABEL_25:
    v18 = *a2;
    v19 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v20 = *(a2 + 3);
    if (v20)
    {
      v21 = v19 == 0;
    }

    else
    {
      v21 = 1;
    }

    if (!v21)
    {
      (*(*v20 + 16))(v20, v18);
      if (v32)
      {
        continue;
      }
    }

    goto LABEL_30;
  }

  v9 = v29;
  v29 = 0;
  v24 = v9;
  v25 = v30;
  v26 = v31;
  LODWORD(v30) = v30 & 0xFFFFFFFE;
  v27 = v6;
  v28 = 1;
LABEL_6:
  v10 = v29;
  v29 = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v7);
    if (v8)
    {
      goto LABEL_9;
    }

LABEL_30:
    v22 = *a2;
    v23 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result && v23)
    {
      return (*(*result + 16))(result, v22);
    }

    return result;
  }

  if ((v7 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_9:
  v11 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v12 & 1) == 0)
  {
    goto LABEL_18;
  }

  v13 = v11;
  while (1)
  {
    v14 = *a1;
    if ((*a1 & 1) == 0)
    {
      break;
    }

    v15 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v15, v14 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v15 == v14)
    {
      goto LABEL_15;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_15:
  v16 = WTF::fastMalloc(0x18);
  *v16 = &unk_1F10EF470;
  *(v16 + 1) = v13;
  *(v16 + 2) = a1;
  v29 = v16;
  WebKit::NetworkConnectionToWebProcess::navigatorUnsubscribeFromPushService(a3, &v24, &v27, &v29);
  result = v29;
  v29 = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  if (v28)
  {
LABEL_18:
    result = v24;
    v24 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v12);
      }
    }
  }

  return result;
}

void IPC::handleMessageAsync<Messages::NetworkConnectionToWebProcess::NavigatorGetPushSubscription,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WTF::URL &&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<std::optional<WebCore::PushSubscriptionData>,std::optional::ExceptionData> &&)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  IPC::Decoder::decode<std::tuple<WTF::URL>>(a2, v15);
  if (v16 == 1)
  {
    v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v6)
    {
      v8 = v7;
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
      v11 = WTF::fastMalloc(0x18);
      *v11 = &unk_1F10EF498;
      v11[1] = v8;
      v11[2] = a1;
      v14 = v11;
      if ((v16 & 1) == 0)
      {
        __break(1u);
        return;
      }

      WebKit::NetworkConnectionToWebProcess::navigatorGetPushSubscription(a3, v15, &v14);
      v12 = v14;
      v14 = 0;
      if (v12)
      {
        (*(*v12 + 8))(v12);
      }
    }
  }

  if (v16 == 1)
  {
    v13 = v15[0];
    v15[0] = 0;
    if (v13)
    {
      if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v6);
      }
    }
  }
}

void IPC::handleMessageAsync<Messages::NetworkConnectionToWebProcess::NavigatorGetPushPermissionState,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WTF::URL &&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<unsigned char,WebCore::ExceptionData> &&)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  IPC::Decoder::decode<std::tuple<WTF::URL>>(a2, v15);
  if (v16 == 1)
  {
    v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v6)
    {
      v8 = v7;
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
      v11 = WTF::fastMalloc(0x18);
      *v11 = &unk_1F10EF4C0;
      v11[1] = v8;
      v11[2] = a1;
      v14 = v11;
      if ((v16 & 1) == 0)
      {
        __break(1u);
        return;
      }

      WebKit::NetworkConnectionToWebProcess::navigatorGetPushPermissionState(a3, v15, &v14);
      v12 = v14;
      v14 = 0;
      if (v12)
      {
        (*(*v12 + 8))(v12);
      }
    }
  }

  if (v16 == 1)
  {
    v13 = v15[0];
    v15[0] = 0;
    if (v13)
    {
      if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v6);
      }
    }
  }
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::NetworkConnectionToWebProcess::InitializeWebTransportSession,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WTF::URL &&,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> &&,WebCore::ClientOrigin &&,WTF::CompletionHandler<void ()(std::optional<WTF::URL &&<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>>)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, unsigned int *a3)
{
  v57 = *MEMORY[0x1E69E9840];
  IPC::ArgumentCoder<WTF::URL,void>::decode(a2, &v35);
  if ((v38 & 1) == 0)
  {
    goto LABEL_60;
  }

  while (1)
  {
    v6 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if ((v7 & 1) == 0 || (v8 = v6, IPC::ArgumentCoder<WebCore::ClientOrigin,void>::decode(a2, &v50), v9 = v56, (v56 & 1) == 0) && ((v7 = *a2, v15 = *(a2 + 1), *a2 = 0, *(a2 + 1) = 0, (v16 = *(a2 + 3)) == 0) || !v15 || ((*(*v16 + 16))(v16, v7), v9 = v56, (v56 & 1) == 0)))
    {
      v12 = 0;
      LOBYTE(v39) = 0;
      v49 = 0;
      goto LABEL_26;
    }

    if (v38)
    {
      break;
    }

    __break(1u);
LABEL_60:
    v29 = *a2;
    v30 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v31 = *(a2 + 3);
    if (v31)
    {
      v32 = v30 == 0;
    }

    else
    {
      v32 = 1;
    }

    if (!v32)
    {
      (*(*v31 + 16))(v31, v29);
      if (v38)
      {
        continue;
      }
    }

    goto LABEL_65;
  }

  v10 = v35;
  v35 = 0;
  v39 = v10;
  v40 = v36;
  v41 = v37;
  LODWORD(v36) = v36 & 0xFFFFFFFE;
  v42 = v8;
  LOBYTE(v43[0]) = 0;
  v45 = -1;
  if (!v52)
  {
    v11 = v50;
    v50 = 0uLL;
    *v43 = v11;
    v44 = v51;
LABEL_7:
    v45 = v52;
    goto LABEL_8;
  }

  if (v52 != 255)
  {
    *v43 = v50;
    goto LABEL_7;
  }

LABEL_8:
  LOBYTE(v46[0]) = 0;
  v48 = -1;
  if (!v55)
  {
    *v46 = v53;
    v47 = v54;
    v48 = 0;
    v12 = 1;
    v49 = 1;
    if ((v9 & 1) == 0)
    {
      goto LABEL_26;
    }

    v53 = 0uLL;
    goto LABEL_11;
  }

  if (v55 != 255)
  {
    *v46 = v53;
    v48 = v55;
  }

  v12 = 1;
  v49 = 1;
  if (v9)
  {
LABEL_11:
    v55 = -1;
    if (!v52)
    {
      v13 = *(&v50 + 1);
      *(&v50 + 1) = 0;
      if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v7);
      }

      v14 = v50;
      *&v50 = 0;
      if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v7);
      }
    }
  }

LABEL_26:
  if (v38)
  {
    v17 = v35;
    v35 = 0;
    if (v17)
    {
      if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v17, v7);
        if (v12)
        {
          goto LABEL_30;
        }

LABEL_65:
        v33 = *a2;
        v34 = *(a2 + 1);
        *a2 = 0;
        *(a2 + 1) = 0;
        result = *(a2 + 3);
        if (result && v34)
        {
          return (*(*result + 16))(result, v33);
        }

        return result;
      }
    }
  }

  if ((v12 & 1) == 0)
  {
    goto LABEL_65;
  }

LABEL_30:
  v18 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v19 & 1) == 0)
  {
    goto LABEL_39;
  }

  v20 = v18;
  while (1)
  {
    v21 = *a1;
    if ((*a1 & 1) == 0)
    {
      break;
    }

    v22 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v22, v21 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v22 == v21)
    {
      goto LABEL_36;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_36:
  v23 = WTF::fastMalloc(0x18);
  *v23 = &unk_1F10EF4E8;
  v23[1] = v20;
  v23[2] = a1;
  *&v50 = v23;
  WebKit::NetworkConnectionToWebProcess::initializeWebTransportSession(a3, &v39, &v42, v43, &v50);
  result = v50;
  *&v50 = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  if (v49)
  {
LABEL_39:
    if (!v48)
    {
      v25 = v46[1];
      v46[1] = 0;
      if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v25, v19);
      }

      v26 = v46[0];
      v46[0] = 0;
      if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v26, v19);
      }
    }

    v48 = -1;
    if (!v45)
    {
      v27 = v43[1];
      v43[1] = 0;
      if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v27, v19);
      }

      v28 = v43[0];
      v43[0] = 0;
      if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v28, v19);
      }
    }

    v45 = -1;
    result = v39;
    v39 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v19);
      }
    }
  }

  return result;
}

void IPC::handleMessageAsync<Messages::NetworkConnectionToWebProcess::LoadImageForDecoding,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WebCore::ResourceRequest &&,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WebCore::ResourceRequest &&::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,unsigned long long,WebCore::ResourceRequest &&::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebCore::ResourceRequest &&::Ref<WebCore::FragmentedSharedBuffer,WebCore::ResourceRequest &&::RawPtrTraits<WebCore::ResourceRequest &&::Ref>,WebCore::ResourceRequest &&::DefaultRefDerefTraits<WebCore::ResourceRequest &&::Ref>>,WebCore::ResourceError> &&)> &&)>(atomic_ullong *a1, IPC::Decoder *this, void *a3)
{
  v4 = this;
  IPC::ArgumentCoder<WebCore::ResourceRequest,void>::decode(this, v36);
  if ((v37 & 1) == 0)
  {
    v17 = *v4;
    v18 = *(v4 + 1);
    *v4 = 0;
    *(v4 + 1) = 0;
    v19 = *(v4 + 3);
    v20 = !v19 || v18 == 0;
    if (v20 || ((*(*v19 + 16))(v19, v17), (v37 & 1) == 0))
    {
      v32[0] = 0;
      v35 = 0;
      goto LABEL_39;
    }
  }

  v6 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v4);
  if ((v7 & 1) == 0)
  {
    goto LABEL_22;
  }

  v8 = *(v4 + 1);
  v9 = ((*(v4 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = v9 - *v4;
  v11 = v8 >= v10;
  v12 = v8 - v10;
  if (!v11 || v12 <= 7)
  {
    *v4 = 0;
    *(v4 + 1) = 0;
    v21 = *(v4 + 3);
    if (v21)
    {
      if (v8)
      {
        (*(*v21 + 16))(v21);
        v8 = *(v4 + 1);
      }
    }

    else
    {
      v8 = 0;
    }

    goto LABEL_21;
  }

  *(v4 + 2) = v9 + 1;
  if (!v9)
  {
LABEL_21:
    *v4 = 0;
    *(v4 + 1) = 0;
    v22 = *(v4 + 3);
    if (v22 && v8)
    {
      (*(*v22 + 16))(v22);
    }

LABEL_22:
    v16 = 0;
    v32[0] = 0;
    goto LABEL_23;
  }

  if ((v37 & 1) == 0)
  {
    goto LABEL_38;
  }

  v14 = v6;
  v15 = *v9;
  std::__tuple_leaf<0ul,WebCore::ResourceRequest,false>::__tuple_leaf[abi:sn200100]<WebCore::ResourceRequest,0>(v32, v36);
  v33 = v14;
  v34 = v15;
  v16 = 1;
LABEL_23:
  v35 = v16;
  if (v37)
  {
    WebCore::ResourceRequest::~ResourceRequest(v36);
    v16 = v35;
  }

  if (v16)
  {
    goto LABEL_26;
  }

LABEL_39:
  while (1)
  {
    v29 = *v4;
    v30 = *(v4 + 1);
    *v4 = 0;
    *(v4 + 1) = 0;
    v31 = *(v4 + 3);
    if (!v31)
    {
      break;
    }

    if (!v30)
    {
      break;
    }

    (*(*v31 + 16))(v31, v29);
    if ((v35 & 1) == 0)
    {
      break;
    }

LABEL_26:
    v23 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v4);
    if ((v24 & 1) == 0)
    {
      break;
    }

    v4 = v23;
    while (1)
    {
      v25 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v26 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v26, v25 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v26 == v25)
      {
        goto LABEL_32;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_32:
    v27 = WTF::fastMalloc(0x18);
    *v27 = &unk_1F10EF510;
    v27[1] = v4;
    v27[2] = a1;
    v36[0] = v27;
    if (v35)
    {
      WebKit::NetworkConnectionToWebProcess::loadImageForDecoding(a3, v32, v33, v34, v36);
      v28 = v36[0];
      v36[0] = 0;
      if (v28)
      {
        (*(*v28 + 8))(v28);
      }

      break;
    }

LABEL_38:
    __break(1u);
  }

  if (v35 == 1)
  {
    WebCore::ResourceRequest::~ResourceRequest(v32);
  }
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::NetworkConnectionToWebProcess::SetLoginStatus,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WebCore::RegistrableDomain &&,WebCore::IsLoggedIn,std::optional<WebCore::LoginStatus> &&,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  IPC::ArgumentCoder<WebCore::RegistrableDomain,void>::decode(a2, &v50);
  if ((v51 & 1) == 0)
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

    goto LABEL_18;
  }

  v7 = *(a2 + 1);
  v8 = *(a2 + 2);
  v9 = *a2;
  if (v7 <= &v8[-*a2])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v26 = *(a2 + 3);
    if (v26)
    {
      if (v7)
      {
        (*(*v26 + 16))(v26);
        v7 = *(a2 + 1);
      }
    }

    else
    {
      v7 = 0;
    }

LABEL_31:
    *a2 = 0;
    *(a2 + 1) = 0;
    v27 = *(a2 + 3);
    if (v27)
    {
      if (v7)
      {
        (*(*v27 + 16))(v27);
        v9 = *a2;
        v7 = *(a2 + 1);
        goto LABEL_34;
      }
    }

    else
    {
      v7 = 0;
    }

    v9 = 0;
    goto LABEL_34;
  }

  v10 = v8 + 1;
  *(a2 + 2) = v8 + 1;
  if (!v8)
  {
    goto LABEL_31;
  }

  v3 = *v8;
  if (v3 < 2)
  {
    if (v7 <= v10 - v9)
    {
      v38 = 0;
      v39 = 0;
      *a2 = 0;
      *(a2 + 1) = 0;
      v40 = *(a2 + 3);
      if (v40)
      {
        (*(*v40 + 16))(v40);
        v39 = *a2;
        v38 = *(a2 + 1);
      }
    }

    else
    {
      *(a2 + 2) = v8 + 2;
      if (v8 != -1)
      {
        if (*v10 < 2u)
        {
          if (*v10)
          {
            IPC::ArgumentCoder<WebCore::LoginStatus,void>::decode(a2, v52);
            if ((v54 & 1) == 0)
            {
              v21 = *a2;
              v22 = *(a2 + 1);
              *a2 = 0;
              *(a2 + 1) = 0;
              v23 = *(a2 + 3);
              if (!v23 || !v22 || ((*(*v23 + 16))(v23, v21), (v54 & 1) == 0))
              {
LABEL_22:
                v9 = *a2;
                v24 = *(a2 + 1);
                *a2 = 0;
                *(a2 + 1) = 0;
                v25 = *(a2 + 3);
                if (v25 && v24)
                {
                  (*(*v25 + 16))(v25, v9);
                }

                v12 = 0;
                LOBYTE(v43) = 0;
                goto LABEL_12;
              }
            }

            v47 = v53;
            v11 = v50;
            v50 = 0;
            v43 = v11;
            v44 = v3;
            v46 = v52[1];
            *v45 = v52[0];
            v12 = 1;
            v48 = 1;
          }

          else
          {
            v13 = v50;
            v50 = 0;
            v43 = v13;
            v44 = v3;
            LOBYTE(v45[0]) = 0;
            v48 = 0;
            v12 = 1;
          }

LABEL_12:
          v49 = v12;
          goto LABEL_36;
        }

LABEL_67:
        *a2 = 0;
        *(a2 + 1) = 0;
        v42 = *(a2 + 3);
        if (v42 && v7)
        {
          (*(*v42 + 16))(v42, v9);
        }

        goto LABEL_22;
      }

      v38 = v7;
      v39 = v9;
    }

    *a2 = 0;
    *(a2 + 1) = 0;
    v41 = *(a2 + 3);
    if (v41 && v38)
    {
      (*(*v41 + 16))(v41, v39, v38);
      v9 = *a2;
      v7 = *(a2 + 1);
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    goto LABEL_67;
  }

LABEL_34:
  *a2 = 0;
  *(a2 + 1) = 0;
  v28 = *(a2 + 3);
  if (v28 && v7)
  {
    (*(*v28 + 16))(v28, v9);
  }

  v12 = 0;
  LOBYTE(v43) = 0;
  v49 = 0;
LABEL_36:
  v29 = v50;
  if (v50 && atomic_fetch_add_explicit(v50, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v29, v9);
    if (v12)
    {
      goto LABEL_39;
    }

LABEL_18:
    v18 = *a2;
    v19 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result && v19)
    {
      return (*(*result + 16))(result, v18);
    }

    return result;
  }

  if ((v12 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_39:
  v30 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v31 & 1) == 0)
  {
    goto LABEL_48;
  }

  v32 = v30;
  while (1)
  {
    v33 = *a1;
    if ((*a1 & 1) == 0)
    {
      break;
    }

    v34 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v34, v33 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v34 == v33)
    {
      goto LABEL_45;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_45:
  v35 = WTF::fastMalloc(0x18);
  *v35 = &unk_1F10EF538;
  v35[1] = v32;
  v35[2] = a1;
  *&v52[0] = v35;
  WebKit::NetworkConnectionToWebProcess::setLoginStatus(a3, &v43, v3, v45, v52);
  result = *&v52[0];
  *&v52[0] = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  if (v49)
  {
LABEL_48:
    if (v48 == 1)
    {
      v36 = v45[1];
      v45[1] = 0;
      if (v36 && atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v36, v31);
      }

      v37 = v45[0];
      v45[0] = 0;
      if (v37 && atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v37, v31);
      }
    }

    result = v43;
    v43 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v31);
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::NetworkConnectionToWebProcess::IsLoggedIn,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WebCore::RegistrableDomain &&,WTF::CompletionHandler<void ()(BOOL)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<WebCore::RegistrableDomain>>(a2, &v12);
  if (v13 == 1)
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
      *result = &unk_1F10EF560;
      *(result + 1) = v8;
      *(result + 2) = a1;
      v11 = result;
      if ((v13 & 1) == 0)
      {
        __break(1u);
        return result;
      }

      WebKit::NetworkConnectionToWebProcess::isLoggedIn(a3, &v12, &v11);
      result = v11;
      v11 = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }
    }
  }

  if (v13 == 1)
  {
    result = v12;
    v12 = 0;
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

WTF::StringImpl *IPC::handleMessageAsync<Messages::NetworkConnectionToWebProcess::ShouldOffloadIFrameForHost,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WTF::String const&,WTF::CompletionHandler<void ()(BOOL)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, void *a3)
{
  IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a2, &v14);
  if (v15 & 1) != 0 || ((v7 = *a2, v11 = *(a2 + 1), *a2 = 0, *(a2 + 1) = 0, (result = *(a2 + 3)) != 0) ? (v12 = v11 == 0) : (v12 = 1), !v12 && (result = (*(*result + 16))(result, v7), (v15)))
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
      *result = &unk_1F10EF588;
      *(result + 1) = v8;
      *(result + 2) = a1;
      v13 = result;
      if ((v15 & 1) == 0)
      {
        __break(1u);
        return result;
      }

      WebKit::NetworkConnectionToWebProcess::shouldOffloadIFrameForHost(a3, &v14, &v13);
      result = v13;
      v13 = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }
    }
  }

  if (v15 == 1)
  {
    result = v14;
    v14 = 0;
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

uint64_t WebKit::NetworkConnectionToWebProcess::didReceiveSyncMessage(uint64_t a1)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  v9 = v8;
  v10 = v7;
  v11 = v6;
  v12 = v5;
  v164 = *MEMORY[0x1E69E9840];
  ++*(v5 + 5);
  v13 = v7[25];
  if (v13 > 0xFA2)
  {
    if (v7[25] > 0xFA5u)
    {
      if (v13 == 4008)
      {
        v35 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(v7);
        if (v20)
        {
          v36 = v35;
          v37 = *v9;
          *v9 = 0;
          while (1)
          {
            v38 = *v11;
            if ((*v11 & 1) == 0)
            {
              break;
            }

            v39 = *v11;
            atomic_compare_exchange_strong_explicit(v11, &v39, v38 + 2, memory_order_relaxed, memory_order_relaxed);
            if (v39 == v38)
            {
              goto LABEL_99;
            }
          }

          WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v11);
LABEL_99:
          v68 = WTF::fastMalloc(0x18);
          *v68 = &unk_1F10EF5D8;
          v68[1] = v37;
          v68[2] = v11;
          *buf = v68;
          WebKit::NetworkConnectionToWebProcess::testProcessIncomingSyncMessagesWhenWaitingForSyncReply(v12, v36, buf);
          v69 = *buf;
          *buf = 0;
          if (v69)
          {
            (*(*v69 + 8))(v69);
          }
        }

        goto LABEL_203;
      }

      if (v13 != 4007)
      {
        if (v13 == 4006)
        {
          IPC::Decoder::decode<std::tuple<WebKit::NetworkResourceLoadParameters>>(buf, v7);
          if (v163 == 1)
          {
            v10 = *v9;
            *v9 = 0;
            while (1)
            {
              v24 = *v11;
              if ((*v11 & 1) == 0)
              {
                break;
              }

              v25 = *v11;
              atomic_compare_exchange_strong_explicit(v11, &v25, v24 + 2, memory_order_relaxed, memory_order_relaxed);
              if (v25 == v24)
              {
                goto LABEL_79;
              }
            }

            WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v11);
LABEL_79:
            v60 = WTF::fastMalloc(0x18);
            *v60 = &unk_1F10EF5B0;
            *(v60 + 1) = v10;
            *(v60 + 2) = v11;
            v143 = v60;
            if ((v163 & 1) == 0)
            {
              goto LABEL_211;
            }

            WebKit::NetworkConnectionToWebProcess::performSynchronousLoad(v12, buf, &v143);
            v61 = v143;
            v143 = 0;
            if (v61)
            {
              (*(*v61 + 8))(v61);
            }

            if (v163)
            {
              WebKit::NetworkResourceLoadParameters::~NetworkResourceLoadParameters(buf, v20);
            }
          }

          goto LABEL_203;
        }

        goto LABEL_70;
      }

      v50 = IPC::Decoder::decode<std::tuple<PAL::SessionID>>(v7);
      if ((v20 & 1) == 0)
      {
        goto LABEL_203;
      }

      v51 = v50;
      v52 = *v9;
      *v9 = 0;
      while (1)
      {
        v53 = *v11;
        if ((*v11 & 1) == 0)
        {
          break;
        }

        v54 = *v11;
        atomic_compare_exchange_strong_explicit(v11, &v54, v53 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v54 == v53)
        {
          goto LABEL_111;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v11);
LABEL_111:
      v72 = WTF::fastMalloc(0x18);
      *v72 = &unk_1F10EF768;
      v72[1] = v52;
      v72[2] = v11;
      *buf = v72;
      WebKit::NetworkConnectionToWebProcess::takeNetworkLoadInformationMetrics(v12, v51, buf);
      v64 = *buf;
      if (!*buf)
      {
        goto LABEL_203;
      }
    }

    else
    {
      switch(v13)
      {
        case 0xFA3u:
          v28 = IPC::Decoder::decode<std::tuple<PAL::SessionID>>(v7);
          if ((v20 & 1) == 0)
          {
            goto LABEL_203;
          }

          v29 = v28;
          v30 = *v9;
          *v9 = 0;
          while (1)
          {
            v31 = *v11;
            if ((*v11 & 1) == 0)
            {
              break;
            }

            v32 = *v11;
            atomic_compare_exchange_strong_explicit(v11, &v32, v31 + 2, memory_order_relaxed, memory_order_relaxed);
            if (v32 == v31)
            {
              goto LABEL_89;
            }
          }

          WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v11);
LABEL_89:
          v63 = WTF::fastMalloc(0x18);
          *v63 = &unk_1F10EF718;
          v63[1] = v30;
          v63[2] = v11;
          *buf = v63;
          WebKit::NetworkConnectionToWebProcess::getNetworkLoadInformationResponse(v12, v29, buf);
          v64 = *buf;
          if (!*buf)
          {
            goto LABEL_203;
          }

          break;
        case 0xFA4u:
          v42 = IPC::Decoder::decode<std::tuple<PAL::SessionID>>(v7);
          if ((v20 & 1) == 0)
          {
            goto LABEL_203;
          }

          v43 = v42;
          v44 = *v9;
          *v9 = 0;
          while (1)
          {
            v45 = *v11;
            if ((*v11 & 1) == 0)
            {
              break;
            }

            v46 = *v11;
            atomic_compare_exchange_strong_explicit(v11, &v46, v45 + 2, memory_order_relaxed, memory_order_relaxed);
            if (v46 == v45)
            {
              goto LABEL_108;
            }
          }

          WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v11);
LABEL_108:
          v71 = WTF::fastMalloc(0x18);
          *v71 = &unk_1F10EF740;
          v71[1] = v44;
          v71[2] = v11;
          *buf = v71;
          WebKit::NetworkConnectionToWebProcess::getNetworkLoadIntermediateInformation(v12, v43, buf);
          v64 = *buf;
          if (!*buf)
          {
            goto LABEL_203;
          }

          break;
        case 0xFA5u:
          IPC::ArgumentCoder<WTF::URL,void>::decode(v7, &v139);
          if (v142 & 1) != 0 || (v126 = *v10, v127 = *(v10 + 1), *v10 = 0, *(v10 + 1) = 0, (v128 = *(v10 + 3)) != 0) && v127 && ((*(*v128 + 16))(v128, v126), (v142))
          {
            v17 = IPC::Decoder::decode<WebCore::SameSiteInfo>(v10);
            if ((v17 & 0x1000000) == 0 || (LODWORD(v1) = v17, IPC::ArgumentCoder<WTF::URL,void>::decode(v10, &v143), (v146 & 1) == 0) && ((v18 = *v10, v135 = *(v10 + 1), *v10 = 0, *(v10 + 1) = 0, (v136 = *(v10 + 3)) == 0) || !v135 || ((*(*v136 + 16))(v136, v18), (v146 & 1) == 0)))
            {
              v19 = 0;
              buf[0] = 0;
              v161[16] = 0;
              goto LABEL_132;
            }

            IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(v10, &v147);
            if (v148 & 1) != 0 || (v18 = *v10, v121 = *(v10 + 1), *v10 = 0, *(v10 + 1) = 0, (v122 = *(v10 + 3)) != 0) && v121 && ((*(*v122 + 16))(v122, v18), (v148))
            {
              IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(v10, &v149);
              if (v150 & 1) != 0 || (v18 = *v10, v117 = *(v10 + 1), *v10 = 0, *(v10 + 1) = 0, (v118 = *(v10 + 3)) != 0) && v117 && ((*(*v118 + 16))(v118, v18), (v150))
              {
                IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(v10, &v151);
                if ((v152 & 1) == 0)
                {
                  goto LABEL_212;
                }

                goto LABEL_122;
              }
            }

            v19 = 0;
            buf[0] = 0;
            v161[16] = 0;
LABEL_128:
            if (v146)
            {
              v77 = v143;
              v143 = 0;
              if (v77)
              {
                if (atomic_fetch_add_explicit(v77, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v77, v18);
                }
              }
            }

LABEL_132:
            if (v142)
            {
              v78 = v139;
              v139 = 0;
              if (v78)
              {
                if (atomic_fetch_add_explicit(v78, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v78, v18);
                }
              }
            }

            if (v19)
            {
              v79 = *v9;
              *v9 = 0;
              while (1)
              {
                v80 = *v11;
                if ((*v11 & 1) == 0)
                {
                  break;
                }

                v81 = *v11;
                atomic_compare_exchange_strong_explicit(v11, &v81, v80 + 2, memory_order_relaxed, memory_order_relaxed);
                if (v81 == v80)
                {
                  goto LABEL_142;
                }
              }

              WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v11);
LABEL_142:
              v82 = WTF::fastMalloc(0x18);
              *v82 = &unk_1F10EF678;
              *(v82 + 1) = v79;
              *(v82 + 2) = v11;
              v143 = v82;
              WebKit::NetworkConnectionToWebProcess::getRawCookies(v12, buf, &v155, &v156, v159, SDWORD2(v159), v160, SDWORD2(v160), *v161, *&v161[8], &v143);
              v83 = v143;
              v143 = 0;
              if (v83)
              {
                (*(*v83 + 8))(v83);
              }

              if ((v161[16] & 1) == 0)
              {
                goto LABEL_203;
              }

              goto LABEL_197;
            }
          }

LABEL_241:
          v20 = *v10;
          v21 = *(v10 + 1);
          *v10 = 0;
          *(v10 + 1) = 0;
          v132 = *(v10 + 3);
          if (v132 && v21)
          {
            (*(*v132 + 16))(v132, v20);
          }

          goto LABEL_203;
        default:
          goto LABEL_70;
      }
    }

    (*(**buf + 8))(v64);
    goto LABEL_203;
  }

  if (v7[25] > 0xF9Fu)
  {
    if (v13 == 4000)
    {
      IPC::Decoder::decode<std::tuple<WTF::URL,WTF::URL,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(buf, v7);
      if (v161[0] != 1)
      {
        goto LABEL_203;
      }

      v10 = *v9;
      *v9 = 0;
      while (1)
      {
        v33 = *v11;
        if ((*v11 & 1) == 0)
        {
          break;
        }

        v34 = *v11;
        atomic_compare_exchange_strong_explicit(v11, &v34, v33 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v34 == v33)
        {
          goto LABEL_92;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v11);
LABEL_92:
      v65 = WTF::fastMalloc(0x18);
      *v65 = &unk_1F10EF628;
      *(v65 + 1) = v10;
      *(v65 + 2) = v11;
      v143 = v65;
      if ((v161[0] & 1) == 0)
      {
        goto LABEL_211;
      }

      WebKit::NetworkConnectionToWebProcess::cookiesEnabledSync(v12, buf, &v155, SDWORD2(v158), v159, SDWORD2(v159), v160, *(&v160 + 1), &v143);
      v66 = v143;
      v143 = 0;
      if (v66)
      {
        (*(*v66 + 8))(v66);
      }

      if ((v161[0] & 1) == 0)
      {
        goto LABEL_203;
      }

      v67 = v155;
      v155 = 0;
      if (!v67)
      {
        goto LABEL_200;
      }

      goto LABEL_198;
    }

    if (v13 != 4001)
    {
      if (v13 != 4002)
      {
        goto LABEL_70;
      }

      IPC::Decoder::decode<std::tuple<WTF::URL>>(v7, buf);
      if (v155 != 1)
      {
LABEL_203:
        v57 = 1;
        goto LABEL_204;
      }

      v10 = *v9;
      *v9 = 0;
      while (1)
      {
        v22 = *v11;
        if ((*v11 & 1) == 0)
        {
          break;
        }

        v23 = *v11;
        atomic_compare_exchange_strong_explicit(v11, &v23, v22 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v23 == v22)
        {
          goto LABEL_75;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v11);
LABEL_75:
      v58 = WTF::fastMalloc(0x18);
      *v58 = &unk_1F10EF6A0;
      *(v58 + 1) = v10;
      *(v58 + 2) = v11;
      v143 = v58;
      if (v155)
      {
        WebKit::NetworkConnectionToWebProcess::domCookiesForHost(v12, buf, &v143);
        v59 = v143;
        v143 = 0;
        if (!v59)
        {
          goto LABEL_105;
        }

        goto LABEL_104;
      }

LABEL_211:
      while (1)
      {
        __break(1u);
LABEL_212:
        v18 = *v10;
        v111 = *(v10 + 1);
        *v10 = 0;
        *(v10 + 1) = 0;
        v112 = *(v10 + 3);
        if (!v112)
        {
          break;
        }

        if (!v111)
        {
          break;
        }

        (*(*v112 + 16))(v112, v18);
        if ((v152 & 1) == 0)
        {
          break;
        }

LABEL_122:
        if (v142 & 1) != 0 && (v146 & 1) != 0 && (v148 & 1) != 0 && (v150)
        {
          v75 = v139;
          v139 = 0;
          *buf = v75;
          *&buf[8] = v140;
          v154 = v141;
          LODWORD(v140) = v140 & 0xFFFFFFFE;
          LOWORD(v155) = v1;
          BYTE2(v155) = BYTE2(v1);
          v76 = v143;
          v143 = 0;
          v156 = v76;
          v157 = v144;
          v158 = v145;
          LODWORD(v144) = v144 & 0xFFFFFFFE;
          v159 = v147;
          v160 = v149;
          v19 = 1;
          *v161 = v151;
          goto LABEL_127;
        }
      }

      v19 = 0;
      buf[0] = 0;
LABEL_127:
      v161[16] = v19;
      goto LABEL_128;
    }

    IPC::ArgumentCoder<WTF::URL,void>::decode(v7, &v139);
    if (v142 & 1) != 0 || (v129 = *v10, v130 = *(v10 + 1), *v10 = 0, *(v10 + 1) = 0, (v131 = *(v10 + 3)) != 0) && v130 && ((*(*v131 + 16))(v131, v129), (v142))
    {
      v47 = IPC::Decoder::decode<WebCore::SameSiteInfo>(v10);
      if (v47 & 0x1000000) != 0 && ((v84 = v47, IPC::ArgumentCoder<WTF::URL,void>::decode(v10, &v143), (v146) || (v48 = *v10, v137 = *(v10 + 1), *v10 = 0, *(v10 + 1) = 0, (v138 = *(v10 + 3)) != 0) && v137 && ((*(*v138 + 16))(v138, v48), (v146)))
      {
        v1 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v10);
        if (v48 & 1) != 0 && (v85 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v10), (v48) && (v2 = v85, v86 = IPC::Decoder::decode<WebKit::ColorControlSupportsAlpha>(v10), (v86 & 0x100) != 0) && (v4 = v86, v87 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v10), (v48))
        {
          if ((v142 & 1) == 0 || (v146 & 1) == 0)
          {
            goto LABEL_211;
          }

          v3 = v87;
          v88 = v139;
          v139 = 0;
          *buf = v88;
          *&buf[8] = v140;
          v154 = v141;
          LODWORD(v140) = v140 & 0xFFFFFFFE;
          LOWORD(v155) = v84;
          BYTE2(v155) = BYTE2(v84);
          v89 = v143;
          v143 = 0;
          v157 = v144;
          v158 = v145;
          LODWORD(v144) = v144 & 0xFFFFFFFE;
          v156 = v89;
          *&v159 = v1;
          *(&v159 + 1) = v2;
          LOBYTE(v160) = v4;
          v49 = 1;
          *(&v160 + 1) = v87;
        }

        else
        {
          v49 = 0;
          buf[0] = 0;
        }

        v161[0] = v49;
        if (v146)
        {
          v90 = v143;
          v143 = 0;
          if (v90)
          {
            if (atomic_fetch_add_explicit(v90, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v90, v48);
            }
          }
        }
      }

      else
      {
        v49 = 0;
        buf[0] = 0;
        v161[0] = 0;
      }

      if (v142)
      {
        v91 = v139;
        v139 = 0;
        if (v91)
        {
          if (atomic_fetch_add_explicit(v91, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v91, v48);
          }
        }
      }

      if (v49)
      {
        v92 = *v9;
        *v9 = 0;
        while (1)
        {
          v93 = *v11;
          if ((*v11 & 1) == 0)
          {
            break;
          }

          v94 = *v11;
          atomic_compare_exchange_strong_explicit(v11, &v94, v93 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v94 == v93)
          {
            goto LABEL_169;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v11);
LABEL_169:
        v95 = WTF::fastMalloc(0x18);
        *v95 = &unk_1F10EF600;
        *(v95 + 1) = v92;
        *(v95 + 2) = v11;
        v143 = v95;
        WebKit::NetworkConnectionToWebProcess::cookiesForDOM(v12, buf, &v155, &v156, v1, v2, v4 & 1, v3, &v143);
        v96 = v143;
        v143 = 0;
        if (v96)
        {
          (*(*v96 + 8))(v96);
        }

        if ((v161[0] & 1) == 0)
        {
          goto LABEL_203;
        }

        goto LABEL_197;
      }
    }

    goto LABEL_241;
  }

  switch(v13)
  {
    case 0xF9Du:
      IPC::Decoder::decode<std::tuple<WTF::URL>>(v7, buf);
      if (v155 != 1)
      {
        goto LABEL_203;
      }

      v10 = *v9;
      *v9 = 0;
      while (1)
      {
        v26 = *v11;
        if ((*v11 & 1) == 0)
        {
          break;
        }

        v27 = *v11;
        atomic_compare_exchange_strong_explicit(v11, &v27, v26 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v27 == v26)
        {
          goto LABEL_85;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v11);
LABEL_85:
      v62 = WTF::fastMalloc(0x18);
      *v62 = &unk_1F10EF6F0;
      *(v62 + 1) = v10;
      *(v62 + 2) = v11;
      v143 = v62;
      if ((v155 & 1) == 0)
      {
        goto LABEL_211;
      }

      WebKit::NetworkConnectionToWebProcess::blobSize(v12, buf, &v143);
      v59 = v143;
      v143 = 0;
      if (!v59)
      {
        goto LABEL_105;
      }

LABEL_104:
      (*(*v59 + 8))(v59);
LABEL_105:
      if (v155)
      {
        goto LABEL_200;
      }

      goto LABEL_203;
    case 0xF9Eu:
      IPC::Decoder::decode<std::tuple<WTF::URL>>(v7, buf);
      if (v155 != 1)
      {
        goto LABEL_203;
      }

      v10 = *v9;
      *v9 = 0;
      while (1)
      {
        v40 = *v11;
        if ((*v11 & 1) == 0)
        {
          break;
        }

        v41 = *v11;
        atomic_compare_exchange_strong_explicit(v11, &v41, v40 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v41 == v40)
        {
          goto LABEL_102;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v11);
LABEL_102:
      v70 = WTF::fastMalloc(0x18);
      *v70 = &unk_1F10EF6C8;
      *(v70 + 1) = v10;
      *(v70 + 2) = v11;
      v143 = v70;
      if ((v155 & 1) == 0)
      {
        goto LABEL_211;
      }

      WebKit::NetworkConnectionToWebProcess::blobType(v12, buf, &v143);
      v59 = v143;
      v143 = 0;
      if (!v59)
      {
        goto LABEL_105;
      }

      goto LABEL_104;
    case 0xF9Fu:
      IPC::ArgumentCoder<WTF::URL,void>::decode(v7, &v139);
      if (v142 & 1) != 0 || (v123 = *v10, v124 = *(v10 + 1), *v10 = 0, *(v10 + 1) = 0, (v125 = *(v10 + 3)) != 0) && v124 && ((*(*v125 + 16))(v125, v123), (v142))
      {
        v14 = IPC::Decoder::decode<WebCore::SameSiteInfo>(v10);
        if (v14 & 0x1000000) != 0 && ((v73 = v14, IPC::ArgumentCoder<WTF::URL,void>::decode(v10, &v143), (v146) || (v15 = *v10, v133 = *(v10 + 1), *v10 = 0, *(v10 + 1) = 0, (v134 = *(v10 + 3)) != 0) && v133 && ((*(*v134 + 16))(v134, v15), (v146)))
        {
          if ((IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(v10, &v147), (v148) || (v15 = *v10, v119 = *(v10 + 1), *v10 = 0, *(v10 + 1) = 0, (v120 = *(v10 + 3)) != 0) && v119 && ((*(*v120 + 16))(v120, v15), (v148)) && ((IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(v10, &v149), (v150) || (v15 = *v10, v115 = *(v10 + 1), *v10 = 0, *(v10 + 1) = 0, (v116 = *(v10 + 3)) != 0) && v115 && ((*(*v116 + 16))(v116, v15), (v150)) && (v74 = IPC::Decoder::decode<WebKit::ColorControlSupportsAlpha>(v10), (v74 & 0x100) != 0))
          {
            LODWORD(v1) = v74;
            IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(v10, &v151);
            if (v152 & 1) != 0 || (v15 = *v10, v113 = *(v10 + 1), *v10 = 0, *(v10 + 1) = 0, (v114 = *(v10 + 3)) != 0) && v113 && ((*(*v114 + 16))(v114, v15), (v152))
            {
              if ((v142 & 1) == 0 || (v146 & 1) == 0 || (v148 & 1) == 0 || (v150 & 1) == 0)
              {
                goto LABEL_211;
              }

              v97 = v139;
              v139 = 0;
              *buf = v97;
              *&buf[8] = v140;
              v154 = v141;
              LODWORD(v140) = v140 & 0xFFFFFFFE;
              LOWORD(v155) = v73;
              BYTE2(v155) = BYTE2(v73);
              v98 = v143;
              v143 = 0;
              v156 = v98;
              v157 = v144;
              v158 = v145;
              LODWORD(v144) = v144 & 0xFFFFFFFE;
              v159 = v147;
              v160 = v149;
              v161[0] = v1;
              v16 = 1;
              *&v161[8] = v151;
            }

            else
            {
              v16 = 0;
              buf[0] = 0;
            }

            v162 = v16;
          }

          else
          {
            v16 = 0;
            buf[0] = 0;
            v162 = 0;
          }

          if (v146)
          {
            v99 = v143;
            v143 = 0;
            if (v99)
            {
              if (atomic_fetch_add_explicit(v99, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v99, v15);
              }
            }
          }
        }

        else
        {
          v16 = 0;
          buf[0] = 0;
          v162 = 0;
        }

        if (v142)
        {
          v100 = v139;
          v139 = 0;
          if (v100)
          {
            if (atomic_fetch_add_explicit(v100, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v100, v15);
            }
          }
        }

        if (v16)
        {
          v101 = *v9;
          *v9 = 0;
          while (1)
          {
            v102 = *v11;
            if ((*v11 & 1) == 0)
            {
              break;
            }

            v103 = *v11;
            atomic_compare_exchange_strong_explicit(v11, &v103, v102 + 2, memory_order_relaxed, memory_order_relaxed);
            if (v103 == v102)
            {
              goto LABEL_194;
            }
          }

          WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v11);
LABEL_194:
          v104 = WTF::fastMalloc(0x18);
          *v104 = &unk_1F10EF650;
          *(v104 + 1) = v101;
          *(v104 + 2) = v11;
          v143 = v104;
          WebKit::NetworkConnectionToWebProcess::cookieRequestHeaderFieldValue(v12, buf, &v155, &v156, v159, SDWORD2(v159), v160, SDWORD2(v160), v1 & 1, *&v161[8], *&v161[16], &v143);
          v105 = v143;
          v143 = 0;
          if (v105)
          {
            (*(*v105 + 8))(v105);
          }

          if ((v162 & 1) == 0)
          {
            goto LABEL_203;
          }

LABEL_197:
          v67 = v156;
          v156 = 0;
          if (v67)
          {
LABEL_198:
            if (atomic_fetch_add_explicit(v67, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v67, v20);
            }
          }

LABEL_200:
          v106 = *buf;
          *buf = 0;
          if (v106 && atomic_fetch_add_explicit(v106, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v106, v20);
          }

          goto LABEL_203;
        }
      }

      goto LABEL_241;
  }

LABEL_70:
  if (WebKit::NetworkConnectionToWebProcess::dispatchSyncMessage(v5, v6, v7, v8))
  {
    goto LABEL_203;
  }

  v55 = qword_1ED6416C8;
  if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
  {
    v108 = v10[25];
    if (v108 >= 0x107F)
    {
      v108 = 4223;
    }

    v109 = (&IPC::Detail::messageDescriptions)[3 * v108];
    v110 = *(v10 + 7);
    *buf = 136315394;
    *&buf[4] = v109;
    *&buf[12] = 2048;
    *&buf[14] = v110;
    _os_log_error_impl(&dword_19D52D000, v55, OS_LOG_TYPE_ERROR, "Unhandled synchronous message %s to %llu", buf, 0x16u);
  }

  v20 = *v10;
  v21 = *(v10 + 1);
  *v10 = 0;
  *(v10 + 1) = 0;
  v56 = *(v10 + 3);
  if (v56 && v21)
  {
    (*(*v56 + 16))(v56, v20);
  }

  v57 = 0;
LABEL_204:
  if (*(v12 + 20) == 1)
  {
    (*(*v12 + 8))(v12, v20, v21);
  }

  else
  {
    --*(v12 + 20);
  }

  return v57;
}

void WebKit::NetworkConnectionToWebProcess::getNetworkLoadInformationResponse(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::NetworkLoadInformation>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkLoadInformation>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::NetworkLoadInformation>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkLoadInformation>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>((a1 + 160), a2);
  if (v4)
  {
    v5 = *a3;
    *a3 = 0;
    (*(*v5 + 16))(v5, v4 + 200);
    v6 = *(*v5 + 8);

    v6(v5);
  }

  else
  {
    WebCore::ResourceResponseBase::ResourceResponseBase(v10);
    cf = 0;
    v13 = 0;
    v11 = v11 & 0xF1 | 4;
    v7 = *a3;
    *a3 = 0;
    (*(*v7 + 16))(v7, v10);
    (*(*v7 + 8))(v7);
    v9 = cf;
    cf = 0;
    if (v9)
    {
      CFRelease(v9);
    }

    WebCore::ResourceResponseBase::~ResourceResponseBase(v10, v8);
  }
}

_DWORD *WebKit::NetworkConnectionToWebProcess::getNetworkLoadIntermediateInformation(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::NetworkLoadInformation>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkLoadInformation>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::NetworkLoadInformation>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkLoadInformation>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>((a1 + 160), a2);
  if (v4)
  {
    v5 = *a3;
    *a3 = 0;
    (*(*v5 + 16))(v5, v4 + 592);
    v6 = *(*v5 + 8);

    return v6(v5);
  }

  else
  {
    v10[0] = 0;
    v10[1] = 0;
    v8 = *a3;
    *a3 = 0;
    (*(*v8 + 16))(v8, v10);
    (*(*v8 + 8))(v8);
    return WTF::Vector<WebCore::NetworkTransactionInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v10, v9);
  }
}

WTF::StringImpl *WebKit::NetworkConnectionToWebProcess::takeNetworkLoadInformationMetrics(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v17 = a2;
  v5 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::NetworkLoadInformation>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::NetworkLoadInformation>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::NetworkLoadInformation>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkLoadInformation>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::NetworkLoadInformation>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkLoadInformation>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>((a1 + 160), &v17);
  v6 = *(a1 + 160);
  if (v6)
  {
    if (v6 + 16 * *(v6 - 4) != v5)
    {
      goto LABEL_3;
    }

LABEL_6:
    v14[0] = 0;
    goto LABEL_7;
  }

  if (!v5)
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = *(v5 + 8);
  *(v5 + 8) = 0;
  v14[0] = v7;
  WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::NetworkLoadInformation>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::NetworkLoadInformation>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::NetworkLoadInformation>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkLoadInformation>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove((a1 + 160), v5);
  v8 = v14[0];
  if (v14[0])
  {
    v9 = *a3;
    *a3 = 0;
    (*(*v9 + 16))(v9, v8 + 464);
    (*(*v9 + 8))(v9);
    return std::unique_ptr<WebCore::NetworkLoadInformation>::reset[abi:sn200100](v14, 0);
  }

LABEL_7:
  std::unique_ptr<WebCore::NetworkLoadInformation>::reset[abi:sn200100](v14, 0);
  WebCore::NetworkLoadMetrics::NetworkLoadMetrics(v14);
  v11 = *a3;
  *a3 = 0;
  (*(*v11 + 16))(v11, v14);
  (*(*v11 + 8))(v11);
  v13 = v16;
  v16 = 0;
  if (v13)
  {
    WTF::RefCounted<WebCore::AdditionalNetworkLoadMetricsForWebInspector>::deref(v13, v12);
  }

  result = v15;
  v15 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v12);
    }
  }

  return result;
}

uint64_t WebKit::NetworkContentRuleListManager::didReceiveMessage(WebKit::NetworkContentRuleListManager *this, IPC::Connection *a2, IPC::Decoder *a3)
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = *(*(this + 2) + 8);
  if (v3)
  {
    atomic_fetch_add((v3 + 144), 1u);
    v6 = *(a3 + 25);
    if (v6 > 0x1F7)
    {
      if (v6 == 504)
      {
        v25 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
        if (v26)
        {
          WebKit::NetworkContentRuleListManager::removeAllContentRuleLists(this, v25);
        }

        return WebKit::NetworkContentRuleListManager::deref(this);
      }

      if (v6 == 505)
      {
        v9 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
        if (v10)
        {
          v11 = v9;
          IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, &v37);
          if (v38 & 1) != 0 || (v34 = *a3, v35 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v36 = *(a3 + 3)) != 0) && v35 && ((*(*v36 + 16))(v36, v34), (v38))
          {
            *buf = v11;
            *&buf[8] = v37;
            buf[16] = 1;
            WebKit::NetworkContentRuleListManager::removeContentRuleList(this, v11, &buf[8]);
            if (buf[16])
            {
              v13 = *&buf[8];
              *&buf[8] = 0;
              if (v13)
              {
                if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v13, v12);
                }
              }
            }

            return WebKit::NetworkContentRuleListManager::deref(this);
          }
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (v6 == 502)
      {
        v18 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
        if (v19)
        {
          v20 = v18;
          IPC::VectorArgumentCoder<false,std::pair<WebKit::WebCompiledContentRuleListData,WTF::URL>,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a3, v19, &v37);
          if (v39 & 1) != 0 || (v31 = *a3, v32 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v33 = *(a3 + 3)) != 0) && v32 && ((*(*v33 + 16))(v33, v31), (v39))
          {
            *buf = v20;
            *&buf[8] = v37;
            v22 = v38;
            v37 = 0;
            v38 = 0;
            *&buf[16] = v22;
            v41 = 1;
            WTF::Vector<std::pair<WebKit::WebCompiledContentRuleListData,WTF::URL>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v37, v21);
            WebKit::NetworkContentRuleListManager::addContentRuleLists(this, v20, &buf[8], v23);
            if (v41)
            {
              WTF::Vector<std::pair<WebKit::WebCompiledContentRuleListData,WTF::URL>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&buf[8], v24);
            }

            return WebKit::NetworkContentRuleListManager::deref(this);
          }
        }

        goto LABEL_16;
      }

      if (v6 == 503)
      {
        v7 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
        if (v8)
        {
          WebKit::NetworkContentRuleListManager::remove(this, v7);
        }

        return WebKit::NetworkContentRuleListManager::deref(this);
      }
    }

    v14 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
    {
      if (v6 >= 0x107F)
      {
        v28 = 4223;
      }

      else
      {
        v28 = v6;
      }

      v29 = (&IPC::Detail::messageDescriptions)[3 * v28];
      v30 = *(a3 + 7);
      *buf = 136315394;
      *&buf[4] = v29;
      *&buf[12] = 2048;
      *&buf[14] = v30;
      _os_log_error_impl(&dword_19D52D000, v14, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", buf, 0x16u);
    }

LABEL_16:
    v15 = *a3;
    v16 = *(a3 + 1);
    *a3 = 0;
    *(a3 + 1) = 0;
    v17 = *(a3 + 3);
    if (v17 && v16)
    {
      (*(*v17 + 16))(v17, v15);
    }

    return WebKit::NetworkContentRuleListManager::deref(this);
  }

  result = 92;
  __break(0xC471u);
  return result;
}

uint64_t WebKit::NetworkMDNSRegister::didReceiveMessage(WebKit::NetworkMDNSRegister *this, atomic_ullong *a2, IPC::Decoder *a3)
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = *(*this + 8);
  if (v3)
  {
    ++*(v3 - 36);
    v6 = *(a3 + 25);
    if (v6 == 506)
    {
      IPC::ArgumentCoder<WebCore::ProcessQualified<WTF::UUID>,void>::decode(a3, &v38);
      if (v40)
      {
        IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, &v33);
        if (v34 & 1) != 0 || (v30 = *a3, v31 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v32 = *(a3 + 3)) != 0) && v31 && ((*(*v32 + 16))(v32, v30), (v34))
        {
          *buf = v38;
          *&buf[16] = v39;
          v8 = v33;
          v36 = v33;
          v37 = 1;
          v9 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
          if (v10)
          {
            v11 = v9;
            while (1)
            {
              v12 = *a2;
              if ((*a2 & 1) == 0)
              {
                break;
              }

              v13 = *a2;
              atomic_compare_exchange_strong_explicit(a2, &v13, v12 + 2, memory_order_relaxed, memory_order_relaxed);
              if (v13 == v12)
              {
                goto LABEL_18;
              }
            }

            WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_18:
            v18 = WTF::fastMalloc(0x18);
            *v18 = &unk_1F10EF790;
            *(v18 + 1) = v11;
            *(v18 + 2) = a2;
            v33 = v18;
            v38 = *buf;
            v39 = *&buf[16];
            WebKit::NetworkMDNSRegister::registerMDNSName(this, &v38, &v36, &v33);
            v19 = v33;
            v33 = 0;
            if (v19)
            {
              (*(*v19 + 8))(v19);
            }

            if ((v37 & 1) == 0)
            {
              return WebKit::NetworkMDNSRegister::deref(this);
            }

            v8 = v36;
          }

          v36 = 0;
          if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v8, v10);
          }

          return WebKit::NetworkMDNSRegister::deref(this);
        }
      }

      else
      {
        v27 = *a3;
        v28 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v29 = *(a3 + 3);
        if (v29 && v28)
        {
          (*(*v29 + 16))(v29, v27);
        }
      }
    }

    else
    {
      if (v6 == 507)
      {
        IPC::ArgumentCoder<std::tuple<WebCore::ProcessQualified<WTF::UUID>>,void>::decode<IPC::Decoder>(a3, buf);
        if (v36 & 1) != 0 || (v24 = *a3, v25 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v26 = *(a3 + 3)) != 0) && v25 && ((*(*v26 + 16))(v26, v24), (v36))
        {
          v38 = *buf;
          v39 = *&buf[16];
          WebKit::NetworkMDNSRegister::unregisterMDNSNames(this, &v38);
        }

        return WebKit::NetworkMDNSRegister::deref(this);
      }

      v14 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        if (v6 >= 0x107F)
        {
          v21 = 4223;
        }

        else
        {
          v21 = v6;
        }

        v22 = (&IPC::Detail::messageDescriptions)[3 * v21];
        v23 = *(a3 + 7);
        *buf = 136315394;
        *&buf[4] = v22;
        *&buf[12] = 2048;
        *&buf[14] = v23;
        _os_log_error_impl(&dword_19D52D000, v14, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", buf, 0x16u);
      }
    }

    v15 = *a3;
    v16 = *(a3 + 1);
    *a3 = 0;
    *(a3 + 1) = 0;
    v17 = *(a3 + 3);
    if (v17 && v16)
    {
      (*(*v17 + 16))(v17, v15);
    }

    return WebKit::NetworkMDNSRegister::deref(this);
  }

  result = 92;
  __break(0xC471u);
  return result;
}

void WebKit::NetworkProcessConnection::didReceiveMessage(WebKit::NetworkProcessConnection *this, IPC::Connection *a2, IPC::Decoder *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  ++*(this + 5);
  if (!v4 & v3)
  {
    if ((WebKit::NetworkProcessConnection::dispatchMessage(this, a2, a3) & 1) == 0)
    {
      v9 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        v10 = *(a3 + 25);
        if (v10 >= 0x107F)
        {
          v10 = 4223;
        }

        v11 = (&IPC::Detail::messageDescriptions)[3 * v10];
        v12 = *(a3 + 7);
        *buf = 136315394;
        v19 = v11;
        v20 = 2048;
        v21 = v12;
        _os_log_error_impl(&dword_19D52D000, v9, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", buf, 0x16u);
      }

      IPC::Decoder::markInvalid(a3);
    }
  }

  else
  {
    switch(*(a3 + 25))
    {
      case 0x1FC:
        WebKit::NetworkProcessConnection::allCookiesDeleted(this, a2);
        goto LABEL_4;
      case 0x1FD:
        IPC::handleMessage<Messages::NetworkProcessConnection::BroadcastConsoleMessage,IPC::Connection,WebKit::NetworkProcessConnection,WebKit::NetworkProcessConnection,void ()(JSC::MessageSource,JSC::MessageLevel,WTF::String const&)>(a3, this);
        goto LABEL_4;
      case 0x1FE:
        IPC::handleMessageAsync<Messages::NetworkProcessConnection::ConnectToRTCDataChannelRemoteSource,IPC::Connection,WebKit::NetworkProcessConnection,WebKit::NetworkProcessConnection,void ()(WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::CompletionHandler<void ()(std::optional<BOOL>)> &&)>(a2, a3, this);
        goto LABEL_4;
      case 0x1FF:
        v8 = IPC::Decoder::decode<std::tuple<WebCore::HTTPCookieAcceptPolicy>>(a3);
        if ((v8 & 0x100) != 0)
        {
          WebKit::NetworkProcessConnection::cookieAcceptPolicyChanged(this, v8);
        }

        goto LABEL_4;
      case 0x200:
        IPC::handleMessage<Messages::NetworkProcessConnection::CookiesAdded,IPC::Connection,WebKit::NetworkProcessConnection,WebKit::NetworkProcessConnection,void ()(WTF::String const&,WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>(a3, this);
        goto LABEL_4;
      case 0x201:
        IPC::handleMessage<Messages::NetworkProcessConnection::CookiesDeleted,IPC::Connection,WebKit::NetworkProcessConnection,WebKit::NetworkProcessConnection,void ()(WTF::String const&,WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>(a3, this);
        goto LABEL_4;
      case 0x202:
        IPC::ArgumentCoder<WebCore::ResourceRequest,void>::decode(a3, v13);
        if (v14)
        {
          goto LABEL_8;
        }

        break;
      case 0x203:
        IPC::handleMessage<Messages::NetworkProcessConnection::DidFinishPingLoad,IPC::Connection,WebKit::NetworkProcessConnection,WebKit::NetworkProcessConnection,void ()(WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ResourceError &&,WebCore::ResourceResponse &&)>(a3, this);
        goto LABEL_4;
      case 0x204:
        IPC::handleMessage<Messages::NetworkProcessConnection::DidFinishPreconnection,IPC::Connection,WebKit::NetworkProcessConnection,WebKit::NetworkProcessConnection,void ()(WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ResourceError &&)>(a3, this);
        goto LABEL_4;
      case 0x205:
        IPC::handleMessage<Messages::NetworkProcessConnection::LoadCancelledDownloadRedirectRequestInFrame,IPC::Connection,WebKit::NetworkProcessConnection,WebKit::NetworkProcessConnection,void ()(WebCore::ResourceRequest &&,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WebCore::ResourceRequest &&::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF<WebCore::PageIdentifierType,WebCore::ResourceRequest &&::ObjectIdentifierMainThreadAccessTraits,unsigned long long>)>(a3, this);
        goto LABEL_4;
      case 0x206:
        IPC::Decoder::decode<std::tuple<WebCore::MessagePortIdentifier>>(buf, a3);
        if (BYTE2(v21) == 1)
        {
          WebKit::NetworkProcessConnection::messagesAvailableForPort(this, buf);
        }

        goto LABEL_4;
      case 0x207:
        v7 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
        if ((v7 & 0x100) != 0)
        {
          WebKit::NetworkProcessConnection::setOnLineState(this, v7 & 1);
        }

        goto LABEL_4;
      case 0x208:
        WebKit::NetworkProcessConnection::updateCachedCookiesEnabled(this, a2);
        goto LABEL_4;
      default:
        JUMPOUT(0);
    }

    while (1)
    {
      IPC::Decoder::markInvalid(a3);
      if ((v14 & 1) == 0)
      {
        buf[0] = 0;
        v23 = 0;
        goto LABEL_14;
      }

LABEL_8:
      IPC::ArgumentCoder<WebCore::ShareableResourceHandle,void>::decode(a3, v15);
      if ((v17 & 1) == 0)
      {
        IPC::Decoder::markInvalid(a3);
        if ((v17 & 1) == 0)
        {
          buf[0] = 0;
          v23 = 0;
          goto LABEL_12;
        }
      }

      if (v14)
      {
        break;
      }

      __break(1u);
    }

    std::__tuple_leaf<0ul,WebCore::ResourceRequest,false>::__tuple_leaf[abi:sn200100]<WebCore::ResourceRequest,0>(buf, v13);
    WTF::MachSendRight::MachSendRight();
    *&v22[8] = v16;
    v23 = 1;
    if (v17)
    {
      WTF::MachSendRight::~MachSendRight(v15);
    }

LABEL_12:
    if (v14)
    {
      WebCore::ResourceRequest::~ResourceRequest(v13);
    }

LABEL_14:
    if (v23 & 1) != 0 || (IPC::Decoder::markInvalid(a3), (v23))
    {
      WebKit::NetworkProcessConnection::didCacheResource(this);
      if (v23)
      {
        WTF::MachSendRight::~MachSendRight(v22);
        WebCore::ResourceRequest::~ResourceRequest(buf);
      }
    }
  }

LABEL_4:
  if (*(this + 5) == 1)
  {
    (*(*this + 24))(this);
  }

  else
  {
    --*(this + 5);
  }
}

void IPC::handleMessage<Messages::NetworkProcessConnection::DidFinishPingLoad,IPC::Connection,WebKit::NetworkProcessConnection,WebKit::NetworkProcessConnection,void ()(WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ResourceError &&,WebCore::ResourceResponse &&)>(IPC::Decoder *a1, uint64_t a2)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if ((v5 & 1) == 0)
  {
    LOBYTE(v36) = 0;
    v68 = 0;
    goto LABEL_39;
  }

  v6 = v4;
  IPC::Decoder::decode<WebCore::ResourceError>(a1, &v69);
  if (v77 == 1)
  {
    IPC::ArgumentCoder<WebCore::ResourceResponse,void>::decode(a1, &v78);
    if ((v101 & 1) == 0)
    {
      goto LABEL_46;
    }

    while ((v77 & 1) == 0)
    {
      __break(1u);
LABEL_46:
      v7 = *a1;
      v34 = *(a1 + 1);
      *a1 = 0;
      *(a1 + 1) = 0;
      v35 = *(a1 + 3);
      if (v35)
      {
        if (v34)
        {
          (*(*v35 + 16))(v35, v7);
          if (v101)
          {
            continue;
          }
        }
      }

      LOBYTE(v36) = 0;
      v68 = 0;
      goto LABEL_9;
    }

    v36 = v6;
    v8 = v69;
    v69 = 0u;
    *v37 = v8;
    v38 = v70;
    v39 = v71;
    LODWORD(v70) = v70 & 0xFFFFFFFE;
    v40 = v72;
    v41 = v73;
    v42 = v74;
    v9 = v75;
    v72 = 0;
    v75 = 0;
    v43 = v9;
    v44 = v76;
    v10 = v78;
    v11 = v81;
    v78 = 0;
    v45 = v10;
    v46 = v79;
    v47 = v80;
    LODWORD(v79) = v79 & 0xFFFFFFFE;
    v81 = 0;
    v48 = v11;
    v49 = v82;
    v12 = v83;
    v83 = 0u;
    v13 = v84;
    v84 = 0u;
    v50 = v12;
    v51 = v13;
    v14 = v85;
    v85 = 0;
    v52 = v14;
    v15 = v86;
    v86 = 0;
    v53 = v15;
    v16 = v87;
    v87 = 0;
    v54 = v16;
    v17 = v88;
    v88 = 0;
    v55 = v17;
    LOBYTE(v56) = 0;
    v57 = 0;
    if (v90 == 1)
    {
      v29 = v89;
      v89 = 0;
      v56 = v29;
      v57 = 1;
    }

    v58 = v91;
    v59 = v92;
    v60 = v93;
    *(v65 + 11) = *(v98 + 11);
    v93 = 0;
    v63 = v96;
    v64 = v97;
    v65[0] = v98[0];
    v61 = v94;
    v62 = v95;
    cf = v99;
    v67 = v100;
    v68 = 1;
    if (v101)
    {
      v99 = 0;
      WebCore::ResourceResponseBase::~ResourceResponseBase(&v78, v7);
    }

LABEL_9:
    if (v77)
    {
      v18 = v75;
      v75 = 0;
      if (v18)
      {
        CFRelease(v18);
      }

      v19 = v72;
      v72 = 0;
      if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v19, v7);
      }

      v20 = *(&v69 + 1);
      *(&v69 + 1) = 0;
      if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v20, v7);
      }

      v21 = v69;
      *&v69 = 0;
      if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v21, v7);
      }
    }
  }

  else
  {
    LOBYTE(v36) = 0;
    v68 = 0;
  }

  if ((v68 & 1) == 0)
  {
LABEL_39:
    v30 = *a1;
    v31 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v32 = *(a1 + 3);
    if (v32)
    {
      v33 = v31 == 0;
    }

    else
    {
      v33 = 1;
    }

    if (v33)
    {
      return;
    }

    (*(*v32 + 16))(v32, v30);
    if ((v68 & 1) == 0)
    {
      return;
    }
  }

  WebKit::NetworkProcessConnection::didFinishPingLoad(a2, v36, v37, &v45);
  if (v68)
  {
    v23 = cf;
    cf = 0;
    if (v23)
    {
      CFRelease(v23);
    }

    WebCore::ResourceResponseBase::~ResourceResponseBase(&v45, v22);
    v25 = v43;
    v43 = 0;
    if (v25)
    {
      CFRelease(v25);
    }

    v26 = v40;
    v40 = 0;
    if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v26, v24);
    }

    v27 = v37[1];
    v37[1] = 0;
    if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v27, v24);
    }

    v28 = v37[0];
    v37[0] = 0;
    if (v28)
    {
      if (atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v28, v24);
      }
    }
  }
}

uint64_t IPC::handleMessage<Messages::NetworkProcessConnection::DidFinishPreconnection,IPC::Connection,WebKit::NetworkProcessConnection,WebKit::NetworkProcessConnection,void ()(WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ResourceError &&)>(IPC::Decoder *a1, WebKit::WebProcess *a2)
{
  IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ResourceError>>(&v5, a1);
  if (v6[80] == 1)
  {
    WebKit::NetworkProcessConnection::didFinishPreconnection(a2, v5, v6);
  }

  return std::optional<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ResourceError>>::~optional(&v5, v3);
}

WTF::StringImpl *IPC::handleMessage<Messages::NetworkProcessConnection::CookiesAdded,IPC::Connection,WebKit::NetworkProcessConnection,WebKit::NetworkProcessConnection,void ()(WTF::String const&,WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>(IPC::Decoder *a1, uint64_t a2)
{
  result = IPC::Decoder::decode<std::tuple<WTF::String,WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(&v6, a1);
  if (v8 == 1)
  {
    result = WebKit::NetworkProcessConnection::cookiesAdded(a2, &v6, v7);
    if (v8)
    {
      WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v7, v4);
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
  }

  return result;
}

WTF::StringImpl *IPC::handleMessage<Messages::NetworkProcessConnection::CookiesDeleted,IPC::Connection,WebKit::NetworkProcessConnection,WebKit::NetworkProcessConnection,void ()(WTF::String const&,WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>(IPC::Decoder *a1, uint64_t a2)
{
  result = IPC::Decoder::decode<std::tuple<WTF::String,WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(&v6, a1);
  if (v8 == 1)
  {
    result = WebKit::NetworkProcessConnection::cookiesDeleted(a2, &v6, v7);
    if (v8)
    {
      WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v7, v4);
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
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::NetworkProcessConnection::ConnectToRTCDataChannelRemoteSource,IPC::Connection,WebKit::NetworkProcessConnection,WebKit::NetworkProcessConnection,void ()(WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::CompletionHandler<void ()(std::optional<BOOL>)> &&)>(atomic_ullong *a1, uint64_t *a2, WebKit::RTCDataChannelRemoteManager *a3)
{
  result = IPC::Decoder::decode<std::tuple<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>>(v13, a2);
  if (v14 == 1)
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
      v11 = WTF::fastMalloc(0x18);
      *v11 = &unk_1F10EF7B8;
      v11[1] = v8;
      v11[2] = a1;
      v12 = v11;
      WebKit::NetworkProcessConnection::connectToRTCDataChannelRemoteSource(a3, v13[0], v13[1], v13[2], v13[3], &v12);
      result = v12;
      v12 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

void IPC::handleMessage<Messages::NetworkProcessConnection::BroadcastConsoleMessage,IPC::Connection,WebKit::NetworkProcessConnection,WebKit::NetworkProcessConnection,void ()(JSC::MessageSource,JSC::MessageLevel,WTF::String const&)>(IPC::Decoder *a1, uint64_t a2)
{
  v4 = IPC::Decoder::decode<JSC::MessageSource>(a1);
  if (v4 & 0x100) != 0 && (v5 = v4, v6 = IPC::Decoder::decode<JSC::MessageLevel>(a1), (v6 & 0x100) != 0) && ((v7 = v6, IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a1, &v19), (v20) || (v10 = *a1, v11 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (v12 = *(a1 + 3)) != 0) && v11 && ((*(*v12 + 16))(v12, v10), (v20)))
  {
    v17 = v19;
    v18 = 1;
    WebKit::NetworkProcessConnection::broadcastConsoleMessage(a2, v5, v7, &v17);
    if (v18)
    {
      v9 = v17;
      v17 = 0;
      if (v9)
      {
        if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v9, v8);
        }
      }
    }
  }

  else
  {
    v13 = *a1;
    v14 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v15 = *(a1 + 3);
    if (v15)
    {
      v16 = v14 == 0;
    }

    else
    {
      v16 = 1;
    }

    if (!v16)
    {
      (*(*v15 + 16))(v15, v13);
    }
  }
}

void IPC::handleMessage<Messages::NetworkProcessConnection::LoadCancelledDownloadRedirectRequestInFrame,IPC::Connection,WebKit::NetworkProcessConnection,WebKit::NetworkProcessConnection,void ()(WebCore::ResourceRequest &&,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WebCore::ResourceRequest &&::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF<WebCore::PageIdentifierType,WebCore::ResourceRequest &&::ObjectIdentifierMainThreadAccessTraits,unsigned long long>)>(IPC::Decoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WebCore::ResourceRequest,void>::decode(a1, v20);
  if (v21)
  {
    while (1)
    {
      v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
      if ((v5 & 1) == 0)
      {
        break;
      }

      v6 = v4;
      v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
      if ((v8 & 1) == 0)
      {
        break;
      }

      if (v21)
      {
        v9 = v7;
        std::__tuple_leaf<0ul,WebCore::ResourceRequest,false>::__tuple_leaf[abi:sn200100]<WebCore::ResourceRequest,0>(v16, v20);
        v17 = v6;
        v18 = v9;
        v10 = 1;
        goto LABEL_7;
      }

      __break(1u);
LABEL_24:
      (*(*v7 + 16))(v7, v8);
      if ((v21 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    v10 = 0;
    LOBYTE(v16[0]) = 0;
LABEL_7:
    v19 = v10;
    if (v21)
    {
      WebCore::ResourceRequest::~ResourceRequest(v20);
      v10 = v19;
    }

    if (v10)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v8 = *a1;
    v11 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v7 = *(a1 + 3);
    if (v7)
    {
      v12 = v11 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (!v12)
    {
      goto LABEL_24;
    }

LABEL_18:
    LOBYTE(v16[0]) = 0;
    v19 = 0;
  }

  v13 = *a1;
  v14 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  v15 = *(a1 + 3);
  if (v15)
  {
    if (v14)
    {
      (*(*v15 + 16))(v15, v13);
      if (v19)
      {
LABEL_10:
        WebKit::NetworkProcessConnection::loadCancelledDownloadRedirectRequestInFrame(a2, v16, v17, v18);
        if (v19)
        {
          WebCore::ResourceRequest::~ResourceRequest(v16);
        }
      }
    }
  }
}

uint64_t WebKit::NetworkProcessConnection::didReceiveSyncMessage(_DWORD *a1, void *a2, uint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  ++a1[5];
  v7 = WebKit::NetworkProcessConnection::dispatchSyncMessage(a1, a2, a3);
  if ((v7 & 1) == 0)
  {
    v8 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a3 + 50);
      if (v11 >= 0x107F)
      {
        v11 = 4223;
      }

      v12 = (&IPC::Detail::messageDescriptions)[3 * v11];
      v13 = *(a3 + 56);
      v14 = 136315394;
      v15 = v12;
      v16 = 2048;
      v17 = v13;
      _os_log_error_impl(&dword_19D52D000, v8, OS_LOG_TYPE_ERROR, "Unhandled synchronous message %s to %llu", &v14, 0x16u);
    }

    v5 = *a3;
    v6 = *(a3 + 8);
    *a3 = 0;
    *(a3 + 8) = 0;
    v9 = *(a3 + 24);
    if (v9 && v6)
    {
      (*(*v9 + 16))(v9, v5);
    }
  }

  if (a1[5] == 1)
  {
    (*(*a1 + 24))(a1, v5, v6);
  }

  else
  {
    --a1[5];
  }

  return v7;
}

uint64_t WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::NetworkLoadInformation>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkLoadInformation>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::NetworkLoadInformation>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkLoadInformation>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t a2)
{
  if (a2 == -1 || !a2)
  {
    __break(0xC471u);
    JUMPOUT(0x19D9B3108);
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

_DWORD *WTF::Vector<WebCore::NetworkTransactionInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(_DWORD *a1, WTF::StringImpl *a2)
{
  v3 = a1[3];
  if (v3)
  {
    v6 = (*a1 + 592);
    v7 = 600 * v3;
    do
    {
      v8 = *v6;
      *v6 = 0;
      if (v8)
      {
        WTF::RefCounted<WebCore::AdditionalNetworkLoadMetricsForWebInspector>::deref(v8, a2);
      }

      v9 = *(v6 - 4);
      *(v6 - 4) = 0;
      if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v9, a2);
      }

      v10 = *(v6 - 17);
      *(v6 - 17) = 0;
      if (v10)
      {
        CFRelease(v10);
      }

      WebCore::ResourceResponseBase::~ResourceResponseBase((v6 - 48), a2);
      WebCore::ResourceRequest::~ResourceRequest((v6 - 73));
      v6 += 75;
      v7 -= 600;
    }

    while (v7);
  }

  v4 = *a1;
  if (*a1)
  {
    *a1 = 0;
    a1[2] = 0;
    WTF::fastFree(v4, a2);
  }

  return a1;
}

WTF::StringImpl **WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::NetworkLoadInformation>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::NetworkLoadInformation>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::NetworkLoadInformation>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkLoadInformation>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(uint64_t *a1, uint64_t a2)
{
  *a2 = -1;
  result = std::unique_ptr<WebCore::NetworkLoadInformation>::reset[abi:sn200100]((a2 + 8), 0);
  v4 = *a1;
  v5 = vadd_s32(*(*a1 - 16), 0xFFFFFFFF00000001);
  *(v4 - 16) = v5;
  v6 = *(v4 - 4);
  if (6 * v5.i32[1] < v6 && v6 >= 9)
  {

    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::NetworkLoadInformation>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::NetworkLoadInformation>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::NetworkLoadInformation>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkLoadInformation>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v6 >> 1, 0);
  }

  return result;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::NetworkLoadInformation>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::NetworkLoadInformation>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::NetworkLoadInformation>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkLoadInformation>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t *a3)
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
          std::unique_ptr<WebCore::NetworkLoadInformation>::reset[abi:sn200100]((v24 + 8), 0);
          *v24 = *v13;
          v25 = v13[1];
          v13[1] = 0;
          *(v24 + 8) = v25;
          std::unique_ptr<WebCore::NetworkLoadInformation>::reset[abi:sn200100](v13 + 1, 0);
          if (v13 == a3)
          {
            v12 = v24;
          }
        }

        else
        {
          std::unique_ptr<WebCore::NetworkLoadInformation>::reset[abi:sn200100](v13 + 1, 0);
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

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::NetworkLoadInformation>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::NetworkLoadInformation>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::NetworkLoadInformation>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkLoadInformation>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::NetworkLoadInformation>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkLoadInformation>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t *a2)
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
    JUMPOUT(0x19D9B34DCLL);
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

WTF::StringImpl **std::unique_ptr<WebCore::NetworkLoadInformation>::reset[abi:sn200100](WTF::StringImpl **result, WTF::StringImpl *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    WTF::Vector<WebCore::NetworkTransactionInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2 + 148, a2);
    v4 = *(v2 + 73);
    *(v2 + 73) = 0;
    if (v4)
    {
      WTF::RefCounted<WebCore::AdditionalNetworkLoadMetricsForWebInspector>::deref(v4, v3);
    }

    v5 = *(v2 + 69);
    *(v2 + 69) = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, v3);
    }

    v6 = *(v2 + 56);
    *(v2 + 56) = 0;
    if (v6)
    {
      CFRelease(v6);
    }

    WebCore::ResourceResponseBase::~ResourceResponseBase((v2 + 200), v3);
    WebCore::ResourceRequest::~ResourceRequest(v2);

    return WTF::fastFree(v7, v8);
  }

  return result;
}

void IPC::Decoder::decode<WebKit::NetworkResourceLoadParameters>(uint64_t a1, IPC::Decoder *a2)
{
  IPC::ArgumentCoder<WebKit::NetworkResourceLoadParameters,void>::decode();
  if ((*(a1 + 4048) & 1) == 0)
  {

    IPC::Decoder::markInvalid(a2);
  }
}

uint64_t WebCore::PolicyContainer::PolicyContainer(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  WTF::VectorBuffer<unsigned short,0ul,WTF::FastMalloc>::adopt(a1, a2);
  v4 = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 16) = v4;
  *(a1 + 24) = *(a2 + 24);
  v5 = *(a2 + 32);
  *(a2 + 32) = 0;
  *(a1 + 32) = v5;
  v6 = *(a2 + 40);
  *(a2 + 40) = 0;
  *(a1 + 40) = v6;
  *(a1 + 48) = *(a2 + 48);
  v7 = *(a2 + 56);
  *(a2 + 56) = 0;
  *(a1 + 56) = v7;
  v8 = *(a2 + 64);
  *(a2 + 64) = 0;
  *(a1 + 64) = v8;
  *(a1 + 72) = *(a2 + 72);
  return a1;
}

void IPC::Decoder::decode<std::tuple<WebKit::NetworkResourceLoadParameters>>(_BYTE *a1, IPC::Decoder *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  IPC::Decoder::decode<WebKit::NetworkResourceLoadParameters>(v9, a2);
  if (v10 == 1)
  {
    WebKit::NetworkResourceLoadParameters::NetworkResourceLoadParameters(a1, v9);
    v5 = v10;
    a1[4048] = 1;
    if ((v5 & 1) == 0)
    {
      return;
    }

    WebKit::NetworkResourceLoadParameters::~NetworkResourceLoadParameters(v9, v4);
    if (a1[4048])
    {
      return;
    }
  }

  else
  {
    *a1 = 0;
    a1[4048] = 0;
  }

  v6 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  v7 = *(a2 + 3);
  if (v7 && v6)
  {
    v8 = *(*v7 + 16);

    v8();
  }
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29NetworkConnectionToWebProcess10SendH2PingENS2_10ConnectionEN6WebKit29NetworkConnectionToWebProcessES9_FvONS8_29NetworkResourceLoadParametersEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINS_7SecondsEN7WebCore13ResourceErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSK_EED1Ev(void *a1)
{
  *a1 = &unk_1F10EF150;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29NetworkConnectionToWebProcess10SendH2PingENS2_10ConnectionEN6WebKit29NetworkConnectionToWebProcessES9_FvONS8_29NetworkResourceLoadParametersEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINS_7SecondsEN7WebCore13ResourceErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSK_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EF150;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29NetworkConnectionToWebProcess10SendH2PingENS2_10ConnectionEN6WebKit29NetworkConnectionToWebProcessES9_FvONS8_29NetworkResourceLoadParametersEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINS_7SecondsEN7WebCore13ResourceErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSK_EE4callESK_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3267;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError>,void>::encode<IPC::Encoder>(v5, a2);
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

uint64_t IPC::Decoder::decode<std::optional<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  result = IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(a1, a2);
  if ((a2[16] & 1) == 0)
  {

    return IPC::Decoder::markInvalid(a1);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  result = IPC::Decoder::decode<BOOL>(a1);
  if ((result & 0x100) == 0)
  {
    goto LABEL_5;
  }

  if ((result & 1) == 0)
  {
    *a2 = 0;
    a2[8] = 0;
    v6 = 1;
    goto LABEL_6;
  }

  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if (v5)
  {
    *a2 = result;
    v6 = 1;
    a2[8] = 1;
  }

  else
  {
LABEL_5:
    v6 = 0;
    *a2 = 0;
  }

LABEL_6:
  a2[16] = v6;
  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29NetworkConnectionToWebProcess22IsResourceLoadFinishedENS2_10ConnectionEN6WebKit29NetworkConnectionToWebProcessES9_FvNS_23ObjectIdentifierGenericIN7WebCore28ResourceLoaderIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED1Ev(void *a1)
{
  *a1 = &unk_1F10EF178;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29NetworkConnectionToWebProcess22IsResourceLoadFinishedENS2_10ConnectionEN6WebKit29NetworkConnectionToWebProcessES9_FvNS_23ObjectIdentifierGenericIN7WebCore28ResourceLoaderIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EF178;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29NetworkConnectionToWebProcess22IsResourceLoadFinishedENS2_10ConnectionEN6WebKit29NetworkConnectionToWebProcessES9_FvNS_23ObjectIdentifierGenericIN7WebCore28ResourceLoaderIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEE4callEb(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3257;
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

uint64_t IPC::Decoder::decode<std::optional<WebCore::SecurityOriginData>>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<std::optional<WebCore::SecurityOriginData>,void>::decode<IPC::Decoder>(a1, a2);
  if ((*(a2 + 40) & 1) == 0)
  {

    return IPC::Decoder::markInvalid(a1);
  }

  return result;
}

uint64_t std::optional<std::optional<WebCore::SecurityOriginData>>::~optional(uint64_t a1, WTF::StringImpl *a2)
{
  if (*(a1 + 40) == 1 && *(a1 + 32) == 1)
  {
    if (!*(a1 + 24))
    {
      v3 = *(a1 + 8);
      *(a1 + 8) = 0;
      if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v3, a2);
      }

      v4 = *a1;
      *a1 = 0;
      if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v4, a2);
      }
    }

    *(a1 + 24) = -1;
  }

  return a1;
}

uint64_t IPC::ArgumentCoder<std::optional<WebCore::SecurityOriginData>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v13 = *MEMORY[0x1E69E9840];
  result = IPC::Decoder::decode<BOOL>(a1);
  if ((result & 0x100) == 0)
  {
    *a2 = 0;
    *(a2 + 40) = 0;
    return result;
  }

  if ((result & 1) == 0)
  {
    LOBYTE(v9) = 0;
    v12 = 0;
    *a2 = 0;
    *(a2 + 32) = 0;
    v8 = 1;
    goto LABEL_9;
  }

  IPC::Decoder::decode<WebCore::SecurityOriginData>(a1, &v9);
  v5 = v12;
  *a2 = 0;
  if (v5 != 1)
  {
    v8 = 0;
    goto LABEL_9;
  }

  *(a2 + 24) = -1;
  v6 = v11;
  if (v11)
  {
    if (v11 == 255)
    {
      goto LABEL_7;
    }

    *a2 = v9;
  }

  else
  {
    v7 = v9;
    v9 = 0uLL;
    *a2 = v7;
    *(a2 + 16) = v10;
  }

  *(a2 + 24) = v6;
LABEL_7:
  v8 = 1;
  *(a2 + 32) = 1;
LABEL_9:
  *(a2 + 40) = v8;
  return std::optional<WebCore::SecurityOriginData>::~optional(&v9);
}

void IPC::Decoder::decode<std::tuple<WTF::URL,WTF::URL,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(uint64_t a1, IPC::Decoder *a2)
{
  IPC::ArgumentCoder<std::tuple<WTF::URL,WTF::URL,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(a1, a2);
  if ((*(a1 + 120) & 1) == 0)
  {

    IPC::Decoder::markInvalid(a2);
  }
}

void IPC::ArgumentCoder<std::tuple<WTF::URL,WTF::URL,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(uint64_t a1, IPC::Decoder *a2)
{
  IPC::ArgumentCoder<WTF::URL,void>::decode(a2, v11);
  if (v12 & 1) != 0 || (IPC::Decoder::markInvalid(a2), (v12))
  {
    IPC::ArgumentCoder<WTF::URL,void>::decode(a2, v13);
    if (v14 & 1) != 0 || (IPC::Decoder::markInvalid(a2), (v14))
    {
      IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(a2, &v15);
      if (v16 & 1) != 0 || (IPC::Decoder::markInvalid(a2), (v16))
      {
        IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(a2, &v17);
        if ((v18 & 1) == 0)
        {
          goto LABEL_22;
        }

        do
        {
          v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
          if ((v5 & 1) == 0)
          {
            break;
          }

          if (v12 & 1) != 0 && (v14 & 1) != 0 && (v16 & 1) != 0 && (v18)
          {
            v6 = v4;
            WTF::URL::URL(a1, v11);
            WTF::URL::URL(a1 + 40, v13);
            v7 = v17;
            *(a1 + 80) = v15;
            *(a1 + 96) = v7;
            *(a1 + 112) = v6;
            v8 = 1;
            goto LABEL_11;
          }

          __break(1u);
LABEL_22:
          IPC::Decoder::markInvalid(a2);
        }

        while ((v18 & 1) != 0);
        v8 = 0;
        *a1 = 0;
LABEL_11:
        *(a1 + 120) = v8;
      }

      else
      {
        *a1 = 0;
        *(a1 + 120) = 0;
      }

      if (v14)
      {
        v9 = v13[0];
        v13[0] = 0;
        if (v9)
        {
          if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v9, v5);
          }
        }
      }
    }

    else
    {
      *a1 = 0;
      *(a1 + 120) = 0;
    }

    if (v12)
    {
      v10 = v11[0];
      v11[0] = 0;
      if (v10)
      {
        if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v10, v5);
        }
      }
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 120) = 0;
  }
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29NetworkConnectionToWebProcess14CookiesEnabledENS2_10ConnectionEN6WebKit29NetworkConnectionToWebProcessES9_FvRKNS_3URLESC_NSt3__18optionalINS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEENSE_INSF_INSG_18PageIdentifierTypeESJ_yEEEENSF_INS8_26WebPageProxyIdentifierTypeESJ_yEEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED1Ev(void *a1)
{
  *a1 = &unk_1F10EF1A0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29NetworkConnectionToWebProcess14CookiesEnabledENS2_10ConnectionEN6WebKit29NetworkConnectionToWebProcessES9_FvRKNS_3URLESC_NSt3__18optionalINS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEENSE_INSF_INSG_18PageIdentifierTypeESJ_yEEEENSF_INS8_26WebPageProxyIdentifierTypeESJ_yEEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EF1A0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29NetworkConnectionToWebProcess14CookiesEnabledENS2_10ConnectionEN6WebKit29NetworkConnectionToWebProcessES9_FvRKNS_3URLESC_NSt3__18optionalINS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEENSE_INSF_INSG_18PageIdentifierTypeESJ_yEEEENSF_INS8_26WebPageProxyIdentifierTypeESJ_yEEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEE4callEb(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3248;
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29NetworkConnectionToWebProcess12DeleteCookieENS2_10ConnectionEN6WebKit29NetworkConnectionToWebProcessES9_FvRKNS_3URLESC_RKNS_6StringEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10EF1C8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29NetworkConnectionToWebProcess12DeleteCookieENS2_10ConnectionEN6WebKit29NetworkConnectionToWebProcessES9_FvRKNS_3URLESC_RKNS_6StringEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EF1C8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29NetworkConnectionToWebProcess12DeleteCookieENS2_10ConnectionEN6WebKit29NetworkConnectionToWebProcessES9_FvRKNS_3URLESC_RKNS_6StringEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3251;
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29NetworkConnectionToWebProcess18CookiesForDOMAsyncENS2_10ConnectionEN6WebKit29NetworkConnectionToWebProcessES9_FvRKNS_3URLERKN7WebCore12SameSiteInfoESC_NSt3__18optionalINS_23ObjectIdentifierGenericINSD_19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEENSI_INSJ_INSD_18PageIdentifierTypeESM_yEEEENSD_20IncludeSecureCookiesEONSD_21CookieStoreGetOptionsENSI_INSJ_INS8_26WebPageProxyIdentifierTypeESM_yEEEEONS_17CompletionHandlerIFvONSI_INS_6VectorINSD_6CookieELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJS15_EED1Ev(void *a1)
{
  *a1 = &unk_1F10EF1F0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29NetworkConnectionToWebProcess18CookiesForDOMAsyncENS2_10ConnectionEN6WebKit29NetworkConnectionToWebProcessES9_FvRKNS_3URLERKN7WebCore12SameSiteInfoESC_NSt3__18optionalINS_23ObjectIdentifierGenericINSD_19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEENSI_INSJ_INSD_18PageIdentifierTypeESM_yEEEENSD_20IncludeSecureCookiesEONSD_21CookieStoreGetOptionsENSI_INSJ_INS8_26WebPageProxyIdentifierTypeESM_yEEEEONS_17CompletionHandlerIFvONSI_INS_6VectorINSD_6CookieELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJS15_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EF1F0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29NetworkConnectionToWebProcess18CookiesForDOMAsyncENS2_10ConnectionEN6WebKit29NetworkConnectionToWebProcessES9_FvRKNS_3URLERKN7WebCore12SameSiteInfoESC_NSt3__18optionalINS_23ObjectIdentifierGenericINSD_19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEENSI_INSJ_INSD_18PageIdentifierTypeESM_yEEEENSD_20IncludeSecureCookiesEONSD_21CookieStoreGetOptionsENSI_INSJ_INS8_26WebPageProxyIdentifierTypeESM_yEEEEONS_17CompletionHandlerIFvONSI_INS_6VectorINSD_6CookieELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJS15_EE4callES15_(uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3249;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v12 = v5;
  LOBYTE(v4) = a2[16];
  v6 = IPC::Encoder::grow(v5, 1uLL, 1);
  if (v4)
  {
    if (v7)
    {
      *v6 = 1;
      if (a2[16])
      {
        IPC::VectorArgumentCoder<false,WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v5, a2);
        goto LABEL_7;
      }

      std::__throw_bad_optional_access[abi:sn200100]();
    }

LABEL_11:
    __break(0xC471u);
    JUMPOUT(0x19D9B4344);
  }

  if (!v7)
  {
    goto LABEL_11;
  }

  *v6 = 0;
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29NetworkConnectionToWebProcess21SetCookieFromDOMAsyncENS2_10ConnectionEN6WebKit29NetworkConnectionToWebProcessES9_FvRKNS_3URLERKN7WebCore12SameSiteInfoESC_NSt3__18optionalINS_23ObjectIdentifierGenericINSD_19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEENSI_INSJ_INSD_18PageIdentifierTypeESM_yEEEEONSD_6CookieENSD_29RequiresScriptTrackingPrivacyENSI_INSJ_INS8_26WebPageProxyIdentifierTypeESM_yEEEEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED1Ev(void *a1)
{
  *a1 = &unk_1F10EF218;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29NetworkConnectionToWebProcess21SetCookieFromDOMAsyncENS2_10ConnectionEN6WebKit29NetworkConnectionToWebProcessES9_FvRKNS_3URLERKN7WebCore12SameSiteInfoESC_NSt3__18optionalINS_23ObjectIdentifierGenericINSD_19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEENSI_INSJ_INSD_18PageIdentifierTypeESM_yEEEEONSD_6CookieENSD_29RequiresScriptTrackingPrivacyENSI_INSJ_INS8_26WebPageProxyIdentifierTypeESM_yEEEEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EF218;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29NetworkConnectionToWebProcess21SetCookieFromDOMAsyncENS2_10ConnectionEN6WebKit29NetworkConnectionToWebProcessES9_FvRKNS_3URLERKN7WebCore12SameSiteInfoESC_NSt3__18optionalINS_23ObjectIdentifierGenericINSD_19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEENSI_INSJ_INSD_18PageIdentifierTypeESM_yEEEEONSD_6CookieENSD_29RequiresScriptTrackingPrivacyENSI_INSJ_INS8_26WebPageProxyIdentifierTypeESM_yEEEEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEE4callEb(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3268;
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29NetworkConnectionToWebProcess36SubscribeToCookieChangeNotificationsENS2_10ConnectionEN6WebKit29NetworkConnectionToWebProcessES9_FvRKNS_3URLESC_NS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSD_INSE_18PageIdentifierTypeESH_yEENSD_INS8_26WebPageProxyIdentifierTypeESH_yEEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED1Ev(void *a1)
{
  *a1 = &unk_1F10EF240;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29NetworkConnectionToWebProcess36SubscribeToCookieChangeNotificationsENS2_10ConnectionEN6WebKit29NetworkConnectionToWebProcessES9_FvRKNS_3URLESC_NS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSD_INSE_18PageIdentifierTypeESH_yEENSD_INS8_26WebPageProxyIdentifierTypeESH_yEEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EF240;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29NetworkConnectionToWebProcess36SubscribeToCookieChangeNotificationsENS2_10ConnectionEN6WebKit29NetworkConnectionToWebProcessES9_FvRKNS_3URLESC_NS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSD_INSE_18PageIdentifierTypeESH_yEENSD_INS8_26WebPageProxyIdentifierTypeESH_yEEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEE4callEb(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3272;
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

WTF::StringImpl *IPC::Decoder::decode<std::tuple<WTF::URL,WTF::Vector<WebCore::BlobPart,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>>(_BYTE *a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<std::tuple<WTF::URL,WTF::Vector<WebCore::BlobPart,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,void>::decode<IPC::Decoder>(a1, a2);
  if ((a1[64] & 1) == 0)
  {

    return IPC::Decoder::markInvalid(a2);
  }

  return result;
}

WTF::StringImpl *IPC::ArgumentCoder<std::tuple<WTF::URL,WTF::Vector<WebCore::BlobPart,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,void>::decode<IPC::Decoder>(_BYTE *a1, IPC::Decoder *a2)
{
  result = IPC::Decoder::decode<WTF::URL>(a2, v6);
  if (v7 == 1)
  {
    result = IPC::ArgumentCoder<std::tuple<WTF::URL,WTF::Vector<WebCore::BlobPart,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,void>::decode<IPC::Decoder,WTF::URL>(a1, a2, v6);
    if (v7)
    {
      result = v6[0];
      v6[0] = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v5);
        }
      }
    }
  }

  else
  {
    *a1 = 0;
    a1[64] = 0;
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::tuple<WTF::URL,WTF::Vector<WebCore::BlobPart,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,void>::decode<IPC::Decoder,WTF::URL>(_BYTE *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<WTF::Vector<WebCore::BlobPart,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v8, a2);
  if (v9 == 1)
  {
    result = IPC::ArgumentCoder<std::tuple<WTF::URL,WTF::Vector<WebCore::BlobPart,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,void>::decode<IPC::Decoder,WTF::URL,WTF::Vector<WebCore::BlobPart,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, a2, a3, v8);
    if (v9)
    {
      return WTF::Vector<WebCore::BlobPart,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v8, v7);
    }
  }

  else
  {
    *a1 = 0;
    a1[64] = 0;
  }

  return result;
}

unint64_t IPC::Decoder::decode<WTF::Vector<WebCore::BlobPart,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::VectorArgumentCoder<false,WebCore::BlobPart,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a1, a2);
  if ((*(a1 + 16) & 1) == 0)
  {

    return IPC::Decoder::markInvalid(a2);
  }

  return result;
}

WTF::StringImpl *IPC::ArgumentCoder<std::tuple<WTF::URL,WTF::Vector<WebCore::BlobPart,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,void>::decode<IPC::Decoder,WTF::URL,WTF::Vector<WebCore::BlobPart,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(_BYTE *a1, IPC::Decoder *a2, uint64_t a3, uint64_t a4)
{
  result = IPC::Decoder::decode<WTF::String>(a2, &v9);
  if (v10 == 1)
  {
    result = IPC::ArgumentCoder<std::tuple<WTF::URL,WTF::Vector<WebCore::BlobPart,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,void>::decode<IPC::Decoder,WTF::URL,WTF::Vector<WebCore::BlobPart,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>(a1, a3, a4, &v9);
    if (v10)
    {
      result = v9;
      v9 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v8);
        }
      }
    }
  }

  else
  {
    *a1 = 0;
    a1[64] = 0;
  }

  return result;
}

unint64_t IPC::VectorArgumentCoder<false,WebCore::BlobPart,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::Decoder::decode<unsigned long long>(a2);
  if ((v5 & 1) == 0)
  {
    *a1 = 0;
    *(a1 + 16) = 0;
    return result;
  }

  v7 = result;
  v20[0] = 0;
  v20[1] = 0;
  if (result >= 0x5555)
  {
    while (1)
    {
      IPC::Decoder::decode<WebCore::BlobPart>(v18, a2);
      if (v19 != 1)
      {
        break;
      }

      v14 = HIDWORD(v20[1]);
      if (HIDWORD(v20[1]) == LODWORD(v20[1]))
      {
        WTF::Vector<WebCore::BlobPart,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::BlobPart>(v20, v18);
      }

      else
      {
        v15 = v20[0] + 48 * HIDWORD(v20[1]);
        *v15 = 0;
        v15[40] = -1;
        mpark::detail::constructor<mpark::detail::traits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::URL>>::generic_construct<mpark::detail::move_constructor<mpark::detail::traits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::URL>,(mpark::detail::Trait)1>>(v15, v18);
        HIDWORD(v20[1]) = v14 + 1;
      }

      std::optional<WebCore::BlobPart>::~optional(v18, v16);
      if (!--v7)
      {
        WTF::Vector<WebCore::BlobPart,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(v20, HIDWORD(v20[1]));
        *a1 = v20[0];
        v17 = v20[1];
        v20[0] = 0;
        v20[1] = 0;
        *(a1 + 8) = v17;
        goto LABEL_11;
      }
    }
  }

  else
  {
    if (!result)
    {
      v12 = 0;
      v13 = 0;
LABEL_10:
      *&v6 = 0;
      *v20 = v6;
      *a1 = v12;
      *(a1 + 8) = v13;
LABEL_11:
      *(a1 + 16) = 1;
      return WTF::Vector<WebCore::BlobPart,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v20, v5);
    }

    LODWORD(v20[1]) = 48 * result / 0x30u;
    v20[0] = WTF::fastMalloc((48 * result));
    while (1)
    {
      IPC::Decoder::decode<WebCore::BlobPart>(v18, a2);
      if (v19 != 1)
      {
        break;
      }

      v9 = HIDWORD(v20[1]);
      if (HIDWORD(v20[1]) == LODWORD(v20[1]))
      {
        WTF::Vector<WebCore::BlobPart,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::BlobPart>(v20, v18);
      }

      else
      {
        v10 = v20[0] + 48 * HIDWORD(v20[1]);
        *v10 = 0;
        v10[40] = -1;
        mpark::detail::constructor<mpark::detail::traits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::URL>>::generic_construct<mpark::detail::move_constructor<mpark::detail::traits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::URL>,(mpark::detail::Trait)1>>(v10, v18);
        HIDWORD(v20[1]) = v9 + 1;
      }

      std::optional<WebCore::BlobPart>::~optional(v18, v11);
      if (!--v7)
      {
        v12 = v20[0];
        v13 = v20[1];
        goto LABEL_10;
      }
    }
  }

  *a1 = 0;
  *(a1 + 16) = 0;
  std::optional<WebCore::BlobPart>::~optional(v18, v8);
  return WTF::Vector<WebCore::BlobPart,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v20, v5);
}

void IPC::Decoder::decode<WebCore::BlobPart>(_BYTE *a1, IPC::Decoder *a2)
{
  IPC::ArgumentCoder<WebCore::BlobPart,void>::decode(a2, a1);
  if ((a1[48] & 1) == 0)
  {

    IPC::Decoder::markInvalid(a2);
  }
}

uint64_t std::optional<WebCore::BlobPart>::~optional(uint64_t a1, WTF::StringImpl *a2)
{
  if (*(a1 + 48) == 1)
  {
    v3 = *(a1 + 40);
    if (v3 != 255)
    {
      v4 = *a1;
      if (v3)
      {
        *a1 = 0;
        if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v4, a2);
        }
      }

      else if (v4)
      {
        *a1 = 0;
        *(a1 + 8) = 0;
        WTF::fastFree(v4, a2);
      }
    }

    *(a1 + 40) = -1;
  }

  return a1;
}

void WTF::Vector<WebCore::BlobPart,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::BlobPart>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<WebCore::BlobPart,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  v4 = (*a1 + 48 * *(a1 + 12));
  *v4 = 0;
  v4[40] = -1;
  mpark::detail::constructor<mpark::detail::traits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::URL>>::generic_construct<mpark::detail::move_constructor<mpark::detail::traits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::URL>,(mpark::detail::Trait)1>>(v4, v3);
  ++*(a1 + 12);
}

unint64_t WTF::Vector<WebCore::BlobPart,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 48 * *(a1 + 12) <= a3)
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

    WTF::Vector<WebCore::BlobPart,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebCore::BlobPart,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

void WTF::Vector<WebCore::BlobPart,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    if (a2 >= 0x5555556)
    {
      __break(0xC471u);
      JUMPOUT(0x19D9B4D3CLL);
    }

    v3 = *a1;
    v4 = *a1 + 48 * *(a1 + 12);
    v5 = 48 * a2;
    v6 = WTF::fastMalloc((48 * a2));
    *(a1 + 8) = v5 / 0x30;
    *a1 = v6;
    WTF::VectorMover<false,WebCore::BlobPart>::move(v3, v4, v6);
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

void WTF::VectorMover<false,WebCore::BlobPart>::move(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      *a3 = 0;
      a3[40] = -1;
      mpark::detail::constructor<mpark::detail::traits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::URL>>::generic_construct<mpark::detail::move_constructor<mpark::detail::traits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::URL>,(mpark::detail::Trait)1>>(a3, v5);
      if (*(v5 + 40) != 255)
      {
        v7 = *v5;
        if (*(v5 + 40))
        {
          *v5 = 0;
          if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v7, v6);
          }
        }

        else if (v7)
        {
          *v5 = 0;
          *(v5 + 8) = 0;
          WTF::fastFree(v7, v6);
        }
      }

      *(v5 + 40) = -1;
      a3 += 48;
      v5 += 48;
    }

    while (v5 != a2);
  }
}

void WTF::Vector<WebCore::BlobPart,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(uint64_t a1, WTF *this)
{
  if (*(a1 + 8) > this)
  {
    v4 = *(a1 + 12);
    v5 = *a1;
    v6 = 3 * this;
    if (v4 > this)
    {
      v7 = v5 + 48 * this;
      v8 = 48 * v4 - 48 * this;
      do
      {
        if (v7[40] != 255)
        {
          v9 = *v7;
          if (v7[40])
          {
            *v7 = 0;
            if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v9, this);
            }
          }

          else if (v9)
          {
            *v7 = 0;
            *(v7 + 2) = 0;
            WTF::fastFree(v9, this);
          }
        }

        v7[40] = -1;
        v7 += 48;
        v8 -= 48;
      }

      while (v8);
      *(a1 + 12) = this;
      v5 = *a1;
      LODWORD(v4) = this;
    }

    if (this)
    {
      if (this >= 0x5555556)
      {
        __break(0xC471u);
        return;
      }

      v10 = WTF::fastMalloc((16 * v6));
      *(a1 + 8) = 16 * v6 / 0x30u;
      *a1 = v10;
      if (v10 != v5)
      {
        WTF::VectorMover<false,WebCore::BlobPart>::move(v5, v5 + 48 * v4, v10);
      }
    }

    if (v5)
    {
      if (*a1 == v5)
      {
        *a1 = 0;
        *(a1 + 8) = 0;
      }

      WTF::fastFree(v5, this);
    }
  }
}

uint64_t WTF::Vector<WebCore::BlobPart,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v6 = *a1;
    v7 = 48 * v3;
    do
    {
      v6 = mpark::detail::move_constructor<mpark::detail::traits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::URL>,(mpark::detail::Trait)1>::~move_constructor(v6, a2) + 48;
      v7 -= 48;
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

uint64_t IPC::ArgumentCoder<std::tuple<WTF::URL,WTF::Vector<WebCore::BlobPart,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,void>::decode<IPC::Decoder,WTF::URL,WTF::Vector<WebCore::BlobPart,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 40) & 1) != 0 && (*(a3 + 16) & 1) != 0 && (*(a4 + 8))
  {
    result = _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2EEEEJN3WTF3URLENS3_6VectorIN7WebCore8BlobPartELm0ENS3_15CrashOnOverflowELm16ENS3_10FastMallocEEENS3_6StringEEEC2B8sn200100IJLm0ELm1ELm2EEJS4_SA_SB_EJEJEJS4_SA_SB_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSF_IJDpT2_EEEDpOT3_(result, a2, a3, a4);
    *(result + 64) = 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2EEEEJN3WTF3URLENS3_6VectorIN7WebCore8BlobPartELm0ENS3_15CrashOnOverflowELm16ENS3_10FastMallocEEENS3_6StringEEEC2B8sn200100IJLm0ELm1ELm2EEJS4_SA_SB_EJEJEJS4_SA_SB_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSF_IJDpT2_EEEDpOT3_(uint64_t a1, uint64_t *a2, _DWORD *a3, uint64_t *a4)
{
  WTF::URL::URL(a1, a2);
  *(v7 + 48) = 0;
  *(v7 + 40) = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(v7 + 40, a3);
  v8 = *a4;
  *a4 = 0;
  *(a1 + 56) = v8;
  return a1;
}

uint64_t std::optional<std::tuple<WTF::URL,WTF::Vector<WebCore::BlobPart,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>>::~optional(uint64_t a1, WTF::StringImpl *a2)
{
  if (*(a1 + 64) == 1)
  {
    v3 = *(a1 + 56);
    *(a1 + 56) = 0;
    if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, a2);
    }

    WTF::Vector<WebCore::BlobPart,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 40, a2);
    v5 = *a1;
    *a1 = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, v4);
    }
  }

  return a1;
}

WTF::StringImpl *IPC::Decoder::decode<std::tuple<WTF::URL,WTF::URL,WebCore::PolicyContainer,std::optional<WebCore::SecurityOriginData>>>(_BYTE *a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<std::tuple<WTF::URL,WTF::URL,WebCore::PolicyContainer,std::optional<WebCore::SecurityOriginData>>,void>::decode<IPC::Decoder>(a1, a2);
  if ((a1[200] & 1) == 0)
  {

    return IPC::Decoder::markInvalid(a2);
  }

  return result;
}

WTF::StringImpl *IPC::ArgumentCoder<std::tuple<WTF::URL,WTF::URL,WebCore::PolicyContainer,std::optional<WebCore::SecurityOriginData>>,void>::decode<IPC::Decoder>(_BYTE *a1, IPC::Decoder *a2)
{
  result = IPC::Decoder::decode<WTF::URL>(a2, v6);
  if (v7 == 1)
  {
    result = IPC::ArgumentCoder<std::tuple<WTF::URL,WTF::URL,WebCore::PolicyContainer,std::optional<WebCore::SecurityOriginData>>,void>::decode<IPC::Decoder,WTF::URL>(a1, a2, v6);
    if (v7)
    {
      result = v6[0];
      v6[0] = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v5);
        }
      }
    }
  }

  else
  {
    *a1 = 0;
    a1[200] = 0;
  }

  return result;
}

WTF::StringImpl *IPC::ArgumentCoder<std::tuple<WTF::URL,WTF::URL,WebCore::PolicyContainer,std::optional<WebCore::SecurityOriginData>>,void>::decode<IPC::Decoder,WTF::URL>(_BYTE *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<WTF::URL>(a2, v8);
  if (v9 == 1)
  {
    result = IPC::ArgumentCoder<std::tuple<WTF::URL,WTF::URL,WebCore::PolicyContainer,std::optional<WebCore::SecurityOriginData>>,void>::decode<IPC::Decoder,WTF::URL,WTF::URL>(a1, a2, a3, v8);
    if (v9)
    {
      result = v8[0];
      v8[0] = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v7);
        }
      }
    }
  }

  else
  {
    *a1 = 0;
    a1[200] = 0;
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::tuple<WTF::URL,WTF::URL,WebCore::PolicyContainer,std::optional<WebCore::SecurityOriginData>>,void>::decode<IPC::Decoder,WTF::URL,WTF::URL>(_BYTE *a1, IPC::Decoder *a2, uint64_t a3, uint64_t a4)
{
  IPC::Decoder::decode<WebCore::PolicyContainer>(a2, v10);
  if (v10[80])
  {
    IPC::ArgumentCoder<std::tuple<WTF::URL,WTF::URL,WebCore::PolicyContainer,std::optional<WebCore::SecurityOriginData>>,void>::decode<IPC::Decoder,WTF::URL,WTF::URL,WebCore::PolicyContainer>(a1, a2, a3, a4, v10);
  }

  else
  {
    *a1 = 0;
    a1[200] = 0;
  }

  return std::optional<WebCore::PolicyContainer>::~optional(v10, v8);
}

uint64_t IPC::ArgumentCoder<std::tuple<WTF::URL,WTF::URL,WebCore::PolicyContainer,std::optional<WebCore::SecurityOriginData>>,void>::decode<IPC::Decoder,WTF::URL,WTF::URL,WebCore::PolicyContainer>(_BYTE *a1, IPC::Decoder *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *MEMORY[0x1E69E9840];
  IPC::Decoder::decode<std::optional<WebCore::SecurityOriginData>>(a2, v11);
  if (v11[40])
  {
    IPC::ArgumentCoder<std::tuple<WTF::URL,WTF::URL,WebCore::PolicyContainer,std::optional<WebCore::SecurityOriginData>>,void>::decode<IPC::Decoder,WTF::URL,WTF::URL,WebCore::PolicyContainer,std::optional<WebCore::SecurityOriginData>>(a1, a3, a4, a5, v11);
  }

  else
  {
    *a1 = 0;
    a1[200] = 0;
  }

  return std::optional<std::optional<WebCore::SecurityOriginData>>::~optional(v11, v9);
}

uint64_t IPC::ArgumentCoder<std::tuple<WTF::URL,WTF::URL,WebCore::PolicyContainer,std::optional<WebCore::SecurityOriginData>>,void>::decode<IPC::Decoder,WTF::URL,WTF::URL,WebCore::PolicyContainer,std::optional<WebCore::SecurityOriginData>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a2 + 40) & 1) != 0 && (*(a3 + 40) & 1) != 0 && (*(a4 + 80) & 1) != 0 && (*(a5 + 40))
  {
    result = _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3EEEEJN3WTF3URLES4_N7WebCore15PolicyContainerENS_8optionalINS5_18SecurityOriginDataEEEEEC2B8sn200100IJLm0ELm1ELm2ELm3EEJS4_S4_S6_S9_EJEJEJS4_S4_S6_S9_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSD_IJDpT2_EEEDpOT3_(result, a2, a3, a4, a5);
    *(result + 200) = 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3EEEEJN3WTF3URLES4_N7WebCore15PolicyContainerENS_8optionalINS5_18SecurityOriginDataEEEEEC2B8sn200100IJLm0ELm1ELm2ELm3EEJS4_S4_S6_S9_EJEJEJS4_S4_S6_S9_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSD_IJDpT2_EEEDpOT3_(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  WTF::URL::URL(a1, a2);
  WTF::URL::URL(v9 + 40, a3);
  WebCore::PolicyContainer::PolicyContainer(a1 + 80, a4);
  *(a1 + 160) = 0;
  *(a1 + 192) = 0;
  if (*(a5 + 32) == 1)
  {
    mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment((a1 + 160));
    *(a1 + 192) = 1;
  }

  return a1;
}

uint64_t std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul>,WTF::URL,WTF::URL,WebCore::PolicyContainer,std::optional<WebCore::SecurityOriginData>>::~__tuple_impl(uint64_t a1, WTF::StringImpl *a2)
{
  if (*(a1 + 192) == 1)
  {
    if (!*(a1 + 184))
    {
      v3 = *(a1 + 168);
      *(a1 + 168) = 0;
      if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v3, a2);
      }

      v4 = *(a1 + 160);
      *(a1 + 160) = 0;
      if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v4, a2);
      }
    }

    *(a1 + 184) = -1;
  }

  v5 = *(a1 + 144);
  *(a1 + 144) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *(a1 + 136);
  *(a1 + 136) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  v7 = *(a1 + 120);
  *(a1 + 120) = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, a2);
  }

  v8 = *(a1 + 112);
  *(a1 + 112) = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, a2);
  }

  WTF::Vector<std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 80, a2);
  v10 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v9);
  }

  v11 = *a1;
  *a1 = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v9);
  }

  return a1;
}

WTF::StringImpl *IPC::Decoder::decode<std::tuple<WTF::URL,std::optional<WebCore::SecurityOriginData>>>(_BYTE *a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<std::tuple<WTF::URL,std::optional<WebCore::SecurityOriginData>>,void>::decode<IPC::Decoder>(a1, a2);
  if ((a1[80] & 1) == 0)
  {

    return IPC::Decoder::markInvalid(a2);
  }

  return result;
}

WTF::StringImpl *IPC::ArgumentCoder<std::tuple<WTF::URL,std::optional<WebCore::SecurityOriginData>>,void>::decode<IPC::Decoder>(_BYTE *a1, IPC::Decoder *a2)
{
  result = IPC::Decoder::decode<WTF::URL>(a2, v6);
  if (v7 == 1)
  {
    result = IPC::ArgumentCoder<std::tuple<WTF::URL,std::optional<WebCore::SecurityOriginData>>,void>::decode<IPC::Decoder,WTF::URL>(a1, a2, v6);
    if (v7)
    {
      result = v6[0];
      v6[0] = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v5);
        }
      }
    }
  }

  else
  {
    *a1 = 0;
    a1[80] = 0;
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::tuple<WTF::URL,std::optional<WebCore::SecurityOriginData>>,void>::decode<IPC::Decoder,WTF::URL>(_BYTE *a1, IPC::Decoder *a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  IPC::Decoder::decode<std::optional<WebCore::SecurityOriginData>>(a2, v8);
  if (v8[40])
  {
    if ((*(a3 + 40) & 1) == 0)
    {
      __break(1u);
    }

    _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJN3WTF3URLENS_8optionalIN7WebCore18SecurityOriginDataEEEEEC2B8sn200100IJLm0ELm1EEJS4_S8_EJEJEJS4_S8_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSC_IJDpT2_EEEDpOT3_(a1, a3, v8);
    v6 = 1;
  }

  else
  {
    v6 = 0;
    *a1 = 0;
  }

  a1[80] = v6;
  return std::optional<std::optional<WebCore::SecurityOriginData>>::~optional(v8, v5);
}

uint64_t _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJN3WTF3URLENS_8optionalIN7WebCore18SecurityOriginDataEEEEEC2B8sn200100IJLm0ELm1EEJS4_S8_EJEJEJS4_S8_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSC_IJDpT2_EEEDpOT3_(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  WTF::URL::URL(a1, a2);
  *(v5 + 40) = 0;
  v6 = (v5 + 40);
  v6[32] = 0;
  if (*(a3 + 32) == 1)
  {
    mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment(v6);
    *(a1 + 72) = 1;
  }

  return a1;
}

uint64_t std::optional<std::tuple<WTF::URL,std::optional<WebCore::SecurityOriginData>>>::~optional(uint64_t a1, WTF::StringImpl *a2)
{
  if (*(a1 + 80) == 1)
  {
    if (*(a1 + 72) == 1)
    {
      if (!*(a1 + 64))
      {
        v3 = *(a1 + 48);
        *(a1 + 48) = 0;
        if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v3, a2);
        }

        v4 = *(a1 + 40);
        *(a1 + 40) = 0;
        if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v4, a2);
        }
      }

      *(a1 + 64) = -1;
    }

    v5 = *a1;
    *a1 = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, a2);
    }
  }

  return a1;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29NetworkConnectionToWebProcess38WriteBlobsToTemporaryFilesForIndexedDBENS2_10ConnectionEN6WebKit29NetworkConnectionToWebProcessES9_FvRKNS_6VectorINS_6StringELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvOSE_EEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSI_EED1Ev(void *a1)
{
  *a1 = &unk_1F10EF268;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29NetworkConnectionToWebProcess38WriteBlobsToTemporaryFilesForIndexedDBENS2_10ConnectionEN6WebKit29NetworkConnectionToWebProcessES9_FvRKNS_6VectorINS_6StringELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvOSE_EEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSI_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EF268;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29NetworkConnectionToWebProcess38WriteBlobsToTemporaryFilesForIndexedDBENS2_10ConnectionEN6WebKit29NetworkConnectionToWebProcessES9_FvRKNS_6VectorINS_6StringELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvOSE_EEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSI_EE4callESI_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3274;
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29NetworkConnectionToWebProcess26RegisterBlobPathForTestingENS2_10ConnectionEN6WebKit29NetworkConnectionToWebProcessES9_FvRKNS_6StringEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10EF290;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29NetworkConnectionToWebProcess26RegisterBlobPathForTestingENS2_10ConnectionEN6WebKit29NetworkConnectionToWebProcessES9_FvRKNS_6StringEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EF290;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29NetworkConnectionToWebProcess26RegisterBlobPathForTestingENS2_10ConnectionEN6WebKit29NetworkConnectionToWebProcessES9_FvRKNS_6StringEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3264;
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

WTF::StringImpl *IPC::Decoder::decode<std::tuple<WebCore::RegistrableDomain>>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<std::tuple<WebCore::RegistrableDomain>,void>::decode<IPC::Decoder>(a1, a2);
  if ((*(a2 + 8) & 1) == 0)
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

WTF::StringImpl *IPC::ArgumentCoder<std::tuple<WebCore::RegistrableDomain>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<WebCore::RegistrableDomain,void>::decode(a1, &v9);
  if (v10)
  {
    *a2 = v9;
    v5 = 1;
  }

  else
  {
    v6 = *a1;
    v7 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result)
    {
      v8 = v7 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      result = (*(*result + 16))(result, v6);
    }

    v5 = 0;
    *a2 = 0;
  }

  *(a2 + 8) = v5;
  return result;
}

void IPC::Decoder::decode<WebCore::ResourceLoadStatistics>(_BYTE *a1, IPC::Decoder *a2)
{
  IPC::ArgumentCoder<WebCore::ResourceLoadStatistics,void>::decode(a2, a1);
  if ((a1[200] & 1) == 0)
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

void WTF::Vector<WebCore::ResourceLoadStatistics,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::ResourceLoadStatistics>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<WebCore::ResourceLoadStatistics,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  WebCore::ResourceLoadStatistics::ResourceLoadStatistics(*a1 + 200 * *(a1 + 12), v3);
  ++*(a1 + 12);
}

unint64_t WTF::Vector<WebCore::ResourceLoadStatistics,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 200 * *(a1 + 12) <= a3)
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

    WTF::Vector<WebCore::ResourceLoadStatistics,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebCore::ResourceLoadStatistics,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

void WTF::Vector<WebCore::ResourceLoadStatistics,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    if (a2 >= 0x147AE15)
    {
      __break(0xC471u);
      JUMPOUT(0x19D9B5E0CLL);
    }

    v3 = *a1;
    v4 = (*a1 + 200 * *(a1 + 12));
    v5 = 200 * a2;
    v6 = WTF::fastMalloc((200 * a2));
    *(a1 + 8) = v5 / 0xC8;
    *a1 = v6;
    WTF::VectorMover<false,WebCore::ResourceLoadStatistics>::move(v3, v4, v6);
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

void WTF::VectorMover<false,WebCore::ResourceLoadStatistics>::move(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      WebCore::ResourceLoadStatistics::ResourceLoadStatistics(a3, v5);
      WebCore::ResourceLoadStatistics::~ResourceLoadStatistics(v5, v6);
      a3 += 200;
      v5 += 25;
    }

    while (v5 != a2);
  }
}

void WTF::Vector<WebCore::ResourceLoadStatistics,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) > a2)
  {
    v4 = *(a1 + 12);
    if (v4 > a2)
    {
      v5 = (*a1 + 200 * a2);
      v6 = 200 * v4 - 200 * a2;
      do
      {
        WebCore::ResourceLoadStatistics::~ResourceLoadStatistics(v5, a2);
        v5 = (v7 + 200);
        v6 -= 200;
      }

      while (v6);
      *(a1 + 12) = a2;
      LODWORD(v4) = a2;
    }

    v8 = *a1;
    if (a2)
    {
      if (a2 >= 0x147AE15)
      {
        __break(0xC471u);
        return;
      }

      v9 = (200 * a2);
      v10 = WTF::fastMalloc(v9);
      *(a1 + 8) = v9 / 0xC8;
      *a1 = v10;
      if (v10 != v8)
      {
        WTF::VectorMover<false,WebCore::ResourceLoadStatistics>::move(v8, &v8[25 * v4], v10);
      }
    }

    if (v8)
    {
      if (*a1 == v8)
      {
        *a1 = 0;
        *(a1 + 8) = 0;
      }

      WTF::fastFree(v8, a2);
    }
  }
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29NetworkConnectionToWebProcess29ResourceLoadStatisticsUpdatedENS2_10ConnectionEN6WebKit29NetworkConnectionToWebProcessES9_FvONS_6VectorIN7WebCore22ResourceLoadStatisticsELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10EF2B8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29NetworkConnectionToWebProcess16HasStorageAccessENS2_10ConnectionEN6WebKit29NetworkConnectionToWebProcessES9_FvON7WebCore17RegistrableDomainESC_NS_23ObjectIdentifierGenericINSA_19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSD_INSA_18PageIdentifierTypeESG_yEEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED1Ev(void *a1)
{
  *a1 = &unk_1F10EF2E0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29NetworkConnectionToWebProcess16HasStorageAccessENS2_10ConnectionEN6WebKit29NetworkConnectionToWebProcessES9_FvON7WebCore17RegistrableDomainESC_NS_23ObjectIdentifierGenericINSA_19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSD_INSA_18PageIdentifierTypeESG_yEEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EF2E0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29NetworkConnectionToWebProcess16HasStorageAccessENS2_10ConnectionEN6WebKit29NetworkConnectionToWebProcessES9_FvON7WebCore17RegistrableDomainESC_NS_23ObjectIdentifierGenericINSA_19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSD_INSA_18PageIdentifierTypeESG_yEEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEE4callEb(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3254;
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29NetworkConnectionToWebProcess20RequestStorageAccessENS2_10ConnectionEN6WebKit29NetworkConnectionToWebProcessES9_FvON7WebCore17RegistrableDomainESC_NS_23ObjectIdentifierGenericINSA_19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSD_INSA_18PageIdentifierTypeESG_yEENSD_INS8_26WebPageProxyIdentifierTypeESG_yEENSA_18StorageAccessScopeEONS_17CompletionHandlerIFvNSA_26RequestStorageAccessResultEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSO_EED1Ev(void *a1)
{
  *a1 = &unk_1F10EF308;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29NetworkConnectionToWebProcess20RequestStorageAccessENS2_10ConnectionEN6WebKit29NetworkConnectionToWebProcessES9_FvON7WebCore17RegistrableDomainESC_NS_23ObjectIdentifierGenericINSA_19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSD_INSA_18PageIdentifierTypeESG_yEENSD_INS8_26WebPageProxyIdentifierTypeESG_yEENSA_18StorageAccessScopeEONS_17CompletionHandlerIFvNSA_26RequestStorageAccessResultEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSO_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EF308;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29NetworkConnectionToWebProcess20RequestStorageAccessENS2_10ConnectionEN6WebKit29NetworkConnectionToWebProcessES9_FvON7WebCore17RegistrableDomainESC_NS_23ObjectIdentifierGenericINSA_19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSD_INSA_18PageIdentifierTypeESG_yEENSD_INS8_26WebPageProxyIdentifierTypeESG_yEENSA_18StorageAccessScopeEONS_17CompletionHandlerIFvNSA_26RequestStorageAccessResultEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSO_EE4callESO_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3265;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<WebCore::RequestStorageAccessResult,void>::encode(v5, a2);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29NetworkConnectionToWebProcess35StorageAccessQuirkForTopFrameDomainENS2_10ConnectionEN6WebKit29NetworkConnectionToWebProcessES9_FvONS_3URLEONS_17CompletionHandlerIFvNS_6VectorIN7WebCore17RegistrableDomainELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSI_EED1Ev(void *a1)
{
  *a1 = &unk_1F10EF330;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29NetworkConnectionToWebProcess35StorageAccessQuirkForTopFrameDomainENS2_10ConnectionEN6WebKit29NetworkConnectionToWebProcessES9_FvONS_3URLEONS_17CompletionHandlerIFvNS_6VectorIN7WebCore17RegistrableDomainELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSI_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EF330;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29NetworkConnectionToWebProcess35StorageAccessQuirkForTopFrameDomainENS2_10ConnectionEN6WebKit29NetworkConnectionToWebProcessES9_FvONS_3URLEONS_17CompletionHandlerIFvNS_6VectorIN7WebCore17RegistrableDomainELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSI_EE4callESI_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3271;
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

WTF::StringImpl *IPC::Decoder::decode<std::tuple<WTF::String,WTF::String,WTF::String,BOOL>>(uint64_t a1, IPC::Decoder *a2)
{
  IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a2, &v23);
  if ((v24 & 1) == 0)
  {
    goto LABEL_26;
  }

  while (1)
  {
    IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a2, &v25);
    if ((v26 & 1) == 0)
    {
      v7 = *a2;
      v18 = *(a2 + 1);
      *a2 = 0;
      *(a2 + 1) = 0;
      result = *(a2 + 3);
      if (!result || !v18 || (result = (*(*result + 16))(result, v7), (v26 & 1) == 0))
      {
        v11 = 0;
        *a1 = 0;
        *(a1 + 32) = 0;
        goto LABEL_14;
      }
    }

    result = IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a2, &v27);
    if ((v28 & 1) == 0)
    {
      v7 = *a2;
      v19 = *(a2 + 1);
      *a2 = 0;
      *(a2 + 1) = 0;
      result = *(a2 + 3);
      if (!result || !v19 || (result = (*(*result + 16))(result, v7), (v28 & 1) == 0))
      {
        v11 = 0;
        *a1 = 0;
        *(a1 + 32) = 0;
        goto LABEL_10;
      }
    }

    v5 = *(a2 + 1);
    v6 = *(a2 + 2);
    v7 = *a2;
    if (v5 <= &v6[-*a2])
    {
      break;
    }

    *(a2 + 2) = v6 + 1;
    if (!v6)
    {
      goto LABEL_38;
    }

    v8 = *v6;
    if (v8 >= 2)
    {
      goto LABEL_41;
    }

    if (v24 & 1) != 0 && (v26)
    {
      v9 = v23;
      v23 = 0;
      v10 = v25;
      v25 = 0;
      *a1 = v9;
      *(a1 + 8) = v10;
      *(a1 + 16) = v27;
      *(a1 + 24) = v8;
      v11 = 1;
      *(a1 + 32) = 1;
      goto LABEL_10;
    }

    __break(1u);
LABEL_26:
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
      if (v24)
      {
        continue;
      }
    }

    *a1 = 0;
    *(a1 + 32) = 0;
    goto LABEL_20;
  }

  *a2 = 0;
  *(a2 + 1) = 0;
  v20 = *(a2 + 3);
  if (v20)
  {
    if (v5)
    {
      (*(*v20 + 16))(v20);
      v5 = *(a2 + 1);
    }
  }

  else
  {
    v5 = 0;
  }

LABEL_38:
  *a2 = 0;
  *(a2 + 1) = 0;
  v21 = *(a2 + 3);
  if (!v21)
  {
    v5 = 0;
LABEL_40:
    v7 = 0;
    goto LABEL_41;
  }

  if (!v5)
  {
    goto LABEL_40;
  }

  (*(*v21 + 16))(v21);
  v7 = *a2;
  v5 = *(a2 + 1);
LABEL_41:
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result && v5)
  {
    result = (*(*result + 16))(result, v7);
  }

  *a1 = 0;
  v22 = v28;
  *(a1 + 32) = 0;
  if (v22)
  {
    result = v27;
    v27 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v7);
      }
    }
  }

  v11 = 0;
LABEL_10:
  if (v26)
  {
    result = v25;
    v25 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v7);
      }
    }
  }

LABEL_14:
  if ((v24 & 1) != 0 && (result = v23, v23 = 0, result) && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v7);
    if (v11)
    {
      return result;
    }
  }

  else if (v11)
  {
    return result;
  }

LABEL_20:
  v12 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result && v12)
  {
    v13 = *(*result + 16);

    return v13();
  }

  return result;
}

WTF::StringImpl *IPC::Decoder::decode<WebCore::Site>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<WebCore::Site,void>::decode(a1, a2);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29NetworkConnectionToWebProcess28EstablishSWContextConnectionENS2_10ConnectionEN6WebKit29NetworkConnectionToWebProcessES9_FvNS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEON7WebCore4SiteENSt3__18optionalINSF_16ProcessQualifiedINS_4UUIDEEEEEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10EF358;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29NetworkConnectionToWebProcess28EstablishSWContextConnectionENS2_10ConnectionEN6WebKit29NetworkConnectionToWebProcessES9_FvNS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEON7WebCore4SiteENSt3__18optionalINSF_16ProcessQualifiedINS_4UUIDEEEEEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EF358;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29NetworkConnectionToWebProcess28EstablishSWContextConnectionENS2_10ConnectionEN6WebKit29NetworkConnectionToWebProcessES9_FvNS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEON7WebCore4SiteENSt3__18optionalINSF_16ProcessQualifiedINS_4UUIDEEEEEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3252;
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29NetworkConnectionToWebProcess25PingPongForServiceWorkersENS2_10ConnectionEN6WebKit29NetworkConnectionToWebProcessES9_FvONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED1Ev(void *a1)
{
  *a1 = &unk_1F10EF380;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29NetworkConnectionToWebProcess25PingPongForServiceWorkersENS2_10ConnectionEN6WebKit29NetworkConnectionToWebProcessES9_FvONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EF380;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29NetworkConnectionToWebProcess25PingPongForServiceWorkersENS2_10ConnectionEN6WebKit29NetworkConnectionToWebProcessES9_FvONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEE4callEb(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3263;
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29NetworkConnectionToWebProcess38EstablishSharedWorkerContextConnectionENS2_10ConnectionEN6WebKit29NetworkConnectionToWebProcessES9_FvNS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEON7WebCore4SiteEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10EF3A8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29NetworkConnectionToWebProcess38EstablishSharedWorkerContextConnectionENS2_10ConnectionEN6WebKit29NetworkConnectionToWebProcessES9_FvNS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEON7WebCore4SiteEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EF3A8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29NetworkConnectionToWebProcess38EstablishSharedWorkerContextConnectionENS2_10ConnectionEN6WebKit29NetworkConnectionToWebProcessES9_FvNS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEON7WebCore4SiteEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3253;
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29NetworkConnectionToWebProcess17CreateRTCProviderENS2_10ConnectionEN6WebKit29NetworkConnectionToWebProcessES9_FvONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10EF3D0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29NetworkConnectionToWebProcess17CreateRTCProviderENS2_10ConnectionEN6WebKit29NetworkConnectionToWebProcessES9_FvONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EF3D0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29NetworkConnectionToWebProcess17CreateRTCProviderENS2_10ConnectionEN6WebKit29NetworkConnectionToWebProcessES9_FvONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3250;
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

uint64_t IPC::Decoder::decode<std::tuple<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>>(uint64_t a1, uint64_t *a2)
{
  IPC::Decoder::decode<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(a2, &v9);
  if ((v10 & 1) != 0 && (result = IPC::Decoder::decode<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(a2, &v11), v12 == 1))
  {
    if (v10)
    {
      v5 = v11;
      *a1 = v9;
      *(a1 + 16) = v5;
      *(a1 + 32) = 1;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 32) = 0;
    v6 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    result = a2[3];
    if (result)
    {
      v7 = v6 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      v8 = *(*result + 16);

      return v8();
    }
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29NetworkConnectionToWebProcess35ConnectToRTCDataChannelRemoteSourceENS2_10ConnectionEN6WebKit29NetworkConnectionToWebProcessES9_FvN7WebCore16ProcessQualifiedINS_23ObjectIdentifierGenericINSA_33RTCDataChannelLocalIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEEESH_ONS_17CompletionHandlerIFvNSt3__18optionalIbEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSL_EED1Ev(void *a1)
{
  *a1 = &unk_1F10EF3F8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29NetworkConnectionToWebProcess35ConnectToRTCDataChannelRemoteSourceENS2_10ConnectionEN6WebKit29NetworkConnectionToWebProcessES9_FvN7WebCore16ProcessQualifiedINS_23ObjectIdentifierGenericINSA_33RTCDataChannelLocalIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEEESH_ONS_17CompletionHandlerIFvNSt3__18optionalIbEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSL_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EF3F8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29NetworkConnectionToWebProcess35ConnectToRTCDataChannelRemoteSourceENS2_10ConnectionEN6WebKit29NetworkConnectionToWebProcessES9_FvN7WebCore16ProcessQualifiedINS_23ObjectIdentifierGenericINSA_33RTCDataChannelLocalIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEEESH_ONS_17CompletionHandlerIFvNSt3__18optionalIbEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSL_EE4callESL_(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3247;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = v3;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v10 = v4;
  IPC::ArgumentCoder<std::optional<BOOL>,void>::encode<IPC::Encoder,std::optional<BOOL>>(v4, &v9);
  IPC::Connection::sendMessageImpl(v2, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

uint64_t IPC::Decoder::decode<std::tuple<WebCore::MessagePortIdentifier,WebCore::MessagePortIdentifier>>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<std::tuple<WebCore::MessagePortIdentifier,WebCore::MessagePortIdentifier>,void>::decode<IPC::Decoder>(a1, a2);
  if ((*(a1 + 32) & 1) == 0)
  {

    return IPC::Decoder::markInvalid(a2);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::tuple<WebCore::MessagePortIdentifier,WebCore::MessagePortIdentifier>,void>::decode<IPC::Decoder>(uint64_t a1, IPC::Decoder *a2)
{
  IPC::ArgumentCoder<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode(a2, &v7);
  if (v8)
  {
    result = IPC::ArgumentCoder<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode(a2, &v9);
    if (v10)
    {
      v5 = v9;
      *a1 = v7;
      *(a1 + 16) = v5;
      v6 = 1;
    }

    else
    {
      result = IPC::Decoder::markInvalid(a2);
      v6 = 0;
      *a1 = 0;
    }

    *(a1 + 32) = v6;
  }

  else
  {
    result = IPC::Decoder::markInvalid(a2);
    *a1 = 0;
    *(a1 + 32) = 0;
  }

  return result;
}

uint64_t IPC::Decoder::decode<std::tuple<WebCore::MessagePortIdentifier>>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<std::tuple<WebCore::MessagePortIdentifier>,void>::decode<IPC::Decoder>(a1, a2);
  if ((*(a1 + 16) & 1) == 0)
  {

    return IPC::Decoder::markInvalid(a2);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::tuple<WebCore::MessagePortIdentifier>,void>::decode<IPC::Decoder>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode(a2, &v6);
  if (v7)
  {
    *a1 = v6;
    v5 = 1;
  }

  else
  {
    result = IPC::Decoder::markInvalid(a2);
    v5 = 0;
    *a1 = 0;
  }

  *(a1 + 16) = v5;
  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29NetworkConnectionToWebProcess22TakeAllMessagesForPortENS2_10ConnectionEN6WebKit29NetworkConnectionToWebProcessES9_FvRKN7WebCore21MessagePortIdentifierEONS_17CompletionHandlerIFvONS_6VectorINSA_23MessageWithMessagePortsELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEENSt3__18optionalINS_23ObjectIdentifierGenericINS8_26MessageBatchIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSK_SS_EED1Ev(void *a1)
{
  *a1 = &unk_1F10EF420;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29NetworkConnectionToWebProcess22TakeAllMessagesForPortENS2_10ConnectionEN6WebKit29NetworkConnectionToWebProcessES9_FvRKN7WebCore21MessagePortIdentifierEONS_17CompletionHandlerIFvONS_6VectorINSA_23MessageWithMessagePortsELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEENSt3__18optionalINS_23ObjectIdentifierGenericINS8_26MessageBatchIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSK_SS_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EF420;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29NetworkConnectionToWebProcess22TakeAllMessagesForPortENS2_10ConnectionEN6WebKit29NetworkConnectionToWebProcessES9_FvRKN7WebCore21MessagePortIdentifierEONS_17CompletionHandlerIFvONS_6VectorINSA_23MessageWithMessagePortsELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEENSt3__18optionalINS_23ObjectIdentifierGenericINS8_26MessageBatchIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSK_SS_EE4callESK_SS_(uint64_t a1, unsigned int *a2, uint64_t a3, char a4)
{
  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  v9 = IPC::Encoder::operator new(0x238, a2);
  *v9 = 3273;
  *(v9 + 2) = 0;
  *(v9 + 3) = 0;
  *(v9 + 1) = v8;
  *(v9 + 68) = 0;
  *(v9 + 70) = 0;
  *(v9 + 69) = 0;
  IPC::Encoder::encodeHeader(v9);
  v19 = v9;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v9, a2[3]);
  v10 = a2[3];
  if (v10)
  {
    v17 = *a2;
    v18 = 24 * v10;
    do
    {
      IPC::ArgumentCoder<WebCore::MessageWithMessagePorts,void>::encode(v9, v17);
      v17 += 3;
      v18 -= 24;
    }

    while (v18);
  }

  if (a4)
  {
    v11 = IPC::Encoder::grow(v9, 1uLL, 1);
    if (!v12)
    {
      result = 1067;
      __break(0xC471u);
      return result;
    }

    *v11 = 1;
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v9, a3);
  }

  else
  {
    IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v9, 0);
  }

  IPC::Connection::sendMessageImpl(v7, &v19, 0, 0);
  result = v19;
  v19 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v13);
    return bmalloc::api::tzoneFree(v15, v16);
  }

  return result;
}

uint64_t IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(_BYTE *a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder>(a1, a2);
  if ((a1[24] & 1) == 0)
  {

    return IPC::Decoder::markInvalid(a2);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder>(_BYTE *a1, IPC::Decoder *a2)
{
  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  v6 = result;
  v7 = v5;
  if (v5)
  {
    return IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1, a2, &v6);
  }

  *a1 = 0;
  a1[24] = 0;
  return result;
}

uint64_t IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a2, &v9);
  if (v11 == 1)
  {
    if (*(a3 + 8))
    {
      v7 = v9;
      *a1 = *a3;
      *(a1 + 8) = v7;
      v8 = v10;
      v9 = 0;
      v10 = 0;
      *(a1 + 16) = v8;
      *(a1 + 24) = 1;
      return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v9, v6);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 24) = 0;
  }

  return result;
}

uint64_t IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::LoadSchedulingMode>>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::LoadSchedulingMode>,void>::decode<IPC::Decoder>(a1, a2);
  if ((*(a1 + 16) & 1) == 0)
  {

    return IPC::Decoder::markInvalid(a2);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::LoadSchedulingMode>,void>::decode<IPC::Decoder>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v5 & 1) != 0 && (v6 = result, result = IPC::Decoder::decode<WebCore::LoadSchedulingMode>(a2), result > 0xFFu))
  {
    *a1 = v6;
    *(a1 + 8) = result;
    v7 = 1;
  }

  else
  {
    v7 = 0;
    *a1 = 0;
  }

  *(a1 + 16) = v7;
  return result;
}

uint64_t IPC::Decoder::decode<WebCore::LoadSchedulingMode>(IPC::Decoder *a1)
{
  v2 = IPC::ArgumentCoder<WebCore::LoadSchedulingMode,void>::decode<IPC::Decoder>(a1);
  if (v2 <= 0xFFu)
  {
    IPC::Decoder::markInvalid(a1);
  }

  return v2;
}

uint64_t IPC::ArgumentCoder<WebCore::LoadSchedulingMode,void>::decode<IPC::Decoder>(IPC::Decoder *a1)
{
  v1 = IPC::Decoder::decode<unsigned char>(a1);
  if ((v1 & 0x100) != 0 && (v2 = v1, WTF::isValidEnum<WebCore::LoadSchedulingMode>(v1)))
  {
    v3 = 1;
  }

  else
  {
    v2 = 0;
    v3 = 0;
  }

  return v2 | (v3 << 8);
}

unint64_t IPC::Decoder::decode<std::tuple<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<std::tuple<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder>(a1, a2);
  if ((*(a1 + 16) & 1) == 0)
  {

    return IPC::Decoder::markInvalid(a2);
  }

  return result;
}

unint64_t IPC::ArgumentCoder<std::tuple<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::Decoder::decode<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v5, a2);
  if (v6)
  {
    *a1 = v5[0];
    *(a1 + 8) = v5[1];
    v4 = 1;
  }

  else
  {
    v4 = 0;
    *a1 = 0;
  }

  *(a1 + 16) = v4;
  return result;
}

unint64_t IPC::Decoder::decode<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::VectorArgumentCoder<false,WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a1, a2);
  if ((*(a1 + 16) & 1) == 0)
  {

    return IPC::Decoder::markInvalid(a2);
  }

  return result;
}

unint64_t IPC::VectorArgumentCoder<false,WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::Decoder::decode<unsigned long long>(a2);
  if ((v5 & 1) == 0)
  {
    *a1 = 0;
    *(a1 + 16) = 0;
    return result;
  }

  v6 = result;
  v15 = 0;
  v16 = 0;
  if (result >= 0x20000)
  {
    while (1)
    {
      v10 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
      v13 = v10;
      v14 = v5;
      if ((v5 & 1) == 0)
      {
        break;
      }

      if (HIDWORD(v16) == v16)
      {
        WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(&v15, &v13);
      }

      else
      {
        *(v15 + HIDWORD(v16)) = v10;
        ++HIDWORD(v16);
      }

      if (!--v6)
      {
        WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::DictationContextType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v15, HIDWORD(v16));
        v11 = v15;
        v15 = 0;
        *a1 = v11;
        v12 = v16;
        HIDWORD(v16) = 0;
        *(a1 + 8) = v12;
        goto LABEL_11;
      }
    }
  }

  else
  {
    if (!result)
    {
      v8 = 0;
      v9 = 0;
LABEL_10:
      v15 = 0;
      *a1 = v8;
      HIDWORD(v16) = 0;
      *(a1 + 8) = v9;
LABEL_11:
      *(a1 + 16) = 1;
      goto LABEL_12;
    }

    LODWORD(v16) = result;
    v15 = WTF::fastMalloc((8 * result));
    while (1)
    {
      v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
      v13 = v7;
      v14 = v5;
      if ((v5 & 1) == 0)
      {
        break;
      }

      if (HIDWORD(v16) == v16)
      {
        WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(&v15, &v13);
      }

      else
      {
        *(v15 + HIDWORD(v16)) = v7;
        ++HIDWORD(v16);
      }

      if (!--v6)
      {
        v8 = v15;
        v9 = v16;
        goto LABEL_10;
      }
    }
  }

  *a1 = 0;
  *(a1 + 16) = 0;
LABEL_12:
  result = v15;
  if (v15)
  {
    v15 = 0;
    LODWORD(v16) = 0;
    return WTF::fastFree(result, v5);
  }

  return result;
}

void *WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(uint64_t a1, unint64_t a2)
{
  result = WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionFrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  *(*a1 + 8 * (*(a1 + 12))++) = *result;
  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29NetworkConnectionToWebProcess31NavigatorSubscribeToPushServiceENS2_10ConnectionEN6WebKit29NetworkConnectionToWebProcessES9_FvONS_3URLEONS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIN7WebCore20PushSubscriptionDataENSL_13ExceptionDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSP_EED1Ev(void *a1)
{
  *a1 = &unk_1F10EF448;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29NetworkConnectionToWebProcess31NavigatorSubscribeToPushServiceENS2_10ConnectionEN6WebKit29NetworkConnectionToWebProcessES9_FvONS_3URLEONS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIN7WebCore20PushSubscriptionDataENSL_13ExceptionDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSP_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EF448;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29NetworkConnectionToWebProcess31NavigatorSubscribeToPushServiceENS2_10ConnectionEN6WebKit29NetworkConnectionToWebProcessES9_FvONS_3URLEONS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIN7WebCore20PushSubscriptionDataENSL_13ExceptionDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSP_EE4callESP_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3261;
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

void *IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<WebCore::PushSubscriptionData,WebCore::ExceptionData>,void>::encode<IPC::Encoder>(IPC::Encoder *a1, uint64_t a2)
{
  v4 = *(a2 + 80);
  v5 = IPC::Encoder::grow(a1, 1uLL, 1);
  if (v4)
  {
    if (v6)
    {
      *v5 = 0;
      if (*(a2 + 80) == 1)
      {
        IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *a2);

        return IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 8));
      }

LABEL_12:
      mpark::throw_bad_variant_access(v5);
    }

LABEL_13:
    __break(0xC471u);
    JUMPOUT(0x19D9B7A1CLL);
  }

  if (!v6)
  {
    goto LABEL_13;
  }

  *v5 = 1;
  if (*(a2 + 80))
  {
    goto LABEL_12;
  }

  return IPC::ArgumentCoder<WebCore::PushSubscriptionData,void>::encode(a1, a2);
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29NetworkConnectionToWebProcess35NavigatorUnsubscribeFromPushServiceENS2_10ConnectionEN6WebKit29NetworkConnectionToWebProcessES9_FvONS_3URLERKNS_23ObjectIdentifierGenericIN7WebCore30PushSubscriptionIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIbNSD_13ExceptionDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSQ_EED1Ev(void *a1)
{
  *a1 = &unk_1F10EF470;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29NetworkConnectionToWebProcess35NavigatorUnsubscribeFromPushServiceENS2_10ConnectionEN6WebKit29NetworkConnectionToWebProcessES9_FvONS_3URLERKNS_23ObjectIdentifierGenericIN7WebCore30PushSubscriptionIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIbNSD_13ExceptionDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSQ_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EF470;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29NetworkConnectionToWebProcess35NavigatorUnsubscribeFromPushServiceENS2_10ConnectionEN6WebKit29NetworkConnectionToWebProcessES9_FvONS_3URLERKNS_23ObjectIdentifierGenericIN7WebCore30PushSubscriptionIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIbNSD_13ExceptionDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSQ_EE4callESQ_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3262;
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

char *IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<BOOL,WebCore::ExceptionData>,void>::encode<IPC::Encoder>(IPC::Encoder *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = IPC::Encoder::grow(a1, 1uLL, 1);
  if (!v4)
  {
    if (!v6)
    {
      __break(0xC471u);
      JUMPOUT(0x19D9B7C84);
    }

    *v5 = 1;
    if (*(a2 + 16))
    {
LABEL_11:
      mpark::throw_bad_variant_access(v5);
    }

    v8 = *a2;
    result = IPC::Encoder::grow(a1, 1uLL, 1);
    if (v9)
    {
      *result = v8;
      return result;
    }

LABEL_14:
    __break(0xC471u);
    JUMPOUT(0x19D9B7C64);
  }

  if (!v6)
  {
    goto LABEL_14;
  }

  *v5 = 0;
  if (*(a2 + 16) != 1)
  {
    goto LABEL_11;
  }

  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *a2);

  return IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 8));
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29NetworkConnectionToWebProcess28NavigatorGetPushSubscriptionENS2_10ConnectionEN6WebKit29NetworkConnectionToWebProcessES9_FvONS_3URLEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINSt3__18optionalIN7WebCore20PushSubscriptionDataEEENSI_13ExceptionDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_EED1Ev(void *a1)
{
  *a1 = &unk_1F10EF498;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29NetworkConnectionToWebProcess28NavigatorGetPushSubscriptionENS2_10ConnectionEN6WebKit29NetworkConnectionToWebProcessES9_FvONS_3URLEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINSt3__18optionalIN7WebCore20PushSubscriptionDataEEENSI_13ExceptionDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EF498;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29NetworkConnectionToWebProcess28NavigatorGetPushSubscriptionENS2_10ConnectionEN6WebKit29NetworkConnectionToWebProcessES9_FvONS_3URLEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINSt3__18optionalIN7WebCore20PushSubscriptionDataEEENSI_13ExceptionDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_EE4callESN_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3260;
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

char *IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<std::optional<WebCore::PushSubscriptionData>,WebCore::ExceptionData>,void>::encode<IPC::Encoder>(IPC::Encoder *a1, uint64_t a2)
{
  v4 = *(a2 + 88);
  v5 = IPC::Encoder::grow(a1, 1uLL, 1);
  if (v4)
  {
    if (v6)
    {
      *v5 = 0;
      if (*(a2 + 88) == 1)
      {
        IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *a2);

        return IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 8));
      }

LABEL_12:
      mpark::throw_bad_variant_access(v5);
    }

LABEL_13:
    __break(0xC471u);
    JUMPOUT(0x19D9B7EC8);
  }

  if (!v6)
  {
    goto LABEL_13;
  }

  *v5 = 1;
  if (*(a2 + 88))
  {
    goto LABEL_12;
  }

  return IPC::ArgumentCoder<std::optional<WebCore::PushSubscriptionData>,void>::encode<IPC::Encoder,std::optional<WebCore::PushSubscriptionData>>(a1, a2);
}

char *IPC::ArgumentCoder<std::optional<WebCore::PushSubscriptionData>,void>::encode<IPC::Encoder,std::optional<WebCore::PushSubscriptionData>>(IPC::Encoder *a1, uint64_t a2)
{
  v4 = *(a2 + 80);
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
    JUMPOUT(0x19D9B7F90);
  }

  if (!v6)
  {
    goto LABEL_10;
  }

  *result = 1;
  if ((*(a2 + 80) & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:sn200100]();
    goto LABEL_10;
  }

  return IPC::ArgumentCoder<WebCore::PushSubscriptionData,void>::encode(a1, a2);
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29NetworkConnectionToWebProcess31NavigatorGetPushPermissionStateENS2_10ConnectionEN6WebKit29NetworkConnectionToWebProcessES9_FvONS_3URLEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIhN7WebCore13ExceptionDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSJ_EED1Ev(void *a1)
{
  *a1 = &unk_1F10EF4C0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29NetworkConnectionToWebProcess31NavigatorGetPushPermissionStateENS2_10ConnectionEN6WebKit29NetworkConnectionToWebProcessES9_FvONS_3URLEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIhN7WebCore13ExceptionDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSJ_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EF4C0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29NetworkConnectionToWebProcess31NavigatorGetPushPermissionStateENS2_10ConnectionEN6WebKit29NetworkConnectionToWebProcessES9_FvONS_3URLEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIhN7WebCore13ExceptionDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSJ_EE4callESJ_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3259;
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

void *IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<unsigned char,WebCore::ExceptionData>,void>::encode<IPC::Encoder>(IPC::Encoder *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = IPC::Encoder::grow(a1, 1uLL, 1);
  if (v4)
  {
    if (v6)
    {
      *v5 = 0;
      if (*(a2 + 16) == 1)
      {
        IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *a2);

        return IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 8));
      }

LABEL_12:
      mpark::throw_bad_variant_access(v5);
    }

LABEL_13:
    __break(0xC471u);
    JUMPOUT(0x19D9B81D4);
  }

  if (!v6)
  {
    goto LABEL_13;
  }

  *v5 = 1;
  if (*(a2 + 16))
  {
    goto LABEL_12;
  }

  v8 = *a2;

  return IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, v8);
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29NetworkConnectionToWebProcess29InitializeWebTransportSessionENS2_10ConnectionEN6WebKit29NetworkConnectionToWebProcessES9_FvONS_3URLEONS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEON7WebCore12ClientOriginEONS_17CompletionHandlerIFvNSt3__18optionalINSC_INS8_33WebTransportSessionIdentifierTypeESF_yEEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSQ_EED1Ev(void *a1)
{
  *a1 = &unk_1F10EF4E8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29NetworkConnectionToWebProcess29InitializeWebTransportSessionENS2_10ConnectionEN6WebKit29NetworkConnectionToWebProcessES9_FvONS_3URLEONS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEON7WebCore12ClientOriginEONS_17CompletionHandlerIFvNSt3__18optionalINSC_INS8_33WebTransportSessionIdentifierTypeESF_yEEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSQ_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EF4E8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29NetworkConnectionToWebProcess29InitializeWebTransportSessionENS2_10ConnectionEN6WebKit29NetworkConnectionToWebProcessES9_FvONS_3URLEONS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEON7WebCore12ClientOriginEONS_17CompletionHandlerIFvNSt3__18optionalINSC_INS8_33WebTransportSessionIdentifierTypeESF_yEEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSQ_EE4callESQ_(uint64_t a1, void *a2, char a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = IPC::Encoder::operator new(0x238, a2);
  *v7 = 3255;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = v6;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  IPC::Encoder::encodeHeader(v7);
  v14 = v7;
  v8 = IPC::Encoder::grow(v7, 1uLL, 1);
  if (a3)
  {
    if (v9)
    {
      *v8 = 1;
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v7, a2);
      goto LABEL_6;
    }

LABEL_9:
    __break(0xC471u);
    JUMPOUT(0x19D9B8398);
  }

  if (!v9)
  {
    goto LABEL_9;
  }

  *v8 = 0;
LABEL_6:
  IPC::Connection::sendMessageImpl(v5, &v14, 0, 0);
  result = v14;
  v14 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v10);
    return bmalloc::api::tzoneFree(v12, v13);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29NetworkConnectionToWebProcess20LoadImageForDecodingENS2_10ConnectionEN6WebKit29NetworkConnectionToWebProcessES9_FvON7WebCore15ResourceRequestENS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEyONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINS_3RefINSA_22FragmentedSharedBufferENS_12RawPtrTraitsISN_EENS_21DefaultRefDerefTraitsISN_EEEENSA_13ResourceErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSV_EED1Ev(void *a1)
{
  *a1 = &unk_1F10EF510;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29NetworkConnectionToWebProcess20LoadImageForDecodingENS2_10ConnectionEN6WebKit29NetworkConnectionToWebProcessES9_FvON7WebCore15ResourceRequestENS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEyONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINS_3RefINSA_22FragmentedSharedBufferENS_12RawPtrTraitsISN_EENS_21DefaultRefDerefTraitsISN_EEEENSA_13ResourceErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSV_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EF510;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29NetworkConnectionToWebProcess20LoadImageForDecodingENS2_10ConnectionEN6WebKit29NetworkConnectionToWebProcessES9_FvON7WebCore15ResourceRequestENS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEyONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINS_3RefINSA_22FragmentedSharedBufferENS_12RawPtrTraitsISN_EENS_21DefaultRefDerefTraitsISN_EEEENSA_13ResourceErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSV_EE4callESV_(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3258;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v12 = v5;
  LODWORD(v4) = a2[80];
  v6 = IPC::Encoder::grow(v5, 1uLL, 1);
  if (v4)
  {
    if (v7)
    {
      *v6 = 0;
      if (a2[80] == 1)
      {
        IPC::ArgumentCoder<WebCore::ResourceError,void>::encode(v5, a2);
        goto LABEL_8;
      }

LABEL_11:
      mpark::throw_bad_variant_access(v6);
    }

LABEL_12:
    __break(0xC471u);
    JUMPOUT(0x19D9B8578);
  }

  if (!v7)
  {
    goto LABEL_12;
  }

  *v6 = 1;
  if (a2[80])
  {
    goto LABEL_11;
  }

  IPC::ArgumentCoder<WebCore::FragmentedSharedBuffer,void>::encode(v5, *a2);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29NetworkConnectionToWebProcess14SetLoginStatusENS2_10ConnectionEN6WebKit29NetworkConnectionToWebProcessES9_FvON7WebCore17RegistrableDomainENSA_10IsLoggedInEONSt3__18optionalINSA_11LoginStatusEEEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10EF538;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29NetworkConnectionToWebProcess14SetLoginStatusENS2_10ConnectionEN6WebKit29NetworkConnectionToWebProcessES9_FvON7WebCore17RegistrableDomainENSA_10IsLoggedInEONSt3__18optionalINSA_11LoginStatusEEEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EF538;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29NetworkConnectionToWebProcess14SetLoginStatusENS2_10ConnectionEN6WebKit29NetworkConnectionToWebProcessES9_FvON7WebCore17RegistrableDomainENSA_10IsLoggedInEONSt3__18optionalINSA_11LoginStatusEEEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3269;
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29NetworkConnectionToWebProcess10IsLoggedInENS2_10ConnectionEN6WebKit29NetworkConnectionToWebProcessES9_FvON7WebCore17RegistrableDomainEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED1Ev(void *a1)
{
  *a1 = &unk_1F10EF560;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29NetworkConnectionToWebProcess10IsLoggedInENS2_10ConnectionEN6WebKit29NetworkConnectionToWebProcessES9_FvON7WebCore17RegistrableDomainEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EF560;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29NetworkConnectionToWebProcess10IsLoggedInENS2_10ConnectionEN6WebKit29NetworkConnectionToWebProcessES9_FvON7WebCore17RegistrableDomainEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEE4callEb(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3256;
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29NetworkConnectionToWebProcess26ShouldOffloadIFrameForHostENS2_10ConnectionEN6WebKit29NetworkConnectionToWebProcessES9_FvRKNS_6StringEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED1Ev(void *a1)
{
  *a1 = &unk_1F10EF588;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29NetworkConnectionToWebProcess26ShouldOffloadIFrameForHostENS2_10ConnectionEN6WebKit29NetworkConnectionToWebProcessES9_FvRKNS_6StringEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EF588;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29NetworkConnectionToWebProcess26ShouldOffloadIFrameForHostENS2_10ConnectionEN6WebKit29NetworkConnectionToWebProcessES9_FvRKNS_6StringEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEE4callEb(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3270;
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

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages29NetworkConnectionToWebProcess22PerformSynchronousLoadEN6WebKit29NetworkConnectionToWebProcessES8_FvONS7_29NetworkResourceLoadParametersEONS_17CompletionHandlerIFvRKN7WebCore13ResourceErrorENSC_16ResourceResponseEONS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSF_SG_SL_EED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10EF5B0;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages29NetworkConnectionToWebProcess22PerformSynchronousLoadEN6WebKit29NetworkConnectionToWebProcessES8_FvONS7_29NetworkResourceLoadParametersEONS_17CompletionHandlerIFvRKN7WebCore13ResourceErrorENSC_16ResourceResponseEONS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSF_SG_SL_EED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10EF5B0;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages29NetworkConnectionToWebProcess22PerformSynchronousLoadEN6WebKit29NetworkConnectionToWebProcessES8_FvONS7_29NetworkResourceLoadParametersEONS_17CompletionHandlerIFvRKN7WebCore13ResourceErrorENSC_16ResourceResponseEONS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSF_SG_SL_EE4callESF_SG_SL_(uint64_t a1, WebCore::ResourceError *a2, WebCore::ResourceResponseBase *a3, uint64_t a4)
{
  v6 = (a1 + 8);
  v7 = *(a1 + 8);
  IPC::ArgumentCoder<WebCore::ResourceError,void>::encode(v7, a2);
  IPC::ArgumentCoder<WebCore::ResourceResponse,void>::encode(v7, a3);
  IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(v7, *a4, *(a4 + 12));
  v8 = v6[1];

  return IPC::Connection::sendMessageImpl(v8, v6, 0, 0);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages29NetworkConnectionToWebProcess54TestProcessIncomingSyncMessagesWhenWaitingForSyncReplyEN6WebKit29NetworkConnectionToWebProcessES8_FvNS_23ObjectIdentifierGenericINS7_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_17CompletionHandlerIFvbEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJbEED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10EF5D8;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages29NetworkConnectionToWebProcess54TestProcessIncomingSyncMessagesWhenWaitingForSyncReplyEN6WebKit29NetworkConnectionToWebProcessES8_FvNS_23ObjectIdentifierGenericINS7_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_17CompletionHandlerIFvbEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJbEED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10EF5D8;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages29NetworkConnectionToWebProcess54TestProcessIncomingSyncMessagesWhenWaitingForSyncReplyEN6WebKit29NetworkConnectionToWebProcessES8_FvNS_23ObjectIdentifierGenericINS7_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_17CompletionHandlerIFvbEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJbEE4callEb(uint64_t a1, char a2)
{
  v4 = (a1 + 8);
  v5 = IPC::Encoder::grow(*(a1 + 8), 1uLL, 1);
  if (v6)
  {
    *v5 = a2;
    v7 = *(a1 + 16);

    return IPC::Connection::sendMessageImpl(v7, v4, 0, 0);
  }

  else
  {
    result = 1067;
    __break(0xC471u);
  }

  return result;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages29NetworkConnectionToWebProcess13CookiesForDOMEN6WebKit29NetworkConnectionToWebProcessES8_FvRKNS_3URLERKN7WebCore12SameSiteInfoESB_NS_23ObjectIdentifierGenericINSC_19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSG_INSC_18PageIdentifierTypeESJ_yEENSC_20IncludeSecureCookiesENSG_INS7_26WebPageProxyIdentifierTypeESJ_yEEONS_17CompletionHandlerIFvNS_6StringEbEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSR_bEED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10EF600;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages29NetworkConnectionToWebProcess13CookiesForDOMEN6WebKit29NetworkConnectionToWebProcessES8_FvRKNS_3URLERKN7WebCore12SameSiteInfoESB_NS_23ObjectIdentifierGenericINSC_19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSG_INSC_18PageIdentifierTypeESJ_yEENSC_20IncludeSecureCookiesENSG_INS7_26WebPageProxyIdentifierTypeESJ_yEEONS_17CompletionHandlerIFvNS_6StringEbEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSR_bEED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10EF600;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages29NetworkConnectionToWebProcess13CookiesForDOMEN6WebKit29NetworkConnectionToWebProcessES8_FvRKNS_3URLERKN7WebCore12SameSiteInfoESB_NS_23ObjectIdentifierGenericINSC_19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSG_INSC_18PageIdentifierTypeESJ_yEENSC_20IncludeSecureCookiesENSG_INS7_26WebPageProxyIdentifierTypeESJ_yEEONS_17CompletionHandlerIFvNS_6StringEbEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSR_bEE4callESR_b(uint64_t a1, uint64_t *a2, char a3)
{
  v5 = (a1 + 8);
  v6 = *(a1 + 8);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v6, a2);
  v7 = IPC::Encoder::grow(v6, 1uLL, 1);
  if (v8)
  {
    *v7 = a3;
    v9 = *(a1 + 16);

    return IPC::Connection::sendMessageImpl(v9, v5, 0, 0);
  }

  else
  {
    result = 1067;
    __break(0xC471u);
  }

  return result;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages29NetworkConnectionToWebProcess18CookiesEnabledSyncEN6WebKit29NetworkConnectionToWebProcessES8_FvRKNS_3URLESB_NSt3__18optionalINS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEENSD_INSE_INSF_18PageIdentifierTypeESI_yEEEENSE_INS7_26WebPageProxyIdentifierTypeESI_yEEONS_17CompletionHandlerIFvbEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJbEED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10EF628;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages29NetworkConnectionToWebProcess18CookiesEnabledSyncEN6WebKit29NetworkConnectionToWebProcessES8_FvRKNS_3URLESB_NSt3__18optionalINS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEENSD_INSE_INSF_18PageIdentifierTypeESI_yEEEENSE_INS7_26WebPageProxyIdentifierTypeESI_yEEONS_17CompletionHandlerIFvbEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJbEED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10EF628;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages29NetworkConnectionToWebProcess18CookiesEnabledSyncEN6WebKit29NetworkConnectionToWebProcessES8_FvRKNS_3URLESB_NSt3__18optionalINS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEENSD_INSE_INSF_18PageIdentifierTypeESI_yEEEENSE_INS7_26WebPageProxyIdentifierTypeESI_yEEONS_17CompletionHandlerIFvbEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJbEE4callEb(uint64_t a1, char a2)
{
  v4 = (a1 + 8);
  v5 = IPC::Encoder::grow(*(a1 + 8), 1uLL, 1);
  if (v6)
  {
    *v5 = a2;
    v7 = *(a1 + 16);

    return IPC::Connection::sendMessageImpl(v7, v4, 0, 0);
  }

  else
  {
    result = 1067;
    __break(0xC471u);
  }

  return result;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages29NetworkConnectionToWebProcess29CookieRequestHeaderFieldValueEN6WebKit29NetworkConnectionToWebProcessES8_FvRKNS_3URLERKN7WebCore12SameSiteInfoESB_NSt3__18optionalINS_23ObjectIdentifierGenericINSC_19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEENSH_INSI_INSC_18PageIdentifierTypeESL_yEEEENSC_20IncludeSecureCookiesENSH_INSI_INS7_26WebPageProxyIdentifierTypeESL_yEEEEONS_17CompletionHandlerIFvNS_6StringEbEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSW_bEED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10EF650;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages29NetworkConnectionToWebProcess29CookieRequestHeaderFieldValueEN6WebKit29NetworkConnectionToWebProcessES8_FvRKNS_3URLERKN7WebCore12SameSiteInfoESB_NSt3__18optionalINS_23ObjectIdentifierGenericINSC_19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEENSH_INSI_INSC_18PageIdentifierTypeESL_yEEEENSC_20IncludeSecureCookiesENSH_INSI_INS7_26WebPageProxyIdentifierTypeESL_yEEEEONS_17CompletionHandlerIFvNS_6StringEbEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSW_bEED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10EF650;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages29NetworkConnectionToWebProcess29CookieRequestHeaderFieldValueEN6WebKit29NetworkConnectionToWebProcessES8_FvRKNS_3URLERKN7WebCore12SameSiteInfoESB_NSt3__18optionalINS_23ObjectIdentifierGenericINSC_19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEENSH_INSI_INSC_18PageIdentifierTypeESL_yEEEENSC_20IncludeSecureCookiesENSH_INSI_INS7_26WebPageProxyIdentifierTypeESL_yEEEEONS_17CompletionHandlerIFvNS_6StringEbEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSW_bEE4callESW_b(uint64_t a1, uint64_t *a2, char a3)
{
  v5 = (a1 + 8);
  v6 = *(a1 + 8);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v6, a2);
  v7 = IPC::Encoder::grow(v6, 1uLL, 1);
  if (v8)
  {
    *v7 = a3;
    v9 = *(a1 + 16);

    return IPC::Connection::sendMessageImpl(v9, v5, 0, 0);
  }

  else
  {
    result = 1067;
    __break(0xC471u);
  }

  return result;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages29NetworkConnectionToWebProcess13GetRawCookiesEN6WebKit29NetworkConnectionToWebProcessES8_FvRKNS_3URLERKN7WebCore12SameSiteInfoESB_NSt3__18optionalINS_23ObjectIdentifierGenericINSC_19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEENSH_INSI_INSC_18PageIdentifierTypeESL_yEEEENSH_INSI_INS7_26WebPageProxyIdentifierTypeESL_yEEEEONS_17CompletionHandlerIFvONS_6VectorINSC_6CookieELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJS10_EED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10EF678;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages29NetworkConnectionToWebProcess13GetRawCookiesEN6WebKit29NetworkConnectionToWebProcessES8_FvRKNS_3URLERKN7WebCore12SameSiteInfoESB_NSt3__18optionalINS_23ObjectIdentifierGenericINSC_19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEENSH_INSI_INSC_18PageIdentifierTypeESL_yEEEENSH_INSI_INS7_26WebPageProxyIdentifierTypeESL_yEEEEONS_17CompletionHandlerIFvONS_6VectorINSC_6CookieELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJS10_EED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10EF678;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages29NetworkConnectionToWebProcess13GetRawCookiesEN6WebKit29NetworkConnectionToWebProcessES8_FvRKNS_3URLERKN7WebCore12SameSiteInfoESB_NSt3__18optionalINS_23ObjectIdentifierGenericINSC_19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEENSH_INSI_INSC_18PageIdentifierTypeESL_yEEEENSH_INSI_INS7_26WebPageProxyIdentifierTypeESL_yEEEEONS_17CompletionHandlerIFvONS_6VectorINSC_6CookieELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJS10_EE4callES10_(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 8);
  IPC::VectorArgumentCoder<false,WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(*(a1 + 8), a2);
  v3 = v2[1];

  return IPC::Connection::sendMessageImpl(v3, v2, 0, 0);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages29NetworkConnectionToWebProcess17DomCookiesForHostEN6WebKit29NetworkConnectionToWebProcessES8_FvRKNS_3URLEONS_17CompletionHandlerIFvRKNS_6VectorIN7WebCore6CookieELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSK_EED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10EF6A0;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages29NetworkConnectionToWebProcess17DomCookiesForHostEN6WebKit29NetworkConnectionToWebProcessES8_FvRKNS_3URLEONS_17CompletionHandlerIFvRKNS_6VectorIN7WebCore6CookieELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSK_EED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10EF6A0;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages29NetworkConnectionToWebProcess17DomCookiesForHostEN6WebKit29NetworkConnectionToWebProcessES8_FvRKNS_3URLEONS_17CompletionHandlerIFvRKNS_6VectorIN7WebCore6CookieELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSK_EE4callESK_(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 8);
  IPC::VectorArgumentCoder<false,WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(*(a1 + 8), a2);
  v3 = v2[1];

  return IPC::Connection::sendMessageImpl(v3, v2, 0, 0);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages29NetworkConnectionToWebProcess8BlobTypeEN6WebKit29NetworkConnectionToWebProcessES8_FvRKNS_3URLEONS_17CompletionHandlerIFvNS_6StringEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSD_EED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10EF6C8;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages29NetworkConnectionToWebProcess8BlobTypeEN6WebKit29NetworkConnectionToWebProcessES8_FvRKNS_3URLEONS_17CompletionHandlerIFvNS_6StringEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSD_EED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10EF6C8;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages29NetworkConnectionToWebProcess8BlobTypeEN6WebKit29NetworkConnectionToWebProcessES8_FvRKNS_3URLEONS_17CompletionHandlerIFvNS_6StringEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSD_EE4callESD_(uint64_t a1, uint64_t *a2)
{
  v2 = (a1 + 8);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(*(a1 + 8), a2);
  v3 = v2[1];

  return IPC::Connection::sendMessageImpl(v3, v2, 0, 0);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages29NetworkConnectionToWebProcess8BlobSizeEN6WebKit29NetworkConnectionToWebProcessES8_FvRKNS_3URLEONS_17CompletionHandlerIFvyEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJyEED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10EF6F0;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages29NetworkConnectionToWebProcess8BlobSizeEN6WebKit29NetworkConnectionToWebProcessES8_FvRKNS_3URLEONS_17CompletionHandlerIFvyEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJyEED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10EF6F0;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages29NetworkConnectionToWebProcess8BlobSizeEN6WebKit29NetworkConnectionToWebProcessES8_FvRKNS_3URLEONS_17CompletionHandlerIFvyEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJyEE4callEy(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 8);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(*(a1 + 8), a2);
  v3 = v2[1];

  return IPC::Connection::sendMessageImpl(v3, v2, 0, 0);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages29NetworkConnectionToWebProcess33GetNetworkLoadInformationResponseEN6WebKit29NetworkConnectionToWebProcessES8_FvNS_23ObjectIdentifierGenericIN7WebCore28ResourceLoaderIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_17CompletionHandlerIFvRKNSA_16ResourceResponseEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSI_EED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10EF718;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages29NetworkConnectionToWebProcess33GetNetworkLoadInformationResponseEN6WebKit29NetworkConnectionToWebProcessES8_FvNS_23ObjectIdentifierGenericIN7WebCore28ResourceLoaderIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_17CompletionHandlerIFvRKNSA_16ResourceResponseEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSI_EED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10EF718;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages29NetworkConnectionToWebProcess33GetNetworkLoadInformationResponseEN6WebKit29NetworkConnectionToWebProcessES8_FvNS_23ObjectIdentifierGenericIN7WebCore28ResourceLoaderIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_17CompletionHandlerIFvRKNSA_16ResourceResponseEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSI_EE4callESI_(uint64_t a1, WebCore::ResourceResponseBase *a2)
{
  v2 = (a1 + 8);
  IPC::ArgumentCoder<WebCore::ResourceResponse,void>::encode(*(a1 + 8), a2);
  v3 = v2[1];

  return IPC::Connection::sendMessageImpl(v3, v2, 0, 0);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages29NetworkConnectionToWebProcess37GetNetworkLoadIntermediateInformationEN6WebKit29NetworkConnectionToWebProcessES8_FvNS_23ObjectIdentifierGenericIN7WebCore28ResourceLoaderIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_17CompletionHandlerIFvRKNS_6VectorINSA_29NetworkTransactionInformationELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSM_EED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10EF740;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages29NetworkConnectionToWebProcess37GetNetworkLoadIntermediateInformationEN6WebKit29NetworkConnectionToWebProcessES8_FvNS_23ObjectIdentifierGenericIN7WebCore28ResourceLoaderIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_17CompletionHandlerIFvRKNS_6VectorINSA_29NetworkTransactionInformationELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSM_EED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10EF740;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages29NetworkConnectionToWebProcess37GetNetworkLoadIntermediateInformationEN6WebKit29NetworkConnectionToWebProcessES8_FvNS_23ObjectIdentifierGenericIN7WebCore28ResourceLoaderIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_17CompletionHandlerIFvRKNS_6VectorINSA_29NetworkTransactionInformationELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSM_EE4callESM_(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 8);
  v5 = *(a1 + 8);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v5, *(a2 + 12));
  v6 = *(a2 + 12);
  if (v6)
  {
    v7 = *a2;
    v8 = 600 * v6;
    do
    {
      IPC::ArgumentCoder<WebCore::NetworkTransactionInformation,void>::encode(v5, v7);
      v7 += 600;
      v8 -= 600;
    }

    while (v8);
  }

  v9 = *(a1 + 16);

  return IPC::Connection::sendMessageImpl(v9, v4, 0, 0);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages29NetworkConnectionToWebProcess33TakeNetworkLoadInformationMetricsEN6WebKit29NetworkConnectionToWebProcessES8_FvNS_23ObjectIdentifierGenericIN7WebCore28ResourceLoaderIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_17CompletionHandlerIFvRKNSA_18NetworkLoadMetricsEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSI_EED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10EF768;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages29NetworkConnectionToWebProcess33TakeNetworkLoadInformationMetricsEN6WebKit29NetworkConnectionToWebProcessES8_FvNS_23ObjectIdentifierGenericIN7WebCore28ResourceLoaderIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_17CompletionHandlerIFvRKNSA_18NetworkLoadMetricsEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSI_EED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10EF768;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages29NetworkConnectionToWebProcess33TakeNetworkLoadInformationMetricsEN6WebKit29NetworkConnectionToWebProcessES8_FvNS_23ObjectIdentifierGenericIN7WebCore28ResourceLoaderIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_17CompletionHandlerIFvRKNSA_18NetworkLoadMetricsEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSI_EE4callESI_(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 8);
  IPC::ArgumentCoder<WebCore::NetworkLoadMetrics,void>::encode(*(a1 + 8), a2);
  v3 = v2[1];

  return IPC::Connection::sendMessageImpl(v3, v2, 0, 0);
}

uint64_t IPC::ArgumentCoder<std::tuple<WebCore::ProcessQualified<WTF::UUID>>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v9 = *MEMORY[0x1E69E9840];
  result = IPC::ArgumentCoder<WebCore::ProcessQualified<WTF::UUID>,void>::decode(a1, v7);
  if (v8)
  {
    v5 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v5;
    v6 = 1;
  }

  else
  {
    result = IPC::Decoder::markInvalid(a1);
    v6 = 0;
    *a2 = 0;
  }

  *(a2 + 32) = v6;
  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19NetworkMDNSRegister16RegisterMDNSNameENS2_10ConnectionEN6WebKit19NetworkMDNSRegisterES9_FvN7WebCore16ProcessQualifiedINS_4UUIDEEERKNS_6StringEONS_17CompletionHandlerIFvSG_NSt3__18optionalINSA_17MDNSRegisterErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSG_SL_EED1Ev(void *a1)
{
  *a1 = &unk_1F10EF790;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19NetworkMDNSRegister16RegisterMDNSNameENS2_10ConnectionEN6WebKit19NetworkMDNSRegisterES9_FvN7WebCore16ProcessQualifiedINS_4UUIDEEERKNS_6StringEONS_17CompletionHandlerIFvSG_NSt3__18optionalINSA_17MDNSRegisterErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSG_SL_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EF790;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19NetworkMDNSRegister16RegisterMDNSNameENS2_10ConnectionEN6WebKit19NetworkMDNSRegisterES9_FvN7WebCore16ProcessQualifiedINS_4UUIDEEERKNS_6StringEONS_17CompletionHandlerIFvSG_NSt3__18optionalINSA_17MDNSRegisterErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSG_SL_EE4callESG_SL_(uint64_t a1, void *a2, __int16 a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = IPC::Encoder::operator new(0x238, a2);
  *v7 = 3275;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = v6;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  IPC::Encoder::encodeHeader(v7);
  v14 = v7;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v7, a2);
  v8 = IPC::Encoder::grow(v7, 1uLL, 1);
  if ((a3 & 0x100) == 0)
  {
    if (v9)
    {
      *v8 = 0;
      goto LABEL_6;
    }

LABEL_9:
    __break(0xC471u);
    JUMPOUT(0x19D9B9A54);
  }

  if (!v9)
  {
    goto LABEL_9;
  }

  *v8 = 1;
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v7, a3);
LABEL_6:
  IPC::Connection::sendMessageImpl(v5, &v14, 0, 0);
  result = v14;
  v14 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v10);
    return bmalloc::api::tzoneFree(v12, v13);
  }

  return result;
}

void IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ResourceError>>(_BYTE *a1, IPC::Decoder *a2)
{
  IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ResourceError>,void>::decode<IPC::Decoder>(a1, a2);
  if ((a1[88] & 1) == 0)
  {

    IPC::Decoder::markInvalid(a2);
  }
}

void IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ResourceError>,void>::decode<IPC::Decoder>(_BYTE *a1, IPC::Decoder *a2)
{
  v5 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  v6 = v4;
  if (v4)
  {
    IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ResourceError>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1, a2, &v5);
  }

  else
  {
    *a1 = 0;
    a1[88] = 0;
  }
}

void IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ResourceError>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(_BYTE *a1, IPC::Decoder *a2, uint64_t a3)
{
  IPC::Decoder::decode<WebCore::ResourceError>(a2, v6);
  if ((v7 & 1) == 0)
  {
    *a1 = 0;
    a1[88] = 0;
    goto LABEL_4;
  }

  if (*(a3 + 8))
  {
    _ZNSt3__127__optional_copy_assign_baseINS_5tupleIJN3WTF23ObjectIdentifierGenericIN7WebCore28ResourceLoaderIdentifierTypeENS2_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEENS4_13ResourceErrorEEEELb0EECI2NS_24__optional_destruct_baseISA_Lb0EEEIJS8_S9_EEENS_10in_place_tEDpOT_(a1, *a3, v6);
LABEL_4:
    std::optional<WebCore::ResourceError>::~optional(v6, v5);
    return;
  }

  __break(1u);
}

uint64_t _ZNSt3__127__optional_copy_assign_baseINS_5tupleIJN3WTF23ObjectIdentifierGenericIN7WebCore28ResourceLoaderIdentifierTypeENS2_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEENS4_13ResourceErrorEEEELb0EECI2NS_24__optional_destruct_baseISA_Lb0EEEIJS8_S9_EEENS_10in_place_tEDpOT_(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *a1 = a2;
  v5 = *a3;
  *a3 = 0;
  *(a1 + 8) = v5;
  WTF::URL::URL(a1 + 16, a3 + 1);
  v6 = a3[6];
  a3[6] = 0;
  *(a1 + 56) = v6;
  LODWORD(v6) = *(a3 + 14);
  *(a1 + 68) = *(a3 + 30);
  *(a1 + 64) = v6;
  v7 = a3[8];
  a3[8] = 0;
  *(a1 + 72) = v7;
  *(a1 + 80) = *(a3 + 72);
  *(a1 + 88) = 1;
  return a1;
}

uint64_t std::optional<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ResourceError>>::~optional(uint64_t a1, WTF::StringImpl *a2)
{
  if (*(a1 + 88) == 1)
  {
    v3 = *(a1 + 72);
    *(a1 + 72) = 0;
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = *(a1 + 56);
    *(a1 + 56) = 0;
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }

    v5 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, a2);
    }

    v6 = *(a1 + 8);
    *(a1 + 8) = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, a2);
    }
  }

  return a1;
}

uint64_t IPC::Decoder::decode<std::tuple<WebCore::HTTPCookieAcceptPolicy>>(IPC::Decoder *a1)
{
  PartyWebsiteDataRemoval = IPC::Decoder::decode<WebCore::FirstPartyWebsiteDataRemovalMode>(a1);
  v3 = PartyWebsiteDataRemoval & 0x100;
  if ((PartyWebsiteDataRemoval & 0x100) == 0)
  {
    v6 = *a1;
    v7 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v8 = *(a1 + 3);
    if (v8 && v7 != 0)
    {
      v11 = PartyWebsiteDataRemoval;
      v10 = PartyWebsiteDataRemoval & 0x100;
      (*(*v8 + 16))(v8, v6);
      v3 = v10;
      LOBYTE(PartyWebsiteDataRemoval) = v11;
    }
  }

  v4 = PartyWebsiteDataRemoval;
  if (!v3)
  {
    v4 = 0;
  }

  return v4 | v3;
}

WTF::StringImpl *IPC::Decoder::decode<std::tuple<WTF::String,WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(uint64_t a1, IPC::Decoder *a2)
{
  IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a2, &v18);
  if ((v19 & 1) == 0)
  {
    goto LABEL_19;
  }

  while (1)
  {
    IPC::VectorArgumentCoder<false,WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a2, &v20, v4);
    if ((v22 & 1) == 0)
    {
      v5 = *a2;
      v13 = *(a2 + 1);
      *a2 = 0;
      *(a2 + 1) = 0;
      result = *(a2 + 3);
      if (!result)
      {
        break;
      }

      if (!v13)
      {
        break;
      }

      result = (*(*result + 16))(result, v5);
      if ((v22 & 1) == 0)
      {
        break;
      }
    }

    if (v19)
    {
      v6 = v18;
      v18 = 0;
      v7 = v20;
      *a1 = v6;
      *(a1 + 8) = v7;
      v8 = v21;
      v20 = 0;
      v21 = 0;
      *(a1 + 16) = v8;
      v9 = 1;
      *(a1 + 24) = 1;
      result = WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v20, v5);
      goto LABEL_5;
    }

    __break(1u);
LABEL_19:
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
      if (v19)
      {
        continue;
      }
    }

    *a1 = 0;
    *(a1 + 24) = 0;
    goto LABEL_11;
  }

  v9 = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
LABEL_5:
  if ((v19 & 1) != 0 && (result = v18, v18 = 0, result) && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v5);
    if (v9)
    {
      return result;
    }
  }

  else if (v9)
  {
    return result;
  }

LABEL_11:
  v11 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result && v11)
  {
    v12 = *(*result + 16);

    return v12();
  }

  return result;
}