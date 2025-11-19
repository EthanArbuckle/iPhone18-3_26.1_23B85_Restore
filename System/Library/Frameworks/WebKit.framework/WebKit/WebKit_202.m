atomic_uchar **WebKit::WebTransportSession::receiveBidirectionalStream(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 56);
  if (result)
  {
    result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(result, *(a1 + 48), &v11);
    v5 = v11;
    if (v11)
    {
      WebKit::WebTransportSendStreamSink::create(&v8, a1, a2);
      v9 = v8;
      WebCore::WebTransportBidirectionalStreamConstructionParameters::WebTransportBidirectionalStreamConstructionParameters();
      (*(*v5 + 32))(v5, v10);
      WebCore::WebTransportBidirectionalStreamConstructionParameters::~WebTransportBidirectionalStreamConstructionParameters(v10);
      result = v9;
      v9 = 0;
      if (result)
      {
        if (*(result + 2) == 1)
        {
          result = (*(*result + 1))(result);
        }

        else
        {
          --*(result + 2);
        }
      }

      v7 = v11;
      v11 = 0;
      if (v7)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::WebTransportSessionClient,(WTF::DestructionThread)0>::deref((v7 + 8), v6);
      }
    }
  }

  return result;
}

atomic_uchar *WebKit::WebTransportSendStreamSink::create(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = WTF::fastMalloc(0x30);
  *(v6 + 8) = 1;
  *v6 = &unk_1F112C9A0;
  *(v6 + 16) = a2;
  v7 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebTransportSession,(WTF::DestructionThread)2>::controlBlock((a2 + 32));
  result = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v7);
  *(v6 + 24) = result;
  *(v6 + 32) = a3;
  *(v6 + 40) = 0;
  *a1 = v6;
  return result;
}

atomic_uchar **WebKit::WebTransportSession::streamReceiveBytes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = *(a1 + 56);
  if (result)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(result, *(a1 + 48), &v15);
    result = v15;
    if (v15)
    {
      result = (*(*v15 + 5))(v15, a2, a3, a4, a5, a6);
      v14 = v15;
      v15 = 0;
      if (v14)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::WebTransportSessionClient,(WTF::DestructionThread)0>::deref(v14 + 1, v13);
      }
    }
  }

  return result;
}

uint64_t WebKit::WebTransportSession::sendDatagram@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, size_t a3@<X2>, atomic_uint **a4@<X8>)
{
  v7 = a1 + 24;
  v8 = (*(*(a1 + 24) + 56))(a1 + 24);
  v9 = (*(*v7 + 48))(v7);
  if (v9)
  {
    v10 = v9;
    while (1)
    {
      v11 = *v9;
      if ((*v9 & 1) == 0)
      {
        break;
      }

      v12 = *v9;
      atomic_compare_exchange_strong_explicit(v9, &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v12 == v11)
      {
        goto LABEL_7;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v9);
LABEL_7:
    v32 = 0;
    *v33 = 0;
    *&v33[8] = "sendWithPromisedReply";
    *&v33[16] = 0;
    WTF::NativePromiseProducer<std::optional<WebCore::Exception>,IPC::Error,0u>::NativePromiseProducer<std::enable_if<true,void>>(v36, &v32);
    v13 = v36[0];
    if (v36[0])
    {
      atomic_fetch_add((v36[0] + 8), 1u);
      v14 = v36[0];
    }

    else
    {
      v14 = 0;
    }

    v31 = v13;
    v36[0] = 0;
    *v33 = *&v36[1];
    *&v33[16] = *&v36[3];
    v15 = WTF::fastMalloc(0x30);
    *v15 = &unk_1F112D4D0;
    *(v15 + 8) = v14;
    v32 = 0;
    v16 = *&v33[16];
    *(v15 + 16) = *v33;
    *(v15 + 32) = v16;
    v35[0] = v15;
    if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
    {
      result = 141;
      __break(0xC471u);
      return result;
    }

    v35[1] = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    WTF::NativePromiseProducer<std::optional<WebCore::Exception>,IPC::Error,0u>::~NativePromiseProducer(&v32);
    v18 = IPC::Encoder::operator new(0x238, v17);
    *v18 = 819;
    *(v18 + 2) = 0;
    *(v18 + 3) = 0;
    *(v18 + 1) = v8;
    *(v18 + 68) = 0;
    *(v18 + 70) = 0;
    *(v18 + 69) = 0;
    IPC::Encoder::encodeHeader(v18);
    v32 = v18;
    IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(v18, a2, a3);
    IPC::Connection::sendMessageWithAsyncReplyWithDispatcher(v10, &v32, v35, 0, 0);
    v20 = v32;
    v32 = 0;
    if (v20)
    {
      IPC::Encoder::~Encoder(v20, v19);
      bmalloc::api::tzoneFree(v29, v30);
    }

    v21 = v35[0];
    v35[0] = 0;
    if (v21)
    {
      (*(*v21 + 8))(v21);
    }

    WTF::NativePromiseProducer<std::optional<WebCore::Exception>,IPC::Error,0u>::~NativePromiseProducer(v36);
    v22 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v10);
  }

  else
  {
    LOBYTE(v36[0]) = 3;
    v32 = 0;
    *v33 = 0;
    *&v33[8] = "sendWithPromisedReply";
    *&v33[16] = 0;
    v22 = WTF::NativePromise<std::optional<WebCore::Exception>,IPC::Error,0u>::createAndReject<IPC::Error,std::enable_if<true,void>>(&v31, v36, &v32);
    v13 = v31;
  }

  v23 = WTF::RunLoop::mainSingleton(v22);
  *v36 = 0uLL;
  v24 = WTF::fastMalloc(0x50);
  while (1)
  {
    v25 = *(v23 + 8);
    if ((v25 & 1) == 0)
    {
      break;
    }

    v26 = *(v23 + 8);
    atomic_compare_exchange_strong_explicit((v23 + 8), &v26, v25 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v26 == v25)
    {
      goto LABEL_20;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v23 + 8));
LABEL_20:
  v27 = WTF::fastMalloc(0x10);
  *v27 = &unk_1F112CF68;
  *(v24 + 8) = 1;
  *(v24 + 16) = v23;
  *(v24 + 24) = *v36;
  *(v24 + 40) = "sendDatagram";
  *(v24 + 48) = 0;
  *(v24 + 56) = 0;
  *v24 = &unk_1F112CFE0;
  *(v24 + 64) = 0;
  *(v24 + 72) = v27;
  atomic_fetch_add(v13 + 2, 1u);
  v32 = v13;
  *v33 = v24;
  *&v33[8] = *v36;
  *&v33[24] = "sendDatagram";
  v34 = 0;
  WTF::NativePromise<std::optional<WebCore::Exception>,IPC::Error,0u>::ThenCommand<WTF::NativePromise<std::optional<WebCore::Exception>,IPC::Error,0u>::ThenCallback<true,WTF::NativePromise<std::optional<WebCore::Exception>,void,0u>>>::completionPromise(a4, &v32);
  WTF::NativePromise<std::optional<WebCore::Exception>,IPC::Error,0u>::ThenCommand<WTF::NativePromise<std::optional<WebCore::Exception>,IPC::Error,0u>::ThenCallback<true,WTF::NativePromise<std::optional<WebCore::Exception>,void,0u>>>::~ThenCommand(&v32);
  result = v31;
  v31 = 0;
  if (result)
  {
    if (atomic_fetch_add((result + 8), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, (result + 8));
      return (*(*result + 16))(result);
    }
  }

  return result;
}

uint64_t WebKit::WebTransportSession::createOutgoingUnidirectionalStream@<X0>(WebKit::WebTransportSession *this@<X0>, atomic_uint **a2@<X8>)
{
  v4 = this + 24;
  v5 = (*(*(this + 3) + 56))(this + 24);
  v6 = (*(*v4 + 48))(v4);
  if (v6)
  {
    v7 = v6;
    while (1)
    {
      v8 = *v6;
      if ((*v6 & 1) == 0)
      {
        break;
      }

      v9 = *v6;
      atomic_compare_exchange_strong_explicit(v6, &v9, v8 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v9 == v8)
      {
        goto LABEL_7;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v6);
LABEL_7:
    v47 = 0;
    *v48 = 0;
    *&v48[8] = "sendWithPromisedReply";
    *&v48[16] = 0;
    WTF::NativePromiseProducer<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::NativePromiseProducer<std::enable_if<true,void>>(v51, &v47);
    v10 = *v51;
    if (*v51)
    {
      atomic_fetch_add((*v51 + 8), 1u);
      v11 = *v51;
    }

    else
    {
      v11 = 0;
    }

    v46 = v10;
    *v51 = 0;
    *v48 = *&v51[8];
    *&v48[16] = *&v51[24];
    v12 = WTF::fastMalloc(0x30);
    *v12 = &unk_1F112D570;
    *(v12 + 8) = v11;
    v47 = 0;
    v13 = *&v48[16];
    *(v12 + 16) = *v48;
    *(v12 + 32) = v13;
    *&v50 = v12;
    if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
    {
      result = 141;
      __break(0xC471u);
      return result;
    }

    *(&v50 + 1) = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    WTF::NativePromiseProducer<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::~NativePromiseProducer(&v47);
    v15 = IPC::Encoder::operator new(0x238, v14);
    *v15 = 817;
    *(v15 + 2) = 0;
    *(v15 + 3) = 0;
    *(v15 + 1) = v5;
    *(v15 + 68) = 0;
    *(v15 + 70) = 0;
    *(v15 + 69) = 0;
    IPC::Encoder::encodeHeader(v15);
    v47 = v15;
    IPC::Connection::sendMessageWithAsyncReplyWithDispatcher(v7, &v47, &v50, 0, 0);
    v17 = v47;
    v47 = 0;
    if (v17)
    {
      IPC::Encoder::~Encoder(v17, v16);
      bmalloc::api::tzoneFree(v44, v45);
    }

    v18 = v50;
    *&v50 = 0;
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }

    WTF::NativePromiseProducer<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::~NativePromiseProducer(v51);
    v19 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v7);
  }

  else
  {
    v51[0] = 3;
    v47 = 0;
    *v48 = 0;
    *&v48[8] = "sendWithPromisedReply";
    *&v48[16] = 0;
    v19 = WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::createAndReject<IPC::Error,std::enable_if<true,void>>(&v46, v51, &v47);
    v10 = v46;
  }

  v20 = WTF::RunLoop::mainSingleton(v19);
  v21 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebTransportSession,(WTF::DestructionThread)2>::controlBlock(this + 4);
  v22 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v21);
  v50 = 0uLL;
  v23 = WTF::fastMalloc(0x50);
  while (1)
  {
    v24 = *(v20 + 8);
    if ((v24 & 1) == 0)
    {
      break;
    }

    v25 = *(v20 + 8);
    atomic_compare_exchange_strong_explicit((v20 + 8), &v25, v24 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v25 == v24)
    {
      goto LABEL_20;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v20 + 8));
LABEL_20:
  v26 = WTF::fastMalloc(0x18);
  *v26 = &unk_1F112D040;
  v26[1] = this;
  v26[2] = v22;
  *(v23 + 8) = 1;
  *(v23 + 16) = v20;
  *(v23 + 24) = v50;
  *(v23 + 40) = "createOutgoingUnidirectionalStream";
  *(v23 + 48) = 0;
  *(v23 + 56) = 0;
  *v23 = &unk_1F112D0B8;
  *(v23 + 64) = 0;
  *(v23 + 72) = v26;
  atomic_fetch_add(v10 + 2, 1u);
  v47 = v10;
  *v48 = v23;
  *&v48[8] = v50;
  *&v48[24] = "createOutgoingUnidirectionalStream";
  v49 = 0;
  *v51 = 0uLL;
  *&v51[16] = "<completion promise>";
  *&v51[24] = 0;
  v27 = WTF::fastMalloc(0x28);
  v28 = WTF::fastMalloc(0x80);
  v29 = WTF::NativePromise<WTF::Ref<WebCore::WritableStreamSink,WTF::RawPtrTraits<WebCore::WritableStreamSink>,WTF::DefaultRefDerefTraits<WebCore::WritableStreamSink>>,void,0u>::NativePromise(v28, v51);
  *v27 = v29;
  v30 = *v51;
  *(v27 + 24) = *&v51[16];
  *(v27 + 8) = v30;
  v31 = (v29 + 8);
  atomic_fetch_add((v29 + 8), 1u);
  WTF::NativePromise<void,WTF::String,0u>::setDispatchMode(v29, 0, v51);
  if (atomic_fetch_add(v31, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v31);
    (*(*v28 + 16))(v28);
  }

  v52 = v27;
  v32 = *v27;
  if (*v27)
  {
    atomic_fetch_add(v32 + 2, 1u);
  }

  *a2 = v32;
  v33 = *v48;
  if (*v48)
  {
    v34 = (*v48 + 8);
    atomic_fetch_add((*v48 + 8), 1u);
    WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::ThenCallback<true,WTF::NativePromise<WTF::Ref<WebCore::WritableStreamSink,WTF::RawPtrTraits<WebCore::WritableStreamSink>,WTF::DefaultRefDerefTraits<WebCore::WritableStreamSink>>,void,0u>>::setCompletionPromise(v33, &v52);
    if (atomic_fetch_add(v34, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v34);
      (*(*v33 + 8))(v33);
    }
  }

  else
  {
    WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::ThenCallback<true,WTF::NativePromise<WTF::Ref<WebCore::WritableStreamSink,WTF::RawPtrTraits<WebCore::WritableStreamSink>,WTF::DefaultRefDerefTraits<WebCore::WritableStreamSink>>,void,0u>>::setCompletionPromise(0, &v52);
  }

  v35 = *v48;
  *v48 = 0;
  *v51 = v35;
  WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::maybeSettle(v47, v51, &v48[8]);
  v36 = *v51;
  *v51 = 0;
  if (v36 && atomic_fetch_add(v36 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v36 + 2);
    (*(*v36 + 8))(v36);
  }

  if (v52)
  {
    v37 = WTF::NativePromiseProducer<WTF::Ref<WebCore::WritableStreamSink,WTF::RawPtrTraits<WebCore::WritableStreamSink>,WTF::DefaultRefDerefTraits<WebCore::WritableStreamSink>>,void,0u>::~NativePromiseProducer(v52);
    WTF::fastFree(v37, v38);
  }

  v39 = *v48;
  if (*v48)
  {
    *v48 = 0;
    *v51 = v39;
    WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::maybeSettle(v47, v51, &v48[8]);
    v40 = *v51;
    *v51 = 0;
    if (v40 && atomic_fetch_add(v40 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v40 + 2);
      (*(*v40 + 8))(v40);
    }

    v41 = *v48;
    *v48 = 0;
    if (v41 && atomic_fetch_add(v41 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v41 + 2);
      (*(*v41 + 8))(v41);
    }
  }

  v42 = v47;
  v47 = 0;
  if (v42 && atomic_fetch_add(v42 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v42 + 2);
    (*(*v42 + 16))(v42);
  }

  result = v46;
  v46 = 0;
  if (result)
  {
    if (atomic_fetch_add((result + 8), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, (result + 8));
      return (*(*result + 16))(result);
    }
  }

  return result;
}

uint64_t WebKit::WebTransportSession::createBidirectionalStream@<X0>(WebKit::WebTransportSession *this@<X0>, atomic_uint **a2@<X8>)
{
  v4 = this + 24;
  v5 = (*(*(this + 3) + 56))(this + 24);
  v6 = (*(*v4 + 48))(v4);
  if (v6)
  {
    v7 = v6;
    while (1)
    {
      v8 = *v6;
      if ((*v6 & 1) == 0)
      {
        break;
      }

      v9 = *v6;
      atomic_compare_exchange_strong_explicit(v6, &v9, v8 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v9 == v8)
      {
        goto LABEL_7;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v6);
LABEL_7:
    v47 = 0;
    *v48 = 0;
    *&v48[8] = "sendWithPromisedReply";
    *&v48[16] = 0;
    WTF::NativePromiseProducer<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::NativePromiseProducer<std::enable_if<true,void>>(v51, &v47);
    v10 = *v51;
    if (*v51)
    {
      atomic_fetch_add((*v51 + 8), 1u);
      v11 = *v51;
    }

    else
    {
      v11 = 0;
    }

    v46 = v10;
    *v51 = 0;
    *v48 = *&v51[8];
    *&v48[16] = *&v51[24];
    v12 = WTF::fastMalloc(0x30);
    *v12 = &unk_1F112D5E8;
    *(v12 + 8) = v11;
    v47 = 0;
    v13 = *&v48[16];
    *(v12 + 16) = *v48;
    *(v12 + 32) = v13;
    *&v50 = v12;
    if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
    {
      result = 141;
      __break(0xC471u);
      return result;
    }

    *(&v50 + 1) = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    WTF::NativePromiseProducer<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::~NativePromiseProducer(&v47);
    v15 = IPC::Encoder::operator new(0x238, v14);
    *v15 = 816;
    *(v15 + 2) = 0;
    *(v15 + 3) = 0;
    *(v15 + 1) = v5;
    *(v15 + 68) = 0;
    *(v15 + 70) = 0;
    *(v15 + 69) = 0;
    IPC::Encoder::encodeHeader(v15);
    v47 = v15;
    IPC::Connection::sendMessageWithAsyncReplyWithDispatcher(v7, &v47, &v50, 0, 0);
    v17 = v47;
    v47 = 0;
    if (v17)
    {
      IPC::Encoder::~Encoder(v17, v16);
      bmalloc::api::tzoneFree(v44, v45);
    }

    v18 = v50;
    *&v50 = 0;
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }

    WTF::NativePromiseProducer<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::~NativePromiseProducer(v51);
    v19 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v7);
  }

  else
  {
    v51[0] = 3;
    v47 = 0;
    *v48 = 0;
    *&v48[8] = "sendWithPromisedReply";
    *&v48[16] = 0;
    v19 = WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::createAndReject<IPC::Error,std::enable_if<true,void>>(&v46, v51, &v47);
    v10 = v46;
  }

  v20 = WTF::RunLoop::mainSingleton(v19);
  v21 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebTransportSession,(WTF::DestructionThread)2>::controlBlock(this + 4);
  v22 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v21);
  v50 = 0uLL;
  v23 = WTF::fastMalloc(0x50);
  while (1)
  {
    v24 = *(v20 + 8);
    if ((v24 & 1) == 0)
    {
      break;
    }

    v25 = *(v20 + 8);
    atomic_compare_exchange_strong_explicit((v20 + 8), &v25, v24 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v25 == v24)
    {
      goto LABEL_20;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v20 + 8));
LABEL_20:
  v26 = WTF::fastMalloc(0x18);
  *v26 = &unk_1F112D118;
  v26[1] = this;
  v26[2] = v22;
  *(v23 + 8) = 1;
  *(v23 + 16) = v20;
  *(v23 + 24) = v50;
  *(v23 + 40) = "createBidirectionalStream";
  *(v23 + 48) = 0;
  *(v23 + 56) = 0;
  *v23 = &unk_1F112D190;
  *(v23 + 64) = 0;
  *(v23 + 72) = v26;
  atomic_fetch_add(v10 + 2, 1u);
  v47 = v10;
  *v48 = v23;
  *&v48[8] = v50;
  *&v48[24] = "createBidirectionalStream";
  v49 = 0;
  *v51 = 0uLL;
  *&v51[16] = "<completion promise>";
  *&v51[24] = 0;
  v27 = WTF::fastMalloc(0x28);
  v28 = WTF::fastMalloc(0x88);
  v29 = WTF::NativePromise<WebCore::WebTransportBidirectionalStreamConstructionParameters,void,0u>::NativePromise(v28, v51);
  *v27 = v29;
  v30 = *v51;
  *(v27 + 24) = *&v51[16];
  *(v27 + 8) = v30;
  v31 = (v29 + 8);
  atomic_fetch_add((v29 + 8), 1u);
  WTF::NativePromise<WebCore::WebTransportBidirectionalStreamConstructionParameters,void,0u>::setDispatchMode(v29, 0, v51);
  if (atomic_fetch_add(v31, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v31);
    (*(*v28 + 16))(v28);
  }

  v52 = v27;
  v32 = *v27;
  if (*v27)
  {
    atomic_fetch_add(v32 + 2, 1u);
  }

  *a2 = v32;
  v33 = *v48;
  if (*v48)
  {
    v34 = (*v48 + 8);
    atomic_fetch_add((*v48 + 8), 1u);
    WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::ThenCallback<true,WTF::NativePromise<WebCore::WebTransportBidirectionalStreamConstructionParameters,void,0u>>::setCompletionPromise(v33, &v52);
    if (atomic_fetch_add(v34, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v34);
      (*(*v33 + 8))(v33);
    }
  }

  else
  {
    WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::ThenCallback<true,WTF::NativePromise<WebCore::WebTransportBidirectionalStreamConstructionParameters,void,0u>>::setCompletionPromise(0, &v52);
  }

  v35 = *v48;
  *v48 = 0;
  *v51 = v35;
  WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::maybeSettle(v47, v51, &v48[8]);
  v36 = *v51;
  *v51 = 0;
  if (v36 && atomic_fetch_add(v36 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v36 + 2);
    (*(*v36 + 8))(v36);
  }

  if (v52)
  {
    v37 = WTF::NativePromiseProducer<WebCore::WebTransportBidirectionalStreamConstructionParameters,void,0u>::~NativePromiseProducer(v52);
    WTF::fastFree(v37, v38);
  }

  v39 = *v48;
  if (*v48)
  {
    *v48 = 0;
    *v51 = v39;
    WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::maybeSettle(v47, v51, &v48[8]);
    v40 = *v51;
    *v51 = 0;
    if (v40 && atomic_fetch_add(v40 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v40 + 2);
      (*(*v40 + 8))(v40);
    }

    v41 = *v48;
    *v48 = 0;
    if (v41 && atomic_fetch_add(v41 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v41 + 2);
      (*(*v41 + 8))(v41);
    }
  }

  v42 = v47;
  v47 = 0;
  if (v42 && atomic_fetch_add(v42 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v42 + 2);
    (*(*v42 + 16))(v42);
  }

  result = v46;
  v46 = 0;
  if (result)
  {
    if (atomic_fetch_add((result + 8), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, (result + 8));
      return (*(*result + 16))(result);
    }
  }

  return result;
}

IPC::Encoder *WebKit::WebTransportSession::terminate(uint64_t a1, int a2, uint64_t *a3)
{
  v5 = a1 + 24;
  v6 = (*(*(a1 + 24) + 56))(a1 + 24);
  v8 = IPC::Encoder::operator new(0x238, v7);
  *v8 = 821;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = v6;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v16 = v8;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v8, a2);
  v9 = *a3;
  if (*a3)
  {
    v10 = (v9 + 16);
    v11 = *(v9 + 8);
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  IPC::ArgumentCoder<std::span<char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(v8, v10, v11);
  (*(*v5 + 32))(v5, &v16, 0);
  result = v16;
  v16 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v12);
    return bmalloc::api::tzoneFree(v14, v15);
  }

  return result;
}

atomic_uchar **WebKit::WebTransportSession::networkProcessCrashed(WebKit::WebTransportSession *this)
{
  result = *(this + 7);
  if (result)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(result, *(this + 6), &v5);
    result = v5;
    if (v5)
    {
      result = (*(*v5 + 6))(v5);
      v4 = v5;
      v5 = 0;
      if (v4)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::WebTransportSessionClient,(WTF::DestructionThread)0>::deref(v4 + 1, v3);
      }
    }
  }

  return result;
}

IPC::Encoder *WebKit::WebTransportSession::cancelReceiveStream(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[0] = a3;
  v13[1] = a4;
  v5 = a1 + 24;
  v6 = (*(*(a1 + 24) + 56))(a1 + 24);
  v8 = IPC::Encoder::operator new(0x238, v7);
  *v8 = 814;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = v6;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v14 = v8;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v8, a2);
  IPC::ArgumentCoder<std::optional<unsigned long long>,void>::encode<IPC::Encoder,std::optional<unsigned long long> const&>(v8, v13);
  (*(*v5 + 32))(v5, &v14, 0);
  result = v14;
  v14 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v9);
    return bmalloc::api::tzoneFree(v11, v12);
  }

  return result;
}

IPC::Encoder *WebKit::WebTransportSession::cancelSendStream(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[0] = a3;
  v13[1] = a4;
  v5 = a1 + 24;
  v6 = (*(*(a1 + 24) + 56))(a1 + 24);
  v8 = IPC::Encoder::operator new(0x238, v7);
  *v8 = 815;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = v6;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v14 = v8;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v8, a2);
  IPC::ArgumentCoder<std::optional<unsigned long long>,void>::encode<IPC::Encoder,std::optional<unsigned long long> const&>(v8, v13);
  (*(*v5 + 32))(v5, &v14, 0);
  result = v14;
  v14 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v9);
    return bmalloc::api::tzoneFree(v11, v12);
  }

  return result;
}

IPC::Encoder *WebKit::WebTransportSession::destroyStream(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[0] = a3;
  v13[1] = a4;
  v5 = a1 + 24;
  v6 = (*(*(a1 + 24) + 56))(a1 + 24);
  v8 = IPC::Encoder::operator new(0x238, v7);
  *v8 = 818;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = v6;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v14 = v8;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v8, a2);
  IPC::ArgumentCoder<std::optional<unsigned long long>,void>::encode<IPC::Encoder,std::optional<unsigned long long> const&>(v8, v13);
  (*(*v5 + 32))(v5, &v14, 0);
  result = v14;
  v14 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v9);
    return bmalloc::api::tzoneFree(v11, v12);
  }

  return result;
}

uint64_t WebKit::LibWebRTCDnsResolverFactory::CreateAndResolve@<X0>(void *a1@<X1>, uint64_t a2@<X2>, WebKit::LibWebRTCResolver **a3@<X8>)
{
  {
    v6 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v12 = WebKit::WebProcess::operator new(0x370, a1);
    v6 = WebKit::WebProcess::WebProcess(v12);
    WebKit::WebProcess::singleton(void)::process = v6;
  }

  v7 = WebKit::WebProcess::libWebRTCNetwork(v6, a1);
  WebKit::LibWebRTCSocketFactory::createAsyncDnsResolver((v7 + 32), v8, &v16);
  v9 = v16;
  (*(a2 + 16))(0, a2, v13);
  v14 = *(a2 + 16);
  *(a2 + 16) = absl::internal_any_invocable::EmptyManager;
  *(a2 + 24) = 0;
  v10 = WTF::fastMalloc(0x28);
  *v10 = &unk_1F112D688;
  (v14)(0, v13, v10 + 8);
  *(v10 + 24) = v14;
  v14 = absl::internal_any_invocable::EmptyManager;
  v15 = v10;
  WebKit::LibWebRTCResolver::start(v9, a1, &v15);
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  result = (v14)(1, v13, v13);
  *a3 = v9;
  return result;
}

void WebKit::LibWebRTCResolver::start(uint64_t a1, webrtc::SocketAddress *a2, uint64_t *a3)
{
  v5 = *a3;
  *a3 = 0;
  v6 = *(a1 + 120);
  *(a1 + 120) = v5;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  webrtc::SocketAddress::operator=();
  *(a1 + 132) = webrtc::SocketAddress::port(a2);
  webrtc::SocketAddress::HostAsURIString(&__p, a2);
  WTF::String::String();
  if (v16 && WTF::StringImpl::endsWithIgnoringASCIICase() && (WTF::isVersion4UUID() & 1) == 0)
  {
    v11 = qword_1ED641580;
    if (os_log_type_enabled(qword_1ED641580, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v13) = 0;
      _os_log_error_impl(&dword_19D52D000, v11, OS_LOG_TYPE_ERROR, "mDNS candidate is not a Version 4 UUID", &v13, 2u);
    }

    *(a1 + 128) = -1;
    (*(**(a1 + 120) + 16))(*(a1 + 120));
  }

  else
  {
    v13 = *(a1 + 24);
    WTF::String::isolatedCopy();
    v7 = WTF::fastMalloc(0x18);
    *v7 = &unk_1F112DA20;
    v7[1] = v13;
    v8 = v14;
    v14 = 0;
    v7[2] = v8;
    v15 = v7;
    WebKit::LibWebRTCResolver::sendOnMainThread(&v15);
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }

    v10 = v14;
    v14 = 0;
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v9);
    }
  }

  v12 = v16;
  v16 = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v9);
  }

  if (v18 < 0)
  {
    operator delete(__p);
  }
}

uint64_t WebKit::LibWebRTCDnsResolverFactory::CreateAndResolve@<X0>(void *a1@<X1>, uint64_t a2@<X3>, WebKit::LibWebRTCResolver **a3@<X8>)
{
  {
    v6 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v12 = WebKit::WebProcess::operator new(0x370, a1);
    v6 = WebKit::WebProcess::WebProcess(v12);
    WebKit::WebProcess::singleton(void)::process = v6;
  }

  v7 = WebKit::WebProcess::libWebRTCNetwork(v6, a1);
  WebKit::LibWebRTCSocketFactory::createAsyncDnsResolver((v7 + 32), v8, &v16);
  v9 = v16;
  (*(a2 + 16))(0, a2, v13);
  v14 = *(a2 + 16);
  *(a2 + 16) = absl::internal_any_invocable::EmptyManager;
  *(a2 + 24) = 0;
  v10 = WTF::fastMalloc(0x28);
  *v10 = &unk_1F112D6B0;
  (v14)(0, v13, v10 + 8);
  *(v10 + 24) = v14;
  v14 = absl::internal_any_invocable::EmptyManager;
  v15 = v10;
  WebKit::LibWebRTCResolver::start(v9, a1, &v15);
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  result = (v14)(1, v13, v13);
  *a3 = v9;
  return result;
}

uint64_t *WebKit::LibWebRTCDnsResolverFactory::Create@<X0>(void *a1@<X1>, WebKit::LibWebRTCResolver **a2@<X8>)
{
  {
    v4 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v8 = WebKit::WebProcess::operator new(0x370, a1);
    v4 = WebKit::WebProcess::WebProcess(v8);
    WebKit::WebProcess::singleton(void)::process = v4;
  }

  v5 = (WebKit::WebProcess::libWebRTCNetwork(v4, a1) + 32);

  return WebKit::LibWebRTCSocketFactory::createAsyncDnsResolver(v5, v6, a2);
}

uint64_t WebKit::LibWebRTCDnsResolverFactory::Resolver::Start(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 16))(0, a3, v9);
  v10 = *(a3 + 16);
  *(a3 + 16) = absl::internal_any_invocable::EmptyManager;
  *(a3 + 24) = 0;
  v6 = WTF::fastMalloc(0x28);
  *v6 = &unk_1F112D6D8;
  (v10)(0, v9, v6 + 8);
  *(v6 + 24) = v10;
  v10 = absl::internal_any_invocable::EmptyManager;
  v11 = v6;
  (*(*a1 + 40))(a1, a2, &v11);
  v7 = v11;
  v11 = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  return (v10)(1, v9, v9);
}

uint64_t WebKit::LibWebRTCDnsResolverFactory::Resolver::Start(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 16))(0, a4, v10);
  v11 = *(a4 + 16);
  *(a4 + 16) = absl::internal_any_invocable::EmptyManager;
  *(a4 + 24) = 0;
  v7 = WTF::fastMalloc(0x28);
  *v7 = &unk_1F112D700;
  (v11)(0, v10, v7 + 8);
  *(v7 + 24) = v11;
  v11 = absl::internal_any_invocable::EmptyManager;
  v12 = v7;
  (*(*a1 + 40))(a1, a2, &v12);
  v8 = v12;
  v12 = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  return (v11)(1, v10, v10);
}

WebKit::LibWebRTCNetwork *WebKit::LibWebRTCNetwork::LibWebRTCNetwork(WebKit::LibWebRTCNetwork *this, atomic_uint *a2)
{
  v4 = WTF::FunctionDispatcher::FunctionDispatcher(this);
  *v4 = &unk_1F112CAF0;
  *(v4 + 8) = &unk_1F112CB30;
  *(v4 + 16) = 0;
  *(v4 + 24) = a2;
  atomic_fetch_add(a2 + 4, 1u);
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  *(v4 + 64) = 0u;
  *(v4 + 80) = 0u;
  *(v4 + 96) = 0;
  WebKit::WebRTCMonitor::WebRTCMonitor((v4 + 104), this);
  WebKit::WebMDNSRegister::WebMDNSRegister((this + 200), this);
  *(this + 224) = 0;
  *(this + 29) = 0;
  return this;
}

void WebKit::LibWebRTCNetwork::~LibWebRTCNetwork(WebKit::LibWebRTCNetwork *this, void *a2)
{
  v3 = *(this + 29);
  *(this + 29) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  v4 = *(this + 27);
  *(this + 27) = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, a2);
  }

  v5 = *(this + 26);
  if (v5)
  {
    v6 = *(v5 - 4);
    if (v6)
    {
      v7 = (v5 + 32);
      do
      {
        if (*(v7 - 2) != -1 && *v7)
        {
          WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(*v7, a2);
        }

        v7 += 6;
        --v6;
      }

      while (v6);
    }

    WTF::fastFree((v5 - 16), a2);
  }

  v8 = *(this + 25);
  if (v8)
  {
    *(v8 + 8) = 0;
    v9 = *(this + 25);
    *(this + 25) = 0;
    if (v9)
    {
      if (atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v9);
        WTF::fastFree(v9, a2);
      }
    }
  }

  WTF::Vector<WebKit::RTCNetwork,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 144, a2);
  v11 = *(this + 15);
  if (v11)
  {
    WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::deallocateTable(v11, v10);
  }

  v12 = *(this + 13);
  *(this + 13) = 0;
  if (v12 && atomic_fetch_add(v12, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v12);
    WTF::fastFree(v12, v10);
  }

  v13 = *(this + 10);
  v14 = *(this + 11);
  v15 = *(this + 24);
  v16 = *(this + 9);
  v17 = v13 - v16;
  if (v13 < v16)
  {
    if (v13 <= v15)
    {
      if (v13)
      {
        v18 = 8 * v13;
        v19 = *(this + 11);
        do
        {
          v20 = *v19;
          *v19 = 0;
          if (v20)
          {
            (*(*v20 + 8))(v20);
          }

          ++v19;
          v18 -= 8;
        }

        while (v18);
        v16 = *(this + 9);
      }

      if (v16 <= v15)
      {
        if (v16 != v15)
        {
          v21 = (v14 + 8 * v16);
          v22 = 8 * v15 - 8 * v16;
          do
          {
            v23 = *v21;
            *v21 = 0;
            if (v23)
            {
              (*(*v23 + 8))(v23);
            }

            ++v21;
            v22 -= 8;
          }

          while (v22);
        }

        goto LABEL_44;
      }
    }

LABEL_76:
    __break(1u);
    goto LABEL_79;
  }

  v24 = v15 - v16;
  if (v15 < v16)
  {
    goto LABEL_76;
  }

  if (v17 == -1)
  {
    v17 = v15 - v16;
    if (!v24)
    {
      goto LABEL_44;
    }
  }

  else
  {
    if (v24 < v17)
    {
      goto LABEL_76;
    }

    if (!v17)
    {
      goto LABEL_44;
    }
  }

  v25 = 8 * v17;
  v26 = (v14 + 8 * v16);
  do
  {
    v27 = *v26;
    *v26 = 0;
    if (v27)
    {
      (*(*v27 + 8))(v27);
    }

    ++v26;
    v25 -= 8;
  }

  while (v25);
LABEL_44:
  v28 = *(this + 11);
  if (v28)
  {
    *(this + 11) = 0;
    *(this + 24) = 0;
    WTF::fastFree(v28, v10);
  }

  v29 = *(this + 8);
  *(this + 8) = 0;
  if (v29)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v29);
  }

  v30 = *(this + 6);
  if (v30)
  {
    v31 = *(v30 - 4);
    if (v31)
    {
      v32 = (v30 + 8);
      do
      {
        if (*(v32 - 1) != -1)
        {
          v33 = *v32;
          *v32 = 0;
          if (v33)
          {
            v34 = *(v33 + 16);
            if (!v34)
            {
              goto LABEL_79;
            }

            *(v33 + 16) = v34 - 1;
          }
        }

        v32 += 2;
        --v31;
      }

      while (v31);
    }

    WTF::fastFree((v30 - 16), v10);
  }

  v35 = *(this + 5);
  if (v35)
  {
    v36 = *(v35 - 4);
    if (v36)
    {
      v37 = (v35 + 8);
      do
      {
        if (*(v37 - 1) != -1)
        {
          v38 = *v37;
          *v37 = 0;
          if (v38)
          {
            v39 = *(v38 + 344);
            if (!v39)
            {
              __break(0xC471u);
              JUMPOUT(0x19E314C3CLL);
            }

            *(v38 + 344) = v39 - 1;
          }
        }

        v37 += 2;
        --v36;
      }

      while (v36);
    }

    WTF::fastFree((v35 - 16), v10);
  }

  v40 = *(this + 3);
  *(this + 3) = 0;
  if (v40)
  {
    v41 = (v40 + 16);
    if (atomic_load(v41))
    {
      atomic_fetch_add(v41, 0xFFFFFFFF);
      goto LABEL_69;
    }

LABEL_79:
    __break(0xC471u);
    JUMPOUT(0x19E314C1CLL);
  }

LABEL_69:
  *(this + 1) = &unk_1F10EA5E0;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 2, v10);

  WTF::FunctionDispatcher::~FunctionDispatcher(this);
}

{
  WebKit::LibWebRTCNetwork::~LibWebRTCNetwork(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

void non-virtual thunk toWebKit::LibWebRTCNetwork::~LibWebRTCNetwork(WebKit::LibWebRTCNetwork *this, void *a2)
{
  WebKit::LibWebRTCNetwork::~LibWebRTCNetwork((this - 8), a2);
}

{
  WebKit::LibWebRTCNetwork::~LibWebRTCNetwork((this - 8), a2);

  bmalloc::api::tzoneFree(v2, v3);
}

uint64_t WebKit::LibWebRTCNetwork::ref(uint64_t this)
{
  if (!*(this + 24))
  {
    this = 120;
    __break(0xC471u);
  }

  return this;
}

uint64_t non-virtual thunk toWebKit::LibWebRTCNetwork::ref(uint64_t this)
{
  if (!*(this + 16))
  {
    this = 120;
    __break(0xC471u);
  }

  return this;
}

uint64_t WebKit::LibWebRTCNetwork::deref(uint64_t this)
{
  if (!*(this + 24))
  {
    this = 120;
    __break(0xC471u);
  }

  return this;
}

uint64_t non-virtual thunk toWebKit::LibWebRTCNetwork::deref(uint64_t this)
{
  if (!*(this + 16))
  {
    this = 120;
    __break(0xC471u);
  }

  return this;
}

atomic_ullong *WebKit::LibWebRTCNetwork::setSocketFactoryConnection(WebKit::LibWebRTCNetwork *this)
{
  v2 = *(this + 29);
  if (!v2)
  {
    if (*(this + 3))
    {
      v18 = WTF::fastMalloc(0x18);
      *v18 = &unk_1F112D728;
      v18[1] = this;
      v18[2] = this;
      v19[0] = v18;
      WebCore::LibWebRTCProvider::callOnWebRTCNetworkThread();
      result = v19[0];
      v19[0] = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }

      return result;
    }

LABEL_23:
    __break(0xC471u);
    JUMPOUT(0x19E314F70);
  }

  while (1)
  {
    v3 = *v2;
    if ((*v2 & 1) == 0)
    {
      break;
    }

    v4 = *v2;
    atomic_compare_exchange_strong_explicit(v2, &v4, v3 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v4 == v3)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v2);
LABEL_6:
  if (!*(this + 3))
  {
    goto LABEL_23;
  }

  while (1)
  {
    v5 = *v2;
    if ((*v2 & 1) == 0)
    {
      break;
    }

    v6 = *v2;
    atomic_compare_exchange_strong_explicit(v2, &v6, v5 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v6 == v5)
    {
      goto LABEL_11;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v2);
LABEL_11:
  v7 = WTF::fastMalloc(0x20);
  *v7 = &unk_1F112D750;
  v7[1] = this;
  v7[2] = this;
  v7[3] = v2;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E314F90);
  }

  v8 = v7;
  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  v11 = IPC::Encoder::operator new(0x238, v10);
  *v11 = 440;
  *(v11 + 68) = 0;
  *(v11 + 70) = 0;
  *(v11 + 69) = 0;
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *(v11 + 1) = 0;
  IPC::Encoder::encodeHeader(v11);
  v19[1] = IdentifierInternal;
  v20 = v11;
  v19[0] = v8;
  IPC::Connection::sendMessageWithAsyncReply(v2, &v20, v19, 0, 0);
  v13 = v19[0];
  v19[0] = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  v14 = v20;
  v20 = 0;
  if (v14)
  {
    IPC::Encoder::~Encoder(v14, v12);
    bmalloc::api::tzoneFree(v16, v17);
  }

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
}

uint64_t WebKit::LibWebRTCNetwork::networkProcessCrashed(WebKit::LibWebRTCNetwork *this)
{
  v3 = 0;
  WebKit::LibWebRTCNetwork::setConnection(this, &v3);
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  WebKit::WebRTCMonitor::ref(this + 104);
  WebKit::WebRTCMonitor::networkProcessCrashed((this + 104));

  return WebKit::WebRTCMonitor::ref(this + 104);
}

atomic_ullong *WebKit::LibWebRTCNetwork::setConnection(WebKit::LibWebRTCNetwork *this, uint64_t *a2)
{
  v4 = *(this + 29);
  if (v4)
  {
    while (1)
    {
      v5 = *v4;
      if ((*v4 & 1) == 0)
      {
        break;
      }

      v10 = *v4;
      atomic_compare_exchange_strong_explicit(v4, &v10, v5 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v10 == v5)
      {
        goto LABEL_4;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v4);
LABEL_4:
    IPC::Connection::removeMessageReceiver(v4, 0x16u, 0);
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v4);
  }

  v6 = *a2;
  *a2 = 0;
  result = *(this + 29);
  *(this + 29) = v6;
  if (result)
  {
    result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(result);
  }

  if (*(this + 224) == 1)
  {
    result = WebKit::LibWebRTCNetwork::setSocketFactoryConnection(this);
  }

  v8 = *(this + 29);
  if (v8)
  {
    while (1)
    {
      v9 = *v8;
      if ((*v8 & 1) == 0)
      {
        break;
      }

      v11 = *v8;
      atomic_compare_exchange_strong_explicit(v8, &v11, v9 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v11 == v9)
      {
        goto LABEL_12;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v8);
LABEL_12:
    IPC::Connection::addMessageReceiver(v8, this, this + 8, 22, 0);

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v8);
  }

  return result;
}

void WebKit::LibWebRTCNetwork::dispatch(uint64_t a1)
{
  if (*(a1 + 224))
  {

    WebCore::LibWebRTCProvider::callOnWebRTCNetworkThread();
  }

  else
  {
    v5 = v1;
    v6 = v2;
    v3 = qword_1ED641580;
    if (os_log_type_enabled(qword_1ED641580, OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_error_impl(&dword_19D52D000, v3, OS_LOG_TYPE_ERROR, "Received WebRTCSocket message while libWebRTCNetwork is not active", v4, 2u);
    }
  }
}

void WebKit::LibWebRTCNetwork::signalAddressReady(uint64_t a1, void *a2, WebKit::WebRTCNetwork::SocketAddress *a3)
{
  __p[0] = a2;
  v4 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::LibWebRTCSocket,WTF::RawPtrTraits<WebKit::LibWebRTCSocket>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::LibWebRTCSocket,WTF::RawPtrTraits<WebKit::LibWebRTCSocket>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::LibWebRTCSocket,WTF::RawPtrTraits<WebKit::LibWebRTCSocket>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::LibWebRTCSocket,WTF::RawPtrTraits<WebKit::LibWebRTCSocket>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>((a1 + 40), __p);
  if (v4)
  {
    v5 = v4;
    WebKit::WebRTCNetwork::SocketAddress::rtcAddress(a3, __p);
    WebKit::LibWebRTCSocket::signalAddressReady(v5, __p);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void WebKit::LibWebRTCNetwork::signalReadPacket(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5)
{
  __p[0] = a2;
  v6 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::LibWebRTCSocket,WTF::RawPtrTraits<WebKit::LibWebRTCSocket>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::LibWebRTCSocket,WTF::RawPtrTraits<WebKit::LibWebRTCSocket>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::LibWebRTCSocket,WTF::RawPtrTraits<WebKit::LibWebRTCSocket>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::LibWebRTCSocket,WTF::RawPtrTraits<WebKit::LibWebRTCSocket>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>((a1 + 40), __p);
  if (v6)
  {
    v7 = v6;
    WebKit::WebRTCNetwork::IPAddress::rtcAddress(a5, v8);
    webrtc::SocketAddress::SocketAddress(__p, v8);
    WebKit::LibWebRTCSocket::signalReadPacket(v7);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void WebKit::LibWebRTCNetwork::signalSentPacket(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v2 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::LibWebRTCSocket,WTF::RawPtrTraits<WebKit::LibWebRTCSocket>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::LibWebRTCSocket,WTF::RawPtrTraits<WebKit::LibWebRTCSocket>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::LibWebRTCSocket,WTF::RawPtrTraits<WebKit::LibWebRTCSocket>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::LibWebRTCSocket,WTF::RawPtrTraits<WebKit::LibWebRTCSocket>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>((a1 + 40), &v3);
  if (v2)
  {
    WebKit::LibWebRTCSocket::signalSentPacket(v2);
  }
}

uint64_t WebKit::LibWebRTCNetwork::signalConnect(uint64_t a1, uint64_t a2)
{
  v7 = a2;
  result = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::LibWebRTCSocket,WTF::RawPtrTraits<WebKit::LibWebRTCSocket>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::LibWebRTCSocket,WTF::RawPtrTraits<WebKit::LibWebRTCSocket>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::LibWebRTCSocket,WTF::RawPtrTraits<WebKit::LibWebRTCSocket>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::LibWebRTCSocket,WTF::RawPtrTraits<WebKit::LibWebRTCSocket>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>((a1 + 40), &v7);
  if (result)
  {
    v3 = result;
    *(result + 524) = 4;
    v4 = result + 240;
    result = *(result + 248);
    *(v3 + 264) = result;
    while (result != v4)
    {
      v6 = *(result + 16);
      v5 = result + 16;
      *(v3 + 264) = *(v5 - 8);
      v6(v5, v3);
      result = *(v3 + 264);
    }
  }

  return result;
}

WebKit::LibWebRTCSocket *WebKit::LibWebRTCNetwork::signalClose(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2;
  result = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::LibWebRTCSocket,WTF::RawPtrTraits<WebKit::LibWebRTCSocket>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::LibWebRTCSocket,WTF::RawPtrTraits<WebKit::LibWebRTCSocket>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::LibWebRTCSocket,WTF::RawPtrTraits<WebKit::LibWebRTCSocket>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::LibWebRTCSocket,WTF::RawPtrTraits<WebKit::LibWebRTCSocket>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>((a1 + 40), &v5);
  if (result)
  {
    return WebKit::LibWebRTCSocket::signalClose(result, a3);
  }

  return result;
}

uint64_t WebKit::LibWebRTCNetwork::signalUsedInterface(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x1E69E9840];
  *&v4[0] = a2;
  result = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::LibWebRTCSocket,WTF::RawPtrTraits<WebKit::LibWebRTCSocket>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::LibWebRTCSocket,WTF::RawPtrTraits<WebKit::LibWebRTCSocket>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::LibWebRTCSocket,WTF::RawPtrTraits<WebKit::LibWebRTCSocket>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::LibWebRTCSocket,WTF::RawPtrTraits<WebKit::LibWebRTCSocket>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>((a1 + 40), v4);
  if (result)
  {
    v3 = *(result + 576);
    v4[0] = *(result + 560);
    v4[1] = v3;
    return WebKit::LibWebRTCNetworkManager::signalUsedInterface(v4);
  }

  return result;
}

uint64_t WebKit::LibWebRTCNetworkManager::getOrCreate(WebCore::Document *a1, unint64_t *a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = WebCore::Document::allDocumentsMap(a1);
  result = WTF::HashTable<WebCore::ProcessQualified<WTF::UUID>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,WTF::WeakRef<WebCore::Document,WebCore::WeakPtrImplWithEventTargetData>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,WTF::WeakRef<WebCore::Document,WebCore::WeakPtrImplWithEventTargetData>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashMap<WebCore::ProcessQualified<WTF::UUID>,WTF::WeakRef<WebCore::Document,WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WTF::WeakRef<WebCore::Document,WebCore::WeakPtrImplWithEventTargetData>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::FastMalloc>::lookup<WTF::HashMapTranslatorAdapter<WTF::HashMap<WebCore::ProcessQualified<WTF::UUID>,WTF::WeakRef<WebCore::Document,WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WTF::WeakRef<WebCore::Document,WebCore::WeakPtrImplWithEventTargetData>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IdentityHashTranslator<WTF::HashMap<WebCore::ProcessQualified<WTF::UUID>,WTF::WeakRef<WebCore::Document,WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WTF::WeakRef<WebCore::Document,WebCore::WeakPtrImplWithEventTargetData>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>>>,(WTF::ShouldValidateKey)1,WebCore::ProcessQualified<WTF::UUID>>(v4, a2);
  if (!result || (v7 = *(result + 32)) == 0 || (v8 = *(v7 + 8)) == 0)
  {
    *a1 = 0;
    return result;
  }

  *(v8 + 28) += 2;
  v9 = *(v8 + 3288);
  if (!v9)
  {
    *a1 = 0;
    if (WebKit::LibWebRTCNetworkManager::s_heapRef)
    {
      NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::LibWebRTCNetworkManager::s_heapRef, v6);
    }

    else
    {
      NonCompact = WebKit::LibWebRTCNetworkManager::operatorNewSlow(0);
    }

    v11 = NonCompact;
    v12 = *(a2 + 1);
    v37 = *a2;
    v38 = v12;
    *(NonCompact + 8) = 1;
    v13 = (NonCompact + 8);
    *NonCompact = &unk_1F112D1E8;
    webrtc::NetworkManagerBase::NetworkManagerBase((NonCompact + 16));
    *v11 = &unk_1F112CB78;
    *(v11 + 16) = &unk_1F112CC08;
    *(v11 + 24) = &unk_1F112CC78;
    *(v11 + 288) = &unk_1F112CCA0;
    *(v11 + 296) = &unk_1F112CCD0;
    *(v11 + 304) = 0;
    v14 = v38;
    *(v11 + 320) = v37;
    *(v11 + 336) = v14;
    *(v11 + 352) = 1;
    *(v11 + 360) = 0;
    *(v11 + 353) = 0;
    atomic_fetch_add(v13, 1u);
    v15 = *a1;
    *a1 = v11;
    if (v15)
    {
      WTF::ThreadSafeRefCounted<WebCore::RTCNetworkManager,(WTF::DestructionThread)2>::deref((v15 + 8));
    }

    WebCore::Document::setRTCNetworkManager();
    *&v37 = 0;
    if (v11)
    {
      WTF::ThreadSafeRefCounted<WebCore::RTCNetworkManager,(WTF::DestructionThread)2>::deref((v11 + 8));
    }

    {
      v17 = WebKit::WebProcess::singleton(void)::process;
    }

    else
    {
      v35 = WebKit::WebProcess::operator new(0x370, v16);
      v17 = WebKit::WebProcess::WebProcess(v35);
      WebKit::WebProcess::singleton(void)::process = v17;
    }

    v18 = WebKit::WebProcess::libWebRTCNetwork(v17, v16);
    WebKit::WebRTCMonitor::ref(v18 + 104);
    v20 = *(v18 + 132);
    v21 = *(v18 + 128) + 1;
    *(v18 + 128) = v21;
    if (v21 <= v20)
    {
      goto LABEL_40;
    }

    v22 = *(v18 + 120);
    if (v22)
    {
      v23 = *(v22 - 4);
      if (!v23)
      {
LABEL_30:
        v29 = *(v22 - 4);
        if (6 * *(v22 - 12) < v29 && v29 > 8)
        {
          WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::shrinkToBestSize((v18 + 120));
          v22 = *(v18 + 120);
          *(v18 + 128) = 0;
          if (!v22)
          {
            goto LABEL_37;
          }
        }

        else
        {
          *(v18 + 128) = 0;
        }

        LODWORD(v22) = *(v22 - 12);
        if (v22 > 0x7FFFFFFE)
        {
          v31 = -2;
          goto LABEL_39;
        }

LABEL_37:
        v31 = 2 * v22;
LABEL_39:
        *(v18 + 132) = v31;
LABEL_40:
        WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v11 + 304), v11 + 296);
        v32 = *(v11 + 304);
        atomic_fetch_add(v32, 1u);
        v36 = v32;
        WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>((v18 + 120), &v36, &v37);
        v34 = v36;
        v36 = 0;
        if (v34 && atomic_fetch_add(v34, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v34);
          WTF::fastFree(v34, v33);
        }

        result = WebKit::WebRTCMonitor::ref(v18 + 104);
        goto LABEL_42;
      }

      v24 = 0;
      v25 = 8 * v23;
      v26 = v22 - 8;
      do
      {
        v27 = *(v26 + v25);
        if ((v27 + 1) >= 2 && !*(v27 + 8))
        {
          *(v26 + v25) = 0;
          if (atomic_fetch_add(v27, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v27);
            WTF::fastFree(v27, v19);
          }

          *(v26 + v25) = -1;
          ++v24;
        }

        v25 -= 8;
      }

      while (v25);
      v22 = *(v18 + 120);
      if (v24)
      {
        v28 = *(v22 - 12) - v24;
        *(v22 - 16) += v24;
        *(v22 - 12) = v28;
        goto LABEL_30;
      }

      if (v22)
      {
        goto LABEL_30;
      }
    }

    LODWORD(v22) = 0;
    *(v18 + 128) = 0;
    goto LABEL_37;
  }

  result = (*(*v9 + 48))(*(v8 + 3288));
  if ((result & 1) == 0)
  {
    result = 105;
    __break(0xC471u);
    return result;
  }

  atomic_fetch_add(v9 + 2, 1u);
  *a1 = v9;
LABEL_42:
  if (*(v8 + 28) == 2)
  {
    return WebCore::Node::removedLastRef(v8);
  }

  *(v8 + 28) -= 2;
  return result;
}

uint64_t WebKit::LibWebRTCNetworkManager::signalUsedInterface(__int128 *a1)
{
  v4 = *a1;
  *&v5 = *(a1 + 2);
  WTF::String::isolatedCopy();
  v1 = WTF::fastMalloc(0x40);
  *v1 = &unk_1F112D7A0;
  *(v1 + 16) = v4;
  *(v1 + 32) = v5;
  *(v1 + 48) = v6;
  v3 = v1;
  WTF::callOnMainRunLoop();
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return 0;
}

void WebKit::LibWebRTCNetworkManager::~LibWebRTCNetworkManager(WebKit::LibWebRTCNetworkManager *this, WTF::StringImpl *a2)
{
  v3 = *(this + 45);
  if (v3)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  v4 = *(this + 38);
  if (v4)
  {
    *(v4 + 8) = 0;
    v5 = *(this + 38);
    *(this + 38) = 0;
    if (v5)
    {
      if (atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v5);
        WTF::fastFree(v5, a2);
      }
    }
  }

  *(this + 2) = MEMORY[0x1E69E2168] + 16;
  *(this + 3) = MEMORY[0x1E69E2168] + 128;
  std::unique_ptr<webrtc::Network>::reset[abi:sn200100](this + 26, 0);
  std::unique_ptr<webrtc::Network>::reset[abi:sn200100](this + 25, 0);
  std::__tree<std::__value_type<std::string,std::unique_ptr<webrtc::Network>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<webrtc::Network>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<webrtc::Network>>>>::destroy(*(this + 23));
  v6 = *(this + 19);
  if (v6)
  {
    *(this + 20) = v6;
    operator delete(v6);
  }

  *(this + 2) = MEMORY[0x1E69E2158] + 16;
  *(this + 3) = MEMORY[0x1E69E2158] + 128;
  sigslot::_signal_base<sigslot::single_threaded>::disconnect_all(this + 88);
  std::__list_imp<sigslot::_opaque_connection>::clear(this + 13);
  sigslot::_signal_base<sigslot::single_threaded>::disconnect_all(this + 32);
  std::__list_imp<sigslot::_opaque_connection>::clear(this + 6);
}

{
  WebKit::LibWebRTCNetworkManager::~LibWebRTCNetworkManager(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

void non-virtual thunk toWebKit::LibWebRTCNetworkManager::~LibWebRTCNetworkManager(WebKit::LibWebRTCNetworkManager *this, WTF::StringImpl *a2)
{
  WebKit::LibWebRTCNetworkManager::~LibWebRTCNetworkManager((this - 16), a2);
}

{
  WebKit::LibWebRTCNetworkManager::~LibWebRTCNetworkManager((this - 24), a2);
}

{
  WebKit::LibWebRTCNetworkManager::~LibWebRTCNetworkManager((this - 288), a2);
}

{
  WebKit::LibWebRTCNetworkManager::~LibWebRTCNetworkManager((this - 296), a2);
}

{
  WebKit::LibWebRTCNetworkManager::~LibWebRTCNetworkManager((this - 16), a2);

  bmalloc::api::tzoneFree(v2, v3);
}

{
  WebKit::LibWebRTCNetworkManager::~LibWebRTCNetworkManager((this - 24), a2);

  bmalloc::api::tzoneFree(v2, v3);
}

{
  WebKit::LibWebRTCNetworkManager::~LibWebRTCNetworkManager((this - 288), a2);

  bmalloc::api::tzoneFree(v2, v3);
}

{
  WebKit::LibWebRTCNetworkManager::~LibWebRTCNetworkManager((this - 296), a2);

  bmalloc::api::tzoneFree(v2, v3);
}

uint64_t WebKit::LibWebRTCNetworkManager::close(WebKit::LibWebRTCNetworkManager *this, void *a2)
{
  {
    v3 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v23 = WebKit::WebProcess::operator new(0x370, a2);
    v3 = WebKit::WebProcess::WebProcess(v23);
    WebKit::WebProcess::singleton(void)::process = v3;
  }

  v4 = WebKit::WebProcess::libWebRTCNetwork(v3, a2);
  WebKit::WebRTCMonitor::ref(v4 + 104);
  v6 = *(v4 + 132);
  v7 = *(v4 + 128) + 1;
  *(v4 + 128) = v7;
  if (v7 > v6)
  {
    v8 = *(v4 + 120);
    if (v8)
    {
      v9 = *(v8 - 4);
      if (!v9)
      {
LABEL_17:
        v15 = *(v8 - 4);
        if (6 * *(v8 - 12) < v15 && v15 > 8)
        {
          WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::shrinkToBestSize((v4 + 120));
          v8 = *(v4 + 120);
          *(v4 + 128) = 0;
          if (!v8)
          {
            goto LABEL_24;
          }
        }

        else
        {
          *(v4 + 128) = 0;
        }

        LODWORD(v8) = *(v8 - 12);
        if (v8 > 0x7FFFFFFE)
        {
          v17 = -2;
          goto LABEL_26;
        }

LABEL_24:
        v17 = 2 * v8;
LABEL_26:
        *(v4 + 132) = v17;
        goto LABEL_27;
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
            WTF::fastFree(v13, v5);
          }

          *(v12 + v11) = -1;
          ++v10;
        }

        v11 -= 8;
      }

      while (v11);
      v8 = *(v4 + 120);
      if (v10)
      {
        v14 = *(v8 - 12) - v10;
        *(v8 - 16) += v10;
        *(v8 - 12) = v14;
        goto LABEL_17;
      }

      if (v8)
      {
        goto LABEL_17;
      }
    }

    LODWORD(v8) = 0;
    *(v4 + 128) = 0;
    goto LABEL_24;
  }

LABEL_27:
  v18 = *(this + 38);
  if (v18 && *(v18 + 8))
  {
    v24 = *(this + 38);
    v19 = WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::find<WTF::HashSetTranslator<WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>>,(WTF::ShouldValidateKey)1,WTF::DefaultWeakPtrImpl const*>((v4 + 120), &v24);
    v20 = *(v4 + 120);
    if (v20)
    {
      v21 = (v20 + 8 * *(v20 - 4));
      if (v21 == v19)
      {
        goto LABEL_36;
      }
    }

    else
    {
      if (!v19)
      {
        goto LABEL_36;
      }

      v21 = 0;
    }

    if (v21 != v19)
    {
      WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::remove((v4 + 120), v19);
    }
  }

LABEL_36:

  return WebKit::WebRTCMonitor::ref(v4 + 104);
}

uint64_t WebKit::LibWebRTCNetworkManager::unregisterMDNSNames(WebKit::LibWebRTCNetworkManager *this, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  {
    v3 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v8 = WebKit::WebProcess::operator new(0x370, a2);
    v3 = WebKit::WebProcess::WebProcess(v8);
    WebKit::WebProcess::singleton(void)::process = v3;
  }

  v4 = WebKit::WebProcess::libWebRTCNetwork(v3, a2);
  if (!*(v4 + 24))
  {
    __break(0xC471u);
    goto LABEL_9;
  }

  v5 = v4;
  WebKit::WebMDNSRegister::ref(v4 + 200);
  v6 = *(this + 21);
  v9[0] = *(this + 20);
  v9[1] = v6;
  WebKit::WebMDNSRegister::unregisterMDNSNames(v5 + 200, v9);
  result = WebKit::WebMDNSRegister::ref(v5 + 200);
  if (!*(v5 + 24))
  {
    __break(0xC471u);
LABEL_9:
    JUMPOUT(0x19E315E90);
  }

  return result;
}

uint64_t WebKit::LibWebRTCNetworkManager::StartUpdating(WebKit::LibWebRTCNetworkManager *this)
{
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(this + 76, this + 296);
  v2 = *(this + 38);
  atomic_fetch_add(v2, 1u);
  v3 = WTF::fastMalloc(0x10);
  *v3 = &unk_1F112D7C8;
  v3[1] = v2;
  v5 = v3;
  WTF::callOnMainRunLoop();
  result = v5;
  if (v5)
  {
    return (*(*v5 + 8))(v5);
  }

  return result;
}

uint64_t WebKit::LibWebRTCNetworkManager::StopUpdating(WebKit::LibWebRTCNetworkManager *this)
{
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(this + 76, this + 296);
  v2 = *(this + 38);
  atomic_fetch_add(v2, 1u);
  v3 = WTF::fastMalloc(0x10);
  *v3 = &unk_1F112D818;
  v3[1] = v2;
  v5 = v3;
  WTF::callOnMainRunLoop();
  result = v5;
  if (v5)
  {
    return (*(*v5 + 8))(v5);
  }

  return result;
}

uint64_t WebKit::LibWebRTCNetworkManager::GetMdnsResponder(WebKit::LibWebRTCNetworkManager *this)
{
  if (*(this + 352))
  {
    v1 = this;
  }

  else
  {
    v1 = 0;
  }

  if (v1)
  {
    return v1 + 288;
  }

  else
  {
    return 0;
  }
}

char *non-virtual thunk toWebKit::LibWebRTCNetworkManager::GetMdnsResponder(WebKit::LibWebRTCNetworkManager *this)
{
  v1 = this - 16;
  if (!*(this + 336))
  {
    v1 = 0;
  }

  v2 = v1 + 288;
  if (*(this + 336))
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

{
  v1 = this - 24;
  if (!*(this + 328))
  {
    v1 = 0;
  }

  v2 = v1 + 288;
  if (*(this + 328))
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t WebKit::LibWebRTCNetworkManager::networksChanged(uint64_t a1, int *a2, WebKit::WebRTCNetwork::IPAddress *a3, uint64_t a4, __n128 a5)
{
  v5 = *(a1 + 353);
  *(a1 + 353) = 1;
  return WebKit::LibWebRTCNetworkManager::networksChanged(a1, a2, a3, a4, (v5 & 1) == 0, a5);
}

uint64_t WebKit::LibWebRTCNetworkManager::networksChanged(uint64_t a1, int *a2, WebKit::WebRTCNetwork::IPAddress *this, uint64_t a4, char a5, __n128 a6)
{
  memset(v124, 0, sizeof(v124));
  if (*(a1 + 354) == 1)
  {
    if (v124 != a2)
    {
      v9 = a2[3];
      if (v9)
      {
        WTF::Vector<WebKit::RTCNetwork,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(v124, 0);
        WTF::Vector<WebKit::RTCNetwork,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(v124, a2[3]);
        v9 = v124[3];
        v10 = *a2;
        if (v124[3])
        {
          v11 = v10 + 96 * v124[3];
          v12 = *v124;
          do
          {
            WTF::Vector<char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(v12, v10);
            WTF::Vector<char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(v12 + 16, (v10 + 16));
            a6 = *(v10 + 32);
            v13 = *(v10 + 48);
            *(v12 + 60) = *(v10 + 60);
            *(v12 + 32) = a6;
            *(v12 + 48) = v13;
            if (v10 != v12)
            {
              v14 = *(v12 + 92);
              v15 = *(v10 + 92);
              if (v14 <= v15)
              {
                if (v15 > *(v12 + 88))
                {
                  WTF::Vector<WebKit::WebRTCNetwork::InterfaceAddress,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(v12 + 80, 0);
                  WTF::Vector<WebKit::WebRTCNetwork::InterfaceAddress,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(v12 + 80, *(v10 + 92));
                  v14 = *(v12 + 92);
                }
              }

              else
              {
                *(v12 + 92) = v15;
                v14 = v15;
              }

              if (v14)
              {
                memmove(*(v12 + 80), *(v10 + 80), 24 * v14);
                v14 = *(v12 + 92);
              }

              v16 = *(v10 + 92);
              if (v14 != v16)
              {
                v17 = 3 * v14;
                v18 = (*(v12 + 80) + 24 * v14);
                v19 = (*(v10 + 80) + 8 * v17);
                v20 = 24 * v16 - 8 * v17;
                do
                {
                  a6 = *v19;
                  v18[1].n128_u64[0] = v19[1].n128_u64[0];
                  *v18 = a6;
                  v18 = (v18 + 24);
                  v19 = (v19 + 24);
                  v20 -= 24;
                }

                while (v20);
                LODWORD(v14) = *(v10 + 92);
              }

              *(v12 + 92) = v14;
            }

            v10 += 96;
            v12 += 96;
          }

          while (v10 != v11);
          v10 = *a2;
          v9 = v124[3];
        }
      }

      else
      {
        v10 = *a2;
      }

      v86 = a2[3];
      if (v9 != v86)
      {
        v117 = a2;
        v87 = *v124;
        v88 = 96 * v9;
        v89 = 96 * v86;
        do
        {
          v90 = v10 + v88;
          v91 = *(v10 + v88 + 12);
          v92 = v87 + v88;
          *v92 = 0;
          *(v92 + 8) = 0;
          *(v92 + 12) = v91;
          if (v91)
          {
            v93 = WTF::fastMalloc(v91);
            *(v92 + 8) = v91;
            *v92 = v93;
            memcpy(v93, *(v10 + v88), *(v90 + 12));
          }

          v94 = *(v90 + 28);
          *(v92 + 16) = 0;
          *(v92 + 24) = 0;
          v95 = v92 + 16;
          *(v95 + 12) = v94;
          if (v94)
          {
            v96 = WTF::fastMalloc(v94);
            *(v87 + v88 + 24) = v94;
            *v95 = v96;
            memcpy(v96, *(v10 + v88 + 16), *(v90 + 28));
          }

          v97 = (v87 + v88);
          v98 = *(v10 + v88 + 32);
          v99 = *(v10 + v88 + 48);
          *(v97 + 60) = *(v10 + v88 + 60);
          v97[2] = v98;
          v97[3] = v99;
          WTF::Vector<WebKit::WebRTCNetwork::InterfaceAddress,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v87 + v88 + 80, (v10 + v88 + 80));
          v87 += 96;
          v10 += 96;
          v89 -= 96;
        }

        while (v88 != v89);
        v9 = v117[3];
      }

      v124[3] = v9;
    }

    goto LABEL_102;
  }

  if ((*(a1 + 352) & 1) == 0 && *(a1 + 355) == 1)
  {
    v22 = *(a1 + 360);
    if ((!v22 || !*(v22 - 12)) && (*(a1 + 356) & 1) == 0)
    {
      v23 = WebCore::Document::allDocumentsMap(a1);
      v24 = WTF::HashTable<WebCore::ProcessQualified<WTF::UUID>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,WTF::WeakRef<WebCore::Document,WebCore::WeakPtrImplWithEventTargetData>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,WTF::WeakRef<WebCore::Document,WebCore::WeakPtrImplWithEventTargetData>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashMap<WebCore::ProcessQualified<WTF::UUID>,WTF::WeakRef<WebCore::Document,WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WTF::WeakRef<WebCore::Document,WebCore::WeakPtrImplWithEventTargetData>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::FastMalloc>::lookup<WTF::HashMapTranslatorAdapter<WTF::HashMap<WebCore::ProcessQualified<WTF::UUID>,WTF::WeakRef<WebCore::Document,WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WTF::WeakRef<WebCore::Document,WebCore::WeakPtrImplWithEventTargetData>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IdentityHashTranslator<WTF::HashMap<WebCore::ProcessQualified<WTF::UUID>,WTF::WeakRef<WebCore::Document,WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WTF::WeakRef<WebCore::Document,WebCore::WeakPtrImplWithEventTargetData>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>>>,(WTF::ShouldValidateKey)1,WebCore::ProcessQualified<WTF::UUID>>(v23, (a1 + 320));
      if (v24)
      {
        v25 = v24[4];
        if (v25)
        {
          v26 = *(v25 + 8);
          if (v26)
          {
            v27 = *(v26 + 28);
            *(v26 + 28) = v27 + 2;
            v28 = *(v26 + 552);
            if (v28)
            {
              v29 = *(v28 + 8);
              if (v29)
              {
                v30 = *(v29 + 24);
                if (v30)
                {
                  v31 = *(v30 + 8);
                  if (v31)
                  {
                    v32 = (v31 + 8);
                    ++*(v31 + 8);
                    v33 = WebKit::WebPage::fromCorePage(v31);
                    if (v33)
                    {
                      v34 = v33;
                      CFRetain(*(v33 + 8));
                      *(a1 + 356) = 1;
                      WebCore::RegistrableDomain::RegistrableDomain(v129, (v26 + 800));
                      WebCore::RegistrableDomain::RegistrableDomain(&v120, (v26 + 1072));
                      v37 = WTF::equal(v129[0], v120, v35);
                      v38 = v120;
                      v120 = 0;
                      if (v38 && atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v38, v36);
                      }

                      v114 = v32;
                      {
                        v39 = WebKit::WebProcess::singleton(void)::process;
                      }

                      else
                      {
                        v112 = WebKit::WebProcess::operator new(0x370, v36);
                        v39 = WebKit::WebProcess::WebProcess(v112);
                        WebKit::WebProcess::singleton(void)::process = v39;
                      }

                      v113 = *(WebKit::WebProcess::ensureNetworkProcessConnection(v39) + 24);
                      v125 = *(v34 + 1832);
                      v120 = (v26 + 800);
                      *v121 = &v125;
                      v121[8] = v37;
                      v121[9] = 1;
                      *&v121[16] = v129;
                      WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a1 + 304), a1 + 296);
                      v40 = *(a1 + 304);
                      atomic_fetch_add(v40, 1u);
                      v41 = WTF::fastMalloc(0x10);
                      *v41 = &unk_1F112D840;
                      v41[1] = v40;
                      if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
                      {
LABEL_111:
                        __break(0xC471u);
                        JUMPOUT(0x19E316A28);
                      }

                      v42 = v41;
                      IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
                      v45 = IPC::Encoder::operator new(0x238, v44);
                      *v45 = 740;
                      *(v45 + 68) = 0;
                      *(v45 + 70) = 0;
                      *(v45 + 69) = 0;
                      *(v45 + 2) = 0;
                      *(v45 + 3) = 0;
                      *(v45 + 1) = 0;
                      IPC::Encoder::encodeHeader(v45);
                      v130 = v45;
                      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v45, v120);
                      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v45, **v121);
                      IPC::Encoder::operator<<<BOOL &>(v45, &v121[8]);
                      IPC::Encoder::operator<<<BOOL &>(v45, &v121[9]);
                      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v45, *&v121[16]);
                      v134[0] = v42;
                      v134[1] = IdentifierInternal;
                      IPC::Connection::sendMessageWithAsyncReply(v113, &v130, v134, 0, 0);
                      v47 = v134[0];
                      v134[0] = 0;
                      v32 = v114;
                      if (v47)
                      {
                        (*(*v47 + 8))(v47);
                      }

                      v48 = v130;
                      v130 = 0;
                      if (v48)
                      {
                        IPC::Encoder::~Encoder(v48, v46);
                        bmalloc::api::tzoneFree(v110, v111);
                      }

                      v49 = v129[0];
                      v129[0] = 0;
                      if (v49 && atomic_fetch_add_explicit(v49, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v49, v46);
                      }

                      CFRelease(*(v34 + 8));
                    }

                    WTF::RefCounted<WebCore::Page>::deref(v32);
                    v27 = *(v26 + 28) - 2;
                  }
                }
              }
            }

            if (v27)
            {
              *(v26 + 28) = v27;
            }

            else
            {
              WebCore::Node::removedLastRef(v26);
            }
          }
        }
      }
    }
  }

  v50 = a2[3];
  if (v50)
  {
    v51 = *a2;
    v52 = *a2 + 96 * v50;
    while (1)
    {
      v53 = *(v51 + 80);
      v54 = *(v51 + 92);
      if (v54)
      {
        break;
      }

LABEL_57:
      if ((*(a1 + 352) & 1) == 0 && *(a1 + 355) == 1)
      {
        WTF::String::fromUTF8();
        v60 = v120;
        v61 = *(a1 + 360);
        if (v61)
        {
          if (v120 == -1)
          {
            goto LABEL_111;
          }

          if (!v120)
          {
            __break(0xC471u);
            JUMPOUT(0x19E316A48);
          }

          v79 = *(v61 - 8);
          v80 = *(v120 + 4);
          v115 = v79;
          if (v80 < 0x100)
          {
            v81 = WTF::StringImpl::hashSlowCase(v120);
            v79 = v115;
          }

          else
          {
            v81 = v80 >> 8;
          }

          for (i = 0; ; v81 = i + v83)
          {
            v83 = v81 & v79;
            v84 = *(v61 + 8 * (v81 & v79));
            if (v84 != -1)
            {
              if (!v84)
              {
                LODWORD(v61) = 0;
                goto LABEL_90;
              }

              v116 = i;
              v85 = WTF::equal(v84, v120, v59);
              i = v116;
              v79 = v115;
              if (v85)
              {
                break;
              }
            }

            ++i;
          }

          LODWORD(v61) = 1;
LABEL_90:
          v60 = v120;
        }

        v120 = 0;
        if (v60 && atomic_fetch_add_explicit(v60, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v60, v58);
          if (v61)
          {
            goto LABEL_63;
          }
        }

        else if (v61)
        {
          goto LABEL_63;
        }
      }

LABEL_75:
      v51 += 96;
      if (v51 == v52)
      {
        goto LABEL_102;
      }
    }

    v55 = v53 + 24 * v54;
    while (1)
    {
      WebKit::WebRTCNetwork::IPAddress::rtcAddress(this, v134);
      WebKit::WebRTCNetwork::IPAddress::rtcAddress(v53, &v120);
      v56 = *(v53 + 20);
      v131 = *v121;
      v132 = *&v121[4];
      v130 = &off_1F110D978;
      v133 = v56;
      if (webrtc::IPAddress::operator==())
      {
        break;
      }

      WebKit::WebRTCNetwork::IPAddress::rtcAddress(a4, v129);
      WebKit::WebRTCNetwork::IPAddress::rtcAddress(v53, &v120);
      v57 = *(v53 + 20);
      v126 = *v121;
      v127 = *&v121[4];
      v125 = &off_1F110D978;
      v128 = v57;
      if (webrtc::IPAddress::operator==())
      {
        break;
      }

      v53 += 24;
      if (v53 == v55)
      {
        goto LABEL_57;
      }
    }

LABEL_63:
    if (v124[3] == v124[2])
    {
      v62 = WTF::Vector<WebKit::RTCNetwork,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(v124, v124[3] + 1, v51);
      v63 = *v124 + 96 * v124[3];
      v64 = *(v62 + 12);
      *v63 = 0;
      *(v63 + 8) = 0;
      *(v63 + 12) = v64;
      if (v64)
      {
        v65 = WTF::fastMalloc(v64);
        *(v63 + 8) = v64;
        *v63 = v65;
        memcpy(v65, *v62, *(v62 + 12));
      }

      v66 = *(v62 + 28);
      *(v63 + 16) = 0;
      *(v63 + 24) = 0;
      *(v63 + 28) = v66;
      if (v66)
      {
        v67 = WTF::fastMalloc(v66);
        *(v63 + 24) = v66;
        *(v63 + 16) = v67;
        memcpy(v67, *(v62 + 16), *(v62 + 28));
      }

      v68 = *(v62 + 32);
      v69 = *(v62 + 48);
      *(v63 + 60) = *(v62 + 60);
      *(v63 + 32) = v68;
      *(v63 + 48) = v69;
      v70 = v63 + 80;
      v71 = (v62 + 80);
    }

    else
    {
      v72 = *(v51 + 12);
      v73 = *v124 + 96 * v124[3];
      *v73 = 0;
      *(v73 + 8) = 0;
      *(v73 + 12) = v72;
      if (v72)
      {
        v74 = WTF::fastMalloc(v72);
        *(v73 + 8) = v72;
        *v73 = v74;
        memcpy(v74, *v51, *(v51 + 12));
      }

      v75 = *(v51 + 28);
      *(v73 + 16) = 0;
      *(v73 + 24) = 0;
      *(v73 + 28) = v75;
      if (v75)
      {
        v76 = WTF::fastMalloc(v75);
        *(v73 + 24) = v75;
        *(v73 + 16) = v76;
        memcpy(v76, *(v51 + 16), *(v51 + 28));
      }

      v77 = *(v51 + 32);
      v78 = *(v51 + 48);
      *(v73 + 60) = *(v51 + 60);
      *(v73 + 32) = v77;
      *(v73 + 48) = v78;
      v70 = v73 + 80;
      v71 = (v51 + 80);
    }

    WTF::Vector<WebKit::WebRTCNetwork::InterfaceAddress,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v70, v71);
    ++v124[3];
    goto LABEL_75;
  }

LABEL_102:
  a6.n128_u64[0] = 0;
  v120 = a1;
  atomic_fetch_add((a1 + 8), 1u);
  v100 = *v124;
  v101 = *&v124[2];
  *v124 = a6;
  v122 = *this;
  *v123 = *(this + 4);
  *&v123[4] = *a4;
  *&v123[20] = *(a4 + 16);
  v123[24] = a5;
  v102 = WTF::fastMalloc(0x58);
  *v102 = &unk_1F112D868;
  *(v102 + 8) = v120;
  *(v102 + 16) = a1;
  *v121 = 0;
  *&v121[8] = 0;
  *(v102 + 24) = v100;
  *&v121[16] = 0;
  *(v102 + 32) = v101;
  v103 = *&v123[9];
  v104 = v122;
  *(v102 + 56) = *v123;
  *(v102 + 65) = v103;
  *(v102 + 40) = v104;
  v134[0] = v102;
  WebCore::LibWebRTCProvider::callOnWebRTCNetworkThread();
  v106 = v134[0];
  v134[0] = 0;
  if (v106)
  {
    (*(*v106 + 8))(v106);
  }

  WTF::Vector<WebKit::RTCNetwork,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v121[8], v105);
  v108 = *v121;
  *v121 = 0;
  if (v108)
  {
    WTF::ThreadSafeRefCounted<WebCore::RTCNetworkManager,(WTF::DestructionThread)2>::deref((v108 + 8));
  }

  return WTF::Vector<WebKit::RTCNetwork,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v124, v107);
}

uint64_t non-virtual thunk toWebKit::LibWebRTCNetworkManager::networksChanged(uint64_t a1, int *a2, WebKit::WebRTCNetwork::IPAddress *a3, uint64_t a4, __n128 a5)
{
  v5 = *(a1 + 57);
  *(a1 + 57) = 1;
  return WebKit::LibWebRTCNetworkManager::networksChanged(a1 - 296, a2, a3, a4, (v5 & 1) == 0, a5);
}

void *WebKit::LibWebRTCNetworkManager::interfaceNameForTesting(WebKit::LibWebRTCNetworkManager *this)
{
  result = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(this + 45);
  v3 = *(this + 45);
  if (v3)
  {
    v3 += *(v3 - 1);
  }

  if (v3 == result)
  {
    return MEMORY[0x1E696EBA8];
  }

  return result;
}

WTF::StringImpl **WebKit::LibWebRTCNetworkManager::signalUsedInterface(uint64_t a1, WTF::StringImpl **a2, const WTF::StringImpl *a3)
{
  result = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>((a1 + 360), a2, a3, v10);
  if (v10[16] == 1 && (*(a1 + 352) & 1) == 0 && (*(a1 + 355) & 1) != 0)
  {
    {
      v6 = WebKit::WebProcess::singleton(void)::process;
    }

    else
    {
      v9 = WebKit::WebProcess::operator new(0x370, v5);
      v6 = WebKit::WebProcess::WebProcess(v9);
      WebKit::WebProcess::singleton(void)::process = v6;
    }

    v7 = WebKit::WebProcess::libWebRTCNetwork(v6, v5);
    WebKit::WebRTCMonitor::ref(v7 + 104);
    if (*(v7 + 136) == 1)
    {
      WebKit::LibWebRTCNetworkManager::networksChanged(a1, (v7 + 144), (v7 + 160), v7 + 180, 0, v8);
    }

    return WebKit::WebRTCMonitor::ref(v7 + 104);
  }

  return result;
}

uint64_t WebKit::LibWebRTCNetworkManager::networkProcessCrashed(WebKit::LibWebRTCNetworkManager *this)
{
  *(this + 353) = 0;
  result = WebCore::LibWebRTCProvider::hasWebRTCThreads(this);
  if (result)
  {
    atomic_fetch_add(this + 2, 1u);
    v3 = WTF::fastMalloc(0x18);
    *v3 = &unk_1F112D890;
    v3[1] = this;
    v3[2] = this;
    v4 = v3;
    WebCore::LibWebRTCProvider::callOnWebRTCNetworkThread();
    result = v4;
    if (v4)
    {
      return (*(*v4 + 8))(v4);
    }
  }

  return result;
}

uint64_t WebKit::LibWebRTCNetworkManager::CreateNameForAddress(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a1 + 304), a1 + 296);
  v6 = *(a1 + 304);
  atomic_fetch_add(v6, 1u);
  v10 = v6;
  v11 = *(a2 + 8);
  v12 = *(a2 + 12);
  std::__function::__value_func<void ()(webrtc::IPAddress const&,std::string_view)>::__value_func[abi:sn200100](v13, a3);
  v7 = WTF::fastMalloc(0x50);
  *v7 = &unk_1F112D8B8;
  *(v7 + 8) = v10;
  *(v7 + 16) = &off_1F10EE1B0;
  *(v7 + 24) = v11;
  *(v7 + 28) = v12;
  v8 = v14;
  if (v14)
  {
    if (v14 == v13)
    {
      *(v7 + 72) = v7 + 48;
      (*(*v8 + 24))(v8);
    }

    else
    {
      *(v7 + 72) = v14;
      v14 = 0;
    }
  }

  else
  {
    *(v7 + 72) = 0;
  }

  WTF::callOnMainRunLoop();
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  std::__function::__value_func<void ()(webrtc::IPAddress const&,std::string_view)>::~__value_func[abi:sn200100](v13);
  return 0;
}

WebKit::LibWebRTCProvider *WebKit::LibWebRTCProvider::LibWebRTCProvider(WebKit::LibWebRTCProvider *this, WebKit::WebPage *a2)
{
  *WebCore::LibWebRTCProvider::LibWebRTCProvider(this) = &unk_1F112CD10;
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2 + 6, a2 + 16);
  v4 = *(a2 + 3);
  atomic_fetch_add(v4, 1u);
  *(this + 27) = v4;
  *(this + 208) = 0;
  *(this + 172) = 1;
  return this;
}

void WebKit::LibWebRTCProvider::~LibWebRTCProvider(WebKit::LibWebRTCProvider *this, void *a2)
{
  v3 = *(this + 27);
  *(this + 27) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  WebCore::LibWebRTCProvider::~LibWebRTCProvider(this);
}

{
  WebKit::LibWebRTCProvider::~LibWebRTCProvider(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

atomic_uint *WebKit::LibWebRTCProvider::createPeerConnection@<X0>(WebKit::LibWebRTCCodecs *a1@<X0>, _OWORD *a2@<X1>, void *a3@<X8>)
{
  v14 = *MEMORY[0x1E69E9840];
  WebKit::LibWebRTCCodecs::initializeIfNeeded(a1);
  v6 = a2[1];
  v13[0] = *a2;
  v13[1] = v6;
  result = WebKit::LibWebRTCNetworkManager::getOrCreate(&v12, v13);
  v8 = v12;
  if (v12)
  {
    *(v8 + 354) = WebCore::LibWebRTCProvider::isEnumeratingAllNetworkInterfacesEnabled(a1);
    *(v8 + 355) = *(a1 + 213);
    if (WebKit::LibWebRTCDnsResolverFactory::s_heapRef)
    {
      NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::LibWebRTCDnsResolverFactory::s_heapRef, v9);
    }

    else
    {
      NonCompact = WebKit::LibWebRTCDnsResolverFactory::operatorNewSlow(0);
    }

    *NonCompact = &unk_1F112CE58;
    *&v13[0] = NonCompact;
    WebCore::LibWebRTCProvider::createPeerConnection();
    v11 = *&v13[0];
    *&v13[0] = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }

    return WTF::ThreadSafeRefCounted<WebCore::RTCNetworkManager,(WTF::DestructionThread)2>::deref((v8 + 8));
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

uint64_t WebKit::LibWebRTCProvider::disableNonLocalhostConnections(WebKit::LibWebRTCProvider *this, void *a2)
{
  {
    v2 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v4 = WebKit::WebProcess::operator new(0x370, a2);
    v2 = WebKit::WebProcess::WebProcess(v4);
    WebKit::WebProcess::singleton(void)::process = v2;
  }

  result = WebKit::WebProcess::libWebRTCNetwork(v2, a2);
  if (*(result + 24))
  {
    *(result + 56) = 1;
  }

  else
  {
    result = 120;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::LibWebRTCProvider::isSupportingVP9HardwareDecoder(WebKit::LibWebRTCProvider *this, void *a2)
{
  {
    v2 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v6 = WebKit::WebProcess::operator new(0x370, a2);
    v2 = WebKit::WebProcess::WebProcess(v6);
    WebKit::WebProcess::singleton(void)::process = v2;
  }

  v3 = WebKit::WebProcess::libWebRTCCodecs(v2, a2);
  v4 = 122;
  if (*(v3 + 121))
  {
    v4 = 120;
  }

  return *(v3 + v4);
}

WebKit::LibWebRTCCodecs *WebKit::LibWebRTCProvider::setVP9HardwareSupportForTesting(uint64_t a1, void *a2)
{
  v2 = a2;
  {
    v3 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v5 = WebKit::WebProcess::operator new(0x370, a2);
    v3 = WebKit::WebProcess::WebProcess(v5);
    WebKit::WebProcess::singleton(void)::process = v3;
  }

  result = WebKit::WebProcess::libWebRTCCodecs(v3, a2);
  *(result + 60) = v2;
  return result;
}

uint64_t WebKit::RTCSocketFactory::CreateUdpSocket(WebKit::RTCSocketFactory *this, const webrtc::SocketAddress *a2, __int16 a3, __int16 a4)
{
  v14 = *MEMORY[0x1E69E9840];
  {
    v8 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v12 = WebKit::WebProcess::operator new(0x370, a2);
    v8 = WebKit::WebProcess::WebProcess(v12);
    WebKit::WebProcess::singleton(void)::process = v8;
  }

  v9 = WebKit::WebProcess::libWebRTCNetwork(v8, a2);
  v10 = *(this + 3);
  v13[0] = *(this + 2);
  v13[1] = v10;
  return WebKit::LibWebRTCSocketFactory::createUdpSocket(v9 + 32, v13, a2, a3, a4, *(this + 1), *(this + 64), *(this + 65), this + 9);
}

uint64_t WebKit::RTCSocketFactory::CreateClientTcpSocket(uint64_t a1, void *a2, const webrtc::SocketAddress *a3, _DWORD *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  {
    v8 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v16 = WebKit::WebProcess::operator new(0x370, a2);
    v8 = WebKit::WebProcess::WebProcess(v16);
    WebKit::WebProcess::singleton(void)::process = v8;
  }

  v9 = WebKit::WebProcess::libWebRTCNetwork(v8, a2);
  v10 = *(a1 + 48);
  v18[0] = *(a1 + 32);
  v18[1] = v10;
  v11 = *(a1 + 16);
  if (v11)
  {
    atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
  }

  v17 = v11;
  ClientTcpSocket = WebKit::LibWebRTCSocketFactory::createClientTcpSocket(v9 + 32, v18, a2, a3, &v17, a4, *(a1 + 8), *(a1 + 64), *(a1 + 65), (a1 + 72));
  v14 = v17;
  v17 = 0;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, v12);
  }

  return ClientTcpSocket;
}

uint64_t *WebKit::RTCSocketFactory::CreateAsyncDnsResolver@<X0>(void *a1@<X1>, WebKit::LibWebRTCResolver **a2@<X8>)
{
  {
    v4 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v8 = WebKit::WebProcess::operator new(0x370, a1);
    v4 = WebKit::WebProcess::WebProcess(v8);
    WebKit::WebProcess::singleton(void)::process = v4;
  }

  v5 = (WebKit::WebProcess::libWebRTCNetwork(v4, a1) + 32);

  return WebKit::LibWebRTCSocketFactory::createAsyncDnsResolver(v5, v6, a2);
}

uint64_t WebKit::RTCSocketFactory::suspend(WebKit::RTCSocketFactory *this)
{
  v4 = *(this + 2);
  *&v5 = *(this + 6);
  v1 = WTF::fastMalloc(0x30);
  *v1 = &unk_1F112D930;
  *(v1 + 16) = v4;
  *(v1 + 32) = v5;
  v3 = v1;
  WebCore::LibWebRTCProvider::callOnWebRTCNetworkThread();
  result = v3;
  if (v3)
  {
    return (*(*v3 + 8))(v3);
  }

  return result;
}

uint64_t WebKit::RTCSocketFactory::resume(WebKit::RTCSocketFactory *this)
{
  v4 = *(this + 2);
  *&v5 = *(this + 6);
  v1 = WTF::fastMalloc(0x30);
  *v1 = &unk_1F112D980;
  *(v1 + 16) = v4;
  *(v1 + 32) = v5;
  v3 = v1;
  WebCore::LibWebRTCProvider::callOnWebRTCNetworkThread();
  result = v3;
  if (v3)
  {
    return (*(*v3 + 8))(v3);
  }

  return result;
}

uint64_t WebKit::LibWebRTCProvider::startedNetworkThread(WebKit::LibWebRTCProvider *this, void *a2)
{
  {
    v2 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v5 = WebKit::WebProcess::operator new(0x370, a2);
    v2 = WebKit::WebProcess::WebProcess(v5);
    WebKit::WebProcess::singleton(void)::process = v2;
  }

  result = WebKit::WebProcess::libWebRTCNetwork(v2, a2);
  if (!*(result + 24) || (v4 = result, *(result + 224) = 1, *(result + 232)) && (result = WebKit::LibWebRTCNetwork::setSocketFactoryConnection(result), !*(v4 + 24)))
  {
    __break(0xC471u);
    JUMPOUT(0x19E317698);
  }

  return result;
}

void WebKit::LibWebRTCProvider::createSocketFactory(uint64_t a1@<X0>, uint64_t *a2@<X1>, __int128 *a3@<X2>, char a4@<W3>, uint64_t *a5@<X4>, uint64_t *a6@<X8>)
{
  v7 = *(*(a1 + 216) + 8);
  if (v7)
  {
    CFRetain(*(v7 - 8));
    v13 = *(v7 + 1816);
    if (WebKit::RTCSocketFactory::s_heapRef)
    {
      NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::RTCSocketFactory::s_heapRef, v12);
    }

    else
    {
      NonCompact = WebKit::RTCSocketFactory::operatorNewSlow(0);
    }

    v16 = *a3;
    v15 = a3[1];
    *NonCompact = &unk_1F112CE00;
    *(NonCompact + 8) = v13;
    v17 = *a2;
    *a2 = 0;
    *(NonCompact + 16) = v17;
    *(NonCompact + 32) = v16;
    *(NonCompact + 48) = v15;
    *(NonCompact + 64) = a4;
    *(NonCompact + 65) = 0;
    v18 = *a5;
    *a5 = 0;
    *(NonCompact + 72) = v18;
    v19 = *(v7 + 40);
    if (v19)
    {
      v21 = *(v19 + 8);
      v20 = v19 + 8;
      *v20 = v21 + 1;
      if ((*(*(v20 + 112) + 744) & 0x40) == 0)
      {
        *(NonCompact + 65) = 1;
      }

      *a6 = NonCompact;
      WTF::RefCounted<WebCore::Page>::deref(v20);
    }

    else
    {
      *(NonCompact + 65) = 1;
      *a6 = NonCompact;
    }

    v22 = *(v7 - 8);

    CFRelease(v22);
  }

  else
  {
    __break(0xC471u);
  }
}

uint64_t WebKit::LibWebRTCProvider::createRTCDataChannelRemoteHandlerConnection@<X0>(WebKit::LibWebRTCProvider *this@<X0>, void *a2@<X8>)
{
  v3 = WebKit::RTCDataChannelRemoteManager::singleton(this);
  result = WebKit::RTCDataChannelRemoteManager::remoteHandlerConnection(v3);
  atomic_fetch_add((result + 8), 1u);
  *a2 = result;
  return result;
}

atomic_uchar **WebKit::LibWebRTCProvider::setLoggingLevel(uint64_t a1, __int16 a2)
{
  WebCore::LibWebRTCProvider::setLoggingLevel();
  {
    v4 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v8 = WebKit::WebProcess::operator new(0x370, v3);
    v4 = WebKit::WebProcess::WebProcess(v8);
    WebKit::WebProcess::singleton(void)::process = v4;
  }

  WebKit::WebProcess::protectedLibWebRTCCodecs(v4, v3, &v9);
  v5 = v9;
  result = WebKit::LibWebRTCCodecs::setLoggingLevel(v9, a2);
  if (v5)
  {

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v5 + 1, v7);
  }

  return result;
}

uint64_t WebKit::LibWebRTCResolver::sendOnMainThread(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  v2 = WTF::fastMalloc(0x10);
  *v2 = &unk_1F112D9D0;
  v2[1] = v1;
  v4 = v2;
  WTF::callOnMainRunLoop();
  result = v4;
  if (v4)
  {
    return (*(*v4 + 8))(v4);
  }

  return result;
}

void WebKit::LibWebRTCResolver::~LibWebRTCResolver(WebKit::LibWebRTCResolver *this, void *a2)
{
  {
    v3 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v27 = WebKit::WebProcess::operator new(0x370, a2);
    v3 = WebKit::WebProcess::WebProcess(v27);
    WebKit::WebProcess::singleton(void)::process = v3;
  }

  v4 = WebKit::WebProcess::libWebRTCNetwork(v3, a2);
  v7 = *(v4 + 48);
  v5 = (v4 + 48);
  v6 = v7;
  if (!v7)
  {
    goto LABEL_22;
  }

  v8 = *(this + 3);
  if (v8 == -1)
  {
    goto LABEL_32;
  }

  if (!v8)
  {
    __break(0xC471u);
    JUMPOUT(0x19E317C00);
  }

  v9 = *(v6 - 8);
  v10 = (v8 + ~(v8 << 32)) ^ ((v8 + ~(v8 << 32)) >> 22);
  v11 = 9 * ((v10 + ~(v10 << 13)) ^ ((v10 + ~(v10 << 13)) >> 8));
  v12 = (v11 ^ (v11 >> 15)) + ~((v11 ^ (v11 >> 15)) << 27);
  v13 = v9 & ((v12 >> 31) ^ v12);
  v14 = *(v6 + 16 * v13);
  if (v14 != v8)
  {
    v15 = 1;
    while (v14)
    {
      v13 = (v13 + v15) & v9;
      v14 = *(v6 + 16 * v13);
      ++v15;
      if (v14 == v8)
      {
        goto LABEL_12;
      }
    }

    v13 = *(v6 - 4);
  }

LABEL_12:
  if (v13 != *(v6 - 4))
  {
    v16 = (v6 + 16 * v13);
    v17 = v16[1];
    *v16 = -1;
    v16[1] = 0;
    if (!v17)
    {
      goto LABEL_16;
    }

    v18 = *(v17 + 16);
    if (v18)
    {
      *(v17 + 16) = v18 - 1;
LABEL_16:
      v19 = *v5;
      v20 = vadd_s32(*(*v5 - 16), 0xFFFFFFFF00000001);
      *(v19 - 16) = v20;
      v21 = *(v19 - 4);
      if (6 * v20.i32[1] < v21 && v21 >= 9)
      {
        WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::LibWebRTCResolverIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::LibWebRTCResolverIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::LibWebRTCResolver,WTF::RawPtrTraits<WebKit::LibWebRTCResolver>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::LibWebRTCResolverIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::LibWebRTCResolver,WTF::RawPtrTraits<WebKit::LibWebRTCResolver>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::LibWebRTCResolverIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::LibWebRTCResolverIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::LibWebRTCResolver,WTF::RawPtrTraits<WebKit::LibWebRTCResolver>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::LibWebRTCResolverIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::LibWebRTCResolverIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::LibWebRTCResolver,WTF::RawPtrTraits<WebKit::LibWebRTCResolver>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::LibWebRTCResolverIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(v5, v21 >> 1, 0);
      }

      goto LABEL_22;
    }

LABEL_32:
    __break(0xC471u);
    JUMPOUT(0x19E317BE0);
  }

LABEL_22:
  v23 = *(this + 3);
  v24 = WTF::fastMalloc(0x10);
  *v24 = &unk_1F112D9F8;
  v24[1] = v23;
  v28 = v24;
  WebKit::LibWebRTCResolver::sendOnMainThread(&v28);
  if (v28)
  {
    (*(*v28 + 8))(v28);
  }

  v26 = *(this + 15);
  *(this + 15) = 0;
  if (v26)
  {
    (*(*v26 + 8))(v26);
  }

  if (*(this + 71) < 0)
  {
    operator delete(*(this + 6));
  }

  WTF::Vector<webrtc::IPAddress,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 32, v25);
}

void non-virtual thunk toWebKit::LibWebRTCResolver::~LibWebRTCResolver(WebKit::LibWebRTCResolver *this, void *a2)
{
  WebKit::LibWebRTCResolver::~LibWebRTCResolver((this - 8), a2);
}

{
  WebKit::LibWebRTCResolver::operator delete((this - 8), a2);
}

double WebKit::LibWebRTCResolver::operator delete(WebKit::LibWebRTCResolver *a1, void *a2)
{
  WebKit::LibWebRTCResolver::~LibWebRTCResolver(a1, a2);
  if (*(v2 + 16))
  {
    *(v2 + 128) = 0;
    result = 0.0;
    *(v2 + 96) = 0u;
    *(v2 + 112) = 0u;
    *(v2 + 64) = 0u;
    *(v2 + 80) = 0u;
    *(v2 + 32) = 0u;
    *(v2 + 48) = 0u;
    *v2 = 0u;
    *(v2 + 16) = 0u;
  }

  else
  {

    bmalloc::api::tzoneFree(v2, v3);
  }

  return result;
}

uint64_t WebKit::LibWebRTCResolver::GetResolvedAddress(WebKit::LibWebRTCResolver *this, int a2, webrtc::SocketAddress *a3)
{
  if (*(this + 32))
  {
    return 0;
  }

  if (!*(this + 11))
  {
    return 0;
  }

  webrtc::SocketAddress::operator=();
  v7 = *(this + 11);
  if (!v7)
  {
    return 0;
  }

  v8 = *(this + 4);
  v9 = 32 * v7;
  while (*(v8 + 2) != a2)
  {
    v8 = (v8 + 32);
    v9 -= 32;
    if (!v9)
    {
      return 0;
    }
  }

  webrtc::SocketAddress::SetResolvedIP(a3, v8);
  webrtc::SocketAddress::SetPort(a3);
  return 1;
}

uint64_t WebKit::LibWebRTCResolver::setResolvedAddress(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 44);
  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = 32 * v4;
    v7 = v5;
    v8 = *(a1 + 32);
    do
    {
      v9 = *v8;
      v8 += 4;
      (*v9)(v7);
      v5 += 4;
      v7 = v8;
      v6 -= 32;
    }

    while (v6);
  }

  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1 + 32, a2);
  v10 = *(**(a1 + 120) + 16);

  return v10();
}

uint64_t WebKit::WebTransportSession::ref(uint64_t this)
{
  while (1)
  {
    v1 = *(this + 32);
    if ((v1 & 1) == 0)
    {
      break;
    }

    v2 = *(this + 32);
    atomic_compare_exchange_strong_explicit((this + 32), &v2, v1 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v2 == v1)
    {
      return this;
    }
  }

  return WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(this + 32));
}

uint64_t non-virtual thunk toWebKit::WebTransportSession::ref(uint64_t this)
{
  while (1)
  {
    v1 = *(this + 24);
    if ((v1 & 1) == 0)
    {
      break;
    }

    v2 = *(this + 24);
    atomic_compare_exchange_strong_explicit((this + 24), &v2, v1 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v2 == v1)
    {
      return this;
    }
  }

  return WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(this + 24));
}

void WebKit::RTCSocketFactory::~RTCSocketFactory(WebKit::RTCSocketFactory *this, WTF::StringImpl *a2)
{
  v3 = *(this + 9);
  *(this + 9) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }
}

{
  v3 = *(this + 9);
  *(this + 9) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  bmalloc::api::tzoneFree(this, a2);
}

uint64_t WebCore::DeferredPromise::resolve(uint64_t this)
{
  v3 = *(this + 24);
  if (v3 && *v3 && (*(v3 + 8) & 3) == 0)
  {
    v5 = v1;
    v6 = v2;
    JSC::JSLockHolder::JSLockHolder();
    WebCore::DeferredPromise::callFunction();
    return MEMORY[0x19EB002E0](v4);
  }

  return this;
}

void *_ZN3WTF6Detail15CallableWrapperIZNS_13NativePromiseINSt3__18optionalINS_23ObjectIdentifierGenericIN6WebKit33WebTransportSessionIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEN3IPC5ErrorELj0EE11whenSettledIZNS6_19WebTransportSession10initializeEONS_3RefINSC_10ConnectionENS_12RawPtrTraitsISI_EENS_21DefaultRefDerefTraitsISI_EEEEONS_17ThreadSafeWeakPtrIN7WebCore25WebTransportSessionClientENS_15NoTaggingTraitsISR_EEEERKNS_3URLERKNS5_INS6_26WebPageProxyIdentifierTypeES9_yEERKNSQ_12ClientOriginEE3__0EEDaRNS_34GuaranteedSerialFunctionDispatcherEOT_RKNS_6Logger17LogSiteIdentifierEEUlONSt12experimental15fundamentals_v38expectedISB_SD_EEE_NSH_INS2_INSH_INSQ_19WebTransportSessionENSJ_IS1M_EENSL_IS1M_EEEEvLj0EEENSJ_IS1Q_EENSL_IS1Q_EEEEJS1K_EED1Ev(void *a1, void *a2)
{
  *a1 = &unk_1F112CE90;
  v3 = a1[3];
  a1[3] = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v4);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZNS_13NativePromiseINSt3__18optionalINS_23ObjectIdentifierGenericIN6WebKit33WebTransportSessionIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEN3IPC5ErrorELj0EE11whenSettledIZNS6_19WebTransportSession10initializeEONS_3RefINSC_10ConnectionENS_12RawPtrTraitsISI_EENS_21DefaultRefDerefTraitsISI_EEEEONS_17ThreadSafeWeakPtrIN7WebCore25WebTransportSessionClientENS_15NoTaggingTraitsISR_EEEERKNS_3URLERKNS5_INS6_26WebPageProxyIdentifierTypeES9_yEERKNSQ_12ClientOriginEE3__0EEDaRNS_34GuaranteedSerialFunctionDispatcherEOT_RKNS_6Logger17LogSiteIdentifierEEUlONSt12experimental15fundamentals_v38expectedISB_SD_EEE_NSH_INS2_INSH_INSQ_19WebTransportSessionENSJ_IS1M_EENSL_IS1M_EEEEvLj0EEENSJ_IS1Q_EENSL_IS1Q_EEEEJS1K_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F112CE90;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v4);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZNS_13NativePromiseINSt3__18optionalINS_23ObjectIdentifierGenericIN6WebKit33WebTransportSessionIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEN3IPC5ErrorELj0EE11whenSettledIZNS6_19WebTransportSession10initializeEONS_3RefINSC_10ConnectionENS_12RawPtrTraitsISI_EENS_21DefaultRefDerefTraitsISI_EEEEONS_17ThreadSafeWeakPtrIN7WebCore25WebTransportSessionClientENS_15NoTaggingTraitsISR_EEEERKNS_3URLERKNS5_INS6_26WebPageProxyIdentifierTypeES9_yEERKNSQ_12ClientOriginEE3__0EEDaRNS_34GuaranteedSerialFunctionDispatcherEOT_RKNS_6Logger17LogSiteIdentifierEEUlONSt12experimental15fundamentals_v38expectedISB_SD_EEE_NSH_INS2_INSH_INSQ_19WebTransportSessionENSJ_IS1M_EENSL_IS1M_EEEEvLj0EEENSJ_IS1Q_EENSL_IS1Q_EEEEJS1K_EE4callES1K_@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  if (*(a2 + 16) || (a2[1] & 1) == 0)
  {
    v22 = 0uLL;
    v23 = "operator()";
    v24 = 0;
    v17 = WTF::fastMalloc(0x80);
    v18 = WTF::NativePromise<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>::NativePromise(v17, &v22);
    *a3 = v18;
    return WTF::NativePromise<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>::reject<std::enable_if<true,void>>(v18, &v22);
  }

  v7 = WTF::fastMalloc(0x48);
  if (*(a2 + 16))
  {
    mpark::throw_bad_variant_access(v7);
  }

  if ((a2[1] & 1) == 0)
  {
    __break(1u);
LABEL_26:
    v7 = MEMORY[0x19EB01E30](v7);
    goto LABEL_9;
  }

  v3 = v7;
  v9 = *a2;
  *v7 = &unk_1F112C9D8;
  *(v7 + 1) = &unk_1F112CA58;
  *(v7 + 2) = 0;
  *(v7 + 3) = &unk_1F112CAA0;
  *(v7 + 4) = 3;
  v10 = *(a1 + 8);
  *(a1 + 8) = 0;
  *(v7 + 5) = v10;
  v11 = *(a1 + 16);
  *(a1 + 16) = 0;
  *(v7 + 6) = v11;
  *(v7 + 7) = *(a1 + 24);
  *(a1 + 24) = 0;
  *(v7 + 8) = v9;
  {
    v12 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v21 = WebKit::WebProcess::operator new(0x370, v8);
    v12 = WebKit::WebProcess::WebProcess(v21);
    WebKit::WebProcess::singleton(void)::process = v12;
  }

  if ((*(v12 + 820) & 1) == 0)
  {
    result = 60;
    __break(0xC471u);
    return result;
  }

  v25 = *(v3 + 64);
  WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::WebTransportSession,WTF::NoTaggingTraits<WebKit::WebTransportSession>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::WebTransportSession,WTF::NoTaggingTraits<WebKit::WebTransportSession>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> const&,WebKit::WebTransportSession&>(v12 + 105, &v25, v3, &v22);
  v22 = 0uLL;
  v23 = "operator()";
  v24 = 0;
  a1 = WTF::fastMalloc(0x80);
  v13 = WTF::NativePromise<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>::NativePromise(a1, &v22);
  v14 = 0;
  *a3 = v13;
  v7 = (v13 + 48);
  v25 = v7;
  v26 = 1;
  atomic_compare_exchange_strong_explicit(v7, &v14, 1u, memory_order_acquire, memory_order_acquire);
  if (v14)
  {
    goto LABEL_26;
  }

LABEL_9:
  v15 = WTF::NativePromiseBase::logChannel(v7);
  if (*v15 && v15[16] >= 4u)
  {
    WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [27],WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>>(v15, &v22, " resolving ", a1);
  }

  if (*(a1 + 72) > 1u)
  {
    if (*(a1 + 72) == 2)
    {
      v16 = *(a1 + 56);
      *(a1 + 56) = 0;
      if (v16)
      {
        goto LABEL_21;
      }
    }
  }

  else if (*(a1 + 72))
  {
    if (!*(a1 + 64))
    {
      v16 = *(a1 + 56);
      *(a1 + 56) = 0;
      if (v16)
      {
LABEL_21:
        (*(*v16 + 8))(v16);
      }
    }
  }

  *(a1 + 56) = v3;
  *(a1 + 64) = 0;
  v20 = 1;
  *(a1 + 72) = 1;
  result = WTF::NativePromise<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>::dispatchAll(a1, &v25);
  if (v26 == 1)
  {
    result = v25;
    atomic_compare_exchange_strong_explicit(v25, &v20, 0, memory_order_release, memory_order_relaxed);
    if (v20 != 1)
    {
      return WTF::Lock::unlockSlow(result);
    }
  }

  return result;
}

WTF::Lock *WTF::NativePromise<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>::reject<std::enable_if<true,void>>(uint64_t a1, WTF::Logger::LogSiteIdentifier *a2)
{
  v4 = 0;
  v5 = (a1 + 48);
  v11 = v5;
  v12 = 1;
  atomic_compare_exchange_strong_explicit(v5, &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    v5 = MEMORY[0x19EB01E30]();
  }

  v6 = WTF::NativePromiseBase::logChannel(v5);
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
    WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [27],WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>>(v6, a2, " rejecting ", a1);
  }

  if (*(a1 + 72) > 1u)
  {
    if (*(a1 + 72) == 2)
    {
      v8 = *(a1 + 56);
      *(a1 + 56) = 0;
      if (v8)
      {
        goto LABEL_16;
      }
    }
  }

  else if (*(a1 + 72))
  {
    if (!*(a1 + 64))
    {
      v8 = *(a1 + 56);
      *(a1 + 56) = 0;
      if (v8)
      {
LABEL_16:
        (*(*v8 + 8))(v8);
      }
    }
  }

  v9 = 1;
  *(a1 + 64) = 1;
  *(a1 + 72) = 1;
  result = WTF::NativePromise<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>::dispatchAll(a1, &v11);
  if (v12 == 1)
  {
    result = v11;
    atomic_compare_exchange_strong_explicit(v11, &v9, 0, memory_order_release, memory_order_relaxed);
    if (v9 != 1)
    {

      return WTF::Lock::unlockSlow(result);
    }
  }

  return result;
}

uint64_t WTF::NativePromise<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>::NativePromise(uint64_t a1, _OWORD *a2)
{
  v33[2] = *MEMORY[0x1E69E9840];
  *(a1 + 8) = 1;
  *a1 = &unk_1F112CEB8;
  v3 = a2[1];
  *(a1 + 16) = *a2;
  *(a1 + 32) = v3;
  *(a1 + 48) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = a1 + 96;
  *(a1 + 88) = 1;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
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

uint64_t WTF::NativePromise<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>::assertIsDead(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = (result + 48);
  atomic_compare_exchange_strong_explicit((result + 48), &v2, 1u, memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    result = MEMORY[0x19EB01E30](result + 48);
  }

  v4 = *(v1 + 116);
  if (v4)
  {
    v5 = *(v1 + 104);
    v6 = 40 * v4;
    do
    {
      result = WTF::NativePromiseProducer<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>::assertIsDead(v5);
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

uint64_t WTF::NativePromise<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>::~NativePromise(uint64_t a1)
{
  v1 = WTF::NativePromise<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>::~NativePromise(a1);

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

  WTF::NativePromise<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>::assertIsDead(a1);
  WTF::Vector<WTF::NativePromiseProducer<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 104, v26);
  WTF::Vector<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 80, v27);
  if (*(a1 + 72) > 1u)
  {
    if (*(a1 + 72) == 2)
    {
      v29 = *(a1 + 56);
      *(a1 + 56) = 0;
      if (v29)
      {
        (*(*v29 + 8))(v29);
      }
    }
  }

  else if (*(a1 + 72))
  {
    if (!*(a1 + 64))
    {
      v28 = *(a1 + 56);
      *(a1 + 56) = 0;
      if (v28)
      {
        (*(*v28 + 8))(v28);
      }
    }

    *(a1 + 64) = -1;
  }

  *(a1 + 72) = -1;
  return a1;
}

atomic_uint **WTF::NativePromiseProducer<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>::assertIsDead(atomic_uint **result)
{
  v1 = *result;
  if (*result)
  {
    atomic_fetch_add(v1 + 2, 1u);
    result = WTF::NativePromise<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>::assertIsDead(v1);
    if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v1 + 2);
      v2 = *(*v1 + 16);

      return v2(v1);
    }
  }

  return result;
}

uint64_t WTF::Vector<WTF::NativePromiseProducer<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = *a1;
    v5 = 40 * v3;
    do
    {
      v4 = WTF::NativePromiseProducer<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>::~NativePromiseProducer(v4) + 5;
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

uint64_t WTF::NativePromise<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>::dispatchAll(uint64_t a1, atomic_uchar *volatile *a2)
{
  v18 = &v20;
  v19 = 1;
  __dst = &v23;
  v22 = 1;
  WTF::VectorBuffer<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::FastMalloc>::adopt(&__dst, (a1 + 80));
  v4 = *(a1 + 92);
  if (v4)
  {
    WTF::VectorDestructor<true,WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>>::destruct(*(a1 + 80), (*(a1 + 80) + 8 * v4));
  }

  WTF::VectorBuffer<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::FastMalloc>::adopt((a1 + 80), &v18);
  WTF::Vector<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v18, v5);
  *&v6 = 0;
  v7 = *(a1 + 104);
  v18 = v7;
  v8 = *(a1 + 116);
  LODWORD(v19) = *(a1 + 112);
  HIDWORD(v19) = v8;
  v17 = v6;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  WTF::Vector<WTF::NativePromiseProducer<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v17, v9);
  if (HIDWORD(v22))
  {
    v11 = __dst;
    v12 = 8 * HIDWORD(v22);
    do
    {
      v13 = *v11++;
      WTF::NativePromise<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>::ThenCallbackBase::dispatch(v13, a1, a2);
      v12 -= 8;
    }

    while (v12);
  }

  if (v8)
  {
    v14 = 40 * v8;
    do
    {
      WTF::NativePromise<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>::settleChainedPromise(a1, v7);
      v7 += 40;
      v14 -= 40;
    }

    while (v14);
  }

  WTF::Vector<WTF::NativePromiseProducer<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v18, v10);
  return WTF::Vector<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&__dst, v15);
}

unsigned __int8 *WTF::NativePromise<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>::ThenCallbackBase::dispatch(WTF::NativePromiseBase *a1, uint64_t a2, atomic_uchar *volatile *a3)
{
  v5 = a1;
  if (!*(a1 + 2) || (v6 = atomic_load((a2 + 121)), v6 == 1) && (a1 = (*(**(a1 + 2) + 24))(*(a1 + 2)), a1))
  {
    if (*(v5 + 56) == 1)
    {
      v18 = v5;
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
        return WTF::Logger::log<char [32],WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>,char [21],void const*,char [11],WTF::Logger::LogSiteIdentifier,char [2]>(result, a2, &v18, (v5 + 24));
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

      if (WTF::NativePromise<WTF::String,void,0u>::hasRunnable(a2))
      {
        WTF::NativePromise<WTF::String,WebCore::DOMCacheEngine::Error,0u>::takeResultRunnable(&v17, a2);
        v13 = v17;
        (*(*v17 + 16))(&v18, v17);
        (*(*v5 + 24))(v5, a2, &v18);
        if (!v19)
        {
          v14 = v18;
          v18 = 0;
          if (v14)
          {
            (*(*v14 + 8))(v14);
          }
        }

        v19 = -1;
        (*(*v13 + 8))(v13);
      }

      else
      {
        WTF::NativePromise<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>::takeResult(&v18, a2);
        (*(*v5 + 24))(v5, a2, &v18);
        if (!v19)
        {
          v15 = v18;
          v18 = 0;
          if (v15)
          {
            (*(*v15 + 8))(v15);
          }
        }
      }

      v16 = 0;
      result = *a3;
      atomic_compare_exchange_strong_explicit(*a3, &v16, 1u, memory_order_acquire, memory_order_acquire);
      if (v16)
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
    *v8 = &unk_1F112CEE0;
    *(v8 + 1) = v5;
    *(v8 + 2) = a2;
    v18 = v8;
    (*(*v7 + 16))(v7, &v18);
    result = v18;
    v18 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

atomic_uint **WTF::NativePromise<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>::settleChainedPromise(uint64_t a1, uint64_t a2)
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
    WTF::NativePromise<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>::settleAsChainedPromise<WTF::NativePromise<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>::Storage>(v2, a1 + 56, &v5);
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
    WTF::NativePromise<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>::settleAsChainedPromise<WTF::NativePromise<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>::Storage>(0, a1 + 56, &v5);
  }

  return WTF::NativePromiseProducer<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>::~NativePromiseProducer(&v9);
}

mpark *WTF::NativePromise<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>::takeResult(mpark *result, uint64_t a2)
{
  v3 = result;
  v4 = 0;
  v5 = (a2 + 48);
  atomic_compare_exchange_strong_explicit((a2 + 48), &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    result = MEMORY[0x19EB01E30](a2 + 48);
  }

  if (*(a2 + 72) != 1)
  {
    mpark::throw_bad_variant_access(result);
  }

  *v3 = 0;
  *(v3 + 8) = -1;
  v6 = *(a2 + 64);
  if (v6 != 255)
  {
    if (!*(a2 + 64))
    {
      v7 = *(a2 + 56);
      *(a2 + 56) = 0;
      *v3 = v7;
    }

    *(v3 + 8) = v6;
  }

  v8 = 1;
  atomic_compare_exchange_strong_explicit(v5, &v8, 0, memory_order_release, memory_order_relaxed);
  if (v8 != 1)
  {

    return WTF::Lock::unlockSlow(v5);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WTF::NativePromise<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F112CEE0;
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

uint64_t WTF::Detail::CallableWrapper<WTF::NativePromise<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F112CEE0;
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

unsigned __int8 *WTF::Detail::CallableWrapper<WTF::NativePromise<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::call(WTF::NativePromiseBase *a1)
{
  v2 = *(a1 + 1);
  v1 = *(a1 + 2);
  if (*(v2 + 56) == 1)
  {
    v12 = *(a1 + 1);
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
      return WTF::Logger::log<char [32],WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>,char [21],void const*,char [11],WTF::Logger::LogSiteIdentifier,char [2]>(result, v1, &v12, (v2 + 24));
    }
  }

  else
  {
    hasRunnable = WTF::NativePromise<WTF::String,void,0u>::hasRunnable(*(a1 + 2));
    v7 = *(a1 + 1);
    v8 = *(a1 + 2);
    if (hasRunnable)
    {
      WTF::NativePromise<WTF::String,WebCore::DOMCacheEngine::Error,0u>::takeResultRunnable(&v11, v8);
      v9 = v11;
      (*(*v11 + 16))(&v12, v11);
      (*(*v7 + 24))(v7, v8, &v12);
      if (!v13)
      {
        v10 = v12;
        v12 = 0;
        if (v10)
        {
          (*(*v10 + 8))(v10);
        }
      }

      v13 = -1;
      return (*(*v9 + 8))(v9);
    }

    else
    {
      WTF::NativePromise<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>::takeResult(&v12, v8);
      result = (*(*v7 + 24))(v7, v8, &v12);
      if (!v13)
      {
        result = v12;
        v12 = 0;
        if (result)
        {
          return (*(*result + 8))(result);
        }
      }
    }
  }

  return result;
}

WTF::Lock *WTF::NativePromise<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>::settleAsChainedPromise<WTF::NativePromise<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>::Storage>(uint64_t a1, uint64_t a2, WTF::Logger::LogSiteIdentifier *a3)
{
  v6 = 0;
  v7 = (a1 + 48);
  v29 = v7;
  v30 = 1;
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

  v10 = *(a1 + 72);
  v11 = *(a2 + 16);
  if (v10 != 255 || v11 != 255)
  {
    switch(v11)
    {
      case 255:
        if (*(a1 + 72) > 1u)
        {
          if (v10 == 2)
          {
            v14 = *(a1 + 56);
            *(a1 + 56) = 0;
            if (v14)
            {
              (*(*v14 + 8))(v14);
            }
          }
        }

        else if (*(a1 + 72))
        {
          if (!*(a1 + 64))
          {
            v12 = *(a1 + 56);
            *(a1 + 56) = 0;
            if (v12)
            {
              (*(*v12 + 8))(v12);
            }
          }

          *(a1 + 64) = -1;
        }

        v15 = -1;
        goto LABEL_30;
      case 2:
        if (*(a1 + 72) > 1u)
        {
          if (v10 != 255)
          {
            v25 = *a2;
            *a2 = 0;
            v26 = *(a1 + 56);
            *(a1 + 56) = v25;
            if (v26)
            {
              (*(*v26 + 8))(v26);
            }

            goto LABEL_31;
          }
        }

        else if (*(a1 + 72))
        {
          if (!*(a1 + 64))
          {
            v18 = *(a1 + 56);
            *(a1 + 56) = 0;
            if (v18)
            {
              (*(*v18 + 8))(v18);
            }
          }

          *(a1 + 64) = -1;
        }

        v23 = *a2;
        *a2 = 0;
        *(a1 + 56) = v23;
        v15 = 2;
LABEL_30:
        *(a1 + 72) = v15;
        goto LABEL_31;
      case 1:
        if (*(a1 + 72) > 1u)
        {
          if (v10 == 2)
          {
            v20 = *(a1 + 56);
            *(a1 + 56) = 0;
            if (v20)
            {
              (*(*v20 + 8))(v20);
            }
          }
        }

        else if (*(a1 + 72))
        {
          LOBYTE(v31) = 0;
          v32 = -1;
          v13 = *(a2 + 8);
          if (*(a2 + 8))
          {
            if (v13 != 255)
            {
              v32 = *(a2 + 8);
            }

            LOBYTE(v33) = 0;
          }

          else
          {
            v27 = *a2;
            *a2 = 0;
            v32 = 0;
            v31 = 0;
            v33 = v27;
          }

          v34 = v13;
          mpark::variant<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,WTF::detail::VoidPlaceholder>::operator=(&v31, (a1 + 56));
          mpark::variant<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,WTF::detail::VoidPlaceholder>::operator=((a1 + 56), &v33);
          if (!v34 && v33)
          {
            (*(*v33 + 8))(v33);
          }

          if (!v32)
          {
            v28 = v31;
            v31 = 0;
            if (v28)
            {
              (*(*v28 + 8))(v28);
            }
          }

          goto LABEL_31;
        }

        *(a1 + 56) = 0;
        *(a1 + 64) = -1;
        v21 = *(a2 + 8);
        if (v21 != 255)
        {
          if (!*(a2 + 8))
          {
            v22 = *a2;
            *a2 = 0;
            *(a1 + 56) = v22;
          }

          *(a1 + 64) = v21;
        }

        v15 = 1;
        goto LABEL_30;
    }

    if (*(a1 + 72) > 1u)
    {
      if (v10 == 2)
      {
        v24 = *(a1 + 56);
        *(a1 + 56) = 0;
        if (v24)
        {
          (*(*v24 + 8))(v24);
        }
      }
    }

    else
    {
      if (!*(a1 + 72))
      {
        goto LABEL_31;
      }

      if (!*(a1 + 64))
      {
        v19 = *(a1 + 56);
        *(a1 + 56) = 0;
        if (v19)
        {
          (*(*v19 + 8))(v19);
        }
      }

      *(a1 + 64) = -1;
    }

    *(a1 + 72) = 0;
  }

LABEL_31:
  result = WTF::NativePromise<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>::dispatchAll(a1, &v29);
  v17 = v30;
  if (v30 == 1)
  {
    result = v29;
    atomic_compare_exchange_strong_explicit(v29, &v17, 0, memory_order_release, memory_order_relaxed);
    if (v17 != 1)
    {
      return WTF::Lock::unlockSlow(result);
    }
  }

  return result;
}

uint64_t *mpark::variant<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,WTF::detail::VoidPlaceholder>::operator=(uint64_t *a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a2 + 8);
  if (v3 == 255)
  {
    if (v4 != 255)
    {
      if (!*(a2 + 8))
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    }
  }

  else
  {
    if (v4 == 255)
    {
      if (!*(a1 + 8))
      {
        v5 = *a1;
        *a1 = 0;
        if (v5)
        {
          (*(*v5 + 8))(v5);
        }
      }

      v6 = -1;
      goto LABEL_16;
    }

    if (*(a2 + 8))
    {
      if (v3 != 1)
      {
        if (!*(a1 + 8))
        {
          v7 = *a1;
          *a1 = 0;
          if (v7)
          {
            (*(*v7 + 8))(v7);
          }
        }

LABEL_15:
        v6 = 1;
LABEL_16:
        *(a1 + 8) = v6;
      }
    }

    else
    {
      if (*(a1 + 8))
      {
LABEL_18:
        v8 = *a2;
        *a2 = 0;
        *a1 = v8;
        *(a1 + 8) = 0;
        return a1;
      }

      v10 = *a2;
      *a2 = 0;
      v11 = *a1;
      *a1 = v10;
      if (v11)
      {
        (*(*v11 + 8))(v11);
      }
    }
  }

  return a1;
}

uint64_t WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::ThenCallback<true,WTF::NativePromise<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>>::~ThenCallback(uint64_t a1)
{
  *a1 = &unk_1F112CF08;
  v2 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::unique_ptr<WTF::NativePromiseProducer<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>>::reset[abi:sn200100]((a1 + 64), 0);
  *a1 = &unk_1F112CF38;
  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v3 + 8));
  }

  return a1;
}

{
  *a1 = &unk_1F112CF08;
  v2 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::unique_ptr<WTF::NativePromiseProducer<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>>::reset[abi:sn200100]((a1 + 64), 0);
  *a1 = &unk_1F112CF38;
  v4 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v4 + 8));
  }

  return WTF::fastFree(a1, v3);
}

uint64_t WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::ThenCallback<true,WTF::NativePromise<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>>::disconnect(uint64_t a1)
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

uint64_t WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::ThenCallback<true,WTF::NativePromise<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>>::processResult(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v116[2] = *MEMORY[0x1E69E9840];
  v5 = *(a3 + 16);
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
    v8 = v6;
    if (v5)
    {
      v9 = "Rejecting";
    }

    else
    {
      v9 = "Resolving";
    }

    v89 = v9;
    WTF::String::String(&v101, v9);
    WTF::String::String(&v100, " then() call made from ");
    WTF::Logger::LogSiteIdentifier::toString(&v99, (a1 + 24));
    WTF::String::String(&v98, "[");
    WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(&v97, a2);
    WTF::String::String(&v96, " callback:");
    WTF::LogArgument<void const*>::toString();
    WTF::String::String(&v94, "]");
    WTF::tryMakeString<WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String>(&v101, &v100, &v99, &v98, &v97, &v96, &v95, &v94, v92);
    if (!v92[0])
    {
      __break(0xC471u);
      goto LABEL_148;
    }

    v11 = v94;
    v94 = 0;
    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v10);
    }

    v12 = v95;
    v95 = 0;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v10);
    }

    v13 = v96;
    v96 = 0;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v10);
    }

    v14 = v97;
    v97 = 0;
    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v10);
    }

    v15 = v98;
    v98 = 0;
    if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v10);
    }

    v16 = v99;
    v99 = 0;
    if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v10);
    }

    v17 = v100;
    v100 = 0;
    if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, v10);
    }

    v18 = v101;
    v101 = 0;
    if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v18, v10);
    }

    v19 = *(v8 + 4);
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
    if (v20)
    {
      WTF::String::utf8();
      v22 = v90[0] ? v90[0] + 16 : 0;
      *buf = 136446210;
      v103 = v22;
      _os_log_impl(&dword_19D52D000, v19, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
      v20 = v90[0];
      v90[0] = 0;
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

    if (*v8 && v8[16] >= 4u)
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
              WTF::String::String((&v103 + 4), v89);
              v104 = 0;
              WTF::String::String(&v105, " then() call made from ");
              v106 = 0;
              WTF::Logger::LogSiteIdentifier::toString(&v107, (a1 + 24));
              v108 = 0;
              WTF::String::String(&v109, "[");
              v110 = 0;
              WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(&v111, a2);
              v112 = 0;
              WTF::String::String(&v113, " callback:");
              v114 = 0;
              WTF::LogArgument<void const*>::toString();
              v115 = 0;
              WTF::String::String(v116, "]");
              WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v90, buf, 8uLL);
              (*(*v30 + 16))(v30, v8, 4, v90);
              WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v90, v31);
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
          if (v34 != 1)
          {
            WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
          }

          break;
        }
      }
    }

    v35 = v92[0];
    v92[0] = 0;
    if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v35, v21);
    }
  }

  v36 = 0;
  v37 = 1;
  atomic_compare_exchange_strong_explicit((a1 + 57), &v36, 1u, memory_order_acquire, memory_order_acquire);
  if (v36)
  {
    MEMORY[0x19EB01E30](a1 + 57);
  }

  v38 = *(a1 + 64);
  *(a1 + 64) = 0;
  std::unique_ptr<WTF::NativePromiseProducer<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>>::reset[abi:sn200100]((a1 + 64), 0);
  atomic_compare_exchange_strong_explicit((a1 + 57), &v37, 0, memory_order_release, memory_order_relaxed);
  if (v37 != 1)
  {
    WTF::Lock::unlockSlow((a1 + 57));
  }

  v39 = (*(**(a1 + 72) + 16))(&v91);
  if (v38)
  {
    v40 = 0;
    v41 = v91;
    v90[0] = 0;
    v90[1] = 0;
    v90[2] = "<chained completion promise>";
    v90[3] = 0;
    v42 = (v91 + 48);
    atomic_compare_exchange_strong_explicit((v91 + 48), &v40, 1u, memory_order_acquire, memory_order_acquire);
    if (v40)
    {
      v39 = MEMORY[0x19EB01E30](v42);
    }

    *(v41 + 120) = 1;
    v43 = *v38;
    if (*v38)
    {
      atomic_fetch_add(v43 + 2, 1u);
    }

    v44 = WTF::NativePromiseBase::logChannel(v39);
    if (!*v44)
    {
      goto LABEL_119;
    }

    v45 = v44;
    if (v44[16] < 4u)
    {
      goto LABEL_119;
    }

    WTF::Logger::LogSiteIdentifier::toString(&v100, v90);
    WTF::String::String(&v99, " invoking chainTo() [");
    WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(&v98, v41);
    WTF::String::String(&v97, " chainedPromise:");
    WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(&v96, v43);
    WTF::String::String(&v95, " isNothing:");
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    WTF::String::String(&v93, "]");
    WTF::tryMakeString<WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String>(&v100, &v99, &v98, &v97, &v96, &v95, &v94, &v93, &v101);
    if (v101)
    {
      v47 = v93;
      v93 = 0;
      if (v47 && atomic_fetch_add_explicit(v47, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v47, v46);
      }

      v48 = v94;
      v94 = 0;
      if (v48 && atomic_fetch_add_explicit(v48, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v48, v46);
      }

      v49 = v95;
      v95 = 0;
      if (v49 && atomic_fetch_add_explicit(v49, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v49, v46);
      }

      v50 = v96;
      v96 = 0;
      if (v50 && atomic_fetch_add_explicit(v50, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v50, v46);
      }

      v51 = v97;
      v97 = 0;
      if (v51 && atomic_fetch_add_explicit(v51, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v51, v46);
      }

      v52 = v98;
      v98 = 0;
      if (v52 && atomic_fetch_add_explicit(v52, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v52, v46);
      }

      v53 = v99;
      v99 = 0;
      if (v53 && atomic_fetch_add_explicit(v53, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v53, v46);
      }

      v54 = v100;
      v100 = 0;
      if (v54 && atomic_fetch_add_explicit(v54, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v54, v46);
      }

      v55 = *(v45 + 4);
      v56 = os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT);
      if (v56)
      {
        WTF::String::utf8();
        v58 = v92[0] ? v92[0] + 16 : 0;
        *buf = 136446210;
        v103 = v58;
        _os_log_impl(&dword_19D52D000, v55, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
        v56 = v92[0];
        v92[0] = 0;
        if (v56)
        {
          if (*v56 == 1)
          {
            v56 = WTF::fastFree(v56, v57);
          }

          else
          {
            --*v56;
          }
        }
      }

      if (*v45 && v45[16] >= 4u)
      {
        v59 = MEMORY[0x1E696EBC0];
        while (1)
        {
          v60 = *v59;
          if (v60)
          {
            break;
          }

          v61 = *v59;
          atomic_compare_exchange_strong_explicit(v59, &v61, v60 | 1, memory_order_acquire, memory_order_acquire);
          if (v61 == v60)
          {
            v87 = v42;
            v88 = v38;
            v62 = WTF::Logger::observers(v56);
            v63 = *(v62 + 12);
            if (v63)
            {
              v64 = *v62;
              v65 = *v62 + 8 * v63;
              do
              {
                v66 = *v64;
                *buf = 0;
                WTF::Logger::LogSiteIdentifier::toString((&v103 + 4), v90);
                v104 = 0;
                WTF::String::String(&v105, " invoking chainTo() [");
                v106 = 0;
                WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(&v107, v41);
                v108 = 0;
                WTF::String::String(&v109, " chainedPromise:");
                v110 = 0;
                WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(&v111, v43);
                v112 = 0;
                WTF::String::String(&v113, " isNothing:");
                v114 = 0;
                WTF::StringImpl::createWithoutCopyingNonEmpty();
                v115 = 0;
                WTF::String::String(v116, "]");
                WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v92, buf, 8uLL);
                (*(*v66 + 16))(v66, v45, 4, v92);
                WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v92, v67);
                for (j = 120; j != -8; j -= 16)
                {
                  v69 = *&buf[j];
                  *&buf[j] = 0;
                  if (v69 && atomic_fetch_add_explicit(v69, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v69, v57);
                  }
                }

                ++v64;
              }

              while (v64 != v65);
            }

            v70 = 1;
            atomic_compare_exchange_strong_explicit(v59, &v70, 0, memory_order_release, memory_order_relaxed);
            v42 = v87;
            v38 = v88;
            if (v70 != 1)
            {
              WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
            }

            break;
          }
        }
      }

      v71 = v101;
      v101 = 0;
      if (v71 && atomic_fetch_add_explicit(v71, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v71, v57);
        if (v43)
        {
LABEL_120:
          if (atomic_fetch_add(v43 + 2, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v43 + 2);
            (*(*v43 + 16))(v43);
          }
        }

LABEL_122:
        v72 = atomic_load((v41 + 121));
        v73 = *v38;
        if (*v38)
        {
          atomic_fetch_add(v73 + 2, 1u);
          WTF::NativePromise<void,WTF::String,0u>::setDispatchMode(v73, v72, v90);
          if (atomic_fetch_add(v73 + 2, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v73 + 2);
            (*(*v73 + 16))(v73);
          }
        }

        else
        {
          WTF::NativePromise<void,WTF::String,0u>::setDispatchMode(0, v72, v90);
        }

        if (*(v41 + 72))
        {
          WTF::NativePromise<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>::settleChainedPromise(v41, v38);
        }

        else
        {
          v74 = *(v41 + 116);
          if (v74 == *(v41 + 112))
          {
            v75 = WTF::Vector<WTF::NativePromiseProducer<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(v41 + 104, v74 + 1, v38);
            v76 = *(v41 + 104) + 40 * *(v41 + 116);
            v77 = *v75;
            *v75 = 0;
            *v76 = v77;
            v78 = *(v75 + 24);
            *(v76 + 8) = *(v75 + 8);
            *(v76 + 24) = v78;
          }

          else
          {
            v79 = *(v41 + 104) + 40 * v74;
            v80 = *v38;
            *v38 = 0;
            *v79 = v80;
            v81 = *(v38 + 8);
            *(v79 + 24) = *(v38 + 24);
            *(v79 + 8) = v81;
          }

          ++*(v41 + 116);
        }

        v82 = 1;
        atomic_compare_exchange_strong_explicit(v42, &v82, 0, memory_order_release, memory_order_relaxed);
        if (v82 != 1)
        {
          WTF::Lock::unlockSlow(v42);
        }

        goto LABEL_133;
      }

LABEL_119:
      if (v43)
      {
        goto LABEL_120;
      }

      goto LABEL_122;
    }

    __break(0xC471u);
LABEL_148:
    JUMPOUT(0x19E31A9A4);
  }

LABEL_133:
  v83 = v91;
  v91 = 0;
  if (v83 && atomic_fetch_add(v83 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v83 + 2);
    (*(*v83 + 16))(v83);
  }

  result = *(a1 + 72);
  *(a1 + 72) = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  if (v38)
  {
    v85 = WTF::NativePromiseProducer<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>::~NativePromiseProducer(v38);
    return WTF::fastFree(v85, v86);
  }

  return result;
}

atomic_uint **std::unique_ptr<WTF::NativePromiseProducer<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>>::reset[abi:sn200100](atomic_uint ***a1, atomic_uint **a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    v4 = WTF::NativePromiseProducer<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>::~NativePromiseProducer(result);

    return WTF::fastFree(v4, v5);
  }

  return result;
}

unint64_t WTF::Vector<WTF::NativePromiseProducer<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
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

    WTF::Vector<WTF::NativePromiseProducer<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WTF::NativePromiseProducer<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

atomic_uint **WTF::Vector<WTF::NativePromiseProducer<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(atomic_uint **result, unint64_t a2)
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
          result = WTF::NativePromiseProducer<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>::~NativePromiseProducer(result) + 5;
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

WTF::Lock *_ZN3WTF6Detail15CallableWrapperIZNS_13NativePromiseINSt3__18optionalIN7WebCore9ExceptionEEEN3IPC5ErrorELj0EE11whenSettledIZN6WebKit19WebTransportSession12sendDatagramENS3_4spanIKhLm18446744073709551615EEEE3__0EEDaRNS_34GuaranteedSerialFunctionDispatcherEOT_RKNS_6Logger17LogSiteIdentifierEEUlONSt12experimental15fundamentals_v38expectedIS7_S9_EEE_NS_3RefINS2_IS7_vLj0EEENS_12RawPtrTraitsISY_EENS_21DefaultRefDerefTraitsISY_EEEEJSV_EE4callESV_@<X0>(char *a1@<X1>, uint64_t *a2@<X8>)
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

WTF::Lock *WTF::NativePromise<std::optional<WebCore::Exception>,void,0u>::createAndReject<std::enable_if<true,void>>(uint64_t *a1, WTF::Logger::LogSiteIdentifier *a2)
{
  v4 = WTF::fastMalloc(0x90);
  v5 = WTF::NativePromise<std::optional<WebCore::Exception>,void,0u>::NativePromise(v4, a2);
  v6 = 0;
  *a1 = v5;
  v7 = (v5 + 48);
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
    v10 = v8[16] >= 4u;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [27],WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>>(v8, a2, " rejecting ", v4);
  }

  if (*(v4 + 88) > 1u)
  {
    if (*(v4 + 88) == 2)
    {
      v11 = *(v4 + 56);
      *(v4 + 56) = 0;
      if (v11)
      {
        (*(*v11 + 8))(v11);
      }
    }
  }

  else if (*(v4 + 88))
  {
    mpark::detail::move_constructor<mpark::detail::traits<std::optional<WebCore::Exception>,WTF::detail::VoidPlaceholder>,(mpark::detail::Trait)1>::~move_constructor(v4 + 56, v9);
  }

  v12 = 1;
  *(v4 + 80) = 1;
  *(v4 + 88) = 1;
  result = WTF::NativePromise<std::optional<WebCore::Exception>,void,0u>::dispatchAll(v4, &v14);
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

WTF::Lock *WTF::NativePromise<std::optional<WebCore::Exception>,void,0u>::createAndResolve<std::optional<WebCore::Exception>&,std::enable_if<true,void>>(uint64_t *a1, char *a2, WTF::Logger::LogSiteIdentifier *a3)
{
  v6 = WTF::fastMalloc(0x90);
  v7 = WTF::NativePromise<std::optional<WebCore::Exception>,void,0u>::NativePromise(v6, a3);
  v8 = 0;
  *a1 = v7;
  v9 = (v7 + 48);
  v18 = v9;
  v19 = 1;
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
    WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [27],WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>>(v10, a3, " resolving ", v6);
  }

  v13 = a2[16];
  if (v13 == 1)
  {
    v14 = *a2;
    WTF::String::isolatedCopy();
    a2 = v20;
  }

  else
  {
    v14 = 0;
  }

  if (*(v6 + 88) > 1u)
  {
    if (*(v6 + 88) == 2)
    {
      v15 = *(v6 + 56);
      *(v6 + 56) = 0;
      if (v15)
      {
        (*(*v15 + 8))(v15);
      }
    }
  }

  else if (*(v6 + 88))
  {
    mpark::detail::move_constructor<mpark::detail::traits<std::optional<WebCore::Exception>,WTF::detail::VoidPlaceholder>,(mpark::detail::Trait)1>::~move_constructor(v6 + 56, v11);
  }

  *(v6 + 56) = 0;
  *(v6 + 72) = 0;
  if (v13)
  {
    *(v6 + 56) = v14;
    *(v6 + 64) = a2;
    *(v6 + 72) = 1;
  }

  *(v6 + 80) = 0;
  v16 = 1;
  *(v6 + 88) = 1;
  result = WTF::NativePromise<std::optional<WebCore::Exception>,void,0u>::dispatchAll(v6, &v18);
  if (v19 == 1)
  {
    result = v18;
    atomic_compare_exchange_strong_explicit(v18, &v16, 0, memory_order_release, memory_order_relaxed);
    if (v16 != 1)
    {
      return WTF::Lock::unlockSlow(result);
    }
  }

  return result;
}

uint64_t WTF::NativePromise<std::optional<WebCore::Exception>,void,0u>::NativePromise(uint64_t a1, _OWORD *a2)
{
  v33[2] = *MEMORY[0x1E69E9840];
  *(a1 + 8) = 1;
  *a1 = &unk_1F112CF90;
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

uint64_t WTF::NativePromise<std::optional<WebCore::Exception>,void,0u>::assertIsDead(uint64_t result)
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
      result = WTF::NativePromiseProducer<std::optional<WebCore::Exception>,void,0u>::assertIsDead(v5);
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

uint64_t WTF::NativePromise<std::optional<WebCore::Exception>,void,0u>::~NativePromise(uint64_t a1)
{
  v1 = WTF::NativePromise<std::optional<WebCore::Exception>,void,0u>::~NativePromise(a1);

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

  WTF::NativePromise<std::optional<WebCore::Exception>,void,0u>::assertIsDead(a1);
  WTF::Vector<WTF::NativePromiseProducer<std::optional<WebCore::Exception>,void,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 120, v26);
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

atomic_uint **WTF::NativePromiseProducer<std::optional<WebCore::Exception>,void,0u>::assertIsDead(atomic_uint **result)
{
  v1 = *result;
  if (*result)
  {
    atomic_fetch_add(v1 + 2, 1u);
    result = WTF::NativePromise<std::optional<WebCore::Exception>,void,0u>::assertIsDead(v1);
    if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v1 + 2);
      v2 = *(*v1 + 16);

      return v2(v1);
    }
  }

  return result;
}

uint64_t WTF::Vector<WTF::NativePromiseProducer<std::optional<WebCore::Exception>,void,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = *a1;
    v5 = 40 * v3;
    do
    {
      v4 = WTF::NativePromiseProducer<std::optional<WebCore::Exception>,void,0u>::~NativePromiseProducer(v4) + 5;
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

atomic_uint **WTF::NativePromiseProducer<std::optional<WebCore::Exception>,void,0u>::~NativePromiseProducer(atomic_uint **a1)
{
  WTF::NativePromiseProducer<std::optional<WebCore::Exception>,void,0u>::assertIsDead(a1);
  v2 = *a1;
  *a1 = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 16))(v2);
  }

  return a1;
}

uint64_t mpark::detail::move_constructor<mpark::detail::traits<std::optional<WebCore::Exception>,WTF::detail::VoidPlaceholder>,(mpark::detail::Trait)1>::~move_constructor(uint64_t a1, WTF::StringImpl *a2)
{
  if (!*(a1 + 24) && *(a1 + 16) == 1)
  {
    v3 = *(a1 + 8);
    *(a1 + 8) = 0;
    if (v3)
    {
      if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v3, a2);
      }
    }
  }

  *(a1 + 24) = -1;
  return a1;
}

uint64_t WTF::NativePromise<std::optional<WebCore::Exception>,void,0u>::dispatchAll(uint64_t a1, atomic_uchar *volatile *a2)
{
  v18 = &v20;
  v19 = 1;
  __dst = &v23;
  v22 = 1;
  WTF::VectorBuffer<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::FastMalloc>::adopt(&__dst, (a1 + 96));
  v4 = *(a1 + 108);
  if (v4)
  {
    WTF::VectorDestructor<true,WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>>::destruct(*(a1 + 96), (*(a1 + 96) + 8 * v4));
  }

  WTF::VectorBuffer<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::FastMalloc>::adopt((a1 + 96), &v18);
  WTF::Vector<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v18, v5);
  *&v6 = 0;
  v7 = *(a1 + 120);
  v18 = v7;
  v8 = *(a1 + 132);
  LODWORD(v19) = *(a1 + 128);
  HIDWORD(v19) = v8;
  v17 = v6;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  WTF::Vector<WTF::NativePromiseProducer<std::optional<WebCore::Exception>,void,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v17, v9);
  if (HIDWORD(v22))
  {
    v11 = __dst;
    v12 = 8 * HIDWORD(v22);
    do
    {
      v13 = *v11++;
      WTF::NativePromise<std::optional<WebCore::Exception>,void,0u>::ThenCallbackBase::dispatch(v13, a1, a2);
      v12 -= 8;
    }

    while (v12);
  }

  if (v8)
  {
    v14 = 40 * v8;
    do
    {
      WTF::NativePromise<std::optional<WebCore::Exception>,void,0u>::settleChainedPromise(a1, v7);
      v7 += 40;
      v14 -= 40;
    }

    while (v14);
  }

  WTF::Vector<WTF::NativePromiseProducer<std::optional<WebCore::Exception>,void,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v18, v10);
  return WTF::Vector<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&__dst, v15);
}

unsigned __int8 *WTF::NativePromise<std::optional<WebCore::Exception>,void,0u>::ThenCallbackBase::dispatch(WTF::NativePromiseBase *a1, uint64_t a2, atomic_uchar *volatile *a3)
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
        WTF::NativePromise<std::optional<WebCore::Exception>,void,0u>::takeResult(&v20, a2);
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
    *v8 = &unk_1F112CFB8;
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

atomic_uint **WTF::NativePromise<std::optional<WebCore::Exception>,void,0u>::settleChainedPromise(uint64_t a1, uint64_t a2)
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
    WTF::NativePromise<std::optional<WebCore::Exception>,void,0u>::settleAsChainedPromise<WTF::NativePromise<std::optional<WebCore::Exception>,void,0u>::Storage>(v2, a1 + 56, &v5);
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
    WTF::NativePromise<std::optional<WebCore::Exception>,void,0u>::settleAsChainedPromise<WTF::NativePromise<std::optional<WebCore::Exception>,void,0u>::Storage>(0, a1 + 56, &v5);
  }

  return WTF::NativePromiseProducer<std::optional<WebCore::Exception>,void,0u>::~NativePromiseProducer(&v9);
}

uint64_t WTF::NativePromise<std::optional<WebCore::Exception>,void,0u>::takeResult(mpark *a1, uint64_t a2)
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

  result = mpark::detail::move_assignment<mpark::detail::traits<std::optional<WebCore::Exception>,WTF::detail::VoidPlaceholder>,(mpark::detail::Trait)1>::move_assignment(v3, a2 + 56);
  v7 = 1;
  atomic_compare_exchange_strong_explicit((a2 + 48), &v7, 0, memory_order_release, memory_order_relaxed);
  if (v7 != 1)
  {

    return WTF::Lock::unlockSlow(v5);
  }

  return result;
}

uint64_t mpark::detail::move_assignment<mpark::detail::traits<std::optional<WebCore::Exception>,WTF::detail::VoidPlaceholder>,(mpark::detail::Trait)1>::move_assignment(uint64_t result, uint64_t a2)
{
  *result = 0;
  *(result + 24) = -1;
  v2 = *(a2 + 24);
  if (v2 != 255)
  {
    if (!*(a2 + 24))
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

void *WTF::Detail::CallableWrapper<WTF::NativePromise<std::optional<WebCore::Exception>,void,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<std::optional<WebCore::Exception>,void,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F112CFB8;
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

uint64_t WTF::Detail::CallableWrapper<WTF::NativePromise<std::optional<WebCore::Exception>,void,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<std::optional<WebCore::Exception>,void,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F112CFB8;
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

unsigned __int8 *WTF::Detail::CallableWrapper<WTF::NativePromise<std::optional<WebCore::Exception>,void,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<std::optional<WebCore::Exception>,void,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::call(WTF::NativePromiseBase *a1)
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
      WTF::NativePromise<std::optional<WebCore::Exception>,void,0u>::takeResult(&v14, v8);
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

WTF::Lock *WTF::NativePromise<std::optional<WebCore::Exception>,void,0u>::settleAsChainedPromise<WTF::NativePromise<std::optional<WebCore::Exception>,void,0u>::Storage>(uint64_t a1, uint64_t a2, WTF::Logger::LogSiteIdentifier *a3)
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
            v17 = *(a1 + 56);
            *(a1 + 56) = 0;
            if (v17)
            {
              (*(*v17 + 8))(v17);
            }
          }
        }

        else if (*(a1 + 88))
        {
          mpark::detail::move_constructor<mpark::detail::traits<std::optional<WebCore::Exception>,WTF::detail::VoidPlaceholder>,(mpark::detail::Trait)1>::~move_constructor(a1 + 56, v9);
        }

        v18 = -1;
        goto LABEL_37;
      case 2:
        if (*(a1 + 88) > 1u)
        {
          if (v11 != 255)
          {
            v24 = *a2;
            *a2 = 0;
            v25 = *(a1 + 56);
            *(a1 + 56) = v24;
            if (v25)
            {
              (*(*v25 + 8))(v25);
            }

            goto LABEL_38;
          }
        }

        else if (*(a1 + 88))
        {
          mpark::detail::move_constructor<mpark::detail::traits<std::optional<WebCore::Exception>,WTF::detail::VoidPlaceholder>,(mpark::detail::Trait)1>::~move_constructor(a1 + 56, v9);
        }

        v22 = *a2;
        *a2 = 0;
        *(a1 + 56) = v22;
        v18 = 2;
        goto LABEL_37;
      case 1:
        if (*(a1 + 88) > 1u)
        {
          if (v11 == 2)
          {
            v21 = *(a1 + 56);
            *(a1 + 56) = 0;
            if (v21)
            {
              (*(*v21 + 8))(v21);
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
            if (v13 != 255)
            {
              v33 = *(a2 + 24);
            }

            v34[0] = 0;
          }

          else
          {
            v32 = 0;
            if (*(a2 + 16))
            {
              v30[0] = *a2;
              v26 = v30[0];
              v27 = *(a2 + 8);
              *(a2 + 8) = 0;
              v32 = 1;
              v33 = 0;
              v34[0] = v26;
              v31 = 0;
              v35 = v27;
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
          mpark::variant<std::optional<WebCore::Exception>,WTF::detail::VoidPlaceholder>::operator=(v30, a1 + 56);
          mpark::variant<std::optional<WebCore::Exception>,WTF::detail::VoidPlaceholder>::operator=(a1 + 56, v34);
          if (!v37 && v36 == 1)
          {
            v15 = v35;
            if (v35)
            {
              if (atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v15, v14);
              }
            }
          }

          if (!v33 && v32 == 1)
          {
            v16 = v31;
            v31 = 0;
            if (v16)
            {
              if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v16, v14);
              }
            }
          }

          goto LABEL_38;
        }

        *(a1 + 88) = -1;
        mpark::detail::move_assignment<mpark::detail::traits<std::optional<WebCore::Exception>,WTF::detail::VoidPlaceholder>,(mpark::detail::Trait)1>::move_assignment(a1 + 56, a2);
        v18 = 1;
LABEL_37:
        *(a1 + 88) = v18;
        goto LABEL_38;
    }

    if (*(a1 + 88) > 1u)
    {
      if (v11 == 2)
      {
        v23 = *(a1 + 56);
        *(a1 + 56) = 0;
        if (v23)
        {
          (*(*v23 + 8))(v23);
        }
      }
    }

    else
    {
      if (!*(a1 + 88))
      {
        goto LABEL_38;
      }

      mpark::detail::move_constructor<mpark::detail::traits<std::optional<WebCore::Exception>,WTF::detail::VoidPlaceholder>,(mpark::detail::Trait)1>::~move_constructor(a1 + 56, v9);
    }

    *(a1 + 88) = 0;
  }

LABEL_38:
  result = WTF::NativePromise<std::optional<WebCore::Exception>,void,0u>::dispatchAll(a1, &v28);
  v20 = v29;
  if (v29 == 1)
  {
    result = v28;
    atomic_compare_exchange_strong_explicit(v28, &v20, 0, memory_order_release, memory_order_relaxed);
    if (v20 != 1)
    {
      return WTF::Lock::unlockSlow(result);
    }
  }

  return result;
}

uint64_t mpark::variant<std::optional<WebCore::Exception>,WTF::detail::VoidPlaceholder>::operator=(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  v4 = *(a2 + 24);
  if (v3 == 255)
  {
    if (*(a2 + 24))
    {
      if (v4 != 255)
      {
LABEL_23:
        v6 = 1;
LABEL_24:
        *(a1 + 24) = v6;
        return a1;
      }

      return a1;
    }

LABEL_14:
    *a1 = 0;
    *(a1 + 16) = 0;
    if (*(a2 + 16) == 1)
    {
      *a1 = *a2;
      v7 = *(a2 + 8);
      *(a2 + 8) = 0;
      *(a1 + 8) = v7;
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

  if (v4 == 255)
  {
    if (!*(a1 + 24) && *(a1 + 16) == 1)
    {
      v5 = *(a1 + 8);
      *(a1 + 8) = 0;
      if (v5)
      {
        if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v5, a2);
        }
      }
    }

    v6 = -1;
    goto LABEL_24;
  }

  if (v3 != 1)
  {
    if (!*(a1 + 24) && *(a1 + 16) == 1)
    {
      v8 = *(a1 + 8);
      *(a1 + 8) = 0;
      if (v8)
      {
        if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v8, a2);
        }
      }
    }

    goto LABEL_23;
  }

  return a1;
}

uint64_t std::__optional_storage_base<WebCore::Exception,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::Exception,false>>(uint64_t result, uint64_t a2)
{
  v2 = result;
  if (*(result + 16) == *(a2 + 16))
  {
    if (*(result + 16))
    {
      *result = *a2;
      v3 = *(a2 + 8);
      *(a2 + 8) = 0;
      result = *(result + 8);
      *(v2 + 8) = v3;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {

          return WTF::StringImpl::destroy(result, a2);
        }
      }
    }
  }

  else if (*(result + 16))
  {
    result = *(result + 8);
    *(v2 + 8) = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, a2);
    }

    *(v2 + 16) = 0;
  }

  else
  {
    *result = *a2;
    v4 = *(a2 + 8);
    *(a2 + 8) = 0;
    *(result + 8) = v4;
    *(result + 16) = 1;
  }

  return result;
}

uint64_t WTF::NativePromise<std::optional<WebCore::Exception>,IPC::Error,0u>::ThenCallback<true,WTF::NativePromise<std::optional<WebCore::Exception>,void,0u>>::~ThenCallback(uint64_t a1)
{
  *a1 = &unk_1F112CFE0;
  v2 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::unique_ptr<WTF::NativePromiseProducer<std::optional<WebCore::Exception>,void,0u>>::reset[abi:sn200100]((a1 + 64), 0);
  *a1 = &unk_1F112D010;
  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v3 + 8));
  }

  return a1;
}

{
  *a1 = &unk_1F112CFE0;
  v2 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::unique_ptr<WTF::NativePromiseProducer<std::optional<WebCore::Exception>,void,0u>>::reset[abi:sn200100]((a1 + 64), 0);
  *a1 = &unk_1F112D010;
  v4 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v4 + 8));
  }

  return WTF::fastFree(a1, v3);
}

uint64_t WTF::NativePromise<std::optional<WebCore::Exception>,IPC::Error,0u>::ThenCallback<true,WTF::NativePromise<std::optional<WebCore::Exception>,void,0u>>::disconnect(uint64_t a1)
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

uint64_t WTF::NativePromise<std::optional<WebCore::Exception>,IPC::Error,0u>::ThenCallback<true,WTF::NativePromise<std::optional<WebCore::Exception>,void,0u>>::processResult(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v116[2] = *MEMORY[0x1E69E9840];
  v5 = *(a3 + 24);
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
    v8 = v6;
    if (v5)
    {
      v9 = "Rejecting";
    }

    else
    {
      v9 = "Resolving";
    }

    v89 = v9;
    WTF::String::String(&v101, v9);
    WTF::String::String(&v100, " then() call made from ");
    WTF::Logger::LogSiteIdentifier::toString(&v99, (a1 + 24));
    WTF::String::String(&v98, "[");
    WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(&v97, a2);
    WTF::String::String(&v96, " callback:");
    WTF::LogArgument<void const*>::toString();
    WTF::String::String(&v94, "]");
    WTF::tryMakeString<WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String>(&v101, &v100, &v99, &v98, &v97, &v96, &v95, &v94, v92);
    if (!v92[0])
    {
      __break(0xC471u);
      goto LABEL_148;
    }

    v11 = v94;
    v94 = 0;
    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v10);
    }

    v12 = v95;
    v95 = 0;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v10);
    }

    v13 = v96;
    v96 = 0;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v10);
    }

    v14 = v97;
    v97 = 0;
    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v10);
    }

    v15 = v98;
    v98 = 0;
    if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v10);
    }

    v16 = v99;
    v99 = 0;
    if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v10);
    }

    v17 = v100;
    v100 = 0;
    if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, v10);
    }

    v18 = v101;
    v101 = 0;
    if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v18, v10);
    }

    v19 = *(v8 + 4);
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
    if (v20)
    {
      WTF::String::utf8();
      v22 = v90[0] ? v90[0] + 16 : 0;
      *buf = 136446210;
      v103 = v22;
      _os_log_impl(&dword_19D52D000, v19, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
      v20 = v90[0];
      v90[0] = 0;
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

    if (*v8 && v8[16] >= 4u)
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
              WTF::String::String((&v103 + 4), v89);
              v104 = 0;
              WTF::String::String(&v105, " then() call made from ");
              v106 = 0;
              WTF::Logger::LogSiteIdentifier::toString(&v107, (a1 + 24));
              v108 = 0;
              WTF::String::String(&v109, "[");
              v110 = 0;
              WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(&v111, a2);
              v112 = 0;
              WTF::String::String(&v113, " callback:");
              v114 = 0;
              WTF::LogArgument<void const*>::toString();
              v115 = 0;
              WTF::String::String(v116, "]");
              WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v90, buf, 8uLL);
              (*(*v30 + 16))(v30, v8, 4, v90);
              WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v90, v31);
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
          if (v34 != 1)
          {
            WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
          }

          break;
        }
      }
    }

    v35 = v92[0];
    v92[0] = 0;
    if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v35, v21);
    }
  }

  v36 = 0;
  v37 = 1;
  atomic_compare_exchange_strong_explicit((a1 + 57), &v36, 1u, memory_order_acquire, memory_order_acquire);
  if (v36)
  {
    MEMORY[0x19EB01E30](a1 + 57);
  }

  v38 = *(a1 + 64);
  *(a1 + 64) = 0;
  std::unique_ptr<WTF::NativePromiseProducer<std::optional<WebCore::Exception>,void,0u>>::reset[abi:sn200100]((a1 + 64), 0);
  atomic_compare_exchange_strong_explicit((a1 + 57), &v37, 0, memory_order_release, memory_order_relaxed);
  if (v37 != 1)
  {
    WTF::Lock::unlockSlow((a1 + 57));
  }

  v39 = (*(**(a1 + 72) + 16))(&v91);
  if (v38)
  {
    v40 = 0;
    v41 = v91;
    v90[0] = 0;
    v90[1] = 0;
    v90[2] = "<chained completion promise>";
    v90[3] = 0;
    v42 = (v91 + 48);
    atomic_compare_exchange_strong_explicit((v91 + 48), &v40, 1u, memory_order_acquire, memory_order_acquire);
    if (v40)
    {
      v39 = MEMORY[0x19EB01E30](v42);
    }

    *(v41 + 136) = 1;
    v43 = *v38;
    if (*v38)
    {
      atomic_fetch_add(v43 + 2, 1u);
    }

    v44 = WTF::NativePromiseBase::logChannel(v39);
    if (!*v44)
    {
      goto LABEL_119;
    }

    v45 = v44;
    if (v44[16] < 4u)
    {
      goto LABEL_119;
    }

    WTF::Logger::LogSiteIdentifier::toString(&v100, v90);
    WTF::String::String(&v99, " invoking chainTo() [");
    WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(&v98, v41);
    WTF::String::String(&v97, " chainedPromise:");
    WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(&v96, v43);
    WTF::String::String(&v95, " isNothing:");
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    WTF::String::String(&v93, "]");
    WTF::tryMakeString<WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String>(&v100, &v99, &v98, &v97, &v96, &v95, &v94, &v93, &v101);
    if (v101)
    {
      v47 = v93;
      v93 = 0;
      if (v47 && atomic_fetch_add_explicit(v47, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v47, v46);
      }

      v48 = v94;
      v94 = 0;
      if (v48 && atomic_fetch_add_explicit(v48, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v48, v46);
      }

      v49 = v95;
      v95 = 0;
      if (v49 && atomic_fetch_add_explicit(v49, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v49, v46);
      }

      v50 = v96;
      v96 = 0;
      if (v50 && atomic_fetch_add_explicit(v50, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v50, v46);
      }

      v51 = v97;
      v97 = 0;
      if (v51 && atomic_fetch_add_explicit(v51, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v51, v46);
      }

      v52 = v98;
      v98 = 0;
      if (v52 && atomic_fetch_add_explicit(v52, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v52, v46);
      }

      v53 = v99;
      v99 = 0;
      if (v53 && atomic_fetch_add_explicit(v53, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v53, v46);
      }

      v54 = v100;
      v100 = 0;
      if (v54 && atomic_fetch_add_explicit(v54, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v54, v46);
      }

      v55 = *(v45 + 4);
      v56 = os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT);
      if (v56)
      {
        WTF::String::utf8();
        v58 = v92[0] ? v92[0] + 16 : 0;
        *buf = 136446210;
        v103 = v58;
        _os_log_impl(&dword_19D52D000, v55, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
        v56 = v92[0];
        v92[0] = 0;
        if (v56)
        {
          if (*v56 == 1)
          {
            v56 = WTF::fastFree(v56, v57);
          }

          else
          {
            --*v56;
          }
        }
      }

      if (*v45 && v45[16] >= 4u)
      {
        v59 = MEMORY[0x1E696EBC0];
        while (1)
        {
          v60 = *v59;
          if (v60)
          {
            break;
          }

          v61 = *v59;
          atomic_compare_exchange_strong_explicit(v59, &v61, v60 | 1, memory_order_acquire, memory_order_acquire);
          if (v61 == v60)
          {
            v87 = v42;
            v88 = v38;
            v62 = WTF::Logger::observers(v56);
            v63 = *(v62 + 12);
            if (v63)
            {
              v64 = *v62;
              v65 = *v62 + 8 * v63;
              do
              {
                v66 = *v64;
                *buf = 0;
                WTF::Logger::LogSiteIdentifier::toString((&v103 + 4), v90);
                v104 = 0;
                WTF::String::String(&v105, " invoking chainTo() [");
                v106 = 0;
                WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(&v107, v41);
                v108 = 0;
                WTF::String::String(&v109, " chainedPromise:");
                v110 = 0;
                WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(&v111, v43);
                v112 = 0;
                WTF::String::String(&v113, " isNothing:");
                v114 = 0;
                WTF::StringImpl::createWithoutCopyingNonEmpty();
                v115 = 0;
                WTF::String::String(v116, "]");
                WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v92, buf, 8uLL);
                (*(*v66 + 16))(v66, v45, 4, v92);
                WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v92, v67);
                for (j = 120; j != -8; j -= 16)
                {
                  v69 = *&buf[j];
                  *&buf[j] = 0;
                  if (v69 && atomic_fetch_add_explicit(v69, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v69, v57);
                  }
                }

                ++v64;
              }

              while (v64 != v65);
            }

            v70 = 1;
            atomic_compare_exchange_strong_explicit(v59, &v70, 0, memory_order_release, memory_order_relaxed);
            v42 = v87;
            v38 = v88;
            if (v70 != 1)
            {
              WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
            }

            break;
          }
        }
      }

      v71 = v101;
      v101 = 0;
      if (v71 && atomic_fetch_add_explicit(v71, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v71, v57);
        if (v43)
        {
LABEL_120:
          if (atomic_fetch_add(v43 + 2, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v43 + 2);
            (*(*v43 + 16))(v43);
          }
        }

LABEL_122:
        v72 = atomic_load((v41 + 137));
        v73 = *v38;
        if (*v38)
        {
          atomic_fetch_add(v73 + 2, 1u);
          WTF::NativePromise<std::optional<WebCore::Exception>,void,0u>::setDispatchMode(v73, v72, v90);
          if (atomic_fetch_add(v73 + 2, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v73 + 2);
            (*(*v73 + 16))(v73);
          }
        }

        else
        {
          WTF::NativePromise<std::optional<WebCore::Exception>,void,0u>::setDispatchMode(0, v72, v90);
        }

        if (*(v41 + 88))
        {
          WTF::NativePromise<std::optional<WebCore::Exception>,void,0u>::settleChainedPromise(v41, v38);
        }

        else
        {
          v74 = *(v41 + 132);
          if (v74 == *(v41 + 128))
          {
            v75 = WTF::Vector<WTF::NativePromiseProducer<std::optional<WebCore::Exception>,void,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(v41 + 120, v74 + 1, v38);
            v76 = *(v41 + 120) + 40 * *(v41 + 132);
            v77 = *v75;
            *v75 = 0;
            *v76 = v77;
            v78 = *(v75 + 24);
            *(v76 + 8) = *(v75 + 8);
            *(v76 + 24) = v78;
          }

          else
          {
            v79 = *(v41 + 120) + 40 * v74;
            v80 = *v38;
            *v38 = 0;
            *v79 = v80;
            v81 = *(v38 + 8);
            *(v79 + 24) = *(v38 + 24);
            *(v79 + 8) = v81;
          }

          ++*(v41 + 132);
        }

        v82 = 1;
        atomic_compare_exchange_strong_explicit(v42, &v82, 0, memory_order_release, memory_order_relaxed);
        if (v82 != 1)
        {
          WTF::Lock::unlockSlow(v42);
        }

        goto LABEL_133;
      }

LABEL_119:
      if (v43)
      {
        goto LABEL_120;
      }

      goto LABEL_122;
    }

    __break(0xC471u);
LABEL_148:
    JUMPOUT(0x19E31D414);
  }

LABEL_133:
  v83 = v91;
  v91 = 0;
  if (v83 && atomic_fetch_add(v83 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v83 + 2);
    (*(*v83 + 16))(v83);
  }

  result = *(a1 + 72);
  *(a1 + 72) = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  if (v38)
  {
    v85 = WTF::NativePromiseProducer<std::optional<WebCore::Exception>,void,0u>::~NativePromiseProducer(v38);
    return WTF::fastFree(v85, v86);
  }

  return result;
}

atomic_uint **std::unique_ptr<WTF::NativePromiseProducer<std::optional<WebCore::Exception>,void,0u>>::reset[abi:sn200100](atomic_uint ***a1, atomic_uint **a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    v4 = WTF::NativePromiseProducer<std::optional<WebCore::Exception>,void,0u>::~NativePromiseProducer(result);

    return WTF::fastFree(v4, v5);
  }

  return result;
}

WTF::StringImpl *WTF::NativePromise<std::optional<WebCore::Exception>,void,0u>::setDispatchMode(atomic_uchar *a1, unsigned __int8 a2, WTF::Logger::LogSiteIdentifier *a3)
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

  atomic_store(a2, (v5 + 137));
  v10 = 1;
  atomic_compare_exchange_strong_explicit((v5 + 48), &v10, 0, memory_order_release, memory_order_relaxed);
  if (v10 != 1)
  {

    return WTF::Lock::unlockSlow(v7);
  }

  return result;
}

unint64_t WTF::Vector<WTF::NativePromiseProducer<std::optional<WebCore::Exception>,void,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
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

    WTF::Vector<WTF::NativePromiseProducer<std::optional<WebCore::Exception>,void,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WTF::NativePromiseProducer<std::optional<WebCore::Exception>,void,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

atomic_uint **WTF::Vector<WTF::NativePromiseProducer<std::optional<WebCore::Exception>,void,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(atomic_uint **result, unint64_t a2)
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
          result = WTF::NativePromiseProducer<std::optional<WebCore::Exception>,void,0u>::~NativePromiseProducer(result) + 5;
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

void *_ZN3WTF6Detail15CallableWrapperIZNS_13NativePromiseINSt3__18optionalINS_23ObjectIdentifierGenericIN7WebCore32WebTransportStreamIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEN3IPC5ErrorELj0EE11whenSettledIZN6WebKit19WebTransportSession34createOutgoingUnidirectionalStreamEvE3__0EEDaRNS_34GuaranteedSerialFunctionDispatcherEOT_RKNS_6Logger17LogSiteIdentifierEEUlONSt12experimental15fundamentals_v38expectedISB_SD_EEE_NS_3RefINS2_INSY_INS6_18WritableStreamSinkENS_12RawPtrTraitsISZ_EENS_21DefaultRefDerefTraitsISZ_EEEEvLj0EEENS10_IS15_EENS12_IS15_EEEEJSW_EED1Ev(void *a1, void *a2)
{
  *a1 = &unk_1F112D040;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZNS_13NativePromiseINSt3__18optionalINS_23ObjectIdentifierGenericIN7WebCore32WebTransportStreamIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEN3IPC5ErrorELj0EE11whenSettledIZN6WebKit19WebTransportSession34createOutgoingUnidirectionalStreamEvE3__0EEDaRNS_34GuaranteedSerialFunctionDispatcherEOT_RKNS_6Logger17LogSiteIdentifierEEUlONSt12experimental15fundamentals_v38expectedISB_SD_EEE_NS_3RefINS2_INSY_INS6_18WritableStreamSinkENS_12RawPtrTraitsISZ_EENS_21DefaultRefDerefTraitsISZ_EEEEvLj0EEENS10_IS15_EENS12_IS15_EEEEJSW_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F112D040;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

WTF::Lock *_ZN3WTF6Detail15CallableWrapperIZNS_13NativePromiseINSt3__18optionalINS_23ObjectIdentifierGenericIN7WebCore32WebTransportStreamIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEN3IPC5ErrorELj0EE11whenSettledIZN6WebKit19WebTransportSession34createOutgoingUnidirectionalStreamEvE3__0EEDaRNS_34GuaranteedSerialFunctionDispatcherEOT_RKNS_6Logger17LogSiteIdentifierEEUlONSt12experimental15fundamentals_v38expectedISB_SD_EEE_NS_3RefINS2_INSY_INS6_18WritableStreamSinkENS_12RawPtrTraitsISZ_EENS_21DefaultRefDerefTraitsISZ_EEEEvLj0EEENS10_IS15_EENS12_IS15_EEEEJSW_EE4callESW_@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a1 + 16);
  if (v6)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(v6, *(a1 + 8), &v29);
  }

  else
  {
    v29 = 0;
  }

  if (!*(a2 + 16) && *(a2 + 8) == 1 && v29)
  {
    WebKit::WebTransportSendStreamSink::create(&v25, v29, *a2);
    v26 = 0uLL;
    v27 = "operator()";
    v28 = 0;
    v7 = WTF::fastMalloc(0x80);
    v8 = WTF::NativePromise<WTF::Ref<WebCore::WritableStreamSink,WTF::RawPtrTraits<WebCore::WritableStreamSink>,WTF::DefaultRefDerefTraits<WebCore::WritableStreamSink>>,void,0u>::NativePromise(v7, &v26);
    v9 = 0;
    *a3 = v8;
    v10 = (v8 + 48);
    v30 = v10;
    v31 = 1;
    atomic_compare_exchange_strong_explicit(v10, &v9, 1u, memory_order_acquire, memory_order_acquire);
    if (v9)
    {
      v10 = MEMORY[0x19EB01E30]();
    }

    v11 = WTF::NativePromiseBase::logChannel(v10);
    if (*v11 && v11[16] >= 4u)
    {
      WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [27],WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>>(v11, &v26, " resolving ", v7);
    }

    if (*(v7 + 72) > 1u)
    {
      if (*(v7 + 72) == 2)
      {
        v21 = *(v7 + 56);
        *(v7 + 56) = 0;
        if (v21)
        {
          (*(*v21 + 8))(v21);
        }
      }
    }

    else if (*(v7 + 72))
    {
      mpark::detail::move_constructor<mpark::detail::traits<WTF::Ref<WebCore::WritableStreamSink,WTF::RawPtrTraits<WebCore::WritableStreamSink>,WTF::DefaultRefDerefTraits<WebCore::WritableStreamSink>>,WTF::detail::VoidPlaceholder>,(mpark::detail::Trait)1>::~move_constructor(v7 + 56);
    }

    v22 = v25;
    v25 = 0;
    *(v7 + 56) = v22;
    *(v7 + 64) = 0;
    v23 = 1;
    *(v7 + 72) = 1;
    WTF::NativePromise<WTF::Ref<WebCore::WritableStreamSink,WTF::RawPtrTraits<WebCore::WritableStreamSink>,WTF::DefaultRefDerefTraits<WebCore::WritableStreamSink>>,void,0u>::dispatchAll(v7, &v30);
    if (v31 == 1)
    {
      v24 = v30;
      atomic_compare_exchange_strong_explicit(v30, &v23, 0, memory_order_release, memory_order_relaxed);
      if (v23 != 1)
      {
        WTF::Lock::unlockSlow(v24);
      }
    }

    result = v25;
    if (v25)
    {
      if (v25[2] == 1)
      {
        result = (*(*v25 + 8))();
      }

      else
      {
        --v25[2];
      }
    }
  }

  else
  {
    v26 = 0uLL;
    v27 = "operator()";
    v28 = 0;
    v12 = WTF::fastMalloc(0x80);
    v13 = WTF::NativePromise<WTF::Ref<WebCore::WritableStreamSink,WTF::RawPtrTraits<WebCore::WritableStreamSink>,WTF::DefaultRefDerefTraits<WebCore::WritableStreamSink>>,void,0u>::NativePromise(v12, &v26);
    v14 = 0;
    *a3 = v13;
    v15 = (v13 + 48);
    v30 = v15;
    v31 = 1;
    atomic_compare_exchange_strong_explicit(v15, &v14, 1u, memory_order_acquire, memory_order_acquire);
    if (v14)
    {
      v15 = MEMORY[0x19EB01E30]();
    }

    v16 = WTF::NativePromiseBase::logChannel(v15);
    if (*v16 && v16[16] >= 4u)
    {
      WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [27],WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>>(v16, &v26, " rejecting ", v12);
    }

    if (*(v12 + 72) > 1u)
    {
      if (*(v12 + 72) == 2)
      {
        v17 = *(v12 + 56);
        *(v12 + 56) = 0;
        if (v17)
        {
          (*(*v17 + 8))(v17);
        }
      }
    }

    else if (*(v12 + 72))
    {
      mpark::detail::move_constructor<mpark::detail::traits<WTF::Ref<WebCore::WritableStreamSink,WTF::RawPtrTraits<WebCore::WritableStreamSink>,WTF::DefaultRefDerefTraits<WebCore::WritableStreamSink>>,WTF::detail::VoidPlaceholder>,(mpark::detail::Trait)1>::~move_constructor(v12 + 56);
    }

    v18 = 1;
    *(v12 + 64) = 1;
    *(v12 + 72) = 1;
    result = WTF::NativePromise<WTF::Ref<WebCore::WritableStreamSink,WTF::RawPtrTraits<WebCore::WritableStreamSink>,WTF::DefaultRefDerefTraits<WebCore::WritableStreamSink>>,void,0u>::dispatchAll(v12, &v30);
    if (v31 == 1)
    {
      result = v30;
      atomic_compare_exchange_strong_explicit(v30, &v18, 0, memory_order_release, memory_order_relaxed);
      if (v18 != 1)
      {
        result = WTF::Lock::unlockSlow(result);
      }
    }
  }

  v20 = v29;
  v29 = 0;
  if (v20)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebTransportSession,(WTF::DestructionThread)2>::deref((v20 + 32));
  }

  return result;
}

uint64_t WTF::NativePromise<WTF::Ref<WebCore::WritableStreamSink,WTF::RawPtrTraits<WebCore::WritableStreamSink>,WTF::DefaultRefDerefTraits<WebCore::WritableStreamSink>>,void,0u>::NativePromise(uint64_t a1, _OWORD *a2)
{
  v33[2] = *MEMORY[0x1E69E9840];
  *(a1 + 8) = 1;
  *a1 = &unk_1F112D068;
  v3 = a2[1];
  *(a1 + 16) = *a2;
  *(a1 + 32) = v3;
  *(a1 + 48) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = a1 + 96;
  *(a1 + 88) = 1;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
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

uint64_t WTF::NativePromise<WTF::Ref<WebCore::WritableStreamSink,WTF::RawPtrTraits<WebCore::WritableStreamSink>,WTF::DefaultRefDerefTraits<WebCore::WritableStreamSink>>,void,0u>::assertIsDead(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = (result + 48);
  atomic_compare_exchange_strong_explicit((result + 48), &v2, 1u, memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    result = MEMORY[0x19EB01E30](result + 48);
  }

  v4 = *(v1 + 116);
  if (v4)
  {
    v5 = *(v1 + 104);
    v6 = 40 * v4;
    do
    {
      result = WTF::NativePromiseProducer<WTF::Ref<WebCore::WritableStreamSink,WTF::RawPtrTraits<WebCore::WritableStreamSink>,WTF::DefaultRefDerefTraits<WebCore::WritableStreamSink>>,void,0u>::assertIsDead(v5);
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

uint64_t WTF::NativePromise<WTF::Ref<WebCore::WritableStreamSink,WTF::RawPtrTraits<WebCore::WritableStreamSink>,WTF::DefaultRefDerefTraits<WebCore::WritableStreamSink>>,void,0u>::~NativePromise(uint64_t a1)
{
  v1 = WTF::NativePromise<WTF::Ref<WebCore::WritableStreamSink,WTF::RawPtrTraits<WebCore::WritableStreamSink>,WTF::DefaultRefDerefTraits<WebCore::WritableStreamSink>>,void,0u>::~NativePromise(a1);

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

  WTF::NativePromise<WTF::Ref<WebCore::WritableStreamSink,WTF::RawPtrTraits<WebCore::WritableStreamSink>,WTF::DefaultRefDerefTraits<WebCore::WritableStreamSink>>,void,0u>::assertIsDead(a1);
  WTF::Vector<WTF::NativePromiseProducer<WTF::Ref<WebCore::WritableStreamSink,WTF::RawPtrTraits<WebCore::WritableStreamSink>,WTF::DefaultRefDerefTraits<WebCore::WritableStreamSink>>,void,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 104, v26);
  WTF::Vector<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 80, v27);
  if (*(a1 + 72) > 1u)
  {
    if (*(a1 + 72) == 2)
    {
      v28 = *(a1 + 56);
      *(a1 + 56) = 0;
      if (v28)
      {
        (*(*v28 + 8))(v28);
      }
    }
  }

  else if (*(a1 + 72))
  {
    mpark::detail::move_constructor<mpark::detail::traits<WTF::Ref<WebCore::WritableStreamSink,WTF::RawPtrTraits<WebCore::WritableStreamSink>,WTF::DefaultRefDerefTraits<WebCore::WritableStreamSink>>,WTF::detail::VoidPlaceholder>,(mpark::detail::Trait)1>::~move_constructor(a1 + 56);
  }

  *(a1 + 72) = -1;
  return a1;
}

atomic_uint **WTF::NativePromiseProducer<WTF::Ref<WebCore::WritableStreamSink,WTF::RawPtrTraits<WebCore::WritableStreamSink>,WTF::DefaultRefDerefTraits<WebCore::WritableStreamSink>>,void,0u>::assertIsDead(atomic_uint **result)
{
  v1 = *result;
  if (*result)
  {
    atomic_fetch_add(v1 + 2, 1u);
    result = WTF::NativePromise<WTF::Ref<WebCore::WritableStreamSink,WTF::RawPtrTraits<WebCore::WritableStreamSink>,WTF::DefaultRefDerefTraits<WebCore::WritableStreamSink>>,void,0u>::assertIsDead(v1);
    if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v1 + 2);
      v2 = *(*v1 + 16);

      return v2(v1);
    }
  }

  return result;
}

uint64_t WTF::Vector<WTF::NativePromiseProducer<WTF::Ref<WebCore::WritableStreamSink,WTF::RawPtrTraits<WebCore::WritableStreamSink>,WTF::DefaultRefDerefTraits<WebCore::WritableStreamSink>>,void,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = *a1;
    v5 = 40 * v3;
    do
    {
      v4 = WTF::NativePromiseProducer<WTF::Ref<WebCore::WritableStreamSink,WTF::RawPtrTraits<WebCore::WritableStreamSink>,WTF::DefaultRefDerefTraits<WebCore::WritableStreamSink>>,void,0u>::~NativePromiseProducer(v4) + 5;
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

atomic_uint **WTF::NativePromiseProducer<WTF::Ref<WebCore::WritableStreamSink,WTF::RawPtrTraits<WebCore::WritableStreamSink>,WTF::DefaultRefDerefTraits<WebCore::WritableStreamSink>>,void,0u>::~NativePromiseProducer(atomic_uint **a1)
{
  WTF::NativePromiseProducer<WTF::Ref<WebCore::WritableStreamSink,WTF::RawPtrTraits<WebCore::WritableStreamSink>,WTF::DefaultRefDerefTraits<WebCore::WritableStreamSink>>,void,0u>::assertIsDead(a1);
  v2 = *a1;
  *a1 = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 16))(v2);
  }

  return a1;
}

uint64_t mpark::detail::move_constructor<mpark::detail::traits<WTF::Ref<WebCore::WritableStreamSink,WTF::RawPtrTraits<WebCore::WritableStreamSink>,WTF::DefaultRefDerefTraits<WebCore::WritableStreamSink>>,WTF::detail::VoidPlaceholder>,(mpark::detail::Trait)1>::~move_constructor(uint64_t a1)
{
  if (!*(a1 + 8))
  {
    v2 = *a1;
    *a1 = 0;
    if (v2)
    {
      if (v2[2] == 1)
      {
        (*(*v2 + 8))(v2);
      }

      else
      {
        --v2[2];
      }
    }
  }

  *(a1 + 8) = -1;
  return a1;
}

uint64_t WTF::NativePromise<WTF::Ref<WebCore::WritableStreamSink,WTF::RawPtrTraits<WebCore::WritableStreamSink>,WTF::DefaultRefDerefTraits<WebCore::WritableStreamSink>>,void,0u>::dispatchAll(uint64_t a1, atomic_uchar *volatile *a2)
{
  *&v31 = &v32;
  *(&v31 + 1) = 1;
  __dst = &v35;
  v34 = 1;
  WTF::VectorBuffer<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::FastMalloc>::adopt(&__dst, (a1 + 80));
  v4 = *(a1 + 92);
  if (v4)
  {
    WTF::VectorDestructor<true,WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>>::destruct(*(a1 + 80), (*(a1 + 80) + 8 * v4));
  }

  WTF::VectorBuffer<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::FastMalloc>::adopt((a1 + 80), &v31);
  WTF::Vector<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v31, v5);
  *&v6 = 0;
  v7 = *(a1 + 104);
  v28 = v7;
  v8 = *(a1 + 116);
  v29 = *(a1 + 112);
  v30 = v8;
  v31 = v6;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  v10 = WTF::Vector<WTF::NativePromiseProducer<WTF::Ref<WebCore::WritableStreamSink,WTF::RawPtrTraits<WebCore::WritableStreamSink>,WTF::DefaultRefDerefTraits<WebCore::WritableStreamSink>>,void,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v31, v9);
  if (HIDWORD(v34))
  {
    v12 = __dst;
    v13 = 8 * HIDWORD(v34);
    do
    {
      v14 = *v12;
      if (!*(*v12 + 16) || (v15 = atomic_load((a1 + 121)), v15 == 1) && (v10 = (*(**(v14 + 16) + 24))(*(v14 + 16)), v10))
      {
        if (*(v14 + 56) == 1)
        {
          *&v31 = v14;
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
            v10 = WTF::Logger::log<char [32],WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>,char [21],void const*,char [11],WTF::Logger::LogSiteIdentifier,char [2]>(v10, a1, &v31, (v14 + 24));
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

          if (WTF::NativePromise<WTF::String,void,0u>::hasRunnable(a1))
          {
            WTF::NativePromise<WTF::String,WebCore::DOMCacheEngine::Error,0u>::takeResultRunnable(&v36, a1);
            v21 = v36;
            (*(*v36 + 16))(&v31, v36);
            (*(*v14 + 24))(v14, a1, &v31);
            if (!BYTE8(v31))
            {
              v22 = v31;
              *&v31 = 0;
              if (v22)
              {
                if (v22[2] == 1)
                {
                  (*(*v22 + 8))(v22);
                }

                else
                {
                  --v22[2];
                }
              }
            }

            BYTE8(v31) = -1;
            (*(*v21 + 8))(v21);
          }

          else
          {
            WTF::NativePromise<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>::takeResult(&v31, a1);
            (*(*v14 + 24))(v14, a1, &v31);
            if (!BYTE8(v31))
            {
              v23 = v31;
              *&v31 = 0;
              if (v23)
              {
                if (v23[2] == 1)
                {
                  (*(*v23 + 8))(v23);
                }

                else
                {
                  --v23[2];
                }
              }
            }
          }

          v24 = 0;
          v10 = *a2;
          atomic_compare_exchange_strong_explicit(*a2, &v24, 1u, memory_order_acquire, memory_order_acquire);
          if (v24)
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
        *v17 = &unk_1F112D090;
        v17[1] = v14;
        v17[2] = a1;
        *&v31 = v17;
        (*(*v16 + 16))(v16, &v31);
        v10 = v31;
        *&v31 = 0;
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
    v25 = 40 * v8;
    do
    {
      WTF::NativePromise<WTF::Ref<WebCore::WritableStreamSink,WTF::RawPtrTraits<WebCore::WritableStreamSink>,WTF::DefaultRefDerefTraits<WebCore::WritableStreamSink>>,void,0u>::settleChainedPromise(a1, v7);
      v7 += 40;
      v25 -= 40;
    }

    while (v25);
  }

  WTF::Vector<WTF::NativePromiseProducer<WTF::Ref<WebCore::WritableStreamSink,WTF::RawPtrTraits<WebCore::WritableStreamSink>,WTF::DefaultRefDerefTraits<WebCore::WritableStreamSink>>,void,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v28, v11);
  return WTF::Vector<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&__dst, v26);
}

atomic_uint **WTF::NativePromise<WTF::Ref<WebCore::WritableStreamSink,WTF::RawPtrTraits<WebCore::WritableStreamSink>,WTF::DefaultRefDerefTraits<WebCore::WritableStreamSink>>,void,0u>::settleChainedPromise(uint64_t a1, uint64_t a2)
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
    WTF::NativePromise<WTF::Ref<WebCore::WritableStreamSink,WTF::RawPtrTraits<WebCore::WritableStreamSink>,WTF::DefaultRefDerefTraits<WebCore::WritableStreamSink>>,void,0u>::settleAsChainedPromise<WTF::NativePromise<WTF::Ref<WebCore::WritableStreamSink,WTF::RawPtrTraits<WebCore::WritableStreamSink>,WTF::DefaultRefDerefTraits<WebCore::WritableStreamSink>>,void,0u>::Storage>(v2, a1 + 56, &v5);
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
    WTF::NativePromise<WTF::Ref<WebCore::WritableStreamSink,WTF::RawPtrTraits<WebCore::WritableStreamSink>,WTF::DefaultRefDerefTraits<WebCore::WritableStreamSink>>,void,0u>::settleAsChainedPromise<WTF::NativePromise<WTF::Ref<WebCore::WritableStreamSink,WTF::RawPtrTraits<WebCore::WritableStreamSink>,WTF::DefaultRefDerefTraits<WebCore::WritableStreamSink>>,void,0u>::Storage>(0, a1 + 56, &v5);
  }

  return WTF::NativePromiseProducer<WTF::Ref<WebCore::WritableStreamSink,WTF::RawPtrTraits<WebCore::WritableStreamSink>,WTF::DefaultRefDerefTraits<WebCore::WritableStreamSink>>,void,0u>::~NativePromiseProducer(&v9);
}

void *WTF::Detail::CallableWrapper<WTF::NativePromise<WTF::Ref<WebCore::WritableStreamSink,WTF::RawPtrTraits<WebCore::WritableStreamSink>,WTF::DefaultRefDerefTraits<WebCore::WritableStreamSink>>,void,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<WTF::Ref<WebCore::WritableStreamSink,WTF::RawPtrTraits<WebCore::WritableStreamSink>,WTF::DefaultRefDerefTraits<WebCore::WritableStreamSink>>,void,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F112D090;
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

uint64_t WTF::Detail::CallableWrapper<WTF::NativePromise<WTF::Ref<WebCore::WritableStreamSink,WTF::RawPtrTraits<WebCore::WritableStreamSink>,WTF::DefaultRefDerefTraits<WebCore::WritableStreamSink>>,void,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<WTF::Ref<WebCore::WritableStreamSink,WTF::RawPtrTraits<WebCore::WritableStreamSink>,WTF::DefaultRefDerefTraits<WebCore::WritableStreamSink>>,void,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F112D090;
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

WTF::StringImpl *WTF::Detail::CallableWrapper<WTF::NativePromise<WTF::Ref<WebCore::WritableStreamSink,WTF::RawPtrTraits<WebCore::WritableStreamSink>,WTF::DefaultRefDerefTraits<WebCore::WritableStreamSink>>,void,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<WTF::Ref<WebCore::WritableStreamSink,WTF::RawPtrTraits<WebCore::WritableStreamSink>,WTF::DefaultRefDerefTraits<WebCore::WritableStreamSink>>,void,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::call(WTF::NativePromiseBase *a1)
{
  v2 = *(a1 + 1);
  v1 = *(a1 + 2);
  if (*(v2 + 56) == 1)
  {
    v12 = *(a1 + 1);
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
      return WTF::Logger::log<char [32],WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>,char [21],void const*,char [11],WTF::Logger::LogSiteIdentifier,char [2]>(result, v1, &v12, (v2 + 24));
    }
  }

  else
  {
    hasRunnable = WTF::NativePromise<WTF::String,void,0u>::hasRunnable(*(a1 + 2));
    v7 = *(a1 + 1);
    v8 = *(a1 + 2);
    if (hasRunnable)
    {
      WTF::NativePromise<WTF::String,WebCore::DOMCacheEngine::Error,0u>::takeResultRunnable(&v11, v8);
      v9 = v11;
      (*(*v11 + 16))(&v12, v11);
      (*(*v7 + 24))(v7, v8, &v12);
      if (!v13)
      {
        v10 = v12;
        v12 = 0;
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
      }

      v13 = -1;
      return (*(*v9 + 8))(v9);
    }

    else
    {
      WTF::NativePromise<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>::takeResult(&v12, v8);
      result = (*(*v7 + 24))(v7, v8, &v12);
      if (!v13)
      {
        result = v12;
        v12 = 0;
        if (result)
        {
          if (*(result + 2) == 1)
          {
            return (*(*result + 8))(result);
          }

          else
          {
            --*(result + 2);
          }
        }
      }
    }
  }

  return result;
}

WTF::Lock *WTF::NativePromise<WTF::Ref<WebCore::WritableStreamSink,WTF::RawPtrTraits<WebCore::WritableStreamSink>,WTF::DefaultRefDerefTraits<WebCore::WritableStreamSink>>,void,0u>::settleAsChainedPromise<WTF::NativePromise<WTF::Ref<WebCore::WritableStreamSink,WTF::RawPtrTraits<WebCore::WritableStreamSink>,WTF::DefaultRefDerefTraits<WebCore::WritableStreamSink>>,void,0u>::Storage>(uint64_t a1, uint64_t a2, WTF::Logger::LogSiteIdentifier *a3)
{
  v6 = 0;
  v7 = (a1 + 48);
  v26 = v7;
  v27 = 1;
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

  v10 = *(a1 + 72);
  v11 = *(a2 + 16);
  if (v10 != 255 || v11 != 255)
  {
    switch(v11)
    {
      case 255:
        if (*(a1 + 72) > 1u)
        {
          if (v10 == 2)
          {
            v13 = *(a1 + 56);
            *(a1 + 56) = 0;
            if (v13)
            {
              (*(*v13 + 8))(v13);
            }
          }
        }

        else if (*(a1 + 72))
        {
          mpark::detail::move_constructor<mpark::detail::traits<WTF::Ref<WebCore::WritableStreamSink,WTF::RawPtrTraits<WebCore::WritableStreamSink>,WTF::DefaultRefDerefTraits<WebCore::WritableStreamSink>>,WTF::detail::VoidPlaceholder>,(mpark::detail::Trait)1>::~move_constructor(a1 + 56);
        }

        v14 = -1;
        goto LABEL_27;
      case 2:
        if (*(a1 + 72) > 1u)
        {
          if (v10 != 255)
          {
            v22 = *a2;
            *a2 = 0;
            v23 = *(a1 + 56);
            *(a1 + 56) = v22;
            if (v23)
            {
              (*(*v23 + 8))(v23);
            }

            goto LABEL_28;
          }
        }

        else if (*(a1 + 72))
        {
          mpark::detail::move_constructor<mpark::detail::traits<WTF::Ref<WebCore::WritableStreamSink,WTF::RawPtrTraits<WebCore::WritableStreamSink>,WTF::DefaultRefDerefTraits<WebCore::WritableStreamSink>>,WTF::detail::VoidPlaceholder>,(mpark::detail::Trait)1>::~move_constructor(a1 + 56);
        }

        v20 = *a2;
        *a2 = 0;
        *(a1 + 56) = v20;
        v14 = 2;
LABEL_27:
        *(a1 + 72) = v14;
        goto LABEL_28;
      case 1:
        if (*(a1 + 72) > 1u)
        {
          if (v10 == 2)
          {
            v17 = *(a1 + 56);
            *(a1 + 56) = 0;
            if (v17)
            {
              (*(*v17 + 8))(v17);
            }
          }
        }

        else if (*(a1 + 72))
        {
          LOBYTE(v28) = 0;
          v29 = -1;
          v12 = *(a2 + 8);
          if (*(a2 + 8))
          {
            if (v12 != 255)
            {
              v29 = *(a2 + 8);
            }

            LOBYTE(v30) = 0;
          }

          else
          {
            v24 = *a2;
            *a2 = 0;
            v29 = 0;
            v28 = 0;
            v30 = v24;
          }

          v31 = v12;
          mpark::variant<WTF::Ref<WebCore::WritableStreamSink,WTF::RawPtrTraits<WebCore::WritableStreamSink>,WTF::DefaultRefDerefTraits<WebCore::WritableStreamSink>>,WTF::detail::VoidPlaceholder>::operator=(&v28, (a1 + 56));
          mpark::variant<WTF::Ref<WebCore::WritableStreamSink,WTF::RawPtrTraits<WebCore::WritableStreamSink>,WTF::DefaultRefDerefTraits<WebCore::WritableStreamSink>>,WTF::detail::VoidPlaceholder>::operator=(a1 + 56, &v30);
          if (!v31 && v30)
          {
            if (v30[2] == 1)
            {
              (*(*v30 + 8))();
            }

            else
            {
              --v30[2];
            }
          }

          if (!v29)
          {
            v25 = v28;
            v28 = 0;
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
          }

          goto LABEL_28;
        }

        *(a1 + 56) = 0;
        *(a1 + 64) = -1;
        v18 = *(a2 + 8);
        if (v18 != 255)
        {
          if (!*(a2 + 8))
          {
            v19 = *a2;
            *a2 = 0;
            *(a1 + 56) = v19;
          }

          *(a1 + 64) = v18;
        }

        v14 = 1;
        goto LABEL_27;
    }

    if (*(a1 + 72) > 1u)
    {
      if (v10 == 2)
      {
        v21 = *(a1 + 56);
        *(a1 + 56) = 0;
        if (v21)
        {
          (*(*v21 + 8))(v21);
        }
      }
    }

    else
    {
      if (!*(a1 + 72))
      {
        goto LABEL_28;
      }

      mpark::detail::move_constructor<mpark::detail::traits<WTF::Ref<WebCore::WritableStreamSink,WTF::RawPtrTraits<WebCore::WritableStreamSink>,WTF::DefaultRefDerefTraits<WebCore::WritableStreamSink>>,WTF::detail::VoidPlaceholder>,(mpark::detail::Trait)1>::~move_constructor(a1 + 56);
    }

    *(a1 + 72) = 0;
  }

LABEL_28:
  result = WTF::NativePromise<WTF::Ref<WebCore::WritableStreamSink,WTF::RawPtrTraits<WebCore::WritableStreamSink>,WTF::DefaultRefDerefTraits<WebCore::WritableStreamSink>>,void,0u>::dispatchAll(a1, &v26);
  v16 = v27;
  if (v27 == 1)
  {
    result = v26;
    atomic_compare_exchange_strong_explicit(v26, &v16, 0, memory_order_release, memory_order_relaxed);
    if (v16 != 1)
    {
      return WTF::Lock::unlockSlow(result);
    }
  }

  return result;
}

uint64_t mpark::variant<WTF::Ref<WebCore::WritableStreamSink,WTF::RawPtrTraits<WebCore::WritableStreamSink>,WTF::DefaultRefDerefTraits<WebCore::WritableStreamSink>>,WTF::detail::VoidPlaceholder>::operator=(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a2 + 8);
  if (v3 == 255)
  {
    if (*(a2 + 8))
    {
      if (v4 != 255)
      {
LABEL_20:
        v6 = 1;
LABEL_21:
        *(a1 + 8) = v6;
        return a1;
      }

      return a1;
    }

    v7 = *a2;
    *a2 = 0;
LABEL_14:
    *a1 = v7;
    *(a1 + 8) = 0;
    return a1;
  }

  if (!*(a2 + 8))
  {
    v7 = *a2;
    *a2 = 0;
    if (!v3)
    {
      v10 = *a1;
      *a1 = v7;
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

      return a1;
    }

    goto LABEL_14;
  }

  if (v4 == 255)
  {
    if (!*(a1 + 8))
    {
      v5 = *a1;
      *a1 = 0;
      if (v5)
      {
        if (v5[2] == 1)
        {
          (*(*v5 + 8))(v5);
        }

        else
        {
          --v5[2];
        }
      }
    }

    v6 = -1;
    goto LABEL_21;
  }

  if (v3 != 1)
  {
    if (!*(a1 + 8))
    {
      v8 = *a1;
      *a1 = 0;
      if (v8)
      {
        if (v8[2] == 1)
        {
          (*(*v8 + 8))(v8);
        }

        else
        {
          --v8[2];
        }
      }
    }

    goto LABEL_20;
  }

  return a1;
}

uint64_t WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::ThenCallback<true,WTF::NativePromise<WTF::Ref<WebCore::WritableStreamSink,WTF::RawPtrTraits<WebCore::WritableStreamSink>,WTF::DefaultRefDerefTraits<WebCore::WritableStreamSink>>,void,0u>>::~ThenCallback(uint64_t a1)
{
  *a1 = &unk_1F112D0B8;
  v2 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::unique_ptr<WTF::NativePromiseProducer<WTF::Ref<WebCore::WritableStreamSink,WTF::RawPtrTraits<WebCore::WritableStreamSink>,WTF::DefaultRefDerefTraits<WebCore::WritableStreamSink>>,void,0u>>::reset[abi:sn200100]((a1 + 64), 0);
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
  *a1 = &unk_1F112D0B8;
  v2 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::unique_ptr<WTF::NativePromiseProducer<WTF::Ref<WebCore::WritableStreamSink,WTF::RawPtrTraits<WebCore::WritableStreamSink>,WTF::DefaultRefDerefTraits<WebCore::WritableStreamSink>>,void,0u>>::reset[abi:sn200100]((a1 + 64), 0);
  *a1 = &unk_1F112D0E8;
  v4 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v4 + 8));
  }

  return WTF::fastFree(a1, v3);
}

uint64_t WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::ThenCallback<true,WTF::NativePromise<WTF::Ref<WebCore::WritableStreamSink,WTF::RawPtrTraits<WebCore::WritableStreamSink>,WTF::DefaultRefDerefTraits<WebCore::WritableStreamSink>>,void,0u>>::disconnect(uint64_t a1)
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

uint64_t WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>::ThenCallback<true,WTF::NativePromise<WTF::Ref<WebCore::WritableStreamSink,WTF::RawPtrTraits<WebCore::WritableStreamSink>,WTF::DefaultRefDerefTraits<WebCore::WritableStreamSink>>,void,0u>>::processResult(uint64_t a1, uint64_t a2, uint64_t a3)
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
  std::unique_ptr<WTF::NativePromiseProducer<WTF::Ref<WebCore::WritableStreamSink,WTF::RawPtrTraits<WebCore::WritableStreamSink>,WTF::DefaultRefDerefTraits<WebCore::WritableStreamSink>>,void,0u>>::reset[abi:sn200100]((a1 + 64), 0);
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

  *(v14 + 120) = 1;
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

  v46 = atomic_load((v14 + 121));
  v47 = *v11;
  if (*v11)
  {
    atomic_fetch_add(v47 + 2, 1u);
    WTF::NativePromise<void,WTF::String,0u>::setDispatchMode(v47, v46, v61);
    if (atomic_fetch_add(v47 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v47 + 2);
      (*(*v47 + 16))(v47);
    }
  }

  else
  {
    WTF::NativePromise<void,WTF::String,0u>::setDispatchMode(0, v46, v61);
  }

  if (*(v14 + 72))
  {
    WTF::NativePromise<WTF::Ref<WebCore::WritableStreamSink,WTF::RawPtrTraits<WebCore::WritableStreamSink>,WTF::DefaultRefDerefTraits<WebCore::WritableStreamSink>>,void,0u>::settleChainedPromise(v14, v11);
  }

  else
  {
    v48 = *(v14 + 116);
    if (v48 == *(v14 + 112))
    {
      v49 = WTF::Vector<WTF::NativePromiseProducer<WTF::Ref<WebCore::WritableStreamSink,WTF::RawPtrTraits<WebCore::WritableStreamSink>,WTF::DefaultRefDerefTraits<WebCore::WritableStreamSink>>,void,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(v14 + 104, v48 + 1, v11);
      v50 = *(v14 + 104) + 40 * *(v14 + 116);
      v51 = *v49;
      *v49 = 0;
      *v50 = v51;
      v52 = *(v49 + 24);
      *(v50 + 8) = *(v49 + 8);
      *(v50 + 24) = v52;
    }

    else
    {
      v53 = *(v14 + 104) + 40 * v48;
      v54 = *v11;
      *v11 = 0;
      *v53 = v54;
      v55 = *(v11 + 8);
      *(v53 + 24) = *(v11 + 24);
      *(v53 + 8) = v55;
    }

    ++*(v14 + 116);
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
    v58 = WTF::NativePromiseProducer<WTF::Ref<WebCore::WritableStreamSink,WTF::RawPtrTraits<WebCore::WritableStreamSink>,WTF::DefaultRefDerefTraits<WebCore::WritableStreamSink>>,void,0u>::~NativePromiseProducer(v11);
    return WTF::fastFree(v58, v59);
  }

  return result;
}

atomic_uint **std::unique_ptr<WTF::NativePromiseProducer<WTF::Ref<WebCore::WritableStreamSink,WTF::RawPtrTraits<WebCore::WritableStreamSink>,WTF::DefaultRefDerefTraits<WebCore::WritableStreamSink>>,void,0u>>::reset[abi:sn200100](atomic_uint ***a1, atomic_uint **a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    v4 = WTF::NativePromiseProducer<WTF::Ref<WebCore::WritableStreamSink,WTF::RawPtrTraits<WebCore::WritableStreamSink>,WTF::DefaultRefDerefTraits<WebCore::WritableStreamSink>>,void,0u>::~NativePromiseProducer(result);

    return WTF::fastFree(v4, v5);
  }

  return result;
}

WTF::StringImpl *WTF::Logger::log<char [10],char [24],WTF::Logger::LogSiteIdentifier,char [2],WTF::NativePromise<std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,IPC::Error,0u>,char [11],void const*,char [2]>(uint64_t a1, const char *a2, WTF::Logger::LogSiteIdentifier *a3, uint64_t a4)
{
  v56[1] = *MEMORY[0x1E69E9840];
  WTF::String::String(&v44, a2);
  WTF::String::String(&v43, " then() call made from ");
  v34 = a3;
  WTF::Logger::LogSiteIdentifier::toString(&v42, a3);
  WTF::String::String(&v41, "[");
  v35 = a4;
  WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(&v40, a4);
  WTF::String::String(&v39, " callback:");
  WTF::LogArgument<void const*>::toString();
  WTF::String::String(&v37, "]");
  result = WTF::tryMakeString<WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String>(&v44, &v43, &v42, &v41, &v40, &v39, &v38, &v37, &v45);
  if (v45)
  {
    v9 = v37;
    v37 = 0;
    if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, v8);
    }

    v10 = v38;
    v38 = 0;
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v8);
    }

    v11 = v39;
    v39 = 0;
    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v8);
    }

    v12 = v40;
    v40 = 0;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v8);
    }

    v13 = v41;
    v41 = 0;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v8);
    }

    v14 = v42;
    v42 = 0;
    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v8);
    }

    v15 = v43;
    v43 = 0;
    if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v8);
    }

    v16 = v44;
    v44 = 0;
    if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v8);
    }

    v17 = *(a1 + 32);
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    if (v18)
    {
      WTF::String::utf8();
      v20 = v36[0] ? v36[0] + 16 : 0;
      *buf = 136446210;
      v47 = v20;
      _os_log_impl(&dword_19D52D000, v17, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
      v18 = v36[0];
      v36[0] = 0;
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

    if (*a1 && *(a1 + 16) >= 4u)
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
              WTF::String::String((&v47 + 4), a2);
              v48 = 0;
              WTF::String::String(v49, " then() call made from ");
              v49[2] = 0;
              WTF::Logger::LogSiteIdentifier::toString(&v50, v34);
              v51 = 0;
              WTF::String::String(v52, "[");
              v52[2] = 0;
              WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(&v53, v35);
              v54 = 0;
              WTF::String::String(v55, " callback:");
              v55[2] = 0;
              WTF::LogArgument<void const*>::toString();
              v55[6] = 0;
              WTF::String::String(v56, "]");
              WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v36, buf, 8uLL);
              (*(*v28 + 16))(v28, a1, 4, v36);
              WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v36, v29);
              for (i = 120; i != -8; i -= 16)
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

    result = v45;
    v45 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v19);
      }
    }
  }

  else
  {
    __break(0xC471u);
  }

  return result;
}