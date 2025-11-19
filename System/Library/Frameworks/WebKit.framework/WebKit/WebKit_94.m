unsigned int *IPC::handleMessage<Messages::WebPage::SetBackgroundColor,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(std::optional<WebCore::Color> const&)>(IPC::Decoder *a1, unint64_t *a2)
{
  IPC::ArgumentCoder<std::tuple<std::optional<WebCore::Color>>,void>::decode<IPC::Decoder>(a1, &v9);
  if (v11 & 1) != 0 || ((v6 = *a1, v7 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (result = *(a1 + 3)) != 0) ? (v8 = v7 == 0) : (v8 = 1), !v8 && (result = (*(*result + 16))(result, v6), (v11)))
  {
    result = WebKit::WebPage::setBackgroundColor(a2, &v9);
    if ((v11 & 1) != 0 && v10 == 1 && (v9 & 0x8000000000000) != 0)
    {
      result = (v9 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((v9 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, result);
        return WTF::fastFree(result, v5);
      }
    }
  }

  return result;
}

void IPC::handleMessage<Messages::WebPage::AddConsoleMessage,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,JSC::MessageSource,JSC::MessageLevel,WTF::String const&,std::optional<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>)>(IPC::Decoder *a1, WebKit::WebProcess *a2)
{
  IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,JSC::MessageSource,JSC::MessageLevel,WTF::String,std::optional<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>>(v5, a1);
  if (v7 == 1)
  {
    IPC::callMemberFunction<WebKit::WebPage,WebKit::WebPage,void ()(WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,JSC::MessageSource,JSC::MessageLevel,WTF::String const&,std::optional<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>),std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,JSC::MessageSource,JSC::MessageLevel,WTF::String,std::optional<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>>(a2, v5);
    if (v7)
    {
      v4 = v6;
      v6 = 0;
      if (v4)
      {
        if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v4, v3);
        }
      }
    }
  }
}

void IPC::handleMessage<Messages::WebPage::EnqueueSecurityPolicyViolationEvent,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::SecurityPolicyViolationEventInit &&)>(IPC::Decoder *a1, uint64_t a2)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if (v5 & 1) != 0 && ((v6 = v4, IPC::ArgumentCoder<WebCore::SecurityPolicyViolationEventInit,void>::decode(a1, &v29), (v37) || (v13 = *a1, v14 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (v15 = *(a1 + 3)) != 0) && v14 && ((*(*v15 + 16))(v15, v13), (v37)))
  {
    v8 = v31;
    v31 = 0u;
    v9 = v32;
    v32 = 0u;
    v22 = v8;
    v23 = v9;
    v10 = v33;
    v33 = 0u;
    v11 = v34;
    v34 = 0u;
    v20 = v29;
    v21 = v30;
    v24 = v10;
    v25 = v11;
    v27 = v36;
    v26 = v35;
    v28 = 1;
    WebCore::SecurityPolicyViolationEventInit::~SecurityPolicyViolationEventInit(&v29, v7);
    WebKit::WebPage::enqueueSecurityPolicyViolationEvent(a2, v6);
    WebCore::SecurityPolicyViolationEventInit::~SecurityPolicyViolationEventInit(&v20, v12);
  }

  else
  {
    v16 = *a1;
    v17 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v18 = *(a1 + 3);
    if (v18)
    {
      v19 = v17 == 0;
    }

    else
    {
      v19 = 1;
    }

    if (!v19)
    {
      (*(*v18 + 16))(v18, v16);
    }
  }
}

void IPC::handleMessage<Messages::WebPage::SendReportToEndpoints,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::URL &&,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const,IPC::FormDataReference &&,WebCore::ViolationReportType)>(IPC::Decoder *a1, uint64_t a2)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if ((v5 & 1) == 0 || (v6 = v4, IPC::ArgumentCoder<WTF::URL,void>::decode(a1, &v48), (v51 & 1) == 0) && ((v29 = *a1, v30 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (v31 = *(a1 + 3)) == 0) || !v30 || ((*(*v31 + 16))(v31, v29), (v51 & 1) == 0)))
  {
LABEL_39:
    v32 = *a1;
    v33 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v34 = *(a1 + 3);
    if (v34)
    {
      v35 = v33 == 0;
    }

    else
    {
      v35 = 1;
    }

    if (!v35)
    {
      (*(*v34 + 16))(v34, v32);
    }

    return;
  }

  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a1, &v52);
  if ((v53 & 1) == 0)
  {
    v10 = *a1;
    v25 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v26 = *(a1 + 3);
    if (!v26 || !v25 || ((*(*v26 + 16))(v26, v10), (v53 & 1) == 0))
    {
      v16 = 0;
      LOBYTE(v39) = 0;
      v47 = 0;
      goto LABEL_18;
    }
  }

  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a1, &v54);
  if (v56 & 1) != 0 || (v10 = *a1, v27 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (v28 = *(a1 + 3)) != 0) && v27 && ((*(*v28 + 16))(v28, v10), (v56))
  {
    IPC::ArgumentCoder<IPC::FormDataReference,void>::decode(a1, &v57);
    if ((v58 & 1) == 0)
    {
      goto LABEL_32;
    }

    v8 = *(a1 + 1);
    v9 = *(a1 + 2);
    v10 = *a1;
    if (v8 <= &v9[-*a1])
    {
      *a1 = 0;
      *(a1 + 1) = 0;
      v36 = *(a1 + 3);
      if (v36)
      {
        if (v8)
        {
          (*(*v36 + 16))(v36);
          v8 = *(a1 + 1);
        }
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      *(a1 + 2) = v9 + 1;
      if (v9)
      {
        v11 = *v9;
        if (v11 <= 7 && v11 != 2)
        {
          if (v51 & 1) != 0 && (v53 & 1) != 0 && (v56)
          {
            *&v7 = 0;
            v41 = v49;
            v42 = v50;
            v12 = v48;
            v48 = 0;
            v39 = v6;
            v40 = v12;
            LODWORD(v49) = v49 & 0xFFFFFFFE;
            v13 = v52;
            v52 = v7;
            v43 = v13;
            v14 = v54;
            v54 = 0;
            v44[0] = v14;
            v15 = v55;
            v55 = 0;
            v44[1] = v15;
            v45 = v57;
            v46 = v11;
            v16 = 1;
            v47 = 1;
LABEL_14:
            if (v56)
            {
              WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v54, v10);
            }

            goto LABEL_16;
          }

          __break(1u);
LABEL_32:
          v10 = *a1;
          v23 = *(a1 + 1);
          *a1 = 0;
          *(a1 + 1) = 0;
          v24 = *(a1 + 3);
          if (v24 && v23)
          {
            (*(*v24 + 16))(v24, v10);
          }

          v16 = 0;
          LOBYTE(v39) = 0;
          v47 = 0;
          goto LABEL_14;
        }

LABEL_60:
        *a1 = 0;
        *(a1 + 1) = 0;
        v38 = *(a1 + 3);
        if (v38 && v8)
        {
          (*(*v38 + 16))(v38, v10);
        }

        LOBYTE(v39) = 0;
        v47 = 0;
        if (v57)
        {
          WTF::RefCounted<WebCore::FormData>::deref(v57);
        }

        v16 = 0;
        goto LABEL_14;
      }
    }

    *a1 = 0;
    *(a1 + 1) = 0;
    v37 = *(a1 + 3);
    if (v37)
    {
      if (v8)
      {
        (*(*v37 + 16))(v37);
        v10 = *a1;
        v8 = *(a1 + 1);
        goto LABEL_60;
      }
    }

    else
    {
      v8 = 0;
    }

    v10 = 0;
    goto LABEL_60;
  }

  v16 = 0;
  LOBYTE(v39) = 0;
  v47 = 0;
LABEL_16:
  if (v53)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v52, v10);
  }

LABEL_18:
  if ((v51 & 1) != 0 && (v17 = v48, v48 = 0, v17) && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, v10);
    if ((v16 & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  else if ((v16 & 1) == 0)
  {
    goto LABEL_39;
  }

  WebKit::WebPage::sendReportToEndpoints(a2, v39, &v40, &v43, v44, &v45);
  if (v47)
  {
    v19 = v45;
    v45 = 0;
    if (v19)
    {
      WTF::RefCounted<WebCore::FormData>::deref(v19);
    }

    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v44, v18);
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v43, v20);
    v22 = v40;
    v40 = 0;
    if (v22)
    {
      if (atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v22, v21);
      }
    }
  }
}

void IPC::handleMessage<Messages::WebPage::NotifyReportObservers,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::Report,WTF::RawPtrTraits<WebCore::Report>,WTF::DefaultRefDerefTraits<WebCore::Report>> &&)>(IPC::Decoder *a1, uint64_t a2)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if (v5 & 1) != 0 && ((v6 = v4, IPC::ArgumentCoder<WebCore::Report,void>::decode(a1, &v17), (v18) || (v9 = *a1, v10 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (v11 = *(a1 + 3)) != 0) && v10 && ((*(*v11 + 16))(v11, v9), (v18)))
  {
    v16 = v17;
    WebKit::WebPage::notifyReportObservers(a2, v6);
    if (v16)
    {
      if (*v16 == 1)
      {
        WebCore::Report::~Report(v16);
        bmalloc::api::tzoneFree(v7, v8);
      }

      else
      {
        --*v16;
      }
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
}

void IPC::handleMessage<Messages::WebPage::SetObscuredContentInsetsFenced,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::RectEdges<float> const&,WTF::MachSendRight const&)>(IPC::Decoder *a1, void *a2)
{
  IPC::ArgumentCoder<WebCore::RectEdges<float>,void>::decode(a1, &v14);
  if (v15)
  {
    do
    {
      IPC::Decoder::takeLastAttachment(a1, v16);
      if (v17 != 1)
      {
        break;
      }

      if (v15)
      {
        v11 = v14;
        WTF::MachSendRight::MachSendRight();
        v13 = 1;
        if (v17)
        {
          WTF::MachSendRight::~MachSendRight(v16);
        }

        goto LABEL_6;
      }

      __break(1u);
LABEL_20:
      (*(*v4 + 16))(v4, v5);
    }

    while ((v15 & 1) != 0);
  }

  else
  {
    v5 = *a1;
    v6 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v4 = *(a1 + 3);
    if (v4)
    {
      v7 = v6 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      goto LABEL_20;
    }
  }

  LOBYTE(v11) = 0;
  v13 = 0;
  v8 = *a1;
  v9 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  v10 = *(a1 + 3);
  if (v10)
  {
    if (v9)
    {
      (*(*v10 + 16))(v10, v8);
      if (v13)
      {
LABEL_6:
        WebKit::WebPage::setObscuredContentInsetsFenced(a2, &v11, v12);
        if (v13)
        {
          WTF::MachSendRight::~MachSendRight(v12);
        }
      }
    }
  }
}

unsigned int *IPC::handleMessage<Messages::WebPage::SetUnderlayColor,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::Color const&)>(IPC::Decoder *a1, uint64_t a2)
{
  result = IPC::Decoder::decode<std::tuple<WebCore::Color>>(a1, &v5);
  if (v6 == 1)
  {
    result = WebKit::WebPage::setUnderlayColor(a2, &v5);
    if ((v6 & 1) != 0 && (v5 & 0x8000000000000) != 0)
    {
      result = (v5 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((v5 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, result);
        return WTF::fastFree(result, v4);
      }
    }
  }

  return result;
}

uint64_t WebKit::WebPage::setUnderlayColor(uint64_t this, const WebCore::Color *a2)
{
  v2 = *(this + 152);
  if (v2 != *a2)
  {
    if ((v2 & 0x8000000000000) != 0)
    {
      v4 = (v2 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v4);
        v5 = a2;
        v6 = this;
        WTF::fastFree(v4, a2);
        a2 = v5;
        this = v6;
      }
    }

    v3 = *a2;
    *(this + 152) = *a2;
    if ((v3 & 0x8000000000000) != 0)
    {
      atomic_fetch_add((v3 & 0xFFFFFFFFFFFFLL), 1u);
    }
  }

  return this;
}

unsigned int *IPC::handleMessage<Messages::WebPage::SetUnderPageBackgroundColorOverride,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::Color &&)>(IPC::Decoder *a1, uint64_t a2)
{
  result = IPC::Decoder::decode<std::tuple<WebCore::Color>>(a1, &v5);
  if (v6 == 1)
  {
    result = WebKit::WebPage::setUnderPageBackgroundColorOverride(a2);
    if ((v6 & 1) != 0 && (v5 & 0x8000000000000) != 0)
    {
      result = (v5 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((v5 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, result);
        return WTF::fastFree(result, v4);
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::WebPage::ExecuteEditCommandWithCallback,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::String const&,WTF::String const&,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, WebKit::WebPage *a3)
{
  result = IPC::Decoder::decode<std::tuple<WTF::String,WTF::String>>(a2, &v13);
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
      result = WTF::fastMalloc(0x18);
      *result = &unk_1F10F4BE0;
      *(result + 1) = v8;
      *(result + 2) = a1;
      v12 = result;
      if ((v15 & 1) == 0)
      {
        __break(1u);
        return result;
      }

      WebKit::WebPage::executeEditCommandWithCallback(a3, &v13, &v14, &v12);
      result = v12;
      v12 = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }
    }
  }

  if (v15 == 1)
  {
    v11 = v14;
    v14 = 0;
    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v7);
    }

    result = v13;
    v13 = 0;
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

void IPC::handleMessage<Messages::WebPage::KeyEvent,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::WebKeyboardEvent const&)>(IPC::Decoder *a1, uint64_t a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if (v5)
  {
    v6 = v4;
    IPC::Decoder::decode<WebKit::WebKeyboardEvent>(v31, a1);
    if (v41 == 1)
    {
      v18 = v6;
      v20 = 0;
      v21 = v32;
      v22 = v33;
      v23 = v34;
      v19 = &unk_1F110E540;
      v8 = v35;
      if (v35)
      {
        atomic_fetch_add_explicit(v35, 2u, memory_order_relaxed);
      }

      v24 = v8;
      v9 = v36;
      if (v36)
      {
        atomic_fetch_add_explicit(v36, 2u, memory_order_relaxed);
      }

      v25 = v9;
      v10 = v37;
      if (v37)
      {
        atomic_fetch_add_explicit(v37, 2u, memory_order_relaxed);
      }

      v26 = v10;
      v11 = v38;
      if (v38)
      {
        atomic_fetch_add_explicit(v38, 2u, memory_order_relaxed);
      }

      v27 = v11;
      v12 = v39;
      if (v39)
      {
        atomic_fetch_add_explicit(v39, 2u, memory_order_relaxed);
      }

      v28 = v12;
      v29 = v40;
      v30 = 1;
      if (v41)
      {
        WebKit::WebKeyboardEvent::~WebKeyboardEvent(v31, v7);
      }

      goto LABEL_15;
    }
  }

  LOBYTE(v18) = 0;
  v30 = 0;
  v14 = *a1;
  v15 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  v16 = *(a1 + 3);
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
    if (v30)
    {
LABEL_15:
      WebKit::WebPage::keyEvent(a2, v18, &v19);
      if (v30)
      {
        WebKit::WebKeyboardEvent::~WebKeyboardEvent(&v19, v13);
      }
    }
  }
}

IPC::Encoder *IPC::handleMessage<Messages::WebPage::MouseEvent,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::WebMouseEvent const&,std::optional<WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)>(IPC::Decoder *a1, uint64_t a2)
{
  v72 = *MEMORY[0x1E69E9840];
  v6 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if ((v7 & 1) == 0)
  {
    LOBYTE(v39) = 0;
    v58 = 0;
LABEL_28:
    v24 = *a1;
    v25 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result)
    {
      v26 = v25 == 0;
    }

    else
    {
      v26 = 1;
    }

    if (v26)
    {
      return result;
    }

    result = (*(*result + 16))(result, v24);
    if ((v58 & 1) == 0)
    {
      return result;
    }

    goto LABEL_20;
  }

  v8 = v6;
  IPC::Decoder::decode<WebKit::WebMouseEvent>(a1, &v59);
  if (v71 != 1)
  {
    goto LABEL_10;
  }

  v9 = *(a1 + 1);
  v10 = *(a1 + 2);
  v11 = *a1;
  if (v9 <= &v10[-*a1])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v32 = *(a1 + 3);
    if (v32)
    {
      if (v9)
      {
        (*(*v32 + 16))(v32);
        v9 = *(a1 + 1);
      }
    }

    else
    {
      v9 = 0;
    }

    goto LABEL_44;
  }

  *(a1 + 2) = v10 + 1;
  if (!v10)
  {
LABEL_44:
    *a1 = 0;
    *(a1 + 1) = 0;
    v33 = *(a1 + 3);
    if (v33)
    {
      if (v9)
      {
        (*(*v33 + 16))(v33);
        v11 = *a1;
        v9 = *(a1 + 1);
        goto LABEL_47;
      }
    }

    else
    {
      v9 = 0;
    }

    v11 = 0;
LABEL_47:
    *a1 = 0;
    *(a1 + 1) = 0;
    v34 = *(a1 + 3);
    if (v34 && v9)
    {
      (*(*v34 + 16))(v34, v11);
    }

    goto LABEL_35;
  }

  v12 = *v10;
  if (v12 >= 2)
  {
    goto LABEL_47;
  }

  if (*v10)
  {
    IPC::VectorArgumentCoder<false,WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a1, v11, &v39);
    if ((v41 & 1) == 0)
    {
      v27 = *a1;
      v28 = *(a1 + 1);
      *a1 = 0;
      *(a1 + 1) = 0;
      v29 = *(a1 + 3);
      if (!v29 || !v28 || ((*(*v29 + 16))(v29, v27), (v41 & 1) == 0))
      {
LABEL_35:
        v11 = *a1;
        v30 = *(a1 + 1);
        *a1 = 0;
        *(a1 + 1) = 0;
        v31 = *(a1 + 3);
        if (v31 && v30)
        {
          (*(*v31 + 16))(v31, v11);
        }

        LOBYTE(v39) = 0;
        v58 = 0;
        goto LABEL_15;
      }
    }

    v35 = v39;
    v3 = v40;
    v2 = HIDWORD(v40);
    v39 = 0;
    v40 = 0;
    v36 = __PAIR64__(v2, v3);
    v37 = 1;
    v38 = 1;
    WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v39, v13);
    if ((v71 & 1) == 0)
    {
      __break(1u);
LABEL_10:
      LOBYTE(v39) = 0;
      v58 = 0;
      goto LABEL_19;
    }
  }

  else
  {
    LOBYTE(v35) = 0;
    v37 = 0;
    v38 = 1;
  }

  v39 = v8;
  v42 = 0;
  v43 = v60;
  v44 = v61;
  v45 = v62;
  v41 = &unk_1F10E8378;
  v46 = v63;
  v47 = v64;
  v48 = v65;
  v49 = v66;
  v14 = v67;
  v67 = 0;
  v50 = v14;
  v51 = v68;
  v52 = v69;
  v15 = v70;
  v69 = 0u;
  v70 = 0u;
  v53 = v15;
  LOBYTE(v54) = 0;
  v57 = 0;
  if (v12)
  {
    v16 = v35;
    v35 = 0;
    v36 = 0;
    v54 = v16;
    v55 = v3;
    v56 = v2;
    v57 = 1;
    v58 = 1;
    WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v35, v11);
  }

  else
  {
    v58 = 1;
  }

LABEL_15:
  if (v71)
  {
    v59 = &unk_1F10E8378;
    WTF::Vector<WebKit::WebMouseEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v70, v11);
    WTF::Vector<WebKit::WebMouseEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v69, v17);
    v19 = v67;
    v67 = 0;
    if (v19)
    {
      if (atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v19, v18);
      }
    }
  }

LABEL_19:
  if ((v58 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_20:
  result = WebKit::WebPage::mouseEvent(a2, v39, &v41, &v54);
  if (v58)
  {
    if (v57 == 1)
    {
      WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v54, v21);
    }

    v41 = &unk_1F10E8378;
    WTF::Vector<WebKit::WebMouseEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v53, v21);
    WTF::Vector<WebKit::WebMouseEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v52, v22);
    result = v50;
    v50 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v23);
      }
    }
  }

  return result;
}

void IPC::handleMessage<Messages::WebPage::SetLastKnownMousePosition,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::IntPoint,WebCore::IntPoint)>(IPC::Decoder *a1, uint64_t a2)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if (v5 & 1) != 0 && (v6 = v4, v7 = IPC::Decoder::decode<WebCore::IntPoint>(a1), (v8) && (v9 = v7, v10 = IPC::Decoder::decode<WebCore::IntPoint>(a1), (v11))
  {
    v12 = v10;
    v13 = v9;

    WebKit::WebPage::setLastKnownMousePosition(a2, v6, v13, v12);
  }

  else
  {
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
      v17 = *(*v15 + 16);

      v17();
    }
  }
}

WTF::StringImpl *IPC::handleMessage<Messages::WebPage::SetSceneIdentifier,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::String &&)>(IPC::Decoder *a1, WebCore::AudioSession *a2)
{
  IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a1, &v9);
  if (v10 & 1) != 0 || ((v6 = *a1, v7 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (result = *(a1 + 3)) != 0) ? (v8 = v7 == 0) : (v8 = 1), !v8 && (result = (*(*result + 16))(result, v6), (v10)))
  {
    result = WebKit::WebPage::setSceneIdentifier(a2, &v9);
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

uint64_t IPC::handleMessage<Messages::WebPage::SetOverrideViewportArguments,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(std::optional<WebCore::ViewportArguments> const&)>(IPC::Decoder *a1)
{
  IPC::ArgumentCoder<std::optional<WebCore::ViewportArguments>,void>::decode<IPC::Decoder>(a1, &v6);
  if (v7)
  {
    return WebKit::WebPage::setOverrideViewportArguments();
  }

  v3 = *a1;
  v4 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  result = *(a1 + 3);
  if (!result)
  {
    v4 = 0;
LABEL_6:
    v5 = 0;
    goto LABEL_7;
  }

  if (!v4)
  {
    goto LABEL_6;
  }

  (*(*result + 16))(result, v3);
  if (v7)
  {
    return WebKit::WebPage::setOverrideViewportArguments();
  }

  v5 = *a1;
  v4 = *(a1 + 1);
  result = *(a1 + 3);
LABEL_7:
  *a1 = 0;
  *(a1 + 1) = 0;
  if (result)
  {
    if (v4)
    {
      return (*(*result + 16))(result, v5);
    }
  }

  return result;
}

uint64_t *IPC::handleMessage<Messages::WebPage::DynamicViewportSizeUpdate,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebKit::DynamicViewportSizeUpdate const&)>(IPC::Decoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WebKit::DynamicViewportSizeUpdate,void>::decode(a1, v11);
  if (v13)
  {
    goto LABEL_2;
  }

  v5 = *a1;
  v6 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  result = *(a1 + 3);
  if (!result)
  {
    v6 = 0;
LABEL_6:
    v7 = 0;
    goto LABEL_7;
  }

  if (!v6)
  {
    goto LABEL_6;
  }

  (*(*result + 16))(result, v5);
  if (v13)
  {
LABEL_2:
    v8[4] = v11[4];
    v8[5] = v11[5];
    v8[6] = v11[6];
    v9 = v12;
    v8[0] = v11[0];
    v8[1] = v11[1];
    v8[2] = v11[2];
    v8[3] = v11[3];
    v10 = 1;
    return WebKit::WebPage::dynamicViewportSizeUpdate(a2, v8);
  }

  v7 = *a1;
  v6 = *(a1 + 1);
  result = *(a1 + 3);
LABEL_7:
  *a1 = 0;
  *(a1 + 1) = 0;
  if (result)
  {
    if (v6)
    {
      return (*(*result + 16))(result, v7);
    }
  }

  return result;
}

uint64_t IPC::handleMessage<Messages::WebPage::SetInsertionPointColor,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::Color)>(IPC::Decoder *a1, uint64_t a2)
{
  IPC::Decoder::decode<std::tuple<WebCore::Color>>(a1, &v5);
  if (v6 == 1)
  {
    IPC::callMemberFunction<WebKit::WebPage,WebKit::WebPage,void ()(WebCore::Color),std::tuple<WebCore::Color>>(WebKit::WebPage *,void ()(WebCore::Color) WebKit::WebPage::*,std::tuple<WebCore::Color> &&)::{lambda(WebKit::WebPage &&)#1}::operator()<WebCore::Color>(a2, WebKit::WebPage::setInsertionPointColor, 0, &v5);
  }

  return std::optional<WebCore::Color>::~optional(&v5, v3);
}

WebCore::Node *IPC::handleMessage<Messages::WebPage::AttemptSyntheticClick,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::IntPoint const&,WTF::OptionSet<WebKit::WebEventModifier>,WebCore::ProcessQualified<WebKit::MonotonicObjectIdentifier<WebKit::TransactionIDType>>)>(IPC::Decoder *a1, uint64_t a2)
{
  result = IPC::Decoder::decode<std::tuple<WebCore::IntPoint,WTF::OptionSet<WebKit::WebEventModifier>,WebCore::ProcessQualified<WebKit::MonotonicObjectIdentifier<WebKit::TransactionIDType>>>>(&v4, a1);
  if (v7 == 1)
  {
    return WebKit::WebPage::attemptSyntheticClick(a2, &v4, v5, v6);
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebPage::PotentialTapAtPosition,IPC::Connection,WebKit::WebPage,WebKit::WebPage,WTF::Awaitable<std::optional<WebCore::RemoteUserInputEventData>> ()(std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::ObjectIdentifierGeneric<WebKit::TapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::FloatPoint,BOOL)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  v4 = a2;
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(a2, v40);
  if ((v41 & 1) == 0)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v6 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(v4);
    if ((v7 & 1) == 0)
    {
      break;
    }

    v8 = v6;
    v9 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(v4);
    if ((v10 & 1) == 0)
    {
      goto LABEL_41;
    }

    v11 = *(v4 + 8);
    v12 = *(v4 + 16);
    v13 = *v4;
    if (v11 <= &v12[-*v4])
    {
      *v4 = 0;
      *(v4 + 8) = 0;
      v37 = *(v4 + 24);
      if (v37)
      {
        if (v11)
        {
          (*(*v37 + 16))(v37);
          v11 = *(v4 + 8);
        }
      }

      else
      {
        v11 = 0;
      }

LABEL_36:
      *v4 = 0;
      *(v4 + 8) = 0;
      v38 = *(v4 + 24);
      if (!v38)
      {
        v11 = 0;
        goto LABEL_38;
      }

      if (v11)
      {
        (*(*v38 + 16))(v38);
LABEL_41:
        v13 = *v4;
        v11 = *(v4 + 8);
      }

      else
      {
LABEL_38:
        v13 = 0;
      }

LABEL_42:
      *v4 = 0;
      *(v4 + 8) = 0;
      v39 = *(v4 + 24);
      if (v39 && v11)
      {
        (*(*v39 + 16))(v39, v13);
      }

      break;
    }

    *(v4 + 16) = v12 + 1;
    if (!v12)
    {
      goto LABEL_36;
    }

    v14 = *v12;
    if (v14 >= 2)
    {
      goto LABEL_42;
    }

    if (v41)
    {
      v15 = v9;
      v16 = v40[0];
      v17 = v40[1];
      result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v4);
      if ((v19 & 1) == 0)
      {
        return result;
      }

      v20 = result;
      v21 = v15;
      while (1)
      {
        v22 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v23 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v23, v22 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v23 == v22)
        {
          goto LABEL_14;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_14:
      v24 = WTF::fastMalloc(0x18);
      *v24 = &unk_1F10F4C08;
      v24[1] = v20;
      v24[2] = a1;
      v4 = WTF::fastMalloc(0x50);
      *v4 = IPC::callMemberFunctionCoroutine<WebKit::WebPage,WebKit::WebPage,WTF::Awaitable<std::optional<WebCore::RemoteUserInputEventData>> ()(std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::ObjectIdentifierGeneric<WebKit::TapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::FloatPoint,BOOL),std::tuple<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::ObjectIdentifierGeneric<WebKit::TapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::FloatPoint,BOOL>,void ()(std::optional<WebCore::RemoteUserInputEventData>&&)>(WebKit::WebPage *,WTF::Awaitable<std::optional<WebCore::RemoteUserInputEventData>> ()(std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::ObjectIdentifierGeneric<WebKit::TapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::FloatPoint,BOOL) WebKit::WebPage::*,std::tuple<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::ObjectIdentifierGeneric<WebKit::TapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::FloatPoint,BOOL> &&,WTF::CompletionHandler<void ()(std::optional<WebCore::RemoteUserInputEventData>&&)> &&)::{lambda(void ()(std::optional<WebCore::RemoteUserInputEventData>&&))#1}::operator()<std::tuple<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::ObjectIdentifierGeneric<WebKit::TapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::FloatPoint,BOOL> &<std::optional<WebCore::RemoteUserInputEventData>&&>>;
      *(v4 + 8) = IPC::callMemberFunctionCoroutine<WebKit::WebPage,WebKit::WebPage,WTF::Awaitable<std::optional<WebCore::RemoteUserInputEventData>> ()(std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::ObjectIdentifierGeneric<WebKit::TapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::FloatPoint,BOOL),std::tuple<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::ObjectIdentifierGeneric<WebKit::TapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::FloatPoint,BOOL>,void ()(std::optional<WebCore::RemoteUserInputEventData>&&)>(WebKit::WebPage *,WTF::Awaitable<std::optional<WebCore::RemoteUserInputEventData>> ()(std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::ObjectIdentifierGeneric<WebKit::TapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::FloatPoint,BOOL) WebKit::WebPage::*,std::tuple<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::ObjectIdentifierGeneric<WebKit::TapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::FloatPoint,BOOL> &&,WTF::CompletionHandler<void ()(std::optional<WebCore::RemoteUserInputEventData>&&)> &&)::{lambda(void ()(std::optional<WebCore::RemoteUserInputEventData>&&))#1}::operator()<std::tuple<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::ObjectIdentifierGeneric<WebKit::TapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::FloatPoint,BOOL> &<std::optional<WebCore::RemoteUserInputEventData>&&>>;
      *(v4 + 64) = v24;
      *(v4 + 72) = a3;
      CFRetain(*(a3 + 8));
      WebKit::WebPage::potentialTapAtPosition(a3, v16, v17, v8, v14 & 1, (v4 + 56), *&v21, *(&v21 + 1));
      v25 = *(v4 + 56);
      *(v4 + 48) = v25;
      if (v25)
      {
        if (*v25)
        {
          *(v4 + 17) = 0;
          *(v25 + 16) = v4;
          return (**(v4 + 48))();
        }

        else
        {
          v26 = *(v4 + 64);
          v27 = *(v25 + 40);
          *(v4 + 24) = *(v25 + 24);
          *(v4 + 40) = v27;
          *(v25 + 24) = 0;
          *(v25 + 40) = 0;
          (*(*v26 + 16))(v26, v4 + 24);
          (*(*v26 + 8))(v26);
          v29 = *(v4 + 56);
          if (v29)
          {
            (*(v29 + 8))();
          }

          v30 = *(v4 + 72);
          if (v30)
          {
            CFRelease(*(v30 + 8));
          }

          return WTF::fastFree(v4, v28);
        }
      }
    }

    __break(1u);
LABEL_23:
    v31 = *v4;
    v32 = *(v4 + 8);
    *v4 = 0;
    *(v4 + 8) = 0;
    v33 = *(v4 + 24);
    if (v33)
    {
      v34 = v32 == 0;
    }

    else
    {
      v34 = 1;
    }

    if (!v34)
    {
      (*(*v33 + 16))(v33, v31);
      if (v41)
      {
        continue;
      }
    }

    break;
  }

  v35 = *v4;
  v36 = *(v4 + 8);
  *v4 = 0;
  *(v4 + 8) = 0;
  result = *(v4 + 24);
  if (result && v36)
  {
    return (*(*result + 16))(result, v35);
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebPage::CommitPotentialTap,IPC::Connection,WebKit::WebPage,WebKit::WebPage,WTF::Awaitable<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>> ()(std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::OptionSet<WebKit::WebEventModifier>,WebCore::ProcessQualified<WebKit::MonotonicObjectIdentifier<WebKit::TransactionIDType>>,unsigned int)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  v4 = a2;
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(a2, v40);
  if ((v41 & 1) == 0)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v6 = IPC::Decoder::decode<WTF::OptionSet<WebKit::WebEventModifier>>(v4);
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_3;
    }

    v10 = v6;
    IPC::ArgumentCoder<WebCore::ProcessQualified<WebKit::MonotonicObjectIdentifier<WebKit::TransactionIDType>>,void>::decode(v4, v42);
    if ((v43 & 1) == 0)
    {
      goto LABEL_41;
    }

    v11 = *(v4 + 8);
    v12 = ((*(v4 + 16) + 3) & 0xFFFFFFFFFFFFFFFCLL);
    v13 = v12 - *v4;
    v14 = v11 >= v13;
    v15 = v11 - v13;
    if (!v14 || v15 <= 3)
    {
      *v4 = 0;
      *(v4 + 8) = 0;
      v38 = *(v4 + 24);
      if (v38)
      {
        if (v11)
        {
          (*(*v38 + 16))(v38);
LABEL_41:
          v11 = *(v4 + 8);
        }
      }

      else
      {
        v11 = 0;
      }

LABEL_42:
      *v4 = 0;
      *(v4 + 8) = 0;
      v39 = *(v4 + 24);
      if (v39 && v11)
      {
        (*(*v39 + 16))(v39);
      }

LABEL_3:
      v7 = *v4;
      v8 = *(v4 + 8);
      *v4 = 0;
      *(v4 + 8) = 0;
      result = *(v4 + 24);
      if (result)
      {
        if (v8)
        {
          return (*(*result + 16))(result, v7);
        }
      }

      return result;
    }

    *(v4 + 16) = v12 + 1;
    if (!v12)
    {
      goto LABEL_42;
    }

    if (v41)
    {
      v17 = *v12;
      v18 = v40[0];
      v19 = v40[1];
      v20 = v42[0];
      v21 = v42[1];
      result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v4);
      if ((v22 & 1) == 0)
      {
        return result;
      }

      v23 = result;
      while (1)
      {
        v24 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v25 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v25, v24 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v25 == v24)
        {
          goto LABEL_20;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_20:
      v26 = WTF::fastMalloc(0x18);
      *v26 = &unk_1F10F4C30;
      v26[1] = v23;
      v26[2] = a1;
      v4 = WTF::fastMalloc(0x48);
      *v4 = IPC::callMemberFunctionCoroutine<WebKit::WebPage,WebKit::WebPage,WTF::Awaitable<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>> ()(std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::OptionSet<WebKit::WebEventModifier>,WebCore::ProcessQualified<WebKit::MonotonicObjectIdentifier<WebKit::TransactionIDType>>,unsigned int),std::tuple<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::OptionSet<WebKit::WebEventModifier>,WebCore::ProcessQualified<WebKit::MonotonicObjectIdentifier<WebKit::TransactionIDType>>,unsigned int>,void ()(std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>&&)>(WebKit::WebPage *,WTF::Awaitable<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>> ()(std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::OptionSet<WebKit::WebEventModifier>,WebCore::ProcessQualified<WebKit::MonotonicObjectIdentifier<WebKit::TransactionIDType>>,unsigned int) WebKit::WebPage::*,std::tuple<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::OptionSet<WebKit::WebEventModifier>,WebCore::ProcessQualified<WebKit::MonotonicObjectIdentifier<WebKit::TransactionIDType>>,unsigned int> &&,WTF::CompletionHandler<void ()(std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>&&)> &&)::{lambda(void ()(std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>&&))#1}::operator()<std::tuple<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::OptionSet<WebKit::WebEventModifier>,WebCore::ProcessQualified<WebKit::MonotonicObjectIdentifier<WebKit::TransactionIDType>>,unsigned int> &<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>&&>>;
      *(v4 + 8) = IPC::callMemberFunctionCoroutine<WebKit::WebPage,WebKit::WebPage,WTF::Awaitable<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>> ()(std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::OptionSet<WebKit::WebEventModifier>,WebCore::ProcessQualified<WebKit::MonotonicObjectIdentifier<WebKit::TransactionIDType>>,unsigned int),std::tuple<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::OptionSet<WebKit::WebEventModifier>,WebCore::ProcessQualified<WebKit::MonotonicObjectIdentifier<WebKit::TransactionIDType>>,unsigned int>,void ()(std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>&&)>(WebKit::WebPage *,WTF::Awaitable<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>> ()(std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::OptionSet<WebKit::WebEventModifier>,WebCore::ProcessQualified<WebKit::MonotonicObjectIdentifier<WebKit::TransactionIDType>>,unsigned int) WebKit::WebPage::*,std::tuple<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::OptionSet<WebKit::WebEventModifier>,WebCore::ProcessQualified<WebKit::MonotonicObjectIdentifier<WebKit::TransactionIDType>>,unsigned int> &&,WTF::CompletionHandler<void ()(std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>&&)> &&)::{lambda(void ()(std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>&&))#1}::operator()<std::tuple<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::OptionSet<WebKit::WebEventModifier>,WebCore::ProcessQualified<WebKit::MonotonicObjectIdentifier<WebKit::TransactionIDType>>,unsigned int> &<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>&&>>;
      *(v4 + 56) = v26;
      *(v4 + 64) = a3;
      CFRetain(*(a3 + 8));
      WebKit::WebPage::commitPotentialTap(a3, v18, v19, v10, v20, v21, v17, (v4 + 48));
      v27 = *(v4 + 48);
      *(v4 + 40) = v27;
      if (v27)
      {
        break;
      }
    }

    __break(1u);
LABEL_30:
    v34 = *v4;
    v35 = *(v4 + 8);
    *v4 = 0;
    *(v4 + 8) = 0;
    v36 = *(v4 + 24);
    if (v36)
    {
      v37 = v35 == 0;
    }

    else
    {
      v37 = 1;
    }

    if (!v37)
    {
      (*(*v36 + 16))(v36, v34);
      if (v41)
      {
        continue;
      }
    }

    goto LABEL_3;
  }

  if (*v27)
  {
    *(v4 + 17) = 0;
    v27[2] = v4;
    return (**(v4 + 40))();
  }

  else
  {
    v28 = *(v4 + 56);
    v29 = v27[3];
    v30 = v27[4];
    *(v27 + 24) = 0;
    *(v27 + 32) = 0;
    *(v4 + 24) = v29;
    *(v4 + 32) = v30;
    (*(*v28 + 16))(v28, v4 + 24);
    (*(*v28 + 8))(v28);
    v32 = *(v4 + 48);
    if (v32)
    {
      (*(v32 + 8))();
    }

    v33 = *(v4 + 64);
    if (v33)
    {
      CFRelease(*(v33 + 8));
    }

    return WTF::fastFree(v4, v31);
  }
}

_DWORD *IPC::handleMessage<Messages::WebPage::TapHighlightAtPosition,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::ObjectIdentifierGeneric<WebKit::TapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::FloatPoint const&)>(uint64_t *a1, uint64_t a2)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if (v5)
  {
    v6 = v4;
    v7 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a1);
    if (v8)
    {
      v16 = v7;
      v17 = 1;
      return WebKit::WebPage::tapHighlightAtPosition(a2, v6, &v16);
    }

    v10 = *a1;
    v11 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v12 = a1[3];
    if (v12 && v11)
    {
      (*(*v12 + 16))(v12, v10);
    }
  }

  v13 = a1[1];
  *a1 = 0;
  a1[1] = 0;
  result = a1[3];
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

uint64_t *IPC::handleMessage<Messages::WebPage::HandleDoubleTapForDoubleClickAtPoint,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::IntPoint const&,WTF::OptionSet<WebKit::WebEventModifier>,WebCore::ProcessQualified<WebKit::MonotonicObjectIdentifier<WebKit::TransactionIDType>>)>(IPC::Decoder *a1, uint64_t a2)
{
  result = IPC::Decoder::decode<std::tuple<WebCore::IntPoint,WTF::OptionSet<WebKit::WebEventModifier>,WebCore::ProcessQualified<WebKit::MonotonicObjectIdentifier<WebKit::TransactionIDType>>>>(&v4, a1);
  if (v7 == 1)
  {
    return WebKit::WebPage::handleDoubleTapForDoubleClickAtPoint(a2, &v4, v5, v6);
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebPage::SelectWithGesture,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::IntPoint const&,WebKit::GestureType,WebKit::GestureRecognizerState,BOOL,WTF::CompletionHandler<void ()(WebCore::IntPoint const&,WebKit::GestureType,WebKit::GestureRecognizerState,WTF::OptionSet<WebKit::SelectionFlags>)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, WebKit::WebPage *a3)
{
  v6 = IPC::Decoder::decode<WebCore::IntPoint>(a2);
  if ((v7 & 1) == 0 || (v8 = v6, v9 = IPC::Decoder::decode<WebKit::GestureType>(a2), (v9 & 0x100) == 0) || (v10 = v9, v11 = IPC::Decoder::decode<WebKit::GestureRecognizerState>(a2), (v11 & 0x100) == 0))
  {
LABEL_4:
    v12 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result)
    {
      v14 = v12 == 0;
    }

    else
    {
      v14 = 1;
    }

    if (!v14)
    {
      v25 = *(*result + 16);

      return v25();
    }

    return result;
  }

  v15 = *(a2 + 1);
  v16 = *(a2 + 2);
  v17 = *a2;
  if (v15 <= &v16[-*a2])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v26 = *(a2 + 3);
    if (v26)
    {
      if (v15)
      {
        (*(*v26 + 16))(v26);
        v15 = *(a2 + 1);
      }
    }

    else
    {
      v15 = 0;
    }

    goto LABEL_26;
  }

  *(a2 + 2) = v16 + 1;
  if (!v16)
  {
LABEL_26:
    *a2 = 0;
    *(a2 + 1) = 0;
    v27 = *(a2 + 3);
    if (v27)
    {
      if (v15)
      {
        (*(*v27 + 16))(v27);
        v17 = *a2;
        v15 = *(a2 + 1);
        goto LABEL_29;
      }
    }

    else
    {
      v15 = 0;
    }

    v17 = 0;
LABEL_29:
    *a2 = 0;
    *(a2 + 1) = 0;
    v28 = *(a2 + 3);
    if (v28 && v15)
    {
      (*(*v28 + 16))(v28, v17);
    }

    goto LABEL_4;
  }

  v18 = *v16;
  if (v18 >= 2)
  {
    goto LABEL_29;
  }

  v19 = v11;
  v30 = v8;
  v32 = 1;
  v31 = (v10 | (v11 << 8)) | (v18 << 16);
  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if (v20)
  {
    v21 = result;
    while (1)
    {
      v22 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v23 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v23, v22 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v23 == v22)
      {
        goto LABEL_19;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_19:
    v24 = WTF::fastMalloc(0x18);
    *v24 = &unk_1F10F4C58;
    v24[1] = v21;
    v24[2] = a1;
    v29 = v24;
    WebKit::WebPage::selectWithGesture(a3, &v30, v10, v19, v18 != 0, &v29);
    result = v29;
    v29 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebPage::UpdateSelectionWithTouches,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::IntPoint const&,WebKit::SelectionTouch,BOOL,WTF::CompletionHandler<void ()(WebCore::IntPoint const&,WebKit::SelectionTouch,WTF::OptionSet<WebKit::SelectionFlags>)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  v6 = IPC::Decoder::decode<WebCore::IntPoint>(a2);
  if (v7)
  {
    v8 = v6;
    result = IPC::Decoder::decode<WebKit::GestureRecognizerState>(a2);
    if ((result & 0x100) != 0)
    {
      v14 = *(a2 + 1);
      v15 = *(a2 + 2);
      v16 = *a2;
      if (v14 <= &v15[-*a2])
      {
        *a2 = 0;
        *(a2 + 1) = 0;
        v25 = *(a2 + 3);
        if (v25)
        {
          if (v14)
          {
            (*(*v25 + 16))(v25);
            v14 = *(a2 + 1);
          }
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        *(a2 + 2) = v15 + 1;
        if (v15)
        {
          v17 = *v15;
          if (v17 < 2)
          {
            v18 = result | ((v17 != 0) << 8);
            v19 = 0x100000000;
            goto LABEL_13;
          }

LABEL_29:
          *a2 = 0;
          *(a2 + 1) = 0;
          result = *(a2 + 3);
          if (result && v14)
          {
            result = (*(*result + 16))(result, v16);
          }

          v18 = 0;
          v19 = 0;
          v8 = 0;
LABEL_13:
          v10 = v19 | v18;
          if (((v19 | v18) & 0x100000000) != 0)
          {
            goto LABEL_14;
          }

          goto LABEL_4;
        }
      }

      *a2 = 0;
      *(a2 + 1) = 0;
      v26 = *(a2 + 3);
      if (v26)
      {
        if (v14)
        {
          (*(*v26 + 16))(v26);
          v16 = *a2;
          v14 = *(a2 + 1);
          goto LABEL_29;
        }
      }

      else
      {
        v14 = 0;
      }

      v16 = 0;
      goto LABEL_29;
    }
  }

  v8 = 0;
  v10 = 0;
LABEL_4:
  v11 = *a2;
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
    result = (*(*result + 16))(result, v11);
  }

LABEL_14:
  v28 = v8;
  v29 = v10;
  v30 = BYTE4(v10);
  if ((v10 & 0x100000000) != 0)
  {
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v20)
    {
      v21 = result;
      while (1)
      {
        v22 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v23 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v23, v22 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v23 == v22)
        {
          goto LABEL_21;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_21:
      v24 = WTF::fastMalloc(0x18);
      *v24 = &unk_1F10F4C80;
      v24[1] = v21;
      v24[2] = a1;
      v27 = v24;
      WebKit::WebPage::updateSelectionWithTouches(a3, &v28, v10, (v10 >> 8) & 1, &v27);
      result = v27;
      v27 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

void *IPC::handleMessageAsync<Messages::WebPage::SelectWithTwoTouches,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::IntPoint const&,WebCore::IntPoint const&,WebKit::GestureType,WebKit::GestureRecognizerState,WTF::CompletionHandler<void ()(WebCore::IntPoint const&,WebKit::GestureType,WebKit::GestureRecognizerState,WTF::OptionSet<WebKit::SelectionFlags>)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  v6 = IPC::Decoder::decode<WebCore::IntPoint>(a2);
  if (v7 & 1) != 0 && (v8 = v6, v9 = IPC::Decoder::decode<WebCore::IntPoint>(a2), (v10) && (v11 = v9, v12 = IPC::Decoder::decode<WebKit::GestureType>(a2), (v12 & 0x100) != 0) && (v13 = v12, v14 = IPC::Decoder::decode<WebKit::GestureRecognizerState>(a2), (v14 & 0x100) != 0))
  {
    v18 = v14;
    v25 = v8;
    v26 = v11;
    v27 = v13;
    v28 = v14;
    v29 = 1;
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v19)
    {
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
          goto LABEL_17;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_17:
      result = WTF::fastMalloc(0x18);
      *result = &unk_1F10F4CA8;
      result[1] = v20;
      result[2] = a1;
      v24 = result;
      if (v29)
      {
        WebKit::WebPage::selectWithTwoTouches(a3, &v25, &v26, v13, v18, &v24);
        result = v24;
        v24 = 0;
        if (result)
        {
          return (*(*result + 8))(result);
        }
      }

      else
      {
        __break(1u);
      }
    }
  }

  else
  {
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
      v23 = *(*result + 16);

      return v23();
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebPage::ExtendSelection,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::TextGranularity,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, uint64_t *a2, WebKit::WebPage *a3)
{
  v6 = IPC::Decoder::decode<WebCore::TextGranularity>(a2);
  if ((v6 & 0x100) != 0)
  {
    v7 = v6;
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
      *v13 = &unk_1F10F4CD0;
      v13[1] = v10;
      v13[2] = a1;
      v17 = v13;
      WebKit::WebPage::extendSelection(a3, v7, &v17);
      result = v17;
      v17 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  else
  {
    v14 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    result = a2[3];
    if (result)
    {
      v15 = v14 == 0;
    }

    else
    {
      v15 = 1;
    }

    if (!v15)
    {
      v16 = *(*result + 16);

      return v16();
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebPage::ExtendSelectionForReplacement,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
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
    *v10 = &unk_1F10F4CF8;
    v10[1] = v7;
    v10[2] = a1;
    v11 = v10;
    WebKit::WebPage::extendSelectionForReplacement(a3, &v11);
    result = v11;
    v11 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebPage::MoveSelectionByOffset,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(int,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<int>>(a2);
  if ((result & 0x100000000) != 0)
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
      *v12 = &unk_1F10F4D20;
      v12[1] = v9;
      v12[2] = a1;
      v13 = v12;
      WebKit::WebPage::moveSelectionByOffset(a3, v7, &v13);
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

uint64_t IPC::handleMessageAsync<Messages::WebPage::SelectTextWithGranularityAtPoint,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::IntPoint const&,WebCore::TextGranularity,BOOL,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  v6 = IPC::Decoder::decode<WebCore::IntPoint>(a2);
  if (v7)
  {
    v8 = v6;
    result = IPC::Decoder::decode<WebCore::TextGranularity>(a2);
    if ((result & 0x100) != 0)
    {
      v14 = *(a2 + 1);
      v15 = *(a2 + 2);
      v16 = *a2;
      if (v14 <= &v15[-*a2])
      {
        *a2 = 0;
        *(a2 + 1) = 0;
        v25 = *(a2 + 3);
        if (v25)
        {
          if (v14)
          {
            (*(*v25 + 16))(v25);
            v14 = *(a2 + 1);
          }
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        *(a2 + 2) = v15 + 1;
        if (v15)
        {
          v17 = *v15;
          if (v17 < 2)
          {
            v18 = result | ((v17 != 0) << 8);
            v19 = 0x100000000;
            goto LABEL_13;
          }

LABEL_29:
          *a2 = 0;
          *(a2 + 1) = 0;
          result = *(a2 + 3);
          if (result && v14)
          {
            result = (*(*result + 16))(result, v16);
          }

          v18 = 0;
          v19 = 0;
          v8 = 0;
LABEL_13:
          v10 = v19 | v18;
          if (((v19 | v18) & 0x100000000) != 0)
          {
            goto LABEL_14;
          }

          goto LABEL_4;
        }
      }

      *a2 = 0;
      *(a2 + 1) = 0;
      v26 = *(a2 + 3);
      if (v26)
      {
        if (v14)
        {
          (*(*v26 + 16))(v26);
          v16 = *a2;
          v14 = *(a2 + 1);
          goto LABEL_29;
        }
      }

      else
      {
        v14 = 0;
      }

      v16 = 0;
      goto LABEL_29;
    }
  }

  v8 = 0;
  v10 = 0;
LABEL_4:
  v11 = *a2;
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
    result = (*(*result + 16))(result, v11);
  }

LABEL_14:
  v28 = v8;
  v29 = v10;
  v30 = BYTE4(v10);
  if ((v10 & 0x100000000) != 0)
  {
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v20)
    {
      v21 = result;
      while (1)
      {
        v22 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v23 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v23, v22 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v23 == v22)
        {
          goto LABEL_21;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_21:
      v24 = WTF::fastMalloc(0x18);
      *v24 = &unk_1F10F4D48;
      v24[1] = v21;
      v24[2] = a1;
      v27 = v24;
      WebKit::WebPage::selectTextWithGranularityAtPoint(a3, &v28, v10, BYTE1(v10) & 1, &v27);
      result = v27;
      v27 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebPage::SelectPositionAtBoundaryWithDirection,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::IntPoint const&,WebCore::TextGranularity,WebCore::SelectionDirection,BOOL,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, const WebCore::LocalFrame *a3)
{
  v6 = IPC::Decoder::decode<WebCore::IntPoint>(a2);
  if ((v7 & 1) == 0 || (v8 = v6, v9 = IPC::Decoder::decode<WebCore::TextGranularity>(a2), (v9 & 0x100) == 0) || (v10 = v9, v11 = IPC::Decoder::decode<WebCore::VideoCodecType>(a2), v11 < 0x100u))
  {
LABEL_4:
    v12 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result)
    {
      v14 = v12 == 0;
    }

    else
    {
      v14 = 1;
    }

    if (!v14)
    {
      v25 = *(*result + 16);

      return v25();
    }

    return result;
  }

  v15 = *(a2 + 1);
  v16 = *(a2 + 2);
  v17 = *a2;
  if (v15 <= &v16[-*a2])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v26 = *(a2 + 3);
    if (v26)
    {
      if (v15)
      {
        (*(*v26 + 16))(v26);
        v15 = *(a2 + 1);
      }
    }

    else
    {
      v15 = 0;
    }

    goto LABEL_26;
  }

  *(a2 + 2) = v16 + 1;
  if (!v16)
  {
LABEL_26:
    *a2 = 0;
    *(a2 + 1) = 0;
    v27 = *(a2 + 3);
    if (v27)
    {
      if (v15)
      {
        (*(*v27 + 16))(v27);
        v17 = *a2;
        v15 = *(a2 + 1);
        goto LABEL_29;
      }
    }

    else
    {
      v15 = 0;
    }

    v17 = 0;
LABEL_29:
    *a2 = 0;
    *(a2 + 1) = 0;
    v28 = *(a2 + 3);
    if (v28 && v15)
    {
      (*(*v28 + 16))(v28, v17);
    }

    goto LABEL_4;
  }

  v18 = *v16;
  if (v18 >= 2)
  {
    goto LABEL_29;
  }

  v19 = v11;
  v30 = v8;
  v32 = 1;
  v31 = (v10 | (v11 << 8)) | (v18 << 16);
  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if (v20)
  {
    v21 = result;
    while (1)
    {
      v22 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v23 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v23, v22 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v23 == v22)
      {
        goto LABEL_19;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_19:
    v24 = WTF::fastMalloc(0x18);
    *v24 = &unk_1F10F4D70;
    v24[1] = v21;
    v24[2] = a1;
    v29 = v24;
    WebKit::WebPage::selectPositionAtBoundaryWithDirection(a3, &v30, v10, v19, v18 != 0, &v29);
    result = v29;
    v29 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebPage::MoveSelectionAtBoundaryWithDirection,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::TextGranularity,WebCore::SelectionDirection,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, uint64_t *a2, uint64_t a3)
{
  v6 = IPC::Decoder::decode<WebCore::TextGranularity>(a2);
  if ((v6 & 0x100) != 0 && (v11 = v6, v12 = IPC::Decoder::decode<WebCore::VideoCodecType>(a2), v12 > 0xFFu))
  {
    v13 = v12;
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v14)
    {
      v15 = result;
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
          goto LABEL_16;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_16:
      v18 = WTF::fastMalloc(0x18);
      *v18 = &unk_1F10F4D98;
      v18[1] = v15;
      v18[2] = a1;
      v19 = v18;
      WebKit::WebPage::moveSelectionAtBoundaryWithDirection(a3, v11, v13, &v19);
      result = v19;
      v19 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  else
  {
    v7 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    result = a2[3];
    if (result)
    {
      v9 = v7 == 0;
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

uint64_t IPC::handleMessageAsync<Messages::WebPage::SelectPositionAtPoint,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::IntPoint const&,BOOL,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  v6 = IPC::Decoder::decode<WebCore::IntPoint>(a2);
  if ((v7 & 1) == 0)
  {
LABEL_19:
    v21 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result)
    {
      v22 = v21 == 0;
    }

    else
    {
      v22 = 1;
    }

    if (!v22)
    {
      v23 = *(*result + 16);

      return v23();
    }

    return result;
  }

  v8 = *(a2 + 1);
  v9 = *(a2 + 2);
  v10 = *a2;
  if (v8 <= &v9[-*a2])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v18 = *(a2 + 3);
    if (v18)
    {
      if (v8)
      {
        (*(*v18 + 16))(v18);
        v8 = *(a2 + 1);
      }
    }

    else
    {
      v8 = 0;
    }

    goto LABEL_15;
  }

  *(a2 + 2) = v9 + 1;
  if (!v9)
  {
LABEL_15:
    *a2 = 0;
    *(a2 + 1) = 0;
    v19 = *(a2 + 3);
    if (v19)
    {
      if (v8)
      {
        (*(*v19 + 16))(v19);
        v10 = *a2;
        v8 = *(a2 + 1);
        goto LABEL_18;
      }
    }

    else
    {
      v8 = 0;
    }

    v10 = 0;
LABEL_18:
    *a2 = 0;
    *(a2 + 1) = 0;
    v20 = *(a2 + 3);
    if (v20 && v8)
    {
      (*(*v20 + 16))(v20, v10);
    }

    goto LABEL_19;
  }

  v11 = *v9;
  if (v11 >= 2)
  {
    goto LABEL_18;
  }

  v25 = v6;
  v26 = v11;
  v27 = 1;
  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if (v13)
  {
    v14 = result;
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
        goto LABEL_11;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_11:
    v17 = WTF::fastMalloc(0x18);
    *v17 = &unk_1F10F4DC0;
    v17[1] = v14;
    v17[2] = a1;
    v24 = v17;
    WebKit::WebPage::selectPositionAtPoint(a3, &v25, v11 & 1, &v24);
    result = v24;
    v24 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebPage::BeginSelectionInDirection,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::SelectionDirection,WTF::CompletionHandler<void ()(BOOL)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  v6 = IPC::Decoder::decode<WebCore::VideoCodecType>(a2);
  if (v6 <= 0xFFu)
  {
    v14 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result)
    {
      v15 = v14 == 0;
    }

    else
    {
      v15 = 1;
    }

    if (!v15)
    {
      v16 = *(*result + 16);

      return v16();
    }
  }

  else
  {
    v7 = v6;
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
      *v13 = &unk_1F10F4DE8;
      v13[1] = v10;
      v13[2] = a1;
      v17 = v13;
      WebKit::WebPage::beginSelectionInDirection(a3, v7, &v17);
      result = v17;
      v17 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebPage::UpdateSelectionWithExtentPoint,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::IntPoint const&,BOOL,WebKit::RespectSelectionAnchor,WTF::CompletionHandler<void ()(BOOL)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<WebCore::IntPoint>(a2);
  if (v7)
  {
    v8 = *(a2 + 1);
    v9 = *(a2 + 2);
    v10 = *a2;
    if (v8 <= &v9[-*a2])
    {
      *a2 = 0;
      *(a2 + 1) = 0;
      v18 = *(a2 + 3);
      if (v18)
      {
        if (v8)
        {
          (*(*v18 + 16))(v18);
          v8 = *(a2 + 1);
        }
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v11 = v9 + 1;
      *(a2 + 2) = v9 + 1;
      if (v9)
      {
        v12 = *v9;
        if (v12 < 2)
        {
          if (v8 <= &v11[-v10])
          {
            v29 = 0;
            v30 = 0;
            *a2 = 0;
            *(a2 + 1) = 0;
            v31 = *(a2 + 3);
            if (v31)
            {
              (*(*v31 + 16))(v31);
              v30 = *a2;
              v29 = *(a2 + 1);
            }
          }

          else
          {
            *(a2 + 2) = v9 + 2;
            if (v9 != -1)
            {
              v13 = *v11;
              if (v13 < 2)
              {
                v14 = result;
                v15 = v12 | (v13 << 8);
                v16 = 0x100000000;
                goto LABEL_9;
              }

LABEL_37:
              *a2 = 0;
              *(a2 + 1) = 0;
              result = *(a2 + 3);
              if (result && v8)
              {
                (*(*result + 16))(result, v10);
                v15 = 0;
                result = *(a2 + 3);
                v33 = *a2;
                v34 = *(a2 + 1);
                *a2 = 0;
                *(a2 + 1) = 0;
                v16 = 0;
                v14 = 0;
                if (!result || !v34)
                {
LABEL_9:
                  v17 = v16 | v15;
                  if (((v16 | v15) & 0x100000000) != 0)
                  {
                    goto LABEL_23;
                  }

                  goto LABEL_18;
                }

                result = (*(*result + 16))(result, v33);
              }

              v15 = 0;
              v16 = 0;
              v14 = 0;
              goto LABEL_9;
            }

            v29 = v8;
            v30 = v10;
          }

          *a2 = 0;
          *(a2 + 1) = 0;
          v32 = *(a2 + 3);
          if (v32 && v29)
          {
            (*(*v32 + 16))(v32, v30, v29);
            v10 = *a2;
            v8 = *(a2 + 1);
          }

          else
          {
            v8 = 0;
            v10 = 0;
          }

          goto LABEL_37;
        }

        goto LABEL_16;
      }
    }

    *a2 = 0;
    *(a2 + 1) = 0;
    v19 = *(a2 + 3);
    if (v19)
    {
      if (v8)
      {
        (*(*v19 + 16))(v19);
        v10 = *a2;
        v8 = *(a2 + 1);
        goto LABEL_16;
      }
    }

    else
    {
      v8 = 0;
    }

    v10 = 0;
LABEL_16:
    *a2 = 0;
    *(a2 + 1) = 0;
    v20 = *(a2 + 3);
    if (v20 && v8)
    {
      (*(*v20 + 16))(v20, v10);
    }
  }

  v14 = 0;
  v17 = 0;
LABEL_18:
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
    result = (*(*result + 16))(result, v21);
  }

LABEL_23:
  v36 = v14;
  v37 = v17;
  v38 = BYTE4(v17);
  if ((v17 & 0x100000000) != 0)
  {
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v24)
    {
      v25 = result;
      while (1)
      {
        v26 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v27 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v27, v26 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v27 == v26)
        {
          goto LABEL_30;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_30:
      v28 = WTF::fastMalloc(0x18);
      *v28 = &unk_1F10F4E10;
      v28[1] = v25;
      v28[2] = a1;
      v35 = v28;
      WebKit::WebPage::updateSelectionWithExtentPoint(a3, &v36, v17 & 1, (v17 >> 8) & 1, &v35);
      result = v35;
      v35 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebPage::UpdateSelectionWithExtentPointAndBoundary,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::IntPoint const&,WebCore::TextGranularity,BOOL,WebKit::TextInteractionSource,WTF::CompletionHandler<void ()(BOOL)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  v6 = IPC::Decoder::decode<WebCore::IntPoint>(a2);
  if ((v7 & 1) == 0 || (v8 = v6, v9 = IPC::Decoder::decode<WebCore::TextGranularity>(a2), (v9 & 0x100) == 0))
  {
LABEL_28:
    v30 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result)
    {
      v31 = v30 == 0;
    }

    else
    {
      v31 = 1;
    }

    if (!v31)
    {
      v32 = *(*result + 16);

      return v32();
    }

    return result;
  }

  v10 = *(a2 + 1);
  v11 = *(a2 + 2);
  v12 = *a2;
  if (v10 <= &v11[-*a2])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v23 = *(a2 + 3);
    if (v23)
    {
      if (v10)
      {
        (*(*v23 + 16))(v23);
        v10 = *(a2 + 1);
      }
    }

    else
    {
      v10 = 0;
    }

LABEL_19:
    *a2 = 0;
    *(a2 + 1) = 0;
    v24 = *(a2 + 3);
    if (v24)
    {
      if (v10)
      {
        (*(*v24 + 16))(v24);
LABEL_42:
        v12 = *a2;
        v10 = *(a2 + 1);
        goto LABEL_27;
      }

LABEL_26:
      v12 = 0;
      goto LABEL_27;
    }

LABEL_25:
    v10 = 0;
    goto LABEL_26;
  }

  v13 = v11 + 1;
  *(a2 + 2) = v11 + 1;
  if (!v11)
  {
    goto LABEL_19;
  }

  v14 = *v11;
  if (v14 >= 2)
  {
LABEL_27:
    *a2 = 0;
    *(a2 + 1) = 0;
    v29 = *(a2 + 3);
    if (v29 && v10)
    {
      (*(*v29 + 16))(v29, v12);
    }

    goto LABEL_28;
  }

  if (v10 <= &v13[-v12])
  {
    v25 = 0;
    v26 = 0;
    *a2 = 0;
    *(a2 + 1) = 0;
    v27 = *(a2 + 3);
    if (v27)
    {
      (*(*v27 + 16))(v27);
      v26 = *a2;
      v25 = *(a2 + 1);
    }

LABEL_24:
    *a2 = 0;
    *(a2 + 1) = 0;
    v28 = *(a2 + 3);
    if (v28 && v25)
    {
      (*(*v28 + 16))(v28, v26, v25);
      goto LABEL_42;
    }

    goto LABEL_25;
  }

  *(a2 + 2) = v11 + 2;
  if (v11 == -1)
  {
    v25 = v10;
    v26 = v12;
    goto LABEL_24;
  }

  v15 = *v13;
  if ((v15 - 1) >= 2u)
  {
    goto LABEL_27;
  }

  v16 = v9;
  v34 = v8;
  v36 = 1;
  v35 = v9 | (v15 << 16) | (v14 << 8);
  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if (v18)
  {
    v19 = result;
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
        goto LABEL_15;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_15:
    v22 = WTF::fastMalloc(0x18);
    *v22 = &unk_1F10F4E38;
    v22[1] = v19;
    v22[2] = a1;
    v33 = v22;
    WebKit::WebPage::updateSelectionWithExtentPointAndBoundary(a3, &v34, v16, v14 != 0, v15, &v33);
    result = v33;
    v33 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebPage::RequestRVItemInCurrentSelectedRange,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::CompletionHandler<void ()(WebKit::RevealItem const&)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
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
    *v10 = &unk_1F10F4E60;
    v10[1] = v7;
    v10[2] = a1;
    v11 = v10;
    WebKit::WebPage::requestRVItemInCurrentSelectedRange(a3, &v11);
    result = v11;
    v11 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebPage::PrepareSelectionForContextMenuWithLocationInView,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::IntPoint,WTF::CompletionHandler<void ()(BOOL,WebKit::RevealItem const&)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, WebCore::Page **a3)
{
  result = IPC::Decoder::decode<std::tuple<WebCore::IntPoint>>(a2);
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
      *v13 = &unk_1F10F4E88;
      v13[1] = v10;
      v13[2] = a1;
      v14 = v13;
      WebKit::WebPage::prepareSelectionForContextMenuWithLocationInView(a3, v8, &v14);
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

WTF::StringImpl *IPC::handleMessage<Messages::WebPage::ReplaceDictatedText,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::String const&,WTF::String const&)>(IPC::Decoder *a1, WebKit::WebPage *a2)
{
  result = IPC::Decoder::decode<std::tuple<WTF::String,WTF::String>>(a1, &v6);
  if (v8 == 1)
  {
    result = WebKit::WebPage::replaceDictatedText(a2, &v6, &v7);
    if (v8)
    {
      v5 = v7;
      v7 = 0;
      if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, v4);
      }

      result = v6;
      v6 = 0;
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

WTF::StringImpl *IPC::handleMessage<Messages::WebPage::ReplaceSelectedText,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::String const&,WTF::String const&)>(IPC::Decoder *a1, WebKit::WebPage *a2)
{
  result = IPC::Decoder::decode<std::tuple<WTF::String,WTF::String>>(a1, &v6);
  if (v8 == 1)
  {
    result = WebKit::WebPage::replaceSelectedText(a2, &v6, &v7);
    if (v8)
    {
      v5 = v7;
      v7 = 0;
      if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, v4);
      }

      result = v6;
      v6 = 0;
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

WTF::StringImpl *IPC::handleMessageAsync<Messages::WebPage::RequestAutocorrectionData,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::String const&,WTF::CompletionHandler<void ()(WebKit::WebAutocorrectionData)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
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
      *result = &unk_1F10F4EB0;
      *(result + 1) = v8;
      *(result + 2) = a1;
      v13 = result;
      if ((v15 & 1) == 0)
      {
        __break(1u);
        return result;
      }

      WebKit::WebPage::requestAutocorrectionData(a3, &v14, &v13);
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

WTF::StringImpl *IPC::handleMessageAsync<Messages::WebPage::ApplyAutocorrection,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::String const&,WTF::String const&,BOOL,WTF::CompletionHandler<void ()(WTF::String const&)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<WTF::String,WTF::String,BOOL>>(&v15, a2);
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
    *v12 = &unk_1F10F4ED8;
    *(v12 + 1) = v9;
    *(v12 + 2) = a1;
    v14 = v12;
    WebKit::WebPage::applyAutocorrection(a3, &v15, &v16, v17, &v14);
    result = v14;
    v14 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    if (v18)
    {
LABEL_11:
      v13 = v16;
      v16 = 0;
      if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v8);
      }

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

uint64_t IPC::handleMessageAsync<Messages::WebPage::RequestEvasionRectsAboveSelection,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::CompletionHandler<void ()(WTF::Vector<WebCore::FloatRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
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
    *v10 = &unk_1F10F4F00;
    v10[1] = v7;
    v10[2] = a1;
    v11 = v10;
    WebKit::WebPage::requestEvasionRectsAboveSelection(a3, &v11);
    result = v11;
    v11 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void IPC::handleMessage<Messages::WebPage::RequestPositionInformation,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebKit::InteractionInformationRequest const&)>(IPC::Decoder *a1, WebKit::WebPage *a2)
{
  IPC::ArgumentCoder<WebKit::InteractionInformationRequest,void>::decode(a1, &v10);
  if (v11)
  {
    goto LABEL_2;
  }

  v4 = *a1;
  v5 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  v6 = *(a1 + 3);
  if (!v6)
  {
    v5 = 0;
LABEL_6:
    v7 = 0;
    goto LABEL_7;
  }

  if (!v5)
  {
    goto LABEL_6;
  }

  (*(*v6 + 16))(v6, v4);
  if (v11)
  {
LABEL_2:
    v8 = v10;
    v9 = 1;
    WebKit::WebPage::requestPositionInformation(a2, &v8);
    return;
  }

  v7 = *a1;
  v5 = *(a1 + 1);
  v6 = *(a1 + 3);
LABEL_7:
  *a1 = 0;
  *(a1 + 1) = 0;
  if (v6)
  {
    if (v5)
    {
      (*(*v6 + 16))(v6, v7);
    }
  }
}

uint64_t *IPC::handleMessage<Messages::WebPage::StartInteractionWithElementContextOrPosition,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(std::optional<WebCore::ElementContext> &&,WebCore::IntPoint &&)>(uint64_t *a1, WebKit::WebPage *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  IPC::ArgumentCoder<std::optional<WebCore::ElementContext>,void>::decode<IPC::Decoder>(a1, v16);
  if ((v17 & 1) != 0 || ((v7 = *a1, v8 = a1[1], *a1 = 0, a1[1] = 0, (v9 = a1[3]) != 0) ? (v10 = v8 == 0) : (v10 = 1), !v10 && ((*(*v9 + 16))(v9, v7), (v17))) && (v4 = IPC::Decoder::decode<WebCore::IntPoint>(a1), (v5))
  {
    if ((v17 & 1) == 0)
    {
      __break(1u);
    }

    v13[2] = v16[2];
    v13[3] = v16[3];
    v13[4] = v16[4];
    v13[5] = v16[5];
    v13[0] = v16[0];
    v13[1] = v16[1];
    v14 = v4;
    v15 = 1;
    return WebKit::WebPage::startInteractionWithElementContextOrPosition(a2, v13, &v14);
  }

  else
  {
    v11 = *a1;
    v12 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    result = a1[3];
    if (result && v12)
    {
      return (*(*result + 16))(result, v11);
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::WebPage::PerformActionOnElement,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(unsigned int,WTF::String const&,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  IPC::ArgumentCoder<std::tuple<unsigned int,WTF::String>,void>::decode<IPC::Decoder>(a2, &v14);
  if (v16 & 1) != 0 || ((v7 = *a2, v11 = *(a2 + 1), *a2 = 0, *(a2 + 1) = 0, (result = *(a2 + 3)) != 0) ? (v12 = v11 == 0) : (v12 = 1), !v12 && (result = (*(*result + 16))(result, v7), (v16)))
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
      *result = &unk_1F10F4F28;
      *(result + 1) = v8;
      *(result + 2) = a1;
      v13 = result;
      if ((v16 & 1) == 0)
      {
        __break(1u);
        return result;
      }

      WebKit::WebPage::performActionOnElement(a3, v14, &v15, &v13);
      result = v13;
      v13 = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }
    }
  }

  if (v16 == 1)
  {
    result = v15;
    v15 = 0;
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

WTF *IPC::handleMessage<Messages::WebPage::PerformActionOnElements,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(unsigned int,WTF::Vector<WebCore::ElementContext,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)>(IPC::Decoder *a1, uint64_t a2)
{
  v4 = *(a1 + 1);
  v5 = ((*(a1 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v6 = v5 - *a1;
  v7 = v4 >= v6;
  v8 = v4 - v6;
  if (!v7 || v8 <= 3)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v18 = *(a1 + 3);
    if (v18)
    {
      if (v4)
      {
        (*(*v18 + 16))(v18);
        v4 = *(a1 + 1);
      }
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_21;
  }

  *(a1 + 2) = v5 + 1;
  if (!v5)
  {
LABEL_21:
    *a1 = 0;
    *(a1 + 1) = 0;
    v19 = *(a1 + 3);
    if (v19 && v4)
    {
      (*(*v19 + 16))(v19);
    }

    goto LABEL_13;
  }

  v10 = *v5;
  IPC::VectorArgumentCoder<false,WebCore::ElementContext,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a1, v23);
  if ((v24 & 1) == 0)
  {
    v13 = *a1;
    v14 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v15 = *(a1 + 3);
    if (!v15 || !v14 || ((*(*v15 + 16))(v15, v13), (v24 & 1) == 0))
    {
LABEL_13:
      v16 = *a1;
      v17 = *(a1 + 1);
      *a1 = 0;
      *(a1 + 1) = 0;
      result = *(a1 + 3);
      if (result)
      {
        if (v17)
        {
          return (*(*result + 16))(result, v16);
        }
      }

      return result;
    }
  }

  v20 = v23[0];
  v21 = v23[1];
  v22 = 1;
  result = WebKit::WebPage::performActionOnElements(a2, v10, &v20);
  if (v22)
  {
    result = v20;
    if (v20)
    {
      v20 = 0;
      LODWORD(v21) = 0;
      return WTF::fastFree(result, v12);
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebPage::FocusNextFocusedElement,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(BOOL,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
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
      *v12 = &unk_1F10F4F50;
      v12[1] = v9;
      v12[2] = a1;
      v13 = v12;
      WebKit::WebPage::focusNextFocusedElement(a3, v7 & 1, &v13);
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

WTF::StringImpl *IPC::handleMessage<Messages::WebPage::AutofillLoginCredentials,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::String const&,WTF::String const&)>(IPC::Decoder *a1, uint64_t a2)
{
  result = IPC::Decoder::decode<std::tuple<WTF::String,WTF::String>>(a1, &v6);
  if (v8 == 1)
  {
    result = WebKit::WebPage::autofillLoginCredentials(a2, &v6, &v7);
    if (v8)
    {
      v5 = v7;
      v7 = 0;
      if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, v4);
      }

      result = v6;
      v6 = 0;
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

WTF::StringImpl *IPC::handleMessage<Messages::WebPage::SetFocusedElementValue,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::ElementContext const&,WTF::String const&)>(IPC::Decoder *a1, WebKit::WebPage *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  IPC::Decoder::decode<WebCore::ElementContext>(a1, v17);
  if (v18)
  {
    IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a1, &v12);
    if ((v13 & 1) == 0)
    {
      goto LABEL_10;
    }

    while ((v18 & 1) == 0)
    {
      __break(1u);
LABEL_10:
      v6 = *a1;
      v7 = *(a1 + 1);
      *a1 = 0;
      *(a1 + 1) = 0;
      v8 = *(a1 + 3);
      if (v8)
      {
        if (v7)
        {
          (*(*v8 + 16))(v8, v6);
          if (v13)
          {
            continue;
          }
        }
      }

      goto LABEL_11;
    }

    v14[2] = v17[2];
    v14[3] = v17[3];
    v14[4] = v17[4];
    v14[0] = v17[0];
    v14[1] = v17[1];
    v15 = v12;
    v16 = 1;
    result = WebKit::WebPage::setFocusedElementValue(a2, v14, &v15);
    if (v16)
    {
      result = v15;
      v15 = 0;
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
LABEL_11:
    v9 = *a1;
    v10 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
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
      return (*(*result + 16))(result, v9);
    }
  }

  return result;
}

uint64_t IPC::handleMessage<Messages::WebPage::SetFocusedElementSelectedIndex,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::ElementContext const&,unsigned int,BOOL)>(IPC::Decoder *a1, WebKit::WebPage *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  IPC::Decoder::decode<WebCore::ElementContext>(a1, v25);
  if (v26 == 1)
  {
    v4 = *(a1 + 1);
    v5 = ((*(a1 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = v4 >= v7;
    v9 = v4 - v7;
    if (v8 && v9 > 3)
    {
      v11 = (v5 + 1);
      *(a1 + 2) = v5 + 1;
      if (!v5)
      {
LABEL_16:
        *a1 = 0;
        *(a1 + 1) = 0;
        v17 = *(a1 + 3);
        if (v17 && v4)
        {
          (*(*v17 + 16))(v17);
        }

        goto LABEL_17;
      }

      if (v4 <= &v11[-v6])
      {
        *a1 = 0;
        *(a1 + 1) = 0;
        v15 = *(a1 + 3);
        if (v15)
        {
          if (v4)
          {
            (*(*v15 + 16))(v15);
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
        v12 = *v5;
        *(a1 + 2) = v5 + 5;
        if (v5 != -4)
        {
          v13 = *v11;
          if (v13 < 2)
          {
            v21[2] = v25[2];
            v21[3] = v25[3];
            v21[4] = v25[4];
            v21[0] = v25[0];
            v21[1] = v25[1];
            v22 = v12;
            v23 = v13;
            v24 = 1;
            return WebKit::WebPage::setFocusedElementSelectedIndex(a2, v21);
          }

          goto LABEL_16;
        }
      }
    }

    *a1 = 0;
    *(a1 + 1) = 0;
    v16 = *(a1 + 3);
    if (v16)
    {
      if (v4)
      {
        (*(*v16 + 16))(v16);
        v4 = *(a1 + 1);
      }
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_16;
  }

LABEL_17:
  v18 = *a1;
  v19 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  result = *(a1 + 3);
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
    return (*(*result + 16))(result, v18);
  }

  return result;
}

WTF::StringImpl *IPC::handleMessage<Messages::WebPage::ContentSizeCategoryDidChange,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::String const&)>(IPC::Decoder *a1, WebKit::WebPage *a2)
{
  result = IPC::Decoder::decode<std::tuple<WTF::String>>(a1, &v5);
  if (v6 == 1)
  {
    result = WebKit::WebPage::contentSizeCategoryDidChange(a2, &v5);
    if (v6)
    {
      result = v5;
      v5 = 0;
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

uint64_t IPC::handleMessageAsync<Messages::WebPage::GetSelectionContext,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::CompletionHandler<void ()(WTF::String const&,WTF::String const&,WTF::String const&)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
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
    *v10 = &unk_1F10F4F78;
    v10[1] = v7;
    v10[2] = a1;
    v11 = v10;
    WebKit::WebPage::getSelectionContext(a3, &v11);
    result = v11;
    v11 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

_DWORD *IPC::handleMessage<Messages::WebPage::HandleTwoFingerTapAtPoint,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::IntPoint const&,WTF::OptionSet<WebKit::WebEventModifier>,WTF::ObjectIdentifierGeneric<WebKit::TapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>)>(IPC::Decoder *a1, uint64_t a2)
{
  v4 = IPC::Decoder::decode<WebCore::IntPoint>(a1);
  if (v5 & 1) != 0 && (v6 = v4, v7 = IPC::Decoder::decode<WTF::OptionSet<WebKit::WebEventModifier>>(a1), (v7 & 0x100) != 0) && (v8 = v7, v9 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1), (v10))
  {
    v15 = v6;
    v16 = v8;
    v17 = v9;
    v18 = 1;
    return WebKit::WebPage::handleTwoFingerTapAtPoint(a2, &v15, v8, v9);
  }

  else
  {
    v12 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
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

uint64_t IPC::handleMessageAsync<Messages::WebPage::GetRectsForGranularityWithSelectionOffset,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::TextGranularity,int,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::SelectionGeometry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)> &&)>(atomic_ullong *a1, uint64_t *a2, uint64_t a3)
{
  v6 = IPC::Decoder::decode<WebCore::TextGranularity>(a2);
  if ((v6 & 0x100) == 0)
  {
LABEL_2:
    v7 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    result = a2[3];
    if (result)
    {
      v9 = v7 == 0;
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

    return result;
  }

  v11 = a2[1];
  v12 = ((a2[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v13 = v12 - *a2;
  v14 = v11 >= v13;
  v15 = v11 - v13;
  if (!v14 || v15 <= 3)
  {
    *a2 = 0;
    a2[1] = 0;
    v24 = a2[3];
    if (v24)
    {
      if (v11)
      {
        (*(*v24 + 16))(v24);
        v11 = a2[1];
      }
    }

    else
    {
      v11 = 0;
    }

    goto LABEL_26;
  }

  a2[2] = (v12 + 1);
  if (!v12)
  {
LABEL_26:
    *a2 = 0;
    a2[1] = 0;
    v25 = a2[3];
    if (v25 && v11)
    {
      (*(*v25 + 16))(v25);
    }

    goto LABEL_2;
  }

  v17 = v6;
  v18 = *v12;
  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if (v19)
  {
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
        goto LABEL_21;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_21:
    v23 = WTF::fastMalloc(0x18);
    *v23 = &unk_1F10F4FA0;
    v23[1] = v20;
    v23[2] = a1;
    v26 = v23;
    WebKit::WebPage::getRectsForGranularityWithSelectionOffset(a3, v17, v18, &v26);
    result = v26;
    v26 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::WebPage::GetRectsAtSelectionOffsetWithText,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(int,WTF::String const&,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::SelectionGeometry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  IPC::ArgumentCoder<std::tuple<unsigned int,WTF::String>,void>::decode<IPC::Decoder>(a2, &v14);
  if (v16 & 1) != 0 || ((v7 = *a2, v11 = *(a2 + 1), *a2 = 0, *(a2 + 1) = 0, (result = *(a2 + 3)) != 0) ? (v12 = v11 == 0) : (v12 = 1), !v12 && (result = (*(*result + 16))(result, v7), (v16)))
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
      *result = &unk_1F10F4FC8;
      *(result + 1) = v8;
      *(result + 2) = a1;
      v13 = result;
      if ((v16 & 1) == 0)
      {
        __break(1u);
        return result;
      }

      WebKit::WebPage::getRectsAtSelectionOffsetWithText(a3, v14, &v15, &v13);
      result = v13;
      v13 = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }
    }
  }

  if (v16 == 1)
  {
    result = v15;
    v15 = 0;
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

uint64_t IPC::handleMessageAsync<Messages::WebPage::RequestFocusedElementInformation,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::CompletionHandler<void ()(std::optional<WebKit::FocusedElementInformation> const&)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, WebKit::WebPage *a3)
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
    *v10 = &unk_1F10F4FF0;
    v10[1] = v7;
    v10[2] = a1;
    v11 = v10;
    WebKit::WebPage::requestFocusedElementInformation(a3, &v11);
    result = v11;
    v11 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void *IPC::handleMessageAsync<Messages::WebPage::UpdateSelectionWithDelta,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(long long,long long,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *this, uint64_t a3)
{
  v6 = IPC::Decoder::decode<long long>(this);
  if (v7 & 1) != 0 && (v8 = v6, v9 = IPC::Decoder::decode<long long>(this), (v10))
  {
    v11 = v9;
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(this);
    if (v13)
    {
      v14 = result;
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
          goto LABEL_16;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_16:
      v20 = WTF::fastMalloc(0x18);
      *v20 = &unk_1F10F5018;
      v20[1] = v14;
      v20[2] = a1;
      v21 = v20;
      WebKit::WebPage::updateSelectionWithDelta(a3, v8, v11, &v21);
      result = v21;
      v21 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  else
  {
    v17 = *(this + 1);
    *this = 0;
    *(this + 1) = 0;
    result = *(this + 3);
    if (result)
    {
      v18 = v17 == 0;
    }

    else
    {
      v18 = 1;
    }

    if (!v18)
    {
      v19 = *(*result + 16);

      return v19();
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebPage::RequestDocumentEditingContext,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebKit::DocumentEditingContextRequest &&,WTF::CompletionHandler<void ()(WebKit::DocumentEditingContext &&)> &&)>(atomic_ullong *a1, uint64_t *a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  IPC::ArgumentCoder<WebKit::DocumentEditingContextRequest,void>::decode(a2, v17);
  if ((v18 & 1) == 0)
  {
    v12 = *a2;
    v13 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    result = a2[3];
    if (result)
    {
      if (v13)
      {
        (*(*result + 16))(result, v12);
        if (v18)
        {
          goto LABEL_2;
        }

        v14 = *a2;
        v13 = a2[1];
        result = a2[3];
LABEL_15:
        *a2 = 0;
        a2[1] = 0;
        if (result && v13)
        {
          return (*(*result + 16))(result, v14);
        }

        return result;
      }
    }

    else
    {
      v13 = 0;
    }

    v14 = 0;
    goto LABEL_15;
  }

LABEL_2:
  v15[4] = v17[4];
  v15[5] = v17[5];
  v15[6] = v17[6];
  v15[7] = v17[7];
  v15[0] = v17[0];
  v15[1] = v17[1];
  v15[2] = v17[2];
  v15[3] = v17[3];
  v16 = 1;
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
    *v11 = &unk_1F10F5040;
    v11[1] = v8;
    v11[2] = a1;
    *&v17[0] = v11;
    if ((v16 & 1) == 0)
    {
      __break(1u);
    }

    WebKit::WebPage::requestDocumentEditingContext(a3, v15, v17);
    result = *&v17[0];
    *&v17[0] = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebPage::TextInputContextsInRect,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::FloatRect,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ElementContext,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  v4 = a2;
  IPC::ArgumentCoder<std::tuple<WebCore::FloatRect>,void>::decode<IPC::Decoder>(a2, v15);
  if ((v16 & 1) == 0)
  {
    goto LABEL_13;
  }

  while (1)
  {
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v4);
    if ((v7 & 1) == 0)
    {
      return result;
    }

    v4 = result;
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
        goto LABEL_8;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
    v10 = WTF::fastMalloc(0x18);
    *v10 = &unk_1F10F5068;
    v10[1] = v4;
    v10[2] = a1;
    v14 = v10;
    if (v16)
    {
      WebKit::WebPage::textInputContextsInRect(a3, &v14, v15[0], v15[1], v15[2], v15[3]);
      result = v14;
      v14 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }

      return result;
    }

    __break(1u);
LABEL_13:
    v11 = *v4;
    v12 = *(v4 + 1);
    *v4 = 0;
    *(v4 + 1) = 0;
    result = *(v4 + 3);
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
      result = (*(*result + 16))(result, v11);
      if (v16)
      {
        continue;
      }
    }

    return result;
  }
}

uint64_t IPC::handleMessageAsync<Messages::WebPage::FocusTextInputContextAndPlaceCaret,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::ElementContext const&,WebCore::IntPoint const&,WTF::CompletionHandler<void ()(BOOL)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  IPC::Decoder::decode<WebCore::ElementContext>(a2, v20);
  if (v21 == 1 && (v6 = IPC::Decoder::decode<WebCore::IntPoint>(a2), (v7 & 1) != 0))
  {
    if ((v21 & 1) == 0)
    {
      goto LABEL_19;
    }

    v17[2] = v20[2];
    v17[3] = v20[3];
    v17[4] = v20[4];
    v17[0] = v20[0];
    v17[1] = v20[1];
    v18 = v6;
    v19 = 1;
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if ((v9 & 1) == 0)
    {
      return result;
    }

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
        goto LABEL_15;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_15:
    v16 = WTF::fastMalloc(0x18);
    *v16 = &unk_1F10F5090;
    v16[1] = v10;
    v16[2] = a1;
    *&v20[0] = v16;
    if ((v19 & 1) == 0)
    {
LABEL_19:
      __break(1u);
    }

    WebKit::WebPage::focusTextInputContextAndPlaceCaret(a3, v17, &v18, v20);
    result = *&v20[0];
    *&v20[0] = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  else
  {
    v13 = *a2;
    v14 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result)
    {
      v15 = v14 == 0;
    }

    else
    {
      v15 = 1;
    }

    if (!v15)
    {
      return (*(*result + 16))(result, v13);
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebPage::ClearServiceWorkerEntitlementOverride,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
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
    *v10 = &unk_1F10F50B8;
    v10[1] = v7;
    v10[2] = a1;
    v11 = v10;
    WebKit::WebPage::clearServiceWorkerEntitlementOverride(a3, &v11);
    result = v11;
    v11 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebPage::RequestImageBitmap,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::ElementContext const&,WTF::CompletionHandler<void ()(std::optional<WebCore::ShareableBitmapHandle> &&,WTF::String const&)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  result = IPC::Decoder::decode<std::tuple<WebCore::ElementContext>>(v13, a2);
  if (v13[80] == 1)
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
      *v11 = &unk_1F10F50E0;
      v11[1] = v8;
      v11[2] = a1;
      v12 = v11;
      WebKit::WebPage::requestImageBitmap(a3, v13, &v12);
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

WTF::StringImpl *IPC::handleMessage<Messages::WebPage::ConnectInspector,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::String const&,Inspector::FrontendChannel::ConnectionType)>(IPC::Decoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a1, &v26);
  v4 = v27;
  if ((v27 & 1) == 0)
  {
    goto LABEL_12;
  }

  while (1)
  {
    v5 = *(a1 + 1);
    v6 = *(a1 + 2);
    v7 = *a1;
    if (v5 <= &v6[-*a1])
    {
      break;
    }

    *(a1 + 2) = v6 + 1;
    if (!v6)
    {
      goto LABEL_22;
    }

    v8 = *v6;
    if (v8 >= 2)
    {
      goto LABEL_25;
    }

    if (v4)
    {
      v23 = v26;
      v24 = v8;
      v25 = 1;
      result = WebKit::WebPage::connectInspector(a2, &v23, (v8 & 1));
      if (v25)
      {
        result = v23;
        v23 = 0;
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

    __break(1u);
LABEL_12:
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
      v4 = v27;
      if (v27)
      {
        continue;
      }
    }

    goto LABEL_17;
  }

  *a1 = 0;
  *(a1 + 1) = 0;
  v17 = *(a1 + 3);
  if (v17)
  {
    if (v5)
    {
      (*(*v17 + 16))(v17);
      v5 = *(a1 + 1);
    }
  }

  else
  {
    v5 = 0;
  }

LABEL_22:
  *a1 = 0;
  *(a1 + 1) = 0;
  v18 = *(a1 + 3);
  if (!v18)
  {
    v5 = 0;
LABEL_24:
    v7 = 0;
    goto LABEL_25;
  }

  if (!v5)
  {
    goto LABEL_24;
  }

  (*(*v18 + 16))(v18);
  v7 = *a1;
  v5 = *(a1 + 1);
LABEL_25:
  *a1 = 0;
  *(a1 + 1) = 0;
  v19 = *(a1 + 3);
  if (v19)
  {
    if (v5)
    {
      (*(*v19 + 16))(v19, v7);
      v21 = *(a1 + 3);
      v7 = *a1;
      v22 = *(a1 + 1);
      *a1 = 0;
      *(a1 + 1) = 0;
      if (v21)
      {
        if (v22)
        {
          (*(*v21 + 16))(v21, v7);
        }
      }
    }
  }

  if (v27)
  {
    v20 = v26;
    v26 = 0;
    if (v20)
    {
      if (atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v20, v7);
      }
    }
  }

LABEL_17:
  v15 = *a1;
  v16 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  result = *(a1 + 3);
  if (result && v16)
  {
    return (*(*result + 16))(result, v15);
  }

  return result;
}

WTF::StringImpl *IPC::handleMessage<Messages::WebPage::DisconnectInspector,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::String const&)>(IPC::Decoder *a1, WebKit::WebPageInspectorTargetController **a2)
{
  IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a1, &v10);
  if (v11 & 1) != 0 || ((v7 = *a1, v8 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (result = *(a1 + 3)) != 0) ? (v9 = v8 == 0) : (v9 = 1), !v9 && (result = (*(*result + 16))(result, v7), (v11)))
  {
    result = WebKit::WebPage::disconnectInspector(a2, &v10, v4);
    if (v11)
    {
      result = v10;
      v10 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v6);
        }
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessage<Messages::WebPage::SendMessageToTargetBackend,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::String const&,WTF::String const&)>(IPC::Decoder *a1, WebKit::WebPageInspectorTargetController **a2)
{
  result = IPC::Decoder::decode<std::tuple<WTF::String,WTF::String>>(a1, &v6);
  if (v8 == 1)
  {
    result = WebKit::WebPage::sendMessageToTargetBackend(a2, &v6, &v7);
    if (v8)
    {
      v5 = v7;
      v7 = 0;
      if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, v4);
      }

      result = v6;
      v6 = 0;
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

unsigned int *IPC::handleMessage<Messages::WebPage::DidChooseColor,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::Color const&)>(IPC::Decoder *a1, uint64_t a2)
{
  result = IPC::Decoder::decode<std::tuple<WebCore::Color>>(a1, &v5);
  if (v6 == 1)
  {
    result = WebKit::WebPage::didChooseColor(a2, &v5);
    if ((v6 & 1) != 0 && (v5.m_colorAndFlags & 0x8000000000000) != 0)
    {
      result = (v5.m_colorAndFlags & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((v5.m_colorAndFlags & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, result);
        return WTF::fastFree(result, v4);
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessage<Messages::WebPage::DidSelectDataListOption,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::String const&)>(IPC::Decoder *a1, _DWORD *a2)
{
  IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a1, &v9);
  if (v10 & 1) != 0 || ((v6 = *a1, v7 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (result = *(a1 + 3)) != 0) ? (v8 = v7 == 0) : (v8 = 1), !v8 && (result = (*(*result + 16))(result, v6), (v10)))
  {
    result = WebKit::WebPage::didSelectDataListOption(a2, &v9);
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

WTF::StringImpl *IPC::handleMessage<Messages::WebPage::DidChooseDate,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::String const&)>(IPC::Decoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a1, &v9);
  if (v10 & 1) != 0 || ((v6 = *a1, v7 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (result = *(a1 + 3)) != 0) ? (v8 = v7 == 0) : (v8 = 1), !v8 && (result = (*(*result + 16))(result, v6), (v10)))
  {
    result = WebKit::WebPage::didChooseDate(a2, &v9);
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

void IPC::handleMessage<Messages::WebPage::GoToBackForwardItem,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebKit::GoToBackForwardItemParameters &&)>(IPC::Decoder *a1, uint64_t a2)
{
  IPC::Decoder::decode<WebKit::GoToBackForwardItemParameters>(v19, a1);
  if (v24 == 1)
  {
    std::__tuple_leaf<0ul,WebKit::GoToBackForwardItemParameters,false>::__tuple_leaf[abi:sn200100]<WebKit::GoToBackForwardItemParameters,0>(&v13, v19);
    v18 = 1;
    if (v24)
    {
      WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v23);
      v5 = v22;
      v22 = 0;
      if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, v4);
      }

      if (v21[120] == 1)
      {
        WebKit::WebsitePoliciesData::~WebsitePoliciesData(v21, v4);
      }

      v6 = v20;
      v20 = 0;
      if (v6)
      {
        WTF::RefCounted<WebKit::FrameState>::deref(v6);
      }
    }
  }

  else
  {
    LOBYTE(v13) = 0;
    v18 = 0;
  }

  if (v18 & 1) != 0 || (v10 = *a1, v11 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (v12 = *(a1 + 3)) != 0) && v11 && ((*(*v12 + 16))(v12, v10), (v18))
  {
    WebKit::WebPage::goToBackForwardItem(a2, &v13);
    if (v18)
    {
      WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v17);
      v8 = v16;
      v16 = 0;
      if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v7);
      }

      if (v15[120] == 1)
      {
        WebKit::WebsitePoliciesData::~WebsitePoliciesData(v15, v7);
      }

      v9 = v14;
      v14 = 0;
      if (v9)
      {
        WTF::RefCounted<WebKit::FrameState>::deref(v9);
      }
    }
  }
}

uint64_t IPC::handleMessage<Messages::WebPage::GoToBackForwardItemWaitingForProcessLaunch,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebKit::GoToBackForwardItemParameters &&,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WebKit::GoToBackForwardItemParameters &&::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>)>(IPC::Decoder *a1)
{
  IPC::Decoder::decode<WebKit::GoToBackForwardItemParameters>(v13, a1);
  if (v18 == 1)
  {
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
    if (v3)
    {
      if ((v18 & 1) == 0)
      {
        __break(1u);
LABEL_20:
        if (v4)
        {
          result = (*(*result + 16))(result, v3);
          if (v12)
          {
LABEL_16:
            WebKit::WebPage::goToBackForwardItemWaitingForProcessLaunch();
          }
        }

        return result;
      }

      v5 = result;
      std::__tuple_leaf<0ul,WebKit::GoToBackForwardItemParameters,false>::__tuple_leaf[abi:sn200100]<WebKit::GoToBackForwardItemParameters,0>(v10, v13);
      v11 = v5;
      v6 = 1;
    }

    else
    {
      v6 = 0;
      v10[0] = 0;
    }

    v12 = v6;
    if (v18)
    {
      WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v17);
      v8 = v16;
      v16 = 0;
      if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v7);
      }

      if (v15[120] == 1)
      {
        WebKit::WebsitePoliciesData::~WebsitePoliciesData(v15, v7);
      }

      v9 = v14;
      v14 = 0;
      if (v9)
      {
        WTF::RefCounted<WebKit::FrameState>::deref(v9);
      }
    }
  }

  else
  {
    v10[0] = 0;
    v12 = 0;
  }

  if (v12)
  {
    goto LABEL_16;
  }

  v3 = *a1;
  v4 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  result = *(a1 + 3);
  if (result)
  {
    goto LABEL_20;
  }

  return result;
}

void IPC::handleMessage<Messages::WebPage::LoadURLInFrame,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::URL &&,WTF::String const&,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>)>(IPC::Decoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::URL,void>::decode(a1, &v29);
  if ((v32 & 1) == 0)
  {
    goto LABEL_26;
  }

  while (1)
  {
    IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a1, &v33);
    if ((v34 & 1) == 0)
    {
      v6 = *a1;
      v22 = *(a1 + 1);
      *a1 = 0;
      *(a1 + 1) = 0;
      v23 = *(a1 + 3);
      if (!v23 || !v22 || ((*(*v23 + 16))(v23, v6), (v34 & 1) == 0))
      {
        v7 = 0;
        LOBYTE(v24) = 0;
        v28 = 0;
        goto LABEL_11;
      }
    }

    v5 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
    v2 = v5;
    v7 = v6;
    if ((v6 & 1) == 0)
    {
      break;
    }

    if (v32 & 1) != 0 && (v34)
    {
      v8 = v29;
      v29 = 0;
      v24 = v8;
      v25 = v30;
      v26 = v31;
      LODWORD(v30) = v30 & 0xFFFFFFFE;
      v9 = v33;
      v33 = 0;
      v27[0] = v9;
      v27[1] = v5;
      v28 = 1;
      goto LABEL_8;
    }

    __break(1u);
LABEL_26:
    v15 = *a1;
    v16 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v17 = *(a1 + 3);
    if (v17)
    {
      v18 = v16 == 0;
    }

    else
    {
      v18 = 1;
    }

    if (!v18)
    {
      (*(*v17 + 16))(v17, v15);
      if (v32)
      {
        continue;
      }
    }

    goto LABEL_31;
  }

  LOBYTE(v24) = 0;
  v28 = 0;
  if ((v34 & 1) == 0)
  {
    v7 = 0;
    goto LABEL_11;
  }

LABEL_8:
  v10 = v33;
  v33 = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v6);
  }

LABEL_11:
  if ((v32 & 1) != 0 && (v11 = v29, v29 = 0, v11) && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v6);
    if (v7)
    {
LABEL_15:
      WebKit::WebPage::loadURLInFrame(a2, &v24, v27, v2);
      if (v28)
      {
        v13 = v27[0];
        v27[0] = 0;
        if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v13, v12);
        }

        v14 = v24;
        v24 = 0;
        if (v14)
        {
          if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v14, v12);
          }
        }
      }

      return;
    }
  }

  else if (v7)
  {
    goto LABEL_15;
  }

LABEL_31:
  v19 = *a1;
  v20 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  v21 = *(a1 + 3);
  if (v21 && v20)
  {
    (*(*v21 + 16))(v21, v19);
  }
}

void IPC::handleMessage<Messages::WebPage::LoadDataInFrame,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(std::span<unsigned char const,18446744073709551615ul>,WTF::String &&,WTF::String &,WTF::URL &&,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>)>(IPC::Decoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::decode<IPC::Decoder>(a1, &v40);
  if ((v41 & 1) == 0)
  {
    v28 = *a1;
    v29 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v30 = *(a1 + 3);
    if (!v30 || v29 == 0)
    {
      goto LABEL_35;
    }

    (*(*v30 + 16))(v30, v28);
    if ((v41 & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a1, &v42);
  if ((v43 & 1) == 0)
  {
    v23 = *a1;
    v24 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v25 = *(a1 + 3);
    if (!v25)
    {
      goto LABEL_35;
    }

    if (!v24)
    {
      goto LABEL_35;
    }

    (*(*v25 + 16))(v25, v23);
    if ((v43 & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a1, &v44);
  if (v45 & 1) != 0 || (v6 = *a1, v26 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (v27 = *(a1 + 3)) != 0) && v26 && ((*(*v27 + 16))(v27, v6), (v45))
  {
    IPC::ArgumentCoder<WTF::URL,void>::decode(a1, &v46);
    if ((v49 & 1) == 0)
    {
      goto LABEL_39;
    }

    while (1)
    {
      v5 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
      v2 = v5;
      v7 = v6;
      if ((v6 & 1) == 0)
      {
        break;
      }

      if (v41 & 1) != 0 && (v43 & 1) != 0 && (v45 & 1) != 0 && (v49)
      {
        v32 = v40;
        v8 = v42;
        v42 = 0;
        v9 = v44;
        v44 = 0;
        v33 = v8;
        v34 = v9;
        v10 = v46;
        v46 = 0;
        v35 = v10;
        v36 = v47;
        v37 = v48;
        LODWORD(v47) = v47 & 0xFFFFFFFE;
        v38 = v5;
        v39 = 1;
        goto LABEL_12;
      }

      __break(1u);
LABEL_39:
      v6 = *a1;
      v21 = *(a1 + 1);
      *a1 = 0;
      *(a1 + 1) = 0;
      v22 = *(a1 + 3);
      if (v22)
      {
        if (v21)
        {
          (*(*v22 + 16))(v22, v6);
          if (v49)
          {
            continue;
          }
        }
      }

      v7 = 0;
      LOBYTE(v32) = 0;
      v39 = 0;
      goto LABEL_15;
    }

    LOBYTE(v32) = 0;
    v39 = 0;
    if ((v49 & 1) == 0)
    {
      v7 = 0;
      goto LABEL_15;
    }

LABEL_12:
    v11 = v46;
    v46 = 0;
    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v6);
    }

LABEL_15:
    if (v45)
    {
      v12 = v44;
      v44 = 0;
      if (v12)
      {
        if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v12, v6);
        }
      }
    }
  }

  else
  {
    v7 = 0;
    LOBYTE(v32) = 0;
    v39 = 0;
  }

  if ((v43 & 1) == 0 || (v13 = v42, v42 = 0, !v13) || atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) != 2)
  {
    if (v7)
    {
      goto LABEL_23;
    }

LABEL_35:
    v18 = *a1;
    v19 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v20 = *(a1 + 3);
    if (v20 && v19)
    {
      (*(*v20 + 16))(v20, v18);
    }

    return;
  }

  WTF::StringImpl::destroy(v13, v6);
  if ((v7 & 1) == 0)
  {
    goto LABEL_35;
  }

LABEL_23:
  WebKit::WebPage::loadDataInFrame(a2, v32, *(&v32 + 1), &v33, &v34, &v35, v2);
  if (v39)
  {
    v15 = v35;
    v35 = 0;
    if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v14);
    }

    v16 = v34;
    v34 = 0;
    if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v14);
    }

    v17 = v33;
    v33 = 0;
    if (v17)
    {
      if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v17, v14);
      }
    }
  }
}

void IPC::handleMessage<Messages::WebPage::LoadRequest,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebKit::LoadParameters &&)>(IPC::Decoder *a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  IPC::Decoder::decode<std::tuple<WebKit::LoadParameters>>(v4, a1);
  if (v5 == 1)
  {
    WebKit::WebPage::loadRequest(a2, v4);
    if (v5)
    {
      WebKit::LoadParameters::~LoadParameters(v4, v3);
    }
  }
}

void IPC::handleMessage<Messages::WebPage::LoadDidCommitInAnotherProcess,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>)>(IPC::Decoder *a1, uint64_t a2)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if (v5 & 1) != 0 && ((v6 = v4, IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(a1, &v14), (v15) || (v7 = *a1, v8 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (v9 = *(a1 + 3)) != 0) && v8 && ((*(*v9 + 16))(v9, v7), (v15)))
  {
    WebKit::WebPage::loadDidCommitInAnotherProcess(a2, v6);
  }

  else
  {
    v10 = *a1;
    v11 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v12 = *(a1 + 3);
    if (v12)
    {
      v13 = v11 == 0;
    }

    else
    {
      v13 = 1;
    }

    if (!v13)
    {
      (*(*v12 + 16))(v12, v10);
    }
  }
}

uint64_t IPC::handleMessage<Messages::WebPage::LoadRequestWaitingForProcessLaunch,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebKit::LoadParameters &&,WTF::URL &&,WebKit::LoadParameters &&::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WebKit::LoadParameters &&::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,BOOL)>(IPC::Decoder *a1)
{
  v32 = *MEMORY[0x1E69E9840];
  IPC::Decoder::decode<WebKit::LoadParameters>(a1, v30);
  if (v31 == 1)
  {
    IPC::ArgumentCoder<WTF::URL,void>::decode(a1, &v19);
    if ((v22 & 1) == 0)
    {
      goto LABEL_12;
    }

    while (1)
    {
      v2 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
      if ((v3 & 1) == 0)
      {
        break;
      }

      v4 = *(a1 + 1);
      v5 = *(a1 + 2);
      v3 = *a1;
      if (v4 <= &v5[-*a1])
      {
        *a1 = 0;
        *(a1 + 1) = 0;
        v12 = *(a1 + 3);
        if (v12)
        {
          if (v4)
          {
            (*(*v12 + 16))(v12);
            v4 = *(a1 + 1);
          }
        }

        else
        {
          v4 = 0;
        }

LABEL_19:
        *a1 = 0;
        *(a1 + 1) = 0;
        v13 = *(a1 + 3);
        if (!v13)
        {
          v4 = 0;
          goto LABEL_21;
        }

        if (v4)
        {
          (*(*v13 + 16))(v13);
          v3 = *a1;
          v4 = *(a1 + 1);
        }

        else
        {
LABEL_21:
          v3 = 0;
        }

LABEL_22:
        *a1 = 0;
        *(a1 + 1) = 0;
        v14 = *(a1 + 3);
        if (v14 && v4)
        {
          (*(*v14 + 16))(v14, v3);
        }

        break;
      }

      *(a1 + 2) = v5 + 1;
      if (!v5)
      {
        goto LABEL_19;
      }

      v6 = *v5;
      if (v6 >= 2)
      {
        goto LABEL_22;
      }

      if (v31 & 1) != 0 && (v22)
      {
        v7 = v2;
        WebKit::LoadParameters::LoadParameters(v23, v30);
        v8 = v19;
        v19 = 0;
        v24 = v8;
        v25 = v20;
        v26 = v21;
        LODWORD(v20) = v20 & 0xFFFFFFFE;
        v27 = v7;
        v28 = v6;
        v9 = 1;
        goto LABEL_24;
      }

      __break(1u);
LABEL_12:
      v3 = *a1;
      v10 = *(a1 + 1);
      *a1 = 0;
      *(a1 + 1) = 0;
      v11 = *(a1 + 3);
      if (v11)
      {
        if (v10)
        {
          (*(*v11 + 16))(v11, v3);
          if (v22)
          {
            continue;
          }
        }
      }

      v23[0] = 0;
      v29 = 0;
      goto LABEL_28;
    }

    v9 = 0;
    v23[0] = 0;
LABEL_24:
    v29 = v9;
    if (v22)
    {
      v15 = v19;
      v19 = 0;
      if (v15)
      {
        if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v15, v3);
        }
      }
    }

LABEL_28:
    if (v31)
    {
      WebKit::LoadParameters::~LoadParameters(v30, v3);
    }
  }

  else
  {
    v23[0] = 0;
    v29 = 0;
  }

  if (v29 & 1) != 0 || (v16 = *a1, v17 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (result = *(a1 + 3)) != 0) && v17 && (result = (*(*result + 16))(result, v16), (v29))
  {
    WebKit::WebPage::loadRequestWaitingForProcessLaunch();
  }

  return result;
}

void IPC::handleMessage<Messages::WebPage::LoadData,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebKit::LoadParameters &&)>(IPC::Decoder *a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  IPC::Decoder::decode<std::tuple<WebKit::LoadParameters>>(v4, a1);
  if (v5 == 1)
  {
    WebKit::WebPage::loadData(a2, v4);
    if (v5)
    {
      WebKit::LoadParameters::~LoadParameters(v4, v3);
    }
  }
}

void IPC::handleMessage<Messages::WebPage::LoadSimulatedRequestAndResponse,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebKit::LoadParameters &&,WebCore::ResourceResponse &&)>(IPC::Decoder *a1, uint64_t a2)
{
  v69 = *MEMORY[0x1E69E9840];
  IPC::Decoder::decode<WebKit::LoadParameters>(a1, v67);
  if (v68 == 1)
  {
    IPC::ArgumentCoder<WebCore::ResourceResponse,void>::decode(a1, &v18);
    if ((v41 & 1) == 0)
    {
      goto LABEL_22;
    }

    while ((v68 & 1) == 0)
    {
      __break(1u);
LABEL_22:
      v4 = *a1;
      v16 = *(a1 + 1);
      *a1 = 0;
      *(a1 + 1) = 0;
      v17 = *(a1 + 3);
      if (v17)
      {
        if (v16)
        {
          (*(*v17 + 16))(v17, v4);
          if (v41)
          {
            continue;
          }
        }
      }

      v42[0] = 0;
      v66 = 0;
      goto LABEL_8;
    }

    WebKit::LoadParameters::LoadParameters(v42, v67);
    v44 = v19;
    v45 = v20;
    v5 = v23;
    v23 = 0u;
    v6 = v24;
    v24 = 0u;
    v43 = v18;
    LODWORD(v19) = v19 & 0xFFFFFFFE;
    v46 = v21;
    v18 = 0;
    v21 = 0;
    v47 = v22;
    v48 = v5;
    v49 = v6;
    *&v5 = v25;
    v25 = 0;
    v50 = v5;
    v7 = v26;
    v26 = 0;
    v51 = v7;
    *&v5 = v27;
    v27 = 0;
    v52 = v5;
    v8 = v28;
    v28 = 0;
    v53 = v8;
    LOBYTE(v54) = 0;
    v55 = 0;
    if (v30 == 1)
    {
      v12 = v29;
      v29 = 0;
      v54 = v12;
      v55 = 1;
    }

    v56 = v31;
    v57 = v32;
    v58 = v33;
    v33 = 0;
    v61 = v36;
    v62 = v37;
    v63[0] = v38[0];
    *(v63 + 11) = *(v38 + 11);
    v59 = v34;
    v60 = v35;
    cf = v39;
    v65 = v40;
    v66 = 1;
    if (v41)
    {
      v39 = 0;
      WebCore::ResourceResponseBase::~ResourceResponseBase(&v18, v4);
    }

LABEL_8:
    if (v68)
    {
      WebKit::LoadParameters::~LoadParameters(v67, v4);
    }
  }

  else
  {
    v42[0] = 0;
    v66 = 0;
  }

  if (v66 & 1) != 0 || (v13 = *a1, v14 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (v15 = *(a1 + 3)) != 0) && v14 && ((*(*v15 + 16))(v15, v13), (v66))
  {
    WebKit::WebPage::loadSimulatedRequestAndResponse(a2, v42, &v43);
    if (v66)
    {
      v10 = cf;
      cf = 0;
      if (v10)
      {
        CFRelease(v10);
      }

      WebCore::ResourceResponseBase::~ResourceResponseBase(&v43, v9);
      WebKit::LoadParameters::~LoadParameters(v42, v11);
    }
  }
}

void IPC::handleMessage<Messages::WebPage::LoadAlternateHTML,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebKit::LoadParameters &&)>(IPC::Decoder *a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  IPC::Decoder::decode<std::tuple<WebKit::LoadParameters>>(v4, a1);
  if (v5 == 1)
  {
    WebKit::WebPage::loadAlternateHTML(a2, v4);
    if (v5)
    {
      WebKit::LoadParameters::~LoadParameters(v4, v3);
    }
  }
}

void IPC::handleMessage<Messages::WebPage::CreateRemoteSubframe,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&,WTF::Ref<WebCore::FrameTreeSyncData,WTF::RawPtrTraits<WebCore::FrameTreeSyncData>,WTF::DefaultRefDerefTraits<WebCore::FrameTreeSyncData>> &&)>(IPC::Decoder *a1, uint64_t a2)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if (v5)
  {
    v6 = v4;
    v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
    if (v8)
    {
      v9 = v7;
      IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a1, &v25);
      if ((v26 & 1) == 0)
      {
        goto LABEL_23;
      }

      while (1)
      {
        IPC::Decoder::decode<WTF::Ref<WebCore::FrameTreeSyncData,WTF::RawPtrTraits<WebCore::FrameTreeSyncData>,WTF::DefaultRefDerefTraits<WebCore::FrameTreeSyncData>>>(a1, &v27);
        if (v28 != 1)
        {
          break;
        }

        if (v26)
        {
          v22 = v25;
          v23 = v27;
          v24 = 1;
          WebKit::WebPage::createRemoteSubframe(a2, v6, v9, &v22);
          if (v24)
          {
            v12 = v23;
            v23 = 0;
            if (v12)
            {
              WTF::RefCounted<WebCore::FrameTreeSyncData>::deref(v12, v11);
            }

            v13 = v22;
            v22 = 0;
            if (v13)
            {
              if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v13, v11);
              }
            }
          }

          return;
        }

        __break(1u);
LABEL_23:
        v19 = *a1;
        v20 = *(a1 + 1);
        *a1 = 0;
        *(a1 + 1) = 0;
        v21 = *(a1 + 3);
        if (v21)
        {
          if (v20)
          {
            (*(*v21 + 16))(v21, v19);
            if (v26)
            {
              continue;
            }
          }
        }

        goto LABEL_16;
      }

      if (v26)
      {
        v14 = v25;
        v25 = 0;
        if (v14)
        {
          if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v14, v10);
          }
        }
      }
    }
  }

LABEL_16:
  v15 = *a1;
  v16 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  v17 = *(a1 + 3);
  if (v17)
  {
    v18 = v16 == 0;
  }

  else
  {
    v18 = 1;
  }

  if (!v18)
  {
    (*(*v17 + 16))(v17, v15);
  }
}

uint64_t IPC::handleMessageAsync<Messages::WebPage::GetFrameTree,IPC::Connection,WebKit::WebPage,WebKit::WebPage,WTF::Awaitable<std::optional<WebKit::FrameTreeNodeData>> ()(void)>(atomic_ullong *a1, IPC::Decoder *a2, CFTypeRef *a3)
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
    *v10 = &unk_1F10F5108;
    v10[1] = v7;
    v10[2] = a1;
    v11 = WTF::fastMalloc(0x1B8);
    *v11 = _ZZN3IPC27callMemberFunctionCoroutineIN6WebKit7WebPageES2_FN3WTF9AwaitableINSt3__18optionalINS1_17FrameTreeNodeDataEEEEEvENS5_5tupleIJEEEFvOS8_EEEvPT_MT0_T1_OT2_ONS3_17CompletionHandlerIT3_EEENKUlSF_E_clINSM_ISE_EEEENS3_4TaskESF__resume;
    *(v11 + 8) = _ZZN3IPC27callMemberFunctionCoroutineIN6WebKit7WebPageES2_FN3WTF9AwaitableINSt3__18optionalINS1_17FrameTreeNodeDataEEEEEvENS5_5tupleIJEEEFvOS8_EEEvPT_MT0_T1_OT2_ONS3_17CompletionHandlerIT3_EEENKUlSF_E_clINSM_ISE_EEEENS3_4TaskESF__destroy;
    *(v11 + 424) = v10;
    *(v11 + 432) = a3;
    CFRetain(a3[1]);
    result = WebKit::WebPage::getFrameTree(a3, (v11 + 416));
    v12 = *(v11 + 416);
    *(v11 + 24) = v12;
    if (v12)
    {
      if (*v12)
      {
        *(v11 + 17) = 0;
        v12[2] = v11;
        v13 = **(v11 + 24);

        return v13();
      }

      else
      {
        v14 = *(v11 + 424);
        WTF::Awaitable<std::optional<WebKit::FrameTreeNodeData>>::Promise<std::optional<WebKit::FrameTreeNodeData>>::result((v11 + 32), (v12 + 2));
        (*(*v14 + 16))(v14, v11 + 32);
        (*(*v14 + 8))(v14);
        std::optional<WebKit::FrameTreeNodeData>::~optional(v11 + 32, v15);
        v17 = *(v11 + 416);
        if (v17)
        {
          (*(v17 + 8))();
        }

        v18 = *(v11 + 432);
        if (v18)
        {
          CFRelease(*(v18 + 8));
        }

        return WTF::fastFree(v11, v16);
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void IPC::handleMessage<Messages::WebPage::UpdateFrameTreeSyncData,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::FrameTreeSyncData,WTF::RawPtrTraits<WebCore::FrameTreeSyncData>,WTF::DefaultRefDerefTraits<WebCore::FrameTreeSyncData>> &&)>(IPC::Decoder *a1, uint64_t a2)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if (v5 & 1) != 0 && (v6 = v4, IPC::Decoder::decode<WTF::Ref<WebCore::FrameTreeSyncData,WTF::RawPtrTraits<WebCore::FrameTreeSyncData>,WTF::DefaultRefDerefTraits<WebCore::FrameTreeSyncData>>>(a1, &v13), (v14))
  {
    v12 = v13;
    WebKit::WebPage::updateFrameTreeSyncData(a2, v6);
    if (v12)
    {
      WTF::RefCounted<WebCore::FrameTreeSyncData>::deref(v12, v7);
    }
  }

  else
  {
    v8 = *a1;
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
      (*(*v10 + 16))(v10, v8);
    }
  }
}

WTF::StringImpl *IPC::handleMessage<Messages::WebPage::ProcessSyncDataChangedInAnotherProcess,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::ProcessSyncData const&)>(uint64_t *a1, uint64_t a2)
{
  IPC::ArgumentCoder<std::tuple<WebCore::ProcessSyncData>,void>::decode<IPC::Decoder>(a1, v10);
  if (v13 & 1) != 0 || ((v7 = *a1, v8 = a1[1], *a1 = 0, a1[1] = 0, (result = a1[3]) != 0) ? (v9 = v8 == 0) : (v9 = 1), !v9 && (result = (*(*result + 16))(result, v7), (v13)))
  {
    result = WebKit::WebPage::processSyncDataChangedInAnotherProcess(a2);
    if (v13)
    {
      if (v12 > 5u)
      {
        if (v12 - 6 < 3 || v12 != 9)
        {
          return result;
        }
      }

      else
      {
        if (v12 < 4u)
        {
          return result;
        }

        if (v12 == 4)
        {
          result = v11;
          v11 = 0;
          if (result)
          {
            if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              return WTF::StringImpl::destroy(result, v5);
            }
          }

          return result;
        }
      }

      result = v11;
      v11 = 0;
      if (result)
      {
        return WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(result, v5);
      }
    }
  }

  return result;
}

void *IPC::handleMessage<Messages::WebPage::TopDocumentSyncDataChangedInAnotherProcess,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::Ref<WebCore::DocumentSyncData,WTF::RawPtrTraits<WebCore::DocumentSyncData>,WTF::DefaultRefDerefTraits<WebCore::DocumentSyncData>> &&)>(IPC::Decoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<std::tuple<WTF::Ref<WebCore::DocumentSyncData,WTF::RawPtrTraits<WebCore::DocumentSyncData>,WTF::DefaultRefDerefTraits<WebCore::DocumentSyncData>>>,void>::decode<IPC::Decoder>(a1, &v9);
  if (v10 & 1) != 0 || ((v6 = *a1, v7 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (result = *(a1 + 3)) != 0) ? (v8 = v7 == 0) : (v8 = 1), !v8 && (result = (*(*result + 16))(result, v6), (v10)))
  {
    result = WebKit::WebPage::topDocumentSyncDataChangedInAnotherProcess(a2);
    if (v10)
    {
      result = v9;
      v9 = 0;
      if (result)
      {
        return WTF::RefCounted<WebCore::DocumentSyncData>::deref(result, v5);
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessage<Messages::WebPage::NavigateToPDFLinkWithSimulatedClick,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::String const&,WebCore::IntPoint,WebCore::IntPoint)>(IPC::Decoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a1, &v21);
  if ((v22 & 1) == 0)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v6 = IPC::Decoder::decode<WebCore::IntPoint>(a1);
    if ((v5 & 1) == 0)
    {
      break;
    }

    v7 = IPC::Decoder::decode<WebCore::IntPoint>(a1);
    if ((v5 & 1) == 0)
    {
      break;
    }

    if (v22)
    {
      v2 = v7;
      v8 = v21;
      v21 = 0;
      v19[0] = v8;
      v19[1] = v6;
      v19[2] = v7;
      v9 = 1;
      goto LABEL_7;
    }

    __break(1u);
LABEL_21:
    v15 = *a1;
    v16 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v17 = *(a1 + 3);
    if (v17)
    {
      v18 = v16 == 0;
    }

    else
    {
      v18 = 1;
    }

    if (!v18)
    {
      (*(*v17 + 16))(v17, v15);
      if (v22)
      {
        continue;
      }
    }

    goto LABEL_17;
  }

  v9 = 0;
  LOBYTE(v19[0]) = 0;
LABEL_7:
  v20 = v9;
  if ((v22 & 1) != 0 && (v10 = v21, v21 = 0, v10) && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v5);
    if (v9)
    {
      goto LABEL_11;
    }
  }

  else if (v9)
  {
LABEL_11:
    result = WebKit::WebPage::navigateToPDFLinkWithSimulatedClick(a2, v19, v6, v2);
    if (v20)
    {
      result = v19[0];
      v19[0] = 0;
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

LABEL_17:
  v13 = *a1;
  v14 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  result = *(a1 + 3);
  if (result && v14)
  {
    return (*(*result + 16))(result, v13);
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebPage::GetPDFFirstPageSize,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::FloatSize)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
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
      *v13 = &unk_1F10F5130;
      v13[1] = v10;
      v13[2] = a1;
      v14 = v13;
      WebKit::WebPage::getPDFFirstPageSize(a3, v8, &v14);
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

void IPC::handleMessage<Messages::WebPage::Reload,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::OptionSet<WebCore::ReloadOption>,WebKit::SandboxExtensionHandle &&)>(IPC::Decoder *a1, void *a2)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if ((v5 & 1) == 0)
  {
    goto LABEL_10;
  }

  v6 = *(a1 + 1);
  v7 = *(a1 + 2);
  v8 = *a1;
  if (v6 <= &v7[-*a1])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v19 = *(a1 + 3);
    if (v19)
    {
      if (v6)
      {
        (*(*v19 + 16))(v19);
        v6 = *(a1 + 1);
      }
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_20;
  }

  *(a1 + 2) = v7 + 1;
  if (!v7)
  {
LABEL_20:
    *a1 = 0;
    *(a1 + 1) = 0;
    v20 = *(a1 + 3);
    if (v20)
    {
      if (v6)
      {
        (*(*v20 + 16))(v20);
        v8 = *a1;
        v6 = *(a1 + 1);
        goto LABEL_23;
      }
    }

    else
    {
      v6 = 0;
    }

    v8 = 0;
LABEL_23:
    *a1 = 0;
    *(a1 + 1) = 0;
    v21 = *(a1 + 3);
    if (v21 && v6)
    {
      (*(*v21 + 16))(v21, v8);
    }

    goto LABEL_10;
  }

  v9 = *v7;
  if (v9 >= 8)
  {
    goto LABEL_23;
  }

  v10 = v4;
  IPC::ArgumentCoder<WebKit::SandboxExtensionHandle,void>::decode(a1, &v24);
  if (v25 & 1) != 0 || (v12 = *a1, v13 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (v14 = *(a1 + 3)) != 0) && v13 && ((*(*v14 + 16))(v14, v12), (v25))
  {
    v11 = v24;
    v24 = 0;
    v22 = v11;
    v23 = 1;
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v24);
    WebKit::WebPage::reload(a2, v10, v9, &v22);
    if (v23)
    {
      WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v22);
    }

    return;
  }

LABEL_10:
  v15 = *a1;
  v16 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  v17 = *(a1 + 3);
  if (v17)
  {
    v18 = v16 == 0;
  }

  else
  {
    v18 = 1;
  }

  if (!v18)
  {
    (*(*v17 + 16))(v17, v15);
  }
}

WebCore::HistoryItemClient *IPC::handleMessage<Messages::WebPage::SetCurrentHistoryItemForReattach,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::Ref<WebKit::FrameState,WTF::RawPtrTraits<WebKit::FrameState>,WTF::DefaultRefDerefTraits<WebKit::FrameState>> &&)>(IPC::Decoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<std::tuple<WTF::Ref<WebKit::FrameState,WTF::RawPtrTraits<WebKit::FrameState>,WTF::DefaultRefDerefTraits<WebKit::FrameState>>>,void>::decode<IPC::Decoder>(a1, &v8);
  if (v9 & 1) != 0 || ((v5 = *a1, v6 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (result = *(a1 + 3)) != 0) ? (v7 = v6 == 0) : (v7 = 1), !v7 && (result = (*(*result + 16))(result, v5), (v9)))
  {
    result = WebKit::WebPage::setCurrentHistoryItemForReattach(a2, &v8);
    if (v9)
    {
      result = v8;
      v8 = 0;
      if (result)
      {
        return WTF::RefCounted<WebKit::FrameState>::deref(result);
      }
    }
  }

  return result;
}

void IPC::handleMessage<Messages::WebPage::UpdateWebsitePolicies,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebKit::WebsitePoliciesData &&)>(IPC::Decoder *a1, _DWORD *a2)
{
  IPC::ArgumentCoder<WebKit::WebsitePoliciesData,void>::decode(a1, &v30);
  if (v40 & 1) != 0 || ((v12 = *a1, v13 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (v14 = *(a1 + 3)) != 0) ? (v15 = v13 == 0) : (v15 = 1), !v15 && ((*(*v14 + 16))(v14, v12), (v40)))
  {
    *&v5 = 0;
    v19 = v30;
    v6 = v31;
    v31 = 0;
    v30 = 0u;
    v20 = v6;
    v7 = v32;
    v32 = v5;
    v21 = v7;
    v8 = v33;
    v33 = 0u;
    v22 = v8;
    v9 = v34;
    v34 = 0u;
    v23 = v9;
    v25 = v36;
    v24 = v35;
    v26 = v37;
    v10 = v38;
    v38 = 0;
    v27 = v10;
    *&v28[13] = *&v39[13];
    *v28 = *v39;
    v29 = 1;
    WebKit::WebsitePoliciesData::~WebsitePoliciesData(&v30, v4);
    WebKit::WebPage::updateWebsitePolicies(a2, &v19);
    if (v29)
    {
      WebKit::WebsitePoliciesData::~WebsitePoliciesData(&v19, v11);
    }
  }

  else
  {
    v16 = *a1;
    v17 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v18 = *(a1 + 3);
    if (v18 && v17)
    {
      (*(*v18 + 16))(v18, v16);
    }
  }
}

uint64_t IPC::handleMessageAsync<Messages::WebPage::GetContentsAsAttributedString,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::CompletionHandler<void ()(WebCore::AttributedString const&)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
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
    *v10 = &unk_1F10F5180;
    v10[1] = v7;
    v10[2] = a1;
    v11 = v10;
    WebKit::WebPage::getContentsAsAttributedString(a3, &v11);
    result = v11;
    v11 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebPage::GetMainResourceDataOfFrame,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(std::optional<IPC::SharedBufferReference> const&)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
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
      *v13 = &unk_1F10F51A8;
      v13[1] = v10;
      v13[2] = a1;
      v14 = v13;
      WebKit::WebPage::getMainResourceDataOfFrame(a3, v8, &v14);
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

WTF::StringImpl *IPC::handleMessageAsync<Messages::WebPage::GetResourceDataFromFrame,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&,WTF::CompletionHandler<void ()(std::optional<IPC::SharedBufferReference> const&)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String>>(&v12, a2);
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
      result = WTF::fastMalloc(0x18);
      *result = &unk_1F10F51D0;
      *(result + 1) = v8;
      *(result + 2) = a1;
      v11 = result;
      if ((v14 & 1) == 0)
      {
        __break(1u);
        return result;
      }

      WebKit::WebPage::getResourceDataFromFrame(a3, v12, &v13, &v11);
      result = v11;
      v11 = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }
    }
  }

  if (v14 == 1)
  {
    result = v13;
    v13 = 0;
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

uint64_t IPC::handleMessageAsync<Messages::WebPage::GetRenderTreeExternalRepresentation,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::CompletionHandler<void ()(WTF::String const&)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, WebKit::WebPage *a3)
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
    *v10 = &unk_1F10F51F8;
    v10[1] = v7;
    v10[2] = a1;
    v11 = v10;
    WebKit::WebPage::getRenderTreeExternalRepresentation(a3, &v11);
    result = v11;
    v11 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebPage::GetSelectionOrContentsAsString,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::CompletionHandler<void ()(WTF::String const&)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
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
    *v10 = &unk_1F10F5220;
    v10[1] = v7;
    v10[2] = a1;
    v11 = v10;
    WebKit::WebPage::getSelectionOrContentsAsString(a3, &v11);
    result = v11;
    v11 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebPage::GetSelectionAsWebArchiveData,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::CompletionHandler<void ()(std::optional<IPC::SharedBufferReference> const&)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
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
    *v10 = &unk_1F10F5248;
    v10[1] = v7;
    v10[2] = a1;
    v11 = v10;
    WebKit::WebPage::getSelectionAsWebArchiveData(a3, &v11);
    result = v11;
    v11 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebPage::GetSourceForFrame,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WTF::String const&)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
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
      *v13 = &unk_1F10F5270;
      v13[1] = v10;
      v13[2] = a1;
      v14 = v13;
      WebKit::WebPage::getSourceForFrame(a3, v8, &v14);
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

void *IPC::handleMessageAsync<Messages::WebPage::GetWebArchiveOfFrame,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::CompletionHandler<void ()(std::optional<IPC::SharedBufferReference> const&)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  IPC::ArgumentCoder<std::tuple<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::decode<IPC::Decoder>(a2, &v15);
  if (v17 & 1) != 0 || ((v11 = *a2, v12 = *(a2 + 1), *a2 = 0, *(a2 + 1) = 0, (result = *(a2 + 3)) != 0) ? (v13 = v12 == 0) : (v13 = 1), !v13 && (result = (*(*result + 16))(result, v11), (v17)))
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
      *result = &unk_1F10F5298;
      result[1] = v8;
      result[2] = a1;
      v14 = result;
      if (v17)
      {
        WebKit::WebPage::getWebArchiveOfFrame(a3, v15, v16, &v14);
        result = v14;
        v14 = 0;
        if (result)
        {
          return (*(*result + 8))(result);
        }
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::WebPage::GetWebArchiveOfFrameWithFileName,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WebCore::MarkupExclusionRule,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::String const&,WTF::CompletionHandler<void ()(std::optional<IPC::SharedBufferReference> const&)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  v6 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v8 & 1) == 0)
  {
LABEL_62:
    LOBYTE(v48) = 0;
    v53 = 0;
    goto LABEL_63;
  }

  v9 = *(a2 + 1);
  v10 = ((*(a2 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v11 = *a2;
  v12 = v10 - *a2;
  v13 = v9 >= v12;
  v14 = v9 - v12;
  if (!v13 || v14 <= 7)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v46 = *(a2 + 3);
    if (v46)
    {
      if (v9)
      {
        (*(*v46 + 16))(v46);
        v9 = *(a2 + 1);
      }
    }

    else
    {
      v9 = 0;
    }

    goto LABEL_77;
  }

  *(a2 + 2) = v10 + 1;
  if (!v10)
  {
LABEL_77:
    *a2 = 0;
    *(a2 + 1) = 0;
    v47 = *(a2 + 3);
    if (v47 && v9)
    {
      (*(*v47 + 16))(v47);
    }

LABEL_61:
    v39 = *a2;
    v40 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v41 = *(a2 + 3);
    if (v41 && v40)
    {
      (*(*v41 + 16))(v41, v39);
    }

    goto LABEL_62;
  }

  v16 = v6;
  v17 = *v10;
  v57[0] = 0;
  v57[1] = 0;
  if (v17 >= 0xAAAA)
  {
    do
    {
      result = IPC::Decoder::decode<WebCore::MarkupExclusionRule>(&v48, a2);
      v32 = v52;
      if (v52 == 1)
      {
        if (HIDWORD(v57[1]) == LODWORD(v57[1]))
        {
          result = WTF::Vector<WebCore::MarkupExclusionRule,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::MarkupExclusionRule>(v57, &v48);
        }

        else
        {
          v33 = v57[0] + 24 * HIDWORD(v57[1]);
          v34 = v48;
          v48 = 0;
          *(v33 + 1) = 0;
          *(v33 + 2) = 0;
          *v33 = v34;
          v35 = v49;
          v49 = 0;
          *(v33 + 1) = v35;
          LODWORD(v35) = v50;
          v50 = 0;
          *(v33 + 4) = v35;
          LODWORD(v35) = v51;
          v51 = 0;
          *(v33 + 5) = v35;
          ++HIDWORD(v57[1]);
        }
      }

      if (v52 == 1)
      {
        WTF::Vector<std::pair<WTF::AtomString,WTF::AtomString>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v49, v11);
        result = v48;
        v48 = 0;
        if (result)
        {
          if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            result = WTF::StringImpl::destroy(result, v11);
          }
        }
      }

      if ((v32 & 1) == 0)
      {
        goto LABEL_60;
      }

      --v17;
    }

    while (v17);
    v36 = HIDWORD(v57[1]);
    v23 = v57[0];
    if (LODWORD(v57[1]) > HIDWORD(v57[1]))
    {
      v37 = v57[0];
      if (HIDWORD(v57[1]))
      {
        if (HIDWORD(v57[1]) >= 0xAAAAAAB)
        {
          __break(0xC471u);
          goto LABEL_86;
        }

        v38 = 24 * HIDWORD(v57[1]);
        v37 = WTF::fastMalloc((24 * HIDWORD(v57[1])));
        LODWORD(v57[1]) = v38 / 0x18;
        v57[0] = v37;
        if (v37 != v23)
        {
          WTF::VectorMover<false,WebCore::MarkupExclusionRule>::move(v23, (v23 + 24 * v36), v37);
          v37 = v57[0];
        }
      }

      if (v23)
      {
        if (v37 == v23)
        {
          v57[0] = 0;
          LODWORD(v57[1]) = 0;
        }

        WTF::fastFree(v23, v11);
        v23 = v57[0];
      }

      else
      {
        v23 = v37;
      }
    }

    v54 = v23;
    LODWORD(v17) = v57[1];
    v24 = HIDWORD(v57[1]);
    v57[0] = 0;
    v57[1] = 0;
    goto LABEL_24;
  }

  if (v17)
  {
    LODWORD(v57[1]) = 24 * v17 / 0x18u;
    v57[0] = WTF::fastMalloc((24 * v17));
    while (1)
    {
      IPC::Decoder::decode<WebCore::MarkupExclusionRule>(&v48, a2);
      v18 = v52;
      if (v52 == 1)
      {
        if (HIDWORD(v57[1]) == LODWORD(v57[1]))
        {
          WTF::Vector<WebCore::MarkupExclusionRule,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::MarkupExclusionRule>(v57, &v48);
        }

        else
        {
          v19 = v57[0] + 24 * HIDWORD(v57[1]);
          v20 = v48;
          v48 = 0;
          *(v19 + 1) = 0;
          *(v19 + 2) = 0;
          *v19 = v20;
          v21 = v49;
          v49 = 0;
          *(v19 + 1) = v21;
          LODWORD(v21) = v50;
          v50 = 0;
          *(v19 + 4) = v21;
          LODWORD(v21) = v51;
          v51 = 0;
          *(v19 + 5) = v21;
          ++HIDWORD(v57[1]);
        }
      }

      if (v52 == 1)
      {
        WTF::Vector<std::pair<WTF::AtomString,WTF::AtomString>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v49, v11);
        v22 = v48;
        v48 = 0;
        if (v22)
        {
          if (atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v22, v11);
          }
        }
      }

      if ((v18 & 1) == 0)
      {
        break;
      }

      if (!--v17)
      {
        v23 = v57[0];
        LODWORD(v17) = v57[1];
        v24 = HIDWORD(v57[1]);
        goto LABEL_23;
      }
    }

LABEL_60:
    WTF::Vector<WebCore::MarkupExclusionRule,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v57, v11);
    goto LABEL_61;
  }

  v24 = 0;
  v23 = 0;
LABEL_23:
  *&v7 = 0;
  *v57 = v7;
  v54 = v23;
LABEL_24:
  v55 = __PAIR64__(v24, v17);
  v56 = 1;
  WTF::Vector<WebCore::MarkupExclusionRule,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v57, v11);
  IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a2, v57);
  if (v57[1] & 1) != 0 || (v25 = *a2, v44 = *(a2 + 1), *a2 = 0, *(a2 + 1) = 0, (v45 = *(a2 + 3)) != 0) && v44 && ((*(*v45 + 16))(v45, v25), (v57[1]))
  {
    v54 = 0;
    v55 = 0;
    v48 = v16;
    v49 = v23;
    v50 = v17;
    v51 = v24;
    v52 = v57[0];
    v53 = 1;
    WTF::Vector<WebCore::MarkupExclusionRule,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v54, v25);
LABEL_26:
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if ((v27 & 1) == 0)
    {
      goto LABEL_35;
    }

    v28 = result;
    while (1)
    {
      v29 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v30 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v30, v29 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v30 == v29)
      {
        goto LABEL_32;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_32:
    result = WTF::fastMalloc(0x18);
    *result = &unk_1F10F52C0;
    *(result + 1) = v28;
    *(result + 2) = a1;
    v54 = result;
    if (v53)
    {
      WebKit::WebPage::getWebArchiveOfFrameWithFileName(a3, v48, &v49, &v52, &v54);
      result = v54;
      v54 = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }

      goto LABEL_35;
    }

LABEL_86:
    __break(1u);
    return result;
  }

  LOBYTE(v48) = 0;
  v53 = 0;
  WTF::Vector<WebCore::MarkupExclusionRule,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v54, v25);
LABEL_63:
  v27 = *a2;
  v42 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result)
  {
    v43 = v42 == 0;
  }

  else
  {
    v43 = 1;
  }

  if (!v43)
  {
    result = (*(*result + 16))(result, v27);
    if (v53)
    {
      goto LABEL_26;
    }
  }

LABEL_35:
  if (v53 == 1)
  {
    v31 = v52;
    v52 = 0;
    if (v31)
    {
      if (atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v31, v27);
      }
    }

    return WTF::Vector<WebCore::MarkupExclusionRule,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v49, v27);
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebPage::GetWebArchives,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::CompletionHandler<void ()(WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc> &&)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
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
    *v10 = &unk_1F10F52E8;
    v10[1] = v7;
    v10[2] = a1;
    v11 = v10;
    WebKit::WebPage::getWebArchives(a3, &v11);
    result = v11;
    v11 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebPage::RunJavaScriptInFrameInScriptWorld,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebKit::RunJavaScriptParameters &&,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,std::optional::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebKit::ContentWorldData const&,BOOL,std::optional::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebKit::JavaScriptEvaluationResult,std::__1<WTF::ObjectIdentifierGeneric::ExceptionDetails>>)> &&)>(WTF::ThreadSafeWeakPtrControlBlock **a1, IPC::Decoder *a2, uint64_t a3)
{
  IPC::Decoder::decode<std::tuple<WebKit::RunJavaScriptParameters,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebKit::ContentWorldData,BOOL>>(v15, a2);
  if (v16 == 1)
  {
    v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v6)
    {
      v8 = v7;
LABEL_4:
      v9 = *a1;
      if ((*a1 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
        goto LABEL_6;
      }

      while (1)
      {
        v13 = v9;
        atomic_compare_exchange_strong_explicit(a1, &v13, v9 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v13 != v9)
        {
          goto LABEL_4;
        }

LABEL_6:
        v10 = WTF::fastMalloc(0x18);
        *v10 = &unk_1F10F5310;
        v10[1] = v8;
        v10[2] = a1;
        v14 = v10;
        v9 = v16;
        if (v16)
        {
          break;
        }

        __break(1u);
      }

      IPC::callMemberFunction<WebKit::WebPage,WebKit::WebPage,void ()(WebKit::RunJavaScriptParameters &&,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,std::optional::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebKit::ContentWorldData const&,BOOL,std::optional::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebKit::JavaScriptEvaluationResult,std::__1<WTF::ObjectIdentifierGeneric::ExceptionDetails>>)> &&),WebKit::RunJavaScriptParameters &&::tuple<WebKit::RunJavaScriptParameters,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,std::optional::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,std::optional::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,BOOL>,std::experimental::fundamentals_v3::expected<WebKit::JavaScriptEvaluationResult,std::__1<WTF::ObjectIdentifierGeneric::ExceptionDetails>>>(a3, v15, &v14);
      v11 = v14;
      v14 = 0;
      if (v11)
      {
        (*(*v11 + 8))(v11);
      }
    }
  }

  return std::optional<std::tuple<WebKit::RunJavaScriptParameters,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebKit::ContentWorldData,BOOL>>::~optional(v15, v6);
}

uint64_t IPC::handleMessageAsync<Messages::WebPage::GetAccessibilityTreeData,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::CompletionHandler<void ()(std::optional<IPC::SharedBufferReference> const&)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
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
    *v10 = &unk_1F10F5338;
    v10[1] = v7;
    v10[2] = a1;
    v11 = v10;
    WebKit::WebPage::getAccessibilityTreeData(a3, &v11);
    result = v11;
    v11 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebPage::UpdateRenderingWithForcedRepaint,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
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
    *v10 = &unk_1F10F5360;
    v10[1] = v7;
    v10[2] = a1;
    v11 = v10;
    WebKit::WebPage::updateRenderingWithForcedRepaint(a3, &v11);
    result = v11;
    v11 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebPage::DetectDataInAllFrames,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::OptionSet<WebCore::DataDetectorType>,WTF::CompletionHandler<void ()(WebKit::DataDetectionResult &&)> &&)>(atomic_ullong *a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v5 = a2[2];
  v6 = *a2;
  v7 = v4[1];
  if (v7 <= &v5[-v6])
  {
    *v4 = 0;
    v4[1] = 0;
    v16 = v4;
    v17 = v4[3];
    if (v17)
    {
      if (v7)
      {
        (*(*v17 + 16))(v17);
        v6 = *v16;
        v7 = v16[1];
        goto LABEL_16;
      }
    }

    else
    {
      v7 = 0;
    }

    v6 = 0;
LABEL_16:
    *v16 = 0;
    v16[1] = 0;
    v18 = v16[3];
    if (v18)
    {
      if (v7)
      {
        (*(*v18 + 16))(v18, v6);
        v4 = v16;
        v6 = *v16;
        v7 = v16[1];
        goto LABEL_19;
      }
    }

    else
    {
      v7 = 0;
    }

    v6 = 0;
    v4 = v16;
LABEL_19:
    *v4 = 0;
    v4[1] = 0;
    result = v4[3];
    if (result)
    {
      if (v7)
      {
        v19 = v4;
        (*(*result + 16))(result, v6);
        v20 = v19[1];
        result = v19[3];
        *v19 = 0;
        v19[1] = 0;
        if (result)
        {
          if (v20)
          {
            v21 = *(*result + 16);

            return v21();
          }
        }
      }
    }

    return result;
  }

  v4[2] = v5 + 1;
  if (!v5)
  {
    v16 = v4;
    goto LABEL_16;
  }

  v8 = *v5;
  if (v8 < 0)
  {
    goto LABEL_19;
  }

  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v4);
  if (v11)
  {
    v12 = result;
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
    *v15 = &unk_1F10F5388;
    v15[1] = v12;
    v15[2] = a1;
    v22 = v15;
    WebKit::WebPage::detectDataInAllFrames(a3, v8, &v22);
    result = v22;
    v22 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebPage::RemoveDataDetectedLinks,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::CompletionHandler<void ()(WebKit::DataDetectionResult &&)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
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
    *v10 = &unk_1F10F53B0;
    v10[1] = v7;
    v10[2] = a1;
    v11 = v10;
    WebKit::WebPage::removeDataDetectedLinks(a3, &v11);
    result = v11;
    v11 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessage<Messages::WebPage::ChangeFont,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::FontChanges &&)>(IPC::Decoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WebCore::FontChanges,void>::decode(a1, v15);
  if (v17)
  {
LABEL_2:
    *v10 = v15[0];
    v11 = v15[1];
    v12 = v15[2];
    v13 = v16;
    v14 = 1;
    result = WebKit::WebPage::changeFont(a2, v10);
    if (v14)
    {
      v6 = v10[1];
      v10[1] = 0;
      if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, v5);
      }

      result = v10[0];
      v10[0] = 0;
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

  v7 = *a1;
  v8 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  result = *(a1 + 3);
  if (!result)
  {
    v8 = 0;
LABEL_12:
    v9 = 0;
    goto LABEL_13;
  }

  if (!v8)
  {
    goto LABEL_12;
  }

  (*(*result + 16))(result, v7);
  if (v17)
  {
    goto LABEL_2;
  }

  v9 = *a1;
  v8 = *(a1 + 1);
  result = *(a1 + 3);
LABEL_13:
  *a1 = 0;
  *(a1 + 1) = 0;
  if (result && v8)
  {
    return (*(*result + 16))(result, v9);
  }

  return result;
}

void IPC::handleMessage<Messages::WebPage::ChangeFontAttributes,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::FontAttributeChanges &&)>(IPC::Decoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WebCore::FontAttributeChanges,void>::decode(a1, &v31);
  if (v44 & 1) != 0 || ((v10 = *a1, v11 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (v12 = *(a1 + 3)) != 0) ? (v13 = v11 == 0) : (v13 = 1), !v13 && ((*(*v12 + 16))(v12, v10), (v44)))
  {
    v17 = v31;
    LOBYTE(v18) = 0;
    v19 = 0;
    if (v33 == 1)
    {
      v8 = v32;
      v32 = 0;
      v18 = v8;
      v19 = 1;
    }

    LOBYTE(v20) = 0;
    v21 = 0;
    if (v35 == 1)
    {
      v9 = v34;
      v34 = 0;
      v20 = v9;
      v21 = 1;
    }

    LOBYTE(v22) = 0;
    v24 = 0;
    if (v38 == 1)
    {
      v5 = v36;
      v36 = 0;
      v22 = v5;
      v23 = v37;
      v24 = 1;
    }

    v25 = v39;
    v6 = v40;
    v40 = 0uLL;
    v26 = v6;
    v27 = v41;
    v28 = v42;
    v29 = v43;
    v30 = 1;
    WebCore::FontAttributeChanges::~FontAttributeChanges(&v31, v4);
    WebKit::WebPage::changeFontAttributes(a2, &v17);
    if (v30)
    {
      WebCore::FontAttributeChanges::~FontAttributeChanges(&v17, v7);
    }
  }

  else
  {
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
}

void *IPC::handleMessage<Messages::WebPage::PreferencesDidChange,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebKit::WebPreferencesStore const&,std::optional<unsigned long long>)>(IPC::Decoder *this, WebKit::WebPage *a2, double a3, __n128 a4)
{
  result = IPC::Decoder::decode<std::tuple<WebKit::WebPreferencesStore,std::optional<unsigned long long>>>(&v6, this, a3, a4);
  if (v12 == 1)
  {
    result = WebKit::WebPage::preferencesDidChange(a2, &v6, v10, v11);
    if (v12)
    {
      if (v8)
      {
        WTF::RobinHoodHashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>::deallocateTable(v8, v9);
      }

      result = v6;
      if (v6)
      {
        return WTF::RobinHoodHashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>::deallocateTable(v6, v7);
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessage<Messages::WebPage::SetUserAgent,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::String &&)>(IPC::Decoder *a1, uint64_t a2)
{
  result = IPC::Decoder::decode<std::tuple<WTF::String>>(a1, &v6);
  if (v7 == 1)
  {
    result = WebKit::WebPage::setUserAgent(a2, &v6, v4);
    if (v7)
    {
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

WTF::StringImpl *IPC::handleMessage<Messages::WebPage::SetCustomTextEncodingName,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::String const&)>(IPC::Decoder *a1, WebKit::WebPage *a2)
{
  IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a1, &v9);
  if (v10 & 1) != 0 || ((v6 = *a1, v7 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (result = *(a1 + 3)) != 0) ? (v8 = v7 == 0) : (v8 = 1), !v8 && (result = (*(*result + 16))(result, v6), (v10)))
  {
    result = WebKit::WebPage::setCustomTextEncodingName(a2, &v9);
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

uint64_t IPC::handleMessageAsync<Messages::WebPage::Suspend,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::CompletionHandler<void ()(BOOL)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, void *a3)
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
    *v10 = &unk_1F10F53D8;
    v10[1] = v7;
    v10[2] = a1;
    v11 = v10;
    WebKit::WebPage::suspend(a3, &v11);
    result = v11;
    v11 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebPage::Resume,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::CompletionHandler<void ()(BOOL)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, void *a3)
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
    *v10 = &unk_1F10F5400;
    v10[1] = v7;
    v10[2] = a1;
    v11 = v10;
    WebKit::WebPage::resume(a3, &v11);
    result = v11;
    v11 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebPage::TryClose,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::CompletionHandler<void ()(BOOL)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
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
    *v10 = &unk_1F10F5428;
    v10[1] = v7;
    v10[2] = a1;
    v11 = v10;
    WebKit::WebPage::tryClose(a3, &v11);
    result = v11;
    v11 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::WebPage::ValidateCommand,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::String const&,WTF::CompletionHandler<void ()(BOOL,int)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
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
      *result = &unk_1F10F5450;
      *(result + 1) = v8;
      *(result + 2) = a1;
      v13 = result;
      if ((v15 & 1) == 0)
      {
        __break(1u);
        return result;
      }

      WebKit::WebPage::validateCommand(a3, &v14, &v13);
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

WTF::StringImpl *IPC::handleMessage<Messages::WebPage::ExecuteEditCommand,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::String const&,WTF::String const&)>(IPC::Decoder *a1, WebKit::WebPage *a2)
{
  result = IPC::Decoder::decode<std::tuple<WTF::String,WTF::String>>(a1, &v6);
  if (v8 == 1)
  {
    result = WebKit::WebPage::executeEditCommand(a2, &v6, &v7);
    if (v8)
    {
      v5 = v7;
      v7 = 0;
      if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, v4);
      }

      result = v6;
      v6 = 0;
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

uint64_t IPC::handleMessageAsync<Messages::WebPage::RequestFontAttributesAtSelectionStart,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::CompletionHandler<void ()(WebCore::FontAttributes const&)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
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
    *v10 = &unk_1F10F5478;
    v10[1] = v7;
    v10[2] = a1;
    v11 = v10;
    WebKit::WebPage::requestFontAttributesAtSelectionStart(a3, &v11);
    result = v11;
    v11 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void IPC::handleMessage<Messages::WebPage::PostInjectedBundleMessage,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::String const&,WebKit::UserData const&)>(IPC::Decoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<std::tuple<WTF::String,WebKit::UserData>,void>::decode<IPC::Decoder>(a1, &v11);
  if (v13 & 1) != 0 || ((v7 = *a1, v8 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (v9 = *(a1 + 3)) != 0) ? (v10 = v8 == 0) : (v10 = 1), !v10 && ((*(*v9 + 16))(v9, v7), (v13)))
  {
    WebKit::WebPage::postInjectedBundleMessage(a2, &v11, &v12);
    if (v13)
    {
      v5 = v12;
      v12 = 0;
      if (v5)
      {
        CFRelease(v5[1]);
      }

      v6 = v11;
      v11 = 0;
      if (v6)
      {
        if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v6, v4);
        }
      }
    }
  }
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::WebPage::FindString,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::String const&,WTF::OptionSet<WebKit::FindOptions>,unsigned int,WTF::CompletionHandler<void ()(std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Vector<WebCore::IntRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,unsigned int,int,BOOL)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<WTF::String,WTF::OptionSet<WebKit::FindOptions>,unsigned int>>(&v14, a2);
  if (v17 == 1)
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
    *v12 = &unk_1F10F54A0;
    *(v12 + 1) = v9;
    *(v12 + 2) = a1;
    v13 = v12;
    WebKit::WebPage::findString(a3, &v14, v15, v16, &v13);
    result = v13;
    v13 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    if (v17)
    {
LABEL_11:
      result = v14;
      v14 = 0;
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

WTF::StringImpl *IPC::handleMessageAsync<Messages::WebPage::FindStringIncludingImages,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::String const&,WTF::OptionSet<WebKit::FindOptions>,unsigned int,WTF::CompletionHandler<void ()(std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Vector<WebCore::IntRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,unsigned int,int,BOOL)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<WTF::String,WTF::OptionSet<WebKit::FindOptions>,unsigned int>>(&v14, a2);
  if (v17 == 1)
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
    *v12 = &unk_1F10F54C8;
    *(v12 + 1) = v9;
    *(v12 + 2) = a1;
    v13 = v12;
    WebKit::WebPage::findStringIncludingImages(a3, &v14, v15, v16, &v13);
    result = v13;
    v13 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    if (v17)
    {
LABEL_11:
      result = v14;
      v14 = 0;
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

WTF::StringImpl *IPC::handleMessageAsync<Messages::WebPage::FindStringMatches,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::String const&,WTF::OptionSet<WebKit::FindOptions>,unsigned int,WTF::CompletionHandler<void ()(WTF::Vector<WTF::Vector<WebCore::IntRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,int)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<WTF::String,WTF::OptionSet<WebKit::FindOptions>,unsigned int>>(&v14, a2);
  if (v17 == 1)
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
    *v12 = &unk_1F10F54F0;
    *(v12 + 1) = v9;
    *(v12 + 2) = a1;
    v13 = v12;
    WebKit::WebPage::findStringMatches(a3, &v14, v15, v16, &v13);
    result = v13;
    v13 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    if (v17)
    {
LABEL_11:
      result = v14;
      v14 = 0;
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

WTF::StringImpl *IPC::handleMessageAsync<Messages::WebPage::CountStringMatches,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::String const&,WTF::OptionSet<WebKit::FindOptions>,unsigned int,WTF::CompletionHandler<void ()(unsigned int)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<WTF::String,WTF::OptionSet<WebKit::FindOptions>,unsigned int>>(&v14, a2);
  if (v17 == 1)
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
    *v12 = &unk_1F10F5518;
    *(v12 + 1) = v9;
    *(v12 + 2) = a1;
    v13 = v12;
    WebKit::WebPage::countStringMatches(a3, &v14, v15, v16, &v13);
    result = v13;
    v13 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    if (v17)
    {
LABEL_11:
      result = v14;
      v14 = 0;
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

WTF *IPC::handleMessageAsync<Messages::WebPage::ReplaceMatches,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::String const&,BOOL,WTF::CompletionHandler<void ()(unsigned long long)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  IPC::VectorArgumentCoder<true,unsigned int,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a2, &v39);
  if ((v41 & 1) == 0)
  {
    v10 = *a2;
    v23 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v7 = *(a2 + 3);
    if (v7)
    {
      v24 = v23 == 0;
    }

    else
    {
      v24 = 1;
    }

    if (!v24)
    {
      goto LABEL_35;
    }

    goto LABEL_31;
  }

  while (1)
  {
    v7 = IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a2, &v42);
    if ((v43 & 1) == 0)
    {
      v10 = *a2;
      v27 = *(a2 + 1);
      *a2 = 0;
      *(a2 + 1) = 0;
      v28 = *(a2 + 3);
      if (!v28 || !v27 || (v7 = (*(*v28 + 16))(v28, v10), (v43 & 1) == 0))
      {
        v13 = 0;
        LOBYTE(v34) = 0;
        v38 = 0;
        goto LABEL_8;
      }
    }

    v8 = *(a2 + 1);
    v9 = *(a2 + 2);
    v10 = *a2;
    if (v8 <= &v9[-*a2])
    {
      break;
    }

    *(a2 + 2) = v9 + 1;
    if (!v9)
    {
      goto LABEL_43;
    }

    v3 = *v9;
    if (v3 >= 2)
    {
      goto LABEL_46;
    }

    if (v41)
    {
      v11 = v39;
      v39 = 0;
      v34 = v11;
      v12 = v40;
      HIDWORD(v40) = 0;
      v35 = v12;
      v36 = v42;
      v37 = v3;
      v13 = 1;
      v38 = 1;
      goto LABEL_8;
    }

    __break(1u);
LABEL_35:
    (*(*v7 + 16))(v7, v10);
    if ((v41 & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  *a2 = 0;
  *(a2 + 1) = 0;
  v30 = *(a2 + 3);
  if (v30)
  {
    if (v8)
    {
      (*(*v30 + 16))(v30);
      v8 = *(a2 + 1);
    }
  }

  else
  {
    v8 = 0;
  }

LABEL_43:
  *a2 = 0;
  *(a2 + 1) = 0;
  v31 = *(a2 + 3);
  if (!v31)
  {
    v8 = 0;
LABEL_45:
    v10 = 0;
    goto LABEL_46;
  }

  if (!v8)
  {
    goto LABEL_45;
  }

  (*(*v31 + 16))(v31);
  v10 = *a2;
  v8 = *(a2 + 1);
LABEL_46:
  *a2 = 0;
  *(a2 + 1) = 0;
  v32 = *(a2 + 3);
  if (v32 && v8)
  {
    (*(*v32 + 16))(v32, v10);
  }

  LOBYTE(v34) = 0;
  v38 = 0;
  if (v43)
  {
    v33 = v42;
    v42 = 0;
    if (v33)
    {
      if (atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v33, v10);
      }
    }
  }

  v13 = 0;
LABEL_8:
  if (v41)
  {
    v14 = v39;
    if (v39)
    {
      v39 = 0;
      LODWORD(v40) = 0;
      v29 = v13;
      WTF::fastFree(v14, v10);
      if (v29)
      {
        goto LABEL_11;
      }

LABEL_31:
      v25 = *a2;
      v26 = *(a2 + 1);
      *a2 = 0;
      *(a2 + 1) = 0;
      result = *(a2 + 3);
      if (result && v26)
      {
        return (*(*result + 16))(result, v25);
      }

      return result;
    }
  }

  if ((v13 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_11:
  v15 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v16 & 1) == 0)
  {
    goto LABEL_20;
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
      goto LABEL_17;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_17:
  v20 = WTF::fastMalloc(0x18);
  *v20 = &unk_1F10F5540;
  *(v20 + 1) = v17;
  *(v20 + 2) = a1;
  v39 = v20;
  WebKit::WebPage::replaceMatches(a3, &v34, &v36, v3 & 1, &v39);
  result = v39;
  v39 = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  if (v38)
  {
LABEL_20:
    v22 = v36;
    v36 = 0;
    if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v22, v16);
    }

    result = v34;
    if (v34)
    {
      v34 = 0;
      LODWORD(v35) = 0;
      return WTF::fastFree(result, v16);
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::WebPage::FindRectsForStringMatches,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::String const&,WTF::OptionSet<WebKit::FindOptions>,unsigned int,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::FloatRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<WTF::String,WTF::OptionSet<WebKit::FindOptions>,unsigned int>>(&v14, a2);
  if (v17 == 1)
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
    *v12 = &unk_1F10F5568;
    *(v12 + 1) = v9;
    *(v12 + 2) = a1;
    v13 = v12;
    WebKit::WebPage::findRectsForStringMatches(a3, &v14, v15, v16, &v13);
    result = v13;
    v13 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    if (v17)
    {
LABEL_11:
      result = v14;
      v14 = 0;
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

WTF::StringImpl *IPC::handleMessageAsync<Messages::WebPage::FindTextRangesForStringMatches,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::String const&,WTF::OptionSet<WebKit::FindOptions>,unsigned int,WTF::CompletionHandler<void ()(WTF::Vector<WebKit::WebFoundTextRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<WTF::String,WTF::OptionSet<WebKit::FindOptions>,unsigned int>>(&v14, a2);
  if (v17 == 1)
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
    *v12 = &unk_1F10F5590;
    *(v12 + 1) = v9;
    *(v12 + 2) = a1;
    v13 = v12;
    WebKit::WebPage::findTextRangesForStringMatches(a3, &v14, v15, v16, &v13);
    result = v13;
    v13 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    if (v17)
    {
LABEL_11:
      result = v14;
      v14 = 0;
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

void IPC::handleMessage<Messages::WebPage::ReplaceFoundTextRangeWithString,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebKit::WebFoundTextRange const&,WTF::String const&)>(WTF::StringImpl *a1, WebKit::WebFoundTextRangeController ***a2)
{
  IPC::Decoder::decode<WebKit::WebFoundTextRange>(a1, v20);
  if (v23 == 1)
  {
    IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a1, &v24);
    if ((v25 & 1) == 0)
    {
      goto LABEL_13;
    }

    do
    {
      if (v23)
      {
        v15[0] = v20[0];
        v15[1] = v20[1];
        *v16 = *v21;
        v17 = v22;
        v18 = v24;
        v19 = 1;
        WebKit::WebPage::replaceFoundTextRangeWithString(a2, v15, &v18);
        if (v19)
        {
          v5 = v18;
          v18 = 0;
          if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v5, v4);
          }

          v6 = v16[1];
          v16[1] = 0;
          if (v6)
          {
            if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v6, v4);
            }
          }
        }

        return;
      }

      __break(1u);
LABEL_13:
      v7 = *a1;
      v8 = *(a1 + 1);
      *a1 = 0;
      *(a1 + 1) = 0;
      v9 = *(a1 + 3);
      if (!v9)
      {
        break;
      }

      if (!v8)
      {
        break;
      }

      (*(*v9 + 16))(v9, v7);
    }

    while ((v25 & 1) != 0);
    if (v23)
    {
      v10 = v21[1];
      v21[1] = 0;
      if (v10)
      {
        if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v10, v7);
        }
      }
    }
  }

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

WTF::StringImpl *IPC::handleMessage<Messages::WebPage::DecorateTextRangeWithStyle,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebKit::WebFoundTextRange const&,WebKit::FindDecorationStyle)>(WTF::StringImpl *a1, uint64_t a2)
{
  IPC::Decoder::decode<WebKit::WebFoundTextRange>(a1, v22);
  if (v25 == 1)
  {
    v4 = *(a1 + 1);
    v5 = *(a1 + 2);
    v6 = *a1;
    if (v4 <= &v5[-*a1])
    {
      *a1 = 0;
      *(a1 + 1) = 0;
      v10 = *(a1 + 3);
      if (v10)
      {
        if (v4)
        {
          (*(*v10 + 16))(v10);
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
        if (v7 < 3)
        {
          v17[0] = v22[0];
          v17[1] = v22[1];
          *v18 = *v23;
          v19 = v24;
          v20 = v7;
          v21 = 1;
          result = WebKit::WebPage::decorateTextRangeWithStyle(a2, v17, v7);
          if (v21)
          {
            result = v18[1];
            v18[1] = 0;
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

        goto LABEL_14;
      }
    }

    *a1 = 0;
    *(a1 + 1) = 0;
    v11 = *(a1 + 3);
    if (v11)
    {
      if (v4)
      {
        (*(*v11 + 16))(v11);
        v6 = *a1;
        v4 = *(a1 + 1);
LABEL_14:
        *a1 = 0;
        *(a1 + 1) = 0;
        v12 = *(a1 + 3);
        if (v12 && v4)
        {
          (*(*v12 + 16))(v12, v6);
        }

        if (v25)
        {
          v13 = v23[1];
          v23[1] = 0;
          if (v13)
          {
            if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v13, v6);
            }
          }
        }

        goto LABEL_19;
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = 0;
    goto LABEL_14;
  }

LABEL_19:
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

  return result;
}

void IPC::handleMessage<Messages::WebPage::ScrollTextRangeToVisible,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebKit::WebFoundTextRange const&)>(WTF::StringImpl *a1, WebKit::WebFoundTextRangeController ***a2)
{
  IPC::Decoder::decode<std::tuple<WebKit::WebFoundTextRange>>(v5, a1);
  if (v7 == 1)
  {
    WebKit::WebPage::scrollTextRangeToVisible(a2, v5);
    if (v7)
    {
      v4 = v6;
      v6 = 0;
      if (v4)
      {
        if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v4, v3);
        }
      }
    }
  }
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::WebPage::RequestRectForFoundTextRange,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebKit::WebFoundTextRange const&,WTF::CompletionHandler<void ()(WebCore::FloatRect)> &&)>(atomic_ullong *a1, WTF::StringImpl *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<WebKit::WebFoundTextRange>>(v14, a2);
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
    *v12 = &unk_1F10F55B8;
    *(v12 + 1) = v9;
    *(v12 + 2) = a1;
    v13 = v12;
    WebKit::WebPage::requestRectForFoundTextRange(a3, v14, &v13);
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

uint64_t IPC::handleMessageAsync<Messages::WebPage::AddLayerForFindOverlay,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::CompletionHandler<void ()(std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
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
    *v10 = &unk_1F10F55E0;
    v10[1] = v7;
    v10[2] = a1;
    v11 = v10;
    WebKit::WebPage::addLayerForFindOverlay(a3, &v11);
    result = v11;
    v11 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebPage::RemoveLayerForFindOverlay,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
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
    *v10 = &unk_1F10F5608;
    v10[1] = v7;
    v10[2] = a1;
    v11 = v10;
    WebKit::WebPage::removeLayerForFindOverlay(a3, &v11);
    result = v11;
    v11 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebPage::PerformDragControllerAction,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebKit::DragControllerAction,WebCore::DragData &&,WTF::CompletionHandler<void ()(std::optional<WebCore::DragOperation>,WebCore::DragHandlingMethod,BOOL,unsigned int,WebCore::IntRect,WebCore::DragHandlingMethod,std::optional<WebCore::RemoteUserInputEventData>)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  v4 = a2;
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(a2, &v35);
  if ((v36 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_2:
  v6 = *(v4 + 1);
  v7 = *(v4 + 2);
  v8 = *v4;
  if (v6 <= &v7[-*v4])
  {
    *v4 = 0;
    *(v4 + 1) = 0;
    v21 = *(v4 + 3);
    if (v21)
    {
      if (v6)
      {
        (*(*v21 + 16))(v21);
        v6 = *(v4 + 1);
      }
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_26;
  }

  *(v4 + 2) = v7 + 1;
  if (!v7)
  {
LABEL_26:
    *v4 = 0;
    *(v4 + 1) = 0;
    v22 = *(v4 + 3);
    if (v22)
    {
      if (v6)
      {
        (*(*v22 + 16))(v22);
        v8 = *v4;
        v6 = *(v4 + 1);
        goto LABEL_29;
      }
    }

    else
    {
      v6 = 0;
    }

    v8 = 0;
LABEL_29:
    *v4 = 0;
    *(v4 + 1) = 0;
    v23 = *(v4 + 3);
    if (v23 && v6)
    {
      (*(*v23 + 16))(v23, v8);
    }

    goto LABEL_30;
  }

  v9 = *v7;
  if (v9 >= 4)
  {
    goto LABEL_29;
  }

  IPC::Decoder::decode<WebCore::DragData>(v37, v4);
  if (v44 == 1)
  {
    if (v36)
    {
      v26 = v35;
      v27 = v9;
      v28[0] = *v37;
      *(v28 + 10) = *(&v37[1] + 2);
      v29[0] = v38;
      v11 = v39;
      v38 = 0;
      v39 = 0;
      v29[1] = v11;
      v31 = v41;
      v30 = v40;
      v32 = v42;
      v33 = v43;
      v34 = 1;
      v42 = 0;
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v38, v10);
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_30:
  while (1)
  {
    LOBYTE(v26) = 0;
    v34 = 0;
    v13 = *v4;
    v24 = *(v4 + 1);
    *v4 = 0;
    *(v4 + 1) = 0;
    result = *(v4 + 3);
    if (!result)
    {
      break;
    }

    if (!v24)
    {
      break;
    }

    result = (*(*result + 16))(result, v13);
    if ((v34 & 1) == 0)
    {
      break;
    }

LABEL_8:
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v4);
    if ((v13 & 1) == 0)
    {
      break;
    }

    v4 = result;
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
        goto LABEL_14;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_14:
    v16 = WTF::fastMalloc(0x18);
    *v16 = &unk_1F10F5630;
    v16[1] = v4;
    v16[2] = a1;
    v37[0] = v16;
    if (v34)
    {
      WebKit::WebPage::performDragControllerAction(a3, v26, SBYTE8(v26), v27, v28, v37);
      result = v37[0];
      v37[0] = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }

      break;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    v17 = *v4;
    v18 = *(v4 + 1);
    *v4 = 0;
    *(v4 + 1) = 0;
    v19 = *(v4 + 3);
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
      (*(*v19 + 16))(v19, v17);
      if (v36)
      {
        goto LABEL_2;
      }
    }
  }

  if (v34 == 1)
  {
    v25 = v32;
    v32 = 0;
    if (v25)
    {
      if (atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v25, v13);
      }
    }

    return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v29, v13);
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebPage::PerformDragOperation,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::DragData &&,WebKit::SandboxExtensionHandle &&,WTF::Vector<WebCore::DragData &&,0ul,WebKit::SandboxExtensionHandle &::CrashOnOverflow,16ul,WebKit::SandboxExtensionHandle &::FastMalloc> &&,WebKit::SandboxExtensionHandle &::CompletionHandler<void ()(BOOL)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  v4 = a2;
  IPC::Decoder::decode<WebCore::DragData>(v34, a2);
  if (v39 != 1)
  {
    goto LABEL_33;
  }

  IPC::ArgumentCoder<WebKit::SandboxExtensionHandle,void>::decode(v4, &v40);
  if (v41 & 1) != 0 || (v6 = *v4, v20 = *(v4 + 1), *v4 = 0, *(v4 + 1) = 0, (v21 = *(v4 + 3)) != 0) && v20 && ((*(*v21 + 16))(v21, v6), (v41))
  {
    IPC::VectorArgumentCoder<false,WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(v4, v6, &v42);
    if (v44 & 1) != 0 || (v6 = *v4, v24 = *(v4 + 1), *v4 = 0, *(v4 + 1) = 0, (v25 = *(v4 + 3)) != 0) && v24 && ((*(*v25 + 16))(v25, v6), (v44))
    {
      if ((v39 & 1) == 0 || (v41 & 1) == 0)
      {
        goto LABEL_32;
      }

      v26[0] = *v34;
      *(v26 + 10) = *(&v34[1] + 2);
      v7 = v35[0];
      v35[0] = 0u;
      v27[0] = v7;
      v27[1] = v35[1];
      v28 = v36;
      v8 = v37;
      v37 = 0;
      v29 = v8;
      v30 = v38;
      v9 = v40;
      v40 = 0;
      v31 = v9;
      v32[0] = v42;
      v10 = v43;
      v42 = 0;
      v43 = 0;
      v32[1] = v10;
      v11 = 1;
      v33 = 1;
      WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v42, v6);
    }

    else
    {
      v11 = 0;
      LOBYTE(v26[0]) = 0;
      v33 = 0;
    }

    if (v41)
    {
      WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v40);
    }
  }

  else
  {
    v11 = 0;
    LOBYTE(v26[0]) = 0;
    v33 = 0;
  }

  if (v39)
  {
    v12 = v37;
    v37 = 0;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v6);
    }

    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v35, v6);
  }

  if ((v11 & 1) == 0)
  {
    goto LABEL_34;
  }

  while (1)
  {
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v4);
    if ((v14 & 1) == 0)
    {
      break;
    }

    v4 = result;
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
        goto LABEL_21;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_21:
    v17 = WTF::fastMalloc(0x18);
    *v17 = &unk_1F10F5658;
    v17[1] = v4;
    v17[2] = a1;
    v34[0] = v17;
    if (v33)
    {
      WebKit::WebPage::performDragOperation(a3, v26, &v31, v32, v34);
      result = v34[0];
      v34[0] = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }

      break;
    }

LABEL_32:
    __break(1u);
LABEL_33:
    LOBYTE(v26[0]) = 0;
    v33 = 0;
LABEL_34:
    v14 = *v4;
    v22 = *(v4 + 1);
    *v4 = 0;
    *(v4 + 1) = 0;
    result = *(v4 + 3);
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
      result = (*(*result + 16))(result, v14);
      if (v33)
      {
        continue;
      }
    }

    break;
  }

  if (v33 == 1)
  {
    WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v32, v14);
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v31);
    v19 = v29;
    v29 = 0;
    if (v19)
    {
      if (atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v19, v18);
      }
    }

    return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v27, v18);
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebPage::DragEnded,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::IntPoint,WebCore::IntPoint,WTF::OptionSet<WebCore::DragOperation>,WTF::CompletionHandler<void ()(std::optional<WebCore::RemoteUserInputEventData>)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(a2, &v27);
  if ((v29 & 1) != 0 || ((v23 = *a2, v24 = *(a2 + 1), *a2 = 0, *(a2 + 1) = 0, (v25 = *(a2 + 3)) != 0) ? (v26 = v24 == 0) : (v26 = 1), !v26 && ((*(*v25 + 16))(v25, v23), (v29))) && (v6 = IPC::Decoder::decode<WebCore::IntPoint>(a2), (v7) && (v8 = v6, v9 = IPC::Decoder::decode<WebCore::IntPoint>(a2), (v10) && (v11 = v9, result = IPC::Decoder::decode<WTF::OptionSet<WebCore::DragOperation>>(a2), (result & 0x100) != 0))
  {
    if (v29)
    {
      v15 = result;
      v16 = v27;
      v17 = v28;
      result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
      if (v18)
      {
        v19 = result;
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
            goto LABEL_14;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_14:
        v22 = WTF::fastMalloc(0x18);
        *v22 = &unk_1F10F5680;
        v22[1] = v19;
        v22[2] = a1;
        v27 = v22;
        WebKit::WebPage::dragEnded(a3, v16, v17, v8, v11, v15, &v27);
        result = v27;
        v27 = 0;
        if (result)
        {
          return (*(*result + 8))(result);
        }
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v13 = *a2;
    v14 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result)
    {
      if (v14)
      {
        return (*(*result + 16))(result, v13);
      }
    }
  }

  return result;
}