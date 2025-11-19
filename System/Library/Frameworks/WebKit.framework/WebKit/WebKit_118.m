IPC::Encoder *IPC::Connection::send<Messages::NetworkProcessProxy::RemoteWorkerContextConnectionNoLongerNeeded>(uint64_t *a1, uint64_t **a2)
{
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 551;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v4, *a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v4, *a2[1]);
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

_DWORD *WebKit::NetworkConnectionToWebProcess::establishSWContextConnection(void *a1, void *a2, uint64_t a3, _OWORD *a4, uint64_t *a5)
{
  v27 = *MEMORY[0x1E69E9840];
  v10 = a1[11];
  *buf = a1[12];
  v11 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v10 + 240), buf);
  v13 = v11;
  if (!v11)
  {
    goto LABEL_5;
  }

  ++*(v11 + 4);
  v14 = WebKit::NetworkSession::ensureSWServer(v11, v12);
  v15 = (v14 + 8);
  ++*(v14 + 8);
  if (WebKit::NetworkProcess::allowsFirstPartyForCookies(*(v13 + 4), a1[34], (a3 + 8)) != 2)
  {
    v16 = a4[1];
    *buf = *a4;
    v25 = v16;
    v26 = a4[2];
    WebKit::WebSWServerToContextConnection::create(a1, a2, v14, &v23);
    v17 = a1[29];
    a1[29] = v23;
    if (v17)
    {
      if (v17[4] == 1)
      {
        (*(*v17 + 8))(v17);
      }

      else
      {
        --v17[4];
      }
    }

    WTF::RefCounted<WebCore::SWServer>::deref(v15);
LABEL_5:
    v18 = *a5;
    *a5 = 0;
    (*(*v18 + 16))(v18);
    result = (*(*v18 + 8))(v18);
    if (!v13)
    {
      return result;
    }

    goto LABEL_6;
  }

  v21 = qword_1ED6416C8;
  if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
  {
    *buf = 136446210;
    *&buf[4] = "void WebKit::NetworkConnectionToWebProcess::establishSWContextConnection(WebPageProxyIdentifier, Site &&, std::optional<ScriptExecutionContextIdentifier>, CompletionHandler<void ()> &&)";
    _os_log_fault_impl(&dword_19D52D000, v21, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/NetworkProcess/NetworkConnectionToWebProcess.cpp 1529: Invalid message dispatched %{public}s", buf, 0xCu);
  }

  *(a1[10] + 94) = 1;
  if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
  {
    __break(0xC471u);
LABEL_18:
    JUMPOUT(0x19DC2DBDCLL);
  }

  v22 = *a5;
  *a5 = 0;
  (*(*v22 + 16))(v22);
  (*(*v22 + 8))(v22);
  result = WTF::RefCounted<WebCore::SWServer>::deref(v15);
LABEL_6:
  v20 = *(v13 + 4);
  if (!v20)
  {
    __break(0xC471u);
    goto LABEL_18;
  }

  *(v13 + 4) = v20 - 1;
  return result;
}

uint64_t WebKit::NetworkConnectionToWebProcess::closeSWContextConnection(uint64_t this)
{
  v1 = *(this + 232);
  *(this + 232) = 0;
  if (v1)
  {
    this = WebKit::WebSWServerToContextConnection::stop(v1);
    if (*(v1 + 4) == 1)
    {
      v2 = *(*v1 + 8);

      return v2(v1);
    }

    else
    {
      --*(v1 + 4);
    }
  }

  return this;
}

_DWORD *WebKit::NetworkConnectionToWebProcess::terminateIdleServiceWorkers(_DWORD *this)
{
  v1 = *(this + 29);
  if (v1)
  {
    ++*(v1 + 4);
    this = WebKit::WebSWServerToContextConnection::terminateIdleServiceWorkers(v1);
    if (*(v1 + 4) == 1)
    {
      v2 = *(*v1 + 8);

      return v2(v1);
    }

    else
    {
      --*(v1 + 4);
    }
  }

  return this;
}

atomic_ullong *WebKit::NetworkConnectionToWebProcess::serviceWorkerServerToContextConnectionNoLongerNeeded(WebKit::NetworkConnectionToWebProcess *this)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED641288;
  if (os_log_type_enabled(qword_1ED641288, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(this + 34);
    *buf = 134218240;
    *v9 = this;
    *&v9[8] = 2048;
    *&v9[10] = v3;
    _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "%p - [webProcessIdentifier=%llu] NetworkConnectionToWebProcess::serviceWorkerServerToContextConnectionNoLongerNeeded: WebProcess no longer useful for running service workers", buf, 0x16u);
  }

  WebKit::AuxiliaryProcess::protectedParentProcessConnection(*(this + 11), &v7);
  v6 = *(this + 34);
  buf[0] = 1;
  *&v9[4] = &v6;
  IPC::Connection::send<Messages::NetworkProcessProxy::RemoteWorkerContextConnectionNoLongerNeeded>(v7, buf);
  result = v7;
  v7 = 0;
  if (result)
  {
    result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(result);
  }

  v5 = *(this + 29);
  *(this + 29) = 0;
  if (v5)
  {
    result = WebKit::WebSWServerToContextConnection::stop(v5);
    if (*(v5 + 4) == 1)
    {
      return (*(*v5 + 8))(v5);
    }

    else
    {
      --*(v5 + 4);
    }
  }

  return result;
}

uint64_t WebKit::NetworkConnectionToWebProcess::terminateSWContextConnectionDueToUnresponsiveness(WebKit::NetworkConnectionToWebProcess *this)
{
  WebKit::AuxiliaryProcess::protectedParentProcessConnection(*(this + 11), &v6);
  v4 = *(this + 34);
  v5 = &v4;
  IPC::Connection::send<Messages::NetworkProcessProxy::ProcessHasUnresponseServiceWorker>(v6, &v5, 0, 0, 0);
  v2 = v6;
  v6 = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return WebKit::NetworkConnectionToWebProcess::closeSWContextConnection(this);
}

uint64_t IPC::Connection::send<Messages::NetworkProcessProxy::ProcessHasUnresponseServiceWorker>(uint64_t *a1, void **a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = IPC::Encoder::operator new(0x238, a2);
  *v10 = 548;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 1) = a3;
  *(v10 + 68) = 0;
  *(v10 + 70) = 0;
  *(v10 + 69) = 0;
  IPC::Encoder::encodeHeader(v10);
  v17 = v10;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v10, **a2);
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

uint64_t WebKit::NetworkConnectionToWebProcess::createNewMessagePortChannel(uint64_t a1, void *a2, void *a3)
{
  WTF::HashTable<WebCore::MessagePortIdentifier,WebCore::MessagePortIdentifier,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::MessagePortIdentifier>,WTF::HashTraits<WebCore::MessagePortIdentifier>,WTF::HashTraits<WebCore::MessagePortIdentifier>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(v8, (a1 + 280), a2);
  WTF::HashTable<WebCore::MessagePortIdentifier,WebCore::MessagePortIdentifier,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::MessagePortIdentifier>,WTF::HashTraits<WebCore::MessagePortIdentifier>,WTF::HashTraits<WebCore::MessagePortIdentifier>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(v8, (a1 + 280), a3);
  v5 = *(a1 + 88);
  ++*(v5 + 336);
  result = WebCore::MessagePortChannelRegistry::didCreateMessagePortChannel();
  v7 = *(v5 + 336);
  if (v7)
  {
    *(v5 + 336) = v7 - 1;
  }

  else
  {
    result = 290;
    __break(0xC471u);
  }

  return result;
}

_DWORD *WebKit::NetworkConnectionToWebProcess::entangleLocalPortInThisProcessToRemote(void *a1, uint64_t *a2)
{
  WTF::HashTable<WebCore::MessagePortIdentifier,WebCore::MessagePortIdentifier,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::MessagePortIdentifier>,WTF::HashTraits<WebCore::MessagePortIdentifier>,WTF::HashTraits<WebCore::MessagePortIdentifier>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(v12, a1 + 35, a2);
  v4 = a1[11];
  ++*(v4 + 336);
  WebCore::MessagePortChannelRegistry::didEntangleLocalToRemote();
  v5 = *(v4 + 336);
  if (!v5)
  {
    goto LABEL_11;
  }

  *(v4 + 336) = v5 - 1;
  v6 = a1[11];
  ++*(v6 + 336);
  result = WebCore::MessagePortChannelRegistry::existingChannelContainingPort();
  if (!result)
  {
    v11 = *(v6 + 336);
    if (v11)
    {
      *(v6 + 336) = v11 - 1;
      return result;
    }

LABEL_11:
    __break(0xC471u);
    JUMPOUT(0x19DC2E12CLL);
  }

  v8 = result + 2;
  ++result[2];
  v9 = *(v6 + 336);
  if (!v9)
  {
    goto LABEL_11;
  }

  *(v6 + 336) = v9 - 1;
  if (WebCore::MessagePortChannel::hasAnyMessagesPendingOrInFlight(result))
  {
    v10 = a1[10];
    v12[0] = a2;
    IPC::Connection::send<Messages::NetworkProcessConnection::MessagesAvailableForPort>(v10, v12);
  }

  return WTF::RefCounted<WebCore::MessagePortChannel>::deref(v8);
}

IPC::Encoder *IPC::Connection::send<Messages::NetworkProcessConnection::MessagesAvailableForPort>(uint64_t *a1, uint64_t **a2)
{
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 518;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::ArgumentCoder<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode(v4, *a2);
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

uint64_t WebKit::NetworkConnectionToWebProcess::messagePortDisentangled(uint64_t a1, uint64_t *a2)
{
  if (!*(a1 + 280))
  {
    goto LABEL_26;
  }

  WTF::checkHashTableKey<WebCore::MessagePortIdentifier,WebCore::MessagePortIdentifier,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::MessagePortIdentifier>,WTF::HashTraits<WebCore::MessagePortIdentifier>,WTF::HashTraits<WebCore::MessagePortIdentifier>,WTF::IdentityHashTranslator<WTF::HashTraits<WebCore::MessagePortIdentifier>,WTF::DefaultHash<WebCore::MessagePortIdentifier>>,(WTF::ShouldValidateKey)1,WebCore::MessagePortIdentifier>(*a2, a2[1]);
  v4 = *(a1 + 280);
  if (!v4)
  {
    goto LABEL_26;
  }

  v5 = *(v4 - 8);
  v6 = WTF::IdentityHashTranslator<WTF::HashTraits<WebCore::MessagePortIdentifier>,WTF::DefaultHash<WebCore::MessagePortIdentifier>>::hash<WebCore::MessagePortIdentifier>(a2);
  v7 = a2[1];
  v8 = v6 & v5;
  v9 = (v4 + 16 * (v6 & v5));
  v10 = *v9;
  v11 = v9[1];
  if (*v9 == *a2 && v11 == v7)
  {
LABEL_14:
    v15 = *(a1 + 280);
    if (!v15)
    {
      v16 = 0;
LABEL_19:
      if (v16 != v9)
      {
        *v9 = -1;
        v17 = vadd_s32(*(v15 - 16), 0xFFFFFFFF00000001);
        *(v15 - 16) = v17;
        v18 = *(v15 - 4);
        if (6 * v17.i32[1] < v18 && v18 >= 9)
        {
          WTF::HashTable<WebCore::MessagePortIdentifier,WebCore::MessagePortIdentifier,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::MessagePortIdentifier>,WTF::HashTraits<WebCore::MessagePortIdentifier>,WTF::HashTraits<WebCore::MessagePortIdentifier>,WTF::FastMalloc>::rehash((a1 + 280), v18 >> 1, 0);
        }
      }

      goto LABEL_26;
    }

LABEL_18:
    v16 = (v15 + 16 * *(v15 - 4));
    if (v16 == v9)
    {
      goto LABEL_26;
    }

    goto LABEL_19;
  }

  v13 = 1;
  while (v10 | v11)
  {
    v8 = (v8 + v13) & v5;
    v9 = (v4 + 16 * v8);
    v10 = *v9;
    v11 = v9[1];
    ++v13;
    if (*v9 == *a2 && v11 == v7)
    {
      goto LABEL_14;
    }
  }

  v15 = *(a1 + 280);
  if (v15)
  {
    v9 = (v15 + 16 * *(v15 - 4));
    goto LABEL_18;
  }

LABEL_26:
  v20 = *(a1 + 88);
  ++*(v20 + 336);
  result = WebCore::MessagePortChannelRegistry::didDisentangleMessagePort();
  v22 = *(v20 + 336);
  if (v22)
  {
    *(v20 + 336) = v22 - 1;
  }

  else
  {
    result = 290;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::NetworkConnectionToWebProcess::messagePortClosed(uint64_t a1)
{
  v1 = *(a1 + 88);
  ++*(v1 + 336);
  result = WebCore::MessagePortChannelRegistry::didCloseMessagePort();
  v3 = *(v1 + 336);
  if (v3)
  {
    *(v1 + 336) = v3 - 1;
  }

  else
  {
    result = 290;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::NetworkConnectionToWebProcess::takeAllMessagesForPort(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *(a1 + 88);
  ++*(v4 + 336);
  ++*(a1 + 20);
  v5 = *a3;
  *a3 = 0;
  v6 = WTF::fastMalloc(0x20);
  *v6 = &unk_1F10FF9C0;
  v6[1] = a1;
  v6[2] = a1;
  v6[3] = v5;
  v9 = v6;
  WebCore::MessagePortChannelRegistry::takeAllMessagesForPort();
  result = v9;
  if (v9)
  {
    result = (*(*v9 + 8))(v9);
  }

  v8 = *(v4 + 336);
  if (v8)
  {
    *(v4 + 336) = v8 - 1;
  }

  else
  {
    result = 290;
    __break(0xC471u);
  }

  return result;
}

void WebKit::NetworkConnectionToWebProcess::didDeliverMessagePortMessages(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 288);
  if (v2)
  {
    if (a2 == -1 || !a2)
    {
      __break(0xC471u);
      JUMPOUT(0x19DC2E63CLL);
    }

    v3 = *(v2 - 8);
    v4 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
    v5 = 9 * ((v4 + ~(v4 << 13)) ^ ((v4 + ~(v4 << 13)) >> 8));
    v6 = (v5 ^ (v5 >> 15)) + ~((v5 ^ (v5 >> 15)) << 27);
    v7 = v3 & ((v6 >> 31) ^ v6);
    v8 = *(v2 + 16 * v7);
    if (v8 != a2)
    {
      v15 = 1;
      while (v8)
      {
        v7 = (v7 + v15) & v3;
        v8 = *(v2 + 16 * v7);
        ++v15;
        if (v8 == a2)
        {
          goto LABEL_5;
        }
      }

      v7 = *(v2 - 4);
    }

LABEL_5:
    v9 = *(v2 - 4);
    if (v7 != v9)
    {
      v10 = (v2 + 16 * v7);
      v11 = v10[1];
      *v10 = -1;
      v10[1] = 0;
      v12 = vadd_s32(*(v2 - 16), 0xFFFFFFFF00000001);
      *(v2 - 16) = v12;
      if (6 * v12.i32[1] < v9 && v9 >= 9)
      {
        WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(void)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(void)>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(void)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CompletionHandler<void ()(void)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash((a1 + 288), v9 >> 1);
      }

      if (v11)
      {
        (*(*v11 + 16))(v11);
        v14 = *(*v11 + 8);

        v14(v11);
      }
    }
  }
}

uint64_t *WebKit::NetworkConnectionToWebProcess::postMessageToRemote(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *(a1 + 88);
  ++*(v5 + 336);
  result = WebCore::MessagePortChannelRegistry::didPostMessageToRemote();
  v7 = *(v5 + 336);
  if (!v7)
  {
    goto LABEL_15;
  }

  *(v5 + 336) = v7 - 1;
  if (!result)
  {
    return result;
  }

  v8 = *(a1 + 88);
  ++*(v8 + 336);
  v9 = WebCore::MessagePortChannelRegistry::existingChannelContainingPort();
  v10 = v9;
  if (v9)
  {
    ++*(v9 + 8);
  }

  v11 = *(v8 + 336);
  if (!v11)
  {
LABEL_15:
    __break(0xC471u);
    JUMPOUT(0x19DC2E7B4);
  }

  *(v8 + 336) = v11 - 1;
  result = WebCore::MessagePortChannel::processForPort();
  if (v12)
  {
    v13 = *(a1 + 88);
    v16 = result;
    result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::lookup<WTF::HashMapTranslatorAdapter<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>( (v13 + 152),  &v16);
    if (result)
    {
      v14 = result[1];
      if (v14)
      {
        ++*(v14 + 20);
        v15 = *(v14 + 80);
        v16 = a3;
        result = IPC::Connection::send<Messages::NetworkProcessConnection::MessagesAvailableForPort>(v15, &v16);
        if (*(v14 + 20) == 1)
        {
          result = (*(*v14 + 8))(v14);
        }

        else
        {
          --*(v14 + 20);
        }
      }
    }
  }

  if (v10)
  {
    return WTF::RefCounted<WebCore::MessagePortChannel>::deref((v10 + 8));
  }

  return result;
}

uint64_t IPC::Connection::send<Messages::NetworkProcessConnection::BroadcastConsoleMessage>(uint64_t *a1, void *a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = IPC::Encoder::operator new(0x238, a2);
  *v10 = 509;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 1) = a3;
  *(v10 + 68) = 0;
  *(v10 + 70) = 0;
  *(v10 + 69) = 0;
  IPC::Encoder::encodeHeader(v10);
  v17 = v10;
  Messages::NetworkProcessConnection::BroadcastConsoleMessage::encode<IPC::Encoder>(a2, v10);
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

uint64_t WebKit::NetworkConnectionToWebProcess::setResourceLoadSchedulingMode(uint64_t a1, uint64_t a2, int a3)
{
  v5 = *(a1 + 88);
  v11 = *(a1 + 96);
  result = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v5 + 240), &v11);
  if (result)
  {
    v8 = result;
    ++*(result + 16);
    WebKit::NetworkSession::protectedNetworkLoadScheduler(result, v7, &v11);
    result = WebKit::NetworkLoadScheduler::setResourceLoadSchedulingMode(v11, a2, a3);
    v9 = v11;
    v11 = 0;
    if (v9)
    {
      result = WTF::RefCounted<WebKit::NetworkLoadScheduler>::deref(v9 + 2);
    }

    v10 = *(v8 + 16);
    if (v10)
    {
      *(v8 + 16) = v10 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  return result;
}

uint64_t WebKit::NetworkConnectionToWebProcess::prioritizeResourceLoads(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 88);
  v19 = *(a1 + 96);
  result = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v4 + 240), &v19);
  if (result)
  {
    v7 = result;
    ++*(result + 16);
    v19 = 0;
    v20 = 0;
    v8 = *(a2 + 12);
    if (v8)
    {
      v9 = *a2;
      v10 = 8 * v8;
      do
      {
        v21 = *v9;
        v11 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>((a1 + 112), &v21);
        if (v11)
        {
          v12 = v11;
          v13 = *(v11 + 20);
          *(v11 + 20) = v13 + 1;
          v14 = *(v11 + 4152);
          if (v14)
          {
            v21 = *(v11 + 4152);
            v15 = HIDWORD(v20);
            if (HIDWORD(v20) == v20)
            {
              WTF::Vector<WebKit::NetworkLoad *,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::NetworkLoad *>(&v19, &v21);
              v13 = v12[5] - 1;
            }

            else
            {
              *(v19 + HIDWORD(v20)) = v14;
              HIDWORD(v20) = v15 + 1;
            }
          }

          if (v13)
          {
            v12[5] = v13;
          }

          else
          {
            (*(*v12 + 24))(v12);
          }
        }

        ++v9;
        v10 -= 8;
      }

      while (v10);
    }

    WebKit::NetworkSession::protectedNetworkLoadScheduler(v7, v6, &v21);
    WebKit::NetworkLoadScheduler::prioritizeLoads(v21, &v19);
    v17 = v21;
    v21 = 0;
    if (v17)
    {
      WTF::RefCounted<WebKit::NetworkLoadScheduler>::deref(v17 + 2);
    }

    result = v19;
    if (v19)
    {
      v19 = 0;
      LODWORD(v20) = 0;
      result = WTF::fastFree(result, v16);
    }

    v18 = *(v7 + 4);
    if (v18)
    {
      *(v7 + 4) = v18 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  return result;
}

uint64_t WebKit::NetworkConnectionToWebProcess::takeNetworkResourceLoader@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if ((a2 - 1) < 0xFFFFFFFFFFFFFFFELL)
  {
    return WebKit::NetworkResourceLoadMap::take(result + 112, a2, a3);
  }

  *a3 = 0;
  return result;
}

uint64_t *WebKit::NetworkConnectionToWebProcess::installMockContentFilter(WebCore::MockContentFilterSettings *a1, uint64_t a2)
{
  v3 = WebCore::MockContentFilterSettings::singleton(a1);
  *v3 = *a2;
  v4 = (v3 + 16);
  WTF::String::operator=((v3 + 8), (a2 + 8));

  return WTF::String::operator=(v4, (a2 + 16));
}

uint64_t WebKit::NetworkConnectionToWebProcess::useRedirectionForCurrentNavigation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a2;
  result = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>((a1 + 112), &v7);
  if (result)
  {
    v5 = result;
    ++*(result + 20);
    result = WebKit::NetworkResourceLoader::useRedirectionForCurrentNavigation(result, a3);
    if (v5[5] == 1)
    {
      v6 = *(*v5 + 24);

      return v6(v5);
    }

    else
    {
      --v5[5];
    }
  }

  return result;
}

uint64_t WebKit::NetworkConnectionToWebProcess::navigatorSubscribeToPushService(uint64_t a1, const WTF::URL *a2, uint64_t a3, uint64_t *a4)
{
  v8 = *(a1 + 88);
  v23[0] = *(a1 + 96);
  v9 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v8 + 240), v23);
  if (v9)
  {
    v10 = v9;
    ++*(v9 + 16);
    WebCore::RegistrableDomain::RegistrableDomain(v23, a2);
    v11 = *(v10 + 1080);
    WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a1 + 64), a1 + 56);
    v12 = *(a1 + 64);
    atomic_fetch_add(v12, 1u);
    v13 = *a4;
    *a4 = 0;
    v14 = v23[0];
    v23[0] = 0;
    v15 = WTF::fastMalloc(0x20);
    *v15 = &unk_1F10FF9E8;
    v15[1] = v12;
    v15[2] = v13;
    v15[3] = v14;
    v22 = v15;
    WebKit::NetworkNotificationManager::subscribeToPushService(v11, a2, a3, &v22);
    v17 = v22;
    v22 = 0;
    if (v17)
    {
      (*(*v17 + 8))(v17);
    }

    result = v23[0];
    v23[0] = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v16);
    }

    v19 = *(v10 + 16);
    if (v19)
    {
      *(v10 + 16) = v19 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    LOBYTE(v23[0]) = 8;
    v24 = 1;
    v20 = *a4;
    *a4 = 0;
    (*(*v20 + 16))(v20, v23);
    (*(*v20 + 8))(v20);
    return std::experimental::fundamentals_v3::expected<WebCore::PushSubscriptionData,WebCore::ExceptionData>::~expected(v23, v21);
  }

  return result;
}

uint64_t WebKit::NetworkConnectionToWebProcess::navigatorUnsubscribeFromPushService(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = *(a1 + 88);
  v14[0] = *(a1 + 96);
  v8 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v7 + 240), v14);
  if (v8)
  {
    v9 = v8;
    ++*(v8 + 16);
    result = WebKit::NetworkNotificationManager::unsubscribeFromPushService(*(v8 + 1080), a2, *a3, 1, a4);
    v11 = *(v9 + 16);
    if (v11)
    {
      *(v9 + 16) = v11 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    LOBYTE(v14[0]) = 8;
    v15 = 1;
    v12 = *a4;
    *a4 = 0;
    (*(*v12 + 16))(v12, v14);
    (*(*v12 + 8))(v12);
    return mpark::detail::move_constructor<mpark::detail::traits<BOOL,WebCore::ExceptionData>,(mpark::detail::Trait)1>::~move_constructor(v14, v13);
  }

  return result;
}

uint64_t WebKit::NetworkConnectionToWebProcess::navigatorGetPushSubscription(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 88);
  v15 = *(a1 + 96);
  v6 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v5 + 240), &v15);
  if (v6)
  {
    v7 = v6;
    ++*(v6 + 16);
    result = WebKit::NetworkNotificationManager::getPushSubscription(*(v6 + 1080), a2, a3);
    v9 = *(v7 + 16);
    if (v9)
    {
      *(v7 + 16) = v9 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    LOBYTE(v15) = 8;
    v24 = 1;
    v10 = *a3;
    *a3 = 0;
    (*(*v10 + 16))(v10, &v15);
    result = (*(*v10 + 8))(v10);
    if (v24 == 255)
    {
      return result;
    }

    if (!v24)
    {
      if (v23 != 1)
      {
        return result;
      }

      v12 = v21;
      if (v21)
      {
        v21 = 0;
        v22 = 0;
        WTF::fastFree(v12, v11);
      }

      v13 = v19;
      if (v19)
      {
        v19 = 0;
        v20 = 0;
        WTF::fastFree(v13, v11);
      }

      v14 = v17;
      if (v17)
      {
        v17 = 0;
        v18 = 0;
        WTF::fastFree(v14, v11);
      }
    }

    result = v16;
    v16 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v11);
    }
  }

  return result;
}

uint64_t WebKit::NetworkConnectionToWebProcess::navigatorGetPushPermissionState(uint64_t a1, WebCore::SecurityOriginData *a2, uint64_t *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 88);
  v19 = *(a1 + 96);
  v6 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v5 + 240), &v19);
  if (v6)
  {
    v8 = v6;
    ++*(v6 + 16);
    v9 = *(v6 + 1080);
    WebCore::SecurityOriginData::fromURL(&v19, a2, v7);
    v10 = *a3;
    *a3 = 0;
    v11 = WTF::fastMalloc(0x10);
    *v11 = &unk_1F10FFA38;
    v11[1] = v10;
    v18 = v11;
    WebKit::NetworkNotificationManager::getPermissionState(v9, &v19, &v18);
    result = v18;
    v18 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    if (!v22)
    {
      v14 = v20;
      v20 = 0;
      if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v12);
      }

      result = v19;
      v19 = 0;
      if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v12);
      }
    }

    v15 = *(v8 + 16);
    if (v15)
    {
      *(v8 + 16) = v15 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    LOBYTE(v19) = 8;
    v21 = 1;
    v16 = *a3;
    *a3 = 0;
    (*(*v16 + 16))(v16, &v19);
    (*(*v16 + 8))(v16);
    return mpark::detail::move_constructor<mpark::detail::traits<BOOL,WebCore::ExceptionData>,(mpark::detail::Trait)1>::~move_constructor(&v19, v17);
  }

  return result;
}

void *WebKit::NetworkConnectionToWebProcess::initializeWebTransportSession(unsigned int *a1, WTF *this, uint64_t *a3, __int128 *a4, uint64_t *a5)
{
  if ((*(this + 8) & 1) != 0 && WTF::portAllowed(this, this) && !WebCore::isIPAddressDisallowed(this, v10))
  {
    WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a1 + 16, (a1 + 14));
    v14 = *(a1 + 8);
    atomic_fetch_add(v14, 1u);
    v15 = *a5;
    *a5 = 0;
    v16 = WTF::fastMalloc(0x18);
    *v16 = &unk_1F10FFA60;
    v16[1] = v14;
    v16[2] = v15;
    v17 = v16;
    WebKit::NetworkTransportSession::initialize(a1, this, a3, a4, &v17);
    result = v17;
    v17 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  else
  {
    v11 = *a5;
    *a5 = 0;
    (*(*v11 + 16))(v11, 0, 0);
    v12 = *(*v11 + 8);

    return v12(v11);
  }

  return result;
}

_DWORD *WebKit::NetworkConnectionToWebProcess::destroyWebTransportSession(_DWORD *result, uint64_t a2)
{
  v2 = *(result + 45);
  if (v2)
  {
    if (a2 == -1 || !a2)
    {
      __break(0xC471u);
      JUMPOUT(0x19DC2F630);
    }

    v3 = result;
    v4 = *(v2 - 8);
    v5 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
    v6 = 9 * ((v5 + ~(v5 << 13)) ^ ((v5 + ~(v5 << 13)) >> 8));
    v7 = (v6 ^ (v6 >> 15)) + ~((v6 ^ (v6 >> 15)) << 27);
    v8 = v4 & ((v7 >> 31) ^ v7);
    v9 = *(v2 + 16 * v8);
    if (v9 != a2)
    {
      v10 = 1;
      while (v9)
      {
        v8 = (v8 + v10) & v4;
        v9 = *(v2 + 16 * v8);
        ++v10;
        if (v9 == a2)
        {
          goto LABEL_10;
        }
      }

      v8 = *(v2 - 4);
    }

LABEL_10:
    if (v8 != *(v2 - 4))
    {
      v11 = (v2 + 16 * v8);
      result = v11[1];
      *v11 = -1;
      v11[1] = 0;
      if (result)
      {
        if (result[4] == 1)
        {
          result = (*(*result + 24))(result);
        }

        else
        {
          --result[4];
        }
      }

      v12 = *(v3 + 45);
      v13 = vadd_s32(*(v12 - 16), 0xFFFFFFFF00000001);
      *(v12 - 16) = v13;
      v14 = *(v12 - 4);
      if (6 * v13.i32[1] < v14 && v14 >= 9)
      {

        return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkTransportSession,WTF::RawPtrTraits<WebKit::NetworkTransportSession>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportSession>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkTransportSession,WTF::RawPtrTraits<WebKit::NetworkTransportSession>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportSession>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkTransportSession,WTF::RawPtrTraits<WebKit::NetworkTransportSession>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportSession>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkTransportSession,WTF::RawPtrTraits<WebKit::NetworkTransportSession>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportSession>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(v3 + 45, v14 >> 1);
      }
    }
  }

  return result;
}

uint64_t WebKit::NetworkConnectionToWebProcess::clearFrameLoadRecordsForStorageAccess(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 + 88);
  v11 = *(a1 + 96);
  result = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v3 + 240), &v11);
  if (result)
  {
    v6 = result;
    v7 = *(result + 16) + 1;
    *(result + 16) = v7;
    v8 = *(result + 72);
    if (v8)
    {
      while (1)
      {
        v9 = *v8;
        if ((*v8 & 1) == 0)
        {
          break;
        }

        v10 = *v8;
        atomic_compare_exchange_strong_explicit(v8, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v10 == v9)
        {
          goto LABEL_5;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v8);
LABEL_5:
      WebKit::WebResourceLoadStatisticsStore::clearFrameLoadRecordsForStorageAccess(v8, a2, v5);
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v8);
      v7 = *(v6 + 16);
    }

    if (v7)
    {
      *(v6 + 16) = v7 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  return result;
}

uint64_t WebKit::NetworkConnectionToWebProcess::updateSharedPreferencesForWebProcess(uint64_t a1, __int128 *a2)
{
  v3 = a1 + 328;
  v4 = *a2;
  *(a1 + 343) = *(a2 + 15);
  *(a1 + 328) = v4;
  v5 = *(a1 + 88);
  v9 = *(a1 + 96);
  result = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v5 + 240), &v9);
  if (result)
  {
    v7 = result;
    ++*(result + 16);
    result = WebKit::NetworkStorageManager::updateSharedPreferencesForConnection(*(result + 1048), *(a1 + 80), v3);
    v8 = *(v7 + 16);
    if (v8)
    {
      *(v7 + 16) = v8 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  return result;
}

uint64_t WebKit::NetworkConnectionToWebProcess::shouldOffloadIFrameForHost(void *a1, uint64_t a2, uint64_t *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = qword_1ED641170;
  if (os_log_type_enabled(qword_1ED641170, OS_LOG_TYPE_DEFAULT))
  {
    v6 = a1[34];
    WTF::String::utf8();
    v7 = v17 ? v17 + 16 : 0;
    *buf = 134218499;
    *&buf[4] = a1;
    v19 = 2048;
    v20 = v6;
    v21 = 2085;
    v22 = v7;
    _os_log_impl(&dword_19D52D000, v5, OS_LOG_TYPE_DEFAULT, "%p - [webProcessIdentifier=%llu] NetworkConnectionToWebProcess::shouldOffloadIFrameForHost: (host=%{sensitive}s)", buf, 0x20u);
    if (v17)
    {
      if (*v17 == 1)
      {
        WTF::fastFree(v17, v8);
      }

      else
      {
        --*v17;
      }
    }
  }

  v9 = a1[11];
  *buf = a1[12];
  v10 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v9 + 240), buf);
  if (v10)
  {
    v11 = v10;
    ++*(v10 + 4);
    v12 = WebKit::NetworkSession::protectedResourceMonitorThrottler(v10, buf);
    v13 = *buf;
    WTF::ContinuousApproximateTime::now(v12);
    result = WebCore::ResourceMonitorThrottlerHolder::tryAccess();
    if (v13)
    {
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ResourceMonitorThrottlerHolder,(WTF::DestructionThread)1>::deref(v13);
    }

    v15 = *(v11 + 4);
    if (v15)
    {
      *(v11 + 4) = v15 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    v16 = *a3;
    *a3 = 0;
    (*(*v16 + 16))(v16, 0);
    return (*(*v16 + 8))(v16);
  }

  return result;
}

void WebKit::NetworkContentRuleListManager::~NetworkContentRuleListManager(WebKit::NetworkContentRuleListManager *this, void *a2)
{
  v3 = *(this + 1);
  *(this + 1) = 0;
  if (v3)
  {
    if (*(v3 - 12))
    {
      v17 = 0;
      v4 = *(v3 - 4);
      v5 = v3;
      if (v4)
      {
        v6 = 24 * v4;
        v5 = v3;
        while ((*v5 + 1) <= 1)
        {
          v5 += 24;
          v6 -= 24;
          if (!v6)
          {
            goto LABEL_17;
          }
        }
      }

      v7 = v3 + 24 * v4;
      if (v7 != v5)
      {
        do
        {
          v8 = *(v5 + 20);
          if (v8)
          {
            v9 = *(v5 + 8);
            v10 = 8 * v8;
            do
            {
              v11 = *v9;
              *v9++ = 0;
              (*(*v11 + 16))(v11, &v17);
              (*(*v11 + 8))(v11);
              v10 -= 8;
            }

            while (v10);
          }

          do
          {
            v5 += 24;
          }

          while (v5 != v7 && (*v5 + 1) <= 1);
        }

        while (v5 != v7);
        if (v17)
        {
          WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Ref<WebCore::ContentExtensions::ContentExtension,WTF::RawPtrTraits<WebCore::ContentExtensions::ContentExtension>,WTF::DefaultRefDerefTraits<WebCore::ContentExtensions::ContentExtension>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Ref<WebCore::ContentExtensions::ContentExtension,WTF::RawPtrTraits<WebCore::ContentExtensions::ContentExtension>,WTF::DefaultRefDerefTraits<WebCore::ContentExtensions::ContentExtension>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Ref<WebCore::ContentExtensions::ContentExtension,WTF::RawPtrTraits<WebCore::ContentExtensions::ContentExtension>,WTF::DefaultRefDerefTraits<WebCore::ContentExtensions::ContentExtension>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WebCore::ContentExtensions::ContentExtension,WTF::RawPtrTraits<WebCore::ContentExtensions::ContentExtension>,WTF::DefaultRefDerefTraits<WebCore::ContentExtensions::ContentExtension>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v17, a2);
        }
      }
    }

LABEL_17:
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WTF::CompletionHandler<void ()(WebCore::ContentExtensions::ContentExtensionsBackend &)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WTF::CompletionHandler<void ()(WebCore::ContentExtensions::ContentExtensionsBackend &)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WTF::CompletionHandler<void ()(WebCore::ContentExtensions::ContentExtensionsBackend &)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Vector<WTF::CompletionHandler<void ()(WebCore::ContentExtensions::ContentExtensionsBackend &)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  v12 = *(this + 2);
  *(this + 2) = 0;
  if (v12 && atomic_fetch_add(v12, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v12);
    WTF::fastFree(v12, a2);
  }

  v13 = *(this + 1);
  if (v13)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WTF::CompletionHandler<void ()(WebCore::ContentExtensions::ContentExtensionsBackend &)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WTF::CompletionHandler<void ()(WebCore::ContentExtensions::ContentExtensionsBackend &)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WTF::CompletionHandler<void ()(WebCore::ContentExtensions::ContentExtensionsBackend &)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Vector<WTF::CompletionHandler<void ()(WebCore::ContentExtensions::ContentExtensionsBackend &)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v13, a2);
  }

  v14 = *this;
  if (*this)
  {
    v15 = *(v14 - 4);
    if (v15)
    {
      v16 = (v14 + 8);
      do
      {
        if (*(v16 - 1) != -1)
        {
          std::unique_ptr<WebCore::ContentExtensions::ContentExtensionsBackend>::reset[abi:sn200100](v16, 0);
        }

        v16 += 2;
        --v15;
      }

      while (v15);
    }

    WTF::fastFree((v14 - 16), a2);
  }
}

uint64_t WebKit::NetworkContentRuleListManager::ref(uint64_t this)
{
  v1 = *(*(this + 16) + 8);
  if (v1)
  {
    atomic_fetch_add((v1 + 144), 1u);
  }

  else
  {
    this = 92;
    __break(0xC471u);
  }

  return this;
}

uint64_t WebKit::NetworkContentRuleListManager::deref(WebKit::NetworkContentRuleListManager *this)
{
  result = *(*(this + 2) + 8);
  if (result)
  {
    if (atomic_fetch_add((result + 144), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, (result + 144));
      return (*(*result + 24))();
    }
  }

  else
  {
    result = 92;
    __break(0xC471u);
  }

  return result;
}

atomic_ullong *WebKit::NetworkContentRuleListManager::contentExtensionsBackend(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v43 = a2;
  v5 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::ContentExtensions::ContentExtensionsBackend>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::ContentExtensions::ContentExtensionsBackend>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::ContentExtensions::ContentExtensionsBackend>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebCore::ContentExtensions::ContentExtensionsBackend>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::ContentExtensions::ContentExtensionsBackend>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebCore::ContentExtensions::ContentExtensionsBackend>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1, &v43);
  v8 = *a1;
  if (*a1)
  {
    v8 += 16 * *(v8 - 4);
  }

  if (v8 != v5)
  {
    v9 = *(v5 + 8);
    v10 = *a3;
    *a3 = 0;
    (*(*v10 + 16))(v10, v9);
    return (*(*v10 + 8))(v10);
  }

  v12 = v43;
  if (v43 == -1)
  {
LABEL_45:
    __break(0xC471u);
    JUMPOUT(0x19DC2FFECLL);
  }

  if (!v43)
  {
    __break(0xC471u);
    JUMPOUT(0x19DC3000CLL);
  }

  v13 = a1[1];
  if (!v13)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WTF::CompletionHandler<void ()(WebCore::ContentExtensions::ContentExtensionsBackend &)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WTF::CompletionHandler<void ()(WebCore::ContentExtensions::ContentExtensionsBackend &)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WTF::CompletionHandler<void ()(WebCore::ContentExtensions::ContentExtensionsBackend &)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Vector<WTF::CompletionHandler<void ()(WebCore::ContentExtensions::ContentExtensionsBackend &)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(a1 + 1, 0);
    v13 = a1[1];
    v12 = v43;
  }

  v14 = *(v13 - 8);
  v15 = (v12 + ~(v12 << 32)) ^ ((v12 + ~(v12 << 32)) >> 22);
  v16 = 9 * ((v15 + ~(v15 << 13)) ^ ((v15 + ~(v15 << 13)) >> 8));
  v17 = (v16 ^ (v16 >> 15)) + ~((v16 ^ (v16 >> 15)) << 27);
  v18 = v14 & ((v17 >> 31) ^ v17);
  v19 = (v13 + 24 * v18);
  v20 = *v19;
  if (!*v19)
  {
LABEL_17:
    *v19 = v12;
    v23 = *(v19 + 5);
    v24 = v19[1];
    if (v23)
    {
      v25 = 8 * v23;
      do
      {
        v26 = *v24;
        *v24 = 0;
        if (v26)
        {
          (*(*v26 + 8))(v26);
        }

        v24 = (v24 + 8);
        v25 -= 8;
      }

      while (v25);
      v24 = v19[1];
    }

    if (v24)
    {
      v19[1] = 0;
      *(v19 + 4) = 0;
      WTF::fastFree(v24, v6);
    }

    *&v7 = 0;
    *v44 = v7;
    v19[1] = 0;
    v19[2] = 0;
    WTF::Vector<WTF::CompletionHandler<void ()(WebCore::ContentExtensions::ContentExtensionsBackend &)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v44, v6);
    v27 = a1[1];
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
        goto LABEL_31;
      }
    }

    else if (3 * v30 > 4 * v29)
    {
      goto LABEL_31;
    }

    v19 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WTF::CompletionHandler<void ()(WebCore::ContentExtensions::ContentExtensionsBackend &)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WTF::CompletionHandler<void ()(WebCore::ContentExtensions::ContentExtensionsBackend &)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WTF::CompletionHandler<void ()(WebCore::ContentExtensions::ContentExtensionsBackend &)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Vector<WTF::CompletionHandler<void ()(WebCore::ContentExtensions::ContentExtensionsBackend &)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(a1 + 1, v19);
    goto LABEL_31;
  }

  v21 = 0;
  v22 = 1;
  while (v20 != v12)
  {
    if (v20 == -1)
    {
      v21 = v19;
    }

    v18 = (v18 + v22) & v14;
    v19 = (v13 + 24 * v18);
    v20 = *v19;
    ++v22;
    if (!*v19)
    {
      if (v21)
      {
        *v21 = 0;
        v21[1] = 0;
        v21[2] = 0;
        --*(a1[1] - 16);
        v12 = v43;
        v19 = v21;
      }

      goto LABEL_17;
    }
  }

LABEL_31:
  v31 = *(v19 + 5);
  if (v31 == *(v19 + 4))
  {
    a3 = WTF::Vector<WTF::CompletionHandler<void ()(WebCore::ContentExtensions::ContentExtensionsBackend &)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(v19 + 2, v31 + 1, a3);
    v31 = *(v19 + 5);
  }

  v32 = (v19[1] + 8 * v31);
  v33 = *a3;
  *a3 = 0;
  *v32 = v33;
  *(v19 + 5) = v31 + 1;
  v34 = *(a1[2] + 8);
  if (!v34)
  {
    goto LABEL_45;
  }

  atomic_fetch_add(v34 + 36, 1u);
  WebKit::AuxiliaryProcess::protectedParentProcessConnection(v34, &v42);
  v35 = v42;
  v37 = IPC::Encoder::operator new(0x238, v36);
  *v37 = 521;
  *(v37 + 68) = 0;
  *(v37 + 70) = 0;
  *(v37 + 69) = 0;
  *(v37 + 2) = 0;
  *(v37 + 3) = 0;
  *(v37 + 1) = 0;
  IPC::Encoder::encodeHeader(v37);
  v44[0] = v37;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v37, v43);
  IPC::Connection::sendMessageImpl(v35, v44, 0, 0);
  v39 = v44[0];
  v44[0] = 0;
  if (v39)
  {
    IPC::Encoder::~Encoder(v39, v38);
    bmalloc::api::tzoneFree(v40, v41);
  }

  result = v42;
  v42 = 0;
  if (result)
  {
    result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(result);
  }

  if (atomic_fetch_add(v34 + 36, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v34 + 36);
    return (*(*v34 + 24))(v34);
  }

  return result;
}

uint64_t WebKit::NetworkContentRuleListManager::addContentRuleLists(uint64_t *a1, void *a2, uint64_t a3, __n128 a4)
{
  if (a2 == -1)
  {
    __break(0xC471u);
    goto LABEL_66;
  }

  if (!a2)
  {
    __break(0xC471u);
    JUMPOUT(0x19DC304D8);
  }

  v7 = *a1;
  if (!*a1)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::ContentExtensions::ContentExtensionsBackend>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::ContentExtensions::ContentExtensionsBackend>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::ContentExtensions::ContentExtensionsBackend>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebCore::ContentExtensions::ContentExtensionsBackend>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(a1, 0);
    v7 = *a1;
  }

  v8 = *(v7 - 8);
  v9 = (a2 + ~(a2 << 32)) ^ ((a2 + ~(a2 << 32)) >> 22);
  v10 = 9 * ((v9 + ~(v9 << 13)) ^ ((v9 + ~(v9 << 13)) >> 8));
  v11 = (v10 ^ (v10 >> 15)) + ~((v10 ^ (v10 >> 15)) << 27);
  v12 = (v11 >> 31) ^ v11;
  v13 = v8 & v12;
  v14 = v7 + 16 * (v8 & v12);
  v15 = *v14;
  if (!*v14)
  {
LABEL_13:
    *v14 = a2;
    if (*MEMORY[0x1E69E25C8])
    {
      NonCompact = bmalloc::api::tzoneAllocateNonCompact(*MEMORY[0x1E69E25C8], a2);
    }

    else
    {
      NonCompact = WebCore::ContentExtensions::ContentExtensionsBackend::operatorNewSlow(8);
    }

    *NonCompact = 0;
    v52[0] = 0;
    std::unique_ptr<WebCore::ContentExtensions::ContentExtensionsBackend>::reset[abi:sn200100]((v14 + 8), NonCompact);
    std::unique_ptr<WebCore::ContentExtensions::ContentExtensionsBackend>::reset[abi:sn200100](v52, 0);
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
    v21 = (*(v19 - 16) + v20);
    v22 = *(v19 - 4);
    if (v22 > 0x400)
    {
      if (v22 > 2 * v21)
      {
        goto LABEL_21;
      }
    }

    else if (3 * v22 > 4 * v21)
    {
      goto LABEL_21;
    }

    v14 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::ContentExtensions::ContentExtensionsBackend>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::ContentExtensions::ContentExtensionsBackend>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::ContentExtensions::ContentExtensionsBackend>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebCore::ContentExtensions::ContentExtensionsBackend>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(a1, v14);
    goto LABEL_21;
  }

  v16 = 0;
  v17 = 1;
  while (v15 != a2)
  {
    if (v15 == -1)
    {
      v16 = v14;
    }

    v13 = (v13 + v17) & v8;
    v14 = v7 + 16 * v13;
    v15 = *v14;
    ++v17;
    if (!*v14)
    {
      if (v16)
      {
        *v16 = 0;
        v16[1] = 0;
        --*(*a1 - 16);
        v14 = v16;
      }

      goto LABEL_13;
    }
  }

LABEL_21:
  v23 = *(v14 + 8);
  v24 = *(a3 + 12);
  if (v24)
  {
    v25 = 120 * v24;
    v26 = *a3;
    do
    {
      v27 = *v26;
      if (*v26)
      {
        atomic_fetch_add_explicit(v27, 2u, memory_order_relaxed);
      }

      v52[0] = v27;
      WebKit::WebCompiledContentRuleList::create(v26, &v50);
      v28 = v50.n128_u64[0];
      if (v50.n128_u64[0])
      {
        v50.n128_u64[0] = 0;
        v51 = v28;
        WebCore::ContentExtensions::ContentExtensionsBackend::addContentExtension();
        v29 = v51;
        v51 = 0;
        if (v29 && atomic_fetch_add(v29 + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v29 + 2);
          (*(*v29 + 8))(v29);
        }

        v30 = v50.n128_u64[0];
        v50.n128_u64[0] = 0;
        if (v30 && atomic_fetch_add(v30 + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v30 + 2);
          (*(*v30 + 8))(v30);
        }
      }

      v31 = v52[0];
      v52[0] = 0;
      if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v31, a2);
      }

      v26 += 15;
      v25 -= 120;
    }

    while (v25);
  }

  v34 = a1[1];
  v33 = a1 + 1;
  v32 = v34;
  if (!v34)
  {
LABEL_55:
    a4.n128_u64[0] = 0;
    *v52 = a4;
    v50 = a4;
    WTF::Vector<WTF::CompletionHandler<void ()(WebCore::ContentExtensions::ContentExtensionsBackend &)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v52, a2);
    goto LABEL_56;
  }

  if (!a2)
  {
    __break(0xC471u);
LABEL_66:
    JUMPOUT(0x19DC304B8);
  }

  v35 = *(v32 - 8);
  v36 = v35 & v12;
  v37 = (v32 + 24 * (v35 & v12));
  v38 = *v37;
  if (*v37 != a2)
  {
    v39 = 1;
    while (v38)
    {
      v36 = (v36 + v39) & v35;
      v37 = (v32 + 24 * v36);
      v38 = *v37;
      ++v39;
      if (*v37 == a2)
      {
        goto LABEL_45;
      }
    }

    v37 = (v32 + 24 * *(v32 - 4));
  }

LABEL_45:
  if ((v32 + 24 * *(v32 - 4)) == v37)
  {
    goto LABEL_55;
  }

  v50.n128_u64[0] = v37[1];
  v40 = v37[2];
  v37[1] = 0;
  v37[2] = 0;
  v50.n128_u64[1] = v40;
  v41 = *v33;
  if (!*v33 || (v41 += 24 * *(v41 - 4), v41 != v37))
  {
    if (v41 != v37)
    {
      *v37 = -1;
      WTF::Vector<WTF::CompletionHandler<void ()(WebCore::ContentExtensions::ContentExtensionsBackend &)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((v37 + 1), a2);
      v42 = *v33;
      v43 = vadd_s32(*(*v33 - 16), 0xFFFFFFFF00000001);
      *(v42 - 16) = v43;
      v44 = *(v42 - 4);
      if (6 * v43.i32[1] < v44 && v44 >= 9)
      {
        WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WTF::CompletionHandler<void ()(WebCore::ContentExtensions::ContentExtensionsBackend &)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WTF::CompletionHandler<void ()(WebCore::ContentExtensions::ContentExtensionsBackend &)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WTF::CompletionHandler<void ()(WebCore::ContentExtensions::ContentExtensionsBackend &)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Vector<WTF::CompletionHandler<void ()(WebCore::ContentExtensions::ContentExtensionsBackend &)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(v33, v44 >> 1, 0);
      }
    }
  }

LABEL_56:
  if (v50.n128_u32[3])
  {
    v46 = v50.n128_u64[0];
    v47 = 8 * v50.n128_u32[3];
    do
    {
      v48 = *v46;
      *v46++ = 0;
      (*(*v48 + 16))(v48, v23);
      (*(*v48 + 8))(v48);
      v47 -= 8;
    }

    while (v47);
  }

  return WTF::Vector<WTF::CompletionHandler<void ()(WebCore::ContentExtensions::ContentExtensionsBackend &)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v50, a2);
}

uint64_t WebKit::NetworkContentRuleListManager::removeContentRuleList(uint64_t *a1, uint64_t a2, const WTF::String *a3)
{
  v7 = a2;
  result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::ContentExtensions::ContentExtensionsBackend>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::ContentExtensions::ContentExtensionsBackend>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::ContentExtensions::ContentExtensionsBackend>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebCore::ContentExtensions::ContentExtensionsBackend>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::ContentExtensions::ContentExtensionsBackend>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebCore::ContentExtensions::ContentExtensionsBackend>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1, &v7);
  v6 = *a1;
  if (*a1)
  {
    v6 += 16 * *(v6 - 4);
  }

  if (v6 != result)
  {
    return WebCore::ContentExtensions::ContentExtensionsBackend::removeContentExtension(*(result + 8), a3);
  }

  return result;
}

uint64_t WebKit::NetworkContentRuleListManager::removeAllContentRuleLists(uint64_t *a1, uint64_t a2)
{
  v5 = a2;
  result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::ContentExtensions::ContentExtensionsBackend>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::ContentExtensions::ContentExtensionsBackend>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::ContentExtensions::ContentExtensionsBackend>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebCore::ContentExtensions::ContentExtensionsBackend>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::ContentExtensions::ContentExtensionsBackend>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebCore::ContentExtensions::ContentExtensionsBackend>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1, &v5);
  v4 = *a1;
  if (*a1)
  {
    v4 += 16 * *(v4 - 4);
  }

  if (v4 != result)
  {
    return WebCore::ContentExtensions::ContentExtensionsBackend::removeAllContentExtensions(*(result + 8));
  }

  return result;
}

WTF::StringImpl ****WebKit::NetworkContentRuleListManager::remove(uint64_t *a1, uint64_t a2)
{
  v5 = a2;
  result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::ContentExtensions::ContentExtensionsBackend>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::ContentExtensions::ContentExtensionsBackend>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::ContentExtensions::ContentExtensionsBackend>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebCore::ContentExtensions::ContentExtensionsBackend>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::ContentExtensions::ContentExtensionsBackend>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebCore::ContentExtensions::ContentExtensionsBackend>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1, &v5);
  if (*a1)
  {
    v4 = *a1 + 16 * *(*a1 - 4);
    if (v4 == result)
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

    v4 = 0;
  }

  if (v4 != result)
  {
    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::ContentExtensions::ContentExtensionsBackend>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::ContentExtensions::ContentExtensionsBackend>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::ContentExtensions::ContentExtensionsBackend>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebCore::ContentExtensions::ContentExtensionsBackend>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(a1, result);
  }

  return result;
}

_DWORD *WebKit::NetworkConnectionToWebProcess::deref(_DWORD *this)
{
  if (this[5] == 1)
  {
    return (*(*this + 8))();
  }

  --this[5];
  return this;
}

uint64_t non-virtual thunk toWebKit::NetworkConnectionToWebProcess::ref(uint64_t this)
{
  ++*(this - 4);
  return this;
}

{
  ++*(this - 20);
  return this;
}

{
  ++*(this - 36);
  return this;
}

uint64_t non-virtual thunk toWebKit::NetworkConnectionToWebProcess::deref(uint64_t this)
{
  if (*(this - 4) == 1)
  {
    return (*(*(this - 24) + 8))();
  }

  --*(this - 4);
  return this;
}

{
  if (*(this - 20) == 1)
  {
    return (*(*(this - 40) + 8))();
  }

  --*(this - 20);
  return this;
}

{
  if (*(this - 36) == 1)
  {
    return (*(*(this - 56) + 8))();
  }

  --*(this - 36);
  return this;
}

uint64_t WebKit::NetworkLoadChecker::operator new(WebKit::NetworkLoadChecker *this, void *a2)
{
  if (this == 1184 && WebKit::NetworkLoadChecker::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::NetworkLoadChecker::s_heapRef, a2);
  }

  else
  {
    return WebKit::NetworkLoadChecker::operatorNewSlow(this);
  }
}

uint64_t std::optional<WebCore::ContentSecurityPolicyResponseHeaders>::operator=[abi:sn200100]<WebCore::ContentSecurityPolicyResponseHeaders,void>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == 1)
  {
    WTF::Vector<std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(a1, a2);
    v6 = *(a2 + 20);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 20) = v6;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::VectorBuffer<unsigned short,0ul,WTF::FastMalloc>::adopt(a1, a2);
    v4 = *(a2 + 16);
    *(a1 + 20) = *(a2 + 20);
    *(a1 + 16) = v4;
    *(a1 + 24) = 1;
  }

  return a1;
}

uint64_t WTF::Vector<std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 12);
  if (v4)
  {
    WTF::VectorDestructor<true,WebCore::SpeechRecognitionAlternativeData>::destruct(*a1, (*a1 + 16 * v4));
  }

  WTF::VectorBuffer<unsigned short,0ul,WTF::FastMalloc>::adopt(a1, a2);
  return a1;
}

uint64_t WTF::Vector<std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(uint64_t result, uint64_t *a2)
{
  v2 = result;
  v3 = *(a2 + 3);
  *result = 0;
  *(result + 8) = 0;
  *(result + 12) = v3;
  if (!v3)
  {
    return v2;
  }

  if (!(v3 >> 28))
  {
    v5 = WTF::fastMalloc((16 * v3));
    *(v2 + 8) = v3;
    *v2 = v5;
    v6 = *(a2 + 3);
    if (v6)
    {
      v7 = *a2;
      v8 = *a2 + 16 * v6;
      do
      {
        v9 = *v7;
        if (*v7)
        {
          atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
        }

        *v5 = v9;
        *(v5 + 8) = *(v7 + 8);
        v5 += 16;
        v7 += 16;
      }

      while (v7 != v8);
    }

    return v2;
  }

  __break(0xC471u);
  return result;
}

void WebCore::SQLiteStatement::operator delete(WebCore::SQLiteStatement *a1)
{
  WebCore::SQLiteStatement::~SQLiteStatement(a1);
  if (atomic_load(v1))
  {
    *v1 = 0;
    *(v1 + 1) = 0;
    *(v1 + 2) = 0;
  }

  else
  {

    bmalloc::api::tzoneFree(v1, v2);
  }
}

uint64_t std::__optional_storage_base<WebCore::PCM::AttributionTriggerData,false>::__construct[abi:sn200100]<WebCore::PCM::AttributionTriggerData>(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = *(a2 + 2);
    *result = *a2;
    *(result + 2) = v2;
    *(result + 8) = 0;
    *(result + 16) = 0;
    if (*(a2 + 16) != 1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  v11 = *(a2 + 8);
  *(a2 + 8) = 0;
  *(result + 8) = v11;
  *(result + 16) = 1;
LABEL_3:
  *(result + 24) = 0;
  *(result + 32) = 0;
  if (*(a2 + 32) == 1)
  {
    v3 = *(a2 + 24);
    *(a2 + 24) = 0;
    *(result + 24) = v3;
    *(result + 32) = 1;
  }

  *(result + 40) = 0;
  *(result + 48) = 0;
  if (*(a2 + 48) == 1)
  {
    v12 = *(a2 + 40);
    *(a2 + 40) = 0;
    *(result + 40) = v12;
    *(result + 48) = 1;
  }

  *(result + 56) = 0;
  *(result + 88) = 0;
  if (*(a2 + 88) == 1)
  {
    v4 = *(a2 + 56);
    *(a2 + 56) = 0;
    *(result + 56) = v4;
    v5 = *(a2 + 64);
    *(a2 + 64) = 0;
    *(result + 64) = v5;
    v6 = *(a2 + 72);
    *(a2 + 72) = 0;
    *(result + 72) = v6;
    v7 = *(a2 + 80);
    *(a2 + 80) = 0;
    *(result + 80) = v7;
    *(result + 88) = 1;
  }

  *(result + 96) = 0;
  *(result + 120) = 0;
  if (*(a2 + 120) == 1)
  {
    v8 = *(a2 + 96);
    *(a2 + 96) = 0;
    *(result + 96) = v8;
    v9 = *(a2 + 104);
    *(a2 + 104) = 0;
    *(result + 104) = v9;
    v10 = *(a2 + 112);
    *(a2 + 112) = 0;
    *(result + 112) = v10;
    *(result + 120) = 1;
  }

  *(result + 128) = 1;
  return result;
}

WTF::StringImpl *std::__optional_storage_base<WebCore::RegistrableDomain,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::RegistrableDomain,false>>(WTF::StringImpl *result, unsigned __int8 *a2)
{
  if (*(result + 8) == a2[8])
  {
    if (*(result + 8))
    {
      v2 = *a2;
      *a2 = 0;
      v3 = *result;
      *result = v2;
      if (v3)
      {
        if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(v3, a2);
        }
      }
    }
  }

  else if (*(result + 8))
  {
    return std::__optional_destruct_base<WTF::String,false>::reset[abi:sn200100](result, a2);
  }

  else
  {
    v4 = *a2;
    *a2 = 0;
    *result = v4;
    *(result + 8) = 1;
  }

  return result;
}

void std::__optional_storage_base<WebCore::PCM::DestinationUnlinkableToken,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::PCM::DestinationUnlinkableToken,false>>(uint64_t a1, WTF::StringImpl *a2)
{
  if (*(a1 + 32) == *(a2 + 32))
  {
    if (*(a1 + 32))
    {
      v4 = *a2;
      *a2 = 0;
      v5 = *a1;
      *a1 = v4;
      if (v5)
      {
        CFRelease(v5);
      }

      v6 = *(a2 + 1);
      *(a2 + 1) = 0;
      v7 = *(a1 + 8);
      *(a1 + 8) = v6;
      if (v7)
      {
        CFRelease(v7);
      }

      v8 = *(a2 + 2);
      *(a2 + 2) = 0;
      v9 = *(a1 + 16);
      *(a1 + 16) = v8;
      if (v9)
      {
        CFRelease(v9);
      }

      v10 = *(a2 + 3);
      *(a2 + 3) = 0;
      v11 = *(a1 + 24);
      *(a1 + 24) = v10;
      if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {

        WTF::StringImpl::destroy(v11, a2);
      }
    }
  }

  else if (*(a1 + 32))
  {
    v12 = *(a1 + 24);
    *(a1 + 24) = 0;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, a2);
    }

    v13 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v13)
    {
      CFRelease(v13);
    }

    v14 = *(a1 + 8);
    *(a1 + 8) = 0;
    if (v14)
    {
      CFRelease(v14);
    }

    v15 = *a1;
    *a1 = 0;
    if (v15)
    {
      CFRelease(v15);
    }

    *(a1 + 32) = 0;
  }

  else
  {
    v16 = *a2;
    *a2 = 0;
    *a1 = v16;
    v17 = *(a2 + 1);
    *(a2 + 1) = 0;
    *(a1 + 8) = v17;
    v18 = *(a2 + 2);
    *(a2 + 2) = 0;
    *(a1 + 16) = v18;
    v19 = *(a2 + 3);
    *(a2 + 3) = 0;
    *(a1 + 24) = v19;
    *(a1 + 32) = 1;
  }
}

uint64_t std::__optional_storage_base<WebCore::PCM::DestinationSecretToken,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::PCM::DestinationSecretToken,false>>(uint64_t result, WTF::StringImpl *a2)
{
  v3 = result;
  if (*(result + 24) == *(a2 + 24))
  {
    if (*(result + 24))
    {
      v4 = *a2;
      *a2 = 0;
      v5 = *result;
      *v3 = v4;
      if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, a2);
      }

      v6 = *(a2 + 1);
      *(a2 + 1) = 0;
      v7 = *(v3 + 8);
      *(v3 + 8) = v6;
      if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, a2);
      }

      v8 = *(a2 + 2);
      *(a2 + 2) = 0;
      result = *(v3 + 16);
      *(v3 + 16) = v8;
      if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {

        return WTF::StringImpl::destroy(result, a2);
      }
    }
  }

  else if (*(result + 24))
  {
    v9 = *(result + 16);
    *(v3 + 16) = 0;
    if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, a2);
    }

    v10 = *(v3 + 8);
    *(v3 + 8) = 0;
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, a2);
    }

    result = *v3;
    *v3 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, a2);
    }

    *(v3 + 24) = 0;
  }

  else
  {
    v11 = *a2;
    *a2 = 0;
    *result = v11;
    v12 = *(a2 + 1);
    *(a2 + 1) = 0;
    *(result + 8) = v12;
    v13 = *(a2 + 2);
    *(a2 + 2) = 0;
    *(result + 16) = v13;
    *(result + 24) = 1;
  }

  return result;
}

uint64_t WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::deallocateTable(mpark *this, void *a2)
{
  v2 = this;
  v3 = *(this - 1);
  if (v3)
  {
    while (!*(this + 24))
    {
      if (*this != -1)
      {
        goto LABEL_4;
      }

LABEL_5:
      this = (this + 72);
      if (!--v3)
      {
        goto LABEL_9;
      }
    }

    if (*(this + 24) != 1)
    {
      mpark::throw_bad_variant_access(this);
    }

LABEL_4:
    this = WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>::~KeyValuePair(this, a2);
    goto LABEL_5;
  }

LABEL_9:

  return WTF::fastFree((v2 - 16), a2);
}

uint64_t WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>::~KeyValuePair(uint64_t a1, void *a2)
{
  v3 = *(a1 + 64);
  if (v3)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WebCore::CharacterRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WebCore::CharacterRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WebCore::CharacterRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WebCore::CharacterRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  if (!*(a1 + 56))
  {
    v4 = *(a1 + 40);
    *(a1 + 40) = 0;
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }

    v5 = *(a1 + 32);
    *(a1 + 32) = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, a2);
    }
  }

  *(a1 + 56) = -1;
  if (!*(a1 + 24))
  {
    v6 = *(a1 + 8);
    *(a1 + 8) = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, a2);
    }

    v7 = *a1;
    *a1 = 0;
    if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, a2);
    }
  }

  *(a1 + 24) = -1;
  return a1;
}

void WebCore::ClientOrigin::~ClientOrigin(WebCore::ClientOrigin *this, WTF::StringImpl *a2)
{
  if (!*(this + 56))
  {
    v3 = *(this + 5);
    *(this + 5) = 0;
    if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, a2);
    }

    v4 = *(this + 4);
    *(this + 4) = 0;
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  *(this + 56) = -1;
  if (!*(this + 24))
  {
    v5 = *(this + 1);
    *(this + 1) = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, a2);
    }

    v6 = *this;
    *this = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, a2);
    }
  }

  *(this + 24) = -1;
}

uint64_t WebCore::ResourceResponseBase::operator=(uint64_t a1, uint64_t a2)
{
  WTF::URL::operator=(a1, a2);
  v5 = *(a2 + 40);
  *(a2 + 40) = 0;
  v6 = *(a1 + 40);
  *(a1 + 40) = v5;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v4);
  }

  v7 = *(a2 + 48);
  v8 = *(a2 + 56);
  *(a2 + 56) = 0;
  v9 = *(a1 + 56);
  *(a1 + 48) = v7;
  *(a1 + 56) = v8;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v4);
  }

  v10 = *(a2 + 64);
  *(a2 + 64) = 0;
  v11 = *(a1 + 64);
  *(a1 + 64) = v10;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v4);
  }

  v12 = *(a2 + 72);
  *(a2 + 72) = 0;
  v13 = *(a1 + 72);
  *(a1 + 72) = v12;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v4);
  }

  v14 = *(a1 + 92);
  if (v14)
  {
    WTF::VectorDestructor<true,WebCore::HTTPHeaderMap::CommonHeader>::destruct(*(a1 + 80), (*(a1 + 80) + 16 * v14));
  }

  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1 + 80, (a2 + 80));
  v15 = *(a1 + 108);
  if (v15)
  {
    WTF::VectorTypeOperations<WebCore::HTTPHeaderMap::UncommonHeader>::destruct(*(a1 + 96), (*(a1 + 96) + 16 * v15));
  }

  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1 + 96, (a2 + 96));
  v17 = *(a2 + 112);
  *(a2 + 112) = 0;
  v18 = *(a1 + 112);
  *(a1 + 112) = v17;
  if (v18)
  {
    WTF::ThreadSafeRefCounted<WTF::Box<WebCore::NetworkLoadMetrics>::Data,(WTF::DestructionThread)0>::deref(v18, v16);
  }

  std::__optional_storage_base<WebCore::CertificateInfo,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::CertificateInfo,false>>(a1 + 120, (a2 + 120));
  v20 = *(a2 + 136);
  *(a1 + 138) = *(a2 + 138);
  *(a1 + 136) = v20;
  v21 = *(a2 + 144);
  *(a2 + 144) = 0;
  v22 = *(a1 + 144);
  *(a1 + 144) = v21;
  if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v22, v19);
  }

  v23 = *(a2 + 152);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 152) = v23;
  v24 = *(a2 + 184);
  v25 = *(a2 + 200);
  v26 = *(a2 + 216);
  *(a1 + 227) = *(a2 + 227);
  *(a1 + 216) = v26;
  *(a1 + 200) = v25;
  *(a1 + 184) = v24;
  return a1;
}

{
  WTF::String::operator=(a1, a2);
  v4 = *(a2 + 24);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = v4;
  WTF::String::operator=((a1 + 40), (a2 + 40));
  *(a1 + 48) = *(a2 + 48);
  WTF::String::operator=((a1 + 56), (a2 + 56));
  WTF::String::operator=((a1 + 64), (a2 + 64));
  WTF::String::operator=((a1 + 72), (a2 + 72));
  WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::operator=(a1 + 80, a2 + 80);
  WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::operator=(a1 + 96, a2 + 96);
  v6 = *(a2 + 112);
  if (v6)
  {
    atomic_fetch_add(v6, 1u);
  }

  v7 = *(a1 + 112);
  *(a1 + 112) = v6;
  if (v7)
  {
    WTF::ThreadSafeRefCounted<WTF::Box<WebCore::NetworkLoadMetrics>::Data,(WTF::DestructionThread)0>::deref(v7, v5);
  }

  std::__optional_storage_base<WebCore::CertificateInfo,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<WebCore::CertificateInfo,false> const&>(a1 + 120, a2 + 120);
  v8 = *(a2 + 136);
  *(a1 + 138) = *(a2 + 138);
  *(a1 + 136) = v8;
  WTF::String::operator=((a1 + 144), (a2 + 144));
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 176) = *(a2 + 176);
  v9 = *(a2 + 184);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 184) = v9;
  v10 = *(a2 + 217);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 217) = v10;
  v11 = *(a2 + 242);
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 242) = v11;
  return a1;
}

void std::__optional_storage_base<WebCore::CertificateInfo,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::CertificateInfo,false>>(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 8) == *(a2 + 8))
  {
    if (*(a1 + 8))
    {
      v4 = *a2;
      *a2 = 0;
      v5 = *a1;
      *a1 = v4;
      if (v5)
      {

        CFRelease(v5);
      }
    }
  }

  else if (*(a1 + 8))
  {
    v6 = *a1;
    *a1 = 0;
    if (v6)
    {
      v7 = a1;
      CFRelease(v6);
      a1 = v7;
    }

    *(a1 + 8) = 0;
  }

  else
  {
    v3 = *a2;
    *a2 = 0;
    *a1 = v3;
    *(a1 + 8) = 1;
  }
}

void std::__optional_storage_base<WebCore::CertificateInfo,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<WebCore::CertificateInfo,false> const&>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(a2 + 8))
  {
    if (*(a1 + 8))
    {

      WTF::RetainPtr<__SecTrust *>::operator=(a1, a2);
    }
  }

  else if (*(a1 + 8))
  {
    v4 = *a1;
    *a1 = 0;
    if (v4)
    {
      CFRelease(v4);
    }

    *(a1 + 8) = 0;
  }

  else
  {
    v3 = *a2;
    *a1 = *a2;
    if (v3)
    {
      CFRetain(v3);
    }

    *(a1 + 8) = 1;
  }
}

const void **WTF::RetainPtr<__SecTrust *>::operator=(const void **a1, CFTypeRef *a2)
{
  v3 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  v4 = *a1;
  *a1 = v3;
  if (v4)
  {
    CFRelease(v4);
  }

  return a1;
}

uint64_t WebCore::NetworkTransactionInformation::NetworkTransactionInformation(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  WTF::URL::URL(a1 + 8, (a2 + 8));
  WTF::URL::URL(a1 + 48, (a2 + 48));
  *(a1 + 88) = *(a2 + 88);
  v4 = *(a2 + 96);
  *(a2 + 96) = 0;
  *(a1 + 96) = v4;
  *(a1 + 112) = 0;
  *(a1 + 104) = 0;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1 + 104, (a2 + 104));
  *(a1 + 128) = 0;
  *(a1 + 120) = 0;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1 + 120, (a2 + 120));
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 136, (a2 + 136));
  v5 = *(a2 + 152);
  *(a1 + 156) = *(a2 + 156);
  *(a1 + 152) = v5;
  v6 = *(a2 + 160);
  *(a2 + 160) = 0;
  *(a1 + 160) = v6;
  v7 = *(a2 + 168);
  *(a2 + 168) = 0;
  *(a1 + 168) = v7;
  v8 = *(a2 + 176);
  *(a2 + 176) = 0;
  *(a1 + 176) = v8;
  v9 = *(a2 + 184);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 184) = v9;
  v10 = *(a2 + 200);
  *(a2 + 200) = 0;
  *(a1 + 200) = v10;
  WTF::URL::URL(a1 + 208, (a2 + 208));
  v11 = *(a2 + 248);
  v12 = *(a2 + 256);
  *(a2 + 248) = 0;
  *(a1 + 248) = v11;
  *(a1 + 256) = v12;
  v13 = *(a2 + 264);
  *(a2 + 264) = 0;
  *(a1 + 264) = v13;
  v14 = *(a2 + 272);
  *(a2 + 272) = 0;
  *(a1 + 272) = v14;
  v15 = *(a2 + 280);
  *(a2 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 280) = v15;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1 + 288, (a2 + 288));
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1 + 304, (a2 + 304));
  v16 = *(a2 + 320);
  *(a2 + 320) = 0;
  *(a1 + 320) = v16;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  if (*(a2 + 336) == 1)
  {
    v32 = *(a2 + 328);
    *(a2 + 328) = 0;
    *(a1 + 328) = v32;
    *(a1 + 336) = 1;
  }

  v17 = *(a2 + 344);
  *(a1 + 346) = *(a2 + 346);
  *(a1 + 344) = v17;
  v18 = *(a2 + 352);
  *(a2 + 352) = 0;
  *(a1 + 352) = v18;
  v19 = *(a2 + 376);
  *(a1 + 360) = *(a2 + 360);
  *(a1 + 376) = v19;
  v20 = *(a2 + 392);
  v21 = *(a2 + 408);
  v22 = *(a2 + 424);
  *(a1 + 435) = *(a2 + 435);
  *(a1 + 408) = v21;
  *(a1 + 424) = v22;
  *(a1 + 392) = v20;
  v23 = *(a2 + 456);
  *(a2 + 456) = 0;
  *(a1 + 456) = v23;
  *(a1 + 464) = *(a2 + 464);
  v24 = *(a2 + 488);
  *(a1 + 472) = *(a2 + 472);
  *(a1 + 488) = v24;
  v25 = *(a2 + 504);
  v26 = *(a2 + 520);
  v27 = *(a2 + 536);
  *(a1 + 552) = *(a2 + 552);
  *(a1 + 520) = v26;
  *(a1 + 536) = v27;
  *(a1 + 504) = v25;
  v28 = *(a2 + 560);
  *(a2 + 560) = 0;
  *(a1 + 560) = v28;
  v29 = *(a2 + 568);
  *(a1 + 584) = *(a2 + 584);
  *(a1 + 568) = v29;
  v30 = *(a2 + 592);
  *(a2 + 592) = 0;
  *(a1 + 592) = v30;
  return a1;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(void)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(void)>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(void)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CompletionHandler<void ()(void)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = (a1 + 8);
    do
    {
      if (*(v4 - 1) != -1)
      {
        v5 = *v4;
        *v4 = 0;
        if (v5)
        {
          (*(*v5 + 8))(v5);
        }
      }

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

uint64_t WTF::HashTable<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,WTF::KeyValuePair<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,unsigned int>>,WTF::DefaultHash<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashMap<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,unsigned int,WTF::DefaultHash<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::FastMalloc>::deallocateTable(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = a1 + 40;
    do
    {
      v5 = *(v4 - 40);
      if (v5 != -1)
      {
        if (*(v4 + 32) == 1)
        {
          if (!*(v4 + 24))
          {
            v6 = *(v4 + 8);
            *(v4 + 8) = 0;
            if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v6, a2);
            }

            v7 = *v4;
            *v4 = 0;
            if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v7, a2);
            }
          }

          *(v4 + 24) = -1;
          v5 = *(v4 - 40);
        }

        *(v4 - 40) = 0;
        if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v5, a2);
        }
      }

      v4 += 88;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

uint64_t WTF::HashTable<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::FastMalloc>::deallocateTable(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = a1 + 40;
    do
    {
      v5 = *(v4 - 40);
      if (v5 != -1)
      {
        if (*(v4 + 32) == 1)
        {
          if (!*(v4 + 24))
          {
            v6 = *(v4 + 8);
            *(v4 + 8) = 0;
            if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v6, a2);
            }

            v7 = *v4;
            *v4 = 0;
            if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v7, a2);
            }
          }

          *(v4 + 24) = -1;
          v5 = *(v4 - 40);
        }

        *(v4 - 40) = 0;
        if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v5, a2);
        }
      }

      v4 += 80;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

unsigned int **WTF::UniqueRef<WebKit::NetworkOriginAccessPatterns>::~UniqueRef(unsigned int **a1, WTF::StringImpl *a2)
{
  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    WTF::Vector<WebCore::UserContentURLPattern,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v3 + 2, a2);
    bmalloc::api::tzoneFree(v3, v4);
  }

  return a1;
}

unsigned int *WTF::Vector<WebCore::UserContentURLPattern,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(unsigned int *a1, WTF::StringImpl *a2)
{
  v3 = a1[3];
  if (v3)
  {
    v6 = (*a1 + 16);
    v7 = 32 * v3;
    do
    {
      v8 = *v6;
      *v6 = 0;
      if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, a2);
      }

      v9 = *(v6 - 1);
      *(v6 - 1) = 0;
      if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v9, a2);
      }

      v10 = *(v6 - 2);
      *(v6 - 2) = 0;
      if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v10, a2);
      }

      v6 += 4;
      v7 -= 32;
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

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::NetworkLoadInformation>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::NetworkLoadInformation>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::NetworkLoadInformation>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkLoadInformation>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = (a1 + 8);
    do
    {
      if (*(v4 - 1) != -1)
      {
        std::unique_ptr<WebCore::NetworkLoadInformation>::reset[abi:sn200100](v4, 0);
      }

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::RefPtr<WebCore::BlobDataFileReference,WTF::RawPtrTraits<WebCore::BlobDataFileReference>,WTF::DefaultRefDerefTraits<WebCore::BlobDataFileReference>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::RefPtr<WebCore::BlobDataFileReference,WTF::RawPtrTraits<WebCore::BlobDataFileReference>,WTF::DefaultRefDerefTraits<WebCore::BlobDataFileReference>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::RefPtr<WebCore::BlobDataFileReference,WTF::RawPtrTraits<WebCore::BlobDataFileReference>,WTF::DefaultRefDerefTraits<WebCore::BlobDataFileReference>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<WebCore::BlobDataFileReference,WTF::RawPtrTraits<WebCore::BlobDataFileReference>,WTF::DefaultRefDerefTraits<WebCore::BlobDataFileReference>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = a1;
    do
    {
      v5 = *v4;
      if (*v4 != -1)
      {
        v6 = *(v4 + 8);
        *(v4 + 8) = 0;
        if (v6)
        {
          if (v6[2] == 1)
          {
            (*(*v6 + 8))(v6);
            v5 = *v4;
          }

          else
          {
            --v6[2];
          }
        }

        *v4 = 0;
        if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v5, a2);
        }
      }

      v4 += 16;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::NetworkSocketChannel,WTF::RawPtrTraits<WebKit::NetworkSocketChannel>,WTF::DefaultRefDerefTraits<WebKit::NetworkSocketChannel>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::NetworkSocketChannel,WTF::RawPtrTraits<WebKit::NetworkSocketChannel>,WTF::DefaultRefDerefTraits<WebKit::NetworkSocketChannel>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::NetworkSocketChannel,WTF::RawPtrTraits<WebKit::NetworkSocketChannel>,WTF::DefaultRefDerefTraits<WebKit::NetworkSocketChannel>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::NetworkSocketChannel,WTF::RawPtrTraits<WebKit::NetworkSocketChannel>,WTF::DefaultRefDerefTraits<WebKit::NetworkSocketChannel>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = (a1 + 8);
    do
    {
      if (*(v4 - 1) != -1)
      {
        v5 = *v4;
        *v4 = 0;
        if (v5)
        {
          if (v5[6] == 1)
          {
            (*(*v5 + 8))(v5);
          }

          else
          {
            --v5[6];
          }
        }
      }

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

void *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::begin(void **a1)
{
  result = *a1;
  if (!result)
  {
    return 0;
  }

  v2 = *(result - 1);
  v3 = &result[2 * v2];
  if (!*(result - 3))
  {
    return &result[2 * v2];
  }

  if (v2)
  {
    v4 = 16 * v2;
    while ((*result + 1) <= 1)
    {
      result += 2;
      v4 -= 16;
      if (!v4)
      {
        return v3;
      }
    }
  }

  return result;
}

_DWORD *WTF::RefCounted<WebKit::PingLoad>::deref(_DWORD *result, void *a2)
{
  if (*result == 1)
  {
    WebKit::PingLoad::~PingLoad((result - 4), a2);

    return WTF::fastFree(v3, v4);
  }

  else
  {
    --*result;
  }

  return result;
}

uint64_t std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>::pair[abi:sn200100]<true,0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
  }

  *a1 = v4;
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);
  *(a1 + 40) = 0;
  v7 = (a1 + 40);
  *(a1 + 8) = v5;
  *(a1 + 24) = v6;
  *(a1 + 72) = 0;
  if (*(a3 + 32) == 1)
  {
    mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment(v7, a3);
    *(a1 + 72) = 1;
  }

  return a1;
}

WTF::StringImpl ***std::unique_ptr<WebCore::LoginStatus>::reset[abi:sn200100](WTF::StringImpl ***result, WTF::StringImpl *a2)
{
  v2 = *result;
  *result = 0;
  if (v2)
  {
    v3 = v2[1];
    v2[1] = 0;
    if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, a2);
    }

    v4 = *v2;
    *v2 = 0;
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }

    return bmalloc::api::tzoneFree(v2, a2);
  }

  return result;
}

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Ref<WebCore::ContentExtensions::ContentExtension,WTF::RawPtrTraits<WebCore::ContentExtensions::ContentExtension>,WTF::DefaultRefDerefTraits<WebCore::ContentExtensions::ContentExtension>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Ref<WebCore::ContentExtensions::ContentExtension,WTF::RawPtrTraits<WebCore::ContentExtensions::ContentExtension>,WTF::DefaultRefDerefTraits<WebCore::ContentExtensions::ContentExtension>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Ref<WebCore::ContentExtensions::ContentExtension,WTF::RawPtrTraits<WebCore::ContentExtensions::ContentExtension>,WTF::DefaultRefDerefTraits<WebCore::ContentExtensions::ContentExtension>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WebCore::ContentExtensions::ContentExtension,WTF::RawPtrTraits<WebCore::ContentExtensions::ContentExtension>,WTF::DefaultRefDerefTraits<WebCore::ContentExtensions::ContentExtension>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(WTF::StringImpl **a1, void *a2)
{
  v3 = *(a1 - 1);
  if (v3)
  {
    v4 = a1;
    do
    {
      v5 = *v4;
      if (*v4 != -1)
      {
        v6 = v4[1];
        v4[1] = 0;
        if (v6)
        {
          WTF::RefCounted<WebCore::ContentExtensions::ContentExtension>::deref(v6, a2);
          v5 = *v4;
        }

        *v4 = 0;
        if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v5, a2);
        }
      }

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 2), a2);
}

WebCore::ContentExtensions::ContentExtension *WTF::RefCounted<WebCore::ContentExtensions::ContentExtension>::deref(WebCore::ContentExtensions::ContentExtension *result, void *a2)
{
  if (*result == 1)
  {
    WebCore::ContentExtensions::ContentExtension::~ContentExtension(result, a2);

    return WTF::fastFree(v3, v4);
  }

  else
  {
    --*result;
  }

  return result;
}

void WebCore::ContentExtensions::ContentExtension::~ContentExtension(WebCore::ContentExtensions::ContentExtension *this, void *a2)
{
  v3 = *(this + 21);
  if (v3)
  {
    *(this + 21) = 0;
    *(this + 44) = 0;
    WTF::fastFree(v3, a2);
  }

  v4 = *(this + 20);
  if (v4)
  {
    WTF::fastFree((v4 - 16), a2);
  }

  v5 = *(this + 15);
  *(this + 15) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *(this + 14);
  if (v6)
  {
    WTF::fastFree((v6 - 16), a2);
  }

  v7 = *(this + 9);
  *(this + 9) = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, a2);
  }

  v8 = *(this + 8);
  *(this + 8) = 0;
  if (v8)
  {
    WTF::RefCounted<WebCore::StyleSheetContents>::deref((v8 + 8));
  }

  v9 = *(this + 3);
  *(this + 3) = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, a2);
  }

  v10 = *(this + 2);
  *(this + 2) = 0;
  if (v10 && atomic_fetch_add(v10 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v10 + 2);
    (*(*v10 + 8))(v10);
  }

  v11 = *(this + 1);
  *(this + 1) = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, a2);
  }

  if (*this != 1)
  {
    __break(0xC471u);
  }
}

_DWORD *WTF::RefCounted<WebCore::StyleSheetContents>::deref(_DWORD *result)
{
  if (*result == 1)
  {
    v2 = MEMORY[0x19EB08080](result - 2);

    return WTF::fastFree(v2, v3);
  }

  else
  {
    --*result;
  }

  return result;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WTF::CompletionHandler<void ()(WebCore::ContentExtensions::ContentExtensionsBackend &)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WTF::CompletionHandler<void ()(WebCore::ContentExtensions::ContentExtensionsBackend &)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WTF::CompletionHandler<void ()(WebCore::ContentExtensions::ContentExtensionsBackend &)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Vector<WTF::CompletionHandler<void ()(WebCore::ContentExtensions::ContentExtensionsBackend &)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = a1 + 8;
    do
    {
      if (*(v4 - 8) != -1)
      {
        v4 = WTF::Vector<WTF::CompletionHandler<void ()(WebCore::ContentExtensions::ContentExtensionsBackend &)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v4, a2);
      }

      v4 += 24;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

WTF::StringImpl ****std::unique_ptr<WebCore::ContentExtensions::ContentExtensionsBackend>::reset[abi:sn200100](WTF::StringImpl ****result, WTF::StringImpl ***a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    if (*v2)
    {
      WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Ref<WebCore::ContentExtensions::ContentExtension,WTF::RawPtrTraits<WebCore::ContentExtensions::ContentExtension>,WTF::DefaultRefDerefTraits<WebCore::ContentExtensions::ContentExtension>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Ref<WebCore::ContentExtensions::ContentExtension,WTF::RawPtrTraits<WebCore::ContentExtensions::ContentExtension>,WTF::DefaultRefDerefTraits<WebCore::ContentExtensions::ContentExtension>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Ref<WebCore::ContentExtensions::ContentExtension,WTF::RawPtrTraits<WebCore::ContentExtensions::ContentExtension>,WTF::DefaultRefDerefTraits<WebCore::ContentExtensions::ContentExtension>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WebCore::ContentExtensions::ContentExtension,WTF::RawPtrTraits<WebCore::ContentExtensions::ContentExtension>,WTF::DefaultRefDerefTraits<WebCore::ContentExtensions::ContentExtension>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(*v2, a2);
    }

    return bmalloc::api::tzoneFree(v2, a2);
  }

  return result;
}

_DWORD *WTF::RefCounted<WebKit::BackgroundFetchLoad>::deref(_DWORD *result, void *a2)
{
  if (*result == 1)
  {
    WebKit::BackgroundFetchLoad::~BackgroundFetchLoad((result - 2), a2);

    return bmalloc::api::tzoneFree(v3, v4);
  }

  else
  {
    --*result;
  }

  return result;
}

_DWORD *WTF::RefCounted<WebKit::NetworkCORSPreflightChecker>::deref(_DWORD *result, void *a2)
{
  if (*result == 1)
  {
    WebKit::NetworkCORSPreflightChecker::~NetworkCORSPreflightChecker((result - 4), a2);

    return bmalloc::api::tzoneFree(v3, v4);
  }

  else
  {
    --*result;
  }

  return result;
}

_DWORD *WTF::RefCounted<WebKit::NetworkLoadChecker>::deref(_DWORD *result, void *a2)
{
  if (*result == 1)
  {
    WebKit::NetworkLoadChecker::~NetworkLoadChecker((result - 2), a2);

    return bmalloc::api::tzoneFree(v3, v4);
  }

  else
  {
    --*result;
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::BackgroundFetchLoad::BackgroundFetchLoad(WebKit::NetworkProcess &,PAL::SessionID,WebCore::BackgroundFetchRecordLoaderClient &,WebCore::BackgroundFetchRequest const&,unsigned long,WebCore::ClientOrigin const&)::$_0,void,mpark::variant<WebCore::ResourceRequest,WebKit::NetworkLoadChecker::RedirectionTriplet,WebCore::ResourceError> &&>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F10FF790;
  v3 = a1[3];
  a1[3] = 0;
  if (v3 && atomic_fetch_add(v3 + 36, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 36);
    (*(*v3 + 24))(v3);
  }

  v4 = a1[2];
  a1[2] = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::BackgroundFetchLoad::BackgroundFetchLoad(WebKit::NetworkProcess &,PAL::SessionID,WebCore::BackgroundFetchRecordLoaderClient &,WebCore::BackgroundFetchRequest const&,unsigned long,WebCore::ClientOrigin const&)::$_0,void,mpark::variant<WebCore::ResourceRequest,WebKit::NetworkLoadChecker::RedirectionTriplet,WebCore::ResourceError> &&>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F10FF790;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3 && atomic_fetch_add(v3 + 36, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 36);
    (*(*v3 + 24))(v3);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, a2);
  }

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<WebKit::BackgroundFetchLoad::BackgroundFetchLoad(WebKit::NetworkProcess &,PAL::SessionID,WebCore::BackgroundFetchRecordLoaderClient &,WebCore::BackgroundFetchRequest const&,unsigned long,WebCore::ClientOrigin const&)::$_0,void,mpark::variant<WebCore::ResourceRequest,WebKit::NetworkLoadChecker::RedirectionTriplet,WebCore::ResourceError> &&>::call(mpark *a1, uint64_t a2)
{
  v58 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 2);
  if (v2 && *(v2 + 8))
  {
    v4 = *(a1 + 1);
    v5 = *(a2 + 664);
    if (v5 == 255)
    {
      v6 = -1;
    }

    else
    {
      v6 = *(a2 + 664);
    }

    if (v6 == 2)
    {
      if (v5 != 2)
      {
        goto LABEL_55;
      }

      WebCore::ResourceResponseBase::ResourceResponseBase(v38);
      v47 = 0;
      v48[0] = 0;
      v40 = v40 & 0xF1 | 4;
      WebKit::BackgroundFetchLoad::didFinish(v4[5], a2);
      v8 = v47;
      v47 = 0;
      if (v8)
      {
        CFRelease(v8);
      }

      WebCore::ResourceResponseBase::~ResourceResponseBase(v38, v7);
    }

    else if (v6 == 1)
    {
      if (v5 != 1)
      {
LABEL_55:
        mpark::throw_bad_variant_access(a1);
      }
    }

    else
    {
      if (*(a2 + 664))
      {
        goto LABEL_55;
      }

      v9 = *(a1 + 3);
      v10 = qword_1ED6416F0;
      if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(v38[0]) = 134217984;
        *(v38 + 4) = v4;
        _os_log_impl(&dword_19D52D000, v10, OS_LOG_TYPE_DEFAULT, "%p - BackgroundFetchLoad::startNetworkLoad", v38, 0xCu);
      }

      *&v38[0] = v4[4];
      v11 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v9 + 240), v38);
      if (v11)
      {
        v12 = v11;
        ++*(v11 + 16);
        memset(v38, 0, 44);
        WebCore::ResourceRequest::ResourceRequest(v39);
        LODWORD(v47) = 0;
        WORD2(v47) = 1;
        BYTE6(v47) = 0;
        v48[0] = 0;
        v49 = 0;
        v52 = 0;
        v54 = 0;
        v50 = 0u;
        v51 = 0;
        v55 = 16777472;
        v56 = 0;
        v57 = 0;
        WebCore::ResourceRequestBase::RequestData::operator=(v39, a2);
        v14 = *(a2 + 152);
        *(a2 + 152) = 0;
        v15 = v41;
        v41 = v14;
        if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v15, v13);
        }

        v16 = *(a2 + 160);
        *(a2 + 160) = 0;
        v17 = v42;
        v42 = v16;
        if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v17, v13);
        }

        v18 = *(a2 + 168);
        *(a2 + 168) = 0;
        v19 = v43;
        v43 = v18;
        if (v19)
        {
          WTF::RefCounted<WebCore::FormData>::deref(v19);
        }

        v44 = *(a2 + 176);
        v45 = *(a2 + 184);
        v20 = *(a2 + 192);
        *(a2 + 192) = 0;
        v21 = cf;
        cf = v20;
        if (v21)
        {
          CFRelease(v21);
        }

        v22 = *(v4[32] + 248);
        if (v22)
        {
          atomic_fetch_add(v22, 1u);
        }

        v23 = *(&v38[1] + 1);
        *(&v38[1] + 1) = v22;
        if (v23)
        {
          WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v23, v13);
        }

        v24 = *(v4[32] + 240);
        if (v24)
        {
          atomic_fetch_add(v24, 1u);
        }

        v25 = *&v38[2];
        *&v38[2] = v24;
        if (v25)
        {
          WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v25, v13);
        }

        WORD1(v47) = *(v4[32] + 18) == 2;
        v26 = WTF::fastMalloc(0x318);
        v27 = (WebKit::NetworkDataTaskCocoa::NetworkDataTaskCocoa(v26, v12, (v4 + 2), v38) + 8);
        while (1)
        {
          v28 = *v27;
          if ((*v27 & 1) == 0)
          {
            break;
          }

          v29 = *v27;
          atomic_compare_exchange_strong_explicit(v27, &v29, v28 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v29 == v28)
          {
            goto LABEL_41;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v27);
LABEL_41:
        v30 = v4[31];
        v4[31] = v26;
        if (v30)
        {
          WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((v30 + 8));
        }

        (*(*v26 + 24))(v26);
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref(v27);
        if (v54 == 1)
        {
          v37 = v53;
          v53 = 0;
          if (v37)
          {
          }
        }

        WTF::Vector<WTF::RefPtr<WebCore::BlobDataFileReference,WTF::RawPtrTraits<WebCore::BlobDataFileReference>,WTF::DefaultRefDerefTraits<WebCore::BlobDataFileReference>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v50, v31);
        if (v49 == 1)
        {
          WebKit::NavigationActionData::~NavigationActionData(v48, v32);
        }

        WebCore::ResourceRequest::~ResourceRequest(v39);
        v34 = *&v38[2];
        *&v38[2] = 0;
        if (v34)
        {
          WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v34, v33);
        }

        v35 = *(&v38[1] + 1);
        *(&v38[1] + 1) = 0;
        if (v35)
        {
          WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v35, v33);
        }

        v36 = *(v12 + 4);
        if (v36)
        {
          *(v12 + 4) = v36 - 1;
        }

        else
        {
          __break(0xC471u);
        }
      }
    }
  }
}

void *WTF::Detail::CallableWrapper<WebKit::BackgroundFetchLoad::willPerformHTTPRedirection(WebCore::ResourceResponse &&,WebCore::ResourceRequest &&,WTF::CompletionHandler<void ()(WebCore::ResourceRequest)> &&)::$_0,void,std::experimental::fundamentals_v3::expected<WebKit::NetworkLoadChecker::RedirectionTriplet,WebCore::ResourceError> &&>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F10FF7B8;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::BackgroundFetchLoad::willPerformHTTPRedirection(WebCore::ResourceResponse &&,WebCore::ResourceRequest &&,WTF::CompletionHandler<void ()(WebCore::ResourceRequest)> &&)::$_0,void,std::experimental::fundamentals_v3::expected<WebKit::NetworkLoadChecker::RedirectionTriplet,WebCore::ResourceError> &&>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F10FF7B8;
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

void WTF::Detail::CallableWrapper<WebKit::BackgroundFetchLoad::willPerformHTTPRedirection(WebCore::ResourceResponse &&,WebCore::ResourceRequest &&,WTF::CompletionHandler<void ()(WebCore::ResourceRequest)> &&)::$_0,void,std::experimental::fundamentals_v3::expected<WebKit::NetworkLoadChecker::RedirectionTriplet,WebCore::ResourceError> &&>::call(mpark *a1, uint64_t a2)
{
  if (!*(a2 + 664))
  {
    WTF::URL::URL(v45, (a2 + 200));
    WTF::URL::URL(v46, (a2 + 240));
    v10 = *(a2 + 280);
    v11 = *(a2 + 288);
    *(a2 + 288) = 0u;
    v47 = v11;
    *&v11 = *(a2 + 304);
    *(a2 + 304) = 0;
    v46[5] = v10;
    v48 = v11;
    v12 = *(a2 + 312);
    v13 = *(a2 + 320);
    *(a2 + 312) = 0u;
    v49 = v12;
    v50 = v13;
    v14 = *(a2 + 328);
    v15 = *(a2 + 336);
    *(a2 + 328) = 0u;
    v51 = v14;
    v52 = v15;
    v16 = *(a2 + 344);
    v54 = *(a2 + 348);
    v53 = v16;
    v17 = *(a2 + 352);
    *(a2 + 352) = 0u;
    v55 = v17;
    v18 = *(a2 + 368);
    v19 = *(a2 + 376);
    *(a2 + 368) = 0;
    v58 = *(a2 + 384);
    v56 = v18;
    v57 = v19;
    v20 = *(a2 + 392);
    *(a2 + 392) = 0;
    v59 = v20;
    if ((*(WebCore::ResourceRequestBase::url(v45) + 8) & 2) != 0)
    {
      v34 = *(a1 + 2);
      *(a1 + 2) = 0;
      (*(*v34 + 16))(v34, v45);
      (*(*v34 + 8))(v34);
LABEL_33:
      v9 = v45;
      goto LABEL_34;
    }

    v21 = *(a1 + 1);
    if (!v21 || (v22 = *(v21 + 8)) == 0)
    {
      __break(0xC471u);
LABEL_38:
      JUMPOUT(0x19DC32BCCLL);
    }

    v23 = WebCore::ResourceRequestBase::url(v45);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v24 = v60[0];
    v36 = 0;
    v25 = *v23;
    if (*v23)
    {
      atomic_fetch_add_explicit(v25, 2u, memory_order_relaxed);
    }

    v37 = v25;
    v26 = *(v23 + 24);
    v38 = *(v23 + 8);
    v39 = v26;
    if (v24)
    {
      atomic_fetch_add_explicit(v24, 2u, memory_order_relaxed);
    }

    v40 = v24;
    v41 = 0;
    v42 = 2;
    v43 = 0;
    v44 = 1;
    WebCore::ResourceResponseBase::ResourceResponseBase(v60);
    cf = 0;
    v63 = 0;
    v61 = v61 & 0xF1 | 4;
    WebKit::BackgroundFetchLoad::didFinish(*(v22 + 24), &v36);
    v28 = cf;
    cf = 0;
    if (v28)
    {
      CFRelease(v28);
    }

    WebCore::ResourceResponseBase::~ResourceResponseBase(v60, v27);
    v30 = v43;
    v43 = 0;
    if (v30)
    {
      CFRelease(v30);
    }

    v31 = v40;
    v40 = 0;
    if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v31, v29);
    }

    v32 = v37;
    v37 = 0;
    if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v32, v29);
    }

    v33 = v36;
    v36 = 0;
    if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v33, v29);
      if (v24)
      {
LABEL_28:
        if (atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v24, v29);
        }
      }
    }

    else if (v24)
    {
      goto LABEL_28;
    }

    WebCore::ResourceRequest::ResourceRequest(v60);
    v35 = *(a1 + 2);
    *(a1 + 2) = 0;
    (*(*v35 + 16))(v35, v60);
    (*(*v35 + 8))(v35);
    WebCore::ResourceRequest::~ResourceRequest(v60);
    goto LABEL_33;
  }

  v4 = *(a1 + 1);
  if (!v4 || (v5 = *(v4 + 8)) == 0)
  {
    __break(0xC471u);
    goto LABEL_38;
  }

  if (*(a2 + 664) != 1)
  {
    mpark::throw_bad_variant_access(a1);
  }

  WebCore::ResourceResponseBase::ResourceResponseBase(v60);
  cf = 0;
  v63 = 0;
  v61 = v61 & 0xF1 | 4;
  WebKit::BackgroundFetchLoad::didFinish(*(v5 + 24), a2);
  v7 = cf;
  cf = 0;
  if (v7)
  {
    CFRelease(v7);
  }

  WebCore::ResourceResponseBase::~ResourceResponseBase(v60, v6);
  WebCore::ResourceRequest::ResourceRequest(v60);
  v8 = *(a1 + 2);
  *(a1 + 2) = 0;
  (*(*v8 + 16))(v8, v60);
  (*(*v8 + 8))(v8);
  v9 = v60;
LABEL_34:
  WebCore::ResourceRequest::~ResourceRequest(v9);
}

uint64_t WTF::tryMakeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String>@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X3>, void *a5@<X8>)
{
  v5 = a1[1];
  v6 = v5 != 0;
  v7 = v5 - 1;
  if (!v6)
  {
    v7 = 0;
  }

  v15[0] = *a1;
  v15[1] = v7;
  if (v7 >> 31)
  {
    goto LABEL_8;
  }

  v8 = *a2;
  v9 = a3[1];
  v6 = v9 != 0;
  v10 = v9 - 1;
  if (!v6)
  {
    v10 = 0;
  }

  v13[0] = *a3;
  v13[1] = v10;
  v14 = v8;
  if (v10 >> 31)
  {
LABEL_8:
    __break(0xC471u);
    JUMPOUT(0x19DC32C8CLL);
  }

  v12 = *a4;
  return WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v15, &v14, v13, &v12, a5);
}

uint64_t WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, void *a5@<X8>)
{
  v5 = *a2;
  if (*a2)
  {
    v6 = *(v5 + 4);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a3 + 8);
  v8 = *a4;
  if (*a4)
  {
    v9 = *(v8 + 4);
  }

  else
  {
    v9 = 0;
  }

  if (((v9 | v7) & 0x80000000) == 0)
  {
    v10 = __OFADD__(v7, v9);
    v11 = v7 + v9;
    v12 = v10;
    if ((v6 & 0x80000000) == 0 && !v12)
    {
      v13 = *(result + 8);
      v10 = __OFADD__(v6, v11);
      v14 = v6 + v11;
      v15 = v10;
      if ((v13 & 0x80000000) == 0 && !v15)
      {
        v10 = __OFADD__(v13, v14);
        v16 = (v13 + v14);
        if (!v10)
        {
          if (v5)
          {
            v17 = *(v5 + 16);
            v18 = (v17 >> 2) & 1;
            if (!v8 || (v17 & 4) == 0)
            {
              return WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v16, v18, *result, v13, v5, *a3, v7, v8, a5);
            }
          }

          else if (!v8)
          {
            v18 = 1;
            return WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v16, v18, *result, v13, v5, *a3, v7, v8, a5);
          }

          v18 = (*(v8 + 16) >> 2) & 1;
          return WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v16, v18, *result, v13, v5, *a3, v7, v8, a5);
        }
      }
    }
  }

  *a5 = 0;
  return result;
}

uint64_t WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>@<X0>(uint64_t result@<X0>, int a2@<W1>, int8x16_t *a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, int8x16_t *a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v15 = result;
  v17 = result;
  if (!a2)
  {
    if (result)
    {
      if (result <= 0x7FFFFFEF)
      {
        result = WTF::tryFastCompactMalloc((2 * result + 20));
        v18 = v28;
        if (v28)
        {
          v25 = (v28 + 5);
          *v28 = 2;
          v18[1] = v15;
          *(v18 + 1) = v18 + 5;
          v18[4] = 0;
          result = WTF::stringTypeAdapterAccumulator<char16_t,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v25, v17, a3, a4, a5, a6, a7, a8);
        }

        goto LABEL_16;
      }

LABEL_19:
      v18 = 0;
      goto LABEL_16;
    }

LABEL_20:
    v18 = MEMORY[0x1E696EB88];
    atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
    goto LABEL_16;
  }

  if (!result)
  {
    goto LABEL_20;
  }

  if ((result & 0x80000000) != 0)
  {
    goto LABEL_19;
  }

  result = WTF::tryFastCompactMalloc((result + 20));
  v18 = v28;
  if (v28)
  {
    __src = a6;
    v19 = a8;
    v20 = a9;
    v21 = v28 + 5;
    *v28 = 2;
    v18[1] = v15;
    *(v18 + 1) = v18 + 5;
    v22 = 4;
    v18[4] = 4;
    if (a4)
    {
      if (a4 == 1)
      {
        v22 = a3->u8[0];
        *v21 = v22;
      }

      else
      {
        memcpy(v18 + 5, a3, a4);
      }
    }

    if (v17 < a4)
    {
      goto LABEL_23;
    }

    v23 = a4;
    a4 = v17 - a4;
    v17 = &v21[v23];
    v27 = a5;
    WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<unsigned char>(&v27, &v21[v23]);
    v22 = v27;
    if (!v27)
    {
      goto LABEL_24;
    }

    v22 = *(v27 + 4);
    a9 = v20;
    if (a4 < v22)
    {
      goto LABEL_23;
    }

    while (1)
    {
      a4 -= v22;
      v24 = (v17 + v22);
      if (a7)
      {
        if (a7 == 1)
        {
          v22 = __src->u8[0];
          *v24 = v22;
        }

        else
        {
          memcpy((v17 + v22), __src, a7);
        }
      }

      if (a4 >= a7)
      {
        break;
      }

LABEL_23:
      __break(1u);
LABEL_24:
      a9 = v20;
    }

    v28 = v19;
    result = WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<unsigned char>(&v28, &v24[a7]);
  }

LABEL_16:
  *a9 = v18;
  return result;
}

uint64_t *WTF::stringTypeAdapterAccumulator<char16_t,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(char *a1, unint64_t a2, int8x16_t *a3, unint64_t a4, uint64_t a5, int8x16_t *a6, unint64_t a7, uint64_t a8)
{
  if (a4 < 0x40)
  {
    v13 = a1;
  }

  else
  {
    v13 = &a1[2 * (a4 & 0x7FFFFFFFFFFFFFC0)];
    v14 = 0uLL;
    v15 = a1;
    do
    {
      v39.val[0] = *a3;
      v16 = a3[1];
      v41.val[0] = a3[2];
      v17 = a3[3];
      a3 += 4;
      v18 = v17;
      v41.val[1] = 0uLL;
      v43.val[0] = v16;
      v39.val[1] = 0uLL;
      v19 = v15;
      vst2q_s8(v19, v39);
      v19 += 32;
      v43.val[1] = 0uLL;
      vst2q_s8(v19, v43);
      v20 = v15 + 64;
      vst2q_s8(v20, v41);
      v21 = v15 + 96;
      vst2q_s8(v21, *(&v14 - 1));
      v15 += 128;
    }

    while (v15 != v13);
  }

  while (v13 != &a1[2 * a4])
  {
    v22 = a3->u8[0];
    a3 = (a3 + 1);
    *v13 = v22;
    v13 += 2;
  }

  if (a2 < a4)
  {
    goto LABEL_21;
  }

  v8 = a2 - a4;
  v9 = &a1[2 * a4];
  v37 = a5;
  WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<char16_t>(&v37, v9);
  if (!v37)
  {
    goto LABEL_22;
  }

  v23 = *(v37 + 4);
  if (v8 < v23)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v24 = &v9[2 * v23];
    if (a7 < 0x40)
    {
      v25 = &v9[2 * v23];
    }

    else
    {
      v25 = &v24[2 * (a7 & 0x7FFFFFFFFFFFFFC0)];
      v26 = 0uLL;
      v27 = &v9[2 * v23];
      do
      {
        v40.val[0] = *a6;
        v28 = a6[1];
        v42.val[0] = a6[2];
        v29 = a6[3];
        a6 += 4;
        v30 = v29;
        v42.val[1] = 0uLL;
        v44.val[0] = v28;
        v40.val[1] = 0uLL;
        v31 = v27;
        vst2q_s8(v31, v40);
        v31 += 32;
        v44.val[1] = 0uLL;
        vst2q_s8(v31, v44);
        v32 = v27 + 64;
        vst2q_s8(v32, v42);
        v33 = v27 + 96;
        vst2q_s8(v33, *(&v26 - 1));
        v27 += 128;
      }

      while (v27 != v25);
    }

    v34 = v8 - v23;
    while (v25 != &v24[2 * a7])
    {
      v35 = a6->u8[0];
      a6 = (a6 + 1);
      *v25 = v35;
      v25 += 2;
    }

    if (v34 >= a7)
    {
      break;
    }

LABEL_21:
    __break(1u);
LABEL_22:
    v23 = 0;
  }

  v38 = a8;
  return WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<char16_t>(&v38, &v24[2 * a7]);
}

void *WTF::tryMakeString<WTF::ASCIILiteral,WTF::ASCIILiteral,char>(void *a1, _BYTE *a2, uint64_t a3, _BYTE *a4, uint64_t a5, char a6)
{
  if (a3)
  {
    v6 = a3 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 >> 31 || (a5 ? (v7 = a5 - 1) : (v7 = 0), v7 >> 31))
  {
    __break(0xC471u);
    JUMPOUT(0x19DC3312CLL);
  }

  return WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<char,void>>(a1, a2, v6, a4, v7, a6);
}

void *WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<char,void>>(void *result, _BYTE *a2, size_t a3, _BYTE *a4, size_t a5, char a6)
{
  v6 = result;
  if ((a5 & 0x80000000) != 0 || ((v7 = a5 + 1, !__OFADD__(a5, 1)) ? (v8 = 0) : (v8 = 1), (a3 & 0x80000000) != 0 || (v8 & 1) != 0 || __OFADD__(a3, v7)))
  {
    *result = 0;
  }

  else
  {
    result = WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<char,void>>(&v9, a3 + v7, a2, a3, a4, a5, a6);
    *v6 = v9;
  }

  return result;
}

uint64_t WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<char,void>>(uint64_t result, unsigned int a2, _BYTE *a3, size_t a4, _BYTE *a5, size_t a6, char a7)
{
  v7 = result;
  if ((a2 & 0x80000000) != 0)
  {
    v15 = 0;
  }

  else
  {
    v14 = a2;
    result = WTF::tryFastCompactMalloc((a2 + 20));
    v15 = v16;
    if (v16)
    {
      *v16 = 2;
      *(v16 + 4) = a2;
      *(v16 + 8) = v16 + 20;
      *(v16 + 16) = 4;
      result = WTF::stringTypeAdapterAccumulator<unsigned char,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<char,void>>((v16 + 20), v14, a3, a4, a5, a6, a7);
    }
  }

  *v7 = v15;
  return result;
}

_BYTE *WTF::stringTypeAdapterAccumulator<unsigned char,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<char,void>>(_BYTE *__dst, unint64_t a2, _BYTE *__src, size_t __n, _BYTE *a5, size_t a6, char a7)
{
  LODWORD(v10) = __n;
  v12 = __dst;
  if (__n)
  {
    if (__n == 1)
    {
      goto LABEL_11;
    }

    __dst = memcpy(__dst, __src, __n);
  }

  while (1)
  {
    if (a2 >= v10)
    {
      v13 = v10;
      v10 = a2 - v10;
      v12 += v13;
      if (a6)
      {
        if (a6 == 1)
        {
          *v12 = *a5;
        }

        else
        {
          __dst = memcpy(v12, a5, a6);
        }
      }

      if (v10 > a6)
      {
        break;
      }
    }

    __break(1u);
LABEL_11:
    *v12 = *__src;
  }

  v12[a6] = a7;
  return __dst;
}

uint64_t Messages::WebPage::AddConsoleMessage::encode<IPC::Encoder>(uint64_t a1, IPC::Encoder *a2)
{
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a2, **a1);
  IPC::ArgumentCoder<JSC::MessageSource,void>::encode<IPC::Encoder>(a2, *(a1 + 8));
  IPC::ArgumentCoder<JSC::MessageSource,void>::encode<IPC::Encoder>(a2, *(a1 + 9));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a2, *(a1 + 16));
  v4 = *(a1 + 24);

  return IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a2, v4);
}

uint64_t IPC::ArgumentCoder<JSC::MessageSource,void>::encode<IPC::Encoder>(IPC::Encoder *a1, char a2)
{
  result = IPC::Encoder::grow(a1, 1uLL, 1);
  if (v4)
  {
    *result = a2;
  }

  else
  {
    result = 1067;
    __break(0xC471u);
  }

  return result;
}

uint64_t WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (*a1 && (v5 = *(v3 - 4)) != 0)
  {
    v4 = v5 << (6 * *(v3 - 12) >= (2 * v5));
  }

  else
  {
    v4 = 8;
  }

  return WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::rehash(a1, v4, a2);
}

uint64_t WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t a3)
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

  v7 = WTF::fastMalloc((72 * a2 + 16));
  v9 = v7;
  v10 = v7 + 16;
  if (a2)
  {
    bzero((v7 + 16), 72 * a2);
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
    v27 = v4;
    while (1)
    {
      v13 = v4 + 72 * v11;
      if (*(v13 + 24))
      {
        break;
      }

      if (*v13 != -1)
      {
        goto LABEL_9;
      }

LABEL_18:
      if (++v11 == v5)
      {
        goto LABEL_23;
      }
    }

    if (*(v13 + 24) != 1)
    {
      mpark::throw_bad_variant_access(v7);
    }

LABEL_9:
    if (WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WebCore::ClientOrigin>,false>::isEmptyValue<WebCore::ClientOrigin>())
    {
      v7 = WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>::~KeyValuePair(v4 + 72 * v11, v14);
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

      v17 = WTF::computeHash<WebCore::ClientOrigin>(v4 + 72 * v11);
      v18 = 0;
      do
      {
        v19 = v17 & v16;
        v20 = v15 + 72 * (v17 & v16);
        v22 = WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WebCore::ClientOrigin>,false>::isEmptyValue<WebCore::ClientOrigin>();
        v17 = ++v18 + v19;
      }

      while (!v22);
      v23 = WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>::~KeyValuePair(v15 + 72 * v19, v21);
      mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment(v23);
      mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment((v20 + 32));
      *(v20 + 64) = 0;
      v24 = *(v13 + 64);
      *(v13 + 64) = 0;
      *(v20 + 64) = v24;
      v7 = WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>::~KeyValuePair(v13, v25);
      v4 = v27;
      if (v13 == a3)
      {
        v12 = v15 + 72 * v19;
      }
    }

    goto LABEL_18;
  }

  v12 = 0;
  result = 0;
  if (v4)
  {
LABEL_23:
    WTF::fastFree((v4 - 16), v8);
    return v12;
  }

  return result;
}

void mpark::detail::assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>>::generic_assign<mpark::detail::copy_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1> const&>(unsigned __int8 *a1, __n128 *a2)
{
  v5 = a1[24];
  v6 = a2[1].n128_u8[8];
  if (v5 != 255 || v6 != 255)
  {
    if (v6 == 255)
    {

      mpark::detail::destructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::destroy(a1);
    }

    else
    {
      v7[1] = v2;
      v7[2] = v3;
      v7[0] = a1;
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJN7WebCore18SecurityOriginData5TupleENS6_16ProcessQualifiedIN3WTF23ObjectIdentifierGenericINS6_26OpaqueOriginIdentifierTypeENSA_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEEEEEEE14generic_assignIRKNS0_15copy_assignmentISH_LNS0_5TraitE1EEEEEvOT_EUlRSP_OT0_E_JRSI_SO_EEEDcmSQ_DpOT0_(v6, v7, a1, a2);
    }
  }
}

double _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJN7WebCore18SecurityOriginData5TupleENS6_16ProcessQualifiedIN3WTF23ObjectIdentifierGenericINS6_26OpaqueOriginIdentifierTypeENSA_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEEEEEEE14generic_assignIRKNS0_15copy_assignmentISH_LNS0_5TraitE1EEEEEvOT_EUlRSP_OT0_E_JRSI_SO_EEEDcmSQ_DpOT0_(uint64_t a1, uint64_t *a2, WTF::StringImpl *a3, __n128 *a4)
{
  if (a1)
  {
    *&result = _ZN5mpark3lib5cpp176invokeIZNS_6detail10assignmentINS3_6traitsIJN7WebCore18SecurityOriginData5TupleENS6_16ProcessQualifiedIN3WTF23ObjectIdentifierGenericINS6_26OpaqueOriginIdentifierTypeENSA_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEEEEEEE14generic_assignIRKNS3_15copy_assignmentISH_LNS3_5TraitE1EEEEEvOT_EUlRSP_OT0_E_JRNS3_3altILm1ESG_EERKSW_EEEDTclsr6detailE6invokeclsr3libE7forwardISP_Efp_Espclsr3libE7forwardIT0_Efp0_EEESQ_DpOS10_(a2, a3, a4).n128_u64[0];
  }

  else
  {
    mpark::detail::assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>>::assign_alt<0ul,WebCore::SecurityOriginData::Tuple,WebCore::SecurityOriginData::Tuple const&>(*a2, a3, a4);
  }

  return result;
}

uint64_t mpark::detail::assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>>::assign_alt<0ul,WebCore::SecurityOriginData::Tuple,WebCore::SecurityOriginData::Tuple const&>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    return mpark::detail::assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>>::emplace<0ul,WebCore::SecurityOriginData::Tuple const&>(a1, a3);
  }

  else
  {
    return WebCore::SecurityOriginData::Tuple::operator=(a2, a3);
  }
}

uint64_t WebCore::SecurityOriginData::Tuple::operator=(uint64_t a1, uint64_t a2)
{
  WTF::String::operator=(a1, a2);
  WTF::String::operator=((a1 + 8), (a2 + 8));
  v4 = *(a2 + 18);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 18) = v4;
  return a1;
}

uint64_t mpark::detail::assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>>::emplace<0ul,WebCore::SecurityOriginData::Tuple const&>(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 24))
  {
    v4 = *(a1 + 8);
    *(a1 + 8) = 0;
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }

    v5 = *a1;
    *a1 = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, a2);
    }
  }

  *(a1 + 24) = -1;
  v6 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
  }

  *a1 = v6;
  v7 = *(a2 + 8);
  if (v7)
  {
    atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
  }

  *(a1 + 8) = v7;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = 0;
  return a1;
}

__n128 _ZN5mpark3lib5cpp176invokeIZNS_6detail10assignmentINS3_6traitsIJN7WebCore18SecurityOriginData5TupleENS6_16ProcessQualifiedIN3WTF23ObjectIdentifierGenericINS6_26OpaqueOriginIdentifierTypeENSA_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEEEEEEE14generic_assignIRKNS3_15copy_assignmentISH_LNS3_5TraitE1EEEEEvOT_EUlRSP_OT0_E_JRNS3_3altILm1ESG_EERKSW_EEEDTclsr6detailE6invokeclsr3libE7forwardISP_Efp_Espclsr3libE7forwardIT0_Efp0_EEESQ_DpOS10_(uint64_t *a1, WTF::StringImpl *a2, __n128 *a3)
{
  v4 = *a1;
  if (*(*a1 + 24) == 1)
  {
    result = *a3;
    *a2 = *a3;
  }

  else
  {
    if (!*(*a1 + 24))
    {
      v6 = *(v4 + 8);
      *(v4 + 8) = 0;
      if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, a2);
      }

      v7 = *v4;
      *v4 = 0;
      if (v7)
      {
        if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v7, a2);
        }
      }
    }

    *(v4 + 24) = -1;
    result = *a3;
    *v4 = *a3;
    *(v4 + 24) = 1;
  }

  return result;
}

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t a2)
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

  return WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t a3)
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
            v24 = *v21;
            *v21 = 0;
            if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v24, v23);
            }
          }

          else
          {
            *v21 = 0;
          }

          v25 = *v13;
          *v13 = 0;
          *v21 = v25;
          *(v21 + 8) = 0;
          *(v21 + 16) = 0;
          WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(v21 + 8, (v13 + 8));
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

uint64_t WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>>,(WTF::ShouldValidateKey)1,WebCore::ClientOrigin>(uint64_t *a1, uint64_t a2)
{
  if (!*a1)
  {
    return 0;
  }

  v4 = WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WebCore::ClientOrigin>,false>::isEmptyValue<WebCore::ClientOrigin>();
  if (v4)
  {
    goto LABEL_24;
  }

  if (!*(a2 + 24))
  {
    if (*a2 != -1)
    {
      goto LABEL_5;
    }

LABEL_24:
    __break(0xC471u);
    JUMPOUT(0x19DC33BB4);
  }

  if (*(a2 + 24) != 1)
  {
LABEL_20:
    mpark::throw_bad_variant_access(v4);
  }

LABEL_5:
  v5 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v6 = *(v5 - 8);
  v7 = WTF::computeHash<WebCore::ClientOrigin>(a2) & v6;
  v8 = v5 + 72 * v7;
  v4 = WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WebCore::ClientOrigin>,false>::isEmptyValue<WebCore::ClientOrigin>();
  if ((v4 & 1) == 0)
  {
    v10 = 1;
    do
    {
      if (*(v8 + 24))
      {
        if (*(v8 + 24) != 1)
        {
          goto LABEL_20;
        }
      }

      else if (*v8 == -1)
      {
        goto LABEL_17;
      }

      if (WebCore::operator==() && (WebCore::operator==() & 1) != 0)
      {
        return v8;
      }

LABEL_17:
      v7 = (v7 + v10) & v6;
      v8 = v5 + 72 * v7;
      v4 = WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WebCore::ClientOrigin>,false>::isEmptyValue<WebCore::ClientOrigin>();
      ++v10;
    }

    while (!v4);
  }

  if (!*a1)
  {
    return 0;
  }

  return *a1 + 72 * *(*a1 - 4);
}

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,(WTF::ShouldValidateKey)1,WTF::String>(uint64_t *a1, const WTF::StringImpl **a2, const WTF::StringImpl *a3)
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
    JUMPOUT(0x19DC33CE4);
  }

  v7 = *(v3 - 8);
  v8 = *(v6 + 4);
  if (v8 < 0x100)
  {
    v9 = WTF::StringImpl::hashSlowCase(v6);
  }

  else
  {
    v9 = v8 >> 8;
  }

  for (i = 0; ; v9 = i + v11)
  {
    v11 = v9 & v7;
    v12 = (v3 + 24 * (v9 & v7));
    v13 = *v12;
    if (*v12 == -1)
    {
      goto LABEL_10;
    }

    if (!v13)
    {
      break;
    }

    if (WTF::equal(v13, *a2, a3))
    {
      return v12;
    }

LABEL_10:
    ++i;
  }

  if (*a1)
  {
    return *a1 + 24 * *(*a1 - 4);
  }

  else
  {
    return 0;
  }
}

void **WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::removeFirstMatching<BOOL WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::removeFirst<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long> const&)::{lambda(WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long> const&)#1}>(void **result, void *a2)
{
  v2 = *(result + 3);
  if (v2)
  {
    v3 = result;
    v4 = *result;
    if (**result == *a2)
    {
      v5 = 0;
LABEL_7:
      result = &v4[v5];
      if (result + 1 != &v4[v2])
      {
        result = memmove(result, result + 1, 8 * (v2 - v5) - 8);
        LODWORD(v2) = *(v3 + 3);
      }

      *(v3 + 3) = v2 - 1;
    }

    else
    {
      v5 = 0;
      while (v2 - 1 != v5)
      {
        v6 = v4[++v5];
        if (v6 == *a2)
        {
          goto LABEL_7;
        }
      }
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebCore::MessageWithMessagePorts &&<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebBroadcastChannelRegistry::PostMessageToRemote,WebKit::NetworkBroadcastChannelRegistry::postMessage(IPC::Connection&,WebCore::ClientOrigin const&,WTF::String const&,WebCore::MessageWithMessagePorts &&,WTF::CompletionHandler<void ()(void)> &&)::$_0>(WebKit::NetworkBroadcastChannelRegistry::postMessage(IPC::Connection&,WebCore::ClientOrigin const&,WTF::String const&,WebCore::MessageWithMessagePorts &&,WTF::CompletionHandler<void ()(void)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(void)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(void)> &&,IPC::Connection*>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F10FF830;
  a1[1] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebCore::MessageWithMessagePorts &&<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebBroadcastChannelRegistry::PostMessageToRemote,WebKit::NetworkBroadcastChannelRegistry::postMessage(IPC::Connection&,WebCore::ClientOrigin const&,WTF::String const&,WebCore::MessageWithMessagePorts &&,WTF::CompletionHandler<void ()(void)> &&)::$_0>(WebKit::NetworkBroadcastChannelRegistry::postMessage(IPC::Connection&,WebCore::ClientOrigin const&,WTF::String const&,WebCore::MessageWithMessagePorts &&,WTF::CompletionHandler<void ()(void)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(void)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(void)> &&,IPC::Connection*>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10FF830;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Vector<WebCore::ClientOrigin,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v6 = *a1;
    v7 = v3 << 6;
    do
    {
      WebCore::ClientOrigin::~ClientOrigin(v6, a2);
      v6 = (v8 + 64);
      v7 -= 64;
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

uint64_t WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::begin(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  if (!*(a1 - 12))
  {
    return a1 + 72 * *(a1 - 4);
  }

  return WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::makeIterator(a1, a1);
}

uint64_t WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::makeIterator(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (a1)
  {
    v3 = *(a1 - 4);
  }

  else
  {
    v3 = 0;
  }

  v4 = a1 + 72 * v3;
  if (v4 != a2)
  {
    while (WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::isEmptyOrDeletedBucket(v2))
    {
      v2 += 72;
      if (v2 == v4)
      {
        return v4;
      }
    }
  }

  return v2;
}

void *WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(void *result)
{
  if (!result)
  {
    return 0;
  }

  v1 = *(result - 1);
  v2 = &result[3 * v1];
  if (!*(result - 3))
  {
    return &result[3 * v1];
  }

  if (v1)
  {
    v3 = 24 * v1;
    while ((*result + 1) <= 1)
    {
      result += 3;
      v3 -= 24;
      if (!v3)
      {
        return v2;
      }
    }
  }

  return result;
}

WTF *WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::remove(WTF *result, uint64_t a2)
{
  v3 = result;
  if (*result)
  {
    v4 = *result + 24 * *(*result - 4);
    if (v4 == a2)
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

    v4 = 0;
  }

  if (v4 != a2)
  {
    v5 = *a2;
    *a2 = -1;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, a2);
    }

    result = *(a2 + 8);
    if (result)
    {
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      result = WTF::fastFree(result, a2);
    }

    v6 = *v3;
    v7 = vadd_s32(*(*v3 - 16), 0xFFFFFFFF00000001);
    *(v6 - 16) = v7;
    v8 = *(v6 - 4);
    if (6 * v7.i32[1] < v8 && v8 >= 9)
    {

      return WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(v3, v8 >> 1, 0);
    }
  }

  return result;
}

_BYTE *WTF::Vector<WebCore::ClientOrigin,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::ClientOrigin&>(unsigned int *a1, unint64_t a2)
{
  v3 = WTF::Vector<WebCore::ClientOrigin,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, a1[3] + 1, a2);
  v4 = mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment((*a1 + (a1[3] << 6)), v3);
  result = mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment(v4 + 32, v3 + 32);
  ++a1[3];
  return result;
}

unint64_t WTF::Vector<WebCore::ClientOrigin,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(unsigned int *a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + (a1[3] << 6) <= a3)
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

    WTF::Vector<WebCore::ClientOrigin,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebCore::ClientOrigin,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

unsigned int *WTF::Vector<WebCore::ClientOrigin,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(unsigned int *result, unint64_t a2)
{
  if (result[2] < a2)
  {
    v2 = a2;
    if (a2 >> 26)
    {
      __break(0xC471u);
    }

    else
    {
      v3 = result;
      v4 = *result;
      v5 = result[3];
      result = WTF::fastMalloc((a2 << 6));
      v3[2] = v2;
      *v3 = result;
      if (v5)
      {
        v7 = result;
        v8 = v4 + 32;
        v9 = v5 << 6;
        do
        {
          v10 = (v8 - 32);
          mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment(v7);
          result = mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment(v7 + 32);
          if (!v8[24])
          {
            v11 = *(v8 + 1);
            *(v8 + 1) = 0;
            if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v11, v6);
            }

            result = *v8;
            *v8 = 0;
            if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              result = WTF::StringImpl::destroy(result, v6);
            }
          }

          v8[24] = -1;
          if (!*(v8 - 8))
          {
            v12 = *(v8 - 3);
            *(v8 - 3) = 0;
            if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v12, v6);
            }

            result = *v10;
            *v10 = 0;
            if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              result = WTF::StringImpl::destroy(result, v6);
            }
          }

          *(v8 - 8) = -1;
          v7 += 16;
          v8 += 64;
          v9 -= 64;
        }

        while (v9);
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

uint64_t *WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::remove(uint64_t *result, uint64_t a2)
{
  v3 = result;
  if (*result)
  {
    v4 = *result + 72 * *(*result - 4);
    if (v4 == a2)
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

    v4 = 0;
  }

  if (v4 != a2)
  {
    if (!*(a2 + 56))
    {
      v5 = *(a2 + 40);
      *(a2 + 40) = 0;
      if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, a2);
      }

      v6 = *(a2 + 32);
      *(a2 + 32) = 0;
      if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, a2);
      }
    }

    *(a2 + 56) = -1;
    if (!*(a2 + 24))
    {
      v7 = *(a2 + 8);
      *(a2 + 8) = 0;
      if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, a2);
      }

      v8 = *a2;
      *a2 = 0;
      if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, a2);
      }
    }

    *a2 = -1;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    result = *(a2 + 64);
    if (result)
    {
      result = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WebCore::CharacterRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WebCore::CharacterRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WebCore::CharacterRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WebCore::CharacterRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(result, a2);
    }

    v9 = *v3;
    v10 = vadd_s32(*(*v3 - 16), 0xFFFFFFFF00000001);
    *(v9 - 16) = v10;
    v11 = *(v9 - 4);
    if (6 * v10.i32[1] < v11 && v11 >= 9)
    {

      return WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::rehash(v3, v11 >> 1, 0);
    }
  }

  return result;
}

uint64_t WTF::tryMakeString<WTF::ASCIILiteral,int>@<X0>(void *a1@<X0>, unsigned int *a2@<X1>, void *a3@<X8>)
{
  v3 = a1[1];
  v4 = v3 != 0;
  v5 = v3 - 1;
  if (!v4)
  {
    v5 = 0;
  }

  v8[0] = *a1;
  v8[1] = v5;
  if (v5 >> 31)
  {
    result = 161;
    __break(0xC471u);
  }

  else
  {
    v7 = *a2;
    return WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<int,void>>(v8, &v7, a3);
  }

  return result;
}

uint64_t WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<int,void>>@<X0>(uint64_t result@<X0>, unsigned int *a2@<X1>, void *a3@<X8>)
{
  v3 = *(result + 8);
  v4 = *a2;
  if ((*a2 & 0x80000000) != 0)
  {
    v9 = -v4;
    v5 = 1;
    do
    {
      ++v5;
      v7 = v9 >= 0xA;
      v9 /= 0xAu;
    }

    while (v7);
  }

  else
  {
    v5 = 0;
    v6 = *a2;
    do
    {
      ++v5;
      v7 = v6 >= 9;
      v8 = v6 == 9;
      v6 /= 0xAu;
    }

    while (!v8 && v7);
  }

  if (((v5 | v3) & 0x80000000) == 0)
  {
    v10 = __OFADD__(v3, v5);
    v11 = (v3 + v5);
    if (!v10)
    {
      return WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<int,void>>(v11, 1, *result, v3, v4, a3);
    }
  }

  *a3 = 0;
  return result;
}

uint64_t WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<int,void>>@<X0>(uint64_t result@<X0>, int a2@<W1>, _OWORD *a3@<X2>, size_t a4@<X3>, unsigned int a5@<W4>, void *a6@<X8>)
{
  v9 = result;
  v42[2] = *MEMORY[0x1E69E9840];
  v11 = result;
  if (a2)
  {
    if (result)
    {
      if ((result & 0x80000000) == 0)
      {
        result = WTF::tryFastCompactMalloc((result + 20));
        v12 = v42[0];
        if (v42[0])
        {
          result = v42[0] + 20;
          *v42[0] = 2;
          *(v12 + 4) = v9;
          *(v12 + 8) = v12 + 20;
          *(v12 + 16) = 4;
          if (a4)
          {
            if (a4 == 1)
            {
              goto LABEL_54;
            }

            result = memcpy(result, a3, a4);
          }

          while (1)
          {
            if (v11 >= a4)
            {
              v13 = v11 - a4;
              if ((a5 & 0x80000000) != 0)
              {
                v19 = -a5;
                v20 = 12;
                do
                {
                  if (v20 == -1)
                  {
                    goto LABEL_53;
                  }

                  *(v42 + v20--) = (v19 % 0xA) | 0x30;
                  v15 = v19 > 9;
                  v19 /= 0xAu;
                }

                while (v15);
                if (v20 < 0xD)
                {
                  v21 = v20 + 1;
                  *(v42 + v20) = 45;
                  v22 = a4 + 20;
                  while (v13)
                  {
                    *(v12 + v22++) = *(v42 + v20++);
                    ++v21;
                    --v13;
                    if (v21 == 14)
                    {
                      goto LABEL_52;
                    }
                  }
                }
              }

              else
              {
                v14 = 12;
                while (v14 != -1)
                {
                  *(v42 + v14--) = (a5 % 0xA) | 0x30;
                  v15 = a5 > 9;
                  a5 /= 0xAu;
                  if (!v15)
                  {
                    v16 = a4 + 20;
                    v17 = v14 + 1;
                    v18 = v14 + 2;
                    while (v13)
                    {
                      *(v12 + v16++) = *(v42 + v17++);
                      ++v18;
                      --v13;
                      if (v18 == 14)
                      {
                        goto LABEL_52;
                      }
                    }

                    break;
                  }
                }
              }
            }

LABEL_53:
            __break(1u);
LABEL_54:
            *result = *a3;
          }
        }

        goto LABEL_52;
      }

LABEL_19:
      v12 = 0;
      goto LABEL_52;
    }

LABEL_20:
    v12 = MEMORY[0x1E696EB88];
    atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
    goto LABEL_52;
  }

  if (!result)
  {
    goto LABEL_20;
  }

  if (result > 0x7FFFFFEF)
  {
    goto LABEL_19;
  }

  result = WTF::tryFastCompactMalloc((2 * result + 20));
  v12 = v42[0];
  if (v42[0])
  {
    v23 = (v42[0] + 20);
    *v42[0] = 2;
    *(v12 + 4) = v9;
    *(v12 + 8) = v12 + 20;
    *(v12 + 16) = 0;
    if (a4 >= 0x40)
    {
      v24 = &v23[2 * (a4 & 0x7FFFFFFFFFFFFFC0)];
      v25 = 0uLL;
      do
      {
        v43.val[0] = *a3;
        v26 = *(a3 + 1);
        v44.val[0] = a3[2];
        v27 = a3[3];
        a3 += 4;
        v28 = v27;
        v44.val[1] = 0uLL;
        v45.val[0] = v26;
        v43.val[1] = 0uLL;
        v29 = v23;
        vst2q_s8(v29, v43);
        v29 += 32;
        v45.val[1] = 0uLL;
        vst2q_s8(v29, v45);
        v30 = v23 + 64;
        vst2q_s8(v30, v44);
        v31 = v23 + 96;
        vst2q_s8(v31, *(&v25 - 1));
        v23 += 128;
      }

      while (v23 != v24);
      v23 = v24;
    }

    while (v23 != (v12 + 20 + 2 * a4))
    {
      v32 = *a3;
      a3 = (a3 + 1);
      *v23 = v32;
      v23 += 2;
    }

    if (v11 < a4)
    {
      goto LABEL_53;
    }

    v33 = v11 - a4;
    if ((a5 & 0x80000000) != 0)
    {
      v38 = -a5;
      v39 = 12;
      do
      {
        if (v39 == -1)
        {
          goto LABEL_53;
        }

        *(v42 + v39--) = (v38 % 0xA) | 0x30;
        v15 = v38 > 9;
        v38 /= 0xAu;
      }

      while (v15);
      if (v39 >= 0xD)
      {
        goto LABEL_53;
      }

      v40 = v39 + 1;
      *(v42 + v39) = 45;
      v41 = 2 * a4 + 20;
      do
      {
        if (!v33)
        {
          goto LABEL_53;
        }

        *(v12 + v41) = *(v42 + v39++);
        v41 += 2;
        ++v40;
        --v33;
      }

      while (v40 != 14);
    }

    else
    {
      v34 = 12;
      do
      {
        if (v34 == -1)
        {
          goto LABEL_53;
        }

        *(v42 + v34--) = (a5 % 0xA) | 0x30;
        v15 = a5 > 9;
        a5 /= 0xAu;
      }

      while (v15);
      v35 = 2 * a4 + 20;
      v36 = v34 + 1;
      v37 = v34 + 2;
      do
      {
        if (!v33)
        {
          goto LABEL_53;
        }

        *(v12 + v35) = *(v42 + v36++);
        v35 += 2;
        ++v37;
        --v33;
      }

      while (v37 != 14);
    }
  }

LABEL_52:
  *a6 = v12;
  return result;
}

_DWORD *WTF::RefCounted<WebKit::NetworkLoadScheduler>::deref(_DWORD *result)
{
  if (*result == 1)
  {
    WebKit::NetworkLoadScheduler::~NetworkLoadScheduler((result - 2));

    return bmalloc::api::tzoneFree(v2, v3);
  }

  else
  {
    --*result;
  }

  return result;
}

WebKit::NetworkSchemeRegistry *WTF::RefCounted<WebKit::NetworkSchemeRegistry>::deref(WebKit::NetworkSchemeRegistry *result, WTF::StringImpl *a2)
{
  if (*result == 1)
  {
    WebKit::NetworkSchemeRegistry::~NetworkSchemeRegistry(result, a2);

    return WTF::fastFree(v3, v4);
  }

  else
  {
    --*result;
  }

  return result;
}

void WebKit::NetworkSchemeRegistry::~NetworkSchemeRegistry(WebKit::NetworkSchemeRegistry *this, WTF::StringImpl *a2)
{
  v3 = *(this + 1);
  if (v3)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  if (*this != 1)
  {
    __break(0xC471u);
  }
}

atomic_ullong *WTF::Detail::CallableWrapper<WebKit::NetworkConnectionToWebProcess::NetworkConnectionToWebProcess(WebKit::NetworkProcess &,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,PAL::SessionID,WebKit::NetworkProcessConnectionParameters &&,IPC::Connection::Identifier &&)::$_0,void,BOOL>::call(uint64_t a1, int a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 8);
  v4 = qword_1ED640D10;
  if (os_log_type_enabled(qword_1ED640D10, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(v3 + 272);
    *buf = 134218496;
    *&buf[4] = v3;
    v18 = 2048;
    v19 = v5;
    v20 = 1024;
    v21 = a2;
    _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "%p - [webProcessIdentifier=%llu] NetworkConnectionToWebProcess::hasUploadStateChanged: (hasUpload=%d)", buf, 0x1Cu);
  }

  WebKit::AuxiliaryProcess::protectedParentProcessConnection(*(v3 + 88), &v16);
  v6 = v16;
  v8 = IPC::Encoder::operator new(0x238, v7);
  *v8 = 563;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = 0;
  IPC::Encoder::encodeHeader(v8);
  *buf = v8;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v8, *(v3 + 272));
  v9 = IPC::Encoder::grow(v8, 1uLL, 1);
  if (v10)
  {
    *v9 = a2;
    IPC::Connection::sendMessageImpl(v6, buf, 0, 0);
    v12 = *buf;
    *buf = 0;
    if (v12)
    {
      IPC::Encoder::~Encoder(v12, v11);
      bmalloc::api::tzoneFree(v14, v15);
    }

    result = v16;
    v16 = 0;
    if (result)
    {
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(result);
    }
  }

  else
  {
    result = 1067;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::NetworkOriginAccessPatterns::operator new(WebKit::NetworkOriginAccessPatterns *this, void *a2)
{
  if (WebKit::NetworkOriginAccessPatterns::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::NetworkOriginAccessPatterns::s_heapRef, a2);
  }

  else
  {
    return WebKit::NetworkOriginAccessPatterns::operatorNewSlow(0x18);
  }
}

unsigned int *WTF::Vector<WebKit::NetworkConnectionToWebProcess::ResourceNetworkActivityTracker,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(unsigned int *a1, void *a2)
{
  v3 = a1[3];
  if (v3)
  {
    v6 = (*a1 + 40);
    v7 = 48 * v3;
    do
    {
      v8 = *v6;
      *v6 = 0;
      if (v8)
      {
      }

      v6 += 6;
      v7 -= 48;
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

void *WTF::Detail::CallableWrapper<WebKit::NetworkConnectionToWebProcess::NetworkConnectionToWebProcess(WebKit::NetworkProcess &,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,PAL::SessionID,WebKit::NetworkProcessConnectionParameters &&,IPC::Connection::Identifier &&)::$_1,void>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F10FF880;
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkConnectionToWebProcess::NetworkConnectionToWebProcess(WebKit::NetworkProcess &,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,PAL::SessionID,WebKit::NetworkProcessConnectionParameters &&,IPC::Connection::Identifier &&)::$_1,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10FF880;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkConnectionToWebProcess::NetworkConnectionToWebProcess(WebKit::NetworkProcess &,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,PAL::SessionID,WebKit::NetworkProcessConnectionParameters &&,IPC::Connection::Identifier &&)::$_1,void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    atomic_fetch_add(v1, 1u);
  }

  v2 = WTF::fastMalloc(0x10);
  *v2 = &unk_1F10FF8A8;
  v2[1] = v1;
  v4 = v2;
  WTF::ensureOnMainRunLoop();
  result = v4;
  if (v4)
  {
    return (*(*v4 + 8))(v4);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkConnectionToWebProcess::NetworkConnectionToWebProcess(WebKit::NetworkProcess &,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,PAL::SessionID,WebKit::NetworkProcessConnectionParameters &&,IPC::Connection::Identifier &&)::$_1::operator() const(void)::{lambda(void)#1},void>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F10FF8A8;
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkConnectionToWebProcess::NetworkConnectionToWebProcess(WebKit::NetworkProcess &,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,PAL::SessionID,WebKit::NetworkProcessConnectionParameters &&,IPC::Connection::Identifier &&)::$_1::operator() const(void)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10FF8A8;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

atomic_ullong *WTF::Detail::CallableWrapper<WebKit::NetworkConnectionToWebProcess::NetworkConnectionToWebProcess(WebKit::NetworkProcess &,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,PAL::SessionID,WebKit::NetworkProcessConnectionParameters &&,IPC::Connection::Identifier &&)::$_1::operator() const(void)::{lambda(void)#1},void>::call(atomic_ullong *result)
{
  v1 = result[1];
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      v3 = result;
      WebKit::AuxiliaryProcess::protectedParentProcessConnection(*(v2 + 32), &v13);
      v5 = v3[1];
      if (v5 && (v6 = *(v5 + 8)) != 0)
      {
        v7 = v13;
        v8 = IPC::Encoder::operator new(0x238, v4);
        *v8 = 568;
        *(v8 + 68) = 0;
        *(v8 + 70) = 0;
        *(v8 + 69) = 0;
        *(v8 + 2) = 0;
        *(v8 + 3) = 0;
        *(v8 + 1) = 0;
        IPC::Encoder::encodeHeader(v8);
        v14 = v8;
        IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v8, *(v6 + 216));
        IPC::Connection::sendMessageImpl(v7, &v14, 0, 0);
        v10 = v14;
        v14 = 0;
        if (v10)
        {
          IPC::Encoder::~Encoder(v10, v9);
          bmalloc::api::tzoneFree(v11, v12);
        }

        result = v13;
        v13 = 0;
        if (result)
        {
          return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(result);
        }
      }

      else
      {
        result = 121;
        __break(0xC471u);
      }
    }
  }

  return result;
}

void *WTF::HashTable<WebCore::MessagePortIdentifier,WebCore::MessagePortIdentifier,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::MessagePortIdentifier>,WTF::HashTraits<WebCore::MessagePortIdentifier>,WTF::HashTraits<WebCore::MessagePortIdentifier>,WTF::FastMalloc>::begin(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  if (*(a1 - 3))
  {
    return WTF::HashTable<WebCore::MessagePortIdentifier,WebCore::MessagePortIdentifier,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::MessagePortIdentifier>,WTF::HashTraits<WebCore::MessagePortIdentifier>,WTF::HashTraits<WebCore::MessagePortIdentifier>,WTF::FastMalloc>::makeConstIterator(a1, a1);
  }

  return &a1[2 * *(a1 - 1)];
}

void *WTF::HashTable<WebCore::MessagePortIdentifier,WebCore::MessagePortIdentifier,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::MessagePortIdentifier>,WTF::HashTraits<WebCore::MessagePortIdentifier>,WTF::HashTraits<WebCore::MessagePortIdentifier>,WTF::FastMalloc>::makeConstIterator(uint64_t a1, void *a2)
{
  if (a1)
  {
    v3 = *(a1 - 4);
  }

  else
  {
    v3 = 0;
  }

  v4 = (a1 + 16 * v3);
  if (v4 != a2)
  {
    while (*a2 == -1 || *a2 == 0)
    {
      a2 += 2;
      if (a2 == v4)
      {
        return (a1 + 16 * v3);
      }
    }
  }

  return a2;
}

void *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(void)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(void)>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(void)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CompletionHandler<void ()(void)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::begin(void *result)
{
  if (!result)
  {
    return 0;
  }

  v1 = *(result - 1);
  v2 = &result[2 * v1];
  if (!*(result - 3))
  {
    return &result[2 * v1];
  }

  if (v1)
  {
    v3 = 16 * v1;
    while ((*result + 1) <= 1)
    {
      result += 2;
      v3 -= 16;
      if (!v3)
      {
        return v2;
      }
    }
  }

  return result;
}

uint64_t WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::NetworkSocketChannel,WTF::RawPtrTraits<WebKit::NetworkSocketChannel>,WTF::DefaultRefDerefTraits<WebKit::NetworkSocketChannel>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::NetworkSocketChannel,WTF::RawPtrTraits<WebKit::NetworkSocketChannel>,WTF::DefaultRefDerefTraits<WebKit::NetworkSocketChannel>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::NetworkSocketChannel,WTF::RawPtrTraits<WebKit::NetworkSocketChannel>,WTF::DefaultRefDerefTraits<WebKit::NetworkSocketChannel>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::NetworkSocketChannel,WTF::RawPtrTraits<WebKit::NetworkSocketChannel>,WTF::DefaultRefDerefTraits<WebKit::NetworkSocketChannel>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t a2)
{
  if (a2 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DC35138);
  }

  if (!a2)
  {
    __break(0xC471u);
    JUMPOUT(0x19DC35158);
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

uint64_t WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkTransportSession,WTF::RawPtrTraits<WebKit::NetworkTransportSession>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportSession>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkTransportSession,WTF::RawPtrTraits<WebKit::NetworkTransportSession>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportSession>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkTransportSession,WTF::RawPtrTraits<WebKit::NetworkTransportSession>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportSession>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkTransportSession,WTF::RawPtrTraits<WebKit::NetworkTransportSession>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportSession>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t a2)
{
  if (a2 == -1 || !a2)
  {
    __break(0xC471u);
    JUMPOUT(0x19DC35210);
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

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcessConnection::ConnectToRTCDataChannelRemoteSource,WTF::CompletionHandler<void ()(std::optional<BOOL>)>>(WTF::CompletionHandler<void ()(std::optional<BOOL>)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F10FF8D0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcessConnection::ConnectToRTCDataChannelRemoteSource,WTF::CompletionHandler<void ()(std::optional<BOOL>)>>(WTF::CompletionHandler<void ()(std::optional<BOOL>)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10FF8D0;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcessConnection::ConnectToRTCDataChannelRemoteSource,WTF::CompletionHandler<void ()(std::optional<BOOL>)>>(WTF::CompletionHandler<void ()(std::optional<BOOL>)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
{
  if (a3 && *a3)
  {
    v4 = IPC::Decoder::decode<std::tuple<std::optional<BOOL>>>(a3);
    v5 = v4 & ((v4 >> 1) >> 15);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v6 + 16))(v6, v5);
  v7 = *(*v6 + 8);

  return v7(v6);
}

void *WTF::HashTable<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::FastMalloc>::begin(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  if (*(a1 - 3))
  {
    return WTF::HashTable<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::FastMalloc>::makeConstIterator(a1, a1);
  }

  return &a1[10 * *(a1 - 1)];
}

void *WTF::HashTable<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::FastMalloc>::makeConstIterator(uint64_t a1, void *a2)
{
  v2 = a2;
  if (a1)
  {
    v3 = *(a1 - 4);
  }

  else
  {
    v3 = 0;
  }

  v4 = (a1 + 80 * v3);
  if (v4 != a2)
  {
    while ((WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,false>::isEmptyValue<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>(v2) & 1) != 0 || *v2 == -1)
    {
      v2 += 10;
      if (v2 == v4)
      {
        return v4;
      }
    }
  }

  return v2;
}

uint64_t WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,false>::isEmptyValue<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  WTF::PairHashTraits<WTF::HashTraits<WTF::URL>,WTF::HashTraits<std::optional<WebCore::SecurityOriginData>>>::emptyValue(&v10);
  if (WTF::equal(*a1, v10, v2))
  {
    v9 = *(a1 + 72);
    v4 = v9 ^ v14 ^ 1;
    if (v9 == 1 && (v14 & 1) != 0)
    {
      v4 = WebCore::operator==();
    }
  }

  else
  {
    v4 = 0;
  }

  if (v14 == 1)
  {
    if (!v13)
    {
      v5 = v12;
      v12 = 0;
      if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, v3);
      }

      v6 = v11;
      v11 = 0;
      if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, v3);
      }
    }

    v13 = -1;
  }

  v7 = v10;
  v10 = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v3);
  }

  return v4 & 1;
}

WTF::StringImpl *WTF::PairHashTraits<WTF::HashTraits<WTF::URL>,WTF::HashTraits<std::optional<WebCore::SecurityOriginData>>>::emptyValue(uint64_t a1)
{
  v4[0] = 0;
  WTF::URL::invalidate(v4);
  WTF::URL::URL(a1, v4);
  *(a1 + 40) = 0;
  *(a1 + 72) = 0;
  result = v4[0];
  v4[0] = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v2);
    }
  }

  return result;
}

void *WTF::HashTable<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,WTF::KeyValuePair<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,unsigned int>>,WTF::DefaultHash<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashMap<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,unsigned int,WTF::DefaultHash<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::FastMalloc>::begin(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  if (!*(a1 - 3))
  {
    return &a1[11 * *(a1 - 1)];
  }

  return WTF::HashTable<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,WTF::KeyValuePair<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,unsigned int>>,WTF::DefaultHash<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashMap<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,unsigned int,WTF::DefaultHash<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::FastMalloc>::makeIterator(a1, a1);
}

void *WTF::HashTable<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,WTF::KeyValuePair<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,unsigned int>>,WTF::DefaultHash<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashMap<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,unsigned int,WTF::DefaultHash<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::FastMalloc>::makeIterator(uint64_t a1, void *a2)
{
  v2 = a2;
  if (a1)
  {
    v3 = *(a1 - 4);
  }

  else
  {
    v3 = 0;
  }

  v4 = (a1 + 88 * v3);
  if (v4 != a2)
  {
    while ((WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,false>::isEmptyValue<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>(v2) & 1) != 0 || *v2 == -1)
    {
      v2 += 11;
      if (v2 == v4)
      {
        return v4;
      }
    }
  }

  return v2;
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::NetworkSocketChannel,WTF::RawPtrTraits<WebKit::NetworkSocketChannel>,WTF::DefaultRefDerefTraits<WebKit::NetworkSocketChannel>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::NetworkSocketChannel,WTF::RawPtrTraits<WebKit::NetworkSocketChannel>,WTF::DefaultRefDerefTraits<WebKit::NetworkSocketChannel>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::NetworkSocketChannel,WTF::RawPtrTraits<WebKit::NetworkSocketChannel>,WTF::DefaultRefDerefTraits<WebKit::NetworkSocketChannel>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::NetworkSocketChannel,WTF::RawPtrTraits<WebKit::NetworkSocketChannel>,WTF::DefaultRefDerefTraits<WebKit::NetworkSocketChannel>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t *a2)
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

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::NetworkSocketChannel,WTF::RawPtrTraits<WebKit::NetworkSocketChannel>,WTF::DefaultRefDerefTraits<WebKit::NetworkSocketChannel>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::NetworkSocketChannel,WTF::RawPtrTraits<WebKit::NetworkSocketChannel>,WTF::DefaultRefDerefTraits<WebKit::NetworkSocketChannel>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::NetworkSocketChannel,WTF::RawPtrTraits<WebKit::NetworkSocketChannel>,WTF::DefaultRefDerefTraits<WebKit::NetworkSocketChannel>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::NetworkSocketChannel,WTF::RawPtrTraits<WebKit::NetworkSocketChannel>,WTF::DefaultRefDerefTraits<WebKit::NetworkSocketChannel>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::NetworkSocketChannel,WTF::RawPtrTraits<WebKit::NetworkSocketChannel>,WTF::DefaultRefDerefTraits<WebKit::NetworkSocketChannel>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::NetworkSocketChannel,WTF::RawPtrTraits<WebKit::NetworkSocketChannel>,WTF::DefaultRefDerefTraits<WebKit::NetworkSocketChannel>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::NetworkSocketChannel,WTF::RawPtrTraits<WebKit::NetworkSocketChannel>,WTF::DefaultRefDerefTraits<WebKit::NetworkSocketChannel>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::NetworkSocketChannel,WTF::RawPtrTraits<WebKit::NetworkSocketChannel>,WTF::DefaultRefDerefTraits<WebKit::NetworkSocketChannel>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t *a3)
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
          v16 = *a1;
          if (*a1)
          {
            v17 = *(v16 - 8);
          }

          else
          {
            v17 = 0;
          }

          v18 = (v14 + ~(v14 << 32)) ^ ((v14 + ~(v14 << 32)) >> 22);
          v19 = 9 * ((v18 + ~(v18 << 13)) ^ ((v18 + ~(v18 << 13)) >> 8));
          v20 = (v19 ^ (v19 >> 15)) + ~((v19 ^ (v19 >> 15)) << 27);
          v21 = v17 & ((v20 >> 31) ^ v20);
          v22 = 1;
          do
          {
            v23 = v21;
            v24 = *(v16 + 16 * v21);
            v21 = (v21 + v22++) & v17;
          }

          while (v24);
          v25 = (v16 + 16 * v23);
          v26 = v25[1];
          v25[1] = 0;
          if (v26)
          {
            if (v26[6] == 1)
            {
              (*(*v26 + 8))(v26);
            }

            else
            {
              --v26[6];
            }
          }

          *v25 = *v13;
          v27 = v13[1];
          v13[1] = 0;
          v25[1] = v27;
          v28 = v13[1];
          v13[1] = 0;
          if (v28)
          {
            if (v28[6] == 1)
            {
              (*(*v28 + 8))(v28);
            }

            else
            {
              --v28[6];
            }
          }

          if (v13 == a3)
          {
            v12 = v25;
          }
        }

        else
        {
          v15 = v13[1];
          v13[1] = 0;
          if (v15)
          {
            if (v15[6] == 1)
            {
              (*(*v15 + 8))(v15);
            }

            else
            {
              --v15[6];
            }
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

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::NetworkSocketChannel,WTF::RawPtrTraits<WebKit::NetworkSocketChannel>,WTF::DefaultRefDerefTraits<WebKit::NetworkSocketChannel>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::NetworkSocketChannel,WTF::RawPtrTraits<WebKit::NetworkSocketChannel>,WTF::DefaultRefDerefTraits<WebKit::NetworkSocketChannel>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::NetworkSocketChannel,WTF::RawPtrTraits<WebKit::NetworkSocketChannel>,WTF::DefaultRefDerefTraits<WebKit::NetworkSocketChannel>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::NetworkSocketChannel,WTF::RawPtrTraits<WebKit::NetworkSocketChannel>,WTF::DefaultRefDerefTraits<WebKit::NetworkSocketChannel>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(uint64_t *a1, void *a2)
{
  result = WTF::KeyValuePairHashTraits<WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::NetworkSocketChannel,WTF::RawPtrTraits<WebKit::NetworkSocketChannel>,WTF::DefaultRefDerefTraits<WebKit::NetworkSocketChannel>>>>::customDeleteBucket(a2);
  v4 = *a1;
  v5 = vadd_s32(*(*a1 - 16), 0xFFFFFFFF00000001);
  *(v4 - 16) = v5;
  v6 = *(v4 - 4);
  if (6 * v5.i32[1] < v6 && v6 >= 9)
  {

    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::NetworkSocketChannel,WTF::RawPtrTraits<WebKit::NetworkSocketChannel>,WTF::DefaultRefDerefTraits<WebKit::NetworkSocketChannel>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::NetworkSocketChannel,WTF::RawPtrTraits<WebKit::NetworkSocketChannel>,WTF::DefaultRefDerefTraits<WebKit::NetworkSocketChannel>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::NetworkSocketChannel,WTF::RawPtrTraits<WebKit::NetworkSocketChannel>,WTF::DefaultRefDerefTraits<WebKit::NetworkSocketChannel>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::NetworkSocketChannel,WTF::RawPtrTraits<WebKit::NetworkSocketChannel>,WTF::DefaultRefDerefTraits<WebKit::NetworkSocketChannel>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v6 >> 1, 0);
  }

  return result;
}

_DWORD *WTF::KeyValuePairHashTraits<WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::NetworkSocketChannel,WTF::RawPtrTraits<WebKit::NetworkSocketChannel>,WTF::DefaultRefDerefTraits<WebKit::NetworkSocketChannel>>>>::customDeleteBucket(void *a1)
{
  result = a1[1];
  *a1 = -1;
  a1[1] = 0;
  if (result)
  {
    if (result[6] == 1)
    {
      return (*(*result + 8))();
    }

    else
    {
      --result[6];
    }
  }

  return result;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::NetworkSocketChannel,WTF::RawPtrTraits<WebKit::NetworkSocketChannel>,WTF::DefaultRefDerefTraits<WebKit::NetworkSocketChannel>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::NetworkSocketChannel,WTF::RawPtrTraits<WebKit::NetworkSocketChannel>,WTF::DefaultRefDerefTraits<WebKit::NetworkSocketChannel>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::NetworkSocketChannel,WTF::RawPtrTraits<WebKit::NetworkSocketChannel>,WTF::DefaultRefDerefTraits<WebKit::NetworkSocketChannel>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::NetworkSocketChannel,WTF::RawPtrTraits<WebKit::NetworkSocketChannel>,WTF::DefaultRefDerefTraits<WebKit::NetworkSocketChannel>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::NetworkSocketChannel,WTF::RawPtrTraits<WebKit::NetworkSocketChannel>,WTF::DefaultRefDerefTraits<WebKit::NetworkSocketChannel>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::NetworkSocketChannel,WTF::RawPtrTraits<WebKit::NetworkSocketChannel>,WTF::DefaultRefDerefTraits<WebKit::NetworkSocketChannel>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t *a2)
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
    JUMPOUT(0x19DC35AC4);
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

_DWORD *WTF::RefCounted<WebCore::SWServer>::deref(_DWORD *result)
{
  if (*result == 1)
  {
    v2 = MEMORY[0x19EB0F730](result - 2);

    return bmalloc::api::tzoneFree(v2, v3);
  }

  else
  {
    --*result;
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkConnectionToWebProcess::scheduleResourceLoad(WebKit::NetworkResourceLoadParameters &&,std::optional<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F10FF8F8;
  WebKit::NetworkResourceLoadParameters::~NetworkResourceLoadParameters((a1 + 4), a2);
  v3 = a1[3];
  a1[3] = 0;
  if (v3)
  {
    if (v3[5] == 1)
    {
      (*(*v3 + 8))(v3);
    }

    else
    {
      --v3[5];
    }
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkConnectionToWebProcess::scheduleResourceLoad(WebKit::NetworkResourceLoadParameters &&,std::optional<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F10FF8F8;
  WebKit::NetworkResourceLoadParameters::~NetworkResourceLoadParameters((a1 + 4), a2);
  v4 = a1[3];
  a1[3] = 0;
  if (v4)
  {
    if (v4[5] == 1)
    {
      (*(*v4 + 8))(v4);
    }

    else
    {
      --v4[5];
    }
  }

  return WTF::fastFree(a1, v3);
}

void WTF::Detail::CallableWrapper<WebKit::NetworkConnectionToWebProcess::scheduleResourceLoad(WebKit::NetworkResourceLoadParameters &&,std::optional<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>)::$_0,void>::call(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 88);
  v4 = *(v1 + 272);
  v3 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::lookup<WTF::HashMapTranslatorAdapter<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>( (v2 + 152),  &v4);
  if (v3 && *(v3 + 8))
  {

    WebKit::NetworkConnectionToWebProcess::scheduleResourceLoad(v1);
  }
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkConnectionToWebProcess::loadPing(WebKit::NetworkResourceLoadParameters &&)::$_0,void,WebCore::ResourceError const&,WebKit::NetworkConnectionToWebProcess::loadPing(WebKit::NetworkResourceLoadParameters &&)::$_0::ResourceResponse const&>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F10FF920;
  a1[1] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkConnectionToWebProcess::loadPing(WebKit::NetworkResourceLoadParameters &&)::$_0,void,WebCore::ResourceError const&,WebKit::NetworkConnectionToWebProcess::loadPing(WebKit::NetworkResourceLoadParameters &&)::$_0::ResourceResponse const&>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10FF920;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *WTF::Detail::CallableWrapper<WebKit::NetworkConnectionToWebProcess::loadPing(WebKit::NetworkResourceLoadParameters &&)::$_0,void,WebCore::ResourceError const&,WebKit::NetworkConnectionToWebProcess::loadPing(WebKit::NetworkResourceLoadParameters &&)::$_0::ResourceResponse const&>::call(uint64_t a1, void *a2, WebCore::ResourceResponseBase *a3)
{
  v6 = *(a1 + 8);
  v7 = IPC::Encoder::operator new(0x238, a2);
  *v7 = 515;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = 0;
  IPC::Encoder::encodeHeader(v7);
  v12 = v7;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v7, *(a1 + 16));
  IPC::ArgumentCoder<WebCore::ResourceError,void>::encode(v7, a2);
  IPC::ArgumentCoder<WebCore::ResourceResponse,void>::encode(v7, a3);
  IPC::Connection::sendMessageImpl(v6, &v12, 0, 0);
  result = v12;
  v12 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v8);
    return bmalloc::api::tzoneFree(v10, v11);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkConnectionToWebProcess::preconnectTo(std::optional<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::NetworkResourceLoadParameters &&)::$_1,void,WebCore::ResourceError const&,WebCore::NetworkLoadMetrics const&>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F10FF948;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    if (v2[5] == 1)
    {
      (*(*v2 + 8))(v2);
    }

    else
    {
      --v2[5];
    }
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkConnectionToWebProcess::preconnectTo(std::optional<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::NetworkResourceLoadParameters &&)::$_1,void,WebCore::ResourceError const&,WebCore::NetworkLoadMetrics const&>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F10FF948;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    if (v3[5] == 1)
    {
      (*(*v3 + 8))(v3);
    }

    else
    {
      --v3[5];
    }
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *WTF::Detail::CallableWrapper<WebKit::NetworkConnectionToWebProcess::preconnectTo(std::optional<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::NetworkResourceLoadParameters &&)::$_1,void,WebCore::ResourceError const&,WebCore::NetworkLoadMetrics const&>::call(IPC::Encoder *result, WebCore::ResourceError *a2)
{
  if (*(result + 32) == 1)
  {
    return WebKit::NetworkConnectionToWebProcess::didFinishPreconnection(*(result + 1), *(result + 3), a2);
  }

  return result;
}

uint64_t Messages::NetworkProcessConnection::LoadCancelledDownloadRedirectRequestInFrame::encode<IPC::Encoder>(uint64_t a1, IPC::Encoder *a2)
{
  IPC::ArgumentCoder<WebCore::ResourceRequest,void>::encode(a2, *a1);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a2, **(a1 + 8));
  v4 = **(a1 + 16);

  return IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a2, v4);
}

WTF::StringImpl **WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::remove(uint64_t *a1, WTF::StringImpl *a2)
{
  result = *a2;
  *a2 = -1;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, a2);
  }

  v4 = *a1;
  v5 = vadd_s32(*(*a1 - 16), 0xFFFFFFFF00000001);
  *(v4 - 16) = v5;
  v6 = *(v4 - 4);
  if (6 * v5.i32[1] < v6 && v6 >= 9)
  {

    return WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(a1, v6 >> 1, 0);
  }

  return result;
}

WTF *WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashTraits<WTF::String>,WTF::DefaultHash<WTF::String>>,(WTF::ShouldValidateKey)1,WTF::String>(uint64_t *a1, const WTF::StringImpl **a2, const WTF::StringImpl *a3)
{
  if (!*a1)
  {
    return 0;
  }

  result = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashTraits<WTF::String>,WTF::DefaultHash<WTF::String>>,(WTF::ShouldValidateKey)1,WTF::String>(a1, a2, a3);
  v5 = *a1;
  if (!result)
  {
    if (v5)
    {
      return (v5 + 8 * *(v5 - 4));
    }

    else
    {
      return 0;
    }
  }

  return result;
}

WTF *WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashTraits<WTF::String>,WTF::DefaultHash<WTF::String>>,(WTF::ShouldValidateKey)1,WTF::String>(uint64_t *a1, const WTF::StringImpl **a2, const WTF::StringImpl *a3)
{
  v4 = *a2;
  if (*a2 == -1 || !v4)
  {
    __break(0xC471u);
    JUMPOUT(0x19DC36198);
  }

  v5 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v7 = *(v5 - 8);
  v8 = *(v4 + 4);
  if (v8 < 0x100)
  {
    v9 = WTF::StringImpl::hashSlowCase(v4);
  }

  else
  {
    v9 = v8 >> 8;
  }

  for (i = 0; ; v9 = i + v11)
  {
    v11 = v9 & v7;
    result = *(v5 + 8 * v11);
    if (result != -1)
    {
      if (!result)
      {
        return result;
      }

      if (WTF::equal(result, *a2, a3))
      {
        break;
      }
    }

    ++i;
  }

  return (v5 + 8 * v11);
}

uint64_t *WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet(uint64_t *a1, WTF::StringImpl **a2, uint64_t a3)
{
  *a1 = 0;
  if (a3)
  {
    v6 = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::computeBestTableSize(a3);
    v7 = WTF::fastZeroedMalloc((8 * v6 + 16));
    *a1 = v7 + 16;
    *(v7 + 8) = v6 - 1;
    *(v7 + 12) = v6;
    *v7 = 0;
    v9 = 8 * a3;
    do
    {
      WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(a1, a2++, v8, v11);
      v9 -= 8;
    }

    while (v9);
  }

  return a1;
}

uint64_t WTF::HashTable<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(uint64_t a1, uint64_t *a2, void *a3)
{
  WTF::checkHashTableKey<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::IdentityHashTranslator<WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::DefaultHash<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>>,(WTF::ShouldValidateKey)1,std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>(a3);
  v6 = *a2;
  if (*a2 || (WTF::HashTable<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::FastMalloc>::expand(a2, 0), (v6 = *a2) != 0))
  {
    v7 = *(v6 - 8);
  }

  else
  {
    v7 = 0;
  }

  v8 = WTF::PairHash<WTF::URL,std::optional<WebCore::SecurityOriginData>>::hash(a3) & v7;
  v9 = (v6 + 80 * v8);
  if ((WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,false>::isEmptyValue<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>(v9) & 1) == 0)
  {
    v18 = 0;
    v19 = 1;
    do
    {
      if (*v9 == -1)
      {
        v18 = v9;
      }

      else
      {
        result = WTF::PairHash<WTF::URL,std::optional<WebCore::SecurityOriginData>>::equal(v9, a3, v10);
        if (result)
        {
          v20 = *a2;
          if (*a2)
          {
            v21 = *(v20 - 4);
          }

          else
          {
            v21 = 0;
          }

          v17 = 0;
          v16 = v20 + 80 * v21;
          goto LABEL_9;
        }
      }

      v8 = (v8 + v19) & v7;
      v9 = (v6 + 80 * v8);
      ++v19;
    }

    while (!WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,false>::isEmptyValue<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>(v9));
    if (v18)
    {
      WTF::PairHashTraits<WTF::HashTraits<WTF::URL>,WTF::HashTraits<std::optional<WebCore::SecurityOriginData>>>::emptyValue(v18);
      --*(*a2 - 16);
      v9 = v18;
    }
  }

  result = WTF::IdentityHashTranslator<WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::DefaultHash<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>>::translate<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::HashTable<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::FastMalloc>,std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>>> WTF::HashTable<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>&&)::{lambda(void)#1}>(v9, a3);
  v12 = *a2;
  if (*a2)
  {
    v13 = *(v12 - 12) + 1;
  }

  else
  {
    v13 = 1;
  }

  *(v12 - 12) = v13;
  v14 = (*(v12 - 16) + v13);
  v15 = *(v12 - 4);
  if (v15 > 0x400)
  {
    if (v15 > 2 * v14)
    {
      goto LABEL_8;
    }

LABEL_22:
    result = WTF::HashTable<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::FastMalloc>::expand(a2, v9);
    v9 = result;
    v12 = *a2;
    if (*a2)
    {
      LODWORD(v15) = *(v12 - 4);
    }

    else
    {
      LODWORD(v15) = 0;
    }

    goto LABEL_8;
  }

  if (3 * v15 <= 4 * v14)
  {
    goto LABEL_22;
  }

LABEL_8:
  v16 = v12 + 80 * v15;
  v17 = 1;
LABEL_9:
  *a1 = v9;
  *(a1 + 8) = v16;
  *(a1 + 16) = v17;
  return result;
}

uint64_t WTF::checkHashTableKey<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::IdentityHashTranslator<WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::DefaultHash<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>>,(WTF::ShouldValidateKey)1,std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>(void *a1)
{
  result = WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,false>::isEmptyValue<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>(a1);
  if (result || *a1 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DC36454);
  }

  return result;
}

uint64_t WTF::HashTable<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::FastMalloc>::expand(uint64_t *a1, void *a2)
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

  return WTF::HashTable<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

uint64_t WTF::IdentityHashTranslator<WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::DefaultHash<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>>::translate<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::HashTable<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::FastMalloc>,std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>>> WTF::HashTable<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>&&)::{lambda(void)#1}>(uint64_t a1, uint64_t a2)
{
  v6[5] = *MEMORY[0x1E69E9840];
  std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>::pair[abi:sn200100](v5, a2);
  WTF::URL::operator=(a1, v5);
  std::__optional_storage_base<WebCore::SecurityOriginData,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::SecurityOriginData,false>>((a1 + 40), v6);
  return std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>::~pair(v5, v3);
}

uint64_t WTF::HashTable<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, void *a3)
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

  Table = WTF::HashTable<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::FastMalloc>::allocateTable(a2);
  *a1 = Table;
  *(Table - 8) = a2 - 1;
  *(Table - 4) = a2;
  *(Table - 16) = 0;
  *(Table - 12) = v8;
  v11 = 0;
  if (v7)
  {
    v12 = v7;
    v13 = v6;
    do
    {
      if (*v13 != -1)
      {
        if (WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,false>::isEmptyValue<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>(v13))
        {
          std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>::~pair(v13, v14);
        }

        else
        {
          v15 = WTF::HashTable<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::FastMalloc>::reinsert(*a1, v13);
          std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>::~pair(v13, v16);
          if (v13 == a3)
          {
            v11 = v15;
          }
        }
      }

      v13 += 10;
      --v12;
    }

    while (v12);
  }

  else
  {
    result = 0;
    if (!v6)
    {
      return result;
    }
  }

  WTF::fastFree((v6 - 16), v10);
  return v11;
}

uint64_t WTF::HashTable<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::FastMalloc>::allocateTable(unsigned int a1)
{
  v2 = WTF::fastMalloc((80 * a1 + 16));
  v3 = v2 + 16;
  if (a1)
  {
    v4 = a1;
    v5 = v2 + 16;
    do
    {
      WTF::PairHashTraits<WTF::HashTraits<WTF::URL>,WTF::HashTraits<std::optional<WebCore::SecurityOriginData>>>::emptyValue(v5);
      v5 += 80;
      --v4;
    }

    while (v4);
  }

  return v3;
}

uint64_t WTF::HashTable<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::FastMalloc>::reinsert(uint64_t a1, uint64_t a2)
{
  v3 = WTF::HashTable<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::FastMalloc>::lookupForReinsert<WTF::IdentityHashTranslator<WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::DefaultHash<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>>,std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>(a1, a2);
  v5 = std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>::~pair(v3, v4);

  return std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>::pair[abi:sn200100](v5, a2);
}

uint64_t WTF::HashTable<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::FastMalloc>::lookupForReinsert<WTF::IdentityHashTranslator<WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::DefaultHash<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>>,std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = *(a1 - 8);
  }

  else
  {
    v3 = 0;
  }

  v4 = WTF::PairHash<WTF::URL,std::optional<WebCore::SecurityOriginData>>::hash(a2);
  v5 = 0;
  do
  {
    v6 = v4 & v3;
    v7 = WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,false>::isEmptyValue<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>(a1 + 80 * (v4 & v3));
    v4 = ++v5 + v6;
  }

  while (!v7);
  return a1 + 80 * v6;
}

uint64_t std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>::pair[abi:sn200100](uint64_t a1, uint64_t a2)
{
  WTF::URL::URL(a1, a2);
  *(v4 + 40) = 0;
  v5 = (v4 + 40);
  v5[32] = 0;
  if (*(a2 + 72) == 1)
  {
    mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment(v5);
    *(a1 + 72) = 1;
  }

  return a1;
}

unint64_t WTF::PairHash<WTF::URL,std::optional<WebCore::SecurityOriginData>>::hash(uint64_t a1)
{
  v2 = *a1;
  v3 = *(v2 + 4);
  if (v3 < 0x100)
  {
    v4 = WTF::StringImpl::hashSlowCase(v2);
  }

  else
  {
    v4 = v3 >> 8;
  }

  v8 = 0;
  v9 = 0;
  v5 = *(a1 + 72);
  v7 = ((v5 - 1640531527) ^ ((v5 - 1640531527) << 16)) + (((v5 - 1640531527) ^ ((v5 - 1640531527) << 16)) >> 11);
  if (v5 == 1)
  {
    WTF::add<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(&v7, a1 + 40);
  }

  return (0xD7862706ELL * (277951225 * v4 + 95187966 * WTF::SuperFastHash::hash(&v7))) >> 4;
}

uint64_t WTF::PairHash<WTF::URL,std::optional<WebCore::SecurityOriginData>>::equal(uint64_t a1, uint64_t a2, const WTF::StringImpl *a3)
{
  if (!WTF::equal(*a1, *a2, a3))
  {
    v6 = 0;
    return v6 & 1;
  }

  v5 = *(a1 + 72);
  v6 = v5 ^ *(a2 + 72) ^ 1;
  if (v5 != 1 || (*(a2 + 72) & 1) == 0)
  {
    return v6 & 1;
  }

  return WebCore::operator==();
}

uint64_t *WTF::HashSet<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,WTF::DefaultHash<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::remove(uint64_t *a1, WTF::StringImpl *a2)
{
  if (*a1)
  {
    v2 = (*a1 + 80 * *(*a1 - 4));
    if (v2 == a2)
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

    v2 = 0;
  }

  if (v2 != a2)
  {
    return WTF::HashTable<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::FastMalloc>::remove(a1, a2);
  }

  return a1;
}

uint64_t WTF::HashTable<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::FastMalloc>::remove(uint64_t *a1, WTF::StringImpl *a2)
{
  result = std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>::~pair(a2, a2);
  *a2 = -1;
  v5 = *a1;
  v6 = vadd_s32(*(*a1 - 16), 0xFFFFFFFF00000001);
  *(v5 - 16) = v6;
  v7 = *(v5 - 4);
  if (6 * v6.i32[1] < v7 && v7 >= 9)
  {

    return WTF::HashTable<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::FastMalloc>::rehash(a1, v7 >> 1, 0);
  }

  return result;
}

void *WTF::HashTable<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::DefaultHash<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>>,(WTF::ShouldValidateKey)1,std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>(uint64_t *a1, void *a2)
{
  if (!*a1)
  {
    return 0;
  }

  result = WTF::HashTable<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::DefaultHash<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>>,(WTF::ShouldValidateKey)1,std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>(a1, a2);
  v4 = *a1;
  if (!result)
  {
    if (v4)
    {
      return (v4 + 80 * *(v4 - 4));
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *WTF::HashTable<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::DefaultHash<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>>,(WTF::ShouldValidateKey)1,std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>(uint64_t *a1, void *a2)
{
  WTF::checkHashTableKey<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::IdentityHashTranslator<WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::DefaultHash<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>>,(WTF::ShouldValidateKey)1,std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>(a2);
  v4 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v5 = *(v4 - 8);
  v6 = WTF::PairHash<WTF::URL,std::optional<WebCore::SecurityOriginData>>::hash(a2) & v5;
  v7 = (v4 + 80 * v6);
  if (WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,false>::isEmptyValue<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>(v7))
  {
    return 0;
  }

  v9 = 1;
  while (*v7 == -1 || (WTF::PairHash<WTF::URL,std::optional<WebCore::SecurityOriginData>>::equal(v7, a2, v8) & 1) == 0)
  {
    v6 = (v6 + v9) & v5;
    v7 = (v4 + 80 * v6);
    ++v9;
    if (WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,false>::isEmptyValue<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>(v7))
    {
      return 0;
    }
  }

  return v7;
}

uint64_t WTF::HashTable<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,WTF::KeyValuePair<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,unsigned int>>,WTF::DefaultHash<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashMap<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,unsigned int,WTF::DefaultHash<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (*a1 && (v5 = *(v3 - 4)) != 0)
  {
    v4 = v5 << (6 * *(v3 - 12) >= (2 * v5));
  }

  else
  {
    v4 = 8;
  }

  return WTF::HashTable<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,WTF::KeyValuePair<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,unsigned int>>,WTF::DefaultHash<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashMap<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,unsigned int,WTF::DefaultHash<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::FastMalloc>::rehash(a1, v4, a2);
}

uint64_t WTF::HashTable<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,WTF::KeyValuePair<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,unsigned int>>,WTF::DefaultHash<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashMap<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,unsigned int,WTF::DefaultHash<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t a3)
{
  v4 = *a1;
  if (*a1)
  {
    LODWORD(v5) = *(v4 - 4);
    v6 = *(v4 - 12);
  }

  else
  {
    LODWORD(v5) = 0;
    v6 = 0;
  }

  v7 = WTF::fastMalloc((88 * a2 + 16));
  v9 = v7;
  v10 = v7 + 16;
  if (a2)
  {
    v11 = a2;
    v12 = (v7 + 96);
    do
    {
      WTF::PairHashTraits<WTF::HashTraits<WTF::URL>,WTF::HashTraits<std::optional<WebCore::SecurityOriginData>>>::emptyValue((v12 - 20));
      *v12 = 0;
      v12 += 22;
      --v11;
    }

    while (v11);
  }

  *a1 = v10;
  v9[2] = a2 - 1;
  v9[3] = a2;
  *v9 = 0;
  v9[1] = v6;
  if (v5)
  {
    v13 = 0;
    v14 = 0;
    v5 = v5;
    v36 = v5;
    do
    {
      v15 = v4 + 88 * v13;
      if (*v15 != -1)
      {
        if (WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,false>::isEmptyValue<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>(v4 + 88 * v13))
        {
          if (*(v15 + 72) == 1)
          {
            if (!*(v15 + 64))
            {
              v16 = *(v15 + 48);
              *(v15 + 48) = 0;
              if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v16, v8);
              }

              v17 = *(v15 + 40);
              *(v15 + 40) = 0;
              if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v17, v8);
              }
            }

            *(v15 + 64) = -1;
          }

          v18 = *v15;
          *v15 = 0;
          if (v18)
          {
            if (atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v18, v8);
            }
          }
        }

        else
        {
          v19 = v4;
          v20 = v14;
          v21 = *a1;
          if (*a1)
          {
            v22 = *(v21 - 8);
          }

          else
          {
            v22 = 0;
          }

          v23 = WTF::PairHash<WTF::URL,std::optional<WebCore::SecurityOriginData>>::hash(v15);
          v24 = 0;
          do
          {
            v25 = v23 & v22;
            v26 = v21 + 88 * (v23 & v22);
            v28 = WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,false>::isEmptyValue<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>(v26);
            v23 = ++v24 + v25;
          }

          while (!v28);
          v14 = v20;
          v4 = v19;
          v5 = v36;
          if (*(v26 + 72) == 1)
          {
            if (!*(v26 + 64))
            {
              v29 = *(v26 + 48);
              *(v26 + 48) = 0;
              if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v29, v27);
              }

              v30 = *(v26 + 40);
              *(v26 + 40) = 0;
              if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v30, v27);
              }
            }

            *(v26 + 64) = -1;
          }

          v31 = *v26;
          *v26 = 0;
          if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v31, v27);
          }

          std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>::pair[abi:sn200100](v26, v15);
          *(v26 + 80) = *(v15 + 80);
          if (*(v15 + 72) == 1)
          {
            if (!*(v15 + 64))
            {
              v32 = *(v15 + 48);
              *(v15 + 48) = 0;
              if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v32, v8);
              }

              v33 = *(v15 + 40);
              *(v15 + 40) = 0;
              if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v33, v8);
              }
            }

            *(v15 + 64) = -1;
          }

          v34 = *v15;
          *v15 = 0;
          if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v34, v8);
          }

          if (v15 == a3)
          {
            v14 = v26;
          }
        }
      }

      ++v13;
    }

    while (v13 != v5);
  }

  else
  {
    v14 = 0;
    result = 0;
    if (!v4)
    {
      return result;
    }
  }

  WTF::fastFree((v4 - 16), v8);
  return v14;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkConnectionToWebProcess::writeBlobsToTemporaryFilesForIndexedDB(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>&&)> &&)::$_0,void,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>&>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F10FF970;
  v3 = a1[5];
  a1[5] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  WTF::Vector<WTF::RefPtr<WebCore::BlobDataFileReference,WTF::RawPtrTraits<WebCore::BlobDataFileReference>,WTF::DefaultRefDerefTraits<WebCore::BlobDataFileReference>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 3), a2);
  v4 = a1[2];
  a1[2] = 0;
  if (v4)
  {
    if (v4[5] == 1)
    {
      (*(*v4 + 8))(v4);
    }

    else
    {
      --v4[5];
    }
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkConnectionToWebProcess::writeBlobsToTemporaryFilesForIndexedDB(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>&&)> &&)::$_0,void,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>&>::~CallableWrapper(WTF *a1, void *a2)
{
  *a1 = &unk_1F10FF970;
  v3 = *(a1 + 5);
  *(a1 + 5) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  WTF::Vector<WTF::RefPtr<WebCore::BlobDataFileReference,WTF::RawPtrTraits<WebCore::BlobDataFileReference>,WTF::DefaultRefDerefTraits<WebCore::BlobDataFileReference>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 24, a2);
  v5 = *(a1 + 2);
  *(a1 + 2) = 0;
  if (v5)
  {
    if (v5[5] == 1)
    {
      (*(*v5 + 8))(v5);
    }

    else
    {
      --v5[5];
    }
  }

  return WTF::fastFree(a1, v4);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkConnectionToWebProcess::writeBlobsToTemporaryFilesForIndexedDB(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>&&)> &&)::$_0,void,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>&>::call(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 36);
  if (v5)
  {
    v6 = *(a1 + 24);
    v7 = 8 * v5;
    do
    {
      v8 = *v6++;
      (*(*v8 + 24))(v8);
      v7 -= 8;
    }

    while (v7);
  }

  v9 = *(v4 + 11);
  v23 = *(v4 + 12);
  v10 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v9 + 240), &v23);
  if (v10)
  {
    v11 = v10;
    ++*(v10 + 16);
    v12 = *(v10 + 1048);
    v13 = *(v4 + 10);
    while (1)
    {
      v14 = *v13;
      if ((*v13 & 1) == 0)
      {
        break;
      }

      v15 = *v13;
      atomic_compare_exchange_strong_explicit(v13, &v15, v14 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v15 == v14)
      {
        goto LABEL_10;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v13);
LABEL_10:
    WebKit::NetworkStorageManager::registerTemporaryBlobFilePaths(v12, v13, a2);
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v13);
    v16 = *(v11 + 16);
    if (!v16)
    {
      result = 290;
      __break(0xC471u);
      return result;
    }

    *(v11 + 16) = v16 - 1;
  }

  v17 = *(a2 + 12);
  if (v17)
  {
    v18 = *a2;
    v19 = 8 * v17;
    do
    {
      WebKit::NetworkConnectionToWebProcess::allowAccessToFile(v4, v18);
      v18 = (v18 + 8);
      v19 -= 8;
    }

    while (v19);
  }

  v20 = *(a1 + 40);
  *(a1 + 40) = 0;
  (*(*v20 + 16))(v20, a2);
  v21 = *(*v20 + 8);

  return v21(v20);
}

uint64_t WTF::Vector<WebKit::NetworkConnectionToWebProcess::ResourceNetworkActivityTracker,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::constructAndAppendSlowCase<(WTF::FailureAction)0,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> &>(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 12);
  if (v5 + (v5 >> 1) <= v5 + 1)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = v5 + (v5 >> 1);
  }

  if (v6 <= v4 + 1)
  {
    v7 = v4 + 1;
  }

  else
  {
    v7 = v6;
  }

  if (v7 <= 0x10)
  {
    v8 = 16;
  }

  else
  {
    v8 = v7;
  }

  WTF::Vector<WebKit::NetworkConnectionToWebProcess::ResourceNetworkActivityTracker,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v8);
  v9 = *a1 + 48 * *(a1 + 12);
  *v9 = *a2;
  *(v9 + 8) = 0;
  *(v9 + 16) = 1;
  *(v9 + 24) = 0x100000010;
  *(v9 + 32) = 0;
  result = nw_activity_create();
  *(v9 + 40) = result;
  ++*(a1 + 12);
  return result;
}

void WTF::Vector<WebKit::NetworkConnectionToWebProcess::ResourceNetworkActivityTracker,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    if (a2 >= 0x5555556)
    {
      __break(0xC471u);
      JUMPOUT(0x19DC37278);
    }

    v3 = *a1;
    v4 = (*a1 + 48 * *(a1 + 12));
    v5 = 48 * a2;
    v6 = WTF::fastMalloc((48 * a2));
    *(a1 + 8) = v5 / 0x30;
    *a1 = v6;
    WTF::VectorMover<false,WebKit::NetworkConnectionToWebProcess::ResourceNetworkActivityTracker>::move(v3, v4, v6);
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

void WTF::VectorMover<false,WebKit::NetworkConnectionToWebProcess::ResourceNetworkActivityTracker>::move(__int128 *a1, __int128 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      v6 = *v5;
      *(a3 + 16) = *(v5 + 16);
      *a3 = v6;
      v7 = *(v5 + 3);
      *(a3 + 32) = *(v5 + 32);
      *(a3 + 24) = v7;
      v8 = *(v5 + 5);
      *(a3 + 40) = v8;
      if (v8)
      {
        CFRetain(v8);
        v9 = *(v5 + 5);
        *(v5 + 5) = 0;
        if (v9)
        {
        }
      }

      else
      {
        *(v5 + 5) = 0;
      }

      a3 += 48;
      v5 += 3;
    }

    while (v5 != a2);
  }
}

uint64_t WTF::Vector<WebKit::NetworkConnectionToWebProcess::ResourceNetworkActivityTracker,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::constructAndAppendSlowCase<(WTF::FailureAction)0,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> &,WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long> &>(uint64_t a1, void *a2, uint64_t *a3)
{
  v7 = *(a1 + 8);
  v6 = *(a1 + 12);
  if (v7 + (v7 >> 1) <= v7 + 1)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = v7 + (v7 >> 1);
  }

  if (v8 <= v6 + 1)
  {
    v9 = v6 + 1;
  }

  else
  {
    v9 = v8;
  }

  if (v9 <= 0x10)
  {
    v10 = 16;
  }

  else
  {
    v10 = v9;
  }

  WTF::Vector<WebKit::NetworkConnectionToWebProcess::ResourceNetworkActivityTracker,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v10);
  v11 = *a1 + 48 * *(a1 + 12);
  v12 = *a3;
  *v11 = *a2;
  *(v11 + 8) = v12;
  *(v11 + 16) = 0;
  *(v11 + 24) = 0x200000010;
  *(v11 + 32) = 0;
  result = nw_activity_create();
  *(v11 + 40) = result;
  ++*(a1 + 12);
  return result;
}

void WTF::Vector<WebKit::NetworkConnectionToWebProcess::ResourceNetworkActivityTracker,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::removeAt(uint64_t *a1, unint64_t a2, unint64_t a3)
{
  v3 = *(a1 + 3);
  if (v3 < a2 || v3 - a2 < a3)
  {
    __break(1u);
  }

  else
  {
    v6 = *a1;
    v7 = *a1 + 48 * a2;
    if (a3)
    {
      v8 = (v6 + 48 * a2 + 40);
      v9 = 48 * a3;
      do
      {
        v10 = *v8;
        *v8 = 0;
        if (v10)
        {
        }

        v8 += 6;
        v9 -= 48;
      }

      while (v9);
      v6 = *a1;
      LODWORD(v3) = *(a1 + 3);
    }

    WTF::VectorMover<false,WebKit::NetworkConnectionToWebProcess::ResourceNetworkActivityTracker>::moveOverlapping((v7 + 48 * a3), (v6 + 48 * v3), v7);
    *(a1 + 3) -= a3;
  }
}

void WTF::VectorMover<false,WebKit::NetworkConnectionToWebProcess::ResourceNetworkActivityTracker>::moveOverlapping(__int128 *a1, __int128 *a2, unint64_t a3)
{
  v3 = a2;
  if (a1 <= a3)
  {
    if (a2 != a1)
    {
      v5 = a2 - a1 + a3 - 24;
      do
      {
        v6 = *(v3 - 3);
        *(v5 - 8) = *(v3 - 32);
        *(v5 - 24) = v6;
        v7 = *(v3 - 3);
        *(v5 + 8) = *(v3 - 16);
        *v5 = v7;
        v8 = *(v3 - 1);
        *(v5 + 16) = v8;
        if (v8)
        {
          CFRetain(v8);
          v9 = *(v3 - 1);
          *(v3 - 1) = 0;
          if (v9)
          {
          }
        }

        else
        {
          *(v3 - 1) = 0;
        }

        v3 -= 3;
        v5 -= 48;
      }

      while (v3 != a1);
    }
  }

  else
  {

    WTF::VectorMover<false,WebKit::NetworkConnectionToWebProcess::ResourceNetworkActivityTracker>::move(a1, a2, a3);
  }
}

unsigned int *WTF::Vector<WebKit::NetworkConnectionToWebProcess::ResourceNetworkActivityTracker,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(unsigned int *result, void *a2)
{
  if (result[2])
  {
    v2 = result;
    if (result[3])
    {
      WTF::Vector<WebKit::NetworkConnectionToWebProcess::ResourceNetworkActivityTracker,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrink(result);
    }

    result = *v2;
    if (*v2)
    {
      *v2 = 0;
      v2[2] = 0;

      return WTF::fastFree(result, a2);
    }
  }

  return result;
}

void WTF::Vector<WebKit::NetworkConnectionToWebProcess::ResourceNetworkActivityTracker,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrink(unsigned int *a1)
{
  v2 = a1[3];
  if (v2)
  {
    v3 = (*a1 + 40);
    v4 = 48 * v2;
    do
    {
      v5 = *v3;
      *v3 = 0;
      if (v5)
      {
      }

      v3 += 6;
      v4 -= 48;
    }

    while (v4);
  }

  a1[3] = 0;
}

uint64_t WTF::HashTable<WebCore::MessagePortIdentifier,WebCore::MessagePortIdentifier,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::MessagePortIdentifier>,WTF::HashTraits<WebCore::MessagePortIdentifier>,WTF::HashTraits<WebCore::MessagePortIdentifier>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(uint64_t a1, uint64_t *a2, void *a3)
{
  v3 = a3 + 1;
  if (*a3 == 0)
  {
    __break(0xC471u);
    JUMPOUT(0x19DC377E8);
  }

  if (*a3 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DC37808);
  }

  v7 = *a2;
  if (*a2 || (WTF::HashTable<WebCore::MessagePortIdentifier,WebCore::MessagePortIdentifier,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::MessagePortIdentifier>,WTF::HashTraits<WebCore::MessagePortIdentifier>,WTF::HashTraits<WebCore::MessagePortIdentifier>,WTF::FastMalloc>::expand(a2, 0), (v7 = *a2) != 0))
  {
    v8 = *(v7 - 8);
  }

  else
  {
    v8 = 0;
  }

  v25 = -1640531527;
  v26 = 0;
  v27 = 0;
  WTF::add<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PortIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(&v25, a3, v3);
  result = WTF::SuperFastHash::hash(&v25);
  v10 = result & v8;
  v11 = (v7 + 16 * (result & v8));
  v12 = *v11;
  v13 = v11[1];
  v14 = *a3;
  if (*v11 != 0)
  {
    v15 = 0;
    v16 = 1;
    do
    {
      if (__PAIR128__(v13, v12) == v14)
      {
        v23 = *a2;
        if (*a2)
        {
          v24 = *(v23 - 4);
        }

        else
        {
          v24 = 0;
        }

        v22 = 0;
        v21 = v23 + 16 * v24;
        goto LABEL_18;
      }

      if (v12 == -1)
      {
        v15 = v11;
      }

      v10 = (v10 + v16) & v8;
      v11 = (v7 + 16 * v10);
      v12 = *v11;
      v13 = v11[1];
      ++v16;
    }

    while (*v11 != 0);
    if (v15)
    {
      *v15 = 0;
      v15[1] = 0;
      --*(*a2 - 16);
      v14 = *a3;
      v11 = v15;
    }
  }

  *v11 = v14;
  v17 = *a2;
  if (*a2)
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
      goto LABEL_17;
    }

LABEL_20:
    result = WTF::HashTable<WebCore::MessagePortIdentifier,WebCore::MessagePortIdentifier,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::MessagePortIdentifier>,WTF::HashTraits<WebCore::MessagePortIdentifier>,WTF::HashTraits<WebCore::MessagePortIdentifier>,WTF::FastMalloc>::expand(a2, v11);
    v11 = result;
    v17 = *a2;
    if (*a2)
    {
      v20 = *(v17 - 4);
    }

    else
    {
      v20 = 0;
    }

    goto LABEL_17;
  }

  if (3 * v20 <= 4 * v19)
  {
    goto LABEL_20;
  }

LABEL_17:
  v21 = v17 + 16 * v20;
  v22 = 1;
LABEL_18:
  *a1 = v11;
  *(a1 + 8) = v21;
  *(a1 + 16) = v22;
  return result;
}

uint64_t WTF::checkHashTableKey<WebCore::MessagePortIdentifier,WebCore::MessagePortIdentifier,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::MessagePortIdentifier>,WTF::HashTraits<WebCore::MessagePortIdentifier>,WTF::HashTraits<WebCore::MessagePortIdentifier>,WTF::IdentityHashTranslator<WTF::HashTraits<WebCore::MessagePortIdentifier>,WTF::DefaultHash<WebCore::MessagePortIdentifier>>,(WTF::ShouldValidateKey)1,WebCore::MessagePortIdentifier>(uint64_t result, uint64_t a2)
{
  if (!(result | a2) || result == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DC37844);
  }

  return result;
}

_OWORD *WTF::HashTable<WebCore::MessagePortIdentifier,WebCore::MessagePortIdentifier,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::MessagePortIdentifier>,WTF::HashTraits<WebCore::MessagePortIdentifier>,WTF::HashTraits<WebCore::MessagePortIdentifier>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t a2)
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

  return WTF::HashTable<WebCore::MessagePortIdentifier,WebCore::MessagePortIdentifier,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::MessagePortIdentifier>,WTF::HashTraits<WebCore::MessagePortIdentifier>,WTF::HashTraits<WebCore::MessagePortIdentifier>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

uint64_t WTF::IdentityHashTranslator<WTF::HashTraits<WebCore::MessagePortIdentifier>,WTF::DefaultHash<WebCore::MessagePortIdentifier>>::hash<WebCore::MessagePortIdentifier>(void *a1)
{
  v2 = -1640531527;
  v3 = 0;
  v4 = 0;
  WTF::add<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PortIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(&v2, a1, a1 + 1);
  return WTF::SuperFastHash::hash(&v2);
}

_OWORD *WTF::HashTable<WebCore::MessagePortIdentifier,WebCore::MessagePortIdentifier,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::MessagePortIdentifier>,WTF::HashTraits<WebCore::MessagePortIdentifier>,WTF::HashTraits<WebCore::MessagePortIdentifier>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t a3)
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

  v9 = WTF::fastMalloc((16 * a2 + 16));
  v11 = v9;
  v12 = v9 + 16;
  if (a2)
  {
    bzero((v9 + 16), 16 * a2);
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
      v15 = v6 + 16 * v13;
      if (*v15 != -1 && *v15 != 0)
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

        v22 = -1640531527;
        v23 = 0;
        v24 = 0;
        WTF::add<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PortIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(&v22, (v6 + 16 * v13), (v15 + 8));
        v18 = WTF::SuperFastHash::hash(&v22);
        v19 = 0;
        do
        {
          v20 = (v16 + 16 * (v18 & v17));
          v18 = ++v19 + (v18 & v17);
        }

        while (*v20 != 0);
        *v20 = *v15;
        if (v15 == a3)
        {
          v14 = v20;
        }
      }

      ++v13;
    }

    while (v13 != v7);
    goto LABEL_16;
  }

  v14 = 0;
  result = 0;
  if (v6)
  {
LABEL_16:
    WTF::fastFree((v6 - 16), v10);
    return v14;
  }

  return result;
}

_DWORD *WTF::add<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PortIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(_DWORD *result, void *a2, void *a3)
{
  v3 = *result + *a2;
  v4 = (*a2 >> 5) & 0x7FFF800 ^ (v3 << 16) ^ v3;
  v5 = v4 + WORD2(*a2) + (v4 >> 11);
  v6 = (*a2 >> 37) & 0x7FFF800 ^ (v5 << 16) ^ v5;
  v7 = v6 + *a3 + (v6 >> 11);
  v8 = (*a3 >> 5) & 0x7FFF800 ^ (v7 << 16) ^ v7;
  v9 = v8 + WORD2(*a3) + (v8 >> 11);
  v10 = (*a3 >> 37) & 0x7FFF800 ^ (v9 << 16);
  *result = (v10 ^ v9) + ((v10 ^ v9) >> 11);
  return result;
}

_DWORD *WTF::RefCounted<WebCore::MessagePortChannel>::deref(_DWORD *result)
{
  if (*result == 1)
  {
    v2 = MEMORY[0x19EB07C10](result - 2);

    return WTF::fastFree(v2, v3);
  }

  else
  {
    --*result;
  }

  return result;
}

void WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(void)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(void)>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(void)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CompletionHandler<void ()(void)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1)
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

  WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(void)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(void)>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(void)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CompletionHandler<void ()(void)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v3);
}

void WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(void)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(void)>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(void)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CompletionHandler<void ()(void)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2)
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

  v7 = WTF::fastMalloc((16 * a2 + 16));
  v9 = v7;
  v10 = v7 + 16;
  if (a2)
  {
    bzero((v7 + 16), 16 * a2);
  }

  *a1 = v10;
  v9[2] = a2 - 1;
  v9[3] = a2;
  *v9 = 0;
  v9[1] = v6;
  if (v5)
  {
    v11 = 0;
    v12 = v5;
    do
    {
      v13 = (v4 + 16 * v11);
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

          v18 = (v14 + ~(v14 << 32)) ^ ((v14 + ~(v14 << 32)) >> 22);
          v19 = 9 * ((v18 + ~(v18 << 13)) ^ ((v18 + ~(v18 << 13)) >> 8));
          v20 = (v19 ^ (v19 >> 15)) + ~((v19 ^ (v19 >> 15)) << 27);
          v21 = v17 & ((v20 >> 31) ^ v20);
          v22 = 1;
          do
          {
            v23 = v21;
            v24 = *(v16 + 16 * v21);
            v21 = (v21 + v22++) & v17;
          }

          while (v24);
          v25 = (v16 + 16 * v23);
          v26 = v25[1];
          v25[1] = 0;
          if (v26)
          {
            (*(*v26 + 8))(v26);
          }

          *v25 = *v13;
          v27 = v13[1];
          v13[1] = 0;
          v25[1] = v27;
          v28 = v13[1];
          v13[1] = 0;
          if (v28)
          {
            (*(*v28 + 8))(v28);
          }
        }

        else
        {
          v15 = v13[1];
          v13[1] = 0;
          if (v15)
          {
            (*(*v15 + 8))(v15);
          }
        }
      }

      ++v11;
    }

    while (v11 != v12);
  }

  else if (!v4)
  {
    return;
  }

  WTF::fastFree((v4 - 16), v8);
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkConnectionToWebProcess::takeAllMessagesForPort(WebCore::MessagePortIdentifier const&,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::MessageWithMessagePorts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,std::optional<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>)> &&)::$_0,void,WTF::Vector<WebCore::MessageWithMessagePorts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &,WTF::CompletionHandler<void ()(void)> &&>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F10FF9C0;
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
    if (v3[5] == 1)
    {
      (*(*v3 + 8))(v3);
    }

    else
    {
      --v3[5];
    }
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkConnectionToWebProcess::takeAllMessagesForPort(WebCore::MessagePortIdentifier const&,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::MessageWithMessagePorts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,std::optional<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>)> &&)::$_0,void,WTF::Vector<WebCore::MessageWithMessagePorts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &,WTF::CompletionHandler<void ()(void)> &&>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F10FF9C0;
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
    if (v4[5] == 1)
    {
      (*(*v4 + 8))(v4);
    }

    else
    {
      --v4[5];
    }
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkConnectionToWebProcess::takeAllMessagesForPort(WebCore::MessagePortIdentifier const&,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::MessageWithMessagePorts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,std::optional<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>)> &&)::$_0,void,WTF::Vector<WebCore::MessageWithMessagePorts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &,WTF::CompletionHandler<void ()(void)> &&>::call(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *(a1 + 8);
  IdentifierInternal = WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>::generateIdentifierInternal();
  if (IdentifierInternal == -1 || (v8 = IdentifierInternal) == 0)
  {
    __break(0xC471u);
    JUMPOUT(0x19DC3810CLL);
  }

  v9 = *(v6 + 288);
  if (!v9)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(void)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(void)>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(void)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CompletionHandler<void ()(void)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand((v6 + 288));
    v9 = *(v6 + 288);
  }

  v10 = *(v9 - 8);
  v11 = (v8 + ~(v8 << 32)) ^ ((v8 + ~(v8 << 32)) >> 22);
  v12 = 9 * ((v11 + ~(v11 << 13)) ^ ((v11 + ~(v11 << 13)) >> 8));
  v13 = (v12 ^ (v12 >> 15)) + ~((v12 ^ (v12 >> 15)) << 27);
  v14 = v10 & ((v13 >> 31) ^ v13);
  v15 = (v9 + 16 * v14);
  v16 = *v15;
  if (*v15)
  {
    v17 = 0;
    v18 = 1;
    while (v16 != v8)
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
          --*(*(v6 + 288) - 16);
          v15 = v17;
        }

        goto LABEL_13;
      }
    }
  }

  else
  {
LABEL_13:
    *v15 = v8;
    v19 = *a3;
    *a3 = 0;
    v20 = v15[1];
    v15[1] = v19;
    if (v20)
    {
      (*(*v20 + 8))(v20);
    }

    v21 = *(v6 + 288);
    if (v21)
    {
      v22 = *(v21 - 12) + 1;
    }

    else
    {
      v22 = 1;
    }

    *(v21 - 12) = v22;
    v23 = (*(v21 - 16) + v22);
    v24 = *(v21 - 4);
    if (v24 > 0x400)
    {
      if (v24 > 2 * v23)
      {
        goto LABEL_19;
      }
    }

    else if (3 * v24 > 4 * v23)
    {
      goto LABEL_19;
    }

    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(void)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(void)>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(void)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CompletionHandler<void ()(void)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand((v6 + 288));
  }

LABEL_19:
  v25 = *(a1 + 24);
  *(a1 + 24) = 0;
  (*(*v25 + 16))(v25, a2, v8, 1);
  v26 = *(*v25 + 8);

  return v26(v25);
}

void *Messages::NetworkProcessConnection::BroadcastConsoleMessage::encode<IPC::Encoder>(uint64_t a1, IPC::Encoder *a2)
{
  IPC::ArgumentCoder<JSC::MessageSource,void>::encode<IPC::Encoder>(a2, *a1);
  IPC::ArgumentCoder<JSC::MessageSource,void>::encode<IPC::Encoder>(a2, *(a1 + 1));
  v4 = *(a1 + 8);

  return IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a2, v4);
}

void *WTF::Vector<WebKit::NetworkLoad *,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::NetworkLoad *>(uint64_t a1, unint64_t a2)
{
  result = WTF::Vector<WebKit::NetworkLoad *,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  v4 = *(a1 + 12);
  *(*a1 + 8 * v4) = *result;
  *(a1 + 12) = v4 + 1;
  return result;
}

unint64_t WTF::Vector<WebKit::NetworkLoad *,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 <= a3 && v5 + 8 * *(a1 + 12) > a3)
  {
    v10 = a3 - v5;
    v11 = *(a1 + 8);
    if (v11 + (v11 >> 1) <= v11 + 1)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = v11 + (v11 >> 1);
    }

    if (v12 <= a2)
    {
      v12 = a2;
    }

    if (v12 <= 0x10)
    {
      v13 = 16;
    }

    else
    {
      v13 = v12;
    }

    WTF::Vector<WTF::Ref<WebCore::FilterEffect,WTF::RawPtrTraits<WebCore::FilterEffect>,WTF::DefaultRefDerefTraits<WebCore::FilterEffect>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v13);
    return *a1 + v10;
  }

  else
  {
    v6 = *(a1 + 8);
    if (v6 + (v6 >> 1) <= v6 + 1)
    {
      v7 = v6 + 1;
    }

    else
    {
      v7 = v6 + (v6 >> 1);
    }

    if (v7 <= a2)
    {
      v7 = a2;
    }

    if (v7 <= 0x10)
    {
      v8 = 16;
    }

    else
    {
      v8 = v7;
    }

    WTF::Vector<WTF::Ref<WebCore::FilterEffect,WTF::RawPtrTraits<WebCore::FilterEffect>,WTF::DefaultRefDerefTraits<WebCore::FilterEffect>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v8);
  }

  return v3;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkConnectionToWebProcess::navigatorSubscribeToPushService(WTF::URL &&,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebCore::PushSubscriptionData,std::experimental::fundamentals_v3::ExceptionData> &&)> &&)::$_0,void,std::experimental::fundamentals_v3::ExceptionData>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F10FF9E8;
  v3 = a1[3];
  a1[3] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = a1[2];
  a1[2] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = a1[1];
  a1[1] = 0;
  if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5);
    WTF::fastFree(v5, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkConnectionToWebProcess::navigatorSubscribeToPushService(WTF::URL &&,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebCore::PushSubscriptionData,std::experimental::fundamentals_v3::ExceptionData> &&)> &&)::$_0,void,std::experimental::fundamentals_v3::ExceptionData>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F10FF9E8;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 1);
  *(this + 1) = 0;
  if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5);
    WTF::fastFree(v5, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkConnectionToWebProcess::navigatorSubscribeToPushService(WTF::URL &&,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebCore::PushSubscriptionData,std::experimental::fundamentals_v3::ExceptionData> &&)> &&)::$_0,void,std::experimental::fundamentals_v3::ExceptionData>::call(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
    goto LABEL_11;
  }

  v5 = *(v4 + 8);
  if (!v5)
  {
    goto LABEL_11;
  }

  v6 = *(v5 + 32);
  v22[0] = *(v5 + 40);
  if (!WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v6 + 240), v22))
  {
    goto LABEL_11;
  }

  v7 = *(a1 + 8);
  if (!v7 || (v8 = *(v7 + 8)) == 0)
  {
    result = 121;
    __break(0xC471u);
    return result;
  }

  v9 = *(v8 + 32);
  v22[0] = *(v8 + 40);
  v10 = *(WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v9 + 240), v22) + 72);
  if (!v10)
  {
    goto LABEL_11;
  }

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
      goto LABEL_9;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v10);
LABEL_9:
  if (*(a2 + 80))
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v10);
LABEL_11:
    v13 = *(a1 + 16);
    *(a1 + 16) = 0;
    (*(*v13 + 16))(v13, a2);
    v14 = *(*v13 + 8);

    return v14(v13);
  }

  std::experimental::fundamentals_v3::expected<WebCore::PushSubscriptionData,WebCore::ExceptionData>::expected(v22, a2);
  v16 = *(a1 + 16);
  *(a1 + 16) = 0;
  v23 = v16;
  v17 = WTF::fastMalloc(0x68);
  *v17 = &unk_1F10FFA10;
  std::experimental::fundamentals_v3::expected<WebCore::PushSubscriptionData,WebCore::ExceptionData>::expected((v17 + 1), v22);
  v18 = v23;
  v23 = 0;
  v17[12] = v18;
  v24 = v17;
  WebKit::WebResourceLoadStatisticsStore::setMostRecentWebPushInteractionTime(v10, a1 + 24, &v24);
  v20 = v24;
  v24 = 0;
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  v21 = v23;
  v23 = 0;
  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

  std::experimental::fundamentals_v3::expected<WebCore::PushSubscriptionData,WebCore::ExceptionData>::~expected(v22, v19);
  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v10);
}

uint64_t std::experimental::fundamentals_v3::expected<WebCore::PushSubscriptionData,WebCore::ExceptionData>::expected(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 80) = -1;
  v3 = *(a2 + 80);
  if (v3 != 255)
  {
    if (*(a2 + 80))
    {
      *a1 = *a2;
      v5 = *(a2 + 8);
      *(a2 + 8) = 0;
      *(a1 + 8) = v5;
    }

    else
    {
      *a1 = *a2;
      v6 = *(a2 + 8);
      *(a2 + 8) = 0;
      *(a1 + 8) = v6;
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 40) = 0;
      *(a1 + 32) = 0;
      WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1 + 32, (a2 + 32));
      *(a1 + 56) = 0;
      *(a1 + 48) = 0;
      WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1 + 48, (a2 + 48));
      *(a1 + 64) = 0;
      *(a1 + 72) = 0;
      WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1 + 64, (a2 + 64));
      LOBYTE(v3) = *(a2 + 80);
    }

    *(a1 + 80) = v3;
  }

  return a1;
}

void *_ZN3WTF6Detail15CallableWrapperIZZN6WebKit29NetworkConnectionToWebProcess31navigatorSubscribeToPushServiceEONS_3URLEONS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIN7WebCore20PushSubscriptionDataENSF_13ExceptionDataEEEEEEEN3__0clISI_EEDaOT_EUlvE_vJEED1Ev(void *a1, void *a2)
{
  *a1 = &unk_1F10FFA10;
  v3 = a1[12];
  a1[12] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  std::experimental::fundamentals_v3::expected<WebCore::PushSubscriptionData,WebCore::ExceptionData>::~expected((a1 + 1), a2);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit29NetworkConnectionToWebProcess31navigatorSubscribeToPushServiceEONS_3URLEONS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIN7WebCore20PushSubscriptionDataENSF_13ExceptionDataEEEEEEEN3__0clISI_EEDaOT_EUlvE_vJEED0Ev(WTF *a1, void *a2)
{
  *a1 = &unk_1F10FFA10;
  v3 = *(a1 + 12);
  *(a1 + 12) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  std::experimental::fundamentals_v3::expected<WebCore::PushSubscriptionData,WebCore::ExceptionData>::~expected(a1 + 8, a2);

  return WTF::fastFree(a1, v4);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit29NetworkConnectionToWebProcess31navigatorSubscribeToPushServiceEONS_3URLEONS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIN7WebCore20PushSubscriptionDataENSF_13ExceptionDataEEEEEEEN3__0clISI_EEDaOT_EUlvE_vJEE4callEv(uint64_t a1)
{
  v1 = *(a1 + 96);
  *(a1 + 96) = 0;
  (*(*v1 + 16))(v1, a1 + 8);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkConnectionToWebProcess::navigatorGetPushPermissionState(WTF::URL &&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<unsigned char,WebCore::ExceptionData> &&)> &&)::$_0,void,std::experimental::fundamentals_v3::expected::PushPermissionState>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F10FFA38;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkConnectionToWebProcess::navigatorGetPushPermissionState(WTF::URL &&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<unsigned char,WebCore::ExceptionData> &&)> &&)::$_0,void,std::experimental::fundamentals_v3::expected::PushPermissionState>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10FFA38;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkConnectionToWebProcess::navigatorGetPushPermissionState(WTF::URL &&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<unsigned char,WebCore::ExceptionData> &&)> &&)::$_0,void,std::experimental::fundamentals_v3::expected::PushPermissionState>::call(uint64_t a1, char a2)
{
  v5[0] = a2;
  v5[16] = 0;
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v2 + 16))(v2, v5);
  (*(*v2 + 8))(v2);
  return mpark::detail::move_constructor<mpark::detail::traits<BOOL,WebCore::ExceptionData>,(mpark::detail::Trait)1>::~move_constructor(v5, v3);
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkConnectionToWebProcess::initializeWebTransportSession(WTF::URL &&,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> &&,WebCore::ClientOrigin &&,WTF::CompletionHandler<void ()(std::optional<WTF::URL &&<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>>)> &&)::$_0,void,WTF::RefPtr<WebKit::NetworkTransportSession,WTF::RawPtrTraits<WTF::CompletionHandler<void ()(std::optional<WTF::URL &&<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>>)> &>,WTF::DefaultRefDerefTraits<WTF::CompletionHandler<void ()(std::optional<WTF::URL &&<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>>)> &>> &&>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F10FFA60;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkConnectionToWebProcess::initializeWebTransportSession(WTF::URL &&,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> &&,WebCore::ClientOrigin &&,WTF::CompletionHandler<void ()(std::optional<WTF::URL &&<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>>)> &&)::$_0,void,WTF::RefPtr<WebKit::NetworkTransportSession,WTF::RawPtrTraits<WTF::CompletionHandler<void ()(std::optional<WTF::URL &&<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>>)> &>,WTF::DefaultRefDerefTraits<WTF::CompletionHandler<void ()(std::optional<WTF::URL &&<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>>)> &>> &&>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F10FFA60;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkConnectionToWebProcess::initializeWebTransportSession(WTF::URL &&,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> &&,WebCore::ClientOrigin &&,WTF::CompletionHandler<void ()(std::optional<WTF::URL &&<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>>)> &&)::$_0,void,WTF::RefPtr<WebKit::NetworkTransportSession,WTF::RawPtrTraits<WTF::CompletionHandler<void ()(std::optional<WTF::URL &&<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>>)> &>,WTF::DefaultRefDerefTraits<WTF::CompletionHandler<void ()(std::optional<WTF::URL &&<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>>)> &>> &&>::call(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (!v3 || (v4 = *(v3 + 8)) == 0)
  {
    v5 = 0;
    v21 = 1;
LABEL_22:
    v22 = *(a1 + 16);
    *(a1 + 16) = 0;
    (*(*v22 + 16))(v22, 0, 0);
    result = (*(*v22 + 8))(v22);
    if (v21)
    {
      return result;
    }

    goto LABEL_32;
  }

  v5 = (v4 - 56);
  ++*(v4 - 36);
  v6 = *a2;
  if (!*a2)
  {
    v21 = 0;
    goto LABEL_22;
  }

  v7 = *(v6 + 32);
  *a2 = 0;
  if (v7 == -1 || !v7)
  {
    __break(0xC471u);
    JUMPOUT(0x19DC38E70);
  }

  v8 = *(v4 + 304);
  if (!v8)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkTransportSession,WTF::RawPtrTraits<WebKit::NetworkTransportSession>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportSession>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkTransportSession,WTF::RawPtrTraits<WebKit::NetworkTransportSession>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportSession>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkTransportSession,WTF::RawPtrTraits<WebKit::NetworkTransportSession>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportSession>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkTransportSession,WTF::RawPtrTraits<WebKit::NetworkTransportSession>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportSession>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand((v4 + 304));
    v8 = *(v4 + 304);
  }

  v9 = *(v8 - 8);
  v10 = (v7 + ~(v7 << 32)) ^ ((v7 + ~(v7 << 32)) >> 22);
  v11 = 9 * ((v10 + ~(v10 << 13)) ^ ((v10 + ~(v10 << 13)) >> 8));
  v12 = (v11 ^ (v11 >> 15)) + ~((v11 ^ (v11 >> 15)) << 27);
  v13 = v9 & ((v12 >> 31) ^ v12);
  v14 = (v8 + 16 * v13);
  v15 = *v14;
  if (*v14)
  {
    v16 = 0;
    v17 = 1;
    while (v15 != v7)
    {
      if (v15 == -1)
      {
        v16 = v14;
      }

      v13 = (v13 + v17) & v9;
      v14 = (v8 + 16 * v13);
      v15 = *v14;
      ++v17;
      if (!*v14)
      {
        if (v16)
        {
          *v16 = 0;
          v16[1] = 0;
          --*(*(v4 + 304) - 16);
          v14 = v16;
        }

        goto LABEL_16;
      }
    }

    v24 = v14[1];
    v14[1] = v6;
    if (v24)
    {
      if (v24[4] == 1)
      {
        (*(*v24 + 24))(v24);
      }

      else
      {
        --v24[4];
      }
    }

    goto LABEL_31;
  }

LABEL_16:
  v18 = v14[1];
  *v14 = v7;
  v14[1] = v6;
  if (v18)
  {
    if (v18[4] == 1)
    {
      (*(*v18 + 24))(v18);
    }

    else
    {
      --v18[4];
    }
  }

  v19 = *(v4 + 304);
  if (v19)
  {
    v20 = *(v19 - 12) + 1;
  }

  else
  {
    v20 = 1;
  }

  *(v19 - 12) = v20;
  v25 = (*(v19 - 16) + v20);
  v26 = *(v19 - 4);
  if (v26 > 0x400)
  {
    if (v26 > 2 * v25)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  if (3 * v26 <= 4 * v25)
  {
LABEL_30:
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkTransportSession,WTF::RawPtrTraits<WebKit::NetworkTransportSession>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportSession>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkTransportSession,WTF::RawPtrTraits<WebKit::NetworkTransportSession>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportSession>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkTransportSession,WTF::RawPtrTraits<WebKit::NetworkTransportSession>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportSession>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkTransportSession,WTF::RawPtrTraits<WebKit::NetworkTransportSession>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportSession>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand((v4 + 304));
  }

LABEL_31:
  v27 = *(a1 + 16);
  *(a1 + 16) = 0;
  (*(*v27 + 16))(v27, v7, 1);
  result = (*(*v27 + 8))(v27);
LABEL_32:
  if (v5[5] == 1)
  {
    v28 = *(*v5 + 8);

    return v28(v5);
  }

  else
  {
    --v5[5];
  }

  return result;
}

_DWORD *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkTransportSession,WTF::RawPtrTraits<WebKit::NetworkTransportSession>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportSession>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkTransportSession,WTF::RawPtrTraits<WebKit::NetworkTransportSession>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportSession>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkTransportSession,WTF::RawPtrTraits<WebKit::NetworkTransportSession>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportSession>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkTransportSession,WTF::RawPtrTraits<WebKit::NetworkTransportSession>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportSession>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1)
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

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkTransportSession,WTF::RawPtrTraits<WebKit::NetworkTransportSession>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportSession>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkTransportSession,WTF::RawPtrTraits<WebKit::NetworkTransportSession>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportSession>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkTransportSession,WTF::RawPtrTraits<WebKit::NetworkTransportSession>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportSession>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkTransportSession,WTF::RawPtrTraits<WebKit::NetworkTransportSession>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportSession>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v3);
}

_DWORD *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkTransportSession,WTF::RawPtrTraits<WebKit::NetworkTransportSession>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportSession>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkTransportSession,WTF::RawPtrTraits<WebKit::NetworkTransportSession>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportSession>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkTransportSession,WTF::RawPtrTraits<WebKit::NetworkTransportSession>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportSession>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkTransportSession,WTF::RawPtrTraits<WebKit::NetworkTransportSession>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportSession>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2)
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
    v9 = 0;
    while (1)
    {
      v10 = (v4 + 16 * v9);
      v11 = *v10;
      if (*v10 != -1)
      {
        if (v11)
        {
          v13 = *a1;
          if (*a1)
          {
            v14 = *(v13 - 8);
          }

          else
          {
            v14 = 0;
          }

          v15 = (v11 + ~(v11 << 32)) ^ ((v11 + ~(v11 << 32)) >> 22);
          v16 = 9 * ((v15 + ~(v15 << 13)) ^ ((v15 + ~(v15 << 13)) >> 8));
          v17 = (v16 ^ (v16 >> 15)) + ~((v16 ^ (v16 >> 15)) << 27);
          v18 = v14 & ((v17 >> 31) ^ v17);
          v19 = 1;
          do
          {
            v20 = v18;
            v21 = *(v13 + 16 * v18);
            v18 = (v18 + v19++) & v14;
          }

          while (v21);
          v22 = (v13 + 16 * v20);
          v23 = v22[1];
          v22[1] = 0;
          if (v23)
          {
            if (v23[4] == 1)
            {
              (*(*v23 + 24))(v23);
            }

            else
            {
              --v23[4];
            }
          }

          *v22 = *v10;
          v24 = v10[1];
          v10[1] = 0;
          v22[1] = v24;
          v12 = v10[1];
          v10[1] = 0;
          if (!v12)
          {
            goto LABEL_22;
          }

          if (v12[4] == 1)
          {
LABEL_24:
            (*(*v12 + 24))(v12);
            goto LABEL_22;
          }

          --v12[4];
        }

        else
        {
          v12 = v10[1];
          v10[1] = 0;
          if (v12)
          {
            if (v12[4] == 1)
            {
              goto LABEL_24;
            }

            --v12[4];
          }
        }
      }

LABEL_22:
      if (++v9 == v5)
      {
        goto LABEL_28;
      }
    }
  }

  if (v4)
  {
LABEL_28:

    return WTF::fastFree((v4 - 16), v8);
  }

  return result;
}

atomic_ullong *WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ResourceMonitorThrottlerHolder,(WTF::DestructionThread)1>::deref(atomic_ullong *result)
{
  v1 = result;
  while (1)
  {
    v2 = *result;
    if ((*result & 1) == 0)
    {
      break;
    }

    v3 = *result;
    atomic_compare_exchange_strong_explicit(result, &v3, v2 - 2, memory_order_relaxed, memory_order_relaxed);
    if (v3 == v2)
    {
      if (v2 == 3)
      {
        v4 = WTF::fastMalloc(0x10);
        *v4 = &unk_1F10FFA88;
        v4[1] = v1;
        v6 = v4;
        WTF::ensureOnMainThread();
        result = v6;
        if (v6)
        {
          return (*(*v6 + 8))(v6);
        }
      }

      return result;
    }
  }

  v5 = *result;

  return WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::ResourceMonitorThrottlerHolder,(WTF::DestructionThread)1>(v5);
}

atomic_uchar *WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::ResourceMonitorThrottlerHolder,(WTF::DestructionThread)1>(atomic_uchar *this)
{
  v1 = this;
  v2 = 0;
  atomic_compare_exchange_strong_explicit(this, &v2, 1u, memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    this = MEMORY[0x19EB01E30](this);
  }

  v3 = *(v1 + 1) - 1;
  *(v1 + 1) = v3;
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(v1 + 3);
    ++*(v1 + 2);
    *(v1 + 3) = 0;
  }

  v5 = 1;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 == 1)
  {
    if (v3)
    {
      return this;
    }
  }

  else
  {
    v7 = v3;
    this = WTF::Lock::unlockSlow(v1);
    if (v7)
    {
      return this;
    }
  }

  v6 = WTF::fastMalloc(0x18);
  *v6 = &unk_1F10FFAB0;
  *(v6 + 1) = v1;
  *(v6 + 2) = v4;
  v8 = v6;
  WTF::ensureOnMainThread();
  this = v8;
  if (v8)
  {
    return (*(*v8 + 8))(v8);
  }

  return this;
}

uint64_t WTF::Detail::CallableWrapper<WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ResourceMonitorThrottlerHolder,(WTF::DestructionThread)1>::deref(void)::{lambda(void)#1},void>::call(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v2 = MEMORY[0x19EB0CFD0]();

    return WTF::fastFree(v2, v3);
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<void WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::ResourceMonitorThrottlerHolder,(WTF::DestructionThread)1>(void)::{lambda(void)#1},void>::call(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  result = *(a1 + 16);
  if (result)
  {
    v4 = MEMORY[0x19EB0CFD0]();
    result = WTF::fastFree(v4, v5);
  }

  v6 = 0;
  v7 = 1;
  atomic_compare_exchange_strong_explicit(v3, &v6, 1u, memory_order_acquire, memory_order_acquire);
  if (v6)
  {
    result = MEMORY[0x19EB01E30](v3);
  }

  v8 = *(v3 + 16) - 1;
  *(v3 + 16) = v8;
  atomic_compare_exchange_strong_explicit(v3, &v7, 0, memory_order_release, memory_order_relaxed);
  if (v7 == 1)
  {
    if (v8)
    {
      return result;
    }
  }

  else
  {
    v9 = v8;
    result = WTF::Lock::unlockSlow(v3);
    if (v9)
    {
      return result;
    }
  }

  return WTF::fastFree(v3, a2);
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::ContentExtensions::ContentExtensionsBackend>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::ContentExtensions::ContentExtensionsBackend>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::ContentExtensions::ContentExtensionsBackend>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebCore::ContentExtensions::ContentExtensionsBackend>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::ContentExtensions::ContentExtensionsBackend>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebCore::ContentExtensions::ContentExtensionsBackend>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t *a2)
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
    JUMPOUT(0x19DC39498);
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

uint64_t WTF::Vector<WTF::CompletionHandler<void ()(WebCore::ContentExtensions::ContentExtensionsBackend &)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
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

void *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WTF::CompletionHandler<void ()(WebCore::ContentExtensions::ContentExtensionsBackend &)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WTF::CompletionHandler<void ()(WebCore::ContentExtensions::ContentExtensionsBackend &)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WTF::CompletionHandler<void ()(WebCore::ContentExtensions::ContentExtensionsBackend &)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Vector<WTF::CompletionHandler<void ()(WebCore::ContentExtensions::ContentExtensionsBackend &)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t *a2)
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

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WTF::CompletionHandler<void ()(WebCore::ContentExtensions::ContentExtensionsBackend &)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WTF::CompletionHandler<void ()(WebCore::ContentExtensions::ContentExtensionsBackend &)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WTF::CompletionHandler<void ()(WebCore::ContentExtensions::ContentExtensionsBackend &)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Vector<WTF::CompletionHandler<void ()(WebCore::ContentExtensions::ContentExtensionsBackend &)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v5, a2);
}