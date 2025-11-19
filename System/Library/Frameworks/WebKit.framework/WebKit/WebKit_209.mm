void WebKit::WebChromeClient::setResizable(WebKit::WebChromeClient *this, char a2)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      CFRetain(*(v3 - 8));
      v12 = a2;
      v5 = (*(*(v3 + 16) + 56))(v3 + 16);
      v7 = IPC::Encoder::operator new(0x238, v6);
      *v7 = 2359;
      *(v7 + 2) = 0;
      *(v7 + 3) = 0;
      *(v7 + 1) = v5;
      *(v7 + 68) = 0;
      *(v7 + 70) = 0;
      *(v7 + 69) = 0;
      IPC::Encoder::encodeHeader(v7);
      v13 = v7;
      IPC::Encoder::operator<<<BOOL &>(v7, &v12);
      (*(*(v3 + 16) + 32))(v3 + 16, &v13, 0);
      v9 = v13;
      v13 = 0;
      if (v9)
      {
        IPC::Encoder::~Encoder(v9, v8);
        bmalloc::api::tzoneFree(v10, v11);
      }

      CFRelease(*(v3 - 8));
    }
  }
}

void WebKit::WebChromeClient::addMessageToConsole(uint64_t a1, uint64_t a2, uint64_t a3, atomic_uint **a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = *(v7 + 8);
    if (v8)
    {
      CFRetain(*(v8 - 8));
      (*(**(v8 + 384) + 16))(*(v8 + 384), v8 - 16, a2, a3, a4, a5, a6, a7);
      if (*(v8 + 196) != 1)
      {
LABEL_4:
        CFRelease(*(v8 - 8));
        return;
      }

      v15 = *a4;
      if (*a4)
      {
        if (v15[1] >> 30)
        {
          WTF::StringImpl::createWithoutCopyingNonEmpty();
          goto LABEL_11;
        }

        atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed);
      }

      v18 = v15;
LABEL_11:
      v19 = &v18;
      IPC::MessageSender::send<Messages::WebPageProxy::AddMessageToConsoleForTesting>(v8 + 16, &v19);
      v17 = v18;
      v18 = 0;
      if (v17)
      {
        if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v17, v16);
        }
      }

      goto LABEL_4;
    }
  }
}

IPC::Encoder *IPC::MessageSender::send<Messages::WebPageProxy::AddMessageToConsoleForTesting>(uint64_t a1, uint64_t **a2)
{
  v4 = (*(*a1 + 56))(a1);
  v6 = IPC::Encoder::operator new(0x238, v5);
  *v6 = 2145;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = v4;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v11 = v6;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v6, *a2);
  (*(*a1 + 32))(a1, &v11, 1);
  result = v11;
  v11 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v7);
    return bmalloc::api::tzoneFree(v9, v10);
  }

  return result;
}

void WebKit::WebChromeClient::addMessageWithArgumentsToConsole(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9)
{
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = *(v9 + 8);
    if (v10)
    {
      CFRetain(*(v10 - 8));
      (*(**(v10 + 384) + 24))(*(v10 + 384), v10 - 16, a2, a3, a4, a5, a6, a7, a8, a9);
      v18 = *(v10 - 8);

      CFRelease(v18);
    }
  }
}

uint64_t WebKit::WebChromeClient::canRunBeforeUnloadConfirmPanel(WebKit::WebChromeClient *this)
{
  v1 = *(this + 2);
  if (v1 && (v2 = *(v1 + 8)) != 0)
  {
    CFRetain(*(v2 - 8));
    v3 = *(v2 + 752);
    CFRelease(*(v2 - 8));
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t WebKit::WebChromeClient::runBeforeUnloadConfirmPanel(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v51 = *MEMORY[0x1E69E9840];
  WebKit::WebFrame::fromCoreFrame(a3, &v40);
  v5 = *(a1 + 16);
  if (!v5 || (v6 = *(v5 + 8)) == 0)
  {
    v19 = 0;
    goto LABEL_42;
  }

  CFRetain(*(v6 - 8));
  WebKit::AXRelayProcessSuspendedNotification::AXRelayProcessSuspendedNotification(v39, v6 - 16, 1);
  v7 = *(v40 + 11);
  WebKit::WebFrame::info(v40, 0, v44);
  WebKit::WebPage::cancelCurrentInteractionInformationRequest((v6 - 16));
  v8 = (*(*(v6 + 16) + 56))(v6 + 16);
  v9 = (*(*(v6 + 16) + 48))(v6 + 16);
  if (v9)
  {
    v11 = v9;
    while (1)
    {
      v12 = *v9;
      if ((*v9 & 1) == 0)
      {
        break;
      }

      v13 = *v9;
      atomic_compare_exchange_strong_explicit(v9, &v13, v12 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v13 == v12)
      {
        goto LABEL_9;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v9);
LABEL_9:
    IPC::Connection::createSyncMessageEncoder(0x1045, v8, v43);
    v14 = v43[0];
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v43[0], v7);
    IPC::ArgumentCoder<WebKit::FrameInfoData,void>::encode(v14, v44);
    IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v14, a2);
    v15 = IPC::Connection::sendSyncMessage(v11, v43[1], v43, 0, &v41, INFINITY);
    if (v42)
    {
      if (v42 != 1)
      {
        mpark::throw_bad_variant_access(v15);
      }

      v17 = v41;
      v18 = 1;
LABEL_21:
      v24 = v43[0];
      v43[0] = 0;
      if (v24)
      {
        IPC::Encoder::~Encoder(v24, v16);
        bmalloc::api::tzoneFree(v33, v34);
      }

      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v11);
      v25 = v18 == 0;
      goto LABEL_24;
    }

    v17 = v41;
    v41 = 0;
    if (*(v17 + 50) == 3194)
    {
      v7 = 11;
    }

    else
    {
      v22 = IPC::Decoder::decode<std::tuple<BOOL>>(v17);
      if (v22 >= 0x100u)
      {
        LODWORD(v7) = v22;
        v18 = 0;
        goto LABEL_18;
      }

      v7 = 14;
    }

    IPC::Decoder::~Decoder(v17);
    bmalloc::api::tzoneFree(v20, v21);
    v18 = 1;
    v17 = v7;
LABEL_18:
    if (!v42)
    {
      v23 = v41;
      v41 = 0;
      if (v23)
      {
        IPC::Decoder::~Decoder(v23);
        bmalloc::api::tzoneFree(v37, v38);
      }
    }

    goto LABEL_21;
  }

  v25 = 0;
  v17 = 3;
LABEL_24:
  v26 = cf;
  cf = 0;
  if (v26)
  {
    CFRelease(v26);
  }

  v27 = v49;
  v49 = 0;
  if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v27, v10);
  }

  if (!v48)
  {
    v28 = v47;
    v47 = 0;
    if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v28, v10);
    }

    v29 = v46;
    v46 = 0;
    if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v29, v10);
    }
  }

  v48 = -1;
  WebCore::ResourceRequest::~ResourceRequest(&v45);
  v19 = v7 & v25;
  if (v17)
  {
    v31 = v25;
  }

  else
  {
    v31 = 0;
  }

  if (v31)
  {
    IPC::Decoder::~Decoder(v17);
    bmalloc::api::tzoneFree(v35, v36);
  }

  WebKit::AXRelayProcessSuspendedNotification::~AXRelayProcessSuspendedNotification(v39, v30);
  CFRelease(*(v6 - 8));
LABEL_42:
  if (v40)
  {
    CFRelease(*(v40 + 1));
  }

  return v19;
}

void WebKit::WebChromeClient::closeWindow(WebKit::WebChromeClient *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      CFRetain(*(v2 - 8));
      v3 = *(v2 + 40);
      v9 = 0;
      WebCore::Page::setGroupName(v3, &v9);
      v5 = v9;
      v9 = 0;
      if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, v4);
      }

      v6 = *(v2 + 72);
      CFRetain(*(v6 + 8));
      v7 = *(v6 + 40);
      if (v7)
      {
        v8 = *(v7 + 8);
        if (v8)
        {
          if ((*(v8 + 136) & 1) == 0)
          {
            ++*(v8 + 16);
            WebCore::FrameLoader::stopForUserCancel(*(v8 + 208));
            if (*(v8 + 16) == 1)
            {
              (*(*v8 + 8))(v8);
            }

            else
            {
              --*(v8 + 16);
            }
          }
        }
      }

      WebKit::WebPage::sendClose((v2 - 16));
      CFRelease(*(v6 + 8));
      CFRelease(*(v2 - 8));
    }
  }
}

uint64_t WebKit::WebChromeClient::rootFrameAdded(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      v4 = *(v3 + 56);
      if (v4)
      {
        ++v4[4];
        result = (*(*v4 + 264))(v4, *(a2 + 32));
        if (v4[4] == 1)
        {
          v5 = *(*v4 + 24);

          return v5(v4);
        }

        else
        {
          --v4[4];
        }
      }
    }
  }

  return result;
}

uint64_t WebKit::WebChromeClient::rootFrameRemoved(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      v4 = *(v3 + 56);
      if (v4)
      {
        ++v4[4];
        result = (*(*v4 + 272))(v4, *(a2 + 32));
        if (v4[4] == 1)
        {
          v5 = *(*v4 + 24);

          return v5(v4);
        }

        else
        {
          --v4[4];
        }
      }
    }
  }

  return result;
}

void WebKit::WebChromeClient::runJavaScriptAlert(WebKit::WebChromeClient *this, WebCore::LocalFrame *a2, const WTF::String *a3)
{
  v48 = *MEMORY[0x1E69E9840];
  if (!WebKit::shouldSuppressJavaScriptDialogs(a2, a2))
  {
    WebKit::WebFrame::fromCoreFrame(a2, &v37);
    v6 = *(this + 2);
    if (v6)
    {
      v7 = *(v6 + 8);
      if (v7)
      {
        CFRetain(*(v7 - 8));
        (*(**(v7 + 384) + 32))(*(v7 + 384), v7 - 16, a3, v37);
        WebKit::WebPage::preemptivelySendAutocorrectionContext((v7 - 16));
        atomic_fetch_add(IPC::UnboundedSynchronousIPCScope::unboundedSynchronousIPCCount, 1u);
        WebKit::AXRelayProcessSuspendedNotification::AXRelayProcessSuspendedNotification(v36, v7 - 16, 1);
        v8 = *(v37 + 11);
        WebKit::WebFrame::info(v37, 0, v41);
        WebKit::WebPage::cancelCurrentInteractionInformationRequest((v7 - 16));
        v9 = (*(*(v7 + 16) + 56))(v7 + 16);
        v10 = (*(*(v7 + 16) + 48))(v7 + 16);
        if (v10)
        {
          v12 = v10;
          while (1)
          {
            v13 = *v10;
            if ((*v10 & 1) == 0)
            {
              break;
            }

            v14 = *v10;
            atomic_compare_exchange_strong_explicit(v10, &v14, v13 + 2, memory_order_relaxed, memory_order_relaxed);
            if (v14 == v13)
            {
              goto LABEL_10;
            }
          }

          WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v10);
LABEL_10:
          IPC::Connection::createSyncMessageEncoder(0x1046, v9, v40);
          v15 = v40[0];
          IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v40[0], v8);
          IPC::ArgumentCoder<WebKit::FrameInfoData,void>::encode(v15, v41);
          IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v15, a3);
          v16 = IPC::Connection::sendSyncMessage(v12, v40[1], v40, 4, &v38, INFINITY);
          if (v39)
          {
            if (v39 != 1)
            {
              mpark::throw_bad_variant_access(v16);
            }

            v18 = v38;
            v19 = 1;
          }

          else
          {
            v18 = v38;
            v38 = 0;
            if (*(v18 + 50) == 3194)
            {
              IPC::Decoder::~Decoder(v18);
              bmalloc::api::tzoneFree(v20, v21);
              if (!v39)
              {
                v22 = v38;
                v38 = 0;
                if (v22)
                {
                  IPC::Decoder::~Decoder(v22);
                  bmalloc::api::tzoneFree(v23, v24);
                }
              }

              v19 = 1;
              v18 = 11;
            }

            else
            {
              v19 = 0;
            }
          }

          v25 = v40[0];
          v40[0] = 0;
          if (v25)
          {
            IPC::Encoder::~Encoder(v25, v17);
            bmalloc::api::tzoneFree(v32, v33);
          }

          WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v12);
          if (v18)
          {
            v26 = v19;
          }

          else
          {
            v26 = 1;
          }

          if ((v26 & 1) == 0)
          {
            IPC::Decoder::~Decoder(v18);
            bmalloc::api::tzoneFree(v34, v35);
          }
        }

        v27 = cf;
        cf = 0;
        if (v27)
        {
          CFRelease(v27);
        }

        v28 = v46;
        v46 = 0;
        if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v28, v11);
        }

        if (!v45)
        {
          v29 = v44;
          v44 = 0;
          if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v29, v11);
          }

          v30 = v43;
          v43 = 0;
          if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v30, v11);
          }
        }

        v45 = -1;
        WebCore::ResourceRequest::~ResourceRequest(&v42);
        WebKit::AXRelayProcessSuspendedNotification::~AXRelayProcessSuspendedNotification(v36, v31);
        atomic_fetch_add(IPC::UnboundedSynchronousIPCScope::unboundedSynchronousIPCCount, 0xFFFFFFFF);
        CFRelease(*(v7 - 8));
      }
    }

    if (v37)
    {
      CFRelease(*(v37 + 1));
    }
  }
}

uint64_t WebKit::WebChromeClient::runJavaScriptConfirm(WebKit::WebChromeClient *this, WebCore::LocalFrame *a2, const WTF::String *a3)
{
  v52 = *MEMORY[0x1E69E9840];
  if (WebKit::shouldSuppressJavaScriptDialogs(a2, a2))
  {
    return 0;
  }

  WebKit::WebFrame::fromCoreFrame(a2, &v41);
  v7 = *(this + 2);
  if (v7)
  {
    v8 = *(v7 + 8);
    if (v8)
    {
      CFRetain(*(v8 - 8));
      (*(**(v8 + 384) + 40))(*(v8 + 384), v8 - 16, a3, v41);
      WebKit::WebPage::preemptivelySendAutocorrectionContext((v8 - 16));
      atomic_fetch_add(IPC::UnboundedSynchronousIPCScope::unboundedSynchronousIPCCount, 1u);
      WebKit::AXRelayProcessSuspendedNotification::AXRelayProcessSuspendedNotification(v40, v8 - 16, 1);
      v9 = *(v41 + 11);
      WebKit::WebFrame::info(v41, 0, v45);
      WebKit::WebPage::cancelCurrentInteractionInformationRequest((v8 - 16));
      v10 = (*(*(v8 + 16) + 56))(v8 + 16);
      v11 = (*(*(v8 + 16) + 48))(v8 + 16);
      if (!v11)
      {
        v26 = 0;
        v19 = 3;
LABEL_26:
        v27 = cf;
        cf = 0;
        if (v27)
        {
          CFRelease(v27);
        }

        v28 = v50;
        v50 = 0;
        if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v28, v12);
        }

        if (!v49)
        {
          v29 = v48;
          v48 = 0;
          if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v29, v12);
          }

          v30 = v47;
          v47 = 0;
          if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v30, v12);
          }
        }

        v49 = -1;
        WebCore::ResourceRequest::~ResourceRequest(&v46);
        v6 = v9 & v26;
        if (v19)
        {
          v32 = v26;
        }

        else
        {
          v32 = 0;
        }

        if (v32)
        {
          IPC::Decoder::~Decoder(v19);
          bmalloc::api::tzoneFree(v36, v37);
        }

        WebKit::AXRelayProcessSuspendedNotification::~AXRelayProcessSuspendedNotification(v40, v31);
        atomic_fetch_add(IPC::UnboundedSynchronousIPCScope::unboundedSynchronousIPCCount, 0xFFFFFFFF);
        CFRelease(*(v8 - 8));
        goto LABEL_44;
      }

      v13 = v11;
      while (1)
      {
        v14 = *v11;
        if ((*v11 & 1) == 0)
        {
          break;
        }

        v15 = *v11;
        atomic_compare_exchange_strong_explicit(v11, &v15, v14 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v15 == v14)
        {
          goto LABEL_11;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v11);
LABEL_11:
      IPC::Connection::createSyncMessageEncoder(0x1047, v10, v44);
      v16 = v44[0];
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v44[0], v9);
      IPC::ArgumentCoder<WebKit::FrameInfoData,void>::encode(v16, v45);
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v16, a3);
      v17 = IPC::Connection::sendSyncMessage(v13, v44[1], v44, 4, &v42, INFINITY);
      if (v43)
      {
        if (v43 != 1)
        {
          mpark::throw_bad_variant_access(v17);
        }

        v19 = v42;
        v20 = 1;
LABEL_23:
        v25 = v44[0];
        v44[0] = 0;
        if (v25)
        {
          IPC::Encoder::~Encoder(v25, v18);
          bmalloc::api::tzoneFree(v34, v35);
        }

        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v13);
        v26 = v20 == 0;
        goto LABEL_26;
      }

      v19 = v42;
      v42 = 0;
      if (*(v19 + 50) == 3194)
      {
        v9 = 11;
      }

      else
      {
        v23 = IPC::Decoder::decode<std::tuple<BOOL>>(v19);
        if (v23 >= 0x100u)
        {
          LODWORD(v9) = v23;
          v20 = 0;
          goto LABEL_20;
        }

        v9 = 14;
      }

      IPC::Decoder::~Decoder(v19);
      bmalloc::api::tzoneFree(v21, v22);
      v20 = 1;
      v19 = v9;
LABEL_20:
      if (!v43)
      {
        v24 = v42;
        v42 = 0;
        if (v24)
        {
          IPC::Decoder::~Decoder(v24);
          bmalloc::api::tzoneFree(v38, v39);
        }
      }

      goto LABEL_23;
    }
  }

  v6 = 0;
LABEL_44:
  if (v41)
  {
    CFRelease(*(v41 + 1));
  }

  return v6;
}

BOOL WebKit::WebChromeClient::runJavaScriptPrompt(WebKit::WebChromeClient *this, WebCore::LocalFrame *a2, uint64_t a3, const WTF::String *a4, WTF::StringImpl **a5)
{
  v56 = *MEMORY[0x1E69E9840];
  if (WebKit::shouldSuppressJavaScriptDialogs(a2, a2))
  {
    return 0;
  }

  WebKit::WebFrame::fromCoreFrame(a2, &v43);
  v11 = *(this + 2);
  if (v11)
  {
    v12 = *(v11 + 8);
    if (v12)
    {
      CFRetain(*(v12 - 8));
      (*(**(v12 + 384) + 48))(*(v12 + 384), v12 - 16, a3, a4, v43);
      WebKit::WebPage::preemptivelySendAutocorrectionContext((v12 - 16));
      atomic_fetch_add(IPC::UnboundedSynchronousIPCScope::unboundedSynchronousIPCCount, 1u);
      WebKit::AXRelayProcessSuspendedNotification::AXRelayProcessSuspendedNotification(v42, v12 - 16, 1);
      v13 = *(v43 + 11);
      WebKit::WebFrame::info(v43, 0, v49);
      WebKit::WebPage::cancelCurrentInteractionInformationRequest((v12 - 16));
      v14 = (*(*(v12 + 16) + 56))(v12 + 16);
      v15 = (*(*(v12 + 16) + 48))(v12 + 16);
      v17 = v15;
      if (!v15)
      {
        v23 = 3;
LABEL_26:
        v29 = cf;
        cf = 0;
        if (v29)
        {
          CFRelease(v29);
        }

        v30 = v54;
        v54 = 0;
        if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v30, v16);
        }

        if (!v53)
        {
          v31 = v52;
          v52 = 0;
          if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v31, v16);
          }

          v32 = v51;
          v51 = 0;
          if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v32, v16);
          }
        }

        v53 = -1;
        WebCore::ResourceRequest::~ResourceRequest(&v50);
        if (v17)
        {
          v34 = *a5;
          *a5 = a3;
          if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v34, v33);
          }

          v10 = *a5 != 0;
          if (v23)
          {
            IPC::Decoder::~Decoder(v23);
            bmalloc::api::tzoneFree(v35, v36);
          }
        }

        else
        {
          v10 = 0;
        }

        WebKit::AXRelayProcessSuspendedNotification::~AXRelayProcessSuspendedNotification(v42, v33);
        atomic_fetch_add(IPC::UnboundedSynchronousIPCScope::unboundedSynchronousIPCCount, 0xFFFFFFFF);
        CFRelease(*(v12 - 8));
        goto LABEL_46;
      }

      while (1)
      {
        v18 = *v15;
        if ((*v15 & 1) == 0)
        {
          break;
        }

        v19 = *v15;
        atomic_compare_exchange_strong_explicit(v15, &v19, v18 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v19 == v18)
        {
          goto LABEL_10;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v15);
LABEL_10:
      IPC::Connection::createSyncMessageEncoder(0x1048, v14, v48);
      v20 = v48[0];
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v48[0], v13);
      IPC::ArgumentCoder<WebKit::FrameInfoData,void>::encode(v20, v49);
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v20, a3);
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v20, a4);
      v21 = IPC::Connection::sendSyncMessage(v17, v48[1], v48, 4, &v46, INFINITY);
      if (v47)
      {
        if (v47 != 1)
        {
          mpark::throw_bad_variant_access(v21);
        }

        v23 = v46;
        v24 = 1;
LABEL_23:
        v28 = v48[0];
        v48[0] = 0;
        if (v28)
        {
          IPC::Encoder::~Encoder(v28, v22);
          bmalloc::api::tzoneFree(v38, v39);
        }

        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v17);
        LODWORD(v17) = v24 == 0;
        goto LABEL_26;
      }

      v23 = v46;
      v46 = 0;
      if (*(v23 + 50) == 3194)
      {
        a3 = 11;
      }

      else
      {
        LOBYTE(v44) = 0;
        v45 = 0;
        IPC::Decoder::operator>><std::tuple<WTF::String>>(v23, &v44);
        if (v45 == 1)
        {
          v24 = 0;
          a3 = v44;
LABEL_20:
          if (!v47)
          {
            v27 = v46;
            v46 = 0;
            if (v27)
            {
              IPC::Decoder::~Decoder(v27);
              bmalloc::api::tzoneFree(v40, v41);
            }
          }

          goto LABEL_23;
        }

        a3 = 14;
      }

      IPC::Decoder::~Decoder(v23);
      bmalloc::api::tzoneFree(v25, v26);
      v24 = 1;
      v23 = a3;
      goto LABEL_20;
    }
  }

  v10 = 0;
LABEL_46:
  if (v43)
  {
    CFRelease(*(v43 + 1));
  }

  return v10;
}

uint64_t WebKit::WebChromeClient::keyboardUIMode(WebKit::WebChromeClient *this)
{
  v1 = *(this + 2);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 8);
  if (!v2)
  {
    return 0;
  }

  CFRetain(*(v2 - 8));
  {
    v4 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v8 = WebKit::WebProcess::operator new(0x370, v3);
    v4 = WebKit::WebProcess::WebProcess(v8);
    WebKit::WebProcess::singleton(void)::process = v4;
  }

  if (*(v2 + 187))
  {
    v5 = 0x10000000;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5 | *(v4 + 298);
  CFRelease(*(v2 - 8));
  return v6;
}

uint64_t WebKit::WebChromeClient::hoverSupportedByPrimaryPointingDevice(WebKit::WebChromeClient *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      CFRetain(*(v2 - 8));
      CFRelease(*(v2 - 8));
    }
  }

  return 0;
}

uint64_t WebKit::WebChromeClient::hoverSupportedByAnyAvailablePointingDevice(WebKit::WebChromeClient *this)
{
  v1 = *(this + 2);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 8);
  if (!v2)
  {
    return 0;
  }

  CFRetain(*(v2 - 8));
  v4 = WebKit::WebPage::hoverSupportedByAnyAvailablePointingDevice((v2 - 16), v3);
  CFRelease(*(v2 - 8));
  return v4;
}

uint64_t WebKit::WebChromeClient::pointerCharacteristicsOfPrimaryPointingDevice(WebKit::WebChromeClient *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      CFRetain(*(v2 - 8));
      CFRelease(*(v2 - 8));
      LODWORD(v1) = 1;
    }

    else
    {
      LODWORD(v1) = 0;
    }
  }

  return v1 | (v1 << 8);
}

uint64_t WebKit::WebChromeClient::pointerCharacteristicsOfAllAvailablePointingDevices(WebKit::WebChromeClient *this)
{
  v1 = *(this + 2);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 8);
  if (!v2)
  {
    return 0;
  }

  CFRetain(*(v2 - 8));
  v4 = WebKit::WebPage::pointerCharacteristicsOfAllAvailablePointingDevices((v2 - 16), v3);
  CFRelease(*(v2 - 8));
  return v4;
}

void WebKit::WebChromeClient::invalidateContentsAndRootView(WebKit::WebChromeClient *this, const WebCore::IntRect *a2)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      CFRetain(*(v3 - 8));
      v5 = *(v3 + 40);
      if (!v5)
      {
LABEL_10:
        CFRelease(*(v3 - 8));
        return;
      }

      v6 = v5 + 2;
      ++v5[2];
      WebCore::Page::localTopDocument(&v10, v5);
      v7 = v10;
      if (v10)
      {
        v8 = *(v10 + 3546);
        v10 = 0;
        v9 = *(v7 + 7) - 2;
        if (v8)
        {
          if (*(v7 + 7) == 2)
          {
            WebCore::Node::removedLastRef(v7);
          }

          else
          {
            *(v7 + 7) = v9;
          }

          goto LABEL_9;
        }

        if (*(v7 + 7) == 2)
        {
          WebCore::Node::removedLastRef(v7);
        }

        else
        {
          *(v7 + 7) = v9;
        }
      }

      (*(**(v3 + 56) + 64))(*(v3 + 56), a2);
LABEL_9:
      WTF::RefCounted<WebCore::Page>::deref(v6);
      goto LABEL_10;
    }
  }
}

void WebKit::WebChromeClient::invalidateContentsForSlowScroll(WebKit::WebChromeClient *this, const WebCore::IntRect *a2)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      CFRetain(*(v3 - 8));
      v5 = *(v3 + 40);
      if (!v5)
      {
LABEL_12:
        CFRelease(*(v3 - 8));
        return;
      }

      v6 = v5 + 2;
      ++v5[2];
      WebCore::Page::localTopDocument(&v11, v5);
      v8 = v11;
      if (v11)
      {
        v9 = *(v11 + 3546);
        v11 = 0;
        v10 = *(v8 + 7) - 2;
        if (v9)
        {
          if (*(v8 + 7) == 2)
          {
            WebCore::Node::removedLastRef(v8);
          }

          else
          {
            *(v8 + 7) = v10;
          }

          goto LABEL_11;
        }

        if (*(v8 + 7) == 2)
        {
          WebCore::Node::removedLastRef(v8);
        }

        else
        {
          *(v8 + 7) = v10;
        }
      }

      WebKit::WebPage::pageDidScroll((v3 - 16), v7);
      (*(**(v3 + 56) + 64))(*(v3 + 56), a2);
LABEL_11:
      WTF::RefCounted<WebCore::Page>::deref(v6);
      goto LABEL_12;
    }
  }
}

void WebKit::WebChromeClient::scroll(WebKit::WebChromeClient *this, const WebCore::IntSize *a2, const WebCore::IntRect *a3, const IntRect *a4)
{
  v4 = *(this + 2);
  if (v4)
  {
    v5 = *(v4 + 8);
    if (v5)
    {
      CFRetain(*(v5 - 8));
      WebKit::WebPage::pageDidScroll((v5 - 16), v9);
      v10 = *(v5 + 56);
      v11 = *a3;
      WebCore::IntRect::intersect(&v11, a4);
      (*(*v10 + 72))(v10, &v11, a2);
      CFRelease(*(v5 - 8));
    }
  }
}

unint64_t WebKit::WebChromeClient::screenToRootView(WebKit::WebChromeClient *this, const WebCore::IntPoint *a2)
{
  v2 = *(this + 2);
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = *(v2 + 8);
  if (!v3)
  {
    v2 = 0;
LABEL_6:
    v6 = 0;
    return v6 | v2;
  }

  CFRetain(*(v3 - 8));
  v5 = WebKit::WebPage::screenToRootView((v3 - 16), a2);
  LODWORD(a2) = v5;
  v6 = v5 & 0xFFFFFFFF00000000;
  CFRelease(*(v3 - 8));
  v2 = a2;
  return v6 | v2;
}

unint64_t WebKit::WebChromeClient::rootViewToScreen(WebKit::WebChromeClient *this, const WebCore::IntPoint *a2)
{
  v2 = *(this + 2);
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = *(v2 + 8);
  if (!v3)
  {
    v2 = 0;
LABEL_6:
    v6 = 0;
    return v6 | v2;
  }

  CFRetain(*(v3 - 8));
  v5 = WebKit::WebPage::rootViewToScreen((v3 - 16), a2);
  LODWORD(a2) = v5;
  v6 = v5 & 0xFFFFFFFF00000000;
  CFRelease(*(v3 - 8));
  v2 = a2;
  return v6 | v2;
}

IPC::Decoder *WebKit::WebChromeClient::rootViewToScreen(WebKit::WebChromeClient *this, const WebCore::IntRect *a2)
{
  v2 = *(this + 2);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 8);
  if (!v3)
  {
    return 0;
  }

  CFRetain(*(v3 - 8));
  v5 = WebKit::WebPage::rootViewToScreen((v3 - 16), a2);
  CFRelease(*(v3 - 8));
  return v5;
}

unint64_t WebKit::WebChromeClient::accessibilityScreenToRootView(WebKit::WebChromeClient *this, const WebCore::IntPoint *a2)
{
  v2 = *(this + 2);
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = *(v2 + 8);
  if (!v3)
  {
    v2 = 0;
LABEL_6:
    v6 = 0;
    return v6 | v2;
  }

  CFRetain(*(v3 - 8));
  v5 = WebKit::WebPage::accessibilityScreenToRootView((v3 - 16), a2);
  LODWORD(a2) = v5;
  v6 = v5 & 0xFFFFFFFF00000000;
  CFRelease(*(v3 - 8));
  v2 = a2;
  return v6 | v2;
}

IPC::Decoder *WebKit::WebChromeClient::rootViewToAccessibilityScreen(WebKit::WebChromeClient *this, const WebCore::IntRect *a2)
{
  v2 = *(this + 2);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 8);
  if (!v3)
  {
    return 0;
  }

  CFRetain(*(v3 - 8));
  v5 = WebKit::WebPage::rootViewToAccessibilityScreen((v3 - 16), a2);
  CFRelease(*(v3 - 8));
  return v5;
}

void WebKit::WebChromeClient::didFinishLoadingImageForElement(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      CFRetain(*(v3 - 8));
      WebKit::WebPage::didFinishLoadingImageForElement(v3 - 16, a2);
      v5 = *(v3 - 8);

      CFRelease(v5);
    }
  }
}

void WebKit::WebChromeClient::intrinsicContentsSizeChanged(WebKit::WebChromeClient *this, const IntSize *a2)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      CFRetain(*(v3 - 8));
      if (*(v3 + 848) || *(v3 + 856))
      {
        v5 = *a2;
        if ((*(v3 + 1832) & 1) == 0)
        {
          *(v3 + 1832) = 1;
        }

        *(v3 + 1824) = v5;
      }

      v6 = *(v3 - 8);

      CFRelease(v6);
    }
  }
}

void WebKit::WebChromeClient::contentsSizeChanged(WebKit::WebChromeClient *this, WebCore::LocalFrame *a2, const WebCore::IntSize *a3)
{
  v6 = *(a2 + 27);
  if (v6)
  {
    ++*(v6 + 8);
  }

  if (*(*(*(a2 + 3) + 8) + 176) == a2)
  {
    v7 = *(this + 2);
    if (v7)
    {
      v8 = *(v7 + 8);
      if (v8)
      {
        CFRetain(*(v8 - 8));
        v9 = (*(*(v8 + 16) + 56))(v8 + 16);
        v11 = IPC::Encoder::operator new(0x238, v10);
        *v11 = 2179;
        *(v11 + 2) = 0;
        *(v11 + 3) = 0;
        *(v11 + 1) = v9;
        *(v11 + 68) = 0;
        *(v11 + 70) = 0;
        *(v11 + 69) = 0;
        IPC::Encoder::encodeHeader(v11);
        v19 = v11;
        IPC::ArgumentCoder<WebCore::IntPoint,void>::encode(v11, a3);
        (*(*(v8 + 16) + 32))(v8 + 16, &v19, 0);
        v13 = v19;
        v19 = 0;
        if (v13)
        {
          IPC::Encoder::~Encoder(v13, v12);
          bmalloc::api::tzoneFree(v14, v15);
        }

        (*(**(v8 + 56) + 128))(*(v8 + 56), *(a2 + 4), a3);
        if (v6)
        {
          if (*(v6 + 312) != 1)
          {
            v16 = *(v6 + 152) != 0;
            v17 = *(v6 + 160) != 0;
            if (*(this + 8) != v16 || *(this + 9) != v17)
            {
              v18[0] = *(v6 + 152) != 0;
              v18[1] = v17;
              IPC::MessageSender::send<Messages::WebPageProxy::DidChangeScrollbarsForMainFrame>(v8 + 16, v18);
              *(this + 8) = v16;
              *(this + 9) = v17;
            }
          }
        }

        CFRelease(*(v8 - 8));
      }
    }
  }

  if (v6)
  {
    if (*(v6 + 8) == 1)
    {
      (*(*v6 + 8))(v6);
    }

    else
    {
      --*(v6 + 8);
    }
  }
}

IPC::Encoder *IPC::MessageSender::send<Messages::WebPageProxy::DidChangeScrollbarsForMainFrame>(uint64_t a1, char *a2)
{
  v4 = (*(*a1 + 56))(a1);
  v6 = IPC::Encoder::operator new(0x238, v5);
  *v6 = 2187;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = v4;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v11 = v6;
  IPC::Encoder::operator<<<BOOL &>(v6, a2);
  IPC::Encoder::operator<<<BOOL &>(v6, a2 + 1);
  (*(*a1 + 32))(a1, &v11, 0);
  result = v11;
  v11 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v7);
    return bmalloc::api::tzoneFree(v9, v10);
  }

  return result;
}

void WebKit::WebChromeClient::scrollMainFrameToRevealRect(WebKit::WebChromeClient *this, const WebCore::IntRect *a2)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      CFRetain(*(v3 - 8));
      WebCore::FloatRect::FloatRect(v14, a2);
      v12.m_x = *a2 + *(a2 + 2) / 2;
      v12.m_y = *(a2 + 1) + *(a2 + 3) / 2;
      WebCore::FloatPoint::FloatPoint(v13, &v12);
      v5 = (*(*(v3 + 16) + 56))(v3 + 16);
      v7 = IPC::Encoder::operator new(0x238, v6);
      *v7 = 2333;
      *(v7 + 2) = 0;
      *(v7 + 3) = 0;
      *(v7 + 1) = v5;
      *(v7 + 68) = 0;
      *(v7 + 70) = 0;
      *(v7 + 69) = 0;
      IPC::Encoder::encodeHeader(v7);
      v15 = v7;
      IPC::ArgumentCoder<WebCore::FloatRect,void>::encode(v7, v14);
      IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(v7, v13[0]);
      IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(v7, v13[1]);
      (*(*(v3 + 16) + 32))(v3 + 16, &v15, 0);
      v9 = v15;
      v15 = 0;
      if (v9)
      {
        IPC::Encoder::~Encoder(v9, v8);
        bmalloc::api::tzoneFree(v10, v11);
      }

      CFRelease(*(v3 - 8));
    }
  }
}

void WebKit::WebChromeClient::mouseDidMoveOverElement(uint64_t a1, const WebCore::HitTestResult *a2, unsigned int a3, atomic_uint **a4)
{
  *&v28[197] = *MEMORY[0x1E69E9840];
  v24 = 0;
  v4 = *(a1 + 16);
  if (!v4)
  {
    return;
  }

  v5 = *(v4 + 8);
  if (!v5)
  {
    return;
  }

  v8 = a3 & 0x12 | (a3 >> 3) & 1 | (4 * (a3 & 1)) & 0xF7 | (8 * ((a3 >> 2) & 1));
  CFRetain(*(v5 - 8));
  (*(**(v5 + 384) + 56))(*(v5 + 384), v5 - 16, a2, v8, &v24);
  WebKit::WebHitTestResultData::WebHitTestResultData(v27, a2, a4, 0);
  *v28 = WebCore::IntRect::toRectWithExtentsClippedToNumericLimits(v28);
  *&v28[2] = v9;
  v10 = v5 + 16;
  {
    v21 = WebKit::WebProcess::operator new(0x370, v9);
    WebKit::WebProcess::singleton(void)::process = WebKit::WebProcess::WebProcess(v21);
  }

  v25 = &unk_1F1122420;
  WebKit::UserData::transform(v24, &v25, &v22);
  v11 = v22;
  if (v22)
  {
    CFRetain(v22[1]);
  }

  v23 = v11;
  v12 = (*(*v10 + 56))(v5 + 16);
  v14 = IPC::Encoder::operator new(0x238, v13);
  *v14 = 2302;
  *(v14 + 2) = 0;
  *(v14 + 3) = 0;
  *(v14 + 1) = v12;
  *(v14 + 68) = 0;
  *(v14 + 70) = 0;
  *(v14 + 69) = 0;
  IPC::Encoder::encodeHeader(v14);
  v25 = v14;
  IPC::ArgumentCoder<WebKit::WebHitTestResultData,void>::encode(v14, v27);
  v26 = v8;
  IPC::Encoder::operator<<<unsigned char>(v14, &v26);
  IPC::ArgumentCoder<WebKit::UserData,void>::encode(v14, &v23);
  (*(*v10 + 32))(v5 + 16, &v25, 0);
  v16 = v25;
  v25 = 0;
  if (v16)
  {
    IPC::Encoder::~Encoder(v16, v15);
    bmalloc::api::tzoneFree(v19, v20);
    if (!v11)
    {
      goto LABEL_9;
    }

LABEL_15:
    CFRelease(v11[1]);
    goto LABEL_9;
  }

  if (v11)
  {
    goto LABEL_15;
  }

LABEL_9:
  v17 = v22;
  v22 = 0;
  if (v17)
  {
    CFRelease(v17[1]);
  }

  WebKit::WebHitTestResultData::~WebHitTestResultData(v27, v15);
  CFRelease(*(v5 - 8));
  v18 = v24;
  v24 = 0;
  if (v18)
  {
    CFRelease(*(v18 + 1));
  }
}

void WebKit::WebChromeClient::print(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WebKit::WebFrame::fromCoreFrame(a2, &v41);
  v40 = 0;
  v7 = WebKit::WebPage::pluginViewForFrame(a2, v6);
  if (v7)
  {
    v35 = v7;
    ++*(v7 + 8);
    LODWORD(v40) = WebKit::PDFPluginBase::pdfDocumentSizeForPrinting(*(v7 + 72));
    HIDWORD(v40) = v36;
    if (v35[2] == 1)
    {
      (*(*v35 + 8))(v35);
    }

    else
    {
      --v35[2];
    }
  }

  WTF::String::left(a3, 0x3E8u, &v38);
  v39 = *(a3 + 8);
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = *(v9 + 8);
    if (v10)
    {
      CFRetain(*(v10 - 8));
      WebKit::AXRelayProcessSuspendedNotification::AXRelayProcessSuspendedNotification(v37, v10 - 16, 1);
      atomic_fetch_add(IPC::UnboundedSynchronousIPCScope::unboundedSynchronousIPCCount, 1u);
      v11 = *(v41 + 88);
      WebKit::WebPage::cancelCurrentInteractionInformationRequest((v10 - 16));
      v12 = (*(*(v10 + 16) + 56))(v10 + 16);
      v13 = (*(*(v10 + 16) + 48))(v10 + 16);
      if (v13)
      {
        v15 = v13;
        while (1)
        {
          v16 = *v13;
          if ((*v13 & 1) == 0)
          {
            break;
          }

          v17 = *v13;
          atomic_compare_exchange_strong_explicit(v13, &v17, v16 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v17 == v16)
          {
            goto LABEL_10;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v13);
LABEL_10:
        IPC::Connection::createSyncMessageEncoder(0x103F, v12, v44);
        v18 = v44[0];
        IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v44[0], v11);
        IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v18, &v38);
        IPC::ArgumentCoder<WebCore::FloatPoint,void>::encode(v18, &v40);
        v19 = IPC::Connection::sendSyncMessage(v15, v44[1], v44, 0, &v42, INFINITY);
        if (v43)
        {
          if (v43 != 1)
          {
            mpark::throw_bad_variant_access(v19);
          }

          v21 = v42;
          v22 = 1;
        }

        else
        {
          v21 = v42;
          v42 = 0;
          if (*(v21 + 50) == 3194)
          {
            IPC::Decoder::~Decoder(v21);
            bmalloc::api::tzoneFree(v23, v24);
            if (!v43)
            {
              v25 = v42;
              v42 = 0;
              if (v25)
              {
                IPC::Decoder::~Decoder(v25);
                bmalloc::api::tzoneFree(v26, v27);
              }
            }

            v22 = 1;
            v21 = 11;
          }

          else
          {
            v22 = 0;
          }
        }

        v28 = v44[0];
        v44[0] = 0;
        if (v28)
        {
          IPC::Encoder::~Encoder(v28, v20);
          bmalloc::api::tzoneFree(v31, v32);
        }

        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v15);
        if (v21)
        {
          v29 = v22;
        }

        else
        {
          v29 = 1;
        }

        if ((v29 & 1) == 0)
        {
          IPC::Decoder::~Decoder(v21);
          bmalloc::api::tzoneFree(v33, v34);
        }
      }

      atomic_fetch_add(IPC::UnboundedSynchronousIPCScope::unboundedSynchronousIPCCount, 0xFFFFFFFF);
      WebKit::AXRelayProcessSuspendedNotification::~AXRelayProcessSuspendedNotification(v37, v14);
      CFRelease(*(v10 - 8));
    }
  }

  v30 = v38;
  v38 = 0;
  if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v30, v8);
  }

  if (v41)
  {
    CFRelease(*(v41 + 8));
  }
}

void WebKit::WebChromeClient::createColorChooser(uint64_t a1@<X0>, void *a2@<X1>, WebCore::Color *a3@<X2>, WebKit::WebColorChooser **a4@<X8>)
{
  v7 = *(a1 + 16);
  if (v7 && (v8 = *(v7 + 8)) != 0)
  {
    v9 = v8 - 16;
    CFRetain(*(v8 - 8));
    v10 = 0;
  }

  else
  {
    v9 = 0;
    v10 = 1;
  }

  if (WebKit::WebColorChooser::s_heapRef)
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::WebColorChooser::s_heapRef, a2);
  }

  else
  {
    NonCompact = WebKit::WebColorChooser::operatorNewSlow(0);
  }

  v12 = NonCompact;
  *(NonCompact + 16) = 1;
  *NonCompact = &unk_1F1130AB8;
  *(NonCompact + 8) = 0;
  v13 = a2[1];
  if (v13)
  {
    goto LABEL_11;
  }

  v13 = WTF::fastCompactMalloc(0x10);
  *v13 = 1;
  *(v13 + 8) = a2;
  v15 = a2[1];
  a2[1] = v13;
  if (!v15)
  {
    goto LABEL_11;
  }

  if (atomic_fetch_add(v15, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v15);
    WTF::fastFree(v15, v14);
  }

  v13 = a2[1];
  if (v13)
  {
LABEL_11:
    atomic_fetch_add(v13, 1u);
  }

  *(v12 + 3) = v13;
  if (v9)
  {
    WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v9 + 24), v9 + 16);
    v16 = *(v9 + 24);
    if (v16)
    {
      atomic_fetch_add(v16, 1u);
    }
  }

  else
  {
    v16 = 0;
  }

  *(v12 + 4) = v16;
  WebKit::WebPage::setActiveColorChooser(v9, v12);
  v18 = (*(*a2 + 56))(a2);
  {
    v19 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v25 = WebKit::WebProcess::operator new(0x370, v17);
    v19 = WebKit::WebProcess::WebProcess(v25);
    WebKit::WebProcess::singleton(void)::process = v19;
  }

  WebKit::AuxiliaryProcess::protectedParentProcessConnection(v19, &v31);
  v20 = v31;
  v27[0] = (*(*a2 + 48))(a2);
  v27[1] = v21;
  (*(*a2 + 64))(v26, a2);
  v28[0] = a3;
  v28[1] = v27;
  v29 = v18;
  v30 = v26;
  IPC::Connection::send<Messages::WebPageProxy::ShowColorPicker>(v20, v28, *(v9 + 48));
  WTF::Vector<WebCore::Color,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v26, v22);
  v23 = v31;
  v31 = 0;
  if (v23)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v23);
  }

  *a4 = v12;
  if ((v10 & 1) == 0)
  {
    v24 = *(v9 + 8);

    CFRelease(v24);
  }
}

void WebKit::WebChromeClient::createDataListSuggestionPicker(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(a1 + 16);
  if (v4 && (v5 = *(v4 + 8)) != 0)
  {
    CFRetain(*(v5 - 8));
    NonCompactSlow = bmalloc::api::tzoneAllocateNonCompactSlow();
    *(NonCompactSlow + 16) = 1;
    *NonCompactSlow = &unk_1F1130CD0;
    *(NonCompactSlow + 8) = 0;
    ++*(a2 + 8);
    *(NonCompactSlow + 24) = a2;
    WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v5 + 8), v5);
    v8 = *(v5 + 8);
    atomic_fetch_add(v8, 1u);
    *(NonCompactSlow + 32) = v8;
    *a3 = NonCompactSlow;
    v9 = *(v5 - 8);

    CFRelease(v9);
  }

  else
  {
    *a3 = 0;
  }
}

void WebKit::WebChromeClient::createDateTimeChooser(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(a1 + 16);
  if (v4 && (v5 = *(v4 + 8)) != 0)
  {
    CFRetain(*(v5 - 8));
    if (WebKit::WebDateTimeChooser::operator new(unsigned long)::s_heapRef)
    {
      NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::WebDateTimeChooser::operator new(unsigned long)::s_heapRef, v7);
    }

    else
    {
      NonCompact = bmalloc::api::tzoneAllocateNonCompactSlow();
    }

    v9 = NonCompact;
    *(NonCompact + 16) = 1;
    *NonCompact = &unk_1F1130D20;
    *(NonCompact + 8) = 0;
    *(NonCompact + 24) = a2;
    ++*(a2 + 8);
    WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v5 + 8), v5);
    v10 = *(v5 + 8);
    atomic_fetch_add(v10, 1u);
    *(v9 + 32) = v10;
    *a3 = v9;
    v11 = *(v5 - 8);

    CFRelease(v11);
  }

  else
  {
    *a3 = 0;
  }
}

void WebKit::WebChromeClient::runOpenPanel(WebKit::WebChromeClient *this, WebCore::LocalFrame *a2, WebCore::FileChooser *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = *(this + 2);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      CFRetain(*(v4 - 8));
      if (!*(v4 + 552))
      {
        ++*a3;
        v23 = a3;
        WebKit::WebOpenPanelResultListener::create(v4 - 16, &v23, &v24);
        v8 = *(v4 + 552);
        *(v4 + 552) = v24;
        if (v8)
        {
          WTF::RefCounted<WebKit::WebOpenPanelResultListener>::deref(v8, v7);
        }

        if (v23)
        {
          WTF::RefCounted<WebCore::FileChooser>::deref(v23);
        }

        WebKit::WebFrame::fromCoreFrame(a2, &v22);
        v9 = v22;
        v10 = *(v22 + 11);
        WebKit::WebFrame::info(v22, 0, &v24);
        v11 = (*(*(v4 + 16) + 56))(v4 + 16);
        v13 = IPC::Encoder::operator new(0x238, v12);
        *v13 = 2341;
        *(v13 + 2) = 0;
        *(v13 + 3) = 0;
        *(v13 + 1) = v11;
        *(v13 + 68) = 0;
        *(v13 + 70) = 0;
        *(v13 + 69) = 0;
        IPC::Encoder::encodeHeader(v13);
        v23 = v13;
        IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v13, v10);
        IPC::ArgumentCoder<WebKit::FrameInfoData,void>::encode(v13, &v24);
        IPC::ArgumentCoder<WebCore::FileChooserSettings,void>::encode(v13, a3 + 16);
        (*(*(v4 + 16) + 32))(v4 + 16, &v23, 0);
        v15 = v23;
        v23 = 0;
        if (v15)
        {
          IPC::Encoder::~Encoder(v15, v14);
          bmalloc::api::tzoneFree(v20, v21);
        }

        v16 = cf;
        cf = 0;
        if (v16)
        {
          CFRelease(v16);
        }

        v17 = v29;
        v29 = 0;
        if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v17, v14);
        }

        if (!v28)
        {
          v18 = v27;
          v27 = 0;
          if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v18, v14);
          }

          v19 = v26;
          v26 = 0;
          if (v19)
          {
            if (atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v19, v14);
            }
          }
        }

        v28 = -1;
        WebCore::ResourceRequest::~ResourceRequest(&v25);
        CFRelease(*(v9 + 1));
      }

      CFRelease(*(v4 - 8));
    }
  }
}

void WebKit::WebChromeClient::showShareSheet(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      CFRetain(*(v4 - 8));
      v9 = a2;
      v7 = (*(*(v4 + 16) + 56))(v4 + 16);
      IPC::MessageSender::sendWithAsyncReply<Messages::WebPageProxy::ShowShareSheet,WTF::CompletionHandler<void ()(BOOL)>>(v4 + 16, &v9, a3, v7, 0);
      v8 = *(v4 - 8);

      CFRelease(v8);
    }
  }
}

void WebKit::WebChromeClient::showContactPicker(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      CFRetain(*(v4 - 8));
      v9 = a2;
      v7 = (*(*(v4 + 16) + 56))(v4 + 16);
      IPC::MessageSender::sendWithAsyncReply<Messages::WebPageProxy::ShowContactPicker,WTF::CompletionHandler<void ()(std::optional<WTF::Vector<WebCore::ContactInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)>>(v4 + 16, &v9, a3, v7, 0);
      v8 = *(v4 - 8);

      CFRelease(v8);
    }
  }
}

void WebKit::WebChromeClient::showDigitalCredentialsPicker(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      CFRetain(*(v4 - 8));
      v9 = a2;
      v7 = (*(*(v4 + 16) + 56))(v4 + 16);
      IPC::MessageSender::sendWithAsyncReply<Messages::WebPageProxy::ShowDigitalCredentialsPicker,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebCore::DigitalCredentialsResponseData,WebCore::ExceptionData> &&)>>(v4 + 16, &v9, a3, v7, 0);
      v8 = *(v4 - 8);

      CFRelease(v8);
    }
  }
}

void WebKit::WebChromeClient::dismissDigitalCredentialsPicker(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      CFRetain(*(v3 - 8));
      v5 = (*(*(v3 + 16) + 56))(v3 + 16);
      IPC::MessageSender::sendWithAsyncReply<Messages::WebPageProxy::DismissDigitalCredentialsPicker,WTF::CompletionHandler<void ()(BOOL)>>(v3 + 16, &v7, a2, v5, 0);
      v6 = *(v3 - 8);

      CFRelease(v6);
    }
  }
}

WebCore::Icon *WebKit::WebChromeClient::loadIconForFiles(uint64_t a1, uint64_t a2)
{
  WebKit::WebChromeClient::createIconForFiles(a1, a2);
  WebCore::FileIconLoader::iconLoaded();
  result = v3;
  if (v3)
  {
    return WTF::RefCounted<WebCore::Icon>::deref(v3);
  }

  return result;
}

void WebKit::WebChromeClient::setCursor(WebKit::WebChromeClient *this, const WebCore::Cursor *a2)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      CFRetain(*(v3 - 8));
      v5 = (*(*(v3 + 16) + 56))(v3 + 16);
      v7 = IPC::Encoder::operator new(0x238, v6);
      *v7 = 2352;
      *(v7 + 2) = 0;
      *(v7 + 3) = 0;
      *(v7 + 1) = v5;
      *(v7 + 68) = 0;
      *(v7 + 70) = 0;
      *(v7 + 69) = 0;
      IPC::Encoder::encodeHeader(v7);
      v12 = v7;
      IPC::ArgumentCoder<WebCore::Cursor,void>::encode(v7, a2);
      (*(*(v3 + 16) + 32))(v3 + 16, &v12, 0);
      v9 = v12;
      v12 = 0;
      if (v9)
      {
        IPC::Encoder::~Encoder(v9, v8);
        bmalloc::api::tzoneFree(v10, v11);
      }

      CFRelease(*(v3 - 8));
    }
  }
}

void WebKit::WebChromeClient::setCursorHiddenUntilMouseMoves(WebKit::WebChromeClient *this, char a2)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      CFRetain(*(v3 - 8));
      v12 = a2;
      v5 = (*(*(v3 + 16) + 56))(v3 + 16);
      v7 = IPC::Encoder::operator new(0x238, v6);
      *v7 = 2353;
      *(v7 + 2) = 0;
      *(v7 + 3) = 0;
      *(v7 + 1) = v5;
      *(v7 + 68) = 0;
      *(v7 + 70) = 0;
      *(v7 + 69) = 0;
      IPC::Encoder::encodeHeader(v7);
      v13 = v7;
      IPC::Encoder::operator<<<BOOL &>(v7, &v12);
      (*(*(v3 + 16) + 32))(v3 + 16, &v13, 0);
      v9 = v13;
      v13 = 0;
      if (v9)
      {
        IPC::Encoder::~Encoder(v9, v8);
        bmalloc::api::tzoneFree(v10, v11);
      }

      CFRelease(*(v3 - 8));
    }
  }
}

void WebKit::WebChromeClient::didAssociateFormControls(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WebKit::WebFrame::fromCoreFrame(a3, &v8);
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = *(v5 + 8);
    if (v6)
    {
      CFRetain(*(v6 - 8));
      (*(**(v6 + 360) + 80))(*(v6 + 360), v6 - 16, a2, v8);
      CFRelease(*(v6 - 8));
    }
  }

  if (v8)
  {
    v7 = *(v8 + 8);

    CFRelease(v7);
  }
}

uint64_t WebKit::WebChromeClient::shouldNotifyOnFormChanges(WebKit::WebChromeClient *this)
{
  v1 = *(this + 2);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 8);
  if (!v2)
  {
    return 0;
  }

  CFRetain(*(v2 - 8));
  v3 = (*(**(v2 + 360) + 88))(*(v2 + 360), v2 - 16);
  CFRelease(*(v2 - 8));
  return v3;
}

void WebKit::WebChromeClient::createPopupMenu(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(a1 + 16);
  if (v5 && (v6 = *(v5 + 8)) != 0)
  {
    v7 = v6 - 16;
    CFRetain(*(v6 - 8));
    v8 = 0;
  }

  else
  {
    v7 = 0;
    v8 = 1;
  }

  v9 = WTF::fastMalloc(0x20);
  *a3 = WebKit::WebPopupMenu::WebPopupMenu(v9, v7, a2);
  if ((v8 & 1) == 0)
  {
    v10 = *(v7 + 8);

    CFRelease(v10);
  }
}

void WebKit::WebChromeClient::createSearchPopupMenu(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 16);
  if (v5 && (v6 = *(v5 + 8)) != 0)
  {
    CFRetain(*(v6 - 8));
    WebKit::WebSearchPopupMenu::create(v6 - 16, a2, &v8);
    *a3 = v8;
    v7 = *(v6 - 8);

    CFRelease(v7);
  }

  else
  {
    WebKit::WebSearchPopupMenu::create(0, a2, &v8);
    *a3 = v8;
  }
}

uint64_t WebKit::WebChromeClient::graphicsLayerFactory(WebKit::WebChromeClient *this)
{
  v1 = *(this + 2);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 8);
  if (!v2)
  {
    return 0;
  }

  CFRetain(*(v2 - 8));
  v3 = *(v2 + 56);
  if (v3)
  {
    ++v3[4];
    v4 = (*(*v3 + 248))(v3);
    if (v3[4] == 1)
    {
      (*(*v3 + 24))(v3);
    }

    else
    {
      --v3[4];
    }
  }

  else
  {
    v4 = 0;
  }

  CFRelease(*(v2 - 8));
  return v4;
}

uint64_t WebKit::WebChromeClient::displayRefreshMonitorFactory(WebKit::WebChromeClient *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    v1 = *(v1 + 8);
    if (v1)
    {
      v1 = *(v1 + 56);
    }
  }

  if (v1)
  {
    return v1 + 24;
  }

  else
  {
    return 0;
  }
}

void WebKit::WebChromeClient::createImageBuffer(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, int a4@<W3>, CFTypeRef *a5@<X4>, __int16 a6@<W5>, uint64_t *a7@<X8>, float a8@<S0>)
{
  {
    v15 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v20 = a1;
    v21 = WebKit::WebProcess::operator new(0x370, a2);
    v15 = WebKit::WebProcess::WebProcess(v21);
    a1 = v20;
    WebKit::WebProcess::singleton(void)::process = v15;
  }

  if ((a4 - 2) >= 4)
  {
    if (a4 == 1)
    {
      if (*(v15 + 801) == 1)
      {
        goto LABEL_5;
      }
    }

    else
    {
      if (a4 != 7)
      {
LABEL_16:
        if ((a4 - 5) <= 1u)
        {
          v22[0] = 0;
          v22[1] = 0;
          WebCore::ImageBuffer::create<WebKit::ImageBufferShareableBitmapBackend,WebCore::ImageBuffer>(a2, a5, 1, a4, v22, a7, a8);
          WebCore::ImageBufferCreationContext::~ImageBufferCreationContext(v22);
          return;
        }

        goto LABEL_18;
      }

      if (*(v15 + 803))
      {
        goto LABEL_5;
      }
    }

LABEL_18:
    *a7 = 0;
    return;
  }

  if ((*(v15 + 802) & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_5:
  v16 = *(a1 + 16);
  if (!v16)
  {
    goto LABEL_18;
  }

  v17 = *(v16 + 8);
  if (!v17)
  {
    goto LABEL_18;
  }

  CFRetain(*(v17 - 8));
  v18 = WebKit::WebPage::ensureRemoteRenderingBackendProxy((v17 - 16));
  WebKit::RemoteRenderingBackendProxy::createImageBuffer(v18, a2, a3, a4, a5, a6, a7, a8);
  v19 = *(v17 - 8);

  CFRelease(v19);
}

void WebKit::WebChromeClient::sinkIntoImageBuffer(uint64_t a1@<X0>, WebKit::RemoteSerializedImageBufferProxy **a2@<X1>, void *a3@<X8>)
{
  if (*a2)
  {
    if ((*(**a2 + 24))(*a2))
    {
      v6 = *(a1 + 16);
      if (v6 && (v7 = *(v6 + 8)) != 0)
      {
        CFRetain(*(v7 - 8));
        v8 = *a2;
        *a2 = 0;
        v13 = v8;
        v9 = WebKit::WebPage::ensureRemoteRenderingBackendProxy((v7 - 16));
        WebKit::RemoteSerializedImageBufferProxy::sinkIntoImageBuffer(&v13, v9, a3);
        if (v8)
        {
          (*(*v8 + 8))(v8);
        }

        v10 = *(v7 - 8);

        CFRelease(v10);
      }

      else
      {
        *a3 = 0;
      }

      return;
    }

    v11 = *a2;
  }

  else
  {
    v11 = 0;
  }

  *a2 = 0;
  v14 = v11;
  WebCore::SerializedImageBuffer::sinkIntoImageBuffer();
  v12 = v14;
  v14 = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }
}

void WebKit::WebChromeClient::createWorkerClient(uint64_t a1@<X0>, atomic_ullong *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(a1 + 16);
  if (v4 && (v5 = *(v4 + 8)) != 0)
  {
    CFRetain(*(v5 - 8));
    WebKit::WebWorkerClient::create(*(v5 + 40), a2, a3);
    v7 = *(v5 - 8);

    CFRelease(v7);
  }

  else
  {
    *a3 = 0;
  }
}

void WebKit::WebChromeClient::createGraphicsContextGL(uint64_t a1@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  {
    v5 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v9 = a1;
    v10 = WebKit::WebProcess::operator new(0x370, a2);
    v5 = WebKit::WebProcess::WebProcess(v10);
    a1 = v9;
    WebKit::WebProcess::singleton(void)::process = v5;
  }

  if (*(v5 + 804) == 1)
  {
    v6 = *(a1 + 16);
    if (v6 && (v7 = *(v6 + 8)) != 0)
    {
      CFRetain(*(v7 - 8));
      WebKit::RemoteGraphicsContextGLProxy::create(a2, (v7 - 16), &v11);
      if (v11)
      {
        v8 = v11 + 24;
      }

      else
      {
        v8 = 0;
      }

      *a3 = v8;
      CFRelease(*(v7 - 8));
    }

    else
    {
      *a3 = 0;
    }
  }

  else
  {

    WebCore::createWebProcessGraphicsContextGL();
  }
}

void WebKit::WebChromeClient::createGPUForWebGPU(WebKit::WebChromeClient *this@<X0>, void *a2@<X8>)
{
  v3 = *(this + 2);
  if (v3 && (v4 = *(v3 + 8)) != 0)
  {
    CFRetain(*(v4 - 8));
    v6 = WebKit::WebGPU::DowncastConvertToBackingContext::operator new(0x10, v5);
    *v6 = &unk_1F1126A18;
    *(v6 + 1) = 1;
    WebKit::RemoteGPUProxy::create(v6, (v4 - 16), &v7);
    *a2 = v7;
    CFRelease(*(v4 - 8));
    if (*(v6 + 2) == 1)
    {
      (*(*v6 + 8))(v6);
    }

    else
    {
      --*(v6 + 2);
    }
  }

  else
  {
    *a2 = 0;
  }
}

void WebKit::WebChromeClient::createBarcodeDetector(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *(a1 + 16);
  if (v4 && (v5 = *(v4 + 8)) != 0)
  {
    CFRetain(*(v5 - 8));
    v7 = WebKit::WebPage::ensureRemoteRenderingBackendProxy((v5 - 16));
    ++*(v7 + 20);
    WebKit::RemoteRenderingBackendProxy::connection(v7, v8, &v15);
    if (v15)
    {
      v13 = v15;
      v15 = 0;
      v9 = *(v7 + 80);
      IdentifierInternal = WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>::generateIdentifierInternal();
      WebKit::ShapeDetection::RemoteBarcodeDetectorProxy::create(&v13, v9, IdentifierInternal, a2, &v14);
      v11 = v13;
      *a3 = v14;
      v13 = 0;
      v14 = 0;
      if (v11 && atomic_fetch_add(v11, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v11);
        IPC::StreamClientConnection::operator delete(v11);
      }

      v12 = v15;
      v15 = 0;
      if (v12 && atomic_fetch_add(v12, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v12);
        IPC::StreamClientConnection::operator delete(v12);
      }
    }

    else
    {
      *a3 = 0;
    }

    if (*(v7 + 20) == 1)
    {
      (*(*v7 + 24))(v7);
    }

    else
    {
      --*(v7 + 20);
    }

    CFRelease(*(v5 - 8));
  }

  else
  {
    *a3 = 0;
  }
}

void WebKit::WebChromeClient::getBarcodeDetectorSupportedFormats(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 16);
  if (v3 && (v4 = *(v3 + 8)) != 0)
  {
    CFRetain(*(v4 - 8));
    v5 = WebKit::WebPage::ensureRemoteRenderingBackendProxy((v4 - 16));
    ++*(v5 + 20);
    v7 = WebKit::RemoteRenderingBackendProxy::connection(v5, v6, &v17);
    v8 = v17;
    if (v17)
    {
      v17 = 0;
      IPC::StreamClientConnection::sendWithAsyncReply<Messages::RemoteRenderingBackend::GetRemoteBarcodeDetectorSupportedFormats,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ShapeDetection::BarcodeFormat,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v8, &v18, a2, *(v5 + 80));
      if (atomic_fetch_add(v8, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v8);
        v9.n128_f64[0] = IPC::StreamClientConnection::operator delete(v8);
      }
    }

    else
    {
      v18 = 0;
      v19 = 0;
      v13 = *a2;
      *a2 = 0;
      (*(*v13 + 16))(v13, &v18, v7);
      (*(*v13 + 8))(v13);
      v15 = v18;
      if (v18)
      {
        v18 = 0;
        LODWORD(v19) = 0;
        WTF::fastFree(v15, v14);
      }
    }

    v16 = v17;
    v17 = 0;
    if (v16 && atomic_fetch_add(v16, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v16);
      v9.n128_f64[0] = IPC::StreamClientConnection::operator delete(v16);
    }

    if (*(v5 + 20) == 1)
    {
      (*(*v5 + 24))(v5, v9);
    }

    else
    {
      --*(v5 + 20);
    }

    CFRelease(*(v4 - 8));
  }

  else
  {
    v18 = 0;
    v19 = 0;
    v10 = *a2;
    *a2 = 0;
    (*(*v10 + 16))(v10, &v18);
    (*(*v10 + 8))(v10);
    v12 = v18;
    if (v18)
    {
      v18 = 0;
      LODWORD(v19) = 0;
      WTF::fastFree(v12, v11);
    }
  }
}

void WebKit::WebChromeClient::createFaceDetector(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *(a1 + 16);
  if (v4 && (v5 = *(v4 + 8)) != 0)
  {
    CFRetain(*(v5 - 8));
    v7 = WebKit::WebPage::ensureRemoteRenderingBackendProxy((v5 - 16));
    ++*(v7 + 20);
    WebKit::RemoteRenderingBackendProxy::connection(v7, v8, &v15);
    if (v15)
    {
      v13 = v15;
      v15 = 0;
      v9 = *(v7 + 80);
      IdentifierInternal = WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>::generateIdentifierInternal();
      WebKit::ShapeDetection::RemoteFaceDetectorProxy::create(&v13, v9, IdentifierInternal, a2, &v14);
      v11 = v13;
      *a3 = v14;
      v13 = 0;
      v14 = 0;
      if (v11 && atomic_fetch_add(v11, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v11);
        IPC::StreamClientConnection::operator delete(v11);
      }

      v12 = v15;
      v15 = 0;
      if (v12 && atomic_fetch_add(v12, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v12);
        IPC::StreamClientConnection::operator delete(v12);
      }
    }

    else
    {
      *a3 = 0;
    }

    if (*(v7 + 20) == 1)
    {
      (*(*v7 + 24))(v7);
    }

    else
    {
      --*(v7 + 20);
    }

    CFRelease(*(v5 - 8));
  }

  else
  {
    *a3 = 0;
  }
}

void WebKit::WebChromeClient::createTextDetector(WebKit::WebChromeClient *this@<X0>, void *a2@<X8>)
{
  v3 = *(this + 2);
  if (v3 && (v4 = *(v3 + 8)) != 0)
  {
    CFRetain(*(v4 - 8));
    v5 = WebKit::WebPage::ensureRemoteRenderingBackendProxy((v4 - 16));
    ++*(v5 + 20);
    WebKit::RemoteRenderingBackendProxy::connection(v5, v6, &v13);
    if (v13)
    {
      v11 = v13;
      v13 = 0;
      v7 = *(v5 + 80);
      IdentifierInternal = WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>::generateIdentifierInternal();
      WebKit::ShapeDetection::RemoteTextDetectorProxy::create(&v11, v7, IdentifierInternal, &v12);
      v9 = v11;
      *a2 = v12;
      v11 = 0;
      v12 = 0;
      if (v9 && atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v9);
        IPC::StreamClientConnection::operator delete(v9);
      }

      v10 = v13;
      v13 = 0;
      if (v10 && atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v10);
        IPC::StreamClientConnection::operator delete(v10);
      }
    }

    else
    {
      *a2 = 0;
    }

    if (*(v5 + 20) == 1)
    {
      (*(*v5 + 24))(v5);
    }

    else
    {
      --*(v5 + 20);
    }

    CFRelease(*(v4 - 8));
  }

  else
  {
    *a2 = 0;
  }
}

void WebKit::WebChromeClient::attachRootGraphicsLayer(WebKit::WebChromeClient *this, WebCore::LocalFrame *a2, WebCore::GraphicsLayer *a3)
{
  v3 = *(this + 2);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      CFRetain(*(v4 - 8));
      v7 = v4 - 16;
      if (a3)
      {
        WebKit::WebPage::enterAcceleratedCompositingMode(v7);
      }

      else
      {
        WebKit::WebPage::exitAcceleratedCompositingMode(v7, a2);
      }

      v8 = *(v4 - 8);

      CFRelease(v8);
    }
  }
}

void WebKit::WebChromeClient::attachViewOverlayGraphicsLayer(WebKit::WebChromeClient *this, WebCore::GraphicsLayer *a2)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      CFRetain(*(v3 - 8));
      v5 = *(v3 + 56);
      if (v5)
      {
        v6 = v5[4];
        v5[4] = v6 + 1;
        v7 = *(v3 + 72);
        v8 = *(v7 + 40);
        if (v8)
        {
          v9 = *(v8 + 8);
          if (v9)
          {
            if ((*(v9 + 136) & 1) == 0)
            {
              (*(*v5 + 352))(v5, *(v7 + 88), a2);
              v6 = v5[4] - 1;
            }
          }
        }

        if (v6)
        {
          v5[4] = v6;
        }

        else
        {
          (*(*v5 + 24))(v5);
        }
      }

      v10 = *(v3 - 8);

      CFRelease(v10);
    }
  }
}

BOOL WebKit::WebChromeClient::shouldTriggerRenderingUpdate(WebKit::WebChromeClient *this, unsigned int a2)
{
  v2 = *(this + 2);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 8);
  if (!v3)
  {
    return 0;
  }

  CFRetain(*(v3 - 8));
  shouldTriggerRenderingUpdate = WebKit::WebPage::shouldTriggerRenderingUpdate((v3 - 16), a2);
  CFRelease(*(v3 - 8));
  return shouldTriggerRenderingUpdate;
}

void WebKit::WebChromeClient::triggerRenderingUpdate(WebKit::WebChromeClient *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      CFRetain(*(v2 - 8));
      v3 = *(v2 + 56);
      if (v3)
      {
        ++v3[4];
        (*(*v3 + 280))(v3);
        if (v3[4] == 1)
        {
          (*(*v3 + 24))(v3);
        }

        else
        {
          --v3[4];
        }
      }

      v4 = *(v2 - 8);

      CFRelease(v4);
    }
  }
}

uint64_t WebKit::WebChromeClient::scheduleRenderingUpdate(WebKit::WebChromeClient *this)
{
  v1 = *(this + 2);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 8);
  if (!v2)
  {
    return 0;
  }

  CFRetain(*(v2 - 8));
  v3 = *(v2 + 56);
  if (v3)
  {
    ++v3[4];
    v4 = (*(*v3 + 288))(v3);
    if (v3[4] == 1)
    {
      (*(*v3 + 24))(v3);
    }

    else
    {
      --v3[4];
    }
  }

  else
  {
    v4 = 0;
  }

  CFRelease(*(v2 - 8));
  return v4;
}

void WebKit::WebChromeClient::renderingUpdateFramesPerSecondChanged(WebKit::WebChromeClient *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      CFRetain(*(v2 - 8));
      v3 = *(v2 + 56);
      if (v3)
      {
        ++v3[4];
        (*(*v3 + 296))(v3);
        if (v3[4] == 1)
        {
          (*(*v3 + 24))(v3);
        }

        else
        {
          --v3[4];
        }
      }

      v4 = *(v2 - 8);

      CFRelease(v4);
    }
  }
}

uint64_t WebKit::WebChromeClient::remoteImagesCountForTesting(WebKit::WebChromeClient *this)
{
  v1 = *(this + 2);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 8);
  if (!v2)
  {
    return 0;
  }

  CFRetain(*(v2 - 8));
  v3 = WebKit::WebPage::remoteImagesCountForTesting((v2 - 16));
  CFRelease(*(v2 - 8));
  return v3;
}

uint64_t WebKit::WebChromeClient::registerBlobPathForTesting(uint64_t a1, void *a2, uint64_t *a3)
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

  v6 = *(WebKit::WebProcess::ensureNetworkProcessConnection(v5) + 24);
  v7 = *a3;
  *a3 = 0;
  v8 = WTF::fastMalloc(0x10);
  *v8 = &unk_1F1130B50;
  v8[1] = v7;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v9 = v8;
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v12 = IPC::Encoder::operator new(0x238, v11);
    *v12 = 468;
    *(v12 + 68) = 0;
    *(v12 + 70) = 0;
    *(v12 + 69) = 0;
    *(v12 + 2) = 0;
    *(v12 + 3) = 0;
    *(v12 + 1) = 0;
    IPC::Encoder::encodeHeader(v12);
    v20 = v12;
    IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v12, a2);
    v19[0] = v9;
    v19[1] = IdentifierInternal;
    IPC::Connection::sendMessageWithAsyncReply(v6, &v20, v19, 0, 0);
    v14 = v19[0];
    v19[0] = 0;
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }

    result = v20;
    v20 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v13);
      return bmalloc::api::tzoneFree(v16, v17);
    }
  }

  return result;
}

void WebKit::WebChromeClient::contentRuleListNotification(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      CFRetain(*(v4 - 8));
      v7 = (*(*(v4 + 16) + 56))(v4 + 16);
      v9 = IPC::Encoder::operator new(0x238, v8);
      *v9 = 2167;
      *(v9 + 2) = 0;
      *(v9 + 3) = 0;
      *(v9 + 1) = v7;
      *(v9 + 68) = 0;
      *(v9 + 70) = 0;
      *(v9 + 69) = 0;
      IPC::Encoder::encodeHeader(v9);
      v14 = v9;
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v9, a2);
      IPC::ArgumentCoder<WebCore::ApplePaySessionPaymentRequest::MerchantCapabilities,void>::encode(v9, a3);
      IPC::VectorArgumentCoder<false,std::pair<WTF::String,WebCore::ContentRuleListResults::Result>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<std::pair<WTF::String,WebCore::ContentRuleListResults::Result>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(v9, (a3 + 40));
      (*(*(v4 + 16) + 32))(v4 + 16, &v14, 0);
      v11 = v14;
      v14 = 0;
      if (v11)
      {
        IPC::Encoder::~Encoder(v11, v10);
        bmalloc::api::tzoneFree(v12, v13);
      }

      CFRelease(*(v4 - 8));
    }
  }
}

uint64_t WebKit::WebChromeClient::layerTreeStateIsFrozen(WebKit::WebChromeClient *this)
{
  v1 = *(this + 2);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 8);
  if (!v2)
  {
    return 0;
  }

  CFRetain(*(v2 - 8));
  v3 = *(v2 + 56);
  if (v3)
  {
    ++v3[4];
    v4 = (*(*v3 + 112))(v3);
    if (v3[4] == 1)
    {
      (*(*v3 + 24))(v3);
    }

    else
    {
      --v3[4];
    }
  }

  else
  {
    v4 = 0;
  }

  CFRelease(*(v2 - 8));
  return v4;
}

void WebKit::WebChromeClient::createScrollingCoordinator(WebKit::WebChromeClient *this@<X0>, WebKit::RemoteScrollingCoordinator **a2@<X8>)
{
  v4 = *(this + 2);
  if (v4 && (v5 = *(v4 + 8)) != 0)
  {
    v6 = CFRetain(*(v5 - 8));
    if (*(*(v5 + 56) + 32))
    {
      v9 = 0;
    }

    else
    {
      v8 = WebKit::RemoteScrollingCoordinator::operator new(v6, v7);
      v9 = WebKit::RemoteScrollingCoordinator::RemoteScrollingCoordinator(v8, (v5 - 16));
    }

    *a2 = v9;
    v10 = *(v5 - 8);

    CFRelease(v10);
  }

  else
  {
    *a2 = 0;
  }
}

void WebKit::WebChromeClient::prepareForVideoFullscreen(WebKit::WebChromeClient *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      CFRetain(*(v2 - 8));
      WebKit::WebPage::videoPresentationManager((v2 - 16));
      v3 = *(v2 - 8);

      CFRelease(v3);
    }
  }
}

uint64_t WebKit::WebChromeClient::canEnterVideoFullscreen(WebKit::WebChromeClient *this, WebCore::HTMLVideoElement *a2, int a3)
{
  v3 = *(this + 2);
  if (!v3)
  {
    return 0;
  }

  v4 = *(v3 + 8);
  if (!v4)
  {
    return 0;
  }

  CFRetain(*(v4 - 8));
  v7 = WebKit::WebPage::videoPresentationManager((v4 - 16));
  canEnterVideoFullscreen = WebKit::VideoPresentationManager::canEnterVideoFullscreen(v7, a2, a3);
  CFRelease(*(v4 - 8));
  return canEnterVideoFullscreen;
}

uint64_t WebKit::WebChromeClient::supportsVideoFullscreen(WebKit::WebChromeClient *this)
{
  v1 = *(this + 2);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 8);
  if (!v2)
  {
    return 0;
  }

  CFRetain(*(v2 - 8));
  WebKit::WebPage::videoPresentationManager((v2 - 16));
  CFRelease(*(v2 - 8));
  return 1;
}

uint64_t WebKit::WebChromeClient::supportsVideoFullscreenStandby(WebKit::WebChromeClient *this)
{
  v1 = *(this + 2);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 8);
  if (!v2)
  {
    return 0;
  }

  CFRetain(*(v2 - 8));
  WebKit::WebPage::videoPresentationManager((v2 - 16));
  CFRelease(*(v2 - 8));
  return 1;
}

void WebKit::WebChromeClient::setMockVideoPresentationModeEnabled(WebKit::WebChromeClient *this, char a2)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      CFRetain(*(v3 - 8));
      v12 = a2;
      v5 = (*(*(v3 + 16) + 56))(v3 + 16);
      v7 = IPC::Encoder::operator new(0x238, v6);
      *v7 = 2361;
      *(v7 + 2) = 0;
      *(v7 + 3) = 0;
      *(v7 + 1) = v5;
      *(v7 + 68) = 0;
      *(v7 + 70) = 0;
      *(v7 + 69) = 0;
      IPC::Encoder::encodeHeader(v7);
      v13 = v7;
      IPC::Encoder::operator<<<BOOL &>(v7, &v12);
      (*(*(v3 + 16) + 32))(v3 + 16, &v13, 0);
      v9 = v13;
      v13 = 0;
      if (v9)
      {
        IPC::Encoder::~Encoder(v9, v8);
        bmalloc::api::tzoneFree(v10, v11);
      }

      CFRelease(*(v3 - 8));
    }
  }
}

void WebKit::WebChromeClient::enterVideoFullscreenForVideoElement(WebKit::WebChromeClient *this, WebCore::HTMLVideoElement *a2, WTF::String *a3, char a4)
{
  v4 = *(this + 2);
  if (v4)
  {
    v5 = *(v4 + 8);
    if (v5)
    {
      CFRetain(*(v5 - 8));
      v9 = WebKit::WebPage::videoPresentationManager((v5 - 16));
      WebKit::VideoPresentationManager::enterVideoFullscreenForVideoElement(v9, a2, a3, a4);
      v10 = *(v5 - 8);

      CFRelease(v10);
    }
  }
}

void WebKit::WebChromeClient::setPlayerIdentifierForVideoElement(WebKit::WebChromeClient *this, WebCore::HTMLVideoElement *a2)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      CFRetain(*(v3 - 8));
      v5 = WebKit::WebPage::videoPresentationManager((v3 - 16));
      WebKit::VideoPresentationManager::setPlayerIdentifierForVideoElement(v5, a2);
      v6 = *(v3 - 8);

      CFRelease(v6);
    }
  }
}

void WebKit::WebChromeClient::exitVideoFullscreenForVideoElement(uint64_t a1, uint64_t a2, WTF::RefCountedBase *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      CFRetain(*(v4 - 8));
      v7 = WebKit::WebPage::videoPresentationManager((v4 - 16));
      WebKit::VideoPresentationManager::exitVideoFullscreenForVideoElement(v7, a2, a3);
      v8 = *(v4 - 8);

      CFRelease(v8);
    }
  }
}

void WebKit::WebChromeClient::setUpPlaybackControlsManager(WebKit::WebChromeClient *this, WebCore::HTMLMediaElement *a2)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      CFRetain(*(v3 - 8));
      v5 = WebKit::WebPage::playbackSessionManager((v3 - 16));
      WebKit::PlaybackSessionManager::setUpPlaybackControlsManager(v5, a2);
      v6 = *(v3 - 8);

      CFRelease(v6);
    }
  }
}

void WebKit::WebChromeClient::clearPlaybackControlsManager(WebKit::WebChromeClient *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      CFRetain(*(v2 - 8));
      v3 = WebKit::WebPage::playbackSessionManager((v2 - 16));
      WebKit::PlaybackSessionManager::clearPlaybackControlsManager(v3);
      v4 = *(v2 - 8);

      CFRelease(v4);
    }
  }
}

void WebKit::WebChromeClient::mediaEngineChanged(WebKit::WebChromeClient *this, WebCore::HTMLMediaElement *a2)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      CFRetain(*(v3 - 8));
      v5 = WebKit::WebPage::playbackSessionManager((v3 - 16));
      WebKit::PlaybackSessionManager::mediaEngineChanged(v5, a2);
      v6 = *(v3 - 8);

      CFRelease(v6);
    }
  }
}

void WebKit::WebChromeClient::exitVideoFullscreenToModeWithoutAnimation(WebKit::WebChromeClient *this, WebCore::HTMLVideoElement *a2, int a3)
{
  v3 = *(this + 2);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      CFRetain(*(v4 - 8));
      v7 = WebKit::WebPage::videoPresentationManager((v4 - 16));
      WebKit::VideoPresentationManager::exitVideoFullscreenToModeWithoutAnimation(v7, a2, a3);
      v8 = *(v4 - 8);

      CFRelease(v8);
    }
  }
}

uint64_t WebKit::WebChromeClient::supportsFullScreenForElement(WebKit::WebChromeClient *this, const WebCore::Element *a2, int a3)
{
  v3 = *(this + 2);
  if (!v3)
  {
    return 0;
  }

  v4 = *(v3 + 8);
  if (!v4)
  {
    return 0;
  }

  CFRetain(*(v4 - 8));
  v6 = WebKit::WebPage::fullScreenManager((v4 - 16));
  isDocumentFullscreenEnabled = WebCore::Page::isDocumentFullscreenEnabled(*(*(v6 + 8) + 56));
  if (isDocumentFullscreenEnabled)
  {
    v8 = PAL::currentUserInterfaceIdiomIsDesktop(isDocumentFullscreenEnabled) | a3 ^ 1;
  }

  else
  {
    v8 = 0;
  }

  CFRelease(*(v4 - 8));
  return v8;
}

void WebKit::WebChromeClient::enterFullScreenForElement(uint64_t a1, uint64_t a2, int a3, uint64_t *a4, uint64_t *a5)
{
  v10 = *(a1 + 16);
  if (v10 && (v11 = *(v10 + 8)) != 0)
  {
    v12 = (v11 - 16);
    CFRetain(*(v11 - 8));
    v13 = 0;
  }

  else
  {
    v12 = 0;
    v13 = 1;
  }

  v14 = WebKit::WebPage::fullScreenManager(v12);
  WebKit::WebFullScreenManager::enterFullScreenForElement(v14, a2, a3, a4, a5);
  if ((*(a2 + 32) & 0x10) != 0 && *(*(a2 + 104) + 24) == *(*MEMORY[0x1E69E2D10] + 24))
  {
    v15 = *(a2 + 28);
    *(a2 + 28) = v15 + 2;
    if (a3 == 4)
    {
      v16 = *(a1 + 16);
      if (v16)
      {
        v17 = *(v16 + 8);
        if (v17)
        {
          CFRetain(*(v17 - 8));
          v18 = WebKit::WebPage::videoPresentationManager((v17 - 16));
          WebKit::VideoPresentationManager::setVideoFullscreenMode(v18, a2, 4);
          CFRelease(*(v17 - 8));
          v15 = *(a2 + 28) - 2;
        }
      }
    }

    if (!v15)
    {
      WebCore::Node::removedLastRef(a2);
      if (v13)
      {
        return;
      }

      goto LABEL_14;
    }

    *(a2 + 28) = v15;
  }

  if (v13)
  {
    return;
  }

LABEL_14:
  v19 = *(v12 + 1);

  CFRelease(v19);
}

void WebKit::WebChromeClient::exitFullScreenForElement(uint64_t a1, WebCore::Node *this, uint64_t *a3)
{
  v4 = this;
  v6 = MEMORY[0x1E69E2D10];
  if (this && (*(this + 16) & 0x10) != 0 && *(*(this + 13) + 24) == *(*MEMORY[0x1E69E2D10] + 24))
  {
    v7 = *(this + 7);
    *(this + 7) = v7 + 2;
    v8 = *(this + 254) == 4;
    if (v7)
    {
      *(this + 7) = v7;
    }

    else
    {
      WebCore::Node::removedLastRef(this);
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = *(v9 + 8);
    if (v10)
    {
      CFRetain(*(v10 - 8));
      v11 = WebKit::WebPage::fullScreenManager((v10 - 16));
      WebKit::WebFullScreenManager::exitFullScreenForElement(v11, v4, a3);
      CFRelease(*(v10 - 8));
    }
  }

  if (v8)
  {
    if (*(*(v4 + 13) + 24) != *(*v6 + 24))
    {
      v4 = 0;
    }

    v12 = *(a1 + 16);
    if (v12)
    {
      v13 = *(v12 + 8);
      if (v13)
      {
        CFRetain(*(v13 - 8));
        v14 = WebKit::WebPage::videoPresentationManager((v13 - 16));
        WebKit::VideoPresentationManager::clearVideoFullscreenMode(v14, v4, 4);
        v15 = *(v13 - 8);

        CFRelease(v15);
      }
    }
  }
}

float WebKit::WebChromeClient::screenSize(WebKit::WebChromeClient *this)
{
  v1 = *(this + 2);
  v2 = 0.0;
  if (v1)
  {
    v3 = *(v1 + 8);
    if (v3)
    {
      CFRetain(*(v3 - 8));
      v2 = *(v3 + 1288);
      CFRelease(*(v3 - 8));
    }
  }

  return v2;
}

float WebKit::WebChromeClient::availableScreenSize(WebKit::WebChromeClient *this)
{
  v1 = *(this + 2);
  v2 = 0.0;
  if (v1)
  {
    v3 = *(v1 + 8);
    if (v3)
    {
      CFRetain(*(v3 - 8));
      v2 = *(v3 + 1296);
      CFRelease(*(v3 - 8));
    }
  }

  return v2;
}

float WebKit::WebChromeClient::overrideScreenSize(WebKit::WebChromeClient *this)
{
  v1 = *(this + 2);
  v2 = 0.0;
  if (v1)
  {
    v3 = *(v1 + 8);
    if (v3)
    {
      CFRetain(*(v3 - 8));
      v2 = *(v3 + 1304);
      CFRelease(*(v3 - 8));
    }
  }

  return v2;
}

float WebKit::WebChromeClient::overrideAvailableScreenSize(WebKit::WebChromeClient *this)
{
  v1 = *(this + 2);
  v2 = 0.0;
  if (v1)
  {
    v3 = *(v1 + 8);
    if (v3)
    {
      CFRetain(*(v3 - 8));
      v2 = *(v3 + 1312);
      CFRelease(*(v3 - 8));
    }
  }

  return v2;
}

float WebKit::WebChromeClient::screenSizeForFingerprintingProtections(uint64_t a1, float a2)
{
  v2 = *(a1 + 16);
  v3 = 0.0;
  if (v2)
  {
    v4 = *(v2 + 8);
    if (v4)
    {
      v6 = CFRetain(*(v4 - 8));
      if (PAL::currentUserInterfaceIdiomIsSmallScreen(v6))
      {
        v7 = &dword_19E70433C;
        v8 = 32;
        while (1)
        {
          v3 = *(v7 - 1);
          if (a2 <= v3)
          {
            break;
          }

          v7 += 2;
          v8 -= 8;
          if (!v8)
          {
            v3 = 414.0;
            break;
          }
        }
      }

      else
      {
        v3 = *(v4 + 1048);
      }

      CFRelease(*(v4 - 8));
    }
  }

  return v3;
}

void WebKit::WebChromeClient::dispatchDisabledAdaptationsDidChange(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      CFRetain(*(v2 - 8));
      if (WebCore::ViewportConfiguration::setDisabledAdaptations())
      {
        WebKit::WebPage::viewportConfigurationChanged(v2 - 16, 0);
      }

      v3 = *(v2 - 8);

      CFRelease(v3);
    }
  }
}

void WebKit::WebChromeClient::dispatchViewportPropertiesDidChange(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      CFRetain(*(v2 - 8));
      if (WebCore::ViewportConfiguration::setViewportArguments())
      {
        WebKit::WebPage::viewportConfigurationChanged(v2 - 16, 0);
      }

      v3 = *(v2 - 8);

      CFRelease(v3);
    }
  }
}

void WebKit::WebChromeClient::notifyScrollerThumbIsVisibleInRect(WebKit::WebChromeClient *this, const WebCore::IntRect *a2)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      CFRetain(*(v3 - 8));
      v5 = (*(*(v3 + 16) + 56))(v3 + 16);
      v7 = IPC::Encoder::operator new(0x238, v6);
      *v7 = 2303;
      *(v7 + 2) = 0;
      *(v7 + 3) = 0;
      *(v7 + 1) = v5;
      *(v7 + 68) = 0;
      *(v7 + 70) = 0;
      *(v7 + 69) = 0;
      IPC::Encoder::encodeHeader(v7);
      v12 = v7;
      IPC::ArgumentCoder<WebCore::IntRect,void>::encode(v7, a2);
      (*(*(v3 + 16) + 32))(v3 + 16, &v12, 0);
      v9 = v12;
      v12 = 0;
      if (v9)
      {
        IPC::Encoder::~Encoder(v9, v8);
        bmalloc::api::tzoneFree(v10, v11);
      }

      CFRelease(*(v3 - 8));
    }
  }
}

void WebKit::WebChromeClient::recommendedScrollbarStyleDidChange(uint64_t a1, int a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      CFRetain(*(v3 - 8));
      v5 = (*(*(v3 + 16) + 56))(v3 + 16);
      v7 = IPC::Encoder::operator new(0x238, v6);
      *v7 = 2314;
      *(v7 + 2) = 0;
      *(v7 + 3) = 0;
      *(v7 + 1) = v5;
      *(v7 + 68) = 0;
      *(v7 + 70) = 0;
      *(v7 + 69) = 0;
      IPC::Encoder::encodeHeader(v7);
      v12 = v7;
      IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v7, a2);
      (*(*(v3 + 16) + 32))(v3 + 16, &v12, 0);
      v9 = v12;
      v12 = 0;
      if (v9)
      {
        IPC::Encoder::~Encoder(v9, v8);
        bmalloc::api::tzoneFree(v10, v11);
      }

      CFRelease(*(v3 - 8));
    }
  }
}

uint64_t WebKit::WebChromeClient::preferredScrollbarOverlayStyle(WebKit::WebChromeClient *this)
{
  v1 = *(this + 2);
  if (v1 && (v2 = *(v1 + 8)) != 0)
  {
    CFRetain(*(v2 - 8));
    v3 = *(v2 + 1708);
    v4 = v3 >> 8;
    CFRelease(*(v2 - 8));
  }

  else
  {
    LOBYTE(v3) = 0;
    v4 = 0;
  }

  return v3 | (v4 << 8);
}

void WebKit::WebChromeClient::underlayColor(WebKit::WebChromeClient *this@<X0>, void *a2@<X8>)
{
  v3 = *(this + 2);
  if (v3 && (v4 = *(v3 + 8)) != 0)
  {
    CFRetain(*(v4 - 8));
    v5 = *(v4 + 136);
    *a2 = v5;
    if ((v5 & 0x8000000000000) != 0)
    {
      atomic_fetch_add((v5 & 0xFFFFFFFFFFFFLL), 1u);
    }

    v6 = *(v4 - 8);

    CFRelease(v6);
  }

  else
  {
    *a2 = 0;
  }
}

void WebKit::WebChromeClient::themeColorChanged(WebKit::WebChromeClient *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      CFRetain(*(v2 - 8));
      *(v2 + 905) = 1;
      v3 = *(v2 - 8);

      CFRelease(v3);
    }
  }
}

void WebKit::WebChromeClient::pageExtendedBackgroundColorDidChange(WebKit::WebChromeClient *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      CFRetain(*(v2 - 8));
      *(v2 + 906) = 1;
      v3 = *(v2 - 8);

      CFRelease(v3);
    }
  }
}

void WebKit::WebChromeClient::sampledPageTopColorChanged(WebKit::WebChromeClient *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      CFRetain(*(v2 - 8));
      *(v2 + 907) = 1;
      v3 = *(v2 - 8);

      CFRelease(v3);
    }
  }
}

uint64_t WebKit::WebChromeClient::appHighlightsVisiblility(WebKit::WebChromeClient *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    v1 = *(v1 + 8);
    if (v1)
    {
      LOBYTE(v1) = *(v1 + 2080);
    }
  }

  return v1 & 1;
}

void WebKit::WebChromeClient::wheelEventHandlersChanged(WebKit::WebChromeClient *this, int a2)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      CFRetain(*(v3 - 8));
      if (*(v3 + 813) != a2)
      {
        *(v3 + 813) = a2;
        WebKit::WebPage::recomputeShortCircuitHorizontalWheelEventsState((v3 - 16));
      }

      v5 = *(v3 - 8);

      CFRelease(v5);
    }
  }
}

void WebKit::WebChromeClient::enableSuddenTermination(WebKit::WebChromeClient *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      CFRetain(*(v2 - 8));
      v3 = (*(*(v2 + 16) + 56))(v2 + 16);
      v5 = IPC::Encoder::operator new(0x238, v4);
      *v5 = 2915;
      *(v5 + 2) = 0;
      *(v5 + 3) = 0;
      *(v5 + 1) = v3;
      *(v5 + 68) = 0;
      *(v5 + 70) = 0;
      *(v5 + 69) = 0;
      IPC::Encoder::encodeHeader(v5);
      v10 = v5;
      (*(*(v2 + 16) + 32))(v2 + 16, &v10, 0);
      v7 = v10;
      v10 = 0;
      if (v7)
      {
        IPC::Encoder::~Encoder(v7, v6);
        bmalloc::api::tzoneFree(v8, v9);
      }

      CFRelease(*(v2 - 8));
    }
  }
}

void WebKit::WebChromeClient::disableSuddenTermination(WebKit::WebChromeClient *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      CFRetain(*(v2 - 8));
      v3 = (*(*(v2 + 16) + 56))(v2 + 16);
      v5 = IPC::Encoder::operator new(0x238, v4);
      *v5 = 2914;
      *(v5 + 2) = 0;
      *(v5 + 3) = 0;
      *(v5 + 1) = v3;
      *(v5 + 68) = 0;
      *(v5 + 70) = 0;
      *(v5 + 69) = 0;
      IPC::Encoder::encodeHeader(v5);
      v10 = v5;
      (*(*(v2 + 16) + 32))(v2 + 16, &v10, 0);
      v7 = v10;
      v10 = 0;
      if (v7)
      {
        IPC::Encoder::~Encoder(v7, v6);
        bmalloc::api::tzoneFree(v8, v9);
      }

      CFRelease(*(v2 - 8));
    }
  }
}

uint64_t WebKit::WebChromeClient::shouldUseTiledBackingForFrameView(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 8);
  if (!v3)
  {
    return 0;
  }

  CFRetain(*(v3 - 8));
  v5 = (*(**(v3 + 56) + 240))(*(v3 + 56), a2);
  CFRelease(*(v3 - 8));
  return v5;
}

void WebKit::WebChromeClient::frameViewLayoutOrVisualViewportChanged(WebKit::WebChromeClient *this, const WebCore::LocalFrameView *a2)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      CFRetain(*(v3 - 8));
      WebKit::WebPage::frameViewLayoutOrVisualViewportChanged((v3 - 16), a2);
      v5 = *(v3 - 8);

      CFRelease(v5);
    }
  }
}

void WebKit::WebChromeClient::isAnyAnimationAllowedToPlayDidChange(WebKit::WebChromeClient *this, char a2)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      CFRetain(*(v3 - 8));
      WebKit::WebPage::isAnyAnimationAllowedToPlayDidChange((v3 - 16), a2);
      v5 = *(v3 - 8);

      CFRelease(v5);
    }
  }
}

void WebKit::WebChromeClient::resolveAccessibilityHitTestForTesting(uint64_t a1, uint64_t a2, int *a3, uint64_t *a4)
{
  v5 = *(a1 + 16);
  if (v5 && (v6 = *(v5 + 8)) != 0)
  {
    CFRetain(*(v6 - 8));
    v9 = (*(*(v6 + 16) + 56))(v6 + 16);
    v11 = IPC::Encoder::operator new(0x238, v10);
    *v11 = 2336;
    *(v11 + 2) = 0;
    *(v11 + 3) = 0;
    *(v11 + 1) = v9;
    *(v11 + 68) = 0;
    *(v11 + 70) = 0;
    *(v11 + 69) = 0;
    IPC::Encoder::encodeHeader(v11);
    v23 = v11;
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v11, a2);
    IPC::ArgumentCoder<WebCore::IntPoint,void>::encode(v11, a3);
    v12 = *a4;
    *a4 = 0;
    v13 = WTF::fastMalloc(0x10);
    *v13 = &unk_1F1130B78;
    v13[1] = v12;
    if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
    {
      __break(0xC471u);
    }

    else
    {
      v22[0] = v13;
      v22[1] = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
      (*(*(v6 + 16) + 40))(v6 + 16, &v23, v22, 0);
      v15 = v22[0];
      v22[0] = 0;
      if (v15)
      {
        (*(*v15 + 8))(v15);
      }

      v16 = v23;
      v23 = 0;
      if (v16)
      {
        IPC::Encoder::~Encoder(v16, v14);
        bmalloc::api::tzoneFree(v19, v20);
      }

      CFRelease(*(v6 - 8));
    }
  }

  else
  {
    v21 = 0;
    WTF::CompletionHandler<void ()(WTF::String)>::operator()(a4, &v21);
    v18 = v21;
    v21 = 0;
    if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v18, v17);
    }
  }
}

void WebKit::WebChromeClient::isPlayingMediaDidChange(uint64_t a1, int a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      CFRetain(*(v3 - 8));
      WebKit::WebPage::isPlayingMediaDidChange(v3 - 16, a2);
      v5 = *(v3 - 8);

      CFRelease(v5);
    }
  }
}

void WebKit::WebChromeClient::handleAutoplayEvent(uint64_t a1, char a2, char a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      CFRetain(*(v4 - 8));
      v7 = (*(*(v4 + 16) + 56))(v4 + 16);
      v9 = IPC::Encoder::operator new(0x238, v8);
      *v9 = 2263;
      *(v9 + 2) = 0;
      *(v9 + 3) = 0;
      *(v9 + 1) = v7;
      *(v9 + 68) = 0;
      *(v9 + 70) = 0;
      *(v9 + 69) = 0;
      IPC::Encoder::encodeHeader(v9);
      v14 = v9;
      v15 = a2;
      IPC::Encoder::operator<<<unsigned char>(v9, &v15);
      v16 = a3;
      IPC::Encoder::operator<<<unsigned char>(v9, &v16);
      (*(*(v4 + 16) + 32))(v4 + 16, &v14, 0);
      v11 = v14;
      v14 = 0;
      if (v11)
      {
        IPC::Encoder::~Encoder(v11, v10);
        bmalloc::api::tzoneFree(v12, v13);
      }

      CFRelease(*(v4 - 8));
    }
  }
}

void WebKit::WebChromeClient::setTextIndicator(WebKit::WebChromeClient *this, const WebCore::TextIndicatorData *a2)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      CFRetain(*(v3 - 8));
      WebKit::WebPage::setTextIndicator((v3 - 16), a2);
      v5 = *(v3 - 8);

      CFRelease(v5);
    }
  }
}

void WebKit::WebChromeClient::updateTextIndicator(WebKit::WebChromeClient *this, const WebCore::TextIndicatorData *a2)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      CFRetain(*(v3 - 8));
      WebKit::WebPage::updateTextIndicator((v3 - 16), a2);
      v5 = *(v3 - 8);

      CFRelease(v5);
    }
  }
}

void WebKit::WebChromeClient::handleClickForDataDetectionResult(uint64_t a1, int *a2, int *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      CFRetain(*(v4 - 8));
      v9[0] = a2;
      v9[1] = a3;
      v7 = (*(*(v4 + 16) + 56))(v4 + 16);
      IPC::MessageSender::send<Messages::WebPageProxy::HandleClickForDataDetectionResult>(v4 + 16, v9, v7, 0);
      v8 = *(v4 - 8);

      CFRelease(v8);
    }
  }
}

uint64_t WebKit::WebChromeClient::shouldDispatchFakeMouseMoveEvents(WebKit::WebChromeClient *this)
{
  v1 = *(this + 2);
  if (v1 && (v2 = *(v1 + 8)) != 0)
  {
    CFRetain(*(v2 - 8));
    v3 = *(v2 + 1729);
    CFRelease(*(v2 - 8));
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t WebKit::userDataFromJSONData@<X0>(uint64_t this@<X0>, WTF::JSONImpl::Value *a2@<X1>, API::Object **a3@<X8>)
{
  v3 = this;
  v5 = *(this + 4);
  if (v5 <= 2)
  {
    switch(v5)
    {
      case 0:
        v23 = API::Object::newObject(0x18uLL, 20);
        this = API::Object::Object(v23);
        *this = &unk_1F10E83D8;
        *(this + 16) = 0;
LABEL_38:
        *a3 = this;
        return this;
      case 1:
        v37 = WTF::JSONImpl::Value::asBoolean(this);
        if ((v37 & 0x100) != 0)
        {
          v38 = v37;
          v39 = API::Object::newObject(0x18uLL, 31);
          *(v39 + 16) = v38 & 1;
          this = API::Object::Object(v39);
          v11 = &unk_1F10E82D8;
          goto LABEL_37;
        }

LABEL_76:
        __break(1u);
        goto LABEL_77;
      case 2:
        v7 = WTF::JSONImpl::Value::asDouble(this);
        if (v8)
        {
          v9 = v7;
          v10 = API::Object::newObject(0x18uLL, 32);
          *(v10 + 2) = v9;
          this = API::Object::Object(v10);
          v11 = &unk_1F10E8350;
LABEL_37:
          *this = v11;
          goto LABEL_38;
        }

        goto LABEL_76;
    }

    goto LABEL_24;
  }

  if (v5 <= 4)
  {
    if (v5 != 3)
    {
      WTF::JSONImpl::Value::asString(&v48, this);
      API::String::create(&v48, &v50);
      *a3 = v50;
      v50 = 0;
      this = v48;
      v48 = 0;
      if (this)
      {
        if (atomic_fetch_add_explicit(this, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(this, v6);
        }
      }

      return this;
    }

    v24 = WTF::JSONImpl::Value::asInteger(this);
    if ((v24 & 0x100000000) != 0)
    {
      v25 = v24;
      v26 = API::Object::newObject(0x18uLL, 34);
      *(v26 + 2) = v25;
      this = API::Object::Object(v26);
      v11 = &unk_1F10E7D08;
      goto LABEL_37;
    }

    goto LABEL_76;
  }

  if (v5 != 5)
  {
    if (v5 == 6)
    {
      v12 = *this;
      v50 = 0;
      v51 = 0;
      v13 = v12 + 2;
      *this = v13;
      v14 = *(this + 28);
      if (v14)
      {
        v15 = *(this + 16);
        v16 = 8 * v14;
        do
        {
          WebKit::userDataFromJSONData(&v48, *v15, a2);
          LODWORD(v17) = HIDWORD(v51);
          if (HIDWORD(v51) == v51)
          {
            v20 = WTF::Vector<WTF::Ref<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v50, HIDWORD(v51) + 1, &v48);
            v17 = HIDWORD(v51);
            v21 = v50;
            v22 = *v20;
            *v20 = 0;
            *(v21 + v17) = v22;
          }

          else
          {
            v18 = v48;
            v48 = 0;
            *(v50 + HIDWORD(v51)) = v18;
          }

          HIDWORD(v51) = v17 + 1;
          v19 = v48;
          v48 = 0;
          if (v19)
          {
            CFRelease(*(v19 + 1));
          }

          ++v15;
          v16 -= 8;
        }

        while (v16);
        v13 = *v3;
      }

      v40 = v13 - 1;
      if (v40)
      {
        *v3 = v40;
      }

      else
      {
        WTF::JSONImpl::Value::operator delete();
      }

      API::Array::create(&v50, a3);
      this = WTF::Vector<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v50, v41);
      if (*v3 == 1)
      {
        return WTF::JSONImpl::Value::operator delete();
      }

      --*v3;
      return this;
    }

LABEL_24:
    *a3 = 0;
    return this;
  }

  v27 = API::Object::newObject(0x18uLL, 9);
  this = API::Object::Object(v27);
  v29 = 0;
  *this = &unk_1F110EAE0;
  *(this + 16) = 0;
  v30 = (this + 16);
  v31 = v3[1];
  if (v31 >= 5 && v31 != 6)
  {
    if (v31 != 5)
    {
LABEL_77:
      this = 502;
      __break(0xC471u);
      return this;
    }

    ++*v3;
    v29 = v3;
  }

  v32 = *(v29 + 2);
  if (!v32)
  {
    v34 = 0;
    v33 = 0;
    goto LABEL_44;
  }

  v33 = *(v32 - 4);
  v34 = (v32 + 16 * v33);
  if (!*(v32 - 12))
  {
LABEL_44:
    v36 = v34;
    v34 = (v32 + 16 * v33);
    goto LABEL_45;
  }

  if (!v33)
  {
    v36 = *(v29 + 2);
    goto LABEL_51;
  }

  v35 = 16 * v33;
  v36 = *(v29 + 2);
  while (*v36 + 1 <= 1)
  {
    v36 += 2;
    v35 -= 16;
    if (!v35)
    {
      v36 = v34;
      break;
    }
  }

LABEL_45:
  if (!v32)
  {
    v42 = 0;
    goto LABEL_52;
  }

LABEL_51:
  v42 = (v32 + 16 * *(v32 - 4));
LABEL_52:
  if (v42 == v36)
  {
    goto LABEL_69;
  }

  do
  {
    v43 = *v36;
    if (*v36)
    {
      atomic_fetch_add_explicit(v43, 2u, memory_order_relaxed);
    }

    v48 = v43;
    v44 = v36[1];
    ++*v44;
    v49 = v44;
    WebKit::userDataFromJSONData(&v47, v44, v28);
    WTF::HashMap<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>(v30, &v48, &v47, &v50);
    v45 = v47;
    v47 = 0;
    if (v45)
    {
      CFRelease(*(v45 + 8));
    }

    v46 = v49;
    v49 = 0;
    if (v46)
    {
      if (*v46 == 1)
      {
        WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*v46;
      }
    }

    this = v48;
    v48 = 0;
    if (this && atomic_fetch_add_explicit(this, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      this = WTF::StringImpl::destroy(this, v28);
    }

    do
    {
      v36 += 2;
    }

    while (v36 != v34 && *v36 + 1 <= 1);
  }

  while (v36 != v42);
  if (v29)
  {
LABEL_69:
    if (*v29 == 1)
    {
      this = WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v29;
    }
  }

  *a3 = v27;
  return this;
}

void WebKit::WebChromeClient::handleAutoFillButtonClick(WebKit::WebChromeClient *this, WebCore::HTMLInputElement *a2)
{
  v2 = *(this + 2);
  if (!v2)
  {
    return;
  }

  v3 = *(v2 + 8);
  if (!v3)
  {
    return;
  }

  CFRetain(*(v3 - 8));
  v26 = 0;
  WebKit::InjectedBundleNodeHandle::getOrCreate(a2, &v25);
  v5 = v25;
  (*(**(v3 + 384) + 136))(*(v3 + 384), v3 - 16, v25, &v26);
  if (!v26)
  {
    WebCore::Element::userInfo(&v27, a2);
    if (v27)
    {
      WebCore::Element::userInfo(&v23, a2);
      WTF::JSONImpl::Value::parseJSON();
      v16 = v23;
      v23 = 0;
      if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v16, v6);
      }

      if (v24)
      {
        WebKit::userDataFromJSONData(v24, v6, &v23);
        v17 = v26;
        v26 = v23;
        if (v17)
        {
          CFRelease(*(v17 + 1));
        }

        v18 = v24;
        v24 = 0;
        if (v18)
        {
          if (*v18 == 1)
          {
            WTF::JSONImpl::Value::operator delete();
          }

          else
          {
            --*v18;
          }
        }
      }

      v19 = v27;
      v27 = 0;
      if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v19, v6);
      }
    }
  }

  v7 = v3 + 16;
  {
    v22 = WebKit::WebProcess::operator new(0x370, v6);
    WebKit::WebProcess::singleton(void)::process = WebKit::WebProcess::WebProcess(v22);
  }

  v27 = &unk_1F1122420;
  WebKit::UserData::transform(v26, &v27, &v23);
  v8 = v23;
  if (v23)
  {
    CFRetain(*(v23 + 1));
  }

  v24 = v8;
  v9 = (*(*v7 + 56))(v3 + 16);
  v11 = IPC::Encoder::operator new(0x238, v10);
  *v11 = 2261;
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *(v11 + 1) = v9;
  *(v11 + 68) = 0;
  *(v11 + 70) = 0;
  *(v11 + 69) = 0;
  IPC::Encoder::encodeHeader(v11);
  v27 = v11;
  IPC::ArgumentCoder<WebKit::UserData,void>::encode(v11, &v24);
  (*(*v7 + 32))(v3 + 16, &v27, 0);
  v13 = v27;
  v27 = 0;
  if (v13)
  {
    IPC::Encoder::~Encoder(v13, v12);
    bmalloc::api::tzoneFree(v20, v21);
    if (!v8)
    {
      goto LABEL_10;
    }
  }

  else if (!v8)
  {
    goto LABEL_10;
  }

  CFRelease(v8[1]);
LABEL_10:
  v14 = v23;
  v23 = 0;
  if (v14)
  {
    CFRelease(*(v14 + 1));
    if (!v5)
    {
      goto LABEL_12;
    }

LABEL_32:
    CFRelease(*(v5 + 1));
    goto LABEL_12;
  }

  if (v5)
  {
    goto LABEL_32;
  }

LABEL_12:
  v15 = v26;
  v26 = 0;
  if (v15)
  {
    CFRelease(*(v15 + 1));
  }

  CFRelease(*(v3 - 8));
}

void WebKit::WebChromeClient::inputElementDidResignStrongPasswordAppearance(WebKit::WebChromeClient *this, WebCore::HTMLInputElement *a2)
{
  v2 = *(this + 2);
  if (!v2)
  {
    return;
  }

  v3 = *(v2 + 8);
  if (!v3)
  {
    return;
  }

  CFRetain(*(v3 - 8));
  v22 = 0;
  WebKit::InjectedBundleNodeHandle::getOrCreate(a2, &v21);
  v5 = v21;
  (*(**(v3 + 384) + 144))(*(v3 + 384), v3 - 16, v21, &v22);
  v7 = v3 + 16;
  {
    v18 = WebKit::WebProcess::operator new(0x370, v6);
    WebKit::WebProcess::singleton(void)::process = WebKit::WebProcess::WebProcess(v18);
  }

  v23 = &unk_1F1122420;
  WebKit::UserData::transform(v22, &v23, &v19);
  v8 = v19;
  if (v19)
  {
    CFRetain(v19[1]);
  }

  v20 = v8;
  v9 = (*(*v7 + 56))(v3 + 16);
  v11 = IPC::Encoder::operator new(0x238, v10);
  *v11 = 2227;
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *(v11 + 1) = v9;
  *(v11 + 68) = 0;
  *(v11 + 70) = 0;
  *(v11 + 69) = 0;
  IPC::Encoder::encodeHeader(v11);
  v23 = v11;
  IPC::ArgumentCoder<WebKit::UserData,void>::encode(v11, &v20);
  (*(*v7 + 32))(v3 + 16, &v23, 0);
  v13 = v23;
  v23 = 0;
  if (v13)
  {
    IPC::Encoder::~Encoder(v13, v12);
    bmalloc::api::tzoneFree(v16, v17);
    if (!v8)
    {
      goto LABEL_9;
    }
  }

  else if (!v8)
  {
    goto LABEL_9;
  }

  CFRelease(v8[1]);
LABEL_9:
  v14 = v19;
  v19 = 0;
  if (v14)
  {
    CFRelease(v14[1]);
    if (!v5)
    {
      goto LABEL_11;
    }

LABEL_18:
    CFRelease(*(v5 + 1));
    goto LABEL_11;
  }

  if (v5)
  {
    goto LABEL_18;
  }

LABEL_11:
  v15 = v22;
  v22 = 0;
  if (v15)
  {
    CFRelease(*(v15 + 1));
  }

  CFRelease(*(v3 - 8));
}

void WebKit::WebChromeClient::performSwitchHapticFeedback(WebKit::WebChromeClient *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      CFRetain(*(v2 - 8));
      v3 = (*(*(v2 + 16) + 56))(v2 + 16);
      v5 = IPC::Encoder::operator new(0x238, v4);
      *v5 = 2308;
      *(v5 + 2) = 0;
      *(v5 + 3) = 0;
      *(v5 + 1) = v3;
      *(v5 + 68) = 0;
      *(v5 + 70) = 0;
      *(v5 + 69) = 0;
      IPC::Encoder::encodeHeader(v5);
      v10 = v5;
      (*(*(v2 + 16) + 32))(v2 + 16, &v10, 0);
      v7 = v10;
      v10 = 0;
      if (v7)
      {
        IPC::Encoder::~Encoder(v7, v6);
        bmalloc::api::tzoneFree(v8, v9);
      }

      CFRelease(*(v2 - 8));
    }
  }
}

void WebKit::WebChromeClient::imageOrMediaDocumentSizeChanged(WebKit::WebChromeClient *this, const WebCore::IntSize *a2)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      CFRetain(*(v3 - 8));
      WebKit::WebPage::imageOrMediaDocumentSizeChanged((v3 - 16), a2);
      v5 = *(v3 - 8);

      CFRelease(v5);
    }
  }
}

void WebKit::WebChromeClient::didInvalidateDocumentMarkerRects(WebKit::WebChromeClient *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      CFRetain(*(v2 - 8));
      WebKit::FindController::didInvalidateFindRects(*(v2 + 392));
      v3 = *(v2 - 8);

      CFRelease(v3);
    }
  }
}

void WebKit::WebChromeClient::hasStorageAccess(uint64_t a1, WebCore::RegistrableDomain *a2, WTF **a3, uint64_t a4, uint64_t *a5)
{
  WebKit::WebFrame::fromCoreFrame(a4, &v14);
  v9 = *(a1 + 16);
  if (v9 && (v10 = *(v9 + 8)) != 0)
  {
    CFRetain(*(v10 - 8));
    v11 = v14;
    WebKit::WebPage::hasStorageAccess((v10 - 16), a2, a3, v14, a5);
    CFRelease(*(v10 - 8));
    if (!v11)
    {
      return;
    }
  }

  else
  {
    v13 = *a5;
    *a5 = 0;
    (*(*v13 + 16))(v13, 0);
    (*(*v13 + 8))(v13);
    v11 = v14;
    if (!v14)
    {
      return;
    }
  }

  v12 = *(v11 + 8);

  CFRelease(v12);
}

void WebKit::WebChromeClient::requestStorageAccess(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char a5, uint64_t *a6)
{
  WebKit::WebFrame::fromCoreFrame(a4, &v21);
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = *(v11 + 8);
    if (v12)
    {
      CFRetain(*(v12 - 8));
      v13 = v21;
      WebKit::WebPage::requestStorageAccess(v12 - 16, a2, a3, v21, a5, a6);
      CFRelease(*(v12 - 8));
      if (!v13)
      {
        return;
      }

      goto LABEL_4;
    }
  }

  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  WTF::CompletionHandler<void ()(WebCore::RequestStorageAccessResult)>::operator()(a6, &v17);
  v15 = v20;
  v20 = 0;
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, v14);
  }

  v16 = v19;
  v19 = 0;
  if (v16)
  {
    if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v14);
    }
  }

  v13 = v21;
  if (v21)
  {
LABEL_4:
    CFRelease(*(v13 + 8));
  }
}

void WebKit::WebChromeClient::setLoginStatus(uint64_t a1, void *a2, char a3, uint64_t *a4)
{
  v5 = *(a1 + 16);
  if (v5 && (v6 = *(v5 + 8)) != 0)
  {
    CFRetain(*(v6 - 8));
    WebKit::WebPage::setLoginStatus((v6 - 16), a2, a3, a4);
    v9 = *(v6 - 8);

    CFRelease(v9);
  }

  else
  {
    v10 = *a4;
    *a4 = 0;
    (*(*v10 + 16))(v10);
    v11 = *(*v10 + 8);

    v11(v10);
  }
}

void WebKit::WebChromeClient::isLoggedIn(uint64_t a1, void *a2, uint64_t *a3)
{
  v4 = *(a1 + 16);
  if (v4 && (v5 = *(v4 + 8)) != 0)
  {
    CFRetain(*(v5 - 8));
    WebKit::WebPage::isLoggedIn((v5 - 16), a2, a3);
    v7 = *(v5 - 8);

    CFRelease(v7);
  }

  else
  {
    v8 = *a3;
    *a3 = 0;
    (*(*v8 + 16))(v8, 0);
    v9 = *(*v8 + 8);

    v9(v8);
  }
}

uint64_t WebKit::WebChromeClient::hasPageLevelStorageAccess(WebKit::WebChromeClient *this, WTF **a2, const WebCore::RegistrableDomain *a3)
{
  v3 = *(this + 2);
  if (!v3)
  {
    return 0;
  }

  v4 = *(v3 + 8);
  if (!v4)
  {
    return 0;
  }

  CFRetain(*(v4 - 8));
  hasPageLevelStorageAccess = WebKit::WebPage::hasPageLevelStorageAccess((v4 - 16), a2, a3);
  CFRelease(*(v4 - 8));
  return hasPageLevelStorageAccess;
}

void WebKit::WebChromeClient::shouldAllowDeviceOrientationAndMotionAccess(uint64_t a1, uint64_t a2, char a3, uint64_t *a4)
{
  v29 = *MEMORY[0x1E69E9840];
  WebKit::WebFrame::fromCoreFrame(a2, &v18);
  v7 = *(a1 + 16);
  if (v7 && (v8 = *(v7 + 8)) != 0)
  {
    CFRetain(*(v8 - 8));
    v9 = v18;
    v10 = *(v18 + 11);
    WebKit::WebFrame::info(v18, 0, v22);
    v21 = v10;
    v19[0] = &v21;
    v19[1] = v22;
    v20 = a3;
    v11 = (*(*(v8 + 16) + 56))(v8 + 16);
    IPC::MessageSender::sendWithAsyncReply<Messages::WebPageProxy::ShouldAllowDeviceOrientationAndMotionAccess,WTF::CompletionHandler<void ()(WebCore::DeviceOrientationOrMotionPermissionState)>>(v8 + 16, v19, a4, v11, 0);
    v13 = cf;
    cf = 0;
    if (v13)
    {
      CFRelease(v13);
    }

    v14 = v27;
    v27 = 0;
    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v12);
    }

    if (!v26)
    {
      v15 = v25;
      v25 = 0;
      if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v15, v12);
      }

      v16 = v24;
      v24 = 0;
      if (v16)
      {
        if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v16, v12);
        }
      }
    }

    v26 = -1;
    WebCore::ResourceRequest::~ResourceRequest(&v23);
    CFRelease(*(v8 - 8));
  }

  else
  {
    v17 = *a4;
    *a4 = 0;
    (*(*v17 + 16))(v17, 1);
    (*(*v17 + 8))(v17);
    v9 = v18;
    if (!v18)
    {
      return;
    }
  }

  CFRelease(*(v9 + 1));
}

void WebKit::WebChromeClient::configureLoggingChannel(uint64_t a1, void *a2, char a3, char a4)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = *(v4 + 8);
    if (v5)
    {
      CFRetain(*(v5 - 8));
      WebKit::WebPage::configureLoggingChannel((v5 - 16), a2, a3, a4);
      v9 = *(v5 - 8);

      CFRelease(v9);
    }
  }
}

uint64_t WebKit::WebChromeClient::userIsInteracting(WebKit::WebChromeClient *this)
{
  v1 = *(this + 2);
  if (v1 && (v2 = *(v1 + 8)) != 0)
  {
    CFRetain(*(v2 - 8));
    v3 = *(v2 + 880);
    CFRelease(*(v2 - 8));
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

void WebKit::WebChromeClient::setUserIsInteracting(WebKit::WebChromeClient *this, char a2)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      CFRetain(*(v3 - 8));
      *(v3 + 880) = a2;
      v5 = *(v3 - 8);

      CFRelease(v5);
    }
  }
}

void WebKit::WebChromeClient::setMockWebAuthenticationConfiguration(WebKit::WebChromeClient *this, const WebCore::MockWebAuthenticationConfiguration *a2)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      CFRetain(*(v3 - 8));
      v5 = (*(*(v3 + 16) + 56))(v3 + 16);
      v7 = IPC::Encoder::operator new(0x238, v6);
      *v7 = 2362;
      *(v7 + 2) = 0;
      *(v7 + 3) = 0;
      *(v7 + 1) = v5;
      *(v7 + 68) = 0;
      *(v7 + 70) = 0;
      *(v7 + 69) = 0;
      IPC::Encoder::encodeHeader(v7);
      v12 = v7;
      IPC::ArgumentCoder<WebCore::MockWebAuthenticationConfiguration,void>::encode(v7, a2);
      (*(*(v3 + 16) + 32))(v3 + 16, &v12, 0);
      v9 = v12;
      v12 = 0;
      if (v9)
      {
        IPC::Encoder::~Encoder(v9, v8);
        bmalloc::api::tzoneFree(v10, v11);
      }

      CFRelease(*(v3 - 8));
    }
  }
}

void WebKit::WebChromeClient::animationDidFinishForElement(WebKit::WebChromeClient *this, const WebCore::Element *a2)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      CFRetain(*(v3 - 8));
      WebKit::WebPage::animationDidFinishForElement((v3 - 16), a2);
      v5 = *(v3 - 8);

      CFRelease(v5);
    }
  }
}

void WebKit::WebChromeClient::requestTextRecognition(uint64_t a1, WebCore::HTMLElement *a2, uint64_t a3, uint64_t *a4)
{
  v5 = *(a1 + 16);
  if (v5 && (v6 = *(v5 + 8)) != 0)
  {
    CFRetain(*(v6 - 8));
    WebKit::WebPage::requestTextRecognition(v6 - 16, a2, a3, a4);
    v9 = *(v6 - 8);

    CFRelease(v9);
  }

  else
  {
    v12 = 0;
    v10 = *a4;
    *a4 = 0;
    (*(*v10 + 16))(v10, &v12);
    (*(*v10 + 8))(v10);
    v11 = v12;
    v12 = 0;
    if (v11)
    {
      if (*(v11 + 7) == 2)
      {
        WebCore::Node::removedLastRef(v11);
      }

      else
      {
        *(v11 + 7) -= 2;
      }
    }
  }
}

void WebKit::WebChromeClient::applyLinkDecorationFilteringWithResult(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, WTF::URL *a4@<X8>)
{
  v5 = *(a1 + 16);
  if (v5 && (v6 = *(v5 + 8)) != 0)
  {
    CFRetain(*(v6 - 8));
    WebKit::WebPage::applyLinkDecorationFilteringWithResult((v6 - 16), a2, a3, a4);
    v9 = *(v6 - 8);

    CFRelease(v9);
  }

  else
  {
    *a4 = 0;
    WTF::URL::invalidate(a4);
    *(a4 + 40) = 0;
  }
}

void WebKit::WebChromeClient::allowedQueryParametersForAdvancedPrivacyProtections(WebKit::WebChromeClient *this@<X0>, const WTF::URL *a2@<X1>, WTF::URL *a3@<X8>)
{
  v4 = *(this + 2);
  if (v4 && (v5 = *(v4 + 8)) != 0)
  {
    CFRetain(*(v5 - 8));
    WebKit::WebPage::allowedQueryParametersForAdvancedPrivacyProtections((v5 - 16), a2, a3);
    v7 = *(v5 - 8);

    CFRelease(v7);
  }

  else
  {
    *a3 = 0;

    WTF::URL::invalidate(a3);
  }
}

void WebKit::WebChromeClient::didAddOrRemoveViewportConstrainedObjects(WebKit::WebChromeClient *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      CFRetain(*(v2 - 8));
      *(v2 + 1807) = 1;
      WebKit::WebPage::scheduleLayoutViewportHeightExpansionUpdate(v2 - 16);
      v3 = *(v2 - 8);

      CFRelease(v3);
    }
  }
}

void WebKit::WebChromeClient::textAutosizingUsesIdempotentModeChanged(WebKit::WebChromeClient *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      CFRetain(*(v2 - 8));
      WebKit::WebPage::textAutosizingUsesIdempotentModeChanged((v2 - 16));
      v3 = *(v2 - 8);

      CFRelease(v3);
    }
  }
}

uint64_t WebKit::WebChromeClient::needsScrollGeometryUpdates(WebKit::WebChromeClient *this)
{
  v1 = *(this + 2);
  if (v1 && (v2 = *(v1 + 8)) != 0)
  {
    CFRetain(*(v2 - 8));
    v3 = *(v2 + 887);
    CFRelease(*(v2 - 8));
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

double WebKit::WebChromeClient::baseViewportLayoutSizeScaleFactor(WebKit::WebChromeClient *this)
{
  v1 = *(this + 2);
  v2 = 0.0;
  if (v1)
  {
    v3 = *(v1 + 8);
    if (v3)
    {
      CFRetain(*(v3 - 8));
      v2 = *(v3 + 1152);
      CFRelease(*(v3 - 8));
    }
  }

  return v2;
}

void WebKit::WebChromeClient::showMediaControlsContextMenu(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = *(a1 + 16);
  if (v5 && (v6 = *(v5 + 8)) != 0)
  {
    CFRetain(*(v6 - 8));
    v13[0] = a2;
    v13[1] = a3;
    v9 = (*(*(v6 + 16) + 56))(v6 + 16);
    IPC::MessageSender::sendWithAsyncReply<Messages::WebPageProxy::ShowMediaControlsContextMenu,WTF::CompletionHandler<void ()(unsigned long long)> &>(v6 + 16, v13, a4, v9, 0);
    v10 = *(v6 - 8);

    CFRelease(v10);
  }

  else
  {
    v11 = *a4;
    *a4 = 0;
    (*(*v11 + 16))(v11, 0);
    v12 = *(*v11 + 8);

    v12(v11);
  }
}

void WebKit::WebChromeClient::startApplePayAMSUISession(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = *(a1 + 16);
  if (v5 && (v6 = *(v5 + 8)) != 0)
  {
    CFRetain(*(v6 - 8));
    v9 = (*(*(v6 + 16) + 56))(v6 + 16);
    v11 = IPC::Encoder::operator new(0x238, v10);
    *v11 = 2394;
    *(v11 + 2) = 0;
    *(v11 + 3) = 0;
    *(v11 + 1) = v9;
    *(v11 + 68) = 0;
    *(v11 + 70) = 0;
    *(v11 + 69) = 0;
    IPC::Encoder::encodeHeader(v11);
    v21 = v11;
    IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v11, a2);
    IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v11, a3);
    v12 = *a4;
    *a4 = 0;
    v13 = WTF::fastMalloc(0x10);
    *v13 = &unk_1F1130BA0;
    v13[1] = v12;
    if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
    {
      __break(0xC471u);
    }

    else
    {
      v20[0] = v13;
      v20[1] = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
      (*(*(v6 + 16) + 40))(v6 + 16, &v21, v20, 0);
      v15 = v20[0];
      v20[0] = 0;
      if (v15)
      {
        (*(*v15 + 8))(v15);
      }

      v16 = v21;
      v21 = 0;
      if (v16)
      {
        IPC::Encoder::~Encoder(v16, v14);
        bmalloc::api::tzoneFree(v18, v19);
      }

      CFRelease(*(v6 - 8));
    }
  }

  else
  {
    LOWORD(v20[0]) = 256;
    v17 = *a4;
    *a4 = 0;
    (*(*v17 + 16))(v17, v20);
    (*(*v17 + 8))(v17);
  }
}

void WebKit::WebChromeClient::abortApplePayAMSUISession(WebKit::WebChromeClient *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      CFRetain(*(v2 - 8));
      v3 = (*(*(v2 + 16) + 56))(v2 + 16);
      v5 = IPC::Encoder::operator new(0x238, v4);
      *v5 = 2144;
      *(v5 + 2) = 0;
      *(v5 + 3) = 0;
      *(v5 + 1) = v3;
      *(v5 + 68) = 0;
      *(v5 + 70) = 0;
      *(v5 + 69) = 0;
      IPC::Encoder::encodeHeader(v5);
      v10 = v5;
      (*(*(v2 + 16) + 32))(v2 + 16, &v10, 0);
      v7 = v10;
      v10 = 0;
      if (v7)
      {
        IPC::Encoder::~Encoder(v7, v6);
        bmalloc::api::tzoneFree(v8, v9);
      }

      CFRelease(*(v2 - 8));
    }
  }
}

void WebKit::WebChromeClient::beginSystemPreview(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v6 = *(a1 + 16);
  if (v6 && (v7 = *(v6 + 8)) != 0)
  {
    CFRetain(*(v7 - 8));
    v11 = (*(*(v7 + 16) + 56))(v7 + 16);
    v13 = IPC::Encoder::operator new(0x238, v12);
    *v13 = 2154;
    *(v13 + 2) = 0;
    *(v13 + 3) = 0;
    *(v13 + 1) = v11;
    *(v13 + 68) = 0;
    *(v13 + 70) = 0;
    *(v13 + 69) = 0;
    IPC::Encoder::encodeHeader(v13);
    v24 = v13;
    IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v13, a2);
    IPC::ArgumentCoder<WebCore::SecurityOriginData,void>::encode(v13, a3);
    IPC::ArgumentCoder<WebCore::SystemPreviewInfo,void>::encode(v13, a4);
    v14 = *a5;
    *a5 = 0;
    v15 = WTF::fastMalloc(0x10);
    *v15 = &unk_1F1130BC8;
    v15[1] = v14;
    if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
    {
      __break(0xC471u);
    }

    else
    {
      v23[0] = v15;
      v23[1] = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
      (*(*(v7 + 16) + 40))(v7 + 16, &v24, v23, 0);
      v17 = v23[0];
      v23[0] = 0;
      if (v17)
      {
        (*(*v17 + 8))(v17);
      }

      v18 = v24;
      v24 = 0;
      if (v18)
      {
        IPC::Encoder::~Encoder(v18, v16);
        bmalloc::api::tzoneFree(v21, v22);
      }

      CFRelease(*(v7 - 8));
    }
  }

  else
  {
    v19 = *a5;
    *a5 = 0;
    (*(*v19 + 16))(v19);
    v20 = *(*v19 + 8);

    v20(v19);
  }
}

void WebKit::WebChromeClient::requestCookieConsent(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 16);
  if (v3 && (v4 = *(v3 + 8)) != 0)
  {
    CFRetain(*(v4 - 8));
    v5 = (*(*(v4 + 16) + 56))(v4 + 16);
    v7 = IPC::Encoder::operator new(0x238, v6);
    *v7 = 2328;
    *(v7 + 2) = 0;
    *(v7 + 3) = 0;
    *(v7 + 1) = v5;
    *(v7 + 68) = 0;
    *(v7 + 70) = 0;
    *(v7 + 69) = 0;
    IPC::Encoder::encodeHeader(v7);
    v18 = v7;
    v8 = *a2;
    *a2 = 0;
    v9 = WTF::fastMalloc(0x10);
    *v9 = &unk_1F1130BF0;
    v9[1] = v8;
    if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
    {
      __break(0xC471u);
    }

    else
    {
      v17[0] = v9;
      v17[1] = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
      (*(*(v4 + 16) + 40))(v4 + 16, &v18, v17, 0);
      v11 = v17[0];
      v17[0] = 0;
      if (v11)
      {
        (*(*v11 + 8))(v11);
      }

      v12 = v18;
      v18 = 0;
      if (v12)
      {
        IPC::Encoder::~Encoder(v12, v10);
        bmalloc::api::tzoneFree(v15, v16);
      }

      CFRelease(*(v4 - 8));
    }
  }

  else
  {
    v13 = *a2;
    *a2 = 0;
    (*(*v13 + 16))(v13, 0);
    v14 = *(*v13 + 8);

    v14(v13);
  }
}

BOOL WebKit::WebChromeClient::isUsingUISideCompositing(WebKit::WebChromeClient *this)
{
  v1 = *(this + 2);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 8);
  if (!v2)
  {
    return 0;
  }

  CFRetain(*(v2 - 8));
  v3 = *(*(v2 + 56) + 32) == 0;
  CFRelease(*(v2 - 8));
  return v3;
}

uint64_t WebKit::WebChromeClient::isInStableState(WebKit::WebChromeClient *this)
{
  v1 = *(this + 2);
  if (v1 && (v2 = *(v1 + 8)) != 0)
  {
    CFRetain(*(v2 - 8));
    v3 = *(v2 + 1269);
    CFRelease(*(v2 - 8));
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

void WebKit::WebChromeClient::didAdjustVisibilityWithSelectors(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      CFRetain(*(v3 - 8));
      WebKit::WebPage::didAdjustVisibilityWithSelectors(v3 - 16, a2);
      v5 = *(v3 - 8);

      CFRelease(v5);
    }
  }
}

void WebKit::WebChromeClient::gamepadsRecentlyAccessed(WebKit::WebChromeClient *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      CFRetain(*(v2 - 8));
      WebKit::WebPage::gamepadsRecentlyAccessed((v2 - 16));
      v3 = *(v2 - 8);

      CFRelease(v3);
    }
  }
}

void WebKit::WebChromeClient::proofreadingSessionShowDetailsForSuggestionWithIDRelativeToRect(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = *(v4 + 8);
    if (v5)
    {
      CFRetain(*(v5 - 8));
      v12[0] = a3;
      v12[1] = a4;
      v11[0] = a2;
      v11[1] = v12;
      v9 = (*(*(v5 + 16) + 56))(v5 + 16);
      IPC::MessageSender::send<Messages::WebPageProxy::ProofreadingSessionShowDetailsForSuggestionWithIDRelativeToRect>(v5 + 16, v11, v9, 0);
      v10 = *(v5 - 8);

      CFRelease(v10);
    }
  }
}

void WebKit::WebChromeClient::proofreadingSessionUpdateStateForSuggestionWithID(uint64_t a1, char a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      CFRetain(*(v4 - 8));
      v9[0] = a2;
      v10 = a3;
      v7 = (*(*(v4 + 16) + 56))(v4 + 16);
      IPC::MessageSender::send<Messages::WebPageProxy::ProofreadingSessionUpdateStateForSuggestionWithID>(v4 + 16, v9, v7, 0);
      v8 = *(v4 - 8);

      CFRelease(v8);
    }
  }
}

void WebKit::WebChromeClient::removeTextAnimationForAnimationID(WebKit::WebChromeClient *this, const WTF::UUID *a2)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      CFRetain(*(v3 - 8));
      v6 = a2;
      IPC::MessageSender::send<Messages::WebPageProxy::RemoveTextAnimationForAnimationID>(v3 + 16, &v6);
      v5 = *(v3 - 8);

      CFRelease(v5);
    }
  }
}

void WebKit::WebChromeClient::removeInitialTextAnimationForActiveWritingToolsSession(WebKit::WebChromeClient *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      CFRetain(*(v2 - 8));
      WebKit::TextAnimationController::removeInitialTextAnimationForActiveWritingToolsSession(*(v2 + 2120));
      v3 = *(v2 - 8);

      CFRelease(v3);
    }
  }
}

void WebKit::WebChromeClient::addInitialTextAnimationForActiveWritingToolsSession(WebKit::WebChromeClient *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      CFRetain(*(v2 - 8));
      WebKit::TextAnimationController::addInitialTextAnimationForActiveWritingToolsSession(*(v2 + 2120));
      v3 = *(v2 - 8);

      CFRelease(v3);
    }
  }
}

void WebKit::WebChromeClient::addSourceTextAnimationForActiveWritingToolsSession(uint64_t a1, __int128 *a2, __int128 *a3, int a4, unint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = *(v7 + 8);
    if (v8)
    {
      CFRetain(*(v8 - 8));
      WebKit::TextAnimationController::addSourceTextAnimationForActiveWritingToolsSession(*(v8 + 2120), a2, a3, a4, a5, a6, a7);
      v15 = *(v8 - 8);

      CFRelease(v15);
    }
  }
}

void WebKit::WebChromeClient::addDestinationTextAnimationForActiveWritingToolsSession(uint64_t a1, const WTF::UUID *a2, const WTF::UUID *a3, uint64_t a4, atomic_uint **a5)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = *(v5 + 8);
    if (v6)
    {
      CFRetain(*(v6 - 8));
      WebKit::TextAnimationController::addDestinationTextAnimationForActiveWritingToolsSession(*(v6 + 2120), a2, a3, a4, a5);
      v11 = *(v6 - 8);

      CFRelease(v11);
    }
  }
}

void WebKit::WebChromeClient::saveSnapshotOfTextPlaceholderForAnimation(WebKit::WebChromeClient *this, const WebCore::SimpleRange *a2)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      CFRetain(*(v3 - 8));
      WebKit::TextAnimationController::saveSnapshotOfTextPlaceholderForAnimation(*(v3 + 2120));
      v4 = *(v3 - 8);

      CFRelease(v4);
    }
  }
}

void WebKit::WebChromeClient::clearAnimationsForActiveWritingToolsSession(WebKit::WebChromeClient *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      CFRetain(*(v2 - 8));
      WebKit::TextAnimationController::clearAnimationsForActiveWritingToolsSession(*(v2 + 2120), v3);
      v4 = *(v2 - 8);

      CFRelease(v4);
    }
  }
}

void WebKit::WebChromeClient::setIsInRedo(WebKit::WebChromeClient *this, char a2)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      CFRetain(*(v3 - 8));
      *(v3 + 185) = a2;
      v5 = *(v3 - 8);

      CFRelease(v5);
    }
  }
}

void WebKit::WebChromeClient::hasActiveNowPlayingSessionChanged(WebKit::WebChromeClient *this, char a2)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      CFRetain(*(v3 - 8));
      WebKit::WebPage::hasActiveNowPlayingSessionChanged((v3 - 16), a2);
      v5 = *(v3 - 8);

      CFRelease(v5);
    }
  }
}

void WebKit::WebChromeClient::getImageBufferResourceLimitsForTesting(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 16);
  if (v3 && (v4 = *(v3 + 8)) != 0)
  {
    CFRetain(*(v4 - 8));
    v5 = WebKit::WebPage::ensureRemoteRenderingBackendProxy((v4 - 16));
    v6 = WTF::fastMalloc(0x10);
    *v6 = &unk_1F1130C18;
    v7 = *a2;
    *a2 = 0;
    v6[1] = v7;
    v10[0] = v6;
    WebKit::RemoteRenderingBackendProxy::sendWithAsyncReply<Messages::RemoteRenderingBackend::GetImageBufferResourceLimitsForTesting,WTF::CompletionHandler<void ()(WebCore::ImageBufferResourceLimits)>,WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v5, &v12, v10, v5[10]);
    v8 = v10[0];
    v10[0] = 0;
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    CFRelease(*(v4 - 8));
  }

  else
  {
    v9 = *a2;
    *a2 = 0;
    LOBYTE(v10[0]) = 0;
    v11 = 0;
    (*(*v9 + 16))(v9, v10);
    (*(*v9 + 8))(v9);
  }
}

uint64_t WebKit::WebChromeClient::requiresScriptTrackingPrivacyProtections(WebKit::WebChromeClient *this, const WTF::URL *a2, const WebCore::SecurityOrigin *a3)
{
  {
    v3 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v7 = a2;
    v8 = a3;
    v6 = WebKit::WebProcess::operator new(0x370, a2);
    v3 = WebKit::WebProcess::WebProcess(v6);
    a2 = v7;
    a3 = v8;
    WebKit::WebProcess::singleton(void)::process = v3;
  }

  v4 = *(v3 + 107);
  if (v4)
  {
    LOBYTE(v4) = WebKit::ScriptTrackingPrivacyFilter::lookup(v4, a2, a3);
  }

  return v4 & 1;
}

WebKit::ScriptTrackingPrivacyFilter *WebKit::WebChromeClient::shouldAllowScriptAccess(uint64_t a1, void *a2, const WebCore::SecurityOrigin *a3)
{
  {
    v3 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v6 = a2;
    v7 = a3;
    v5 = WebKit::WebProcess::operator new(0x370, a2);
    v3 = WebKit::WebProcess::WebProcess(v5);
    a2 = v6;
    a3 = v7;
    WebKit::WebProcess::singleton(void)::process = v3;
  }

  result = *(v3 + 107);
  if (result)
  {

    return WebKit::ScriptTrackingPrivacyFilter::shouldAllowAccess(result, a2, a3);
  }

  return result;
}

void WebKit::WebChromeClient::callAfterPendingSyntheticClick(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 16);
  if (v3 && (v4 = *(v3 + 8)) != 0)
  {
    CFRetain(*(v4 - 8));
    WebKit::WebPage::callAfterPendingSyntheticClick(v4 - 16, a2);
    v5 = *(v4 - 8);

    CFRelease(v5);
  }

  else
  {
    v6 = *a2;
    *a2 = 0;
    (*(*v6 + 16))(v6, 0);
    v7 = *(*v6 + 8);

    v7(v6);
  }
}

void WebKit::WebChromeClient::didDispatchClickEvent(uint64_t a1, uint64_t a2, WebCore::Element *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      CFRetain(*(v4 - 8));
      WebKit::WebPage::didDispatchClickEvent(v4 - 16, a2, a3);
      v7 = *(v4 - 8);

      CFRelease(v7);
    }
  }
}

void WebKit::WebChromeClient::didProgrammaticallyClearTextFormControl(WebKit::WebChromeClient *this, const WebCore::HTMLTextFormControlElement *a2)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      CFRetain(*(v3 - 8));
      WebKit::WebPage::didProgrammaticallyClearTextFormControl((v3 - 16), a2);
      v5 = *(v3 - 8);

      CFRelease(v5);
    }
  }
}

uint64_t WebKit::WebChromeClient::setNeedsFixedContainerEdgesUpdate(uint64_t this)
{
  v1 = *(this + 16);
  if (v1 && (v2 = *(v1 + 8)) != 0)
  {
    *(v2 + 1807) = 1;
  }

  else
  {
    this = 121;
    __break(0xC471u);
  }

  return this;
}

uint64_t WebKit::WebChromeClient::usePluginRendererScrollableArea(WebKit::WebChromeClient *this, WebCore::LocalFrame *a2)
{
  v2 = WebKit::WebPage::pluginViewForFrame(a2, a2);
  if (!v2)
  {
    return 1;
  }

  v4 = *(v2 + 8);
  *(v2 + 8) = v4 + 1;
  v6 = v2;
  if (*(v2 + 137) == 1)
  {
    v5 = (*(**(v2 + 72) + 1504))(*(v2 + 72)) ^ 1;
    v4 = v6[2] - 1;
  }

  else
  {
    v5 = 1;
  }

  if (v4)
  {
    v6[2] = v4;
  }

  else
  {
    (*(*v6 + 8))(v6);
  }

  return v5;
}

void WebKit::WebColorChooser::~WebColorChooser(WebKit::WebColorChooser *this, void *a2)
{
  *this = &unk_1F1130AB8;
  v3 = *(this + 4);
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = *(v3 + 8);
  if (!v4)
  {
    *(this + 4) = 0;
LABEL_7:
    if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3);
      WTF::fastFree(v3, a2);
    }

    goto LABEL_9;
  }

  CFRetain(*(v4 - 8));
  v6 = *(v4 + 528);
  *(v4 + 528) = 0;
  if (v6 && atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v6);
    WTF::fastFree(v6, v5);
  }

  CFRelease(*(v4 - 8));
  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3)
  {
    goto LABEL_7;
  }

LABEL_9:
  v7 = *(this + 3);
  *(this + 3) = 0;
  if (v7 && atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v7);
    WTF::fastFree(v7, a2);
  }

  if (*(this + 4) == 1)
  {
    v8 = *(this + 1);
    if (v8)
    {
      *(v8 + 8) = 0;
      v9 = *(this + 1);
      *(this + 1) = 0;
      if (v9)
      {
        if (atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v9);
          WTF::fastFree(v9, a2);
        }
      }
    }
  }

  else
  {
    __break(0xC471u);
  }
}

{
  WebKit::WebColorChooser::~WebColorChooser(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

uint64_t WebKit::WebColorChooser::didChooseColor(uint64_t this, const Color *a2)
{
  v2 = *(this + 24);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      (**v3)(v3);
      (*(*v3 + 32))(v3, a2);
      v5 = *(*v3 + 8);

      return v5(v3);
    }
  }

  return this;
}

uint64_t WebKit::WebColorChooser::didEndChooser(uint64_t this)
{
  v1 = *(this + 24);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      (**v2)(v2);
      (*(*v2 + 40))(v2);
      v3 = *(*v2 + 8);

      return v3(v2);
    }
  }

  return this;
}

unsigned int *WebKit::WebColorChooser::disconnectFromPage(WebKit::WebColorChooser *this, void *a2)
{
  result = *(this + 4);
  *(this + 4) = 0;
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

void WebKit::WebColorChooser::reattachColorChooser(WebKit::WebColorChooser *this, const WebCore::Color *a2)
{
  v2 = *(this + 4);
  if (!v2 || (v3 = *(v2 + 8)) == 0 || (CFRetain(*(v3 - 8)), WebKit::WebPage::setActiveColorChooser((v3 - 16), this), (v6 = *(this + 3)) == 0) || (v7 = *(v6 + 8)) == 0)
  {
    __break(0xC471u);
    JUMPOUT(0x19E37AE28);
  }

  (**v7)(v7);
  v9 = (*(*v7 + 56))(v7);
  {
    v10 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v15 = WebKit::WebProcess::operator new(0x370, v8);
    v10 = WebKit::WebProcess::WebProcess(v15);
    WebKit::WebProcess::singleton(void)::process = v10;
  }

  WebKit::AuxiliaryProcess::protectedParentProcessConnection(v10, &v21);
  v11 = v21;
  v17[0] = (*(*v7 + 48))(v7);
  v17[1] = v12;
  (*(*v7 + 64))(v16, v7);
  v18[0] = a2;
  v18[1] = v17;
  v19 = v9;
  v20 = v16;
  IPC::Connection::send<Messages::WebPageProxy::ShowColorPicker>(v11, v18, *(v3 + 32));
  WTF::Vector<WebCore::Color,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v16, v13);
  v14 = v21;
  v21 = 0;
  if (v14)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v14);
  }

  (*(*v7 + 8))(v7);
  CFRelease(*(v3 - 8));
}

void WebKit::WebColorChooser::setSelectedColor(WebKit::WebColorChooser *this, const WebCore::Color *a2)
{
  v2 = *(this + 4);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      CFRetain(*(v3 - 8));
      v7 = *(v3 + 528);
      if (v7)
      {
        v7 = *(v7 + 1);
      }

      if (v7 == this)
      {
        {
          v8 = WebKit::WebProcess::singleton(void)::process;
        }

        else
        {
          v18 = WebKit::WebProcess::operator new(0x370, v6);
          v8 = WebKit::WebProcess::WebProcess(v18);
          WebKit::WebProcess::singleton(void)::process = v8;
        }

        WebKit::AuxiliaryProcess::protectedParentProcessConnection(v8, &v19);
        v9 = v19;
        v10 = *(v3 + 32);
        v12 = IPC::Encoder::operator new(0x238, v11);
        *v12 = 2351;
        *(v12 + 2) = 0;
        *(v12 + 3) = 0;
        *(v12 + 1) = v10;
        *(v12 + 68) = 0;
        *(v12 + 70) = 0;
        *(v12 + 69) = 0;
        IPC::Encoder::encodeHeader(v12);
        v20 = v12;
        IPC::ArgumentCoder<WebCore::Color,void>::encode(v12, a2);
        IPC::Connection::sendMessageImpl(v9, &v20, 0, 0);
        v14 = v20;
        v20 = 0;
        if (v14)
        {
          IPC::Encoder::~Encoder(v14, v13);
          bmalloc::api::tzoneFree(v16, v17);
        }

        v15 = v19;
        v19 = 0;
        if (v15)
        {
          WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v15);
        }
      }

      CFRelease(*(v3 - 8));
    }
  }
}

atomic_ullong *WebKit::WebColorChooser::endChooser(atomic_ullong *this, void *a2)
{
  v2 = this[4];
  if (v2 && *(v2 + 8))
  {
    v3 = this;
    {
      v4 = WebKit::WebProcess::singleton(void)::process;
    }

    else
    {
      v15 = WebKit::WebProcess::operator new(0x370, a2);
      v4 = WebKit::WebProcess::WebProcess(v15);
      WebKit::WebProcess::singleton(void)::process = v4;
    }

    WebKit::AuxiliaryProcess::protectedParentProcessConnection(v4, &v16);
    v6 = v3[4];
    if (v6 && (v7 = *(v6 + 8)) != 0)
    {
      v8 = v16;
      v9 = *(v7 + 32);
      v10 = IPC::Encoder::operator new(0x238, v5);
      *v10 = 2248;
      *(v10 + 2) = 0;
      *(v10 + 3) = 0;
      *(v10 + 1) = v9;
      *(v10 + 68) = 0;
      *(v10 + 70) = 0;
      *(v10 + 69) = 0;
      IPC::Encoder::encodeHeader(v10);
      v17 = v10;
      IPC::Connection::sendMessageImpl(v8, &v17, 0, 0);
      v12 = v17;
      v17 = 0;
      if (v12)
      {
        IPC::Encoder::~Encoder(v12, v11);
        bmalloc::api::tzoneFree(v13, v14);
      }

      this = v16;
      v16 = 0;
      if (this)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(this);
      }
    }

    else
    {
      this = 121;
      __break(0xC471u);
    }
  }

  return this;
}

atomic_ullong *WebKit::WebCryptoClient::serializeAndWrapCryptoKey@<X0>(WTF *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  {
    v9 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v40 = WebKit::WebProcess::operator new(0x370, a2);
    v9 = WebKit::WebProcess::WebProcess(v40);
    WebKit::WebProcess::singleton(void)::process = v9;
  }

  v10 = *(v9 + 5);
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
      goto LABEL_8;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v10);
LABEL_8:
  if (*(a1 + 16) == 1)
  {
    IPC::Connection::createSyncMessageEncoder(0x104A, *(a1 + 1), &v48);
    IPC::ArgumentCoder<WebCore::CryptoKeyData,void>::encode(v48, a2);
    v13 = IPC::Connection::sendSyncMessage(v10, v49, &v48, 0, &v46, INFINITY);
    if (v47)
    {
      if (v47 == 1)
      {
        v15 = v46;
        v16 = 1;
        goto LABEL_32;
      }

LABEL_56:
      mpark::throw_bad_variant_access(v13);
    }

    v15 = v46;
    v46 = 0;
    if (*(v15 + 50) == 3194)
    {
      v3 = 11;
    }

    else
    {
      LOBYTE(v41) = 0;
      v45 = 0;
      IPC::Decoder::operator>><std::tuple<std::optional<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>>(v15, &v41);
      if (v45 == 1)
      {
        v16 = 0;
        LOBYTE(v3) = v44;
        v4 = v42;
        v5 = v43;
        if (v44)
        {
          a1 = v41;
        }

        else
        {
          a1 = 0;
        }

LABEL_29:
        if (!v47)
        {
          v21 = v46;
          v46 = 0;
          if (v21)
          {
            IPC::Decoder::~Decoder(v21);
            bmalloc::api::tzoneFree(v34, v35);
          }
        }

LABEL_32:
        v22 = v48;
        v48 = 0;
        if (v22)
        {
          IPC::Encoder::~Encoder(v22, v14);
          bmalloc::api::tzoneFree(v30, v31);
        }

        LOBYTE(v41) = 0;
        v44 = 0;
        if (((v16 == 0) & v3) == 1)
        {
          v41 = a1;
          v42 = v4;
          v43 = v5;
LABEL_45:
          v44 = 1;
          a1 = 0;
          goto LABEL_46;
        }

        goto LABEL_46;
      }

      v3 = 14;
    }

    IPC::Decoder::~Decoder(v15);
    bmalloc::api::tzoneFree(v19, v20);
    v16 = 1;
    v15 = v3;
    goto LABEL_29;
  }

  IPC::Connection::createSyncMessageEncoder(0x107A, 0, &v48);
  IPC::ArgumentCoder<WebCore::CryptoKeyData,void>::encode(v48, a2);
  v13 = IPC::Connection::sendSyncMessage(v10, v49, &v48, 0, &v46, INFINITY);
  if (!v47)
  {
    v15 = v46;
    v46 = 0;
    if (*(v15 + 50) == 3194)
    {
      v18 = 11;
    }

    else
    {
      LOBYTE(v41) = 0;
      v45 = 0;
      IPC::Decoder::operator>><std::tuple<std::optional<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>>(v15, &v41);
      if (v45 == 1)
      {
        v16 = 0;
        LOBYTE(v3) = v44;
        v5 = v42;
        v4 = v43;
        if (v44)
        {
          a1 = v41;
        }

        else
        {
          a1 = 0;
        }

LABEL_38:
        if (!v47)
        {
          v25 = v46;
          v46 = 0;
          if (v25)
          {
            IPC::Decoder::~Decoder(v25);
            bmalloc::api::tzoneFree(v36, v37);
          }
        }

        goto LABEL_41;
      }

      v18 = 14;
    }

    IPC::Decoder::~Decoder(v15);
    bmalloc::api::tzoneFree(v23, v24);
    v16 = 1;
    v15 = v18;
    goto LABEL_38;
  }

  if (v47 != 1)
  {
    goto LABEL_56;
  }

  v15 = v46;
  v16 = 1;
LABEL_41:
  v26 = v48;
  v48 = 0;
  if (v26)
  {
    IPC::Encoder::~Encoder(v26, v17);
    bmalloc::api::tzoneFree(v32, v33);
  }

  LOBYTE(v41) = 0;
  v44 = 0;
  if (((v16 == 0) & v3) == 1)
  {
    v41 = a1;
    v42 = v5;
    v43 = v4;
    goto LABEL_45;
  }

LABEL_46:
  std::optional<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::optional[abi:sn200100](a3, &v41);
  if (v44 == 1)
  {
    v29 = v41;
    if (v41)
    {
      v41 = 0;
      v42 = 0;
      WTF::fastFree(v29, v27);
    }
  }

  if (!v16)
  {
    if ((v3 & (a1 != 0)) == 1)
    {
      WTF::fastFree(a1, v27);
      if (!v15)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v10);
      }
    }

    else if (!v15)
    {
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v10);
    }

    IPC::Decoder::~Decoder(v15);
    bmalloc::api::tzoneFree(v38, v39);
  }

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v10);
}

WTF *WebKit::WebCryptoClient::unwrapCryptoKey@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v55 = *MEMORY[0x1E69E9840];
  result = WebCore::readSerializedCryptoKey();
  if (v54 != 1)
  {
    *a2 = 0;
    a2[16] = 0;
    return result;
  }

  v9 = &dword_1EB01E000;
  {
    v10 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v41 = WebKit::WebProcess::operator new(0x370, v8);
    v10 = WebKit::WebProcess::WebProcess(v41);
    WebKit::WebProcess::singleton(void)::process = v10;
  }

  v11 = *(v10 + 5);
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
      goto LABEL_10;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v11);
LABEL_10:
  if (*(a1 + 16) == 1)
  {
    if (v54)
    {
      IPC::Connection::createSyncMessageEncoder(0x104F, *(a1 + 8), &v49);
      IPC::ArgumentCoder<WebCore::WrappedCryptoKey,void>::encode(v49, v51);
      v14 = IPC::Connection::sendSyncMessage(v11, v50, &v49, 0, &v47, INFINITY);
      if (v48)
      {
        if (v48 == 1)
        {
          v16 = v47;
          v17 = 1;
          goto LABEL_36;
        }

LABEL_64:
        mpark::throw_bad_variant_access(v14);
      }

      v16 = v47;
      v47 = 0;
      if (*(v16 + 50) == 3194)
      {
        v2 = 11;
      }

      else
      {
        LOBYTE(v42) = 0;
        v46 = 0;
        IPC::Decoder::operator>><std::tuple<std::optional<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>>(v16, &v42);
        if (v46 == 1)
        {
          v17 = 0;
          LOBYTE(v2) = v45;
          v3 = v43;
          v4 = v44;
          if (v45)
          {
            v9 = v42;
          }

          else
          {
            v9 = 0;
          }

LABEL_33:
          if (!v48)
          {
            v22 = v47;
            v47 = 0;
            if (v22)
            {
              IPC::Decoder::~Decoder(v22);
              bmalloc::api::tzoneFree(v35, v36);
            }
          }

LABEL_36:
          v23 = v49;
          v49 = 0;
          if (v23)
          {
            IPC::Encoder::~Encoder(v23, v15);
            bmalloc::api::tzoneFree(v31, v32);
          }

          LOBYTE(v42) = 0;
          v45 = 0;
          if (((v17 == 0) & v2) == 1)
          {
            v42 = v9;
            v43 = v3;
            v44 = v4;
LABEL_49:
            v45 = 1;
            v9 = 0;
            goto LABEL_50;
          }

          goto LABEL_50;
        }

        v2 = 14;
      }

      IPC::Decoder::~Decoder(v16);
      bmalloc::api::tzoneFree(v20, v21);
      v17 = 1;
      v16 = v2;
      goto LABEL_33;
    }

LABEL_62:
    __break(1u);
  }

  if ((v54 & 1) == 0)
  {
    goto LABEL_62;
  }

  IPC::Connection::createSyncMessageEncoder(0x107C, 0, &v49);
  IPC::ArgumentCoder<WebCore::WrappedCryptoKey,void>::encode(v49, v51);
  v14 = IPC::Connection::sendSyncMessage(v11, v50, &v49, 0, &v47, INFINITY);
  if (!v48)
  {
    v16 = v47;
    v47 = 0;
    if (*(v16 + 50) == 3194)
    {
      v19 = 11;
    }

    else
    {
      LOBYTE(v42) = 0;
      v46 = 0;
      IPC::Decoder::operator>><std::tuple<std::optional<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>>(v16, &v42);
      if (v46 == 1)
      {
        v17 = 0;
        LOBYTE(v2) = v45;
        v4 = v43;
        v3 = v44;
        if (v45)
        {
          v9 = v42;
        }

        else
        {
          v9 = 0;
        }

LABEL_42:
        if (!v48)
        {
          v26 = v47;
          v47 = 0;
          if (v26)
          {
            IPC::Decoder::~Decoder(v26);
            bmalloc::api::tzoneFree(v37, v38);
          }
        }

        goto LABEL_45;
      }

      v19 = 14;
    }

    IPC::Decoder::~Decoder(v16);
    bmalloc::api::tzoneFree(v24, v25);
    v17 = 1;
    v16 = v19;
    goto LABEL_42;
  }

  if (v48 != 1)
  {
    goto LABEL_64;
  }

  v16 = v47;
  v17 = 1;
LABEL_45:
  v27 = v49;
  v49 = 0;
  if (v27)
  {
    IPC::Encoder::~Encoder(v27, v18);
    bmalloc::api::tzoneFree(v33, v34);
  }

  LOBYTE(v42) = 0;
  v45 = 0;
  if (((v17 == 0) & v2) == 1)
  {
    v42 = v9;
    v43 = v4;
    v44 = v3;
    goto LABEL_49;
  }

LABEL_50:
  std::optional<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::optional[abi:sn200100](a2, &v42);
  if (v45 == 1)
  {
    v30 = v42;
    if (v42)
    {
      v42 = 0;
      v43 = 0;
      WTF::fastFree(v30, v28);
    }
  }

  if (v17)
  {
    goto LABEL_54;
  }

  if ((v2 & (v9 != 0)) == 1)
  {
    WTF::fastFree(v9, v28);
    if (!v16)
    {
      goto LABEL_54;
    }
  }

  else if (!v16)
  {
    goto LABEL_54;
  }

  IPC::Decoder::~Decoder(v16);
  bmalloc::api::tzoneFree(v39, v40);
LABEL_54:
  result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v11);
  if (v54)
  {
    result = v52;
    if (v52)
    {
      v52 = 0;
      v53 = 0;
      return WTF::fastFree(result, v29);
    }
  }

  return result;
}

void WebKit::WebAttachmentElementClient::~WebAttachmentElementClient(WebKit::WebAttachmentElementClient *this, void *a2)
{
  v3 = *(this + 1);
  *(this + 1) = 0;
  if (v3)
  {
    if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3);
      WTF::fastFree(v3, a2);
    }
  }
}

{
  v3 = *(this + 1);
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  bmalloc::api::tzoneFree(this, a2);
}

void WebKit::WebBadgeClient::~WebBadgeClient(WebKit::WebBadgeClient *this)
{
  if (*(this + 2) != 1)
  {
    __break(0xC471u);
  }
}

void WebKit::WebBadgeClient::~WebBadgeClient(WebKit::WebBadgeClient *this, void *a2)
{
  if (*(this + 2) == 1)
  {
    WTF::fastFree(this, a2);
  }

  else
  {
    __break(0xC471u);
  }
}

void WebKit::WebBroadcastChannelRegistry::~WebBroadcastChannelRegistry(WebKit::WebBroadcastChannelRegistry *this, void *a2)
{
  v3 = *(this + 2);
  if (v3)
  {
    WTF::HashTable<WebCore::PartitionedSecurityOrigin,WTF::KeyValuePair<WebCore::PartitionedSecurityOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::PartitionedSecurityOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::PartitionedSecurityOrigin>,WTF::HashMap<WebCore::PartitionedSecurityOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::PartitionedSecurityOrigin>,WTF::HashTraits<WebCore::PartitionedSecurityOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::PartitionedSecurityOrigin>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  if (*(this + 2) != 1)
  {
    __break(0xC471u);
  }
}

{
  v3 = *(this + 2);
  if (v3)
  {
    WTF::HashTable<WebCore::PartitionedSecurityOrigin,WTF::KeyValuePair<WebCore::PartitionedSecurityOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::PartitionedSecurityOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::PartitionedSecurityOrigin>,WTF::HashMap<WebCore::PartitionedSecurityOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::PartitionedSecurityOrigin>,WTF::HashTraits<WebCore::PartitionedSecurityOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::PartitionedSecurityOrigin>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  if (*(this + 2) == 1)
  {

    WTF::fastFree(this, a2);
  }

  else
  {
    __break(0xC471u);
  }
}

_DWORD *WebKit::WebColorChooser::deref(_DWORD *this)
{
  if (this[4] == 1)
  {
    return (*(*this + 24))();
  }

  --this[4];
  return this;
}

uint64_t WebKit::WebGPU::DowncastConvertToBackingContext::operator new(WebKit::WebGPU::DowncastConvertToBackingContext *this, void *a2)
{
  if (this == 16 && WebKit::WebGPU::DowncastConvertToBackingContext::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::WebGPU::DowncastConvertToBackingContext::s_heapRef, a2);
  }

  else
  {
    return WebKit::WebGPU::DowncastConvertToBackingContext::operatorNewSlow(this);
  }
}

uint64_t WebKit::RemoteScrollingCoordinator::operator new(WebKit::RemoteScrollingCoordinator *this, void *a2)
{
  if (WebKit::RemoteScrollingCoordinator::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::RemoteScrollingCoordinator::s_heapRef, a2);
  }

  else
  {
    return WebKit::RemoteScrollingCoordinator::operatorNewSlow(0xF0);
  }
}

uint64_t WTF::HashTable<WebCore::PartitionedSecurityOrigin,WTF::KeyValuePair<WebCore::PartitionedSecurityOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::PartitionedSecurityOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::PartitionedSecurityOrigin>,WTF::HashMap<WebCore::PartitionedSecurityOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::PartitionedSecurityOrigin>,WTF::HashTraits<WebCore::PartitionedSecurityOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::PartitionedSecurityOrigin>,WTF::FastMalloc>::deallocateTable(uint64_t *a1, void *a2)
{
  v3 = *(a1 - 1);
  if (v3)
  {
    v4 = a1;
    do
    {
      if (*v4 != -1)
      {
        v5 = v4[2];
        if (v5)
        {
          WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WebCore::CharacterRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WebCore::CharacterRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WebCore::CharacterRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WebCore::CharacterRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v5, a2);
        }

        v6 = v4[1];
        v4[1] = 0;
        if (v6)
        {
          WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v6, a2);
        }

        v7 = *v4;
        *v4 = 0;
        if (v7)
        {
          WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v7, a2);
        }
      }

      v4 += 3;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 2), a2);
}

uint64_t *WTF::HashTable<WebCore::PartitionedSecurityOrigin,WTF::KeyValuePair<WebCore::PartitionedSecurityOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::PartitionedSecurityOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::PartitionedSecurityOrigin>,WTF::HashMap<WebCore::PartitionedSecurityOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::PartitionedSecurityOrigin>,WTF::HashTraits<WebCore::PartitionedSecurityOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::PartitionedSecurityOrigin>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t *a2)
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

  return WTF::HashTable<WebCore::PartitionedSecurityOrigin,WTF::KeyValuePair<WebCore::PartitionedSecurityOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::PartitionedSecurityOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::PartitionedSecurityOrigin>,WTF::HashMap<WebCore::PartitionedSecurityOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::PartitionedSecurityOrigin>,WTF::HashTraits<WebCore::PartitionedSecurityOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::PartitionedSecurityOrigin>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

uint64_t *WTF::HashTable<WebCore::PartitionedSecurityOrigin,WTF::KeyValuePair<WebCore::PartitionedSecurityOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::PartitionedSecurityOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::PartitionedSecurityOrigin>,WTF::HashMap<WebCore::PartitionedSecurityOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::PartitionedSecurityOrigin>,WTF::HashTraits<WebCore::PartitionedSecurityOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::PartitionedSecurityOrigin>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t *a3)
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

  v8 = WTF::fastMalloc((24 * a2 + 16));
  v10 = v8;
  v11 = v8 + 16;
  if (a2)
  {
    bzero((v8 + 16), 24 * a2);
  }

  *a1 = v11;
  v10[2] = a2 - 1;
  v10[3] = a2;
  *v10 = 0;
  v10[1] = v7;
  if (v6)
  {
    v12 = 0;
    v13 = 0;
    v14 = v6;
    do
    {
      v15 = (v5 + 24 * v12);
      v16 = *v15;
      if (*v15 != -1)
      {
        if (v16)
        {
          v20 = *a1;
          if (*a1)
          {
            v21 = *(v20 - 8);
          }

          else
          {
            v21 = 0;
          }

          v22 = WTF::computeHash<WebCore::PartitionedSecurityOrigin>(v16, v15[1]);
          v23 = 0;
          do
          {
            v24 = (v20 + 24 * (v22 & v21));
            v22 = ++v23 + (v22 & v21);
          }

          while (*v24);
          v25 = v24[2];
          if (v25)
          {
            WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WebCore::CharacterRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WebCore::CharacterRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WebCore::CharacterRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WebCore::CharacterRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v25, v9);
          }

          v26 = v24[1];
          v24[1] = 0;
          if (v26)
          {
            WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v26, v9);
          }

          v27 = *v24;
          *v24 = 0;
          if (v27)
          {
            WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v27, v9);
          }

          v28 = *v15;
          *v15 = 0;
          *v24 = v28;
          v29 = v15[1];
          v15[1] = 0;
          v24[1] = v29;
          v24[2] = 0;
          v30 = v15[2];
          v15[2] = 0;
          v24[2] = v30;
          v31 = v15[2];
          if (v31)
          {
            WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WebCore::CharacterRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WebCore::CharacterRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WebCore::CharacterRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WebCore::CharacterRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v31, v9);
          }

          v32 = v15[1];
          v15[1] = 0;
          if (v32)
          {
            WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v32, v9);
          }

          v33 = *v15;
          *v15 = 0;
          if (v33)
          {
            WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v33, v9);
          }

          if (v15 == a3)
          {
            v13 = v24;
          }
        }

        else
        {
          v17 = v15[2];
          if (v17)
          {
            WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WebCore::CharacterRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WebCore::CharacterRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WebCore::CharacterRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WebCore::CharacterRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v17, v9);
          }

          v18 = v15[1];
          v15[1] = 0;
          if (v18)
          {
            WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v18, v9);
          }

          v19 = *v15;
          *v15 = 0;
          if (v19)
          {
            WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v19, v9);
          }
        }
      }

      ++v12;
    }

    while (v12 != v14);
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

uint64_t WTF::computeHash<WebCore::PartitionedSecurityOrigin>(uint64_t a1, uint64_t a2)
{
  v4 = -1640531527;
  v5 = 0;
  v6 = 0;
  WTF::add<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(&v4, a1 + 8);
  WTF::add<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(&v4, a2 + 8);
  return WTF::SuperFastHash::hash(&v4);
}

uint64_t WTF::PartitionedSecurityOriginHash::equal(WebCore::SecurityOrigin **a1, const WebCore::SecurityOrigin **a2)
{
  result = WebCore::SecurityOrigin::isSameOriginAs(*a1, *a2);
  if (result)
  {
    v5 = a1[1];
    v6 = a2[1];

    return WebCore::SecurityOrigin::isSameOriginAs(v5, v6);
  }

  return result;
}

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t a2)
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

  return WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t a3)
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

  v8 = WTF::fastZeroedMalloc((24 * a2 + 16));
  *a1 = (v8 + 4);
  v8[2] = a2 - 1;
  v8[3] = a2;
  *v8 = 0;
  v8[1] = v7;
  if (v6)
  {
    v10 = 0;
    v11 = 0;
    v12 = v6;
    do
    {
      v13 = v5 + 24 * v10;
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
            v21 = v16 + 24 * (v19 & v17);
            v19 = ++v20 + (v19 & v17);
          }

          while (*v21);
          v22 = *(v21 + 8);
          if (v22)
          {
            *(v21 + 8) = 0;
            *(v21 + 16) = 0;
            WTF::fastFree(v22, v9);
            v23 = *v21;
            *v21 = 0;
            if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v23, v9);
            }
          }

          else
          {
            *v21 = 0;
          }

          v24 = *v13;
          *v13 = 0;
          *v21 = v24;
          *(v21 + 8) = 0;
          *(v21 + 16) = 0;
          v25 = *(v13 + 8);
          *(v13 + 8) = 0;
          *(v21 + 8) = v25;
          LODWORD(v25) = *(v13 + 16);
          *(v13 + 16) = 0;
          *(v21 + 16) = v25;
          LODWORD(v25) = *(v13 + 20);
          *(v13 + 20) = 0;
          *(v21 + 20) = v25;
          v26 = *(v13 + 8);
          if (v26)
          {
            *(v13 + 8) = 0;
            *(v13 + 16) = 0;
            WTF::fastFree(v26, v9);
          }

          v27 = *v13;
          *v13 = 0;
          if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v27, v9);
          }

          if (v13 == a3)
          {
            v11 = v21;
          }
        }

        else
        {
          v15 = *(v13 + 8);
          if (v15)
          {
            *(v13 + 8) = 0;
            *(v13 + 16) = 0;
            WTF::fastFree(v15, v9);
            v14 = *v13;
          }

          *v13 = 0;
          if (v14)
          {
            if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v14, v9);
            }
          }
        }
      }

      ++v10;
    }

    while (v10 != v12);
  }

  else
  {
    v11 = 0;
    result = 0;
    if (!v5)
    {
      return result;
    }
  }

  WTF::fastFree((v5 - 16), v9);
  return v11;
}

uint64_t WTF::HashTable<WebCore::PartitionedSecurityOrigin,WTF::KeyValuePair<WebCore::PartitionedSecurityOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::PartitionedSecurityOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::PartitionedSecurityOrigin>,WTF::HashMap<WebCore::PartitionedSecurityOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::PartitionedSecurityOrigin>,WTF::HashTraits<WebCore::PartitionedSecurityOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::PartitionedSecurityOrigin>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashTable<WebCore::PartitionedSecurityOrigin,WTF::KeyValuePair<WebCore::PartitionedSecurityOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::PartitionedSecurityOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::PartitionedSecurityOrigin>,WTF::HashMap<WebCore::PartitionedSecurityOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::PartitionedSecurityOrigin>,WTF::HashTraits<WebCore::PartitionedSecurityOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::PartitionedSecurityOrigin>,WTF::FastMalloc>,WTF::DefaultHash<WebCore::PartitionedSecurityOrigin>>,(WTF::ShouldValidateKey)1,WebCore::PartitionedSecurityOrigin>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v5 = *a2;
  if (*a2 == -1 || !v5)
  {
    __break(0xC471u);
    JUMPOUT(0x19E37C1E4);
  }

  v6 = *(v2 - 8);
  v7 = WTF::computeHash<WebCore::PartitionedSecurityOrigin>(v5, *(a2 + 8));
  for (i = 0; ; v7 = ++i + v9)
  {
    v9 = v7 & v6;
    v10 = (v2 + 24 * (v7 & v6));
    if (*v10 == -1)
    {
      continue;
    }

    if (!*v10)
    {
      break;
    }

    if (WTF::PartitionedSecurityOriginHash::equal((v2 + 24 * v9), a2))
    {
      return v10;
    }
  }

  if (!*a1)
  {
    return 0;
  }

  return *a1 + 24 * *(*a1 - 4);
}

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,(WTF::ShouldValidateKey)1,WTF::String>(uint64_t *a1, const WTF::StringImpl **a2, const WTF::StringImpl *a3)
{
  v3 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v6 = *a2;
  if (*a2 == -1 || !v6)
  {
    __break(0xC471u);
    JUMPOUT(0x19E37C2ECLL);
  }

  v7 = *(v3 - 8);
  v8 = *(v6 + 4);
  v9 = v8 < 0x100 ? WTF::StringImpl::hashSlowCase(v6) : v8 >> 8;
  for (i = 0; ; v9 = ++i + v11)
  {
    v11 = v9 & v7;
    v12 = (v3 + 24 * (v9 & v7));
    v13 = *v12;
    if (*v12 == -1)
    {
      continue;
    }

    if (!v13)
    {
      break;
    }

    if (WTF::equal(v13, *a2, a3))
    {
      return v12;
    }
  }

  if (!*a1)
  {
    return 0;
  }

  return *a1 + 24 * *(*a1 - 4);
}

void *WTF::Detail::CallableWrapper<WTF::Ref<WebCore::SerializedScriptValue,WTF::RawPtrTraits<WebCore::SerializedScriptValue>,WTF::DefaultRefDerefTraits<WebCore::SerializedScriptValue>> &&<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkBroadcastChannelRegistry::PostMessage,WebKit::WebBroadcastChannelRegistry::postMessage(WebCore::PartitionedSecurityOrigin const&,WTF::String const&,WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::SerializedScriptValue,WTF::RawPtrTraits<WebCore::SerializedScriptValue>,WTF::DefaultRefDerefTraits<WebCore::SerializedScriptValue>> &&,WTF::CompletionHandler<void ()(void)> &&)::$_0>(WebKit::WebBroadcastChannelRegistry::postMessage(WebCore::PartitionedSecurityOrigin const&,WTF::String const&,WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::SerializedScriptValue,WTF::RawPtrTraits<WebCore::SerializedScriptValue>,WTF::DefaultRefDerefTraits<WebCore::SerializedScriptValue>> &&,WTF::CompletionHandler<void ()(void)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(void)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(void)> &&,IPC::Connection*>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1130B00;
  a1[1] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::Ref<WebCore::SerializedScriptValue,WTF::RawPtrTraits<WebCore::SerializedScriptValue>,WTF::DefaultRefDerefTraits<WebCore::SerializedScriptValue>> &&<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkBroadcastChannelRegistry::PostMessage,WebKit::WebBroadcastChannelRegistry::postMessage(WebCore::PartitionedSecurityOrigin const&,WTF::String const&,WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::SerializedScriptValue,WTF::RawPtrTraits<WebCore::SerializedScriptValue>,WTF::DefaultRefDerefTraits<WebCore::SerializedScriptValue>> &&,WTF::CompletionHandler<void ()(void)> &&)::$_0>(WebKit::WebBroadcastChannelRegistry::postMessage(WebCore::PartitionedSecurityOrigin const&,WTF::String const&,WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::SerializedScriptValue,WTF::RawPtrTraits<WebCore::SerializedScriptValue>,WTF::DefaultRefDerefTraits<WebCore::SerializedScriptValue>> &&,WTF::CompletionHandler<void ()(void)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(void)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(void)> &&,IPC::Connection*>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1130B00;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

void *WTF::Detail::CallableWrapper<WebKit::WebBroadcastChannelRegistry::postMessageLocally(WebCore::PartitionedSecurityOrigin const&,WTF::String const&,std::optional<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebCore::SerializedScriptValue,WTF::RawPtrTraits<WebCore::SerializedScriptValue>,WTF::DefaultRefDerefTraits<WebCore::SerializedScriptValue>> &&,WTF::Ref<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,WTF::RawPtrTraits<WTF::DestructionThread>,WTF::DefaultRefDerefTraits<WTF::DestructionThread>> &&)::$_0,void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1130B28;
  a1[1] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebBroadcastChannelRegistry::postMessageLocally(WebCore::PartitionedSecurityOrigin const&,WTF::String const&,std::optional<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebCore::SerializedScriptValue,WTF::RawPtrTraits<WebCore::SerializedScriptValue>,WTF::DefaultRefDerefTraits<WebCore::SerializedScriptValue>> &&,WTF::Ref<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,WTF::RawPtrTraits<WTF::DestructionThread>,WTF::DefaultRefDerefTraits<WTF::DestructionThread>> &&)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1130B28;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

unsigned __int8 *std::__optional_storage_base<WebCore::Color,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::Color,false>>(unsigned __int8 *result, unsigned __int8 *a2)
{
  if (result[8] == a2[8])
  {
    if (result != a2 && result[8])
    {
      if ((*result & 0x8000000000000) != 0)
      {
        v5 = (*result & 0xFFFFFFFFFFFFLL);
        if (atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v5);
          v6 = a2;
          v8 = result;
          WTF::fastFree(v5, a2);
          a2 = v6;
          result = v8;
        }
      }

      v2 = *a2;
      *a2 = 0;
      *result = v2;
    }
  }

  else if (result[8])
  {
    if ((*result & 0x8000000000000) != 0)
    {
      v4 = (*result & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v4);
        v7 = result;
        WTF::fastFree(v4, a2);
        result = v7;
      }
    }

    result[8] = 0;
  }

  else
  {
    *result = 0;
    if (result != a2)
    {
      v3 = *a2;
      *a2 = 0;
      *result = v3;
    }

    result[8] = 1;
  }

  return result;
}

WebCore::FileChooser *WTF::RefCounted<WebCore::FileChooser>::deref(WebCore::FileChooser *result)
{
  if (*result == 1)
  {
    WebCore::FileChooser::~FileChooser(result);

    return WTF::fastFree(v2, v3);
  }

  else
  {
    --*result;
  }

  return result;
}

WebKit::WebOpenPanelResultListener *WTF::RefCounted<WebKit::WebOpenPanelResultListener>::deref(WebKit::WebOpenPanelResultListener *result, void *a2)
{
  if (*result == 1)
  {
    WebKit::WebOpenPanelResultListener::~WebOpenPanelResultListener(result, a2);

    return WTF::fastFree(v3, v4);
  }

  else
  {
    --*result;
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkConnectionToWebProcess::RegisterBlobPathForTesting,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1130B50;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkConnectionToWebProcess::RegisterBlobPathForTesting,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1130B50;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkConnectionToWebProcess::RegisterBlobPathForTesting,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPageProxy::ResolveAccessibilityHitTestForTesting,WTF::CompletionHandler<void ()(WTF::String)>>(WTF::CompletionHandler<void ()(WTF::String)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1130B78;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPageProxy::ResolveAccessibilityHitTestForTesting,WTF::CompletionHandler<void ()(WTF::String)>>(WTF::CompletionHandler<void ()(WTF::String)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1130B78;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPageProxy::ResolveAccessibilityHitTestForTesting,WTF::CompletionHandler<void ()(WTF::String)>>(WTF::CompletionHandler<void ()(WTF::String)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
{
  if (a3 && *a3)
  {
    IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a3, &v12);
    if (v13 & 1) != 0 || (v9 = *a3, v10 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v11 = *(a3 + 3)) != 0) && v10 && ((*(*v11 + 16))(v11, v9), (v13))
    {
      v5 = v12;
      v12 = 0;
      v14 = v5;
      WTF::CompletionHandler<void ()(WTF::String)>::operator()((a1 + 8), &v14);
      result = v14;
      v14 = 0;
      if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v6);
      }

      if (v13)
      {
        result = v12;
        v12 = 0;
        if (result)
        {
          if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            return WTF::StringImpl::destroy(result, v6);
          }
        }
      }
    }

    else
    {
      return IPC::Connection::cancelReply<Messages::WebPage::ResolveAccessibilityHitTestForTesting,WTF::CompletionHandler<void ()(WTF::String)>>((a1 + 8));
    }
  }

  else
  {
    v8 = (a1 + 8);

    return IPC::Connection::cancelReply<Messages::WebPage::ResolveAccessibilityHitTestForTesting,WTF::CompletionHandler<void ()(WTF::String)>>(v8);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPageProxy::StartApplePayAMSUISession,WTF::CompletionHandler<void ()(std::optional<BOOL> &&)>>(WTF::CompletionHandler<void ()(std::optional<BOOL> &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(std::optional<BOOL> &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(std::optional<BOOL> &&)>,IPC::Decoder>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1130BA0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPageProxy::StartApplePayAMSUISession,WTF::CompletionHandler<void ()(std::optional<BOOL> &&)>>(WTF::CompletionHandler<void ()(std::optional<BOOL> &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(std::optional<BOOL> &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(std::optional<BOOL> &&)>,IPC::Decoder>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1130BA0;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPageProxy::StartApplePayAMSUISession,WTF::CompletionHandler<void ()(std::optional<BOOL> &&)>>(WTF::CompletionHandler<void ()(std::optional<BOOL> &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(std::optional<BOOL> &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(std::optional<BOOL> &&)>,IPC::Decoder>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
{
  if (a3 && *a3)
  {
    v4 = IPC::Decoder::decode<std::tuple<std::optional<BOOL>>>(a3);
    v8 = v4;
    v9 = BYTE2(v4);
    if ((v4 & 0x10000) != 0)
    {
      v5 = *(a1 + 8);
      *(a1 + 8) = 0;
      (*(*v5 + 16))(v5, &v8);
    }

    else
    {
      v10 = 0;
      v5 = *(a1 + 8);
      *(a1 + 8) = 0;
      (*(*v5 + 16))(v5, &v10);
    }
  }

  else
  {
    v7 = 0;
    v5 = *(a1 + 8);
    *(a1 + 8) = 0;
    (*(*v5 + 16))(v5, &v7);
  }

  return (*(*v5 + 8))(v5);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPageProxy::BeginSystemPreview,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1130BC8;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPageProxy::BeginSystemPreview,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1130BC8;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPageProxy::BeginSystemPreview,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPageProxy::RequestCookieConsent,WTF::CompletionHandler<void ()(WebCore::CookieConsentDecisionResult)>>(WTF::CompletionHandler<void ()(WebCore::CookieConsentDecisionResult)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1130BF0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPageProxy::RequestCookieConsent,WTF::CompletionHandler<void ()(WebCore::CookieConsentDecisionResult)>>(WTF::CompletionHandler<void ()(WebCore::CookieConsentDecisionResult)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1130BF0;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPageProxy::RequestCookieConsent,WTF::CompletionHandler<void ()(WebCore::CookieConsentDecisionResult)>>(WTF::CompletionHandler<void ()(WebCore::CookieConsentDecisionResult)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (!a3 || (v5 = *a3) == 0)
  {
    LOBYTE(v10) = 0;
    goto LABEL_18;
  }

  v6 = a3[1];
  v7 = a3[2];
  if (v6 <= &v7[-v5])
  {
    *a3 = 0;
    a3[1] = 0;
    v11 = a3[3];
    if (v11)
    {
      if (v6)
      {
        (*(*v11 + 16))(v11);
        v5 = *a3;
        v6 = a3[1];
        goto LABEL_11;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
  }

  else
  {
    a3[2] = (v7 + 1);
    if (v7)
    {
      v8 = *v7;
      if (v8 < 3)
      {
        v9 = 256;
        goto LABEL_16;
      }

      goto LABEL_14;
    }
  }

LABEL_11:
  *a3 = 0;
  a3[1] = 0;
  v12 = a3[3];
  if (v12)
  {
    if (v6)
    {
      (*(*v12 + 16))(v12, v5);
      v5 = *a3;
      v6 = a3[1];
      goto LABEL_14;
    }
  }

  else
  {
    v6 = 0;
  }

  v5 = 0;
LABEL_14:
  *a3 = 0;
  a3[1] = 0;
  v13 = a3[3];
  if (!v13 || !v6)
  {
    goto LABEL_15;
  }

  (*(*v13 + 16))(v13, v5);
  v9 = 0;
  v17 = *a3;
  v18 = a3[1];
  v19 = a3[3];
  *a3 = 0;
  a3[1] = 0;
  v8 = 0;
  if (v19 && v18)
  {
    (*(*v19 + 16))(v19, v17);
LABEL_15:
    v9 = 0;
    v8 = 0;
  }

LABEL_16:
  v10 = v8 | v9;
  if (v10 <= 0x100)
  {
    LOBYTE(v10) = 0;
  }

LABEL_18:
  v14 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v14 + 16))(v14, v10);
  v15 = *(*v14 + 8);

  return v15(v14);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(std::optional<WebCore::ImageBufferResourceLimits>)>,void,WebCore::ImageBufferResourceLimits>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1130C18;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(std::optional<WebCore::ImageBufferResourceLimits>)>,void,WebCore::ImageBufferResourceLimits>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1130C18;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(std::optional<WebCore::ImageBufferResourceLimits>)>,void,WebCore::ImageBufferResourceLimits>::call(uint64_t a1, _OWORD *a2)
{
  v2 = a2[3];
  v6[2] = a2[2];
  v6[3] = v2;
  v3 = a2[1];
  v6[0] = *a2;
  v6[1] = v3;
  v4 = *(a1 + 8);
  *(a1 + 8) = 0;
  v7 = 1;
  (*(*v4 + 16))(v4, v6);
  return (*(*v4 + 8))(v4);
}

IPC::Encoder *IPC::Connection::send<Messages::WebPageProxy::ShowColorPicker>(uint64_t *a1, WebCore::Color **a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 2373;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v11 = v6;
  IPC::ArgumentCoder<WebCore::Color,void>::encode(v6, *a2);
  IPC::ArgumentCoder<WebCore::IntRect,void>::encode(v6, a2[1]);
  v12 = *(a2 + 16);
  IPC::Encoder::operator<<<BOOL>(v6, &v12);
  IPC::VectorArgumentCoder<false,WebCore::Color,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::Color,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(v6, a2[3]);
  IPC::Connection::sendMessageImpl(a1, &v11, 0, 0);
  result = v11;
  v11 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v7);
    return bmalloc::api::tzoneFree(v9, v10);
  }

  return result;
}

void WebKit::WebDataListSuggestionPicker::~WebDataListSuggestionPicker(WebKit::WebDataListSuggestionPicker *this, void *a2)
{
  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  v4 = *(this + 3);
  if (v4)
  {
    v5 = *(v4 + 8);
    if (!v5)
    {
LABEL_9:
      __break(0xC471u);
      JUMPOUT(0x19E37D23CLL);
    }

    *(v4 + 8) = v5 - 1;
  }

  if (*(this + 4) != 1)
  {
    goto LABEL_9;
  }

  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, a2);
}

{
  WebKit::WebDataListSuggestionPicker::~WebDataListSuggestionPicker(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

void WebKit::WebDataListSuggestionPicker::handleKeydownWithIdentifier(WebKit::WebDataListSuggestionPicker *this, const WTF::String *a2)
{
  if (MEMORY[0x19EB01EF0](*a2, "U+001B", 6))
  {

    WebKit::WebDataListSuggestionPicker::close(this);
  }

  else
  {
    v4 = *(this + 4);
    if (v4)
    {
      v5 = *(v4 + 8);
      if (v5)
      {
        CFRetain(*(v5 - 8));
        {
          v7 = WebKit::WebProcess::singleton(void)::process;
        }

        else
        {
          v17 = WebKit::WebProcess::operator new(0x370, v6);
          v7 = WebKit::WebProcess::WebProcess(v17);
          WebKit::WebProcess::singleton(void)::process = v7;
        }

        WebKit::AuxiliaryProcess::protectedParentProcessConnection(v7, &v18);
        v8 = v18;
        v9 = *(v5 + 32);
        v11 = IPC::Encoder::operator new(0x238, v10);
        *v11 = 2265;
        *(v11 + 2) = 0;
        *(v11 + 3) = 0;
        *(v11 + 1) = v9;
        *(v11 + 68) = 0;
        *(v11 + 70) = 0;
        *(v11 + 69) = 0;
        IPC::Encoder::encodeHeader(v11);
        v19 = v11;
        IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v11, a2);
        IPC::Connection::sendMessageImpl(v8, &v19, 0, 0);
        v13 = v19;
        v19 = 0;
        if (v13)
        {
          IPC::Encoder::~Encoder(v13, v12);
          bmalloc::api::tzoneFree(v15, v16);
        }

        v14 = v18;
        v18 = 0;
        if (v14)
        {
          WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v14);
        }

        CFRelease(*(v5 - 8));
      }
    }
  }
}

void WebKit::WebDataListSuggestionPicker::close(WebKit::WebDataListSuggestionPicker *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      CFRetain(*(v2 - 8));
      {
        v4 = WebKit::WebProcess::singleton(void)::process;
      }

      else
      {
        v14 = WebKit::WebProcess::operator new(0x370, v3);
        v4 = WebKit::WebProcess::WebProcess(v14);
        WebKit::WebProcess::singleton(void)::process = v4;
      }

      WebKit::AuxiliaryProcess::protectedParentProcessConnection(v4, &v15);
      v5 = v15;
      v6 = *(v2 + 32);
      v8 = IPC::Encoder::operator new(0x238, v7);
      *v8 = 2249;
      *(v8 + 2) = 0;
      *(v8 + 3) = 0;
      *(v8 + 1) = v6;
      *(v8 + 68) = 0;
      *(v8 + 70) = 0;
      *(v8 + 69) = 0;
      IPC::Encoder::encodeHeader(v8);
      v16 = v8;
      IPC::Connection::sendMessageImpl(v5, &v16, 0, 0);
      v10 = v16;
      v16 = 0;
      if (v10)
      {
        IPC::Encoder::~Encoder(v10, v9);
        bmalloc::api::tzoneFree(v12, v13);
      }

      v11 = v15;
      v15 = 0;
      if (v11)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v11);
      }

      CFRelease(*(v2 - 8));
    }
  }
}

uint64_t WebKit::WebDataListSuggestionPicker::didSelectOption(uint64_t this, const WTF::String *a2)
{
  v2 = *(this + 24);
  if (v2)
  {
    ++v2[2];
    this = (*(*v2 + 32))(v2, a2);
    v3 = v2[2];
    if (v3)
    {
      v2[2] = v3 - 1;
    }

    else
    {
      this = 290;
      __break(0xC471u);
    }
  }

  return this;
}

uint64_t WebKit::WebDataListSuggestionPicker::didCloseSuggestions(uint64_t this)
{
  v1 = *(this + 24);
  if (v1)
  {
    ++v1[2];
    this = (*(*v1 + 40))(v1);
    v2 = v1[2];
    if (v2)
    {
      v1[2] = v2 - 1;
    }

    else
    {
      this = 290;
      __break(0xC471u);
    }
  }

  return this;
}

uint64_t WebKit::WebDataListSuggestionPicker::displayWithActivationType(uint64_t result, char a2)
{
  v2 = *(result + 24);
  if (v2)
  {
    v4 = result;
    ++v2[2];
    (*(*v2 + 24))(&v33, v2);
    if (!HIDWORD(v34))
    {
      WebKit::WebDataListSuggestionPicker::close(v4);
      goto LABEL_20;
    }

    v6 = *(v4 + 4);
    if (!v6)
    {
      goto LABEL_20;
    }

    v7 = *(v6 + 8);
    if (!v7)
    {
      goto LABEL_20;
    }

    CFRetain(*(v7 - 8));
    *&v32 = (*(*v2 + 16))(v2);
    *(&v32 + 1) = v8;
    v9 = WebKit::WebPage::localMainFrameView((v7 - 16));
    if (v9)
    {
      v10 = v9;
      ++*(v9 + 8);
      v31[0] = WebCore::ScrollView::unobscuredContentRect();
      v31[1] = v11;
      v28 = WebCore::ScrollView::contentsToRootView(v10, v31);
      v29[0] = v12;
      if ((WebCore::IntRect::intersects(&v28, &v32) & 1) == 0)
      {
        WebKit::WebDataListSuggestionPicker::close(v4);
        if (*(v10 + 2) == 1)
        {
          (*(*v10 + 8))(v10);
        }

        else
        {
          --*(v10 + 2);
        }

LABEL_19:
        CFRelease(*(v7 - 8));
LABEL_20:
        result = WTF::Vector<WebCore::DataListSuggestion,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v33, v5);
        v23 = v2[2];
        if (v23)
        {
          v2[2] = v23 - 1;
        }

        else
        {
          result = 290;
          __break(0xC471u);
        }

        return result;
      }

      if (*(v10 + 2) == 1)
      {
        (*(*v10 + 8))(v10);
      }

      else
      {
        --*(v10 + 2);
      }
    }

    WebKit::WebPage::setActiveDataListSuggestionPicker((v7 - 16), v4);
    LOBYTE(v28) = a2;
    v29[0] = v33;
    v14 = v34;
    v33 = 0;
    v34 = 0;
    v29[1] = v14;
    v30 = v32;
    {
      v15 = WebKit::WebProcess::singleton(void)::process;
    }

    else
    {
      v26 = WebKit::WebProcess::operator new(0x370, v13);
      v15 = WebKit::WebProcess::WebProcess(v26);
      WebKit::WebProcess::singleton(void)::process = v15;
    }

    WebKit::AuxiliaryProcess::protectedParentProcessConnection(v15, &v27);
    v16 = v27;
    v17 = *(v7 + 32);
    v19 = IPC::Encoder::operator new(0x238, v18);
    *v19 = 2376;
    *(v19 + 2) = 0;
    *(v19 + 3) = 0;
    *(v19 + 1) = v17;
    *(v19 + 68) = 0;
    *(v19 + 70) = 0;
    *(v19 + 69) = 0;
    IPC::Encoder::encodeHeader(v19);
    v31[0] = v19;
    IPC::ArgumentCoder<WebCore::DataListSuggestionInformation,void>::encode(v19, &v28);
    IPC::Connection::sendMessageImpl(v16, v31, 0, 0);
    v21 = v31[0];
    v31[0] = 0;
    if (v21)
    {
      IPC::Encoder::~Encoder(v21, v20);
      bmalloc::api::tzoneFree(v24, v25);
    }

    v22 = v27;
    v27 = 0;
    if (v22)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v22);
    }

    WTF::Vector<WebCore::DataListSuggestion,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v29, v20);
    goto LABEL_19;
  }

  return result;
}

uint64_t WebKit::WebDataListSuggestionPicker::detach(uint64_t this)
{
  v1 = *(this + 24);
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = *(v1 + 8);
  if (v2)
  {
    *(v1 + 8) = v2 - 1;
LABEL_4:
    *(this + 24) = 0;
    return this;
  }

  this = 290;
  __break(0xC471u);
  return this;
}

void WebKit::WebDateTimeChooser::~WebDateTimeChooser(WebKit::WebDateTimeChooser *this, void *a2)
{
  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  v4 = *(this + 3);
  *(this + 3) = 0;
  if (v4)
  {
    v5 = *(v4 + 8);
    if (!v5)
    {
LABEL_8:
      __break(0xC471u);
      JUMPOUT(0x19E37D9B4);
    }

    *(v4 + 8) = v5 - 1;
  }

  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, a2);
  if (*(this + 4) != 1)
  {
    goto LABEL_8;
  }
}

{
  WebKit::WebDateTimeChooser::~WebDateTimeChooser(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

void WebKit::WebDateTimeChooser::endChooser(WebKit::WebDateTimeChooser *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      CFRetain(*(v2 - 8));
      {
        v4 = WebKit::WebProcess::singleton(void)::process;
      }

      else
      {
        v14 = WebKit::WebProcess::operator new(0x370, v3);
        v4 = WebKit::WebProcess::WebProcess(v14);
        WebKit::WebProcess::singleton(void)::process = v4;
      }

      WebKit::AuxiliaryProcess::protectedParentProcessConnection(v4, &v15);
      v5 = v15;
      v6 = *(v2 + 32);
      v8 = IPC::Encoder::operator new(0x238, v7);
      *v8 = 2250;
      *(v8 + 2) = 0;
      *(v8 + 3) = 0;
      *(v8 + 1) = v6;
      *(v8 + 68) = 0;
      *(v8 + 70) = 0;
      *(v8 + 69) = 0;
      IPC::Encoder::encodeHeader(v8);
      v16 = v8;
      IPC::Connection::sendMessageImpl(v5, &v16, 0, 0);
      v10 = v16;
      v16 = 0;
      if (v10)
      {
        IPC::Encoder::~Encoder(v10, v9);
        bmalloc::api::tzoneFree(v12, v13);
      }

      v11 = v15;
      v15 = 0;
      if (v11)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v11);
      }

      CFRelease(*(v2 - 8));
    }
  }
}

void WebKit::WebDateTimeChooser::showChooser(WebKit::WebDateTimeChooser *a1, uint64_t a2)
{
  v2 = *(a1 + 4);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      CFRetain(*(v3 - 8));
      WebKit::WebPage::setActiveDateTimeChooser((v3 - 16), a1);
      {
        v7 = WebKit::WebProcess::singleton(void)::process;
      }

      else
      {
        v17 = WebKit::WebProcess::operator new(0x370, v6);
        v7 = WebKit::WebProcess::WebProcess(v17);
        WebKit::WebProcess::singleton(void)::process = v7;
      }

      WebKit::AuxiliaryProcess::protectedParentProcessConnection(v7, &v18);
      v8 = v18;
      v9 = *(v3 + 32);
      v11 = IPC::Encoder::operator new(0x238, v10);
      *v11 = 2377;
      *(v11 + 2) = 0;
      *(v11 + 3) = 0;
      *(v11 + 1) = v9;
      *(v11 + 68) = 0;
      *(v11 + 70) = 0;
      *(v11 + 69) = 0;
      IPC::Encoder::encodeHeader(v11);
      v19 = v11;
      IPC::ArgumentCoder<WebCore::DateTimeChooserParameters,void>::encode(v11, a2);
      IPC::Connection::sendMessageImpl(v8, &v19, 0, 0);
      v13 = v19;
      v19 = 0;
      if (v13)
      {
        IPC::Encoder::~Encoder(v13, v12);
        bmalloc::api::tzoneFree(v15, v16);
      }

      v14 = v18;
      v18 = 0;
      if (v14)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v14);
      }

      CFRelease(*(v3 - 8));
    }
  }
}

void WebKit::WebDiagnosticLoggingClient::~WebDiagnosticLoggingClient(WebKit::WebDiagnosticLoggingClient *this, void *a2)
{
  *this = &unk_1F1130D60;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3);
      WTF::fastFree(v3, a2);
    }
  }
}

void WebKit::WebDiagnosticLoggingClient::operator delete(WebKit::WebDiagnosticLoggingClient *a1, void *a2)
{
  WebKit::WebDiagnosticLoggingClient::~WebDiagnosticLoggingClient(a1, a2);
  if (*(v2 + 2))
  {
    *v2 = 0;
    *(v2 + 1) = 0;
    *(v2 + 2) = 0;
  }

  else
  {

    bmalloc::api::tzoneFree(v2, v3);
  }
}

void WebKit::WebDiagnosticLoggingClient::logDiagnosticMessage(uint64_t a1, uint64_t *a2, uint64_t *a3, int a4)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = *(v4 + 8);
    if (v5)
    {
      v9 = CFRetain(*(v5 - 8));
      if (!a4 || (WTF::cryptographicallyRandomUnitInterval(v9), v10 <= 0.05))
      {
        v11 = (*(*(v5 + 16) + 56))(v5 + 16);
        v13 = IPC::Encoder::operator new(0x238, v12);
        *v13 = 2280;
        *(v13 + 2) = 0;
        *(v13 + 3) = 0;
        *(v13 + 1) = v11;
        *(v13 + 68) = 0;
        *(v13 + 70) = 0;
        *(v13 + 69) = 0;
        IPC::Encoder::encodeHeader(v13);
        v18 = v13;
        IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v13, a2);
        IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v13, a3);
        IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v13, 0);
        (*(*(v5 + 16) + 32))(v5 + 16, &v18, 0);
        v15 = v18;
        v18 = 0;
        if (v15)
        {
          IPC::Encoder::~Encoder(v15, v14);
          bmalloc::api::tzoneFree(v16, v17);
        }
      }

      CFRelease(*(v5 - 8));
    }
  }
}

void WebKit::WebDiagnosticLoggingClient::logDiagnosticMessageWithResult(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = *(v5 + 8);
    if (v6)
    {
      v11 = CFRetain(*(v6 - 8));
      if (!a5 || (WTF::cryptographicallyRandomUnitInterval(v11), v12 <= 0.05))
      {
        v20[0] = a2;
        v20[1] = a3;
        v21 = a4;
        v22 = 0;
        v13 = (*(*(v6 + 16) + 56))(v6 + 16);
        v15 = IPC::Encoder::operator new(0x238, v14);
        *v15 = 2283;
        *(v15 + 2) = 0;
        *(v15 + 3) = 0;
        *(v15 + 1) = v13;
        *(v15 + 68) = 0;
        *(v15 + 70) = 0;
        *(v15 + 69) = 0;
        IPC::Encoder::encodeHeader(v15);
        v23 = v15;
        Messages::WebPageProxy::LogDiagnosticMessageWithResultFromWebProcess::encode<IPC::Encoder>(v20, v15);
        (*(*(v6 + 16) + 32))(v6 + 16, &v23, 0);
        v17 = v23;
        v23 = 0;
        if (v17)
        {
          IPC::Encoder::~Encoder(v17, v16);
          bmalloc::api::tzoneFree(v18, v19);
        }
      }

      CFRelease(*(v6 - 8));
    }
  }
}

void WebKit::WebDiagnosticLoggingClient::logDiagnosticMessageWithValue(uint64_t a1, uint64_t *a2, uint64_t *a3, int a4, int a5, double a6)
{
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *(v6 + 8);
    if (v7)
    {
      v13 = CFRetain(*(v7 - 8));
      if (!a5 || (WTF::cryptographicallyRandomUnitInterval(v13), v14 <= 0.05))
      {
        v15 = (*(*(v7 + 16) + 56))(v7 + 16);
        v17 = IPC::Encoder::operator new(0x238, v16);
        *v17 = 2285;
        *(v17 + 2) = 0;
        *(v17 + 3) = 0;
        *(v17 + 1) = v15;
        *(v17 + 68) = 0;
        *(v17 + 70) = 0;
        *(v17 + 69) = 0;
        IPC::Encoder::encodeHeader(v17);
        v22 = v17;
        IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v17, a2);
        IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v17, a3);
        IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(v17, a6);
        IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v17, a4);
        IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v17, 0);
        (*(*(v7 + 16) + 32))(v7 + 16, &v22, 0);
        v19 = v22;
        v22 = 0;
        if (v19)
        {
          IPC::Encoder::~Encoder(v19, v18);
          bmalloc::api::tzoneFree(v20, v21);
        }
      }

      CFRelease(*(v7 - 8));
    }
  }
}

void WebKit::WebDiagnosticLoggingClient::logDiagnosticMessageWithEnhancedPrivacy(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = *(v4 + 8);
    if (v5)
    {
      v9 = CFRetain(*(v5 - 8));
      if (!a4 || (WTF::cryptographicallyRandomUnitInterval(v9), v10 <= 0.05))
      {
        v12[0] = a2;
        v12[1] = a3;
        v13 = 0;
        IPC::MessageSender::send<Messages::WebPageProxy::LogDiagnosticMessageWithEnhancedPrivacyFromWebProcess>(v5 + 16, v12);
      }

      v11 = *(v5 - 8);

      CFRelease(v11);
    }
  }
}

IPC::Encoder *IPC::MessageSender::send<Messages::WebPageProxy::LogDiagnosticMessageWithEnhancedPrivacyFromWebProcess>(uint64_t a1, void *a2)
{
  v4 = (*(*a1 + 56))(a1);

  return IPC::MessageSender::send<Messages::WebPageProxy::LogDiagnosticMessageWithEnhancedPrivacyFromWebProcess>(a1, a2, v4);
}

void WebKit::WebDiagnosticLoggingClient::logDiagnosticMessageWithValueDictionary(uint64_t a1, uint64_t *a2, uint64_t *a3, void **a4, int a5)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = *(v5 + 8);
    if (v6)
    {
      v11 = CFRetain(*(v6 - 8));
      if (!a5 || (WTF::cryptographicallyRandomUnitInterval(v11), v12 <= 0.05))
      {
        v13 = (*(*(v6 + 16) + 56))(v6 + 16);
        v15 = IPC::Encoder::operator new(0x238, v14);
        *v15 = 2284;
        *(v15 + 2) = 0;
        *(v15 + 3) = 0;
        *(v15 + 1) = v13;
        *(v15 + 68) = 0;
        *(v15 + 70) = 0;
        *(v15 + 69) = 0;
        IPC::Encoder::encodeHeader(v15);
        v20 = v15;
        IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v15, a2);
        IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v15, a3);
        IPC::ArgumentCoder<WTF::HashMap<WTF::String,mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,void>::encode<IPC::Encoder,WTF::HashMap<WTF::String,mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc> const&>(v15, a4);
        IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v15, 0);
        (*(*(v6 + 16) + 32))(v6 + 16, &v20, 0);
        v17 = v20;
        v20 = 0;
        if (v17)
        {
          IPC::Encoder::~Encoder(v17, v16);
          bmalloc::api::tzoneFree(v18, v19);
        }
      }

      CFRelease(*(v6 - 8));
    }
  }
}

void WebKit::WebDiagnosticLoggingClient::logDiagnosticMessageWithDomain(uint64_t a1, uint64_t *a2, char a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      CFRetain(*(v4 - 8));
      v7 = (*(*(v4 + 16) + 56))(v4 + 16);
      v9 = IPC::Encoder::operator new(0x238, v8);
      *v9 = 2281;
      *(v9 + 2) = 0;
      *(v9 + 3) = 0;
      *(v9 + 1) = v7;
      *(v9 + 68) = 0;
      *(v9 + 70) = 0;
      *(v9 + 69) = 0;
      IPC::Encoder::encodeHeader(v9);
      v14 = v9;
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v9, a2);
      v15 = a3;
      IPC::Encoder::operator<<<unsigned char>(v9, &v15);
      (*(*(v4 + 16) + 32))(v4 + 16, &v14, 0);
      v11 = v14;
      v14 = 0;
      if (v11)
      {
        IPC::Encoder::~Encoder(v11, v10);
        bmalloc::api::tzoneFree(v12, v13);
      }

      CFRelease(*(v4 - 8));
    }
  }
}

void WebKit::WebDragClient::willPerformDragDestinationAction(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  if (a2 == 4)
  {
    if (v2)
    {
      v3 = *(v2 + 8);
      if (v3)
      {
        CFRetain(*(v3 - 8));
        v4 = *(v3 + 656);
        *(v3 + 656) = 0;
        v5 = *(v3 + 632);
        *(v3 + 632) = v4;
        if (v5)
        {
          WTF::RefCounted<WebKit::SandboxExtension>::deref(v5);
        }

        v6 = *(v3 - 8);
        goto LABEL_10;
      }
    }

    v8 = MEMORY[0x2A0];
    MEMORY[0x2A0] = 0;
    v9 = MEMORY[0x288];
    MEMORY[0x288] = v8;
    if (v9)
    {

      WTF::RefCounted<WebKit::SandboxExtension>::deref(v9);
    }
  }

  else
  {
    if (v2)
    {
      v7 = *(v2 + 8);
      if (v7)
      {
        CFRetain(*(v7 - 8));
        WebKit::WebPage::mayPerformUploadDragDestinationAction((v7 - 16));
        v6 = *(v7 - 8);
LABEL_10:

        CFRelease(v6);
        return;
      }
    }

    WebKit::WebPage::mayPerformUploadDragDestinationAction(0);
  }
}

uint64_t WebKit::WebDragClient::dragSourceActionMaskForPoint(WebKit::WebDragClient *this, const IntPoint *a2)
{
  v2 = *(*(this + 1) + 8);
  CFRetain(*(v2 - 8));
  v3 = *(v2 - 8);
  v4 = *(v2 + 756);
  CFRelease(v3);
  return v4;
}

uint64_t WebKit::WebEditorClient::shouldDeleteRange(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 8);
  if (!v3)
  {
    return 0;
  }

  CFRetain(*(v3 - 8));
  v5 = (*(**(v3 + 352) + 48))(*(v3 + 352), v3 - 16, a2);
  CFRelease(*(v3 - 8));
  return v5;
}

uint64_t WebKit::WebEditorClient::smartInsertDeleteEnabled(WebKit::WebEditorClient *this)
{
  v1 = *(this + 4);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 8);
  if (!v2)
  {
    return 0;
  }

  CFRetain(*(v2 - 8));
  v3 = (*(*(*(v2 + 40) + 120) + 720) >> 4) & 1;
  CFRelease(*(v2 - 8));
  return v3;
}

uint64_t WebKit::WebEditorClient::isSelectTrailingWhitespaceEnabled(WebKit::WebEditorClient *this)
{
  v1 = *(this + 4);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 8);
  if (!v2)
  {
    return 0;
  }

  CFRetain(*(v2 - 8));
  v3 = *(*(*(v2 + 40) + 120) + 712) >> 31;
  CFRelease(*(v2 - 8));
  return v3;
}

uint64_t WebKit::WebEditorClient::shouldBeginEditing(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 8);
  if (!v3)
  {
    return 0;
  }

  CFRetain(*(v3 - 8));
  v5 = (*(**(v3 + 352) + 16))(*(v3 + 352), v3 - 16, a2);
  CFRelease(*(v3 - 8));
  return v5;
}

uint64_t WebKit::WebEditorClient::shouldEndEditing(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 8);
  if (!v3)
  {
    return 0;
  }

  CFRetain(*(v3 - 8));
  v5 = (*(**(v3 + 352) + 24))(*(v3 + 352), v3 - 16, a2);
  CFRelease(*(v3 - 8));
  return v5;
}

uint64_t WebKit::WebEditorClient::shouldInsertNode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 32);
  if (!v4)
  {
    return 0;
  }

  v5 = *(v4 + 8);
  if (!v5)
  {
    return 0;
  }

  CFRetain(*(v5 - 8));
  v9 = (*(**(v5 + 352) + 32))(*(v5 + 352), v5 - 16, a2, a3, a4);
  CFRelease(*(v5 - 8));
  return v9;
}

uint64_t WebKit::WebEditorClient::shouldInsertText(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 32);
  if (!v4)
  {
    return 0;
  }

  v5 = *(v4 + 8);
  if (!v5)
  {
    return 0;
  }

  CFRetain(*(v5 - 8));
  v9 = (*(**(v5 + 352) + 40))(*(v5 + 352), v5 - 16, a2, a3, a4);
  CFRelease(*(v5 - 8));
  return v9;
}

uint64_t WebKit::WebEditorClient::shouldChangeSelectedRange(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 32);
  if (!v5)
  {
    return 0;
  }

  v6 = *(v5 + 8);
  if (!v6)
  {
    return 0;
  }

  CFRetain(*(v6 - 8));
  v11 = (*(**(v6 + 352) + 56))(*(v6 + 352), v6 - 16, a2, a3, a4, a5);
  CFRelease(*(v6 - 8));
  return v11;
}

uint64_t WebKit::WebEditorClient::shouldApplyStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (!v3)
  {
    return 0;
  }

  v4 = *(v3 + 8);
  if (!v4)
  {
    return 0;
  }

  CFRetain(*(v4 - 8));
  v7 = (*(**(v4 + 352) + 64))(*(v4 + 352), v4 - 16, a2, a3);
  CFRelease(*(v4 - 8));
  return v7;
}

void WebKit::WebEditorClient::registerAttachmentIdentifier(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, unsigned int **a5)
{
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = *(v5 + 8);
    if (v6)
    {
      CFRetain(*(v6 - 8));
      v11 = *a5;
      v12 = *(*a5 + 7);
      *a5 = 0;
      v22 = v12;
      v23 = v11;
      v24 = 0;
      v13 = (*(*(v6 + 16) + 56))(v6 + 16);
      v15 = IPC::Encoder::operator new(0x238, v14);
      *v15 = 2316;
      *(v15 + 2) = 0;
      *(v15 + 3) = 0;
      *(v15 + 1) = v13;
      *(v15 + 68) = 0;
      *(v15 + 70) = 0;
      *(v15 + 69) = 0;
      IPC::Encoder::encodeHeader(v15);
      v25 = v15;
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v15, a2);
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v15, a3);
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v15, a4);
      IPC::ArgumentCoder<IPC::SharedBufferReference,void>::encode(v15, &v22);
      (*(*(v6 + 16) + 32))(v6 + 16, &v25, 0);
      v17 = v25;
      v25 = 0;
      if (v17)
      {
        IPC::Encoder::~Encoder(v17, v16);
        bmalloc::api::tzoneFree(v20, v21);
      }

      v18 = v24;
      v24 = 0;
      if (v18)
      {
        WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v18);
      }

      v19 = v23;
      v23 = 0;
      if (v19)
      {
        if (atomic_fetch_add(v19 + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v19 + 2);
          (*(*v19 + 8))(v19);
        }
      }

      CFRelease(*(v6 - 8));
    }
  }
}

void WebKit::WebEditorClient::registerAttachments(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      CFRetain(*(v3 - 8));
      v5 = (*(*(v3 + 16) + 56))(v3 + 16);
      v7 = IPC::Encoder::operator new(0x238, v6);
      *v7 = 2318;
      *(v7 + 2) = 0;
      *(v7 + 3) = 0;
      *(v7 + 1) = v5;
      *(v7 + 68) = 0;
      *(v7 + 70) = 0;
      *(v7 + 69) = 0;
      IPC::Encoder::encodeHeader(v7);
      v15 = v7;
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v7, *(a2 + 12));
      v8 = *(a2 + 12);
      if (v8)
      {
        v9 = *a2;
        v10 = 24 * v8;
        do
        {
          IPC::ArgumentCoder<WebCore::SerializedAttachmentData,void>::encode(v7, v9);
          v9 += 3;
          v10 -= 24;
        }

        while (v10);
      }

      (*(*(v3 + 16) + 32))(v3 + 16, &v15, 0);
      v12 = v15;
      v15 = 0;
      if (v12)
      {
        IPC::Encoder::~Encoder(v12, v11);
        bmalloc::api::tzoneFree(v13, v14);
      }

      CFRelease(*(v3 - 8));
    }
  }
}

void WebKit::WebEditorClient::registerAttachmentIdentifier(WebKit::WebEditorClient *this, const WTF::String *a2, const WTF::String *a3, const WTF::String *a4)
{
  v4 = *(this + 4);
  if (v4)
  {
    v5 = *(v4 + 8);
    if (v5)
    {
      CFRetain(*(v5 - 8));
      v9 = (*(*(v5 + 16) + 56))(v5 + 16);
      v11 = IPC::Encoder::operator new(0x238, v10);
      *v11 = 2317;
      *(v11 + 2) = 0;
      *(v11 + 3) = 0;
      *(v11 + 1) = v9;
      *(v11 + 68) = 0;
      *(v11 + 70) = 0;
      *(v11 + 69) = 0;
      IPC::Encoder::encodeHeader(v11);
      v16 = v11;
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v11, a2);
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v11, a3);
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v11, a4);
      (*(*(v5 + 16) + 32))(v5 + 16, &v16, 0);
      v13 = v16;
      v16 = 0;
      if (v13)
      {
        IPC::Encoder::~Encoder(v13, v12);
        bmalloc::api::tzoneFree(v14, v15);
      }

      CFRelease(*(v5 - 8));
    }
  }
}

void WebKit::WebEditorClient::registerAttachmentIdentifier(WebKit::WebEditorClient *this, const WTF::String *a2)
{
  v2 = *(this + 4);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      CFRetain(*(v3 - 8));
      v5 = (*(*(v3 + 16) + 56))(v3 + 16);
      v7 = IPC::Encoder::operator new(0x238, v6);
      *v7 = 2315;
      *(v7 + 2) = 0;
      *(v7 + 3) = 0;
      *(v7 + 1) = v5;
      *(v7 + 68) = 0;
      *(v7 + 70) = 0;
      *(v7 + 69) = 0;
      IPC::Encoder::encodeHeader(v7);
      v12 = v7;
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v7, a2);
      (*(*(v3 + 16) + 32))(v3 + 16, &v12, 0);
      v9 = v12;
      v12 = 0;
      if (v9)
      {
        IPC::Encoder::~Encoder(v9, v8);
        bmalloc::api::tzoneFree(v10, v11);
      }

      CFRelease(*(v3 - 8));
    }
  }
}

void WebKit::WebEditorClient::cloneAttachmentData(WebKit::WebEditorClient *this, const WTF::String *a2, const WTF::String *a3)
{
  v3 = *(this + 4);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      CFRetain(*(v4 - 8));
      v7 = (*(*(v4 + 16) + 56))(v4 + 16);
      v9 = IPC::Encoder::operator new(0x238, v8);
      *v9 = 2161;
      *(v9 + 2) = 0;
      *(v9 + 3) = 0;
      *(v9 + 1) = v7;
      *(v9 + 68) = 0;
      *(v9 + 70) = 0;
      *(v9 + 69) = 0;
      IPC::Encoder::encodeHeader(v9);
      v14 = v9;
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v9, a2);
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v9, a3);
      (*(*(v4 + 16) + 32))(v4 + 16, &v14, 0);
      v11 = v14;
      v14 = 0;
      if (v11)
      {
        IPC::Encoder::~Encoder(v11, v10);
        bmalloc::api::tzoneFree(v12, v13);
      }

      CFRelease(*(v4 - 8));
    }
  }
}

void WebKit::WebEditorClient::didInsertAttachmentWithIdentifier(uint64_t a1, uint64_t *a2, uint64_t *a3, char a4)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 8);
    if (v5)
    {
      CFRetain(*(v5 - 8));
      v9 = (*(*(v5 + 16) + 56))(v5 + 16);
      v11 = IPC::Encoder::operator new(0x238, v10);
      *v11 = 2213;
      *(v11 + 2) = 0;
      *(v11 + 3) = 0;
      *(v11 + 1) = v9;
      *(v11 + 68) = 0;
      *(v11 + 70) = 0;
      *(v11 + 69) = 0;
      IPC::Encoder::encodeHeader(v11);
      v16 = v11;
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v11, a2);
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v11, a3);
      v17 = a4;
      IPC::Encoder::operator<<<unsigned char>(v11, &v17);
      (*(*(v5 + 16) + 32))(v5 + 16, &v16, 0);
      v13 = v16;
      v16 = 0;
      if (v13)
      {
        IPC::Encoder::~Encoder(v13, v12);
        bmalloc::api::tzoneFree(v14, v15);
      }

      CFRelease(*(v5 - 8));
    }
  }
}

void WebKit::WebEditorClient::didRemoveAttachmentWithIdentifier(WebKit::WebEditorClient *this, const WTF::String *a2)
{
  v2 = *(this + 4);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      CFRetain(*(v3 - 8));
      v5 = (*(*(v3 + 16) + 56))(v3 + 16);
      v7 = IPC::Encoder::operator new(0x238, v6);
      *v7 = 2226;
      *(v7 + 2) = 0;
      *(v7 + 3) = 0;
      *(v7 + 1) = v5;
      *(v7 + 68) = 0;
      *(v7 + 70) = 0;
      *(v7 + 69) = 0;
      IPC::Encoder::encodeHeader(v7);
      v12 = v7;
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v7, a2);
      (*(*(v3 + 16) + 32))(v3 + 16, &v12, 0);
      v9 = v12;
      v12 = 0;
      if (v9)
      {
        IPC::Encoder::~Encoder(v9, v8);
        bmalloc::api::tzoneFree(v10, v11);
      }

      CFRelease(*(v3 - 8));
    }
  }
}

void WebKit::WebEditorClient::serializedAttachmentDataForIdentifiers(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 32);
  if (!v4 || (v5 = *(v4 + 8)) == 0)
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    return;
  }

  CFRetain(*(v5 - 8));
  v7 = (*(*(v5 + 16) + 56))(v5 + 16);
  v8 = (*(*(v5 + 16) + 48))(v5 + 16);
  if (!v8)
  {
    LOBYTE(v56[0]) = 3;
    v16 = 1;
    v58 = 1;
    goto LABEL_28;
  }

  v10 = v8;
  while (1)
  {
    v11 = *v8;
    if ((*v8 & 1) == 0)
    {
      break;
    }

    v12 = *v8;
    atomic_compare_exchange_strong_explicit(v8, &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v12 == v11)
    {
      goto LABEL_9;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v8);
LABEL_9:
  IPC::Connection::createSyncMessageEncoder(0x104B, v7, v64);
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v64[0], a2);
  v13 = IPC::Connection::sendSyncMessage(v10, v64[1], v64, 0, &v62, INFINITY);
  if (!v63)
  {
    v17 = v62;
    v62 = 0;
    if (*(v17 + 25) == 3194)
    {
      v18 = 11;
    }

    else
    {
      IPC::ArgumentCoder<std::tuple<WTF::Vector<WebCore::SerializedAttachmentData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder>(v17, v56, v15);
      v21 = v57;
      if ((v57 & 1) == 0)
      {
        v19 = *v17;
        v54 = *(v17 + 1);
        *v17 = 0;
        *(v17 + 1) = 0;
        v55 = *(v17 + 3);
        if (v55)
        {
          if (v54)
          {
            (*(*v55 + 16))(v55, v19);
            v21 = v57;
          }
        }
      }

      if (v21)
      {
        *&v20 = 0;
        v22 = v56[0];
        v23 = v56[1];
        *v56 = v20;
        v61 = 1;
        WTF::Vector<WebCore::SerializedAttachmentData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v56, v19);
        v59 = 0;
        v60 = 0;
        v65 = 0;
        v66[0] = 0;
        v56[0] = v17;
        v56[1] = v22;
        v66[1] = 0;
        v57 = v23;
        v58 = 0;
        WTF::Vector<WebCore::SerializedAttachmentData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v66, v24);
        v26 = v65;
        v65 = 0;
        if (v26)
        {
          IPC::Decoder::~Decoder(v26);
          bmalloc::api::tzoneFree(v52, v53);
        }

        WTF::Vector<WebCore::SerializedAttachmentData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v59, v25);
        v16 = 0;
        goto LABEL_22;
      }

      v18 = 14;
    }

    LOBYTE(v56[0]) = v18;
    v58 = 1;
    IPC::Decoder::~Decoder(v17);
    bmalloc::api::tzoneFree(v27, v28);
    v16 = 1;
LABEL_22:
    if (!v63)
    {
      v29 = v62;
      v62 = 0;
      if (v29)
      {
        IPC::Decoder::~Decoder(v29);
        bmalloc::api::tzoneFree(v48, v49);
      }
    }

    goto LABEL_25;
  }

  if (v63 != 1)
  {
    mpark::throw_bad_variant_access(v13);
  }

  LOBYTE(v56[0]) = v62;
  v16 = 1;
  v58 = 1;
LABEL_25:
  v30 = v64[0];
  v64[0] = 0;
  if (v30)
  {
    IPC::Encoder::~Encoder(v30, v14);
    bmalloc::api::tzoneFree(v46, v47);
  }

  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v10);
LABEL_28:
  v59 = 0;
  v60 = 0;
  v31 = &v60;
  if (v16)
  {
    v32 = &v59;
  }

  else
  {
    v32 = &v56[1];
  }

  v33 = *v32;
  *v32 = 0;
  v65 = v33;
  if (!v16)
  {
    v31 = &v57;
  }

  v34 = *v31;
  *v31 = 0;
  v35 = &v60 + 1;
  if (!v16)
  {
    v35 = &v57 + 1;
  }

  v36 = *v35;
  *v35 = 0;
  v66[0] = __PAIR64__(v36, v34);
  WTF::Vector<WebCore::SerializedAttachmentData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v59, v9);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 12) = v36;
  if (v36)
  {
    if (v36 >= 0xAAAAAAB)
    {
      __break(0xC471u);
      return;
    }

    v38 = 3 * v36;
    v39 = WTF::fastMalloc((8 * v38));
    *(a3 + 8) = 8 * v38 / 0x18u;
    *a3 = v39;
    v40 = (v33 + 8 * v38);
    do
    {
      v41 = *v33;
      if (*v33)
      {
        atomic_fetch_add_explicit(v41, 2u, memory_order_relaxed);
      }

      *v39 = v41;
      v42 = *(v33 + 1);
      if (v42)
      {
        atomic_fetch_add_explicit(v42, 2u, memory_order_relaxed);
      }

      v39[1] = v42;
      v43 = *(v33 + 2);
      atomic_fetch_add((v43 + 8), 1u);
      v39[2] = v43;
      v39 += 3;
      v33 = (v33 + 24);
    }

    while (v33 != v40);
    v16 = v58;
  }

  WTF::Vector<WebCore::SerializedAttachmentData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v65, v37);
  if (!v16)
  {
    WTF::Vector<WebCore::SerializedAttachmentData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v56[1], v44);
    v45 = v56[0];
    v56[0] = 0;
    if (v45)
    {
      IPC::Decoder::~Decoder(v45);
      bmalloc::api::tzoneFree(v50, v51);
    }
  }

  CFRelease(*(v5 - 8));
}