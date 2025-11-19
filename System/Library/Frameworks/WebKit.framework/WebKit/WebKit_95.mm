uint64_t IPC::handleMessageAsync<Messages::WebPage::RequestDragStart,IPC::Connection,WebKit::WebPage,WebKit::WebPage,WTF::Awaitable<WebKit::DragInitiationResult> ()(std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::IntPoint,WebCore::IntPoint,WTF::OptionSet<WebCore::DragSourceAction>)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::IntPoint,WebCore::IntPoint,WTF::OptionSet<WebCore::DragSourceAction>>>(v13, a2);
  if (v13[40] == 1)
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
      *v11 = &unk_1F10F56A8;
      v11[1] = v8;
      v11[2] = a1;
      v12 = v11;
      IPC::callMemberFunctionCoroutine<WebKit::WebPage,WebKit::WebPage,WTF::Awaitable<WebKit::DragInitiationResult> ()(std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::IntPoint,WebCore::IntPoint,WTF::OptionSet<WebCore::DragSourceAction>),std::tuple<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::IntPoint,WebCore::IntPoint,WTF::OptionSet<WebCore::DragSourceAction>>,void ()(WebKit::DragInitiationResult&&)>(a3, WebKit::WebPage::requestDragStart, 0, v13, &v12);
      result = v12;
      if (v12)
      {
        return (*(*v12 + 8))(v12);
      }
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebPage::RequestAdditionalItemsForDragSession,IPC::Connection,WebKit::WebPage,WebKit::WebPage,WTF::Awaitable<WebKit::DragInitiationResult> ()(std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::IntPoint,WebCore::IntPoint,WTF::OptionSet<WebCore::DragSourceAction>)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::IntPoint,WebCore::IntPoint,WTF::OptionSet<WebCore::DragSourceAction>>>(v13, a2);
  if (v13[40] == 1)
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
      *v11 = &unk_1F10F56D0;
      v11[1] = v8;
      v11[2] = a1;
      v12 = v11;
      IPC::callMemberFunctionCoroutine<WebKit::WebPage,WebKit::WebPage,WTF::Awaitable<WebKit::DragInitiationResult> ()(std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::IntPoint,WebCore::IntPoint,WTF::OptionSet<WebCore::DragSourceAction>),std::tuple<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::IntPoint,WebCore::IntPoint,WTF::OptionSet<WebCore::DragSourceAction>>,void ()(WebKit::DragInitiationResult&&)>(a3, WebKit::WebPage::requestAdditionalItemsForDragSession, 0, v13, &v12);
      result = v12;
      if (v12)
      {
        return (*(*v12 + 8))(v12);
      }
    }
  }

  return result;
}

WTF *IPC::handleMessageAsync<Messages::WebPage::InsertDroppedImagePlaceholders,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::Vector<WebCore::IntSize,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::IntRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,std::optional<WebCore::TextIndicatorData>)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  v4 = a2;
  IPC::VectorArgumentCoder<false,WebCore::IntSize,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a2, v15);
  if (v16)
  {
    while (1)
    {
      v12 = v15[0];
      v13 = v15[1];
      v14 = 1;
      result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v4);
      if ((v7 & 1) == 0)
      {
        break;
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
      result = WTF::fastMalloc(0x18);
      *result = &unk_1F10F56F8;
      *(result + 1) = v4;
      *(result + 2) = a1;
      v15[0] = result;
      if (v14)
      {
        WebKit::WebPage::insertDroppedImagePlaceholders(a3, &v12, v15);
        result = v15[0];
        v15[0] = 0;
        if (result)
        {
          result = (*(*result + 8))(result);
        }

        break;
      }

      __break(1u);
LABEL_22:
      if (!v11)
      {
        goto LABEL_17;
      }

      (*(*result + 16))(result, v10);
      if ((v16 & 1) == 0)
      {
        v7 = *v4;
        v11 = *(v4 + 1);
        result = *(v4 + 3);
        goto LABEL_18;
      }
    }
  }

  else
  {
    v10 = *v4;
    v11 = *(v4 + 1);
    *v4 = 0;
    *(v4 + 1) = 0;
    result = *(v4 + 3);
    if (result)
    {
      goto LABEL_22;
    }

    v11 = 0;
LABEL_17:
    v7 = 0;
LABEL_18:
    LOBYTE(v12) = 0;
    v14 = 0;
    *v4 = 0;
    *(v4 + 1) = 0;
    if (result && v11)
    {
      result = (*(*result + 16))(result, v7);
    }
  }

  if (v14 == 1)
  {
    result = v12;
    if (v12)
    {
      v12 = 0;
      LODWORD(v13) = 0;
      return WTF::fastFree(result, v7);
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebPage::InsertTextPlaceholder,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::IntSize const&,WTF::CompletionHandler<void ()(std::optional<WebCore::ElementContext> const&)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<WebCore::IntSize>>(a2);
  v14 = result;
  v15 = v7;
  if (v7)
  {
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
      *v12 = &unk_1F10F5720;
      v12[1] = v9;
      v12[2] = a1;
      v13 = v12;
      WebKit::WebPage::insertTextPlaceholder(a3, &v14, &v13);
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

uint64_t IPC::handleMessageAsync<Messages::WebPage::RemoveTextPlaceholder,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::ElementContext const&,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
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
      *v11 = &unk_1F10F5748;
      v11[1] = v8;
      v11[2] = a1;
      v12 = v11;
      WebKit::WebPage::removeTextPlaceholder(a3, v13, &v12);
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

WebKit::WebOpenPanelResultListener *IPC::handleMessage<Messages::WebPage::DidChooseFilesForOpenPanelWithDisplayStringAndIcon,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::String const&,std::span<unsigned char const,18446744073709551615ul>)>(IPC::Decoder *a1, WebKit::WebOpenPanelResultListener *a2)
{
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a1, &v24);
  if ((v26 & 1) == 0)
  {
    goto LABEL_15;
  }

  while (1)
  {
    IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a1, &v27);
    if ((v28 & 1) == 0)
    {
      v4 = *a1;
      v15 = *(a1 + 1);
      *a1 = 0;
      *(a1 + 1) = 0;
      v16 = *(a1 + 3);
      if (!v16)
      {
        goto LABEL_24;
      }

      if (!v15)
      {
        goto LABEL_24;
      }

      (*(*v16 + 16))(v16, v4);
      if ((v28 & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::decode<IPC::Decoder>(a1, &v29);
    if ((v30 & 1) == 0)
    {
      v4 = *a1;
      v17 = *(a1 + 1);
      *a1 = 0;
      *(a1 + 1) = 0;
      v18 = *(a1 + 3);
      if (!v18 || !v17 || ((*(*v18 + 16))(v18, v4), (v30 & 1) == 0))
      {
        if (v28)
        {
          v19 = v27;
          v27 = 0;
          if (v19)
          {
            if (atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v19, v4);
            }
          }
        }

LABEL_24:
        if (v26)
        {
          WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v24, v4);
        }

LABEL_20:
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
    }

    if (v26 & 1) != 0 && (v28)
    {
      break;
    }

    __break(1u);
LABEL_15:
    v9 = *a1;
    v10 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v11 = *(a1 + 3);
    if (v11)
    {
      v12 = v10 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (!v12)
    {
      (*(*v11 + 16))(v11, v9);
      if (v26)
      {
        continue;
      }
    }

    goto LABEL_20;
  }

  v20[0] = v24;
  v5 = v25;
  v24 = 0;
  v25 = 0;
  v20[1] = v5;
  v21 = v27;
  v22 = v29;
  v23 = 1;
  if (v26)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v24, v4);
  }

  result = WebKit::WebPage::didChooseFilesForOpenPanelWithDisplayStringAndIcon(a2, v20, &v21, v22, *(&v22 + 1));
  if (v23)
  {
    v8 = v21;
    v21 = 0;
    if (v8)
    {
      if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v7);
      }
    }

    return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v20, v7);
  }

  return result;
}

WebKit::WebOpenPanelResultListener *IPC::handleMessage<Messages::WebPage::DidChooseFilesForOpenPanel,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)>(IPC::Decoder *a1, WebKit::WebOpenPanelResultListener *a2)
{
  IPC::ArgumentCoder<std::tuple<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder>(a1, v10);
  if (v12 & 1) != 0 || ((v7 = *a1, v8 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (result = *(a1 + 3)) != 0) ? (v9 = v8 == 0) : (v9 = 1), !v9 && (result = (*(*result + 16))(result, v7), (v12)))
  {
    result = WebKit::WebPage::didChooseFilesForOpenPanel(a2);
    if (v12)
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v11, v5);
      return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v10, v6);
    }
  }

  return result;
}

uint64_t IPC::handleMessage<Messages::WebPage::ExtendSandboxForFilesFromOpenPanel,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>(IPC::Decoder *a1, void *a2)
{
  IPC::ArgumentCoder<std::tuple<WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder>(a1, a2, v9);
  if (v10 & 1) != 0 || ((v6 = *a1, v7 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (result = *(a1 + 3)) != 0) ? (v8 = v7 == 0) : (v8 = 1), !v8 && (result = (*(*result + 16))(result, v6), (v10)))
  {
    result = WebKit::WebPage::extendSandboxForFilesFromOpenPanel(a2, v9);
    if (v10)
    {
      return WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v9, v5);
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessage<Messages::WebPage::ChangeSpellingToWord,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::String const&)>(IPC::Decoder *a1, WebKit::WebPage *a2)
{
  IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a1, &v9);
  if (v10 & 1) != 0 || ((v6 = *a1, v7 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (result = *(a1 + 3)) != 0) ? (v8 = v7 == 0) : (v8 = 1), !v8 && (result = (*(*result + 16))(result, v6), (v10)))
  {
    result = WebKit::WebPage::changeSpellingToWord(a2, &v9);
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

uint64_t *IPC::handleMessage<Messages::WebPage::DidFinishCheckingText,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::ObjectIdentifierGeneric<WebKit::TextCheckerRequestType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WebCore::TextCheckingResult,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)>(uint64_t *a1, uint64_t a2)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if (v6 & 1) != 0 && ((v7 = v4, IPC::VectorArgumentCoder<false,WebCore::TextCheckingResult,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a1, &v20, v5), (v22) || (v12 = *a1, v13 = a1[1], *a1 = 0, a1[1] = 0, (v14 = a1[3]) != 0) && v13 && ((*(*v14 + 16))(v14, v12), (v22)))
  {
    v18[0] = v20;
    v9 = v21;
    v20 = 0;
    v21 = 0;
    v18[1] = v9;
    v19 = 1;
    WTF::Vector<WebCore::TextCheckingResult,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v20, v8);
    result = WebKit::WebPage::didFinishCheckingText(a2, v7, v18);
    if (v19)
    {
      return WTF::Vector<WebCore::TextCheckingResult,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v18, v11);
    }
  }

  else
  {
    v15 = *a1;
    v16 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    result = a1[3];
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
      return (*(*result + 16))(result, v15);
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessage<Messages::WebPage::DidReceiveGeolocationPermissionDecision,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&)>(uint64_t *a1, uint64_t a2)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if (v5 & 1) != 0 && ((v6 = v4, IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a1, &v17), (v18) || (v9 = *a1, v10 = a1[1], *a1 = 0, a1[1] = 0, (v11 = a1[3]) != 0) && v10 && ((*(*v11 + 16))(v11, v9), (v18)))
  {
    v15 = v17;
    v16 = 1;
    result = WebKit::WebPage::didReceiveGeolocationPermissionDecision(a2, v6, &v15);
    if (v16)
    {
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

  else
  {
    v12 = *a1;
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
      return (*(*result + 16))(result, v12);
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::WebPage::UserMediaAccessWasGranted,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::ObjectIdentifierGeneric<WebCore::UserMediaRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::CaptureDevice &&,WebCore::CaptureDevice &,WebCore::MediaDeviceHashSalts &&,WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, uint64_t *a2, uint64_t a3)
{
  v4 = a2;
  v6 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v7 & 1) == 0)
  {
    goto LABEL_71;
  }

  v8 = v6;
  IPC::Decoder::decode<WebCore::CaptureDevice>(v4, &v55);
  if (v59 == 1)
  {
    IPC::Decoder::decode<WebCore::CaptureDevice>(v4, &v60);
    if (v64 == 1)
    {
      IPC::ArgumentCoder<WebCore::MediaDeviceHashSalts,void>::decode(v4, &v65);
      if (v66)
      {
        IPC::VectorArgumentCoder<false,WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(v4, v10, &v67);
        if (v69 & 1) != 0 || (v9 = *v4, v40 = *(v4 + 1), *v4 = 0, *(v4 + 1) = 0, (v41 = *(v4 + 3)) != 0) && v40 && ((*(*v41 + 16))(v41, v9), (v69))
        {
          if ((v59 & 1) == 0 || (v64 & 1) == 0)
          {
            goto LABEL_70;
          }

          v11 = v55;
          v55 = 0;
          v43 = v8;
          v44 = v11;
          v45 = v56;
          v12 = *v57;
          *v57 = 0u;
          *v46 = v12;
          v47 = v58;
          v13 = v60;
          v60 = 0;
          v48 = v13;
          v49 = v61;
          v14 = v62;
          v62 = 0u;
          *v50 = v14;
          v51 = v63;
          v15 = v65;
          *&v65 = 0;
          *v52 = v15;
          v53[0] = v67;
          *&v15 = v68;
          v67 = 0;
          v68 = 0;
          v53[1] = v15;
          v54 = 1;
          WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v67, v9);
        }

        else
        {
          LOBYTE(v43) = 0;
          v54 = 0;
          v42 = *(&v65 + 1);
          if (*(&v65 + 1) && atomic_fetch_add_explicit(*(&v65 + 1), 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v42, v9);
          }
        }

        v16 = v65;
        if (v65 && atomic_fetch_add_explicit(v65, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v16, v9);
        }
      }

      else
      {
        v9 = *v4;
        v38 = *(v4 + 1);
        *v4 = 0;
        *(v4 + 1) = 0;
        v39 = *(v4 + 3);
        if (v39 && v38)
        {
          (*(*v39 + 16))(v39, v9);
        }

        LOBYTE(v43) = 0;
        v54 = 0;
      }

      if (v64)
      {
        v17 = *(&v62 + 1);
        *(&v62 + 1) = 0;
        if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v17, v9);
        }

        v18 = v62;
        *&v62 = 0;
        if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v18, v9);
        }

        v19 = v60;
        v60 = 0;
        if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v19, v9);
        }
      }
    }

    else
    {
      LOBYTE(v43) = 0;
      v54 = 0;
    }

    if (v59)
    {
      v20 = v57[1];
      v57[1] = 0;
      if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v20, v9);
      }

      v21 = v57[0];
      v57[0] = 0;
      if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v21, v9);
      }

      v22 = v55;
      v55 = 0;
      if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v22, v9);
      }
    }
  }

  else
  {
    LOBYTE(v43) = 0;
    v54 = 0;
  }

  if ((v54 & 1) == 0)
  {
    goto LABEL_72;
  }

  while (1)
  {
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v4);
    if ((v24 & 1) == 0)
    {
      break;
    }

    v4 = result;
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
        goto LABEL_41;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_41:
    v27 = WTF::fastMalloc(0x18);
    *v27 = &unk_1F10F5770;
    *(v27 + 1) = v4;
    *(v27 + 2) = a1;
    v60 = v27;
    if (v54)
    {
      WebKit::WebPage::userMediaAccessWasGranted(a3, v43, &v44, &v48, v52, v53, &v60);
      result = v60;
      v60 = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }

      break;
    }

LABEL_70:
    __break(1u);
LABEL_71:
    LOBYTE(v43) = 0;
    v54 = 0;
LABEL_72:
    v24 = *v4;
    v36 = *(v4 + 1);
    *v4 = 0;
    *(v4 + 1) = 0;
    result = *(v4 + 3);
    if (result)
    {
      v37 = v36 == 0;
    }

    else
    {
      v37 = 1;
    }

    if (!v37)
    {
      result = (*(*result + 16))(result, v24);
      if (v54)
      {
        continue;
      }
    }

    break;
  }

  if (v54 == 1)
  {
    WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v53, v24);
    v29 = v52[1];
    v52[1] = 0;
    if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v29, v28);
    }

    v30 = v52[0];
    v52[0] = 0;
    if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v30, v28);
    }

    v31 = v50[1];
    v50[1] = 0;
    if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v31, v28);
    }

    v32 = v50[0];
    v50[0] = 0;
    if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v32, v28);
    }

    v33 = v48;
    v48 = 0;
    if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v33, v28);
    }

    v34 = v46[1];
    v46[1] = 0;
    if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v34, v28);
    }

    v35 = v46[0];
    v46[0] = 0;
    if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v35, v28);
    }

    result = v44;
    v44 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v28);
      }
    }
  }

  return result;
}

uint64_t IPC::handleMessage<Messages::WebPage::UserMediaAccessWasDenied,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::ObjectIdentifierGeneric<WebCore::UserMediaRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,unsigned long long,WTF::String &&,WebCore::MediaConstraintType)>(uint64_t *a1, uint64_t a2)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if ((v5 & 1) == 0)
  {
LABEL_14:
    v15 = *a1;
    v16 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    result = a1[3];
    if (result)
    {
      v18 = v16 == 0;
    }

    else
    {
      v18 = 1;
    }

    if (!v18)
    {
      return (*(*result + 16))(result, v15);
    }

    return result;
  }

  v6 = a1[1];
  v7 = (a1[2] + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v7 - *a1;
  v9 = v6 >= v8;
  v10 = v6 - v8;
  if (!v9 || v10 <= 7)
  {
    *a1 = 0;
    a1[1] = 0;
    v23 = a1[3];
    if (v23)
    {
      if (v6)
      {
        (*(*v23 + 16))(v23);
        v6 = a1[1];
      }
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_31;
  }

  a1[2] = v7 + 8;
  if (!v7)
  {
LABEL_31:
    *a1 = 0;
    a1[1] = 0;
    v24 = a1[3];
    if (v24 && v6)
    {
      (*(*v24 + 16))(v24);
    }

    goto LABEL_14;
  }

  v12 = v4;
  IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a1, &v26);
  if ((v27 & 1) == 0)
  {
    goto LABEL_25;
  }

  while (1)
  {
    if ((IPC::Decoder::decode<WebCore::MediaConstraintType>(a1) & 0x100) == 0)
    {
      if (v27)
      {
        v14 = v26;
        v26 = 0;
        if (v14)
        {
          if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v14, v13);
          }
        }
      }

      goto LABEL_14;
    }

    if (v27)
    {
      break;
    }

    __break(1u);
LABEL_25:
    v20 = *a1;
    v21 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v22 = a1[3];
    if (v22)
    {
      if (v21)
      {
        (*(*v22 + 16))(v22, v20);
        if (v27)
        {
          continue;
        }
      }
    }

    goto LABEL_14;
  }

  v25 = v26;
  WebKit::WebPage::userMediaAccessWasDenied(a2, v12);
  result = v25;
  if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    return WTF::StringImpl::destroy(v25, v19);
  }

  return result;
}

WTF::StringImpl *IPC::handleMessage<Messages::WebPage::MediaKeySystemWasGranted,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::ObjectIdentifierGeneric<WebCore::MediaKeySystemRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String &&)>(uint64_t *a1, uint64_t a2)
{
  result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::MediaKeySystemRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String>>(&v5, a1);
  if (v7 == 1)
  {
    result = WebKit::WebPage::mediaKeySystemWasGranted(a2, v5);
    if (v7)
    {
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

WTF::StringImpl *IPC::handleMessage<Messages::WebPage::MediaKeySystemWasDenied,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::ObjectIdentifierGeneric<WebCore::MediaKeySystemRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String &&)>(uint64_t *a1, uint64_t a2)
{
  result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::MediaKeySystemRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String>>(&v5, a1);
  if (v7 == 1)
  {
    result = WebKit::WebPage::mediaKeySystemWasDenied(a2, v5, &v6);
    if (v7)
    {
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

uint64_t IPC::handleMessageAsync<Messages::WebPage::RequestMediaPlaybackState,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::CompletionHandler<void ()(WebKit::MediaPlaybackState)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
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
    *v10 = &unk_1F10F5798;
    v10[1] = v7;
    v10[2] = a1;
    v11 = v10;
    WebKit::WebPage::requestMediaPlaybackState(a3, &v11);
    result = v11;
    v11 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebPage::PauseAllMediaPlayback,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
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
    *v10 = &unk_1F10F57C0;
    v10[1] = v7;
    v10[2] = a1;
    v11 = v10;
    WebKit::WebPage::pauseAllMediaPlayback(a3, &v11);
    result = v11;
    v11 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebPage::SuspendAllMediaPlayback,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
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
    *v10 = &unk_1F10F57E8;
    v10[1] = v7;
    v10[2] = a1;
    v11 = v10;
    WebKit::WebPage::suspendAllMediaPlayback(a3, &v11);
    result = v11;
    v11 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebPage::ResumeAllMediaPlayback,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
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
    *v10 = &unk_1F10F5810;
    v10[1] = v7;
    v10[2] = a1;
    v11 = v10;
    WebKit::WebPage::resumeAllMediaPlayback(a3, &v11);
    result = v11;
    v11 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebPage::EndPrinting,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, WebKit::WebPage *a3)
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
    *v10 = &unk_1F10F5838;
    v10[1] = v7;
    v10[2] = a1;
    v11 = v10;
    WebKit::WebPage::endPrinting(a3, &v11);
    result = v11;
    v11 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebPage::EndPrintingDuringDOMPrintOperation,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, WebKit::WebPage *a3)
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
    *v10 = &unk_1F10F5860;
    v10[1] = v7;
    v10[2] = a1;
    v11 = v10;
    WebKit::WebPage::endPrinting(a3, &v11);
    result = v11;
    v11 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebPage::ComputePagesForPrinting,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::PrintInfo const&,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::IntRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,double,WebCore::RectEdges<float> const&)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::PrintInfo>>(&v13, a2);
  if (v14[32] == 1)
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
      *v11 = &unk_1F10F5888;
      v11[1] = v8;
      v11[2] = a1;
      v12 = v11;
      WebKit::WebPage::computePagesForPrinting(a3, v13, v14, &v12);
      result = v12;
      if (v12)
      {
        return (*(*v12 + 8))(v12);
      }
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebPage::ComputePagesForPrintingDuringDOMPrintOperation,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::PrintInfo const&,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::IntRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,double,WebCore::RectEdges<float> const&)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::PrintInfo>>(&v13, a2);
  if (v14[32] == 1)
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
      *v11 = &unk_1F10F58B0;
      v11[1] = v8;
      v11[2] = a1;
      v12 = v11;
      WebKit::WebPage::computePagesForPrinting(a3, v13, v14, &v12);
      result = v12;
      if (v12)
      {
        return (*(*v12 + 8))(v12);
      }
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebPage::DrawRectToImage,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::PrintInfo const&,WebCore::IntRect const&,WebCore::IntSize const&,WTF::CompletionHandler<void ()(std::optional<WebCore::ShareableBitmapHandle> &&)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::PrintInfo,WebCore::IntRect,WebCore::IntSize>>(&v13, a2);
  if (v17 == 1)
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
      *v11 = &unk_1F10F58D8;
      v11[1] = v8;
      v11[2] = a1;
      v12 = v11;
      WebKit::WebPage::drawRectToImage(a3, v13, &v14, v15, &v16, &v12);
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

uint64_t IPC::handleMessageAsync<Messages::WebPage::DrawRectToImageDuringDOMPrintOperation,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::PrintInfo const&,WebCore::IntRect const&,WebCore::IntSize const&,WTF::CompletionHandler<void ()(std::optional<WebCore::ShareableBitmapHandle> &&)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::PrintInfo,WebCore::IntRect,WebCore::IntSize>>(&v13, a2);
  if (v17 == 1)
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
      *v11 = &unk_1F10F5900;
      v11[1] = v8;
      v11[2] = a1;
      v12 = v11;
      WebKit::WebPage::drawRectToImage(a3, v13, &v14, v15, &v16, &v12);
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

uint64_t IPC::handleMessageAsync<Messages::WebPage::DrawPagesToPDF,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::PrintInfo const&,unsigned int,unsigned int,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::PrintInfo,unsigned int,unsigned int>>(&v13, a2);
  if (v17 == 1)
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
      *v11 = &unk_1F10F5928;
      v11[1] = v8;
      v11[2] = a1;
      v12 = v11;
      WebKit::WebPage::drawPagesToPDF(a3, v13, &v14, v15, v16, &v12);
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

uint64_t IPC::handleMessageAsync<Messages::WebPage::DrawPagesToPDFDuringDOMPrintOperation,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::PrintInfo const&,unsigned int,unsigned int,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::PrintInfo,unsigned int,unsigned int>>(&v13, a2);
  if (v17 == 1)
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
      *v11 = &unk_1F10F5950;
      v11[1] = v8;
      v11[2] = a1;
      v12 = v11;
      WebKit::WebPage::drawPagesToPDF(a3, v13, &v14, v15, v16, &v12);
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

uint64_t IPC::handleMessageAsync<Messages::WebPage::DrawToPDFiOS,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::PrintInfo const&,unsigned long long,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, WebCore::Page **a3)
{
  v6 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v7 & 1) == 0 || (v8 = v6, IPC::Decoder::decode<WebKit::PrintInfo>(v30, a2), v31 != 1))
  {
LABEL_20:
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

    return result;
  }

  v9 = *(a2 + 1);
  v10 = ((*(a2 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v11 = v10 - *a2;
  v12 = v9 >= v11;
  v13 = v9 - v11;
  if (!v12 || v13 <= 7)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v22 = *(a2 + 3);
    if (v22)
    {
      if (v9)
      {
        (*(*v22 + 16))(v22);
        v9 = *(a2 + 1);
      }
    }

    else
    {
      v9 = 0;
    }

    goto LABEL_19;
  }

  *(a2 + 2) = v10 + 1;
  if (!v10)
  {
LABEL_19:
    *a2 = 0;
    *(a2 + 1) = 0;
    v23 = *(a2 + 3);
    if (v23 && v9)
    {
      (*(*v23 + 16))(v23);
    }

    goto LABEL_20;
  }

  v15 = *v10;
  v27[0] = v30[0];
  v27[1] = v30[1];
  v28 = v15;
  v29 = 1;
  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if (v17)
  {
    v18 = result;
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
        goto LABEL_15;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_15:
    v21 = WTF::fastMalloc(0x18);
    *v21 = &unk_1F10F5978;
    v21[1] = v18;
    v21[2] = a1;
    *&v30[0] = v21;
    WebKit::WebPage::drawToPDFiOS(a3, v8, v27, v15, v30);
    result = *&v30[0];
    *&v30[0] = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebPage::DrawToImage,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::PrintInfo const&,WTF::CompletionHandler<void ()(std::optional<WebCore::ShareableBitmapHandle> &&)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, WebCore::PrintContext **a3)
{
  result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::PrintInfo>>(&v13, a2);
  if (v14[32] == 1)
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
      *v11 = &unk_1F10F59A0;
      v11[1] = v8;
      v11[2] = a1;
      v12 = v11;
      WebKit::WebPage::drawToImage(a3, v13, v14, &v12);
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

uint64_t IPC::handleMessageAsync<Messages::WebPage::DrawToPDF,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WebCore::FloatRect> const&,BOOL,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, WebKit::WebPage *a3)
{
  v6 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v7 & 1) == 0 || (v8 = v6, IPC::ArgumentCoder<std::optional<WebCore::FloatRect>,void>::decode<IPC::Decoder>(a2, &v32), (v34 & 1) == 0) && ((v19 = *a2, v20 = *(a2 + 1), *a2 = 0, *(a2 + 1) = 0, (v21 = *(a2 + 3)) == 0) || !v20 || ((*(*v21 + 16))(v21, v19), (v34 & 1) == 0)))
  {
LABEL_16:
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

    return result;
  }

  v9 = *(a2 + 1);
  v10 = *(a2 + 2);
  v11 = *a2;
  if (v9 <= &v10[-*a2])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v25 = *(a2 + 3);
    if (v25)
    {
      if (v9)
      {
        (*(*v25 + 16))(v25);
        v9 = *(a2 + 1);
      }
    }

    else
    {
      v9 = 0;
    }

    goto LABEL_26;
  }

  *(a2 + 2) = v10 + 1;
  if (!v10)
  {
LABEL_26:
    *a2 = 0;
    *(a2 + 1) = 0;
    v26 = *(a2 + 3);
    if (v26)
    {
      if (v9)
      {
        (*(*v26 + 16))(v26);
        v11 = *a2;
        v9 = *(a2 + 1);
        goto LABEL_29;
      }
    }

    else
    {
      v9 = 0;
    }

    v11 = 0;
LABEL_29:
    *a2 = 0;
    *(a2 + 1) = 0;
    v27 = *(a2 + 3);
    if (v27 && v9)
    {
      (*(*v27 + 16))(v27, v11);
    }

    goto LABEL_16;
  }

  v12 = *v10;
  if (v12 >= 2)
  {
    goto LABEL_29;
  }

  v28 = v32;
  v29 = v33;
  v30 = v12;
  v31 = 1;
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
        goto LABEL_12;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_12:
    v18 = WTF::fastMalloc(0x18);
    *v18 = &unk_1F10F59C8;
    v18[1] = v15;
    v18[2] = a1;
    v32.i64[0] = v18;
    WebKit::WebPage::drawToPDF(a3, v8, &v28, v12 & 1, v32.i64);
    result = v32.i64[0];
    v32.i64[0] = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

_DWORD *IPC::handleMessage<Messages::WebPage::DrawRemoteToPDF,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WebCore::FloatRect> const&,BOOL,WTF::ObjectIdentifierGeneric<WebCore::SnapshotIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>)>(IPC::Decoder *a1, WebKit::WebPage *a2)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if (v5)
  {
    v6 = v4;
    IPC::ArgumentCoder<std::optional<WebCore::FloatRect>,void>::decode<IPC::Decoder>(a1, &v26);
    if ((v28 & 1) == 0)
    {
      v12 = *a1;
      v13 = *(a1 + 1);
      *a1 = 0;
      *(a1 + 1) = 0;
      v11 = *(a1 + 3);
      if (v11)
      {
        goto LABEL_17;
      }

      goto LABEL_10;
    }

    while (1)
    {
      v7 = *(a1 + 1);
      v8 = *(a1 + 2);
      v9 = *a1;
      if (v7 <= &v8[-*a1])
      {
        break;
      }

      *(a1 + 2) = v8 + 1;
      if (!v8)
      {
        goto LABEL_22;
      }

      v10 = *v8;
      if (v10 >= 2)
      {
        goto LABEL_25;
      }

      v11 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1);
      if ((v12 & 1) == 0)
      {
        goto LABEL_10;
      }

      if (v28)
      {
        v21 = v26;
        v22 = v27;
        v23 = v10;
        v24 = v11;
        v25 = 1;
        return WebKit::WebPage::drawRemoteToPDF(a2, v6, &v21, v10 & 1, v11);
      }

      __break(1u);
LABEL_17:
      if (v13)
      {
        (*(*v11 + 16))(v11, v12);
        if (v28)
        {
          continue;
        }
      }

      goto LABEL_10;
    }

    *a1 = 0;
    *(a1 + 1) = 0;
    v18 = *(a1 + 3);
    if (v18)
    {
      if (v7)
      {
        (*(*v18 + 16))(v18);
        v7 = *(a1 + 1);
      }
    }

    else
    {
      v7 = 0;
    }

LABEL_22:
    *a1 = 0;
    *(a1 + 1) = 0;
    v19 = *(a1 + 3);
    if (v19)
    {
      if (v7)
      {
        (*(*v19 + 16))(v19);
        v9 = *a1;
        v7 = *(a1 + 1);
        goto LABEL_25;
      }
    }

    else
    {
      v7 = 0;
    }

    v9 = 0;
LABEL_25:
    *a1 = 0;
    *(a1 + 1) = 0;
    v20 = *(a1 + 3);
    if (v20 && v7)
    {
      (*(*v20 + 16))(v20, v9);
    }
  }

LABEL_10:
  v15 = *a1;
  v16 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  result = *(a1 + 3);
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
    return (*(*result + 16))(result, v15);
  }

  return result;
}

_DWORD *IPC::handleMessage<Messages::WebPage::SetMediaVolume,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(float)>(uint64_t *a1, WebKit::WebPage *this)
{
  v3 = a1[1];
  v4 = ((a1[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = *a1;
  v6 = v4 - *a1;
  v7 = v3 >= v6;
  v8 = v3 - v6;
  if (!v7 || v8 <= 3)
  {
    *a1 = 0;
    a1[1] = 0;
    v15 = a1;
    v12 = a1[3];
    if (v12)
    {
      if (v3)
      {
        (*(*v12 + 16))(v12);
        v5 = *v15;
        v3 = v15[1];
        goto LABEL_14;
      }
    }

    else
    {
      v3 = 0;
    }

    v5 = 0;
LABEL_14:
    *v15 = 0;
    v15[1] = 0;
    result = v15[3];
    if (result)
    {
      if (v3)
      {
        (*(*result + 16))(result, v5);
        result = v15[3];
        v13 = v15[1];
        *v15 = 0;
        v15[1] = 0;
        if (result)
        {
          if (v13)
          {
            v14 = *(*result + 16);

            return v14();
          }
        }
      }
    }

    return result;
  }

  a1[2] = (v4 + 1);
  if (!v4)
  {
    v15 = a1;
    goto LABEL_14;
  }

  v10 = *v4;

  return WebKit::WebPage::setMediaVolume(this, v10);
}

uint64_t IPC::handleMessageAsync<Messages::WebPage::SetMuted,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::OptionSet<WebCore::MediaProducerMutedState>,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  v6 = IPC::Decoder::decode<WTF::OptionSet<WebCore::MediaProducerMutedState>>(a2);
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
      *v13 = &unk_1F10F59F0;
      v13[1] = v10;
      v13[2] = a1;
      v17 = v13;
      WebKit::WebPage::setMuted(a3, v7, &v17);
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

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebPage::StopMediaCapture,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::MediaProducerMediaCaptureKind,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, uint64_t *a2, uint64_t a3)
{
  v6 = IPC::Decoder::decode<WebCore::MediaProducerMediaCaptureKind>(a2);
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
      *v13 = &unk_1F10F5A18;
      v13[1] = v10;
      v13[2] = a1;
      v17 = v13;
      WebKit::WebPage::stopMediaCapture(a3, v7, &v17);
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

void *IPC::handleMessageAsync<Messages::WebPage::ResolveAccessibilityHitTestForTesting,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::IntPoint const&,WTF::CompletionHandler<void ()(WTF::String)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::IntPoint>>(a2, &v12);
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
      *result = &unk_1F10F5A40;
      result[1] = v8;
      result[2] = a1;
      v11 = result;
      if (v14)
      {
        WebKit::WebPage::resolveAccessibilityHitTestForTesting(a3, v12, &v13, &v11);
        result = v11;
        v11 = 0;
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

uint64_t IPC::handleMessage<Messages::WebPage::WindowAndViewFramesChanged,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebKit::ViewWindowCoordinates const&)>(IPC::Decoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WebKit::ViewWindowCoordinates,void>::decode(a1, v11);
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
    v8[0] = v11[0];
    v8[1] = v11[1];
    v8[2] = v11[2];
    v9 = v12;
    v10 = 1;
    return WebKit::WebPage::windowAndViewFramesChanged(a2, v8);
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

void IPC::handleMessage<Messages::WebPage::RegisterUIProcessAccessibilityTokens,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(std::span<unsigned char const,18446744073709551615ul>,std::span<unsigned char const,18446744073709551615ul>)>(IPC::Decoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::decode<IPC::Decoder>(a1, v4);
  if ((v5 & 1) == 0)
  {
    goto LABEL_7;
  }

  do
  {
    IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::decode<IPC::Decoder>(a1, &v6);
    if ((v7 & 1) == 0)
    {
      IPC::Decoder::markInvalid(a1);
      if ((v7 & 1) == 0)
      {
        break;
      }
    }

    if (v5)
    {
      WebKit::WebPage::registerUIProcessAccessibilityTokens(a2, v4[0], v4[1]);
      return;
    }

    __break(1u);
LABEL_7:
    IPC::Decoder::markInvalid(a1);
  }

  while ((v5 & 1) != 0);
  IPC::Decoder::markInvalid(a1);
}

void IPC::handleMessage<Messages::WebPage::ReplaceSelectionWithPasteboardData,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,std::span<unsigned char const,18446744073709551615ul>)>(IPC::Decoder *a1, uint64_t a2)
{
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a1, &v19);
  if ((v21 & 1) == 0)
  {
    goto LABEL_8;
  }

  while (1)
  {
    IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::decode<IPC::Decoder>(a1, &v22);
    if ((v23 & 1) == 0)
    {
      v4 = *a1;
      v14 = *(a1 + 1);
      *a1 = 0;
      *(a1 + 1) = 0;
      v15 = *(a1 + 3);
      if (!v15)
      {
        break;
      }

      if (!v14)
      {
        break;
      }

      (*(*v15 + 16))(v15, v4);
      if ((v23 & 1) == 0)
      {
        break;
      }
    }

    if (v21)
    {
      v16[0] = v19;
      v5 = v20;
      v19 = 0;
      v20 = 0;
      v16[1] = v5;
      v17 = v22;
      v18 = 1;
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v19, v4);
      WebKit::WebPage::replaceSelectionWithPasteboardData(a2, v16, v17, *(&v17 + 1));
      if (v18)
      {
        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v16, v6);
      }

      return;
    }

    __break(1u);
LABEL_8:
    v7 = *a1;
    v8 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v9 = *(a1 + 3);
    if (v9)
    {
      v10 = v8 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (!v10)
    {
      (*(*v9 + 16))(v9, v7);
      if (v21)
      {
        continue;
      }
    }

    goto LABEL_13;
  }

  if (v21)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v19, v4);
  }

LABEL_13:
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

uint64_t IPC::handleMessage<Messages::WebPage::InsertMultiRepresentationHEIC,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(std::span<unsigned char const,18446744073709551615ul>,WTF::String const&)>(IPC::Decoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::decode<IPC::Decoder>(a1, &v16);
  if (v17 & 1) != 0 || ((v9 = *a1, v10 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (v11 = *(a1 + 3)) != 0) ? (v12 = v10 == 0) : (v12 = 1), !v12 && ((*(*v11 + 16))(v11, v9), (v17)))
  {
    IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a1, &v18);
    if ((v19 & 1) == 0)
    {
      goto LABEL_10;
    }

    while ((v17 & 1) == 0)
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
          if (v19)
          {
            continue;
          }
        }
      }

      goto LABEL_19;
    }

    v15 = v18;
    WebKit::WebPage::insertMultiRepresentationHEIC(a2);
    result = v15;
    if (v15)
    {
      if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(v15, v4);
      }
    }
  }

  else
  {
LABEL_19:
    v13 = *a1;
    v14 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result && v14)
    {
      return (*(*result + 16))(result, v13);
    }
  }

  return result;
}

void IPC::handleMessage<Messages::WebPage::SetTextAsync,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::String const&)>(IPC::Decoder *a1, WebKit::WebPage *a2)
{
  IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a1, &v10);
  if (v11 & 1) != 0 || ((v6 = *a1, v7 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (v8 = *(a1 + 3)) != 0) ? (v9 = v7 == 0) : (v9 = 1), !v9 && ((*(*v8 + 16))(v8, v6), (v11)))
  {
    WebKit::WebPage::setTextAsync(a2, &v10);
    if (v11)
    {
      v5 = v10;
      v10 = 0;
      if (v5)
      {
        if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v5, v4);
        }
      }
    }
  }
}

WTF::StringImpl *IPC::handleMessage<Messages::WebPage::InsertTextAsync,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::String const&,WebKit::EditingRange const&,WebKit::InsertTextOptions &&)>(IPC::Decoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a1, &v23);
  if ((v24 & 1) == 0)
  {
    goto LABEL_22;
  }

  while (1)
  {
    IPC::Decoder::decode<WebKit::EditingRange>(a1, &v25);
    if ((v26 & 1) == 0 || (inserted = IPC::Decoder::decode<WebKit::InsertTextOptions>(a1), (inserted & 0x100000000000000) == 0))
    {
      v6 = 0;
      LOBYTE(v17) = 0;
      goto LABEL_8;
    }

    if (v24 & 1) != 0 && (v26)
    {
      break;
    }

    __break(1u);
LABEL_22:
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
      if (v24)
      {
        continue;
      }
    }

    goto LABEL_18;
  }

  v7 = v23;
  v23 = 0;
  v17 = v7;
  v18 = v25;
  v19 = inserted;
  v21 = BYTE6(inserted);
  v20 = WORD2(inserted);
  v6 = 1;
LABEL_8:
  v22 = v6;
  if ((v24 & 1) != 0 && (v8 = v23, v23 = 0, v8) && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v4);
    if (v6)
    {
      goto LABEL_12;
    }
  }

  else if (v6)
  {
LABEL_12:
    result = WebKit::WebPage::insertTextAsync(a2, &v17, &v18, &v19);
    if (v22)
    {
      result = v17;
      v17 = 0;
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

LABEL_18:
  v11 = *a1;
  v12 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  result = *(a1 + 3);
  if (result && v12)
  {
    return (*(*result + 16))(result, v11);
  }

  return result;
}

WTF::StringImpl *IPC::handleMessage<Messages::WebPage::InsertDictatedTextAsync,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::String const&,WebKit::EditingRange const&,WTF::Vector<WebCore::DictationAlternative,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WebKit::InsertTextOptions &&)>(IPC::Decoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a1, &v58);
  if (v59 & 1) != 0 || ((v43 = *a1, v44 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (v45 = *(a1 + 3)) != 0) ? (v46 = v44 == 0) : (v46 = 1), !v46 && ((*(*v45 + 16))(v45, v43), (v59)))
  {
    IPC::Decoder::decode<WebKit::EditingRange>(a1, &v60);
    if ((v61 & 1) == 0)
    {
LABEL_41:
      v50[0] = 0;
      v57 = 0;
LABEL_42:
      if (v59)
      {
        v38 = v58;
        v58 = 0;
        if (v38)
        {
          if (atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v38, v4);
          }
        }
      }

      goto LABEL_46;
    }

    v5 = *(a1 + 1);
    v6 = ((*(a1 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
    v7 = v6 - *a1;
    v8 = v5 >= v7;
    v9 = v5 - v7;
    if (v8 && v9 > 7)
    {
      *(a1 + 2) = v6 + 1;
      if (v6)
      {
        v11 = *v6;
        v62 = 0;
        v63 = 0;
        if (v11 >= 0xAAAA)
        {
          while (1)
          {
            result = IPC::Decoder::decode<WebCore::DictationAlternative>(v50, a1);
            if (v51 != 1)
            {
              break;
            }

            v24 = HIDWORD(v63);
            if (HIDWORD(v63) == v63)
            {
              result = WTF::Vector<WebKit::WebRTCNetwork::InterfaceAddress,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v62, HIDWORD(v63) + 1, v50);
              v24 = HIDWORD(v63);
              v15 = v62;
              v25 = v62 + 24 * HIDWORD(v63);
              v26 = *(result + 2);
              *v25 = *result;
              *(v25 + 2) = v26;
            }

            else
            {
              v15 = v62;
              v27 = v62 + 24 * HIDWORD(v63);
              v28 = *v50;
              *(v27 + 2) = *&v50[16];
              *v27 = v28;
            }

            v29 = (v24 + 1);
            HIDWORD(v63) = v29;
            if (!--v11)
            {
              LODWORD(v11) = v63;
              if (v63 <= v29)
              {
                goto LABEL_62;
              }

              v49 = v15;
              if (!v29)
              {
                goto LABEL_60;
              }

              if (v29 < 0xAAAAAAB)
              {
                v11 = 24 * v29;
                v30 = WTF::fastMalloc((24 * v29));
                v31 = v11;
                LODWORD(v11) = v11 / 0x18;
                LODWORD(v63) = v11;
                v62 = v30;
                if (v30 != v15)
                {
                  v15 = v30;
                  v32 = 0;
                  do
                  {
                    v33 = v30 + v32;
                    v34 = *(v49 + v32);
                    *(v33 + 16) = *(v49 + v32 + 16);
                    *v33 = v34;
                    v32 += 24;
                  }

                  while (v31 != v32);
                  if (!v49)
                  {
                    goto LABEL_62;
                  }

                  goto LABEL_61;
                }

                goto LABEL_60;
              }

              __break(0xC471u);
              return result;
            }
          }
        }

        else
        {
          if (!v11)
          {
            v20 = 0;
            v15 = 0;
LABEL_19:
            while (1)
            {
              inserted = IPC::Decoder::decode<WebKit::InsertTextOptions>(a1);
              if ((inserted & 0x100000000000000) == 0)
              {
                break;
              }

              if (v59 & 1) != 0 && (v61)
              {
                v22 = v58;
                v58 = 0;
                *v50 = v22;
                *&v50[8] = v60;
                v51 = v15;
                v52 = v11;
                v53 = v20;
                v54 = inserted;
                v56 = BYTE6(inserted);
                v55 = WORD2(inserted);
                v57 = 1;
                goto LABEL_42;
              }

              __break(1u);
LABEL_60:
              v62 = 0;
              LODWORD(v63) = 0;
LABEL_61:
              WTF::fastFree(v49, v4);
              v15 = v62;
              LODWORD(v11) = v63;
LABEL_62:
              v20 = HIDWORD(v63);
            }

            v50[0] = 0;
            v57 = 0;
            if (v15)
            {
              WTF::fastFree(v15, v4);
            }

            goto LABEL_42;
          }

          v12 = WTF::fastMalloc((24 * v11));
          LODWORD(v63) = 24 * v11 / 0x18u;
          v62 = v12;
          while (1)
          {
            IPC::Decoder::decode<WebCore::DictationAlternative>(v50, a1);
            if (v51 != 1)
            {
              break;
            }

            v13 = HIDWORD(v63);
            if (HIDWORD(v63) == v63)
            {
              v14 = WTF::Vector<WebKit::WebRTCNetwork::InterfaceAddress,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v62, HIDWORD(v63) + 1, v50);
              v13 = HIDWORD(v63);
              v15 = v62;
              v16 = v62 + 24 * HIDWORD(v63);
              v17 = *(v14 + 16);
              *v16 = *v14;
              *(v16 + 2) = v17;
            }

            else
            {
              v15 = v62;
              v18 = v62 + 24 * HIDWORD(v63);
              v19 = *v50;
              *(v18 + 2) = *&v50[16];
              *v18 = v19;
            }

            v20 = v13 + 1;
            HIDWORD(v63) = v13 + 1;
            if (!--v11)
            {
              LODWORD(v11) = v63;
              goto LABEL_19;
            }
          }
        }

        v35 = v62;
        if (v62)
        {
          v62 = 0;
          LODWORD(v63) = 0;
          WTF::fastFree(v35, v4);
        }

        goto LABEL_40;
      }
    }

    else
    {
      *a1 = 0;
      *(a1 + 1) = 0;
      v47 = *(a1 + 3);
      if (v47)
      {
        if (v5)
        {
          (*(*v47 + 16))(v47);
          v5 = *(a1 + 1);
        }
      }

      else
      {
        v5 = 0;
      }
    }

    *a1 = 0;
    *(a1 + 1) = 0;
    v48 = *(a1 + 3);
    if (v48 && v5)
    {
      (*(*v48 + 16))(v48);
    }

LABEL_40:
    v4 = *a1;
    v36 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v37 = *(a1 + 3);
    if (v37 && v36)
    {
      (*(*v37 + 16))(v37, v4);
    }

    goto LABEL_41;
  }

  v50[0] = 0;
  v57 = 0;
LABEL_46:
  if (v57)
  {
    result = WebKit::WebPage::insertDictatedTextAsync(a2, v50, &v50[8], &v51, &v54);
    if (v57)
    {
      v40 = v51;
      if (v51)
      {
        v51 = 0;
        v52 = 0;
        WTF::fastFree(v40, v39);
      }

      result = *v50;
      *v50 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v39);
        }
      }
    }
  }

  else
  {
    v41 = *a1;
    v42 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result && v42)
    {
      return (*(*result + 16))(result, v41);
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::WebPage::AddDictationAlternative,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::String const&,WTF::ObjectIdentifierGeneric<WebCore::DictationContextType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(BOOL)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a2, &v25);
  if ((v26 & 1) == 0)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v6 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if ((v7 & 1) == 0)
    {
      if (v26)
      {
        v14 = v25;
        v25 = 0;
        if (v14)
        {
          if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v14, v7);
          }
        }
      }

LABEL_13:
      v15 = *a2;
      v16 = *(a2 + 1);
      *a2 = 0;
      *(a2 + 1) = 0;
      result = *(a2 + 3);
      if (result && v16)
      {
        return (*(*result + 16))(result, v15);
      }

      return result;
    }

    if (v26)
    {
      break;
    }

    __break(1u);
LABEL_25:
    v19 = *a2;
    v20 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v21 = *(a2 + 3);
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
      if (v26)
      {
        continue;
      }
    }

    goto LABEL_13;
  }

  v8 = v6;
  v23[0] = v25;
  v23[1] = v6;
  v24 = 1;
  v9 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v10 & 1) == 0)
  {
    goto LABEL_20;
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
      goto LABEL_17;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_17:
  v18 = WTF::fastMalloc(0x18);
  *v18 = &unk_1F10F5A68;
  *(v18 + 1) = v11;
  *(v18 + 2) = a1;
  v25 = v18;
  WebKit::WebPage::addDictationAlternative(a3, v23, v8, &v25);
  result = v25;
  v25 = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  if (v24)
  {
LABEL_20:
    result = v23[0];
    v23[0] = 0;
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

uint64_t IPC::handleMessageAsync<Messages::WebPage::DictationAlternativesAtSelection,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::CompletionHandler<void ()(WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::DictationContextType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
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
    *v10 = &unk_1F10F5A90;
    v10[1] = v7;
    v10[2] = a1;
    v11 = v10;
    WebKit::WebPage::dictationAlternativesAtSelection(a3, &v11);
    result = v11;
    v11 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

WTF *IPC::handleMessage<Messages::WebPage::ClearDictationAlternatives,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::DictationContextType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>(uint64_t *a1, uint64_t a2)
{
  IPC::ArgumentCoder<std::tuple<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::DictationContextType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder>(a1, &v9);
  if (v11 & 1) != 0 || ((v6 = *a1, v7 = a1[1], *a1 = 0, a1[1] = 0, (result = a1[3]) != 0) ? (v8 = v7 == 0) : (v8 = 1), !v8 && (result = (*(*result + 16))(result, v6), (v11)))
  {
    result = WebKit::WebPage::clearDictationAlternatives(a2, &v9);
    if (v11)
    {
      result = v9;
      if (v9)
      {
        v9 = 0;
        v10 = 0;
        return WTF::fastFree(result, v5);
      }
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebPage::HasMarkedText,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::CompletionHandler<void ()(BOOL)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
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
    *v10 = &unk_1F10F5AB8;
    v10[1] = v7;
    v10[2] = a1;
    v11 = v10;
    WebKit::WebPage::hasMarkedText(a3, &v11);
    result = v11;
    v11 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebPage::GetMarkedRangeAsync,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::CompletionHandler<void ()(WebKit::EditingRange const&)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
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
    *v10 = &unk_1F10F5AE0;
    v10[1] = v7;
    v10[2] = a1;
    v11 = v10;
    WebKit::WebPage::getMarkedRangeAsync(a3, &v11);
    result = v11;
    v11 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebPage::GetSelectedRangeAsync,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::CompletionHandler<void ()(WebKit::EditingRange const&,WebKit::EditingRange const&)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
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
    *v10 = &unk_1F10F5B08;
    v10[1] = v7;
    v10[2] = a1;
    v11 = v10;
    WebKit::WebPage::getSelectedRangeAsync(a3, &v11);
    result = v11;
    v11 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebPage::CharacterIndexForPointAsync,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::IntPoint const&,WTF::CompletionHandler<void ()(unsigned long long)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, WebKit::WebPage *a3)
{
  result = IPC::Decoder::decode<std::tuple<WebCore::IntPoint>>(a2);
  v14 = result;
  v15 = v7;
  if (v7)
  {
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
      *v12 = &unk_1F10F5B30;
      v12[1] = v9;
      v12[2] = a1;
      v13 = v12;
      WebKit::WebPage::characterIndexForPointAsync(a3, &v14, &v13);
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

void *IPC::handleMessageAsync<Messages::WebPage::FirstRectForCharacterRangeAsync,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebKit::EditingRange const&,WTF::CompletionHandler<void ()(WebCore::IntRect const&,WebKit::EditingRange const&)> &&)>(atomic_ullong *a1, uint64_t *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<WebKit::EditingRange>>(a2, v12);
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
      *result = &unk_1F10F5B58;
      result[1] = v8;
      result[2] = a1;
      v11 = result;
      if (v13)
      {
        WebKit::WebPage::firstRectForCharacterRangeAsync(a3, v12, &v11);
        result = v11;
        v11 = 0;
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

WTF::StringImpl *IPC::handleMessage<Messages::WebPage::SetCompositionAsync,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::String const&,WTF::Vector<WebCore::CompositionUnderline,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::Vector<WebCore::CompositionHighlight,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::HashMap<WTF::String,WTF::Vector<WebCore::CharacterRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WebCore::CharacterRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc> const&,WebKit::EditingRange const&,WebKit::EditingRange const&)>(IPC::Decoder *a1, WebKit::WebPage *a2)
{
  IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a1, &v102);
  if ((v103 & 1) == 0)
  {
    v83 = *a1;
    v84 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v85 = *(a1 + 3);
    v86 = !v85 || v84 == 0;
    if (v86 || ((*(*v85 + 16))(v85, v83), (v103 & 1) == 0))
    {
      v96[0] = 0;
      v101 = 0;
      goto LABEL_122;
    }
  }

  IPC::VectorArgumentCoder<false,WebCore::CompositionUnderline,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a1, &v104);
  if ((v105 & 1) == 0)
  {
    goto LABEL_136;
  }

  while (1)
  {
    IPC::VectorArgumentCoder<false,WebCore::CompositionHighlight,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a1, &v106);
    if ((v107 & 1) == 0)
    {
      v58 = *a1;
      v81 = *(a1 + 1);
      *a1 = 0;
      *(a1 + 1) = 0;
      v82 = *(a1 + 3);
      if (!v82 || !v81 || ((*(*v82 + 16))(v82, v58), (v107 & 1) == 0))
      {
        v96[0] = 0;
        v101 = 0;
        goto LABEL_116;
      }
    }

    v4 = *(a1 + 1);
    v5 = ((*(a1 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
    v6 = v5 - *a1;
    v7 = v4 >= v6;
    v8 = v4 - v6;
    if (!v7 || v8 <= 3)
    {
      *a1 = 0;
      *(a1 + 1) = 0;
      v89 = *(a1 + 3);
      if (v89)
      {
        if (v4)
        {
          (*(*v89 + 16))(v89);
          v4 = *(a1 + 1);
        }
      }

      else
      {
        v4 = 0;
      }

LABEL_161:
      *a1 = 0;
      *(a1 + 1) = 0;
      v90 = *(a1 + 3);
      if (v90 && v4)
      {
        (*(*v90 + 16))(v90);
      }

      goto LABEL_110;
    }

    *(a1 + 2) = v5 + 1;
    if (!v5)
    {
      goto LABEL_161;
    }

    v10 = *v5;
    v108 = 0;
    if (v10)
    {
      break;
    }

    v76 = 0;
LABEL_92:
    IPC::Decoder::decode<WebKit::EditingRange>(a1, &v109);
    if ((v110 & 1) == 0)
    {
      v96[0] = 0;
      v101 = 0;
      if (!v76)
      {
        goto LABEL_114;
      }

LABEL_113:
      WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WebCore::CharacterRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WebCore::CharacterRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WebCore::CharacterRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WebCore::CharacterRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v76, v58);
      goto LABEL_114;
    }

    IPC::Decoder::decode<WebKit::EditingRange>(a1, &v111);
    if ((v112 & 1) == 0)
    {
      v64 = 0;
      v96[0] = 0;
LABEL_131:
      v101 = v64;
      if (!v76)
      {
        goto LABEL_114;
      }

      goto LABEL_113;
    }

    if (v103 & 1) != 0 && (v105 & 1) != 0 && (v107 & 1) != 0 && (v110)
    {
      *&v59 = 0;
      v60 = v102;
      v102 = 0;
      v61 = v104;
      v104 = v59;
      *v96 = v60;
      *&v96[8] = v61;
      v63 = *(&v106 + 1);
      v62 = v106;
      v106 = v59;
      v97 = __PAIR128__(v63, v62);
      v98 = v76;
      v64 = 1;
      v99 = v109;
      v100 = v111;
      v76 = 0;
      goto LABEL_131;
    }

LABEL_135:
    __break(1u);
LABEL_136:
    v58 = *a1;
    v77 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v78 = *(a1 + 3);
    if (v78)
    {
      if (v77)
      {
        (*(*v78 + 16))(v78, v58);
        if (v105)
        {
          continue;
        }
      }
    }

    v96[0] = 0;
    v101 = 0;
    goto LABEL_118;
  }

  v11 = 0;
LABEL_12:
  IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a1, &v109);
  if (BYTE8(v109) & 1) != 0 || ((v14 = *a1, v55 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (v56 = *(a1 + 3)) != 0) ? (v57 = v55 == 0) : (v57 = 1), !v57 && ((*(*v56 + 16))(v56, v14), (BYTE8(v109))))
  {
    v12 = *(a1 + 1);
    v13 = ((*(a1 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
    v14 = *a1;
    v15 = (v13 - *a1);
    v7 = v12 >= v15;
    v16 = v12 - v15;
    if (!v7 || v16 <= 7)
    {
      v87 = a2;
      *a1 = 0;
      *(a1 + 1) = 0;
      v88 = *(a1 + 3);
      if (!v88)
      {
        goto LABEL_158;
      }

      if (v12)
      {
        (*(*v88 + 16))(v88);
        v14 = *a1;
        v12 = *(a1 + 1);
LABEL_167:
        v91 = *(a1 + 3);
        *a1 = 0;
        *(a1 + 1) = 0;
        if (v91)
        {
          a2 = v87;
          if (v12)
          {
            (*(*v91 + 16))(v91);
          }

          goto LABEL_103;
        }

LABEL_158:
        *a1 = 0;
        *(a1 + 1) = 0;
        a2 = v87;
      }

LABEL_104:
      if (BYTE8(v109) == 1)
      {
        v68 = v109;
        *&v109 = 0;
        if (v68)
        {
          if (atomic_fetch_add_explicit(v68, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v68, v14);
          }
        }
      }

      goto LABEL_108;
    }

    *(a1 + 2) = v13 + 1;
    if (!v13)
    {
      v87 = a2;
      goto LABEL_167;
    }

    v18 = *v13;
    v111 = 0uLL;
    if (v18 >= 0x10000)
    {
      while (1)
      {
        IPC::Decoder::decode<WebCore::CharacterRange>(a1, v96);
        if (v96[16] != 1)
        {
          break;
        }

        v45 = HIDWORD(v111);
        if (HIDWORD(v111) == DWORD2(v111))
        {
          v46 = WTF::Vector<WTF::UUID,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v111, HIDWORD(v111) + 1, v96);
          v45 = HIDWORD(v111);
          v47 = v111;
          v48 = *v46;
        }

        else
        {
          v47 = v111;
          v48 = *v96;
        }

        *(v47 + 16 * v45) = v48;
        v49 = ++HIDWORD(v111);
        if (!--v18)
        {
          v25 = v111;
          if (DWORD2(v111) > v49)
          {
            v50 = a2;
            v51 = v111;
            if (v49)
            {
              if (v49 >> 28)
              {
                __break(0xC471u);
                JUMPOUT(0x19DA8077CLL);
              }

              v52 = 16 * v49;
              v51 = WTF::fastMalloc((16 * v49));
              DWORD2(v111) = v49;
              *&v111 = v51;
              if (v51 != v25)
              {
                v53 = v25;
                do
                {
                  v54 = *v25;
                  v25 = (v25 + 16);
                  *v51 = v54;
                  v51 = (v51 + 16);
                  v52 -= 16;
                }

                while (v52);
                v51 = v111;
                v25 = v53;
              }
            }

            if (v25)
            {
              if (v51 == v25)
              {
                *&v111 = 0;
                DWORD2(v111) = 0;
              }

              WTF::fastFree(v25, v14);
              v25 = v111;
            }

            else
            {
              v25 = v51;
            }

            a2 = v50;
          }

          v26 = DWORD2(v111);
          v24 = HIDWORD(v111);
          goto LABEL_29;
        }
      }

LABEL_101:
      v65 = v111;
      if (v111)
      {
        *&v111 = 0;
        DWORD2(v111) = 0;
        WTF::fastFree(v65, v14);
      }

LABEL_103:
      v66 = *(a1 + 3);
      v14 = *a1;
      v67 = *(a1 + 1);
      *a1 = 0;
      *(a1 + 1) = 0;
      if (v66 && v67)
      {
        (*(*v66 + 16))(v66, v14);
      }

      goto LABEL_104;
    }

    if (v18)
    {
      v19 = WTF::fastMalloc((16 * v18));
      DWORD2(v111) = v18;
      *&v111 = v19;
      while (1)
      {
        IPC::Decoder::decode<WebCore::CharacterRange>(a1, v96);
        if (v96[16] != 1)
        {
          goto LABEL_101;
        }

        v20 = HIDWORD(v111);
        if (HIDWORD(v111) == DWORD2(v111))
        {
          v21 = WTF::Vector<WTF::UUID,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v111, HIDWORD(v111) + 1, v96);
          v20 = HIDWORD(v111);
          v22 = v111;
          v23 = *v21;
        }

        else
        {
          v22 = v111;
          v23 = *v96;
        }

        *(v22 + 16 * v20) = v23;
        v24 = ++HIDWORD(v111);
        if (!--v18)
        {
          v25 = v111;
          v26 = DWORD2(v111);
          goto LABEL_29;
        }
      }
    }

    v25 = 0;
    v26 = 0;
    v24 = 0;
LABEL_29:
    if ((BYTE8(v109) & 1) == 0)
    {
      goto LABEL_135;
    }

    v92 = v26;
    v93 = v11;
    v27 = v25;
    v94 = v10;
    v95 = a2;
    if ((v109 + 1) < 2)
    {
LABEL_99:
      a2 = v95;
      if (v27)
      {
        WTF::fastFree(v27, v14);
      }

      goto LABEL_104;
    }

    v28 = v108;
    if (v108 || (WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WebCore::CharacterRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WebCore::CharacterRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WebCore::CharacterRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WebCore::CharacterRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(&v108, 0), (v28 = v108) != 0))
    {
      v29 = *(v28 - 8);
    }

    else
    {
      v29 = 0;
    }

    v30 = *(v109 + 16);
    if (v30 < 0x100)
    {
      v31 = WTF::StringImpl::hashSlowCase(v109);
    }

    else
    {
      v31 = v30 >> 8;
    }

    v32 = 0;
    for (i = 1; ; ++i)
    {
      v34 = v31 & v29;
      v35 = v28 + 24 * (v31 & v29);
      v36 = *v35;
      if (*v35 == -1)
      {
        v32 = (v28 + 24 * v34);
      }

      else
      {
        if (!v36)
        {
          if (v32)
          {
            *v32 = 0;
            v32[1] = 0;
            v32[2] = 0;
            --*(v108 - 16);
            v35 = v32;
          }

          v37 = v109;
          *&v109 = 0;
          v38 = *v35;
          *v35 = v37;
          if (v38 && atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v38, v14);
          }

          v39 = *(v35 + 8);
          v10 = v94;
          if (v39)
          {
            *(v35 + 8) = 0;
            *(v35 + 16) = 0;
            WTF::fastFree(v39, v14);
          }

          *(v35 + 8) = v27;
          *(v35 + 16) = v92;
          *(v35 + 20) = v24;
          v40 = v108;
          if (v108)
          {
            v41 = *(v108 - 12) + 1;
          }

          else
          {
            v41 = 1;
          }

          *(v108 - 12) = v41;
          v42 = (*(v40 - 16) + v41);
          v43 = *(v40 - 4);
          if (v43 > 0x400)
          {
            if (v43 <= 2 * v42)
            {
LABEL_55:
              WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WebCore::CharacterRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WebCore::CharacterRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WebCore::CharacterRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WebCore::CharacterRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(&v108, v35);
            }
          }

          else if (3 * v43 <= 4 * v42)
          {
            goto LABEL_55;
          }

          if (BYTE8(v109) == 1)
          {
            v44 = v109;
            *&v109 = 0;
            if (v44)
            {
              if (atomic_fetch_add_explicit(v44, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v44, v14);
              }
            }
          }

          v11 = v93 + 1;
          a2 = v95;
          if (v93 + 1 == v94)
          {
            v76 = v108;
            goto LABEL_92;
          }

          goto LABEL_12;
        }

        if (WTF::equal(v36, v109, v12))
        {
          goto LABEL_99;
        }
      }

      v31 = i + v34;
    }
  }

LABEL_108:
  if (v108)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WebCore::CharacterRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WebCore::CharacterRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WebCore::CharacterRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WebCore::CharacterRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v108, v14);
  }

LABEL_110:
  v58 = *a1;
  v69 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  v70 = *(a1 + 3);
  if (v70 && v69)
  {
    (*(*v70 + 16))(v70, v58);
  }

  v96[0] = 0;
  v101 = 0;
LABEL_114:
  if (v107)
  {
    WTF::Vector<WebCore::CompositionHighlight,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v106, v58);
  }

LABEL_116:
  if (v105)
  {
    WTF::Vector<WebCore::CompositionUnderline,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v104, v58);
  }

LABEL_118:
  if (v103)
  {
    v71 = v102;
    v102 = 0;
    if (v71)
    {
      if (atomic_fetch_add_explicit(v71, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v71, v58);
      }
    }
  }

LABEL_122:
  if (v101)
  {
    result = WebKit::WebPage::setCompositionAsync(a2, v96, &v96[8], &v97, &v98, &v99, &v100);
    if (v101)
    {
      if (v98)
      {
        WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WebCore::CharacterRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WebCore::CharacterRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WebCore::CharacterRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WebCore::CharacterRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v98, v73);
      }

      WTF::Vector<WebCore::CompositionHighlight,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v97, v73);
      WTF::Vector<WebCore::CompositionUnderline,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v96[8], v74);
      result = *v96;
      *v96 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v75);
        }
      }
    }
  }

  else
  {
    v79 = *a1;
    v80 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result && v80)
    {
      return (*(*result + 16))(result, v79);
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessage<Messages::WebPage::SetWritingSuggestion,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::String const&,WebKit::EditingRange const&)>(IPC::Decoder *a1, WebKit::WebPage *a2)
{
  IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a1, &v17);
  if ((v18 & 1) == 0)
  {
    goto LABEL_17;
  }

  while (1)
  {
    IPC::Decoder::decode<WebKit::EditingRange>(a1, &v19);
    if (v20 != 1)
    {
      break;
    }

    if (v18)
    {
      v14 = v17;
      v15 = v19;
      v16 = 1;
      result = WebKit::WebPage::setWritingSuggestion(a2, &v14, &v15);
      if (v16)
      {
        result = v14;
        v14 = 0;
        if (result)
        {
          if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            return WTF::StringImpl::destroy(result, v6);
          }
        }
      }

      return result;
    }

    __break(1u);
LABEL_17:
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
      if (v18)
      {
        continue;
      }
    }

    goto LABEL_12;
  }

  if (v18)
  {
    v7 = v17;
    v17 = 0;
    if (v7)
    {
      if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, v4);
      }
    }
  }

LABEL_12:
  v8 = *a1;
  v9 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  result = *(a1 + 3);
  if (result && v9)
  {
    return (*(*result + 16))(result, v8);
  }

  return result;
}

void IPC::handleMessage<Messages::WebPage::ReplaceImageForRemoveBackground,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::ElementContext const&,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,std::span<unsigned char const,18446744073709551615ul>)>(IPC::Decoder *a1, uint64_t a2)
{
  v27 = *MEMORY[0x1E69E9840];
  IPC::Decoder::decode<WebCore::ElementContext>(a1, v25);
  if (v26)
  {
    IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a1, &v16);
    if ((v18 & 1) == 0)
    {
      goto LABEL_10;
    }

    while (1)
    {
      IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::decode<IPC::Decoder>(a1, &v19);
      if ((v20 & 1) == 0)
      {
        v4 = *a1;
        v14 = *(a1 + 1);
        *a1 = 0;
        *(a1 + 1) = 0;
        v15 = *(a1 + 3);
        if (!v15)
        {
          break;
        }

        if (!v14)
        {
          break;
        }

        (*(*v15 + 16))(v15, v4);
        if ((v20 & 1) == 0)
        {
          break;
        }
      }

      if (v26 & 1) != 0 && (v18)
      {
        v21[2] = v25[2];
        v21[3] = v25[3];
        v21[4] = v25[4];
        v21[0] = v25[0];
        v21[1] = v25[1];
        v22[0] = v16;
        v5 = v17;
        v16 = 0;
        v17 = 0;
        v22[1] = v5;
        v23 = v19;
        v24 = 1;
        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v16, v4);
        WebKit::WebPage::replaceImageForRemoveBackground(a2, v21, v22, v23, *(&v23 + 1));
        if (v24)
        {
          WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v22, v6);
        }

        return;
      }

      __break(1u);
LABEL_10:
      v7 = *a1;
      v8 = *(a1 + 1);
      *a1 = 0;
      *(a1 + 1) = 0;
      v9 = *(a1 + 3);
      if (v9)
      {
        if (v8)
        {
          (*(*v9 + 16))(v9, v7);
          if (v18)
          {
            continue;
          }
        }
      }

      goto LABEL_11;
    }

    if (v18)
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v16, v4);
    }
  }

LABEL_11:
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

uint64_t IPC::handleMessageAsync<Messages::WebPage::ShouldAllowRemoveBackground,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::ElementContext const&,WTF::CompletionHandler<void ()(BOOL)> &&)const>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
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
      *v11 = &unk_1F10F5B80;
      v11[1] = v8;
      v11[2] = a1;
      v12 = v11;
      WebKit::WebPage::shouldAllowRemoveBackground(a3, v13, &v12);
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

WTF::StringImpl *IPC::handleMessage<Messages::WebPage::HandleAlternativeTextUIResult,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::String const&)>(IPC::Decoder *a1, WebKit::WebPage *a2)
{
  IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a1, &v9);
  if (v10 & 1) != 0 || ((v6 = *a1, v7 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (result = *(a1 + 3)) != 0) ? (v8 = v7 == 0) : (v8 = 1), !v8 && (result = (*(*result + 16))(result, v6), (v10)))
  {
    result = WebKit::WebPage::handleAlternativeTextUIResult(a2, &v9);
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

uint64_t IPC::handleMessageAsync<Messages::WebPage::GetBytecodeProfile,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::CompletionHandler<void ()(WTF::String const&)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
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
    *v10 = &unk_1F10F5BA8;
    v10[1] = v7;
    v10[2] = a1;
    v11 = v10;
    WebKit::WebPage::getBytecodeProfile(a3, &v11);
    result = v11;
    v11 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebPage::GetSamplingProfilerOutput,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::CompletionHandler<void ()(WTF::String const&)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
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
    *v10 = &unk_1F10F5BD0;
    v10[1] = v7;
    v10[2] = a1;
    v11 = v10;
    WebKit::WebPage::getSamplingProfilerOutput(a3, &v11);
    result = v11;
    v11 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebPage::TakeSnapshot,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::IntRect,WebCore::IntSize,WTF::OptionSet<WebKit::SnapshotOption>,WTF::CompletionHandler<void ()(std::optional<mpark::variant<WebCore::ShareableBitmapHandle,WTF::MachSendRight>> &&,WebCore::Headroom)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  IPC::Decoder::decode<WebCore::IntRect>(a2, v31);
  if (v32 != 1 || (v6 = IPC::Decoder::decode<WebCore::IntSize>(a2), (v7 & 1) == 0))
  {
LABEL_26:
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

  v8 = *(a2 + 1);
  v9 = ((*(a2 + 2) + 1) & 0xFFFFFFFFFFFFFFFELL);
  v10 = *a2;
  v11 = v9 - *a2;
  v12 = v8 >= v11;
  v13 = v8 - v11;
  if (!v12 || v13 <= 1)
  {
    goto LABEL_20;
  }

  *(a2 + 2) = v9 + 1;
  if (!v9)
  {
LABEL_22:
    *a2 = 0;
    *(a2 + 1) = 0;
    v26 = *(a2 + 3);
    if (v26)
    {
      if (v8)
      {
        (*(*v26 + 16))(v26);
        v10 = *a2;
        v8 = *(a2 + 1);
        goto LABEL_25;
      }
    }

    else
    {
      v8 = 0;
    }

    v10 = 0;
LABEL_25:
    *a2 = 0;
    *(a2 + 1) = 0;
    v27 = *(a2 + 3);
    if (v27 && v8)
    {
      (*(*v27 + 16))(v27, v10);
    }

    goto LABEL_26;
  }

  v15 = *v9;
  if ((*v9 & 0x8010) != 0)
  {
    goto LABEL_25;
  }

  if ((v32 & 1) == 0)
  {
    __break(1u);
LABEL_20:
    *a2 = 0;
    *(a2 + 1) = 0;
    v25 = *(a2 + 3);
    if (v25)
    {
      if (v8)
      {
        (*(*v25 + 16))(v25);
        v8 = *(a2 + 1);
      }
    }

    else
    {
      v8 = 0;
    }

    goto LABEL_22;
  }

  v16 = v6;
  v17 = v31[0];
  v18 = v31[1];
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
        goto LABEL_17;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_17:
    v24 = WTF::fastMalloc(0x18);
    *v24 = &unk_1F10F5BF8;
    v24[1] = v21;
    v24[2] = a1;
    v31[0] = v24;
    WebKit::WebPage::takeSnapshot(a3, v17, v18, v16, v15, v31);
    result = v31[0];
    v31[0] = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::WebPage::PerformHitTestForMouseEvent,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebKit::WebMouseEvent const&,WTF::CompletionHandler<void ()(WebKit::WebHitTestResultData &&,WTF::OptionSet<WebKit::WebEventModifier>,WebKit::UserData &&)> &&)>(atomic_ullong *a1, uint64_t *a2, uint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  result = IPC::Decoder::decode<std::tuple<WebKit::WebMouseEvent>>(v15, a2);
  if (v19 == 1)
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
      *v11 = &unk_1F10F5C20;
      *(v11 + 1) = v8;
      *(v11 + 2) = a1;
      v14 = v11;
      if ((v19 & 1) == 0)
      {
        __break(1u);
      }

      WebKit::WebPage::performHitTestForMouseEvent(a3, v15, &v14);
      result = v14;
      v14 = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }
    }
  }

  if (v19 == 1)
  {
    v15[0] = &unk_1F10E8378;
    WTF::Vector<WebKit::WebMouseEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v18, v7);
    WTF::Vector<WebKit::WebMouseEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v17, v12);
    result = v16;
    v16 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v13);
      }
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebPage::RequestActiveNowPlayingSessionInfo,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::CompletionHandler<void ()(BOOL,WebCore::NowPlayingInfo &&)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, WebCore::PlatformMediaSessionManager *a3)
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
    *v10 = &unk_1F10F5C48;
    v10[1] = v7;
    v10[2] = a1;
    v11 = v10;
    WebKit::WebPage::requestActiveNowPlayingSessionInfo(a3, &v11);
    result = v11;
    v11 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebPage::DidGetLoadDecisionForIcon,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(BOOL,WebKit::CallbackID,WTF::CompletionHandler<void ()(IPC::SharedBufferReference const&)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<BOOL,WebKit::CallbackID>>(v13, a2);
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

        v11 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v11, v9 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v11 == v9)
        {
          goto LABEL_6;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_6:
      v10 = WTF::fastMalloc(0x18);
      *v10 = &unk_1F10F5C70;
      v10[1] = v8;
      v10[2] = a1;
      v12 = v10;
      v18 = a3;
      v17[0] = WebKit::WebPage::didGetLoadDecisionForIcon;
      v17[1] = 0;
      v16[0] = &v18;
      v16[1] = v17;
      v16[2] = &v12;
      IPC::callMemberFunction<WebKit::WebPage,WebKit::WebPage,void ()(BOOL,WebKit::CallbackID,WTF::CompletionHandler<void ()(IPC::SharedBufferReference const&)> &&),std::tuple<BOOL,WebKit::CallbackID>,void ()(IPC::SharedBufferReference const&)>(WebKit::WebPage *,void ()(BOOL,WebKit::CallbackID,WTF::CompletionHandler<void ()(IPC::SharedBufferReference const&)> &&) WebKit::WebPage::*,std::tuple<BOOL,WebKit::CallbackID> &&,WTF::CompletionHandler<void ()(IPC::SharedBufferReference const&)> &&)::{lambda(WebKit::WebPage &&)#1}::operator()<BOOL,WebKit::CallbackID>(v16, v13[0], v14);
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

void *IPC::handleMessage<Messages::WebPage::GamepadActivity,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::Vector<std::optional<WebKit::GamepadData>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WebCore::EventMakesGamepadsVisible)>(IPC::Decoder *a1, uint64_t a2, double a3, __n128 a4)
{
  IPC::VectorArgumentCoder<false,std::optional<WebKit::GamepadData>,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a1, &v22, a4);
  if ((v24 & 1) == 0)
  {
    v15 = *a1;
    v16 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v17 = *(a1 + 3);
    if (!v17 || v16 == 0)
    {
      goto LABEL_4;
    }

    (*(*v17 + 16))(v17, v15);
    if ((v24 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  v6 = IPC::Decoder::decode<WebKit::UseDownloadPlaceholder>(a1);
  if ((v6 & 0x100) == 0)
  {
    if ((v24 & 1) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_18;
  }

  if ((v24 & 1) == 0)
  {
    __break(1u);
LABEL_18:
    WTF::Vector<std::optional<WebKit::GamepadData>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v22, v7);
LABEL_4:
    v8 = *a1;
    v9 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result)
    {
      if (v9)
      {
        return (*(*result + 16))(result, v8);
      }
    }

    return result;
  }

  v11 = v6;
  v19[0] = v22;
  v12 = v23;
  v22 = 0;
  v23 = 0;
  v19[1] = v12;
  v20 = v6;
  v21 = 1;
  WTF::Vector<std::optional<WebKit::GamepadData>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v22, v7);
  result = WebKit::WebPage::gamepadActivity(v13, a2, v19, v11 & 1);
  if (v21)
  {
    return WTF::Vector<std::optional<WebKit::GamepadData>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v19, v14);
  }

  return result;
}

WTF::StringImpl *IPC::handleMessage<Messages::WebPage::RegisterURLSchemeHandler,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&)>(IPC::Decoder *a1, uint64_t a2)
{
  result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String>>(&v5, a1);
  if (v7 == 1)
  {
    result = WebKit::WebPage::registerURLSchemeHandler(a2, v5, &v6);
    if (v7)
    {
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

void IPC::handleMessageAsync<Messages::WebPage::URLSchemeTaskWillPerformRedirection,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ResourceResponse &&,WebCore::ResourceRequest &&,WTF::CompletionHandler<void ()(WebCore::ResourceRequest)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ResourceResponse,WebCore::ResourceRequest>>(v16, a2);
  if (v20 == 1)
  {
    v6 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v7)
    {
      v8 = v6;
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
      *v11 = &unk_1F10F5C98;
      v11[1] = v8;
      v11[2] = a1;
      v15 = v11;
      if ((v20 & 1) == 0)
      {
        __break(1u);
        return;
      }

      WebKit::WebPage::urlSchemeTaskWillPerformRedirection(a3, v16[0], v16[1], v17, v19, &v15);
      v12 = v15;
      v15 = 0;
      if (v12)
      {
        (*(*v12 + 8))(v12);
      }
    }
  }

  if (v20 == 1)
  {
    WebCore::ResourceRequest::~ResourceRequest(v19);
    v14 = cf;
    cf = 0;
    if (v14)
    {
      CFRelease(v14);
    }

    WebCore::ResourceResponseBase::~ResourceResponseBase(v17, v13);
  }
}

void IPC::handleMessage<Messages::WebPage::URLSchemeTaskDidPerformRedirection,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ResourceResponse &&,WebCore::ResourceRequest &&)>(IPC::Decoder *a1, uint64_t a2)
{
  IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ResourceResponse,WebCore::ResourceRequest>>(v5, a1);
  if (v9 == 1)
  {
    WebKit::WebPage::urlSchemeTaskDidPerformRedirection(a2, v5[0], v5[1], v6, v8);
    if (v9)
    {
      WebCore::ResourceRequest::~ResourceRequest(v8);
      v4 = cf;
      cf = 0;
      if (v4)
      {
        CFRelease(v4);
      }

      WebCore::ResourceResponseBase::~ResourceResponseBase(v6, v3);
    }
  }
}

void IPC::handleMessage<Messages::WebPage::URLSchemeTaskDidReceiveResponse,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ResourceResponse &&)>(IPC::Decoder *a1, uint64_t a2)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if (v5 & 1) != 0 && (v6 = v4, v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1), (v8) && ((v9 = v7, IPC::ArgumentCoder<WebCore::ResourceResponse,void>::decode(a1, &v52), (v75) || (v21 = *a1, v22 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (v23 = *(a1 + 3)) != 0) && v22 && ((*(*v23 + 16))(v23, v21), (v75)))
  {
    v11 = v52;
    v12 = v55;
    v52 = 0;
    v28 = v11;
    v29 = v53;
    v30 = v54;
    LODWORD(v53) = v53 & 0xFFFFFFFE;
    v55 = 0;
    v31 = v12;
    v32 = v56;
    v13 = v57;
    v57 = 0u;
    v33 = v13;
    v14 = v58;
    v58 = 0u;
    v34 = v14;
    *&v14 = v59;
    v59 = 0;
    v35 = v14;
    v15 = v60;
    v60 = 0;
    v36 = v15;
    *&v14 = v61;
    v61 = 0;
    v37 = v14;
    v16 = v62;
    v62 = 0;
    v38 = v16;
    LOBYTE(v39) = 0;
    v40 = 0;
    if (v64 == 1)
    {
      v20 = v63;
      v63 = 0;
      v39 = v20;
      v40 = 1;
    }

    v41 = v65;
    v42 = v66;
    v46 = v70;
    v47 = v71;
    v48[0] = v72[0];
    *(v48 + 11) = *(v72 + 11);
    v44 = v68;
    v17 = v67;
    v67 = 0;
    v45 = v69;
    v43 = v17;
    cf = v73;
    v50 = v74;
    v51 = 1;
    if (v75)
    {
      v73 = 0;
      WebCore::ResourceResponseBase::~ResourceResponseBase(&v52, v10);
    }

    WebKit::WebPage::urlSchemeTaskDidReceiveResponse(a2, v6, v9, &v28);
    if (v51)
    {
      v19 = cf;
      cf = 0;
      if (v19)
      {
        CFRelease(v19);
      }

      WebCore::ResourceResponseBase::~ResourceResponseBase(&v28, v18);
    }
  }

  else
  {
    v24 = *a1;
    v25 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v26 = *(a1 + 3);
    if (v26)
    {
      v27 = v25 == 0;
    }

    else
    {
      v27 = 1;
    }

    if (!v27)
    {
      (*(*v26 + 16))(v26, v24);
    }
  }
}

unsigned int *IPC::handleMessage<Messages::WebPage::URLSchemeTaskDidReceiveData,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&)>(IPC::Decoder *a1, uint64_t a2)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if (v5 & 1) != 0 && (v6 = v4, v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1), (v8) && (v9 = v7, IPC::Decoder::decode<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>(a1, &v16), (v17))
  {
    v14 = v16;
    v15 = 1;
    result = WebKit::WebPage::urlSchemeTaskDidReceiveData(a2, v6, v9, &v14);
    if (v15)
    {
      result = v14;
      v14 = 0;
      if (result)
      {
        if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, result + 2);
          return (*(*result + 8))(result);
        }
      }
    }
  }

  else
  {
    v11 = *a1;
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
      return (*(*result + 16))(result, v11);
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessage<Messages::WebPage::URLSchemeTaskDidComplete,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ResourceError const&)>(IPC::Decoder *a1, uint64_t a2)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if (v5 & 1) != 0 && (v6 = v4, v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1), (v8) && (v9 = v7, IPC::Decoder::decode<WebCore::ResourceError>(a1, &v27), (v35))
  {
    *v18 = v27;
    v19 = v28;
    v20 = v29;
    LODWORD(v28) = v28 & 0xFFFFFFFE;
    v21 = v30;
    v22 = v31;
    v23 = v32;
    cf = v33;
    v25 = v34;
    v26 = 1;
    result = WebKit::WebPage::urlSchemeTaskDidComplete(a2, v6, v9, v18);
    if (v26)
    {
      v12 = cf;
      cf = 0;
      if (v12)
      {
        CFRelease(v12);
      }

      v13 = v21;
      v21 = 0;
      if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v11);
      }

      v14 = v18[1];
      v18[1] = 0;
      if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v11);
      }

      result = v18[0];
      v18[0] = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v11);
        }
      }
    }
  }

  else
  {
    v15 = *a1;
    v16 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
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
      return (*(*result + 16))(result, v15);
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebPage::SetIsSuspended,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(BOOL,WTF::CompletionHandler<void ()(std::optional<BOOL>)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
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
      *v12 = &unk_1F10F5CC0;
      v12[1] = v9;
      v12[2] = a1;
      v13 = v12;
      WebKit::WebPage::setIsSuspended(a3, v7 & 1, &v13);
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

WTF::StringImpl *IPC::handleMessageAsync<Messages::WebPage::InsertAttachment,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::String const&,std::optional<unsigned long long> &&,WTF::String const&,WTF::String const&,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a2, &v35);
  if ((v36 & 1) == 0)
  {
    goto LABEL_10;
  }

  while (1)
  {
    IPC::Decoder::decode<std::optional<unsigned long long>>(a2, &v37);
    if ((v38 & 1) == 0 || (IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a2, &v39), (v40 & 1) == 0) && ((v6 = *a2, v13 = *(a2 + 1), *a2 = 0, *(a2 + 1) = 0, (v14 = *(a2 + 3)) == 0) || !v13 || ((*(*v14 + 16))(v14, v6), (v40 & 1) == 0)))
    {
      v8 = 0;
      LOBYTE(v30) = 0;
      v34 = 0;
      goto LABEL_18;
    }

    IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a2, &v41);
    if ((v42 & 1) == 0)
    {
      v6 = *a2;
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

      (*(*v28 + 16))(v28, v6);
      if ((v42 & 1) == 0)
      {
        break;
      }
    }

    if (v36 & 1) != 0 && (v38 & 1) != 0 && (v40)
    {
      v7 = v35;
      v35 = 0;
      v30 = v7;
      v31 = v37;
      v32 = v39;
      v33 = v41;
      v8 = 1;
      v34 = 1;
      goto LABEL_18;
    }

    __break(1u);
LABEL_10:
    v9 = *a2;
    v10 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v11 = *(a2 + 3);
    if (v11)
    {
      v12 = v10 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (!v12)
    {
      (*(*v11 + 16))(v11, v9);
      if (v36)
      {
        continue;
      }
    }

    goto LABEL_42;
  }

  LOBYTE(v30) = 0;
  v34 = 0;
  if (v40)
  {
    v29 = v39;
    v39 = 0;
    if (v29)
    {
      if (atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v29, v6);
      }
    }
  }

  v8 = 0;
LABEL_18:
  if (v36)
  {
    v15 = v35;
    v35 = 0;
    if (v15)
    {
      if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v15, v6);
        if (v8)
        {
          goto LABEL_22;
        }

LABEL_42:
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
  }

  if ((v8 & 1) == 0)
  {
    goto LABEL_42;
  }

LABEL_22:
  v16 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v17 & 1) == 0)
  {
    goto LABEL_31;
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
      goto LABEL_28;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_28:
  v21 = WTF::fastMalloc(0x18);
  *v21 = &unk_1F10F5CE8;
  v21[1] = v18;
  v21[2] = a1;
  *&v37 = v21;
  WebKit::WebPage::insertAttachment(a3, &v30, &v31, &v32, &v33, &v37);
  result = v37;
  *&v37 = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  if (v34)
  {
LABEL_31:
    v23 = v33;
    v33 = 0;
    if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v23, v17);
    }

    v24 = v32;
    v32 = 0;
    if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v24, v17);
    }

    result = v30;
    v30 = 0;
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

WTF::StringImpl *IPC::handleMessageAsync<Messages::WebPage::UpdateAttachmentAttributes,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::String const&,std::optional<unsigned long long> &&,WTF::String const&,WTF::String const&,IPC::SharedBufferReference const&,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a2, &v43);
  if ((v44 & 1) == 0)
  {
    v14 = *a2;
    v15 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v16 = *(a2 + 3);
    v17 = !v16 || v15 == 0;
    if (v17 || ((*(*v16 + 16))(v16, v14), (v44 & 1) == 0))
    {
LABEL_59:
      v32 = *a2;
      v33 = *(a2 + 1);
      *a2 = 0;
      *(a2 + 1) = 0;
      result = *(a2 + 3);
      if (result && v33)
      {
        return (*(*result + 16))(result, v32);
      }

      return result;
    }
  }

  IPC::Decoder::decode<std::optional<unsigned long long>>(a2, &v45);
  if ((v46 & 1) == 0 || (IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a2, &v47), (v48 & 1) == 0) && ((v6 = *a2, v18 = *(a2 + 1), *a2 = 0, *(a2 + 1) = 0, (v19 = *(a2 + 3)) == 0) || !v18 || ((*(*v19 + 16))(v19, v6), (v48 & 1) == 0)))
  {
    v9 = 0;
    LOBYTE(v36) = 0;
    v42 = 0;
    goto LABEL_30;
  }

  IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a2, &v49);
  if ((v50 & 1) == 0)
  {
    v6 = *a2;
    v34 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v35 = *(a2 + 3);
    if (!v35 || !v34 || ((*(*v35 + 16))(v35, v6), (v50 & 1) == 0))
    {
      v9 = 0;
      LOBYTE(v36) = 0;
      v42 = 0;
      goto LABEL_11;
    }
  }

  IPC::ArgumentCoder<IPC::SharedBufferReference,void>::decode(a2, &v51);
  if ((v53 & 1) == 0)
  {
LABEL_16:
    v6 = *a2;
    v11 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v12 = *(a2 + 3);
    if (v12 && v11)
    {
      (*(*v12 + 16))(v12, v6);
    }

    LOBYTE(v36) = 0;
    v42 = 0;
    if (v50)
    {
      v13 = v49;
      v49 = 0;
      if (v13)
      {
        if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v13, v6);
        }
      }
    }

    v9 = 0;
    goto LABEL_11;
  }

  if ((v44 & 1) == 0 || (v46 & 1) == 0 || (v48 & 1) == 0 || (v50 & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = v43;
  v43 = 0;
  v36 = v7;
  v37 = v45;
  v8 = v47;
  v47 = 0;
  v38 = v8;
  v39 = v49;
  v40 = v51;
  v41 = v52;
  v9 = 1;
  v42 = 1;
LABEL_11:
  if (v48)
  {
    v10 = v47;
    v47 = 0;
    if (v10)
    {
      if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v10, v6);
      }
    }
  }

LABEL_30:
  if ((v44 & 1) != 0 && (v20 = v43, v43 = 0, v20) && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v20, v6);
    if ((v9 & 1) == 0)
    {
      goto LABEL_59;
    }
  }

  else if ((v9 & 1) == 0)
  {
    goto LABEL_59;
  }

  v21 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v22 & 1) == 0)
  {
    goto LABEL_43;
  }

  v23 = v21;
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
      goto LABEL_40;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_40:
  v26 = WTF::fastMalloc(0x18);
  *v26 = &unk_1F10F5D10;
  *(v26 + 1) = v23;
  *(v26 + 2) = a1;
  v51 = v26;
  WebKit::WebPage::updateAttachmentAttributes(a3, &v36, &v37, &v38, &v39, &v40, &v51);
  result = v51;
  v51 = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  if (v42)
  {
LABEL_43:
    v28 = *(&v41 + 1);
    *(&v41 + 1) = 0;
    if (v28)
    {
      WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v28);
    }

    v29 = v41;
    *&v41 = 0;
    if (v29 && atomic_fetch_add(v29 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v29 + 2);
      (*(*v29 + 8))(v29);
    }

    v30 = v39;
    v39 = 0;
    if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v30, v22);
    }

    v31 = v38;
    v38 = 0;
    if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v31, v22);
    }

    result = v36;
    v36 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v22);
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessage<Messages::WebPage::UpdateAttachmentIcon,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::String const&,std::optional<WebCore::ShareableBitmapHandle> &&,WebCore::FloatSize const&)>(IPC::Decoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a1, &v32);
  if (v33 & 1) != 0 || ((v19 = *a1, v20 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (v21 = *(a1 + 3)) != 0) ? (v22 = v20 == 0) : (v22 = 1), !v22 && ((*(*v21 + 16))(v21, v19), (v33)))
  {
    IPC::ArgumentCoder<std::optional<WebCore::ShareableBitmapHandle>,void>::decode<IPC::Decoder>(a1, v34);
    if ((v38 & 1) == 0)
    {
      goto LABEL_31;
    }

    while (1)
    {
      v5 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a1);
      if ((v6 & 1) == 0)
      {
        break;
      }

      if (v33 & 1) != 0 && (v38)
      {
        v7 = v5;
        v8 = v32;
        v32 = 0;
        v25 = v8;
        v26[0] = 0;
        v29 = 0;
        if (v37 == 1)
        {
          v4.n128_f64[0] = WebCore::ShareableBitmapHandle::ShareableBitmapHandle(v26, v34);
          v29 = 1;
        }

        v30 = v7;
        v9 = 1;
        goto LABEL_9;
      }

      __break(1u);
LABEL_31:
      v6 = *a1;
      v15 = *(a1 + 1);
      *a1 = 0;
      *(a1 + 1) = 0;
      v16 = *(a1 + 3);
      if (v16)
      {
        if (v15)
        {
          (*(*v16 + 16))(v16, v6);
          if (v38)
          {
            continue;
          }
        }
      }

      LOBYTE(v25) = 0;
      v31 = 0;
      goto LABEL_15;
    }

    v6 = *a1;
    v23 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v24 = *(a1 + 3);
    if (v24 && v23)
    {
      (*(*v24 + 16))(v24, v6);
    }

    v9 = 0;
    LOBYTE(v25) = 0;
LABEL_9:
    v31 = v9;
    if ((v38 & 1) != 0 && v37 == 1)
    {
      if (v36 == 1)
      {
        v10 = cf;
        cf = 0;
        if (v10)
        {
          CFRelease(v10);
        }
      }

      WTF::MachSendRight::~MachSendRight(v34);
    }

LABEL_15:
    if (v33)
    {
      v11 = v32;
      v32 = 0;
      if (v11)
      {
        if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v11, v6);
        }
      }
    }
  }

  else
  {
    LOBYTE(v25) = 0;
    v31 = 0;
  }

  if (v31 & 1) != 0 || (v17 = *a1, v18 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (result = *(a1 + 3)) != 0) && v18 && (result = (*(*result + 16))(result, v17, v4), (v31))
  {
    result = WebKit::WebPage::updateAttachmentIcon(a2, &v25, v26);
    if (v31)
    {
      if (v29 == 1)
      {
        if (v28 == 1)
        {
          v14 = v27;
          v27 = 0;
          if (v14)
          {
            CFRelease(v14);
          }
        }

        WTF::MachSendRight::~MachSendRight(v26);
      }

      result = v25;
      v25 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v13);
        }
      }
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebPage::GetApplicationManifest,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::CompletionHandler<void ()(std::optional<WebCore::ApplicationManifest> const&)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
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
    *v10 = &unk_1F10F5D38;
    v10[1] = v7;
    v10[2] = a1;
    v11 = v10;
    WebKit::WebPage::getApplicationManifest(a3, &v11);
    result = v11;
    v11 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebPage::GetTextFragmentMatch,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::CompletionHandler<void ()(WTF::String const&)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
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
    *v10 = &unk_1F10F5D60;
    v10[1] = v7;
    v10[2] = a1;
    v11 = v10;
    WebKit::WebPage::getTextFragmentMatch(a3, &v11);
    result = v11;
    v11 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

WebCore::Node *IPC::handleMessage<Messages::WebPage::SimulateDeviceOrientationChange,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(double,double,double)>(IPC::Decoder *a1, WebKit::WebPage *a2)
{
  v4 = IPC::Decoder::decode<unsigned long long>(a1);
  if (v5 & 1) != 0 && (v6 = *&v4, v7 = IPC::Decoder::decode<unsigned long long>(a1), (v8) && (v9 = *&v7, v10 = IPC::Decoder::decode<unsigned long long>(a1), (v11))
  {

    return WebKit::WebPage::simulateDeviceOrientationChange(a2, v6, v9, *&v10);
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

uint64_t IPC::handleMessage<Messages::WebPage::SetCanShowPlaceholder,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::ElementContext const&,BOOL)>(IPC::Decoder *a1, WebKit::WebPage *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  IPC::Decoder::decode<WebCore::ElementContext>(a1, v18);
  if (v19 == 1)
  {
    v4 = *(a1 + 1);
    v5 = *(a1 + 2);
    v6 = *a1;
    if (v4 <= &v5[-*a1])
    {
      *a1 = 0;
      *(a1 + 1) = 0;
      v9 = *(a1 + 3);
      if (v9)
      {
        if (v4)
        {
          (*(*v9 + 16))(v9);
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
          v15[2] = v18[2];
          v15[3] = v18[3];
          v15[4] = v18[4];
          v15[0] = v18[0];
          v15[1] = v18[1];
          v16 = v7;
          v17 = 1;
          return WebKit::WebPage::setCanShowPlaceholder(a2, v15);
        }

        goto LABEL_11;
      }
    }

    *a1 = 0;
    *(a1 + 1) = 0;
    v10 = *(a1 + 3);
    if (v10)
    {
      if (v4)
      {
        (*(*v10 + 16))(v10);
        v6 = *a1;
        v4 = *(a1 + 1);
        goto LABEL_11;
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = 0;
LABEL_11:
    *a1 = 0;
    *(a1 + 1) = 0;
    v11 = *(a1 + 3);
    if (v11 && v4)
    {
      (*(*v11 + 16))(v11, v6);
    }
  }

  v12 = *a1;
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
    return (*(*result + 16))(result, v12);
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebPage::GetLoadedSubresourceDomains,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::CompletionHandler<void ()(WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
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
    *v10 = &unk_1F10F5D88;
    v10[1] = v7;
    v10[2] = a1;
    v11 = v10;
    WebKit::WebPage::getLoadedSubresourceDomains(a3, &v11);
    result = v11;
    v11 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessage<Messages::WebPage::SystemPreviewActionTriggered,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::SystemPreviewInfo,WTF::String const&)>(IPC::Decoder *a1, WebCore::Document *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  IPC::ArgumentCoder<WebCore::SystemPreviewInfo,void>::decode(a1, v26);
  if (v27 & 1) != 0 || ((v6 = *a1, v7 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (v8 = *(a1 + 3)) != 0) ? (v9 = v7 == 0) : (v9 = 1), !v9 && ((*(*v8 + 16))(v8, v6), (v27)))
  {
    IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a1, &v15);
    if ((v16 & 1) == 0)
    {
      goto LABEL_18;
    }

    while ((v27 & 1) == 0)
    {
      __break(1u);
LABEL_18:
      v12 = *a1;
      v13 = *(a1 + 1);
      *a1 = 0;
      *(a1 + 1) = 0;
      v14 = *(a1 + 3);
      if (v14)
      {
        if (v13)
        {
          (*(*v14 + 16))(v14, v12);
          if (v16)
          {
            continue;
          }
        }
      }

      goto LABEL_14;
    }

    v21 = v26[4];
    v22 = v26[5];
    v23 = v26[6];
    v17 = v26[0];
    v18 = v26[1];
    v19 = v26[2];
    v20 = v26[3];
    v24 = v15;
    v25 = 1;
    result = WebKit::WebPage::systemPreviewActionTriggered(a2, v26, &v24);
    if (v25)
    {
      result = v24;
      v24 = 0;
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
LABEL_14:
    v10 = *a1;
    v11 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result && v11)
    {
      return (*(*result + 16))(result, v10);
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::WebPage::StartTextManipulations,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::Vector<WebCore::TextManipulationControllerExclusionRule,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,BOOL,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, uint64_t *a2, uint64_t a3, __n128 a4)
{
  v5 = a2;
  v7 = ((a2[2] + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *a2;
  v9 = v5[1];
  if (v9 < v7 - v8 || v9 - (v7 - v8) <= 7)
  {
    *v5 = 0;
    v5[1] = 0;
    v43 = v5[3];
    if (v43)
    {
      if (v9)
      {
        (*(*v43 + 16))(v43);
        v8 = *v5;
        v9 = v5[1];
        goto LABEL_93;
      }
    }

    else
    {
      v9 = 0;
    }

    v8 = 0;
LABEL_93:
    *v5 = 0;
    v5[1] = 0;
    v44 = v5[3];
    if (v44 && v9)
    {
      (*(*v44 + 16))(v44, v8);
    }

    goto LABEL_79;
  }

  v5[2] = (v7 + 1);
  if (!v7)
  {
    goto LABEL_93;
  }

  v11 = *v7;
  v55[0] = 0;
  v55[1] = 0;
  if (v11 < 0x8000)
  {
    if (!v11)
    {
      v20 = 0;
      v19 = 0;
      goto LABEL_32;
    }

    LODWORD(v55[1]) = v11;
    v55[0] = WTF::fastMalloc((32 * v11));
    while (1)
    {
      IPC::Decoder::decode<WebCore::TextManipulationControllerExclusionRule>(&v50, v5);
      v12 = v54;
      if (v54 == 1)
      {
        if (HIDWORD(v55[1]) == LODWORD(v55[1]))
        {
          WTF::Vector<WebCore::TextManipulationControllerExclusionRule,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::TextManipulationControllerExclusionRule>(v55, &v50);
        }

        else
        {
          v13 = v55[0] + 32 * HIDWORD(v55[1]);
          *v13 = v50;
          v13[8] = 0;
          v13[24] = -1;
          v14 = v53;
          if (v53 != 255)
          {
            v15 = v51;
            v51 = 0;
            *(v13 + 1) = v15;
            if (v14 == 1)
            {
              v16 = v52;
              v52 = 0;
              *(v13 + 2) = v16;
            }

            v13[24] = v14;
          }

          ++HIDWORD(v55[1]);
        }
      }

      if (v54 != 1)
      {
        goto LABEL_28;
      }

      if (v53 <= 1u)
      {
        break;
      }

      if (v53 == 2)
      {
        goto LABEL_25;
      }

LABEL_28:
      if ((v12 & 1) == 0)
      {
        goto LABEL_78;
      }

      v11 = (v11 - 1);
      if (!v11)
      {
        v11 = v55[0];
        v19 = v55[1];
        v20 = HIDWORD(v55[1]);
LABEL_32:
        a4.n128_u64[0] = 0;
        *v55 = a4;
        *&v48 = v11;
        goto LABEL_33;
      }
    }

    if (v53)
    {
      v17 = v52;
      v52 = 0;
      if (v17)
      {
        if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v17, v8);
        }
      }
    }

LABEL_25:
    v18 = v51;
    v51 = 0;
    if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v18, v8);
    }

    goto LABEL_28;
  }

  do
  {
    result = IPC::Decoder::decode<WebCore::TextManipulationControllerExclusionRule>(&v50, v5);
    v32 = v54;
    if (v54 == 1)
    {
      if (HIDWORD(v55[1]) == LODWORD(v55[1]))
      {
        result = WTF::Vector<WebCore::TextManipulationControllerExclusionRule,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::TextManipulationControllerExclusionRule>(v55, &v50);
      }

      else
      {
        v33 = v55[0] + 32 * HIDWORD(v55[1]);
        *v33 = v50;
        v33[8] = 0;
        v33[24] = -1;
        v34 = v53;
        if (v53 != 255)
        {
          v35 = v51;
          v51 = 0;
          *(v33 + 1) = v35;
          if (v34 == 1)
          {
            v36 = v52;
            v52 = 0;
            *(v33 + 2) = v36;
          }

          v33[24] = v34;
        }

        ++HIDWORD(v55[1]);
      }
    }

    if (v54 == 1)
    {
      if (v53 > 1u)
      {
        if (v53 != 2)
        {
          goto LABEL_67;
        }
      }

      else if (v53)
      {
        v37 = v52;
        v52 = 0;
        if (v37)
        {
          if (atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v37, v8);
          }
        }
      }

      result = v51;
      v51 = 0;
      if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v8);
      }
    }

LABEL_67:
    if ((v32 & 1) == 0)
    {
LABEL_78:
      WTF::Vector<WebCore::TextManipulationControllerExclusionRule,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v55, v8);
LABEL_79:
      v39 = *v5;
      v40 = v5[1];
      *v5 = 0;
      v5[1] = 0;
      v41 = v5[3];
      if (v41 && v40)
      {
        (*(*v41 + 16))(v41, v39);
      }

      LOBYTE(v50) = 0;
      v53 = 0;
      while (2)
      {
        v27 = *v5;
        v42 = v5[1];
        *v5 = 0;
        v5[1] = 0;
        result = v5[3];
        if (!result || !v42 || (result = (*(*result + 16))(result, v27), (v53 & 1) == 0))
        {
LABEL_46:
          if (v53 == 1)
          {
            return WTF::Vector<WebCore::TextManipulationControllerExclusionRule,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v50, v27);
          }

          return result;
        }

        while (1)
        {
          result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v5);
          if ((v27 & 1) == 0)
          {
            goto LABEL_46;
          }

          v5 = result;
          while (1)
          {
            v28 = *a1;
            if ((*a1 & 1) == 0)
            {
              break;
            }

            v29 = *a1;
            atomic_compare_exchange_strong_explicit(a1, &v29, v28 + 2, memory_order_relaxed, memory_order_relaxed);
            if (v29 == v28)
            {
              goto LABEL_43;
            }
          }

          WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_43:
          v30 = WTF::fastMalloc(0x18);
          *v30 = &unk_1F10F5DB0;
          v30[1] = v5;
          v30[2] = a1;
          *&v48 = v30;
          if (v53)
          {
            WebKit::WebPage::startTextManipulations(a3, &v50, v52, &v48);
            result = v48;
            *&v48 = 0;
            if (result)
            {
              result = (*(*result + 8))(result);
            }

            goto LABEL_46;
          }

          __break(1u);
LABEL_86:
          v11 = v31;
LABEL_87:
          *&v48 = v11;
          v19 = v55[1];
          v20 = HIDWORD(v55[1]);
          v55[0] = 0;
          v55[1] = 0;
LABEL_33:
          *(&v48 + 1) = __PAIR64__(v20, v19);
          v49 = 1;
          WTF::Vector<WebCore::TextManipulationControllerExclusionRule,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v55, v8);
          v22 = *v5;
          v23 = v5[1];
          v24 = v5[2];
          if (v23 <= &v24[-*v5])
          {
            break;
          }

          v5[2] = (v24 + 1);
          if (!v24)
          {
            goto LABEL_98;
          }

          v25 = *v24;
          if (v25 >= 2)
          {
            goto LABEL_101;
          }

          *&v21 = 0;
          v48 = v21;
          v50 = v11;
          v51 = __PAIR64__(v20, v19);
          LOBYTE(v52) = v25;
          v53 = 1;
          WTF::Vector<WebCore::TextManipulationControllerExclusionRule,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v48, v22);
        }

        *v5 = 0;
        v5[1] = 0;
        v45 = v5[3];
        if (v45)
        {
          if (v23)
          {
            (*(*v45 + 16))(v45);
            v23 = v5[1];
          }
        }

        else
        {
          v23 = 0;
        }

LABEL_98:
        *v5 = 0;
        v5[1] = 0;
        v46 = v5[3];
        if (v46)
        {
          if (v23)
          {
            (*(*v46 + 16))(v46);
            v22 = *v5;
            v23 = v5[1];
LABEL_101:
            *v5 = 0;
            v5[1] = 0;
            v47 = v5[3];
            if (v47 && v23)
            {
              (*(*v47 + 16))(v47, v22);
            }

            LOBYTE(v50) = 0;
            v53 = 0;
            WTF::Vector<WebCore::TextManipulationControllerExclusionRule,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v48, v22);
            continue;
          }
        }

        else
        {
          v23 = 0;
        }

        break;
      }

      v22 = 0;
      goto LABEL_101;
    }

    v11 = (v11 - 1);
  }

  while (v11);
  v38 = HIDWORD(v55[1]);
  v11 = v55[0];
  if (LODWORD(v55[1]) <= HIDWORD(v55[1]))
  {
    goto LABEL_87;
  }

  v31 = v55[0];
  if (!HIDWORD(v55[1]))
  {
LABEL_74:
    if (v11)
    {
      if (v31 == v11)
      {
        v55[0] = 0;
        LODWORD(v55[1]) = 0;
      }

      WTF::fastFree(v11, v8);
      v11 = v55[0];
      goto LABEL_87;
    }

    goto LABEL_86;
  }

  if (!(HIDWORD(v55[1]) >> 27))
  {
    v31 = WTF::fastMalloc((32 * HIDWORD(v55[1])));
    LODWORD(v55[1]) = v38;
    v55[0] = v31;
    if (v31 != v11)
    {
      WTF::VectorMover<false,WebCore::TextManipulationControllerExclusionRule>::move(v11, (v11 + 32 * v38), v31);
      v31 = v55[0];
    }

    goto LABEL_74;
  }

  __break(0xC471u);
  return result;
}

void *IPC::handleMessageAsync<Messages::WebPage::CompleteTextManipulation,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::Vector<WebCore::TextManipulationItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(WebCore::TextManipulationControllerManipulationResult const&)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3, double a4, __n128 a5)
{
  IPC::ArgumentCoder<std::tuple<WTF::Vector<WebCore::TextManipulationItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder>(a2, v16, a5);
  if (v17 & 1) != 0 || ((v9 = *a2, v13 = *(a2 + 1), *a2 = 0, *(a2 + 1) = 0, (result = *(a2 + 3)) != 0) ? (v14 = v13 == 0) : (v14 = 1), !v14 && (result = (*(*result + 16))(result, v9), (v17)))
  {
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
      result = WTF::fastMalloc(0x18);
      *result = &unk_1F10F5DD8;
      result[1] = v10;
      result[2] = a1;
      v15 = result;
      if ((v17 & 1) == 0)
      {
        __break(1u);
        return result;
      }

      WebKit::WebPage::completeTextManipulation(a3, v16, &v15);
      result = v15;
      v15 = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }
    }
  }

  if (v17 == 1)
  {
    return WTF::Vector<WebCore::TextManipulationItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v16, v9);
  }

  return result;
}

WTF::StringImpl *IPC::handleMessage<Messages::WebPage::SetOverriddenMediaType,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::String const&)>(IPC::Decoder *a1, WTF **a2)
{
  IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a1, &v10);
  if (v11 & 1) != 0 || ((v7 = *a1, v8 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (result = *(a1 + 3)) != 0) ? (v9 = v8 == 0) : (v9 = 1), !v9 && (result = (*(*result + 16))(result, v7), (v11)))
  {
    result = WebKit::WebPage::setOverriddenMediaType(a2, &v10, v4);
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

uint64_t IPC::handleMessageAsync<Messages::WebPage::GetProcessDisplayName,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::CompletionHandler<void ()(WTF::String &&)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
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
    *v10 = &unk_1F10F5E00;
    v10[1] = v7;
    v10[2] = a1;
    v11 = v10;
    WebKit::WebPage::getProcessDisplayName(a3, &v11);
    result = v11;
    v11 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t IPC::handleMessage<Messages::WebPage::UpdateCORSDisablingPatterns,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>(IPC::Decoder *a1, _DWORD *a2)
{
  result = IPC::Decoder::decode<std::tuple<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(a1, v5);
  if (v6 == 1)
  {
    result = WebKit::WebPage::updateCORSDisablingPatterns(a2, v5);
    if (v6)
    {
      return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v5, v4);
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebPage::CreateAppHighlightInSelectedRange,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::CreateNewGroupForHighlight,WebCore::HighlightRequestOriginatedInApp,WTF::CompletionHandler<void ()(WebCore::AppHighlight &&)> &&)>(atomic_ullong *a1, uint64_t *a2, uint64_t a3)
{
  v6 = IPC::Decoder::decode<WebKit::ColorControlSupportsAlpha>(a2);
  if ((v6 & 0x100) != 0 && (v11 = v6, v12 = IPC::Decoder::decode<WebKit::ColorControlSupportsAlpha>(a2), (v12 & 0x100) != 0))
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
      *v18 = &unk_1F10F5E28;
      v18[1] = v15;
      v18[2] = a1;
      v19 = v18;
      WebKit::WebPage::createAppHighlightInSelectedRange(a3, v11 & 1, v13 & 1, &v19);
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

uint64_t IPC::handleMessage<Messages::WebPage::RestoreAppHighlightsAndScrollToIndex,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::Vector<WebCore::SharedMemoryHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,std::optional<unsigned int>)>(IPC::Decoder *a1, uint64_t a2, __n128 a3)
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
    v32 = *(a1 + 3);
    if (v32)
    {
      if (v5)
      {
        (*(*v32 + 16))(v32);
        v5 = *(a1 + 1);
      }
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_56;
  }

  *(a1 + 2) = v6 + 1;
  if (!v6)
  {
LABEL_56:
    *a1 = 0;
    *(a1 + 1) = 0;
    v33 = *(a1 + 3);
    if (v33 && v5)
    {
      (*(*v33 + 16))(v33);
    }

    goto LABEL_51;
  }

  v12 = *v6;
  v40 = 0uLL;
  if (v12 >= 0x10000)
  {
    while (1)
    {
      IPC::ArgumentCoder<WebCore::SharedMemoryHandle,void>::decode(a1, &v34);
      if (v36 & 1) != 0 || (v7 = *a1, v26 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (v27 = *(a1 + 3)) != 0) && v26 && ((*(*v27 + 16))(v27, v7), (v36))
      {
        if (v40.n128_u32[3] == v40.n128_u32[2])
        {
          WTF::Vector<WebCore::SharedMemoryHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::SharedMemoryHandle>(&v40, &v34);
        }

        else
        {
          *(WTF::MachSendRight::MachSendRight() + 8) = v35;
          ++v40.n128_u32[3];
        }

        v28 = 1;
      }

      else
      {
        v28 = 0;
      }

      if (v36 == 1)
      {
        WTF::MachSendRight::~MachSendRight(&v34);
      }

      if ((v28 & 1) == 0)
      {
        goto LABEL_50;
      }

      if (!--v12)
      {
        WTF::Vector<WebCore::SharedMemoryHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v40, v40.n128_u32[3]);
        v16 = v40.n128_u64[0];
        *&v38 = v40.n128_u64[0];
        v17 = v40.n128_u32[2];
        v18 = v40.n128_u32[3];
        v40 = 0uLL;
        goto LABEL_27;
      }
    }
  }

  if (v12)
  {
    v40.n128_u32[2] = v12;
    v40.n128_u64[0] = WTF::fastMalloc((16 * v12));
    while (1)
    {
      IPC::ArgumentCoder<WebCore::SharedMemoryHandle,void>::decode(a1, &v34);
      if (v36 & 1) != 0 || (v7 = *a1, v14 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (v15 = *(a1 + 3)) != 0) && v14 && ((*(*v15 + 16))(v15, v7), (v36))
      {
        if (v40.n128_u32[3] == v40.n128_u32[2])
        {
          WTF::Vector<WebCore::SharedMemoryHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::SharedMemoryHandle>(&v40, &v34);
        }

        else
        {
          *(WTF::MachSendRight::MachSendRight() + 8) = v35;
          ++v40.n128_u32[3];
        }

        v13 = 1;
      }

      else
      {
        v13 = 0;
      }

      if (v36 == 1)
      {
        WTF::MachSendRight::~MachSendRight(&v34);
      }

      if ((v13 & 1) == 0)
      {
        break;
      }

      if (!--v12)
      {
        v16 = v40.n128_u64[0];
        v17 = v40.n128_u32[2];
        v18 = v40.n128_u32[3];
        goto LABEL_26;
      }
    }

LABEL_50:
    WTF::Vector<WebCore::SharedMemoryHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v40, v7);
LABEL_51:
    v29 = *a1;
    v30 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v31 = *(a1 + 3);
    if (v31 && v30)
    {
      (*(*v31 + 16))(v31, v29);
    }

    goto LABEL_31;
  }

  v18 = 0;
  v17 = 0;
  v16 = 0;
LABEL_26:
  a3.n128_u64[0] = 0;
  v40 = a3;
  *&v38 = v16;
LABEL_27:
  *(&v38 + 1) = __PAIR64__(v18, v17);
  v39 = 1;
  WTF::Vector<WebCore::SharedMemoryHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v40, v7);
  v19 = IPC::Decoder::decode<std::optional<unsigned int>>(a1);
  if ((v20 & 1) == 0)
  {
    WTF::Vector<WebCore::SharedMemoryHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v38, v20);
LABEL_31:
    v24 = *a1;
    v25 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result)
    {
      if (v25)
      {
        return (*(*result + 16))(result, v24);
      }
    }

    return result;
  }

  *&v21 = 0;
  v38 = v21;
  v34 = v16;
  v35 = __PAIR64__(v18, v17);
  v36 = v19;
  v37 = 1;
  WTF::Vector<WebCore::SharedMemoryHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v38, v20);
  result = WebKit::WebPage::restoreAppHighlightsAndScrollToIndex(a2, &v34);
  if (v37)
  {
    return WTF::Vector<WebCore::SharedMemoryHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v34, v23);
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebPage::CreateTextFragmentDirectiveFromSelection,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::CompletionHandler<void ()(WTF::URL &&)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
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
    *v10 = &unk_1F10F5E50;
    v10[1] = v7;
    v10[2] = a1;
    v11 = v10;
    WebKit::WebPage::createTextFragmentDirectiveFromSelection(a3, &v11);
    result = v11;
    v11 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebPage::GetTextFragmentRanges,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::CompletionHandler<void ()(WTF::Vector<WebKit::EditingRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&&)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
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
    *v10 = &unk_1F10F5E78;
    v10[1] = v7;
    v10[2] = a1;
    v11 = v10;
    WebKit::WebPage::getTextFragmentRanges(a3, &v11);
    result = v11;
    v11 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebPage::HandleWheelEvent,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::WebWheelEvent const&,WTF::OptionSet<WebCore::WheelEventProcessingSteps> const&,std::optional<BOOL>,WTF::CompletionHandler<void ()(std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,std::optional<WebCore::WheelScrollGestureState>,BOOL,std::optional<WebCore::RemoteUserInputEventData>)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, WebKit::WebPage *a3)
{
  v50 = *MEMORY[0x1E69E9840];
  v6 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v7 & 1) == 0)
  {
    goto LABEL_7;
  }

  v8 = v6;
  IPC::Decoder::decode<WebKit::WebWheelEvent>(&v40, a2);
  if ((v49 & 1) == 0)
  {
    goto LABEL_7;
  }

  v9 = *(a2 + 1);
  v10 = *(a2 + 2);
  v11 = *a2;
  if (v9 <= &v10[-*a2])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v23 = *(a2 + 3);
    if (v23)
    {
      if (v9)
      {
        (*(*v23 + 16))(v23);
        v9 = *(a2 + 1);
      }
    }

    else
    {
      v9 = 0;
    }

    goto LABEL_29;
  }

  *(a2 + 2) = v10 + 1;
  if (!v10)
  {
LABEL_29:
    *a2 = 0;
    *(a2 + 1) = 0;
    v24 = *(a2 + 3);
    if (v24)
    {
      if (v9)
      {
        (*(*v24 + 16))(v24);
        v11 = *a2;
        v9 = *(a2 + 1);
        goto LABEL_32;
      }
    }

    else
    {
      v9 = 0;
    }

    v11 = 0;
LABEL_32:
    *a2 = 0;
    *(a2 + 1) = 0;
    v25 = *(a2 + 3);
    if (v25 && v9)
    {
      (*(*v25 + 16))(v25, v11);
    }

    goto LABEL_7;
  }

  v12 = *v10;
  if (v12 >= 0x10)
  {
    goto LABEL_32;
  }

  v13 = IPC::Decoder::decode<std::optional<BOOL>>(a2);
  if ((v13 & 0x10000) != 0)
  {
    if ((v49 & 1) == 0)
    {
      goto LABEL_26;
    }

    v26 = v8;
    v28 = 0;
    v29 = v41;
    v30 = v42;
    v31 = v43;
    v27 = &unk_1F10E8398;
    v34 = v46;
    v35 = v47;
    v36 = v48;
    v32 = v44;
    v33 = v45;
    v37 = v12;
    v38 = v13;
    v39 = 1;
LABEL_15:
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if ((v18 & 1) == 0)
    {
      return result;
    }

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
        goto LABEL_21;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_21:
    v22 = WTF::fastMalloc(0x18);
    *v22 = &unk_1F10F5EA0;
    v22[1] = v19;
    v22[2] = a1;
    v40 = v22;
    if (v39)
    {
      WebKit::WebPage::handleWheelEvent(a3, v26, &v27, &v37, v38, &v40);
      result = v40;
      v40 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }

      return result;
    }

LABEL_26:
    __break(1u);
  }

LABEL_7:
  LOBYTE(v26) = 0;
  v39 = 0;
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
    result = (*(*result + 16))(result, v14);
    if (v39)
    {
      goto LABEL_15;
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebPage::DispatchWheelEventWithoutScrolling,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::WebWheelEvent const&,WTF::CompletionHandler<void ()(BOOL)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, WebKit::WebPage *a3)
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v7 & 1) != 0 && (v8 = v6, IPC::Decoder::decode<WebKit::WebWheelEvent>(&v30, a2), v39 == 1))
  {
    v18 = v8;
    v20 = 0;
    v21 = v31;
    v22 = v32;
    v23 = v33;
    v19 = &unk_1F10E8398;
    v26 = v36;
    v27 = v37;
    v28 = v38;
    v24 = v34;
    v25 = v35;
    v29 = 1;
  }

  else
  {
    LOBYTE(v18) = 0;
    v29 = 0;
    v14 = *a2;
    v15 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result)
    {
      v16 = v15 == 0;
    }

    else
    {
      v16 = 1;
    }

    if (v16)
    {
      return result;
    }

    result = (*(*result + 16))(result, v14);
    if ((v29 & 1) == 0)
    {
      return result;
    }
  }

  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if (v10)
  {
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
        goto LABEL_16;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_16:
    v17 = WTF::fastMalloc(0x18);
    *v17 = &unk_1F10F5EC8;
    v17[1] = v11;
    v17[2] = a1;
    v30 = v17;
    if ((v29 & 1) == 0)
    {
      __break(1u);
    }

    WebKit::WebPage::dispatchWheelEventWithoutScrolling(a3, v18, &v19, &v30);
    result = v30;
    v30 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebPage::LastNavigationWasAppInitiated,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::CompletionHandler<void ()(BOOL)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
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
    *v10 = &unk_1F10F5EF0;
    v10[1] = v7;
    v10[2] = a1;
    v11 = v10;
    WebKit::WebPage::lastNavigationWasAppInitiated(a3, &v11);
    result = v11;
    v11 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebPage::UpdateWithTextRecognitionResult,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::TextRecognitionResult const&,WebCore::ElementContext const&,WebCore::FloatPoint const&,WTF::CompletionHandler<void ()(WebKit::TextRecognitionUpdateResult)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  v46 = *MEMORY[0x1E69E9840];
  IPC::ArgumentCoder<WebCore::TextRecognitionResult,void>::decode(a2, &v32);
  if (v36 & 1) != 0 || ((v13 = *a2, v14 = *(a2 + 1), *a2 = 0, *(a2 + 1) = 0, (v15 = *(a2 + 3)) != 0) ? (v16 = v14 == 0) : (v16 = 1), !v16 && ((*(*v15 + 16))(v15, v13), (v36)))
  {
    IPC::Decoder::decode<WebCore::ElementContext>(a2, v44);
    if (v45)
    {
      v7 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a2);
      if (v6)
      {
        if ((v36 & 1) == 0 || (v45 & 1) == 0)
        {
          goto LABEL_40;
        }

        *&v8 = 0;
        v37 = v32;
        v9 = v33;
        v32 = v8;
        v33 = v8;
        v38 = v9;
        v10 = v34;
        v34 = v8;
        v39 = v10;
        v11 = cf;
        cf = 0;
        v40 = v11;
        v41[3] = v44[3];
        v41[4] = v44[4];
        v41[1] = v44[1];
        v41[2] = v44[2];
        v41[0] = v44[0];
        v12 = 1;
        v42 = v7;
LABEL_21:
        v43 = v12;
        if (v36)
        {
          v22 = cf;
          cf = 0;
          if (v22)
          {
            CFRelease(v22);
          }

          WTF::Vector<WebCore::TextRecognitionBlockData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v34, v6);
          WTF::Vector<WebCore::TextRecognitionDataDetector,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v33, v23);
          WTF::Vector<WebCore::TextRecognitionLineData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v32, v24);
        }

        if (v12)
        {
          goto LABEL_26;
        }

        goto LABEL_13;
      }

      v6 = *a2;
      v20 = *(a2 + 1);
      *a2 = 0;
      *(a2 + 1) = 0;
      v21 = *(a2 + 3);
      if (v21 && v20)
      {
        (*(*v21 + 16))(v21, v6);
      }
    }

    v12 = 0;
    LOBYTE(v37) = 0;
    goto LABEL_21;
  }

  LOBYTE(v37) = 0;
  v43 = 0;
LABEL_13:
  v17 = *a2;
  v18 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (!result)
  {
    goto LABEL_35;
  }

  if (!v18)
  {
    goto LABEL_35;
  }

  result = (*(*result + 16))(result, v17);
  if ((v43 & 1) == 0)
  {
    goto LABEL_35;
  }

LABEL_26:
  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v17 & 1) == 0)
  {
    goto LABEL_35;
  }

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
      goto LABEL_32;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_32:
  v28 = WTF::fastMalloc(0x18);
  *v28 = &unk_1F10F5F18;
  v28[1] = v25;
  v28[2] = a1;
  *&v44[0] = v28;
  if ((v43 & 1) == 0)
  {
LABEL_40:
    __break(1u);
  }

  WebKit::WebPage::updateWithTextRecognitionResult(a3, &v37, v41, &v42, v44);
  result = *&v44[0];
  *&v44[0] = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

LABEL_35:
  if (v43 == 1)
  {
    v29 = v40;
    v40 = 0;
    if (v29)
    {
      CFRelease(v29);
    }

    WTF::Vector<WebCore::TextRecognitionBlockData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v39, v17);
    WTF::Vector<WebCore::TextRecognitionDataDetector,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v38, v30);
    return WTF::Vector<WebCore::TextRecognitionLineData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v37, v31);
  }

  return result;
}

WTF::StringImpl *IPC::handleMessage<Messages::WebPage::StartVisualTranslation,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::String const&,WTF::String const&)>(IPC::Decoder *a1, void *a2)
{
  result = IPC::Decoder::decode<std::tuple<WTF::String,WTF::String>>(a1, &v6);
  if (v8 == 1)
  {
    result = WebKit::WebPage::startVisualTranslation(a2, &v6, &v7);
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

_DWORD *IPC::handleMessage<Messages::WebPage::ScrollToRect,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::FloatRect const&,WebCore::FloatPoint const&)>(IPC::Decoder *a1, WebKit::WebPage *a2)
{
  IPC::ArgumentCoder<std::tuple<WebCore::FloatRect,WebCore::FloatPoint>,void>::decode<IPC::Decoder>(a1, v8);
  if (v10)
  {
    return WebKit::WebPage::scrollToRect(a2, v8, &v9);
  }

  v5 = *a1;
  v6 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  result = *(a1 + 3);
  if (result && v6 != 0)
  {
    result = (*(*result + 16))(result, v5);
    if (v10)
    {
      return WebKit::WebPage::scrollToRect(a2, v8, &v9);
    }
  }

  return result;
}

uint64_t IPC::handleMessage<Messages::WebPage::SetContentOffset,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(std::optional<int>,std::optional<int>,WebCore::ScrollIsAnimated)>(uint64_t *a1, WebKit::WebPage *a2)
{
  IPC::Decoder::decode<std::optional<int>>(a1);
  if (v4 & 1) != 0 && (IPC::Decoder::decode<std::optional<int>>(a1), (v5) && (IPC::Decoder::decode<WebKit::ColorControlSupportsAlpha>(a1) & 0x100) != 0)
  {

    return WebKit::WebPage::setContentOffset(a2);
  }

  else
  {
    v6 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    result = a1[3];
    if (result)
    {
      v8 = v6 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      v9 = *(*result + 16);

      return v9();
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::WebPage::NavigateServiceWorkerClient,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::ProcessQualified<WTF::UUID>,WTF::URL const&,WTF::CompletionHandler<void ()(WebCore::ScheduleLocationChangeResult)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, WebCore::Document *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  IPC::ArgumentCoder<WebCore::ProcessQualified<WTF::UUID>,void>::decode(a2, v28);
  if ((v29 & 1) == 0)
  {
    v13 = *a2;
    v14 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v15 = *(a2 + 3);
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

    goto LABEL_21;
  }

  IPC::ArgumentCoder<WTF::URL,void>::decode(a2, v30);
  if ((v31 & 1) == 0)
  {
    v19 = *a2;
    v20 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v21 = *(a2 + 3);
    if (!v21 || !v20 || ((*(*v21 + 16))(v21, v19), (v31 & 1) == 0))
    {
LABEL_21:
      v17 = *a2;
      v18 = *(a2 + 1);
      *a2 = 0;
      *(a2 + 1) = 0;
      result = *(a2 + 3);
      if (result && v18)
      {
        return (*(*result + 16))(result, v17);
      }

      return result;
    }
  }

  v22 = v28[0];
  v23 = v28[1];
  v24 = *v30;
  v25 = *&v30[8];
  v26 = *&v30[24];
  v27 = 1;
  v6 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v7 & 1) == 0)
  {
    goto LABEL_12;
  }

  v8 = v6;
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
      goto LABEL_9;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_9:
  v11 = WTF::fastMalloc(0x18);
  *v11 = &unk_1F10F5F40;
  v11[1] = v8;
  v11[2] = a1;
  *&v28[0] = v11;
  *v30 = v22;
  *&v30[16] = v23;
  WebKit::WebPage::navigateServiceWorkerClient(a3, v30, &v24, v28);
  result = *&v28[0];
  *&v28[0] = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  if (v27)
  {
LABEL_12:
    result = v24;
    v24 = 0;
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

void IPC::handleMessage<Messages::WebPage::ModelInlinePreviewDidFailToLoad,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ResourceError const&)>(IPC::Decoder *a1, uint64_t a2)
{
  IPC::Decoder::decode<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a1, v22);
  if ((v23 & 1) != 0 && (IPC::Decoder::decode<WebCore::ResourceError>(a1, &v24), v32 == 1))
  {
    if (v23)
    {
      *v13 = v24;
      v14 = v25;
      v15 = v26;
      LODWORD(v25) = v25 & 0xFFFFFFFE;
      v16 = v27;
      v17 = v28;
      v18 = v29;
      cf = v30;
      v20 = v31;
      v21 = 1;
      WebKit::WebPage::modelInlinePreviewDidFailToLoad(a2, v22[0], v22[1], v13);
      if (v21)
      {
        v5 = cf;
        cf = 0;
        if (v5)
        {
          CFRelease(v5);
        }

        v6 = v16;
        v16 = 0;
        if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v6, v4);
        }

        v7 = v13[1];
        v13[1] = 0;
        if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v7, v4);
        }

        v8 = v13[0];
        v13[0] = 0;
        if (v8)
        {
          if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v8, v4);
          }
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
    v9 = *a1;
    v10 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v11 = *(a1 + 3);
    if (v11)
    {
      v12 = v10 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (!v12)
    {
      (*(*v11 + 16))(v11, v9);
    }
  }
}

WTF::StringImpl *IPC::handleMessage<Messages::WebPage::GenerateTestReport,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::String &&,WTF::String &)>(IPC::Decoder *a1, uint64_t a2)
{
  result = IPC::Decoder::decode<std::tuple<WTF::String,WTF::String>>(a1, &v6);
  if (v8 == 1)
  {
    result = WebKit::WebPage::generateTestReport(a2);
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

void IPC::handleMessage<Messages::WebPage::SetLinkDecorationFilteringData,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::Vector<WebCore::LinkDecorationFilteringData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>(IPC::Decoder *a1, uint64_t a2)
{
  IPC::Decoder::decode<std::tuple<WTF::Vector<WebCore::LinkDecorationFilteringData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(v5, a1);
  if (v6 == 1)
  {
    WebKit::WebPage::setLinkDecorationFilteringData(a2, v5, v3);
    if (v6)
    {
      WTF::Vector<WebCore::LinkDecorationFilteringData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v5, v4);
    }
  }
}

uint64_t IPC::handleMessage<Messages::WebPage::SetAllowedQueryParametersForAdvancedPrivacyProtections,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::Vector<WebCore::LinkDecorationFilteringData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>(IPC::Decoder *a1, uint64_t a2)
{
  result = IPC::Decoder::decode<std::tuple<WTF::Vector<WebCore::LinkDecorationFilteringData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(v6, a1);
  if (v7 == 1)
  {
    result = WebKit::WebPage::setAllowedQueryParametersForAdvancedPrivacyProtections(a2, v6, v4);
    if (v7)
    {
      return WTF::Vector<WebCore::LinkDecorationFilteringData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v6, v5);
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebPage::PauseAllAnimations,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
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
    *v10 = &unk_1F10F5F68;
    v10[1] = v7;
    v10[2] = a1;
    v11 = v10;
    WebKit::WebPage::pauseAllAnimations(a3, &v11);
    result = v11;
    v11 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebPage::PlayAllAnimations,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
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
    *v10 = &unk_1F10F5F90;
    v10[1] = v7;
    v10[2] = a1;
    v11 = v10;
    WebKit::WebPage::playAllAnimations(a3, &v11);
    result = v11;
    v11 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void IPC::handleMessage<Messages::WebPage::UseRedirectionForCurrentNavigation,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::ResourceResponse &&)>(IPC::Decoder *a1, WebKit::WebPage *a2)
{
  IPC::ArgumentCoder<std::tuple<WebCore::ResourceResponse>,void>::decode<IPC::Decoder>(a1, v10);
  if (v12 & 1) != 0 || ((v6 = *a1, v7 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (v8 = *(a1 + 3)) != 0) ? (v9 = v7 == 0) : (v9 = 1), !v9 && ((*(*v8 + 16))(v8, v6), (v12)))
  {
    WebKit::WebPage::useRedirectionForCurrentNavigation(a2, v10);
    if (v12)
    {
      v5 = cf;
      cf = 0;
      if (v5)
      {
        CFRelease(v5);
      }

      WebCore::ResourceResponseBase::~ResourceResponseBase(v10, v4);
    }
  }
}

void IPC::handleMessage<Messages::WebPage::UpdateFrameScrollingMode,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ScrollbarMode)>(IPC::Decoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ScrollbarMode>,void>::decode<IPC::Decoder>(a1, &v8);
  if (v9 & 1) != 0 || ((v4 = *a1, v5 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (v6 = *(a1 + 3)) != 0) ? (v7 = v5 == 0) : (v7 = 1), !v7 && ((*(*v6 + 16))(v6, v4), (v9)))
  {
    WebKit::WebPage::updateFrameScrollingMode(a2, v8);
  }
}

void IPC::handleMessage<Messages::WebPage::RemotePostMessage,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WebCore::SecurityOriginData> &&,WebCore::MessageWithMessagePorts const&)>(IPC::Decoder *a1, WebKit::WebProcess *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WebCore::SecurityOriginData>,WebCore::MessageWithMessagePorts>,void>::decode<IPC::Decoder>(a1, &v14);
  if (v23 & 1) != 0 || ((v10 = *a1, v11 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (v12 = *(a1 + 3)) != 0) ? (v13 = v11 == 0) : (v13 = 1), !v13 && ((*(*v12 + 16))(v12, v10), (v23)))
  {
    WebKit::WebPage::remotePostMessage(a2, v14, v15, v15[1]);
    if (v23)
    {
      v5 = v21;
      if (v21)
      {
        v21 = 0;
        v22 = 0;
        WTF::fastFree(v5, v4);
      }

      v6 = v20;
      v20 = 0;
      if (v6)
      {
        WTF::ThreadSafeRefCounted<WebCore::SerializedScriptValue,(WTF::DestructionThread)0>::deref(v6);
      }

      if (v19 == 1)
      {
        if (!v18)
        {
          v7 = v17;
          v17 = 0;
          if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v7, v4);
          }

          v8 = v16;
          v16 = 0;
          if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v8, v4);
          }
        }

        v18 = -1;
      }

      v9 = v15[0];
      v15[0] = 0;
      if (v9)
      {
        if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v9, v4);
        }
      }
    }
  }
}

uint64_t IPC::handleMessageAsync<Messages::WebPage::RequestAllTextAndRects,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::CompletionHandler<void ()(WTF::Vector<std::pair<WTF::String,WebCore::FloatRect>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
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
    *v10 = &unk_1F10F5FB8;
    v10[1] = v7;
    v10[2] = a1;
    v11 = v10;
    WebKit::WebPage::requestAllTextAndRects(a3, &v11);
    result = v11;
    v11 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::WebPage::RequestTargetedElement,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::TargetedElementRequest &&,WTF::CompletionHandler<void ()(WebCore::TargetedElementRequest &&::Vector<WebCore::TargetedElementInfo,0ul,WebCore::TargetedElementRequest &&::CrashOnOverflow,16ul,WebCore::TargetedElementRequest &&::FastMalloc> &&)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  v4 = a2;
  IPC::ArgumentCoder<WebCore::TargetedElementRequest,void>::decode(a2, &v21);
  if ((v25 & 1) == 0)
  {
    v13 = *v4;
    v14 = *(v4 + 1);
    *v4 = 0;
    *(v4 + 1) = 0;
    v12 = *(v4 + 3);
    if (v12)
    {
      v15 = v14 == 0;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      goto LABEL_33;
    }

    goto LABEL_38;
  }

LABEL_2:
  LOBYTE(v17[0]) = 0;
  v18 = -1;
  if (v23 > 1u)
  {
    if (v23 == 2)
    {
      v17[0] = v21;
      v7 = v22;
      v21 = 0;
      v22 = 0;
      v17[1] = v7;
      v18 = 2;
      v19 = v24;
      v20 = 1;
      WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v21, v6);
      goto LABEL_10;
    }
  }

  else
  {
    if (v23)
    {
      v17[0] = v21;
      v18 = 1;
      v19 = v24;
      goto LABEL_9;
    }

    v17[0] = v21;
    v18 = 0;
  }

  v19 = v24;
LABEL_9:
  v20 = 1;
LABEL_10:
  while (1)
  {
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v4);
    if ((v9 & 1) == 0)
    {
      break;
    }

    v4 = result;
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
        goto LABEL_16;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_16:
    v12 = WTF::fastMalloc(0x18);
    *v12 = &unk_1F10F5FE0;
    *(v12 + 1) = v4;
    *(v12 + 2) = a1;
    v21 = v12;
    if (v20)
    {
      WebKit::WebPage::requestTargetedElement(a3, v17, &v21);
      result = v21;
      v21 = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }

      break;
    }

    __break(1u);
LABEL_38:
    (*(*v12 + 16))(v12, v13);
    if (v25)
    {
      goto LABEL_2;
    }

LABEL_33:
    LOBYTE(v17[0]) = 0;
    v20 = 0;
    v9 = *v4;
    v16 = *(v4 + 1);
    *v4 = 0;
    *(v4 + 1) = 0;
    result = *(v4 + 3);
    if (result)
    {
      if (v16)
      {
        result = (*(*result + 16))(result, v9);
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
    if (v18 > 1u)
    {
      if (v18 == 2)
      {
        return WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v17, v9);
      }
    }

    else if (v18)
    {
      result = v17[0];
      v17[0] = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v9);
        }
      }
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebPage::RequestAllTargetableElements,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(float,WTF::CompletionHandler<void ()(WTF::Vector<WTF::Vector<WebCore::TargetedElementInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)>(atomic_ullong *a1, uint64_t *a2, uint64_t a3)
{
  v5 = ((a2[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v6 = *a2;
  v7 = a2[1];
  if (v7 < v5 - v6 || v7 - (v5 - v6) <= 3)
  {
    *a2 = 0;
    a2[1] = 0;
    v17 = a2;
    v18 = a2[3];
    if (v18)
    {
      if (v7)
      {
        (*(*v18 + 16))(v18);
        v6 = *v17;
        v7 = v17[1];
        goto LABEL_20;
      }
    }

    else
    {
      v7 = 0;
    }

    v6 = 0;
LABEL_20:
    *v17 = 0;
    v17[1] = 0;
    result = v17[3];
    if (result)
    {
      if (v7)
      {
        (*(*result + 16))(result, v6);
        result = v17[3];
        v19 = v17[1];
        *v17 = 0;
        v17[1] = 0;
        if (result)
        {
          if (v19)
          {
            v20 = *(*result + 16);

            return v20();
          }
        }
      }
    }

    return result;
  }

  a2[2] = (v5 + 1);
  if (!v5)
  {
    v17 = a2;
    goto LABEL_20;
  }

  v10 = *v5;
  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if (v12)
  {
    v13 = result;
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
        goto LABEL_13;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_13:
    v16 = WTF::fastMalloc(0x18);
    *v16 = &unk_1F10F6008;
    v16[1] = v13;
    v16[2] = a1;
    v21 = v16;
    WebKit::WebPage::requestAllTargetableElements(a3, &v21, v10);
    result = v21;
    v21 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void *IPC::handleMessageAsync<Messages::WebPage::RequestTextExtraction,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(std::optional<WebCore::FloatRect> &&,WTF::CompletionHandler<void ()(WebCore::TextExtraction::Item &&)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  IPC::ArgumentCoder<std::tuple<std::optional<WebCore::FloatRect>>,void>::decode<IPC::Decoder>(a2, v15);
  if (v16 & 1) != 0 || ((v11 = *a2, v12 = *(a2 + 1), *a2 = 0, *(a2 + 1) = 0, (result = *(a2 + 3)) != 0) ? (v13 = v12 == 0) : (v13 = 1), !v13 && (result = (*(*result + 16))(result, v11), (v16)))
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
      *result = &unk_1F10F6030;
      result[1] = v8;
      result[2] = a1;
      v14 = result;
      if (v16)
      {
        WebKit::WebPage::requestTextExtraction(a3, v15, &v14);
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

uint64_t IPC::handleMessageAsync<Messages::WebPage::ShouldDismissKeyboardAfterTapAtPoint,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::FloatPoint,WTF::CompletionHandler<void ()(BOOL)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<WebCore::FloatPoint>>(a2);
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
      *v13 = &unk_1F10F6058;
      v13[1] = v10;
      v13[2] = a1;
      v14 = v13;
      WebKit::WebPage::shouldDismissKeyboardAfterTapAtPoint(a3, &v14, *&v8, *(&v8 + 1));
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

IPC::Encoder *IPC::handleMessage<Messages::WebPage::SetMediaEnvironment,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::String const&)>(IPC::Decoder *a1, WebKit::WebPage *a2)
{
  IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a1, &v6);
  if (v7 & 1) != 0 || (result = IPC::Decoder::markInvalid(a1), (v7))
  {
    result = WebKit::WebPage::setMediaEnvironment(a2, &v6);
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

uint64_t IPC::handleMessageAsync<Messages::WebPage::WillBeginWritingToolsSession,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(std::optional<WebCore::WritingTools::Session> const&,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::WritingTools::Context,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  v4 = a2;
  v27 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 2);
  v6 = *a2;
  v7 = *(v4 + 1);
  if (v7 <= &v5[-v6])
  {
LABEL_18:
    *v4 = 0;
    *(v4 + 1) = 0;
    v16 = *(v4 + 3);
    if (v16)
    {
      if (v7)
      {
        (*(*v16 + 16))(v16);
        v6 = *v4;
        v7 = *(v4 + 1);
        goto LABEL_21;
      }
    }

    else
    {
      v7 = 0;
    }

    v6 = 0;
LABEL_21:
    *v4 = 0;
    *(v4 + 1) = 0;
    v17 = *(v4 + 3);
    if (v17)
    {
      if (v7)
      {
        (*(*v17 + 16))(v17, v6);
        v6 = *v4;
        v7 = *(v4 + 1);
        goto LABEL_24;
      }
    }

    else
    {
      v7 = 0;
    }

    v6 = 0;
LABEL_24:
    *v4 = 0;
    *(v4 + 1) = 0;
    v18 = *(v4 + 3);
    if (v18 && v7)
    {
      (*(*v18 + 16))(v18, v6);
    }

    goto LABEL_25;
  }

  *(v4 + 2) = v5 + 1;
  if (!v5)
  {
    goto LABEL_21;
  }

  v8 = *v5;
  if (v8 >= 2)
  {
    goto LABEL_24;
  }

  if (!v8)
  {
    v10 = 0;
    goto LABEL_8;
  }

  IPC::Decoder::decode<WebCore::WritingTools::Session>(&v22, v4);
  if (v24 == 1)
  {
    LOBYTE(v8) = v22;
    v26[0] = *v23;
    *(v26 + 15) = *&v23[15];
    v10 = 1;
LABEL_8:
    v22 = v8;
    *v23 = v26[0];
    *&v23[15] = *(v26 + 15);
    v24 = v10;
    v25 = 1;
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v4);
    if ((v12 & 1) == 0)
    {
      return result;
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
        goto LABEL_14;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_14:
    v15 = WTF::fastMalloc(0x18);
    *v15 = &unk_1F10F6080;
    v15[1] = v4;
    v15[2] = a1;
    *&v26[0] = v15;
    if (v25)
    {
      WebKit::WebPage::willBeginWritingToolsSession(a3);
      result = *&v26[0];
      *&v26[0] = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }

      return result;
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_25:
  v19 = *v4;
  v20 = *(v4 + 1);
  *v4 = 0;
  *(v4 + 1) = 0;
  result = *(v4 + 3);
  if (result)
  {
    if (v20)
    {
      (*(*result + 16))(result, v19);
      v20 = *(v4 + 1);
      result = *(v4 + 3);
    }
  }

  else
  {
    v20 = 0;
  }

  *v4 = 0;
  *(v4 + 1) = 0;
  if (result && v20)
  {
    v21 = *(*result + 16);

    return v21();
  }

  return result;
}

_DWORD *IPC::handleMessage<Messages::WebPage::DidBeginWritingToolsSession,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::WritingTools::Session const&,WTF::Vector<WebCore::WritingTools::Context,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)>(IPC::Decoder *a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  IPC::Decoder::decode<WebCore::WritingTools::Session>(v22, a1);
  if (v23 & 1) != 0 && ((IPC::VectorArgumentCoder<false,WebCore::WritingTools::Context,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a1, &v15, v4), (v17) || (v9 = *a1, v10 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (v11 = *(a1 + 3)) != 0) && v10 && ((*(*v11 + 16))(v11, v9), (v17)))
  {
    v18 = v22[0];
    v19 = v22[1];
    v20[0] = v15;
    v6 = v16;
    v15 = 0;
    v16 = 0;
    v20[1] = v6;
    v21 = 1;
    WTF::Vector<WebCore::WritingTools::Context,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v15, v5);
    result = WebKit::WebPage::didBeginWritingToolsSession(a2);
    if (v21)
    {
      return WTF::Vector<WebCore::WritingTools::Context,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v20, v8);
    }
  }

  else
  {
    v12 = *a1;
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
      return (*(*result + 16))(result, v12);
    }
  }

  return result;
}

void IPC::handleMessageAsync<Messages::WebPage::ProofreadingSessionDidReceiveSuggestions,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::WritingTools::Session const&,WTF::Vector<WebCore::WritingTools::TextSuggestion,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WebCore::CharacterRange const&,WebCore::WritingTools::Context const&,BOOL,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  v76 = *MEMORY[0x1E69E9840];
  IPC::Decoder::decode<WebCore::WritingTools::Session>(v71, a2);
  if (v72)
  {
    v7 = *(a2 + 1);
    v8 = ((*(a2 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
    v9 = *a2;
    v10 = v8 - *a2;
    v11 = v7 >= v10;
    v12 = v7 - v10;
    if (!v11 || v12 <= 7)
    {
      *a2 = 0;
      *(a2 + 1) = 0;
      v51 = *(a2 + 3);
      if (v51)
      {
        if (v7)
        {
          (*(*v51 + 16))(v51);
          v7 = *(a2 + 1);
        }
      }

      else
      {
        v7 = 0;
      }

      goto LABEL_79;
    }

    *(a2 + 2) = v8 + 1;
    if (!v8)
    {
LABEL_79:
      *a2 = 0;
      *(a2 + 1) = 0;
      v52 = *(a2 + 3);
      if (v52 && v7)
      {
        (*(*v52 + 16))(v52);
      }

LABEL_67:
      v45 = *a2;
      v46 = *(a2 + 1);
      *a2 = 0;
      *(a2 + 1) = 0;
      v47 = *(a2 + 3);
      if (v47 && v46)
      {
        (*(*v47 + 16))(v47, v45);
      }

      goto LABEL_68;
    }

    v14 = *v8;
    v73 = 0uLL;
    if (v14 >= 0x5555)
    {
      do
      {
        IPC::Decoder::decode<WebCore::WritingTools::TextSuggestion>(&v61, a2);
        v37 = v66;
        if (v66 == 1)
        {
          if (v73.n128_u32[3] == v73.n128_u32[2])
          {
            WTF::Vector<WebCore::WritingTools::TextSuggestion,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::WritingTools::TextSuggestion>(&v73, &v61);
          }

          else
          {
            v38 = v73.n128_u32[3] + 1;
            v39 = v73.n128_u64[0] + 48 * v73.n128_u32[3];
            v40 = v62;
            *v39 = v61;
            *(v39 + 16) = v40;
            v41 = v63;
            v63 = 0;
            *(v39 + 32) = v41;
            *(v39 + 40) = v64;
            v73.n128_u32[3] = v38;
          }
        }

        if (v66 == 1)
        {
          v42 = v63;
          v63 = 0;
          if (v42)
          {
            if (atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v42, v9);
            }
          }
        }

        if ((v37 & 1) == 0)
        {
          goto LABEL_66;
        }

        --v14;
      }

      while (v14);
      v43 = v73.n128_u32[3];
      v22 = v73.n128_u64[0];
      if (v73.n128_u32[2] > v73.n128_u32[3])
      {
        v44 = v73.n128_u64[0];
        if (v73.n128_u32[3])
        {
          if (v73.n128_u32[3] >= 0x5555556)
          {
            __break(0xC471u);
            goto LABEL_98;
          }

          v44 = WTF::fastMalloc((48 * v73.n128_u32[3]));
          v73.n128_u32[2] = 48 * v43 / 0x30;
          v73.n128_u64[0] = v44;
          if (v44 != v22)
          {
            WTF::VectorTypeOperations<WebCore::WritingTools::TextSuggestion>::move(v22, (v22 + 48 * v43), v44);
            v44 = v73.n128_u64[0];
          }
        }

        if (v22)
        {
          if (v44 == v22)
          {
            v73.n128_u64[0] = 0;
            v73.n128_u32[2] = 0;
          }

          WTF::fastFree(v22, v9);
          v22 = v73.n128_u64[0];
        }

        else
        {
          v22 = v44;
        }
      }

      v56 = v22;
      LODWORD(v14) = v73.n128_u32[2];
      v23 = v73.n128_u32[3];
      v73 = 0uLL;
      goto LABEL_24;
    }

    if (v14)
    {
      v15 = WTF::fastMalloc((48 * v14));
      v73.n128_u32[2] = 48 * v14 / 0x30u;
      v73.n128_u64[0] = v15;
      while (1)
      {
        IPC::Decoder::decode<WebCore::WritingTools::TextSuggestion>(&v61, a2);
        v16 = v66;
        if (v66 == 1)
        {
          if (v73.n128_u32[3] == v73.n128_u32[2])
          {
            v6 = WTF::Vector<WebCore::WritingTools::TextSuggestion,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::WritingTools::TextSuggestion>(&v73, &v61);
          }

          else
          {
            v17 = v73.n128_u32[3] + 1;
            v18 = v73.n128_u64[0] + 48 * v73.n128_u32[3];
            v6.n128_u64[1] = *(&v61 + 1);
            v19 = v62;
            *v18 = v61;
            *(v18 + 16) = v19;
            v20 = v63;
            v63 = 0;
            *(v18 + 32) = v20;
            *(v18 + 40) = v64;
            v73.n128_u32[3] = v17;
          }
        }

        if (v66 == 1)
        {
          v21 = v63;
          v63 = 0;
          if (v21)
          {
            if (atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v21, v9);
            }
          }
        }

        if ((v16 & 1) == 0)
        {
          break;
        }

        if (!--v14)
        {
          v22 = v73.n128_u64[0];
          LODWORD(v14) = v73.n128_u32[2];
          v23 = v73.n128_u32[3];
          goto LABEL_23;
        }
      }

LABEL_66:
      WTF::Vector<WebCore::WritingTools::TextSuggestion,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v73, v9);
      goto LABEL_67;
    }

    v23 = 0;
    v22 = 0;
LABEL_23:
    v6.n128_u64[0] = 0;
    v73 = v6;
    v56 = v22;
LABEL_24:
    v57 = __PAIR64__(v23, v14);
    v58 = 1;
    WTF::Vector<WebCore::WritingTools::TextSuggestion,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v73, v9);
    IPC::Decoder::decode<WebCore::CharacterRange>(a2, &v59);
    if ((v60 & 1) == 0 || (IPC::Decoder::decode<WebCore::WritingTools::Context>(a2, &v73), v75 != 1))
    {
      LOBYTE(v61) = 0;
      v70 = 0;
      goto LABEL_34;
    }

    v25 = *(a2 + 1);
    v26 = *(a2 + 2);
    v24 = *a2;
    if (v25 <= &v26[-*a2])
    {
      *a2 = 0;
      *(a2 + 1) = 0;
      v53 = *(a2 + 3);
      if (v53)
      {
        if (v25)
        {
          (*(*v53 + 16))(v53);
          v25 = *(a2 + 1);
        }
      }

      else
      {
        v25 = 0;
      }
    }

    else
    {
      *(a2 + 2) = v26 + 1;
      if (v26)
      {
        v27 = *v26;
        if (v27 < 2)
        {
          if ((v60 & 1) == 0)
          {
            goto LABEL_98;
          }

          v61 = v71[0];
          v62 = v71[1];
          v56 = 0;
          v57 = 0;
          v63 = v22;
          v64 = v14;
          v65 = v23;
          v66 = v59;
          v67 = v73;
          WebCore::AttributedString::AttributedString();
          *&v68[40] = *&v74[40];
          v69 = v27;
          v28 = 1;
          goto LABEL_31;
        }

LABEL_87:
        *a2 = 0;
        *(a2 + 1) = 0;
        v55 = *(a2 + 3);
        if (v55 && v25)
        {
          (*(*v55 + 16))(v55, v24);
        }

        v28 = 0;
        LOBYTE(v61) = 0;
LABEL_31:
        v70 = v28;
        if (v75)
        {
          MEMORY[0x19EB065D0](v74);
        }

LABEL_34:
        WTF::Vector<WebCore::WritingTools::TextSuggestion,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v56, v24);
        if (v70)
        {
          goto LABEL_35;
        }

        goto LABEL_69;
      }
    }

    *a2 = 0;
    *(a2 + 1) = 0;
    v54 = *(a2 + 3);
    if (v54)
    {
      if (v25)
      {
        (*(*v54 + 16))(v54);
        v24 = *a2;
        v25 = *(a2 + 1);
        goto LABEL_87;
      }
    }

    else
    {
      v25 = 0;
    }

    v24 = 0;
    goto LABEL_87;
  }

LABEL_68:
  LOBYTE(v61) = 0;
  v70 = 0;
LABEL_69:
  v48 = *a2;
  v49 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  v50 = *(a2 + 3);
  if (!v50)
  {
    goto LABEL_44;
  }

  if (!v49)
  {
    goto LABEL_44;
  }

  (*(*v50 + 16))(v50, v48);
  if ((v70 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_35:
  v29 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if (v30)
  {
    v31 = v29;
    while (1)
    {
      v32 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v33 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v33, v32 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v33 == v32)
      {
        goto LABEL_41;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_41:
    v34 = WTF::fastMalloc(0x18);
    *v34 = &unk_1F10F60A8;
    v34[1] = v31;
    v34[2] = a1;
    v73.n128_u64[0] = v34;
    if (v70)
    {
      WebKit::WebPage::proofreadingSessionDidReceiveSuggestions(a3, &v61, &v63, &v66, &v67, v69, &v73);
      v35 = v73.n128_u64[0];
      v73.n128_u64[0] = 0;
      if (v35)
      {
        (*(*v35 + 8))(v35);
      }

      goto LABEL_44;
    }

LABEL_98:
    __break(1u);
    return;
  }

LABEL_44:
  if (v70 == 1)
  {
    MEMORY[0x19EB065D0](v68);
    WTF::Vector<WebCore::WritingTools::TextSuggestion,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v63, v36);
  }
}

_DWORD *IPC::handleMessage<Messages::WebPage::ProofreadingSessionDidUpdateStateForSuggestion,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::WritingTools::Session const&,WebCore::WritingTools::TextSuggestionState,WebCore::WritingTools::TextSuggestion const&,WebCore::WritingTools::Context const&)>(IPC::Decoder *a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  IPC::Decoder::decode<WebCore::WritingTools::Session>(&v13, a1);
  if (v14 != 1 || (IPC::Decoder::decode<WebKit::WebExtensionContentWorldType>(a1) & 0x100) == 0)
  {
    v12 = 0;
    goto LABEL_18;
  }

  IPC::Decoder::decode<WebCore::WritingTools::TextSuggestion>(&v15, a1);
  if (v17 == 1)
  {
    IPC::Decoder::decode<WebCore::WritingTools::Context>(a1, &v18);
    if (v20 == 1)
    {
      v10 = v16;
      WebCore::AttributedString::AttributedString();
      *&v11[40] = *&v19[40];
      v12 = 1;
      if (v20)
      {
        MEMORY[0x19EB065D0](v19);
      }
    }

    else
    {
      v12 = 0;
      v5 = v16;
      if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, v4);
      }
    }
  }

  else
  {
    v12 = 0;
  }

  if ((v12 & 1) == 0)
  {
LABEL_18:
    v8 = *a1;
    v9 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (!result)
    {
      return result;
    }

    if (!v9)
    {
      return result;
    }

    result = (*(*result + 16))(result, v8);
    if ((v12 & 1) == 0)
    {
      return result;
    }
  }

  result = WebKit::WebPage::proofreadingSessionDidUpdateStateForSuggestion(a2);
  if (v12)
  {
    MEMORY[0x19EB065D0](v11);
    result = v10;
    if (v10)
    {
      if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(v10, v7);
      }
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebPage::WillEndWritingToolsSession,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::WritingTools::Session const&,BOOL,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  result = IPC::Decoder::decode<std::tuple<WebCore::WritingTools::Session,BOOL>>(v13, a2);
  if (v13[48] == 1)
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
      *v11 = &unk_1F10F60D0;
      v11[1] = v8;
      v11[2] = a1;
      v12 = v11;
      WebKit::WebPage::willEndWritingToolsSession(a3, v13, v13[32], &v12);
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

uint64_t IPC::handleMessageAsync<Messages::WebPage::CompositionSessionDidReceiveTextWithReplacementRange,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::WritingTools::Session const&,WebCore::AttributedString const&,WebCore::CharacterRange const&,WebCore::WritingTools::Context const&,BOOL,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  v4 = a2;
  v40 = *MEMORY[0x1E69E9840];
  IPC::Decoder::decode<WebCore::WritingTools::Session>(v35, a2);
  if ((v36 & 1) == 0)
  {
    goto LABEL_30;
  }

  IPC::ArgumentCoder<WebCore::AttributedString,void>::decode(v4, v24);
  if ((v25 & 1) == 0)
  {
    v18 = *v4;
    v19 = *(v4 + 1);
    *v4 = 0;
    *(v4 + 1) = 0;
    v20 = *(v4 + 3);
    if (!v20 || !v19 || ((*(*v20 + 16))(v20, v18), (v25 & 1) == 0))
    {
      LOBYTE(v28[0]) = 0;
      v34 = 0;
      goto LABEL_16;
    }
  }

  IPC::Decoder::decode<WebCore::CharacterRange>(v4, &v26);
  if (v27)
  {
    IPC::Decoder::decode<WebCore::WritingTools::Context>(v4, &v37);
    if (v39 == 1)
    {
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
      }

      else
      {
        *(v4 + 2) = v7 + 1;
        if (v7)
        {
          v9 = *v7;
          if (v9 < 2)
          {
            if ((v25 & 1) == 0 || (v27 & 1) == 0)
            {
              goto LABEL_29;
            }

            v28[0] = v35[0];
            v28[1] = v35[1];
            WebCore::AttributedString::AttributedString();
            v30 = v26;
            v31 = v37;
            WebCore::AttributedString::AttributedString();
            *&v32[40] = *&v38[40];
            v33 = v9;
            v10 = 1;
            goto LABEL_11;
          }

LABEL_45:
          *v4 = 0;
          *(v4 + 1) = 0;
          v23 = *(v4 + 3);
          if (v23 && v6)
          {
            (*(*v23 + 16))(v23, v8);
          }

          v10 = 0;
          LOBYTE(v28[0]) = 0;
LABEL_11:
          v34 = v10;
          if (v39)
          {
            MEMORY[0x19EB065D0](v38);
          }

          goto LABEL_14;
        }
      }

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
          goto LABEL_45;
        }
      }

      else
      {
        v6 = 0;
      }

      v8 = 0;
      goto LABEL_45;
    }
  }

  LOBYTE(v28[0]) = 0;
  v34 = 0;
LABEL_14:
  if (v25)
  {
    MEMORY[0x19EB065D0](v24);
  }

LABEL_16:
  if ((v34 & 1) == 0)
  {
    goto LABEL_31;
  }

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
        goto LABEL_23;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_23:
    v15 = WTF::fastMalloc(0x18);
    *v15 = &unk_1F10F60F8;
    v15[1] = v4;
    v15[2] = a1;
    *&v37 = v15;
    if (v34)
    {
      WebKit::WebPage::compositionSessionDidReceiveTextWithReplacementRange(a3, v28, v29, &v30, &v31, v33, &v37);
      result = v37;
      *&v37 = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }

      break;
    }

LABEL_29:
    __break(1u);
LABEL_30:
    LOBYTE(v28[0]) = 0;
    v34 = 0;
LABEL_31:
    v16 = *v4;
    v17 = *(v4 + 1);
    *v4 = 0;
    *(v4 + 1) = 0;
    result = *(v4 + 3);
    if (result)
    {
      if (v17)
      {
        result = (*(*result + 16))(result, v16);
        if (v34)
        {
          continue;
        }
      }
    }

    break;
  }

  if (v34 == 1)
  {
    MEMORY[0x19EB065D0](v32);
    return MEMORY[0x19EB065D0](v29);
  }

  return result;
}

_DWORD *IPC::handleMessage<Messages::WebPage::WritingToolsSessionDidReceiveAction,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::WritingTools::Session const&,WebCore::WritingTools::Action)>(IPC::Decoder *a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  IPC::Decoder::decode<WebCore::WritingTools::Session>(&v14, a1);
  if (v15 == 1)
  {
    v4 = *(a1 + 1);
    v5 = *(a1 + 2);
    v6 = *a1;
    if (v4 <= &v5[-*a1])
    {
      *a1 = 0;
      *(a1 + 1) = 0;
      v8 = *(a1 + 3);
      if (v8)
      {
        if (v4)
        {
          (*(*v8 + 16))(v8);
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
        if (*v5 < 3u)
        {
          return WebKit::WebPage::writingToolsSessionDidReceiveAction(a2);
        }

        goto LABEL_11;
      }
    }

    *a1 = 0;
    *(a1 + 1) = 0;
    v9 = *(a1 + 3);
    if (v9)
    {
      if (v4)
      {
        (*(*v9 + 16))(v9);
        v6 = *a1;
        v4 = *(a1 + 1);
        goto LABEL_11;
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = 0;
LABEL_11:
    *a1 = 0;
    *(a1 + 1) = 0;
    v10 = *(a1 + 3);
    if (v10 && v4)
    {
      (*(*v10 + 16))(v10, v6);
    }
  }

  v11 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  result = *(a1 + 3);
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

  return result;
}