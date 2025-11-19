void *WTF::Detail::CallableWrapper<WebKit::RemoteAudioDestinationProxy::stopRendering(WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1128008;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[1];
  a1[1] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::RemoteAudioDestinationProxy,(WTF::DestructionThread)2>::deref((v3 + 176));
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteAudioDestinationProxy::stopRendering(WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1128008;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::RemoteAudioDestinationProxy,(WTF::DestructionThread)2>::deref((v4 + 176));
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteAudioDestinationProxy::stopRendering(WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void>::call(uint64_t a1)
{
  WebCore::AudioDestinationResampler::setIsPlaying(*(a1 + 8));
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  (*(*v2 + 16))(v2, 1);
  v3 = *(*v2 + 8);

  return v3(v2);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteAudioDestinationManager::StopAudioDestination,WebKit::RemoteAudioDestinationProxy::stopRendering(WTF::CompletionHandler<void ()(BOOL)> &&)::$_1>(WebKit::RemoteAudioDestinationProxy::stopRendering(WTF::CompletionHandler<void ()(BOOL)> &&)::$_1 &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::RemoteAudioDestinationProxy::stopRendering(WTF::CompletionHandler<void ()(BOOL)> &&)::$_1,IPC::Decoder)#1},void,WebKit::RemoteAudioDestinationProxy::stopRendering(WTF::CompletionHandler<void ()(BOOL)> &&)::$_1,IPC::Decoder>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1128030;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[1];
  a1[1] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::RemoteAudioDestinationProxy,(WTF::DestructionThread)2>::deref((v3 + 176));
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteAudioDestinationManager::StopAudioDestination,WebKit::RemoteAudioDestinationProxy::stopRendering(WTF::CompletionHandler<void ()(BOOL)> &&)::$_1>(WebKit::RemoteAudioDestinationProxy::stopRendering(WTF::CompletionHandler<void ()(BOOL)> &&)::$_1 &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::RemoteAudioDestinationProxy::stopRendering(WTF::CompletionHandler<void ()(BOOL)> &&)::$_1,IPC::Decoder)#1},void,WebKit::RemoteAudioDestinationProxy::stopRendering(WTF::CompletionHandler<void ()(BOOL)> &&)::$_1,IPC::Decoder>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1128030;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::RemoteAudioDestinationProxy,(WTF::DestructionThread)2>::deref((v4 + 176));
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteAudioDestinationManager::StopAudioDestination,WebKit::RemoteAudioDestinationProxy::stopRendering(WTF::CompletionHandler<void ()(BOOL)> &&)::$_1>(WebKit::RemoteAudioDestinationProxy::stopRendering(WTF::CompletionHandler<void ()(BOOL)> &&)::$_1 &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::RemoteAudioDestinationProxy::stopRendering(WTF::CompletionHandler<void ()(BOOL)> &&)::$_1,IPC::Decoder)#1},void,WebKit::RemoteAudioDestinationProxy::stopRendering(WTF::CompletionHandler<void ()(BOOL)> &&)::$_1,IPC::Decoder>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
{
  if (a3 && *a3 && (v4 = IPC::Decoder::decode<std::tuple<BOOL>>(a3), (v4 & 0x100) != 0))
  {
    v9 = v4;
    WebCore::AudioDestinationResampler::setIsPlaying(*(a1 + 8));
    v5 = v9 ^ 1;
  }

  else
  {
    WebCore::AudioDestinationResampler::setIsPlaying(*(a1 + 8));
    v5 = 1;
  }

  v6 = *(a1 + 16);
  *(a1 + 16) = 0;
  (*(*v6 + 16))(v6, v5 & 1);
  v7 = *(*v6 + 8);

  return v7(v6);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteAudioSession::configurationChanged(WebKit::RemoteAudioSessionConfiguration &&)::$_0,void,WebCore::AudioSessionConfigurationChangeObserver &>::call(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 16);
  if (**(result + 8) == 1)
  {
    result = (*(*a2 + 16))(a2, v4);
  }

  if (**(v3 + 24) == 1)
  {
    result = (*(*a2 + 24))(a2, v4);
  }

  if (**(v3 + 32) == 1)
  {
    v5 = *(*a2 + 32);

    return v5(a2, v4);
  }

  return result;
}

IPC::Encoder *WebKit::RemoteCDM::setLogIdentifier(IPC::Encoder *this, void *a2)
{
  v2 = *(this + 2);
  if (!v2)
  {
    return this;
  }

  v3 = *(v2 + 8);
  if (!v3)
  {
    return this;
  }

  if (!*(*(v3 + 24) + 8))
  {
    __break(0xC471u);
    goto LABEL_13;
  }

  v5 = this;
  {
    v6 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v14 = WebKit::WebProcess::operator new(0x370, a2);
    v6 = WebKit::WebProcess::WebProcess(v14);
    WebKit::WebProcess::singleton(void)::process = v6;
  }

  v7 = WebKit::WebProcess::ensureGPUProcessConnection(v6)[4];
  v8 = *(v5 + 3);
  v10 = IPC::Encoder::operator new(0x238, v9);
  *v10 = 984;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 1) = v8;
  *(v10 + 68) = 0;
  *(v10 + 70) = 0;
  *(v10 + 69) = 0;
  IPC::Encoder::encodeHeader(v10);
  v15 = v10;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v10, a2);
  IPC::Connection::sendMessageImpl(v7, &v15, 0, 0);
  this = v15;
  v15 = 0;
  if (this)
  {
    IPC::Encoder::~Encoder(this, v11);
    this = bmalloc::api::tzoneFree(v12, v13);
  }

  if (!*(*(v3 + 24) + 8))
  {
    __break(0xC471u);
LABEL_13:
    JUMPOUT(0x19E293FF8);
  }

  return this;
}

IPC::Encoder *WebKit::RemoteCDM::getSupportedConfiguration(uint64_t a1, void *a2, char a3, uint64_t *a4)
{
  v5 = *(a1 + 16);
  if (v5 && (v6 = *(v5 + 8)) != 0)
  {
    if (!*(*(v6 + 24) + 8))
    {
      __break(0xC471u);
      JUMPOUT(0x19E29427CLL);
    }

    {
      v10 = WebKit::WebProcess::singleton(void)::process;
    }

    else
    {
      v29 = WebKit::WebProcess::operator new(0x370, a2);
      v10 = WebKit::WebProcess::WebProcess(v29);
      WebKit::WebProcess::singleton(void)::process = v10;
    }

    v11 = WebKit::WebProcess::ensureGPUProcessConnection(v10)[4];
    v12 = *(a1 + 24);
    v13 = *a4;
    *a4 = 0;
    v14 = WTF::fastMalloc(0x10);
    *v14 = &unk_1F1128548;
    v14[1] = v13;
    if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
    {
      __break(0xC471u);
LABEL_23:
      JUMPOUT(0x19E29417CLL);
    }

    v15 = v14;
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v18 = IPC::Encoder::operator new(0x238, v17);
    *v18 = 982;
    *(v18 + 2) = 0;
    *(v18 + 3) = 0;
    *(v18 + 1) = v12;
    *(v18 + 68) = 0;
    *(v18 + 70) = 0;
    *(v18 + 69) = 0;
    IPC::Encoder::encodeHeader(v18);
    v38 = v18;
    IPC::ArgumentCoder<WebCore::CDMKeySystemConfiguration,void>::encode(v18, a2);
    LOBYTE(v37[0]) = a3;
    IPC::Encoder::operator<<<BOOL>(v18, v37);
    v37[0] = v15;
    v37[1] = IdentifierInternal;
    IPC::Connection::sendMessageWithAsyncReply(v11, &v38, v37, 0, 0);
    v20 = v37[0];
    v37[0] = 0;
    if (v20)
    {
      (*(*v20 + 8))(v20);
    }

    result = v38;
    v38 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v19);
      result = bmalloc::api::tzoneFree(v27, v28);
    }

    if (!*(*(v6 + 24) + 8))
    {
      __break(0xC471u);
      goto LABEL_23;
    }
  }

  else
  {
    LOBYTE(v30) = 0;
    v36 = 0;
    result = WTF::Function<void ()(std::optional<WebCore::CDMKeySystemConfiguration>)>::operator()(a4, &v30);
    if (v36 == 1)
    {
      v23 = v34;
      if (v34)
      {
        v34 = 0;
        v35 = 0;
        WTF::fastFree(v23, v22);
      }

      WTF::Vector<WebCore::CDMMediaCapability,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v33, v22);
      WTF::Vector<WebCore::CDMMediaCapability,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v32, v24);
      WTF::Vector<WTF::AtomString,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v31, v25);
      result = v30;
      v30 = 0;
      if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v26);
      }
    }
  }

  return result;
}

uint64_t WebKit::RemoteCDM::createInstance@<X0>(uint64_t this@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(this + 16);
  if (!v6 || (v7 = *(v6 + 8)) == 0)
  {
    *a3 = 0;
    return this;
  }

  if (!*(*(v7 + 24) + 8))
  {
    __break(0xC471u);
    JUMPOUT(0x19E294758);
  }

  v8 = this;
  {
    v9 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v23 = WebKit::WebProcess::operator new(0x370, a2);
    v9 = WebKit::WebProcess::WebProcess(v23);
    WebKit::WebProcess::singleton(void)::process = v9;
  }

  v10 = WebKit::WebProcess::ensureGPUProcessConnection(v9)[4];
  IPC::Connection::createSyncMessageEncoder(0xFB7, *(v8 + 24), &v59);
  v11 = IPC::Connection::sendSyncMessage(v10, v60, &v59, 0, &v55, INFINITY);
  if (v56)
  {
    if (v56 != 1)
    {
      mpark::throw_bad_variant_access(v11);
    }

    v13 = v55;
    v14 = 1;
    goto LABEL_36;
  }

  v13 = v55;
  v55 = 0;
  if (*(v13 + 50) == 3194)
  {
    v15 = 11;
LABEL_32:
    IPC::Decoder::~Decoder(v13);
    bmalloc::api::tzoneFree(v33, v34);
    v14 = 1;
    v13 = v15;
    goto LABEL_33;
  }

  v16 = *(v13 + 8);
  v17 = *(v13 + 16);
  v18 = *v13;
  if (v16 <= &v17[-*v13])
  {
    *v13 = 0;
    *(v13 + 8) = 0;
    v24 = *(v13 + 24);
    if (v24)
    {
      if (v16)
      {
        (*(*v24 + 16))(v24);
        v16 = *(v13 + 8);
      }
    }

    else
    {
      v16 = 0;
    }

    goto LABEL_25;
  }

  *(v13 + 16) = v17 + 1;
  if (!v17)
  {
LABEL_25:
    *v13 = 0;
    *(v13 + 8) = 0;
    v25 = *(v13 + 24);
    if (v25)
    {
      if (v16)
      {
        (*(*v25 + 16))(v25);
        v18 = *v13;
        v16 = *(v13 + 8);
        goto LABEL_28;
      }
    }

    else
    {
      v16 = 0;
    }

    v18 = 0;
LABEL_28:
    *v13 = 0;
    *(v13 + 8) = 0;
    v26 = *(v13 + 24);
    if (v26 && v16)
    {
      (*(*v26 + 16))(v26, v18);
    }

    goto LABEL_29;
  }

  v19 = *v17;
  if (v19 >= 2)
  {
    goto LABEL_28;
  }

  v3 = v19 != 0;
  if (v19)
  {
    v20 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(v13);
    if ((v21 & 1) == 0)
    {
      goto LABEL_29;
    }

    v4 = v20 & 0xFFFFFFFFFFFFFF00;
    v22 = v20;
  }

  else
  {
    v4 = 0;
    v22 = 0;
  }

  IPC::ArgumentCoder<WebCore::ApplePayAMSUIRequest,void>::decode(v13, &v57);
  if ((v58 & 1) == 0)
  {
LABEL_29:
    v27 = *v13;
    v28 = *(v13 + 8);
    *v13 = 0;
    *(v13 + 8) = 0;
    v29 = *(v13 + 24);
    if (v29 && v28)
    {
      (*(*v29 + 16))(v29, v27);
    }

    v30 = *v13;
    v31 = *(v13 + 8);
    *v13 = 0;
    *(v13 + 8) = 0;
    v32 = *(v13 + 24);
    if (v32 && v31)
    {
      (*(*v32 + 16))(v32, v30);
    }

    v15 = 14;
    goto LABEL_32;
  }

  v14 = 0;
  v10 = v57;
  v4 |= v22;
  v54 = v57;
LABEL_33:
  if (!v56)
  {
    v35 = v55;
    v55 = 0;
    if (v35)
    {
      IPC::Decoder::~Decoder(v35);
      bmalloc::api::tzoneFree(v49, v50);
    }
  }

LABEL_36:
  v36 = v59;
  v59 = 0;
  if (v36)
  {
    IPC::Encoder::~Encoder(v36, v12);
    bmalloc::api::tzoneFree(v47, v48);
  }

  v57 = 0;
  if (v14)
  {
    v37 = 0;
    v38 = 0;
    v3 = 0;
    v10 = 0;
    v39 = &v57;
  }

  else
  {
    v37 = v4 & 0xFFFFFFFFFFFFFF00;
    v38 = v4;
    v39 = &v54;
  }

  *v39 = 0;
  this = v57;
  if (v57 && atomic_fetch_add_explicit(v57, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    this = WTF::StringImpl::destroy(this, v12);
    if (v3)
    {
LABEL_44:
      WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v7 + 16), v7);
      v40 = *(v7 + 16);
      if (v40)
      {
        atomic_fetch_add(v40, 1u);
      }

      this = WTF::fastMalloc(0x40);
      v41 = this;
      *(this + 8) = 1;
      v42 = this + 16;
      *this = &unk_1F1128208;
      *(this + 16) = &unk_1F1128290;
      *(this + 24) = 0;
      *(this + 32) = v40;
      *(this + 40) = v38 | v37;
      *(this + 48) = v10;
      *(this + 56) = 0;
      if (v40)
      {
        v43 = *(v40 + 8);
        if (v43)
        {
          if (!*(*(v43 + 24) + 8))
          {
            __break(0xC471u);
            JUMPOUT(0x19E294798);
          }

          {
            v44 = WebKit::WebProcess::singleton(void)::process;
          }

          else
          {
            v53 = WebKit::WebProcess::operator new(0x370, v12);
            v44 = WebKit::WebProcess::WebProcess(v53);
            WebKit::WebProcess::singleton(void)::process = v44;
          }

          v45 = WebKit::WebProcess::ensureGPUProcessConnection(v44);
          v46 = *(v41 + 40);
          v59 = 66;
          v60 = v46;
          this = WTF::HashMap<std::pair<IPC::ReceiverName,unsigned long long>,WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<std::pair<IPC::ReceiverName,unsigned long long>>,WTF::PairHashTraits<WTF::StrongEnumHashTraits<IPC::ReceiverName>,WTF::HashTraits<unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<std::pair<IPC::ReceiverName,unsigned long long>,IPC::MessageReceiver&>(v45 + 6, &v59, v42, &v57);
          if (!*(*(v43 + 24) + 8))
          {
            __break(0xC471u);
            JUMPOUT(0x19E2947B8);
          }
        }
      }

      *a3 = v41;
      if (v14)
      {
        goto LABEL_63;
      }

      goto LABEL_58;
    }
  }

  else if (v3)
  {
    goto LABEL_44;
  }

  *a3 = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    this = WTF::StringImpl::destroy(v10, v12);
    if (!v14)
    {
LABEL_58:
      this = v54;
      v54 = 0;
      if (this && atomic_fetch_add_explicit(this, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        this = WTF::StringImpl::destroy(this, v12);
      }

      if (v13)
      {
        IPC::Decoder::~Decoder(v13);
        this = bmalloc::api::tzoneFree(v51, v52);
      }
    }
  }

  else if (!v14)
  {
    goto LABEL_58;
  }

LABEL_63:
  if (!*(*(v7 + 24) + 8))
  {
    __break(0xC471u);
    JUMPOUT(0x19E294778);
  }

  return this;
}

IPC::Encoder *WebKit::RemoteCDM::loadAndInitialize(IPC::Encoder *this, void *a2)
{
  v2 = *(this + 2);
  if (!v2)
  {
    return this;
  }

  v3 = *(v2 + 8);
  if (!v3)
  {
    return this;
  }

  if (!*(*(v3 + 24) + 8))
  {
    __break(0xC471u);
    goto LABEL_13;
  }

  v4 = this;
  {
    v5 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v13 = WebKit::WebProcess::operator new(0x370, a2);
    v5 = WebKit::WebProcess::WebProcess(v13);
    WebKit::WebProcess::singleton(void)::process = v5;
  }

  v6 = WebKit::WebProcess::ensureGPUProcessConnection(v5)[4];
  v7 = *(v4 + 3);
  v9 = IPC::Encoder::operator new(0x238, v8);
  *v9 = 983;
  *(v9 + 2) = 0;
  *(v9 + 3) = 0;
  *(v9 + 1) = v7;
  *(v9 + 68) = 0;
  *(v9 + 70) = 0;
  *(v9 + 69) = 0;
  IPC::Encoder::encodeHeader(v9);
  v14 = v9;
  IPC::Connection::sendMessageImpl(v6, &v14, 0, 0);
  this = v14;
  v14 = 0;
  if (this)
  {
    IPC::Encoder::~Encoder(this, v10);
    this = bmalloc::api::tzoneFree(v11, v12);
  }

  if (!*(*(v3 + 24) + 8))
  {
    __break(0xC471u);
LABEL_13:
    JUMPOUT(0x19E29495CLL);
  }

  return this;
}

void WebKit::RemoteCDM::sanitizeSessionId(atomic_uint **a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
  }

  *a2 = v3;
  *(a2 + 8) = 1;
}

void WebKit::RemoteCDMFactory::~RemoteCDMFactory(WebKit::RemoteCDMFactory *this, WTF::StringImpl *a2)
{
  v3 = *(this + 5);
  if (v3)
  {
    v4 = *(v3 - 4);
    if (v4)
    {
      v5 = (v3 + 8);
      do
      {
        if (*(v5 - 1) != -1)
        {
          v5 = std::unique_ptr<WebKit::RemoteCDM>::~unique_ptr[abi:sn200100](v5, a2);
        }

        v5 += 2;
        --v4;
      }

      while (v4);
    }

    WTF::fastFree((v3 - 16), a2);
  }

  v6 = *(this + 4);
  if (v6)
  {
    v7 = *(v6 - 4);
    if (v7)
    {
      v8 = (v6 + 8);
      do
      {
        if (*(v8 - 1) != -1)
        {
          v9 = *v8;
          *v8 = 0;
          if (v9)
          {
            if (atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
            {
              atomic_store(1u, v9);
              WTF::fastFree(v9, a2);
            }
          }
        }

        v8 += 2;
        --v7;
      }

      while (v7);
    }

    WTF::fastFree((v6 - 16), a2);
  }

  v10 = *(this + 3);
  *(this + 3) = 0;
  if (v10 && atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v10);
    WTF::fastFree(v10, a2);
  }

  v11 = *(this + 2);
  if (v11)
  {
    *(v11 + 8) = 0;
    v12 = *(this + 2);
    *(this + 2) = 0;
    if (v12)
    {
      if (atomic_fetch_add(v12, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v12);
        WTF::fastFree(v12, a2);
      }
    }
  }
}

{
  WebKit::RemoteCDMFactory::~RemoteCDMFactory(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

void non-virtual thunk toWebKit::RemoteCDMFactory::~RemoteCDMFactory(WebKit::RemoteCDMFactory *this, WTF::StringImpl *a2)
{
  WebKit::RemoteCDMFactory::~RemoteCDMFactory((this - 8), a2);
}

{
  WebKit::RemoteCDMFactory::~RemoteCDMFactory((this - 8), a2);

  bmalloc::api::tzoneFree(v2, v3);
}

uint64_t WebKit::RemoteCDMFactory::ref(uint64_t this)
{
  if (!*(*(this + 24) + 8))
  {
    this = 92;
    __break(0xC471u);
  }

  return this;
}

void **WebKit::RemoteCDMFactory::registerFactory(void **result, uint64_t a2)
{
  v3 = result;
  v2 = *(a2 + 12);
  if (v2 == *(a2 + 8))
  {
    return WTF::Vector<WebCore::CDMFactory *,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::RemoteCDMFactory *>(a2, &v3);
  }

  *(*a2 + 8 * v2) = result;
  *(a2 + 12) = v2 + 1;
  return result;
}

uint64_t WebKit::RemoteCDMFactory::supportsKeySystem(WebKit::RemoteCDMFactory *this, const WTF::String *a2)
{
  {
    v3 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v22 = WebKit::WebProcess::operator new(0x370, a2);
    v3 = WebKit::WebProcess::WebProcess(v22);
    WebKit::WebProcess::singleton(void)::process = v3;
  }

  v4 = WebKit::WebProcess::ensureGPUProcessConnection(v3)[4];
  IPC::Connection::createSyncMessageEncoder(0xFB5, 0, v25);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v25[0], a2);
  v5 = IPC::Connection::sendSyncMessage(v4, v25[1], v25, 0, &v23, INFINITY);
  if (v24)
  {
    if (v24 != 1)
    {
      mpark::throw_bad_variant_access(v5);
    }

    v7 = v23;
    v8 = 1;
    goto LABEL_14;
  }

  v7 = v23;
  v23 = 0;
  if (*(v7 + 50) == 3194)
  {
    v9 = 11;
  }

  else
  {
    v12 = IPC::Decoder::decode<std::tuple<BOOL>>(v7);
    if (v12 >= 0x100u)
    {
      LOBYTE(v4) = v12;
      v8 = 0;
      goto LABEL_11;
    }

    v9 = 14;
  }

  IPC::Decoder::~Decoder(v7);
  bmalloc::api::tzoneFree(v10, v11);
  v8 = 1;
  v7 = v9;
LABEL_11:
  if (!v24)
  {
    v13 = v23;
    v23 = 0;
    if (v13)
    {
      IPC::Decoder::~Decoder(v13);
      bmalloc::api::tzoneFree(v18, v19);
    }
  }

LABEL_14:
  v14 = v25[0];
  v25[0] = 0;
  if (v14)
  {
    IPC::Encoder::~Encoder(v14, v6);
    bmalloc::api::tzoneFree(v16, v17);
    if (v8)
    {
      return (v8 == 0) & v4;
    }
  }

  else if (v8)
  {
    return (v8 == 0) & v4;
  }

  if (v7)
  {
    IPC::Decoder::~Decoder(v7);
    bmalloc::api::tzoneFree(v20, v21);
  }

  return (v8 == 0) & v4;
}

uint64_t WebKit::RemoteCDMFactory::createCDM@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v9 = &qword_1ED643000;
  {
    v10 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v58 = WebKit::WebProcess::operator new(0x370, a2);
    v10 = WebKit::WebProcess::WebProcess(v58);
    WebKit::WebProcess::singleton(void)::process = v10;
  }

  v11 = WebKit::WebProcess::ensureGPUProcessConnection(v10)[4];
  IPC::Connection::createSyncMessageEncoder(0xFB4, 0, v80);
  v12 = v80[0];
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v80[0], a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v12, a3);
  v13 = IPC::Connection::sendSyncMessage(v11, v80[1], v80, 0, &v78, INFINITY);
  if (!v79)
  {
    v15 = v78;
    v78 = 0;
    if (*(v15 + 50) == 3194)
    {
      v16 = 11;
      goto LABEL_8;
    }

    v19 = *(v15 + 8);
    v20 = *(v15 + 16);
    v21 = *v15;
    if (v19 <= &v20[-*v15])
    {
      *v15 = 0;
      *(v15 + 8) = 0;
      v59 = *(v15 + 24);
      if (v59)
      {
        if (v19)
        {
          (*(*v59 + 16))(v59);
          v19 = *(v15 + 8);
        }
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      *(v15 + 16) = v20 + 1;
      if (v20)
      {
        v22 = *v20;
        if (v22 >= 2)
        {
          goto LABEL_50;
        }

        if (!v22)
        {
          LOBYTE(v25) = 0;
          v11 = 0;
          v12 = 0;
LABEL_16:
          IPC::ArgumentCoder<WebKit::RemoteCDMConfiguration,void>::decode(v15, v81);
          if (v83[0])
          {
            goto LABEL_17;
          }

          goto LABEL_36;
        }

        v23 = IPC::ArgumentCoder<WTF::ObjectIdentifierGeneric<WebCore::BackgroundFetchRecordIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,void>::decode(v15);
        if (v24)
        {
          v11 = v23 & 0xFFFFFFFFFFFFFF00;
          v12 = v23;
          LOBYTE(v25) = 1;
          goto LABEL_16;
        }

        goto LABEL_49;
      }
    }

    *v15 = 0;
    *(v15 + 8) = 0;
    v60 = *(v15 + 24);
    if (v60)
    {
      if (v19)
      {
        (*(*v60 + 16))(v60);
LABEL_49:
        v21 = *v15;
        v19 = *(v15 + 8);
LABEL_50:
        *v15 = 0;
        *(v15 + 8) = 0;
        v61 = *(v15 + 24);
        if (v61 && v19)
        {
          (*(*v61 + 16))(v61, v21);
        }

        v62 = *v15;
        v63 = *(v15 + 8);
        *v15 = 0;
        *(v15 + 8) = 0;
        v64 = *(v15 + 24);
        if (v64 && v63)
        {
          (*(*v64 + 16))(v64, v62);
        }

        goto LABEL_52;
      }
    }

    else
    {
      v19 = 0;
    }

    v21 = 0;
    goto LABEL_50;
  }

  if (v79 != 1)
  {
    mpark::throw_bad_variant_access(v13);
  }

  v69[0] = v78;
  v15 = 1;
  v72 = 1;
  while (1)
  {
    v37 = v80[0];
    v80[0] = 0;
    if (v37)
    {
      IPC::Encoder::~Encoder(v37, v14);
      bmalloc::api::tzoneFree(v47, v48);
    }

    *(&v75 + 1) = 0;
    *(&v38 + 1) = 0;
    v73 = 0u;
    v74 = 0u;
    LOWORD(v75) = 0;
    if (v15)
    {
      *&v38 = 0;
      v39 = 0;
      a3 = 0;
      v12 = 0;
      v11 = 0;
      LOBYTE(v81[0]) = 0;
      BYTE8(v81[0]) = 0;
      *&v73 = 0;
      v81[1] = v38;
      v40 = &v75;
      v74 = 0uLL;
    }

    else
    {
      v81[0] = *&v69[8];
      *&v69[24] = 0;
      v70 = 0uLL;
      *&v81[1] = v4;
      *(&v81[1] + 1) = __PAIR64__(v9, v5);
      v40 = &v71[8];
      *v71 = 0;
      v39 = v69[16];
    }

    *&v82 = a3;
    *(&v82 + 1) = __PAIR64__(v11, v12);
    v9 = v81;
    v83[0] = *v40;
    WTF::Vector<WTF::AtomString,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v74, v14);
    WTF::Vector<WTF::AtomString,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v73, v41);
    if ((v39 & 1) == 0)
    {
      break;
    }

    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a1 + 16), a1);
    v25 = *(a1 + 16);
    atomic_fetch_add(v25, 1u);
    if (BYTE8(v81[0]))
    {
      operator new();
    }

    __break(1u);
LABEL_36:
    v55 = *v15;
    v56 = *(v15 + 8);
    *v15 = 0;
    *(v15 + 8) = 0;
    v57 = *(v15 + 24);
    if (v57 && v56 && ((*(*v57 + 16))(v57, v55), (v83[0] & 1) != 0))
    {
LABEL_17:
      *v69 = v12 | v11;
      v69[8] = v25;
      v4 = *&v81[0];
      memset(v81, 0, sizeof(v81));
      v5 = DWORD2(v81[0]);
      LODWORD(v9) = HIDWORD(v81[0]);
      a3 = *&v81[1];
      v12 = DWORD2(v81[1]);
      v11 = HIDWORD(v81[1]);
      *v71 = v82;
      v71[16] = 1;
      WTF::Vector<WTF::AtomString,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v81[1], v26);
      WTF::Vector<WTF::AtomString,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v81, v27);
      *&v28 = 0;
      *&v69[16] = v28;
      v70 = v28;
      v73 = *v69;
      v76 = *v71;
      v77 = 1;
      WTF::Vector<WTF::AtomString,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v70, v29);
      WTF::Vector<WTF::AtomString,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v69[16], v30);
      *(v81 + 8) = v73;
      v74 = 0u;
      v75 = 0u;
      *(v83 + 8) = v76;
      *v69 = v15;
      *&v69[8] = v73;
      *&v81[0] = 0;
      *(&v81[1] + 1) = 0;
      *&v69[24] = v4;
      v82 = 0uLL;
      *&v70 = __PAIR64__(v9, v5);
      *(&v70 + 1) = a3;
      *&v83[0] = 0;
      *v71 = v12;
      *&v71[4] = v11;
      *&v71[8] = v76;
      v72 = 0;
      WTF::Vector<WTF::AtomString,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v82 + 8, v31);
      WTF::Vector<WTF::AtomString,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v81[1] + 8, v32);
      v34 = *&v81[0];
      *&v81[0] = 0;
      if (v34)
      {
        IPC::Decoder::~Decoder(v34);
        bmalloc::api::tzoneFree(v53, v54);
      }

      WTF::Vector<WTF::AtomString,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v75, v33);
      WTF::Vector<WTF::AtomString,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v74, v35);
      v15 = 0;
    }

    else
    {
LABEL_52:
      v65 = *v15;
      v66 = *(v15 + 8);
      *v15 = 0;
      *(v15 + 8) = 0;
      v67 = *(v15 + 24);
      if (v67 && v66)
      {
        (*(*v67 + 16))(v67, v65);
      }

      v16 = 14;
LABEL_8:
      v69[0] = v16;
      v72 = 1;
      IPC::Decoder::~Decoder(v15);
      bmalloc::api::tzoneFree(v17, v18);
      v15 = 1;
    }

    if (!v79)
    {
      v36 = v78;
      v78 = 0;
      if (v36)
      {
        IPC::Decoder::~Decoder(v36);
        bmalloc::api::tzoneFree(v49, v50);
      }
    }
  }

  *a4 = 0;
  WTF::Vector<WTF::AtomString,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v82, v42);
  result = WTF::Vector<WTF::AtomString,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v81[1], v43);
  if (!v15)
  {
    WTF::Vector<WTF::AtomString,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v70 + 8, v45);
    WTF::Vector<WTF::AtomString,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v69[24], v46);
    result = *v69;
    if (*v69)
    {
      IPC::Decoder::~Decoder(*v69);
      return bmalloc::api::tzoneFree(v51, v52);
    }
  }

  return result;
}

WebKit::RemoteCDM **std::unique_ptr<WebKit::RemoteCDM>::~unique_ptr[abi:sn200100](WebKit::RemoteCDM **a1, WTF::StringImpl *a2)
{
  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    WebKit::RemoteCDM::~RemoteCDM(v3, a2);
    MEMORY[0x19EB14CF0]();
  }

  return a1;
}

IPC::Encoder *WebKit::RemoteCDMFactory::removeSession(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 32);
  v3 = *(a1 + 32);
  if (v3)
  {
    if (a2 == -1 || !a2)
    {
      __break(0xC471u);
      JUMPOUT(0x19E2955D0);
    }

    v5 = *(v3 - 8);
    v6 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
    v7 = 9 * ((v6 + ~(v6 << 13)) ^ ((v6 + ~(v6 << 13)) >> 8));
    v8 = (v7 ^ (v7 >> 15)) + ~((v7 ^ (v7 >> 15)) << 27);
    v9 = v5 & ((v8 >> 31) ^ v8);
    v10 = *(v3 + 16 * v9);
    if (v10 != a2)
    {
      v11 = 1;
      while (v10)
      {
        v9 = (v9 + v11) & v5;
        v10 = *(v3 + 16 * v9);
        ++v11;
        if (v10 == a2)
        {
          goto LABEL_10;
        }
      }

      v9 = *(v3 - 4);
    }

LABEL_10:
    if (v9 != *(v3 - 4))
    {
      v12 = (v3 + 16 * v9);
      v13 = v12[1];
      *v12 = -1;
      v12[1] = 0;
      if (v13 && atomic_fetch_add(v13, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v13);
        WTF::fastFree(v13, a2);
      }

      v14 = *v4;
      v15 = vadd_s32(*(*v4 - 16), 0xFFFFFFFF00000001);
      *(v14 - 16) = v15;
      v16 = *(v14 - 4);
      if (6 * v15.i32[1] < v16 && v16 >= 9)
      {
        WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseConnection,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseConnection,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseConnection,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseConnection,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(v4, v16 >> 1);
      }
    }
  }

  {
    v18 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v26 = WebKit::WebProcess::operator new(0x370, a2);
    v18 = WebKit::WebProcess::WebProcess(v26);
    WebKit::WebProcess::singleton(void)::process = v18;
  }

  v19 = WebKit::WebProcess::ensureGPUProcessConnection(v18)[4];
  v21 = IPC::Encoder::operator new(0x238, v20);
  *v21 = 967;
  *(v21 + 68) = 0;
  *(v21 + 70) = 0;
  *(v21 + 69) = 0;
  *(v21 + 2) = 0;
  *(v21 + 3) = 0;
  *(v21 + 1) = 0;
  IPC::Encoder::encodeHeader(v21);
  v27 = v21;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v21, a2);
  IPC::Connection::sendMessageImpl(v19, &v27, 0, 0);
  result = v27;
  v27 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v22);
    return bmalloc::api::tzoneFree(v24, v25);
  }

  return result;
}

WTF *WebKit::RemoteCDMFactory::didReceiveSessionMessage(WTF *this, IPC::Connection *a2, IPC::Decoder *a3)
{
  v5 = *(a3 + 7);
  if ((v5 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v12[3] = v3;
    v12[4] = v4;
    v11 = v5;
    WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::RemoteCDMInstanceSession,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::RemoteCDMInstanceSession,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::RemoteCDMInstanceSession,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::RemoteCDMInstanceSession,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(this + 4, &v11, v12);
    this = v12[0];
    if (v12[0])
    {
      if (*(v12[0] + 1))
      {
        WebKit::RemoteCDMInstanceSession::didReceiveMessage(*(v12[0] + 1), a2, a3, v9, v10);
        this = v12[0];
        v12[0] = 0;
        if (!this)
        {
          return this;
        }
      }

      else
      {
        v12[0] = 0;
      }

      if (atomic_fetch_add(this, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, this);
        return WTF::fastFree(this, v8);
      }
    }
  }

  return this;
}

void WebKit::RemoteCDMInstance::~RemoteCDMInstance(WebKit::RemoteCDMInstance *this, void *a2)
{
  v3 = *(this + 4);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      if (!*(*(v4 + 24) + 8))
      {
        __break(0xC471u);
        JUMPOUT(0x19E2958CCLL);
      }

      v5 = *(this + 5);
      {
        v6 = WebKit::WebProcess::singleton(void)::process;
      }

      else
      {
        v19 = WebKit::WebProcess::operator new(0x370, a2);
        v6 = WebKit::WebProcess::WebProcess(v19);
        WebKit::WebProcess::singleton(void)::process = v6;
      }

      v7 = WebKit::WebProcess::ensureGPUProcessConnection(v6)[4];
      v9 = IPC::Encoder::operator new(0x238, v8);
      *v9 = 966;
      *(v9 + 68) = 0;
      *(v9 + 70) = 0;
      *(v9 + 69) = 0;
      *(v9 + 2) = 0;
      *(v9 + 3) = 0;
      *(v9 + 1) = 0;
      IPC::Encoder::encodeHeader(v9);
      v21 = v9;
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v9, v5);
      IPC::Connection::sendMessageImpl(v7, &v21, 0, 0);
      v11 = v21;
      v21 = 0;
      if (v11)
      {
        IPC::Encoder::~Encoder(v11, v10);
        bmalloc::api::tzoneFree(v17, v18);
      }

      {
        v12 = WebKit::WebProcess::singleton(void)::process;
      }

      else
      {
        v20 = WebKit::WebProcess::operator new(0x370, v10);
        v12 = WebKit::WebProcess::WebProcess(v20);
        WebKit::WebProcess::singleton(void)::process = v12;
      }

      v13 = WebKit::WebProcess::ensureGPUProcessConnection(v12);
      IPC::MessageReceiverMap::removeMessageReceiver((v13 + 5), 0x42u, *(this + 5));
      if (!*(*(v4 + 24) + 8))
      {
        goto LABEL_26;
      }
    }
  }

  v14 = *(this + 7);
  *(this + 7) = 0;
  if (v14 && atomic_fetch_add(v14, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v14);
    WTF::fastFree(v14, a2);
  }

  v15 = *(this + 6);
  *(this + 6) = 0;
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, a2);
  }

  v16 = *(this + 4);
  *(this + 4) = 0;
  if (v16 && atomic_fetch_add(v16, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v16);
    WTF::fastFree(v16, a2);
  }

  *(this + 2) = &unk_1F10EA5E0;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 3, a2);
  if (*(this + 2) != 1)
  {
LABEL_26:
    __break(0xC471u);
    JUMPOUT(0x19E2958ACLL);
  }
}

{
  WebKit::RemoteCDMInstance::~RemoteCDMInstance(this, a2);

  WTF::fastFree(v2, v3);
}

void non-virtual thunk toWebKit::RemoteCDMInstance::~RemoteCDMInstance(WebKit::RemoteCDMInstance *this, void *a2)
{
  WebKit::RemoteCDMInstance::~RemoteCDMInstance((this - 16), a2);
}

{
  WebKit::RemoteCDMInstance::~RemoteCDMInstance((this - 16), a2);

  WTF::fastFree(v2, v3);
}

uint64_t WebKit::RemoteCDMInstance::unrequestedInitializationDataReceived(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 56);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      (**v4)(v4);
      (*(*v4 + 32))(v4, a2, a3);
      v7 = *(*v4 + 8);

      return v7(v4);
    }
  }

  return result;
}

IPC::Encoder *WebKit::RemoteCDMInstance::initializeWithConfiguration(uint64_t a1, void *a2, char a3, char a4, uint64_t *a5)
{
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = *(v6 + 8);
    if (v7)
    {
      if (*(*(v7 + 24) + 8))
      {
        {
          v12 = WebKit::WebProcess::singleton(void)::process;
        }

        else
        {
          v28 = WebKit::WebProcess::operator new(0x370, a2);
          v12 = WebKit::WebProcess::WebProcess(v28);
          WebKit::WebProcess::singleton(void)::process = v12;
        }

        v13 = WebKit::WebProcess::ensureGPUProcessConnection(v12)[4];
        v14 = *(a1 + 40);
        v15 = *a5;
        *a5 = 0;
        v16 = WTF::fastMalloc(0x10);
        *v16 = &unk_1F1128570;
        v16[1] = v15;
        if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
        {
          __break(0xC471u);
          JUMPOUT(0x19E295CBCLL);
        }

        v17 = v16;
        IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
        v20 = IPC::Encoder::operator new(0x238, v19);
        *v20 = 968;
        *(v20 + 2) = 0;
        *(v20 + 3) = 0;
        *(v20 + 1) = v14;
        *(v20 + 68) = 0;
        *(v20 + 70) = 0;
        *(v20 + 69) = 0;
        IPC::Encoder::encodeHeader(v20);
        v30 = v20;
        IPC::ArgumentCoder<WebCore::CDMKeySystemConfiguration,void>::encode(v20, a2);
        LOBYTE(v29[0]) = a3;
        IPC::Encoder::operator<<<BOOL>(v20, v29);
        LOBYTE(v29[0]) = a4;
        IPC::Encoder::operator<<<BOOL>(v20, v29);
        v29[0] = v17;
        v29[1] = IdentifierInternal;
        IPC::Connection::sendMessageWithAsyncReply(v13, &v30, v29, 0, 0);
        v22 = v29[0];
        v29[0] = 0;
        if (v22)
        {
          (*(*v22 + 8))(v22);
        }

        result = v30;
        v30 = 0;
        if (result)
        {
          IPC::Encoder::~Encoder(result, v21);
          result = bmalloc::api::tzoneFree(v26, v27);
        }

        if (*(*(v7 + 24) + 8))
        {
          return result;
        }

        __break(0xC471u);
      }

      else
      {
        __break(0xC471u);
      }

      JUMPOUT(0x19E295C9CLL);
    }
  }

  v24 = *a5;
  *a5 = 0;
  (*(*v24 + 16))(v24, 0);
  v25 = *(*v24 + 8);

  return v25(v24);
}

IPC::Encoder *WebKit::RemoteCDMInstance::setServerCertificate(uint64_t a1, atomic_uint **a2, uint64_t *a3)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 8);
    if (v5)
    {
      if (*(*(v5 + 24) + 8))
      {
        {
          v8 = WebKit::WebProcess::singleton(void)::process;
        }

        else
        {
          v24 = WebKit::WebProcess::operator new(0x370, a2);
          v8 = WebKit::WebProcess::WebProcess(v24);
          WebKit::WebProcess::singleton(void)::process = v8;
        }

        v9 = WebKit::WebProcess::ensureGPUProcessConnection(v8)[4];
        v10 = *(a1 + 40);
        v11 = *a3;
        *a3 = 0;
        v12 = WTF::fastMalloc(0x10);
        *v12 = &unk_1F1128598;
        v12[1] = v11;
        if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
        {
          __break(0xC471u);
          JUMPOUT(0x19E295F40);
        }

        v13 = v12;
        IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
        v16 = IPC::Encoder::operator new(0x238, v15);
        *v16 = 969;
        *(v16 + 2) = 0;
        *(v16 + 3) = 0;
        *(v16 + 1) = v10;
        *(v16 + 68) = 0;
        *(v16 + 70) = 0;
        *(v16 + 69) = 0;
        IPC::Encoder::encodeHeader(v16);
        v26 = v16;
        IPC::ArgumentCoder<WebCore::SharedBuffer,void>::encode(v16, *a2);
        v25[0] = v13;
        v25[1] = IdentifierInternal;
        IPC::Connection::sendMessageWithAsyncReply(v9, &v26, v25, 0, 0);
        v18 = v25[0];
        v25[0] = 0;
        if (v18)
        {
          (*(*v18 + 8))(v18);
        }

        result = v26;
        v26 = 0;
        if (result)
        {
          IPC::Encoder::~Encoder(result, v17);
          result = bmalloc::api::tzoneFree(v22, v23);
        }

        if (*(*(v5 + 24) + 8))
        {
          return result;
        }

        __break(0xC471u);
      }

      else
      {
        __break(0xC471u);
      }

      JUMPOUT(0x19E295F20);
    }
  }

  v20 = *a3;
  *a3 = 0;
  (*(*v20 + 16))(v20, 0);
  v21 = *(*v20 + 8);

  return v21(v20);
}

IPC::Encoder *WebKit::RemoteCDMInstance::setStorageDirectory(IPC::Encoder *this, const WTF::String *a2)
{
  v2 = *(this + 4);
  if (!v2)
  {
    return this;
  }

  v3 = *(v2 + 8);
  if (!v3)
  {
    return this;
  }

  if (!*(*(v3 + 24) + 8))
  {
    __break(0xC471u);
    goto LABEL_13;
  }

  v5 = this;
  {
    v6 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v14 = WebKit::WebProcess::operator new(0x370, a2);
    v6 = WebKit::WebProcess::WebProcess(v14);
    WebKit::WebProcess::singleton(void)::process = v6;
  }

  v7 = WebKit::WebProcess::ensureGPUProcessConnection(v6)[4];
  v8 = *(v5 + 5);
  v10 = IPC::Encoder::operator new(0x238, v9);
  *v10 = 970;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 1) = v8;
  *(v10 + 68) = 0;
  *(v10 + 70) = 0;
  *(v10 + 69) = 0;
  IPC::Encoder::encodeHeader(v10);
  v15 = v10;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v10, a2);
  IPC::Connection::sendMessageImpl(v7, &v15, 0, 0);
  this = v15;
  v15 = 0;
  if (this)
  {
    IPC::Encoder::~Encoder(this, v11);
    this = bmalloc::api::tzoneFree(v12, v13);
  }

  if (!*(*(v3 + 24) + 8))
  {
    __break(0xC471u);
LABEL_13:
    JUMPOUT(0x19E296090);
  }

  return this;
}

void WebKit::RemoteCDMInstance::createSession(WebKit::RemoteCDMInstance *this@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(this + 4);
  if (!v4 || (v5 = *(v4 + 8)) == 0)
  {
    *a3 = 0;
    return;
  }

  if (!*(*(v5 + 24) + 8))
  {
    __break(0xC471u);
    JUMPOUT(0x19E296660);
  }

  v7 = *(this + 7);
  if (v7 && (v8 = *(v7 + 8)) != 0)
  {
    (**v8)(v8);
    v9 = (*(*v8 + 48))(v8);
    (*(*v8 + 8))(v8);
  }

  else
  {
    v9 = 0;
  }

  v10 = &dword_1EB01E000;
  {
    v11 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v22 = WebKit::WebProcess::operator new(0x370, a2);
    v11 = WebKit::WebProcess::WebProcess(v22);
    WebKit::WebProcess::singleton(void)::process = v11;
  }

  v12 = WebKit::WebProcess::ensureGPUProcessConnection(v11)[4];
  IPC::Connection::createSyncMessageEncoder(0xFB6, *(this + 5), v69);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v69[0], v9);
  v13 = IPC::Connection::sendSyncMessage(v12, v69[1], v69, 0, &v67, INFINITY);
  if (v68)
  {
    if (v68 != 1)
    {
      mpark::throw_bad_variant_access(v13);
    }

    v15 = v67;
    v16 = 1;
    goto LABEL_37;
  }

  v15 = v67;
  v67 = 0;
  if (*(v15 + 50) == 3194)
  {
    v17 = 11;
    goto LABEL_33;
  }

  v18 = *(v15 + 8);
  v19 = *(v15 + 16);
  v14 = *v15;
  if (v18 <= &v19[-*v15])
  {
    *v15 = 0;
    *(v15 + 8) = 0;
    v23 = *(v15 + 24);
    if (v23)
    {
      if (v18)
      {
        (*(*v23 + 16))(v23);
        v18 = *(v15 + 8);
      }
    }

    else
    {
      v18 = 0;
    }

    goto LABEL_27;
  }

  *(v15 + 16) = v19 + 1;
  if (!v19)
  {
LABEL_27:
    *v15 = 0;
    *(v15 + 8) = 0;
    v24 = *(v15 + 24);
    if (v24)
    {
      if (v18)
      {
        (*(*v24 + 16))(v24);
        v14 = *v15;
        v18 = *(v15 + 8);
        goto LABEL_30;
      }
    }

    else
    {
      v18 = 0;
    }

    v14 = 0;
LABEL_30:
    *v15 = 0;
    *(v15 + 8) = 0;
    v25 = *(v15 + 24);
    if (v25 && v18)
    {
      (*(*v25 + 16))(v25, v14);
    }

    goto LABEL_31;
  }

  v20 = *v19;
  if (v20 >= 2)
  {
    goto LABEL_30;
  }

  if (!v20)
  {
    v16 = 0;
    LOBYTE(v10) = 0;
    v12 = 0;
    goto LABEL_34;
  }

  v21 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(v15);
  if ((v14 & 1) == 0)
  {
LABEL_31:
    v26 = *v15;
    v27 = *(v15 + 8);
    *v15 = 0;
    *(v15 + 8) = 0;
    v28 = *(v15 + 24);
    if (v28 && v27)
    {
      (*(*v28 + 16))(v28, v26);
      v64 = *v15;
      v65 = *(v15 + 8);
      v66 = *(v15 + 24);
      v17 = 14;
      *v15 = 0;
      *(v15 + 8) = 0;
      if (!v66 || !v65)
      {
        goto LABEL_33;
      }

      (*(*v66 + 16))(v66, v64);
    }

    v17 = 14;
LABEL_33:
    IPC::Decoder::~Decoder(v15);
    bmalloc::api::tzoneFree(v29, v30);
    v16 = 1;
    v15 = v17;
    goto LABEL_34;
  }

  v12 = v21;
  v16 = 0;
  LOBYTE(v10) = 1;
LABEL_34:
  if (!v68)
  {
    v31 = v67;
    v67 = 0;
    if (v31)
    {
      IPC::Decoder::~Decoder(v31);
      bmalloc::api::tzoneFree(v58, v59);
    }
  }

LABEL_37:
  v32 = v69[0];
  v69[0] = 0;
  if (v32)
  {
    IPC::Encoder::~Encoder(v32, v14);
    bmalloc::api::tzoneFree(v33, v34);
    if (v16)
    {
      goto LABEL_39;
    }

LABEL_41:
    if ((v10 & 1) == 0)
    {
      v38 = 0;
      goto LABEL_71;
    }

    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v5 + 16), v5);
    v35 = *(v5 + 16);
    if (v35)
    {
      atomic_fetch_add(v35, 1u);
    }

    v36 = WTF::fastMalloc(0x38);
    *(v36 + 8) = 0;
    v37 = (v36 + 8);
    v38 = v36 + 16;
    *v36 = &unk_1F11282D8;
    *(v36 + 16) = &unk_1F1128368;
    *(v36 + 32) = v35;
    *(v36 + 40) = v12;
    *(v36 + 48) = 0;
    *(v36 + 24) = 2;
    if (v12 == -1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E2966A0);
    }

    if (!v12)
    {
      __break(0xC471u);
      JUMPOUT(0x19E2966C0);
    }

    v39 = v36;
    v40 = *(v5 + 32);
    if (!v40)
    {
      WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseConnection,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseConnection,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseConnection,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseConnection,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand((v5 + 32));
      v40 = *(v5 + 32);
    }

    v41 = *(v40 - 8);
    v42 = &v12[~(v12 << 32)] ^ (&v12[~(v12 << 32)] >> 22);
    v43 = 9 * ((v42 + ~(v42 << 13)) ^ ((v42 + ~(v42 << 13)) >> 8));
    v44 = (v43 ^ (v43 >> 15)) + ~((v43 ^ (v43 >> 15)) << 27);
    v45 = v41 & ((v44 >> 31) ^ v44);
    v46 = (v40 + 16 * v45);
    v47 = *v46;
    if (*v46)
    {
      v48 = 0;
      v49 = 1;
      while (v47 != v12)
      {
        if (v47 == -1)
        {
          v48 = v46;
        }

        v45 = (v45 + v49) & v41;
        v46 = (v40 + 16 * v45);
        v47 = *v46;
        ++v49;
        if (!*v46)
        {
          if (v48)
          {
            *v48 = 0;
            v48[1] = 0;
            --*(*(v5 + 32) - 16);
            v46 = v48;
          }

          goto LABEL_56;
        }
      }

      WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(v37, v39);
      v56 = *(v39 + 8);
      atomic_fetch_add(v56, 1u);
      v57 = v46[1];
      v46[1] = v56;
      if (v57 && atomic_fetch_add(v57, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v57);
        WTF::fastFree(v57, v55);
      }

      goto LABEL_69;
    }

LABEL_56:
    *v46 = v12;
    WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(v37, v39);
    v51 = *(v39 + 8);
    atomic_fetch_add(v51, 1u);
    v52 = v46[1];
    v46[1] = v51;
    if (v52 && atomic_fetch_add(v52, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v52);
      WTF::fastFree(v52, v50);
    }

    v53 = *(v5 + 32);
    if (v53)
    {
      v54 = *(v53 - 12) + 1;
    }

    else
    {
      v54 = 1;
    }

    *(v53 - 12) = v54;
    v60 = (*(v53 - 16) + v54);
    v61 = *(v53 - 4);
    if (v61 > 0x400)
    {
      if (v61 > 2 * v60)
      {
LABEL_69:
        if (*(v39 + 24) == 1)
        {
          (*(*v38 + 8))(v38);
        }

        else
        {
          --*(v39 + 24);
        }

LABEL_71:
        *a3 = v38;
        if (v15)
        {
          IPC::Decoder::~Decoder(v15);
          bmalloc::api::tzoneFree(v62, v63);
        }

        goto LABEL_73;
      }
    }

    else if (3 * v61 > 4 * v60)
    {
      goto LABEL_69;
    }

    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseConnection,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseConnection,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseConnection,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseConnection,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand((v5 + 32));
    goto LABEL_69;
  }

  if (!v16)
  {
    goto LABEL_41;
  }

LABEL_39:
  *a3 = 0;
LABEL_73:
  if (!*(*(v5 + 24) + 8))
  {
    __break(0xC471u);
    JUMPOUT(0x19E296680);
  }
}

void WebKit::RemoteCDMInstanceSession::~RemoteCDMInstanceSession(WebKit::RemoteCDMInstanceSession *this)
{
  v2 = *(this + 4);
  if (v2 && (v3 = *(v2 + 8)) != 0)
  {
    if (!*(*(v3 + 24) + 8) || (WebKit::RemoteCDMFactory::removeSession(v3, *(this + 5)), !*(*(v3 + 24) + 8)))
    {
      __break(0xC471u);
      JUMPOUT(0x19E2967B4);
    }
  }

  else
  {
    WebKit::RemoteCDMFactory::removeSession(0, *(this + 5));
  }

  v5 = *(this + 6);
  *(this + 6) = 0;
  if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5);
    WTF::fastFree(v5, v4);
  }

  v6 = *(this + 4);
  *(this + 4) = 0;
  if (v6 && atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v6);
    WTF::fastFree(v6, v4);
  }

  if (*(this + 6) != 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E296870);
  }

  *this = &unk_1F10EA5E0;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, v4);
}

{
  WebKit::RemoteCDMInstanceSession::~RemoteCDMInstanceSession(this);

  WTF::fastFree(v1, v2);
}

void non-virtual thunk toWebKit::RemoteCDMInstanceSession::~RemoteCDMInstanceSession(WebKit::RemoteCDMInstanceSession *this)
{
  WebKit::RemoteCDMInstanceSession::~RemoteCDMInstanceSession((this - 16));
}

{
  WebKit::RemoteCDMInstanceSession::~RemoteCDMInstanceSession((this - 16));

  WTF::fastFree(v1, v2);
}

IPC::Encoder *WebKit::RemoteCDMInstanceSession::setLogIdentifier(WebKit::RemoteCDMInstanceSession *this, void *a2)
{
  v4 = *(this + 4);
  if (v4)
  {
    v5 = *(v4 + 8);
    if (v5 && !*(*(v5 + 24) + 8))
    {
      __break(0xC471u);
      goto LABEL_16;
    }
  }

  else
  {
    v5 = 0;
  }

  {
    v6 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v15 = WebKit::WebProcess::operator new(0x370, a2);
    v6 = WebKit::WebProcess::WebProcess(v15);
    WebKit::WebProcess::singleton(void)::process = v6;
  }

  v7 = WebKit::WebProcess::ensureGPUProcessConnection(v6)[4];
  v8 = *(this + 5);
  v10 = IPC::Encoder::operator new(0x238, v9);
  *v10 = 975;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 1) = v8;
  *(v10 + 68) = 0;
  *(v10 + 70) = 0;
  *(v10 + 69) = 0;
  IPC::Encoder::encodeHeader(v10);
  v16 = v10;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v10, a2);
  IPC::Connection::sendMessageImpl(v7, &v16, 0, 0);
  result = v16;
  v16 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v11);
    result = bmalloc::api::tzoneFree(v13, v14);
    if (!v5)
    {
      return result;
    }
  }

  else if (!v5)
  {
    return result;
  }

  if (!*(*(v5 + 24) + 8))
  {
    __break(0xC471u);
LABEL_16:
    JUMPOUT(0x19E296950);
  }

  return result;
}

unsigned int *WebKit::RemoteCDMInstanceSession::requestLicense(uint64_t a1, void *a2, char a3, uint64_t *a4, atomic_uint **a5, uint64_t *a6)
{
  v7 = *(a1 + 32);
  if (v7 && (v8 = *(v7 + 8)) != 0)
  {
    if (!*(*(v8 + 24) + 8))
    {
      __break(0xC471u);
      JUMPOUT(0x19E296D94);
    }

    v12 = a2;
    {
      v14 = WebKit::WebProcess::singleton(void)::process;
    }

    else
    {
      v32 = WebKit::WebProcess::operator new(0x370, a2);
      v14 = WebKit::WebProcess::WebProcess(v32);
      WebKit::WebProcess::singleton(void)::process = v14;
    }

    v15 = WebKit::WebProcess::ensureGPUProcessConnection(v14)[4];
    v16 = *a5;
    *a5 = 0;
    v33 = v16;
    v17 = *a6;
    *a6 = 0;
    v18 = *(a1 + 40);
    v19 = WTF::fastMalloc(0x10);
    *v19 = &unk_1F11285C0;
    v19[1] = v17;
    if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
    {
      __break(0xC471u);
LABEL_23:
      JUMPOUT(0x19E296C0CLL);
    }

    v20 = v19;
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v23 = IPC::Encoder::operator new(0x238, v22);
    *v23 = 974;
    *(v23 + 2) = 0;
    *(v23 + 3) = 0;
    *(v23 + 1) = v18;
    *(v23 + 68) = 0;
    *(v23 + 70) = 0;
    *(v23 + 69) = 0;
    IPC::Encoder::encodeHeader(v23);
    v35 = v23;
    LOBYTE(v34[0]) = v12;
    IPC::Encoder::operator<<<unsigned char>(v23, v34);
    LOBYTE(v34[0]) = a3;
    IPC::Encoder::operator<<<BOOL>(v23, v34);
    IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v23, a4);
    IPC::ArgumentCoder<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,void>::encode<IPC::Encoder,WebCore::SharedBuffer>(v23, &v33);
    v34[0] = v20;
    v34[1] = IdentifierInternal;
    IPC::Connection::sendMessageWithAsyncReply(v15, &v35, v34, 0, 0);
    v25 = v34[0];
    v34[0] = 0;
    if (v25)
    {
      (*(*v25 + 8))(v25);
    }

    v26 = v35;
    v35 = 0;
    if (v26)
    {
      IPC::Encoder::~Encoder(v26, v24);
      bmalloc::api::tzoneFree(v30, v31);
    }

    result = v33;
    v33 = 0;
    if (result)
    {
      if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, result + 2);
        result = (*(*result + 8))(result);
      }
    }

    if (!*(*(v8 + 24) + 8))
    {
      __break(0xC471u);
      goto LABEL_23;
    }
  }

  else
  {
    v28 = WTF::fastMalloc(0x40);
    v34[0] = WebCore::SharedBuffer::SharedBuffer(v28);
    v29 = *a6;
    *a6 = 0;
    (*(*v29 + 16))(v29, v34, MEMORY[0x1E696EBA8], 0, 0);
    (*(*v29 + 8))(v29);
    result = v34[0];
    v34[0] = 0;
    if (result && atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result + 2);
      return (*(*result + 8))(result);
    }
  }

  return result;
}

unsigned int *WebKit::RemoteCDMInstanceSession::updateLicense(uint64_t a1, void *a2, char a3, atomic_uint **a4, uint64_t *a5)
{
  v6 = *(a1 + 32);
  if (v6 && (v7 = *(v6 + 8)) != 0)
  {
    if (!*(*(v7 + 24) + 8))
    {
      __break(0xC471u);
      JUMPOUT(0x19E297108);
    }

    {
      v12 = WebKit::WebProcess::singleton(void)::process;
    }

    else
    {
      v30 = WebKit::WebProcess::operator new(0x370, a2);
      v12 = WebKit::WebProcess::WebProcess(v30);
      WebKit::WebProcess::singleton(void)::process = v12;
    }

    v13 = WebKit::WebProcess::ensureGPUProcessConnection(v12)[4];
    v14 = *a4;
    *a4 = 0;
    v34 = v14;
    v15 = *a5;
    *a5 = 0;
    v16 = *(a1 + 40);
    v17 = WTF::fastMalloc(0x10);
    *v17 = &unk_1F11285E8;
    v17[1] = v15;
    if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
    {
      __break(0xC471u);
LABEL_26:
      JUMPOUT(0x19E296F5CLL);
    }

    v18 = v17;
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v21 = IPC::Encoder::operator new(0x238, v20);
    *v21 = 977;
    *(v21 + 2) = 0;
    *(v21 + 3) = 0;
    *(v21 + 1) = v16;
    *(v21 + 68) = 0;
    *(v21 + 70) = 0;
    *(v21 + 69) = 0;
    IPC::Encoder::encodeHeader(v21);
    v31 = v21;
    IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v21, a2);
    LOBYTE(v36[0]) = a3;
    IPC::Encoder::operator<<<unsigned char>(v21, v36);
    IPC::ArgumentCoder<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,void>::encode<IPC::Encoder,WebCore::SharedBuffer>(v21, &v34);
    v36[0] = v18;
    v36[1] = IdentifierInternal;
    IPC::Connection::sendMessageWithAsyncReply(v13, &v31, v36, 0, 0);
    v23 = v36[0];
    v36[0] = 0;
    if (v23)
    {
      (*(*v23 + 8))(v23);
    }

    v24 = v31;
    v31 = 0;
    if (v24)
    {
      IPC::Encoder::~Encoder(v24, v22);
      bmalloc::api::tzoneFree(v28, v29);
    }

    result = v34;
    v34 = 0;
    if (result)
    {
      if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, result + 2);
        result = (*(*result + 8))(result);
      }
    }

    if (!*(*(v7 + 24) + 8))
    {
      __break(0xC471u);
      goto LABEL_26;
    }
  }

  else
  {
    LOBYTE(v36[0]) = 0;
    v37 = 0;
    LOBYTE(v34) = 0;
    v35 = 0;
    LOBYTE(v31) = 0;
    v33 = 0;
    v26 = *a5;
    *a5 = 0;
    (*(*v26 + 16))(v26, 0, v36, &v34, &v31, 0);
    result = (*(*v26 + 8))(v26);
    if (v33 == 1)
    {
      result = v32;
      v32 = 0;
      if (result)
      {
        if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, result + 2);
          result = (*(*result + 8))(result);
        }
      }
    }

    if (v37 == 1)
    {
      return WTF::Vector<std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v36, v27);
    }
  }

  return result;
}

unsigned int *WebKit::RemoteCDMInstanceSession::loadSession(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v6 = *(a1 + 32);
  if (v6 && (v7 = *(v6 + 8)) != 0)
  {
    if (!*(*(v7 + 24) + 8))
    {
      __break(0xC471u);
      JUMPOUT(0x19E29742CLL);
    }

    v10 = a2;
    {
      v12 = WebKit::WebProcess::singleton(void)::process;
    }

    else
    {
      v28 = WebKit::WebProcess::operator new(0x370, a2);
      v12 = WebKit::WebProcess::WebProcess(v28);
      WebKit::WebProcess::singleton(void)::process = v12;
    }

    v13 = WebKit::WebProcess::ensureGPUProcessConnection(v12)[4];
    v14 = *a5;
    *a5 = 0;
    v15 = *(a1 + 40);
    v16 = WTF::fastMalloc(0x10);
    *v16 = &unk_1F1128610;
    v16[1] = v14;
    if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
    {
      __break(0xC471u);
LABEL_23:
      JUMPOUT(0x19E2972A8);
    }

    v17 = v16;
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v20 = IPC::Encoder::operator new(0x238, v19);
    *v20 = 972;
    *(v20 + 2) = 0;
    *(v20 + 3) = 0;
    *(v20 + 1) = v15;
    *(v20 + 68) = 0;
    *(v20 + 70) = 0;
    *(v20 + 69) = 0;
    IPC::Encoder::encodeHeader(v20);
    v29 = v20;
    LOBYTE(v33[0]) = v10;
    IPC::Encoder::operator<<<unsigned char>(v20, v33);
    IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v20, a3);
    IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v20, a4);
    v33[0] = v17;
    v33[1] = IdentifierInternal;
    IPC::Connection::sendMessageWithAsyncReply(v13, &v29, v33, 0, 0);
    v22 = v33[0];
    v33[0] = 0;
    if (v22)
    {
      (*(*v22 + 8))(v22);
    }

    result = v29;
    v29 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v21);
      result = bmalloc::api::tzoneFree(v26, v27);
    }

    if (!*(*(v7 + 24) + 8))
    {
      __break(0xC471u);
      goto LABEL_23;
    }
  }

  else
  {
    LOBYTE(v33[0]) = 0;
    v34 = 0;
    v32[0] = 0;
    v32[8] = 0;
    LOBYTE(v29) = 0;
    v31 = 0;
    v24 = *a5;
    *a5 = 0;
    (*(*v24 + 16))(v24, v33, v32, &v29, 0, 4);
    result = (*(*v24 + 8))(v24);
    if (v31 == 1)
    {
      result = v30;
      v30 = 0;
      if (result)
      {
        if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, result + 2);
          result = (*(*result + 8))(result);
        }
      }
    }

    if (v34 == 1)
    {
      return WTF::Vector<std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v33, v25);
    }
  }

  return result;
}

IPC::Encoder *WebKit::RemoteCDMInstanceSession::closeSession(uint64_t a1, void *a2, uint64_t *a3)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 8);
    if (v5)
    {
      if (*(*(v5 + 24) + 8))
      {
        {
          v8 = WebKit::WebProcess::singleton(void)::process;
        }

        else
        {
          v24 = WebKit::WebProcess::operator new(0x370, a2);
          v8 = WebKit::WebProcess::WebProcess(v24);
          WebKit::WebProcess::singleton(void)::process = v8;
        }

        v9 = WebKit::WebProcess::ensureGPUProcessConnection(v8)[4];
        v10 = *a3;
        *a3 = 0;
        v11 = *(a1 + 40);
        v12 = WTF::fastMalloc(0x10);
        *v12 = &unk_1F1128638;
        v12[1] = v10;
        if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
        {
          __break(0xC471u);
          JUMPOUT(0x19E2976B4);
        }

        v13 = v12;
        IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
        v16 = IPC::Encoder::operator new(0x238, v15);
        *v16 = 971;
        *(v16 + 2) = 0;
        *(v16 + 3) = 0;
        *(v16 + 1) = v11;
        *(v16 + 68) = 0;
        *(v16 + 70) = 0;
        *(v16 + 69) = 0;
        IPC::Encoder::encodeHeader(v16);
        v26 = v16;
        IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v16, a2);
        v25[0] = v13;
        v25[1] = IdentifierInternal;
        IPC::Connection::sendMessageWithAsyncReply(v9, &v26, v25, 0, 0);
        v18 = v25[0];
        v25[0] = 0;
        if (v18)
        {
          (*(*v18 + 8))(v18);
        }

        result = v26;
        v26 = 0;
        if (result)
        {
          IPC::Encoder::~Encoder(result, v17);
          result = bmalloc::api::tzoneFree(v22, v23);
        }

        if (*(*(v5 + 24) + 8))
        {
          return result;
        }

        __break(0xC471u);
      }

      else
      {
        __break(0xC471u);
      }

      JUMPOUT(0x19E297694);
    }
  }

  v20 = *a3;
  *a3 = 0;
  (*(*v20 + 16))(v20);
  v21 = *(*v20 + 8);

  return v21(v20);
}

IPC::Encoder *WebKit::RemoteCDMInstanceSession::removeSessionData(uint64_t a1, void *a2, char a3, uint64_t *a4)
{
  v5 = *(a1 + 32);
  if (v5 && (v6 = *(v5 + 8)) != 0)
  {
    if (!*(*(v6 + 24) + 8))
    {
      __break(0xC471u);
      JUMPOUT(0x19E297990);
    }

    {
      v10 = WebKit::WebProcess::singleton(void)::process;
    }

    else
    {
      v27 = WebKit::WebProcess::operator new(0x370, a2);
      v10 = WebKit::WebProcess::WebProcess(v27);
      WebKit::WebProcess::singleton(void)::process = v10;
    }

    v11 = WebKit::WebProcess::ensureGPUProcessConnection(v10)[4];
    v12 = *a4;
    *a4 = 0;
    v13 = *(a1 + 40);
    v14 = WTF::fastMalloc(0x10);
    *v14 = &unk_1F1128660;
    v14[1] = v12;
    if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
    {
      __break(0xC471u);
LABEL_21:
      JUMPOUT(0x19E297840);
    }

    v15 = v14;
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v18 = IPC::Encoder::operator new(0x238, v17);
    *v18 = 973;
    *(v18 + 2) = 0;
    *(v18 + 3) = 0;
    *(v18 + 1) = v13;
    *(v18 + 68) = 0;
    *(v18 + 70) = 0;
    *(v18 + 69) = 0;
    IPC::Encoder::encodeHeader(v18);
    v30 = v18;
    IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v18, a2);
    LOBYTE(v28) = a3;
    IPC::Encoder::operator<<<unsigned char>(v18, &v28);
    v28 = v15;
    v29 = IdentifierInternal;
    IPC::Connection::sendMessageWithAsyncReply(v11, &v30, &v28, 0, 0);
    v20 = v28;
    v28 = 0;
    if (v20)
    {
      (*(*v20 + 8))(v20);
    }

    result = v30;
    v30 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v19);
      result = bmalloc::api::tzoneFree(v25, v26);
    }

    if (!*(*(v6 + 24) + 8))
    {
      __break(0xC471u);
      goto LABEL_21;
    }
  }

  else
  {
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v22 = *a4;
    *a4 = 0;
    (*(*v22 + 16))(v22, &v28, &v30, 0);
    (*(*v22 + 8))(v22);
    v24 = v30;
    v30 = 0;
    if (v24 && atomic_fetch_add(v24 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v24 + 2);
      (*(*v24 + 8))(v24);
    }

    return WTF::Vector<std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v28, v23);
  }

  return result;
}

IPC::Encoder *WebKit::RemoteCDMInstanceSession::storeRecordOfKeyUsage(IPC::Encoder *this, const WTF::String *a2)
{
  v2 = *(this + 4);
  if (!v2)
  {
    return this;
  }

  v3 = *(v2 + 8);
  if (!v3)
  {
    return this;
  }

  if (!*(*(v3 + 24) + 8))
  {
    __break(0xC471u);
    goto LABEL_13;
  }

  v5 = this;
  {
    v6 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v14 = WebKit::WebProcess::operator new(0x370, a2);
    v6 = WebKit::WebProcess::WebProcess(v14);
    WebKit::WebProcess::singleton(void)::process = v6;
  }

  v7 = WebKit::WebProcess::ensureGPUProcessConnection(v6)[4];
  v8 = *(v5 + 5);
  v10 = IPC::Encoder::operator new(0x238, v9);
  *v10 = 976;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 1) = v8;
  *(v10 + 68) = 0;
  *(v10 + 70) = 0;
  *(v10 + 69) = 0;
  IPC::Encoder::encodeHeader(v10);
  v15 = v10;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v10, a2);
  IPC::Connection::sendMessageImpl(v7, &v15, 0, 0);
  this = v15;
  v15 = 0;
  if (this)
  {
    IPC::Encoder::~Encoder(this, v11);
    this = bmalloc::api::tzoneFree(v12, v13);
  }

  if (!*(*(v3 + 24) + 8))
  {
    __break(0xC471u);
LABEL_13:
    JUMPOUT(0x19E297AE8);
  }

  return this;
}

void *WebKit::RemoteCDMInstanceSession::updateKeyStatuses(void *result)
{
  v1 = result[6];
  if (v1)
  {
    result = *(v1 + 8);
    if (result)
    {
      return (*(*result + 16))();
    }
  }

  return result;
}

atomic_uint *WebKit::RemoteCDMInstanceSession::sendMessage(atomic_uint *result, uint64_t a2, atomic_uint **a3)
{
  v3 = *(result + 6);
  if (v3)
  {
    result = *(v3 + 8);
    if (result)
    {
      if (*a3)
      {
        v4 = *a3;
        *a3 = 0;
        (*(*result + 24))(result, a2, &v4);
        result = v4;
        v4 = 0;
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
  }

  return result;
}

void *WebKit::RemoteCDMInstanceSession::sessionIdChanged(void *this, const WTF::String *a2)
{
  v2 = this[6];
  if (v2)
  {
    this = *(v2 + 8);
    if (this)
    {
      return (*(*this + 32))(this, a2);
    }
  }

  return this;
}

void WebKit::RemoteLegacyCDM::~RemoteLegacyCDM(WebKit::RemoteLegacyCDM *this, void *a2)
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
    *(v4 + 8) = 0;
    v5 = *(this + 1);
    *(this + 1) = 0;
    if (v5)
    {
      if (atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v5);
        WTF::fastFree(v5, a2);
      }
    }
  }
}

{
  WebKit::RemoteLegacyCDM::~RemoteLegacyCDM(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

uint64_t WebKit::RemoteLegacyCDM::protectedFactory@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(*(this + 16) + 8);
  if (!v2 || !*(*(v2 + 16) + 8))
  {
    __break(0xC471u);
    JUMPOUT(0x19E297D30);
  }

  *a2 = v2;
  return this;
}

uint64_t WebKit::RemoteLegacyCDM::supportsMIMEType(WebKit::RemoteLegacyCDM *this, const WTF::String *a2)
{
  v3 = this;
  WebKit::RemoteLegacyCDM::protectedFactory(this, &v25);
  {
    v5 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v24 = WebKit::WebProcess::operator new(0x370, v4);
    v5 = WebKit::WebProcess::WebProcess(v24);
    WebKit::WebProcess::singleton(void)::process = v5;
  }

  v6 = WebKit::WebProcess::ensureGPUProcessConnection(v5)[4];
  IPC::Connection::createSyncMessageEncoder(0x100D, *(v3 + 3), v28);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v28[0], a2);
  v7 = IPC::Connection::sendSyncMessage(v6, v28[1], v28, 0, &v26, INFINITY);
  if (v27)
  {
    if (v27 != 1)
    {
      mpark::throw_bad_variant_access(v7);
    }

    v9 = v26;
    v10 = 1;
    goto LABEL_14;
  }

  v9 = v26;
  v26 = 0;
  if (*(v9 + 50) == 3194)
  {
    v11 = 11;
  }

  else
  {
    v14 = IPC::Decoder::decode<std::tuple<BOOL>>(v9);
    if (v14 >= 0x100u)
    {
      LOBYTE(v3) = v14;
      v10 = 0;
      goto LABEL_11;
    }

    v11 = 14;
  }

  IPC::Decoder::~Decoder(v9);
  bmalloc::api::tzoneFree(v12, v13);
  v10 = 1;
  v9 = v11;
LABEL_11:
  if (!v27)
  {
    v15 = v26;
    v26 = 0;
    if (v15)
    {
      IPC::Decoder::~Decoder(v15);
      bmalloc::api::tzoneFree(v20, v21);
    }
  }

LABEL_14:
  v16 = v28[0];
  v28[0] = 0;
  if (v16)
  {
    IPC::Encoder::~Encoder(v16, v8);
    bmalloc::api::tzoneFree(v18, v19);
  }

  if (v25 && !*(*(v25 + 16) + 8))
  {
    result = 92;
    __break(0xC471u);
  }

  else
  {
    if (!v10)
    {
      if (v9)
      {
        IPC::Decoder::~Decoder(v9);
        bmalloc::api::tzoneFree(v22, v23);
      }
    }

    return (v10 == 0) & v3;
  }

  return result;
}

IPC::Encoder *WebKit::RemoteLegacyCDM::createSession@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = (*(*a2 + 56))(a2);
  v9 = *(*(a1 + 16) + 8);
  if (!v9)
  {
    __break(0xC471u);
    goto LABEL_81;
  }

  if (!*(*(v9 + 16) + 8))
  {
    __break(0xC471u);
    JUMPOUT(0x19E29847CLL);
  }

  v10 = v7;
  v11 = &qword_1ED643000;
  {
    v12 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v64 = WebKit::WebProcess::operator new(0x370, v8);
    v12 = WebKit::WebProcess::WebProcess(v64);
    WebKit::WebProcess::singleton(void)::process = v12;
  }

  v13 = WebKit::WebProcess::ensureGPUProcessConnection(v12)[4];
  IPC::Connection::createSyncMessageEncoder(0x100C, *(a1 + 24), &v75);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v75, v10);
  v14 = IPC::Connection::sendSyncMessage(v13, v76, &v75, 0, &v67, INFINITY);
  if (v68)
  {
    if (v68 != 1)
    {
      mpark::throw_bad_variant_access(v14);
    }

    v16 = v67;
    v17 = 1;
    goto LABEL_18;
  }

  v16 = v67;
  v67 = 0;
  if (*(v16 + 50) == 3194)
  {
    v11 = 11;
LABEL_14:
    IPC::Decoder::~Decoder(v16);
    bmalloc::api::tzoneFree(v19, v20);
    v17 = 1;
    v16 = v11;
    goto LABEL_15;
  }

  IPC::ArgumentCoder<std::tuple<std::optional<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::decode<IPC::Decoder>(v16, &v69);
  v18 = v74;
  if ((v74 & 1) == 0)
  {
    v15 = *v16;
    v62 = *(v16 + 8);
    *v16 = 0;
    *(v16 + 8) = 0;
    v63 = *(v16 + 24);
    if (v63)
    {
      if (v62)
      {
        (*(*v63 + 16))(v63, v15);
        v18 = v74;
      }
    }
  }

  if (!v18)
  {
    v11 = 14;
    goto LABEL_14;
  }

  v17 = 0;
  LOBYTE(v11) = v69;
  v3 = v70 | ((v71 | (v72 << 16)) << 32);
  LOBYTE(v13) = v73;
LABEL_15:
  if (!v68)
  {
    v21 = v67;
    v67 = 0;
    if (v21)
    {
      IPC::Decoder::~Decoder(v21);
      bmalloc::api::tzoneFree(v58, v59);
    }
  }

LABEL_18:
  result = v75;
  v75 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v15);
    result = bmalloc::api::tzoneFree(v47, v48);
  }

  v23 = 0;
  v24 = v11 | (v3 << 8);
  if (v17)
  {
    v25 = 0;
  }

  else
  {
    v25 = v24;
  }

  if (!v17 && (v13 & 1) != 0)
  {
    v66 = a3;
    v23 = WTF::fastMalloc(0x48);
    v26 = v23 + 8;
    *(v23 + 16) = 0;
    v27 = (v23 + 16);
    *(v23 + 24) = 1;
    *v23 = &unk_1F1128450;
    *(v23 + 8) = &unk_1F11284C8;
    result = WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v9 + 8), v9);
    v28 = *(v9 + 8);
    atomic_fetch_add(v28, 1u);
    *(v23 + 32) = v28;
    *(v23 + 40) = v24;
    if (!a2[1])
    {
      v30 = WTF::fastCompactMalloc(0x10);
      *v30 = 1;
      *(v30 + 8) = a2;
      result = a2[1];
      a2[1] = v30;
      if (result)
      {
        if (atomic_fetch_add(result, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, result);
          result = WTF::fastFree(result, v29);
        }
      }
    }

    v31 = a2[1];
    atomic_fetch_add(v31, 1u);
    *(v23 + 56) = 0;
    *(v23 + 64) = 0;
    *(v23 + 48) = v31;
    v32 = *(v23 + 32);
    if (!v32 || (v33 = *(v32 + 8)) == 0)
    {
      a3 = v66;
      goto LABEL_61;
    }

    if (!*(*(v33 + 16) + 8))
    {
      __break(0xC471u);
      JUMPOUT(0x19E2984BCLL);
    }

    WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(v27, v26);
    v35 = *v27;
    atomic_fetch_add(v35, 1u);
    if (v24 == -1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E2984DCLL);
    }

    if (!v24)
    {
      __break(0xC471u);
      JUMPOUT(0x19E2984FCLL);
    }

    v36 = *(v33 + 24);
    if (!v36)
    {
      WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseConnection,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseConnection,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseConnection,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseConnection,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand((v33 + 24));
      v36 = *(v33 + 24);
    }

    v37 = *(v36 - 8);
    v38 = (v24 + ~(v24 << 32)) ^ ((v24 + ~(v24 << 32)) >> 22);
    v39 = 9 * ((v38 + ~(v38 << 13)) ^ ((v38 + ~(v38 << 13)) >> 8));
    v40 = (v39 ^ (v39 >> 15)) + ~((v39 ^ (v39 >> 15)) << 27);
    v41 = v37 & ((v40 >> 31) ^ v40);
    v42 = (v36 + 16 * v41);
    v43 = *v42;
    if (*v42)
    {
      v44 = 0;
      v45 = 1;
      v46 = &qword_1ED643000;
      while (v43 != v25)
      {
        if (v43 == -1)
        {
          v44 = v42;
        }

        v41 = (v41 + v45) & v37;
        v42 = (v36 + 16 * v41);
        v43 = *v42;
        ++v45;
        if (!*v42)
        {
          if (v44)
          {
            *v44 = 0;
            v44[1] = 0;
            --*(*(v33 + 24) - 16);
            v42 = v44;
          }

          goto LABEL_46;
        }
      }

      v52 = v42[1];
      v42[1] = v35;
      if (v52 && atomic_fetch_add(v52, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v52);
        WTF::fastFree(v52, v34);
      }

      goto LABEL_58;
    }

    v46 = &qword_1ED643000;
LABEL_46:
    v49 = v42[1];
    *v42 = v25;
    v42[1] = v35;
    if (v49 && atomic_fetch_add(v49, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v49);
      WTF::fastFree(v49, v34);
    }

    v50 = *(v33 + 24);
    if (v50)
    {
      v51 = *(v50 - 12) + 1;
    }

    else
    {
      v51 = 1;
    }

    *(v50 - 12) = v51;
    v53 = (*(v50 - 16) + v51);
    v54 = *(v50 - 4);
    if (v54 > 0x400)
    {
      if (v54 > 2 * v53)
      {
        goto LABEL_58;
      }
    }

    else if (3 * v54 > 4 * v53)
    {
LABEL_58:
      if (*(v46 + 2024) == 1)
      {
        v55 = WebKit::WebProcess::singleton(void)::process;
      }

      else
      {
        v65 = WebKit::WebProcess::operator new(0x370, v34);
        v55 = WebKit::WebProcess::WebProcess(v65);
        WebKit::WebProcess::singleton(void)::process = v55;
        *(v46 + 2024) = 1;
      }

      v56 = WebKit::WebProcess::ensureGPUProcessConnection(v55);
      v75 = 94;
      v76 = v25;
      result = WTF::HashMap<std::pair<IPC::ReceiverName,unsigned long long>,WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<std::pair<IPC::ReceiverName,unsigned long long>>,WTF::PairHashTraits<WTF::StrongEnumHashTraits<IPC::ReceiverName>,WTF::HashTraits<unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<std::pair<IPC::ReceiverName,unsigned long long>,IPC::MessageReceiver&>(v56 + 6, &v75, v26, &v69);
      v57 = *(*(v33 + 16) + 8);
      a3 = v66;
      if (v57)
      {
        goto LABEL_61;
      }

      __break(0xC471u);
LABEL_81:
      JUMPOUT(0x19E29845CLL);
    }

    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseConnection,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseConnection,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseConnection,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseConnection,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand((v33 + 24));
    goto LABEL_58;
  }

LABEL_61:
  *a3 = v23;
  if (!v17 && v16)
  {
    IPC::Decoder::~Decoder(v16);
    result = bmalloc::api::tzoneFree(v60, v61);
  }

  if (!*(*(v9 + 16) + 8))
  {
    __break(0xC471u);
    JUMPOUT(0x19E29849CLL);
  }

  return result;
}

uint64_t WebKit::RemoteLegacyCDM::setPlayerId(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[0] = a2;
  v11[1] = a3;
  WebKit::RemoteLegacyCDM::protectedFactory(a1, &v10);
  {
    v5 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v8 = WebKit::WebProcess::operator new(0x370, v4);
    v5 = WebKit::WebProcess::WebProcess(v8);
    WebKit::WebProcess::singleton(void)::process = v5;
  }

  v6 = WebKit::WebProcess::ensureGPUProcessConnection(v5)[4];
  v9 = v11;
  result = IPC::Connection::send<Messages::RemoteLegacyCDMProxy::SetPlayerId>(v6, &v9, *(a1 + 24), 0, 0);
  if (v10)
  {
    if (!*(*(v10 + 16) + 8))
    {
      result = 92;
      __break(0xC471u);
    }
  }

  return result;
}

uint64_t WebKit::RemoteLegacyCDM::ref(uint64_t this)
{
  v1 = *(*(this + 16) + 8);
  if (!v1 || !*(*(v1 + 16) + 8))
  {
    __break(0xC471u);
    JUMPOUT(0x19E298620);
  }

  return this;
}

uint64_t WebKit::RemoteLegacyCDMFactory::ref(uint64_t this)
{
  if (!*(*(this + 16) + 8))
  {
    this = 92;
    __break(0xC471u);
  }

  return this;
}

uint64_t WebKit::RemoteLegacyCDM::deref(uint64_t this)
{
  v1 = *(*(this + 16) + 8);
  if (!v1 || !*(*(v1 + 16) + 8))
  {
    __break(0xC471u);
    JUMPOUT(0x19E2986ACLL);
  }

  return this;
}

void WebKit::RemoteLegacyCDMFactory::~RemoteLegacyCDMFactory(WebKit::RemoteLegacyCDMFactory *this, WTF::StringImpl *a2)
{
  v3 = *(this + 6);
  if (v3)
  {
    v4 = *(v3 - 4);
    if (v4)
    {
      v5 = *(this + 6);
      do
      {
        if (*v5 != -1)
        {
          v6 = v5[1];
          v5[1] = 0;
          if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v6, a2);
          }

          v7 = *v5;
          *v5 = 0;
          if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v7, a2);
          }
        }

        v5 += 3;
        --v4;
      }

      while (v4);
    }

    WTF::fastFree((v3 - 16), a2);
  }

  v8 = *(this + 5);
  if (v8)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,Inspector::SupplementalBackendDispatcher *,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<Inspector::SupplementalBackendDispatcher *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v8, a2);
  }

  v9 = *(this + 4);
  if (v9)
  {
    v10 = *(v9 - 4);
    if (v10)
    {
      v11 = (v9 + 8);
      do
      {
        if (*(v11 - 1) != -1)
        {
          v12 = *v11;
          *v11 = 0;
          if (v12)
          {
            if (atomic_fetch_add(v12, 0xFFFFFFFF) == 1)
            {
              atomic_store(1u, v12);
              WTF::fastFree(v12, a2);
            }
          }
        }

        v11 += 2;
        --v10;
      }

      while (v10);
    }

    WTF::fastFree((v9 - 16), a2);
  }

  v13 = *(this + 3);
  if (v13)
  {
    v14 = *(v13 - 4);
    if (v14)
    {
      v15 = (v13 + 8);
      do
      {
        if (*(v15 - 1) != -1)
        {
          v16 = *v15;
          *v15 = 0;
          if (v16)
          {
            if (atomic_fetch_add(v16, 0xFFFFFFFF) == 1)
            {
              atomic_store(1u, v16);
              WTF::fastFree(v16, a2);
            }
          }
        }

        v15 += 2;
        --v14;
      }

      while (v14);
    }

    WTF::fastFree((v13 - 16), a2);
  }

  v17 = *(this + 2);
  *(this + 2) = 0;
  if (v17 && atomic_fetch_add(v17, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v17);
    WTF::fastFree(v17, a2);
  }

  v18 = *(this + 1);
  if (v18)
  {
    *(v18 + 8) = 0;
    v19 = *(this + 1);
    *(this + 1) = 0;
    if (v19)
    {
      if (atomic_fetch_add(v19, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v19);
        WTF::fastFree(v19, a2);
      }
    }
  }
}

{
  WebKit::RemoteLegacyCDMFactory::~RemoteLegacyCDMFactory(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

uint64_t WebKit::RemoteLegacyCDMFactory::registerFactory(WebKit::RemoteLegacyCDMFactory *this)
{
  WebCore::LegacyCDM::clearFactories(this);
  if (!*(*(this + 2) + 8))
  {
    goto LABEL_13;
  }

  v2 = WTF::fastMalloc(0x10);
  *v2 = &unk_1F1128688;
  v2[1] = this;
  v8 = v2;
  if (!*(*(this + 2) + 8))
  {
    __break(0xC471u);
    JUMPOUT(0x19E298A80);
  }

  v3 = WTF::fastMalloc(0x10);
  *v3 = &unk_1F11286B0;
  v3[1] = this;
  v7 = v3;
  if (!*(*(this + 2) + 8))
  {
LABEL_13:
    __break(0xC471u);
    JUMPOUT(0x19E298A60);
  }

  v4 = WTF::fastMalloc(0x10);
  *v4 = &unk_1F11286D8;
  v4[1] = this;
  v6 = v4;
  WebCore::LegacyCDM::registerCDMFactory();
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  result = v8;
  if (v8)
  {
    return (*(*v8 + 8))(v8);
  }

  return result;
}

IPC::Encoder *IPC::Connection::sendSync<Messages::RemoteLegacyCDMFactoryProxy::SupportsKeySystem>(char *a1, unsigned __int8 *a2, uint64_t a3)
{
  IPC::Connection::createSyncMessageEncoder(0x100B, 0, v22);
  v6 = v22[0];
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v22[0], *a3);
  IPC::ArgumentCoder<std::optional<WTF::String>,void>::encode<IPC::Encoder,std::optional<WTF::String> const&>(v6, *(a3 + 8));
  v7 = IPC::Connection::sendSyncMessage(a2, v22[1], v22, 0, &v20, INFINITY);
  if (v21)
  {
    if (v21 != 1)
    {
      mpark::throw_bad_variant_access(v7);
    }

    *a1 = v20;
    a1[16] = 1;
  }

  else
  {
    v9 = v20;
    v20 = 0;
    if (*(v9 + 25) == 3194)
    {
      v10 = 11;
    }

    else
    {
      v13 = IPC::Decoder::decode<std::tuple<BOOL>>(v9);
      if (v13 >= 0x100u)
      {
        *a1 = v9;
        a1[8] = v13;
        a1[16] = 0;
        goto LABEL_9;
      }

      v10 = 14;
    }

    *a1 = v10;
    a1[16] = 1;
    IPC::Decoder::~Decoder(v9);
    bmalloc::api::tzoneFree(v11, v12);
  }

LABEL_9:
  if (!v21)
  {
    v14 = v20;
    v20 = 0;
    if (v14)
    {
      IPC::Decoder::~Decoder(v14);
      bmalloc::api::tzoneFree(v18, v19);
    }
  }

  result = v22[0];
  v22[0] = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v8);
    return bmalloc::api::tzoneFree(v16, v17);
  }

  return result;
}

uint64_t WebKit::RemoteLegacyCDMFactory::findCDM(uint64_t a1, uint64_t a2)
{
  v4 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::WallTime>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::WallTime>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::WallTime,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::WallTime>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin((a1 + 32));
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = (v6 + 16 * *(v6 - 4));
  }

  else
  {
    v7 = 0;
  }

  while (v4 != v7)
  {
    v8 = v4[1];
    if (v8)
    {
      v9 = *(v8 + 8);
      if (v9 == a2)
      {
        return v9;
      }
    }

    else if (!a2)
    {
      return 0;
    }

    do
    {
      v4 += 2;
    }

    while (v4 != v5 && (*v4 + 1) <= 1);
  }

  return 0;
}

void WebKit::RemoteLegacyCDMSession::~RemoteLegacyCDMSession(WebKit::RemoteLegacyCDMSession *this, WTF::StringImpl *a2)
{
  v3 = *(this + 8);
  if (v3)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  v4 = *(this + 7);
  *(this + 7) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *(this + 6);
  *(this + 6) = 0;
  if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5);
    WTF::fastFree(v5, a2);
  }

  v6 = *(this + 4);
  *(this + 4) = 0;
  if (v6 && atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v6);
    WTF::fastFree(v6, a2);
  }

  if (*(this + 6) == 1)
  {
    *(this + 1) = &unk_1F10EA5E0;
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 2, a2);
  }

  else
  {
    __break(0xC471u);
  }
}

{
  WebKit::RemoteLegacyCDMSession::~RemoteLegacyCDMSession(this, a2);

  WTF::fastFree(v2, v3);
}

void non-virtual thunk toWebKit::RemoteLegacyCDMSession::~RemoteLegacyCDMSession(WebKit::RemoteLegacyCDMSession *this, WTF::StringImpl *a2)
{
  WebKit::RemoteLegacyCDMSession::~RemoteLegacyCDMSession((this - 8), a2);
}

{
  WebKit::RemoteLegacyCDMSession::~RemoteLegacyCDMSession((this - 8), a2);

  WTF::fastFree(v2, v3);
}

uint64_t WebKit::RemoteLegacyCDMSession::invalidate(uint64_t this, void *a2)
{
  v2 = *(this + 32);
  if (!v2)
  {
    return this;
  }

  v3 = *(v2 + 8);
  if (!v3)
  {
    return this;
  }

  if (!*(*(v3 + 16) + 8))
  {
    __break(0xC471u);
    goto LABEL_38;
  }

  v4 = this;
  v5 = *(this + 40);
  if (v5 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E2990B0);
  }

  if (!v5)
  {
    __break(0xC471u);
    JUMPOUT(0x19E2990D0);
  }

  v6 = *(v3 + 24);
  if (!v6)
  {
    goto LABEL_14;
  }

  v7 = *(v6 - 8);
  v8 = (v5 + ~(v5 << 32)) ^ ((v5 + ~(v5 << 32)) >> 22);
  v9 = 9 * ((v8 + ~(v8 << 13)) ^ ((v8 + ~(v8 << 13)) >> 8));
  v10 = (v9 ^ (v9 >> 15)) + ~((v9 ^ (v9 >> 15)) << 27);
  v11 = v7 & ((v10 >> 31) ^ v10);
  v12 = *(v6 + 16 * v11);
  if (v12 != v5)
  {
    v13 = 1;
    while (v12)
    {
      v11 = (v11 + v13) & v7;
      v12 = *(v6 + 16 * v11);
      ++v13;
      if (v12 == v5)
      {
        goto LABEL_11;
      }
    }

    goto LABEL_14;
  }

LABEL_11:
  v14 = *(v6 + 16 * v11 + 8);
  if (!v14)
  {
LABEL_14:
    v16 = 0;
    goto LABEL_18;
  }

  atomic_fetch_add(v14, 1u);
  v15 = *(v14 + 8);
  if (v15)
  {
    v16 = v15 - 8;
    ++*(v15 + 16);
  }

  else
  {
    v16 = 0;
  }

  if (atomic_fetch_add(v14, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v14);
    WTF::fastFree(v14, a2);
  }

LABEL_18:
  {
    v17 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v30 = WebKit::WebProcess::operator new(0x370, a2);
    v17 = WebKit::WebProcess::WebProcess(v30);
    WebKit::WebProcess::singleton(void)::process = v17;
  }

  v18 = WebKit::WebProcess::ensureGPUProcessConnection(v17);
  if (!*(*(v3 + 16) + 8))
  {
    __break(0xC471u);
    JUMPOUT(0x19E2990F0);
  }

  v19 = v18[4];
  v20 = WTF::fastMalloc(0x20);
  *v20 = &unk_1F1128700;
  v20[1] = v3;
  v20[2] = v5;
  v20[3] = v16;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E299110);
  }

  v21 = v20;
  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  v24 = IPC::Encoder::operator new(0x238, v23);
  *v24 = 1387;
  *(v24 + 68) = 0;
  *(v24 + 70) = 0;
  *(v24 + 69) = 0;
  *(v24 + 2) = 0;
  *(v24 + 3) = 0;
  *(v24 + 1) = 0;
  IPC::Encoder::encodeHeader(v24);
  v32 = v24;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v24, v5);
  v31[0] = v21;
  v31[1] = IdentifierInternal;
  IPC::Connection::sendMessageWithAsyncReply(v19, &v32, v31, 0, 0);
  v26 = v31[0];
  v31[0] = 0;
  if (v26)
  {
    (*(*v26 + 8))(v26);
  }

  v27 = v32;
  v32 = 0;
  if (v27)
  {
    IPC::Encoder::~Encoder(v27, v25);
    bmalloc::api::tzoneFree(v28, v29);
  }

  this = *(v4 + 32);
  *(v4 + 32) = 0;
  if (this)
  {
    if (atomic_fetch_add(this, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, this);
      this = WTF::fastFree(this, v25);
    }
  }

  if (!*(*(v3 + 16) + 8))
  {
    __break(0xC471u);
LABEL_38:
    JUMPOUT(0x19E299090);
  }

  return this;
}

atomic_uint *WebKit::RemoteLegacyCDMSession::generateKeyRequest@<X0>(JSC::ArrayBufferView *this@<X2>, atomic_uint *result@<X0>, unint64_t a3@<X1>, WTF::StringImpl **a4@<X3>, _WORD *a5@<X4>, _DWORD *a6@<X5>, WTF::DeferrableRefCountedBase *a7@<X8>)
{
  v10 = *(result + 4);
  if (v10 && this && *(v10 + 8) && (v11 = result, (v12 = *(result + 6)) != 0) && *(v12 + 8))
  {
    WebKit::convertToSharedBuffer<JSC::GenericTypedArrayView<JSC::Uint8Adaptor> *>(&v56, this);
    v18 = *(v11 + 32);
    if (!v18 || !*(v18 + 8))
    {
      __break(0xC471u);
      JUMPOUT(0x19E299688);
    }

    v19 = &qword_1ED643000;
    {
      goto LABEL_78;
    }

    v20 = WebKit::WebProcess::singleton(void)::process;
    while (1)
    {
      v21 = WebKit::WebProcess::ensureGPUProcessConnection(v20);
      v22 = *(v11 + 48);
      if (!v22 || (v23 = v21, (v24 = *(v22 + 8)) == 0))
      {
        __break(0xC471u);
        JUMPOUT(0x19E2996A8);
      }

      v19 = v23[4];
      (*(*v24 + 40))(&v55);
      IPC::Connection::createSyncMessageEncoder(0x100F, *(v11 + 40), v59);
      v11 = v59[0];
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v59[0], a3);
      IPC::ArgumentCoder<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,void>::encode<IPC::Encoder,WebCore::SharedBuffer>(v11, &v56);
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v11, &v55);
      v25 = IPC::Connection::sendSyncMessage(v19, v59[1], v59, 0, &v57, INFINITY);
      if (v58)
      {
        if (v58 != 1)
        {
          mpark::throw_bad_variant_access(v25);
        }

        a3 = v57;
        v26 = 1;
        goto LABEL_54;
      }

      a3 = v57;
      v57 = 0;
      if (*(a3 + 50) == 3194)
      {
        v11 = 11;
        goto LABEL_50;
      }

      IPC::Decoder::decode<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>(a3, &v60);
      if ((v61 & 1) == 0)
      {
        v11 = 0;
        v33 = 0;
        goto LABEL_46;
      }

      IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, &v62);
      if ((v63 & 1) == 0)
      {
        v17 = *a3;
        v51 = *(a3 + 8);
        *a3 = 0;
        *(a3 + 8) = 0;
        v52 = *(a3 + 24);
        if (!v52 || !v51 || ((*(*v52 + 16))(v52, v17), (v63 & 1) == 0))
        {
          v33 = 0;
          v11 = 0;
          goto LABEL_34;
        }
      }

      v27 = *(a3 + 8);
      v28 = ((*(a3 + 16) + 1) & 0xFFFFFFFFFFFFFFFELL);
      v17 = *a3;
      v29 = v28 - *a3;
      v30 = v27 >= v29;
      v31 = v27 - v29;
      if (!v30 || v31 <= 1)
      {
        break;
      }

      *(a3 + 16) = v28 + 1;
      if (!v28)
      {
        goto LABEL_85;
      }

      v7 = *v28;
      v32 = ((v28 + 5) & 0xFFFFFFFFFFFFFFFCLL);
      if (v27 < v32 - v17 || v27 - (v32 - v17) <= 3)
      {
        break;
      }

      *(a3 + 16) = v32 + 4;
      if (!v32)
      {
        goto LABEL_85;
      }

      if (v61)
      {
        v8 = *v32;
        v11 = v60;
        v60 = 0;
        v19 = v62;
        v33 = 1;
        v62 = 0;
        goto LABEL_30;
      }

      __break(1u);
LABEL_78:
      v50 = WebKit::WebProcess::operator new(0x370, v17);
      v20 = WebKit::WebProcess::WebProcess(v50);
      WebKit::WebProcess::singleton(void)::process = v20;
      v19[2024] = 1;
    }

    *a3 = 0;
    *(a3 + 8) = 0;
    v53 = *(a3 + 24);
    if (!v53)
    {
      v27 = 0;
      goto LABEL_84;
    }

    if (v27)
    {
      (*(*v53 + 16))(v53);
      v17 = *a3;
      v27 = *(a3 + 8);
    }

    else
    {
LABEL_84:
      v17 = 0;
    }

LABEL_85:
    *a3 = 0;
    *(a3 + 8) = 0;
    v54 = *(a3 + 24);
    if (v54 && v27)
    {
      (*(*v54 + 16))(v54);
    }

    v11 = 0;
    v33 = 0;
LABEL_30:
    if (v63)
    {
      v34 = v62;
      v62 = 0;
      if (v34)
      {
        if (atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v34, v17);
        }
      }
    }

LABEL_34:
    if ((v61 & 1) != 0 && (v35 = v60, v60 = 0, v35) && atomic_fetch_add(v35 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v35 + 2);
      (*(*v35 + 8))(v35);
      if ((v33 & 1) == 0)
      {
        goto LABEL_46;
      }

LABEL_38:
      if (v33)
      {
        goto LABEL_48;
      }

      if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v19, v17);
      }

      if (v11 && atomic_fetch_add((v11 + 8), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, (v11 + 8));
        (*(*v11 + 8))(v11);
      }
    }

    else
    {
      if (v33)
      {
        goto LABEL_38;
      }

LABEL_46:
      v17 = *a3;
      v36 = *(a3 + 8);
      *a3 = 0;
      *(a3 + 8) = 0;
      v37 = *(a3 + 24);
      if (v37 && v36)
      {
        (*(*v37 + 16))(v37, v17);
      }

      if (v33)
      {
LABEL_48:
        v26 = 0;
        goto LABEL_51;
      }
    }

    v11 = 14;
LABEL_50:
    IPC::Decoder::~Decoder(a3);
    bmalloc::api::tzoneFree(v38, v39);
    v26 = 1;
    a3 = v11;
LABEL_51:
    if (!v58)
    {
      v40 = v57;
      v57 = 0;
      if (v40)
      {
        IPC::Decoder::~Decoder(v40);
        bmalloc::api::tzoneFree(v46, v47);
      }
    }

LABEL_54:
    v41 = v59[0];
    v59[0] = 0;
    if (v41)
    {
      IPC::Encoder::~Encoder(v41, v17);
      bmalloc::api::tzoneFree(v44, v45);
    }

    v42 = v55;
    v55 = 0;
    if (v42 && atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v42, v17);
    }

    if (v26)
    {
      *a7 = 0;
    }

    else
    {
      v43 = *a4;
      *a4 = v19;
      if (v43 && atomic_fetch_add_explicit(v43, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v43, v17);
      }

      *a5 = v7;
      *a6 = v8;
      if (v11)
      {
        WebKit::convertToUint8Array(a7, v11);
        if (atomic_fetch_add((v11 + 8), 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, (v11 + 8));
          (*(*v11 + 8))(v11);
        }
      }

      else
      {
        *a7 = 0;
      }

      if (a3)
      {
        IPC::Decoder::~Decoder(a3);
        bmalloc::api::tzoneFree(v48, v49);
      }
    }

    result = v56;
    v56 = 0;
    if (result)
    {
      if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, result + 2);
        return (*(*result + 8))(result);
      }
    }
  }

  else
  {
    *a7 = 0;
  }

  return result;
}

unsigned int *WebKit::convertToSharedBuffer<JSC::GenericTypedArrayView<JSC::Uint8Adaptor> *>(void *a1, JSC::ArrayBufferView *this)
{
  JSC::ArrayBufferView::baseAddress(this);
  JSC::ArrayBufferView::byteLength(this);
  result = WebCore::SharedBuffer::create<std::span<unsigned char const,18446744073709551615ul>>(&v5);
  *a1 = v5;
  return result;
}

WTF::DeferrableRefCountedBase *WebKit::convertToUint8Array(WTF::DeferrableRefCountedBase *result, WebCore::FragmentedSharedBuffer *this)
{
  v2 = result;
  if (this && (result = WebCore::FragmentedSharedBuffer::tryCreateArrayBuffer(&v6, this), v6))
  {
    if (*(v6 + 64) == 1 && (v3 = *(v6 + 4)) != 0)
    {
      v4 = *(v3 + 32);
    }

    else
    {
      v4 = *(v6 + 6);
    }

    JSC::GenericTypedArrayView<JSC::Uint8Adaptor>::create(&v6, 0, v4, 1, &v5);
    result = v6;
    *v2 = v5;
    v6 = 0;
    if (result)
    {
      return WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(result);
    }
  }

  else
  {
    *v2 = 0;
  }

  return result;
}

uint64_t WebKit::RemoteLegacyCDMSession::releaseKeys(uint64_t this, void *a2)
{
  v2 = *(this + 32);
  if (v2 && *(v2 + 8))
  {
    v3 = this;
    {
      v4 = WebKit::WebProcess::singleton(void)::process;
    }

    else
    {
      v13 = WebKit::WebProcess::operator new(0x370, a2);
      v4 = WebKit::WebProcess::WebProcess(v13);
      WebKit::WebProcess::singleton(void)::process = v4;
    }

    v5 = WebKit::WebProcess::ensureGPUProcessConnection(v4)[4];
    v6 = *(v3 + 40);
    v8 = IPC::Encoder::operator new(0x238, v7);
    *v8 = 1389;
    *(v8 + 2) = 0;
    *(v8 + 3) = 0;
    *(v8 + 1) = v6;
    *(v8 + 68) = 0;
    *(v8 + 70) = 0;
    *(v8 + 69) = 0;
    IPC::Encoder::encodeHeader(v8);
    v14 = v8;
    IPC::Connection::sendMessageImpl(v5, &v14, 0, 0);
    v10 = v14;
    v14 = 0;
    if (v10)
    {
      IPC::Encoder::~Encoder(v10, v9);
      bmalloc::api::tzoneFree(v11, v12);
    }

    this = *(v3 + 64);
    if (this)
    {
      *(v3 + 64) = 0;
      return WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(this, v9);
    }
  }

  return this;
}

uint64_t WebKit::RemoteLegacyCDMSession::update(uint64_t a1, JSC::ArrayBufferView *a2, _DWORD **a3, _WORD *a4, _DWORD *a5)
{
  v7 = *(a1 + 32);
  if (!v7)
  {
    LOBYTE(v8) = 0;
    return v8 & 1;
  }

  LOBYTE(v8) = 0;
  if (a2 && *(v7 + 8))
  {
    WebKit::convertToSharedBuffer<JSC::GenericTypedArrayView<JSC::Uint8Adaptor> *>(&v54, a2);
    v14 = *(a1 + 32);
    if (!v14 || !*(v14 + 8))
    {
      __break(0xC471u);
      JUMPOUT(0x19E299DDCLL);
    }

    {
      v15 = WebKit::WebProcess::singleton(void)::process;
    }

    else
    {
      v35 = WebKit::WebProcess::operator new(0x370, v13);
      v15 = WebKit::WebProcess::WebProcess(v35);
      WebKit::WebProcess::singleton(void)::process = v15;
    }

    v16 = WebKit::WebProcess::ensureGPUProcessConnection(v15)[4];
    IPC::Connection::createSyncMessageEncoder(0x1010, *(a1 + 40), v57);
    IPC::ArgumentCoder<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,void>::encode<IPC::Encoder,WebCore::SharedBuffer>(v57[0], &v54);
    v17 = IPC::Connection::sendSyncMessage(v16, v57[1], v57, 0, &v55, INFINITY);
    if (v56)
    {
      if (v56 != 1)
      {
        mpark::throw_bad_variant_access(v17);
      }

      v19 = v55;
      v20 = 1;
      goto LABEL_60;
    }

    v19 = v55;
    v55 = 0;
    if (*(v19 + 50) == 3194)
    {
      v16 = 11;
LABEL_37:
      IPC::Decoder::~Decoder(v19);
      bmalloc::api::tzoneFree(v33, v34);
      v20 = 1;
      v19 = v16;
LABEL_57:
      if (!v56)
      {
        v43 = v55;
        v55 = 0;
        if (v43)
        {
          IPC::Decoder::~Decoder(v43);
          bmalloc::api::tzoneFree(v50, v51);
        }
      }

LABEL_60:
      v44 = v57[0];
      v57[0] = 0;
      if (v44)
      {
        IPC::Encoder::~Encoder(v44, v18);
        bmalloc::api::tzoneFree(v45, v46);
        if (v20)
        {
          goto LABEL_62;
        }
      }

      else if (v20)
      {
LABEL_62:
        LOBYTE(v8) = 0;
LABEL_70:
        v48 = v54;
        v54 = 0;
        if (v48 && atomic_fetch_add(v48 + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v48 + 2);
          (*(*v48 + 8))(v48);
        }

        return v8 & 1;
      }

      *a4 = v5;
      *a5 = v6;
      if (!v16)
      {
        goto LABEL_69;
      }

      WebKit::convertToUint8Array(&v58, v16);
      v47 = *a3;
      *a3 = v58;
      if (v47)
      {
        if (*v47 == 1)
        {
          JSC::ArrayBufferView::operator delete();
        }

        else
        {
          --*v47;
        }
      }

      v58 = 0;
      if (atomic_fetch_add((v16 + 8), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, (v16 + 8));
        (*(*v16 + 8))(v16);
        if (!v19)
        {
          goto LABEL_70;
        }
      }

      else
      {
LABEL_69:
        if (!v19)
        {
          goto LABEL_70;
        }
      }

      IPC::Decoder::~Decoder(v19);
      bmalloc::api::tzoneFree(v52, v53);
      goto LABEL_70;
    }

    v21 = *(v19 + 8);
    v22 = *(v19 + 16);
    v23 = *v19;
    if (v21 <= &v22[-*v19])
    {
      *v19 = 0;
      *(v19 + 8) = 0;
      v38 = *(v19 + 24);
      if (v38)
      {
        if (v21)
        {
          (*(*v38 + 16))(v38);
          v21 = *(v19 + 8);
        }
      }

      else
      {
        v21 = 0;
      }
    }

    else
    {
      *(v19 + 16) = v22 + 1;
      if (v22)
      {
        v8 = *v22;
        if (v8 < 2)
        {
          IPC::Decoder::decode<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>(v19, &v58);
          if (v59)
          {
            v24 = *(v19 + 8);
            v25 = ((*(v19 + 16) + 1) & 0xFFFFFFFFFFFFFFFELL);
            v18 = *v19;
            v26 = v25 - *v19;
            v27 = v24 >= v26;
            v28 = v24 - v26;
            if (v27 && v28 > 1)
            {
              *(v19 + 16) = v25 + 1;
              if (!v25)
              {
                goto LABEL_45;
              }

              v5 = *v25;
              v29 = ((v25 + 5) & 0xFFFFFFFFFFFFFFFCLL);
              if (v24 >= v29 - v18 && v24 - (v29 - v18) > 3)
              {
                *(v19 + 16) = v29 + 4;
                if (v29)
                {
                  v6 = *v29;
                  v16 = v58;
                  v30 = 1;
                  v58 = 0;
                  goto LABEL_26;
                }

LABEL_45:
                *v19 = 0;
                *(v19 + 8) = 0;
                v37 = *(v19 + 24);
                if (v37 && v24)
                {
                  (*(*v37 + 16))(v37);
                }

                LOBYTE(v8) = 0;
                v30 = 0;
LABEL_26:
                if ((v59 & 1) != 0 && (v31 = v58, v58 = 0, v31) && atomic_fetch_add(v31 + 2, 0xFFFFFFFF) == 1)
                {
                  atomic_store(1u, v31 + 2);
                  (*(*v31 + 8))(v31);
                  if (v30)
                  {
LABEL_30:
                    v32 = 0;
                    if ((v30 & 1) == 0)
                    {
LABEL_31:
                      if (!v16)
                      {
                        v32 = 1;
                      }

                      if ((v32 & 1) == 0 && atomic_fetch_add((v16 + 8), 0xFFFFFFFF) == 1)
                      {
                        atomic_store(1u, (v16 + 8));
                        (*(*v16 + 8))(v16);
                      }

                      v16 = 14;
                      goto LABEL_37;
                    }

LABEL_56:
                    v20 = 0;
                    goto LABEL_57;
                  }
                }

                else if (v30)
                {
                  goto LABEL_30;
                }

LABEL_54:
                v18 = *v19;
                v41 = *(v19 + 8);
                *v19 = 0;
                *(v19 + 8) = 0;
                v42 = *(v19 + 24);
                if (v42 && v41)
                {
                  (*(*v42 + 16))(v42, v18);
                }

                v32 = 1;
                if ((v30 & 1) == 0)
                {
                  goto LABEL_31;
                }

                goto LABEL_56;
              }
            }

            *v19 = 0;
            *(v19 + 8) = 0;
            v36 = *(v19 + 24);
            if (v36)
            {
              if (v24)
              {
                (*(*v36 + 16))(v36);
                v18 = *v19;
                v24 = *(v19 + 8);
                goto LABEL_45;
              }
            }

            else
            {
              v24 = 0;
            }

            v18 = 0;
            goto LABEL_45;
          }

LABEL_53:
          LOBYTE(v8) = 0;
          v30 = 0;
          goto LABEL_54;
        }

        goto LABEL_52;
      }
    }

    *v19 = 0;
    *(v19 + 8) = 0;
    v39 = *(v19 + 24);
    if (v39)
    {
      if (v21)
      {
        (*(*v39 + 16))(v39);
        v23 = *v19;
        v21 = *(v19 + 8);
        goto LABEL_52;
      }
    }

    else
    {
      v21 = 0;
    }

    v23 = 0;
LABEL_52:
    *v19 = 0;
    *(v19 + 8) = 0;
    v40 = *(v19 + 24);
    if (v40 && v21)
    {
      (*(*v40 + 16))(v40, v23);
    }

    goto LABEL_53;
  }

  return v8 & 1;
}

uint64_t WebKit::RemoteLegacyCDMSession::cachedKeyForKeyID@<X0>(uint64_t this@<X0>, const WTF::StringImpl **a2@<X1>, const WTF::StringImpl *a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = *(this + 32);
  if (!v5 || !*(v5 + 8))
  {
    *a4 = 0;
    return this;
  }

  v7 = this;
  v8 = (this + 64);
  v9 = *(this + 64);
  if (v9)
  {
    v10 = *a2;
    if (*a2 == -1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E29A398);
    }

    if (!v10)
    {
      __break(0xC471u);
      JUMPOUT(0x19E29A3B8);
    }

    v11 = *(v9 - 8);
    v12 = *(v10 + 4);
    v13 = v12 < 0x100 ? WTF::StringImpl::hashSlowCase(v10) : v12 >> 8;
    for (i = 0; ; v13 = ++i + v15)
    {
      v15 = v13 & v11;
      this = *(v9 + 16 * v15);
      if (this != -1)
      {
        if (!this)
        {
          v16 = *v8;
          if (!*v8)
          {
            goto LABEL_22;
          }

          v17 = v16 + 16 * *(v16 - 4);
          goto LABEL_17;
        }

        this = WTF::equal(this, *a2, a3);
        if (this)
        {
          break;
        }
      }
    }

    v17 = v9 + 16 * v15;
    v16 = *v8;
    if (!*v8)
    {
      goto LABEL_18;
    }

LABEL_17:
    v16 += 16 * *(v16 - 4);
LABEL_18:
    if (v16 != v17)
    {
      v18 = *(v17 + 8);
      if (v18)
      {
        *v18 += 2;
      }

      *a4 = v18;
      return this;
    }

LABEL_22:
    v5 = *(v7 + 32);
    if (!v5)
    {
      goto LABEL_90;
    }
  }

  if (!*(v5 + 8))
  {
LABEL_90:
    __break(0xC471u);
    goto LABEL_95;
  }

  {
    v19 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v51 = WebKit::WebProcess::operator new(0x370, a2);
    v19 = WebKit::WebProcess::WebProcess(v51);
    WebKit::WebProcess::singleton(void)::process = v19;
  }

  v20 = WebKit::WebProcess::ensureGPUProcessConnection(v19)[4];
  IPC::Connection::createSyncMessageEncoder(0x100E, *(v7 + 40), v57);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v57[0], a2);
  v21 = IPC::Connection::sendSyncMessage(v20, v57[1], v57, 0, &v55, INFINITY);
  if (v56)
  {
    if (v56 != 1)
    {
      mpark::throw_bad_variant_access(v21);
    }

    v23 = v55;
    v24 = 1;
    goto LABEL_38;
  }

  v23 = v55;
  v55 = 0;
  if (*(v23 + 50) == 3194)
  {
    v25 = 11;
LABEL_34:
    IPC::Decoder::~Decoder(v23);
    bmalloc::api::tzoneFree(v26, v27);
    v24 = 1;
    v23 = v25;
    goto LABEL_35;
  }

  LOBYTE(v53) = 0;
  v54 = 0;
  IPC::Decoder::operator>><std::tuple<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>>(v23, &v53);
  if (v54 != 1)
  {
    v25 = 14;
    goto LABEL_34;
  }

  v24 = 0;
  v20 = v53;
LABEL_35:
  if (!v56)
  {
    v28 = v55;
    v55 = 0;
    if (v28)
    {
      IPC::Decoder::~Decoder(v28);
      bmalloc::api::tzoneFree(v45, v46);
    }
  }

LABEL_38:
  this = v57[0];
  v57[0] = 0;
  if (this)
  {
    IPC::Encoder::~Encoder(this, v22);
    this = bmalloc::api::tzoneFree(v29, v30);
    if (v24)
    {
      goto LABEL_40;
    }
  }

  else if (v24)
  {
    goto LABEL_40;
  }

  if (!v20)
  {
LABEL_40:
    *a4 = 0;
    if (!v24)
    {
      goto LABEL_78;
    }

    return this;
  }

  WebCore::FragmentedSharedBuffer::tryCreateArrayBuffer(a4, v20);
  if (atomic_fetch_add(v20 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v20 + 2);
    (*(*v20 + 8))(v20);
  }

  if (*a2 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E29A3D8);
  }

  if (!*a2)
  {
    __break(0xC471u);
LABEL_95:
    JUMPOUT(0x19E29A378);
  }

  v52 = v23;
  v32 = *v8;
  if (*v8 || (WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(v8), (v32 = *v8) != 0))
  {
    v33 = *(v32 - 8);
  }

  else
  {
    v33 = 0;
  }

  v34 = *(*a2 + 4);
  if (v34 < 0x100)
  {
    v35 = WTF::StringImpl::hashSlowCase(*a2);
  }

  else
  {
    v35 = v34 >> 8;
  }

  v36 = 0;
  for (j = 1; ; ++j)
  {
    v38 = v35 & v33;
    v39 = (v32 + 16 * (v35 & v33));
    v40 = *v39;
    if (*v39 == -1)
    {
      v36 = (v32 + 16 * v38);
      goto LABEL_59;
    }

    if (!v40)
    {
      if (v36)
      {
        *v36 = 0;
        v36[1] = 0;
        --*(*v8 - 16);
        v39 = v36;
      }

      WTF::String::operator=(v39, a2);
      v41 = *a4;
      v23 = v52;
      if (*a4)
      {
        *v41 += 2;
      }

      this = v39[1];
      v39[1] = v41;
      if (this)
      {
        this = WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(this);
      }

      v42 = *v8;
      if (*v8)
      {
        v43 = *(v42 - 12) + 1;
      }

      else
      {
        v43 = 1;
      }

      *(v42 - 12) = v43;
      v47 = (*(v42 - 16) + v43);
      v48 = *(v42 - 4);
      if (v48 > 0x400)
      {
        if (v48 > 2 * v47)
        {
          goto LABEL_77;
        }
      }

      else if (3 * v48 > 4 * v47)
      {
        goto LABEL_77;
      }

      this = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(v8);
      goto LABEL_77;
    }

    if (WTF::equal(v40, *a2, v31))
    {
      break;
    }

LABEL_59:
    v35 = j + v38;
  }

  v44 = *a4;
  if (*a4)
  {
    *v44 += 2;
  }

  this = v39[1];
  v39[1] = v44;
  v23 = v52;
  if (this)
  {
    this = WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(this);
  }

LABEL_77:
  v20 = 0;
LABEL_78:
  if (!v20 || atomic_fetch_add(v20 + 2, 0xFFFFFFFF) != 1)
  {
    if (!v23)
    {
      return this;
    }

LABEL_84:
    IPC::Decoder::~Decoder(v23);
    return bmalloc::api::tzoneFree(v49, v50);
  }

  atomic_store(1u, v20 + 2);
  this = (*(*v20 + 8))(v20);
  if (v23)
  {
    goto LABEL_84;
  }

  return this;
}

WTF::StringImpl *WebKit::RemoteLegacyCDMSession::sendMessage(WTF::StringImpl *result, unsigned int **a2, atomic_uint **a3)
{
  v3 = *(result + 6);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      v6 = *a2;
      if (*a2)
      {
        *a2 = 0;
        WebKit::convertToUint8Array(&v13, v6);
        v7 = v13;
        v8 = *a3;
        if (*a3)
        {
          atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
        }

        v12 = v8;
        (*(*v4 + 16))(v4, v7, &v12);
        result = v12;
        v12 = 0;
        if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, v9);
        }

        v13 = 0;
        if (v7)
        {
          if (*v7 == 1)
          {
            result = JSC::ArrayBufferView::operator delete();
          }

          else
          {
            --*v7;
          }
        }

        if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v6 + 2);
          return (*(*v6 + 8))(v6);
        }
      }

      else
      {
        v10 = *a3;
        if (*a3)
        {
          atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
        }

        v14 = v10;
        (*(*v4 + 16))(v4, 0, &v14);
        result = v14;
        v14 = 0;
        if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v11);
        }
      }
    }
  }

  return result;
}

void WebKit::RemoteMediaEngineConfigurationFactory::~RemoteMediaEngineConfigurationFactory(WebKit::RemoteMediaEngineConfigurationFactory *this, void *a2)
{
  WebKit::RemoteLegacyCDM::~RemoteLegacyCDM(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

void WebKit::RemoteMediaEngineConfigurationFactory::registerFactory(WebKit::RemoteMediaEngineConfigurationFactory *this)
{
  WebCore::MediaEngineConfigurationFactory::clearFactories(this);
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(this + 2, this);
  v2 = *(this + 1);
  atomic_fetch_add(v2, 1u);
  v3 = WTF::fastMalloc(0x10);
  *v3 = &unk_1F1128728;
  v3[1] = v2;
  v4[0] = v3;
  v4[1] = 0;
  WebCore::MediaEngineConfigurationFactory::installFactory();
  WebCore::MediaEngineConfigurationFactory::MediaEngineFactory::~MediaEngineFactory(v4);
}

void WebKit::RemoteCDM::~RemoteCDM(WebKit::RemoteCDM *this, WTF::StringImpl *a2)
{
  WebKit::RemoteCDM::~RemoteCDM(this, a2);

  JUMPOUT(0x19EB14CF0);
}

{
  v3 = *(this + 10);
  *(this + 10) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  WTF::Vector<WTF::AtomString,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 48, a2);
  WTF::Vector<WTF::AtomString,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 32, v4);
  v6 = *(this + 2);
  *(this + 2) = 0;
  if (v6 && atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v6);
    WTF::fastFree(v6, v5);
  }

  MEMORY[0x1EEE53DD0](this);
}

unsigned int *WebKit::RemoteCDMInstance::setClient(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  result = *(a1 + 56);
  *(a1 + 56) = v3;
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

unsigned int *WebKit::RemoteCDMInstance::clearClient(WebKit::RemoteCDMInstance *this, void *a2)
{
  result = *(this + 7);
  *(this + 7) = 0;
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

_DWORD *WebKit::RemoteCDMInstance::deref(_DWORD *this)
{
  if (this[2] == 1)
  {
    return (*(*this + 8))();
  }

  --this[2];
  return this;
}

uint64_t non-virtual thunk toWebKit::RemoteCDMInstance::deref(uint64_t this)
{
  if (*(this - 8) == 1)
  {
    return (*(*(this - 16) + 8))();
  }

  --*(this - 8);
  return this;
}

uint64_t WebKit::RemoteCDMInstanceSession::deref(uint64_t this)
{
  if (*(this + 24) == 1)
  {
    return (*(*(this + 16) + 8))();
  }

  --*(this + 24);
  return this;
}

unsigned int *WebKit::RemoteCDMInstanceSession::setClient(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  result = *(a1 + 48);
  *(a1 + 48) = v3;
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

unsigned int *WebKit::RemoteCDMInstanceSession::clearClient(WebKit::RemoteCDMInstanceSession *this, void *a2)
{
  result = *(this + 6);
  *(this + 6) = 0;
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

unsigned int *non-virtual thunk toWebKit::RemoteCDMInstanceSession::setClient(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  result = *(a1 + 32);
  *(a1 + 32) = v3;
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

unsigned int *non-virtual thunk toWebKit::RemoteCDMInstanceSession::clearClient(WebKit::RemoteCDMInstanceSession *this, void *a2)
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

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(WTF::StringImpl **a1, WTF::StringImpl *a2)
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
          WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v6);
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

void WebCore::MediaEngineConfigurationFactory::MediaEngineFactory::~MediaEngineFactory(WebCore::MediaEngineConfigurationFactory::MediaEngineFactory *this)
{
  v2 = *(this + 1);
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *this;
  *this = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteCDMProxy::GetSupportedConfiguration,WTF::Function<void ()(std::optional<WebCore::CDMKeySystemConfiguration>)>>(WTF::Function<void ()(std::optional<WebCore::CDMKeySystemConfiguration>)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1128548;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteCDMProxy::GetSupportedConfiguration,WTF::Function<void ()(std::optional<WebCore::CDMKeySystemConfiguration>)>>(WTF::Function<void ()(std::optional<WebCore::CDMKeySystemConfiguration>)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1128548;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteCDMProxy::GetSupportedConfiguration,WTF::Function<void ()(std::optional<WebCore::CDMKeySystemConfiguration>)>>(WTF::Function<void ()(std::optional<WebCore::CDMKeySystemConfiguration>)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
{
  if (a3)
  {
    v5 = *a3;
    if (*a3)
    {
      v6 = *(a3 + 1);
      v7 = *(a3 + 2);
      if (v6 <= &v7[-v5])
      {
        *a3 = 0;
        *(a3 + 1) = 0;
        v48 = *(a3 + 3);
        if (v48)
        {
          if (v6)
          {
            (*(*v48 + 16))(v48);
            v5 = *a3;
            v6 = *(a3 + 1);
            goto LABEL_60;
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
        *(a3 + 2) = v7 + 1;
        if (v7)
        {
          v8 = *v7;
          if (v8 < 2)
          {
            if (v8)
            {
              IPC::ArgumentCoder<WebCore::CDMKeySystemConfiguration,void>::decode(a3, &v68);
              if ((v75 & 1) == 0)
              {
                v45 = *a3;
                v46 = *(a3 + 1);
                *a3 = 0;
                *(a3 + 1) = 0;
                v47 = *(a3 + 3);
                if (!v47 || !v46 || ((*(*v47 + 16))(v47, v45), (v75 & 1) == 0))
                {
LABEL_47:
                  LOBYTE(v59[0]) = 0;
                  v67 = 0;
LABEL_19:
                  if (v67 & 1) != 0 || (v39 = *a3, v40 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v41 = *(a3 + 3)) != 0) && v40 && ((*(*v41 + 16))(v41, v39), (v67))
                  {
                    std::optional<WebCore::CDMKeySystemConfiguration>::optional[abi:sn200100](&v51, v59);
                    v58 = 1;
                    if ((v67 & 1) != 0 && v66 == 1)
                    {
                      v26 = v64;
                      if (v64)
                      {
                        v64 = 0;
                        LODWORD(v65) = 0;
                        WTF::fastFree(v26, v25);
                      }

                      WTF::Vector<WebCore::CDMMediaCapability,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v62, v25);
                      WTF::Vector<WebCore::CDMMediaCapability,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v61, v27);
                      WTF::Vector<WTF::AtomString,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v59[1], v28);
                      v30 = v59[0];
                      v59[0] = 0;
                      if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v30, v29);
                      }
                    }
                  }

                  else
                  {
                    LOBYTE(v51) = 0;
                    v58 = 0;
                  }

                  if ((v58 & 1) == 0)
                  {
                    v42 = *a3;
                    v43 = *(a3 + 1);
                    *a3 = 0;
                    *(a3 + 1) = 0;
                    v44 = *(a3 + 3);
                    if (!v44)
                    {
                      return IPC::Connection::cancelReply<Messages::RemoteCDMProxy::GetSupportedConfiguration,WTF::Function<void ()(std::optional<WebCore::CDMKeySystemConfiguration>)>>((a1 + 8));
                    }

                    if (!v43)
                    {
                      return IPC::Connection::cancelReply<Messages::RemoteCDMProxy::GetSupportedConfiguration,WTF::Function<void ()(std::optional<WebCore::CDMKeySystemConfiguration>)>>((a1 + 8));
                    }

                    (*(*v44 + 16))(v44, v42);
                    if ((v58 & 1) == 0)
                    {
                      return IPC::Connection::cancelReply<Messages::RemoteCDMProxy::GetSupportedConfiguration,WTF::Function<void ()(std::optional<WebCore::CDMKeySystemConfiguration>)>>((a1 + 8));
                    }
                  }

                  std::optional<WebCore::CDMKeySystemConfiguration>::optional[abi:sn200100](v59, &v51);
                  result = WTF::Function<void ()(std::optional<WebCore::CDMKeySystemConfiguration>)>::operator()((a1 + 8), v59);
                  if (v66 == 1)
                  {
                    v32 = v64;
                    if (v64)
                    {
                      v64 = 0;
                      LODWORD(v65) = 0;
                      WTF::fastFree(v32, v31);
                    }

                    WTF::Vector<WebCore::CDMMediaCapability,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v62, v31);
                    WTF::Vector<WebCore::CDMMediaCapability,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v61, v33);
                    WTF::Vector<WTF::AtomString,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v59[1], v34);
                    result = v59[0];
                    v59[0] = 0;
                    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      result = WTF::StringImpl::destroy(result, v31);
                    }
                  }

                  if ((v58 & 1) != 0 && v57 == 1)
                  {
                    v35 = v55;
                    if (v55)
                    {
                      v55 = 0;
                      v56 = 0;
                      WTF::fastFree(v35, v31);
                    }

                    WTF::Vector<WebCore::CDMMediaCapability,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v54, v31);
                    WTF::Vector<WebCore::CDMMediaCapability,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v53, v36);
                    WTF::Vector<WTF::AtomString,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v52, v37);
                    result = v51;
                    v51 = 0;
                    if (result)
                    {
                      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        return WTF::StringImpl::destroy(result, v38);
                      }
                    }
                  }

                  return result;
                }
              }

              *&v10 = 0;
              v11 = v68;
              v68 = 0uLL;
              *v59 = v11;
              *&v11 = v69;
              v69 = 0;
              v60 = v11;
              v12 = v70;
              v70 = v10;
              v61 = v12;
              v13 = v71;
              v71 = v10;
              v62 = v13;
              v63 = v72;
              v14 = v73;
              v73 = 0;
              v64 = v14;
              v15 = v74;
              v74 = 0;
              v65 = v15;
              v66 = 1;
              v67 = 1;
              WTF::Vector<WebCore::CDMMediaCapability,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v71, v9);
              WTF::Vector<WebCore::CDMMediaCapability,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v70, v16);
            }

            else
            {
              LOBYTE(v68) = 0;
              v75 = 0;
              std::optional<WebCore::CDMKeySystemConfiguration>::optional[abi:sn200100](v59, &v68);
              v67 = 1;
              if (v75 != 1)
              {
                goto LABEL_19;
              }

              v21 = v73;
              if (v73)
              {
                v73 = 0;
                LODWORD(v74) = 0;
                WTF::fastFree(v21, v20);
              }

              WTF::Vector<WebCore::CDMMediaCapability,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v71, v20);
              WTF::Vector<WebCore::CDMMediaCapability,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v70, v22);
            }

            WTF::Vector<WTF::AtomString,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v68 + 8, v17);
            v24 = v68;
            *&v68 = 0;
            if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v24, v23);
            }

            goto LABEL_19;
          }

          goto LABEL_63;
        }
      }

LABEL_60:
      *a3 = 0;
      *(a3 + 1) = 0;
      v49 = *(a3 + 3);
      if (v49)
      {
        if (v6)
        {
          (*(*v49 + 16))(v49, v5);
          v5 = *a3;
          v6 = *(a3 + 1);
          goto LABEL_63;
        }
      }

      else
      {
        v6 = 0;
      }

      v5 = 0;
LABEL_63:
      *a3 = 0;
      *(a3 + 1) = 0;
      v50 = *(a3 + 3);
      if (v50 && v6)
      {
        (*(*v50 + 16))(v50, v5);
      }

      goto LABEL_47;
    }
  }

  v18 = (a1 + 8);

  return IPC::Connection::cancelReply<Messages::RemoteCDMProxy::GetSupportedConfiguration,WTF::Function<void ()(std::optional<WebCore::CDMKeySystemConfiguration>)>>(v18);
}

WTF::StringImpl *IPC::Connection::cancelReply<Messages::RemoteCDMProxy::GetSupportedConfiguration,WTF::Function<void ()(std::optional<WebCore::CDMKeySystemConfiguration>)>>(uint64_t *a1)
{
  LOBYTE(v24) = 0;
  v30 = 0;
  std::optional<WebCore::CDMKeySystemConfiguration>::optional[abi:sn200100](&v17, &v24);
  if (v30 == 1)
  {
    v3 = v28;
    if (v28)
    {
      v28 = 0;
      v29 = 0;
      WTF::fastFree(v3, v2);
    }

    WTF::Vector<WebCore::CDMMediaCapability,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v27, v2);
    WTF::Vector<WebCore::CDMMediaCapability,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v26, v4);
    WTF::Vector<WTF::AtomString,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v25, v5);
    v7 = v24;
    v24 = 0;
    if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v6);
    }
  }

  std::optional<WebCore::CDMKeySystemConfiguration>::optional[abi:sn200100](&v24, &v17);
  result = WTF::Function<void ()(std::optional<WebCore::CDMKeySystemConfiguration>)>::operator()(a1, &v24);
  if (v30 == 1)
  {
    v10 = v28;
    if (v28)
    {
      v28 = 0;
      v29 = 0;
      WTF::fastFree(v10, v9);
    }

    WTF::Vector<WebCore::CDMMediaCapability,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v27, v9);
    WTF::Vector<WebCore::CDMMediaCapability,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v26, v11);
    WTF::Vector<WTF::AtomString,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v25, v12);
    result = v24;
    v24 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v9);
    }
  }

  if (v23 == 1)
  {
    v13 = v21;
    if (v21)
    {
      v21 = 0;
      v22 = 0;
      WTF::fastFree(v13, v9);
    }

    WTF::Vector<WebCore::CDMMediaCapability,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v20, v9);
    WTF::Vector<WebCore::CDMMediaCapability,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v19, v14);
    WTF::Vector<WTF::AtomString,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v18, v15);
    result = v17;
    v17 = 0;
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

void **WTF::Vector<WebCore::CDMFactory *,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::RemoteCDMFactory *>(uint64_t a1, void *a2)
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

  result = WTF::Vector<WTF::Ref<WebCore::FilterEffect,WTF::RawPtrTraits<WebCore::FilterEffect>,WTF::DefaultRefDerefTraits<WebCore::FilterEffect>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v8);
  v10 = *(a1 + 12);
  *(*a1 + 8 * v10) = *a2;
  *(a1 + 12) = v10 + 1;
  return result;
}

atomic_uint **WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::RemoteCDMInstanceSession,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::RemoteCDMInstanceSession,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::RemoteCDMInstanceSession,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::RemoteCDMInstanceSession,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>@<X0>(atomic_uint **result@<X0>, uint64_t *a2@<X1>, atomic_uint **a3@<X8>)
{
  v3 = *a2;
  if (*a2 == -1 || !v3)
  {
    __break(0xC471u);
    JUMPOUT(0x19E29B2F8);
  }

  v4 = *result;
  if (*result)
  {
    v5 = *(v4 - 2);
    v6 = (v3 + ~(v3 << 32)) ^ ((v3 + ~(v3 << 32)) >> 22);
    v7 = 9 * ((v6 + ~(v6 << 13)) ^ ((v6 + ~(v6 << 13)) >> 8));
    v8 = (v7 ^ (v7 >> 15)) + ~((v7 ^ (v7 >> 15)) << 27);
    v9 = v5 & ((v8 >> 31) ^ v8);
    v10 = *&v4[4 * v9];
    if (v10 == v3)
    {
LABEL_8:
      v4 = *&v4[4 * v9 + 2];
      if (v4)
      {
        atomic_fetch_add(v4, 1u);
      }
    }

    else
    {
      v11 = 1;
      while (v10)
      {
        v9 = (v9 + v11) & v5;
        v10 = *&v4[4 * v9];
        ++v11;
        if (v10 == v3)
        {
          goto LABEL_8;
        }
      }

      v4 = 0;
    }
  }

  *a3 = v4;
  return result;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteCDMInstanceProxy::InitializeWithConfiguration,WTF::CompletionHandler<void ()(WebCore::CDMInstanceSuccessValue)>>(WTF::CompletionHandler<void ()(WebCore::CDMInstanceSuccessValue)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1128570;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteCDMInstanceProxy::InitializeWithConfiguration,WTF::CompletionHandler<void ()(WebCore::CDMInstanceSuccessValue)>>(WTF::CompletionHandler<void ()(WebCore::CDMInstanceSuccessValue)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1128570;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteCDMInstanceProxy::InitializeWithConfiguration,WTF::CompletionHandler<void ()(WebCore::CDMInstanceSuccessValue)>>(WTF::CompletionHandler<void ()(WebCore::CDMInstanceSuccessValue)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a3 && *a3)
  {
    v4 = IPC::Decoder::decode<std::tuple<WebCore::AudioSessionMayResume>>(a3);
    v5 = (v4 > 0xFFu) & v4;
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

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteCDMInstanceProxy::SetServerCertificate,WTF::CompletionHandler<void ()(WebCore::CDMInstanceSuccessValue)>>(WTF::CompletionHandler<void ()(WebCore::CDMInstanceSuccessValue)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1128598;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteCDMInstanceProxy::SetServerCertificate,WTF::CompletionHandler<void ()(WebCore::CDMInstanceSuccessValue)>>(WTF::CompletionHandler<void ()(WebCore::CDMInstanceSuccessValue)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1128598;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteCDMInstanceProxy::SetServerCertificate,WTF::CompletionHandler<void ()(WebCore::CDMInstanceSuccessValue)>>(WTF::CompletionHandler<void ()(WebCore::CDMInstanceSuccessValue)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a3 && *a3)
  {
    v4 = IPC::Decoder::decode<std::tuple<WebCore::AudioSessionMayResume>>(a3);
    v5 = (v4 > 0xFFu) & v4;
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

void *WTF::Detail::CallableWrapper<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteCDMInstanceSessionProxy::RequestLicense,WebKit::RemoteCDMInstanceSession::requestLicense(WebCore::CDMSessionType,WebCore::CDMKeyGroupingStrategy,WTF::AtomString const&,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&,WTF::CompletionHandler<void ()(WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &,WTF::String const&,BOOL,WebCore::CDMInstanceSession::SuccessValue)> &&)::$_0>(WebKit::RemoteCDMInstanceSession::requestLicense(WebCore::CDMSessionType,WebCore::CDMKeyGroupingStrategy,WTF::AtomString const&,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&,WTF::CompletionHandler<void ()(WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &,WTF::String const&,BOOL,WebCore::CDMInstanceSession::SuccessValue)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &,WTF::String const&,BOOL,WebCore::CDMInstanceSession::SuccessValue)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &,WTF::String const&,BOOL,WebCore::CDMInstanceSession::SuccessValue)> &&,IPC::Connection*>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F11285C0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteCDMInstanceSessionProxy::RequestLicense,WebKit::RemoteCDMInstanceSession::requestLicense(WebCore::CDMSessionType,WebCore::CDMKeyGroupingStrategy,WTF::AtomString const&,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&,WTF::CompletionHandler<void ()(WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &,WTF::String const&,BOOL,WebCore::CDMInstanceSession::SuccessValue)> &&)::$_0>(WebKit::RemoteCDMInstanceSession::requestLicense(WebCore::CDMSessionType,WebCore::CDMKeyGroupingStrategy,WTF::AtomString const&,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&,WTF::CompletionHandler<void ()(WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &,WTF::String const&,BOOL,WebCore::CDMInstanceSession::SuccessValue)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &,WTF::String const&,BOOL,WebCore::CDMInstanceSession::SuccessValue)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &,WTF::String const&,BOOL,WebCore::CDMInstanceSession::SuccessValue)> &&,IPC::Connection*>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F11285C0;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

unsigned int *WTF::Detail::CallableWrapper<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteCDMInstanceSessionProxy::RequestLicense,WebKit::RemoteCDMInstanceSession::requestLicense(WebCore::CDMSessionType,WebCore::CDMKeyGroupingStrategy,WTF::AtomString const&,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&,WTF::CompletionHandler<void ()(WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &,WTF::String const&,BOOL,WebCore::CDMInstanceSession::SuccessValue)> &&)::$_0>(WebKit::RemoteCDMInstanceSession::requestLicense(WebCore::CDMSessionType,WebCore::CDMKeyGroupingStrategy,WTF::AtomString const&,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&,WTF::CompletionHandler<void ()(WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &,WTF::String const&,BOOL,WebCore::CDMInstanceSession::SuccessValue)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &,WTF::String const&,BOOL,WebCore::CDMInstanceSession::SuccessValue)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &,WTF::String const&,BOOL,WebCore::CDMInstanceSession::SuccessValue)> &&,IPC::Connection*>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
{
  if (a3 && *a3)
  {
    IPC::Decoder::decode<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>(a3, &v36);
    if (v37 == 1)
    {
      IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, &v38);
      if ((v39 & 1) == 0)
      {
        goto LABEL_35;
      }

      while (1)
      {
        v5 = *(a3 + 1);
        v6 = *(a3 + 2);
        v7 = *a3;
        if (v5 <= &v6[-*a3])
        {
          break;
        }

        v8 = v6 + 1;
        *(a3 + 2) = v6 + 1;
        if (!v6)
        {
          goto LABEL_41;
        }

        v9 = *v6;
        if (v9 >= 2)
        {
          goto LABEL_49;
        }

        if (v5 <= v8 - v7)
        {
          v27 = 0;
          v28 = 0;
          *a3 = 0;
          *(a3 + 1) = 0;
          v29 = *(a3 + 3);
          if (v29)
          {
            (*(*v29 + 16))(v29);
            v28 = *a3;
            v27 = *(a3 + 1);
          }

LABEL_46:
          *a3 = 0;
          *(a3 + 1) = 0;
          v30 = *(a3 + 3);
          if (v30 && v27)
          {
            (*(*v30 + 16))(v30, v28, v27);
            goto LABEL_59;
          }

LABEL_47:
          v5 = 0;
          goto LABEL_48;
        }

        *(a3 + 2) = v6 + 2;
        if (v6 == -1)
        {
          v27 = v5;
          v28 = v7;
          goto LABEL_46;
        }

        v10 = *v8;
        if (v10 >= 2)
        {
          goto LABEL_49;
        }

        if (v37)
        {
          v11 = v36;
          v36 = 0;
          v12 = v38;
          v38 = 0;
          v32 = v11;
          v33 = v12;
          LOBYTE(v34) = v9;
          HIBYTE(v34) = v10;
          v13 = 1;
          goto LABEL_13;
        }

        __break(1u);
LABEL_35:
        v22 = *a3;
        v23 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v24 = *(a3 + 3);
        if (v24)
        {
          if (v23)
          {
            (*(*v24 + 16))(v24, v22);
            if (v39)
            {
              continue;
            }
          }
        }

        LOBYTE(v32) = 0;
        v35 = 0;
        goto LABEL_17;
      }

      *a3 = 0;
      *(a3 + 1) = 0;
      v25 = *(a3 + 3);
      if (v25)
      {
        if (v5)
        {
          (*(*v25 + 16))(v25);
          v5 = *(a3 + 1);
        }
      }

      else
      {
        v5 = 0;
      }

LABEL_41:
      *a3 = 0;
      *(a3 + 1) = 0;
      v26 = *(a3 + 3);
      if (!v26)
      {
        goto LABEL_47;
      }

      if (!v5)
      {
LABEL_48:
        v7 = 0;
        goto LABEL_49;
      }

      (*(*v26 + 16))(v26);
LABEL_59:
      v7 = *a3;
      v5 = *(a3 + 1);
LABEL_49:
      *a3 = 0;
      *(a3 + 1) = 0;
      v31 = *(a3 + 3);
      if (v31 && v5)
      {
        (*(*v31 + 16))(v31, v7);
      }

      v13 = 0;
      LOBYTE(v32) = 0;
LABEL_13:
      v35 = v13;
      if (v39)
      {
        v14 = v38;
        v38 = 0;
        if (v14)
        {
          if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v14, v7);
          }
        }
      }

LABEL_17:
      if (v37)
      {
        v15 = v36;
        v36 = 0;
        if (v15)
        {
          if (atomic_fetch_add(v15 + 2, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v15 + 2);
            (*(*v15 + 8))(v15);
          }
        }
      }
    }

    else
    {
      LOBYTE(v32) = 0;
      v35 = 0;
    }

    if (v35)
    {
      result = std::apply[abi:sn200100]<WebKit::RemoteCDMInstanceSession::requestLicense(WebCore::CDMSessionType,WebCore::CDMKeyGroupingStrategy,WTF::AtomString const&,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&,WTF::CompletionHandler<void ()(WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &,WTF::String const&,BOOL,WebCore::CDMInstanceSession::SuccessValue)> &&)::$_0,std::tuple<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WTF::CompletionHandler,BOOL,BOOL>>((a1 + 8), &v32);
      if ((v35 & 1) == 0)
      {
        return result;
      }

      goto LABEL_27;
    }

    v18 = *a3;
    v19 = *(a3 + 1);
    *a3 = 0;
    *(a3 + 1) = 0;
    v20 = *(a3 + 3);
    if (v20 && v19)
    {
      (*(*v20 + 16))(v20, v18);
    }
  }

  v32 = 0;
  v33 = 0;
  v34 = 0;
  std::apply[abi:sn200100]<WebKit::RemoteCDMInstanceSession::requestLicense(WebCore::CDMSessionType,WebCore::CDMKeyGroupingStrategy,WTF::AtomString const&,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&,WTF::CompletionHandler<void ()(WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &,WTF::String const&,BOOL,WebCore::CDMInstanceSession::SuccessValue)> &&)::$_0,std::tuple<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WTF::CompletionHandler,BOOL,BOOL>>((a1 + 8), &v32);
LABEL_27:
  v21 = v33;
  v33 = 0;
  if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v21, v17);
  }

  result = v32;
  v32 = 0;
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

unsigned int *std::apply[abi:sn200100]<WebKit::RemoteCDMInstanceSession::requestLicense(WebCore::CDMSessionType,WebCore::CDMKeyGroupingStrategy,WTF::AtomString const&,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&,WTF::CompletionHandler<void ()(WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &,WTF::String const&,BOOL,WebCore::CDMInstanceSession::SuccessValue)> &&)::$_0,std::tuple<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WTF::CompletionHandler,BOOL,BOOL>>(uint64_t *a1, uint64_t a2)
{
  if (*a2)
  {
    v3 = *(a2 + 17);
    v4 = *(a2 + 16);
    v8 = *a2;
    *a2 = 0;
    v5 = *a1;
    *a1 = 0;
    (*(*v5 + 16))(v5, &v8, a2 + 8, v4, v3);
  }

  else
  {
    v6 = WTF::fastMalloc(0x40);
    v8 = WebCore::SharedBuffer::SharedBuffer(v6);
    v5 = *a1;
    *a1 = 0;
    (*(*v5 + 16))(v5, &v8, MEMORY[0x1E696EBA8], 0, 0);
  }

  (*(*v5 + 8))(v5);
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

void *WTF::Detail::CallableWrapper<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteCDMInstanceSessionProxy::UpdateLicense,WebKit::RemoteCDMInstanceSession::updateLicense(WTF::String const&,WebCore::CDMSessionType,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&,WTF::CompletionHandler<void ()(BOOL,std::optional<WTF::Vector<WTF::CompletionHandler::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&,std::__1<double> &&,std::__1<WTF::Vector<WebCore::CDMMessageType,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>> &&,WebCore::CDMInstanceSession::SuccessValue)> &&)::$_0>(WebKit::RemoteCDMInstanceSession::updateLicense(WTF::String const&,WebCore::CDMSessionType,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&,WTF::CompletionHandler<void ()(BOOL,std::optional<WTF::Vector<WTF::CompletionHandler::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&,std::__1<double> &&,std::__1<WTF::Vector<WebCore::CDMMessageType,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>> &&,WebCore::CDMInstanceSession::SuccessValue)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(void ()(BOOL,std::optional<WTF::Vector<WTF::CompletionHandler::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&,std::__1<double> &&,std::__1<WTF::Vector<WebCore::CDMMessageType,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>> &&,WebCore::CDMInstanceSession::SuccessValue),WTF::CompletionHandler<void ()(BOOL,std::optional<WTF::Vector<WTF::CompletionHandler::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&,std::__1<double> &&,std::__1<WTF::Vector<WebCore::CDMMessageType,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>> &&,WebCore::CDMInstanceSession::SuccessValue)> &)#1},void,void ()(BOOL,std::optional<WTF::Vector<WTF::CompletionHandler::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&,std::__1<double> &&,std::__1<WTF::Vector<WebCore::CDMMessageType,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>> &&,WebCore::CDMInstanceSession::SuccessValue),WTF::CompletionHandler<void ()(BOOL,std::optional<WTF::Vector<WTF::CompletionHandler::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&,std::__1<double> &&,std::__1<WTF::Vector<WebCore::CDMMessageType,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>> &&,WebCore::CDMInstanceSession::SuccessValue)> &>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F11285E8;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteCDMInstanceSessionProxy::UpdateLicense,WebKit::RemoteCDMInstanceSession::updateLicense(WTF::String const&,WebCore::CDMSessionType,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&,WTF::CompletionHandler<void ()(BOOL,std::optional<WTF::Vector<WTF::CompletionHandler::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&,std::__1<double> &&,std::__1<WTF::Vector<WebCore::CDMMessageType,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>> &&,WebCore::CDMInstanceSession::SuccessValue)> &&)::$_0>(WebKit::RemoteCDMInstanceSession::updateLicense(WTF::String const&,WebCore::CDMSessionType,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&,WTF::CompletionHandler<void ()(BOOL,std::optional<WTF::Vector<WTF::CompletionHandler::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&,std::__1<double> &&,std::__1<WTF::Vector<WebCore::CDMMessageType,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>> &&,WebCore::CDMInstanceSession::SuccessValue)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(void ()(BOOL,std::optional<WTF::Vector<WTF::CompletionHandler::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&,std::__1<double> &&,std::__1<WTF::Vector<WebCore::CDMMessageType,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>> &&,WebCore::CDMInstanceSession::SuccessValue),WTF::CompletionHandler<void ()(BOOL,std::optional<WTF::Vector<WTF::CompletionHandler::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&,std::__1<double> &&,std::__1<WTF::Vector<WebCore::CDMMessageType,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>> &&,WebCore::CDMInstanceSession::SuccessValue)> &)#1},void,void ()(BOOL,std::optional<WTF::Vector<WTF::CompletionHandler::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&,std::__1<double> &&,std::__1<WTF::Vector<WebCore::CDMMessageType,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>> &&,WebCore::CDMInstanceSession::SuccessValue),WTF::CompletionHandler<void ()(BOOL,std::optional<WTF::Vector<WTF::CompletionHandler::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&,std::__1<double> &&,std::__1<WTF::Vector<WebCore::CDMMessageType,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>> &&,WebCore::CDMInstanceSession::SuccessValue)> &>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F11285E8;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

unsigned int *WTF::Detail::CallableWrapper<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteCDMInstanceSessionProxy::UpdateLicense,WebKit::RemoteCDMInstanceSession::updateLicense(WTF::String const&,WebCore::CDMSessionType,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&,WTF::CompletionHandler<void ()(BOOL,std::optional<WTF::Vector<WTF::CompletionHandler::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&,std::__1<double> &&,std::__1<WTF::Vector<WebCore::CDMMessageType,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>> &&,WebCore::CDMInstanceSession::SuccessValue)> &&)::$_0>(WebKit::RemoteCDMInstanceSession::updateLicense(WTF::String const&,WebCore::CDMSessionType,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&,WTF::CompletionHandler<void ()(BOOL,std::optional<WTF::Vector<WTF::CompletionHandler::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&,std::__1<double> &&,std::__1<WTF::Vector<WebCore::CDMMessageType,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>> &&,WebCore::CDMInstanceSession::SuccessValue)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(void ()(BOOL,std::optional<WTF::Vector<WTF::CompletionHandler::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&,std::__1<double> &&,std::__1<WTF::Vector<WebCore::CDMMessageType,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>> &&,WebCore::CDMInstanceSession::SuccessValue),WTF::CompletionHandler<void ()(BOOL,std::optional<WTF::Vector<WTF::CompletionHandler::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&,std::__1<double> &&,std::__1<WTF::Vector<WebCore::CDMMessageType,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>> &&,WebCore::CDMInstanceSession::SuccessValue)> &)#1},void,void ()(BOOL,std::optional<WTF::Vector<WTF::CompletionHandler::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&,std::__1<double> &&,std::__1<WTF::Vector<WebCore::CDMMessageType,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>> &&,WebCore::CDMInstanceSession::SuccessValue),WTF::CompletionHandler<void ()(BOOL,std::optional<WTF::Vector<WTF::CompletionHandler::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&,std::__1<double> &&,std::__1<WTF::Vector<WebCore::CDMMessageType,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>> &&,WebCore::CDMInstanceSession::SuccessValue)> &>::call(uint64_t a1, double a2, __n128 a3, uint64_t a4, IPC::Decoder *a5)
{
  if (!a5 || (v7 = *a5) == 0)
  {
    v17 = (a1 + 8);

    return IPC::Connection::cancelReply<Messages::RemoteCDMInstanceSessionProxy::UpdateLicense,WebKit::RemoteCDMInstanceSession::updateLicense(WTF::String const&,WebCore::CDMSessionType,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&,WTF::CompletionHandler<void ()(BOOL,std::optional<WTF::Vector<WTF::CompletionHandler::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&,std::__1<double> &&,std::__1<WTF::Vector<WebCore::CDMMessageType,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>> &&,WebCore::CDMInstanceSession::SuccessValue)> &&)::$_0>(v17);
  }

  v8 = *(a5 + 1);
  v9 = *(a5 + 2);
  if (v8 <= v9 - v7)
  {
    *a5 = 0;
    *(a5 + 1) = 0;
    v23 = *(a5 + 3);
    if (v23)
    {
      if (v8)
      {
        (*(*v23 + 16))(v23);
        v7 = *a5;
        v8 = *(a5 + 1);
LABEL_44:
        *a5 = 0;
        *(a5 + 1) = 0;
        v24 = *(a5 + 3);
        if (v24)
        {
          if (v8)
          {
            (*(*v24 + 16))(v24, v7);
            v7 = *a5;
            v8 = *(a5 + 1);
LABEL_47:
            *a5 = 0;
            *(a5 + 1) = 0;
            v25 = *(a5 + 3);
            if (v25 && v8)
            {
              (*(*v25 + 16))(v25, v7);
            }

            v32[0] = 0;
            v39 = 0;
            goto LABEL_49;
          }
        }

        else
        {
          v8 = 0;
        }

        v7 = 0;
        goto LABEL_47;
      }
    }

    else
    {
      v8 = 0;
    }

    v7 = 0;
    goto LABEL_44;
  }

  *(a5 + 2) = v9 + 1;
  if (!v9)
  {
    goto LABEL_44;
  }

  v10 = *v9;
  if (v10 >= 2)
  {
    goto LABEL_47;
  }

  IPC::Decoder::decode<std::optional<WTF::Vector<std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(v40, a5, a2, a3);
  if (v41 != 1)
  {
    v32[0] = 0;
    v39 = 0;
    goto LABEL_26;
  }

  IPC::ArgumentCoder<std::optional<double>,void>::decode<IPC::Decoder>(a5, &v42);
  if ((v43 & 1) == 0)
  {
    v12 = *a5;
    v13 = *(a5 + 1);
    *a5 = 0;
    *(a5 + 1) = 0;
    v11 = *(a5 + 3);
    if (v11)
    {
      goto LABEL_38;
    }

LABEL_36:
    v32[0] = 0;
    v39 = 0;
    goto LABEL_24;
  }

  while (1)
  {
    IPC::Decoder::decode<std::optional<std::pair<WebCore::CDMMessageType,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>>>(v44, a5);
    if (v47 != 1)
    {
      v32[0] = 0;
      v39 = 0;
      goto LABEL_23;
    }

    v13 = *(a5 + 1);
    v14 = *(a5 + 2);
    v12 = *a5;
    if (v13 <= &v14[-*a5])
    {
      *a5 = 0;
      *(a5 + 1) = 0;
      v29 = *(a5 + 3);
      if (v29)
      {
        if (v13)
        {
          (*(*v29 + 16))(v29);
          v13 = *(a5 + 1);
        }
      }

      else
      {
        v13 = 0;
      }

LABEL_56:
      *a5 = 0;
      *(a5 + 1) = 0;
      v30 = *(a5 + 3);
      if (v30)
      {
        if (v13)
        {
          (*(*v30 + 16))(v30);
          v12 = *a5;
          v13 = *(a5 + 1);
LABEL_59:
          *a5 = 0;
          *(a5 + 1) = 0;
          v31 = *(a5 + 3);
          if (v31 && v13)
          {
            (*(*v31 + 16))(v31, v12);
          }

          v32[0] = 0;
          v39 = 0;
          goto LABEL_14;
        }
      }

      else
      {
        v13 = 0;
      }

      v12 = 0;
      goto LABEL_59;
    }

    *(a5 + 2) = v14 + 1;
    if (!v14)
    {
      goto LABEL_56;
    }

    v15 = *v14;
    if (v15 >= 2)
    {
      goto LABEL_59;
    }

    v48 = v15 | 0x100;
    if (v43)
    {
      break;
    }

    __break(1u);
LABEL_38:
    if (v13)
    {
      (*(*v11 + 16))(v11, v12);
      if (v43)
      {
        continue;
      }
    }

    goto LABEL_36;
  }

  _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3ELm4EEEEJbNS_8optionalIN3WTF6VectorINS_4pairINS4_3RefIN7WebCore12SharedBufferENS4_12RawPtrTraitsIS9_EENS4_21DefaultRefDerefTraitsIS9_EEEENS8_12CDMKeyStatusEEELm0ENS4_15CrashOnOverflowELm16ENS4_10FastMallocEEEEENS3_IdEENS3_INS6_INS8_14CDMMessageTypeESE_EEEEbEEC2B8sn200100IJLm0ELm1ELm2ELm3ELm4EEJbSK_SL_SO_bEJEJEJbSK_SL_SO_bEEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSS_IJDpT2_EEEDpOT3_(v32, v10, v40, &v42, v44, &v48);
  v39 = 1;
  if ((v47 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_14:
  if (v46 == 1)
  {
    v16 = v45;
    v45 = 0;
    if (v16)
    {
      if (atomic_fetch_add(v16 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v16 + 2);
        (*(*v16 + 8))(v16);
      }
    }
  }

LABEL_23:
  if (v41)
  {
LABEL_24:
    if (v40[16] == 1)
    {
      WTF::Vector<std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v40, v12);
    }
  }

LABEL_26:
  if (v39)
  {
LABEL_27:
    v19 = v32[0];
    v20 = v38;
    v21 = *(a1 + 8);
    *(a1 + 8) = 0;
    (*(*v21 + 16))(v21, v19, v33, &v34, &v35, v20);
    result = (*(*v21 + 8))(v21);
    if (v39)
    {
      if (v37 == 1)
      {
        result = v36;
        v36 = 0;
        if (result)
        {
          if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, result + 2);
            result = (*(*result + 8))(result);
          }
        }
      }

      if (v33[16] == 1)
      {
        return WTF::Vector<std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v33, v22);
      }
    }

    return result;
  }

LABEL_49:
  v26 = *a5;
  v27 = *(a5 + 1);
  *a5 = 0;
  *(a5 + 1) = 0;
  v28 = *(a5 + 3);
  if (v28)
  {
    if (v27)
    {
      (*(*v28 + 16))(v28, v26);
      if (v39)
      {
        goto LABEL_27;
      }
    }
  }

  return IPC::Connection::cancelReply<Messages::RemoteCDMInstanceSessionProxy::UpdateLicense,WebKit::RemoteCDMInstanceSession::updateLicense(WTF::String const&,WebCore::CDMSessionType,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&,WTF::CompletionHandler<void ()(BOOL,std::optional<WTF::Vector<WTF::CompletionHandler::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&,std::__1<double> &&,std::__1<WTF::Vector<WebCore::CDMMessageType,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>> &&,WebCore::CDMInstanceSession::SuccessValue)> &&)::$_0>((a1 + 8));
}

unsigned int *IPC::Connection::cancelReply<Messages::RemoteCDMInstanceSessionProxy::UpdateLicense,WebKit::RemoteCDMInstanceSession::updateLicense(WTF::String const&,WebCore::CDMSessionType,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&,WTF::CompletionHandler<void ()(BOOL,std::optional<WTF::Vector<WTF::CompletionHandler::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&,std::__1<double> &&,std::__1<WTF::Vector<WebCore::CDMMessageType,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>> &&,WebCore::CDMInstanceSession::SuccessValue)> &&)::$_0>(uint64_t *a1)
{
  v21[0] = 0;
  v22 = 0;
  *&v20 = 0;
  BYTE8(v20) = 0;
  v17[0] = 0;
  v19 = 0;
  v16 = 0;
  _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3ELm4EEEEJbNS_8optionalIN3WTF6VectorINS_4pairINS4_3RefIN7WebCore12SharedBufferENS4_12RawPtrTraitsIS9_EENS4_21DefaultRefDerefTraitsIS9_EEEENS8_12CDMKeyStatusEEELm0ENS4_15CrashOnOverflowELm16ENS4_10FastMallocEEEEENS3_IdEENS3_INS6_INS8_14CDMMessageTypeESE_EEEEbEEC2B8sn200100IJLm0ELm1ELm2ELm3ELm4EEJbSK_SL_SO_bEJEJEJbSK_SL_SO_bEEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSS_IJDpT2_EEEDpOT3_(v9, 0, v21, &v20, v17, &v16);
  if (v19 == 1)
  {
    v3 = v18;
    v18 = 0;
    if (v3)
    {
      if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v3 + 2);
        (*(*v3 + 8))(v3);
      }
    }
  }

  if (v22 == 1)
  {
    WTF::Vector<std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v21, v2);
  }

  v4 = v9[0];
  v5 = v15;
  v6 = *a1;
  *a1 = 0;
  (*(*v6 + 16))(v6, v4, v10, &v11, &v12, v5);
  result = (*(*v6 + 8))(v6);
  if (v14 == 1)
  {
    result = v13;
    v13 = 0;
    if (result)
    {
      if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, result + 2);
        result = (*(*result + 8))(result);
      }
    }
  }

  if (v10[16] == 1)
  {
    return WTF::Vector<std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v10, v8);
  }

  return result;
}

_BYTE *IPC::Decoder::decode<std::optional<WTF::Vector<std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(_BYTE *result, IPC::Decoder *a2, double a3, __n128 a4)
{
  v5 = result;
  v6 = *(a2 + 2);
  v7 = *a2;
  v8 = *(a2 + 1);
  if (v8 <= &v6[-v7])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v12 = *(a2 + 3);
    if (v12)
    {
      if (v8)
      {
        (*(*v12 + 16))(v12);
        v7 = *a2;
        v8 = *(a2 + 1);
        goto LABEL_11;
      }
    }

    else
    {
      v8 = 0;
    }

    v7 = 0;
LABEL_11:
    *a2 = 0;
    *(a2 + 1) = 0;
    v13 = *(a2 + 3);
    if (v13)
    {
      if (v8)
      {
        (*(*v13 + 16))(v13, v7);
        v7 = *a2;
        v8 = *(a2 + 1);
        goto LABEL_14;
      }
    }

    else
    {
      v8 = 0;
    }

    v7 = 0;
LABEL_14:
    *a2 = 0;
    *(a2 + 1) = 0;
    v14 = *(a2 + 3);
    if (v14 && v8)
    {
      (*(*v14 + 16))(v14, v7);
    }

    goto LABEL_15;
  }

  *(a2 + 2) = v6 + 1;
  if (!v6)
  {
    goto LABEL_11;
  }

  v9 = *v6;
  if (v9 >= 2)
  {
    goto LABEL_14;
  }

  if (!v9)
  {
    *result = 0;
    result[16] = 0;
    result[24] = 1;
    return result;
  }

  IPC::Decoder::decode<WTF::Vector<std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(&v17, a2, a3, a4);
  if (v19 == 1)
  {
    *v5 = v17;
    v11 = v18;
    v17 = 0;
    v18 = 0;
    *(v5 + 1) = v11;
    v5[16] = 1;
    result = WTF::Vector<std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v17, v10);
    v5[24] = 1;
    return result;
  }

LABEL_15:
  *v5 = 0;
  v5[24] = 0;
  v15 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result && v15)
  {
    v16 = *(*result + 16);

    return v16();
  }

  return result;
}

uint64_t IPC::Decoder::decode<WTF::Vector<std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(uint64_t a1, IPC::Decoder *a2, double a3, __n128 a4)
{
  result = IPC::VectorArgumentCoder<false,std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a2, a1, a4);
  if ((*(a1 + 16) & 1) == 0)
  {
    v7 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result && v7 != 0)
    {
      v9 = *(*result + 16);

      return v9();
    }
  }

  return result;
}

void IPC::Decoder::decode<std::optional<std::pair<WebCore::CDMMessageType,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>>>(uint64_t a1, uint64_t *a2)
{
  v4 = a2[2];
  v5 = *a2;
  v6 = a2[1];
  if (v6 <= &v4[-v5])
  {
    *a2 = 0;
    a2[1] = 0;
    v9 = a2[3];
    if (v9)
    {
      if (v6)
      {
        (*(*v9 + 16))(v9);
        v5 = *a2;
        v6 = a2[1];
        goto LABEL_13;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
    goto LABEL_13;
  }

  a2[2] = (v4 + 1);
  if (v4)
  {
    LODWORD(v4) = *v4;
    if (v4 >= 2)
    {
      goto LABEL_19;
    }

    if (!v4)
    {
      *a1 = 0;
      goto LABEL_9;
    }

    v7 = IPC::Decoder::decode<WebKit::AuthenticationChallengeDisposition>(a2);
    if ((v7 & 0x100) != 0)
    {
      v8 = v7;
      IPC::Decoder::decode<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>(a2, &v15);
      if (v16)
      {
        v4 = v15;
        *a1 = v8;
        *(a1 + 8) = v4;
        LOBYTE(v4) = 1;
LABEL_9:
        *(a1 + 16) = v4;
        *(a1 + 24) = 1;
        return;
      }
    }

    goto LABEL_18;
  }

LABEL_13:
  *a2 = 0;
  a2[1] = 0;
  v10 = a2[3];
  if (!v10)
  {
    v6 = 0;
LABEL_15:
    v5 = 0;
    goto LABEL_19;
  }

  if (!v6)
  {
    goto LABEL_15;
  }

  (*(*v10 + 16))(v10, v5);
LABEL_18:
  v5 = *a2;
  v6 = a2[1];
LABEL_19:
  *a2 = 0;
  a2[1] = 0;
  v11 = a2[3];
  if (v11 && v6)
  {
    (*(*v11 + 16))(v11, v5);
  }

  *a1 = 0;
  *(a1 + 24) = 0;
  v12 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v13 = a2[3];
  if (v13 && v12)
  {
    v14 = *(*v13 + 16);

    v14();
  }
}

uint64_t _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3ELm4EEEEJbNS_8optionalIN3WTF6VectorINS_4pairINS4_3RefIN7WebCore12SharedBufferENS4_12RawPtrTraitsIS9_EENS4_21DefaultRefDerefTraitsIS9_EEEENS8_12CDMKeyStatusEEELm0ENS4_15CrashOnOverflowELm16ENS4_10FastMallocEEEEENS3_IdEENS3_INS6_INS8_14CDMMessageTypeESE_EEEEbEEC2B8sn200100IJLm0ELm1ELm2ELm3ELm4EEJbSK_SL_SO_bEJEJEJbSK_SL_SO_bEEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSS_IJDpT2_EEEDpOT3_(uint64_t a1, char a2, uint64_t a3, _OWORD *a4, uint64_t a5, _BYTE *a6)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  v10 = (a1 + 8);
  *(a1 + 24) = 0;
  if (*(a3 + 16) == 1)
  {
    *v10 = 0;
    v10[1] = 0;
    WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(v10, a3);
    *(a1 + 24) = 1;
  }

  *(a1 + 32) = *a4;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  if (*(a5 + 16) == 1)
  {
    *(a1 + 48) = *a5;
    v11 = *(a5 + 8);
    *(a5 + 8) = 0;
    *(a1 + 56) = v11;
    *(a1 + 64) = 1;
  }

  *(a1 + 72) = *a6;
  return a1;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteCDMInstanceSessionProxy::LoadSession,WebKit::RemoteCDMInstanceSession::loadSession(WebCore::CDMSessionType,WTF::String const&,WTF::String const&,WTF::CompletionHandler<void ()(std::optional<WTF::Vector<std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&,std::optional<double> &&,std::optional<std::pair<WebCore::CDMMessageType,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>> &&,WebCore::CDMInstanceSession::SuccessValue,WebCore::CDMInstanceSessionLoadFailure)> &&)::$_0>(WebKit::RemoteCDMInstanceSession::loadSession(WebCore::CDMSessionType,WTF::String const&,WTF::String const&,WTF::CompletionHandler<void ()(std::optional<WTF::Vector<std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&,std::optional<double> &&,std::optional<std::pair<WebCore::CDMMessageType,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>> &&,WebCore::CDMInstanceSession::SuccessValue,WebCore::CDMInstanceSessionLoadFailure)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(std::optional<WTF::Vector<std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&,std::optional<double> &&,std::optional<std::pair<WebCore::CDMMessageType,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>> &&,WebCore::CDMInstanceSession::SuccessValue,WebCore::CDMInstanceSessionLoadFailure)>,WTF::CompletionHandler<void ()(std::optional<WTF::Vector<std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&,std::optional<double> &&,std::optional<std::pair<WebCore::CDMMessageType,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>> &&,WebCore::CDMInstanceSession::SuccessValue,WebCore::CDMInstanceSessionLoadFailure)> &&)#1},void,WTF::CompletionHandler<void ()(std::optional<WTF::Vector<std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&,std::optional<double> &&,std::optional<std::pair<WebCore::CDMMessageType,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>> &&,WebCore::CDMInstanceSession::SuccessValue,WebCore::CDMInstanceSessionLoadFailure)>,WTF::CompletionHandler<void ()(std::optional<WTF::Vector<std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&,std::optional<double> &&,std::optional<std::pair<WebCore::CDMMessageType,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>> &&,WebCore::CDMInstanceSession::SuccessValue,WebCore::CDMInstanceSessionLoadFailure)> &&>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1128610;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteCDMInstanceSessionProxy::LoadSession,WebKit::RemoteCDMInstanceSession::loadSession(WebCore::CDMSessionType,WTF::String const&,WTF::String const&,WTF::CompletionHandler<void ()(std::optional<WTF::Vector<std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&,std::optional<double> &&,std::optional<std::pair<WebCore::CDMMessageType,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>> &&,WebCore::CDMInstanceSession::SuccessValue,WebCore::CDMInstanceSessionLoadFailure)> &&)::$_0>(WebKit::RemoteCDMInstanceSession::loadSession(WebCore::CDMSessionType,WTF::String const&,WTF::String const&,WTF::CompletionHandler<void ()(std::optional<WTF::Vector<std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&,std::optional<double> &&,std::optional<std::pair<WebCore::CDMMessageType,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>> &&,WebCore::CDMInstanceSession::SuccessValue,WebCore::CDMInstanceSessionLoadFailure)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(std::optional<WTF::Vector<std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&,std::optional<double> &&,std::optional<std::pair<WebCore::CDMMessageType,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>> &&,WebCore::CDMInstanceSession::SuccessValue,WebCore::CDMInstanceSessionLoadFailure)>,WTF::CompletionHandler<void ()(std::optional<WTF::Vector<std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&,std::optional<double> &&,std::optional<std::pair<WebCore::CDMMessageType,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>> &&,WebCore::CDMInstanceSession::SuccessValue,WebCore::CDMInstanceSessionLoadFailure)> &&)#1},void,WTF::CompletionHandler<void ()(std::optional<WTF::Vector<std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&,std::optional<double> &&,std::optional<std::pair<WebCore::CDMMessageType,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>> &&,WebCore::CDMInstanceSession::SuccessValue,WebCore::CDMInstanceSessionLoadFailure)>,WTF::CompletionHandler<void ()(std::optional<WTF::Vector<std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&,std::optional<double> &&,std::optional<std::pair<WebCore::CDMMessageType,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>> &&,WebCore::CDMInstanceSession::SuccessValue,WebCore::CDMInstanceSessionLoadFailure)> &&>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1128610;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

unsigned int *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteCDMInstanceSessionProxy::LoadSession,WebKit::RemoteCDMInstanceSession::loadSession(WebCore::CDMSessionType,WTF::String const&,WTF::String const&,WTF::CompletionHandler<void ()(std::optional<WTF::Vector<std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&,std::optional<double> &&,std::optional<std::pair<WebCore::CDMMessageType,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>> &&,WebCore::CDMInstanceSession::SuccessValue,WebCore::CDMInstanceSessionLoadFailure)> &&)::$_0>(WebKit::RemoteCDMInstanceSession::loadSession(WebCore::CDMSessionType,WTF::String const&,WTF::String const&,WTF::CompletionHandler<void ()(std::optional<WTF::Vector<std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&,std::optional<double> &&,std::optional<std::pair<WebCore::CDMMessageType,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>> &&,WebCore::CDMInstanceSession::SuccessValue,WebCore::CDMInstanceSessionLoadFailure)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(std::optional<WTF::Vector<std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&,std::optional<double> &&,std::optional<std::pair<WebCore::CDMMessageType,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>> &&,WebCore::CDMInstanceSession::SuccessValue,WebCore::CDMInstanceSessionLoadFailure)>,WTF::CompletionHandler<void ()(std::optional<WTF::Vector<std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&,std::optional<double> &&,std::optional<std::pair<WebCore::CDMMessageType,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>> &&,WebCore::CDMInstanceSession::SuccessValue,WebCore::CDMInstanceSessionLoadFailure)> &&)#1},void,WTF::CompletionHandler<void ()(std::optional<WTF::Vector<std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&,std::optional<double> &&,std::optional<std::pair<WebCore::CDMMessageType,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>> &&,WebCore::CDMInstanceSession::SuccessValue,WebCore::CDMInstanceSessionLoadFailure)>,WTF::CompletionHandler<void ()(std::optional<WTF::Vector<std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&,std::optional<double> &&,std::optional<std::pair<WebCore::CDMMessageType,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>> &&,WebCore::CDMInstanceSession::SuccessValue,WebCore::CDMInstanceSessionLoadFailure)> &&>::call(uint64_t a1, double a2, __n128 a3, uint64_t a4, IPC::Decoder *a5)
{
  if (!a5 || !*a5)
  {
    v14 = (a1 + 8);

    return IPC::Connection::cancelReply<Messages::RemoteCDMInstanceSessionProxy::LoadSession,WebKit::RemoteCDMInstanceSession::loadSession(WebCore::CDMSessionType,WTF::String const&,WTF::String const&,WTF::CompletionHandler<void ()(std::optional<WTF::Vector<std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&,std::optional<double> &&,std::optional<std::pair<WebCore::CDMMessageType,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>> &&,WebCore::CDMInstanceSession::SuccessValue,WebCore::CDMInstanceSessionLoadFailure)> &&)::$_0>(v14);
  }

  IPC::Decoder::decode<std::optional<WTF::Vector<std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(v39, a5, a2, a3);
  if (v40 != 1)
  {
    v31[0] = 0;
    v38 = 0;
    goto LABEL_45;
  }

  IPC::ArgumentCoder<std::optional<double>,void>::decode<IPC::Decoder>(a5, &v41);
  if ((v42 & 1) == 0)
  {
    v8 = *a5;
    v9 = *(a5 + 1);
    *a5 = 0;
    *(a5 + 1) = 0;
    v7 = *(a5 + 3);
    if (v7)
    {
      goto LABEL_23;
    }

LABEL_21:
    v31[0] = 0;
    v38 = 0;
    goto LABEL_43;
  }

  while (1)
  {
    IPC::Decoder::decode<std::optional<std::pair<WebCore::CDMMessageType,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>>>(v43, a5);
    if (v46 != 1)
    {
      v31[0] = 0;
      v38 = 0;
      goto LABEL_42;
    }

    v9 = *(a5 + 1);
    v10 = *(a5 + 2);
    v8 = *a5;
    if (v9 <= &v10[-*a5])
    {
      *a5 = 0;
      *(a5 + 1) = 0;
      v16 = *(a5 + 3);
      if (v16)
      {
        if (v9)
        {
          (*(*v16 + 16))(v16);
          v9 = *(a5 + 1);
        }
      }

      else
      {
        v9 = 0;
      }

LABEL_28:
      *a5 = 0;
      *(a5 + 1) = 0;
      v17 = *(a5 + 3);
      if (v17)
      {
        if (v9)
        {
          (*(*v17 + 16))(v17);
LABEL_64:
          v8 = *a5;
          v9 = *(a5 + 1);
LABEL_36:
          *a5 = 0;
          *(a5 + 1) = 0;
          v22 = *(a5 + 3);
          if (v22 && v9)
          {
            (*(*v22 + 16))(v22, v8);
          }

          v31[0] = 0;
          v38 = 0;
          goto LABEL_38;
        }

LABEL_35:
        v8 = 0;
        goto LABEL_36;
      }

LABEL_34:
      v9 = 0;
      goto LABEL_35;
    }

    v11 = v10 + 1;
    *(a5 + 2) = v10 + 1;
    if (!v10)
    {
      goto LABEL_28;
    }

    v12 = *v10;
    if (v12 >= 2)
    {
      goto LABEL_36;
    }

    v47 = v12 | 0x100;
    if (v9 <= v11 - v8)
    {
      v18 = 0;
      v19 = 0;
      *a5 = 0;
      *(a5 + 1) = 0;
      v20 = *(a5 + 3);
      if (v20)
      {
        (*(*v20 + 16))(v20);
        v19 = *a5;
        v18 = *(a5 + 1);
      }

LABEL_33:
      *a5 = 0;
      *(a5 + 1) = 0;
      v21 = *(a5 + 3);
      if (v21 && v18)
      {
        (*(*v21 + 16))(v21, v19, v18);
        goto LABEL_64;
      }

      goto LABEL_34;
    }

    *(a5 + 2) = v10 + 2;
    if (v10 == -1)
    {
      v18 = v9;
      v19 = v8;
      goto LABEL_33;
    }

    v13 = *v11;
    if (v13 >= 5)
    {
      goto LABEL_36;
    }

    v48 = v13 | 0x100;
    if (v42)
    {
      break;
    }

    __break(1u);
LABEL_23:
    if (v9)
    {
      (*(*v7 + 16))(v7, v8);
      if (v42)
      {
        continue;
      }
    }

    goto LABEL_21;
  }

  _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3ELm4EEEEJNS_8optionalIN3WTF6VectorINS_4pairINS4_3RefIN7WebCore12SharedBufferENS4_12RawPtrTraitsIS9_EENS4_21DefaultRefDerefTraitsIS9_EEEENS8_12CDMKeyStatusEEELm0ENS4_15CrashOnOverflowELm16ENS4_10FastMallocEEEEENS3_IdEENS3_INS6_INS8_14CDMMessageTypeESE_EEEEbNS8_29CDMInstanceSessionLoadFailureEEEC2B8sn200100IJLm0ELm1ELm2ELm3ELm4EEJSK_SL_SO_bSP_EJEJEJSK_SL_SO_bSP_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENST_IJDpT2_EEEDpOT3_(v31, v39, &v41, v43, &v47, &v48);
  v38 = 1;
  if ((v46 & 1) == 0)
  {
    goto LABEL_42;
  }

LABEL_38:
  if (v45 == 1)
  {
    v23 = v44;
    v44 = 0;
    if (v23)
    {
      if (atomic_fetch_add(v23 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v23 + 2);
        (*(*v23 + 8))(v23);
      }
    }
  }

LABEL_42:
  if (v40)
  {
LABEL_43:
    if (v39[16] == 1)
    {
      WTF::Vector<std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v39, v8);
    }
  }

LABEL_45:
  if ((v38 & 1) == 0)
  {
    v28 = *a5;
    v29 = *(a5 + 1);
    *a5 = 0;
    *(a5 + 1) = 0;
    v30 = *(a5 + 3);
    if (!v30)
    {
      return IPC::Connection::cancelReply<Messages::RemoteCDMInstanceSessionProxy::LoadSession,WebKit::RemoteCDMInstanceSession::loadSession(WebCore::CDMSessionType,WTF::String const&,WTF::String const&,WTF::CompletionHandler<void ()(std::optional<WTF::Vector<std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&,std::optional<double> &&,std::optional<std::pair<WebCore::CDMMessageType,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>> &&,WebCore::CDMInstanceSession::SuccessValue,WebCore::CDMInstanceSessionLoadFailure)> &&)::$_0>((a1 + 8));
    }

    if (!v29)
    {
      return IPC::Connection::cancelReply<Messages::RemoteCDMInstanceSessionProxy::LoadSession,WebKit::RemoteCDMInstanceSession::loadSession(WebCore::CDMSessionType,WTF::String const&,WTF::String const&,WTF::CompletionHandler<void ()(std::optional<WTF::Vector<std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&,std::optional<double> &&,std::optional<std::pair<WebCore::CDMMessageType,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>> &&,WebCore::CDMInstanceSession::SuccessValue,WebCore::CDMInstanceSessionLoadFailure)> &&)::$_0>((a1 + 8));
    }

    (*(*v30 + 16))(v30, v28);
    if ((v38 & 1) == 0)
    {
      return IPC::Connection::cancelReply<Messages::RemoteCDMInstanceSessionProxy::LoadSession,WebKit::RemoteCDMInstanceSession::loadSession(WebCore::CDMSessionType,WTF::String const&,WTF::String const&,WTF::CompletionHandler<void ()(std::optional<WTF::Vector<std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&,std::optional<double> &&,std::optional<std::pair<WebCore::CDMMessageType,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>> &&,WebCore::CDMInstanceSession::SuccessValue,WebCore::CDMInstanceSessionLoadFailure)> &&)::$_0>((a1 + 8));
    }
  }

  v24 = v36;
  v25 = v37;
  v26 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v26 + 16))(v26, v31, &v32, &v33, v24, v25);
  result = (*(*v26 + 8))(v26);
  if (v38)
  {
    if (v35 == 1)
    {
      result = v34;
      v34 = 0;
      if (result)
      {
        if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, result + 2);
          result = (*(*result + 8))(result);
        }
      }
    }

    if (v31[16] == 1)
    {
      return WTF::Vector<std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v31, v27);
    }
  }

  return result;
}

unsigned int *IPC::Connection::cancelReply<Messages::RemoteCDMInstanceSessionProxy::LoadSession,WebKit::RemoteCDMInstanceSession::loadSession(WebCore::CDMSessionType,WTF::String const&,WTF::String const&,WTF::CompletionHandler<void ()(std::optional<WTF::Vector<std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&,std::optional<double> &&,std::optional<std::pair<WebCore::CDMMessageType,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>> &&,WebCore::CDMInstanceSession::SuccessValue,WebCore::CDMInstanceSessionLoadFailure)> &&)::$_0>(uint64_t *a1)
{
  v21[0] = 0;
  v22 = 0;
  *&v20 = 0;
  BYTE8(v20) = 0;
  v17[0] = 0;
  v19 = 0;
  v16 = 0;
  _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3ELm4EEEEJNS_8optionalIN3WTF6VectorINS_4pairINS4_3RefIN7WebCore12SharedBufferENS4_12RawPtrTraitsIS9_EENS4_21DefaultRefDerefTraitsIS9_EEEENS8_12CDMKeyStatusEEELm0ENS4_15CrashOnOverflowELm16ENS4_10FastMallocEEEEENS3_IdEENS3_INS6_INS8_14CDMMessageTypeESE_EEEEbNS8_29CDMInstanceSessionLoadFailureEEEC2B8sn200100IJLm0ELm1ELm2ELm3ELm4EEJSK_SL_SO_bSP_EJEJEJSK_SL_SO_bSP_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENST_IJDpT2_EEEDpOT3_(v9, v21, &v20, v17, &v16 + 1, &v16);
  if (v19 == 1)
  {
    v3 = v18;
    v18 = 0;
    if (v3)
    {
      if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v3 + 2);
        (*(*v3 + 8))(v3);
      }
    }
  }

  if (v22 == 1)
  {
    WTF::Vector<std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v21, v2);
  }

  v4 = v14;
  v5 = v15;
  v6 = *a1;
  *a1 = 0;
  (*(*v6 + 16))(v6, v9, &v10, &v11, v4, v5);
  result = (*(*v6 + 8))(v6);
  if (v13 == 1)
  {
    result = v12;
    v12 = 0;
    if (result)
    {
      if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, result + 2);
        result = (*(*result + 8))(result);
      }
    }
  }

  if (v9[16] == 1)
  {
    return WTF::Vector<std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v9, v8);
  }

  return result;
}

uint64_t _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3ELm4EEEEJNS_8optionalIN3WTF6VectorINS_4pairINS4_3RefIN7WebCore12SharedBufferENS4_12RawPtrTraitsIS9_EENS4_21DefaultRefDerefTraitsIS9_EEEENS8_12CDMKeyStatusEEELm0ENS4_15CrashOnOverflowELm16ENS4_10FastMallocEEEEENS3_IdEENS3_INS6_INS8_14CDMMessageTypeESE_EEEEbNS8_29CDMInstanceSessionLoadFailureEEEC2B8sn200100IJLm0ELm1ELm2ELm3ELm4EEJSK_SL_SO_bSP_EJEJEJSK_SL_SO_bSP_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENST_IJDpT2_EEEDpOT3_(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, _BYTE *a5, _BYTE *a6)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  if (*(a2 + 16) == 1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1, a2);
    *(a1 + 16) = 1;
  }

  *(a1 + 24) = *a3;
  *(a1 + 40) = 0;
  *(a1 + 56) = 0;
  if (*(a4 + 16) == 1)
  {
    *(a1 + 40) = *a4;
    v11 = *(a4 + 8);
    *(a4 + 8) = 0;
    *(a1 + 48) = v11;
    *(a1 + 56) = 1;
  }

  *(a1 + 64) = *a5;
  *(a1 + 65) = *a6;
  return a1;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteCDMInstanceSessionProxy::CloseSession,WebKit::RemoteCDMInstanceSession::closeSession(WTF::String const&,WTF::CompletionHandler<void ()(void)> &&)::$_0>(WebKit::RemoteCDMInstanceSession::closeSession(WTF::String const&,WTF::CompletionHandler<void ()(void)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::RemoteCDMInstanceSession::closeSession(WTF::String const&,WTF::CompletionHandler<void ()(void)> &&)::$_0,IPC::Decoder)#1},void,WebKit::RemoteCDMInstanceSession::closeSession(WTF::String const&,WTF::CompletionHandler<void ()(void)> &&)::$_0,IPC::Decoder>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1128638;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteCDMInstanceSessionProxy::CloseSession,WebKit::RemoteCDMInstanceSession::closeSession(WTF::String const&,WTF::CompletionHandler<void ()(void)> &&)::$_0>(WebKit::RemoteCDMInstanceSession::closeSession(WTF::String const&,WTF::CompletionHandler<void ()(void)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::RemoteCDMInstanceSession::closeSession(WTF::String const&,WTF::CompletionHandler<void ()(void)> &&)::$_0,IPC::Decoder)#1},void,WebKit::RemoteCDMInstanceSession::closeSession(WTF::String const&,WTF::CompletionHandler<void ()(void)> &&)::$_0,IPC::Decoder>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1128638;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteCDMInstanceSessionProxy::CloseSession,WebKit::RemoteCDMInstanceSession::closeSession(WTF::String const&,WTF::CompletionHandler<void ()(void)> &&)::$_0>(WebKit::RemoteCDMInstanceSession::closeSession(WTF::String const&,WTF::CompletionHandler<void ()(void)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::RemoteCDMInstanceSession::closeSession(WTF::String const&,WTF::CompletionHandler<void ()(void)> &&)::$_0,IPC::Decoder)#1},void,WebKit::RemoteCDMInstanceSession::closeSession(WTF::String const&,WTF::CompletionHandler<void ()(void)> &&)::$_0,IPC::Decoder>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteCDMInstanceSessionProxy::RemoveSessionData,WebKit::RemoteCDMInstanceSession::removeSessionData(WTF::String const&,WebCore::CDMSessionType,WTF::CompletionHandler<void ()(WTF::Vector<std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&,WebCore::CDMInstanceSession::SuccessValue)> &&)::$_0>(WebKit::RemoteCDMInstanceSession::removeSessionData(WTF::String const&,WebCore::CDMSessionType,WTF::CompletionHandler<void ()(WTF::Vector<std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&,WebCore::CDMInstanceSession::SuccessValue)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WTF::Vector<std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&,WebCore::CDMInstanceSession::SuccessValue)> &,WebKit::RemoteCDMInstanceSession::removeSessionData(WTF::String const&,WebCore::CDMSessionType,WTF::CompletionHandler<void ()(WTF::Vector<std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&,WebCore::CDMInstanceSession::SuccessValue)> &&)::$_0)#1},void,WTF::CompletionHandler<void ()(WTF::Vector<std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&,WebCore::CDMInstanceSession::SuccessValue)> &,WebKit::RemoteCDMInstanceSession::removeSessionData(WTF::String const&,WebCore::CDMSessionType,WTF::CompletionHandler<void ()(WTF::Vector<std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&,WebCore::CDMInstanceSession::SuccessValue)> &&)::$_0>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1128660;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteCDMInstanceSessionProxy::RemoveSessionData,WebKit::RemoteCDMInstanceSession::removeSessionData(WTF::String const&,WebCore::CDMSessionType,WTF::CompletionHandler<void ()(WTF::Vector<std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&,WebCore::CDMInstanceSession::SuccessValue)> &&)::$_0>(WebKit::RemoteCDMInstanceSession::removeSessionData(WTF::String const&,WebCore::CDMSessionType,WTF::CompletionHandler<void ()(WTF::Vector<std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&,WebCore::CDMInstanceSession::SuccessValue)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WTF::Vector<std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&,WebCore::CDMInstanceSession::SuccessValue)> &,WebKit::RemoteCDMInstanceSession::removeSessionData(WTF::String const&,WebCore::CDMSessionType,WTF::CompletionHandler<void ()(WTF::Vector<std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&,WebCore::CDMInstanceSession::SuccessValue)> &&)::$_0)#1},void,WTF::CompletionHandler<void ()(WTF::Vector<std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&,WebCore::CDMInstanceSession::SuccessValue)> &,WebKit::RemoteCDMInstanceSession::removeSessionData(WTF::String const&,WebCore::CDMSessionType,WTF::CompletionHandler<void ()(WTF::Vector<std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&,WebCore::CDMInstanceSession::SuccessValue)> &&)::$_0>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1128660;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteCDMInstanceSessionProxy::RemoveSessionData,WebKit::RemoteCDMInstanceSession::removeSessionData(WTF::String const&,WebCore::CDMSessionType,WTF::CompletionHandler<void ()(WTF::Vector<std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&,WebCore::CDMInstanceSession::SuccessValue)> &&)::$_0>(WebKit::RemoteCDMInstanceSession::removeSessionData(WTF::String const&,WebCore::CDMSessionType,WTF::CompletionHandler<void ()(WTF::Vector<std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&,WebCore::CDMInstanceSession::SuccessValue)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WTF::Vector<std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&,WebCore::CDMInstanceSession::SuccessValue)> &,WebKit::RemoteCDMInstanceSession::removeSessionData(WTF::String const&,WebCore::CDMSessionType,WTF::CompletionHandler<void ()(WTF::Vector<std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&,WebCore::CDMInstanceSession::SuccessValue)> &&)::$_0)#1},void,WTF::CompletionHandler<void ()(WTF::Vector<std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&,WebCore::CDMInstanceSession::SuccessValue)> &,WebKit::RemoteCDMInstanceSession::removeSessionData(WTF::String const&,WebCore::CDMSessionType,WTF::CompletionHandler<void ()(WTF::Vector<std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&,WebCore::CDMInstanceSession::SuccessValue)> &&)::$_0>::call(uint64_t a1, void *a2, IPC::Decoder *a3, __n128 a4, __n128 a5)
{
  if (a3 && *a3)
  {
    IPC::Decoder::decode<WTF::Vector<std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(&v27, a3, a4.n128_f64[0], a5);
    if (v29 != 1)
    {
      LOBYTE(v23[0]) = 0;
      v26 = 0;
      goto LABEL_17;
    }

    IPC::Decoder::decode<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>(a3, &v30);
    if (v31 != 1)
    {
      LOBYTE(v23[0]) = 0;
      v26 = 0;
LABEL_15:
      if (v29)
      {
        WTF::Vector<std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v27, v9);
      }

LABEL_17:
      if (v26)
      {
        v15 = v25;
        v16 = *(a1 + 8);
        *(a1 + 8) = 0;
        (*(*v16 + 16))(v16, v23, &v24, v15);
        result = (*(*v16 + 8))(v16);
        if (v26)
        {
          v18 = v24;
          v24 = 0;
          if (v18)
          {
            if (atomic_fetch_add(v18 + 2, 0xFFFFFFFF) == 1)
            {
              atomic_store(1u, v18 + 2);
              (*(*v18 + 8))(v18);
            }
          }

          return WTF::Vector<std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v23, v17);
        }

        return result;
      }

      v9 = *a3;
      v10 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v8 = *(a3 + 3);
      if (!v8)
      {
        return IPC::Connection::cancelReply<Messages::RemoteCDMInstanceSessionProxy::RemoveSessionData,WebKit::RemoteCDMInstanceSession::removeSessionData(WTF::String const&,WebCore::CDMSessionType,WTF::CompletionHandler<void ()(WTF::Vector<std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&,WebCore::CDMInstanceSession::SuccessValue)> &&)::$_0>((a1 + 8), v9, v7);
      }

LABEL_27:
      if (v10)
      {
        (*(*v8 + 16))(v8, v9);
      }

      return IPC::Connection::cancelReply<Messages::RemoteCDMInstanceSessionProxy::RemoveSessionData,WebKit::RemoteCDMInstanceSession::removeSessionData(WTF::String const&,WebCore::CDMSessionType,WTF::CompletionHandler<void ()(WTF::Vector<std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&,WebCore::CDMInstanceSession::SuccessValue)> &&)::$_0>((a1 + 8), v9, v7);
    }

    v10 = *(a3 + 1);
    v11 = *(a3 + 2);
    v9 = *a3;
    if (v10 <= &v11[-*a3])
    {
      *a3 = 0;
      *(a3 + 1) = 0;
      v19 = *(a3 + 3);
      if (v19)
      {
        if (v10)
        {
          (*(*v19 + 16))(v19);
          v10 = *(a3 + 1);
        }
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      *(a3 + 2) = v11 + 1;
      if (v11)
      {
        v12 = *v11;
        if (v12 < 2)
        {
          if ((v29 & 1) == 0)
          {
            __break(1u);
            goto LABEL_27;
          }

          v23[0] = v27;
          v7.n128_u64[0] = v28;
          v27 = 0;
          v28 = 0;
          v23[1] = v7.n128_u64[0];
          v24 = v30;
          v25 = v12;
          v26 = 1;
          goto LABEL_15;
        }

        goto LABEL_34;
      }
    }

    *a3 = 0;
    *(a3 + 1) = 0;
    v20 = *(a3 + 3);
    if (v20)
    {
      if (v10)
      {
        (*(*v20 + 16))(v20);
        v9 = *a3;
        v10 = *(a3 + 1);
LABEL_34:
        *a3 = 0;
        *(a3 + 1) = 0;
        v21 = *(a3 + 3);
        if (v21 && v10)
        {
          (*(*v21 + 16))(v21, v9);
        }

        LOBYTE(v23[0]) = 0;
        v26 = 0;
        if (v31)
        {
          v22 = v30;
          v30 = 0;
          if (v22)
          {
            if (atomic_fetch_add(v22 + 2, 0xFFFFFFFF) == 1)
            {
              atomic_store(1u, v22 + 2);
              (*(*v22 + 8))(v22, v9, v10);
            }
          }
        }

        goto LABEL_15;
      }
    }

    else
    {
      v10 = 0;
    }

    v9 = 0;
    goto LABEL_34;
  }

  v13 = (a1 + 8);

  return IPC::Connection::cancelReply<Messages::RemoteCDMInstanceSessionProxy::RemoveSessionData,WebKit::RemoteCDMInstanceSession::removeSessionData(WTF::String const&,WebCore::CDMSessionType,WTF::CompletionHandler<void ()(WTF::Vector<std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&,WebCore::CDMInstanceSession::SuccessValue)> &&)::$_0>(v13, a2, a4);
}

uint64_t IPC::Connection::cancelReply<Messages::RemoteCDMInstanceSessionProxy::RemoveSessionData,WebKit::RemoteCDMInstanceSession::removeSessionData(WTF::String const&,WebCore::CDMSessionType,WTF::CompletionHandler<void ()(WTF::Vector<std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&,WebCore::CDMInstanceSession::SuccessValue)> &&)::$_0>(uint64_t *a1, void *a2, __n128 a3)
{
  a3.n128_u64[0] = 0;
  v11 = a3;
  v8 = 0;
  v9 = 0u;
  v10 = 0;
  WTF::Vector<std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v11, a2);
  v4 = *a1;
  *a1 = 0;
  (*(*v4 + 16))(v4, &v8, &v9 + 8, 0);
  (*(*v4 + 8))(v4);
  v6 = *(&v9 + 1);
  *(&v9 + 1) = 0;
  if (v6 && atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v6 + 2);
    (*(*v6 + 8))(v6);
  }

  return WTF::Vector<std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v8, v5);
}

uint64_t IPC::Connection::send<Messages::RemoteLegacyCDMProxy::SetPlayerId>(uint64_t *a1, void *a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = IPC::Encoder::operator new(0x238, a2);
  *v10 = 1388;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 1) = a3;
  *(v10 + 68) = 0;
  *(v10 + 70) = 0;
  *(v10 + 69) = 0;
  IPC::Encoder::encodeHeader(v10);
  v17 = v10;
  IPC::ArgumentCoder<std::optional<unsigned long long>,void>::encode<IPC::Encoder,std::optional<unsigned long long>>(v10, *a2);
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

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteLegacyCDMFactory::registerFactory(void)::$_0,std::unique_ptr<WebCore::CDMPrivateInterface> const,WebCore::LegacyCDM &>::~CallableWrapper(uint64_t result)
{
  v1 = *(result + 8);
  *result = &unk_1F1128688;
  *(result + 8) = 0;
  if (v1)
  {
    if (!*(*(v1 + 16) + 8))
    {
      result = 92;
      __break(0xC471u);
    }
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteLegacyCDMFactory::registerFactory(void)::$_0,std::unique_ptr<WebCore::CDMPrivateInterface> const,WebCore::LegacyCDM &>::~CallableWrapper(WTF *a1, void *a2)
{
  v2 = *(a1 + 1);
  *a1 = &unk_1F1128688;
  *(a1 + 1) = 0;
  if (!v2 || *(*(v2 + 16) + 8))
  {
    return WTF::fastFree(a1, a2);
  }

  result = 92;
  __break(0xC471u);
  return result;
}

IPC::Encoder *WTF::Detail::CallableWrapper<WebKit::RemoteLegacyCDMFactory::registerFactory(void)::$_0,std::unique_ptr<WebCore::CDMPrivateInterface> const,WebCore::LegacyCDM &>::call@<X0>(WebCore::LegacyCDM *this@<X1>, uint64_t a2@<X0>, void *a3@<X8>)
{
  v5 = *(a2 + 8);
  LOBYTE(RemotePlayerId) = 0;
  v73 = 0;
  WebCore::LegacyCDM::mediaPlayer(v76, this);
  v7 = &dword_1EB01E000;
  if (v76[0])
  {
    {
      v8 = WebKit::WebProcess::singleton(void)::process;
    }

    else
    {
      v61 = WebKit::WebProcess::operator new(0x370, v6);
      v8 = WebKit::WebProcess::WebProcess(v61);
      WebKit::WebProcess::singleton(void)::process = v8;
    }

    WebKit::WebProcess::ensureGPUProcessConnection(v8);
    WebKit::GPUProcessConnection::protectedMediaPlayerManager(v9, &v74);
    v10 = v74;
    WebCore::MediaPlayer::protectedPlayerPrivate(&v71, v76[0]);
    RemotePlayerId = WebKit::RemoteMediaPlayerManager::findRemotePlayerId(v10, v71);
    v73 = v6;
    v11 = v71;
    v71 = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }

    if (v10)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::RemoteMediaPlayerManager,(WTF::DestructionThread)0>::deref(v10 + 1, v6);
    }

    v12 = v76[0];
    v76[0] = 0;
    if (v12)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(v12);
    }
  }

  {
    v13 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v60 = WebKit::WebProcess::operator new(0x370, v6);
    v13 = WebKit::WebProcess::WebProcess(v60);
    WebKit::WebProcess::singleton(void)::process = v13;
  }

  v14 = WebKit::WebProcess::ensureGPUProcessConnection(v13)[4];
  IPC::Connection::createSyncMessageEncoder(0x100A, 0, v76);
  v15 = v76[0];
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v76[0], this + 2);
  IPC::ArgumentCoder<std::optional<unsigned long long>,void>::encode<IPC::Encoder,std::optional<unsigned long long>>(v15, &RemotePlayerId);
  v16 = IPC::Connection::sendSyncMessage(v14, v76[1], v76, 0, &v74, INFINITY);
  if (v75)
  {
    if (v75 != 1)
    {
      mpark::throw_bad_variant_access(v16);
    }

    v18 = v74;
    v19 = 1;
    goto LABEL_28;
  }

  v18 = v74;
  v74 = 0;
  if (*(v18 + 50) == 3194)
  {
    v20 = 11;
    goto LABEL_17;
  }

  v23 = *(v18 + 8);
  v24 = *(v18 + 16);
  v17 = *v18;
  if (v23 <= &v24[-*v18])
  {
    *v18 = 0;
    *(v18 + 8) = 0;
    v62 = *(v18 + 24);
    if (v62)
    {
      if (v23)
      {
        (*(*v62 + 16))(v62);
        v23 = *(v18 + 8);
      }
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    *(v18 + 16) = v24 + 1;
    if (v24)
    {
      v25 = *v24;
      if (v25 >= 2)
      {
        goto LABEL_81;
      }

      if (!v25)
      {
        v15 = 0;
        LOBYTE(v7) = 0;
        v19 = 0;
        goto LABEL_25;
      }

      v26 = IPC::ArgumentCoder<WTF::ObjectIdentifierGeneric<WebCore::BackgroundFetchRecordIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,void>::decode(v18);
      if (v17)
      {
        v15 = v26;
        v19 = 0;
        LOBYTE(v7) = 1;
        goto LABEL_25;
      }

      goto LABEL_80;
    }
  }

  *v18 = 0;
  *(v18 + 8) = 0;
  v63 = *(v18 + 24);
  if (!v63)
  {
    v23 = 0;
LABEL_75:
    v17 = 0;
    goto LABEL_81;
  }

  if (!v23)
  {
    goto LABEL_75;
  }

  (*(*v63 + 16))(v63);
LABEL_80:
  v17 = *v18;
  v23 = *(v18 + 8);
LABEL_81:
  *v18 = 0;
  *(v18 + 8) = 0;
  v64 = *(v18 + 24);
  if (v64 && v23)
  {
    (*(*v64 + 16))(v64, v17);
  }

  v65 = *v18;
  v66 = *(v18 + 8);
  *v18 = 0;
  *(v18 + 8) = 0;
  v67 = *(v18 + 24);
  if (v67 && v66)
  {
    (*(*v67 + 16))(v67, v65);
    v68 = *v18;
    v69 = *(v18 + 8);
    v70 = *(v18 + 24);
    v20 = 14;
    *v18 = 0;
    *(v18 + 8) = 0;
    if (!v70 || !v69)
    {
      goto LABEL_17;
    }

    (*(*v70 + 16))(v70, v68);
  }

  v20 = 14;
LABEL_17:
  IPC::Decoder::~Decoder(v18);
  bmalloc::api::tzoneFree(v21, v22);
  v19 = 1;
  v18 = v20;
LABEL_25:
  if (!v75)
  {
    v27 = v74;
    v74 = 0;
    if (v27)
    {
      IPC::Decoder::~Decoder(v27);
      bmalloc::api::tzoneFree(v56, v57);
    }
  }

LABEL_28:
  result = v76[0];
  v76[0] = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v17);
    result = bmalloc::api::tzoneFree(v54, v55);
  }

  v29 = 0;
  if (v19)
  {
    v30 = 0;
  }

  else
  {
    v30 = v15;
  }

  if ((v7 & (v19 == 0)) == 1)
  {
    if (WebKit::RemoteLegacyCDM::s_heapRef)
    {
      NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::RemoteLegacyCDM::s_heapRef, v17);
    }

    else
    {
      NonCompact = WebKit::RemoteLegacyCDM::operatorNewSlow(0);
    }

    v29 = NonCompact;
    NonCompact[1] = 0;
    v32 = (NonCompact + 1);
    *NonCompact = &unk_1F11283D8;
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v5 + 8), v5);
    v33 = *(v5 + 8);
    atomic_fetch_add(v33, 1u);
    v29[2] = v33;
    v29[3] = v15;
    WebKit::RemoteLegacyCDM::ref(v29);
    if (v15 == -1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E29DDB0);
    }

    if (!v15)
    {
      __break(0xC471u);
      JUMPOUT(0x19E29DDD0);
    }

    v34 = *(v5 + 32);
    if (!v34)
    {
      WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::RemoteLegacyCDM,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::RemoteLegacyCDM,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::RemoteLegacyCDM,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::RemoteLegacyCDM,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand((v5 + 32));
      v34 = *(v5 + 32);
    }

    v35 = *(v34 - 8);
    v36 = (v15 + ~(v15 << 32)) ^ ((v15 + ~(v15 << 32)) >> 22);
    v37 = 9 * ((v36 + ~(v36 << 13)) ^ ((v36 + ~(v36 << 13)) >> 8));
    v38 = (v37 ^ (v37 >> 15)) + ~((v37 ^ (v37 >> 15)) << 27);
    v39 = v35 & ((v38 >> 31) ^ v38);
    v40 = (v34 + 16 * v39);
    v41 = *v40;
    if (*v40)
    {
      v42 = 0;
      v43 = 1;
      while (v41 != v30)
      {
        if (v41 == -1)
        {
          v42 = v40;
        }

        v39 = (v39 + v43) & v35;
        v40 = (v34 + 16 * v39);
        v41 = *v40;
        ++v43;
        if (!*v40)
        {
          if (v42)
          {
            *v42 = 0;
            v42[1] = 0;
            --*(*(v5 + 32) - 16);
            v40 = v42;
          }

          goto LABEL_48;
        }
      }

      WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(v32, v29);
      v50 = v29[1];
      atomic_fetch_add(v50, 1u);
      v51 = v40[1];
      v40[1] = v50;
      if (v51 && atomic_fetch_add(v51, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v51);
        WTF::fastFree(v51, v49);
      }

      goto LABEL_60;
    }

LABEL_48:
    *v40 = v30;
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(v32, v29);
    v45 = v29[1];
    atomic_fetch_add(v45, 1u);
    v46 = v40[1];
    v40[1] = v45;
    if (v46 && atomic_fetch_add(v46, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v46);
      WTF::fastFree(v46, v44);
    }

    v47 = *(v5 + 32);
    if (v47)
    {
      v48 = *(v47 - 12) + 1;
    }

    else
    {
      v48 = 1;
    }

    *(v47 - 12) = v48;
    v52 = (*(v47 - 16) + v48);
    v53 = *(v47 - 4);
    if (v53 > 0x400)
    {
      if (v53 > 2 * v52)
      {
        goto LABEL_60;
      }
    }

    else if (3 * v53 > 4 * v52)
    {
LABEL_60:
      result = WebKit::RemoteLegacyCDM::deref(v29);
      goto LABEL_61;
    }

    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::RemoteLegacyCDM,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::RemoteLegacyCDM,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::RemoteLegacyCDM,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::RemoteLegacyCDM,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand((v5 + 32));
    goto LABEL_60;
  }

LABEL_61:
  *a3 = v29;
  if (!v19)
  {
    if (v18)
    {
      IPC::Decoder::~Decoder(v18);
      return bmalloc::api::tzoneFree(v58, v59);
    }
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteLegacyCDMFactory::registerFactory(void)::$_1,BOOL,WTF::String const&>::~CallableWrapper(uint64_t result)
{
  v1 = *(result + 8);
  *result = &unk_1F11286B0;
  *(result + 8) = 0;
  if (v1)
  {
    if (!*(*(v1 + 16) + 8))
    {
      result = 92;
      __break(0xC471u);
    }
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteLegacyCDMFactory::registerFactory(void)::$_1,BOOL,WTF::String const&>::~CallableWrapper(WTF *a1, void *a2)
{
  v2 = *(a1 + 1);
  *a1 = &unk_1F11286B0;
  *(a1 + 1) = 0;
  if (!v2 || *(*(v2 + 16) + 8))
  {
    return WTF::fastFree(a1, a2);
  }

  result = 92;
  __break(0xC471u);
  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteLegacyCDMFactory::registerFactory(void)::$_1,BOOL,WTF::String const&>::call(uint64_t a1, const WTF::StringImpl **a2, const WTF::StringImpl *a3)
{
  v4 = *(a1 + 8);
  v5 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,BOOL>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,BOOL>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,BOOL,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<BOOL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,BOOL,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<BOOL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,(WTF::ShouldValidateKey)1,WTF::String>((v4 + 40), a2, a3);
  v7 = *(v4 + 40);
  if (v7)
  {
    v7 = (v7 + 16 * *(v7 - 1));
  }

  if (v7 == v5)
  {
    {
      v9 = WebKit::WebProcess::singleton(void)::process;
    }

    else
    {
      v18 = WebKit::WebProcess::operator new(0x370, v6);
      v9 = WebKit::WebProcess::WebProcess(v18);
      WebKit::WebProcess::singleton(void)::process = v9;
    }

    v10 = WebKit::WebProcess::ensureGPUProcessConnection(v9)[4];
    LOBYTE(v20) = 0;
    v21 = 0;
    v19[0] = a2;
    v19[1] = &v20;
    IPC::Connection::sendSync<Messages::RemoteLegacyCDMFactoryProxy::SupportsKeySystem>(&v22, v10, v19);
    if (v21 == 1)
    {
      v12 = v20;
      v20 = 0;
      if (v12)
      {
        if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v12, v11);
        }
      }
    }

    v13 = v24;
    v14 = v23;
    if (v24)
    {
      v14 = 0;
    }

    LOBYTE(v20) = v14;
    WTF::HashMap<WTF::String,BOOL,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<BOOL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WTF::String const&,BOOL &>((v4 + 40), a2, &v20, v19);
    v8 = v20;
    if (!v13 && v22)
    {
      IPC::Decoder::~Decoder(v22);
      bmalloc::api::tzoneFree(v16, v17);
    }
  }

  else
  {
    v8 = *(v5 + 8);
  }

  return v8 & 1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteLegacyCDMFactory::registerFactory(void)::$_2,BOOL,WTF::String const&,WTF::String const&>::~CallableWrapper(uint64_t result)
{
  v1 = *(result + 8);
  *result = &unk_1F11286D8;
  *(result + 8) = 0;
  if (v1)
  {
    if (!*(*(v1 + 16) + 8))
    {
      result = 92;
      __break(0xC471u);
    }
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteLegacyCDMFactory::registerFactory(void)::$_2,BOOL,WTF::String const&,WTF::String const&>::~CallableWrapper(WTF *a1, void *a2)
{
  v2 = *(a1 + 1);
  *a1 = &unk_1F11286D8;
  *(a1 + 1) = 0;
  if (!v2 || *(*(v2 + 16) + 8))
  {
    return WTF::fastFree(a1, a2);
  }

  result = 92;
  __break(0xC471u);
  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteLegacyCDMFactory::registerFactory(void)::$_2,BOOL,WTF::String const&,WTF::String const&>::call(uint64_t a1, atomic_uint **a2, const WTF::StringImpl *a3)
{
  v5 = *(a1 + 8);
  v6 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
  }

  v59 = v6;
  v7 = *a3;
  if (*a3)
  {
    atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
  }

  v60 = v7;
  v9 = *(v5 + 48);
  v8 = (v5 + 48);
  if (v9)
  {
    if (WTF::equal(v59, 0, a3) && WTF::equal(v7, 0, v10))
    {
      __break(0xC471u);
LABEL_83:
      JUMPOUT(0x19E29E58CLL);
    }

    if (v59 == -1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E29E5ACLL);
    }

    v11 = *v8;
    if (*v8)
    {
      v12 = *(v11 - 8);
      v13 = WTF::TupleHash<WTF::String,WTF::String>::hash<0ul>(&v59) & v12;
      v14 = v11 + 24 * v13;
      if (WTF::HashTable<std::pair<WTF::String,WTF::String>,WTF::KeyValuePair<std::pair<WTF::String,WTF::String>,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::String,WTF::String>,WTF::String>>,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>,WTF::HashMap<std::pair<WTF::String,WTF::String>,WTF::String,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::FastMalloc>::isEmptyBucket(v14, v15, v16))
      {
LABEL_15:
        v19 = *v8;
        if (!*v8)
        {
          goto LABEL_20;
        }

        v20 = *(v19 - 4);
        v14 = v19 + 24 * v20;
      }

      else
      {
        v18 = 1;
        while (*v14 == -1 || (WTF::TupleHash<WTF::String,WTF::String>::equal<0ul>(v14, &v59, v17) & 1) == 0)
        {
          v13 = (v13 + v18) & v12;
          v14 = v11 + 24 * v13;
          ++v18;
          if (WTF::HashTable<std::pair<WTF::String,WTF::String>,WTF::KeyValuePair<std::pair<WTF::String,WTF::String>,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::String,WTF::String>,WTF::String>>,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>,WTF::HashMap<std::pair<WTF::String,WTF::String>,WTF::String,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::FastMalloc>::isEmptyBucket(v14, a2, v17))
          {
            goto LABEL_15;
          }
        }

        v19 = *v8;
        if (!*v8)
        {
LABEL_18:
          if (v19 != v14)
          {
            v21 = *(v14 + 16);
            goto LABEL_66;
          }

          goto LABEL_20;
        }

        v20 = *(v19 - 4);
      }

      v19 += 24 * v20;
      goto LABEL_18;
    }
  }

LABEL_20:
  {
    v22 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v52 = WebKit::WebProcess::operator new(0x370, a2);
    v22 = WebKit::WebProcess::WebProcess(v52);
    WebKit::WebProcess::singleton(void)::process = v22;
  }

  v23 = WebKit::WebProcess::ensureGPUProcessConnection(v22)[4];
  v24 = *a3;
  if (*a3)
  {
    atomic_fetch_add_explicit(v24, 2u, memory_order_relaxed);
  }

  v54 = v24;
  v55 = 1;
  v53[0] = a2;
  v53[1] = &v54;
  IPC::Connection::sendSync<Messages::RemoteLegacyCDMFactoryProxy::SupportsKeySystem>(&v56, v23, v53);
  if (v55 == 1)
  {
    v27 = v54;
    v54 = 0;
    if (v27)
    {
      if (atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v27, v25);
      }
    }
  }

  if (v58)
  {
    v21 = 0;
  }

  else
  {
    v21 = v57;
  }

  if (WTF::equal(v59, 0, v26) && WTF::equal(v60, 0, v28))
  {
    __break(0xC471u);
    JUMPOUT(0x19E29E5CCLL);
  }

  if (v59 == -1)
  {
    __break(0xC471u);
    goto LABEL_83;
  }

  v29 = *v8;
  if (*v8 || (WTF::HashTable<std::pair<WTF::String,WTF::String>,WTF::KeyValuePair<std::pair<WTF::String,WTF::String>,BOOL>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::String,WTF::String>,BOOL>>,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>,WTF::HashMap<std::pair<WTF::String,WTF::String>,BOOL,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<BOOL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::FastMalloc>::expand(v8), (v29 = *v8) != 0))
  {
    v30 = *(v29 - 8);
  }

  else
  {
    v30 = 0;
  }

  v31 = WTF::TupleHash<WTF::String,WTF::String>::hash<0ul>(&v59) & v30;
  v32 = (v29 + 24 * v31);
  if ((WTF::HashTable<std::pair<WTF::String,WTF::String>,WTF::KeyValuePair<std::pair<WTF::String,WTF::String>,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::String,WTF::String>,WTF::String>>,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>,WTF::HashMap<std::pair<WTF::String,WTF::String>,WTF::String,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::FastMalloc>::isEmptyBucket(v32, v33, v34) & 1) == 0)
  {
    v36 = 0;
    v37 = 1;
    do
    {
      if (*v32 == -1)
      {
        v36 = v32;
      }

      else if (WTF::TupleHash<WTF::String,WTF::String>::equal<0ul>(v32, &v59, v35))
      {
        v49 = v21;
        goto LABEL_63;
      }

      v31 = (v31 + v37) & v30;
      v32 = (v29 + 24 * v31);
      ++v37;
    }

    while (!WTF::HashTable<std::pair<WTF::String,WTF::String>,WTF::KeyValuePair<std::pair<WTF::String,WTF::String>,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::String,WTF::String>,WTF::String>>,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>,WTF::HashMap<std::pair<WTF::String,WTF::String>,WTF::String,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::FastMalloc>::isEmptyBucket(v32, a2, v35));
    if (v36)
    {
      *v36 = 0;
      v36[1] = 0;
      v36[2] = 0;
      --*(*v8 - 16);
      v32 = v36;
    }
  }

  v38 = v59;
  if (v59)
  {
    atomic_fetch_add_explicit(v59, 2u, memory_order_relaxed);
  }

  v39 = *v32;
  *v32 = v38;
  if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v39, a2);
  }

  v40 = v60;
  if (v60)
  {
    atomic_fetch_add_explicit(v60, 2u, memory_order_relaxed);
  }

  v41 = v32[1];
  v32[1] = v40;
  if (v41 && atomic_fetch_add_explicit(v41, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v41, a2);
  }

  *(v32 + 16) = v21;
  v42 = *v8;
  if (*v8)
  {
    v43 = *(v42 - 12) + 1;
  }

  else
  {
    v43 = 1;
  }

  *(v42 - 12) = v43;
  v44 = (*(v42 - 16) + v43);
  v45 = *(v42 - 4);
  if (v45 <= 0x400)
  {
    if (3 * v45 > 4 * v44)
    {
      goto LABEL_62;
    }

    goto LABEL_61;
  }

  if (v45 <= 2 * v44)
  {
LABEL_61:
    WTF::HashTable<std::pair<WTF::String,WTF::String>,WTF::KeyValuePair<std::pair<WTF::String,WTF::String>,BOOL>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::String,WTF::String>,BOOL>>,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>,WTF::HashMap<std::pair<WTF::String,WTF::String>,BOOL,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<BOOL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::FastMalloc>::expand(v8);
  }

LABEL_62:
  v49 = 1;
  v32 = v53;
LABEL_63:
  *(v32 + 16) = v49;
  if (!v58 && v56)
  {
    IPC::Decoder::~Decoder(v56);
    bmalloc::api::tzoneFree(v50, v51);
  }

LABEL_66:
  v46 = v60;
  v60 = 0;
  if (v46 && atomic_fetch_add_explicit(v46, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v46, a2);
  }

  v47 = v59;
  v59 = 0;
  if (v47 && atomic_fetch_add_explicit(v47, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v47, a2);
  }

  return v21 & 1;
}

_DWORD *WTF::HashTable<std::pair<WTF::String,WTF::String>,WTF::KeyValuePair<std::pair<WTF::String,WTF::String>,BOOL>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::String,WTF::String>,BOOL>>,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>,WTF::HashMap<std::pair<WTF::String,WTF::String>,BOOL,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<BOOL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::FastMalloc>::expand(uint64_t *a1)
{
  v1 = *a1;
  if (*a1)
  {
    v2 = *(v1 - 4);
    v3 = *(v1 - 12);
    if (v2)
    {
      v4 = v2 << (6 * v3 >= 2 * v2);
      goto LABEL_6;
    }
  }

  else
  {
    v2 = 0;
    v3 = 0;
  }

  v4 = 8;
LABEL_6:
  result = WTF::fastZeroedMalloc((24 * v4 + 16));
  *a1 = (result + 4);
  result[2] = v4 - 1;
  result[3] = v4;
  *result = 0;
  result[1] = v3;
  if (v2)
  {
    v8 = 0;
    v9 = v2;
    v26 = v2;
    do
    {
      v10 = v1 + 24 * v8;
      if (*v10 != -1)
      {
        if (WTF::HashTable<std::pair<WTF::String,WTF::String>,WTF::KeyValuePair<std::pair<WTF::String,WTF::String>,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::String,WTF::String>,WTF::String>>,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>,WTF::HashMap<std::pair<WTF::String,WTF::String>,WTF::String,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::FastMalloc>::isEmptyBucket((v1 + 24 * v8), v6, v7))
        {
          v11 = *(v10 + 8);
          *(v10 + 8) = 0;
          if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v11, v6);
          }

          v12 = *v10;
          *v10 = 0;
          if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v12, v6);
          }
        }

        else
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

          v15 = WTF::TupleHash<WTF::String,WTF::String>::hash<0ul>((v1 + 24 * v8));
          v16 = 0;
          do
          {
            v17 = v15 & v14;
            v18 = v13 + 24 * (v15 & v14);
            isEmptyBucket = WTF::HashTable<std::pair<WTF::String,WTF::String>,WTF::KeyValuePair<std::pair<WTF::String,WTF::String>,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::String,WTF::String>,WTF::String>>,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>,WTF::HashMap<std::pair<WTF::String,WTF::String>,WTF::String,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::FastMalloc>::isEmptyBucket(v18, v6, v7);
            v15 = ++v16 + v17;
          }

          while (!isEmptyBucket);
          v20 = *(v18 + 8);
          *(v18 + 8) = 0;
          if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v20, v6);
          }

          v21 = *v18;
          *v18 = 0;
          if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v21, v6);
          }

          v22 = *v10;
          *v10 = 0;
          *v18 = v22;
          v23 = *(v10 + 8);
          *(v10 + 8) = 0;
          *(v18 + 8) = v23;
          *(v18 + 16) = *(v10 + 16);
          v24 = *(v10 + 8);
          *(v10 + 8) = 0;
          if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v24, v6);
          }

          v25 = *v10;
          *v10 = 0;
          if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v25, v6);
          }

          v9 = v26;
        }
      }

      ++v8;
    }

    while (v8 != v9);
  }

  else if (!v1)
  {
    return result;
  }

  return WTF::fastFree((v1 - 16), v6);
}

void WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::RemoteLegacyCDM,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::RemoteLegacyCDM,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::RemoteLegacyCDM,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::RemoteLegacyCDM,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1)
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
  v6 = WTF::fastMalloc((16 * v5 + 16));
  v8 = v6;
  v9 = v6 + 16;
  if (v5)
  {
    bzero((v6 + 16), 16 * v5);
  }

  *a1 = v9;
  v8[2] = v5 - 1;
  v8[3] = v5;
  *v8 = 0;
  v8[1] = v4;
  if (v3)
  {
    v10 = 0;
    while (1)
    {
      v11 = (v2 + 16 * v10);
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
            v22 = *(v14 + 16 * v19);
            v19 = (v19 + v20++) & v15;
          }

          while (v22);
          v23 = (v14 + 16 * v21);
          v24 = v23[1];
          v23[1] = 0;
          if (v24 && atomic_fetch_add(v24, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v24);
            WTF::fastFree(v24, v7);
          }

          *v23 = *v11;
          v25 = v11[1];
          v11[1] = 0;
          v23[1] = v25;
          v13 = v11[1];
          v11[1] = 0;
          if (!v13 || atomic_fetch_add(v13, 0xFFFFFFFF) != 1)
          {
            goto LABEL_26;
          }
        }

        else
        {
          v13 = v11[1];
          v11[1] = 0;
          if (!v13 || atomic_fetch_add(v13, 0xFFFFFFFF) != 1)
          {
            goto LABEL_26;
          }
        }

        atomic_store(1u, v13);
        WTF::fastFree(v13, v7);
      }

LABEL_26:
      if (++v10 == v3)
      {
        goto LABEL_29;
      }
    }
  }

  if (v2)
  {
LABEL_29:

    WTF::fastFree((v2 - 16), v7);
  }
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteLegacyCDMFactoryProxy::RemoveSession,WebKit::RemoteLegacyCDMFactory::removeSession(WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>)::$_0>(WebKit::RemoteLegacyCDMFactory::removeSession(WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1128700;
  v3 = a1[3];
  a1[3] = 0;
  if (v3)
  {
    WTF::RefCounted<WebKit::RemoteLegacyCDMSession>::deref((v3 + 24), a2);
  }

  v4 = a1[1];
  a1[1] = 0;
  if (!v4 || *(*(v4 + 16) + 8))
  {
    return a1;
  }

  result = 92;
  __break(0xC471u);
  return result;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteLegacyCDMFactoryProxy::RemoveSession,WebKit::RemoteLegacyCDMFactory::removeSession(WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>)::$_0>(WebKit::RemoteLegacyCDMFactory::removeSession(WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F1128700;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    WTF::RefCounted<WebKit::RemoteLegacyCDMSession>::deref((v3 + 24), a2);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4 && !*(*(v4 + 16) + 8))
  {
    result = 92;
    __break(0xC471u);
  }

  else
  {

    return WTF::fastFree(this, a2);
  }

  return result;
}

unsigned __int8 *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteLegacyCDMFactoryProxy::RemoveSession,WebKit::RemoteLegacyCDMFactory::removeSession(WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>)::$_0>(WebKit::RemoteLegacyCDMFactory::removeSession(WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1)
{
  v1 = (a1 + 16);
  v2 = *(a1 + 8);
  v4 = *(v2 + 24);
  v3 = (v2 + 24);
  v5 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::RemoteLegacyCDMSession,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::RemoteLegacyCDMSession,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::RemoteLegacyCDMSession,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::RemoteLegacyCDMSession,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::RemoteLegacyCDMSession,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::RemoteLegacyCDMSession,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>( v4,  *(a1 + 16));
  v6 = v5;
  if (*v3)
  {
    v7 = *v3 + 16 * *(*v3 - 4);
    if (v7 == v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (!v5)
    {
      goto LABEL_8;
    }

    v7 = 0;
  }

  if (v7 != v5)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::RemoteLegacyCDMSession,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::RemoteLegacyCDMSession,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::RemoteLegacyCDMSession,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::RemoteLegacyCDMSession,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(v3, v5);
  }

LABEL_8:
  {
    v8 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v13 = WebKit::WebProcess::operator new(0x370, v6);
    v8 = WebKit::WebProcess::WebProcess(v13);
    WebKit::WebProcess::singleton(void)::process = v8;
  }

  v9 = WebKit::WebProcess::ensureGPUProcessConnection(v8);
  v10 = *v1;
  v11 = (v9 + 5);

  return IPC::MessageReceiverMap::removeMessageReceiver(v11, 0x5Eu, v10);
}

void WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::RemoteLegacyCDMSession,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::RemoteLegacyCDMSession,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::RemoteLegacyCDMSession,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::RemoteLegacyCDMSession,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(uint64_t *a1, void *a2)
{
  v3 = a2[1];
  *a2 = -1;
  a2[1] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  v4 = *a1;
  v5 = vadd_s32(*(*a1 - 16), 0xFFFFFFFF00000001);
  *(v4 - 16) = v5;
  v6 = *(v4 - 4);
  if (6 * v5.i32[1] < v6 && v6 >= 9)
  {

    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseConnection,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseConnection,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseConnection,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseConnection,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v6 >> 1);
  }
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::RemoteLegacyCDMSession,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::RemoteLegacyCDMSession,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::RemoteLegacyCDMSession,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::RemoteLegacyCDMSession,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::RemoteLegacyCDMSession,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::RemoteLegacyCDMSession,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (a2 == -1 || !a2)
    {
      __break(0xC471u);
      JUMPOUT(0x19E29ED98);
    }

    v2 = *(result - 8);
    v3 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
    v4 = 9 * ((v3 + ~(v3 << 13)) ^ ((v3 + ~(v3 << 13)) >> 8));
    v5 = (v4 ^ (v4 >> 15)) + ~((v4 ^ (v4 >> 15)) << 27);
    v6 = v2 & ((v5 >> 31) ^ v5);
    v7 = *(result + 16 * v6);
    if (v7 == a2)
    {
LABEL_8:
      result += 16 * v6;
    }

    else
    {
      v8 = 1;
      while (v7)
      {
        v6 = (v6 + v8) & v2;
        v7 = *(result + 16 * v6);
        ++v8;
        if (v7 == a2)
        {
          goto LABEL_8;
        }
      }

      result += 16 * *(result - 4);
    }
  }

  return result;
}

IPC::Decoder *IPC::Decoder::operator>><std::tuple<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>>(IPC::Decoder *a1, unsigned int *a2)
{
  IPC::Decoder::decode<std::tuple<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>>(a1, &v6);
  std::__optional_storage_base<std::tuple<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<std::tuple<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>,false>>(a2, &v6);
  if (v7 == 1)
  {
    v4 = v6;
    v6 = 0;
    if (v4)
    {
      if (atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v4 + 2);
        (*(*v4 + 8))(v4);
      }
    }
  }

  return a1;
}

unsigned int *std::__optional_storage_base<std::tuple<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<std::tuple<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>,false>>(unsigned int *result, uint64_t *a2)
{
  v2 = result;
  if (*(result + 8) == *(a2 + 8))
  {
    if (*(result + 8))
    {
      v3 = *a2;
      *a2 = 0;
      result = *result;
      *v2 = v3;
      if (result)
      {
        if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, result + 2);
          v4 = *(*result + 8);

          return v4();
        }
      }
    }
  }

  else if (*(result + 8))
  {
    result = *result;
    *v2 = 0;
    if (result && atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result + 2);
      result = (*(*result + 8))(result);
    }

    *(v2 + 8) = 0;
  }

  else
  {
    v5 = *a2;
    *a2 = 0;
    *result = v5;
    *(result + 8) = 1;
  }

  return result;
}

_DWORD *WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(uint64_t *a1)
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
  result = WTF::fastZeroedMalloc((16 * v5 + 16));
  *a1 = (result + 4);
  result[2] = v5 - 1;
  result[3] = v5;
  *result = 0;
  result[1] = v4;
  if (v3)
  {
    v8 = 0;
    while (1)
    {
      v9 = (v2 + 16 * v8);
      v10 = *v9;
      if (*v9 != -1)
      {
        if (v10)
        {
          v12 = *a1;
          if (*a1)
          {
            v13 = *(v12 - 8);
          }

          else
          {
            v13 = 0;
          }

          v14 = *(v10 + 4);
          if (v14 < 0x100)
          {
            v15 = WTF::StringImpl::hashSlowCase(v10);
          }

          else
          {
            v15 = v14 >> 8;
          }

          v16 = 0;
          do
          {
            v17 = v15 & v13;
            v15 = ++v16 + v17;
          }

          while (*(v12 + 16 * v17));
          v18 = (v12 + 16 * v17);
          v19 = v18[1];
          v18[1] = 0;
          if (v19)
          {
            WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v19);
            v20 = *v18;
            *v18 = 0;
            if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v20, v7);
            }
          }

          else
          {
            *v18 = 0;
          }

          v21 = *v9;
          *v9 = 0;
          *v18 = v21;
          v22 = v9[1];
          v9[1] = 0;
          v18[1] = v22;
          v23 = v9[1];
          v9[1] = 0;
          if (v23)
          {
            WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v23);
          }

          v10 = *v9;
          *v9 = 0;
          if (!v10 || atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) != 2)
          {
            goto LABEL_31;
          }
        }

        else
        {
          v11 = v9[1];
          v9[1] = 0;
          if (v11)
          {
            WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v11);
            v10 = *v9;
          }

          *v9 = 0;
          if (!v10 || atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) != 2)
          {
            goto LABEL_31;
          }
        }

        WTF::StringImpl::destroy(v10, v7);
      }

LABEL_31:
      if (++v8 == v3)
      {
        goto LABEL_36;
      }
    }
  }

  if (v2)
  {
LABEL_36:

    return WTF::fastFree((v2 - 16), v7);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::RemoteMediaEngineConfigurationFactory::registerFactory(void)::$_0,void,WebCore::MediaDecodingConfiguration &&,WTF::Function<void ()(WebCore::MediaCapabilitiesDecodingInfo &&)> &&>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F1128728;
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteMediaEngineConfigurationFactory::registerFactory(void)::$_0,void,WebCore::MediaDecodingConfiguration &&,WTF::Function<void ()(WebCore::MediaCapabilitiesDecodingInfo &&)> &&>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1128728;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *WTF::Detail::CallableWrapper<WebKit::RemoteMediaEngineConfigurationFactory::registerFactory(void)::$_0,void,WebCore::MediaDecodingConfiguration &&,WTF::Function<void ()(WebCore::MediaCapabilitiesDecodingInfo &&)> &&>::call(uint64_t a1, char *a2, void *a3)
{
  v5 = *(a1 + 8);
  if (!v5 || (v6 = *(v5 + 8)) == 0)
  {
    LOWORD(v30) = 0;
    BYTE2(v30) = 0;
    LOBYTE(v31) = 0;
    v34 = 0;
    if (a2[40] == 1)
    {
      v21 = *a2;
      *a2 = 0;
      v31 = v21;
      v22 = *(a2 + 24);
      v32 = *(a2 + 8);
      v33 = v22;
      v34 = 1;
    }

    LOBYTE(v35[0]) = 0;
    v37 = 0;
    if (a2[96] == 1)
    {
      v23 = *(a2 + 3);
      v24 = *(a2 + 4);
      *(a2 + 6) = 0;
      *(a2 + 7) = 0;
      *v35 = v23;
      v36[0] = v24;
      *(v36 + 10) = *(a2 + 74);
      v37 = 1;
    }

    LOBYTE(v38[0]) = 0;
    v39 = 0;
    if (a2[120] == 1)
    {
      v38[0] = *(a2 + 13);
      v25 = *(a2 + 14);
      *(a2 + 13) = 0;
      *(a2 + 14) = 0;
      v38[1] = v25;
      v39 = 1;
    }

    LOBYTE(v40[0]) = 0;
    v41 = 0;
    if (a2[144] == 1)
    {
      v40[0] = *(a2 + 16);
      v26 = *(a2 + 17);
      *(a2 + 16) = 0;
      *(a2 + 17) = 0;
      v40[1] = v26;
      v41 = 1;
    }

    v42 = *(a2 + 76);
    result = (*(**a3 + 16))(*a3, &v30);
    if (v41 == 1)
    {
      result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v40, v27);
    }

    if (v39 != 1)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v7 = *(*(v6 + 16) + 8);
  if (!v7)
  {
    goto LABEL_41;
  }

  if (*(v7 + 864))
  {
    {
      v8 = WebKit::WebProcess::singleton(void)::process;
    }

    else
    {
      v29 = WebKit::WebProcess::operator new(0x370, a2);
      v8 = WebKit::WebProcess::WebProcess(v29);
      WebKit::WebProcess::singleton(void)::process = v8;
    }

    v9 = WebKit::WebProcess::ensureGPUProcessConnection(v8)[4];
    v10 = *a3;
    *a3 = 0;
    v11 = WTF::fastMalloc(0x10);
    *v11 = &unk_1F1128750;
    v11[1] = v10;
    if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected != 1)
    {
      v12 = v11;
      IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
      v15 = IPC::Encoder::operator new(0x238, v14);
      *v15 = 1392;
      *(v15 + 68) = 0;
      *(v15 + 70) = 0;
      *(v15 + 69) = 0;
      *(v15 + 2) = 0;
      *(v15 + 3) = 0;
      *(v15 + 1) = 0;
      IPC::Encoder::encodeHeader(v15);
      v43 = v15;
      IPC::ArgumentCoder<WebCore::MediaDecodingConfiguration,void>::encode(v15, a2);
      v30 = v12;
      v31 = IdentifierInternal;
      IPC::Connection::sendMessageWithAsyncReply(v9, &v43, &v30, 0, 0);
      v17 = v30;
      v30 = 0;
      if (v17)
      {
        (*(*v17 + 8))(v17);
      }

      result = v43;
      v43 = 0;
      if (result)
      {
        IPC::Encoder::~Encoder(result, v16);
        return bmalloc::api::tzoneFree(v19, v20);
      }

      return result;
    }

LABEL_41:
    __break(0xC471u);
    JUMPOUT(0x19E29F614);
  }

  LOWORD(v30) = 0;
  BYTE2(v30) = 0;
  LOBYTE(v31) = 0;
  v34 = 0;
  LOBYTE(v35[0]) = 0;
  v37 = 0;
  LOBYTE(v38[0]) = 0;
  v39 = 0;
  LOBYTE(v40[0]) = 0;
  v41 = 0;
  v42 = 256;
  result = (*(**a3 + 16))(*a3, &v30);
  if (v41 == 1)
  {
    result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v40, v27);
  }

  if (v39 == 1)
  {
LABEL_27:
    result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v38, v27);
  }

LABEL_28:
  if (v37 == 1)
  {
    v28 = v35[1];
    v35[1] = 0;
    if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v28, v27);
    }

    result = v35[0];
    v35[0] = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v27);
    }
  }

  if (v34 == 1)
  {
    result = v31;
    v31 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v27);
      }
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteMediaEngineConfigurationFactoryProxy::CreateDecodingConfiguration,WebKit::RemoteMediaEngineConfigurationFactory::createDecodingConfiguration(WebCore::MediaDecodingConfiguration &&,WTF::Function<void ()(WebCore::MediaCapabilitiesDecodingInfo &&)> &&)::$_0>(WebKit::RemoteMediaEngineConfigurationFactory::createDecodingConfiguration(WebCore::MediaDecodingConfiguration &&,WTF::Function<void ()(WebCore::MediaCapabilitiesDecodingInfo &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::Function<void ()(WebCore::MediaCapabilitiesDecodingInfo &&)> &&,WTF::CompletionHandler)#1},void,WTF::Function<void ()(WebCore::MediaCapabilitiesDecodingInfo &&)> &&,WTF::CompletionHandler>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1128750;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteMediaEngineConfigurationFactoryProxy::CreateDecodingConfiguration,WebKit::RemoteMediaEngineConfigurationFactory::createDecodingConfiguration(WebCore::MediaDecodingConfiguration &&,WTF::Function<void ()(WebCore::MediaCapabilitiesDecodingInfo &&)> &&)::$_0>(WebKit::RemoteMediaEngineConfigurationFactory::createDecodingConfiguration(WebCore::MediaDecodingConfiguration &&,WTF::Function<void ()(WebCore::MediaCapabilitiesDecodingInfo &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::Function<void ()(WebCore::MediaCapabilitiesDecodingInfo &&)> &&,WTF::CompletionHandler)#1},void,WTF::Function<void ()(WebCore::MediaCapabilitiesDecodingInfo &&)> &&,WTF::CompletionHandler>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1128750;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteMediaEngineConfigurationFactoryProxy::CreateDecodingConfiguration,WebKit::RemoteMediaEngineConfigurationFactory::createDecodingConfiguration(WebCore::MediaDecodingConfiguration &&,WTF::Function<void ()(WebCore::MediaCapabilitiesDecodingInfo &&)> &&)::$_0>(WebKit::RemoteMediaEngineConfigurationFactory::createDecodingConfiguration(WebCore::MediaDecodingConfiguration &&,WTF::Function<void ()(WebCore::MediaCapabilitiesDecodingInfo &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::Function<void ()(WebCore::MediaCapabilitiesDecodingInfo &&)> &&,WTF::CompletionHandler)#1},void,WTF::Function<void ()(WebCore::MediaCapabilitiesDecodingInfo &&)> &&,WTF::CompletionHandler>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
{
  if (a3 && *a3)
  {
    IPC::ArgumentCoder<WebCore::MediaCapabilitiesDecodingInfo,void>::decode(a3, v28);
    if (v36 & 1) != 0 || (v13 = *a3, v14 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v15 = *(a3 + 3)) != 0) && v14 && ((*(*v15 + 16))(v15, v13), (v36))
    {
      std::tuple<WebCore::MediaCapabilitiesDecodingInfo>::tuple[abi:sn200100]<WebCore::MediaCapabilitiesDecodingInfo,0>(v19, v28);
      v27 = 1;
      if (v36)
      {
        if (v35[16] == 1)
        {
          WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v35, v5);
        }

        if (v34[16] == 1)
        {
          WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v34, v5);
        }

        if (v33 == 1)
        {
          v6 = v32;
          v32 = 0;
          if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v6, v5);
          }

          v7 = v31;
          v31 = 0;
          if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v7, v5);
          }
        }

        if (v30 == 1)
        {
          v8 = v29;
          v29 = 0;
          if (v8)
          {
            if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v8, v5);
            }
          }
        }
      }
    }

    else
    {
      v19[0] = 0;
      v27 = 0;
    }

    if (v27 & 1) != 0 || (v16 = *a3, v17 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v18 = *(a3 + 3)) != 0) && v17 && ((*(*v18 + 16))(v18, v16), (v27))
    {
      result = (*(**(a1 + 8) + 16))(*(a1 + 8), v19);
      if (v27)
      {
        if (v26[16] == 1)
        {
          result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v26, v10);
        }

        if (v25[16] == 1)
        {
          result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v25, v10);
        }

        if (v24 == 1)
        {
          v11 = v23;
          v23 = 0;
          if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v11, v10);
          }

          result = v22;
          v22 = 0;
          if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            result = WTF::StringImpl::destroy(result, v10);
          }
        }

        if (v21 == 1)
        {
          result = v20;
          v20 = 0;
          if (result)
          {
            if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              return WTF::StringImpl::destroy(result, v10);
            }
          }
        }
      }
    }

    else
    {
      return IPC::Connection::cancelReply<Messages::RemoteMediaEngineConfigurationFactoryProxy::CreateDecodingConfiguration,WebKit::RemoteMediaEngineConfigurationFactory::createDecodingConfiguration(WebCore::MediaDecodingConfiguration &&,WTF::Function<void ()(WebCore::MediaCapabilitiesDecodingInfo &&)> &&)::$_0>((a1 + 8));
    }
  }

  else
  {
    v12 = (a1 + 8);

    return IPC::Connection::cancelReply<Messages::RemoteMediaEngineConfigurationFactoryProxy::CreateDecodingConfiguration,WebKit::RemoteMediaEngineConfigurationFactory::createDecodingConfiguration(WebCore::MediaDecodingConfiguration &&,WTF::Function<void ()(WebCore::MediaCapabilitiesDecodingInfo &&)> &&)::$_0>(v12);
  }

  return result;
}

WTF::StringImpl *IPC::Connection::cancelReply<Messages::RemoteMediaEngineConfigurationFactoryProxy::CreateDecodingConfiguration,WebKit::RemoteMediaEngineConfigurationFactory::createDecodingConfiguration(WebCore::MediaDecodingConfiguration &&,WTF::Function<void ()(WebCore::MediaCapabilitiesDecodingInfo &&)> &&)::$_0>(void *a1)
{
  v17 = 0;
  v18 = 0;
  LOBYTE(v19) = 0;
  v20 = 0;
  LOBYTE(v21) = 0;
  v23 = 0;
  v24[0] = 0;
  v25 = 0;
  v26[0] = 0;
  v27 = 0;
  v28 = 256;
  std::tuple<WebCore::MediaCapabilitiesDecodingInfo>::tuple[abi:sn200100]<WebCore::MediaCapabilitiesDecodingInfo,0>(&v9, &v17);
  if (v27 == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v26, v2);
  }

  if (v25 == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v24, v2);
  }

  if (v23 == 1)
  {
    v3 = v22;
    v22 = 0;
    if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, v2);
    }

    v4 = v21;
    v21 = 0;
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, v2);
    }
  }

  if (v20 == 1)
  {
    v5 = v19;
    v19 = 0;
    if (v5)
    {
      if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, v2);
      }
    }
  }

  result = (*(**a1 + 16))(*a1, &v9);
  if (v16[16] == 1)
  {
    result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v16, v7);
  }

  if (v15[16] == 1)
  {
    result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v15, v7);
  }

  if (v14 == 1)
  {
    v8 = v13;
    v13 = 0;
    if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v7);
    }

    result = v12;
    v12 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v7);
    }
  }

  if (v11 == 1)
  {
    result = v10;
    v10 = 0;
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

uint64_t std::tuple<WebCore::MediaCapabilitiesDecodingInfo>::tuple[abi:sn200100]<WebCore::MediaCapabilitiesDecodingInfo,0>(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 2);
  *a1 = *a2;
  *(a1 + 2) = v4;
  *(a1 + 8) = 0;
  *(a1 + 48) = 0;
  if (*(a2 + 48) == 1)
  {
    v5 = *(a2 + 8);
    *(a2 + 8) = 0;
    *(a1 + 8) = v5;
    v6 = *(a2 + 32);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 32) = v6;
    *(a1 + 48) = 1;
  }

  *(a1 + 56) = 0;
  *(a1 + 104) = 0;
  if (*(a2 + 104) == 1)
  {
    v7 = *(a2 + 56);
    *(a2 + 56) = 0;
    *(a1 + 56) = v7;
    v8 = *(a2 + 64);
    *(a2 + 64) = 0;
    *(a1 + 64) = v8;
    v9 = *(a2 + 72);
    *(a1 + 82) = *(a2 + 82);
    *(a1 + 72) = v9;
    *(a1 + 104) = 1;
  }

  *(a1 + 112) = 0;
  v10 = (a1 + 112);
  *(a1 + 128) = 0;
  if (*(a2 + 128) == 1)
  {
    *v10 = 0;
    *(a1 + 120) = 0;
    WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(v10, (a2 + 112));
    *(a1 + 128) = 1;
  }

  *(a1 + 136) = 0;
  v11 = (a1 + 136);
  *(a1 + 152) = 0;
  if (*(a2 + 152) == 1)
  {
    *v11 = 0;
    *(a1 + 144) = 0;
    WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(v11, (a2 + 136));
    *(a1 + 152) = 1;
  }

  *(a1 + 160) = *(a2 + 160);
  return a1;
}

void WebKit::RemoteMediaPlayerManager::~RemoteMediaPlayerManager(WebKit::RemoteMediaPlayerManager *this, void *a2)
{
  *this = &unk_1F1128778;
  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }

  v4 = *(this + 2);
  if (v4)
  {
    v5 = *(v4 - 4);
    if (v5)
    {
      v6 = (v4 + 16);
      do
      {
        if (*(v6 - 2) != -1)
        {
          v7 = *v6;
          *v6 = 0;
          if (v7)
          {
            WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v7, a2);
          }
        }

        v6 += 3;
        --v5;
      }

      while (v5);
    }

    WTF::fastFree((v4 - 16), a2);
  }
}

{
  WebKit::RemoteMediaPlayerManager::~RemoteMediaPlayerManager(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

uint64_t WebKit::RemoteMediaPlayerManager::typeCache(uint64_t a1, char a2)
{
  v11 = a2;
  {
    WebKit::mimeCaches(void)::caches = 0;
  }

  WTF::HashMap<WebCore::MediaPlayerMediaEngineIdentifier,std::unique_ptr<WebKit::RemoteMediaPlayerMIMETypeCache>,WTF::IntHash<WebCore::MediaPlayerMediaEngineIdentifier>,WTF::StrongEnumHashTraits<WebCore::MediaPlayerMediaEngineIdentifier>,WTF::HashTraits<std::unique_ptr<WebKit::RemoteMediaPlayerMIMETypeCache>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<decltype(nullptr)>(&WebKit::mimeCaches(void)::caches, &v11, v10);
  v4 = v10[0];
  v5 = *(v10[0] + 8);
  if (!v5)
  {
    v5 = WebKit::RemoteMediaPlayerMIMETypeCache::operator new(0x40, v3);
    v6 = v11;
    *v5 = 0;
    *(v5 + 8) = a1;
    v7 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::RemoteMediaPlayerManager,(WTF::DestructionThread)0>::controlBlock((a1 + 8));
    *(v5 + 16) = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v7);
    *(v5 + 24) = v6;
    *(v5 + 32) = 0;
    *(v5 + 40) = 0;
    *(v5 + 48) = 0;
    *(v5 + 56) = 0;
    v8 = *(v4 + 8);
    *(v4 + 8) = v5;
    if (v8)
    {
      WebKit::RemoteMediaPlayerMIMETypeCache::operator delete(v8, 0x40);
      return *(v4 + 8);
    }
  }

  return v5;
}

void WTF::HashMap<WebCore::MediaPlayerMediaEngineIdentifier,std::unique_ptr<WebKit::RemoteMediaPlayerMIMETypeCache>,WTF::IntHash<WebCore::MediaPlayerMediaEngineIdentifier>,WTF::StrongEnumHashTraits<WebCore::MediaPlayerMediaEngineIdentifier>,WTF::HashTraits<std::unique_ptr<WebKit::RemoteMediaPlayerMIMETypeCache>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<decltype(nullptr)>(uint64_t *a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  if (v3 == 254 || v3 == 255)
  {
    __break(0xC471u);
    JUMPOUT(0x19E2A001CLL);
  }

  v7 = *a1;
  if (!*a1)
  {
    WTF::HashTable<WebCore::MediaPlayerMediaEngineIdentifier,WTF::KeyValuePair<WebCore::MediaPlayerMediaEngineIdentifier,std::unique_ptr<WebKit::RemoteMediaPlayerMIMETypeCache>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::MediaPlayerMediaEngineIdentifier,std::unique_ptr<WebKit::RemoteMediaPlayerMIMETypeCache>>>,WTF::IntHash<WebCore::MediaPlayerMediaEngineIdentifier>,WTF::HashMap<WebCore::MediaPlayerMediaEngineIdentifier,std::unique_ptr<WebKit::RemoteMediaPlayerMIMETypeCache>,WTF::IntHash<WebCore::MediaPlayerMediaEngineIdentifier>,WTF::StrongEnumHashTraits<WebCore::MediaPlayerMediaEngineIdentifier>,WTF::HashTraits<std::unique_ptr<WebKit::RemoteMediaPlayerMIMETypeCache>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::StrongEnumHashTraits<WebCore::MediaPlayerMediaEngineIdentifier>,WTF::FastMalloc>::expand(a1, 0);
    v7 = *a1;
    v3 = *a2;
  }

  v8 = *(v7 - 8);
  v9 = 9 * ((~(v3 << 15) + v3) ^ ((~(v3 << 15) + v3) >> 10));
  v10 = (v9 ^ (v9 >> 6)) + ~((v9 ^ (v9 >> 6)) << 11);
  v11 = (v10 ^ HIWORD(v10)) & v8;
  v12 = (v7 + 16 * v11);
  v13 = *v12;
  if (v13 == 255)
  {
LABEL_6:
    v14 = *(v12 + 1);
    *v12 = v3;
    *(v12 + 1) = 0;
    if (v14)
    {
      WebKit::RemoteMediaPlayerMIMETypeCache::operator delete(v14, 0x40);
      v7 = *a1;
    }

    v15 = v12;
  }

  else
  {
    v15 = 0;
    v16 = 1;
    do
    {
      if (v13 == v3)
      {
        v21 = 0;
        v22 = v7 + 16 * *(v7 - 4);
        goto LABEL_23;
      }

      if (v13 == 254)
      {
        v15 = v12;
      }

      v11 = (v11 + v16) & v8;
      v12 = (v7 + 16 * v11);
      v13 = *v12;
      ++v16;
    }

    while (v13 != 255);
    if (!v15)
    {
      goto LABEL_6;
    }

    *v15 = -1;
    --*(v7 - 16);
    *v15 = *a2;
    *(v15 + 8) = 0;
  }

  v17 = *(v7 - 16);
  v18 = *(v7 - 12) + 1;
  *(v7 - 12) = v18;
  v19 = (v17 + v18);
  v20 = *(v7 - 4);
  if (v20 > 0x400)
  {
    if (v20 <= 2 * v19)
    {
LABEL_18:
      v15 = WTF::HashTable<WebCore::MediaPlayerMediaEngineIdentifier,WTF::KeyValuePair<WebCore::MediaPlayerMediaEngineIdentifier,std::unique_ptr<WebKit::RemoteMediaPlayerMIMETypeCache>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::MediaPlayerMediaEngineIdentifier,std::unique_ptr<WebKit::RemoteMediaPlayerMIMETypeCache>>>,WTF::IntHash<WebCore::MediaPlayerMediaEngineIdentifier>,WTF::HashMap<WebCore::MediaPlayerMediaEngineIdentifier,std::unique_ptr<WebKit::RemoteMediaPlayerMIMETypeCache>,WTF::IntHash<WebCore::MediaPlayerMediaEngineIdentifier>,WTF::StrongEnumHashTraits<WebCore::MediaPlayerMediaEngineIdentifier>,WTF::HashTraits<std::unique_ptr<WebKit::RemoteMediaPlayerMIMETypeCache>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::StrongEnumHashTraits<WebCore::MediaPlayerMediaEngineIdentifier>,WTF::FastMalloc>::expand(a1, v15);
      v7 = *a1;
      if (*a1)
      {
        v20 = *(v7 - 4);
      }

      else
      {
        v20 = 0;
      }
    }
  }

  else if (3 * v20 <= 4 * v19)
  {
    goto LABEL_18;
  }

  v22 = v7 + 16 * v20;
  v21 = 1;
  v12 = v15;
LABEL_23:
  *a3 = v12;
  *(a3 + 8) = v22;
  *(a3 + 16) = v21;
}