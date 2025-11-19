uint64_t IPC::handleMessageAsync<Messages::NetworkProcess::SetTimeToLiveUserInteraction,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::Seconds,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID,WTF::Seconds>>(v13, a2);
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
      *v11 = &unk_1F10F0408;
      v11[1] = v8;
      v11[2] = a1;
      v12 = v11;
      WebKit::NetworkProcess::setTimeToLiveUserInteraction(a3, v13[0], &v12, *&v13[1]);
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

WTF::StringImpl *IPC::handleMessageAsync<Messages::NetworkProcess::SetTopFrameUniqueRedirectTo,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID,WebCore::RegistrableDomain,WebCore::RegistrableDomain>>(&v15, a2);
  if (v18 == 1)
  {
    v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if ((v8 & 1) == 0)
    {
      goto LABEL_11;
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
    v12 = WTF::fastMalloc(0x18);
    *v12 = &unk_1F10F0430;
    *(v12 + 1) = v9;
    *(v12 + 2) = a1;
    v14 = v12;
    WebKit::NetworkProcess::setTopFrameUniqueRedirectTo(a3, v15, &v16, &v17, &v14);
    result = v14;
    v14 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    if (v18)
    {
LABEL_11:
      v13 = v17;
      v17 = 0;
      if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v8);
      }

      result = v16;
      v16 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v8);
        }
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::NetworkProcess::SetTopFrameUniqueRedirectFrom,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID,WebCore::RegistrableDomain,WebCore::RegistrableDomain>>(&v15, a2);
  if (v18 == 1)
  {
    v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if ((v8 & 1) == 0)
    {
      goto LABEL_11;
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
    v12 = WTF::fastMalloc(0x18);
    *v12 = &unk_1F10F0458;
    *(v12 + 1) = v9;
    *(v12 + 2) = a1;
    v14 = v12;
    WebKit::NetworkProcess::setTopFrameUniqueRedirectFrom(a3, v15, &v16, &v17, &v14);
    result = v14;
    v14 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    if (v18)
    {
LABEL_11:
      v13 = v17;
      v17 = 0;
      if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v8);
      }

      result = v16;
      v16 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v8);
        }
      }
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::NetworkProcess::ResetCacheMaxAgeCapForPrevalentResources,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID>>(a2);
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
      *v13 = &unk_1F10F0480;
      v13[1] = v10;
      v13[2] = a1;
      v14 = v13;
      WebKit::NetworkProcess::resetCacheMaxAgeCapForPrevalentResources(a3, v8, &v14);
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

WTF::StringImpl *IPC::handleMessage<Messages::NetworkProcess::DidCommitCrossSiteLoadWithDataTransfer,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::OptionSet<WebCore::CrossSiteNavigationDataTransferFlag>,WebCore::RegistrableDomain &&::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::OptionSet<WebCore::CrossSiteNavigationDataTransferFlag><WebCore::PageIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebKit::DidFilterKnownLinkDecoration)>(IPC::Decoder *a1, uint64_t a2)
{
  v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if ((v8 & 1) == 0)
  {
    goto LABEL_29;
  }

  v9 = v7;
  IPC::ArgumentCoder<WebCore::RegistrableDomain,void>::decode(a1, &v44);
  if ((v45 & 1) == 0)
  {
    v25 = *a1;
    v26 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v27 = *(a1 + 3);
    if (v27 && v26)
    {
      (*(*v27 + 16))(v27, v25);
    }

    goto LABEL_29;
  }

  IPC::ArgumentCoder<WebCore::RegistrableDomain,void>::decode(a1, &v46);
  if (v47)
  {
    v10 = *(a1 + 1);
    v11 = *(a1 + 2);
    v12 = *a1;
    if (v10 <= &v11[-*a1])
    {
      *a1 = 0;
      *(a1 + 1) = 0;
      v33 = *(a1 + 3);
      if (v33)
      {
        if (v10)
        {
          (*(*v33 + 16))(v33);
          v10 = *(a1 + 1);
        }
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      *(a1 + 2) = v11 + 1;
      if (v11)
      {
        v13 = *v11;
        if ((v13 & 0xFFFFFFF9) == 0)
        {
          v14 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
          if (v12)
          {
            v2 = v14;
            v15 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
            if (v12)
            {
              v3 = v15;
              v16 = IPC::Decoder::decode<WebCore::GraphicsContextGLSurfaceBuffer>(a1);
              if (v16 > 0xFFu)
              {
                v4 = v16;
                v23 = v44;
                v44 = 0;
                v36 = v9;
                v37 = v23;
                v24 = v46;
                v46 = 0;
                v38 = v24;
                v39 = v13;
                v40 = v2;
                v41 = v3;
                v17 = 1;
                v42 = v16;
                goto LABEL_11;
              }
            }
          }

LABEL_10:
          LOBYTE(v13) = 0;
          v17 = 0;
          LOBYTE(v36) = 0;
LABEL_11:
          v43 = v17;
          v18 = v46;
          if (v46 && atomic_fetch_add_explicit(v46, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v18, v12);
          }

          goto LABEL_14;
        }

        goto LABEL_47;
      }
    }

    *a1 = 0;
    *(a1 + 1) = 0;
    v34 = *(a1 + 3);
    if (v34)
    {
      if (v10)
      {
        (*(*v34 + 16))(v34);
        v12 = *a1;
        v10 = *(a1 + 1);
        goto LABEL_47;
      }
    }

    else
    {
      v10 = 0;
    }

    v12 = 0;
LABEL_47:
    *a1 = 0;
    *(a1 + 1) = 0;
    v35 = *(a1 + 3);
    if (v35 && v10)
    {
      (*(*v35 + 16))(v35, v12);
    }

    goto LABEL_10;
  }

  v12 = *a1;
  v31 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  v32 = *(a1 + 3);
  if (v32 && v31)
  {
    (*(*v32 + 16))(v32, v12);
  }

  LOBYTE(v13) = 0;
  v17 = 0;
  LOBYTE(v36) = 0;
  v43 = 0;
LABEL_14:
  v19 = v44;
  if (v44 && atomic_fetch_add_explicit(v44, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v19, v12);
    if (v17)
    {
LABEL_17:
      result = WebKit::NetworkProcess::didCommitCrossSiteLoadWithDataTransfer(a2, v36, &v37, &v38, v13, v2, v3, v4 & 1);
      if (v43)
      {
        v22 = v38;
        v38 = 0;
        if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v22, v21);
        }

        result = v37;
        v37 = 0;
        if (result)
        {
          if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            return WTF::StringImpl::destroy(result, v21);
          }
        }
      }

      return result;
    }
  }

  else if (v17)
  {
    goto LABEL_17;
  }

LABEL_29:
  v28 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  result = *(a1 + 3);
  if (result)
  {
    v29 = v28 == 0;
  }

  else
  {
    v29 = 1;
  }

  if (!v29)
  {
    v30 = *(*result + 16);

    return v30();
  }

  return result;
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::NetworkProcess::SetCrossSiteLoadWithLinkDecorationForTesting,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WebKit::DidFilterKnownLinkDecoration,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v8 & 1) == 0)
  {
    goto LABEL_32;
  }

  v9 = v7;
  IPC::ArgumentCoder<WebCore::RegistrableDomain,void>::decode(a2, &v37);
  if ((v38 & 1) == 0)
  {
    v24 = *a2;
    v25 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v26 = *(a2 + 3);
    if (v26 && v25)
    {
      (*(*v26 + 16))(v26, v24);
    }

    goto LABEL_32;
  }

  IPC::ArgumentCoder<WebCore::RegistrableDomain,void>::decode(a2, &v39);
  if (v40)
  {
    v10 = IPC::Decoder::decode<WebCore::GraphicsContextGLSurfaceBuffer>(a2);
    if (v10 >= 0x100u)
    {
      v3 = v10;
      v14 = v37;
      v37 = 0;
      v32 = v9;
      v33 = v14;
      v34 = v39;
      v35 = v10;
      v13 = 1;
      v36 = 1;
    }

    else
    {
      LOBYTE(v32) = 0;
      v12 = v39;
      v36 = 0;
      if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v12, v11);
      }

      v13 = 0;
    }
  }

  else
  {
    v11 = *a2;
    v30 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v31 = *(a2 + 3);
    if (v31 && v30)
    {
      (*(*v31 + 16))(v31, v11);
    }

    v13 = 0;
    LOBYTE(v32) = 0;
    v36 = 0;
  }

  v15 = v37;
  if (v37 && atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, v11);
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_32:
    v27 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result)
    {
      v28 = v27 == 0;
    }

    else
    {
      v28 = 1;
    }

    if (!v28)
    {
      v29 = *(*result + 16);

      return v29();
    }

    return result;
  }

  if ((v13 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_13:
  v16 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v17 & 1) == 0)
  {
    goto LABEL_22;
  }

  v18 = v16;
  while (1)
  {
    v19 = *a1;
    if ((*a1 & 1) == 0)
    {
      break;
    }

    v20 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v20, v19 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v20 == v19)
    {
      goto LABEL_19;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_19:
  v21 = WTF::fastMalloc(0x18);
  *v21 = &unk_1F10F04A8;
  *(v21 + 1) = v18;
  *(v21 + 2) = a1;
  v39 = v21;
  WebKit::NetworkProcess::setCrossSiteLoadWithLinkDecorationForTesting(a3, v32, &v33, &v34, v3 & 1, &v39);
  result = v39;
  v39 = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  if (v36)
  {
LABEL_22:
    v23 = v34;
    v34 = 0;
    if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v23, v17);
    }

    result = v33;
    v33 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v17);
      }
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::NetworkProcess::ResetCrossSiteLoadsWithLinkDecorationForTesting,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID>>(a2);
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
      *v13 = &unk_1F10F04D0;
      v13[1] = v10;
      v13[2] = a1;
      v14 = v13;
      WebKit::NetworkProcess::resetCrossSiteLoadsWithLinkDecorationForTesting(a3, v8, &v14);
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

uint64_t IPC::handleMessageAsync<Messages::NetworkProcess::GrantStorageAccessForTesting,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WebCore::RegistrableDomain&&,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  v4 = a2;
  v6 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v7 & 1) == 0 || (v8 = v6, IPC::Decoder::decode<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v4, &v26), v28 != 1))
  {
    LOBYTE(v22) = 0;
    v25 = 0;
    goto LABEL_26;
  }

  IPC::ArgumentCoder<WebCore::RegistrableDomain,void>::decode(v4, &v29);
  if ((v30 & 1) == 0)
  {
    goto LABEL_22;
  }

  if ((v28 & 1) == 0)
  {
    goto LABEL_21;
  }

  v22 = v8;
  v23[0] = v26;
  v10 = v27;
  v26 = 0;
  v27 = 0;
  v23[1] = v10;
  v24 = v29;
  v25 = 1;
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v26, v9);
  while (1)
  {
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v4);
    if ((v12 & 1) == 0)
    {
      break;
    }

    v4 = result;
    while (1)
    {
      v13 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v14 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v14, v13 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v14 == v13)
      {
        goto LABEL_12;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_12:
    v15 = WTF::fastMalloc(0x18);
    *v15 = &unk_1F10F04F8;
    v15[1] = v4;
    v15[2] = a1;
    v26 = v15;
    if (v25)
    {
      WebKit::NetworkProcess::grantStorageAccessForTesting(a3, v22, v23, &v24, &v26);
      result = v26;
      v26 = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }

      break;
    }

LABEL_21:
    __break(1u);
LABEL_22:
    v17 = *v4;
    v18 = *(v4 + 1);
    *v4 = 0;
    *(v4 + 1) = 0;
    v19 = *(v4 + 3);
    if (v19 && v18)
    {
      (*(*v19 + 16))(v19, v17);
    }

    LOBYTE(v22) = 0;
    v25 = 0;
    if (v28)
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v26, v17);
    }

LABEL_26:
    v12 = *v4;
    v20 = *(v4 + 1);
    *v4 = 0;
    *(v4 + 1) = 0;
    result = *(v4 + 3);
    if (result)
    {
      v21 = v20 == 0;
    }

    else
    {
      v21 = 1;
    }

    if (!v21)
    {
      result = (*(*result + 16))(result, v12);
      if (v25)
      {
        continue;
      }
    }

    break;
  }

  if (v25 == 1)
  {
    v16 = v24;
    v24 = 0;
    if (v16)
    {
      if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v16, v12);
      }
    }

    return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v23, v12);
  }

  return result;
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::NetworkProcess::DeleteCookiesForTesting,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WebCore::RegistrableDomain,BOOL,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID,WebCore::RegistrableDomain,BOOL>>(&v16, a2);
  if (v19 == 1)
  {
    v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v8)
    {
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
      v12 = WTF::fastMalloc(0x18);
      *v12 = &unk_1F10F0520;
      *(v12 + 1) = v9;
      *(v12 + 2) = a1;
      v15 = v12;
      v20 = v17;
      WebKit::NetworkProcess::deleteCookiesForTesting(a3, v16, &v20, v18, &v15);
      v14 = v20;
      v20 = 0;
      if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v13);
      }

      result = v15;
      v15 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }

    else
    {
      result = v17;
      if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {

        return WTF::StringImpl::destroy(result, v8);
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::NetworkProcess::HasIsolatedSession,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WebCore::RegistrableDomain const&,WTF::CompletionHandler<void ()(BOOL)> &&)const>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID,WebCore::RegistrableDomain>>(&v14, a2);
  if (v16 == 1)
  {
    v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if ((v8 & 1) == 0)
    {
      goto LABEL_11;
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
    v12 = WTF::fastMalloc(0x18);
    *v12 = &unk_1F10F0548;
    *(v12 + 1) = v9;
    *(v12 + 2) = a1;
    v13 = v12;
    WebKit::NetworkProcess::hasIsolatedSession(a3, v14, &v15, &v13);
    result = v13;
    v13 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    if (v16)
    {
LABEL_11:
      result = v15;
      v15 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v8);
        }
      }
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::NetworkProcess::CloseITPDatabase,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID>>(a2);
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
      *v13 = &unk_1F10F0570;
      v13[1] = v10;
      v13[2] = a1;
      v14 = v13;
      WebKit::NetworkProcess::closeITPDatabase(a3, v8, &v14);
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

WTF::StringImpl *IPC::handleMessageAsync<Messages::NetworkProcess::SetAppBoundDomainsForResourceLoadStatistics,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>(&v14, a2);
  if (v16 == 1)
  {
    v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if ((v8 & 1) == 0)
    {
      goto LABEL_11;
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
    v12 = WTF::fastMalloc(0x18);
    *v12 = &unk_1F10F0598;
    *(v12 + 1) = v9;
    *(v12 + 2) = a1;
    v13 = v12;
    WebKit::NetworkProcess::setAppBoundDomainsForResourceLoadStatistics(a3, v14, &v15, &v13);
    result = v13;
    v13 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    if (v16)
    {
LABEL_11:
      result = v15;
      if (v15)
      {
        return WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v15, v8);
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::NetworkProcess::SetManagedDomainsForResourceLoadStatistics,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>(&v14, a2);
  if (v16 == 1)
  {
    v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if ((v8 & 1) == 0)
    {
      goto LABEL_11;
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
    v12 = WTF::fastMalloc(0x18);
    *v12 = &unk_1F10F05C0;
    *(v12 + 1) = v9;
    *(v12 + 2) = a1;
    v13 = v12;
    WebKit::NetworkProcess::setManagedDomainsForResourceLoadStatistics(a3, v14, &v15, &v13);
    result = v13;
    v13 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    if (v16)
    {
LABEL_11:
      result = v15;
      if (v15)
      {
        return WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v15, v8);
      }
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::NetworkProcess::SetShouldDowngradeReferrerForTesting,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(BOOL,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<BOOL>>(a2);
  if ((result & 0x100) != 0)
  {
    v7 = result;
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v8)
    {
      v9 = result;
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
      v12 = WTF::fastMalloc(0x18);
      *v12 = &unk_1F10F05E8;
      v12[1] = v9;
      v12[2] = a1;
      v13 = v12;
      WebKit::NetworkProcess::setShouldDowngradeReferrerForTesting(a3, v7 & 1, &v13);
      result = v13;
      v13 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::NetworkProcess::SetThirdPartyCookieBlockingMode,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WebCore::ThirdPartyCookieBlockingMode,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  v6 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v7 & 1) != 0 && (v8 = v6, v9 = IPC::Decoder::decode<WebCore::ThirdPartyCookieBlockingMode>(a2), (v9 & 0x100) != 0))
  {
    v14 = v9;
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v15)
    {
      v16 = result;
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
          goto LABEL_16;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_16:
      v19 = WTF::fastMalloc(0x18);
      *v19 = &unk_1F10F0610;
      v19[1] = v16;
      v19[2] = a1;
      v20 = v19;
      WebKit::NetworkProcess::setThirdPartyCookieBlockingMode(a3, v8, v14, &v20);
      result = v20;
      v20 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  else
  {
    v10 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result)
    {
      v12 = v10 == 0;
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

uint64_t IPC::handleMessageAsync<Messages::NetworkProcess::SetShouldEnbleSameSiteStrictEnforcementForTesting,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WebCore::SameSiteStrictEnforcementEnabled,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  v6 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v7 & 1) != 0 && (v8 = v6, v9 = IPC::Decoder::decode<WebKit::AllowsCellularAccess>(a2), (v9 & 0x100) != 0))
  {
    v14 = v9;
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v15)
    {
      v16 = result;
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
          goto LABEL_16;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_16:
      v19 = WTF::fastMalloc(0x18);
      *v19 = &unk_1F10F0638;
      v19[1] = v16;
      v19[2] = a1;
      v20 = v19;
      WebKit::NetworkProcess::setShouldEnbleSameSiteStrictEnforcementForTesting(a3, v8, v14 & 1, &v20);
      result = v20;
      v20 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  else
  {
    v10 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result)
    {
      v12 = v10 == 0;
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

uint64_t IPC::handleMessageAsync<Messages::NetworkProcess::SetFirstPartyWebsiteDataRemovalModeForTesting,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WebCore::FirstPartyWebsiteDataRemovalMode,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  v6 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v7 & 1) != 0 && (v8 = v6, PartyWebsiteDataRemoval = IPC::Decoder::decode<WebCore::FirstPartyWebsiteDataRemovalMode>(a2), (PartyWebsiteDataRemoval & 0x100) != 0))
  {
    v14 = PartyWebsiteDataRemoval;
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v15)
    {
      v16 = result;
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
          goto LABEL_16;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_16:
      v19 = WTF::fastMalloc(0x18);
      *v19 = &unk_1F10F0660;
      v19[1] = v16;
      v19[2] = a1;
      v20 = v19;
      WebKit::NetworkProcess::setFirstPartyWebsiteDataRemovalModeForTesting(a3, v8, v14, &v20);
      result = v20;
      v20 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  else
  {
    v10 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result)
    {
      v12 = v10 == 0;
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

WTF::StringImpl *IPC::handleMessageAsync<Messages::NetworkProcess::SetToSameSiteStrictCookiesForTesting,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WebCore::RegistrableDomain const&,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID,WebCore::RegistrableDomain>>(&v14, a2);
  if (v16 == 1)
  {
    v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if ((v8 & 1) == 0)
    {
      goto LABEL_11;
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
    v12 = WTF::fastMalloc(0x18);
    *v12 = &unk_1F10F0688;
    *(v12 + 1) = v9;
    *(v12 + 2) = a1;
    v13 = v12;
    WebKit::NetworkProcess::setToSameSiteStrictCookiesForTesting(a3, v14, &v15, &v13);
    result = v13;
    v13 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    if (v16)
    {
LABEL_11:
      result = v15;
      v15 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v8);
        }
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::NetworkProcess::SetFirstPartyHostCNAMEDomainForTesting,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::String &&,WebCore::RegistrableDomain &&,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  v6 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if (v7)
  {
    v8 = v6;
    IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a2, &v30);
    if ((v31 & 1) == 0)
    {
      goto LABEL_32;
    }

    while (1)
    {
      IPC::ArgumentCoder<WebCore::RegistrableDomain,void>::decode(a2, &v32);
      if ((v33 & 1) == 0)
      {
        v17 = *a2;
        v18 = *(a2 + 1);
        *a2 = 0;
        *(a2 + 1) = 0;
        v19 = *(a2 + 3);
        if (v19 && v18)
        {
          (*(*v19 + 16))(v19, v17);
        }

        if (v31)
        {
          v20 = v30;
          v30 = 0;
          if (v20)
          {
            if (atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v20, v17);
            }
          }
        }

        goto LABEL_26;
      }

      if (v31)
      {
        break;
      }

      __break(1u);
LABEL_32:
      v24 = *a2;
      v25 = *(a2 + 1);
      *a2 = 0;
      *(a2 + 1) = 0;
      v26 = *(a2 + 3);
      if (v26)
      {
        if (v25)
        {
          (*(*v26 + 16))(v26, v24);
          if (v31)
          {
            continue;
          }
        }
      }

      goto LABEL_26;
    }

    v27 = v30;
    v28 = v32;
    v29 = 1;
    v9 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if ((v10 & 1) == 0)
    {
      goto LABEL_14;
    }

    v11 = v9;
    while (1)
    {
      v12 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v13 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v13, v12 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v13 == v12)
      {
        goto LABEL_11;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_11:
    v14 = WTF::fastMalloc(0x18);
    *v14 = &unk_1F10F06B0;
    *(v14 + 1) = v11;
    *(v14 + 2) = a1;
    v32 = v14;
    WebKit::NetworkProcess::setFirstPartyHostCNAMEDomainForTesting(a3, v8, &v27, &v28, &v32);
    result = v32;
    v32 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    if (v29)
    {
LABEL_14:
      v16 = v28;
      v28 = 0;
      if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v16, v10);
      }

      result = v27;
      v27 = 0;
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
LABEL_26:
    v21 = *a2;
    v22 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result)
    {
      v23 = v22 == 0;
    }

    else
    {
      v23 = 1;
    }

    if (!v23)
    {
      return (*(*result + 16))(result, v21);
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::NetworkProcess::SetThirdPartyCNAMEDomainForTesting,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WebCore::RegistrableDomain &&,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID,WebCore::RegistrableDomain>>(&v14, a2);
  if (v16 == 1)
  {
    v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if ((v8 & 1) == 0)
    {
      goto LABEL_11;
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
    v12 = WTF::fastMalloc(0x18);
    *v12 = &unk_1F10F06D8;
    *(v12 + 1) = v9;
    *(v12 + 2) = a1;
    v13 = v12;
    WebKit::NetworkProcess::setThirdPartyCNAMEDomainForTesting(a3, v14, &v15, &v13);
    result = v13;
    v13 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    if (v16)
    {
LABEL_11:
      result = v15;
      v15 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v8);
        }
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessage<Messages::NetworkProcess::RegisterURLSchemeAsSecure,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(WTF::String const&)const>(IPC::Decoder *a1, WebKit::NetworkProcess *a2)
{
  IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a1, &v9);
  if (v10 & 1) != 0 || ((v6 = *a1, v7 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (result = *(a1 + 3)) != 0) ? (v8 = v7 == 0) : (v8 = 1), !v8 && (result = (*(*result + 16))(result, v6), (v10)))
  {
    result = WebKit::NetworkProcess::registerURLSchemeAsSecure(a2, &v9);
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

WTF::StringImpl *IPC::handleMessage<Messages::NetworkProcess::RegisterURLSchemeAsBypassingContentSecurityPolicy,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(WTF::String const&)const>(IPC::Decoder *a1, WebKit::NetworkProcess *a2)
{
  IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a1, &v9);
  if (v10 & 1) != 0 || ((v6 = *a1, v7 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (result = *(a1 + 3)) != 0) ? (v8 = v7 == 0) : (v8 = 1), !v8 && (result = (*(*result + 16))(result, v6), (v10)))
  {
    result = WebKit::NetworkProcess::registerURLSchemeAsBypassingContentSecurityPolicy(a2, &v9);
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

WTF::StringImpl *IPC::handleMessage<Messages::NetworkProcess::RegisterURLSchemeAsLocal,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(WTF::String const&)const>(IPC::Decoder *a1, WebKit::NetworkProcess *a2)
{
  IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a1, &v9);
  if (v10 & 1) != 0 || ((v6 = *a1, v7 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (result = *(a1 + 3)) != 0) ? (v8 = v7 == 0) : (v8 = 1), !v8 && (result = (*(*result + 16))(result, v6), (v10)))
  {
    result = WebKit::NetworkProcess::registerURLSchemeAsLocal(a2, &v9);
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

uint64_t IPC::handleMessageAsync<Messages::NetworkProcess::SyncLocalStorage,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
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
    *v10 = &unk_1F10F0700;
    v10[1] = v7;
    v10[2] = a1;
    v11 = v10;
    WebKit::NetworkProcess::syncLocalStorage(a3, &v11);
    result = v11;
    v11 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::NetworkProcess::StoreServiceWorkerRegistrations,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID>>(a2);
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
      *v13 = &unk_1F10F0728;
      v13[1] = v10;
      v13[2] = a1;
      v14 = v13;
      WebKit::NetworkProcess::storeServiceWorkerRegistrations(a3, v8, &v14);
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

void IPC::handleMessage<Messages::NetworkProcess::StorePrivateClickMeasurement,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WebCore::PrivateClickMeasurement &&)>(IPC::Decoder *a1, uint64_t a2)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if (v5)
  {
    v6 = v4;
    IPC::ArgumentCoder<WebCore::PrivateClickMeasurement,void>::decode(a1, v58);
    if (v86 & 1) != 0 || (v19 = *a1, v20 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (v21 = *(a1 + 3)) != 0) && v20 && ((*(*v21 + 16))(v21, v19), (v86))
    {
      v28 = v6;
      v29[0] = v58[0];
      v8 = v59;
      v59 = 0uLL;
      v30 = v8;
      v31[0] = v60[0];
      *(v31 + 9) = *(v60 + 9);
      LOBYTE(v32) = 0;
      v46 = 0;
      if (v75 == 1)
      {
        v32 = v61;
        v33 = v62;
        LOBYTE(v34) = 0;
        v35 = 0;
        if (v64 == 1)
        {
          v26 = v63;
          v63 = 0;
          v34 = v26;
          v35 = 1;
        }

        LOBYTE(v36) = 0;
        v37 = 0;
        if (v66 == 1)
        {
          v9 = v65;
          v65 = 0;
          v36 = v9;
          v37 = 1;
        }

        LOBYTE(v38) = 0;
        v39 = 0;
        if (v68 == 1)
        {
          v27 = v67;
          v67 = 0;
          v38 = v27;
          v39 = 1;
        }

        LOBYTE(v40) = 0;
        v42 = 0;
        if (v71 == 1)
        {
          v10 = v70;
          v40 = v69;
          v69 = 0u;
          v70 = 0u;
          v41 = v10;
          v42 = v71;
        }

        LOBYTE(v43) = 0;
        v45 = 0;
        if (v74 == 1)
        {
          v11 = v72;
          v72 = 0uLL;
          v43 = v11;
          v12 = v73;
          v73 = 0;
          v44 = v12;
          v45 = 1;
        }

        v46 = 1;
      }

      v47 = v76;
      v48 = v77;
      LOBYTE(v49) = 0;
      v50 = 0;
      if (v79 == 1)
      {
        v13 = v78;
        v78 = 0;
        v49 = v13;
        v50 = 1;
      }

      v14 = v81;
      v51 = v80;
      v80 = 0u;
      v81 = 0u;
      v52 = v14;
      LOBYTE(v53) = 0;
      v55 = 0;
      if (v84 == 1)
      {
        v15 = v82;
        v82 = 0uLL;
        v53 = v15;
        v16 = v83;
        v83 = 0;
        v54 = v16;
        v55 = 1;
      }

      v17 = v85;
      v85 = 0;
      v56 = v17;
      v57 = 1;
      WebCore::PrivateClickMeasurement::~PrivateClickMeasurement(v58, v7);
      goto LABEL_20;
    }
  }

  LOBYTE(v28) = 0;
  v57 = 0;
  v22 = *a1;
  v23 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  v24 = *(a1 + 3);
  if (v24)
  {
    v25 = v23 == 0;
  }

  else
  {
    v25 = 1;
  }

  if (!v25)
  {
    (*(*v24 + 16))(v24, v22);
    if (v57)
    {
LABEL_20:
      WebKit::NetworkProcess::storePrivateClickMeasurement(a2, v28, v29);
      if (v57)
      {
        WebCore::PrivateClickMeasurement::~PrivateClickMeasurement(v29, v18);
      }
    }
  }
}

uint64_t IPC::handleMessageAsync<Messages::NetworkProcess::DumpPrivateClickMeasurement,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::CompletionHandler<void ()(WTF::String)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID>>(a2);
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
      *v13 = &unk_1F10F0750;
      v13[1] = v10;
      v13[2] = a1;
      v14 = v13;
      WebKit::NetworkProcess::dumpPrivateClickMeasurement(a3, v8, &v14);
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

uint64_t IPC::handleMessageAsync<Messages::NetworkProcess::ClearPrivateClickMeasurement,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID>>(a2);
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
      *v13 = &unk_1F10F0778;
      v13[1] = v10;
      v13[2] = a1;
      v14 = v13;
      WebKit::NetworkProcess::clearPrivateClickMeasurement(a3, v8, &v14);
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

uint64_t IPC::handleMessageAsync<Messages::NetworkProcess::SetPrivateClickMeasurementOverrideTimerForTesting,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,BOOL,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID,BOOL>>(&v13, a2);
  if (v15 == 1)
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
      *v11 = &unk_1F10F07A0;
      v11[1] = v8;
      v11[2] = a1;
      v12 = v11;
      WebKit::NetworkProcess::setPrivateClickMeasurementOverrideTimerForTesting(a3, v13, v14, &v12);
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

uint64_t IPC::handleMessageAsync<Messages::NetworkProcess::MarkAttributedPrivateClickMeasurementsAsExpiredForTesting,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID>>(a2);
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
      *v13 = &unk_1F10F07C8;
      v13[1] = v10;
      v13[2] = a1;
      v14 = v13;
      WebKit::NetworkProcess::markAttributedPrivateClickMeasurementsAsExpiredForTesting(a3, v8, &v14);
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

uint64_t IPC::handleMessageAsync<Messages::NetworkProcess::SetPrivateClickMeasurementEphemeralMeasurementForTesting,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,BOOL,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID,BOOL>>(&v13, a2);
  if (v15 == 1)
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
      *v11 = &unk_1F10F07F0;
      v11[1] = v8;
      v11[2] = a1;
      v12 = v11;
      WebKit::NetworkProcess::setPrivateClickMeasurementEphemeralMeasurementForTesting(a3, v13, v14, &v12);
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

uint64_t IPC::handleMessageAsync<Messages::NetworkProcess::SimulatePrivateClickMeasurementSessionRestart,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID>>(a2);
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
      *v13 = &unk_1F10F0818;
      v13[1] = v10;
      v13[2] = a1;
      v14 = v13;
      WebKit::NetworkProcess::simulatePrivateClickMeasurementSessionRestart(a3, v8, &v14);
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

void IPC::handleMessageAsync<Messages::NetworkProcess::SetPrivateClickMeasurementTokenPublicKeyURLForTesting,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::URL &&,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  IPC::Decoder::decode<std::tuple<PAL::SessionID,WTF::URL>>(&v15, a2);
  if (v17 == 1)
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
      *v11 = &unk_1F10F0840;
      v11[1] = v8;
      v11[2] = a1;
      v14 = v11;
      if ((v17 & 1) == 0)
      {
        __break(1u);
        return;
      }

      WebKit::NetworkProcess::setPrivateClickMeasurementTokenPublicKeyURLForTesting(a3, v15, &v16, &v14);
      v12 = v14;
      v14 = 0;
      if (v12)
      {
        (*(*v12 + 8))(v12);
      }
    }
  }

  if (v17 == 1)
  {
    v13 = v16;
    v16 = 0;
    if (v13)
    {
      if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v6);
      }
    }
  }
}

void IPC::handleMessageAsync<Messages::NetworkProcess::SetPrivateClickMeasurementTokenSignatureURLForTesting,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::URL &&,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  IPC::Decoder::decode<std::tuple<PAL::SessionID,WTF::URL>>(&v15, a2);
  if (v17 == 1)
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
      *v11 = &unk_1F10F0868;
      v11[1] = v8;
      v11[2] = a1;
      v14 = v11;
      if ((v17 & 1) == 0)
      {
        __break(1u);
        return;
      }

      WebKit::NetworkProcess::setPrivateClickMeasurementTokenSignatureURLForTesting(a3, v15, &v16, &v14);
      v12 = v14;
      v14 = 0;
      if (v12)
      {
        (*(*v12 + 8))(v12);
      }
    }
  }

  if (v17 == 1)
  {
    v13 = v16;
    v16 = 0;
    if (v13)
    {
      if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v6);
      }
    }
  }
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::NetworkProcess::SetPrivateClickMeasurementAttributionReportURLsForTesting,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::URL &&,WTF::URL &,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  v6 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if (v7)
  {
    v8 = v6;
    IPC::ArgumentCoder<WTF::URL,void>::decode(a2, &v37);
    if ((v40 & 1) == 0)
    {
      goto LABEL_28;
    }

    while (1)
    {
      IPC::ArgumentCoder<WTF::URL,void>::decode(a2, &v41);
      if ((v44 & 1) == 0)
      {
        v9 = *a2;
        v27 = *(a2 + 1);
        *a2 = 0;
        *(a2 + 1) = 0;
        v28 = *(a2 + 3);
        if (!v28)
        {
          break;
        }

        if (!v27)
        {
          break;
        }

        (*(*v28 + 16))(v28, v9);
        if ((v44 & 1) == 0)
        {
          break;
        }
      }

      if (v40)
      {
        v10 = v37;
        v37 = 0;
        v29 = v8;
        v30 = v10;
        v31 = v38;
        v32 = v39;
        LODWORD(v38) = v38 & 0xFFFFFFFE;
        v33 = v41;
        v34 = v42;
        v35 = v43;
        v11 = 1;
        v36 = 1;
        goto LABEL_6;
      }

      __break(1u);
LABEL_28:
      v21 = *a2;
      v22 = *(a2 + 1);
      *a2 = 0;
      *(a2 + 1) = 0;
      v23 = *(a2 + 3);
      if (v23)
      {
        if (v22)
        {
          (*(*v23 + 16))(v23, v21);
          if (v40)
          {
            continue;
          }
        }
      }

      goto LABEL_29;
    }

    v11 = 0;
    LOBYTE(v29) = 0;
    v36 = 0;
    if ((v40 & 1) == 0)
    {
      goto LABEL_29;
    }

LABEL_6:
    v12 = v37;
    v37 = 0;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v9);
      if ((v11 & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    else if ((v11 & 1) == 0)
    {
      goto LABEL_29;
    }

    v13 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if ((v14 & 1) == 0)
    {
      goto LABEL_18;
    }

    v15 = v13;
    while (1)
    {
      v16 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v17 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v17, v16 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v17 == v16)
      {
        goto LABEL_15;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_15:
    v18 = WTF::fastMalloc(0x18);
    *v18 = &unk_1F10F0890;
    *(v18 + 1) = v15;
    *(v18 + 2) = a1;
    v41 = v18;
    WebKit::NetworkProcess::setPrivateClickMeasurementAttributionReportURLsForTesting(a3, v29, &v30, &v33, &v41);
    result = v41;
    v41 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    if (v36)
    {
LABEL_18:
      v20 = v33;
      v33 = 0;
      if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v20, v14);
      }

      result = v30;
      v30 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v14);
        }
      }
    }
  }

  else
  {
LABEL_29:
    v24 = *a2;
    v25 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result)
    {
      v26 = v25 == 0;
    }

    else
    {
      v26 = 1;
    }

    if (!v26)
    {
      return (*(*result + 16))(result, v24);
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::NetworkProcess::MarkPrivateClickMeasurementsAsExpiredForTesting,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID>>(a2);
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
      *v13 = &unk_1F10F08B8;
      v13[1] = v10;
      v13[2] = a1;
      v14 = v13;
      WebKit::NetworkProcess::markPrivateClickMeasurementsAsExpiredForTesting(a3, v8, &v14);
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

WTF::StringImpl *IPC::handleMessageAsync<Messages::NetworkProcess::SetPCMFraudPreventionValuesForTesting,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::String &&,WTF::String &,WTF::String &,WTF::String &,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  v6 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v7 & 1) == 0)
  {
    goto LABEL_44;
  }

  v8 = v6;
  IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a2, &v44);
  if ((v45 & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a2, &v46);
    if ((v47 & 1) == 0)
    {
      v9 = *a2;
      v31 = *(a2 + 1);
      *a2 = 0;
      *(a2 + 1) = 0;
      v32 = *(a2 + 3);
      if (!v32 || !v31 || ((*(*v32 + 16))(v32, v9), (v47 & 1) == 0))
      {
        v12 = 0;
        LOBYTE(v38) = 0;
        v43 = 0;
        goto LABEL_14;
      }
    }

    IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a2, &v48);
    if ((v49 & 1) == 0)
    {
      v9 = *a2;
      v33 = *(a2 + 1);
      *a2 = 0;
      *(a2 + 1) = 0;
      v34 = *(a2 + 3);
      if (!v34 || !v33 || ((*(*v34 + 16))(v34, v9), (v49 & 1) == 0))
      {
        v12 = 0;
        LOBYTE(v38) = 0;
        v43 = 0;
        goto LABEL_10;
      }
    }

    IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a2, &v50);
    if ((v51 & 1) == 0)
    {
      v9 = *a2;
      v35 = *(a2 + 1);
      *a2 = 0;
      *(a2 + 1) = 0;
      v36 = *(a2 + 3);
      if (!v36)
      {
        break;
      }

      if (!v35)
      {
        break;
      }

      (*(*v36 + 16))(v36, v9);
      if ((v51 & 1) == 0)
      {
        break;
      }
    }

    if (v45 & 1) != 0 && (v47 & 1) != 0 && (v49)
    {
      v10 = v44;
      v44 = 0;
      v38 = v8;
      v39 = v10;
      v11 = v46;
      v46 = 0;
      v40 = v11;
      v41 = v48;
      v42 = v50;
      v12 = 1;
      v43 = 1;
      goto LABEL_10;
    }

    __break(1u);
LABEL_43:
    v25 = *a2;
    v26 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v27 = *(a2 + 3);
    if (v27)
    {
      if (v26)
      {
        (*(*v27 + 16))(v27, v25);
        if (v45)
        {
          continue;
        }
      }
    }

    goto LABEL_44;
  }

  LOBYTE(v38) = 0;
  v43 = 0;
  if (v49)
  {
    v37 = v48;
    v48 = 0;
    if (v37)
    {
      if (atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v37, v9);
      }
    }
  }

  v12 = 0;
LABEL_10:
  if (v47)
  {
    v13 = v46;
    v46 = 0;
    if (v13)
    {
      if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v9);
      }
    }
  }

LABEL_14:
  if (v45)
  {
    v14 = v44;
    v44 = 0;
    if (v14)
    {
      if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v9);
        if (v12)
        {
          goto LABEL_18;
        }

LABEL_44:
        v28 = *a2;
        v29 = *(a2 + 1);
        *a2 = 0;
        *(a2 + 1) = 0;
        result = *(a2 + 3);
        if (result)
        {
          v30 = v29 == 0;
        }

        else
        {
          v30 = 1;
        }

        if (!v30)
        {
          return (*(*result + 16))(result, v28);
        }

        return result;
      }
    }
  }

  if ((v12 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_18:
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
  *v20 = &unk_1F10F08E0;
  *(v20 + 1) = v17;
  *(v20 + 2) = a1;
  v50 = v20;
  WebKit::NetworkProcess::setPCMFraudPreventionValuesForTesting(a3, v38, &v39, &v40, &v41, &v42, &v50);
  result = v50;
  v50 = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  if (v43)
  {
LABEL_27:
    v22 = v42;
    v42 = 0;
    if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v22, v16);
    }

    v23 = v41;
    v41 = 0;
    if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v23, v16);
    }

    v24 = v40;
    v40 = 0;
    if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v24, v16);
    }

    result = v39;
    v39 = 0;
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

WTF::StringImpl *IPC::handleMessageAsync<Messages::NetworkProcess::SetPrivateClickMeasurementAppBundleIDForTesting,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::String &&,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID,WTF::String>>(&v14, a2);
  if (v16 == 1)
  {
    v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if ((v8 & 1) == 0)
    {
      goto LABEL_11;
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
    v12 = WTF::fastMalloc(0x18);
    *v12 = &unk_1F10F0908;
    *(v12 + 1) = v9;
    *(v12 + 2) = a1;
    v13 = v12;
    WebKit::NetworkProcess::setPrivateClickMeasurementAppBundleIDForTesting(a3, v14, &v15, &v13);
    result = v13;
    v13 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    if (v16)
    {
LABEL_11:
      result = v15;
      v15 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v8);
        }
      }
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::NetworkProcess::ClosePCMDatabase,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID>>(a2);
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
      *v13 = &unk_1F10F0930;
      v13[1] = v10;
      v13[2] = a1;
      v14 = v13;
      WebKit::NetworkProcess::closePCMDatabase(a3, v8, &v14);
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

uint64_t IPC::handleMessageAsync<Messages::NetworkProcess::TerminateIdleServiceWorkers,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a2);
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
      *v13 = &unk_1F10F0958;
      v13[1] = v10;
      v13[2] = a1;
      v14 = v13;
      WebKit::NetworkProcess::terminateIdleServiceWorkers(a3, v8, &v14);
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

uint64_t IPC::handleMessageAsync<Messages::NetworkProcess::ResetQuota,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID>>(a2);
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
      *v13 = &unk_1F10F0980;
      v13[1] = v10;
      v13[2] = a1;
      v14 = v13;
      WebKit::NetworkProcess::resetQuota(a3, v8, &v14);
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

uint64_t IPC::handleMessageAsync<Messages::NetworkProcess::SetOriginQuotaRatioEnabledForTesting,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,BOOL,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID,BOOL>>(&v13, a2);
  if (v15 == 1)
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
      *v11 = &unk_1F10F09A8;
      v11[1] = v8;
      v11[2] = a1;
      v12 = v11;
      WebKit::NetworkProcess::setOriginQuotaRatioEnabledForTesting(a3, v13, v14, &v12);
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

uint64_t IPC::handleMessageAsync<Messages::NetworkProcess::SetBackupExclusionPeriodForTesting,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::Seconds,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID,WTF::Seconds>>(v13, a2);
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
      *v11 = &unk_1F10F09D0;
      v11[1] = v8;
      v11[2] = a1;
      v12 = v11;
      WebKit::NetworkProcess::setBackupExclusionPeriodForTesting(a3, v13[0], &v12, *&v13[1]);
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

uint64_t IPC::handleMessageAsync<Messages::NetworkProcess::ResetStoragePersistedState,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID>>(a2);
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
      *v13 = &unk_1F10F09F8;
      v13[1] = v10;
      v13[2] = a1;
      v14 = v13;
      WebKit::NetworkProcess::resetStoragePersistedState(a3, v8, &v14);
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

uint64_t IPC::handleMessage<Messages::NetworkProcess::CloneSessionStorageForWebPage,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>)>(IPC::Decoder *a1, uint64_t a2)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if (v5 & 1) != 0 && (v6 = v4, v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1), (v8) && (v9 = v7, v10 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1), (v11))
  {

    return WebKit::NetworkProcess::cloneSessionStorageForWebPage(a2, v6, v9, v10);
  }

  else
  {
    v13 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
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
  }

  return result;
}

WTF::StringImpl *IPC::handleMessage<Messages::NetworkProcess::DidIncreaseQuota,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WebCore::ClientOrigin &&,WTF::ObjectIdentifierGeneric<WebKit::QuotaIncreaseRequestIdentifierType,WebCore::ClientOrigin &&::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::optional<unsigned long long>)>(IPC::Decoder *a1, uint64_t a2)
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if (v5)
  {
    v6 = v4;
    IPC::ArgumentCoder<WebCore::ClientOrigin,void>::decode(a1, v37);
    if (v43)
    {
      while (1)
      {
        v8 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1);
        if ((v7 & 1) == 0)
        {
          v13 = 0;
          LOBYTE(v27) = 0;
          v36 = 0;
          goto LABEL_16;
        }

        v9 = IPC::Decoder::decode<std::optional<unsigned long long>>(a1, &v25);
        if ((v26 & 1) == 0)
        {
          break;
        }

        if (v43)
        {
          v27 = v6;
          LOBYTE(v28[0]) = 0;
          v30 = -1;
          if (!v39)
          {
            v11 = *v37;
            v37[0] = 0;
            v37[1] = 0;
            *v28 = v11;
            v29 = v38;
            goto LABEL_8;
          }

          if (v39 != 255)
          {
            *v28 = *v37;
LABEL_8:
            v30 = v39;
          }

          LOBYTE(v31[0]) = 0;
          v33 = -1;
          if (!v42)
          {
            v12 = *v40;
            v40[0] = 0;
            v40[1] = 0;
            *v31 = v12;
            v32 = v41;
            goto LABEL_11;
          }

          if (v42 != 255)
          {
            *v31 = *v40;
LABEL_11:
            v33 = v42;
          }

          v34 = v8;
          v35 = v25;
          v13 = 1;
          goto LABEL_15;
        }

        __break(1u);
LABEL_60:
        if (v10)
        {
          (*(*v9 + 16))(v9, v7);
          if (v43)
          {
            continue;
          }
        }

        goto LABEL_54;
      }

      v13 = 0;
      LOBYTE(v27) = 0;
LABEL_15:
      v36 = v13;
      if ((v43 & 1) == 0)
      {
        goto LABEL_30;
      }

LABEL_16:
      if (!v42)
      {
        v14 = v40[1];
        v40[1] = 0;
        if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v14, v7);
        }

        v15 = v40[0];
        v40[0] = 0;
        if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v15, v7);
        }
      }

      v42 = -1;
      if (v39)
      {
        goto LABEL_30;
      }

      v16 = v37[1];
      v37[1] = 0;
      if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v16, v7);
      }

      v17 = v37[0];
      v37[0] = 0;
      if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v17, v7);
        if (v13)
        {
LABEL_31:
          result = WebKit::NetworkProcess::didIncreaseQuota(a2, v27, v28, v8, v35, SBYTE8(v35));
          if (v36)
          {
            if (!v33)
            {
              v20 = v31[1];
              v31[1] = 0;
              if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v20, v19);
              }

              result = v31[0];
              v31[0] = 0;
              if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                result = WTF::StringImpl::destroy(result, v19);
              }
            }

            v33 = -1;
            if (!v30)
            {
              v21 = v28[1];
              v28[1] = 0;
              if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v21, v19);
              }

              result = v28[0];
              v28[0] = 0;
              if (result)
              {
                if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  return WTF::StringImpl::destroy(result, v19);
                }
              }
            }
          }

          return result;
        }
      }

      else
      {
LABEL_30:
        if (v13)
        {
          goto LABEL_31;
        }
      }
    }

    else
    {
      v7 = *a1;
      v10 = *(a1 + 1);
      *a1 = 0;
      *(a1 + 1) = 0;
      v9 = *(a1 + 3);
      if (v9)
      {
        goto LABEL_60;
      }
    }
  }

LABEL_54:
  v22 = *a1;
  v23 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  result = *(a1 + 3);
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

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::NetworkProcess::HasAppBoundSession,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::CompletionHandler<void ()(BOOL)> &&)const>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID>>(a2);
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
      *v13 = &unk_1F10F0A20;
      v13[1] = v10;
      v13[2] = a1;
      v14 = v13;
      WebKit::NetworkProcess::hasAppBoundSession(a3, v8, &v14);
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

uint64_t IPC::handleMessageAsync<Messages::NetworkProcess::ClearAppBoundSession,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID>>(a2);
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
      *v13 = &unk_1F10F0A48;
      v13[1] = v10;
      v13[2] = a1;
      v14 = v13;
      WebKit::NetworkProcess::clearAppBoundSession(a3, v8, &v14);
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

uint64_t IPC::handleMessageAsync<Messages::NetworkProcess::ClearServiceWorkerEntitlementOverride,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
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
    *v10 = &unk_1F10F0A70;
    v10[1] = v7;
    v10[2] = a1;
    v11 = v10;
    WebKit::NetworkProcess::clearServiceWorkerEntitlementOverride(a3, &v11);
    result = v11;
    v11 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::NetworkProcess::UpdateBundleIdentifier,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(WTF::String &&,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, WTF *a3)
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
      *result = &unk_1F10F0A98;
      *(result + 1) = v8;
      *(result + 2) = a1;
      v13 = result;
      if ((v15 & 1) == 0)
      {
        __break(1u);
        return result;
      }

      WebKit::NetworkProcess::updateBundleIdentifier(a3, &v14, &v13);
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

uint64_t IPC::handleMessageAsync<Messages::NetworkProcess::ClearBundleIdentifier,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, WTF *a3)
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
    *v10 = &unk_1F10F0AC0;
    v10[1] = v7;
    v10[2] = a1;
    v11 = v10;
    WebKit::NetworkProcess::clearBundleIdentifier(a3, &v11);
    result = v11;
    v11 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::NetworkProcess::AppPrivacyReportTestingData,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::CompletionHandler<void ()(WebKit::AppPrivacyReportTestingData const&)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID>>(a2);
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
      *v13 = &unk_1F10F0AE8;
      v13[1] = v10;
      v13[2] = a1;
      v14 = v13;
      WebKit::NetworkProcess::appPrivacyReportTestingData(a3, v8, &v14);
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

uint64_t IPC::handleMessageAsync<Messages::NetworkProcess::ClearAppPrivacyReportTestingData,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID>>(a2);
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
      *v13 = &unk_1F10F0B10;
      v13[1] = v10;
      v13[2] = a1;
      v14 = v13;
      WebKit::NetworkProcess::clearAppPrivacyReportTestingData(a3, v8, &v14);
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

WTF::StringImpl *IPC::handleMessage<Messages::NetworkProcess::AddWebPageNetworkParameters,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::WebPageNetworkParameters &&)>(IPC::Decoder *a1, uint64_t a2)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if (v5)
  {
    v6 = v4;
    v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
    if (v8)
    {
      v9 = v7;
      IPC::ArgumentCoder<WebKit::WebPageNetworkParameters,void>::decode(a1, &v20);
      if (v21)
      {
        v18 = v20;
        v19 = 1;
        result = WebKit::NetworkProcess::addWebPageNetworkParameters(a2, v6, v9, &v18);
        if (v19)
        {
          result = v18;
          v18 = 0;
          if (result)
          {
            if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              return WTF::StringImpl::destroy(result, v11);
            }
          }
        }

        return result;
      }

      v12 = *a1;
      v13 = *(a1 + 1);
      *a1 = 0;
      *(a1 + 1) = 0;
      v14 = *(a1 + 3);
      if (v14 && v13)
      {
        (*(*v14 + 16))(v14, v12);
      }
    }
  }

  v15 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  result = *(a1 + 3);
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

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::NetworkProcess::CountNonDefaultSessionSets,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::CompletionHandler<void ()(unsigned long long)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID>>(a2);
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
      *v13 = &unk_1F10F0B38;
      v13[1] = v10;
      v13[2] = a1;
      v14 = v13;
      WebKit::NetworkProcess::countNonDefaultSessionSets(a3, v8, &v14);
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

WTF::StringImpl *IPC::handleMessageAsync<Messages::NetworkProcess::AllowFileAccessFromWebProcess,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  v6 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if (v7 & 1) != 0 && ((v8 = v6, IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a2, &v24), (v25) || (v16 = *a2, v17 = *(a2 + 1), *a2 = 0, *(a2 + 1) = 0, (v18 = *(a2 + 3)) != 0) && v17 && ((*(*v18 + 16))(v18, v16), (v25)))
  {
    v22 = v24;
    v23 = 1;
    v9 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if ((v10 & 1) == 0)
    {
      goto LABEL_12;
    }

    v11 = v9;
    while (1)
    {
      v12 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v13 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v13, v12 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v13 == v12)
      {
        goto LABEL_9;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_9:
    v14 = WTF::fastMalloc(0x18);
    *v14 = &unk_1F10F0B60;
    *(v14 + 1) = v11;
    *(v14 + 2) = a1;
    v24 = v14;
    WebKit::NetworkProcess::allowFileAccessFromWebProcess(a3, v8, &v22, &v24);
    result = v24;
    v24 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    if (v23)
    {
LABEL_12:
      result = v22;
      v22 = 0;
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
    v19 = *a2;
    v20 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result)
    {
      v21 = v20 == 0;
    }

    else
    {
      v21 = 1;
    }

    if (!v21)
    {
      return (*(*result + 16))(result, v19);
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::NetworkProcess::AllowFilesAccessFromWebProcess,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  v5 = a2;
  v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v8 & 1) == 0)
  {
    goto LABEL_18;
  }

  v3 = v7;
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(v5, &v24);
  if ((v26 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_3:
  v21 = v3;
  v22[0] = v24;
  v10 = v25;
  v24 = 0;
  v25 = 0;
  v22[1] = v10;
  v23 = 1;
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v24, v9);
  while (1)
  {
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v5);
    if ((v12 & 1) == 0)
    {
      break;
    }

    v5 = result;
    while (1)
    {
      v13 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v14 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v14, v13 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v14 == v13)
      {
        goto LABEL_10;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_10:
    v15 = WTF::fastMalloc(0x18);
    *v15 = &unk_1F10F0B88;
    v15[1] = v5;
    v15[2] = a1;
    v24 = v15;
    if (v23)
    {
      WebKit::NetworkProcess::allowFilesAccessFromWebProcess(a3, v21, v22, &v24);
      result = v24;
      v24 = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }

      break;
    }

    __break(1u);
LABEL_17:
    v16 = *v5;
    v17 = *(v5 + 1);
    *v5 = 0;
    *(v5 + 1) = 0;
    v18 = *(v5 + 3);
    if (v18)
    {
      if (v17)
      {
        (*(*v18 + 16))(v18, v16);
        if (v26)
        {
          goto LABEL_3;
        }
      }
    }

LABEL_18:
    LOBYTE(v21) = 0;
    v23 = 0;
    v12 = *v5;
    v19 = *(v5 + 1);
    *v5 = 0;
    *(v5 + 1) = 0;
    result = *(v5 + 3);
    if (result)
    {
      v20 = v19 == 0;
    }

    else
    {
      v20 = 1;
    }

    if (!v20)
    {
      result = (*(*result + 16))(result, v12);
      if (v23)
      {
        continue;
      }
    }

    break;
  }

  if (v23 == 1)
  {
    return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v22, v12);
  }

  return result;
}

void IPC::handleMessage<Messages::NetworkProcess::TerminateRemoteWorkerContextConnectionWhenPossible,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(WebKit::RemoteWorkerType,PAL::SessionID,WebCore::RegistrableDomain const&,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>)>(uint64_t *a1, uint64_t a2)
{
  v4 = IPC::Decoder::decode<WebKit::RemoteWorkerType>(a1);
  if ((v4 & 0x100) != 0)
  {
    v5 = v4;
    v6 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
    if (v7)
    {
      v8 = v6;
      IPC::ArgumentCoder<WebCore::RegistrableDomain,void>::decode(a1, &v23);
      if (v24)
      {
        v9 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
        if (v10)
        {
          v21[0] = v23;
          v21[1] = v9;
          v22 = 1;
          WebKit::NetworkProcess::terminateRemoteWorkerContextConnectionWhenPossible(a2, v5, v8, v21, v9);
          if (v22)
          {
            v12 = v21[0];
            v21[0] = 0;
            if (v12)
            {
              if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v12, v11);
              }
            }
          }

          return;
        }

        v13 = v23;
        if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v13, v10);
        }
      }

      else
      {
        v18 = *a1;
        v19 = a1[1];
        *a1 = 0;
        a1[1] = 0;
        v20 = a1[3];
        if (v20 && v19)
        {
          (*(*v20 + 16))(v20, v18);
        }
      }
    }
  }

  v14 = a1[1];
  *a1 = 0;
  a1[1] = 0;
  v15 = a1[3];
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
    v17 = *(*v15 + 16);

    v17();
  }
}

uint64_t IPC::handleMessageAsync<Messages::NetworkProcess::RunningOrTerminatingServiceWorkerCountForTesting,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::CompletionHandler<void ()(unsigned int)> &&)const>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID>>(a2);
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
      *v13 = &unk_1F10F0BB0;
      v13[1] = v10;
      v13[2] = a1;
      v14 = v13;
      WebKit::NetworkProcess::runningOrTerminatingServiceWorkerCountForTesting(a3, v8, &v14);
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

uint64_t IPC::handleMessageAsync<Messages::NetworkProcess::GetPendingPushMessage,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::CompletionHandler<void ()(std::optional<WebKit::WebPushMessage> const&)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID>>(a2);
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
      *v13 = &unk_1F10F0BD8;
      v13[1] = v10;
      v13[2] = a1;
      v14 = v13;
      WebKit::NetworkProcess::getPendingPushMessage(a3, v8, &v14);
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

uint64_t IPC::handleMessageAsync<Messages::NetworkProcess::GetPendingPushMessages,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::CompletionHandler<void ()(WTF::Vector<WebKit::WebPushMessage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID>>(a2);
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
      *v13 = &unk_1F10F0C00;
      v13[1] = v10;
      v13[2] = a1;
      v14 = v13;
      WebKit::NetworkProcess::getPendingPushMessages(a3, v8, &v14);
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

void IPC::handleMessageAsync<Messages::NetworkProcess::ProcessPushMessage,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WebKit::WebPushMessage &&,WebCore::PushPermissionState,BOOL,WTF::CompletionHandler<void ()(BOOL,std::optional<WebKit::WebPushMessage &&::NotificationPayload> &&)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  v5 = a2;
  v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v8 & 1) == 0)
  {
    goto LABEL_33;
  }

  v3 = v7;
  IPC::ArgumentCoder<WebKit::WebPushMessage,void>::decode(v5, &v58);
  if ((v77 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_3:
  v9 = IPC::Decoder::decode<WebCore::NotificationDirection>(v5);
  if ((v9 & 0x100) == 0)
  {
    goto LABEL_4;
  }

  v12 = v5[1];
  v13 = v5[2];
  v10 = *v5;
  if (v12 <= &v13[-*v5])
  {
    *v5 = 0;
    v5[1] = 0;
    v33 = v5[3];
    if (v33)
    {
      if (v12)
      {
        (*(*v33 + 16))(v33);
        v12 = v5[1];
      }
    }

    else
    {
      v12 = 0;
    }

    goto LABEL_45;
  }

  v5[2] = (v13 + 1);
  if (!v13)
  {
LABEL_45:
    *v5 = 0;
    v5[1] = 0;
    v34 = v5[3];
    if (v34)
    {
      if (v12)
      {
        (*(*v34 + 16))(v34);
        v10 = *v5;
        v12 = v5[1];
        goto LABEL_48;
      }
    }

    else
    {
      v12 = 0;
    }

    v10 = 0;
LABEL_48:
    *v5 = 0;
    v5[1] = 0;
    v35 = v5[3];
    if (v35 && v12)
    {
      (*(*v35 + 16))(v35, v10);
    }

LABEL_4:
    v11 = 0;
    LOBYTE(v36) = 0;
    goto LABEL_16;
  }

  v14 = *v13;
  if (v14 >= 2)
  {
    goto LABEL_48;
  }

  if (v77)
  {
    v36 = v3;
    LOBYTE(v37[0]) = 0;
    v38 = 0;
    if (v60 == 1)
    {
      v37[0] = v58;
      v15 = v59;
      v58 = 0;
      v59 = 0;
      v37[1] = v15;
      v38 = 1;
    }

    v16 = v61;
    v61 = 0uLL;
    v39 = v16;
    v40 = v62;
    v41 = v63;
    LODWORD(v62) = v62 & 0xFFFFFFFE;
    LOBYTE(v42) = 0;
    v54 = 0;
    if (v76 == 1)
    {
      v17 = v64;
      v64 = 0;
      v42 = v17;
      v43 = v65;
      v44 = v66;
      LODWORD(v65) = v65 & 0xFFFFFFFE;
      v18 = v67;
      v67 = 0;
      v45 = v18;
      v46 = v68;
      v47 = 0;
      v52 = 0;
      if (v74 == 1)
      {
        v47 = v69;
        v19 = v71;
        v48 = v70;
        v70 = 0u;
        v71 = 0u;
        v49 = v19;
        v20 = v72;
        v72 = 0;
        v50 = v20;
        v51 = v73;
        v52 = 1;
      }

      v53 = v75;
      v54 = 1;
    }

    v55 = v9;
    v56 = v14;
    v11 = 1;
LABEL_16:
    v57 = v11;
    if (v77)
    {
      WebKit::WebPushMessage::~WebPushMessage(&v58, v10);
      v11 = v57;
    }

    if ((v11 & 1) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_19;
  }

  while (1)
  {
    __break(1u);
LABEL_32:
    v27 = *v5;
    v28 = v5[1];
    *v5 = 0;
    v5[1] = 0;
    v29 = v5[3];
    if (v29)
    {
      if (v28)
      {
        (*(*v29 + 16))(v29, v27);
        if (v77)
        {
          goto LABEL_3;
        }
      }
    }

LABEL_33:
    LOBYTE(v36) = 0;
    v57 = 0;
LABEL_34:
    v22 = *v5;
    v30 = v5[1];
    *v5 = 0;
    v5[1] = 0;
    v31 = v5[3];
    if (v31)
    {
      v32 = v30 == 0;
    }

    else
    {
      v32 = 1;
    }

    if (v32)
    {
      break;
    }

    (*(*v31 + 16))(v31, v22);
    if ((v57 & 1) == 0)
    {
      break;
    }

LABEL_19:
    v21 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v5);
    if ((v22 & 1) == 0)
    {
      break;
    }

    v5 = v21;
    while (1)
    {
      v23 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v24 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v24, v23 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v24 == v23)
      {
        goto LABEL_25;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_25:
    v25 = WTF::fastMalloc(0x18);
    *v25 = &unk_1F10F0C28;
    v25[1] = v5;
    v25[2] = a1;
    v58 = v25;
    if (v57)
    {
      WebKit::NetworkProcess::processPushMessage(a3, v36, v37, v55, v56, &v58);
      v26 = v58;
      v58 = 0;
      if (v26)
      {
        (*(*v26 + 8))(v26);
      }

      break;
    }
  }

  if (v57 == 1)
  {
    WebKit::WebPushMessage::~WebPushMessage(v37, v22);
  }
}

void IPC::handleMessageAsync<Messages::NetworkProcess::ProcessNotificationEvent,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(WebCore::NotificationData &&,WebCore::NotificationEventType,WTF::CompletionHandler<void ()(BOOL)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  v4 = a2;
  v23 = *MEMORY[0x1E69E9840];
  IPC::Decoder::decode<WebCore::NotificationData>(a2, v21);
  if (v22 != 1)
  {
    goto LABEL_22;
  }

  v6 = IPC::Decoder::decode<WebKit::UseDownloadPlaceholder>(v4);
  if ((v6 & 0x100) != 0)
  {
    if ((v22 & 1) == 0)
    {
      goto LABEL_21;
    }

    v9 = v6;
    std::__tuple_leaf<0ul,WebCore::NotificationData,false>::__tuple_leaf[abi:sn200100]<WebCore::NotificationData,0>(v18, v21);
    v19 = v9;
    v8 = 1;
  }

  else
  {
    v8 = 0;
    v18[0] = 0;
  }

  v20 = v8;
  if (v22)
  {
    WebCore::NotificationData::~NotificationData(v21, v7);
    v8 = v20;
  }

  if ((v8 & 1) == 0)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v10 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v4);
    if ((v11 & 1) == 0)
    {
      break;
    }

    v4 = v10;
    while (1)
    {
      v12 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v13 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v13, v12 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v13 == v12)
      {
        goto LABEL_15;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_15:
    v14 = WTF::fastMalloc(0x18);
    *v14 = &unk_1F10F0C50;
    v14[1] = v4;
    v14[2] = a1;
    v21[0] = v14;
    if (v20)
    {
      WebKit::NetworkProcess::processNotificationEvent(a3, v18, v19, v21);
      v15 = v21[0];
      v21[0] = 0;
      if (v15)
      {
        (*(*v15 + 8))(v15);
      }

      break;
    }

LABEL_21:
    __break(1u);
LABEL_22:
    v18[0] = 0;
    v20 = 0;
LABEL_23:
    v11 = *v4;
    v16 = v4[1];
    *v4 = 0;
    v4[1] = 0;
    v17 = v4[3];
    if (v17)
    {
      if (v16)
      {
        (*(*v17 + 16))(v17, v11);
        if (v20)
        {
          continue;
        }
      }
    }

    break;
  }

  if (v20 == 1)
  {
    WebCore::NotificationData::~NotificationData(v18, v11);
  }
}

uint64_t IPC::handleMessageAsync<Messages::NetworkProcess::GetAllBackgroundFetchIdentifiers,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID>>(a2);
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
      *v13 = &unk_1F10F0C78;
      v13[1] = v10;
      v13[2] = a1;
      v14 = v13;
      WebKit::NetworkProcess::getAllBackgroundFetchIdentifiers(a3, v8, &v14);
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

WTF::StringImpl *IPC::handleMessageAsync<Messages::NetworkProcess::GetBackgroundFetchState,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::String const&,WTF::CompletionHandler<void ()(std::optional<WebKit::BackgroundFetchState> &&)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID,WTF::String>>(&v14, a2);
  if (v16 == 1)
  {
    v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if ((v8 & 1) == 0)
    {
      goto LABEL_11;
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
    v12 = WTF::fastMalloc(0x18);
    *v12 = &unk_1F10F0CA0;
    *(v12 + 1) = v9;
    *(v12 + 2) = a1;
    v13 = v12;
    WebKit::NetworkProcess::getBackgroundFetchState(a3, v14, &v15, &v13);
    result = v13;
    v13 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    if (v16)
    {
LABEL_11:
      result = v15;
      v15 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v8);
        }
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::NetworkProcess::AbortBackgroundFetch,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::String const&,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID,WTF::String>>(&v14, a2);
  if (v16 == 1)
  {
    v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if ((v8 & 1) == 0)
    {
      goto LABEL_11;
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
    v12 = WTF::fastMalloc(0x18);
    *v12 = &unk_1F10F0CC8;
    *(v12 + 1) = v9;
    *(v12 + 2) = a1;
    v13 = v12;
    WebKit::NetworkProcess::abortBackgroundFetch(a3, v14, &v15, &v13);
    result = v13;
    v13 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    if (v16)
    {
LABEL_11:
      result = v15;
      v15 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v8);
        }
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::NetworkProcess::PauseBackgroundFetch,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::String const&,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID,WTF::String>>(&v14, a2);
  if (v16 == 1)
  {
    v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if ((v8 & 1) == 0)
    {
      goto LABEL_11;
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
    v12 = WTF::fastMalloc(0x18);
    *v12 = &unk_1F10F0CF0;
    *(v12 + 1) = v9;
    *(v12 + 2) = a1;
    v13 = v12;
    WebKit::NetworkProcess::pauseBackgroundFetch(a3, v14, &v15, &v13);
    result = v13;
    v13 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    if (v16)
    {
LABEL_11:
      result = v15;
      v15 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v8);
        }
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::NetworkProcess::ResumeBackgroundFetch,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::String const&,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID,WTF::String>>(&v14, a2);
  if (v16 == 1)
  {
    v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if ((v8 & 1) == 0)
    {
      goto LABEL_11;
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
    v12 = WTF::fastMalloc(0x18);
    *v12 = &unk_1F10F0D18;
    *(v12 + 1) = v9;
    *(v12 + 2) = a1;
    v13 = v12;
    WebKit::NetworkProcess::resumeBackgroundFetch(a3, v14, &v15, &v13);
    result = v13;
    v13 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    if (v16)
    {
LABEL_11:
      result = v15;
      v15 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v8);
        }
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::NetworkProcess::ClickBackgroundFetch,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::String const&,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID,WTF::String>>(&v14, a2);
  if (v16 == 1)
  {
    v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if ((v8 & 1) == 0)
    {
      goto LABEL_11;
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
    v12 = WTF::fastMalloc(0x18);
    *v12 = &unk_1F10F0D40;
    *(v12 + 1) = v9;
    *(v12 + 2) = a1;
    v13 = v12;
    WebKit::NetworkProcess::clickBackgroundFetch(a3, v14, &v15, &v13);
    result = v13;
    v13 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    if (v16)
    {
LABEL_11:
      result = v15;
      v15 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v8);
        }
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::NetworkProcess::SetPushAndNotificationsEnabledForOrigin,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WebCore::SecurityOriginData const&,BOOL,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  v44 = *MEMORY[0x1E69E9840];
  v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v8 & 1) == 0)
  {
    goto LABEL_39;
  }

  v9 = v7;
  IPC::ArgumentCoder<WebCore::SecurityOriginData,void>::decode(a2, v40);
  if ((v43 & 1) == 0)
  {
    v25 = *a2;
    v26 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v27 = *(a2 + 3);
    if (v27 && v26)
    {
      (*(*v27 + 16))(v27, v25);
    }

    goto LABEL_39;
  }

  v10 = *(a2 + 1);
  v11 = *(a2 + 2);
  v12 = *a2;
  if (v10 <= &v11[-*a2])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v31 = *(a2 + 3);
    if (v31)
    {
      if (v10)
      {
        (*(*v31 + 16))(v31);
        v10 = *(a2 + 1);
      }
    }

    else
    {
      v10 = 0;
    }

LABEL_50:
    *a2 = 0;
    *(a2 + 1) = 0;
    v32 = *(a2 + 3);
    if (v32)
    {
      if (v10)
      {
        (*(*v32 + 16))(v32);
        v12 = *a2;
        v10 = *(a2 + 1);
        goto LABEL_53;
      }
    }

    else
    {
      v10 = 0;
    }

    v12 = 0;
    goto LABEL_53;
  }

  *(a2 + 2) = v11 + 1;
  if (!v11)
  {
    goto LABEL_50;
  }

  v3 = *v11;
  if (v3 < 2)
  {
    v34 = v9;
    LOBYTE(v35[0]) = 0;
    v37 = -1;
    v13 = v42;
    if (v42)
    {
      if (v42 == 255)
      {
        goto LABEL_9;
      }

      *v35 = *v40;
    }

    else
    {
      v14 = *v40;
      v40[0] = 0;
      v40[1] = 0;
      *v35 = v14;
      v36 = v41;
    }

    v37 = v42;
LABEL_9:
    v38 = v3;
    v15 = 1;
    goto LABEL_10;
  }

LABEL_53:
  *a2 = 0;
  *(a2 + 1) = 0;
  v33 = *(a2 + 3);
  if (v33 && v10)
  {
    (*(*v33 + 16))(v33, v12);
  }

  v15 = 0;
  LOBYTE(v34) = 0;
  v13 = v42;
LABEL_10:
  v39 = v15;
  if (!v13)
  {
    v16 = v40[1];
    if (v40[1] && atomic_fetch_add_explicit(v40[1], 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v12);
    }

    v17 = v40[0];
    if (v40[0])
    {
      if (atomic_fetch_add_explicit(v40[0], 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v17, v12);
        if (v15)
        {
          goto LABEL_17;
        }

LABEL_39:
        v28 = *(a2 + 1);
        *a2 = 0;
        *(a2 + 1) = 0;
        result = *(a2 + 3);
        if (result)
        {
          v29 = v28 == 0;
        }

        else
        {
          v29 = 1;
        }

        if (!v29)
        {
          v30 = *(*result + 16);

          return v30();
        }

        return result;
      }
    }
  }

  if ((v15 & 1) == 0)
  {
    goto LABEL_39;
  }

LABEL_17:
  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v19 & 1) == 0)
  {
    goto LABEL_26;
  }

  v20 = result;
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
      goto LABEL_23;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_23:
  v23 = WTF::fastMalloc(0x18);
  *v23 = &unk_1F10F0D68;
  *(v23 + 1) = v20;
  *(v23 + 2) = a1;
  v40[0] = v23;
  WebKit::NetworkProcess::setPushAndNotificationsEnabledForOrigin(a3, v34, v35, v3 & 1, v40);
  result = v40[0];
  v40[0] = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  if (v39)
  {
LABEL_26:
    if (!v37)
    {
      v24 = v35[1];
      v35[1] = 0;
      if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v24, v19);
      }

      result = v35[0];
      v35[0] = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v19);
        }
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::NetworkProcess::RemovePushSubscriptionsForOrigin,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WebCore::SecurityOriginData const&,WTF::CompletionHandler<void ()(unsigned int)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v7 & 1) == 0)
  {
LABEL_26:
    v19 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result)
    {
      v20 = v19 == 0;
    }

    else
    {
      v20 = 1;
    }

    if (!v20)
    {
      v21 = *(*result + 16);

      return v21();
    }

    return result;
  }

  v8 = v6;
  IPC::ArgumentCoder<WebCore::SecurityOriginData,void>::decode(a2, &v26);
  if ((v29 & 1) == 0)
  {
    v16 = *a2;
    v17 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v18 = *(a2 + 3);
    if (v18 && v17)
    {
      (*(*v18 + 16))(v18, v16);
    }

    goto LABEL_26;
  }

  LOBYTE(v22[0]) = 0;
  v24 = -1;
  if (v28)
  {
    if (v28 == 255)
    {
      goto LABEL_6;
    }

    *v22 = v26;
  }

  else
  {
    *v22 = v26;
    v23 = v27;
  }

  v24 = v28;
LABEL_6:
  v25 = 1;
  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v10 & 1) == 0)
  {
    goto LABEL_15;
  }

  v11 = result;
  while (1)
  {
    v12 = *a1;
    if ((*a1 & 1) == 0)
    {
      break;
    }

    v13 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v13, v12 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v13 == v12)
    {
      goto LABEL_12;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_12:
  v14 = WTF::fastMalloc(0x18);
  *v14 = &unk_1F10F0D90;
  v14[1] = v11;
  v14[2] = a1;
  *&v26 = v14;
  WebKit::NetworkProcess::removePushSubscriptionsForOrigin(a3, v8, v22, &v26);
  result = v26;
  *&v26 = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  if (v25)
  {
LABEL_15:
    if (!v24)
    {
      v15 = v22[1];
      v22[1] = 0;
      if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v15, v10);
      }

      result = v22[0];
      v22[0] = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v10);
        }
      }
    }
  }

  return result;
}

void IPC::handleMessageAsync<Messages::NetworkProcess::HasPushSubscriptionForTesting,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::URL &&,WTF::CompletionHandler<void ()(BOOL)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  IPC::Decoder::decode<std::tuple<PAL::SessionID,WTF::URL>>(&v15, a2);
  if (v17 == 1)
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
      *v11 = &unk_1F10F0DB8;
      v11[1] = v8;
      v11[2] = a1;
      v14 = v11;
      if ((v17 & 1) == 0)
      {
        __break(1u);
        return;
      }

      WebKit::NetworkProcess::hasPushSubscriptionForTesting(a3, v15, &v16, &v14);
      v12 = v14;
      v14 = 0;
      if (v12)
      {
        (*(*v12 + 8))(v12);
      }
    }
  }

  if (v17 == 1)
  {
    v13 = v16;
    v16 = 0;
    if (v13)
    {
      if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v6);
      }
    }
  }
}

uint64_t IPC::handleMessage<Messages::NetworkProcess::SetProxyConfigData,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::Vector<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WTF::UUID>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>(IPC::Decoder *a1, uint64_t a2)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if (v5 & 1) != 0 && ((v6 = v4, IPC::VectorArgumentCoder<false,std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WTF::UUID>>,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a1, &v19), (v21) || (v11 = *a1, v12 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (v13 = *(a1 + 3)) != 0) && v12 && ((*(*v13 + 16))(v13, v11), (v21)))
  {
    v17[0] = v19;
    v8 = v20;
    v19 = 0;
    v20 = 0;
    v17[1] = v8;
    v18 = 1;
    WTF::Vector<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WTF::UUID>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v19, v7);
    result = WebKit::NetworkProcess::setProxyConfigData(a2, v6, v17);
    if (v18)
    {
      return WTF::Vector<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WTF::UUID>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v17, v10);
    }
  }

  else
  {
    v14 = *a1;
    v15 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
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
      return (*(*result + 16))(result, v14);
    }
  }

  return result;
}

WTF::StringImpl **IPC::handleMessage<Messages::NetworkProcess::SetPersistedDomains,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)>(IPC::Decoder *a1, uint64_t a2)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>(&v5, a1);
  if (v7 == 1)
  {
    result = WebKit::NetworkProcess::setPersistedDomains(a2, v5, &v6);
    if (v7)
    {
      result = v6;
      if (v6)
      {
        return WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v6, v4);
      }
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::NetworkProcess::GetAppBadgeForTesting,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::CompletionHandler<void ()(std::optional<unsigned long long>)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID>>(a2);
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
      *v13 = &unk_1F10F0DE0;
      v13[1] = v10;
      v13[2] = a1;
      v14 = v13;
      WebKit::NetworkProcess::getAppBadgeForTesting(a3, v8, &v14);
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

uint64_t IPC::handleMessageAsync<Messages::NetworkProcess::FetchLocalStorage,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::CompletionHandler<void ()(std::optional<WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>> &&)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID>>(a2);
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
      *v13 = &unk_1F10F0E08;
      v13[1] = v10;
      v13[2] = a1;
      v14 = v13;
      WebKit::NetworkProcess::fetchLocalStorage(a3, v8, &v14);
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

mpark *IPC::handleMessageAsync<Messages::NetworkProcess::RestoreLocalStorage,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(BOOL)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  v6 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if (v7 & 1) != 0 && (v8 = v6, IPC::Decoder::decode<WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>(&v21, a2), (v22))
  {
    v19 = v21;
    v20 = 1;
    v9 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if ((v10 & 1) == 0)
    {
      goto LABEL_17;
    }

    v11 = v9;
    while (1)
    {
      v12 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v13 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v13, v12 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v13 == v12)
      {
        goto LABEL_14;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_14:
    v18 = WTF::fastMalloc(0x18);
    *v18 = &unk_1F10F0E30;
    *(v18 + 1) = v11;
    *(v18 + 2) = a1;
    v21 = v18;
    WebKit::NetworkProcess::restoreLocalStorage(a3, v8, &v19, &v21);
    result = v21;
    v21 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    if (v20)
    {
LABEL_17:
      result = v19;
      if (v19)
      {
        return WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::deallocateTable(v19, v10);
      }
    }
  }

  else
  {
    v14 = *a2;
    v15 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result)
    {
      v17 = v15 == 0;
    }

    else
    {
      v17 = 1;
    }

    if (!v17)
    {
      return (*(*result + 16))(result, v14);
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::NetworkProcess::FetchSessionStorage,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(std::optional<WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>> &&)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(v13, a2);
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
      *v11 = &unk_1F10F0E58;
      v11[1] = v8;
      v11[2] = a1;
      v12 = v11;
      WebKit::NetworkProcess::fetchSessionStorage(a3, v13[0], v13[1], &v12);
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

mpark *IPC::handleMessageAsync<Messages::NetworkProcess::RestoreSessionStorage,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(BOOL)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  v6 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if (v7 & 1) != 0 && (v8 = v6, v9 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2), (v10) && (v11 = v9, IPC::Decoder::decode<WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>(&v24, a2), (v25))
  {
    v22 = v24;
    v23 = 1;
    v12 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if ((v13 & 1) == 0)
    {
      goto LABEL_18;
    }

    v14 = v12;
    while (1)
    {
      v15 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v16 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v16, v15 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v16 == v15)
      {
        goto LABEL_15;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_15:
    v21 = WTF::fastMalloc(0x18);
    *v21 = &unk_1F10F0E80;
    *(v21 + 1) = v14;
    *(v21 + 2) = a1;
    v24 = v21;
    WebKit::NetworkProcess::restoreSessionStorage(a3, v8, v11, &v22, &v24);
    result = v24;
    v24 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    if (v23)
    {
LABEL_18:
      result = v22;
      if (v22)
      {
        return WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::deallocateTable(v22, v13);
      }
    }
  }

  else
  {
    v17 = *a2;
    v18 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result)
    {
      v20 = v18 == 0;
    }

    else
    {
      v20 = 1;
    }

    if (!v20)
    {
      return (*(*result + 16))(result, v17);
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::NetworkProcess::ResetResourceMonitorThrottlerForTesting,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID>>(a2);
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
      *v13 = &unk_1F10F0EA8;
      v13[1] = v10;
      v13[2] = a1;
      v14 = v13;
      WebKit::NetworkProcess::resetResourceMonitorThrottlerForTesting(a3, v8, &v14);
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

uint64_t WebKit::NetworkProcess::didReceiveSyncMessage(atomic_uint *a1, atomic_ullong *a2, unsigned __int16 *a3, uint64_t *a4)
{
  atomic_fetch_add(a1 + 36, 1u);
  v7 = a3[25];
  if (v7 > 0xFAB)
  {
    if (v7 == 4013)
    {
      v20 = IPC::Decoder::decode<std::tuple<WTF::Seconds>>(a3);
      if ((v21 & 1) == 0)
      {
        goto LABEL_36;
      }

      v22 = *&v20;
      v23 = *a4;
      *a4 = 0;
      while (1)
      {
        v24 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v25 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v25, v24 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v25 == v24)
        {
          goto LABEL_33;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_33:
      v29 = WTF::fastMalloc(0x18);
      *v29 = &unk_1F10F0F20;
      v29[1] = v23;
      v29[2] = a2;
      v32 = v29;
      WebKit::NetworkProcess::setServiceWorkerFetchTimeoutForTesting(a1, &v32, v22);
LABEL_34:
      v30 = v32;
      v32 = 0;
      if (v30)
      {
        (*(*v30 + 8))(v30);
      }

LABEL_36:
      v16 = 1;
      if (!a1)
      {
        return v16;
      }

      goto LABEL_37;
    }

    if (v7 == 4012)
    {
      v11 = IPC::Decoder::decode<std::tuple<WebKit::CacheModel>>(a3);
      if ((v11 & 0x100) == 0)
      {
        goto LABEL_36;
      }

      v12 = v11;
      v13 = *a4;
      *a4 = 0;
      while (1)
      {
        v14 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v15 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v15, v14 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v15 == v14)
        {
          goto LABEL_31;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_31:
      v28 = WTF::fastMalloc(0x18);
      *v28 = &unk_1F10F0ED0;
      v28[1] = v13;
      v28[2] = a2;
      v32 = v28;
      WebKit::NetworkProcess::setCacheModelSynchronouslyForTesting(a1, v12, &v32);
      goto LABEL_34;
    }
  }

  else
  {
    if (v7 == 4010)
    {
      v17 = *a4;
      *a4 = 0;
      while (1)
      {
        v18 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v19 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v19, v18 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v19 == v18)
        {
          goto LABEL_29;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_29:
      v27 = WTF::fastMalloc(0x18);
      *v27 = &unk_1F10F0EF8;
      v27[1] = v17;
      v27[2] = a2;
      v32 = v27;
      WebKit::NetworkProcess::processWillSuspendImminentlyForTestingSync(a1, &v32);
      goto LABEL_34;
    }

    if (v7 == 4011)
    {
      v8 = *a4;
      *a4 = 0;
      while (1)
      {
        v9 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v10 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v10 == v9)
        {
          goto LABEL_27;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_27:
      v26 = WTF::fastMalloc(0x18);
      *v26 = &unk_1F10F0F48;
      v26[1] = v8;
      v26[2] = a2;
      v32 = v26;
      WebKit::NetworkProcess::resetServiceWorkerFetchTimeoutForTesting(a1, &v32);
      goto LABEL_34;
    }
  }

  v16 = WebKit::AuxiliaryProcess::didReceiveSyncMessage(a1, a2, a3, a4);
  if (!a1)
  {
    return v16;
  }

LABEL_37:
  if (atomic_fetch_add(a1 + 36, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, a1 + 36);
    (*(*a1 + 24))(a1);
  }

  return v16;
}

void WebKit::NetworkProcessProxy::didReceiveMessage(atomic_uint *this, atomic_ullong *a2, IPC::Decoder *a3)
{
  v5 = a2;
  v688 = *MEMORY[0x1E69E9840];
  v7 = this + 4;
  atomic_fetch_add(this + 4, 1u);
  v8 = v671;
  v9 = v600;
  switch(*(a3 + 25))
  {
    case 0x209:
      v10 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
      if (v11)
      {
        WebKit::NetworkProcessProxy::contentExtensionRules(this, v10);
      }

      goto LABEL_1098;
    case 0x20A:
      v167 = IPC::Decoder::decode<std::tuple<PAL::SessionID>>(a3);
      if (v168)
      {
        WebKit::NetworkProcessProxy::cookiesDidChange(this, v167);
      }

      goto LABEL_1098;
    case 0x20B:
      v139 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v140 & 1) == 0)
      {
        goto LABEL_1097;
      }

      v141 = v139;
      IPC::Decoder::decode<WebCore::ResourceError>(a3, v648);
      if ((BYTE8(v651) & 1) == 0)
      {
        goto LABEL_1097;
      }

      *&v600[8] = *v648;
      *v600 = v141;
      *&v600[24] = *&v648[16];
      *&v600[40] = *&v648[32];
      *&v600[56] = v649;
      *&v600[64] = v650;
      *&v600[68] = WORD2(v650);
      *&v600[72] = *(&v650 + 1);
      v600[80] = v651;
      v600[88] = 1;
      WebKit::NetworkProcessProxy::dataTaskDidCompleteWithError(this, v141, &v600[8]);
      if (v600[88])
      {
        v142 = *&v600[72];
        *&v600[72] = 0;
        if (v142)
        {
          CFRelease(v142);
        }

        v143 = *&v600[56];
        *&v600[56] = 0;
        if (v143 && atomic_fetch_add_explicit(v143, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v143, v18);
        }

        goto LABEL_954;
      }

      goto LABEL_1098;
    case 0x20C:
      v149 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v150 & 1) == 0)
      {
        goto LABEL_1097;
      }

      v151 = v149;
      IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::decode<IPC::Decoder>(a3, v600);
      if ((v600[16] & 1) == 0)
      {
        v547 = *a3;
        v548 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v549 = *(a3 + 3);
        if (!v549)
        {
          goto LABEL_1097;
        }

        if (!v548)
        {
          goto LABEL_1097;
        }

        (*(*v549 + 16))(v549, v547);
        if ((v600[16] & 1) == 0)
        {
          goto LABEL_1097;
        }
      }

      WebKit::NetworkProcessProxy::dataTaskDidReceiveData(this, v151, *v600, *&v600[8]);
      goto LABEL_1098;
    case 0x20D:
      v104 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if (v105 & 1) != 0 && ((v106 = v104, IPC::ArgumentCoder<WebCore::ResourceResponse,void>::decode(a3, v648), (v668) || (v486 = *a3, v487 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v488 = *(a3 + 3)) != 0) && v487 && ((*(*v488 + 16))(v488, v486), (v668)))
      {
        *&v600[16] = *&v648[8];
        *&v600[32] = *&v648[24];
        v108 = v650;
        v650 = 0u;
        v109 = v651;
        v651 = 0u;
        v110 = *&v648[40];
        *v600 = v106;
        *&v600[8] = *v648;
        *v648 = 0;
        *&v648[8] &= ~1u;
        *&v648[40] = 0;
        *&v600[48] = v110;
        *&v600[56] = v649;
        *&v600[64] = v108;
        *&v600[80] = v109;
        *&v108 = v652;
        v652 = 0;
        *&v600[96] = v108;
        v111 = v653;
        v653 = 0;
        *&v601 = v111;
        *&v108 = v654;
        v654 = 0;
        *(&v601 + 1) = v108;
        v112 = v655;
        v655 = 0;
        v602 = v112;
        LOBYTE(v603) = 0;
        LOBYTE(v604) = 0;
        if (v657 == 1)
        {
          v423 = v656;
          v656 = 0;
          v603 = v423;
          LOBYTE(v604) = 1;
        }

        LOWORD(v605) = v658;
        BYTE2(v605) = v659;
        *v606 = v660;
        v660 = 0;
        *v607 = v663;
        *&v607[16] = v664;
        *&v607[32] = v665[0];
        *&v607[43] = *(v665 + 11);
        *&v606[8] = v661;
        *&v606[24] = v662;
        v608 = v666;
        LOBYTE(v609) = v667;
        v610[0] = 1;
        if (v668)
        {
          v666 = 0;
          WebCore::ResourceResponseBase::~ResourceResponseBase(v648, v107);
        }
      }

      else
      {
        v600[0] = 0;
        v610[0] = 0;
        v114 = *a3;
        v489 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v490 = *(a3 + 3);
        if (!v490)
        {
          goto LABEL_404;
        }

        if (!v489)
        {
          goto LABEL_404;
        }

        (*(*v490 + 16))(v490, v114);
        if ((v610[0] & 1) == 0)
        {
          goto LABEL_404;
        }
      }

      v113 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v114 & 1) == 0)
      {
        goto LABEL_404;
      }

      v115 = v113;
      while (1)
      {
        v116 = *v5;
        if ((*v5 & 1) == 0)
        {
          break;
        }

        v117 = *v5;
        atomic_compare_exchange_strong_explicit(v5, &v117, v116 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v117 == v116)
        {
          goto LABEL_401;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v5);
LABEL_401:
      v17 = WTF::fastMalloc(0x18);
      *v17 = &unk_1F10F1100;
      *(v17 + 8) = v115;
      *(v17 + 16) = v5;
      *v648 = v17;
      if ((v610[0] & 1) == 0)
      {
        goto LABEL_1032;
      }

      WebKit::NetworkProcessProxy::dataTaskDidReceiveResponse(this, *v600, &v600[8], v648);
      v335 = *v648;
      *v648 = 0;
      if (v335)
      {
        (*(*v335 + 8))(v335);
      }

LABEL_404:
      if (v610[0] == 1)
      {
        v336 = v608;
        v608 = 0;
        if (v336)
        {
          CFRelease(v336);
        }

        goto LABEL_415;
      }

      goto LABEL_1098;
    case 0x20E:
      v193 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v194 & 1) != 0 && (v195 = v193, IPC::Decoder::decode<WebCore::AuthenticationChallenge>(v648, a3), v670 == 1))
      {
        *v600 = v195;
        WebCore::AuthenticationChallengeBase::AuthenticationChallengeBase(&v600[8], v648);
        *&v621[24] = v669;
        v621[40] = 1;
        if ((v670 & 1) == 0)
        {
          goto LABEL_188;
        }

        v669 = 0uLL;
        WebCore::AuthenticationChallengeBase::~AuthenticationChallengeBase(v648, v196);
        if (v621[40])
        {
          goto LABEL_188;
        }
      }

      else
      {
        v600[0] = 0;
        v621[40] = 0;
      }

      v198 = *a3;
      v452 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v453 = *(a3 + 3);
      if (!v453)
      {
        goto LABEL_388;
      }

      if (!v452)
      {
        goto LABEL_388;
      }

      (*(*v453 + 16))(v453, v198);
      if ((v621[40] & 1) == 0)
      {
        goto LABEL_388;
      }

LABEL_188:
      v197 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v198 & 1) == 0)
      {
        goto LABEL_388;
      }

      v199 = v197;
      while (1)
      {
        v200 = *v5;
        if ((*v5 & 1) == 0)
        {
          break;
        }

        v201 = *v5;
        atomic_compare_exchange_strong_explicit(v5, &v201, v200 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v201 == v200)
        {
          goto LABEL_385;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v5);
LABEL_385:
      v17 = WTF::fastMalloc(0x18);
      *v17 = &unk_1F10F10B0;
      *(v17 + 8) = v199;
      *(v17 + 16) = v5;
      *v648 = v17;
      if ((v621[40] & 1) == 0)
      {
        goto LABEL_1032;
      }

      WebKit::NetworkProcessProxy::dataTaskReceivedChallenge(this, *v600, &v600[8], v648);
      v329 = *v648;
      *v648 = 0;
      if (v329)
      {
        (*(*v329 + 8))(v329);
      }

LABEL_388:
      if (v621[40] == 1)
      {
        v330 = *&v621[32];
        *&v621[32] = 0;
        if (v330)
        {
          CFRelease(v330);
        }

        v331 = *&v621[24];
        *&v621[24] = 0;
        if (v331)
        {
          CFRelease(v331);
        }

        WebCore::AuthenticationChallengeBase::~AuthenticationChallengeBase(&v600[8], v198);
      }

      goto LABEL_1098;
    case 0x20F:
      v224 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if (v225)
      {
        v226 = v224;
        IPC::ArgumentCoder<WebCore::ResourceResponse,void>::decode(a3, v648);
        if (v668 & 1) != 0 || (v491 = *a3, v492 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v493 = *(a3 + 3)) != 0) && v492 && ((*(*v493 + 16))(v493, v491), (v668))
        {
          IPC::ArgumentCoder<WebCore::ResourceRequest,void>::decode(a3, v671);
          if (v687 & 1) != 0 || (v18 = *a3, v494 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v495 = *(a3 + 3)) != 0) && v494 && (v17 = (*(*v495 + 16))(v495, v18), (v687))
          {
            if ((v668 & 1) == 0)
            {
              goto LABEL_1032;
            }

            *&v600[16] = *&v648[8];
            *&v600[32] = *&v648[24];
            v227 = v650;
            v650 = 0u;
            v228 = v651;
            v651 = 0u;
            v229 = *&v648[40];
            *v600 = v226;
            *&v600[8] = *v648;
            *v648 = 0;
            *&v648[8] &= ~1u;
            *&v648[40] = 0;
            *&v600[48] = v229;
            *&v600[56] = v649;
            *&v600[64] = v227;
            *&v600[80] = v228;
            *&v227 = v652;
            v652 = 0;
            *&v600[96] = v227;
            v230 = v653;
            v653 = 0;
            *&v601 = v230;
            *&v227 = v654;
            v654 = 0;
            *(&v601 + 1) = v227;
            v231 = v655;
            v655 = 0;
            v602 = v231;
            LOBYTE(v603) = 0;
            LOBYTE(v604) = 0;
            if (v657 == 1)
            {
              v424 = v656;
              v656 = 0;
              v603 = v424;
              LOBYTE(v604) = 1;
            }

            LOWORD(v605) = v658;
            BYTE2(v605) = v659;
            v232 = v666;
            *v606 = v660;
            *v607 = v663;
            *&v607[16] = v664;
            *&v607[32] = v665[0];
            *&v607[43] = *(v665 + 11);
            *&v606[8] = v661;
            *&v606[24] = v662;
            v660 = 0;
            v666 = 0;
            v608 = v232;
            LOBYTE(v609) = v667;
            std::__tuple_leaf<0ul,WebCore::ResourceRequest,false>::__tuple_leaf[abi:sn200100]<WebCore::ResourceRequest,0>(v610, v671);
            v623[0] = 1;
            if (v687)
            {
              WebCore::ResourceRequest::~ResourceRequest(v671);
            }
          }

          else
          {
            v600[0] = 0;
            v623[0] = 0;
          }

          if (v668)
          {
            v233 = v666;
            v666 = 0;
            if (v233)
            {
              CFRelease(v233);
            }

            WebCore::ResourceResponseBase::~ResourceResponseBase(v648, v18);
          }
        }

        else
        {
          v600[0] = 0;
          v623[0] = 0;
        }

        if (v623[0])
        {
          goto LABEL_228;
        }
      }

      else
      {
        v600[0] = 0;
        v623[0] = 0;
      }

      v465 = *a3;
      v466 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v467 = *(a3 + 3);
      if (!v467)
      {
        goto LABEL_412;
      }

      if (!v466)
      {
        goto LABEL_412;
      }

      (*(*v467 + 16))(v467, v465);
      if ((v623[0] & 1) == 0)
      {
        goto LABEL_412;
      }

LABEL_228:
      v234 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v235 & 1) == 0)
      {
        goto LABEL_412;
      }

      v236 = v234;
      while (1)
      {
        v237 = *v5;
        if ((*v5 & 1) == 0)
        {
          break;
        }

        v238 = *v5;
        atomic_compare_exchange_strong_explicit(v5, &v238, v237 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v238 == v237)
        {
          goto LABEL_409;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v5);
LABEL_409:
      v17 = WTF::fastMalloc(0x18);
      *v17 = &unk_1F10F10D8;
      *(v17 + 8) = v236;
      *(v17 + 16) = v5;
      *v648 = v17;
      if ((v623[0] & 1) == 0)
      {
        goto LABEL_1032;
      }

      WebKit::NetworkProcessProxy::dataTaskWillPerformHTTPRedirection(this, *v600, &v600[8], v610, v648);
      v337 = *v648;
      *v648 = 0;
      if (v337)
      {
        (*(*v337 + 8))(v337);
      }

LABEL_412:
      if (v623[0] == 1)
      {
        WebCore::ResourceRequest::~ResourceRequest(v610);
        v338 = v608;
        v608 = 0;
        if (v338)
        {
          CFRelease(v338);
        }

LABEL_415:
        WebCore::ResourceResponseBase::~ResourceResponseBase(&v600[8], v114);
      }

      goto LABEL_1098;
    case 0x210:
      v152 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v153 & 1) != 0 && (v154 = v152, v155 = IPC::Decoder::decode<WTF::OptionSet<WebKit::WebsiteDataType>>(a3), (v155 & 0x100000000) != 0) && (v156 = v155, v157 = IPC::Decoder::decode<WTF::OptionSet<WebKit::WebsiteDataFetchOption>>(a3), v157 > 0xFFu) && (v158 = v157, IPC::Decoder::decode<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a3, v648), v648[16] == 1))
      {
        *v600 = v154;
        *&v600[8] = v156;
        v600[12] = v158;
        v160 = *v648;
        *v648 = 0;
        *&v600[16] = v160;
        v161 = *&v648[8];
        *&v648[8] = 0;
        *&v600[24] = v161;
        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v648, v159);
        v600[32] = 1;
      }

      else
      {
        v600[0] = 0;
        v600[32] = 0;
        v163 = *a3;
        v358 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v359 = *(a3 + 3);
        if (!v359)
        {
          goto LABEL_520;
        }

        if (!v358)
        {
          goto LABEL_520;
        }

        (*(*v359 + 16))(v359, v163);
        if ((v600[32] & 1) == 0)
        {
          goto LABEL_520;
        }
      }

      v162 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v163 & 1) == 0)
      {
        goto LABEL_520;
      }

      v164 = v162;
      while (1)
      {
        v165 = *v5;
        if ((*v5 & 1) == 0)
        {
          break;
        }

        v166 = *v5;
        atomic_compare_exchange_strong_explicit(v5, &v166, v165 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v166 == v165)
        {
          goto LABEL_517;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v5);
LABEL_517:
      v17 = WTF::fastMalloc(0x18);
      *v17 = &unk_1F10F0F98;
      *(v17 + 8) = v164;
      *(v17 + 16) = v5;
      *v648 = v17;
      if ((v600[32] & 1) == 0)
      {
        goto LABEL_1032;
      }

      WebKit::NetworkProcessProxy::deleteWebsiteDataInUIProcessForRegistrableDomains(this, *v600, *&v600[8], v600[12], &v600[16], v648);
      v368 = *v648;
      *v648 = 0;
      if (v368)
      {
        (*(*v368 + 8))(v368);
      }

LABEL_520:
      if (v600[32] == 1)
      {
        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v600[16], v163);
      }

      goto LABEL_1098;
    case 0x211:
      v252 = IPC::Decoder::decode<WTF::OptionSet<WebKit::WebsiteDataType>>(a3);
      if ((v252 & 0x100000000) == 0)
      {
        goto LABEL_1097;
      }

      v253 = v252;
      IPC::ArgumentCoder<WebCore::ClientOrigin,void>::decode(a3, v648);
      if ((BYTE8(v650) & 1) == 0)
      {
        v438 = *a3;
        v439 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v440 = *(a3 + 3);
        if (!v440)
        {
          goto LABEL_1097;
        }

        if (!v439)
        {
          goto LABEL_1097;
        }

        (*(*v440 + 16))(v440, v438);
        if ((BYTE8(v650) & 1) == 0)
        {
          goto LABEL_1097;
        }
      }

      v254 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if (v18)
      {
        v17 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
        if (v18)
        {
          if ((BYTE8(v650) & 1) == 0)
          {
            goto LABEL_1032;
          }

          v9 = v17;
          *v600 = v253;
          v600[8] = 0;
          v600[32] = -1;
          if (v648[24])
          {
            if (v648[24] == 255)
            {
LABEL_264:
              v600[40] = 0;
              v600[64] = -1;
              if (v650)
              {
                if (v650 == 255)
                {
                  goto LABEL_267;
                }

                *&v600[40] = *&v648[32];
              }

              else
              {
                v256 = *&v648[32];
                *&v648[40] = 0;
                *&v648[32] = 0;
                *&v600[40] = v256;
                *&v600[56] = v649;
              }

              v600[64] = v650;
LABEL_267:
              *&v600[72] = v254;
              *&v600[80] = v17;
              v257 = 1;
              goto LABEL_445;
            }

            *&v600[8] = *v648;
          }

          else
          {
            v255 = *v648;
            *&v648[8] = 0;
            *v648 = 0;
            *&v600[8] = v255;
            *&v600[24] = *&v648[16];
          }

          v600[32] = v648[24];
          goto LABEL_264;
        }
      }

      v257 = 0;
      v600[0] = 0;
LABEL_445:
      v600[88] = v257;
      if (BYTE8(v650))
      {
        if (!v650)
        {
          v348 = *&v648[40];
          *&v648[40] = 0;
          if (v348 && atomic_fetch_add_explicit(v348, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v348, v18);
          }

          v349 = *&v648[32];
          *&v648[32] = 0;
          if (v349 && atomic_fetch_add_explicit(v349, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v349, v18);
          }
        }

        LOBYTE(v650) = -1;
        if (!v648[24])
        {
          v350 = *&v648[8];
          *&v648[8] = 0;
          if (v350 && atomic_fetch_add_explicit(v350, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v350, v18);
          }

          v351 = *v648;
          *v648 = 0;
          if (v351 && atomic_fetch_add_explicit(v351, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v351, v18);
          }
        }
      }

      if ((v257 & 1) == 0)
      {
        goto LABEL_1097;
      }

      v352 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v18 & 1) == 0)
      {
        goto LABEL_946;
      }

      v353 = v352;
      while (1)
      {
        v354 = *v5;
        if ((*v5 & 1) == 0)
        {
          break;
        }

        v355 = *v5;
        atomic_compare_exchange_strong_explicit(v5, &v355, v354 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v355 == v354)
        {
          goto LABEL_467;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v5);
LABEL_467:
      v356 = WTF::fastMalloc(0x18);
      *v356 = &unk_1F10F1178;
      v356[1] = v353;
      v356[2] = v5;
      *v648 = v356;
      WebKit::NetworkProcessProxy::deleteWebsiteDataInWebProcessesForOrigin(this, *v600, &v600[8], v254, v9, v648);
      v357 = *v648;
      *v648 = 0;
      if (v357)
      {
        (*(*v357 + 8))(v357);
      }

      if (v600[88])
      {
        goto LABEL_946;
      }

      goto LABEL_1098;
    case 0x212:
      v123 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v124 & 1) == 0)
      {
        goto LABEL_1097;
      }

      v125 = *(a3 + 1);
      v126 = *(a3 + 2);
      v127 = *a3;
      if (v125 <= &v126[-*a3])
      {
        goto LABEL_966;
      }

      *(a3 + 2) = v126 + 1;
      if (!v126)
      {
        goto LABEL_968;
      }

      v128 = *v126;
      if (v128 >= 2)
      {
        goto LABEL_1096;
      }

      v129 = v123;
      IPC::ArgumentCoder<WTF::URL,void>::decode(a3, v648);
      if ((v648[40] & 1) == 0)
      {
        v518 = *a3;
        v519 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v520 = *(a3 + 3);
        if (!v520)
        {
          goto LABEL_1097;
        }

        if (!v519)
        {
          goto LABEL_1097;
        }

        (*(*v520 + 16))(v520, v518);
        if ((v648[40] & 1) == 0)
        {
          goto LABEL_1097;
        }
      }

      *v600 = v129;
      v600[8] = v128;
      *&v600[16] = *v648;
      *&v600[24] = *&v648[8];
      *&v600[40] = *&v648[24];
      v600[56] = 1;
      WebKit::NetworkProcessProxy::didAllowPrivateTokenUsageByThirdPartyForTesting(this, v129, v128 & 1, &v600[16]);
      if (v600[56])
      {
        goto LABEL_1082;
      }

      goto LABEL_1098;
    case 0x213:
      IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::URL>>(v600, a3);
      if (v600[48] == 1)
      {
        WebKit::NetworkProcessProxy::didBlockLoadToKnownTracker(this, *v600, &v600[8]);
        goto LABEL_273;
      }

      goto LABEL_1098;
    case 0x214:
      v102 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
      if (v103)
      {
        WebKit::NetworkProcessProxy::didCommitCrossSiteLoadWithDataTransferFromPrevalentResource(this, v102);
      }

      goto LABEL_1098;
    case 0x215:
      IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::URL>>(v600, a3);
      if (v600[48] == 1)
      {
        WebKit::NetworkProcessProxy::didNegotiateModernTLS(this, *v600, &v600[8]);
        goto LABEL_273;
      }

      goto LABEL_1098;
    case 0x216:
      v212 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v213 & 1) == 0 || (v214 = v212, v215 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3), (v216 & 1) == 0))
      {
        v600[0] = 0;
        LOBYTE(v625) = 0;
        goto LABEL_735;
      }

      v217 = v215;
      IPC::Decoder::decode<std::optional<WebCore::SecurityOriginData>>(a3, v671);
      if (v671[40] != 1)
      {
        v600[0] = 0;
        LOBYTE(v625) = 0;
        goto LABEL_1071;
      }

      IPC::Decoder::decode<WebCore::AuthenticationChallenge>(v648, a3);
      if (v670 != 1)
      {
        v600[0] = 0;
        LOBYTE(v625) = 0;
        goto LABEL_1062;
      }

      v218 = *(a3 + 1);
      v219 = *(a3 + 2);
      v18 = *a3;
      if (v218 <= &v219[-*a3])
      {
        *a3 = 0;
        *(a3 + 1) = 0;
        v585 = *(a3 + 3);
        if (v585)
        {
          if (v218)
          {
            (*(*v585 + 16))(v585);
            v218 = *(a3 + 1);
          }
        }

        else
        {
          v218 = 0;
        }

        goto LABEL_1051;
      }

      *(a3 + 2) = v219 + 1;
      if (!v219)
      {
LABEL_1051:
        *a3 = 0;
        *(a3 + 1) = 0;
        v586 = *(a3 + 3);
        if (v586)
        {
          if (v218)
          {
            (*(*v586 + 16))(v586);
            v18 = *a3;
            v218 = *(a3 + 1);
            goto LABEL_1054;
          }
        }

        else
        {
          v218 = 0;
        }

        v18 = 0;
LABEL_1054:
        *a3 = 0;
        *(a3 + 1) = 0;
        v587 = *(a3 + 3);
        if (v587 && v218)
        {
          (*(*v587 + 16))(v587, v18);
        }

        goto LABEL_1055;
      }

      v220 = *v219;
      if (v220 >= 2)
      {
        goto LABEL_1054;
      }

      v17 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if (v18)
      {
        if ((v671[40] & 1) == 0 || (v670 & 1) == 0)
        {
          goto LABEL_1032;
        }

        v221 = v17;
        *v600 = v214;
        *&v600[8] = v217;
        v600[16] = 0;
        v600[48] = 0;
        if (v671[32] != 1)
        {
          goto LABEL_214;
        }

        v600[40] = -1;
        if (v671[24])
        {
          if (v671[24] == 255)
          {
            goto LABEL_691;
          }

          *&v600[16] = *v671;
        }

        else
        {
          v428 = *v671;
          *&v671[8] = 0;
          *v671 = 0;
          *&v600[16] = v428;
          *&v600[32] = *&v671[16];
        }

        v600[40] = v671[24];
LABEL_691:
        v600[48] = 1;
LABEL_214:
        WebCore::AuthenticationChallengeBase::AuthenticationChallengeBase(&v600[56], v648);
        v222 = v669;
        v669 = 0uLL;
        *&v623[8] = v222;
        LOBYTE(v624) = v220;
        *(&v624 + 1) = v221;
        v223 = 1;
        goto LABEL_1056;
      }

LABEL_1055:
      v223 = 0;
      v600[0] = 0;
LABEL_1056:
      LOBYTE(v625) = v223;
      if (v670)
      {
        v588 = *(&v669 + 1);
        *(&v669 + 1) = 0;
        if (v588)
        {
          CFRelease(v588);
        }

        v589 = v669;
        *&v669 = 0;
        if (v589)
        {
          CFRelease(v589);
        }

        WebCore::AuthenticationChallengeBase::~AuthenticationChallengeBase(v648, v18);
      }

LABEL_1062:
      if ((v671[40] & 1) != 0 && v671[32] == 1 && !v671[24])
      {
        v590 = *&v671[8];
        *&v671[8] = 0;
        if (v590 && atomic_fetch_add_explicit(v590, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v590, v18);
        }

        v591 = *v671;
        *v671 = 0;
        if (v591 && atomic_fetch_add_explicit(v591, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v591, v18);
        }
      }

LABEL_1071:
      if (v625)
      {
        goto LABEL_1072;
      }

LABEL_735:
      v443 = *a3;
      v444 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v445 = *(a3 + 3);
      if (!v445)
      {
        goto LABEL_1098;
      }

      if (!v444)
      {
        goto LABEL_1098;
      }

      (*(*v445 + 16))(v445, v443);
      if ((v625 & 1) == 0)
      {
        goto LABEL_1098;
      }

LABEL_1072:
      WebKit::NetworkProcessProxy::didReceiveAuthenticationChallenge(this, *v600, *&v600[8], &v600[16], &v600[56], v624, *(&v624 + 1));
      if (v625)
      {
        v593 = *&v623[16];
        *&v623[16] = 0;
        if (v593)
        {
          CFRelease(v593);
        }

        v594 = *&v623[8];
        *&v623[8] = 0;
        if (v594)
        {
          CFRelease(v594);
        }

        WebCore::AuthenticationChallengeBase::~AuthenticationChallengeBase(&v600[56], v592);
        if (v600[48] == 1 && !v600[40])
        {
          goto LABEL_1079;
        }
      }

LABEL_1098:
      if (this)
      {
        WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v7);
      }

      return;
    case 0x217:
      v88 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
      if (v89)
      {
        WebKit::NetworkProcessProxy::endServiceWorkerBackgroundProcessing(this, v88);
      }

      goto LABEL_1098;
    case 0x218:
      v144 = IPC::Decoder::decode<WebKit::RemoteWorkerType>(a3);
      if ((v144 & 0x100) == 0)
      {
        goto LABEL_1097;
      }

      v145 = v144;
      IPC::Decoder::decode<WebCore::Site>(a3, v637);
      if (v638 != 1)
      {
        goto LABEL_1097;
      }

      IPC::ArgumentCoder<std::optional<PAL::SessionID>,void>::decode<IPC::Decoder>(a3, v671);
      if (v671[16] & 1) != 0 || (v18 = *a3, v474 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v475 = *(a3 + 3)) != 0) && v474 && ((*(*v475 + 16))(v475, v18), (v671[16]))
      {
        IPC::ArgumentCoder<std::optional<WebCore::ProcessQualified<WTF::UUID>>,void>::decode<IPC::Decoder>(a3, v648);
        if ((v649 & 1) != 0 || (v18 = *a3, v476 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v477 = *(a3 + 3)) != 0) && v476 && ((*(*v477 + 16))(v477, v18), (v649)) && (v17 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3), (v18))
        {
          if ((v638 & 1) == 0 || (v671[16] & 1) == 0 || (v649 & 1) == 0)
          {
            goto LABEL_1032;
          }

          v9 = v17;
          v600[0] = v145;
          v146 = v637[0];
          if (v637[0])
          {
            atomic_fetch_add_explicit(v637[0], 2u, memory_order_relaxed);
          }

          *&v600[8] = v146;
          v147 = v637[1];
          if (v637[1])
          {
            atomic_fetch_add_explicit(v637[1], 2u, memory_order_relaxed);
          }

          *&v600[16] = v147;
          *&v600[24] = *v671;
          *&v600[48] = *v648;
          *&v600[64] = *&v648[16];
          *&v600[80] = *&v648[32];
          *&v600[96] = v17;
          v148 = 1;
        }

        else
        {
          v145 = 0;
          v148 = 0;
          v600[0] = 0;
        }

        BYTE8(v601) = v148;
      }

      else
      {
        v145 = 0;
        v148 = 0;
        v600[0] = 0;
        BYTE8(v601) = 0;
      }

      if (v638)
      {
        v478 = v637[1];
        v637[1] = 0;
        if (v478 && atomic_fetch_add_explicit(v478, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v478, v18);
        }

        v479 = v637[0];
        v637[0] = 0;
        if (v479 && atomic_fetch_add_explicit(v479, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v479, v18);
        }
      }

      if ((v148 & 1) == 0)
      {
        goto LABEL_1097;
      }

      v480 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v18 & 1) == 0)
      {
        goto LABEL_954;
      }

      v481 = v480;
      while (1)
      {
        v482 = *v5;
        if ((*v5 & 1) == 0)
        {
          break;
        }

        v483 = *v5;
        atomic_compare_exchange_strong_explicit(v5, &v483, v482 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v483 == v482)
        {
          goto LABEL_801;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v5);
LABEL_801:
      v484 = WTF::fastMalloc(0x18);
      *v484 = &unk_1F10F1010;
      v484[1] = v481;
      v484[2] = v5;
      *v671 = v484;
      *v648 = *&v600[48];
      *&v648[16] = *&v600[64];
      *&v648[32] = *&v600[80];
      WebKit::NetworkProcessProxy::establishRemoteWorkerContextConnectionToNetworkProcess(this, v145, &v600[8], *&v600[24], v600[32], v648, v9, v671);
      v485 = *v671;
      *v671 = 0;
      if (v485)
      {
        (*(*v485 + 8))(v485);
      }

      if (BYTE8(v601))
      {
        goto LABEL_954;
      }

      goto LABEL_1098;
    case 0x219:
      v78 = IPC::Decoder::decode<std::tuple<PAL::SessionID>>(a3);
      if ((v79 & 1) == 0)
      {
        goto LABEL_1098;
      }

      v80 = v78;
      v81 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v82 & 1) == 0)
      {
        goto LABEL_1098;
      }

      v83 = v81;
      while (1)
      {
        v84 = *v5;
        if ((*v5 & 1) == 0)
        {
          break;
        }

        v85 = *v5;
        atomic_compare_exchange_strong_explicit(v5, &v85, v84 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v85 == v84)
        {
          goto LABEL_395;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v5);
LABEL_395:
      v332 = WTF::fastMalloc(0x18);
      *v332 = &unk_1F10F1038;
      v332[1] = v83;
      v332[2] = v5;
      *v600 = v332;
      WebKit::NetworkProcessProxy::getAppBoundDomains(this, v80, v600);
      v333 = *v600;
      *v600 = 0;
      if (v333)
      {
        goto LABEL_396;
      }

      goto LABEL_1098;
    case 0x21A:
      v175 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
      if ((v176 & 1) == 0)
      {
        goto LABEL_1098;
      }

      v177 = v175;
      v178 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v179 & 1) == 0)
      {
        goto LABEL_1098;
      }

      v180 = v178;
      while (1)
      {
        v181 = *v5;
        if ((*v5 & 1) == 0)
        {
          break;
        }

        v182 = *v5;
        atomic_compare_exchange_strong_explicit(v5, &v182, v181 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v182 == v181)
        {
          goto LABEL_398;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v5);
LABEL_398:
      v334 = WTF::fastMalloc(0x18);
      *v334 = &unk_1F10F1088;
      v334[1] = v180;
      v334[2] = v5;
      *v600 = v334;
      WebKit::NetworkProcessProxy::getPaymentCoordinatorEmbeddingUserAgent(this, v177, v600);
      v333 = *v600;
      *v600 = 0;
      if (v333)
      {
LABEL_396:
        (*(*v333 + 8))(v333);
      }

      goto LABEL_1098;
    case 0x21B:
      v239 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v240 & 1) == 0)
      {
        goto LABEL_1097;
      }

      v241 = v239;
      IPC::ArgumentCoder<WebCore::ClientOrigin,void>::decode(a3, v648);
      if ((BYTE8(v650) & 1) == 0)
      {
        v435 = *a3;
        v436 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v437 = *(a3 + 3);
        if (!v437)
        {
          goto LABEL_1097;
        }

        if (!v436)
        {
          goto LABEL_1097;
        }

        (*(*v437 + 16))(v437, v435);
        if ((BYTE8(v650) & 1) == 0)
        {
          goto LABEL_1097;
        }
      }

      v17 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
      v242 = v17;
      if ((v18 & 1) == 0)
      {
        goto LABEL_928;
      }

      v243 = *(a3 + 1);
      v244 = ((*(a3 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
      v18 = *a3;
      v245 = v244 - *a3;
      v190 = v243 >= v245;
      v246 = v243 - v245;
      if (!v190 || v246 <= 7)
      {
        goto LABEL_924;
      }

      *(a3 + 2) = v244 + 1;
      if (!v244)
      {
        goto LABEL_927;
      }

      v8 = *v244;
      v247 = ((v244 + 15) & 0xFFFFFFFFFFFFFFF8);
      if (v243 < v247 - v18 || v243 - (v247 - v18) <= 7)
      {
        goto LABEL_924;
      }

      *(a3 + 2) = v247 + 1;
      if (!v247)
      {
        goto LABEL_927;
      }

      v9 = *v247;
      v248 = ((v247 + 15) & 0xFFFFFFFFFFFFFFF8);
      if (v243 < v248 - v18 || v243 - (v248 - v18) <= 7)
      {
LABEL_924:
        *a3 = 0;
        *(a3 + 1) = 0;
        v550 = *(a3 + 3);
        if (v550)
        {
          if (v243)
          {
            (*(*v550 + 16))(v550);
            v18 = *a3;
            v243 = *(a3 + 1);
            goto LABEL_927;
          }
        }

        else
        {
          v243 = 0;
        }

        v18 = 0;
      }

      else
      {
        *(a3 + 2) = v248 + 1;
        if (v248)
        {
          if ((BYTE8(v650) & 1) == 0)
          {
            goto LABEL_1032;
          }

          v3 = *v248;
          *v600 = v241;
          v600[8] = 0;
          v600[32] = -1;
          if (v648[24])
          {
            if (v648[24] == 255)
            {
LABEL_250:
              v600[40] = 0;
              v600[64] = -1;
              if (v650)
              {
                if (v650 == 255)
                {
                  goto LABEL_253;
                }

                *&v600[40] = *&v648[32];
              }

              else
              {
                v250 = *&v648[32];
                *&v648[40] = 0;
                *&v648[32] = 0;
                *&v600[40] = v250;
                *&v600[56] = v649;
              }

              v600[64] = v650;
LABEL_253:
              *&v600[72] = v17;
              *&v600[80] = v8;
              v251 = 1;
              *&v600[88] = v9;
              *&v600[96] = v3;
              goto LABEL_929;
            }

            *&v600[8] = *v648;
          }

          else
          {
            v249 = *v648;
            *&v648[8] = 0;
            *v648 = 0;
            *&v600[8] = v249;
            *&v600[24] = *&v648[16];
          }

          v600[32] = v648[24];
          goto LABEL_250;
        }
      }

LABEL_927:
      *a3 = 0;
      *(a3 + 1) = 0;
      v551 = *(a3 + 3);
      if (v551 && v243)
      {
        (*(*v551 + 16))(v551);
      }

LABEL_928:
      v251 = 0;
      v600[0] = 0;
LABEL_929:
      LOBYTE(v601) = v251;
      if (BYTE8(v650))
      {
        if (!v650)
        {
          v552 = *&v648[40];
          *&v648[40] = 0;
          if (v552 && atomic_fetch_add_explicit(v552, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v552, v18);
          }

          v553 = *&v648[32];
          *&v648[32] = 0;
          if (v553 && atomic_fetch_add_explicit(v553, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v553, v18);
          }
        }

        LOBYTE(v650) = -1;
        if (!v648[24])
        {
          v554 = *&v648[8];
          *&v648[8] = 0;
          if (v554 && atomic_fetch_add_explicit(v554, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v554, v18);
          }

          v555 = *v648;
          *v648 = 0;
          if (v555 && atomic_fetch_add_explicit(v555, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v555, v18);
          }
        }
      }

      if ((v251 & 1) == 0)
      {
        goto LABEL_1097;
      }

      WebKit::NetworkProcessProxy::increaseQuota(this, *v600, &v600[8], v242, v8, v9, v3);
      if (v601)
      {
LABEL_946:
        if (v600[64])
        {
          goto LABEL_953;
        }

        goto LABEL_947;
      }

      goto LABEL_1098;
    case 0x21C:
      v282 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v283 & 1) == 0)
      {
        goto LABEL_1097;
      }

      v284 = v282;
      IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, v671);
      if ((v671[8] & 1) == 0)
      {
        v533 = *a3;
        v534 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v535 = *(a3 + 3);
        if (!v535)
        {
          goto LABEL_1097;
        }

        if (!v534)
        {
          goto LABEL_1097;
        }

        (*(*v535 + 16))(v535, v533);
        if ((v671[8] & 1) == 0)
        {
          goto LABEL_1097;
        }
      }

      IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, v648);
      if (v648[8] & 1) != 0 || (v18 = *a3, v543 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v544 = *(a3 + 3)) != 0) && v543 && ((*(*v544 + 16))(v544, v18), (v648[8]))
      {
        v17 = IPC::Decoder::decode<WebKit::UseDownloadPlaceholder>(a3);
        if ((v17 & 0x100) != 0)
        {
          if ((v671[8] & 1) == 0 || (v648[8] & 1) == 0)
          {
            goto LABEL_1032;
          }

          LOBYTE(v8) = v17;
          v362 = *v671;
          *v671 = 0;
          *v600 = v284;
          *&v600[8] = v362;
          *&v600[16] = *v648;
          v600[24] = v17;
          v286 = 1;
          v600[32] = 1;
        }

        else
        {
          v600[0] = 0;
          v600[32] = 0;
          if (v648[8])
          {
            v285 = *v648;
            *v648 = 0;
            if (v285)
            {
              if (atomic_fetch_add_explicit(v285, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v285, v18);
              }
            }
          }

          v286 = 0;
        }
      }

      else
      {
        v286 = 0;
        v600[0] = 0;
        v600[32] = 0;
      }

      if (v671[8])
      {
        v363 = *v671;
        *v671 = 0;
        if (v363)
        {
          if (atomic_fetch_add_explicit(v363, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v363, v18);
          }
        }
      }

      if (v286)
      {
        WebKit::NetworkProcessProxy::logDiagnosticMessage(this, *v600, &v600[8], &v600[16], v8 & 1);
        goto LABEL_514;
      }

      goto LABEL_1097;
    case 0x21D:
      v184 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v185 & 1) == 0)
      {
        goto LABEL_1097;
      }

      v186 = v184;
      IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, v671);
      if ((v671[8] & 1) == 0)
      {
        v527 = *a3;
        v528 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v529 = *(a3 + 3);
        if (!v529)
        {
          goto LABEL_1097;
        }

        if (!v528)
        {
          goto LABEL_1097;
        }

        (*(*v529 + 16))(v529, v527);
        if ((v671[8] & 1) == 0)
        {
          goto LABEL_1097;
        }
      }

      IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, v648);
      if ((v648[8] & 1) == 0)
      {
        v18 = *a3;
        v539 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v540 = *(a3 + 3);
        if (!v540 || !v539 || ((*(*v540 + 16))(v540, v18), (v648[8] & 1) == 0))
        {
          v192 = 0;
          v600[0] = 0;
          v600[32] = 0;
          goto LABEL_508;
        }
      }

      v187 = *(a3 + 1);
      v188 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
      v18 = *a3;
      v189 = v188 - *a3;
      v190 = v187 >= v189;
      v191 = v187 - v189;
      if (v190 && v191 > 3)
      {
        *(a3 + 2) = v188 + 1;
        if (v188)
        {
          v8 = *v188;
          v17 = IPC::Decoder::decode<WebKit::UseDownloadPlaceholder>(a3);
          if ((v17 & 0x100) == 0)
          {
LABEL_183:
            v192 = 0;
            v600[0] = 0;
            goto LABEL_504;
          }

          if ((v671[8] & 1) == 0 || (v648[8] & 1) == 0)
          {
            goto LABEL_1032;
          }

          LOBYTE(v9) = v17;
          v364 = *v671;
          *v671 = 0;
          *v600 = v186;
          *&v600[8] = v364;
          v365 = *v648;
          *v648 = 0;
          *&v600[16] = v365;
          *&v600[24] = v8;
          v600[28] = v17;
          v192 = 1;
LABEL_504:
          v600[32] = v192;
          if (v648[8])
          {
            v366 = *v648;
            *v648 = 0;
            if (v366)
            {
              if (atomic_fetch_add_explicit(v366, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v366, v18);
              }
            }
          }

LABEL_508:
          if (v671[8])
          {
            v367 = *v671;
            *v671 = 0;
            if (v367)
            {
              if (atomic_fetch_add_explicit(v367, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v367, v18);
              }
            }
          }

          if (v192)
          {
            WebKit::NetworkProcessProxy::logDiagnosticMessageWithResult(this, *v600, &v600[8], &v600[16], v8, v9 & 1);
LABEL_514:
            if ((v600[32] & 1) == 0)
            {
              goto LABEL_1098;
            }

            goto LABEL_954;
          }

          goto LABEL_1097;
        }
      }

      else
      {
        *a3 = 0;
        *(a3 + 1) = 0;
        v559 = *(a3 + 3);
        if (v559)
        {
          if (v187)
          {
            (*(*v559 + 16))(v559);
            v18 = *a3;
            v187 = *(a3 + 1);
            goto LABEL_963;
          }
        }

        else
        {
          v187 = 0;
        }

        v18 = 0;
      }

LABEL_963:
      *a3 = 0;
      *(a3 + 1) = 0;
      v560 = *(a3 + 3);
      if (v560 && v187)
      {
        (*(*v560 + 16))(v560);
      }

      goto LABEL_183;
    case 0x21E:
      v202 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v203 & 1) == 0)
      {
        goto LABEL_1097;
      }

      v204 = v202;
      IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, v671);
      if ((v671[8] & 1) == 0)
      {
        v530 = *a3;
        v531 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v532 = *(a3 + 3);
        if (!v532)
        {
          goto LABEL_1097;
        }

        if (!v531)
        {
          goto LABEL_1097;
        }

        (*(*v532 + 16))(v532, v530);
        if ((v671[8] & 1) == 0)
        {
          goto LABEL_1097;
        }
      }

      IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, v648);
      if ((v648[8] & 1) == 0)
      {
        v18 = *a3;
        v541 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v542 = *(a3 + 3);
        if (!v542 || !v541 || ((*(*v542 + 16))(v542, v18), (v648[8] & 1) == 0))
        {
          v211 = 0;
          v600[0] = 0;
          v600[40] = 0;
          goto LABEL_590;
        }
      }

      v205 = IPC::Decoder::decode<unsigned long long>(a3);
      if ((v18 & 1) == 0)
      {
        goto LABEL_202;
      }

      v206 = *(a3 + 1);
      v207 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
      v18 = *a3;
      v208 = v207 - *a3;
      v190 = v206 >= v208;
      v209 = v206 - v208;
      if (v190 && v209 > 3)
      {
        *(a3 + 2) = v207 + 1;
        if (v207)
        {
          v210 = v205;
          v5 = *v207;
          v17 = IPC::Decoder::decode<WebKit::UseDownloadPlaceholder>(a3);
          if ((v17 & 0x100) != 0)
          {
            if ((v671[8] & 1) == 0 || (v648[8] & 1) == 0)
            {
              goto LABEL_1032;
            }

            LOBYTE(v8) = v17;
            v389 = *v671;
            *v671 = 0;
            *v600 = v204;
            *&v600[8] = v389;
            v390 = *v648;
            *v648 = 0;
            *&v600[16] = v390;
            *&v600[24] = v210;
            *&v600[32] = v5;
            v600[36] = v17;
            v211 = 1;
LABEL_586:
            v600[40] = v211;
            if (v648[8])
            {
              v391 = *v648;
              *v648 = 0;
              if (v391)
              {
                if (atomic_fetch_add_explicit(v391, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v391, v18);
                }
              }
            }

LABEL_590:
            if (v671[8])
            {
              v392 = *v671;
              *v671 = 0;
              if (v392)
              {
                if (atomic_fetch_add_explicit(v392, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v392, v18);
                }
              }
            }

            if (v211)
            {
              WebKit::NetworkProcessProxy::logDiagnosticMessageWithValue(this, *v600, &v600[8], &v600[16], v5, v8 & 1);
              if ((v600[40] & 1) == 0)
              {
                goto LABEL_1098;
              }

LABEL_954:
              v558 = *&v600[16];
              *&v600[16] = 0;
              if (v558 && atomic_fetch_add_explicit(v558, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v558, v18);
              }

              goto LABEL_957;
            }

LABEL_1097:
            v597 = *a3;
            v598 = *(a3 + 1);
            *a3 = 0;
            *(a3 + 1) = 0;
            v599 = *(a3 + 3);
            if (v599 && v598)
            {
              (*(*v599 + 16))(v599, v597);
            }

            goto LABEL_1098;
          }

LABEL_202:
          v211 = 0;
          v600[0] = 0;
          goto LABEL_586;
        }
      }

      else
      {
        *a3 = 0;
        *(a3 + 1) = 0;
        v563 = *(a3 + 3);
        if (v563)
        {
          if (v206)
          {
            (*(*v563 + 16))(v563);
            v18 = *a3;
            v206 = *(a3 + 1);
            goto LABEL_974;
          }
        }

        else
        {
          v206 = 0;
        }

        v18 = 0;
      }

LABEL_974:
      *a3 = 0;
      *(a3 + 1) = 0;
      v564 = *(a3 + 3);
      if (v564 && v206)
      {
        (*(*v564 + 16))(v564);
      }

      goto LABEL_202;
    case 0x21F:
      IPC::Decoder::decode<std::tuple<PAL::SessionID,WTF::String>>(v600, a3);
      if (v600[16] == 1)
      {
        WebKit::NetworkProcessProxy::logTestingEvent(this, *v600, &v600[8]);
        if (v600[16])
        {
          goto LABEL_957;
        }
      }

      goto LABEL_1098;
    case 0x220:
      v291 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v292 & 1) == 0)
      {
        goto LABEL_1097;
      }

      v293 = v291;
      IPC::ArgumentCoder<WebCore::ProcessQualified<WTF::UUID>,void>::decode(a3, v671);
      if ((v671[32] & 1) == 0)
      {
        goto LABEL_1095;
      }

      IPC::ArgumentCoder<WTF::URL,void>::decode(a3, v648);
      if ((v648[40] & 1) == 0)
      {
        v521 = *a3;
        v522 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v523 = *(a3 + 3);
        if (!v523)
        {
          goto LABEL_1097;
        }

        if (!v522)
        {
          goto LABEL_1097;
        }

        (*(*v523 + 16))(v523, v521);
        if ((v648[40] & 1) == 0)
        {
          goto LABEL_1097;
        }
      }

      *v600 = v293;
      *&v600[16] = *v671;
      *&v600[32] = *&v671[16];
      v294 = *v648;
      *&v600[48] = *v648;
      *&v600[56] = *&v648[8];
      *&v600[72] = *&v648[24];
      v600[96] = 1;
      v295 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v18 & 1) == 0)
      {
        goto LABEL_421;
      }

      v296 = v295;
      while (1)
      {
        v297 = *v5;
        if ((*v5 & 1) == 0)
        {
          break;
        }

        v298 = *v5;
        atomic_compare_exchange_strong_explicit(v5, &v298, v297 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v298 == v297)
        {
          goto LABEL_417;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v5);
LABEL_417:
      v339 = WTF::fastMalloc(0x18);
      *v339 = &unk_1F10F1150;
      v339[1] = v296;
      v339[2] = v5;
      *v671 = v339;
      *v648 = *&v600[16];
      *&v648[16] = *&v600[32];
      WebKit::NetworkProcessProxy::navigateServiceWorkerClient(this, v293, v648, &v600[48], v671);
      v340 = *v671;
      *v671 = 0;
      if (v340)
      {
        (*(*v340 + 8))(v340);
      }

      if ((v600[96] & 1) == 0)
      {
        goto LABEL_1098;
      }

      v294 = *&v600[48];
LABEL_421:
      *&v600[48] = 0;
      if (!v294 || atomic_fetch_add_explicit(v294, 0xFFFFFFFE, memory_order_relaxed) != 2)
      {
        goto LABEL_1098;
      }

      v341 = v294;
      goto LABEL_959;
    case 0x221:
      v137 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
      if (v138)
      {
        WebKit::NetworkProcessProxy::negotiatedLegacyTLS(this, v137);
      }

      goto LABEL_1098;
    case 0x222:
      v130 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v131 & 1) == 0)
      {
        goto LABEL_1097;
      }

      v132 = v130;
      IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, v648);
      if ((v648[8] & 1) == 0)
      {
        v524 = *a3;
        v525 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v526 = *(a3 + 3);
        if (!v526)
        {
          goto LABEL_1097;
        }

        if (!v525)
        {
          goto LABEL_1097;
        }

        (*(*v526 + 16))(v526, v524);
        if ((v648[8] & 1) == 0)
        {
          goto LABEL_1097;
        }
      }

      v133 = *(a3 + 1);
      v134 = *(a3 + 2);
      v135 = *a3;
      if (v133 <= &v134[-*a3])
      {
        *a3 = 0;
        *(a3 + 1) = 0;
        v568 = *(a3 + 3);
        if (v568)
        {
          if (v133)
          {
            (*(*v568 + 16))(v568);
            v133 = *(a3 + 1);
          }
        }

        else
        {
          v133 = 0;
        }
      }

      else
      {
        *(a3 + 2) = v134 + 1;
        if (v134)
        {
          v136 = *v134;
          if (v136 < 3)
          {
            *v600 = v132;
            *&v600[8] = *v648;
            v600[16] = v136;
            v600[24] = 1;
            WebKit::NetworkProcessProxy::notifyBackgroundFetchChange(this, v132, &v600[8], v136);
            if ((v600[24] & 1) == 0)
            {
              goto LABEL_1098;
            }

            goto LABEL_957;
          }

LABEL_991:
          *a3 = 0;
          *(a3 + 1) = 0;
          v570 = *(a3 + 3);
          if (v570 && v133)
          {
            (*(*v570 + 16))(v570, v135);
          }

          if ((v648[8] & 1) == 0)
          {
            goto LABEL_1097;
          }

          v510 = *v648;
          *v648 = 0;
          if (!v510)
          {
            goto LABEL_1097;
          }

LABEL_994:
          if (atomic_fetch_add_explicit(v510, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v510, v135);
          }

          goto LABEL_1097;
        }
      }

      *a3 = 0;
      *(a3 + 1) = 0;
      v569 = *(a3 + 3);
      if (v569)
      {
        if (v133)
        {
          (*(*v569 + 16))(v569);
          v135 = *a3;
          v133 = *(a3 + 1);
          goto LABEL_991;
        }
      }

      else
      {
        v133 = 0;
      }

      v135 = 0;
      goto LABEL_991;
    case 0x223:
      v316 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v317 & 1) == 0)
      {
        goto LABEL_1097;
      }

      v318 = v316;
      IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, v671);
      if ((v671[8] & 1) == 0)
      {
        v536 = *a3;
        v537 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v538 = *(a3 + 3);
        if (!v538)
        {
          goto LABEL_1097;
        }

        if (!v537)
        {
          goto LABEL_1097;
        }

        (*(*v538 + 16))(v538, v536);
        if ((v671[8] & 1) == 0)
        {
          goto LABEL_1097;
        }
      }

      v17 = IPC::ArgumentCoder<WebCore::SecurityOriginData,void>::decode(a3, v648);
      if (v648[32])
      {
        if ((v671[8] & 1) == 0)
        {
          goto LABEL_1032;
        }

        *v600 = v318;
        *&v600[8] = *v671;
        v600[16] = 0;
        v600[40] = -1;
        v319 = v648[24];
        if (v648[24])
        {
          if (v648[24] != 255)
          {
            *&v600[16] = *v648;
            v600[40] = v648[24];
          }
        }

        else
        {
          *&v600[16] = *v648;
          *&v600[32] = *&v648[16];
          v600[40] = 0;
        }

        v600[48] = 1;
        v320 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
        if (v18)
        {
          v321 = v320;
          while (1)
          {
            v322 = *v5;
            if ((*v5 & 1) == 0)
            {
              break;
            }

            v323 = *v5;
            atomic_compare_exchange_strong_explicit(v5, &v323, v322 + 2, memory_order_relaxed, memory_order_relaxed);
            if (v323 == v322)
            {
              goto LABEL_425;
            }
          }

          WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v5);
LABEL_425:
          v342 = WTF::fastMalloc(0x18);
          *v342 = &unk_1F10F1128;
          v342[1] = v321;
          v342[2] = v5;
          *v648 = v342;
          WebKit::NetworkProcessProxy::openWindowFromServiceWorker(this, v318, &v600[8], &v600[16], v648);
          v343 = *v648;
          *v648 = 0;
          if (v343)
          {
            (*(*v343 + 8))(v343);
          }

          if ((v600[48] & 1) == 0)
          {
            goto LABEL_1098;
          }

          v319 = v600[40];
        }

        if (!v319)
        {
          v344 = *&v600[24];
          *&v600[24] = 0;
          if (v344 && atomic_fetch_add_explicit(v344, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v344, v18);
          }

          v345 = *&v600[16];
          *&v600[16] = 0;
          if (v345 && atomic_fetch_add_explicit(v345, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v345, v18);
          }
        }

        v600[40] = -1;
        goto LABEL_957;
      }

      v135 = *a3;
      v508 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v509 = *(a3 + 3);
      if (v509 && v508)
      {
        (*(*v509 + 16))(v509, v135);
      }

      if ((v671[8] & 1) == 0)
      {
        goto LABEL_1097;
      }

      v510 = *v671;
      *v671 = 0;
      if (!v510)
      {
        goto LABEL_1097;
      }

      goto LABEL_994;
    case 0x224:
      v65 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
      if (v66)
      {
        WebKit::NetworkProcessProxy::processHasUnresponseServiceWorker(this, v65);
      }

      goto LABEL_1098;
    case 0x225:
      IPC::Decoder::decode<std::tuple<WebKit::RemoteWorkerType,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(v600, a3);
      if (v600[24] == 1)
      {
        WebKit::NetworkProcessProxy::registerRemoteWorkerClientProcess(this, v600[0], *&v600[8], *&v600[16]);
      }

      goto LABEL_1098;
    case 0x226:
      IPC::ArgumentCoder<WebCore::ClientOrigin,void>::decode(a3, v648);
      if ((BYTE8(v650) & 1) == 0)
      {
        v429 = *a3;
        v430 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v431 = *(a3 + 3);
        if (!v431)
        {
          goto LABEL_1097;
        }

        if (!v430)
        {
          goto LABEL_1097;
        }

        (*(*v431 + 16))(v431, v429);
        if ((BYTE8(v650) & 1) == 0)
        {
          goto LABEL_1097;
        }
      }

      v299 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if (v18)
      {
        v17 = IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(a3, v671);
        if ((v671[16] & 1) == 0)
        {
          v18 = *a3;
          v513 = *(a3 + 1);
          *a3 = 0;
          *(a3 + 1) = 0;
          v514 = *(a3 + 3);
          if (!v514 || !v513 || (v17 = (*(*v514 + 16))(v514, v18), (v671[16] & 1) == 0))
          {
            v302 = 0;
            v600[0] = 0;
            goto LABEL_343;
          }
        }

        if ((BYTE8(v650) & 1) == 0)
        {
          goto LABEL_1032;
        }

        v600[0] = 0;
        v600[24] = -1;
        if (v648[24])
        {
          if (v648[24] == 255)
          {
LABEL_339:
            v600[32] = 0;
            v600[56] = -1;
            if (v650)
            {
              if (v650 == 255)
              {
                goto LABEL_342;
              }

              *&v600[32] = *&v648[32];
            }

            else
            {
              v301 = *&v648[32];
              *&v648[40] = 0;
              *&v648[32] = 0;
              *&v600[32] = v301;
              *&v600[48] = v649;
            }

            v600[56] = v650;
LABEL_342:
            *&v600[64] = v299;
            *&v600[72] = *v671;
            v302 = 1;
LABEL_343:
            v600[88] = v302;
            goto LABEL_524;
          }

          *v600 = *v648;
        }

        else
        {
          v300 = *v648;
          *&v648[8] = 0;
          *v648 = 0;
          *v600 = v300;
          *&v600[16] = *&v648[16];
        }

        v600[24] = v648[24];
        goto LABEL_339;
      }

      v302 = 0;
      v600[0] = 0;
      v600[88] = 0;
LABEL_524:
      if (BYTE8(v650))
      {
        if (!v650)
        {
          v369 = *&v648[40];
          *&v648[40] = 0;
          if (v369 && atomic_fetch_add_explicit(v369, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v369, v18);
          }

          v370 = *&v648[32];
          *&v648[32] = 0;
          if (v370 && atomic_fetch_add_explicit(v370, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v370, v18);
          }
        }

        LOBYTE(v650) = -1;
        if (!v648[24])
        {
          v371 = *&v648[8];
          *&v648[8] = 0;
          if (v371 && atomic_fetch_add_explicit(v371, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v371, v18);
          }

          v372 = *v648;
          *v648 = 0;
          if (v372 && atomic_fetch_add_explicit(v372, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v372, v18);
          }
        }
      }

      if ((v302 & 1) == 0)
      {
        goto LABEL_1097;
      }

      v373 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if (v18)
      {
        v374 = v373;
        while (1)
        {
          v375 = *v5;
          if ((*v5 & 1) == 0)
          {
            break;
          }

          v376 = *v5;
          atomic_compare_exchange_strong_explicit(v5, &v376, v375 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v376 == v375)
          {
            goto LABEL_546;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v5);
LABEL_546:
        v377 = WTF::fastMalloc(0x18);
        *v377 = &unk_1F10F11A0;
        v377[1] = v374;
        v377[2] = v5;
        *v648 = v377;
        WebKit::NetworkProcessProxy::reloadExecutionContextsForOrigin(this, v600, v299, *&v600[72], *&v600[80], v648);
        v378 = *v648;
        *v648 = 0;
        if (v378)
        {
          (*(*v378 + 8))(v378);
        }

        if ((v600[88] & 1) == 0)
        {
          goto LABEL_1098;
        }
      }

      if (!v600[56])
      {
        v379 = *&v600[40];
        *&v600[40] = 0;
        if (v379 && atomic_fetch_add_explicit(v379, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v379, v18);
        }

        v380 = *&v600[32];
        *&v600[32] = 0;
        if (v380 && atomic_fetch_add_explicit(v380, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v380, v18);
        }
      }

      v600[56] = -1;
      if (v600[24])
      {
        goto LABEL_1098;
      }

      v381 = *&v600[8];
      *&v600[8] = 0;
      if (v381 && atomic_fetch_add_explicit(v381, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v381, v18);
      }

      v341 = *v600;
      *v600 = 0;
      if (!v341)
      {
        goto LABEL_1098;
      }

      goto LABEL_958;
    case 0x227:
      v258 = IPC::Decoder::decode<WebKit::RemoteWorkerType>(a3);
      if ((v258 & 0x100) == 0)
      {
        goto LABEL_1097;
      }

      v259 = v258;
      v260 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v261 & 1) == 0)
      {
        goto LABEL_1097;
      }

      WebKit::NetworkProcessProxy::remoteWorkerContextConnectionNoLongerNeeded(this, v259, v260);
      goto LABEL_1098;
    case 0x228:
      v169 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v170 & 1) == 0)
      {
        goto LABEL_1097;
      }

      v171 = v169;
      IPC::ArgumentCoder<WTF::URL,void>::decode(a3, v648);
      if ((v648[40] & 1) == 0)
      {
        v515 = *a3;
        v516 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v517 = *(a3 + 3);
        if (!v517)
        {
          goto LABEL_1097;
        }

        if (!v516)
        {
          goto LABEL_1097;
        }

        (*(*v517 + 16))(v517, v515);
        if ((v648[40] & 1) == 0)
        {
          goto LABEL_1097;
        }
      }

      IPC::ArgumentCoder<WebCore::SecurityOriginData,void>::decode(a3, v671);
      if ((v671[32] & 1) == 0)
      {
        v18 = *a3;
        v511 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v512 = *(a3 + 3);
        if (v512 && v511)
        {
          (*(*v512 + 16))(v512, v18);
        }

        v174 = 0;
        v600[0] = 0;
        LOBYTE(v601) = 0;
LABEL_614:
        if (v648[40])
        {
          v401 = *v648;
          *v648 = 0;
          if (v401)
          {
            if (atomic_fetch_add_explicit(v401, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v401, v18);
            }
          }
        }

        if (v174)
        {
          WebKit::NetworkProcessProxy::reportConsoleMessage(this, *v600, &v600[8], &v600[48], v5, v8, &v600[88], v9);
          if ((v601 & 1) == 0)
          {
            goto LABEL_1098;
          }

          v402 = *&v600[88];
          *&v600[88] = 0;
          if (v402 && atomic_fetch_add_explicit(v402, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v402, v18);
          }

          if (!v600[72])
          {
            v403 = *&v600[56];
            *&v600[56] = 0;
            if (v403 && atomic_fetch_add_explicit(v403, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v403, v18);
            }

            v404 = *&v600[48];
            *&v600[48] = 0;
            if (v404 && atomic_fetch_add_explicit(v404, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v404, v18);
            }
          }

          v600[72] = -1;
LABEL_957:
          v341 = *&v600[8];
          *&v600[8] = 0;
          if (!v341)
          {
            goto LABEL_1098;
          }

          goto LABEL_958;
        }

        goto LABEL_1097;
      }

      v172 = IPC::Decoder::decode<JSC::MessageSource>(a3);
      LOBYTE(v5) = v172;
      if ((v172 & 0x100) == 0 || (v173 = IPC::Decoder::decode<JSC::MessageLevel>(a3), (v173 & 0x100) == 0))
      {
        v174 = 0;
        v600[0] = 0;
        LOBYTE(v601) = 0;
        goto LABEL_607;
      }

      LOBYTE(v8) = v173;
      v17 = IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, v637);
      if ((v637[1] & 1) == 0)
      {
        v18 = *a3;
        v545 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v546 = *(a3 + 3);
        if (!v546 || !v545 || (v17 = (*(*v546 + 16))(v546, v18), (v637[1] & 1) == 0))
        {
          v174 = 0;
          v600[0] = 0;
          LOBYTE(v601) = 0;
LABEL_607:
          if (!v671[24])
          {
            v399 = *&v671[8];
            if (*&v671[8] && atomic_fetch_add_explicit(*&v671[8], 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v399, v18);
            }

            v400 = *v671;
            if (*v671 && atomic_fetch_add_explicit(*v671, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v400, v18);
            }
          }

          goto LABEL_614;
        }
      }

      v393 = *(a3 + 1);
      v394 = ((*(a3 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
      v18 = *a3;
      v395 = v394 - *a3;
      v190 = v393 >= v395;
      v396 = v393 - v395;
      if (v190 && v396 > 7)
      {
        *(a3 + 2) = v394 + 1;
        if (v394)
        {
          if ((v648[40] & 1) == 0)
          {
            goto LABEL_1032;
          }

          v9 = *v394;
          v397 = *v648;
          *v648 = 0;
          *v600 = v171;
          *&v600[8] = v397;
          *&v600[16] = *&v648[8];
          *&v600[32] = *&v648[24];
          *&v648[8] &= ~1u;
          v600[48] = 0;
          v600[72] = -1;
          if (v671[24])
          {
            if (v671[24] == 255)
            {
              goto LABEL_606;
            }

            *&v600[48] = *v671;
          }

          else
          {
            v398 = *v671;
            *&v671[8] = 0;
            *v671 = 0;
            *&v600[48] = v398;
            *&v600[64] = *&v671[16];
          }

          v600[72] = v671[24];
LABEL_606:
          v600[80] = v5;
          v600[81] = v8;
          *&v600[88] = v637[0];
          *&v600[96] = v9;
          v174 = 1;
          LOBYTE(v601) = 1;
          goto LABEL_607;
        }

LABEL_980:
        *a3 = 0;
        *(a3 + 1) = 0;
        v566 = *(a3 + 3);
        if (v566 && v393)
        {
          (*(*v566 + 16))(v566);
        }

        v600[0] = 0;
        LOBYTE(v601) = 0;
        if (v637[1])
        {
          v567 = v637[0];
          v637[0] = 0;
          if (v567)
          {
            if (atomic_fetch_add_explicit(v567, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v567, v18);
            }
          }
        }

        v174 = 0;
        goto LABEL_607;
      }

      *a3 = 0;
      *(a3 + 1) = 0;
      v565 = *(a3 + 3);
      if (v565)
      {
        if (v393)
        {
          (*(*v565 + 16))(v565);
          v18 = *a3;
          v393 = *(a3 + 1);
          goto LABEL_980;
        }
      }

      else
      {
        v393 = 0;
      }

      v18 = 0;
      goto LABEL_980;
    case 0x229:
      IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::URL>>(v600, a3);
      if (v600[48] == 1)
      {
        WebKit::NetworkProcessProxy::reportNetworkIssue(this, *v600, &v600[8]);
LABEL_273:
        if (v600[48])
        {
          goto LABEL_957;
        }
      }

      goto LABEL_1098;
    case 0x22A:
      v90 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v91 & 1) == 0)
      {
        goto LABEL_1097;
      }

      v92 = v90;
      IPC::ArgumentCoder<WebCore::ClientOrigin,void>::decode(a3, v648);
      if ((BYTE8(v650) & 1) == 0)
      {
        v432 = *a3;
        v433 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v434 = *(a3 + 3);
        if (!v434)
        {
          goto LABEL_1097;
        }

        if (!v433)
        {
          goto LABEL_1097;
        }

        (*(*v434 + 16))(v434, v432);
        if ((BYTE8(v650) & 1) == 0)
        {
          goto LABEL_1097;
        }
      }

      *v600 = v92;
      v600[8] = 0;
      v600[32] = -1;
      if (v648[24])
      {
        if (v648[24] == 255)
        {
LABEL_72:
          v600[40] = 0;
          v600[64] = -1;
          v95 = v650;
          if (v650)
          {
            if (v650 != 255)
            {
              *&v600[40] = *&v648[32];
              v600[64] = v650;
            }

            v600[72] = 1;
          }

          else
          {
            *&v600[40] = *&v648[32];
            *&v600[56] = v649;
            v600[64] = 0;
            v600[72] = 1;
            *&v648[32] = 0;
            *&v648[40] = 0;
          }

          LOBYTE(v650) = -1;
          if (!v648[24])
          {
            v96 = *&v648[8];
            *&v648[8] = 0;
            if (v96 && atomic_fetch_add_explicit(v96, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v96, v93);
            }

            v97 = *v648;
            *v648 = 0;
            if (v97 && atomic_fetch_add_explicit(v97, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v97, v93);
            }
          }

          v98 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
          if (v18)
          {
            v99 = v98;
            while (1)
            {
              v100 = *v5;
              if ((*v5 & 1) == 0)
              {
                break;
              }

              v101 = *v5;
              atomic_compare_exchange_strong_explicit(v5, &v101, v100 + 2, memory_order_relaxed, memory_order_relaxed);
              if (v101 == v100)
              {
                goto LABEL_438;
              }
            }

            WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v5);
LABEL_438:
            v346 = WTF::fastMalloc(0x18);
            *v346 = &unk_1F10F0FE8;
            v346[1] = v99;
            v346[2] = v5;
            *v648 = v346;
            WebKit::NetworkProcessProxy::requestBackgroundFetchPermission(this, v92, &v600[8], v648);
            v347 = *v648;
            *v648 = 0;
            if (v347)
            {
              (*(*v347 + 8))(v347);
            }

            if ((v600[72] & 1) == 0)
            {
              goto LABEL_1098;
            }

            v95 = v600[64];
          }

          if (!v95)
          {
LABEL_947:
            v556 = *&v600[48];
            *&v600[48] = 0;
            if (v556 && atomic_fetch_add_explicit(v556, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v556, v18);
            }

            v557 = *&v600[40];
            *&v600[40] = 0;
            if (v557 && atomic_fetch_add_explicit(v557, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v557, v18);
            }
          }

LABEL_953:
          v600[64] = -1;
          if (v600[32])
          {
            goto LABEL_1098;
          }

          goto LABEL_954;
        }

        *&v600[8] = *v648;
      }

      else
      {
        v94 = *v648;
        *&v648[8] = 0;
        *v648 = 0;
        *&v600[8] = v94;
        *&v600[24] = *&v648[16];
      }

      v600[32] = v648[24];
      goto LABEL_72;
    case 0x22B:
      v67 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v68 & 1) == 0 || (v69 = v67, v70 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3), (v71 & 1) == 0))
      {
        v600[0] = 0;
        v600[72] = 0;
        goto LABEL_730;
      }

      v72 = v70;
      IPC::ArgumentCoder<WebCore::RegistrableDomain,void>::decode(a3, v637);
      if (v637[1])
      {
        IPC::ArgumentCoder<WebCore::RegistrableDomain,void>::decode(a3, v671);
        if ((v671[8] & 1) == 0)
        {
          v449 = *a3;
          v450 = *(a3 + 1);
          *a3 = 0;
          *(a3 + 1) = 0;
          v451 = *(a3 + 3);
          if (v451 && v450)
          {
            (*(*v451 + 16))(v451, v449);
          }

          v600[0] = 0;
          v600[72] = 0;
          goto LABEL_1013;
        }

        v73 = *(a3 + 1);
        v74 = *(a3 + 2);
        v75 = *a3;
        if (v73 <= &v74[-*a3])
        {
          *a3 = 0;
          *(a3 + 1) = 0;
          v571 = *(a3 + 3);
          if (v571)
          {
            if (v73)
            {
              (*(*v571 + 16))(v571);
              v73 = *(a3 + 1);
            }
          }

          else
          {
            v73 = 0;
          }
        }

        else
        {
          *(a3 + 2) = v74 + 1;
          if (v74)
          {
            v76 = *v74;
            if (v76 < 2)
            {
              if (!v76)
              {
                v600[0] = 0;
                v600[32] = 0;
                std::__optional_move_base<WebCore::OrganizationStorageAccessPromptQuirk,false>::__optional_move_base[abi:sn200100](v648, v600);
                v648[40] = 1;
                if (v600[32] != 1)
                {
                  goto LABEL_1005;
                }

                goto LABEL_563;
              }

              IPC::Decoder::decode<WebCore::OrganizationStorageAccessPromptQuirk>(a3, v600);
              if (v600[32] == 1)
              {
                std::__optional_destruct_base<WebCore::OrganizationStorageAccessPromptQuirk,false>::__optional_destruct_base[abi:sn200100]<WebCore::OrganizationStorageAccessPromptQuirk>(v648, v600);
                v648[40] = 1;
                if ((v600[32] & 1) == 0)
                {
                  goto LABEL_1005;
                }

LABEL_563:
                WTF::Vector<WTF::URL,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v600[16], v77);
                if (*&v600[8])
                {
                  WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(*&v600[8], v382);
                }

                v383 = *v600;
                *v600 = 0;
                if (v383 && atomic_fetch_add_explicit(v383, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v383, v382);
                }

LABEL_1005:
                if (v648[40] & 1) != 0 || (v449 = *a3, v583 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v584 = *(a3 + 3)) != 0) && v583 && ((*(*v584 + 16))(v584, v449), (v648[40]))
                {
                  *v600 = v69;
                  *&v600[8] = v72;
                  v574 = v637[0];
                  v637[0] = 0;
                  *&v600[16] = v574;
                  *&v600[24] = *v671;
                  std::__optional_move_base<WebCore::OrganizationStorageAccessPromptQuirk,false>::__optional_move_base[abi:sn200100](&v600[32], v648);
                  v600[72] = 1;
                  if ((v648[40] & 1) == 0 || v648[32] != 1)
                  {
                    goto LABEL_1013;
                  }

                  WTF::Vector<WTF::URL,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v648[16], v449);
                  if (*&v648[8])
                  {
                    WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(*&v648[8], v449);
                  }

                  v575 = *v648;
                  *v648 = 0;
                  if (!v575)
                  {
                    goto LABEL_1013;
                  }
                }

                else
                {
                  v600[0] = 0;
                  v600[72] = 0;
                  v575 = *v671;
                  if (!*v671)
                  {
LABEL_1013:
                    v576 = v637[0];
                    if (v637[0] && atomic_fetch_add_explicit(v637[0], 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v576, v449);
                    }

                    goto LABEL_1016;
                  }
                }

                if (atomic_fetch_add_explicit(v575, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v575, v449);
                }

                goto LABEL_1013;
              }

LABEL_1004:
              v648[0] = 0;
              v648[40] = 0;
              goto LABEL_1005;
            }

            goto LABEL_1003;
          }
        }

        *a3 = 0;
        *(a3 + 1) = 0;
        v572 = *(a3 + 3);
        if (v572)
        {
          if (v73)
          {
            (*(*v572 + 16))(v572);
            v75 = *a3;
            v73 = *(a3 + 1);
            goto LABEL_1003;
          }
        }

        else
        {
          v73 = 0;
        }

        v75 = 0;
LABEL_1003:
        *a3 = 0;
        *(a3 + 1) = 0;
        v573 = *(a3 + 3);
        if (v573 && v73)
        {
          (*(*v573 + 16))(v573, v75);
        }

        goto LABEL_1004;
      }

      v446 = *a3;
      v447 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v448 = *(a3 + 3);
      if (v448 && v447)
      {
        (*(*v448 + 16))(v448, v446);
      }

      v600[0] = 0;
      v600[72] = 0;
LABEL_1016:
      if (v600[72])
      {
        goto LABEL_1017;
      }

LABEL_730:
      v18 = *a3;
      v441 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v442 = *(a3 + 3);
      if (!v442)
      {
        goto LABEL_1026;
      }

      if (!v441)
      {
        goto LABEL_1026;
      }

      (*(*v442 + 16))(v442, v18);
      if ((v600[72] & 1) == 0)
      {
        goto LABEL_1026;
      }

LABEL_1017:
      v577 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v18 & 1) == 0)
      {
        goto LABEL_1026;
      }

      v578 = v577;
      while (1)
      {
        v579 = *v5;
        if ((*v5 & 1) == 0)
        {
          break;
        }

        v580 = *v5;
        atomic_compare_exchange_strong_explicit(v5, &v580, v579 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v580 == v579)
        {
          goto LABEL_1023;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v5);
LABEL_1023:
      v17 = WTF::fastMalloc(0x18);
      *v17 = &unk_1F10F0F70;
      *(v17 + 8) = v578;
      *(v17 + 16) = v5;
      *v648 = v17;
      if ((v600[72] & 1) == 0)
      {
        goto LABEL_1032;
      }

      WebKit::NetworkProcessProxy::requestStorageAccessConfirm(this, *v600, *&v600[8], &v600[16], &v600[24], &v600[32], v648);
      v581 = *v648;
      *v648 = 0;
      if (v581)
      {
        (*(*v581 + 8))(v581);
      }

LABEL_1026:
      if (v600[72] != 1)
      {
        goto LABEL_1098;
      }

      if (v600[64] == 1)
      {
        WTF::Vector<WTF::URL,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v600[48], v18);
        v17 = *&v600[40];
        if (*&v600[40])
        {
LABEL_1033:
          WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(v17, v18);
        }

        v582 = *&v600[32];
        *&v600[32] = 0;
        if (v582 && atomic_fetch_add_explicit(v582, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v582, v18);
        }
      }

LABEL_1079:
      v595 = *&v600[24];
      *&v600[24] = 0;
      if (v595 && atomic_fetch_add_explicit(v595, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v595, v18);
      }

LABEL_1082:
      v341 = *&v600[16];
      *&v600[16] = 0;
      if (!v341)
      {
        goto LABEL_1098;
      }

      goto LABEL_958;
    case 0x22C:
      v23 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if (v24)
      {
        v25 = v23;
        IPC::Decoder::decode<WebKit::ResourceLoadInfo>(a3, v671);
        if (v678 == 1)
        {
          IPC::ArgumentCoder<WebCore::ResourceResponse,void>::decode(a3, v648);
          if (v668 & 1) != 0 || (v18 = *a3, v498 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v499 = *(a3 + 3)) != 0) && v498 && ((*(*v499 + 16))(v499, v18), (v668))
          {
            IPC::Decoder::decode<WebCore::ResourceError>(a3, v637);
            if (BYTE8(v642) == 1)
            {
              if ((v678 & 1) == 0 || (v668 & 1) == 0)
              {
                goto LABEL_1032;
              }

              *v600 = v25;
              v26 = v675;
              *&v600[80] = *v673;
              *&v600[16] = *v671;
              *&v600[32] = *&v671[16];
              *&v600[48] = *&v671[32];
              *&v600[64] = v672;
              *v673 = 0;
              *&v600[88] = *&v673[8];
              v601 = v674;
              *&v673[8] &= ~1u;
              v675 = 0;
              v604 = v677;
              v602 = v26;
              v603 = v676;
              *v606 = *&v648[8];
              *&v648[8] &= ~1u;
              v27 = *v648;
              v28 = *&v648[40];
              *v648 = 0;
              *&v606[16] = *&v648[24];
              *&v648[40] = 0;
              v605 = v27;
              *&v606[32] = v28;
              *v607 = v649;
              v29 = v650;
              v650 = 0u;
              *&v607[8] = v29;
              v30 = v651;
              v651 = 0u;
              *&v607[24] = v30;
              *&v30 = v652;
              v652 = 0;
              *&v607[40] = v30;
              v31 = v653;
              v653 = 0;
              *&v607[48] = v31;
              *&v30 = v654;
              v654 = 0;
              *&v607[56] = v30;
              v32 = v655;
              v655 = 0;
              v608 = v32;
              LOBYTE(v609) = 0;
              v610[0] = 0;
              if (v657 == 1)
              {
                v427 = v656;
                v656 = 0;
                v609 = v427;
                v610[0] = 1;
              }

              v611 = v658;
              v612 = v659;
              v616 = v663;
              v617 = v664;
              *v618 = v665[0];
              *&v618[11] = *(v665 + 11);
              v614 = v661;
              v615 = v662;
              v33 = v660;
              v34 = v666;
              v660 = 0;
              v666 = 0;
              v613 = v33;
              v619 = v34;
              v620 = v667;
              v35 = *v637;
              v637[0] = 0;
              v637[1] = 0;
              *v621 = v35;
              *&v621[16] = v638;
              *&v621[32] = v639;
              LODWORD(v638) = v638 & 0xFFFFFFFE;
              *&v622 = v640;
              WORD6(v622) = WORD6(v640);
              DWORD2(v622) = DWORD2(v640);
              *v623 = v641;
              v36 = 1;
              v623[8] = v642;
            }

            else
            {
              v36 = 0;
              v600[0] = 0;
            }

            LOBYTE(v624) = v36;
            if (v668)
            {
              v405 = v666;
              v666 = 0;
              if (v405)
              {
                CFRelease(v405);
              }

              WebCore::ResourceResponseBase::~ResourceResponseBase(v648, v18);
            }
          }

          else
          {
            v600[0] = 0;
            LOBYTE(v624) = 0;
          }

          if (v678)
          {
            v406 = v675;
            v675 = 0;
            if (v406 && atomic_fetch_add_explicit(v406, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v406, v18);
            }

            v407 = *v673;
            *v673 = 0;
            if (v407 && atomic_fetch_add_explicit(v407, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v407, v18);
            }
          }
        }

        else
        {
          v600[0] = 0;
          LOBYTE(v624) = 0;
        }

        if (v624)
        {
LABEL_644:
          WebKit::NetworkProcessProxy::resourceLoadDidCompleteWithError(this, *v600, &v600[16], &v605, v621);
          if ((v624 & 1) == 0)
          {
            goto LABEL_1098;
          }

          v408 = *v623;
          *v623 = 0;
          if (v408)
          {
            CFRelease(v408);
          }

          v409 = v622;
          *&v622 = 0;
          if (v409 && atomic_fetch_add_explicit(v409, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v409, v360);
          }

          v410 = *&v621[8];
          *&v621[8] = 0;
          if (v410 && atomic_fetch_add_explicit(v410, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v410, v360);
          }

          v411 = *v621;
          *v621 = 0;
          if (v411 && atomic_fetch_add_explicit(v411, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v411, v360);
          }

LABEL_656:
          v412 = v619;
          v619 = 0;
          if (v412)
          {
            CFRelease(v412);
          }

          WebCore::ResourceResponseBase::~ResourceResponseBase(&v605, v360);
          goto LABEL_659;
        }
      }

      else
      {
        v600[0] = 0;
        LOBYTE(v624) = 0;
      }

      v457 = *a3;
      v458 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v459 = *(a3 + 3);
      if (!v459)
      {
        goto LABEL_1098;
      }

      if (!v458)
      {
        goto LABEL_1098;
      }

      (*(*v459 + 16))(v459, v457);
      if ((v624 & 1) == 0)
      {
        goto LABEL_1098;
      }

      goto LABEL_644;
    case 0x22D:
      v37 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if (v38)
      {
        v39 = v37;
        IPC::Decoder::decode<WebKit::ResourceLoadInfo>(a3, v637);
        if (v647 == 1)
        {
          IPC::ArgumentCoder<WebCore::ResourceResponse,void>::decode(a3, v648);
          if (v668 & 1) != 0 || (v18 = *a3, v500 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v501 = *(a3 + 3)) != 0) && v500 && ((*(*v501 + 16))(v501, v18), (v668))
          {
            IPC::ArgumentCoder<WebCore::ResourceRequest,void>::decode(a3, v671);
            if (v687 & 1) != 0 || (v18 = *a3, v506 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v507 = *(a3 + 3)) != 0) && v506 && (v17 = (*(*v507 + 16))(v507, v18), (v687))
            {
              if ((v647 & 1) == 0 || (v668 & 1) == 0)
              {
                goto LABEL_1032;
              }

              *v600 = v39;
              *&v600[16] = *v637;
              *&v600[32] = v638;
              *&v600[48] = v639;
              *&v600[64] = v640;
              v40 = v641;
              v41 = v644;
              v641 = 0;
              *&v600[80] = v40;
              *&v600[88] = v642;
              v601 = v643;
              LODWORD(v642) = v642 & 0xFFFFFFFE;
              v644 = 0;
              v604 = v646;
              v602 = v41;
              v603 = v645;
              *v606 = *&v648[8];
              *&v648[8] &= ~1u;
              v42 = *v648;
              v43 = *&v648[40];
              *v648 = 0;
              *&v606[16] = *&v648[24];
              *&v648[40] = 0;
              v605 = v42;
              *&v606[32] = v43;
              *v607 = v649;
              v44 = v650;
              v650 = 0u;
              *&v607[8] = v44;
              v45 = v651;
              v651 = 0u;
              *&v607[24] = v45;
              v46 = v652;
              v652 = 0;
              *&v607[40] = v46;
              v47 = v653;
              v653 = 0;
              *&v607[48] = v47;
              v48 = v654;
              v654 = 0;
              *&v607[56] = v48;
              v49 = v655;
              v655 = 0;
              v608 = v49;
              LOBYTE(v609) = 0;
              v610[0] = 0;
              if (v657 == 1)
              {
                v426 = v656;
                v656 = 0;
                v609 = v426;
                v610[0] = 1;
              }

              v611 = v658;
              v612 = v659;
              v616 = v663;
              v617 = v664;
              *v618 = v665[0];
              *&v618[11] = *(v665 + 11);
              v614 = v661;
              v615 = v662;
              v50 = v660;
              v51 = v666;
              v660 = 0;
              v666 = 0;
              v613 = v50;
              v619 = v51;
              v620 = v667;
              v52 = *v671;
              v53 = *&v671[40];
              *v671 = 0;
              *v621 = v52;
              *&v621[8] = *&v671[8];
              *&v621[24] = *&v671[24];
              *&v671[8] &= ~1u;
              *&v671[40] = 0;
              *&v621[40] = v53;
              v622 = v672;
              *v623 = *v673;
              LODWORD(v672) = v672 & 0xFFFFFFFE;
              v54 = v675;
              *&v623[16] = *&v673[16];
              v55 = v674;
              v674 = 0uLL;
              v624 = v55;
              v675 = 0;
              v625 = v54;
              v56 = v676;
              v676 = 0;
              v626 = v56;
              v57 = v677;
              v677 = 0;
              v627 = v57;
              v58 = v678;
              v678 = 0;
              v628 = v58;
              v59 = v679;
              v679 = 0;
              v629 = v59;
              v631 = v681;
              v630 = v680;
              v60 = v682;
              v682 = 0uLL;
              *v632 = v60;
              *&v632[16] = v683;
              v634 = v685;
              v633 = v684;
              v61 = v686;
              v683 = 0;
              v686 = 0;
              v635 = v61;
              v636 = 1;
              if (v687)
              {
                WebCore::ResourceRequest::~ResourceRequest(v671);
              }
            }

            else
            {
              v600[0] = 0;
              v636 = 0;
            }

            if (v668)
            {
              v62 = v666;
              v666 = 0;
              if (v62)
              {
                CFRelease(v62);
              }

              WebCore::ResourceResponseBase::~ResourceResponseBase(v648, v18);
            }
          }

          else
          {
            v600[0] = 0;
            v636 = 0;
          }

          if (v647)
          {
            v63 = v644;
            v644 = 0;
            if (v63 && atomic_fetch_add_explicit(v63, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v63, v18);
            }

            v64 = v641;
            v641 = 0;
            if (v64 && atomic_fetch_add_explicit(v64, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v64, v18);
            }
          }
        }

        else
        {
          v600[0] = 0;
          v636 = 0;
        }

        if (v636)
        {
LABEL_479:
          WebKit::NetworkProcessProxy::resourceLoadDidPerformHTTPRedirection(this, *v600, &v600[16], &v605, v621);
          if ((v636 & 1) == 0)
          {
            goto LABEL_1098;
          }

          WebCore::ResourceRequest::~ResourceRequest(v621);
          goto LABEL_656;
        }
      }

      else
      {
        v600[0] = 0;
        v636 = 0;
      }

      v460 = *a3;
      v461 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v462 = *(a3 + 3);
      if (!v462)
      {
        goto LABEL_1098;
      }

      if (!v461)
      {
        goto LABEL_1098;
      }

      (*(*v462 + 16))(v462, v460);
      if ((v636 & 1) == 0)
      {
        goto LABEL_1098;
      }

      goto LABEL_479;
    case 0x22E:
      v14 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if (v15)
      {
        v16 = v14;
        IPC::Decoder::decode<WebKit::ResourceLoadInfo>(a3, v671);
        if (v678 == 1)
        {
          IPC::Decoder::decode<WebCore::AuthenticationChallenge>(v648, a3);
          if (v670 == 1)
          {
            if ((v678 & 1) == 0)
            {
              goto LABEL_1032;
            }

            *v600 = v16;
            *&v600[16] = *v671;
            *&v600[32] = *&v671[16];
            *&v600[48] = *&v671[32];
            *&v600[64] = v672;
            v19 = *v673;
            v20 = v675;
            *v673 = 0;
            *&v600[80] = v19;
            *&v600[88] = *&v673[8];
            v601 = v674;
            *&v673[8] &= ~1u;
            v675 = 0;
            v604 = v677;
            v602 = v20;
            v603 = v676;
            WebCore::AuthenticationChallengeBase::AuthenticationChallengeBase(&v605, v648);
            *&v632[8] = v669;
            v634 = 1;
            if (v670)
            {
              v669 = 0uLL;
              WebCore::AuthenticationChallengeBase::~AuthenticationChallengeBase(v648, v18);
            }
          }

          else
          {
            v600[0] = 0;
            v634 = 0;
          }

          if (v678)
          {
            v384 = v675;
            v675 = 0;
            if (v384 && atomic_fetch_add_explicit(v384, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v384, v18);
            }

            v385 = *v673;
            *v673 = 0;
            if (v385 && atomic_fetch_add_explicit(v385, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v385, v18);
            }
          }
        }

        else
        {
          v600[0] = 0;
          v634 = 0;
        }

        if (v634)
        {
          goto LABEL_577;
        }
      }

      else
      {
        v600[0] = 0;
        v634 = 0;
      }

      v454 = *a3;
      v455 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v456 = *(a3 + 3);
      if (!v456)
      {
        goto LABEL_1098;
      }

      if (!v455)
      {
        goto LABEL_1098;
      }

      (*(*v456 + 16))(v456, v454);
      if ((v634 & 1) == 0)
      {
        goto LABEL_1098;
      }

LABEL_577:
      WebKit::NetworkProcessProxy::resourceLoadDidReceiveChallenge(this, *v600, &v600[16], &v605);
      if ((v634 & 1) == 0)
      {
        goto LABEL_1098;
      }

      v387 = *&v632[16];
      *&v632[16] = 0;
      if (v387)
      {
        CFRelease(v387);
      }

      v388 = *&v632[8];
      *&v632[8] = 0;
      if (v388)
      {
        CFRelease(v388);
      }

      WebCore::AuthenticationChallengeBase::~AuthenticationChallengeBase(&v605, v386);
      goto LABEL_659;
    case 0x22F:
      v303 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if (v304)
      {
        v305 = v303;
        IPC::Decoder::decode<WebKit::ResourceLoadInfo>(a3, v671);
        if (v678 == 1)
        {
          IPC::ArgumentCoder<WebCore::ResourceResponse,void>::decode(a3, v648);
          if (v668 & 1) != 0 || (v18 = *a3, v502 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v503 = *(a3 + 3)) != 0) && v502 && (v17 = (*(*v503 + 16))(v503, v18), (v668))
          {
            if ((v678 & 1) == 0)
            {
              goto LABEL_1032;
            }

            *v600 = v305;
            v306 = v675;
            *&v600[80] = *v673;
            *&v600[16] = *v671;
            *&v600[32] = *&v671[16];
            *&v600[48] = *&v671[32];
            *&v600[64] = v672;
            *v673 = 0;
            *&v600[88] = *&v673[8];
            v601 = v674;
            *&v673[8] &= ~1u;
            v675 = 0;
            v604 = v677;
            v602 = v306;
            v603 = v676;
            *v606 = *&v648[8];
            *&v648[8] &= ~1u;
            v307 = *v648;
            v308 = *&v648[40];
            *v648 = 0;
            *&v606[16] = *&v648[24];
            *&v648[40] = 0;
            v605 = v307;
            *&v606[32] = v308;
            *v607 = v649;
            v309 = v650;
            v650 = 0u;
            *&v607[8] = v309;
            v310 = v651;
            v651 = 0u;
            *&v607[24] = v310;
            *&v310 = v652;
            v652 = 0;
            *&v607[40] = v310;
            v311 = v653;
            v653 = 0;
            *&v607[48] = v311;
            *&v310 = v654;
            v654 = 0;
            *&v607[56] = v310;
            v312 = v655;
            v655 = 0;
            v608 = v312;
            LOBYTE(v609) = 0;
            v610[0] = 0;
            if (v657 == 1)
            {
              v425 = v656;
              v656 = 0;
              v609 = v425;
              v610[0] = 1;
            }

            v611 = v658;
            v612 = v659;
            v616 = v663;
            v617 = v664;
            *v618 = v665[0];
            *&v618[11] = *(v665 + 11);
            v614 = v661;
            v615 = v662;
            v313 = v660;
            v660 = 0;
            v613 = v313;
            v619 = v666;
            v620 = v667;
            v621[8] = 1;
            if (v668)
            {
              v666 = 0;
              WebCore::ResourceResponseBase::~ResourceResponseBase(v648, v18);
            }
          }

          else
          {
            v600[0] = 0;
            v621[8] = 0;
          }

          if (v678)
          {
            v314 = v675;
            v675 = 0;
            if (v314 && atomic_fetch_add_explicit(v314, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v314, v18);
            }

            v315 = *v673;
            *v673 = 0;
            if (v315 && atomic_fetch_add_explicit(v315, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v315, v18);
            }
          }
        }

        else
        {
          v600[0] = 0;
          v621[8] = 0;
        }

        if (v621[8])
        {
          goto LABEL_490;
        }
      }

      else
      {
        v600[0] = 0;
        v621[8] = 0;
      }

      v471 = *a3;
      v472 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v473 = *(a3 + 3);
      if (!v473)
      {
        goto LABEL_1098;
      }

      if (!v472)
      {
        goto LABEL_1098;
      }

      (*(*v473 + 16))(v473, v471);
      if ((v621[8] & 1) == 0)
      {
        goto LABEL_1098;
      }

LABEL_490:
      WebKit::NetworkProcessProxy::resourceLoadDidReceiveResponse(this, *v600, &v600[16], &v605);
      if ((v621[8] & 1) == 0)
      {
        goto LABEL_1098;
      }

      goto LABEL_656;
    case 0x230:
      v274 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if (v275)
      {
        v276 = v274;
        IPC::Decoder::decode<WebKit::ResourceLoadInfo>(a3, v671);
        if (v678 == 1)
        {
          IPC::ArgumentCoder<WebCore::ResourceRequest,void>::decode(a3, v648);
          if (v664 & 1) != 0 || (v18 = *a3, v504 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v505 = *(a3 + 3)) != 0) && v504 && ((*(*v505 + 16))(v505, v18), (v664))
          {
            v17 = IPC::ArgumentCoder<std::optional<IPC::FormDataReference>,void>::decode<IPC::Decoder>(a3, v637);
            if (v638 & 1) != 0 || (v18 = *a3, v496 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v497 = *(a3 + 3)) != 0) && v496 && (v17 = (*(*v497 + 16))(v497, v18), (v638))
            {
              if ((v678 & 1) == 0 || (v664 & 1) == 0)
              {
                goto LABEL_1032;
              }

              *v600 = v276;
              *&v600[16] = *v671;
              *&v600[32] = *&v671[16];
              *&v600[48] = *&v671[32];
              *&v600[64] = v672;
              v277 = *v673;
              v278 = v675;
              *v673 = 0;
              *&v600[80] = v277;
              *&v600[88] = *&v673[8];
              v601 = v674;
              *&v673[8] &= ~1u;
              v675 = 0;
              v604 = v677;
              v602 = v278;
              v603 = v676;
              std::__tuple_leaf<0ul,WebCore::ResourceRequest,false>::__tuple_leaf[abi:sn200100]<WebCore::ResourceRequest,0>(&v605, v648);
              LOBYTE(v617) = 0;
              BYTE8(v617) = 0;
              v279 = 1;
              if (LOBYTE(v637[1]) == 1)
              {
                *&v617 = v637[0];
                BYTE8(v617) = 1;
              }
            }

            else
            {
              v279 = 0;
              v600[0] = 0;
            }

            v618[8] = v279;
            if (v664)
            {
              WebCore::ResourceRequest::~ResourceRequest(v648);
            }
          }

          else
          {
            v600[0] = 0;
            v618[8] = 0;
          }

          if (v678)
          {
            v280 = v675;
            v675 = 0;
            if (v280 && atomic_fetch_add_explicit(v280, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v280, v18);
            }

            v281 = *v673;
            *v673 = 0;
            if (v281 && atomic_fetch_add_explicit(v281, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v281, v18);
            }
          }
        }

        else
        {
          v600[0] = 0;
          v618[8] = 0;
        }

        if (v618[8])
        {
LABEL_483:
          WebKit::NetworkProcessProxy::resourceLoadDidSendRequest(this, *v600, &v600[16], &v605, &v617);
          if ((v618[8] & 1) == 0)
          {
            goto LABEL_1098;
          }

          if (BYTE8(v617) == 1)
          {
            v361 = v617;
            *&v617 = 0;
            if (v361)
            {
              WTF::RefCounted<WebCore::FormData>::deref(v361);
            }
          }

          WebCore::ResourceRequest::~ResourceRequest(&v605);
LABEL_659:
          v413 = v602;
          v602 = 0;
          if (v413 && atomic_fetch_add_explicit(v413, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v413, v18);
          }

          v341 = *&v600[80];
          *&v600[80] = 0;
          if (!v341)
          {
            goto LABEL_1098;
          }

          goto LABEL_958;
        }
      }

      else
      {
        v600[0] = 0;
        v618[8] = 0;
      }

      v468 = *a3;
      v469 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v470 = *(a3 + 3);
      if (!v470)
      {
        goto LABEL_1098;
      }

      if (!v469)
      {
        goto LABEL_1098;
      }

      (*(*v470 + 16))(v470, v468);
      if ((v618[8] & 1) == 0)
      {
        goto LABEL_1098;
      }

      goto LABEL_483;
    case 0x231:
      IPC::ArgumentCoder<std::tuple<WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,void>::decode<IPC::Decoder>(a3, v600);
      if ((v600[8] & 1) == 0)
      {
        v119 = *a3;
        v463 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v464 = *(a3 + 3);
        if (!v464)
        {
          goto LABEL_381;
        }

        if (!v463)
        {
          goto LABEL_381;
        }

        (*(*v464 + 16))(v464, v119);
        if ((v600[8] & 1) == 0)
        {
          goto LABEL_381;
        }
      }

      v118 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v119 & 1) == 0)
      {
        goto LABEL_381;
      }

      v120 = v118;
      while (1)
      {
        v121 = *v5;
        if ((*v5 & 1) == 0)
        {
          break;
        }

        v122 = *v5;
        atomic_compare_exchange_strong_explicit(v5, &v122, v121 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v122 == v121)
        {
          goto LABEL_378;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v5);
LABEL_378:
      v17 = WTF::fastMalloc(0x18);
      *v17 = &unk_1F10F0FC0;
      *(v17 + 8) = v120;
      *(v17 + 16) = v5;
      *v648 = v17;
      if ((v600[8] & 1) == 0)
      {
LABEL_1032:
        __break(1u);
        goto LABEL_1033;
      }

      WebKit::NetworkProcessProxy::setDomainsWithCrossPageStorageAccess(this, v600, v648);
      v328 = *v648;
      *v648 = 0;
      if (v328)
      {
        (*(*v328 + 8))(v328);
      }

LABEL_381:
      if (v600[8] == 1 && *v600)
      {
        WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(*v600, v119);
      }

      goto LABEL_1098;
    case 0x232:
      IPC::Decoder::decode<std::tuple<WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>(a3, v600);
      if (v600[8] == 1)
      {
        WebKit::NetworkProcessProxy::setDomainsWithUserInteraction(this, v600);
        if (v600[8])
        {
          if (*v600)
          {
            WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(*v600, v183);
          }
        }
      }

      goto LABEL_1098;
    case 0x233:
      v287 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v288 & 1) == 0)
      {
        goto LABEL_1097;
      }

      v125 = *(a3 + 1);
      v289 = *(a3 + 2);
      v127 = *a3;
      if (v125 <= &v289[-*a3])
      {
        goto LABEL_966;
      }

      *(a3 + 2) = v289 + 1;
      if (!v289)
      {
        goto LABEL_968;
      }

      v290 = *v289;
      if (v290 >= 2)
      {
        goto LABEL_1096;
      }

      WebKit::NetworkProcessProxy::setWebProcessHasUploads(this, v287, v290 & 1);
      goto LABEL_1098;
    case 0x234:
      v12 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
      if (v13)
      {
        WebKit::NetworkProcessProxy::startServiceWorkerBackgroundProcessing(this, v12);
      }

      goto LABEL_1098;
    case 0x235:
      v86 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
      if (v87)
      {
        WebKit::NetworkProcessProxy::terminateWebProcess(this, v86);
      }

      goto LABEL_1098;
    case 0x236:
      v262 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v263 & 1) == 0)
      {
        goto LABEL_1097;
      }

      v264 = v262;
      v265 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v266 & 1) == 0)
      {
        goto LABEL_1097;
      }

      v125 = *(a3 + 1);
      v267 = *(a3 + 2);
      v127 = *a3;
      if (v125 <= &v267[-*a3])
      {
LABEL_966:
        *a3 = 0;
        *(a3 + 1) = 0;
        v561 = *(a3 + 3);
        if (v561)
        {
          if (v125)
          {
            (*(*v561 + 16))(v561);
            v125 = *(a3 + 1);
          }
        }

        else
        {
          v125 = 0;
        }
      }

      else
      {
        *(a3 + 2) = v267 + 1;
        if (v267)
        {
          v268 = *v267;
          if (v268 < 3)
          {
            v269 = v265;
            IPC::Decoder::decode<WebCore::Site>(a3, v648);
            if (v648[16] != 1)
            {
              goto LABEL_1097;
            }

            v17 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
            v270 = v17;
            if (v18)
            {
              if ((v648[16] & 1) == 0)
              {
                goto LABEL_1032;
              }

              *v600 = v264;
              *&v600[8] = v269;
              v600[16] = v268;
              v271 = *v648;
              if (*v648)
              {
                atomic_fetch_add_explicit(*v648, 2u, memory_order_relaxed);
              }

              *&v600[24] = v271;
              v272 = *&v648[8];
              if (*&v648[8])
              {
                atomic_fetch_add_explicit(*&v648[8], 2u, memory_order_relaxed);
              }

              *&v600[32] = v272;
              *&v600[40] = v17;
              v273 = 1;
            }

            else
            {
              v273 = 0;
              v600[0] = 0;
            }

            v600[48] = v273;
            if (v648[16])
            {
              v414 = *&v648[8];
              *&v648[8] = 0;
              if (v414 && atomic_fetch_add_explicit(v414, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v414, v18);
              }

              v415 = *v648;
              *v648 = 0;
              if (v415 && atomic_fetch_add_explicit(v415, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v415, v18);
              }
            }

            if ((v273 & 1) == 0)
            {
              goto LABEL_1097;
            }

            v416 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
            if (v18)
            {
              v417 = v416;
              while (1)
              {
                v418 = *v5;
                if ((*v5 & 1) == 0)
                {
                  break;
                }

                v419 = *v5;
                atomic_compare_exchange_strong_explicit(v5, &v419, v418 + 2, memory_order_relaxed, memory_order_relaxed);
                if (v419 == v418)
                {
                  goto LABEL_680;
                }
              }

              WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v5);
LABEL_680:
              v420 = WTF::fastMalloc(0x18);
              *v420 = &unk_1F10F1060;
              v420[1] = v417;
              v420[2] = v5;
              *v648 = v420;
              WebKit::NetworkProcessProxy::triggerBrowsingContextGroupSwitchForNavigation(this, *v600, v269, v268, &v600[24], v270, v648);
              v421 = *v648;
              *v648 = 0;
              if (v421)
              {
                (*(*v421 + 8))(v421);
              }

              if ((v600[48] & 1) == 0)
              {
                goto LABEL_1098;
              }
            }

            v422 = *&v600[32];
            *&v600[32] = 0;
            if (v422 && atomic_fetch_add_explicit(v422, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v422, v18);
            }

            v341 = *&v600[24];
            *&v600[24] = 0;
            if (!v341)
            {
              goto LABEL_1098;
            }

LABEL_958:
            if (atomic_fetch_add_explicit(v341, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
LABEL_959:
              WTF::StringImpl::destroy(v341, v18);
            }

            goto LABEL_1098;
          }

          goto LABEL_1096;
        }
      }

LABEL_968:
      *a3 = 0;
      *(a3 + 1) = 0;
      v562 = *(a3 + 3);
      if (v562)
      {
        if (v125)
        {
          (*(*v562 + 16))(v562);
LABEL_1095:
          v127 = *a3;
          v125 = *(a3 + 1);
          goto LABEL_1096;
        }
      }

      else
      {
        v125 = 0;
      }

      v127 = 0;
LABEL_1096:
      *a3 = 0;
      *(a3 + 1) = 0;
      v596 = *(a3 + 3);
      if (v596 && v125)
      {
        (*(*v596 + 16))(v596, v127);
      }

      goto LABEL_1097;
    case 0x237:
      IPC::Decoder::decode<std::tuple<WebKit::RemoteWorkerType,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(v600, a3);
      if (v600[24] == 1)
      {
        WebKit::NetworkProcessProxy::unregisterRemoteWorkerClientProcess(this, v600[0], *&v600[8], *&v600[16]);
      }

      goto LABEL_1098;
    case 0x238:
      v21 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
      if (v22)
      {
        WebKit::NetworkProcessProxy::wakeUpWebProcessForIPC(this, v21);
      }

      goto LABEL_1098;
    default:
      if (IPC::MessageReceiverMap::dispatchMessage((this + 24), a2, a3))
      {
        goto LABEL_1098;
      }

      v324 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        v325 = *(a3 + 25);
        if (v325 >= 0x107F)
        {
          v325 = 4223;
        }

        v326 = (&IPC::Detail::messageDescriptions)[3 * v325];
        v327 = *(a3 + 7);
        *v600 = 136315394;
        *&v600[4] = v326;
        *&v600[12] = 2048;
        *&v600[14] = v327;
        _os_log_error_impl(&dword_19D52D000, v324, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", v600, 0x16u);
      }

      goto LABEL_1097;
  }
}