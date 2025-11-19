uint64_t WebKit::WebLocalFrameLoaderClient::createHistoryItemTree(uint64_t a1)
{
  v1 = *(*(a1 + 88) + 8);
  if (v1)
  {
    ++v1[4];
    result = WebCore::HistoryController::createItemTree();
    if (v1[4] == 1)
    {
      v3 = *(*v1 + 8);

      return v3(v1);
    }

    else
    {
      --v1[4];
    }
  }

  else
  {
    result = 103;
    __break(0xC471u);
  }

  return result;
}

void WebKit::WebLocalFrameLoaderClient::didExceedNetworkUsageThreshold(WebKit::WebFrame **this)
{
  v54 = *MEMORY[0x1E69E9840];
  v2 = WebKit::WebFrame::page(this[3]);
  if (v2)
  {
    v3 = v2;
    CFRetain(*(v2 + 8));
    v5 = *(v3 + 56);
    if (!v5)
    {
      goto LABEL_51;
    }

    v6 = *(v5 + 176);
    if (!v6 || (*(v6 + 136) & 1) != 0)
    {
      goto LABEL_51;
    }

    ++*(v6 + 16);
    v7 = *(v6 + 224);
    if (!v7)
    {
LABEL_49:
      if (*(v6 + 16) == 1)
      {
        (*(*v6 + 8))(v6);
      }

      else
      {
        --*(v6 + 16);
      }

LABEL_51:
      CFRelease(*(v3 + 8));
      return;
    }

    *(v7 + 28) += 2;
    v8 = *(v7 + 800);
    if (!v8)
    {
LABEL_47:
      if (*(v7 + 28) == 2)
      {
        WebCore::Node::removedLastRef(v7);
      }

      else
      {
        *(v7 + 28) -= 2;
      }

      goto LABEL_49;
    }

    atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
    v42 = v8;
    v9 = *(v7 + 824);
    v43 = *(v7 + 808);
    v44 = v9;
    if (!v8[1])
    {
LABEL_44:
      v34 = v42;
      v42 = 0;
      if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v34, v4);
      }

      goto LABEL_47;
    }

    v10 = qword_1ED641170;
    if (os_log_type_enabled(qword_1ED641170, OS_LOG_TYPE_DEFAULT))
    {
      v11 = this[3];
      v12 = *(v11 + 11);
      v13 = WebKit::WebFrame::page(v11);
      v14 = WebKit::WebFrame::page(this[3]) ? *(WebKit::WebFrame::page(this[3]) + 48) : 0;
      v38 = WTF::URL::host(&v42);
      v39 = v15;
      v40 = v16;
      WTF::StringView::utf8();
      v17 = v41 ? v41 + 16 : 0;
      *buf = 134219267;
      *&buf[4] = this;
      *&buf[12] = 2048;
      *&buf[14] = v11;
      v46 = 2048;
      v47 = v12;
      v48 = 2048;
      v49 = v13;
      v50 = 2048;
      v51 = v14;
      v52 = 2085;
      v53 = v17;
      _os_log_impl(&dword_19D52D000, v10, OS_LOG_TYPE_DEFAULT, "%p - [webFrame=%p, webFrameID=%llu, webPage=%p, webPageID=%llu] WebLocalFrameLoaderClient::didExceedNetworkUsageThreshold host=%{sensitive}s", buf, 0x3Eu);
      v18 = v41;
      v41 = 0;
      if (v18)
      {
        if (*v18 == 1)
        {
          WTF::fastFree(v18, v4);
        }

        else
        {
          --*v18;
        }
      }
    }

    v19 = *(this[3] + 5);
    if (!v19)
    {
      goto LABEL_56;
    }

    v20 = *(v19 + 8);
    if (!v20)
    {
      goto LABEL_23;
    }

    if (*(v20 + 136))
    {
LABEL_56:
      v20 = 0;
    }

    else
    {
      WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v20 + 8), v20);
      v20 = *(v20 + 8);
      if (v20)
      {
        atomic_fetch_add(v20, 1u);
      }
    }

LABEL_23:
    if (*(v7 + 3672) == 1)
    {
      if (v20)
      {
        v21 = *(v20 + 8);
        if (v21)
        {
          ++*(v21 + 4);
          WebCore::LocalFrame::showResourceMonitoringError(v21);
          if (*(v21 + 4) == 1)
          {
            (*(*v21 + 8))(v21);
          }

          else
          {
            --*(v21 + 4);
          }
        }

        if (atomic_fetch_add(v20, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v20);
          WTF::fastFree(v20, v4);
        }
      }

      goto LABEL_44;
    }

    {
      v22 = WebKit::WebProcess::singleton(void)::process;
    }

    else
    {
      v37 = WebKit::WebProcess::operator new(0x370, v4);
      v22 = WebKit::WebProcess::WebProcess(v37);
      WebKit::WebProcess::singleton(void)::process = v22;
    }

    v23 = *(WebKit::WebProcess::ensureNetworkProcessConnection(v22) + 24);
    WTF::URL::host(&v42);
    if ((v24 & 0x100000000) != 0)
    {
      if (v24)
      {
        WTF::StringImpl::createWithoutCopyingNonEmpty();
LABEL_35:
        v25 = *buf;
LABEL_36:
        v41 = v25;
        v26 = WTF::fastMalloc(0x10);
        *v26 = &unk_1F1132150;
        v26[1] = v20;
        if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
        {
          __break(0xC471u);
          return;
        }

        v27 = v26;
        IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
        v30 = IPC::Encoder::operator new(0x238, v29);
        *v30 = 492;
        *(v30 + 68) = 0;
        *(v30 + 70) = 0;
        *(v30 + 69) = 0;
        *(v30 + 2) = 0;
        *(v30 + 3) = 0;
        *(v30 + 1) = 0;
        IPC::Encoder::encodeHeader(v30);
        v38 = v30;
        IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v30, &v41);
        *buf = v27;
        *&buf[8] = IdentifierInternal;
        IPC::Connection::sendMessageWithAsyncReply(v23, &v38, buf, 0, 0);
        v31 = *buf;
        *buf = 0;
        if (v31)
        {
          (*(*v31 + 8))(v31);
        }

        v32 = v38;
        v38 = 0;
        if (v32)
        {
          IPC::Encoder::~Encoder(v32, v4);
          bmalloc::api::tzoneFree(v35, v36);
        }

        v33 = v41;
        v41 = 0;
        if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v33, v4);
        }

        goto LABEL_44;
      }
    }

    else if (v24)
    {
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      goto LABEL_35;
    }

    v25 = MEMORY[0x1E696EB88];
    atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
    goto LABEL_36;
  }
}

uint64_t WebKit::WebMediaKeySystemClient::pageDestroyed(uint64_t this, void *a2)
{
  if (this)
  {
    v2 = this;
    v3 = *(this + 16);
    *(v2 + 16) = 0;
    if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3);
      WTF::fastFree(v3, a2);
    }

    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory((v2 + 8), a2);

    return bmalloc::api::tzoneFree(v2, v4);
  }

  return this;
}

void WebKit::WebMediaKeySystemClient::~WebMediaKeySystemClient(WebKit::WebMediaKeySystemClient *this, void *a2)
{
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, a2);
}

{
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, a2);

  bmalloc::api::tzoneFree(this, v4);
}

void WebKit::WebMediaKeySystemClient::requestMediaKeySystem(WebKit::WebMediaKeySystemClient *this, WebCore::MediaKeySystemRequest *a2)
{
  v2 = *(*(this + 2) + 8);
  if (v2)
  {
    CFRetain(*(v2 - 8));
    WebKit::MediaKeySystemPermissionRequestManager::startMediaKeySystemRequest(*(v2 + 608), a2);
    v4 = *(v2 - 8);

    CFRelease(v4);
  }

  else
  {
    __break(0xC471u);
  }
}

void WebKit::WebMediaKeySystemClient::cancelMediaKeySystemRequest(WebKit::WebMediaKeySystemClient *this, WebCore::MediaKeySystemRequest *a2)
{
  v2 = *(*(this + 2) + 8);
  if (v2)
  {
    CFRetain(*(v2 - 8));
    WebKit::MediaKeySystemPermissionRequestManager::cancelMediaKeySystemRequest(*(v2 + 608), a2);
    v4 = *(v2 - 8);

    CFRelease(v4);
  }

  else
  {
    __break(0xC471u);
  }
}

void WebKit::WebMessagePortChannelProvider::~WebMessagePortChannelProvider(WebKit::WebMessagePortChannelProvider *this, void *a2)
{
  v3 = *(this + 2);
  if (v3)
  {
    v4 = *(v3 - 4);
    if (v4)
    {
      v5 = v3 + 16;
      do
      {
        if (*(v5 - 16) != -1)
        {
          v5 = WTF::Vector<WebCore::MessageWithMessagePorts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v5, a2);
        }

        v5 += 32;
        --v4;
      }

      while (v4);
    }

    WTF::fastFree((v3 - 16), a2);
  }

  v6 = *(this + 1);
  if (v6)
  {
    *(v6 + 8) = 0;
    v7 = *(this + 1);
    *(this + 1) = 0;
    if (v7)
    {
      if (atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v7);
        WTF::fastFree(v7, a2);
      }
    }
  }
}

{
  WebKit::WebMessagePortChannelProvider::~WebMessagePortChannelProvider(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

IPC::Encoder *WebKit::WebMessagePortChannelProvider::createNewMessagePortChannel(uint64_t a1, void *a2, uint64_t *a3, char a4)
{
  if ((a4 & 1) == 0)
  {
    v19 = 0;
    v20 = 0;
    WTF::HashMap<WebCore::MessagePortIdentifier,WTF::Vector<WebCore::MessageWithMessagePorts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::MessagePortIdentifier>,WTF::HashTraits<WebCore::MessagePortIdentifier>,WTF::HashTraits<WTF::Vector<WebCore::MessageWithMessagePorts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::Vector<WebCore::MessageWithMessagePorts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v18, (a1 + 16), a2, &v19);
    WTF::Vector<WebCore::MessageWithMessagePorts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v19, v7);
    v19 = 0;
    v20 = 0;
    WTF::HashMap<WebCore::MessagePortIdentifier,WTF::Vector<WebCore::MessageWithMessagePorts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::MessagePortIdentifier>,WTF::HashTraits<WebCore::MessagePortIdentifier>,WTF::HashTraits<WTF::Vector<WebCore::MessageWithMessagePorts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::Vector<WebCore::MessageWithMessagePorts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v18, (a1 + 16), a3, &v19);
    WTF::Vector<WebCore::MessageWithMessagePorts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v19, v8);
  }

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
  *v12 = 439;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = 0;
  IPC::Encoder::encodeHeader(v12);
  v18[0] = v12;
  IPC::ArgumentCoder<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode(v12, a2);
  IPC::ArgumentCoder<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode(v12, a3);
  IPC::Connection::sendMessageImpl(v10, v18, 0, 0);
  result = v18[0];
  v18[0] = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v13);
    return bmalloc::api::tzoneFree(v15, v16);
  }

  return result;
}

uint64_t WTF::HashMap<WebCore::MessagePortIdentifier,WTF::Vector<WebCore::MessageWithMessagePorts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::MessagePortIdentifier>,WTF::HashTraits<WebCore::MessagePortIdentifier>,WTF::HashTraits<WTF::Vector<WebCore::MessageWithMessagePorts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::Vector<WebCore::MessageWithMessagePorts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(uint64_t a1, uint64_t *a2, void *a3, uint64_t *a4)
{
  v4 = a3 + 1;
  if (*a3 == 0 || *a3 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E39B680);
  }

  v9 = *a2;
  if (*a2 || (WTF::HashTable<WebCore::MessagePortIdentifier,WTF::KeyValuePair<WebCore::MessagePortIdentifier,WTF::Vector<WebCore::MessageWithMessagePorts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::MessagePortIdentifier,WTF::Vector<WebCore::MessageWithMessagePorts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::MessagePortIdentifier>,WTF::HashMap<WebCore::MessagePortIdentifier,WTF::Vector<WebCore::MessageWithMessagePorts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::MessagePortIdentifier>,WTF::HashTraits<WebCore::MessagePortIdentifier>,WTF::HashTraits<WTF::Vector<WebCore::MessageWithMessagePorts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::MessagePortIdentifier>,WTF::FastMalloc>::expand(a2, 0), (v9 = *a2) != 0))
  {
    v10 = *(v9 - 8);
  }

  else
  {
    v10 = 0;
  }

  LODWORD(v32) = -1640531527;
  WORD2(v32) = 0;
  BYTE6(v32) = 0;
  WTF::add<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PortIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(&v32, a3, v4);
  result = WTF::SuperFastHash::hash(&v32);
  v13 = result & v10;
  v14 = v9 + 32 * v13;
  v15 = *v14;
  v16 = *(v14 + 8);
  if (*v14 != 0)
  {
    v17 = 0;
    v18 = 1;
    do
    {
      if (v15 == *a3 && v16 == a3[1])
      {
        v30 = *a2;
        if (*a2)
        {
          v31 = *(v30 - 4);
        }

        else
        {
          v31 = 0;
        }

        v29 = 0;
        v28 = v30 + 32 * v31;
        goto LABEL_23;
      }

      if (v15 == -1)
      {
        v17 = v14;
      }

      v13 = (v13 + v18) & v10;
      v14 = v9 + 32 * v13;
      v15 = *v14;
      v16 = *(v14 + 8);
      ++v18;
    }

    while (*v14 != 0);
    if (v17)
    {
      *v17 = 0u;
      v17[1] = 0u;
      --*(*a2 - 16);
      v14 = v17;
    }
  }

  v19 = *a3;
  *v14 = *a3;
  v20 = *a4;
  v21 = a4[1];
  *a4 = 0;
  a4[1] = 0;
  v22 = *(v14 + 28);
  if (v22)
  {
    WTF::VectorTypeOperations<WebCore::MessageWithMessagePorts>::destruct(*(v14 + 16), (*(v14 + 16) + 24 * v22));
  }

  v23 = *(v14 + 16);
  if (v23)
  {
    *(v14 + 16) = 0;
    *(v14 + 24) = 0;
    WTF::fastFree(v23, v12);
  }

  *&v19 = 0;
  v32 = v19;
  *(v14 + 16) = v20;
  *(v14 + 24) = v21;
  result = WTF::Vector<WebCore::MessageWithMessagePorts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v32, v12);
  v24 = *a2;
  if (*a2)
  {
    v25 = *(v24 - 12) + 1;
  }

  else
  {
    v25 = 1;
  }

  *(v24 - 12) = v25;
  v26 = (*(v24 - 16) + v25);
  v27 = *(v24 - 4);
  if (v27 > 0x400)
  {
    if (v27 > 2 * v26)
    {
      goto LABEL_22;
    }

LABEL_25:
    result = WTF::HashTable<WebCore::MessagePortIdentifier,WTF::KeyValuePair<WebCore::MessagePortIdentifier,WTF::Vector<WebCore::MessageWithMessagePorts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::MessagePortIdentifier,WTF::Vector<WebCore::MessageWithMessagePorts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::MessagePortIdentifier>,WTF::HashMap<WebCore::MessagePortIdentifier,WTF::Vector<WebCore::MessageWithMessagePorts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::MessagePortIdentifier>,WTF::HashTraits<WebCore::MessagePortIdentifier>,WTF::HashTraits<WTF::Vector<WebCore::MessageWithMessagePorts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::MessagePortIdentifier>,WTF::FastMalloc>::expand(a2, v14);
    v14 = result;
    v24 = *a2;
    if (*a2)
    {
      v27 = *(v24 - 4);
    }

    else
    {
      v27 = 0;
    }

    goto LABEL_22;
  }

  if (3 * v27 <= 4 * v26)
  {
    goto LABEL_25;
  }

LABEL_22:
  v28 = v24 + 32 * v27;
  v29 = 1;
LABEL_23:
  *a1 = v14;
  *(a1 + 8) = v28;
  *(a1 + 16) = v29;
  return result;
}

IPC::Encoder *WebKit::WebMessagePortChannelProvider::entangleLocalPortInThisProcessToRemote(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v17[0] = 0;
  v17[1] = 0;
  WTF::HashMap<WebCore::MessagePortIdentifier,WTF::Vector<WebCore::MessageWithMessagePorts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::MessagePortIdentifier>,WTF::HashTraits<WebCore::MessagePortIdentifier>,WTF::HashTraits<WTF::Vector<WebCore::MessageWithMessagePorts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::Vector<WebCore::MessageWithMessagePorts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v16, (a1 + 16), a2, v17);
  WTF::Vector<WebCore::MessageWithMessagePorts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v17, v5);
  {
    v7 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v15 = WebKit::WebProcess::operator new(0x370, v6);
    v7 = WebKit::WebProcess::WebProcess(v15);
    WebKit::WebProcess::singleton(void)::process = v7;
  }

  v8 = *(WebKit::WebProcess::ensureNetworkProcessConnection(v7) + 24);
  v10 = IPC::Encoder::operator new(0x238, v9);
  *v10 = 445;
  *(v10 + 68) = 0;
  *(v10 + 70) = 0;
  *(v10 + 69) = 0;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 1) = 0;
  IPC::Encoder::encodeHeader(v10);
  v16[0] = v10;
  IPC::ArgumentCoder<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode(v10, a2);
  IPC::ArgumentCoder<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode(v10, a3);
  IPC::Connection::sendMessageImpl(v8, v16, 0, 0);
  result = v16[0];
  v16[0] = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v11);
    return bmalloc::api::tzoneFree(v13, v14);
  }

  return result;
}

IPC::Encoder *WebKit::WebMessagePortChannelProvider::messagePortDisentangled(uint64_t a1, void *a2)
{
  {
    v3 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v11 = WebKit::WebProcess::operator new(0x370, a2);
    v3 = WebKit::WebProcess::WebProcess(v11);
    WebKit::WebProcess::singleton(void)::process = v3;
  }

  v4 = *(WebKit::WebProcess::ensureNetworkProcessConnection(v3) + 24);
  v6 = IPC::Encoder::operator new(0x238, v5);
  *v6 = 457;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = 0;
  IPC::Encoder::encodeHeader(v6);
  v12 = v6;
  IPC::ArgumentCoder<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode(v6, a2);
  IPC::Connection::sendMessageImpl(v4, &v12, 0, 0);
  result = v12;
  v12 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v7);
    return bmalloc::api::tzoneFree(v9, v10);
  }

  return result;
}

uint64_t WebKit::WebMessagePortChannelProvider::messagePortSentToRemote(uint64_t a1, uint64_t *a2)
{
  v4 = WTF::HashTable<WebCore::MessagePortIdentifier,WTF::KeyValuePair<WebCore::MessagePortIdentifier,WTF::Vector<WebCore::MessageWithMessagePorts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::MessagePortIdentifier,WTF::Vector<WebCore::MessageWithMessagePorts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::MessagePortIdentifier>,WTF::HashMap<WebCore::MessagePortIdentifier,WTF::Vector<WebCore::MessageWithMessagePorts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::MessagePortIdentifier>,WTF::HashTraits<WebCore::MessagePortIdentifier>,WTF::HashTraits<WTF::Vector<WebCore::MessageWithMessagePorts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::MessagePortIdentifier>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::MessagePortIdentifier,WTF::Vector<WebCore::MessageWithMessagePorts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::MessagePortIdentifier>,WTF::HashTraits<WebCore::MessagePortIdentifier>,WTF::HashTraits<WTF::Vector<WebCore::MessageWithMessagePorts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::MessagePortIdentifier>>,(WTF::ShouldValidateKey)1,WebCore::MessagePortIdentifier>((a1 + 16), a2);
  WTF::HashMap<WebCore::MessagePortIdentifier,WTF::Vector<WebCore::MessageWithMessagePorts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::MessagePortIdentifier>,WTF::HashTraits<WebCore::MessagePortIdentifier>,WTF::HashTraits<WTF::Vector<WebCore::MessageWithMessagePorts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::take((a1 + 16), v4, &v10, v5);
  if (v10.n128_u32[3])
  {
    v7 = v10.n128_u64[0];
    v8 = 24 * v10.n128_u32[3];
    do
    {
      WebKit::WebMessagePortChannelProvider::postMessageToRemote(a1, v7, a2);
      v7 += 24;
      v8 -= 24;
    }

    while (v8);
  }

  return WTF::Vector<WebCore::MessageWithMessagePorts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v10, v6);
}

uint64_t WebKit::WebMessagePortChannelProvider::postMessageToRemote(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v6 = WTF::HashTable<WebCore::MessagePortIdentifier,WTF::KeyValuePair<WebCore::MessagePortIdentifier,WTF::Vector<WebCore::MessageWithMessagePorts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::MessagePortIdentifier,WTF::Vector<WebCore::MessageWithMessagePorts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::MessagePortIdentifier>,WTF::HashMap<WebCore::MessagePortIdentifier,WTF::Vector<WebCore::MessageWithMessagePorts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::MessagePortIdentifier>,WTF::HashTraits<WebCore::MessagePortIdentifier>,WTF::HashTraits<WTF::Vector<WebCore::MessageWithMessagePorts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::MessagePortIdentifier>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::MessagePortIdentifier,WTF::Vector<WebCore::MessageWithMessagePorts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::MessagePortIdentifier>,WTF::HashTraits<WebCore::MessagePortIdentifier>,WTF::HashTraits<WTF::Vector<WebCore::MessageWithMessagePorts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::MessagePortIdentifier>>,(WTF::ShouldValidateKey)1,WebCore::MessagePortIdentifier>((a1 + 16), a3);
  v8 = v6;
  v9 = *(a1 + 16);
  if (v9)
  {
    v9 += 4 * *(v9 - 1);
  }

  if (v9 == v6)
  {
    v12 = *(a2 + 20);
    if (v12)
    {
      v13 = *(a2 + 8);
      v14 = 32 * v12;
      do
      {
        v6 = WebKit::WebMessagePortChannelProvider::messagePortSentToRemote(a1, v13);
        v13 += 32;
        v14 -= 32;
      }

      while (v14);
    }

    v15 = WebKit::WebProcess::singleton(v6, v7);
    v16 = *(WebKit::WebProcess::ensureNetworkProcessConnection(v15) + 24);
    v21[0] = a2;
    v21[1] = a3;
    return IPC::Connection::send<Messages::NetworkConnectionToWebProcess::PostMessageToRemote>(v16, v21, 0, 0, 0);
  }

  else
  {
    v10 = *(v6 + 7);
    if (v10 == *(v6 + 6))
    {
      WTF::Vector<WebCore::MessageWithMessagePorts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::MessageWithMessagePorts>((v6 + 2), a2);
    }

    else
    {
      v17 = (v6[2] + 24 * v10);
      v18 = *a2;
      *a2 = 0;
      *v17 = v18;
      v17[2] = 0;
      v17[1] = 0;
      WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt((v17 + 1), (a2 + 8));
      ++*(v8 + 7);
    }

    {
      v19 = WebKit::WebProcess::operator new(0x370, v11);
      WebKit::WebProcess::singleton(void)::process = WebKit::WebProcess::WebProcess(v19);
    }

    return MEMORY[0x1EEE54830](a3);
  }
}

IPC::Encoder *WebKit::WebMessagePortChannelProvider::messagePortClosed(uint64_t a1, uint64_t *a2)
{
  v4 = WTF::HashTable<WebCore::MessagePortIdentifier,WTF::KeyValuePair<WebCore::MessagePortIdentifier,WTF::Vector<WebCore::MessageWithMessagePorts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::MessagePortIdentifier,WTF::Vector<WebCore::MessageWithMessagePorts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::MessagePortIdentifier>,WTF::HashMap<WebCore::MessagePortIdentifier,WTF::Vector<WebCore::MessageWithMessagePorts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::MessagePortIdentifier>,WTF::HashTraits<WebCore::MessagePortIdentifier>,WTF::HashTraits<WTF::Vector<WebCore::MessageWithMessagePorts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::MessagePortIdentifier>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::MessagePortIdentifier,WTF::Vector<WebCore::MessageWithMessagePorts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::MessagePortIdentifier>,WTF::HashTraits<WebCore::MessagePortIdentifier>,WTF::HashTraits<WTF::Vector<WebCore::MessageWithMessagePorts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::MessagePortIdentifier>>,(WTF::ShouldValidateKey)1,WebCore::MessagePortIdentifier>((a1 + 16), a2);
  v5 = v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = (v6 + 32 * *(v6 - 4));
    if (v7 == v4)
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (!v4)
    {
      goto LABEL_5;
    }

    v7 = 0;
  }

  if (v7 != v4)
  {
    WTF::HashTable<WebCore::MessagePortIdentifier,WTF::KeyValuePair<WebCore::MessagePortIdentifier,WTF::Vector<WebCore::MessageWithMessagePorts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::MessagePortIdentifier,WTF::Vector<WebCore::MessageWithMessagePorts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::MessagePortIdentifier>,WTF::HashMap<WebCore::MessagePortIdentifier,WTF::Vector<WebCore::MessageWithMessagePorts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::MessagePortIdentifier>,WTF::HashTraits<WebCore::MessagePortIdentifier>,WTF::HashTraits<WTF::Vector<WebCore::MessageWithMessagePorts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::MessagePortIdentifier>,WTF::FastMalloc>::remove((a1 + 16), v4);
  }

LABEL_5:
  {
    v8 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v16 = WebKit::WebProcess::operator new(0x370, v5);
    v8 = WebKit::WebProcess::WebProcess(v16);
    WebKit::WebProcess::singleton(void)::process = v8;
  }

  v9 = *(WebKit::WebProcess::ensureNetworkProcessConnection(v8) + 24);
  v11 = IPC::Encoder::operator new(0x238, v10);
  *v11 = 456;
  *(v11 + 68) = 0;
  *(v11 + 70) = 0;
  *(v11 + 69) = 0;
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *(v11 + 1) = 0;
  IPC::Encoder::encodeHeader(v11);
  v17 = v11;
  IPC::ArgumentCoder<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode(v11, a2);
  IPC::Connection::sendMessageImpl(v9, &v17, 0, 0);
  result = v17;
  v17 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v12);
    return bmalloc::api::tzoneFree(v14, v15);
  }

  return result;
}

uint64_t WebKit::WebMessagePortChannelProvider::takeAllMessagesForPort(uint64_t a1, __int128 *a2, uint64_t *a3)
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
  v20 = *a2;
  v8 = WTF::fastMalloc(0x20);
  *v8 = &unk_1F1132178;
  *(v8 + 8) = v7;
  *(v8 + 16) = v20;
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
    *v12 = 496;
    *(v12 + 68) = 0;
    *(v12 + 70) = 0;
    *(v12 + 69) = 0;
    *(v12 + 2) = 0;
    *(v12 + 3) = 0;
    *(v12 + 1) = 0;
    IPC::Encoder::encodeHeader(v12);
    v19 = v12;
    IPC::ArgumentCoder<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode(v12, a2);
    *&v20 = v9;
    *(&v20 + 1) = IdentifierInternal;
    IPC::Connection::sendMessageWithAsyncReply(v6, &v19, &v20, 0, 0);
    v14 = v20;
    *&v20 = 0;
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }

    result = v19;
    v19 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v13);
      return bmalloc::api::tzoneFree(v16, v17);
    }
  }

  return result;
}

uint64_t IPC::Connection::send<Messages::NetworkConnectionToWebProcess::PostMessageToRemote>(uint64_t *a1, uint64_t **a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = IPC::Encoder::operator new(0x238, a2);
  *v10 = 464;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 1) = a3;
  *(v10 + 68) = 0;
  *(v10 + 70) = 0;
  *(v10 + 69) = 0;
  IPC::Encoder::encodeHeader(v10);
  v18 = v10;
  v11 = *a2;
  IPC::ArgumentCoder<WTF::RefPtr<WebCore::SerializedScriptValue,WTF::RawPtrTraits<WebCore::SerializedScriptValue>,WTF::DefaultRefDerefTraits<WebCore::SerializedScriptValue>>,void>::encode<IPC::Encoder,WebCore::SerializedScriptValue>(v10, *a2);
  IPC::VectorArgumentCoder<false,std::pair<WebCore::MessagePortIdentifier,WebCore::MessagePortIdentifier>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<std::pair<WebCore::MessagePortIdentifier,WebCore::MessagePortIdentifier>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(v10, (v11 + 1));
  IPC::ArgumentCoder<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode(v10, a2[1]);
  v13 = IPC::Connection::sendMessageImpl(a1, &v18, a4, a5);
  v14 = v18;
  v18 = 0;
  if (v14)
  {
    IPC::Encoder::~Encoder(v14, v12);
    bmalloc::api::tzoneFree(v16, v17);
  }

  return v13;
}

void WebKit::WebNotificationClient::~WebNotificationClient(WebKit::WebNotificationClient *this, void *a2)
{
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  v4 = *(this + 1);
  if (v4)
  {
    WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::deallocateTable(v4, a2);
  }
}

{
  WebKit::WebNotificationClient::~WebNotificationClient(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

uint64_t WebKit::WebNotificationClient::show(uint64_t a1, uint64_t a2, uint64_t a3, WTF **a4)
{
  v45 = *MEMORY[0x1E69E9840];
  v24 = 0;
  v25 = &v24;
  WebCore::NotificationData::isolatedCopy();
  v7 = *a4;
  *a4 = 0;
  v41[0] = v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    atomic_fetch_add(v8, 1u);
  }

  v41[1] = v8;
  v9 = *(a2 + 256);
  v42 = *(a2 + 240);
  v43 = v9;
  v44 = WebCore::ScriptExecutionContext::addNotificationCallback();
  v10 = WTF::fastMalloc(0x160);
  *v10 = &unk_1F11321F0;
  *(v10 + 16) = v25;
  WTF::URL::URL(v10 + 32, v26);
  v11 = v27;
  v27 = 0u;
  *(v10 + 72) = v11;
  v12 = v28;
  v28 = 0u;
  *(v10 + 88) = v12;
  *(v10 + 104) = v29;
  *(v10 + 112) = v30;
  v13 = v31;
  v29 = 0;
  v31 = 0;
  *(v10 + 120) = v13;
  WTF::URL::URL(v10 + 128, v32);
  v14 = v37;
  *(v10 + 224) = v36;
  *(v10 + 240) = v14;
  v15 = v35;
  *(v10 + 192) = v34;
  *(v10 + 208) = v15;
  *(v10 + 176) = v33;
  *(v10 + 256) = v38;
  v16 = v39;
  v38 = 0;
  v39 = 0;
  *(v10 + 264) = v16;
  *(v10 + 272) = v40;
  v17 = *v41;
  *v41 = 0u;
  *(v10 + 288) = v17;
  v18 = v42;
  v19 = v43;
  *(v10 + 336) = v44;
  *(v10 + 304) = v18;
  *(v10 + 320) = v19;
  WTF::callOnMainRunLoopAndWait();
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v21 = v41[1];
  v41[1] = 0;
  if (v21 && atomic_fetch_add(v21, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v21);
    WTF::fastFree(v21, v20);
  }

  v22 = v41[0];
  v41[0] = 0;
  if (v22)
  {
    WTF::ThreadSafeRefCounted<WebCore::NotificationResources,(WTF::DestructionThread)0>::deref(v22, v20);
  }

  WebCore::NotificationData::~NotificationData(v26, v20);
  return v24;
}

void WebKit::WebNotificationClient::cancel(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  WebCore::NotificationData::isolatedCopy();
  v2 = *(a1 + 16);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
  }

  v28 = v2;
  v3 = WTF::fastMalloc(0x120);
  *v3 = &unk_1F1132268;
  WTF::URL::URL(v3 + 16, v13);
  v4 = v14;
  v14 = 0u;
  *(v3 + 56) = v4;
  v5 = v15;
  v15 = 0u;
  *(v3 + 72) = v5;
  *(v3 + 88) = v16;
  *(v3 + 96) = v17;
  v6 = v18;
  v16 = 0;
  v18 = 0;
  *(v3 + 104) = v6;
  WTF::URL::URL(v3 + 112, v19);
  v7 = v24;
  *(v3 + 208) = v23;
  *(v3 + 224) = v7;
  v8 = v22;
  *(v3 + 176) = v21;
  *(v3 + 192) = v8;
  *(v3 + 160) = v20;
  *(v3 + 240) = v25;
  v9 = v26;
  v25 = 0;
  v26 = 0;
  *(v3 + 248) = v9;
  *(v3 + 256) = v27;
  v10 = v28;
  v28 = 0;
  *(v3 + 272) = v10;
  WTF::callOnMainRunLoopAndWait();
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v12 = v28;
  v28 = 0;
  if (v12 && atomic_fetch_add(v12, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v12);
    WTF::fastFree(v12, v11);
  }

  WebCore::NotificationData::~NotificationData(v13, v11);
}

void WebKit::WebNotificationClient::notificationObjectDestroyed(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  WebCore::NotificationData::isolatedCopy();
  v2 = *(a1 + 16);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
  }

  v28 = v2;
  v3 = WTF::fastMalloc(0x120);
  *v3 = &unk_1F1132290;
  WTF::URL::URL(v3 + 16, v13);
  v4 = v14;
  v14 = 0u;
  *(v3 + 56) = v4;
  v5 = v15;
  v15 = 0u;
  *(v3 + 72) = v5;
  *(v3 + 88) = v16;
  *(v3 + 96) = v17;
  v6 = v18;
  v16 = 0;
  v18 = 0;
  *(v3 + 104) = v6;
  WTF::URL::URL(v3 + 112, v19);
  v7 = v24;
  *(v3 + 208) = v23;
  *(v3 + 224) = v7;
  v8 = v22;
  *(v3 + 176) = v21;
  *(v3 + 192) = v8;
  *(v3 + 160) = v20;
  *(v3 + 240) = v25;
  v9 = v26;
  v25 = 0;
  v26 = 0;
  *(v3 + 248) = v9;
  *(v3 + 256) = v27;
  v10 = v28;
  v28 = 0;
  *(v3 + 272) = v10;
  WTF::callOnMainRunLoopAndWait();
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v12 = v28;
  v28 = 0;
  if (v12 && atomic_fetch_add(v12, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v12);
    WTF::fastFree(v12, v11);
  }

  WebCore::NotificationData::~NotificationData(v13, v11);
}

uint64_t WebKit::WebNotificationClient::notificationControllerDestroyed(WebKit::WebNotificationClient *this)
{
  v2 = WTF::fastMalloc(0x10);
  *v2 = &unk_1F11322B8;
  v2[1] = this;
  v4 = v2;
  WTF::callOnMainRunLoop();
  result = v4;
  if (v4)
  {
    return (*(*v4 + 8))(v4);
  }

  return result;
}

uint64_t WebKit::WebNotificationClient::requestPermission(uint64_t *a1, uint64_t a2, WTF::StringImpl *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  if (!WTF::isMainRunLoop(a1) || *(a2 + 282))
  {
    goto LABEL_7;
  }

  {
    v8 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v30 = WebKit::WebProcess::operator new(0x370, v7);
    v8 = WebKit::WebProcess::WebProcess(v30);
    WebKit::WebProcess::singleton(void)::process = v8;
  }

  if ((*(v8 + 712) & 1) == 0)
  {
    __break(1u);
    goto LABEL_46;
  }

  if (*(v8 + 88) > -2 && (v12 = WebCore::SecurityContext::securityOrigin(a2)) != 0)
  {
    a2 = v12;
    atomic_fetch_add(v12, 1u);
    v13 = WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>((v12 + 2), a1 + 1, v34);
    if (WebCore::DeprecatedGlobalSettings::builtInNotificationsEnabled(v13))
    {
      v15 = *a3;
      *a3 = 0;
      {
        v16 = WebKit::WebProcess::singleton(void)::process;
      }

      else
      {
        v31 = WebKit::WebProcess::operator new(0x370, v14);
        v16 = WebKit::WebProcess::WebProcess(v31);
        WebKit::WebProcess::singleton(void)::process = v16;
      }

      v17 = WebKit::WebProcess::supplement<WebKit::WebNotificationManager>(*(v16 + 39));
      LOBYTE(v34[0]) = 0;
      v36 = -1;
      LODWORD(v18) = *(a2 + 32);
      if (*(a2 + 32))
      {
        if (v18 == 255)
        {
          goto LABEL_21;
        }

        *v34 = *(a2 + 8);
      }

      else
      {
        v19 = *(a2 + 8);
        if (v19)
        {
          atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed);
        }

        v34[0] = v19;
        v18 = *(a2 + 16);
        if (v18)
        {
          atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed);
        }

        v34[1] = v18;
        v35 = *(a2 + 24);
        LOBYTE(v18) = *(a2 + 32);
      }

      v36 = v18;
LABEL_21:
      v20 = a1[2];
      if (v20 && (v21 = *(v20 + 8)) != 0)
      {
        v22 = (v21 - 16);
        CFRetain(*(v21 - 8));
      }

      else
      {
        v22 = 0;
      }

      v33 = v22;
      v26 = WTF::fastMalloc(0x10);
      *v26 = &unk_1F11322E0;
      v26[1] = v15;
      v32 = v26;
      WebKit::WebNotificationManager::requestPermission(v17, v34, &v33, &v32);
      v27 = v32;
      v32 = 0;
      if (v27)
      {
        (*(*v27 + 8))(v27);
        if (!v22)
        {
LABEL_33:
          if (!v36)
          {
            v28 = v34[1];
            v34[1] = 0;
            if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v28, v25);
            }

            v29 = v34[0];
            v34[0] = 0;
            if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v29, v25);
            }
          }

          return WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(a2, v25);
        }
      }

      else if (!v22)
      {
        goto LABEL_33;
      }

      CFRelease(v22[1]);
      goto LABEL_33;
    }

    v23 = a1[2];
    if (v23)
    {
      v3 = *(v23 + 8);
      if (v3)
      {
        CFRetain(*(v3 - 8));
        v8 = WebKit::WebPage::notificationPermissionRequestManager((v3 - 16));
        if (v8)
        {
          v24 = v8;
          ++*v8;
          WebKit::NotificationPermissionRequestManager::startRequest(v8, (a2 + 8), a3);
          WTF::RefCounted<WebKit::NotificationPermissionRequestManager>::deref(v24);
LABEL_28:
          CFRelease(*(v3 - 8));
          return WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(a2, v25);
        }

LABEL_46:
        WebKit::NotificationPermissionRequestManager::startRequest(v8, (a2 + 8), a3);
        goto LABEL_28;
      }
    }

    result = 133;
    __break(0xC471u);
  }

  else
  {
LABEL_7:
    v9 = *a3;
    *a3 = 0;
    (*(*v9 + 16))(v9, 1);
    v10 = *(*v9 + 8);

    return v10(v9);
  }

  return result;
}

uint64_t WebKit::WebProcess::supplement<WebKit::WebNotificationManager>(uint64_t a1)
{
  if ("WebNotificationManager" == -1)
  {
    result = 372;
    __break(0xC471u);
  }

  else
  {
    v19 = v1;
    v20 = v2;
    if (a1 && (v4 = *(a1 - 8), v16 = -1640531527, v17 = 0, v18 = 0, WTF::SuperFastHash::addCharacters<char,WTF::StringHasher::DefaultConverter>(&v16, "WebNotificationManager", 0x16u), v5 = WTF::SuperFastHash::hash(&v16) & v4, v6 = a1 + 24 * v5, (v7 = *(v6 + 8)) != 0))
    {
      for (i = 1; ; ++i)
      {
        if (v7 == 23)
        {
          v9 = *v6;
          if (*v6 != -1)
          {
            v10 = *v9;
            v11 = v9[1];
            v12 = *(v9 + 15);
            v13 = v10 == *"WebNotificationManager" && v11 == *"icationManager";
            if (v13 && v12 == *"Manager")
            {
              break;
            }
          }
        }

        v5 = (v5 + i) & v4;
        v6 = a1 + 24 * v5;
        v7 = *(v6 + 8);
        if (!v7)
        {
          return 0;
        }
      }

      return *(v6 + 16);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t WebKit::WebNotificationClient::checkPermission(WebKit::WebNotificationClient *this, WebCore::ScriptExecutionContext *a2)
{
  if (!a2 || *(a2 + 282) && !(*(*a2 + 72))(a2))
  {
    return 1;
  }

  v4 = WebCore::SecurityContext::securityOrigin(a2);
  v6 = 1;
  if (v4)
  {
    v7 = v4;
    atomic_fetch_add(v4, 1u);
    v9 = *(this + 1);
    v8 = (this + 8);
    if (v9)
    {
      v6 = WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashTraits<WebCore::SecurityOriginData>,WTF::DefaultHash<WebCore::SecurityOriginData>>,(WTF::ShouldValidateKey)1,WebCore::SecurityOriginData>(v8, (v4 + 2)) != 0;
    }

    else
    {
      v6 = 0;
    }

    {
      v10 = WebKit::WebProcess::singleton(void)::process;
    }

    else
    {
      v27 = WebKit::WebProcess::operator new(0x370, v5);
      v10 = WebKit::WebProcess::WebProcess(v27);
      WebKit::WebProcess::singleton(void)::process = v10;
    }

    if ((*(v10 + 712) & 1) == 0)
    {
      __break(1u);
      goto LABEL_37;
    }

    if (*(v10 + 88) <= -2)
    {
LABEL_34:
      WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v7, v5);
      return v6;
    }

    v33 = 0;
    if (*(a2 + 282))
    {
      v30 = &v33;
      WebCore::SecurityOriginData::toString(&v29, (v7 + 8));
      WTF::String::isolatedCopy();
      v23 = WTF::fastMalloc(0x18);
      *v23 = &unk_1F1132308;
      v23[1] = v30;
      v24 = v31;
      v31 = 0;
      v32 = v23;
      v23[2] = v24;
      WTF::callOnMainRunLoopAndWait();
      if (v32)
      {
        (*(*v32 + 8))(v32);
      }

      v25 = v31;
      v31 = 0;
      if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v25, v5);
      }

      v26 = v29;
      v29 = 0;
      if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v26, v5);
      }

      goto LABEL_31;
    }

    *(a2 - 45) += 2;
    v11 = *(a2 + 43);
    if (v11 && (v12 = *(v11 + 8)) != 0 && (v13 = *(v12 + 24)) != 0)
    {
      v14 = *(v13 + 8);
      if (v14)
      {
        ++*(v14 + 8);
        v15 = WebKit::WebPage::fromCorePage(v14);
        v16 = v15;
        if (v15)
        {
          CFRetain(*(v15 + 8));
          v17 = 0;
          v18 = 0;
        }

        else
        {
          v18 = 0;
          v17 = 1;
        }

        goto LABEL_20;
      }

      v16 = 0;
    }

    else
    {
      v16 = 0;
      v14 = 0;
    }

    v17 = 1;
    v18 = 1;
LABEL_20:
    {
      v19 = WebKit::WebProcess::singleton(void)::process;
    }

    else
    {
      v28 = WebKit::WebProcess::operator new(0x370, v5);
      v19 = WebKit::WebProcess::WebProcess(v28);
      WebKit::WebProcess::singleton(void)::process = v19;
    }

    v20 = WebKit::WebProcess::supplement<WebKit::WebNotificationManager>(*(v19 + 39));
    WebCore::SecurityOriginData::toString(&v30, (v7 + 8));
    v33 = WebKit::WebNotificationManager::policyForOrigin(v20, &v30, v16);
    v21 = v30;
    v30 = 0;
    if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v21, v5);
    }

    if ((v17 & 1) == 0)
    {
      CFRelease(v16[1]);
    }

    if ((v18 & 1) == 0)
    {
      WTF::RefCounted<WebCore::Page>::deref((v14 + 8));
    }

    if (*(a2 - 45) != 2)
    {
      *(a2 - 45) -= 2;
      goto LABEL_31;
    }

LABEL_37:
    WebCore::Node::removedLastRef((a2 - 208));
LABEL_31:
    if ((v33 != 1) | v6 & 1)
    {
      v6 = v33;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_34;
  }

  return v6;
}

WTF::RefCountedBase *WebKit::WebPasteboardOverrides::addOverride(uint64_t *a1, WTF::StringImpl **a2, WTF::StringImpl **a3, const WTF::StringImpl *a4)
{
  v9 = 0;
  WTF::HashMap<WTF::String,WTF::HashMap<WTF::String,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::HashMap<WTF::String,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>(a1, a2, &v9, v10);
  v7 = v10[0];
  if (v9)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WebCore::CharacterRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WebCore::CharacterRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WebCore::CharacterRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WebCore::CharacterRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v9, v6);
  }

  return WTF::HashMap<WTF::String,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>((v7 + 8), a3, a4, v10);
}

uint64_t WTF::HashMap<WTF::String,WTF::HashMap<WTF::String,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::HashMap<WTF::String,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>@<X0>(uint64_t *a1@<X0>, WTF::StringImpl **a2@<X1>, const WTF::StringImpl *a3@<X2>, uint64_t a4@<X8>)
{
  if (*a2 == -1 || !*a2)
  {
    __break(0xC471u);
    JUMPOUT(0x19E39CED4);
  }

  v8 = *a1;
  if (*a1 || (WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::HashMap<WTF::String,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::HashMap<WTF::String,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::HashMap<WTF::String,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(a1, 0), (v8 = *a1) != 0))
  {
    v9 = *(v8 - 8);
  }

  else
  {
    v9 = 0;
  }

  v10 = *(*a2 + 4);
  if (v10 < 0x100)
  {
    v11 = WTF::StringImpl::hashSlowCase(*a2);
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
      --*(*a1 - 16);
      v15 = v12;
    }

    WTF::String::operator=(v15, a2);
    v19 = *a3;
    *a3 = 0;
    result = v15[1];
    v15[1] = v19;
    if (result)
    {
      result = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WebCore::CharacterRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WebCore::CharacterRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WebCore::CharacterRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WebCore::CharacterRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(result, v18);
    }

    v20 = *a1;
    if (*a1)
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
LABEL_26:
        result = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::HashMap<WTF::String,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::HashMap<WTF::String,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::HashMap<WTF::String,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(a1, v15);
        v15 = result;
        v20 = *a1;
        if (*a1)
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
      goto LABEL_26;
    }

    v27 = v20 + 16 * v25;
    v26 = 1;
    goto LABEL_33;
  }

  result = WTF::equal(v16, *a2, a3);
  if (!result)
  {
    goto LABEL_14;
  }

  v22 = *a1;
  if (*a1)
  {
    v23 = *(v22 - 4);
  }

  else
  {
    v23 = 0;
  }

  v26 = 0;
  v27 = v22 + 16 * v23;
LABEL_33:
  *a4 = v15;
  *(a4 + 8) = v27;
  *(a4 + 16) = v26;
  return result;
}

uint64_t *WebKit::WebPasteboardOverrides::removeOverride(WebKit::WebPasteboardOverrides *this, const WTF::StringImpl **a2, const WTF::String *a3)
{
  result = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::HashMap<WTF::String,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::HashMap<WTF::String,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::HashMap<WTF::String,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::HashMap<WTF::String,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::HashMap<WTF::String,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::HashMap<WTF::String,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>>,(WTF::ShouldValidateKey)1,WTF::String>( this,  a2,  a3);
  v7 = result;
  v8 = *this;
  if (*this)
  {
    v8 += 16 * *(v8 - 4);
  }

  if (v8 == result)
  {
    return result;
  }

  result = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,(WTF::ShouldValidateKey)1,WTF::String>(result + 1, a3, v6);
  v9 = v7[1];
  if (v9)
  {
    v10 = (v9 + 24 * *(v9 - 4));
    if (v10 == result)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if (!result)
    {
      goto LABEL_13;
    }

    v10 = 0;
  }

  if (v10 != result)
  {
    result = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::remove(v7 + 1, result);
    v9 = v7[1];
  }

  if (v9)
  {
LABEL_12:
    if (*(v9 - 12))
    {
      return result;
    }
  }

LABEL_13:
  if (*this)
  {
    v11 = *this + 16 * *(*this - 4);
    if (v11 == v7)
    {
      return result;
    }
  }

  else
  {
    if (!v7)
    {
      return result;
    }

    v11 = 0;
  }

  if (v11 != v7)
  {

    return WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::HashMap<WTF::String,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::HashMap<WTF::String,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::HashMap<WTF::String,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::remove(this, v7);
  }

  return result;
}

uint64_t WebKit::WebPasteboardOverrides::overriddenTypes(WebKit::WebPasteboardOverrides *this, const WTF::StringImpl **a2, const WTF::StringImpl *a3)
{
  result = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::HashMap<WTF::String,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::HashMap<WTF::String,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::HashMap<WTF::String,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::HashMap<WTF::String,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::HashMap<WTF::String,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::HashMap<WTF::String,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>>,(WTF::ShouldValidateKey)1,WTF::String>( &WebKit::WebPasteboardOverrides::sharedPasteboardOverrides(void)::sharedOverrides,  a2,  a3);
  v5 = WebKit::WebPasteboardOverrides::sharedPasteboardOverrides(void)::sharedOverrides;
  if (WebKit::WebPasteboardOverrides::sharedPasteboardOverrides(void)::sharedOverrides)
  {
    v5 = WebKit::WebPasteboardOverrides::sharedPasteboardOverrides(void)::sharedOverrides + 16 * *(WebKit::WebPasteboardOverrides::sharedPasteboardOverrides(void)::sharedOverrides - 4);
  }

  if (v5 == result)
  {
    *this = 0;
    *(this + 1) = 0;
    return result;
  }

  v6 = *(result + 8);
  if (v6)
  {
    v7 = *(v6 - 4);
    v8 = (v6 + 24 * v7);
    if (*(v6 - 12))
    {
      v9 = *(result + 8);
      if (v7)
      {
        v10 = 24 * v7;
        v9 = *(result + 8);
        while (*v9 + 1 <= 1)
        {
          v9 += 3;
          v10 -= 24;
          if (!v10)
          {
            v9 = v8;
            goto LABEL_11;
          }
        }
      }

      goto LABEL_11;
    }

    v9 = (v6 + 24 * v7);
  }

  else
  {
    v9 = 0;
    LODWORD(v7) = 0;
  }

  v8 = (v6 + 24 * v7);
  if (!v6)
  {
    result = 0;
    v11 = 0;
    *this = 0;
    *(this + 1) = 0;
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v6 + 24 * *(v6 - 4));
  *this = 0;
  *(this + 1) = 0;
  v12 = *(v6 - 12);
  if (v12)
  {
    if (v12 >> 29)
    {
      __break(0xC471u);
      return result;
    }

    result = WTF::fastMalloc((8 * v12));
    *(this + 2) = v12;
    *this = result;
  }

  else
  {
    result = 0;
  }

LABEL_19:
  if (v9 != v11)
  {
    v13 = 0;
    do
    {
      v14 = *v9;
      if (*v9)
      {
        atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
      }

      *(result + 8 * v13) = v14;
      do
      {
        v9 += 3;
      }

      while (v9 != v8 && *v9 + 1 <= 1);
      ++v13;
    }

    while (v9 != v11);
    *(this + 3) = v13;
  }

  return result;
}

uint64_t WebKit::WebPasteboardOverrides::overriddenInfo(WebKit::WebPasteboardOverrides *this, const WTF::StringImpl **a2, const WTF::StringImpl *a3)
{
  WebKit::WebPasteboardOverrides::overriddenTypes(v20, a2, a3);
  if (v21)
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v11 = 0u;
    v12 = 0u;
    memset(v13, 0, 25);
    v18[0] = 0;
    v18[1] = 0;
    v19 = 0;
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(v13, v20);
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(&v12, v20);
    std::optional<WebCore::PasteboardItemInfo>::optional[abi:sn200100]<WebCore::PasteboardItemInfo,0>(this, &v11);
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v18, v5);
    v7 = *&v13[1];
    *&v13[1] = 0;
    if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v6);
    }

    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v13, v6);
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v12, v8);
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v11, v9);
  }

  else
  {
    *this = 0;
    *(this + 120) = 0;
  }

  return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v20, v4);
}

uint64_t std::optional<WebCore::PasteboardItemInfo>::optional[abi:sn200100]<WebCore::PasteboardItemInfo,0>(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1, a2);
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 16, (a2 + 16));
  *(a1 + 40) = 0;
  *(a1 + 32) = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 32, (a2 + 32));
  v4 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(a1 + 48) = v4;
  v5 = *(a2 + 56);
  v6 = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 72) = v6;
  *(a1 + 56) = v5;
  *(a1 + 104) = 0;
  *(a1 + 96) = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 96, (a2 + 96));
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = 1;
  return a1;
}

uint64_t WebKit::WebPasteboardOverrides::getDataForOverride(const WTF::StringImpl **a1, const WTF::StringImpl **a2, const WTF::StringImpl *a3)
{
  v3 = WebKit::WebPasteboardOverrides::sharedPasteboardOverrides(void)::sharedOverrides;
  if (!WebKit::WebPasteboardOverrides::sharedPasteboardOverrides(void)::sharedOverrides)
  {
    return 0;
  }

  v5 = *a1;
  if (v5 == -1)
  {
    goto LABEL_38;
  }

  if (!v5)
  {
    __break(0xC471u);
    JUMPOUT(0x19E39D4B0);
  }

  v8 = *(WebKit::WebPasteboardOverrides::sharedPasteboardOverrides(void)::sharedOverrides - 8);
  v9 = *(v5 + 4);
  if (v9 < 0x100)
  {
    v10 = WTF::StringImpl::hashSlowCase(v5);
  }

  else
  {
    v10 = v9 >> 8;
  }

  for (i = 0; ; v10 = i + v12)
  {
    v12 = v10 & v8;
    v13 = *(v3 + 16 * v12);
    if (v13 != -1)
    {
      if (!v13)
      {
        v14 = WebKit::WebPasteboardOverrides::sharedPasteboardOverrides(void)::sharedOverrides;
        if (WebKit::WebPasteboardOverrides::sharedPasteboardOverrides(void)::sharedOverrides)
        {
          v15 = WebKit::WebPasteboardOverrides::sharedPasteboardOverrides(void)::sharedOverrides + 16 * *(WebKit::WebPasteboardOverrides::sharedPasteboardOverrides(void)::sharedOverrides - 4);
          goto LABEL_14;
        }

        return 0;
      }

      if (WTF::equal(v13, *a1, a3))
      {
        break;
      }
    }

    ++i;
  }

  v15 = v3 + 16 * v12;
  v14 = WebKit::WebPasteboardOverrides::sharedPasteboardOverrides(void)::sharedOverrides;
  if (WebKit::WebPasteboardOverrides::sharedPasteboardOverrides(void)::sharedOverrides)
  {
LABEL_14:
    v14 += 16 * *(v14 - 4);
  }

  if (v14 != v15)
  {
    v16 = *(v15 + 8);
    if (v16)
    {
      v17 = *a2;
      if (*a2 == -1)
      {
        __break(0xC471u);
        JUMPOUT(0x19E39D4D0);
      }

      if (v17)
      {
        v18 = *(v16 - 8);
        v19 = *(v17 + 4);
        if (v19 < 0x100)
        {
          v20 = WTF::StringImpl::hashSlowCase(v17);
        }

        else
        {
          v20 = v19 >> 8;
        }

        for (j = 0; ; v20 = j + v22)
        {
          v22 = v20 & v18;
          v23 = (v16 + 24 * (v20 & v18));
          v24 = *v23;
          if (*v23 != -1)
          {
            if (!v24)
            {
              v25 = *(v15 + 8);
              if (!v25)
              {
                return 0;
              }

              v23 = &v25[3 * *(v25 - 1)];
              goto LABEL_29;
            }

            if (WTF::equal(v24, *a2, a3))
            {
              break;
            }
          }

          ++j;
        }

        v25 = *(v15 + 8);
        if (!v25)
        {
          goto LABEL_30;
        }

LABEL_29:
        v25 += 3 * *(v25 - 1);
LABEL_30:
        if (v25 != v23)
        {
          WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(a3, (v23 + 1));
          return 1;
        }

        return 0;
      }

LABEL_38:
      __break(0xC471u);
      JUMPOUT(0x19E39D490);
    }
  }

  return 0;
}

void WebKit::WebPerformanceLoggingClient::logScrollingEvent(uint64_t a1, int a2, uint64_t a3, double a4)
{
  v4 = *(*(a1 + 8) + 8);
  if (v4)
  {
    CFRetain(*(v4 - 8));
    v8 = (*(*(v4 + 16) + 56))(v4 + 16);
    v10 = IPC::Encoder::operator new(0x238, v9);
    *v10 = 2286;
    *(v10 + 2) = 0;
    *(v10 + 3) = 0;
    *(v10 + 1) = v8;
    *(v10 + 68) = 0;
    *(v10 + 70) = 0;
    *(v10 + 69) = 0;
    IPC::Encoder::encodeHeader(v10);
    v15 = v10;
    IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v10, a2);
    IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(v10, a4);
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v10, a3);
    (*(*(v4 + 16) + 32))(v4 + 16, &v15, 0);
    v12 = v15;
    v15 = 0;
    if (v12)
    {
      IPC::Encoder::~Encoder(v12, v11);
      bmalloc::api::tzoneFree(v13, v14);
    }

    CFRelease(*(v4 - 8));
  }

  else
  {
    __break(0xC471u);
  }
}

void WebKit::WebPermissionController::~WebPermissionController(WebKit::WebPermissionController *this, void *a2)
{
  {
    v3 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v6 = WebKit::WebProcess::operator new(0x370, a2);
    v3 = WebKit::WebProcess::WebProcess(v6);
    WebKit::WebProcess::singleton(void)::process = v3;
  }

  IPC::MessageReceiverMap::removeMessageReceiver(v3 + 6, 0xBEu);
  v5 = *(this + 4);
  if (v5)
  {
    WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::deallocateTable(v5, v4);
  }

  *(this + 2) = &unk_1F10EA5E0;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 3, v4);
}

{
  WebKit::WebPermissionController::~WebPermissionController(this, a2);

  WTF::fastFree(v2, v3);
}

void non-virtual thunk toWebKit::WebPermissionController::~WebPermissionController(WebKit::WebPermissionController *this, void *a2)
{
  WebKit::WebPermissionController::~WebPermissionController((this - 16), a2);
}

{
  WebKit::WebPermissionController::~WebPermissionController((this - 16), a2);

  WTF::fastFree(v2, v3);
}

IPC::Encoder *WebKit::WebPermissionController::query(WebCore::DeprecatedGlobalSettings *a1, uint64_t a2, char a3, uint64_t a4, int a5, uint64_t *a6)
{
  LODWORD(v8) = a5;
  v12 = WebCore::DeprecatedGlobalSettings::builtInNotificationsEnabled(a1);
  if (!v12 || (a3 - 11) > 1u)
  {
    LOBYTE(v38) = 0;
    v39 = 0;
    if (v8 <= 1)
    {
      if (!*a4 || (v14 = *(*a4 + 8)) == 0)
      {
        __break(0xC471u);
        goto LABEL_30;
      }

      v15 = *(WebKit::WebPage::fromCorePage(v14) + 1832);
      v39 = 1;
      v38 = v15;
    }

    v6 = &qword_1ED643000;
    {
      v16 = WebKit::WebProcess::singleton(void)::process;
LABEL_9:
      v18 = *(v16 + 3);
      v17 = (v16 + 24);
      v19 = (*(v18 + 56))(v17);
      v21 = IPC::Encoder::operator new(0x238, v20);
      *v21 = 2893;
      *(v21 + 2) = 0;
      *(v21 + 3) = 0;
      *(v21 + 1) = v19;
      *(v21 + 68) = 0;
      *(v21 + 70) = 0;
      *(v21 + 69) = 0;
      IPC::Encoder::encodeHeader(v21);
      v41 = v21;
      IPC::ArgumentCoder<WebCore::ClientOrigin,void>::encode(v21, a2);
      IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v21, a3);
      IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(v21, &v38);
      LOBYTE(v40[0]) = v8;
      IPC::Encoder::operator<<<unsigned char>(v21, v40);
      v22 = *a6;
      *a6 = 0;
      v23 = WTF::fastMalloc(0x10);
      *v23 = &unk_1F1132358;
      v23[1] = v22;
      if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected != 1)
      {
        v24 = v23;
        IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
        v40[0] = v24;
        v40[1] = IdentifierInternal;
        (*(*v17 + 40))(v17, &v41, v40, 0);
        v27 = v40[0];
        v40[0] = 0;
        if (v27)
        {
          (*(*v27 + 8))(v27);
        }

        result = v41;
        v41 = 0;
        if (result)
        {
          IPC::Encoder::~Encoder(result, v26);
          return bmalloc::api::tzoneFree(v29, v30);
        }

        return result;
      }

      __break(0xC471u);
LABEL_30:
      JUMPOUT(0x19E39DA6CLL);
    }

LABEL_25:
    v16 = WebKit::WebProcess::operator new(0x370, v13);
    WebKit::WebProcess::singleton(void)::process = WebKit::WebProcess::WebProcess(v16);
    *(v6 + 2024) = 1;
    goto LABEL_9;
  }

  v31 = WebKit::WebProcess::singleton(v12, v13);
  v32 = WebKit::WebProcess::ensureNetworkProcessConnection(v31);
  v8 = *(v32 + 3);
  while (1)
  {
    v34 = *v8;
    if ((*v8 & 1) == 0)
    {
      break;
    }

    v37 = *v8;
    atomic_compare_exchange_strong_explicit(v8, &v37, v34 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v37 == v34)
    {
      goto LABEL_18;
    }
  }

  v32 = WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v8);
LABEL_18:
  v35 = *a6;
  *a6 = 0;
  v40[0] = v35;
  v38 = a2 + 32;
  v36 = WebKit::WebProcess::singleton(v32, v33);
  if ((*(v36 + 712) & 1) == 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  IPC::Connection::sendWithAsyncReply<Messages::NotificationManagerMessageHandler::GetPermissionState,WebKit::WebPermissionController::query(WebCore::ClientOrigin &&,WebCore::PermissionDescriptor,WTF::WeakPtr<WebCore::Page,WebCore::PermissionDescriptor::DefaultWeakPtrImpl,WebCore::PermissionDescriptor::RawPtrTraits<WebCore::Page>> const&,WebCore::PermissionQuerySource,WebCore::PermissionDescriptor::CompletionHandler<void ()(std::optional<WebCore::PermissionState>)> &&)::$_0>(v8, &v38, v40, *(v36 + 88));
  if (v40[0])
  {
    (*(*v40[0] + 8))(v40[0]);
  }

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v8);
}

uint64_t IPC::Connection::sendWithAsyncReply<Messages::NotificationManagerMessageHandler::GetPermissionState,WebKit::WebPermissionController::query(WebCore::ClientOrigin &&,WebCore::PermissionDescriptor,WTF::WeakPtr<WebCore::Page,WebCore::PermissionDescriptor::DefaultWeakPtrImpl,WebCore::PermissionDescriptor::RawPtrTraits<WebCore::Page>> const&,WebCore::PermissionQuerySource,WebCore::PermissionDescriptor::CompletionHandler<void ()(std::optional<WebCore::PermissionState>)> &&)::$_0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v7 = *a3;
  *a3 = 0;
  v8 = WTF::fastMalloc(0x10);
  *v8 = &unk_1F1132330;
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
    *v12 = 825;
    *(v12 + 2) = 0;
    *(v12 + 3) = 0;
    *(v12 + 1) = a4;
    *(v12 + 68) = 0;
    *(v12 + 70) = 0;
    *(v12 + 69) = 0;
    IPC::Encoder::encodeHeader(v12);
    v19 = v12;
    IPC::ArgumentCoder<WebCore::SecurityOriginData,void>::encode(v12, *a2);
    v18[0] = v9;
    v18[1] = IdentifierInternal;
    IPC::Connection::sendMessageWithAsyncReply(a1, &v19, v18, 0, 0);
    v14 = v18[0];
    v18[0] = 0;
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }

    result = v19;
    v19 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v13);
      return bmalloc::api::tzoneFree(v16, v17);
    }
  }

  return result;
}

unsigned int *WebKit::WebPermissionController::addObserver(uint64_t a1, unsigned int *a2)
{
  v4 = *(a1 + 44);
  v5 = *(a1 + 40) + 1;
  *(a1 + 40) = v5;
  if (v5 > v4)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      v7 = *(v6 - 4);
      if (!v7)
      {
LABEL_15:
        v13 = *(v6 - 4);
        if (6 * *(v6 - 12) < v13 && v13 > 8)
        {
          WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::shrinkToBestSize((a1 + 32));
          v6 = *(a1 + 32);
          *(a1 + 40) = 0;
          if (!v6)
          {
            goto LABEL_22;
          }
        }

        else
        {
          *(a1 + 40) = 0;
        }

        LODWORD(v6) = *(v6 - 12);
        if (v6 > 0x7FFFFFFE)
        {
          v15 = -2;
          goto LABEL_24;
        }

LABEL_22:
        v15 = 2 * v6;
LABEL_24:
        *(a1 + 44) = v15;
        goto LABEL_25;
      }

      v8 = 0;
      v9 = 8 * v7;
      v10 = v6 - 8;
      do
      {
        v11 = *(v10 + v9);
        if ((v11 + 1) >= 2 && !*(v11 + 8))
        {
          *(v10 + v9) = 0;
          if (atomic_fetch_add(v11, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v11);
            WTF::fastFree(v11, a2);
          }

          *(v10 + v9) = -1;
          ++v8;
        }

        v9 -= 8;
      }

      while (v9);
      v6 = *(a1 + 32);
      if (v8)
      {
        v12 = *(v6 - 12) - v8;
        *(v6 - 16) += v8;
        *(v6 - 12) = v12;
        goto LABEL_15;
      }

      if (v6)
      {
        goto LABEL_15;
      }
    }

    LODWORD(v6) = 0;
    *(a1 + 40) = 0;
    goto LABEL_22;
  }

LABEL_25:
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2 + 2, a2);
  v16 = *(a2 + 1);
  atomic_fetch_add(v16, 1u);
  v20 = v16;
  WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>((a1 + 32), &v20, &v19);
  result = v20;
  v20 = 0;
  if (result)
  {
    if (atomic_fetch_add(result, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result);
      return WTF::fastFree(result, v17);
    }
  }

  return result;
}

unsigned int *WebKit::WebPermissionController::removeObserver(unsigned int *result, void *a2)
{
  v3 = result;
  v4 = result[11];
  v5 = result[10] + 1;
  result[10] = v5;
  if (v5 > v4)
  {
    v6 = *(result + 4);
    if (v6)
    {
      v7 = *(v6 - 4);
      if (!v7)
      {
LABEL_15:
        v12 = *(v6 - 4);
        if (6 * *(v6 - 12) < v12 && v12 > 8)
        {
          result = WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::shrinkToBestSize(v3 + 4);
          v6 = *(v3 + 4);
          v3[10] = 0;
          if (!v6)
          {
            goto LABEL_22;
          }
        }

        else
        {
          v3[10] = 0;
        }

        LODWORD(v6) = *(v6 - 12);
        if (v6 > 0x7FFFFFFE)
        {
          v14 = -2;
          goto LABEL_24;
        }

LABEL_22:
        v14 = 2 * v6;
LABEL_24:
        v3[11] = v14;
        goto LABEL_25;
      }

      v8 = 0;
      v9 = 8 * v7;
      v10 = v6 - 8;
      do
      {
        result = *(v10 + v9);
        if (result + 1 >= 2 && !*(result + 1))
        {
          *(v10 + v9) = 0;
          if (atomic_fetch_add(result, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, result);
            result = WTF::fastFree(result, a2);
          }

          *(v10 + v9) = -1;
          ++v8;
        }

        v9 -= 8;
      }

      while (v9);
      v6 = *(v3 + 4);
      if (v8)
      {
        v11 = *(v6 - 12) - v8;
        *(v6 - 16) += v8;
        *(v6 - 12) = v11;
        goto LABEL_15;
      }

      if (v6)
      {
        goto LABEL_15;
      }
    }

    LODWORD(v6) = 0;
    v3[10] = 0;
    goto LABEL_22;
  }

LABEL_25:
  v15 = a2[1];
  if (v15 && *(v15 + 8))
  {
    v18 = a2[1];
    result = WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::find<WTF::HashSetTranslator<WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>>,(WTF::ShouldValidateKey)1,WTF::DefaultWeakPtrImpl const*>(v3 + 4, &v18);
    v16 = *(v3 + 4);
    if (v16)
    {
      v17 = (v16 + 8 * *(v16 - 4));
      if (v17 == result)
      {
        return result;
      }
    }

    else
    {
      if (!result)
      {
        return result;
      }

      v17 = 0;
    }

    if (v17 != result)
    {
      return WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::remove(v3 + 4, result);
    }
  }

  return result;
}

uint64_t WebKit::WebPermissionController::permissionChanged(uint64_t a1, int a2)
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = a1 + 32;
  v33 = a1 + 32;
  v34 = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin((a1 + 32));
  v35 = v5;
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = *(v6 - 4);
    v8 = (v6 + 8 * v7);
    v36 = v8;
    v37 = v8;
    WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v33);
  }

  else
  {
    v36 = 0;
    v37 = 0;
    WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v33);
    v8 = 0;
    v7 = 0;
  }

  v28 = v4;
  v29 = v8;
  v30 = v8;
  v31 = v8;
  v32 = v6 + 8 * v7;
  result = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v28);
  v10 = v34;
  if (v34 != v29)
  {
    while (1)
    {
      v11 = *(*v10 + 8);
      result = (*(*v11 + 40))(v11);
      if (a2 != result)
      {
        return result;
      }

      (*(*v11 + 32))(v11);
      result = WebCore::operator==();
      if (!result)
      {
        return result;
      }

      v12 = (*(*v11 + 48))(v11);
      result = (*(*v11 + 56))(v11);
      if ((!*result || !*(*result + 8)) && v12 < 2)
      {
        return result;
      }

      v13 = (*(*v11 + 32))(v11);
      LOBYTE(v38[0]) = 0;
      v40 = -1;
      LODWORD(v14) = *(v13 + 24);
      if (!*(v13 + 24))
      {
        break;
      }

      if (v14 != 255)
      {
        *v38 = *v13;
LABEL_16:
        v40 = v14;
      }

      LOBYTE(v41) = 0;
      v43 = -1;
      LODWORD(v16) = *(v13 + 56);
      if (*(v13 + 56))
      {
        if (v16 == 255)
        {
          goto LABEL_24;
        }

        v41 = *(v13 + 32);
      }

      else
      {
        v17 = *(v13 + 32);
        if (v17)
        {
          atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed);
        }

        *&v41 = v17;
        v16 = *(v13 + 40);
        if (v16)
        {
          atomic_fetch_add_explicit(v16, 2u, memory_order_relaxed);
        }

        *(&v41 + 1) = v16;
        v42 = *(v13 + 48);
        LOBYTE(v16) = *(v13 + 56);
      }

      v43 = v16;
LABEL_24:
      v18 = (*(*v11 + 56))(v11);
      WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(v11 + 2, v11);
      v19 = *(v11 + 1);
      atomic_fetch_add(v19, 1u);
      v20 = WTF::fastMalloc(0x10);
      *v20 = &unk_1F1132380;
      *(v20 + 1) = v19;
      v27 = v20;
      WebKit::WebPermissionController::query(v20, v38, a2, v18, v12, &v27);
      if (v27)
      {
        (*(*v27 + 8))(v27);
      }

      if (!v43)
      {
        v22 = *(&v41 + 1);
        *(&v41 + 1) = 0;
        if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v22, v21);
        }

        v23 = v41;
        *&v41 = 0;
        if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v23, v21);
        }
      }

      v43 = -1;
      if (!v40)
      {
        v24 = v38[1];
        v38[1] = 0;
        if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v24, v21);
        }

        v25 = v38[0];
        v38[0] = 0;
        if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v25, v21);
        }
      }

      v26 = v34 + 1;
      v34 = v26;
      if (v26 != v35)
      {
        do
        {
          if ((*v26 + 1) > 1)
          {
            break;
          }

          ++v26;
        }

        while (v26 != v35);
        v34 = v26;
      }

      result = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v33);
      v10 = v34;
      ++*(v33 + 8);
      if (v10 == v29)
      {
        return result;
      }
    }

    v15 = *v13;
    if (*v13)
    {
      atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed);
    }

    v38[0] = v15;
    v14 = *(v13 + 8);
    if (v14)
    {
      atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
    }

    v38[1] = v14;
    v39 = *(v13 + 16);
    LOBYTE(v14) = *(v13 + 24);
    goto LABEL_16;
  }

  return result;
}

uint64_t WebKit::WebPlatformStrategies::createLoaderStrategy(WebKit::WebPlatformStrategies *this, void *a2)
{
  v2 = WebKit::WebProcess::singleton(this, a2);

  return WebKit::WebProcess::webLoaderStrategy(v2);
}

atomic_ullong *WebKit::WebPlatformStrategies::getTypes(int a1, uint64_t a2, const WTF::StringImpl **a3, uint64_t a4)
{
  {
    WebKit::WebPasteboardOverrides::sharedPasteboardOverrides(void)::sharedOverrides = 0;
  }

  WebKit::WebPasteboardOverrides::overriddenTypes(&v43, a3, a3);
  v9 = *(a2 + 12);
  if (v9)
  {
    WTF::VectorDestructor<true,WTF::String>::destruct(*a2, (*a2 + 8 * v9));
  }

  v10 = *a2;
  if (*a2)
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    WTF::fastFree(v10, v8);
  }

  *a2 = v43;
  v11 = v44;
  v43 = 0;
  v44 = 0;
  *(a2 + 8) = v11;
  result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v43, v8);
  if (!*(a2 + 12))
  {
    {
      v14 = WebKit::WebProcess::singleton(void)::process;
    }

    else
    {
      v39 = WebKit::WebProcess::operator new(0x370, v13);
      v14 = WebKit::WebProcess::WebProcess(v39);
      WebKit::WebProcess::singleton(void)::process = v14;
    }

    WebKit::AuxiliaryProcess::protectedParentProcessConnection(v14, &v42);
    v15 = v42;
    v40 = WebKit::pageIdentifier(a4);
    v41 = v16;
    IPC::Connection::createSyncMessageEncoder(0x1068, 0, v52);
    v17 = v52[0];
    IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v52[0], a3);
    IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(v17, &v40);
    v18 = IPC::Connection::sendSyncMessage(v15, v52[1], v52, 0, &v50, INFINITY);
    if (v51)
    {
      if (v51 != 1)
      {
        mpark::throw_bad_variant_access(v18);
      }

      LOBYTE(v43) = v50;
      v20 = 1;
      v46 = 1;
LABEL_26:
      v28 = v52[0];
      v52[0] = 0;
      if (v28)
      {
        IPC::Encoder::~Encoder(v28, v19);
        bmalloc::api::tzoneFree(v31, v32);
      }

      result = v42;
      v42 = 0;
      if (result)
      {
        result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(result);
      }

      if (!v20)
      {
        v44 = 0;
        v45 = 0;
        v53 = v4;
        v54[0] = __PAIR64__(v17, v15);
        v47 = a2;
        std::tuple<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &>::operator=[abi:sn200100]<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0>(&v47, &v53);
        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v53, v29);
        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v44, v30);
        result = v43;
        v43 = 0;
        if (result)
        {
          IPC::Decoder::~Decoder(result);
          return bmalloc::api::tzoneFree(v35, v36);
        }
      }

      return result;
    }

    v21 = v50;
    v50 = 0;
    if (*(v21 + 25) == 3194)
    {
      v22 = 11;
    }

    else
    {
      LOBYTE(v47) = 0;
      v49 = 0;
      IPC::Decoder::operator>><std::tuple<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(v21, &v47);
      if (v49 == 1)
      {
        v4 = v47;
        v47 = 0;
        LODWORD(v15) = v48;
        LODWORD(v17) = HIDWORD(v48);
        v48 = 0;
        v53 = 0;
        v54[0] = 0;
        v43 = v21;
        v44 = v4;
        v54[1] = 0;
        v45 = __PAIR64__(v17, v15);
        v46 = 0;
        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v54, v23);
        v24 = v53;
        v53 = 0;
        if (v24)
        {
          IPC::Decoder::~Decoder(v24);
          bmalloc::api::tzoneFree(v37, v38);
        }

        if (v49)
        {
          WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v47, v19);
        }

        v20 = 0;
        goto LABEL_23;
      }

      v22 = 14;
    }

    LOBYTE(v43) = v22;
    v46 = 1;
    IPC::Decoder::~Decoder(v21);
    bmalloc::api::tzoneFree(v25, v26);
    v20 = 1;
LABEL_23:
    if (!v51)
    {
      v27 = v50;
      v50 = 0;
      if (v27)
      {
        IPC::Decoder::~Decoder(v27);
        bmalloc::api::tzoneFree(v33, v34);
      }
    }

    goto LABEL_26;
  }

  return result;
}

unint64_t WebKit::pageIdentifier(uint64_t a1)
{
  {
    v6 = v5;
    CFRetain(*(v5 + 8));
    v7 = *(v6 + 1832);
    v8 = v7 & 0xFFFFFFFFFFFFFF00;
    CFRelease(*(v6 + 8));
    v9 = v7;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  return v8 | v9;
}

WTF *WebKit::WebPlatformStrategies::bufferForType@<X0>(const WTF::StringImpl **a1@<X1>, const WTF::StringImpl **a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v5 = a2;
  v41 = 0;
  v42 = 0;
  {
    WebKit::WebPasteboardOverrides::sharedPasteboardOverrides(void)::sharedOverrides = 0;
  }

  if (WebKit::WebPasteboardOverrides::getDataForOverride(a2, a1, &v41))
  {
    WebCore::SharedBuffer::create<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a4);
    goto LABEL_47;
  }

  {
    v10 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v34 = WebKit::WebProcess::operator new(0x370, v8);
    v10 = WebKit::WebProcess::WebProcess(v34);
    WebKit::WebProcess::singleton(void)::process = v10;
  }

  WebKit::AuxiliaryProcess::protectedParentProcessConnection(v10, &v40);
  v11 = v40;
  v38 = WebKit::pageIdentifier(a3);
  v39 = v12;
  IPC::Connection::createSyncMessageEncoder(0x1061, 0, v45);
  v13 = v45[0];
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v45[0], v5);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v13, a1);
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(v13, &v38);
  v14 = IPC::Connection::sendSyncMessage(v11, v45[1], v45, 0, &v43, INFINITY);
  if (v44)
  {
    if (v44 != 1)
    {
      mpark::throw_bad_variant_access(v14);
    }

    v15 = v43;
    v16 = 1;
    goto LABEL_18;
  }

  v15 = v43;
  v43 = 0;
  if (*(v15 + 50) != 3194)
  {
    IPC::ArgumentCoder<WebCore::PasteboardBuffer,void>::decode(v15, v46);
    if (v47)
    {
LABEL_14:
      v16 = 0;
      v13 = v46[0];
      v11 = v46[1];
      v5 = v46[2];
      goto LABEL_15;
    }

    v31 = *v15;
    v32 = *(v15 + 8);
    *v15 = 0;
    *(v15 + 8) = 0;
    v33 = *(v15 + 24);
    if (v33 && v32)
    {
      (*(*v33 + 16))(v33, v31);
      if (v47)
      {
        goto LABEL_14;
      }

      v35 = *v15;
      v36 = *(v15 + 8);
      v37 = *(v15 + 24);
      v5 = 14;
      *v15 = 0;
      *(v15 + 8) = 0;
      if (!v37 || !v36)
      {
        goto LABEL_12;
      }

      (*(*v37 + 16))(v37, v35);
    }

    else
    {
      *v15 = 0;
      *(v15 + 8) = 0;
    }

    v5 = 14;
    goto LABEL_12;
  }

  v5 = 11;
LABEL_12:
  IPC::Decoder::~Decoder(v15);
  bmalloc::api::tzoneFree(v17, v18);
  v16 = 1;
  v15 = v5;
LABEL_15:
  if (!v44)
  {
    v19 = v43;
    v43 = 0;
    if (v19)
    {
      IPC::Decoder::~Decoder(v19);
      bmalloc::api::tzoneFree(v26, v27);
    }
  }

LABEL_18:
  v20 = v45[0];
  v45[0] = 0;
  if (v20)
  {
    IPC::Encoder::~Encoder(v20, v9);
    bmalloc::api::tzoneFree(v24, v25);
  }

  v21 = v40;
  v40 = 0;
  if (v21)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v21);
  }

  if (v16)
  {
    v22 = v13;
    v23 = v11;
    v13 = 0;
    v11 = 0;
  }

  else
  {
    if (v5)
    {
      atomic_fetch_add((v5 + 8), 1u);
      *a4 = v5;
      if (atomic_fetch_add((v5 + 8), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, (v5 + 8));
        (*(*v5 + 8))(v5);
      }

      v22 = 0;
      v23 = 0;
      v5 = 0;
      if (!v11)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }

    v22 = 0;
    v23 = 0;
  }

  *a4 = 0;
  if (!v11)
  {
    goto LABEL_31;
  }

LABEL_30:
  if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v9);
    if (!v13)
    {
      goto LABEL_35;
    }

    goto LABEL_32;
  }

LABEL_31:
  if (!v13)
  {
    goto LABEL_35;
  }

LABEL_32:
  if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v9);
  }

LABEL_35:
  if (v16)
  {
    goto LABEL_47;
  }

  if (v5 && atomic_fetch_add((v5 + 8), 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, (v5 + 8));
    (*(*v5 + 8))(v5);
    if (v23)
    {
LABEL_39:
      if (atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v23, v9);
      }
    }
  }

  else if (v23)
  {
    goto LABEL_39;
  }

  if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v22, v9);
  }

  if (v15)
  {
    IPC::Decoder::~Decoder(v15);
    bmalloc::api::tzoneFree(v29, v30);
  }

LABEL_47:
  result = v41;
  if (v41)
  {
    v41 = 0;
    LODWORD(v42) = 0;
    return WTF::fastFree(result, v9);
  }

  return result;
}

uint64_t WebKit::WebPlatformStrategies::getPathnamesForType(uint64_t a1, WTF::StringImpl **a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v71 = 0;
  v72 = 0;
  {
    v12 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v65 = WebKit::WebProcess::operator new(0x370, a2);
    v12 = WebKit::WebProcess::WebProcess(v65);
    WebKit::WebProcess::singleton(void)::process = v12;
  }

  WebKit::AuxiliaryProcess::protectedParentProcessConnection(v12, &v68);
  v13 = v68;
  v66 = WebKit::pageIdentifier(a5);
  v67 = v14;
  IPC::Connection::createSyncMessageEncoder(0x1065, 0, v80);
  v15 = v80[0];
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v80[0], a4);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v15, a3);
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(v15, &v66);
  v16 = IPC::Connection::sendSyncMessage(v13, v80[1], v80, 0, &v78, INFINITY);
  if (v79)
  {
    if (v79 != 1)
    {
      mpark::throw_bad_variant_access(v16);
    }

    v69[0] = v78;
    v19 = 1;
    v70 = 1;
    goto LABEL_42;
  }

  v20 = v78;
  v78 = 0;
  if (*(v20 + 25) == 3194)
  {
    v21 = 11;
    goto LABEL_38;
  }

  LOBYTE(v73) = 0;
  v77 = 0;
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(v20, &v81);
  if (v83 & 1) != 0 || (v60 = *v20, v61 = *(v20 + 1), *v20 = 0, *(v20 + 1) = 0, (v62 = *(v20 + 3)) != 0) && v61 && ((*(*v62 + 16))(v62, v60), (v83))
  {
    IPC::VectorArgumentCoder<false,WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(v20, v22, &v84);
    if ((v85 & 1) == 0)
    {
      goto LABEL_64;
    }

    do
    {
      if (v83)
      {
        v26 = v81;
        v81 = 0;
        *v69 = v26;
        LODWORD(v5) = v82;
        v6 = HIDWORD(v82);
        v82 = 0;
        *&v69[8] = v5;
        *&v69[12] = v6;
        a4 = v84;
        *&v69[16] = v84;
        LODWORD(v15) = DWORD2(v84);
        LODWORD(v13) = HIDWORD(v84);
        v84 = 0uLL;
        *&v69[24] = v15;
        *&v69[28] = v13;
        v27 = 1;
        v69[32] = 1;
        WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v84, v25);
        goto LABEL_12;
      }

      __break(1u);
LABEL_64:
      v25 = *v20;
      v56 = *(v20 + 1);
      *v20 = 0;
      *(v20 + 1) = 0;
      v57 = *(v20 + 3);
      if (!v57)
      {
        break;
      }

      if (!v56)
      {
        break;
      }

      (*(*v57 + 16))(v57, v25);
    }

    while ((v85 & 1) != 0);
    v27 = 0;
    v69[0] = 0;
    v69[32] = 0;
LABEL_12:
    if (v83)
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v81, v25);
    }

    if (v27)
    {
      v7 = 1;
      goto LABEL_16;
    }
  }

  else
  {
    v27 = 0;
    v69[0] = 0;
    v69[32] = 0;
  }

  v25 = *v20;
  v63 = *(v20 + 1);
  *v20 = 0;
  *(v20 + 1) = 0;
  v64 = *(v20 + 3);
  if (v64 && v63)
  {
    (*(*v64 + 16))(v64, v25);
  }

  v7 = 0;
LABEL_16:
  if (v77 == v27)
  {
    if (v77)
    {
      if (HIDWORD(v74))
      {
        WTF::VectorDestructor<true,WTF::String>::destruct(v73, (v73 + 8 * HIDWORD(v74)));
      }

      v28 = v73;
      if (v73)
      {
        v73 = 0;
        LODWORD(v74) = 0;
        WTF::fastFree(v28, v25);
      }

      v29 = *v69;
      *v69 = 0;
      *&v69[8] = 0;
      v73 = v29;
      v74 = __PAIR64__(v6, v5);
      if (HIDWORD(v76))
      {
        v58 = v75;
        v5 = 8 * HIDWORD(v76);
        do
        {
          WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(v58);
          v58 = (v59 + 8);
          v5 -= 8;
        }

        while (v5);
      }

      v30 = v75;
      if (v75)
      {
        v75 = 0;
        LODWORD(v76) = 0;
        WTF::fastFree(v30, v25);
      }

      *&v23 = 0;
      *&v69[16] = v23;
      v75 = a4;
      v76 = __PAIR64__(v13, v15);
      if (!v7)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }
  }

  else
  {
    if (!v77)
    {
      *&v24 = 0;
      v73 = *v69;
      v74 = __PAIR64__(v6, v5);
      *v69 = 0u;
      *&v69[16] = v24;
      v75 = a4;
      v76 = __PAIR64__(v13, v15);
      v77 = 1;
      if (!v7)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }

    WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v75, v25);
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v73, v31);
    v77 = 0;
  }

  if (v7)
  {
LABEL_30:
    WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v69[16], v25);
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v69, v32);
  }

LABEL_31:
  if (v77 == 1)
  {
    v7 = v73;
    v73 = 0;
    v6 = v74;
    LODWORD(v5) = HIDWORD(v74);
    v74 = 0;
    a4 = v75;
    v75 = 0;
    LODWORD(v13) = v76;
    LODWORD(v15) = HIDWORD(v76);
    v76 = 0;
    v84 = 0uLL;
    *v69 = v20;
    *&v69[8] = v7;
    v85 = 0u;
    *&v69[16] = v6;
    *&v69[20] = v5;
    *&v69[24] = a4;
    v86 = 0;
    *&v69[32] = v13;
    *&v69[36] = v15;
    v70 = 0;
    WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v85 + 8, v25);
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v84 + 8, v33);
    v34 = v84;
    *&v84 = 0;
    if (v34)
    {
      IPC::Decoder::~Decoder(v34);
      bmalloc::api::tzoneFree(v53, v54);
    }

    if (v77)
    {
      WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v75, v17);
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v73, v35);
    }

    v19 = 0;
    goto LABEL_39;
  }

  v21 = 14;
LABEL_38:
  v69[0] = v21;
  v70 = 1;
  IPC::Decoder::~Decoder(v20);
  bmalloc::api::tzoneFree(v36, v37);
  v19 = 1;
LABEL_39:
  if (!v79)
  {
    v38 = v78;
    v78 = 0;
    if (v38)
    {
      IPC::Decoder::~Decoder(v38);
      bmalloc::api::tzoneFree(v49, v50);
    }
  }

LABEL_42:
  v39 = v80[0];
  v80[0] = 0;
  if (v39)
  {
    IPC::Encoder::~Encoder(v39, v17);
    bmalloc::api::tzoneFree(v47, v48);
  }

  v40 = v68;
  v68 = 0;
  if (v40)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v40);
  }

  if (!v19)
  {
    *&v18 = 0;
    *&v69[8] = v18;
    *&v69[24] = v18;
    v41 = *(a2 + 3);
    if (v41)
    {
      WTF::VectorDestructor<true,WTF::String>::destruct(*a2, (*a2 + 8 * v41));
    }

    v42 = *a2;
    if (*a2)
    {
      *a2 = 0;
      *(a2 + 2) = 0;
      WTF::fastFree(v42, v17);
    }

    *&v18 = 0;
    *a2 = v7;
    *(a2 + 2) = v6;
    *(a2 + 3) = v5;
    v84 = v18;
    v85 = v18;
    v71 = a4;
    v72 = __PAIR64__(v15, v13);
    WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v85, v17);
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v84, v43);
    if (!v15)
    {
      goto LABEL_52;
    }

    v55 = 8 * v15;
    do
    {
      if (*a4)
      {
        WebKit::SandboxExtension::consumePermanently(a4);
      }

      ++a4;
      v55 -= 8;
    }

    while (v55);
    if (!v70)
    {
LABEL_52:
      WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v69[24], v17);
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v69[8], v44);
      v45 = *v69;
      *v69 = 0;
      if (v45)
      {
        IPC::Decoder::~Decoder(v45);
        bmalloc::api::tzoneFree(v51, v52);
      }
    }
  }

  return WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v71, v17);
}

atomic_ullong *WebKit::WebPlatformStrategies::stringForType@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  {
    v8 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v27 = WebKit::WebProcess::operator new(0x370, a1);
    v8 = WebKit::WebProcess::WebProcess(v27);
    WebKit::WebProcess::singleton(void)::process = v8;
  }

  WebKit::AuxiliaryProcess::protectedParentProcessConnection(v8, &v30);
  v9 = v30;
  v28 = WebKit::pageIdentifier(a3);
  v29 = v10;
  IPC::Connection::createSyncMessageEncoder(0x1066, 0, v35);
  v11 = v35[0];
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v35[0], a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v11, a1);
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(v11, &v28);
  v12 = IPC::Connection::sendSyncMessage(v9, v35[1], v35, 0, &v33, INFINITY);
  if (v34)
  {
    if (v34 != 1)
    {
      mpark::throw_bad_variant_access(v12);
    }

    v14 = v33;
    v15 = 1;
    goto LABEL_15;
  }

  v14 = v33;
  v33 = 0;
  if (*(v14 + 50) == 3194)
  {
    a2 = 11;
LABEL_11:
    IPC::Decoder::~Decoder(v14);
    bmalloc::api::tzoneFree(v16, v17);
    v15 = 1;
    v14 = a2;
    goto LABEL_12;
  }

  LOBYTE(v31) = 0;
  v32 = 0;
  IPC::Decoder::operator>><std::tuple<WTF::String>>(v14, &v31);
  if (v32 != 1)
  {
    a2 = 14;
    goto LABEL_11;
  }

  v15 = 0;
  a2 = v31;
LABEL_12:
  if (!v34)
  {
    v18 = v33;
    v33 = 0;
    if (v18)
    {
      IPC::Decoder::~Decoder(v18);
      bmalloc::api::tzoneFree(v25, v26);
    }
  }

LABEL_15:
  v19 = v35[0];
  v35[0] = 0;
  if (v19)
  {
    IPC::Encoder::~Encoder(v19, v13);
    bmalloc::api::tzoneFree(v21, v22);
  }

  result = v30;
  v30 = 0;
  if (result)
  {
    result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(result);
  }

  if (v15 || !a2)
  {
    *a4 = 0;
    if (v15)
    {
      return result;
    }
  }

  else
  {
    atomic_fetch_add_explicit(a2, 2u, memory_order_relaxed);
    *a4 = a2;
    if (atomic_fetch_add_explicit(a2, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(a2, v13);
    }
  }

  if (v14)
  {
    IPC::Decoder::~Decoder(v14);
    return bmalloc::api::tzoneFree(v23, v24);
  }

  return result;
}

IPC::Decoder *WebKit::WebPlatformStrategies::allStringsForType@<X0>(void *a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  {
    v8 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v43 = WebKit::WebProcess::operator new(0x370, a1);
    v8 = WebKit::WebProcess::WebProcess(v43);
    WebKit::WebProcess::singleton(void)::process = v8;
  }

  WebKit::AuxiliaryProcess::protectedParentProcessConnection(v8, &v46);
  v9 = v46;
  v44 = WebKit::pageIdentifier(a3);
  v45 = v10;
  IPC::Connection::createSyncMessageEncoder(0x1067, 0, v54);
  v11 = v54[0];
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v54[0], a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v11, a1);
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(v11, &v44);
  v12 = IPC::Connection::sendSyncMessage(v9, v54[1], v54, 0, &v52, INFINITY);
  if (v53)
  {
    if (v53 != 1)
    {
      mpark::throw_bad_variant_access(v12);
    }

    LOBYTE(v47) = v52;
    v14 = 1;
    v49 = 1;
    goto LABEL_19;
  }

  v15 = v52;
  v52 = 0;
  if (*(v15 + 25) == 3194)
  {
    v16 = 11;
  }

  else
  {
    LOBYTE(v50) = 0;
    v51 = 0;
    IPC::Decoder::operator>><std::tuple<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(v15, &v50);
    if (v51 == 1)
    {
      *&v18 = 0;
      v19 = v50;
      v50 = v18;
      v55 = 0;
      v56[0] = 0;
      v47 = v15;
      v48 = v19;
      v56[1] = 0;
      v49 = 0;
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v56, v17);
      v20 = v55;
      v55 = 0;
      if (v20)
      {
        IPC::Decoder::~Decoder(v20);
        bmalloc::api::tzoneFree(v41, v42);
      }

      if (v51)
      {
        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v50, v13);
      }

      v14 = 0;
      goto LABEL_16;
    }

    v16 = 14;
  }

  LOBYTE(v47) = v16;
  v49 = 1;
  IPC::Decoder::~Decoder(v15);
  bmalloc::api::tzoneFree(v21, v22);
  v14 = 1;
LABEL_16:
  if (!v53)
  {
    v23 = v52;
    v52 = 0;
    if (v23)
    {
      IPC::Decoder::~Decoder(v23);
      bmalloc::api::tzoneFree(v37, v38);
    }
  }

LABEL_19:
  v24 = v54[0];
  v54[0] = 0;
  if (v24)
  {
    IPC::Encoder::~Encoder(v24, v13);
    bmalloc::api::tzoneFree(v35, v36);
  }

  v25 = v46;
  v46 = 0;
  if (v25)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v25);
  }

  v50 = 0uLL;
  v26 = &v50 + 8;
  if (v14)
  {
    v27 = &v50;
  }

  else
  {
    v27 = &v48;
  }

  v28 = *v27;
  *v27 = 0;
  v55 = v28;
  if (!v14)
  {
    v26 = &v48 + 8;
  }

  v29 = *v26;
  *v26 = 0;
  v30 = &v50 + 12;
  if (!v14)
  {
    v30 = &v48 + 12;
  }

  v31 = *v30;
  *v30 = 0;
  v56[0] = __PAIR64__(v31, v29);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v50, v13);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(a4, &v55);
  result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v55, v32);
  if (!v14)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v48, v34);
    result = v47;
    v47 = 0;
    if (result)
    {
      IPC::Decoder::~Decoder(result);
      return bmalloc::api::tzoneFree(v39, v40);
    }
  }

  return result;
}

uint64_t WebKit::WebPlatformStrategies::changeCount(int a1, WTF::String *a2, const WTF::StringImpl *a3)
{
  {
    v5 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v28 = WebKit::WebProcess::operator new(0x370, a2);
    v5 = WebKit::WebProcess::WebProcess(v28);
    WebKit::WebProcess::singleton(void)::process = v5;
  }

  WebKit::WebProcess::waitForPendingPasteboardWritesToFinish(v5, a2, a3);
  {
    v7 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v29 = WebKit::WebProcess::operator new(0x370, v6);
    v7 = WebKit::WebProcess::WebProcess(v29);
    WebKit::WebProcess::singleton(void)::process = v7;
  }

  WebKit::AuxiliaryProcess::protectedParentProcessConnection(v7, &v32);
  v8 = v32;
  v30 = WebKit::pageIdentifier(a3);
  v31 = v9;
  IPC::Connection::createSyncMessageEncoder(0x1062, 0, v35);
  v10 = v35[0];
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v35[0], a2);
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(v10, &v30);
  v11 = IPC::Connection::sendSyncMessage(v8, v35[1], v35, 0, &v33, INFINITY);
  if (v34)
  {
    if (v34 != 1)
    {
      mpark::throw_bad_variant_access(v11);
    }

    v13 = v33;
    v14 = 1;
    goto LABEL_17;
  }

  v13 = v33;
  v33 = 0;
  if (*(v13 + 50) == 3194)
  {
    v10 = 11;
LABEL_13:
    IPC::Decoder::~Decoder(v13);
    bmalloc::api::tzoneFree(v16, v17);
    v14 = 1;
    v13 = v10;
    goto LABEL_14;
  }

  v15 = IPC::Decoder::decode<std::tuple<long long>>(v13);
  if (!v12)
  {
    v10 = 14;
    goto LABEL_13;
  }

  v10 = v15;
  v14 = 0;
LABEL_14:
  if (!v34)
  {
    v18 = v33;
    v33 = 0;
    if (v18)
    {
      IPC::Decoder::~Decoder(v18);
      bmalloc::api::tzoneFree(v24, v25);
    }
  }

LABEL_17:
  v19 = v35[0];
  v35[0] = 0;
  if (v19)
  {
    IPC::Encoder::~Encoder(v19, v12);
    bmalloc::api::tzoneFree(v22, v23);
  }

  v20 = v32;
  v32 = 0;
  if (v20)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v20);
  }

  if (v14)
  {
    return 0;
  }

  if (v13)
  {
    IPC::Decoder::~Decoder(v13);
    bmalloc::api::tzoneFree(v26, v27);
  }

  return v10;
}

atomic_ullong *WebKit::WebPlatformStrategies::color@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  {
    v6 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v25 = WebKit::WebProcess::operator new(0x370, a1);
    v6 = WebKit::WebProcess::WebProcess(v25);
    WebKit::WebProcess::singleton(void)::process = v6;
  }

  WebKit::AuxiliaryProcess::protectedParentProcessConnection(v6, &v28);
  v7 = v28;
  v26 = WebKit::pageIdentifier(a2);
  v27 = v8;
  IPC::Connection::createSyncMessageEncoder(0x1063, 0, v31);
  v9 = v31[0];
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v31[0], a1);
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(v9, &v26);
  v10 = IPC::Connection::sendSyncMessage(v7, v31[1], v31, 0, &v29, INFINITY);
  if (v30)
  {
    if (v30 != 1)
    {
      mpark::throw_bad_variant_access(v10);
    }

    v12 = v29;
    v13 = 1;
    goto LABEL_15;
  }

  v12 = v29;
  v29 = 0;
  if (*(v12 + 50) == 3194)
  {
    v7 = 11;
LABEL_11:
    IPC::Decoder::~Decoder(v12);
    bmalloc::api::tzoneFree(v14, v15);
    v13 = 1;
    v12 = v7;
    goto LABEL_12;
  }

  IPC::Decoder::decode<std::tuple<WebCore::Color>>(v12, &v32);
  if (!v33)
  {
    v7 = 14;
    goto LABEL_11;
  }

  v13 = 0;
  v7 = v32;
LABEL_12:
  if (!v30)
  {
    v16 = v29;
    v29 = 0;
    if (v16)
    {
      IPC::Decoder::~Decoder(v16);
      bmalloc::api::tzoneFree(v21, v22);
    }
  }

LABEL_15:
  v17 = v31[0];
  v31[0] = 0;
  if (v17)
  {
    IPC::Encoder::~Encoder(v17, v11);
    bmalloc::api::tzoneFree(v19, v20);
  }

  result = v28;
  v28 = 0;
  if (result)
  {
    result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(result);
  }

  if (v13)
  {
    *a3 = 0;
  }

  else
  {
    *a3 = v7;
    if ((v7 & 0x8000000000000) != 0)
    {
      result = (v7 & 0xFFFFFFFFFFFFLL);
      atomic_fetch_add((v7 & 0xFFFFFFFFFFFFLL), 1u);
      if (atomic_fetch_add((v7 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, result);
        result = WTF::fastFree(result, v11);
      }
    }

    if (v12)
    {
      IPC::Decoder::~Decoder(v12);
      return bmalloc::api::tzoneFree(v23, v24);
    }
  }

  return result;
}

WTF::StringImpl *WebKit::WebPlatformStrategies::url@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  {
    v6 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v29 = WebKit::WebProcess::operator new(0x370, a1);
    v6 = WebKit::WebProcess::WebProcess(v29);
    WebKit::WebProcess::singleton(void)::process = v6;
  }

  WebKit::AuxiliaryProcess::protectedParentProcessConnection(v6, &v33);
  v7 = v33;
  v31 = WebKit::pageIdentifier(a2);
  v32 = v8;
  IPC::Connection::createSyncMessageEncoder(0x1069, 0, v30);
  v9 = v30[0];
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v30[0], a1);
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(v9, &v31);
  v10 = IPC::Connection::sendSyncMessage(v7, v30[1], v30, 0, &v36, INFINITY);
  if (v37)
  {
    if (v37 != 1)
    {
      mpark::throw_bad_variant_access(v10);
    }

    v12 = v36;
    v13 = 1;
    goto LABEL_15;
  }

  v12 = v36;
  v36 = 0;
  if (*(v12 + 50) == 3194)
  {
    v7 = 11;
LABEL_11:
    IPC::Decoder::~Decoder(v12);
    bmalloc::api::tzoneFree(v14, v15);
    v13 = 1;
    v12 = v7;
    goto LABEL_12;
  }

  LOBYTE(v34) = 0;
  v35 = 0;
  IPC::Decoder::operator>><std::tuple<WTF::String>>(v12, &v34);
  if (v35 != 1)
  {
    v7 = 14;
    goto LABEL_11;
  }

  v13 = 0;
  v7 = v34;
LABEL_12:
  if (!v37)
  {
    v16 = v36;
    v36 = 0;
    if (v16)
    {
      IPC::Decoder::~Decoder(v16);
      bmalloc::api::tzoneFree(v25, v26);
    }
  }

LABEL_15:
  v17 = v30[0];
  v30[0] = 0;
  if (v17)
  {
    IPC::Encoder::~Encoder(v17, v11);
    bmalloc::api::tzoneFree(v23, v24);
  }

  v18 = v33;
  v33 = 0;
  if (v18)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v18);
  }

  if (v13)
  {
    v19 = 0;
  }

  else
  {
    v19 = v7;
  }

  v36 = v19;
  v30[0] = 0;
  WTF::URL::invalidate(v30);
  MEMORY[0x19EB01E00](a3, v30, &v36, 0);
  v21 = v30[0];
  v30[0] = 0;
  if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v21, v20);
  }

  result = v36;
  v36 = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v20);
    if (v13)
    {
      return result;
    }
  }

  else if (v13)
  {
    return result;
  }

  if (v12)
  {
    IPC::Decoder::~Decoder(v12);
    return bmalloc::api::tzoneFree(v27, v28);
  }

  return result;
}

uint64_t WebKit::WebPlatformStrategies::addTypes(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  {
    v7 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v28 = WebKit::WebProcess::operator new(0x370, a2);
    v7 = WebKit::WebProcess::WebProcess(v28);
    WebKit::WebProcess::singleton(void)::process = v7;
  }

  WebKit::AuxiliaryProcess::protectedParentProcessConnection(v7, &v31);
  v8 = v31;
  v29 = WebKit::pageIdentifier(a4);
  v30 = v9;
  IPC::Connection::createSyncMessageEncoder(0x105C, 0, v34);
  v10 = v34[0];
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v34[0], a3);
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v10, a2);
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(v10, &v29);
  v11 = IPC::Connection::sendSyncMessage(v8, v34[1], v34, 0, &v32, INFINITY);
  if (v33)
  {
    if (v33 != 1)
    {
      mpark::throw_bad_variant_access(v11);
    }

    v13 = v32;
    v14 = 1;
    goto LABEL_15;
  }

  v13 = v32;
  v32 = 0;
  if (*(v13 + 50) == 3194)
  {
    a3 = 11;
LABEL_11:
    IPC::Decoder::~Decoder(v13);
    bmalloc::api::tzoneFree(v16, v17);
    v14 = 1;
    v13 = a3;
    goto LABEL_12;
  }

  v15 = IPC::Decoder::decode<std::tuple<long long>>(v13);
  if (!v12)
  {
    a3 = 14;
    goto LABEL_11;
  }

  a3 = v15;
  v14 = 0;
LABEL_12:
  if (!v33)
  {
    v18 = v32;
    v32 = 0;
    if (v18)
    {
      IPC::Decoder::~Decoder(v18);
      bmalloc::api::tzoneFree(v24, v25);
    }
  }

LABEL_15:
  v19 = v34[0];
  v34[0] = 0;
  if (v19)
  {
    IPC::Encoder::~Encoder(v19, v12);
    bmalloc::api::tzoneFree(v22, v23);
  }

  v20 = v31;
  v31 = 0;
  if (v20)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v20);
  }

  if (v14)
  {
    return 0;
  }

  if (v13)
  {
    IPC::Decoder::~Decoder(v13);
    bmalloc::api::tzoneFree(v26, v27);
  }

  return a3;
}

uint64_t WebKit::WebPlatformStrategies::setTypes(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  {
    v7 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v28 = WebKit::WebProcess::operator new(0x370, a2);
    v7 = WebKit::WebProcess::WebProcess(v28);
    WebKit::WebProcess::singleton(void)::process = v7;
  }

  WebKit::AuxiliaryProcess::protectedParentProcessConnection(v7, &v31);
  v8 = v31;
  v29 = WebKit::pageIdentifier(a4);
  v30 = v9;
  IPC::Connection::createSyncMessageEncoder(0x1071, 0, v34);
  v10 = v34[0];
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v34[0], a3);
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v10, a2);
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(v10, &v29);
  v11 = IPC::Connection::sendSyncMessage(v8, v34[1], v34, 0, &v32, INFINITY);
  if (v33)
  {
    if (v33 != 1)
    {
      mpark::throw_bad_variant_access(v11);
    }

    v13 = v32;
    v14 = 1;
    goto LABEL_15;
  }

  v13 = v32;
  v32 = 0;
  if (*(v13 + 50) == 3194)
  {
    a3 = 11;
LABEL_11:
    IPC::Decoder::~Decoder(v13);
    bmalloc::api::tzoneFree(v16, v17);
    v14 = 1;
    v13 = a3;
    goto LABEL_12;
  }

  v15 = IPC::Decoder::decode<std::tuple<long long>>(v13);
  if (!v12)
  {
    a3 = 14;
    goto LABEL_11;
  }

  a3 = v15;
  v14 = 0;
LABEL_12:
  if (!v33)
  {
    v18 = v32;
    v32 = 0;
    if (v18)
    {
      IPC::Decoder::~Decoder(v18);
      bmalloc::api::tzoneFree(v24, v25);
    }
  }

LABEL_15:
  v19 = v34[0];
  v34[0] = 0;
  if (v19)
  {
    IPC::Encoder::~Encoder(v19, v12);
    bmalloc::api::tzoneFree(v22, v23);
  }

  v20 = v31;
  v31 = 0;
  if (v20)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v20);
  }

  if (v14)
  {
    return 0;
  }

  if (v13)
  {
    IPC::Decoder::~Decoder(v13);
    bmalloc::api::tzoneFree(v26, v27);
  }

  return a3;
}

uint64_t WebKit::WebPlatformStrategies::setBufferForType(uint64_t a1, atomic_uint *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v8 = a2;
  {
    v9 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v31 = WebKit::WebProcess::operator new(0x370, a2);
    v9 = WebKit::WebProcess::WebProcess(v31);
    WebKit::WebProcess::singleton(void)::process = v9;
  }

  WebKit::AuxiliaryProcess::protectedParentProcessConnection(v9, &v35);
  v10 = v35;
  if (v8)
  {
    atomic_fetch_add(v8 + 2, 1u);
  }

  else
  {
    v8 = WTF::fastMalloc(0x40);
    WebCore::SharedBuffer::SharedBuffer(v8);
  }

  v34 = v8;
  v32 = WebKit::pageIdentifier(a5);
  v33 = v11;
  IPC::Connection::createSyncMessageEncoder(0x106E, 0, v38);
  v12 = v38[0];
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v38[0], a4);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v12, a3);
  IPC::ArgumentCoder<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,void>::encode<IPC::Encoder,WebCore::SharedBuffer>(v12, &v34);
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(v12, &v32);
  v13 = IPC::Connection::sendSyncMessage(v10, v38[1], v38, 0, &v36, INFINITY);
  if (v37)
  {
    if (v37 != 1)
    {
      mpark::throw_bad_variant_access(v13);
    }

    v15 = v36;
    v16 = 1;
    goto LABEL_18;
  }

  v15 = v36;
  v36 = 0;
  if (*(v15 + 50) == 3194)
  {
    a4 = 11;
LABEL_14:
    IPC::Decoder::~Decoder(v15);
    bmalloc::api::tzoneFree(v18, v19);
    v16 = 1;
    v15 = a4;
    goto LABEL_15;
  }

  v17 = IPC::Decoder::decode<std::tuple<long long>>(v15);
  if (!v14)
  {
    a4 = 14;
    goto LABEL_14;
  }

  a4 = v17;
  v16 = 0;
LABEL_15:
  if (!v37)
  {
    v20 = v36;
    v36 = 0;
    if (v20)
    {
      IPC::Decoder::~Decoder(v20);
      bmalloc::api::tzoneFree(v27, v28);
    }
  }

LABEL_18:
  v21 = v38[0];
  v38[0] = 0;
  if (v21)
  {
    IPC::Encoder::~Encoder(v21, v14);
    bmalloc::api::tzoneFree(v25, v26);
  }

  v22 = v34;
  v34 = 0;
  if (v22 && atomic_fetch_add(v22 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v22 + 2);
    (*(*v22 + 8))(v22);
  }

  v23 = v35;
  v35 = 0;
  if (v23)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v23);
  }

  if (v16)
  {
    return 0;
  }

  if (v15)
  {
    IPC::Decoder::~Decoder(v15);
    bmalloc::api::tzoneFree(v29, v30);
  }

  return a4;
}

uint64_t WebKit::WebPlatformStrategies::setURL(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4)
{
  v6 = a2;
  {
    v7 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v28 = WebKit::WebProcess::operator new(0x370, a2);
    v7 = WebKit::WebProcess::WebProcess(v28);
    WebKit::WebProcess::singleton(void)::process = v7;
  }

  WebKit::AuxiliaryProcess::protectedParentProcessConnection(v7, &v31);
  v8 = v31;
  v29 = WebKit::pageIdentifier(a4);
  v30 = v9;
  IPC::Connection::createSyncMessageEncoder(0x1072, 0, v34);
  v10 = v34[0];
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v34[0], v6);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v10, (v6 + 40));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v10, a3);
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(v10, &v29);
  v11 = IPC::Connection::sendSyncMessage(v8, v34[1], v34, 0, &v32, INFINITY);
  if (v33)
  {
    if (v33 != 1)
    {
      mpark::throw_bad_variant_access(v11);
    }

    v13 = v32;
    v14 = 1;
    goto LABEL_15;
  }

  v13 = v32;
  v32 = 0;
  if (*(v13 + 50) == 3194)
  {
    v6 = 11;
LABEL_11:
    IPC::Decoder::~Decoder(v13);
    bmalloc::api::tzoneFree(v16, v17);
    v14 = 1;
    v13 = v6;
    goto LABEL_12;
  }

  v15 = IPC::Decoder::decode<std::tuple<long long>>(v13);
  if (!v12)
  {
    v6 = 14;
    goto LABEL_11;
  }

  v6 = v15;
  v14 = 0;
LABEL_12:
  if (!v33)
  {
    v18 = v32;
    v32 = 0;
    if (v18)
    {
      IPC::Decoder::~Decoder(v18);
      bmalloc::api::tzoneFree(v24, v25);
    }
  }

LABEL_15:
  v19 = v34[0];
  v34[0] = 0;
  if (v19)
  {
    IPC::Encoder::~Encoder(v19, v12);
    bmalloc::api::tzoneFree(v22, v23);
  }

  v20 = v31;
  v31 = 0;
  if (v20)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v20);
  }

  if (v14)
  {
    return 0;
  }

  if (v13)
  {
    IPC::Decoder::~Decoder(v13);
    bmalloc::api::tzoneFree(v26, v27);
  }

  return v6;
}

uint64_t WebKit::WebPlatformStrategies::setColor(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  {
    v7 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v28 = WebKit::WebProcess::operator new(0x370, a2);
    v7 = WebKit::WebProcess::WebProcess(v28);
    WebKit::WebProcess::singleton(void)::process = v7;
  }

  WebKit::AuxiliaryProcess::protectedParentProcessConnection(v7, &v31);
  v8 = v31;
  v29 = WebKit::pageIdentifier(a4);
  v30 = v9;
  IPC::Connection::createSyncMessageEncoder(0x106F, 0, v34);
  v10 = v34[0];
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v34[0], a3);
  IPC::ArgumentCoder<WebCore::Color,void>::encode(v10, a2);
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(v10, &v29);
  v11 = IPC::Connection::sendSyncMessage(v8, v34[1], v34, 0, &v32, INFINITY);
  if (v33)
  {
    if (v33 != 1)
    {
      mpark::throw_bad_variant_access(v11);
    }

    v13 = v32;
    v14 = 1;
    goto LABEL_15;
  }

  v13 = v32;
  v32 = 0;
  if (*(v13 + 50) == 3194)
  {
    a3 = 11;
LABEL_11:
    IPC::Decoder::~Decoder(v13);
    bmalloc::api::tzoneFree(v16, v17);
    v14 = 1;
    v13 = a3;
    goto LABEL_12;
  }

  v15 = IPC::Decoder::decode<std::tuple<long long>>(v13);
  if (!v12)
  {
    a3 = 14;
    goto LABEL_11;
  }

  a3 = v15;
  v14 = 0;
LABEL_12:
  if (!v33)
  {
    v18 = v32;
    v32 = 0;
    if (v18)
    {
      IPC::Decoder::~Decoder(v18);
      bmalloc::api::tzoneFree(v24, v25);
    }
  }

LABEL_15:
  v19 = v34[0];
  v34[0] = 0;
  if (v19)
  {
    IPC::Encoder::~Encoder(v19, v12);
    bmalloc::api::tzoneFree(v22, v23);
  }

  v20 = v31;
  v31 = 0;
  if (v20)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v20);
  }

  if (v14)
  {
    return 0;
  }

  if (v13)
  {
    IPC::Decoder::~Decoder(v13);
    bmalloc::api::tzoneFree(v26, v27);
  }

  return a3;
}

uint64_t WebKit::WebPlatformStrategies::setStringForType(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  {
    v9 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v30 = WebKit::WebProcess::operator new(0x370, a2);
    v9 = WebKit::WebProcess::WebProcess(v30);
    WebKit::WebProcess::singleton(void)::process = v9;
  }

  WebKit::AuxiliaryProcess::protectedParentProcessConnection(v9, &v33);
  v10 = v33;
  v31 = WebKit::pageIdentifier(a5);
  v32 = v11;
  IPC::Connection::createSyncMessageEncoder(0x1070, 0, v36);
  v12 = v36[0];
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v36[0], a4);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v12, a3);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v12, a2);
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(v12, &v31);
  v13 = IPC::Connection::sendSyncMessage(v10, v36[1], v36, 0, &v34, INFINITY);
  if (v35)
  {
    if (v35 != 1)
    {
      mpark::throw_bad_variant_access(v13);
    }

    v15 = v34;
    v16 = 1;
    goto LABEL_15;
  }

  v15 = v34;
  v34 = 0;
  if (*(v15 + 50) == 3194)
  {
    a3 = 11;
LABEL_11:
    IPC::Decoder::~Decoder(v15);
    bmalloc::api::tzoneFree(v18, v19);
    v16 = 1;
    v15 = a3;
    goto LABEL_12;
  }

  v17 = IPC::Decoder::decode<std::tuple<long long>>(v15);
  if (!v14)
  {
    a3 = 14;
    goto LABEL_11;
  }

  a3 = v17;
  v16 = 0;
LABEL_12:
  if (!v35)
  {
    v20 = v34;
    v34 = 0;
    if (v20)
    {
      IPC::Decoder::~Decoder(v20);
      bmalloc::api::tzoneFree(v26, v27);
    }
  }

LABEL_15:
  v21 = v36[0];
  v36[0] = 0;
  if (v21)
  {
    IPC::Encoder::~Encoder(v21, v14);
    bmalloc::api::tzoneFree(v24, v25);
  }

  v22 = v33;
  v33 = 0;
  if (v22)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v22);
  }

  if (v16)
  {
    return 0;
  }

  if (v15)
  {
    IPC::Decoder::~Decoder(v15);
    bmalloc::api::tzoneFree(v28, v29);
  }

  return a3;
}

uint64_t WebKit::WebPlatformStrategies::getNumberOfFiles(uint64_t a1, void *a2, uint64_t a3)
{
  {
    v5 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v26 = WebKit::WebProcess::operator new(0x370, a2);
    v5 = WebKit::WebProcess::WebProcess(v26);
    WebKit::WebProcess::singleton(void)::process = v5;
  }

  WebKit::AuxiliaryProcess::protectedParentProcessConnection(v5, &v29);
  v6 = v29;
  v27 = WebKit::pageIdentifier(a3);
  v28 = v7;
  IPC::Connection::createSyncMessageEncoder(0x1060, 0, v32);
  v8 = v32[0];
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v32[0], a2);
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(v8, &v27);
  v9 = IPC::Connection::sendSyncMessage(v6, v32[1], v32, 0, &v30, INFINITY);
  if (v31)
  {
    if (v31 != 1)
    {
      mpark::throw_bad_variant_access(v9);
    }

    v11 = v30;
    v12 = 1;
    goto LABEL_15;
  }

  v11 = v30;
  v30 = 0;
  if (*(v11 + 50) == 3194)
  {
    v8 = 11;
LABEL_11:
    IPC::Decoder::~Decoder(v11);
    bmalloc::api::tzoneFree(v14, v15);
    v12 = 1;
    v11 = v8;
    goto LABEL_12;
  }

  v13 = IPC::Decoder::decode<std::tuple<unsigned long long>>(v11);
  if (!v10)
  {
    v8 = 14;
    goto LABEL_11;
  }

  v8 = v13;
  v12 = 0;
LABEL_12:
  if (!v31)
  {
    v16 = v30;
    v30 = 0;
    if (v16)
    {
      IPC::Decoder::~Decoder(v16);
      bmalloc::api::tzoneFree(v22, v23);
    }
  }

LABEL_15:
  v17 = v32[0];
  v32[0] = 0;
  if (v17)
  {
    IPC::Encoder::~Encoder(v17, v10);
    bmalloc::api::tzoneFree(v20, v21);
  }

  v18 = v29;
  v29 = 0;
  if (v18)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v18);
  }

  if (v12)
  {
    return 0;
  }

  if (v11)
  {
    IPC::Decoder::~Decoder(v11);
    bmalloc::api::tzoneFree(v24, v25);
  }

  return v8;
}

uint64_t WebKit::WebPlatformStrategies::containsURLStringSuitableForLoading(uint64_t a1, void *a2, uint64_t a3)
{
  {
    v5 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v26 = WebKit::WebProcess::operator new(0x370, a2);
    v5 = WebKit::WebProcess::WebProcess(v26);
    WebKit::WebProcess::singleton(void)::process = v5;
  }

  WebKit::AuxiliaryProcess::protectedParentProcessConnection(v5, &v29);
  v6 = v29;
  v27 = WebKit::pageIdentifier(a3);
  v28 = v7;
  IPC::Connection::createSyncMessageEncoder(0x105F, 0, v32);
  v8 = v32[0];
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v32[0], a2);
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(v8, &v27);
  v9 = IPC::Connection::sendSyncMessage(v6, v32[1], v32, 0, &v30, INFINITY);
  if (v31)
  {
    if (v31 != 1)
    {
      mpark::throw_bad_variant_access(v9);
    }

    v11 = v30;
    v12 = 1;
    goto LABEL_14;
  }

  v11 = v30;
  v30 = 0;
  if (*(v11 + 50) == 3194)
  {
    v8 = 11;
  }

  else
  {
    v15 = IPC::Decoder::decode<std::tuple<BOOL>>(v11);
    if (v15 >= 0x100u)
    {
      LOBYTE(v8) = v15;
      v12 = 0;
      goto LABEL_11;
    }

    v8 = 14;
  }

  IPC::Decoder::~Decoder(v11);
  bmalloc::api::tzoneFree(v13, v14);
  v12 = 1;
  v11 = v8;
LABEL_11:
  if (!v31)
  {
    v16 = v30;
    v30 = 0;
    if (v16)
    {
      IPC::Decoder::~Decoder(v16);
      bmalloc::api::tzoneFree(v22, v23);
    }
  }

LABEL_14:
  v17 = v32[0];
  v32[0] = 0;
  if (v17)
  {
    IPC::Encoder::~Encoder(v17, v10);
    bmalloc::api::tzoneFree(v20, v21);
  }

  v18 = v29;
  v29 = 0;
  if (v18)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v18);
  }

  if (!v12 && v11)
  {
    IPC::Decoder::~Decoder(v11);
    bmalloc::api::tzoneFree(v24, v25);
  }

  return (v12 == 0) & v8;
}

atomic_ullong *WebKit::WebPlatformStrategies::urlStringSuitableForLoading@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, WTF::StringImpl **a4@<X8>)
{
  *a4 = 0;
  {
    v8 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v30 = WebKit::WebProcess::operator new(0x370, a1);
    v8 = WebKit::WebProcess::WebProcess(v30);
    WebKit::WebProcess::singleton(void)::process = v8;
  }

  WebKit::AuxiliaryProcess::protectedParentProcessConnection(v8, &v34);
  v9 = v34;
  v32 = WebKit::pageIdentifier(a3);
  v33 = v10;
  IPC::Connection::createSyncMessageEncoder(0x1074, 0, &v39);
  v11 = v39;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v39, a1);
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(v11, &v32);
  v12 = IPC::Connection::sendSyncMessage(v9, v40, &v39, 0, &v37, INFINITY);
  if (v38)
  {
    if (v38 != 1)
    {
      mpark::throw_bad_variant_access(v12);
    }

    v14 = v37;
    v15 = 1;
    goto LABEL_15;
  }

  v14 = v37;
  v37 = 0;
  if (*(v14 + 50) == 3194)
  {
    v16 = 11;
LABEL_11:
    IPC::Decoder::~Decoder(v14);
    bmalloc::api::tzoneFree(v17, v18);
    v15 = 1;
    v14 = v16;
    goto LABEL_12;
  }

  LOBYTE(v35[0]) = 0;
  v36 = 0;
  IPC::Decoder::operator>><std::tuple<WTF::String,WTF::String>>(v14, v35);
  if (v36 != 1)
  {
    v16 = 14;
    goto LABEL_11;
  }

  v15 = 0;
  v31 = *v35;
LABEL_12:
  if (!v38)
  {
    v19 = v37;
    v37 = 0;
    if (v19)
    {
      IPC::Decoder::~Decoder(v19);
      bmalloc::api::tzoneFree(v26, v27);
    }
  }

LABEL_15:
  v20 = v39;
  v39 = 0;
  if (v20)
  {
    IPC::Encoder::~Encoder(v20, v13);
    bmalloc::api::tzoneFree(v24, v25);
  }

  result = v34;
  v34 = 0;
  if (result)
  {
    result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(result);
  }

  if (!v15)
  {
    *v35 = v31;
    v39 = a4;
    v40 = a2;
    std::__memberwise_forward_assign[abi:sn200100]<std::tuple<WTF::String &,WTF::String &>,std::tuple<WTF::String,WTF::String>,WTF::String,WTF::String,0ul,1ul>(&v39, v35);
    v23 = v35[1];
    if (v35[1] && atomic_fetch_add_explicit(v35[1], 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v23, v22);
    }

    result = v35[0];
    if (!v35[0] || atomic_fetch_add_explicit(v35[0], 0xFFFFFFFE, memory_order_relaxed) != 2)
    {
      if (!v14)
      {
        return result;
      }

LABEL_28:
      IPC::Decoder::~Decoder(v14);
      return bmalloc::api::tzoneFree(v28, v29);
    }

    result = WTF::StringImpl::destroy(result, v22);
    if (v14)
    {
      goto LABEL_28;
    }
  }

  return result;
}

IPC::Encoder *WebKit::WebPlatformStrategies::writeToPasteboard(uint64_t a1, uint64_t *a2, WTF::StringImpl **a3, uint64_t a4)
{
  {
    v7 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v17 = WebKit::WebProcess::operator new(0x370, a2);
    v7 = WebKit::WebProcess::WebProcess(v17);
    WebKit::WebProcess::singleton(void)::process = v7;
  }

  LODWORD(v21) = 0;
  WTF::HashMap<WTF::String,unsigned int,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<int>(v7 + 93, a3, &v21, &v19);
  ++*(v19 + 8);
  {
    v9 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v18 = WebKit::WebProcess::operator new(0x370, v8);
    v9 = WebKit::WebProcess::WebProcess(v18);
    WebKit::WebProcess::singleton(void)::process = v9;
  }

  v10 = *(v9 + 5);
  v19 = WebKit::pageIdentifier(a4);
  v20 = v11;
  v12 = IPC::Encoder::operator new(0x238, v11);
  *v12 = 2871;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = 0;
  IPC::Encoder::encodeHeader(v12);
  v21 = v12;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v12, a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v12, a2 + 5);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v12, a3);
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(v12, &v19);
  IPC::Connection::sendMessageImpl(v10, &v21, 0, 0);
  result = v21;
  v21 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v13);
    return bmalloc::api::tzoneFree(v15, v16);
  }

  return result;
}

IPC::Encoder *WebKit::WebPlatformStrategies::writeToPasteboard(uint64_t a1, void *a2, WTF::StringImpl **a3, uint64_t a4)
{
  {
    v7 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v17 = WebKit::WebProcess::operator new(0x370, a2);
    v7 = WebKit::WebProcess::WebProcess(v17);
    WebKit::WebProcess::singleton(void)::process = v7;
  }

  LODWORD(v21) = 0;
  WTF::HashMap<WTF::String,unsigned int,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<int>(v7 + 93, a3, &v21, &v19);
  ++*(v19 + 8);
  {
    v9 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v18 = WebKit::WebProcess::operator new(0x370, v8);
    v9 = WebKit::WebProcess::WebProcess(v18);
    WebKit::WebProcess::singleton(void)::process = v9;
  }

  v10 = *(v9 + 5);
  v19 = WebKit::pageIdentifier(a4);
  v20 = v11;
  v12 = IPC::Encoder::operator new(0x238, v11);
  *v12 = 2872;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = 0;
  IPC::Encoder::encodeHeader(v12);
  v21 = v12;
  IPC::ArgumentCoder<WebCore::PasteboardWebContent,void>::encode(v12, a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v12, a3);
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(v12, &v19);
  IPC::Connection::sendMessageImpl(v10, &v21, 0, 0);
  result = v21;
  v21 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v13);
    return bmalloc::api::tzoneFree(v15, v16);
  }

  return result;
}

{
  {
    v7 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v17 = WebKit::WebProcess::operator new(0x370, a2);
    v7 = WebKit::WebProcess::WebProcess(v17);
    WebKit::WebProcess::singleton(void)::process = v7;
  }

  LODWORD(v21) = 0;
  WTF::HashMap<WTF::String,unsigned int,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<int>(v7 + 93, a3, &v21, &v19);
  ++*(v19 + 8);
  {
    v9 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v18 = WebKit::WebProcess::operator new(0x370, v8);
    v9 = WebKit::WebProcess::WebProcess(v18);
    WebKit::WebProcess::singleton(void)::process = v9;
  }

  v10 = *(v9 + 5);
  v19 = WebKit::pageIdentifier(a4);
  v20 = v11;
  v12 = IPC::Encoder::operator new(0x238, v11);
  *v12 = 2869;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = 0;
  IPC::Encoder::encodeHeader(v12);
  v21 = v12;
  IPC::ArgumentCoder<WebCore::PasteboardImage,void>::encode(v12, a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v12, a3);
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(v12, &v19);
  IPC::Connection::sendMessageImpl(v10, &v21, 0, 0);
  result = v21;
  v21 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v13);
    return bmalloc::api::tzoneFree(v15, v16);
  }

  return result;
}

IPC::Encoder *WebKit::WebPlatformStrategies::writeToPasteboard(uint64_t a1, void *a2, uint64_t *a3, WTF::StringImpl **a4, uint64_t a5)
{
  {
    v9 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v19 = WebKit::WebProcess::operator new(0x370, a2);
    v9 = WebKit::WebProcess::WebProcess(v19);
    WebKit::WebProcess::singleton(void)::process = v9;
  }

  LODWORD(v23) = 0;
  WTF::HashMap<WTF::String,unsigned int,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<int>(v9 + 93, a4, &v23, &v21);
  ++*(v21 + 8);
  {
    v11 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v20 = WebKit::WebProcess::operator new(0x370, v10);
    v11 = WebKit::WebProcess::WebProcess(v20);
    WebKit::WebProcess::singleton(void)::process = v11;
  }

  v12 = *(v11 + 5);
  v21 = WebKit::pageIdentifier(a5);
  v22 = v13;
  v14 = IPC::Encoder::operator new(0x238, v13);
  *v14 = 2870;
  *(v14 + 68) = 0;
  *(v14 + 70) = 0;
  *(v14 + 69) = 0;
  *(v14 + 2) = 0;
  *(v14 + 3) = 0;
  *(v14 + 1) = 0;
  IPC::Encoder::encodeHeader(v14);
  v23 = v14;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v14, a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v14, a3);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v14, a4);
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(v14, &v21);
  IPC::Connection::sendMessageImpl(v12, &v23, 0, 0);
  result = v23;
  v23 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v15);
    return bmalloc::api::tzoneFree(v17, v18);
  }

  return result;
}

IPC::Encoder *WebKit::WebPlatformStrategies::updateSupportedTypeIdentifiers(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4)
{
  v4 = a4;
  {
    v7 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v16 = WebKit::WebProcess::operator new(0x370, a2);
    v7 = WebKit::WebProcess::WebProcess(v16);
    v4 = a4;
    WebKit::WebProcess::singleton(void)::process = v7;
  }

  v8 = *(v7 + 5);
  v17 = WebKit::pageIdentifier(v4);
  v18 = v9;
  v10 = IPC::Encoder::operator new(0x238, v9);
  *v10 = 2868;
  *(v10 + 68) = 0;
  *(v10 + 70) = 0;
  *(v10 + 69) = 0;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 1) = 0;
  IPC::Encoder::encodeHeader(v10);
  v19 = v10;
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v10, a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v10, a3);
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(v10, &v17);
  IPC::Connection::sendMessageImpl(v8, &v19, 0, 0);
  result = v19;
  v19 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v11);
    return bmalloc::api::tzoneFree(v13, v14);
  }

  return result;
}

IPC::Decoder *WebKit::WebPlatformStrategies::typesSafeForDOMToReadAndWrite@<X0>(void *a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  {
    v8 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v43 = WebKit::WebProcess::operator new(0x370, a1);
    v8 = WebKit::WebProcess::WebProcess(v43);
    WebKit::WebProcess::singleton(void)::process = v8;
  }

  WebKit::AuxiliaryProcess::protectedParentProcessConnection(v8, &v46);
  v9 = v46;
  v44 = WebKit::pageIdentifier(a3);
  v45 = v10;
  IPC::Connection::createSyncMessageEncoder(0x1073, 0, v54);
  v11 = v54[0];
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v54[0], a1);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v11, a2);
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(v11, &v44);
  v12 = IPC::Connection::sendSyncMessage(v9, v54[1], v54, 0, &v52, INFINITY);
  if (v53)
  {
    if (v53 != 1)
    {
      mpark::throw_bad_variant_access(v12);
    }

    LOBYTE(v47) = v52;
    v14 = 1;
    v49 = 1;
    goto LABEL_19;
  }

  v15 = v52;
  v52 = 0;
  if (*(v15 + 25) == 3194)
  {
    v16 = 11;
  }

  else
  {
    LOBYTE(v50) = 0;
    v51 = 0;
    IPC::Decoder::operator>><std::tuple<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(v15, &v50);
    if (v51 == 1)
    {
      *&v18 = 0;
      v19 = v50;
      v50 = v18;
      v55 = 0;
      v56[0] = 0;
      v47 = v15;
      v48 = v19;
      v56[1] = 0;
      v49 = 0;
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v56, v17);
      v20 = v55;
      v55 = 0;
      if (v20)
      {
        IPC::Decoder::~Decoder(v20);
        bmalloc::api::tzoneFree(v41, v42);
      }

      if (v51)
      {
        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v50, v13);
      }

      v14 = 0;
      goto LABEL_16;
    }

    v16 = 14;
  }

  LOBYTE(v47) = v16;
  v49 = 1;
  IPC::Decoder::~Decoder(v15);
  bmalloc::api::tzoneFree(v21, v22);
  v14 = 1;
LABEL_16:
  if (!v53)
  {
    v23 = v52;
    v52 = 0;
    if (v23)
    {
      IPC::Decoder::~Decoder(v23);
      bmalloc::api::tzoneFree(v37, v38);
    }
  }

LABEL_19:
  v24 = v54[0];
  v54[0] = 0;
  if (v24)
  {
    IPC::Encoder::~Encoder(v24, v13);
    bmalloc::api::tzoneFree(v35, v36);
  }

  v25 = v46;
  v46 = 0;
  if (v25)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v25);
  }

  v50 = 0uLL;
  v26 = &v50 + 8;
  if (v14)
  {
    v27 = &v50;
  }

  else
  {
    v27 = &v48;
  }

  v28 = *v27;
  *v27 = 0;
  v55 = v28;
  if (!v14)
  {
    v26 = &v48 + 8;
  }

  v29 = *v26;
  *v26 = 0;
  v30 = &v50 + 12;
  if (!v14)
  {
    v30 = &v48 + 12;
  }

  v31 = *v30;
  *v30 = 0;
  v56[0] = __PAIR64__(v31, v29);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v50, v13);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(a4, &v55);
  result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v55, v32);
  if (!v14)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v48, v34);
    result = v47;
    v47 = 0;
    if (result)
    {
      IPC::Decoder::~Decoder(result);
      return bmalloc::api::tzoneFree(v39, v40);
    }
  }

  return result;
}

uint64_t WebKit::WebPlatformStrategies::writeCustomData(uint64_t a1, unsigned int *a2, uint64_t *a3, uint64_t a4)
{
  {
    v7 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v31 = WebKit::WebProcess::operator new(0x370, a2);
    v7 = WebKit::WebProcess::WebProcess(v31);
    WebKit::WebProcess::singleton(void)::process = v7;
  }

  WebKit::AuxiliaryProcess::protectedParentProcessConnection(v7, &v34);
  v8 = v34;
  v32 = WebKit::pageIdentifier(a4);
  v33 = v9;
  IPC::Connection::createSyncMessageEncoder(0x1075, 0, v37);
  v10 = v37[0];
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v37[0], a2[3]);
  v11 = a2[3];
  if (v11)
  {
    v12 = *a2;
    v13 = &v12[3 * v11];
    do
    {
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v10, v12);
      IPC::VectorArgumentCoder<false,WebCore::PasteboardCustomData::Entry,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::PasteboardCustomData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(v10, (v12 + 1));
      v12 += 3;
    }

    while (v12 != v13);
  }

  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v10, a3);
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(v10, &v32);
  v14 = IPC::Connection::sendSyncMessage(v8, v37[1], v37, 0, &v35, INFINITY);
  if (v36)
  {
    if (v36 != 1)
    {
      mpark::throw_bad_variant_access(v14);
    }

    v16 = v35;
    v17 = 1;
    goto LABEL_18;
  }

  v16 = v35;
  v35 = 0;
  if (*(v16 + 50) == 3194)
  {
    v8 = 11;
LABEL_14:
    IPC::Decoder::~Decoder(v16);
    bmalloc::api::tzoneFree(v19, v20);
    v17 = 1;
    v16 = v8;
    goto LABEL_15;
  }

  v18 = IPC::Decoder::decode<std::tuple<long long>>(v16);
  if (!v15)
  {
    v8 = 14;
    goto LABEL_14;
  }

  v8 = v18;
  v17 = 0;
LABEL_15:
  if (!v36)
  {
    v21 = v35;
    v35 = 0;
    if (v21)
    {
      IPC::Decoder::~Decoder(v21);
      bmalloc::api::tzoneFree(v27, v28);
    }
  }

LABEL_18:
  v22 = v37[0];
  v37[0] = 0;
  if (v22)
  {
    IPC::Encoder::~Encoder(v22, v15);
    bmalloc::api::tzoneFree(v25, v26);
  }

  v23 = v34;
  v34 = 0;
  if (v23)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v23);
  }

  if (v17)
  {
    return 0;
  }

  if (v16)
  {
    IPC::Decoder::~Decoder(v16);
    bmalloc::api::tzoneFree(v29, v30);
  }

  return v8;
}

uint64_t WebKit::WebPlatformStrategies::containsStringSafeForDOMToReadForType(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4)
{
  v6 = a2;
  {
    v7 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v28 = WebKit::WebProcess::operator new(0x370, a2);
    v7 = WebKit::WebProcess::WebProcess(v28);
    WebKit::WebProcess::singleton(void)::process = v7;
  }

  WebKit::AuxiliaryProcess::protectedParentProcessConnection(v7, &v31);
  v8 = v31;
  v29 = WebKit::pageIdentifier(a4);
  v30 = v9;
  IPC::Connection::createSyncMessageEncoder(0x105E, 0, v34);
  v10 = v34[0];
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v34[0], v6);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v10, a3);
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(v10, &v29);
  v11 = IPC::Connection::sendSyncMessage(v8, v34[1], v34, 0, &v32, INFINITY);
  if (v33)
  {
    if (v33 != 1)
    {
      mpark::throw_bad_variant_access(v11);
    }

    v13 = v32;
    v14 = 1;
    goto LABEL_14;
  }

  v13 = v32;
  v32 = 0;
  if (*(v13 + 50) == 3194)
  {
    v6 = 11;
  }

  else
  {
    v17 = IPC::Decoder::decode<std::tuple<BOOL>>(v13);
    if (v17 >= 0x100u)
    {
      LOBYTE(v6) = v17;
      v14 = 0;
      goto LABEL_11;
    }

    v6 = 14;
  }

  IPC::Decoder::~Decoder(v13);
  bmalloc::api::tzoneFree(v15, v16);
  v14 = 1;
  v13 = v6;
LABEL_11:
  if (!v33)
  {
    v18 = v32;
    v32 = 0;
    if (v18)
    {
      IPC::Decoder::~Decoder(v18);
      bmalloc::api::tzoneFree(v24, v25);
    }
  }

LABEL_14:
  v19 = v34[0];
  v34[0] = 0;
  if (v19)
  {
    IPC::Encoder::~Encoder(v19, v12);
    bmalloc::api::tzoneFree(v22, v23);
  }

  v20 = v31;
  v31 = 0;
  if (v20)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v20);
  }

  if (!v14 && v13)
  {
    IPC::Decoder::~Decoder(v13);
    bmalloc::api::tzoneFree(v26, v27);
  }

  return (v14 == 0) & v6;
}

uint64_t WebKit::WebPlatformStrategies::getPasteboardItemsCount(int a1, const WTF::StringImpl **a2, const WTF::StringImpl *a3)
{
  {
    WebKit::WebPasteboardOverrides::sharedPasteboardOverrides(void)::sharedOverrides = 0;
  }

  WebKit::WebPasteboardOverrides::overriddenTypes(&v35, a2, a3);
  v5 = HIDWORD(v36);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v35, v6);
  if (v5)
  {
    return 1;
  }

  {
    v9 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v29 = WebKit::WebProcess::operator new(0x370, v7);
    v9 = WebKit::WebProcess::WebProcess(v29);
    WebKit::WebProcess::singleton(void)::process = v9;
  }

  WebKit::AuxiliaryProcess::protectedParentProcessConnection(v9, &v32);
  v10 = v32;
  v30 = WebKit::pageIdentifier(a3);
  v31 = v11;
  IPC::Connection::createSyncMessageEncoder(0x1064, 0, &v35);
  v8 = v35;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v35, a2);
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(v8, &v30);
  v12 = IPC::Connection::sendSyncMessage(v10, v36, &v35, 0, &v33, INFINITY);
  if (!v34)
  {
    v14 = v33;
    v33 = 0;
    if (*(v14 + 50) == 3194)
    {
      v8 = 11;
    }

    else
    {
      v16 = IPC::Decoder::decode<std::tuple<unsigned long long>>(v14);
      if (v13)
      {
        v8 = v16;
        v15 = 0;
LABEL_16:
        if (!v34)
        {
          v19 = v33;
          v33 = 0;
          if (v19)
          {
            IPC::Decoder::~Decoder(v19);
            bmalloc::api::tzoneFree(v25, v26);
          }
        }

        goto LABEL_19;
      }

      v8 = 14;
    }

    IPC::Decoder::~Decoder(v14);
    bmalloc::api::tzoneFree(v17, v18);
    v15 = 1;
    v14 = v8;
    goto LABEL_16;
  }

  if (v34 != 1)
  {
    mpark::throw_bad_variant_access(v12);
  }

  v14 = v33;
  v15 = 1;
LABEL_19:
  v20 = v35;
  v35 = 0;
  if (v20)
  {
    IPC::Encoder::~Encoder(v20, v13);
    bmalloc::api::tzoneFree(v23, v24);
  }

  v21 = v32;
  v32 = 0;
  if (v21)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v21);
  }

  if (v15)
  {
    return 0;
  }

  if (v14)
  {
    IPC::Decoder::~Decoder(v14);
    bmalloc::api::tzoneFree(v27, v28);
  }

  return v8;
}

atomic_ullong *WebKit::WebPlatformStrategies::allPasteboardItemInfo@<X0>(const WTF::StringImpl **a1@<X1>, const WTF::StringImpl *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = a1;
  v157 = *MEMORY[0x1E69E9840];
  {
    WebKit::WebPasteboardOverrides::sharedPasteboardOverrides(void)::sharedOverrides = 0;
  }

  WebKit::WebPasteboardOverrides::overriddenInfo(v134, a1, a2);
  if (v144 == 1)
  {
    *&v10 = 0;
    v147 = v134[0];
    v148 = v134[1];
    v11 = v135;
    *v134 = v10;
    v135 = v10;
    v149 = v11;
    v12 = v136;
    v136 = v10;
    v150 = v12;
    v151 = v137;
    v154 = v140;
    v153 = v139;
    v152 = v138;
    v13 = v141;
    v137 = 0;
    v141 = 0;
    v155[0] = v13;
    v14 = v142;
    v142 = 0;
    v155[1] = v14;
    v156 = v143;
    v126 = 1;
    v125 = WTF::fastMalloc(0x78);
    v15 = v125;
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v125, &v147);
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v125 + 16, &v149);
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v125 + 32, &v150);
    v16 = v151;
    if (v151)
    {
      atomic_fetch_add_explicit(v151, 2u, memory_order_relaxed);
    }

    *(v125 + 6) = v16;
    v17 = v152;
    v18 = v153;
    *(v15 + 44) = v154;
    *(v15 + 72) = v18;
    *(v15 + 56) = v17;
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v15 + 96, v155);
    *(v15 + 112) = v156;
    v19 = v126;
    v20 = HIDWORD(v126) + 1;
    v21 = v125;
    v125 = 0;
    v126 = 0;
    *a4 = v21;
    *(a4 + 8) = v19;
    *(a4 + 12) = v20;
    *(a4 + 16) = 1;
    WTF::Vector<WebCore::PasteboardItemInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v125, v22);
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v155, v23);
    v25 = v151;
    v151 = 0;
    if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v25, v24);
    }

    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v150, v24);
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v149, v26);
    result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v147, v27);
    if (v144)
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v141, v29);
      v31 = v137;
      v137 = 0;
      if (v31)
      {
        if (atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v31, v30);
        }
      }

      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v136, v30);
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v135, v32);
      return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v134, v33);
    }

    return result;
  }

  {
    v34 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v115 = WebKit::WebProcess::operator new(0x370, v9);
    v34 = WebKit::WebProcess::WebProcess(v115);
    WebKit::WebProcess::singleton(void)::process = v34;
  }

  WebKit::AuxiliaryProcess::protectedParentProcessConnection(v34, &v124);
  v35 = v124;
  v122 = WebKit::pageIdentifier(a3);
  v123 = v36;
  IPC::Connection::createSyncMessageEncoder(0x105D, 0, v131);
  v37 = v131[0];
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v131[0], v7);
  IPC::ArgumentCoder<API::Int64,void>::encode(v37, a2);
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(v37, &v122);
  v38 = IPC::Connection::sendSyncMessage(v35, v131[1], v131, 0, &v129, INFINITY);
  if (v130)
  {
    if (v130 != 1)
    {
      mpark::throw_bad_variant_access(v38);
    }

    LOBYTE(v134[0]) = v129;
    v40 = 1;
    LOBYTE(v136) = 1;
    goto LABEL_81;
  }

  v41 = v129;
  v129 = 0;
  if (*(v41 + 25) == 3194)
  {
    LOBYTE(v134[0]) = 11;
    LOBYTE(v136) = 1;
LABEL_21:
    IPC::Decoder::~Decoder(v41);
    bmalloc::api::tzoneFree(v42, v43);
    v40 = 1;
    goto LABEL_78;
  }

  LOBYTE(v125) = 0;
  v128 = 0;
  v44 = *(v41 + 1);
  v45 = *(v41 + 2);
  v39 = *v41;
  if (v44 <= v45 - *v41)
  {
    *v41 = 0;
    *(v41 + 1) = 0;
    v120 = *(v41 + 3);
    if (v120)
    {
      if (v44)
      {
        (*(*v120 + 16))(v120);
        v44 = *(v41 + 1);
      }
    }

    else
    {
      v44 = 0;
    }
  }

  else
  {
    *(v41 + 2) = v45 + 1;
    if (v45)
    {
      if (*v45 >= 2u)
      {
        goto LABEL_131;
      }

      if (!*v45)
      {
        LOBYTE(v37) = 0;
        LOBYTE(v134[0]) = 0;
        LOBYTE(v135) = 0;
        BYTE8(v135) = 1;
        goto LABEL_47;
      }

      v46 = v45 & 0xFFFFFFFFFFFFFFF8;
      v47 = ((v45 & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v44 < v47 - v39 || v44 - (v47 - v39) <= 7)
      {
        v116 = 0;
        v117 = 0;
        *v41 = 0;
        *(v41 + 1) = 0;
        v118 = *(v41 + 3);
        if (v118)
        {
          (*(*v118 + 16))(v118);
          v117 = *v41;
          v116 = *(v41 + 1);
        }
      }

      else
      {
        *(v41 + 2) = v46 + 16;
        if (v47)
        {
          v37 = *v47;
          v145 = 0;
          v146 = 0;
          if (v37 >= 0x2222)
          {
            LODWORD(v35) = 120;
            v4 = -2;
            do
            {
              IPC::Decoder::decode<WebCore::PasteboardItemInfo>(v134, v41);
              v94 = v144;
              if (v144 == 1)
              {
                v95 = HIDWORD(v146);
                if (HIDWORD(v146) == v146)
                {
                  WTF::Vector<WebCore::PasteboardItemInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::PasteboardItemInfo>(&v145, v134);
                }

                else
                {
                  v96 = v145 + 120 * HIDWORD(v146);
                  *v96 = 0;
                  *(v96 + 1) = 0;
                  v97 = v134[0];
                  v134[0] = 0;
                  *v96 = v97;
                  LODWORD(v97) = v134[1];
                  LODWORD(v134[1]) = 0;
                  *(v96 + 2) = v97;
                  LODWORD(v97) = HIDWORD(v134[1]);
                  HIDWORD(v134[1]) = 0;
                  *(v96 + 3) = v97;
                  *(v96 + 2) = 0;
                  *(v96 + 3) = 0;
                  v98 = v135;
                  *&v135 = 0;
                  *(v96 + 2) = v98;
                  LODWORD(v98) = DWORD2(v135);
                  DWORD2(v135) = 0;
                  *(v96 + 6) = v98;
                  LODWORD(v98) = HIDWORD(v135);
                  HIDWORD(v135) = 0;
                  *(v96 + 7) = v98;
                  *(v96 + 4) = 0;
                  *(v96 + 5) = 0;
                  v99 = v136;
                  *&v136 = 0;
                  *(v96 + 4) = v99;
                  LODWORD(v99) = DWORD2(v136);
                  DWORD2(v136) = 0;
                  *(v96 + 10) = v99;
                  LODWORD(v99) = HIDWORD(v136);
                  HIDWORD(v136) = 0;
                  *(v96 + 11) = v99;
                  v100 = v137;
                  v137 = 0;
                  *(v96 + 6) = v100;
                  v101 = v138;
                  v102 = v139;
                  *(v96 + 44) = v140;
                  *(v96 + 72) = v102;
                  *(v96 + 56) = v101;
                  *(v96 + 12) = 0;
                  *(v96 + 13) = 0;
                  v103 = v141;
                  v141 = 0;
                  *(v96 + 12) = v103;
                  LODWORD(v103) = v142;
                  LODWORD(v142) = 0;
                  *(v96 + 26) = v103;
                  LODWORD(v103) = HIDWORD(v142);
                  HIDWORD(v142) = 0;
                  *(v96 + 27) = v103;
                  v96[112] = v143;
                  HIDWORD(v146) = v95 + 1;
                }
              }

              if (v144 == 1)
              {
                WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v141, v39);
                v105 = v137;
                v137 = 0;
                if (v105 && atomic_fetch_add_explicit(v105, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v105, v104);
                }

                WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v136, v104);
                WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v135, v106);
                WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v134, v107);
              }

              if ((v94 & 1) == 0)
              {
                goto LABEL_129;
              }

              v37 = (v37 - 1);
            }

            while (v37);
            LODWORD(v35) = v146;
            v4 = HIDWORD(v146);
            v63 = v145;
            if (v146 > HIDWORD(v146))
            {
              v108 = v145;
              if (HIDWORD(v146))
              {
                if (HIDWORD(v146) >= 0x2222223)
                {
                  goto LABEL_159;
                }

                v108 = WTF::fastMalloc((120 * HIDWORD(v146)));
                LODWORD(v35) = 120 * v4 / 0x78;
                if (v108 != v63)
                {
                  WTF::VectorMover<false,WebCore::PasteboardItemInfo>::move(v63, v63 + 120 * v4, v108);
                }
              }

              if (v63)
              {
                if (v108 == v63)
                {
                  LODWORD(v35) = 0;
                  v108 = 0;
                  v145 = 0;
                }

                WTF::fastFree(v63, v39);
              }

              v63 = v108;
            }
          }

          else
          {
            if (v37)
            {
              v48 = WTF::fastMalloc((120 * v37));
              LODWORD(v146) = 120 * v37 / 0x78u;
              v145 = v48;
              LODWORD(v35) = 120;
              v4 = -2;
              while (1)
              {
                IPC::Decoder::decode<WebCore::PasteboardItemInfo>(v134, v41);
                v49 = v144;
                if (v144 == 1)
                {
                  v50 = HIDWORD(v146);
                  if (HIDWORD(v146) == v146)
                  {
                    WTF::Vector<WebCore::PasteboardItemInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::PasteboardItemInfo>(&v145, v134);
                  }

                  else
                  {
                    v51 = v145 + 120 * HIDWORD(v146);
                    *v51 = 0;
                    *(v51 + 1) = 0;
                    v52 = v134[0];
                    v134[0] = 0;
                    *v51 = v52;
                    LODWORD(v52) = v134[1];
                    LODWORD(v134[1]) = 0;
                    *(v51 + 2) = v52;
                    LODWORD(v52) = HIDWORD(v134[1]);
                    HIDWORD(v134[1]) = 0;
                    *(v51 + 3) = v52;
                    *(v51 + 2) = 0;
                    *(v51 + 3) = 0;
                    v53 = v135;
                    *&v135 = 0;
                    *(v51 + 2) = v53;
                    LODWORD(v53) = DWORD2(v135);
                    DWORD2(v135) = 0;
                    *(v51 + 6) = v53;
                    LODWORD(v53) = HIDWORD(v135);
                    HIDWORD(v135) = 0;
                    *(v51 + 7) = v53;
                    *(v51 + 4) = 0;
                    *(v51 + 5) = 0;
                    v54 = v136;
                    *&v136 = 0;
                    *(v51 + 4) = v54;
                    LODWORD(v54) = DWORD2(v136);
                    DWORD2(v136) = 0;
                    *(v51 + 10) = v54;
                    LODWORD(v54) = HIDWORD(v136);
                    HIDWORD(v136) = 0;
                    *(v51 + 11) = v54;
                    v55 = v137;
                    v137 = 0;
                    *(v51 + 6) = v55;
                    v56 = v138;
                    v57 = v139;
                    *(v51 + 44) = v140;
                    *(v51 + 72) = v57;
                    *(v51 + 56) = v56;
                    *(v51 + 12) = 0;
                    *(v51 + 13) = 0;
                    v58 = v141;
                    v141 = 0;
                    *(v51 + 12) = v58;
                    LODWORD(v58) = v142;
                    LODWORD(v142) = 0;
                    *(v51 + 26) = v58;
                    LODWORD(v58) = HIDWORD(v142);
                    HIDWORD(v142) = 0;
                    *(v51 + 27) = v58;
                    v51[112] = v143;
                    HIDWORD(v146) = v50 + 1;
                  }
                }

                if (v144 == 1)
                {
                  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v141, v39);
                  v60 = v137;
                  v137 = 0;
                  if (v60 && atomic_fetch_add_explicit(v60, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v60, v59);
                  }

                  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v136, v59);
                  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v135, v61);
                  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v134, v62);
                }

                if ((v49 & 1) == 0)
                {
                  break;
                }

                v37 = (v37 - 1);
                if (!v37)
                {
                  v63 = v145;
                  LODWORD(v35) = v146;
                  v4 = HIDWORD(v146);
                  goto LABEL_46;
                }
              }

LABEL_129:
              WTF::Vector<WebCore::PasteboardItemInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v145, v39);
              goto LABEL_130;
            }

            v4 = 0;
            LODWORD(v35) = 0;
            v63 = 0;
          }

LABEL_46:
          v145 = 0;
          v146 = 0;
          LOBYTE(v37) = 1;
          v133 = 1;
          WTF::Vector<WebCore::PasteboardItemInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v145, v39);
          v132[0] = 0;
          v132[1] = 0;
          LOBYTE(v149) = 1;
          BYTE8(v149) = 1;
          WTF::Vector<WebCore::PasteboardItemInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v132, v64);
          v147 = 0;
          v148 = 0;
          v134[0] = v63;
          v134[1] = __PAIR64__(v4, v35);
          LOBYTE(v135) = 1;
          BYTE8(v135) = 1;
          WTF::Vector<WebCore::PasteboardItemInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v147, v65);
LABEL_47:
          LODWORD(v7) = 1;
          v66 = 1;
          goto LABEL_48;
        }

        v116 = v44;
        v117 = v39;
      }

      *v41 = 0;
      *(v41 + 1) = 0;
      v119 = *(v41 + 3);
      if (v119 && v116)
      {
        (*(*v119 + 16))(v119, v117, v116);
      }

LABEL_130:
      v39 = *v41;
      v44 = *(v41 + 1);
      goto LABEL_131;
    }
  }

  *v41 = 0;
  *(v41 + 1) = 0;
  v121 = *(v41 + 3);
  if (v121)
  {
    if (v44)
    {
      (*(*v121 + 16))(v121);
      goto LABEL_130;
    }
  }

  else
  {
    v44 = 0;
  }

  v39 = 0;
LABEL_131:
  *v41 = 0;
  *(v41 + 1) = 0;
  v109 = *(v41 + 3);
  if (v109 && v44)
  {
    (*(*v109 + 16))(v109, v39);
  }

  v110 = *v41;
  v111 = *(v41 + 1);
  *v41 = 0;
  *(v41 + 1) = 0;
  v112 = *(v41 + 3);
  if (v112 && v111)
  {
    (*(*v112 + 16))(v112, v110);
  }

  LOBYTE(v134[0]) = 0;
  BYTE8(v135) = 0;
  v39 = *v41;
  v113 = *(v41 + 1);
  *v41 = 0;
  *(v41 + 1) = 0;
  v114 = *(v41 + 3);
  if (v114 && v113)
  {
    (*(*v114 + 16))(v114, v39);
  }

  LODWORD(v7) = 0;
  v66 = 0;
LABEL_48:
  if (v128 == v66)
  {
    if (v128)
    {
      if (v127 == v37)
      {
        if (v127)
        {
          if (HIDWORD(v126))
          {
            WTF::VectorTypeOperations<WebCore::PasteboardItemInfo>::destruct(v125, v125 + 120 * HIDWORD(v126));
          }

          v67 = v125;
          if (v125)
          {
            v125 = 0;
            LODWORD(v126) = 0;
            WTF::fastFree(v67, v39);
          }

          v68 = v134[0];
          v134[0] = 0;
          v134[1] = 0;
          v125 = v68;
          v126 = __PAIR64__(v4, v35);
        }
      }

      else if (v127)
      {
        WTF::Vector<WebCore::PasteboardItemInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v125, v39);
        v127 = 0;
      }

      else
      {
        v93 = v134[0];
        v134[0] = 0;
        v134[1] = 0;
        v125 = v93;
        v126 = __PAIR64__(v4, v35);
        v127 = 1;
      }
    }
  }

  else if (v128)
  {
    if (v127 == 1)
    {
      WTF::Vector<WebCore::PasteboardItemInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v125, v39);
    }

    v128 = 0;
  }

  else
  {
    LOBYTE(v125) = 0;
    v127 = 0;
    if (v37)
    {
      v69 = v134[0];
      v134[0] = 0;
      v134[1] = 0;
      v125 = v69;
      v126 = __PAIR64__(v4, v35);
      v127 = 1;
    }

    v128 = 1;
  }

  if (v7 && (v37 & 1) != 0)
  {
    WTF::Vector<WebCore::PasteboardItemInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v134, v39);
  }

  if (v128 == 1)
  {
    LOBYTE(v37) = v127;
    if (v127)
    {
      v70 = v125;
      v125 = 0;
      LODWORD(v35) = v126;
      LODWORD(v7) = HIDWORD(v126);
      v126 = 0;
      BYTE8(v149) = 1;
      v147 = 0;
      v148 = 0;
      v134[0] = v41;
      v134[1] = v70;
      *&v149 = 0;
      *&v135 = __PAIR64__(v7, v35);
      BYTE8(v135) = 1;
      LOBYTE(v136) = 0;
      WTF::Vector<WebCore::PasteboardItemInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v148, v39);
      v71 = v147;
      v147 = 0;
      if (v71)
      {
        IPC::Decoder::~Decoder(v71);
        bmalloc::api::tzoneFree(v72, v73);
      }
    }

    else
    {
      v134[0] = v41;
      LOBYTE(v134[1]) = 0;
      BYTE8(v135) = 0;
      LOBYTE(v136) = 0;
    }

    if ((v128 & 1) != 0 && v127 == 1)
    {
      WTF::Vector<WebCore::PasteboardItemInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v125, v39);
    }

    v40 = 0;
    goto LABEL_78;
  }

  LOBYTE(v134[0]) = 14;
  v40 = 1;
  LOBYTE(v136) = 1;
  if (v41)
  {
    goto LABEL_21;
  }

LABEL_78:
  if (!v130)
  {
    v74 = v129;
    v129 = 0;
    if (v74)
    {
      IPC::Decoder::~Decoder(v74);
      bmalloc::api::tzoneFree(v89, v90);
    }
  }

LABEL_81:
  v75 = v131[0];
  v131[0] = 0;
  if (v75)
  {
    IPC::Encoder::~Encoder(v75, v39);
    bmalloc::api::tzoneFree(v87, v88);
  }

  result = v124;
  v124 = 0;
  if (result)
  {
    result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(result);
  }

  if (v40 || (v37 & 1) == 0)
  {
    *a4 = 0;
    *(a4 + 16) = 0;
    goto LABEL_96;
  }

  v76 = v134[1];
  v134[1] = 0;
  *&v135 = 0;
  v147 = v76;
  v148 = __PAIR64__(v7, v35);
  LOBYTE(v149) = 1;
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *(a4 + 12) = v7;
  if (v7)
  {
    if (v7 < 0x2222223)
    {
      v77 = (120 * v7);
      v78 = WTF::fastMalloc(v77);
      v79 = 0;
      *(a4 + 8) = v77 / 0x78;
      *a4 = v78;
      v80 = v147;
      do
      {
        v81 = v79 + v80;
        v82 = v79 + v78;
        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v79 + v78, v79 + v80);
        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v79 + v78 + 16, v79 + v80 + 16);
        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v79 + v78 + 32, v79 + v80 + 32);
        v83 = *(v79 + v80 + 48);
        if (v83)
        {
          atomic_fetch_add_explicit(v83, 2u, memory_order_relaxed);
        }

        *(v82 + 6) = v83;
        v84 = *(v81 + 56);
        v85 = *(v81 + 72);
        *(v82 + 44) = *(v81 + 44);
        *(v82 + 72) = v85;
        *(v82 + 56) = v84;
        result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector((v82 + 96), (v81 + 96));
        v82[112] = v81[112];
        v79 = (v79 + 120);
      }

      while (v77 != v79);
      v86 = v149;
      *(a4 + 16) = 1;
      if ((v86 & 1) == 0)
      {
        goto LABEL_96;
      }

      goto LABEL_103;
    }

LABEL_159:
    __break(0xC471u);
    JUMPOUT(0x19E3A2994);
  }

  *(a4 + 16) = 1;
LABEL_103:
  result = WTF::Vector<WebCore::PasteboardItemInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v147, v39);
LABEL_96:
  if (!v136)
  {
    if (BYTE8(v135) == 1)
    {
      WTF::Vector<WebCore::PasteboardItemInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v134[1], v39);
    }

    result = v134[0];
    v134[0] = 0;
    if (result)
    {
      IPC::Decoder::~Decoder(result);
      return bmalloc::api::tzoneFree(v91, v92);
    }
  }

  return result;
}

atomic_ullong *WebKit::WebPlatformStrategies::informationForItemAtIndex@<X0>(const WTF::StringImpl **a1@<X2>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  {
    WebKit::WebPasteboardOverrides::sharedPasteboardOverrides(void)::sharedOverrides = 0;
  }

  result = WebKit::WebPasteboardOverrides::overriddenInfo(a5, a1, a1);
  if ((*(a5 + 120) & 1) == 0)
  {
    {
      v12 = WebKit::WebProcess::singleton(void)::process;
    }

    else
    {
      v87 = WebKit::WebProcess::operator new(0x370, v11);
      v12 = WebKit::WebProcess::WebProcess(v87);
      WebKit::WebProcess::singleton(void)::process = v12;
    }

    WebKit::AuxiliaryProcess::protectedParentProcessConnection(v12, &v98);
    v13 = v98;
    v96 = WebKit::pageIdentifier(a4);
    v97 = v14;
    IPC::Connection::createSyncMessageEncoder(0x106A, 0, v129);
    v15 = v129[0];
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v129[0], a2);
    IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v15, a1);
    IPC::ArgumentCoder<API::Int64,void>::encode(v15, a3);
    IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(v15, &v96);
    v16 = IPC::Connection::sendSyncMessage(v13, v129[1], v129, 0, &v127, INFINITY);
    if (v128)
    {
      if (v128 != 1)
      {
        mpark::throw_bad_variant_access(v16);
      }

      LOBYTE(v99) = v127;
      v111 = 1;
LABEL_86:
      v58 = v129[0];
      v129[0] = 0;
      if (v58)
      {
        IPC::Encoder::~Encoder(v58, v17);
        bmalloc::api::tzoneFree(v70, v71);
      }

      result = v98;
      v98 = 0;
      if (result)
      {
        result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(result);
      }

      if (v111 || (LOBYTE(v130) = 0, v143 = 0, (v110 & 1) == 0))
      {
        *a5 = 0;
        *(a5 + 120) = 0;
      }

      else
      {
        result = std::__optional_storage_base<WebCore::PasteboardItemInfo,false>::__construct[abi:sn200100]<WebCore::PasteboardItemInfo>(&v130, v100);
        v59 = v143;
        *a5 = 0;
        *(a5 + 120) = 0;
        if (v59)
        {
          WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(a5, &v130);
          WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(a5 + 16, &v132);
          WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(a5 + 32, &v134);
          v60 = v136;
          if (v136)
          {
            atomic_fetch_add_explicit(v136, 2u, memory_order_relaxed);
          }

          *(a5 + 48) = v60;
          v61 = v138;
          *(a5 + 56) = v137;
          *(a5 + 72) = v61;
          *(a5 + 88) = v139;
          result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(a5 + 96, &v140);
          *(a5 + 112) = v142;
          *(a5 + 120) = 1;
          if (v143)
          {
            WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v140, v17);
            v63 = v136;
            v136 = 0;
            if (v63 && atomic_fetch_add_explicit(v63, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v63, v62);
            }

            WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v134, v62);
            WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v132, v64);
            result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v130, v65);
          }
        }
      }

      if (!v111)
      {
        if (v110 == 1)
        {
          WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v108, v17);
          v67 = v106;
          v106 = 0;
          if (v67 && atomic_fetch_add_explicit(v67, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v67, v66);
          }

          WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v104, v66);
          WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v102, v68);
          WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v100, v69);
        }

        result = v99;
        v99 = 0;
        if (result)
        {
          IPC::Decoder::~Decoder(result);
          return bmalloc::api::tzoneFree(v79, v80);
        }
      }

      return result;
    }

    v18 = v127;
    v127 = 0;
    if (*(v18 + 25) == 3194)
    {
      v19 = 11;
LABEL_82:
      LOBYTE(v99) = v19;
      v111 = 1;
      IPC::Decoder::~Decoder(v18);
      bmalloc::api::tzoneFree(v55, v56);
LABEL_83:
      if (!v128)
      {
        v57 = v127;
        v127 = 0;
        if (v57)
        {
          IPC::Decoder::~Decoder(v57);
          bmalloc::api::tzoneFree(v77, v78);
        }
      }

      goto LABEL_86;
    }

    LOBYTE(v112) = 0;
    v126 = 0;
    v20 = *(v18 + 1);
    v21 = *(v18 + 2);
    v17 = *v18;
    if (v20 <= &v21[-*v18])
    {
      *v18 = 0;
      *(v18 + 1) = 0;
      v88 = *(v18 + 3);
      if (v88)
      {
        if (v20)
        {
          (*(*v88 + 16))(v88);
          v20 = *(v18 + 1);
        }
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      *(v18 + 2) = v21 + 1;
      if (v21)
      {
        v22 = *v21;
        if (v22 < 2)
        {
          if (!v22)
          {
            LOBYTE(v99) = 0;
            v109 = 0;
            v110 = 1;
            goto LABEL_23;
          }

          IPC::Decoder::decode<WebCore::PasteboardItemInfo>(&v130, v18);
          if (v143 == 1)
          {
            std::optional<WebCore::PasteboardItemInfo>::optional[abi:sn200100]<WebCore::PasteboardItemInfo,0>(&v99, &v130);
            v110 = 1;
            if ((v143 & 1) == 0)
            {
              goto LABEL_23;
            }

            WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v140, v17);
            v24 = v136;
            v136 = 0;
            if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v24, v23);
            }

            WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v134, v23);
            WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v132, v25);
            WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v130, v26);
            if (v110)
            {
              goto LABEL_23;
            }

            goto LABEL_135;
          }

LABEL_134:
          LOBYTE(v99) = 0;
          v110 = 0;
LABEL_135:
          v91 = *v18;
          v92 = *(v18 + 1);
          *v18 = 0;
          *(v18 + 1) = 0;
          v93 = *(v18 + 3);
          if (!v93 || !v92 || ((*(*v93 + 16))(v93, v91), (v110 & 1) == 0))
          {
            v31 = 0;
            LOBYTE(v130) = 0;
            v144 = 0;
            goto LABEL_137;
          }

LABEL_23:
          LOBYTE(v130) = 0;
          v143 = 0;
          if (v109 == 1)
          {
            std::__optional_storage_base<WebCore::PasteboardItemInfo,false>::__construct[abi:sn200100]<WebCore::PasteboardItemInfo>(&v130, &v99);
            v144 = 1;
            if (v110 & 1) != 0 && (v109)
            {
              WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v107, v17);
              v28 = v105;
              v105 = 0;
              if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v28, v27);
              }

              WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v103, v27);
              WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v101, v29);
              WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v99, v30);
              v31 = v144;
              if (v144)
              {
LABEL_33:
                if (v126 == v31)
                {
                  if (v126)
                  {
                    if (v125 == v143)
                    {
                      if (v125)
                      {
                        if (HIDWORD(v113))
                        {
                          WTF::VectorDestructor<true,WTF::String>::destruct(v112, (v112 + 8 * HIDWORD(v113)));
                        }

                        v32 = v112;
                        if (v112)
                        {
                          v112 = 0;
                          LODWORD(v113) = 0;
                          WTF::fastFree(v32, v17);
                        }

                        v112 = v130;
                        v33 = v131;
                        v130 = 0;
                        v131 = 0;
                        v113 = v33;
                        if (HIDWORD(v115))
                        {
                          WTF::VectorDestructor<true,WTF::String>::destruct(v114, (v114 + 8 * HIDWORD(v115)));
                        }

                        v34 = v114;
                        if (v114)
                        {
                          v114 = 0;
                          LODWORD(v115) = 0;
                          WTF::fastFree(v34, v17);
                        }

                        v114 = v132;
                        v35 = v133;
                        v132 = 0;
                        v133 = 0;
                        v115 = v35;
                        if (HIDWORD(v117))
                        {
                          WTF::VectorDestructor<true,WTF::String>::destruct(v116, (v116 + 8 * HIDWORD(v117)));
                        }

                        v36 = v116;
                        if (v116)
                        {
                          v116 = 0;
                          LODWORD(v117) = 0;
                          WTF::fastFree(v36, v17);
                        }

                        v116 = v134;
                        v37 = v135;
                        v134 = 0;
                        v135 = 0;
                        v117 = v37;
                        v38 = v136;
                        v136 = 0;
                        v39 = v118;
                        v118 = v38;
                        if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
                        {
                          WTF::StringImpl::destroy(v39, v17);
                        }

                        v119 = v137;
                        v120 = v138;
                        v121 = v139;
                        if (HIDWORD(v123))
                        {
                          WTF::VectorDestructor<true,WTF::String>::destruct(v122, (v122 + 8 * HIDWORD(v123)));
                        }

                        v40 = v122;
                        if (v122)
                        {
                          v122 = 0;
                          LODWORD(v123) = 0;
                          WTF::fastFree(v40, v17);
                        }

                        v122 = v140;
                        v41 = v141;
                        v140 = 0;
                        v141 = 0;
                        v123 = v41;
                        v124 = v142;
                      }
                    }

                    else if (v125)
                    {
                      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v122, v17);
                      v82 = v118;
                      v118 = 0;
                      if (v82 && atomic_fetch_add_explicit(v82, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v82, v81);
                      }

                      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v116, v81);
                      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v114, v83);
                      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v112, v84);
                      v125 = 0;
                    }

                    else
                    {
                      std::__optional_storage_base<WebCore::PasteboardItemInfo,false>::__construct[abi:sn200100]<WebCore::PasteboardItemInfo>(&v112, &v130);
                    }
                  }
                }

                else if (v126)
                {
                  if (v125 == 1)
                  {
                    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v122, v17);
                    v43 = v118;
                    v118 = 0;
                    if (v43 && atomic_fetch_add_explicit(v43, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v43, v42);
                    }

                    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v116, v42);
                    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v114, v44);
                    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v112, v45);
                  }

                  v126 = 0;
                }

                else
                {
                  LOBYTE(v112) = 0;
                  v125 = 0;
                  if (v143 == 1)
                  {
                    std::__optional_storage_base<WebCore::PasteboardItemInfo,false>::__construct[abi:sn200100]<WebCore::PasteboardItemInfo>(&v112, &v130);
                  }

                  v126 = 1;
                }

                if (v144 == 1 && v143 == 1)
                {
                  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v140, v17);
                  v47 = v136;
                  v136 = 0;
                  if (v47 && atomic_fetch_add_explicit(v47, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v47, v46);
                  }

                  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v134, v46);
                  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v132, v48);
                  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v130, v49);
                }

                if (v126 != 1)
                {
                  v19 = 14;
                  goto LABEL_82;
                }

                v130 = v18;
                LOBYTE(v131) = 0;
                v144 = 0;
                if (v125)
                {
                  std::__optional_storage_base<WebCore::PasteboardItemInfo,false>::__construct[abi:sn200100]<WebCore::PasteboardItemInfo>(&v131, &v112);
                  v50 = v130;
                  v130 = 0;
                  v99 = v50;
                  v100[0] = 0;
                  v110 = 0;
                  if (v144)
                  {
                    std::__optional_storage_base<WebCore::PasteboardItemInfo,false>::__construct[abi:sn200100]<WebCore::PasteboardItemInfo>(v100, &v131);
                    v111 = 0;
                    if (v144)
                    {
                      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v141, v17);
                      v52 = v137;
                      *&v137 = 0;
                      if (v52 && atomic_fetch_add_explicit(v52, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v52, v51);
                      }

                      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v135, v51);
                      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v133, v53);
                      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v131, v54);
                    }

                    goto LABEL_112;
                  }
                }

                else
                {
                  v130 = 0;
                  v99 = v18;
                  v100[0] = 0;
                  v110 = 0;
                }

                v111 = 0;
LABEL_112:
                v72 = v130;
                v130 = 0;
                if (v72)
                {
                  IPC::Decoder::~Decoder(v72);
                  bmalloc::api::tzoneFree(v85, v86);
                }

                if ((v126 & 1) != 0 && v125 == 1)
                {
                  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v122, v17);
                  v74 = v118;
                  v118 = 0;
                  if (v74 && atomic_fetch_add_explicit(v74, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v74, v73);
                  }

                  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v116, v73);
                  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v114, v75);
                  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v112, v76);
                }

                goto LABEL_83;
              }

LABEL_137:
              v17 = *v18;
              v94 = *(v18 + 1);
              *v18 = 0;
              *(v18 + 1) = 0;
              v95 = *(v18 + 3);
              if (v95 && v94)
              {
                (*(*v95 + 16))(v95, v17);
                v31 = v144;
              }

              goto LABEL_33;
            }
          }

          else
          {
            v144 = 1;
          }

          v31 = 1;
          goto LABEL_33;
        }

        goto LABEL_133;
      }
    }

    *v18 = 0;
    *(v18 + 1) = 0;
    v89 = *(v18 + 3);
    if (v89)
    {
      if (v20)
      {
        (*(*v89 + 16))(v89);
        v17 = *v18;
        v20 = *(v18 + 1);
        goto LABEL_133;
      }
    }

    else
    {
      v20 = 0;
    }

    v17 = 0;
LABEL_133:
    *v18 = 0;
    *(v18 + 1) = 0;
    v90 = *(v18 + 3);
    if (v90 && v20)
    {
      (*(*v90 + 16))(v90, v17);
    }

    goto LABEL_134;
  }

  return result;
}

WTF *WebKit::WebPlatformStrategies::readBufferFromPasteboard@<X0>(uint64_t a1@<X1>, char a2@<W2>, const WTF::StringImpl **a3@<X3>, const WTF::StringImpl **a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v8 = a3;
  v39 = 0;
  v40 = 0;
  {
    WebKit::WebPasteboardOverrides::sharedPasteboardOverrides(void)::sharedOverrides = 0;
  }

  if (WebKit::WebPasteboardOverrides::getDataForOverride(a4, a3, &v39))
  {
    WebCore::SharedBuffer::create<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a6);
    goto LABEL_32;
  }

  {
    v14 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v33 = WebKit::WebProcess::operator new(0x370, v12);
    v14 = WebKit::WebProcess::WebProcess(v33);
    WebKit::WebProcess::singleton(void)::process = v14;
  }

  WebKit::AuxiliaryProcess::protectedParentProcessConnection(v14, &v38);
  v15 = v38;
  LOBYTE(v36) = 0;
  v37 = 0;
  if (a2)
  {
    v36 = a1;
    v37 = 1;
  }

  v34 = WebKit::pageIdentifier(a5);
  v35 = v16;
  IPC::Connection::createSyncMessageEncoder(0x106B, 0, v45);
  v17 = v45[0];
  IPC::ArgumentCoder<std::optional<unsigned long long>,void>::encode<IPC::Encoder,std::optional<unsigned long long> const&>(v45[0], &v36);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v17, v8);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v17, a4);
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(v17, &v34);
  v18 = IPC::Connection::sendSyncMessage(v15, v45[1], v45, 0, &v43, INFINITY);
  if (!v44)
  {
    v19 = v43;
    v43 = 0;
    if (*(v19 + 50) == 3194)
    {
      v8 = 11;
    }

    else
    {
      LOBYTE(v41) = 0;
      v42 = 0;
      IPC::Decoder::operator>><std::tuple<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>>(v19, &v41);
      if (v42 == 1)
      {
        v20 = 0;
        v8 = v41;
LABEL_18:
        if (!v44)
        {
          v23 = v43;
          v43 = 0;
          if (v23)
          {
            IPC::Decoder::~Decoder(v23);
            bmalloc::api::tzoneFree(v31, v32);
          }
        }

        goto LABEL_21;
      }

      v8 = 14;
    }

    IPC::Decoder::~Decoder(v19);
    bmalloc::api::tzoneFree(v21, v22);
    v20 = 1;
    v19 = v8;
    goto LABEL_18;
  }

  if (v44 != 1)
  {
    mpark::throw_bad_variant_access(v18);
  }

  v19 = v43;
  v20 = 1;
LABEL_21:
  v24 = v45[0];
  v45[0] = 0;
  if (v24)
  {
    IPC::Encoder::~Encoder(v24, v13);
    bmalloc::api::tzoneFree(v29, v30);
  }

  v25 = v38;
  v38 = 0;
  if (v25)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v25);
  }

  if (v20)
  {
    *a6 = 0;
  }

  else
  {
    if (v8)
    {
      atomic_fetch_add((v8 + 8), 1u);
      *a6 = v8;
      if (atomic_fetch_add((v8 + 8), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, (v8 + 8));
        (*(*v8 + 8))(v8);
      }
    }

    else
    {
      *a6 = 0;
    }

    if (v19)
    {
      IPC::Decoder::~Decoder(v19);
      bmalloc::api::tzoneFree(v26, v27);
    }
  }

LABEL_32:
  result = v39;
  if (v39)
  {
    v39 = 0;
    LODWORD(v40) = 0;
    return WTF::fastFree(result, v13);
  }

  return result;
}

WTF::StringImpl *WebKit::WebPlatformStrategies::readURLFromPasteboard@<X0>(void *a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v8 = a1;
  v42 = 0;
  {
    v10 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v35 = WebKit::WebProcess::operator new(0x370, a1);
    v10 = WebKit::WebProcess::WebProcess(v35);
    WebKit::WebProcess::singleton(void)::process = v10;
  }

  WebKit::AuxiliaryProcess::protectedParentProcessConnection(v10, &v41);
  v11 = v41;
  v39 = WebKit::pageIdentifier(a4);
  v40 = v12;
  IPC::Connection::createSyncMessageEncoder(0x106D, 0, &v45);
  v13 = v45;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v45, v8);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v13, a2);
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(v13, &v39);
  v14 = IPC::Connection::sendSyncMessage(v11, v46, &v45, 0, &v43, INFINITY);
  if (v44)
  {
    if (v44 != 1)
    {
      mpark::throw_bad_variant_access(v14);
    }

    v16 = v43;
    v17 = 1;
    goto LABEL_15;
  }

  v16 = v43;
  v43 = 0;
  if (*(v16 + 50) == 3194)
  {
    v8 = 11;
LABEL_11:
    IPC::Decoder::~Decoder(v16);
    bmalloc::api::tzoneFree(v18, v19);
    v17 = 1;
    v16 = v8;
    goto LABEL_12;
  }

  LOBYTE(v36) = 0;
  v38 = 0;
  IPC::Decoder::operator>><std::tuple<WTF::String,WTF::String>>(v16, &v36);
  if (v38 != 1)
  {
    v8 = 14;
    goto LABEL_11;
  }

  v17 = 0;
  v8 = v36;
  v13 = v37;
LABEL_12:
  if (!v44)
  {
    v20 = v43;
    v43 = 0;
    if (v20)
    {
      IPC::Decoder::~Decoder(v20);
      bmalloc::api::tzoneFree(v30, v31);
    }
  }

LABEL_15:
  v21 = v45;
  v45 = 0;
  if (v21)
  {
    IPC::Encoder::~Encoder(v21, v15);
    bmalloc::api::tzoneFree(v28, v29);
  }

  v22 = v41;
  v41 = 0;
  if (v22)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v22);
  }

  if (!v17)
  {
    v36 = v8;
    v37 = v13;
    v45 = &v42;
    v46 = a3;
    std::__memberwise_forward_assign[abi:sn200100]<std::tuple<WTF::String &,WTF::String &>,std::tuple<WTF::String,WTF::String>,WTF::String,WTF::String,0ul,1ul>(&v45, &v36);
    v24 = v37;
    if (v37 && atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v24, v23);
    }

    v25 = v36;
    if (v36 && atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v25, v23);
    }

    v8 = 0;
    v13 = 0;
  }

  v36 = 0;
  WTF::URL::invalidate(&v36);
  MEMORY[0x19EB01E00](a5, &v36, &v42, 0);
  v27 = v36;
  v36 = 0;
  if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v27, v26);
    if (v17)
    {
      goto LABEL_40;
    }
  }

  else if (v17)
  {
    goto LABEL_40;
  }

  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v26);
    if (v8)
    {
LABEL_33:
      if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v26);
      }
    }
  }

  else if (v8)
  {
    goto LABEL_33;
  }

  if (v16)
  {
    IPC::Decoder::~Decoder(v16);
    bmalloc::api::tzoneFree(v33, v34);
  }

LABEL_40:
  result = v42;
  v42 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v26);
    }
  }

  return result;
}

atomic_ullong *WebKit::WebPlatformStrategies::readStringFromPasteboard@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  {
    v10 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v29 = WebKit::WebProcess::operator new(0x370, a1);
    v10 = WebKit::WebProcess::WebProcess(v29);
    WebKit::WebProcess::singleton(void)::process = v10;
  }

  WebKit::AuxiliaryProcess::protectedParentProcessConnection(v10, &v32);
  v11 = v32;
  v30 = WebKit::pageIdentifier(a4);
  v31 = v12;
  IPC::Connection::createSyncMessageEncoder(0x106C, 0, v37);
  v13 = v37[0];
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v37[0], a1);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v13, a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v13, a3);
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(v13, &v30);
  v14 = IPC::Connection::sendSyncMessage(v11, v37[1], v37, 0, &v35, INFINITY);
  if (v36)
  {
    if (v36 != 1)
    {
      mpark::throw_bad_variant_access(v14);
    }

    v16 = v35;
    v17 = 1;
    goto LABEL_15;
  }

  v16 = v35;
  v35 = 0;
  if (*(v16 + 50) == 3194)
  {
    a2 = 11;
LABEL_11:
    IPC::Decoder::~Decoder(v16);
    bmalloc::api::tzoneFree(v18, v19);
    v17 = 1;
    v16 = a2;
    goto LABEL_12;
  }

  LOBYTE(v33) = 0;
  v34 = 0;
  IPC::Decoder::operator>><std::tuple<WTF::String>>(v16, &v33);
  if (v34 != 1)
  {
    a2 = 14;
    goto LABEL_11;
  }

  v17 = 0;
  a2 = v33;
LABEL_12:
  if (!v36)
  {
    v20 = v35;
    v35 = 0;
    if (v20)
    {
      IPC::Decoder::~Decoder(v20);
      bmalloc::api::tzoneFree(v27, v28);
    }
  }

LABEL_15:
  v21 = v37[0];
  v37[0] = 0;
  if (v21)
  {
    IPC::Encoder::~Encoder(v21, v15);
    bmalloc::api::tzoneFree(v23, v24);
  }

  result = v32;
  v32 = 0;
  if (result)
  {
    result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(result);
  }

  if (v17 || !a2)
  {
    *a5 = 0;
    if (v17)
    {
      return result;
    }
  }

  else
  {
    atomic_fetch_add_explicit(a2, 2u, memory_order_relaxed);
    *a5 = a2;
    if (atomic_fetch_add_explicit(a2, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(a2, v15);
    }
  }

  if (v16)
  {
    IPC::Decoder::~Decoder(v16);
    return bmalloc::api::tzoneFree(v25, v26);
  }

  return result;
}

uint64_t WebKit::WebPlatformStrategies::windowSubscribeToPushService(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a4;
  *a4 = 0;
  {
    v7 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v19 = WebKit::WebProcess::operator new(0x370, a2);
    v7 = WebKit::WebProcess::WebProcess(v19);
    WebKit::WebProcess::singleton(void)::process = v7;
  }

  v8 = *(WebKit::WebProcess::ensureNetworkProcessConnection(v7) + 24);
  v9 = WTF::fastMalloc(0x10);
  *v9 = &unk_1F11323A8;
  v9[1] = v6;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v10 = v9;
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v13 = IPC::Encoder::operator new(0x238, v12);
    *v13 = 460;
    *(v13 + 68) = 0;
    *(v13 + 70) = 0;
    *(v13 + 69) = 0;
    *(v13 + 2) = 0;
    *(v13 + 3) = 0;
    *(v13 + 1) = 0;
    IPC::Encoder::encodeHeader(v13);
    v21 = v13;
    IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v13, a2);
    IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(v13, *a3, *(a3 + 12));
    v20[0] = v10;
    v20[1] = IdentifierInternal;
    IPC::Connection::sendMessageWithAsyncReply(v8, &v21, v20, 0, 0);
    v15 = v20[0];
    v20[0] = 0;
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }

    result = v21;
    v21 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v14);
      return bmalloc::api::tzoneFree(v17, v18);
    }
  }

  return result;
}

uint64_t WebKit::WebPlatformStrategies::windowUnsubscribeFromPushService(uint64_t a1, void *a2, uint64_t a3, char a4, uint64_t *a5)
{
  v8 = *a5;
  *a5 = 0;
  {
    goto LABEL_11;
  }

  v9 = WebKit::WebProcess::singleton(void)::process;
  while (1)
  {
    v10 = WebKit::WebProcess::ensureNetworkProcessConnection(v9);
    if (a4)
    {
      break;
    }

    __break(1u);
LABEL_11:
    v22 = WebKit::WebProcess::operator new(0x370, a2);
    v9 = WebKit::WebProcess::WebProcess(v22);
    WebKit::WebProcess::singleton(void)::process = v9;
  }

  v11 = *(v10 + 24);
  v12 = WTF::fastMalloc(0x10);
  *v12 = &unk_1F11323D0;
  v12[1] = v8;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v13 = v12;
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v16 = IPC::Encoder::operator new(0x238, v15);
    *v16 = 461;
    *(v16 + 68) = 0;
    *(v16 + 70) = 0;
    *(v16 + 69) = 0;
    *(v16 + 2) = 0;
    *(v16 + 3) = 0;
    *(v16 + 1) = 0;
    IPC::Encoder::encodeHeader(v16);
    v24 = v16;
    IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v16, a2);
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v16, a3);
    v23[0] = v13;
    v23[1] = IdentifierInternal;
    IPC::Connection::sendMessageWithAsyncReply(v11, &v24, v23, 0, 0);
    v18 = v23[0];
    v23[0] = 0;
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }

    result = v24;
    v24 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v17);
      return bmalloc::api::tzoneFree(v20, v21);
    }
  }

  return result;
}

uint64_t WebKit::WebPlatformStrategies::windowGetPushSubscription(uint64_t a1, void *a2, uint64_t *a3)
{
  v4 = *a3;
  *a3 = 0;
  {
    v5 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v17 = WebKit::WebProcess::operator new(0x370, a2);
    v5 = WebKit::WebProcess::WebProcess(v17);
    WebKit::WebProcess::singleton(void)::process = v5;
  }

  v6 = *(WebKit::WebProcess::ensureNetworkProcessConnection(v5) + 24);
  v7 = WTF::fastMalloc(0x10);
  *v7 = &unk_1F11323F8;
  v7[1] = v4;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v8 = v7;
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v11 = IPC::Encoder::operator new(0x238, v10);
    *v11 = 459;
    *(v11 + 68) = 0;
    *(v11 + 70) = 0;
    *(v11 + 69) = 0;
    *(v11 + 2) = 0;
    *(v11 + 3) = 0;
    *(v11 + 1) = 0;
    IPC::Encoder::encodeHeader(v11);
    v19 = v11;
    IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v11, a2);
    v18[0] = v8;
    v18[1] = IdentifierInternal;
    IPC::Connection::sendMessageWithAsyncReply(v6, &v19, v18, 0, 0);
    v13 = v18[0];
    v18[0] = 0;
    if (v13)
    {
      (*(*v13 + 8))(v13);
    }

    result = v19;
    v19 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v12);
      return bmalloc::api::tzoneFree(v15, v16);
    }
  }

  return result;
}

uint64_t WebKit::WebPlatformStrategies::windowGetPushPermissionState(uint64_t a1, void *a2, uint64_t *a3)
{
  v4 = *a3;
  *a3 = 0;
  {
    v5 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v17 = WebKit::WebProcess::operator new(0x370, a2);
    v5 = WebKit::WebProcess::WebProcess(v17);
    WebKit::WebProcess::singleton(void)::process = v5;
  }

  v6 = *(WebKit::WebProcess::ensureNetworkProcessConnection(v5) + 24);
  v7 = WTF::fastMalloc(0x10);
  *v7 = &unk_1F1132420;
  v7[1] = v4;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v8 = v7;
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v11 = IPC::Encoder::operator new(0x238, v10);
    *v11 = 458;
    *(v11 + 68) = 0;
    *(v11 + 70) = 0;
    *(v11 + 69) = 0;
    *(v11 + 2) = 0;
    *(v11 + 3) = 0;
    *(v11 + 1) = 0;
    IPC::Encoder::encodeHeader(v11);
    v19 = v11;
    IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v11, a2);
    v18[0] = v8;
    v18[1] = IdentifierInternal;
    IPC::Connection::sendMessageWithAsyncReply(v6, &v19, v18, 0, 0);
    v13 = v18[0];
    v18[0] = 0;
    if (v13)
    {
      (*(*v13 + 8))(v13);
    }

    result = v19;
    v19 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v12);
      return bmalloc::api::tzoneFree(v15, v16);
    }
  }

  return result;
}

void WebKit::WebPerformanceLoggingClient::~WebPerformanceLoggingClient(WebKit::WebPerformanceLoggingClient *this, void *a2)
{
  WebKit::WebPerformanceLoggingClient::~WebPerformanceLoggingClient(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

{
  v3 = *(this + 1);
  *this = &unk_1F1131C90;
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

unsigned int *WebKit::WebPermissionController::deref(unsigned int *this)
{
  if (atomic_fetch_add(this + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, this + 2);
    return (*(*this + 8))();
  }

  return this;
}

uint64_t non-virtual thunk toWebKit::WebPermissionController::deref(uint64_t this)
{
  if (atomic_fetch_add((this - 8), 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, (this - 8));
    return (*(*(this - 16) + 8))();
  }

  return this;
}

void non-virtual thunk toWebKit::WebPlatformStrategies::~WebPlatformStrategies(WebKit::WebPlatformStrategies *this)
{
  JUMPOUT(0x19EB14CF0);
}

{
  JUMPOUT(0x19EB14CF0);
}

uint64_t IPC::StreamClientConnection::send<Messages::LogStream::WEBLOCALFRAMELOADERCLIENT_COMPLETE_PAGE_TRANSITION_IF_NEEDED,WebKit::LogStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *(a1 + 128);
  v7 = INFINITY;
  if (fabs(v6) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v7 = v6 + v8;
  }

  result = IPC::StreamClientConnection::trySendDestinationIDIfNeeded(a1, a3, v7);
  if (!result)
  {
    result = IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v10, v7);
    if (v12 == 1)
    {
      result = IPC::StreamClientConnection::trySendStream<Messages::LogStream::WEBLOCALFRAMELOADERCLIENT_COMPLETE_PAGE_TRANSITION_IF_NEEDED>(a1, v10, v11, a2);
      if ((result & 1) == 0)
      {
        if (v12)
        {
          IPC::StreamClientConnection::sendProcessOutOfStreamMessage(a1, v10, v11);
          return IPC::Connection::send<Messages::LogStream::WEBLOCALFRAMELOADERCLIENT_COMPLETE_PAGE_TRANSITION_IF_NEEDED>(*(a1 + 8), a2, a3);
        }

        else
        {
          __break(1u);
        }
      }
    }
  }

  return result;
}

uint64_t IPC::StreamClientConnection::trySendStream<Messages::LogStream::WEBLOCALFRAMELOADERCLIENT_COMPLETE_PAGE_TRANSITION_IF_NEEDED>(uint64_t a1, _WORD *a2, unint64_t a3, void *a4)
{
  if (a3 <= 1)
  {
    result = 1067;
    __break(0xC471u);
  }

  else
  {
    *a2 = 297;
    v4 = a2 + 1;
    v5 = -v4 & 7 | 8;
    v6 = a3 - 2 - v5;
    if (a3 - 2 < v5)
    {
      return 0;
    }

    *(v4 + (-v4 & 7)) = *a4;
    v7 = v4 + v5;
    v8 = -v7 & 7 | 8;
    if (v6 < v8)
    {
      return 0;
    }

    else
    {
      *&v7[-v7 & 7] = a4[1];
      if ((IPC::StreamClientConnectionBuffer::release((a1 + 72), a3 - v6 + v8) & 1) != 0 || *(a1 + 124))
      {
        if (*(a1 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(a1 + 100));
        }

        *(a1 + 124) = 0;
      }

      return 1;
    }
  }

  return result;
}

uint64_t IPC::Connection::send<Messages::LogStream::WEBLOCALFRAMELOADERCLIENT_COMPLETE_PAGE_TRANSITION_IF_NEEDED>(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 297;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v13 = v6;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v6, *a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v6, a2[1]);
  v8 = IPC::Connection::sendMessageImpl(a1, &v13, 1, 0);
  v9 = v13;
  v13 = 0;
  if (v9)
  {
    IPC::Encoder::~Encoder(v9, v7);
    bmalloc::api::tzoneFree(v11, v12);
  }

  return v8;
}

uint64_t IPC::StreamClientConnection::send<Messages::LogStream::WEBLOCALFRAMELOADERCLIENT_DISPATCH_DID_FIRST_LAYOUT_FOR_FRAME,WebKit::LogStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *(a1 + 128);
  v7 = INFINITY;
  if (fabs(v6) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v7 = v6 + v8;
  }

  result = IPC::StreamClientConnection::trySendDestinationIDIfNeeded(a1, a3, v7);
  if (!result)
  {
    result = IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v10, v7);
    if (v12 == 1)
    {
      result = IPC::StreamClientConnection::trySendStream<Messages::LogStream::WEBLOCALFRAMELOADERCLIENT_DISPATCH_DID_FIRST_LAYOUT_FOR_FRAME>(a1, v10, v11, a2);
      if ((result & 1) == 0)
      {
        if (v12)
        {
          IPC::StreamClientConnection::sendProcessOutOfStreamMessage(a1, v10, v11);
          return IPC::Connection::send<Messages::LogStream::WEBLOCALFRAMELOADERCLIENT_DISPATCH_DID_FIRST_LAYOUT_FOR_FRAME>(*(a1 + 8), a2, a3);
        }

        else
        {
          __break(1u);
        }
      }
    }
  }

  return result;
}

uint64_t IPC::StreamClientConnection::trySendStream<Messages::LogStream::WEBLOCALFRAMELOADERCLIENT_DISPATCH_DID_FIRST_LAYOUT_FOR_FRAME>(uint64_t a1, _WORD *a2, unint64_t a3, void *a4)
{
  if (a3 <= 1)
  {
    result = 1067;
    __break(0xC471u);
  }

  else
  {
    *a2 = 298;
    v4 = a2 + 1;
    v5 = -v4 & 7 | 8;
    v6 = a3 - 2 - v5;
    if (a3 - 2 < v5)
    {
      return 0;
    }

    *(v4 + (-v4 & 7)) = *a4;
    v7 = v4 + v5;
    v8 = -v7 & 7 | 8;
    if (v6 < v8)
    {
      return 0;
    }

    else
    {
      *&v7[-v7 & 7] = a4[1];
      if ((IPC::StreamClientConnectionBuffer::release((a1 + 72), a3 - v6 + v8) & 1) != 0 || *(a1 + 124))
      {
        if (*(a1 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(a1 + 100));
        }

        *(a1 + 124) = 0;
      }

      return 1;
    }
  }

  return result;
}

uint64_t IPC::Connection::send<Messages::LogStream::WEBLOCALFRAMELOADERCLIENT_DISPATCH_DID_FIRST_LAYOUT_FOR_FRAME>(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 298;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v13 = v6;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v6, *a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v6, a2[1]);
  v8 = IPC::Connection::sendMessageImpl(a1, &v13, 1, 0);
  v9 = v13;
  v13 = 0;
  if (v9)
  {
    IPC::Encoder::~Encoder(v9, v7);
    bmalloc::api::tzoneFree(v11, v12);
  }

  return v8;
}

IPC::Encoder *IPC::Connection::send<Messages::LogStream::WEBLOCALFRAMELOADERCLIENT_DISPATCH_DID_REACH_LAYOUT_MILESTONE>(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 300;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v14 = v6;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v6, *a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v6, a2[1]);
  v7 = *a2[2];
  if (v7)
  {
    v8 = (v7 + 16);
    v9 = *(v7 + 8);
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  IPC::ArgumentCoder<std::span<char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(v6, v8, v9);
  IPC::Connection::sendMessageImpl(a1, &v14, 1, 0);
  result = v14;
  v14 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v10);
    return bmalloc::api::tzoneFree(v12, v13);
  }

  return result;
}

uint64_t IPC::StreamClientConnection::send<Messages::LogStream::WEBLOCALFRAMELOADERCLIENT_DISPATCH_DID_FIRST_VISUALLY_NONEMPTY_LAYOUT,WebKit::LogStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *(a1 + 128);
  v7 = INFINITY;
  if (fabs(v6) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v7 = v6 + v8;
  }

  result = IPC::StreamClientConnection::trySendDestinationIDIfNeeded(a1, a3, v7);
  if (!result)
  {
    result = IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v10, v7);
    if (v12 == 1)
    {
      result = IPC::StreamClientConnection::trySendStream<Messages::LogStream::WEBLOCALFRAMELOADERCLIENT_DISPATCH_DID_FIRST_VISUALLY_NONEMPTY_LAYOUT>(a1, v10, v11, a2);
      if ((result & 1) == 0)
      {
        if (v12)
        {
          IPC::StreamClientConnection::sendProcessOutOfStreamMessage(a1, v10, v11);
          return IPC::Connection::send<Messages::LogStream::WEBLOCALFRAMELOADERCLIENT_DISPATCH_DID_FIRST_VISUALLY_NONEMPTY_LAYOUT>(*(a1 + 8), a2, a3);
        }

        else
        {
          __break(1u);
        }
      }
    }
  }

  return result;
}

uint64_t IPC::StreamClientConnection::trySendStream<Messages::LogStream::WEBLOCALFRAMELOADERCLIENT_DISPATCH_DID_FIRST_VISUALLY_NONEMPTY_LAYOUT>(uint64_t a1, _WORD *a2, unint64_t a3, void *a4)
{
  if (a3 <= 1)
  {
    result = 1067;
    __break(0xC471u);
  }

  else
  {
    *a2 = 299;
    v4 = a2 + 1;
    v5 = -v4 & 7 | 8;
    v6 = a3 - 2 - v5;
    if (a3 - 2 < v5)
    {
      return 0;
    }

    *(v4 + (-v4 & 7)) = *a4;
    v7 = v4 + v5;
    v8 = -v7 & 7 | 8;
    if (v6 < v8)
    {
      return 0;
    }

    else
    {
      *&v7[-v7 & 7] = a4[1];
      if ((IPC::StreamClientConnectionBuffer::release((a1 + 72), a3 - v6 + v8) & 1) != 0 || *(a1 + 124))
      {
        if (*(a1 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(a1 + 100));
        }

        *(a1 + 124) = 0;
      }

      return 1;
    }
  }

  return result;
}

uint64_t IPC::Connection::send<Messages::LogStream::WEBLOCALFRAMELOADERCLIENT_DISPATCH_DID_FIRST_VISUALLY_NONEMPTY_LAYOUT>(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 299;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v13 = v6;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v6, *a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v6, a2[1]);
  v8 = IPC::Connection::sendMessageImpl(a1, &v13, 1, 0);
  v9 = v13;
  v13 = 0;
  if (v9)
  {
    IPC::Encoder::~Encoder(v9, v7);
    bmalloc::api::tzoneFree(v11, v12);
  }

  return v8;
}

WTF::StringImpl *std::__memberwise_forward_assign[abi:sn200100]<std::tuple<WTF::String &,WTF::String &>,std::tuple<WTF::String,WTF::String>,WTF::String,WTF::String,0ul,1ul>(WTF::StringImpl ***a1, WTF::StringImpl *a2)
{
  v4 = *a1;
  v5 = *a2;
  *a2 = 0;
  v6 = *v4;
  *v4 = v5;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  v7 = a1[1];
  v8 = *(a2 + 1);
  *(a2 + 1) = 0;
  result = *v7;
  *v7 = v8;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {

    return WTF::StringImpl::destroy(result, a2);
  }

  return result;
}

uint64_t WTF::RefCounted<WebCore::PluginData>::deref(uint64_t result, WTF::StringImpl *a2)
{
  v2 = result;
  if (*result == 1)
  {
    if (*(result + 176) == 1)
    {
      v3 = *(result + 168);
      *(v2 + 168) = 0;
      if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v3, a2);
      }

      WTF::Vector<WebCore::MimeClassInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2 + 144, a2);
      v4 = *(v2 + 136);
      *(v2 + 136) = 0;
      if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v4, a2);
      }

      v5 = *(v2 + 128);
      *(v2 + 128) = 0;
      if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, a2);
      }

      v6 = *(v2 + 120);
      *(v2 + 120) = 0;
      if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, a2);
      }
    }

    if (*(v2 + 112) == 1)
    {
      WTF::Vector<WebCore::PluginInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2 + 96, a2);
    }

    v7 = *(v2 + 56);
    *(v2 + 56) = 0;
    if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, a2);
    }

    if (*(v2 + 48) == 1)
    {
      v8 = *(v2 + 44);
      if (v8)
      {
        v9 = 16 * v8;
        v10 = (*(v2 + 32) + 8);
        do
        {
          v11 = *v10;
          *v10 = 0;
          if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v11, a2);
          }

          v12 = *(v10 - 1);
          *(v10 - 1) = 0;
          if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v12, a2);
          }

          v10 += 2;
          v9 -= 16;
        }

        while (v9);
      }

      v13 = *(v2 + 32);
      if (v13)
      {
        *(v2 + 32) = 0;
        *(v2 + 40) = 0;
        WTF::fastFree(v13, a2);
      }
    }

    WTF::Vector<WebCore::PluginInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2 + 16, a2);
    if (*v2 == 1)
    {

      return WTF::fastFree(v2, v14);
    }

    else
    {
      result = 191;
      __break(0xC471u);
    }
  }

  else
  {
    --*result;
  }

  return result;
}

uint64_t WTF::Vector<WebCore::PluginInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = 56 * v3;
    v5 = *a1 + 24;
    do
    {
      v6 = *(v5 + 24);
      *(v5 + 24) = 0;
      if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, a2);
      }

      WTF::Vector<WebCore::MimeClassInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v5, a2);
      v7 = *(v5 - 8);
      *(v5 - 8) = 0;
      if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, a2);
      }

      v8 = *(v5 - 16);
      *(v5 - 16) = 0;
      if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, a2);
      }

      v9 = *(v5 - 24);
      *(v5 - 24) = 0;
      if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v9, a2);
      }

      v5 += 56;
      v4 -= 56;
    }

    while (v4);
  }

  v10 = *a1;
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v10, a2);
  }

  return a1;
}

uint64_t WebCore::DocumentFullscreen::deref(uint64_t this)
{
  if (this)
  {
    if (*(this + 28) == 2)
    {
      return WebCore::Node::removedLastRef(this);
    }

    else
    {
      *(this + 28) -= 2;
    }
  }

  else
  {
    this = 92;
    __break(0xC471u);
  }

  return this;
}

atomic_uint **WTF::Mapper<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> WTF::copyToVectorOf<WebCore::RegistrableDomain,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&)::{lambda(WebCore::RegistrableDomain&&)#1},WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,void>::map(atomic_uint **result, uint64_t *a2, const WTF::StringImpl *a3)
{
  v4 = result;
  if (*a2)
  {
    v5 = *(*a2 - 12);
    if (v5)
    {
      if (v5 >> 29)
      {
        __break(0xC471u);
        return result;
      }

      v6 = WTF::fastMalloc((8 * v5));
      *(v4 + 2) = v5;
      *v4 = v6;
    }
  }

  result = WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::begin(a2, a2, a3);
  v12[0] = result;
  v12[1] = v7;
  if (*a2)
  {
    v9 = *a2 + 8 * *(*a2 - 4);
  }

  else
  {
    v9 = 0;
  }

  if (v9 != result)
  {
    do
    {
      v10 = *result;
      if (*result)
      {
        atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
        result = v12[0];
      }

      v11 = *(v4 + 3);
      *&(*v4)[2 * v11] = v10;
      *(v4 + 3) = v11 + 1;
      v12[0] = result + 1;
      WTF::HashTableConstIterator<WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>,WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>>::skipEmptyBuckets(v12, v7, v8);
      result = v12[0];
    }

    while (v12[0] != v9);
  }

  return result;
}

IPC::Encoder *IPC::MessageSender::send<Messages::WebPageProxy::DidReceiveServerRedirectForProvisionalLoadForFrame>(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 2224;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v11 = v6;
  Messages::WebPageProxy::DidReceiveServerRedirectForProvisionalLoadForFrame::encode<IPC::Encoder>(a2, v6);
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

void Messages::WebPageProxy::DidReceiveServerRedirectForProvisionalLoadForFrame::encode<IPC::Encoder>(uint64_t a1, IPC::Encoder *a2)
{
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a2, **a1);
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a2, *(a1 + 8));
  IPC::ArgumentCoder<WebCore::ResourceRequest,void>::encode(a2, *(a1 + 16));
  v4 = *(a1 + 24);

  IPC::ArgumentCoder<WebKit::UserData,void>::encode(a2, v4);
}

IPC::Encoder *IPC::MessageSender::send<Messages::WebPageProxy::DidChangeProvisionalURLForFrame>(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 2185;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v11 = v6;
  Messages::WebPageProxy::DidChangeProvisionalURLForFrame::encode<IPC::Encoder>(a2, v6);
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

void *Messages::WebPageProxy::DidChangeProvisionalURLForFrame::encode<IPC::Encoder>(uint64_t a1, IPC::Encoder *a2)
{
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a2, **a1);
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a2, *(a1 + 8));
  v4 = *(a1 + 16);

  return IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a2, v4);
}

void *WTF::Detail::CallableWrapper<WebKit::WebLocalFrameLoaderClient::dispatchDidStartProvisionalLoad(void)::$_0,void>::~CallableWrapper(void *result)
{
  v1 = result[1];
  *result = &unk_1F1132010;
  result[1] = 0;
  if (v1)
  {
    if (*(v1 + 7) == 2)
    {
      v2 = result;
      WebCore::Node::removedLastRef(v1);
      return v2;
    }

    else
    {
      *(v1 + 7) -= 2;
    }
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebLocalFrameLoaderClient::dispatchDidStartProvisionalLoad(void)::$_0,void>::~CallableWrapper(WTF *a1, void *a2)
{
  v3 = *(a1 + 1);
  *a1 = &unk_1F1132010;
  *(a1 + 1) = 0;
  if (v3)
  {
    if (*(v3 + 7) == 2)
    {
      v5 = a1;
      WebCore::Node::removedLastRef(v3);
      a1 = v5;
    }

    else
    {
      *(v3 + 7) -= 2;
    }
  }

  return WTF::fastFree(a1, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebLocalFrameLoaderClient::dispatchDidStartProvisionalLoad(void)::$_0,void>::call(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    v2 = *(*(v1 + 48) + 8);
    *(v2 + 7) += 2;
    WebCore::Document::protectedFullscreen(&v6, v2);
    v3 = WTF::fastMalloc(0x10);
    *v3 = &unk_1F1132038;
    v5 = v3;
    WebCore::DocumentFullscreen::didExitFullscreen();
    result = v5;
    if (v5)
    {
      result = (*(*v5 + 8))(v5);
    }

    v4 = v6;
    v6 = 0;
    if (v4)
    {
      result = WebCore::DocumentFullscreen::deref(*(*(v4 + 8) + 8));
    }

    if (*(v2 + 7) == 2)
    {
      return WebCore::Node::removedLastRef(v2);
    }

    else
    {
      *(v2 + 7) -= 2;
    }
  }

  return result;
}

void _ZN3WTF6Detail15CallableWrapperIZZN6WebKit25WebLocalFrameLoaderClient31dispatchDidStartProvisionalLoadEvENK3__0clEvEUlT_E_vJN7WebCore11ExceptionOrIvEEEE4callES9_(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) == 1)
  {
    v2 = *(a2 + 8);
    *(a2 + 8) = 0;
    if (v2)
    {
      if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v2, a2);
      }
    }
  }
}

IPC::Encoder *IPC::MessageSender::send<Messages::WebPageProxy::DidFirstVisuallyNonEmptyLayoutForFrame>(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 2209;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v11 = v6;
  Messages::WebPageProxy::DidFirstVisuallyNonEmptyLayoutForFrame::encode<IPC::Encoder>(a2, v6);
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

uint64_t Messages::WebPageProxy::DidFirstVisuallyNonEmptyLayoutForFrame::encode<IPC::Encoder>(uint64_t **a1, IPC::Encoder *a2)
{
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a2, **a1);
  IPC::ArgumentCoder<WebKit::UserData,void>::encode(a2, a1[1]);
  v4 = *a1[2];

  return IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a2, v4);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPageProxy::DecidePolicyForResponse,WebKit::WebLocalFrameLoaderClient::dispatchDecidePolicyForResponse(WebCore::ResourceResponse const&,WebCore::ResourceRequest const&,WTF::String const&,WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&)::$_0>(WebKit::WebLocalFrameLoaderClient::dispatchDecidePolicyForResponse(WebCore::ResourceResponse const&,WebCore::ResourceRequest const&,WTF::String const&,WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::WebLocalFrameLoaderClient::dispatchDecidePolicyForResponse(WebCore::ResourceResponse const&,WebCore::ResourceRequest const&,WTF::String const&,WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&)::$_0,IPC::Decoder)#1},void,WebKit::WebLocalFrameLoaderClient::dispatchDecidePolicyForResponse(WebCore::ResourceResponse const&,WebCore::ResourceRequest const&,WTF::String const&,WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&)::$_0,IPC::Decoder>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1132060;
  a1[1] = 0;
  if (v2)
  {
    CFRelease(*(v2 + 8));
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPageProxy::DecidePolicyForResponse,WebKit::WebLocalFrameLoaderClient::dispatchDecidePolicyForResponse(WebCore::ResourceResponse const&,WebCore::ResourceRequest const&,WTF::String const&,WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&)::$_0>(WebKit::WebLocalFrameLoaderClient::dispatchDecidePolicyForResponse(WebCore::ResourceResponse const&,WebCore::ResourceRequest const&,WTF::String const&,WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::WebLocalFrameLoaderClient::dispatchDecidePolicyForResponse(WebCore::ResourceResponse const&,WebCore::ResourceRequest const&,WTF::String const&,WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&)::$_0,IPC::Decoder)#1},void,WebKit::WebLocalFrameLoaderClient::dispatchDecidePolicyForResponse(WebCore::ResourceResponse const&,WebCore::ResourceRequest const&,WTF::String const&,WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&)::$_0,IPC::Decoder>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1132060;
  *(this + 1) = 0;
  if (v3)
  {
    CFRelease(*(v3 + 8));
  }

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPageProxy::DecidePolicyForResponse,WebKit::WebLocalFrameLoaderClient::dispatchDecidePolicyForResponse(WebCore::ResourceResponse const&,WebCore::ResourceRequest const&,WTF::String const&,WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&)::$_0>(WebKit::WebLocalFrameLoaderClient::dispatchDecidePolicyForResponse(WebCore::ResourceResponse const&,WebCore::ResourceRequest const&,WTF::String const&,WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::WebLocalFrameLoaderClient::dispatchDecidePolicyForResponse(WebCore::ResourceResponse const&,WebCore::ResourceRequest const&,WTF::String const&,WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&)::$_0,IPC::Decoder)#1},void,WebKit::WebLocalFrameLoaderClient::dispatchDecidePolicyForResponse(WebCore::ResourceResponse const&,WebCore::ResourceRequest const&,WTF::String const&,WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&)::$_0,IPC::Decoder>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
{
  if (a3 && *a3)
  {
    IPC::ArgumentCoder<std::tuple<WebKit::PolicyDecision>,void>::decode<IPC::Decoder>(a3, v8);
    if (v14 & 1) != 0 || (IPC::Decoder::markInvalid(a3), (v14))
    {
      WebKit::WebFrame::didReceivePolicyDecision(*(a1 + 8), *(a1 + 16), v8);
      if (v14)
      {
        if (v13 == 1)
        {
          v7 = v12;
          v12 = 0;
          if (v7)
          {
            if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v7, v5);
            }
          }
        }

        if (v11 == 1)
        {
          WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v10);
        }

        if (v9[120] == 1)
        {
          WebKit::WebsitePoliciesData::~WebsitePoliciesData(v9, v5);
        }
      }
    }

    else
    {
      IPC::Connection::cancelReply<Messages::WebPageProxy::DecidePolicyForResponse,WebKit::WebLocalFrameLoaderClient::dispatchDecidePolicyForResponse(WebCore::ResourceResponse const&,WebCore::ResourceRequest const&,WTF::String const&,WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&)::$_0>(a1 + 8);
    }
  }

  else
  {
    v6 = a1 + 8;

    IPC::Connection::cancelReply<Messages::WebPageProxy::DecidePolicyForResponse,WebKit::WebLocalFrameLoaderClient::dispatchDecidePolicyForResponse(WebCore::ResourceResponse const&,WebCore::ResourceRequest const&,WTF::String const&,WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&)::$_0>(v6);
  }
}

void IPC::Connection::cancelReply<Messages::WebPageProxy::DecidePolicyForResponse,WebKit::WebLocalFrameLoaderClient::dispatchDecidePolicyForResponse(WebCore::ResourceResponse const&,WebCore::ResourceRequest const&,WTF::String const&,WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&)::$_0>(uint64_t a1)
{
  v3 = 0;
  v4 = 2;
  v5 = *&v24[7];
  v6 = v24[11];
  v7 = 0;
  *v8 = *v24;
  *&v8[3] = *&v24[3];
  v9 = 0;
  *v10 = *v23;
  *&v10[3] = *&v23[3];
  v11 = 0;
  *v12 = *v22;
  *&v12[3] = *&v22[3];
  v13 = 0;
  v14[0] = 0;
  v15 = 0;
  LOBYTE(v16) = 0;
  v17 = 0;
  v18 = 0;
  v20 = 0;
  v21 = 0;
  WebKit::WebFrame::didReceivePolicyDecision(*a1, *(a1 + 8), &v3);
  if (v20 == 1)
  {
    v2 = v19;
    v19 = 0;
    if (v2)
    {
      if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v2, v1);
      }
    }
  }

  if (v17 == 1)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v16);
  }

  if (v15 == 1)
  {
    WebKit::WebsitePoliciesData::~WebsitePoliciesData(v14, v1);
  }
}

void *WTF::Detail::CallableWrapper<std::optional<WebCore::HitTestResult> &&<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPageProxy::DecidePolicyForNewWindowAction,WebKit::WebLocalFrameLoaderClient::dispatchDecidePolicyForNewWindowAction(WebCore::NavigationAction const&,WebCore::ResourceRequest const&,WebCore::FormState *,WTF::String const&,std::optional<WebCore::HitTestResult> &&,WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&)::$_0>(WebKit::WebLocalFrameLoaderClient::dispatchDecidePolicyForNewWindowAction(WebCore::NavigationAction const&,WebCore::ResourceRequest const&,WebCore::FormState *,WTF::String const&,std::optional<WebCore::HitTestResult> &&,WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&,IPC::Connection*>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1132088;
  a1[1] = 0;
  if (v2)
  {
    CFRelease(*(v2 + 8));
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<std::optional<WebCore::HitTestResult> &&<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPageProxy::DecidePolicyForNewWindowAction,WebKit::WebLocalFrameLoaderClient::dispatchDecidePolicyForNewWindowAction(WebCore::NavigationAction const&,WebCore::ResourceRequest const&,WebCore::FormState *,WTF::String const&,std::optional<WebCore::HitTestResult> &&,WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&)::$_0>(WebKit::WebLocalFrameLoaderClient::dispatchDecidePolicyForNewWindowAction(WebCore::NavigationAction const&,WebCore::ResourceRequest const&,WebCore::FormState *,WTF::String const&,std::optional<WebCore::HitTestResult> &&,WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&,IPC::Connection*>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1132088;
  *(this + 1) = 0;
  if (v3)
  {
    CFRelease(*(v3 + 8));
  }

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<std::optional<WebCore::HitTestResult> &&<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPageProxy::DecidePolicyForNewWindowAction,WebKit::WebLocalFrameLoaderClient::dispatchDecidePolicyForNewWindowAction(WebCore::NavigationAction const&,WebCore::ResourceRequest const&,WebCore::FormState *,WTF::String const&,std::optional<WebCore::HitTestResult> &&,WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&)::$_0>(WebKit::WebLocalFrameLoaderClient::dispatchDecidePolicyForNewWindowAction(WebCore::NavigationAction const&,WebCore::ResourceRequest const&,WebCore::FormState *,WTF::String const&,std::optional<WebCore::HitTestResult> &&,WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&,IPC::Connection*>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
{
  if (a3 && *a3)
  {
    IPC::ArgumentCoder<std::tuple<WebKit::PolicyDecision>,void>::decode<IPC::Decoder>(a3, v11);
    if (v17 & 1) != 0 || (v7 = *a3, v8 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v9 = *(a3 + 3)) != 0) && v8 && ((*(*v9 + 16))(v9, v7), (v17))
    {
      WebKit::WebFrame::didReceivePolicyDecision(*(a1 + 8), *(a1 + 16), v11);
      if (v17)
      {
        if (v16 == 1)
        {
          v10 = v15;
          v15 = 0;
          if (v10)
          {
            if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v10, v5);
            }
          }
        }

        if (v14 == 1)
        {
          WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v13);
        }

        if (v12[120] == 1)
        {
          WebKit::WebsitePoliciesData::~WebsitePoliciesData(v12, v5);
        }
      }
    }

    else
    {
      IPC::Connection::cancelReply<Messages::WebPageProxy::DecidePolicyForResponse,WebKit::WebLocalFrameLoaderClient::dispatchDecidePolicyForResponse(WebCore::ResourceResponse const&,WebCore::ResourceRequest const&,WTF::String const&,WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&)::$_0>(a1 + 8);
    }
  }

  else
  {
    v6 = a1 + 8;

    IPC::Connection::cancelReply<Messages::WebPageProxy::DecidePolicyForResponse,WebKit::WebLocalFrameLoaderClient::dispatchDecidePolicyForResponse(WebCore::ResourceResponse const&,WebCore::ResourceRequest const&,WTF::String const&,WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&)::$_0>(v6);
  }
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPageProxy::WillSubmitForm,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F11320B0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPageProxy::WillSubmitForm,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F11320B0;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPageProxy::WillSubmitForm,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

uint64_t IPC::Decoder::decode<std::tuple<WebCore::ShouldGoToHistoryItem>>(uint64_t *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if (v2 <= &v3[-*a1])
  {
    *a1 = 0;
    a1[1] = 0;
    v7 = a1[3];
    if (v7)
    {
      if (v2)
      {
        (*(*v7 + 16))(v7);
        v2 = a1[1];
      }
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    a1[2] = (v3 + 1);
    if (v3)
    {
      v5 = *v3;
      if (v5 < 3)
      {
        v6 = 256;
        return v5 | v6;
      }

      goto LABEL_10;
    }
  }

  *a1 = 0;
  a1[1] = 0;
  v8 = a1[3];
  if (v8)
  {
    if (v2)
    {
      (*(*v8 + 16))(v8);
      v4 = *a1;
      v2 = a1[1];
      goto LABEL_10;
    }
  }

  else
  {
    v2 = 0;
  }

  v4 = 0;
LABEL_10:
  *a1 = 0;
  a1[1] = 0;
  v9 = a1[3];
  if (!v9 || !v2)
  {
    goto LABEL_11;
  }

  (*(*v9 + 16))(v9, v4);
  v6 = 0;
  v11 = *a1;
  v12 = a1[1];
  v13 = a1[3];
  *a1 = 0;
  a1[1] = 0;
  v5 = 0;
  if (v13 && v12)
  {
    (*(*v13 + 16))(v13, v11);
LABEL_11:
    v6 = 0;
    v5 = 0;
  }

  return v5 | v6;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPageProxy::ShouldGoToBackForwardListItem,WTF::CompletionHandler<void ()(WebCore::ShouldGoToHistoryItem)>>(WTF::CompletionHandler<void ()(WebCore::ShouldGoToHistoryItem)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F11320D8;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPageProxy::ShouldGoToBackForwardListItem,WTF::CompletionHandler<void ()(WebCore::ShouldGoToHistoryItem)>>(WTF::CompletionHandler<void ()(WebCore::ShouldGoToHistoryItem)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F11320D8;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPageProxy::ShouldGoToBackForwardListItem,WTF::CompletionHandler<void ()(WebCore::ShouldGoToHistoryItem)>>(WTF::CompletionHandler<void ()(WebCore::ShouldGoToHistoryItem)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a3)
  {
    v4 = *a3;
    if (*a3)
    {
      LODWORD(v4) = IPC::Decoder::decode<std::tuple<WebCore::ShouldGoToHistoryItem>>(a3);
      if (v4 <= 0x100)
      {
        LOBYTE(v4) = 0;
      }
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  v5 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v5 + 16))(v5, v4);
  v6 = *(*v5 + 8);

  return v6(v5);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkConnectionToWebProcess::StorageAccessQuirkForTopFrameDomain,WebKit::WebLocalFrameLoaderClient::loadStorageAccessQuirksIfNeeded(void)::$_0>(WebKit::WebLocalFrameLoaderClient::loadStorageAccessQuirksIfNeeded(void)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F1132100;
  a1[1] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WebCore::WeakPtrImplWithEventTargetData,(WTF::DestructionThread)0>::deref(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkConnectionToWebProcess::StorageAccessQuirkForTopFrameDomain,WebKit::WebLocalFrameLoaderClient::loadStorageAccessQuirksIfNeeded(void)::$_0>(WebKit::WebLocalFrameLoaderClient::loadStorageAccessQuirksIfNeeded(void)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1132100;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WebCore::WeakPtrImplWithEventTargetData,(WTF::DestructionThread)0>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkConnectionToWebProcess::StorageAccessQuirkForTopFrameDomain,WebKit::WebLocalFrameLoaderClient::loadStorageAccessQuirksIfNeeded(void)::$_0>(WebKit::WebLocalFrameLoaderClient::loadStorageAccessQuirksIfNeeded(void)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1, void *a2, IPC::Decoder *a3, __n128 a4)
{
  if (a3 && *a3)
  {
    v6 = IPC::ArgumentCoder<std::tuple<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder>(a3, v14);
    if (v15)
    {
      v9 = 1;
    }

    else
    {
      v7 = *a3;
      v13 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v6 = *(a3 + 3);
      if (!v6 || !v13)
      {
        return IPC::Connection::cancelReply<Messages::NetworkConnectionToWebProcess::StorageAccessQuirkForTopFrameDomain,WebKit::WebLocalFrameLoaderClient::loadStorageAccessQuirksIfNeeded(void)::$_0>(v8, v6, v7);
      }

      v6 = (*(*v6 + 16))(v6, v7);
      v9 = v15;
      if ((v15 & 1) == 0)
      {
LABEL_18:
        if (v9)
        {
          return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v14, v7);
        }

        return IPC::Connection::cancelReply<Messages::NetworkConnectionToWebProcess::StorageAccessQuirkForTopFrameDomain,WebKit::WebLocalFrameLoaderClient::loadStorageAccessQuirksIfNeeded(void)::$_0>(v8, v6, v7);
      }
    }

    if (v14[3])
    {
      v10 = *(a1 + 8);
      if (v10)
      {
        v6 = *(v10 + 8);
        if (v6)
        {
          v11 = *(v6 + 91);
          if (!v11)
          {
            v11 = WebCore::Document::ensureQuirks(v6);
          }

          result = WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(v11 + 40, v14);
          if ((v15 & 1) == 0)
          {
            return result;
          }

          return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v14, v7);
        }
      }
    }

    goto LABEL_18;
  }

  return IPC::Connection::cancelReply<Messages::NetworkConnectionToWebProcess::StorageAccessQuirkForTopFrameDomain,WebKit::WebLocalFrameLoaderClient::loadStorageAccessQuirksIfNeeded(void)::$_0>(a4, a1, a2);
}

uint64_t IPC::Connection::cancelReply<Messages::NetworkConnectionToWebProcess::StorageAccessQuirkForTopFrameDomain,WebKit::WebLocalFrameLoaderClient::loadStorageAccessQuirksIfNeeded(void)::$_0>(__n128 a1, uint64_t a2, void *a3)
{
  a1.n128_u64[0] = 0;
  v5 = a1;
  v6 = a1;
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v6, a3);
  return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v5, v3);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkConnectionToWebProcess::SendH2Ping,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError> &&)>>(WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError> &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError> &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError> &&)>,IPC::Decoder>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1132128;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkConnectionToWebProcess::SendH2Ping,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError> &&)>>(WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError> &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError> &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError> &&)>,IPC::Decoder>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1132128;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkConnectionToWebProcess::SendH2Ping,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError> &&)>>(WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError> &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError> &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError> &&)>,IPC::Decoder>::call(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a3 && *a3)
  {
    IPC::ArgumentCoder<std::tuple<std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError>>,void>::decode<IPC::Decoder>(a3, v12);
    if (v13 & 1) != 0 || (v9 = *a3, v10 = a3[1], *a3 = 0, a3[1] = 0, (v11 = a3[3]) != 0) && v10 && ((*(*v11 + 16))(v11, v9), (v13))
    {
      v5 = *(a1 + 8);
      *(a1 + 8) = 0;
      (*(*v5 + 16))(v5, v12);
      result = (*(*v5 + 8))(v5);
      if (v13)
      {
        return std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError>::~expected(v12, v7);
      }
    }

    else
    {
      return IPC::Connection::cancelReply<Messages::MediaPlayerPrivateRemote::SendH2Ping,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError> &&)>>((a1 + 8));
    }
  }

  else
  {
    v8 = (a1 + 8);

    return IPC::Connection::cancelReply<Messages::MediaPlayerPrivateRemote::SendH2Ping,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError> &&)>>(v8);
  }

  return result;
}

IPC::Encoder *IPC::MessageSender::send<Messages::WebPageProxy::GetLoadDecisionForIcon>(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 2260;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v11 = v6;
  Messages::WebPageProxy::GetLoadDecisionForIcon::encode<IPC::Encoder>(a2, v6);
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

uint64_t Messages::WebPageProxy::GetLoadDecisionForIcon::encode<IPC::Encoder>(uint64_t *a1, IPC::Encoder *a2)
{
  IPC::ArgumentCoder<WebCore::LinkIcon,void>::encode(a2, *a1);
  v4 = a1[1];

  return IPC::ArgumentCoder<WebKit::CallbackID,void>::encode(a2, v4);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkConnectionToWebProcess::ShouldOffloadIFrameForHost,WebKit::WebLocalFrameLoaderClient::didExceedNetworkUsageThreshold(void)::$_0>(WebKit::WebLocalFrameLoaderClient::didExceedNetworkUsageThreshold(void)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F1132150;
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkConnectionToWebProcess::ShouldOffloadIFrameForHost,WebKit::WebLocalFrameLoaderClient::didExceedNetworkUsageThreshold(void)::$_0>(WebKit::WebLocalFrameLoaderClient::didExceedNetworkUsageThreshold(void)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1132150;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkConnectionToWebProcess::ShouldOffloadIFrameForHost,WebKit::WebLocalFrameLoaderClient::didExceedNetworkUsageThreshold(void)::$_0>(WebKit::WebLocalFrameLoaderClient::didExceedNetworkUsageThreshold(void)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t result, uint64_t a2, IPC::Decoder *a3)
{
  v3 = result;
  if (!a3 || !*a3 || (result = IPC::Decoder::decode<std::tuple<BOOL>>(a3), (result & 0x100) == 0))
  {
    v4 = *(v3 + 8);
    if (!v4)
    {
      return result;
    }

    v5 = *(v4 + 8);
    if (!v5)
    {
      return result;
    }

    ++*(v5 + 4);
LABEL_7:
    result = WebCore::LocalFrame::reportResourceMonitoringWarning(v5);
    goto LABEL_8;
  }

  v6 = *(v3 + 8);
  if (!v6)
  {
    return result;
  }

  v5 = *(v6 + 8);
  if (!v5)
  {
    return result;
  }

  ++*(v5 + 4);
  if ((result & 1) == 0)
  {
    goto LABEL_7;
  }

  result = WebCore::LocalFrame::showResourceMonitoringError(v5);
LABEL_8:
  if (*(v5 + 4) == 1)
  {
    v7 = *(*v5 + 8);

    return v7(v5);
  }

  else
  {
    --*(v5 + 4);
  }

  return result;
}

uint64_t WTF::Vector<WebCore::MessageWithMessagePorts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorTypeOperations<WebCore::MessageWithMessagePorts>::destruct(*a1, (*a1 + 24 * v3));
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

atomic_uint *WTF::VectorTypeOperations<WebCore::MessageWithMessagePorts>::destruct(atomic_uint *result, atomic_uint *a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      v4 = *(v3 + 1);
      if (v4)
      {
        *(v3 + 1) = 0;
        v3[4] = 0;
        WTF::fastFree(v4, a2);
      }

      result = *v3;
      *v3 = 0;
      if (result)
      {
        result = WTF::ThreadSafeRefCounted<WebCore::SerializedScriptValue,(WTF::DestructionThread)0>::deref(result);
      }

      v3 += 6;
    }

    while (v3 != a2);
  }

  return result;
}

void WebCore::MessageWithMessagePorts::~MessageWithMessagePorts(WebCore::MessageWithMessagePorts *this, void *a2)
{
  v3 = *(this + 1);
  if (v3)
  {
    *(this + 1) = 0;
    *(this + 4) = 0;
    WTF::fastFree(v3, a2);
  }

  v4 = *this;
  *this = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCounted<WebCore::SerializedScriptValue,(WTF::DestructionThread)0>::deref(v4);
  }
}

uint64_t WTF::HashTable<WebCore::MessagePortIdentifier,WTF::KeyValuePair<WebCore::MessagePortIdentifier,WTF::Vector<WebCore::MessageWithMessagePorts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::MessagePortIdentifier,WTF::Vector<WebCore::MessageWithMessagePorts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::MessagePortIdentifier>,WTF::HashMap<WebCore::MessagePortIdentifier,WTF::Vector<WebCore::MessageWithMessagePorts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::MessagePortIdentifier>,WTF::HashTraits<WebCore::MessagePortIdentifier>,WTF::HashTraits<WTF::Vector<WebCore::MessageWithMessagePorts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::MessagePortIdentifier>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t a2)
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

  return WTF::HashTable<WebCore::MessagePortIdentifier,WTF::KeyValuePair<WebCore::MessagePortIdentifier,WTF::Vector<WebCore::MessageWithMessagePorts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::MessagePortIdentifier,WTF::Vector<WebCore::MessageWithMessagePorts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::MessagePortIdentifier>,WTF::HashMap<WebCore::MessagePortIdentifier,WTF::Vector<WebCore::MessageWithMessagePorts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::MessagePortIdentifier>,WTF::HashTraits<WebCore::MessagePortIdentifier>,WTF::HashTraits<WTF::Vector<WebCore::MessageWithMessagePorts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::MessagePortIdentifier>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

uint64_t WTF::HashTable<WebCore::MessagePortIdentifier,WTF::KeyValuePair<WebCore::MessagePortIdentifier,WTF::Vector<WebCore::MessageWithMessagePorts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::MessagePortIdentifier,WTF::Vector<WebCore::MessageWithMessagePorts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::MessagePortIdentifier>,WTF::HashMap<WebCore::MessagePortIdentifier,WTF::Vector<WebCore::MessageWithMessagePorts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::MessagePortIdentifier>,WTF::HashTraits<WebCore::MessagePortIdentifier>,WTF::HashTraits<WTF::Vector<WebCore::MessageWithMessagePorts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::MessagePortIdentifier>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t a3)
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

  v9 = WTF::fastMalloc(((32 * a2) | 0x10));
  v11 = v9;
  v12 = v9 + 16;
  if (a2)
  {
    bzero((v9 + 16), 32 * a2);
  }

  *a1 = v12;
  v11[2] = a2 - 1;
  v11[3] = a2;
  *v11 = 0;
  v11[1] = v8;
  if (v7)
  {
    v13 = 0;
    v14 = 0;
    do
    {
      v15 = v6 + 32 * v13;
      if (*v15 != -1)
      {
        if (*v15 == 0)
        {
          WTF::Vector<WebCore::MessageWithMessagePorts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v15 + 16, v10);
        }

        else
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

          v25 = -1640531527;
          v26 = 0;
          v27 = 0;
          WTF::add<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PortIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(&v25, (v6 + 32 * v13), (v15 + 8));
          v18 = WTF::SuperFastHash::hash(&v25);
          v20 = 0;
          do
          {
            v21 = v18 & v17;
            v22 = v16 + 32 * v21;
            v18 = ++v20 + v21;
          }

          while (*v22 != 0);
          WTF::Vector<WebCore::MessageWithMessagePorts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v22 + 16, v19);
          *v22 = *v15;
          *(v22 + 16) = 0;
          *(v22 + 24) = 0;
          WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(v22 + 16, (v15 + 16));
          WTF::Vector<WebCore::MessageWithMessagePorts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v15 + 16, v23);
          if (v15 == a3)
          {
            v14 = v22;
          }
        }
      }

      ++v13;
    }

    while (v13 != v7);
  }

  else
  {
    v14 = 0;
    result = 0;
    if (!v6)
    {
      return result;
    }
  }

  WTF::fastFree((v6 - 16), v10);
  return v14;
}

WTF *WTF::HashMap<WebCore::MessagePortIdentifier,WTF::Vector<WebCore::MessageWithMessagePorts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::MessagePortIdentifier>,WTF::HashTraits<WebCore::MessagePortIdentifier>,WTF::HashTraits<WTF::Vector<WebCore::MessageWithMessagePorts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::take@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X1>, __n128 *a3@<X8>, __n128 a4@<Q0>)
{
  v6 = *a1;
  if (*a1)
  {
    v6 += 32 * *(v6 - 4);
  }

  if (v6 == a2)
  {
    a4.n128_u64[0] = 0;
    v9 = a4;
    *a3 = a4;
    return WTF::Vector<WebCore::MessageWithMessagePorts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v9, a2);
  }

  a3->n128_u64[0] = 0;
  a3->n128_u64[1] = 0;
  result = WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a3, a2 + 4);
  if (*a1)
  {
    v8 = *a1 + 32 * *(*a1 - 4);
    if (v8 == a2)
    {
      return result;
    }
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v8 = 0;
  }

  if (v8 != a2)
  {

    return WTF::HashTable<WebCore::MessagePortIdentifier,WTF::KeyValuePair<WebCore::MessagePortIdentifier,WTF::Vector<WebCore::MessageWithMessagePorts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::MessagePortIdentifier,WTF::Vector<WebCore::MessageWithMessagePorts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::MessagePortIdentifier>,WTF::HashMap<WebCore::MessagePortIdentifier,WTF::Vector<WebCore::MessageWithMessagePorts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::MessagePortIdentifier>,WTF::HashTraits<WebCore::MessagePortIdentifier>,WTF::HashTraits<WTF::Vector<WebCore::MessageWithMessagePorts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::MessagePortIdentifier>,WTF::FastMalloc>::remove(a1, a2);
  }

  return result;
}