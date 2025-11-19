uint64_t IPC::Connection::send<Messages::RemoteRenderingBackend::PrepareImageBufferSetsForDisplay>(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 1590;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v13 = v6;
  IPC::VectorArgumentCoder<false,WebKit::ImageBufferSetPrepareBufferForDisplayInputData,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebKit::ImageBufferSetPrepareBufferForDisplayInputData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(v6, *a2);
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

uint64_t IPC::Connection::send<Messages::RemoteRenderingBackend::MarkSurfacesVolatile>(uint64_t *a1, char *a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 1587;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v13 = v6;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v6, **a2);
  IPC::VectorArgumentCoder<false,std::pair<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::OptionSet<WebKit::BufferInSetType>>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::OptionSet<WebKit::BufferInSetType>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(v6, *(a2 + 1));
  IPC::Encoder::operator<<<BOOL &>(v6, a2 + 16);
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

uint64_t WebKit::RemoteRenderingBackendProxy::send<Messages::RemoteRenderingBackend::FinalizeRenderingUpdate,WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(WebKit::RemoteRenderingBackendProxy *a1, void **a2, uint64_t a3)
{
  v44 = *MEMORY[0x1E69E9840];
  WebKit::RemoteRenderingBackendProxy::connection(a1, a2, &v40);
  v7 = v40;
  if (!v40)
  {
    return 1;
  }

  v8 = *(v40 + 128);
  v9 = INFINITY;
  if (fabs(v8) != INFINITY)
  {
    WTF::ApproximateTime::now(v6);
    v9 = v8 + v10;
  }

  if (*(v7 + 64) != a3)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(v7 + 72, buf, v9);
    if (buf[16] != 1)
    {
      goto LABEL_44;
    }

    v23 = *&buf[8];
    if (*&buf[8] <= 1uLL)
    {
      goto LABEL_54;
    }

    v24 = *buf;
    **buf = 3198;
    v25 = v24 + 2;
    if (v23 - 2 < (-v25 & 7 | 8uLL))
    {
      v21 = 18;
      goto LABEL_45;
    }

    v26 = -v25 & 7;
    *(v25 + v26) = a3;
    v27 = 6;
    if (v26 > 6)
    {
      v27 = v26;
    }

    v28 = v27 + 10;
    v29 = (*(v7 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v30 = *(v7 + 72);
    if (v29 + 16 >= v30)
    {
      v29 = 0;
    }

    v31 = v28 + v29;
    if (v30 <= v31)
    {
      v31 = 0;
    }

    *(v7 + 88) = v31;
    v32 = *(v7 + 80);
    if (*(v32 + 8) <= 0xFFuLL)
    {
      goto LABEL_52;
    }

    v33 = atomic_exchange((*(v32 + 16) + 128), v31);
    v34 = *(v7 + 124);
    if (v33 == 0x80000000 || v34 != 0)
    {
      v36 = v34 + 1;
      *(v7 + 124) = v36;
      if (v36 >= *(v7 + 120))
      {
        if (*(v7 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v7 + 100));
        }

        *(v7 + 124) = 0;
      }
    }

    *(v7 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v7 + 72, buf, v9);
  if ((buf[16] & 1) == 0)
  {
LABEL_44:
    v21 = 16;
    goto LABEL_45;
  }

  v11 = *&buf[8];
  if (*&buf[8] <= 1uLL)
  {
LABEL_54:
    __break(0xC471u);
    JUMPOUT(0x19E24C9B4);
  }

  v12 = *buf;
  **buf = 1584;
  v13 = v12 + 2;
  if (v11 - 2 >= (-v13 & 7 | 8uLL))
  {
    v14 = -v13 & 7;
    *(v13 + v14) = **a2;
    v15 = 6;
    if (v14 > 6)
    {
      v15 = v14;
    }

    v16 = v15 + 10;
    v17 = (*(v7 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v18 = *(v7 + 72);
    if (v17 + 16 >= v18)
    {
      v17 = 0;
    }

    v19 = v16 + v17;
    if (v18 <= v19)
    {
      v19 = 0;
    }

    *(v7 + 88) = v19;
    v20 = *(v7 + 80);
    if (*(v20 + 8) > 0xFFuLL)
    {
      if (atomic_exchange((*(v20 + 16) + 128), v19) == 0x80000000 || *(v7 + 124))
      {
        if (*(v7 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v7 + 100));
        }

        *(v7 + 124) = 0;
      }

      v21 = 0;
      goto LABEL_18;
    }

LABEL_52:
    __break(1u);
  }

  if ((buf[16] & 1) == 0)
  {
    goto LABEL_52;
  }

  IPC::StreamClientConnection::sendProcessOutOfStreamMessage(v7, *buf, *&buf[8]);
  v21 = IPC::Connection::send<Messages::RemoteRenderingBackend::FinalizeRenderingUpdate>(*(v7 + 8), a2, a3);
  if (v21)
  {
LABEL_45:
    v37 = qword_1ED6410D0;
    if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
    {
      v38 = *(a1 + 10);
      v39 = IPC::errorAsString();
      *buf = 134218498;
      *&buf[4] = v38;
      *&buf[12] = 2082;
      *&buf[14] = "RemoteRenderingBackend_FinalizeRenderingUpdate";
      v42 = 2082;
      v43 = v39;
      _os_log_impl(&dword_19D52D000, v37, OS_LOG_TYPE_DEFAULT, "[renderingBackend=%llu] RemoteRenderingBackendProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x20u);
    }

    WebKit::RemoteRenderingBackendProxy::didBecomeUnresponsive(a1);
  }

LABEL_18:
  v40 = 0;
  if (atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v7);
    IPC::StreamClientConnection::operator delete(v7);
  }

  return v21;
}

uint64_t IPC::Connection::send<Messages::RemoteRenderingBackend::FinalizeRenderingUpdate>(uint64_t *a1, void **a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 1584;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v13 = v6;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v6, **a2);
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

uint64_t WebKit::RemoteRenderingBackendProxy::sendWithAsyncReply<Messages::RemoteRenderingBackend::GetImageBufferResourceLimitsForTesting,WTF::CompletionHandler<void ()(WebCore::ImageBufferResourceLimits)>,WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(WebKit::RemoteRenderingBackendProxy *a1, void *a2, uint64_t *a3, uint64_t a4)
{
  v72 = *MEMORY[0x1E69E9840];
  WebKit::RemoteRenderingBackendProxy::connection(a1, a2, &v66);
  v8 = v66;
  if (!v66)
  {
    return 1;
  }

  v9 = *(v66 + 128);
  v10 = INFINITY;
  if (fabs(v9) != INFINITY)
  {
    WTF::ApproximateTime::now(v7);
    v10 = v9 + v11;
  }

  if (*(v8 + 64) != a4)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(v8 + 72, buf, v10);
    if (buf[16] != 1)
    {
      goto LABEL_49;
    }

    v33 = *&buf[8];
    if (*&buf[8] <= 1uLL)
    {
      __break(0xC471u);
      goto LABEL_79;
    }

    v34 = *buf;
    **buf = 3198;
    v35 = v34 + 2;
    if (v33 - 2 < (-v35 & 7 | 8uLL))
    {
LABEL_49:
      v47 = qword_1ED6410D0;
      if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
      {
        v48 = *(a1 + 10);
        *buf = 134218242;
        *&buf[4] = v48;
        *&buf[12] = 2082;
        *&buf[14] = "RemoteRenderingBackend_GetImageBufferResourceLimitsForTesting";
        _os_log_impl(&dword_19D52D000, v47, OS_LOG_TYPE_DEFAULT, "[renderingBackend=%llu] RemoteRenderingBackendProxy::sendWithAsyncReply - failed, name:%{public}s", buf, 0x16u);
      }

      WebKit::RemoteRenderingBackendProxy::didBecomeUnresponsive(a1);
      v32 = 5;
      goto LABEL_52;
    }

    v36 = -v35 & 7;
    *(v35 + v36) = a4;
    v37 = 6;
    if (v36 > 6)
    {
      v37 = v36;
    }

    v38 = v37 + 10;
    v39 = (*(v8 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v40 = *(v8 + 72);
    if (v39 + 16 >= v40)
    {
      v39 = 0;
    }

    v41 = v38 + v39;
    if (v40 <= v41)
    {
      v41 = 0;
    }

    *(v8 + 88) = v41;
    v42 = *(v8 + 80);
    if (*(v42 + 8) <= 0xFFuLL)
    {
      goto LABEL_79;
    }

    v43 = atomic_exchange((*(v42 + 16) + 128), v41);
    v44 = *(v8 + 124);
    if (v43 == 0x80000000 || v44 != 0)
    {
      v46 = v44 + 1;
      *(v8 + 124) = v46;
      if (v46 >= *(v8 + 120))
      {
        if (*(v8 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v8 + 100));
        }

        *(v8 + 124) = 0;
      }
    }

    *(v8 + 64) = a4;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v8 + 72, buf, v10);
  if ((buf[16] & 1) == 0)
  {
    goto LABEL_49;
  }

  v12 = *(v8 + 8);
  while (1)
  {
    v13 = *v12;
    if ((*v12 & 1) == 0)
    {
      break;
    }

    v14 = *v12;
    atomic_compare_exchange_strong_explicit(v12, &v14, v13 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v14 == v13)
    {
      goto LABEL_11;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v12);
LABEL_11:
  v15 = *a3;
  *a3 = 0;
  v16 = WTF::fastMalloc(0x10);
  *v16 = &unk_1F11254C0;
  v16[1] = v15;
  v70[0] = v16;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
LABEL_80:
    __break(0xC471u);
    JUMPOUT(0x19E24D050);
  }

  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  v70[1] = IdentifierInternal;
  if (!IdentifierInternal)
  {
    __break(0xC471u);
    JUMPOUT(0x19E24D070);
  }

  v18 = IdentifierInternal;
  IPC::Connection::addAsyncReplyHandler(v12, v70);
  if ((buf[16] & 1) == 0)
  {
    goto LABEL_79;
  }

  v20 = *&buf[8];
  if (*&buf[8] <= 1uLL)
  {
    __break(0xC471u);
    JUMPOUT(0x19E24D090);
  }

  v21 = *buf;
  **buf = 1585;
  v22 = v21 + 2;
  if (v20 - 2 >= (-v22 & 7 | 8uLL))
  {
    v23 = -v22 & 7;
    *(v22 + v23) = v18;
    v24 = 6;
    if (v23 > 6)
    {
      v24 = v23;
    }

    v25 = v24 + 10;
    v26 = (*(v8 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v27 = *(v8 + 72);
    if (v26 + 16 >= v27)
    {
      v26 = 0;
    }

    v28 = v25 + v26;
    if (v27 <= v28)
    {
      v28 = 0;
    }

    *(v8 + 88) = v28;
    v29 = *(v8 + 80);
    if (*(v29 + 8) > 0xFFuLL)
    {
      if (atomic_exchange((*(v29 + 16) + 128), v28) == 0x80000000 || *(v8 + 124))
      {
        if (*(v8 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v8 + 100));
        }

        *(v8 + 124) = 0;
      }

      v30 = 1;
      goto LABEL_29;
    }

    goto LABEL_79;
  }

  if ((buf[16] & 1) == 0)
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  if (*&buf[8] <= 1uLL)
  {
    goto LABEL_80;
  }

  **buf = 3197;
  v50 = (*(v8 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v51 = *(v8 + 72);
  if (v50 + 16 >= v51)
  {
    v50 = 0;
  }

  v52 = v50 + 16;
  if (v51 <= v52)
  {
    v53 = 0;
  }

  else
  {
    v53 = v52;
  }

  *(v8 + 88) = v53;
  v54 = *(v8 + 80);
  if (*(v54 + 8) <= 0xFFuLL)
  {
    goto LABEL_79;
  }

  atomic_exchange((*(v54 + 16) + 128), v53);
  *(v8 + 124) = 0;
  v55 = IPC::Encoder::operator new(0x238, v19);
  *v55 = 1585;
  *(v55 + 2) = 0;
  *(v55 + 3) = 0;
  *(v55 + 1) = a4;
  *(v55 + 68) = 0;
  *(v55 + 70) = 0;
  *(v55 + 69) = 0;
  IPC::Encoder::encodeHeader(v55);
  v69 = v55;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v55, v18);
  v56 = IPC::Connection::sendMessageImpl(v12, &v69, 1, 0);
  v30 = v56 == 0;
  if (v56)
  {
    IPC::Connection::takeAsyncReplyHandler(v12, v18, &v68);
    if (v68)
    {
      WTF::RunLoop::mainSingleton(v58);
      v59 = v68;
      v68 = 0;
      v60 = WTF::fastMalloc(0x10);
      *v60 = &unk_1F11254E8;
      v60[1] = v59;
      v67 = v60;
      WTF::RunLoop::dispatch();
      v61 = v67;
      v67 = 0;
      if (v61)
      {
        (*(*v61 + 8))(v61);
      }

      v62 = v68;
      v68 = 0;
      if (v62)
      {
        (*(*v62 + 8))(v62);
      }
    }
  }

  v63 = v69;
  v69 = 0;
  if (v63)
  {
    IPC::Encoder::~Encoder(v63, v57);
    bmalloc::api::tzoneFree(v64, v65);
  }

LABEL_29:
  v31 = v70[0];
  v70[0] = 0;
  if (v31)
  {
    (*(*v31 + 8))(v31);
  }

  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v12);
  if (!v30)
  {
    goto LABEL_49;
  }

  v32 = 0;
LABEL_52:
  v66 = 0;
  if (atomic_fetch_add(v8, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v8);
    IPC::StreamClientConnection::operator delete(v8);
  }

  return v32;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteRenderingBackend::GetImageBufferResourceLimitsForTesting,WTF::CompletionHandler<void ()(WebCore::ImageBufferResourceLimits)>>(WTF::CompletionHandler<void ()(WebCore::ImageBufferResourceLimits)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F11254C0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteRenderingBackend::GetImageBufferResourceLimitsForTesting,WTF::CompletionHandler<void ()(WebCore::ImageBufferResourceLimits)>>(WTF::CompletionHandler<void ()(WebCore::ImageBufferResourceLimits)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F11254C0;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteRenderingBackend::GetImageBufferResourceLimitsForTesting,WTF::CompletionHandler<void ()(WebCore::ImageBufferResourceLimits)>>(WTF::CompletionHandler<void ()(WebCore::ImageBufferResourceLimits)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (!a3 || !*a3)
  {
    goto LABEL_7;
  }

  IPC::ArgumentCoder<WebCore::ImageBufferResourceLimits,void>::decode(a3, v17);
  if ((v18 & 1) == 0)
  {
    v6 = *a3;
    v7 = a3[1];
    *a3 = 0;
    a3[1] = 0;
    v8 = a3[3];
    if (v8 && v7)
    {
      (*(*v8 + 16))(v8, v6);
      if (v18)
      {
        goto LABEL_4;
      }

      v10 = *a3;
      v11 = a3[1];
      v12 = a3[3];
      *a3 = 0;
      a3[1] = 0;
      if (v12 && v11)
      {
        (*(*v12 + 16))(v12, v10);
      }
    }

    else
    {
      *a3 = 0;
      a3[1] = 0;
    }

LABEL_7:
    memset(v17, 0, sizeof(v17));
    v5 = *(a1 + 8);
    *(a1 + 8) = 0;
    (*(*v5 + 16))(v5, v17);
    return (*(*v5 + 8))(v5);
  }

LABEL_4:
  v14 = *(v17 + 1);
  v15 = *(&v17[1] + 1);
  *v16 = *(&v17[2] + 1);
  *&v16[15] = v17[3];
  v13 = v17[0];
  v5 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v5 + 16))(v5, &v13);
  return (*(*v5 + 8))(v5);
}

void *WTF::Detail::CallableWrapper<std::optional<WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>> IPC::StreamClientConnection::sendWithAsyncReply<Messages::RemoteRenderingBackend::GetImageBufferResourceLimitsForTesting,WTF::CompletionHandler<void ()(WebCore::ImageBufferResourceLimits)>,WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(Messages::RemoteRenderingBackend::GetImageBufferResourceLimitsForTesting &&,WTF::CompletionHandler<void ()(WebCore::ImageBufferResourceLimits)> &&,WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F11254E8;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<std::optional<WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>> IPC::StreamClientConnection::sendWithAsyncReply<Messages::RemoteRenderingBackend::GetImageBufferResourceLimitsForTesting,WTF::CompletionHandler<void ()(WebCore::ImageBufferResourceLimits)>,WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(Messages::RemoteRenderingBackend::GetImageBufferResourceLimitsForTesting &&,WTF::CompletionHandler<void ()(WebCore::ImageBufferResourceLimits)> &&,WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F11254E8;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<std::optional<WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>> IPC::StreamClientConnection::sendWithAsyncReply<Messages::RemoteRenderingBackend::GetImageBufferResourceLimitsForTesting,WTF::CompletionHandler<void ()(WebCore::ImageBufferResourceLimits)>,WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(Messages::RemoteRenderingBackend::GetImageBufferResourceLimitsForTesting &&,WTF::CompletionHandler<void ()(WebCore::ImageBufferResourceLimits)> &&,WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>)::{lambda(void)#1},void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1, 0, 0);
  v2 = *(*v1 + 8);

  return v2(v1);
}

unsigned int *WTF::WeakHashSet<WebCore::RenderingResourceObserver,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::add@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 3);
  v4 = *(a1 + 2) + 1;
  *(a1 + 2) = v4;
  if (v4 > v3)
  {
    v5 = *a1;
    if (*a1)
    {
      v6 = *(v5 - 4);
      if (!v6)
      {
LABEL_4:
        v7 = *(v5 - 4);
        if (6 * *(v5 - 12) < v7 && v7 > 8)
        {
          v14 = a1;
          v15 = a3;
          v16 = a2;
          WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::shrinkToBestSize(a1);
          a2 = v16;
          a3 = v15;
          a1 = v14;
          v5 = *v14;
          *(v14 + 2) = 0;
          if (!v5)
          {
            goto LABEL_23;
          }
        }

        else
        {
          *(a1 + 2) = 0;
        }

        LODWORD(v5) = *(v5 - 12);
        if (v5 > 0x7FFFFFFE)
        {
          v9 = -2;
LABEL_24:
          *(a1 + 3) = v9;
          goto LABEL_25;
        }

LABEL_23:
        v9 = 2 * v5;
        goto LABEL_24;
      }

      v20 = a3;
      v21 = a2;
      v22 = a1;
      v10 = 0;
      v11 = *(v5 - 4);
      v12 = (v5 + 8 * v6 - 8);
      do
      {
        if (*v12 + 1 >= 2 && !*(*v12 + 1))
        {
          WTF::hashTraitsDeleteBucket<WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>(v12, a2);
          ++v10;
        }

        --v12;
        --v11;
      }

      while (v11);
      v5 = *v22;
      if (v10)
      {
        v13 = *(v5 - 12) - v10;
        *(v5 - 16) += v10;
        *(v5 - 12) = v13;
        a2 = v21;
        a1 = v22;
        a3 = v20;
        goto LABEL_4;
      }

      a2 = v21;
      a1 = v22;
      a3 = v20;
      if (v5)
      {
        goto LABEL_4;
      }
    }

    LODWORD(v5) = 0;
    *(a1 + 2) = 0;
    goto LABEL_23;
  }

LABEL_25:
  v17 = *a2;
  *a2 = 0;
  v23 = v17;
  WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(a1, &v23, a3);
  result = v23;
  v23 = 0;
  if (result)
  {
    if (atomic_fetch_add(result, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result);
      return WTF::fastFree(result, v18);
    }
  }

  return result;
}

uint64_t mpark::detail::move_constructor<mpark::detail::traits<IPC::ConnectionSendSyncResult<Messages::RemoteAdapter::RequestDevice>::ReplyData,IPC::Error>,(mpark::detail::Trait)1>::~move_constructor(uint64_t a1, void *a2)
{
  if (!*(a1 + 184))
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 8, a2);
    std::unique_ptr<IPC::Decoder>::reset[abi:sn200100](a1, 0);
  }

  *(a1 + 184) = -1;
  return a1;
}

WebCore::TimerBase *WebCore::Timer::Timer<WebKit::RemoteRenderingBackendProxy,WebKit::RemoteRenderingBackendProxy>(WebCore::TimerBase *a1, uint64_t a2)
{
  *WebCore::TimerBase::TimerBase(a1) = &unk_1F10EB388;
  v4 = WTF::fastMalloc(0x20);
  *v4 = &unk_1F11256A8;
  v4[1] = a2;
  v4[2] = WebKit::RemoteRenderingBackendProxy::destroyGetPixelBufferSharedMemory;
  v4[3] = 0;
  *(a1 + 6) = v4;
  return a1;
}

uint64_t WebCore::Timer::Timer<WebKit::RemoteRenderingBackendProxy,WebKit::RemoteRenderingBackendProxy>(WebKit::RemoteRenderingBackendProxy &,void (WebKit::RemoteRenderingBackendProxy::*)(void))::{lambda(void)#1}::operator()(void *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v2[5] = *(*a1 + 20) + 1;
  v3 = a1[2];
  v4 = (v2 + (v3 >> 1));
  if (v3)
  {
    v1 = *(*v4 + v1);
  }

  result = v1(v4);
  if (v2[5] == 1)
  {
    v6 = *(*v2 + 24);

    return v6(v2);
  }

  else
  {
    --v2[5];
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::RemoteRenderingBackendProxy::~RemoteRenderingBackendProxy()::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F11256D0;
  v3 = a1[2];
  a1[2] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteRenderingBackendProxy::~RemoteRenderingBackendProxy()::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F11256D0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

atomic_uchar **WebKit::RemoteRenderingBackendProxy::~RemoteRenderingBackendProxy()::$_0::operator()(atomic_uchar **result)
{
  v1 = result[1];
  if (v1)
  {
    v2 = *(v1 + 1);
    if (v2)
    {
      v3 = result;
      v4 = (v2 + 24);
      while (1)
      {
        v5 = *v4;
        if ((*v4 & 1) == 0)
        {
          break;
        }

        v6 = *v4;
        atomic_compare_exchange_strong_explicit(v4, &v6, v5 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v6 == v5)
        {
          goto LABEL_7;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v4);
LABEL_7:
      WebKit::GPUProcessConnection::releaseRenderingBackend(v2, *v3);

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref((v2 + 24), v7);
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::RemoteRenderingBackendProxy::ensureGPUProcessConnection(void)::$_0,void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F11256F8;
  WTF::MachSendRight::~MachSendRight((a1 + 2));
  WTF::MachSendRight::~MachSendRight((a1 + 1));
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteRenderingBackendProxy::ensureGPUProcessConnection(void)::$_0,void>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F11256F8;
  WTF::MachSendRight::~MachSendRight((a1 + 16));
  WTF::MachSendRight::~MachSendRight((a1 + 8));

  return WTF::fastFree(a1, v2);
}

atomic_uchar **WebKit::RemoteRenderingBackendProxy::ensureGPUProcessConnection(void)::$_0::operator()(WebKit::WebProcess *a1, void *a2)
{
  v3 = *(a1 + 3);
  v4 = WebKit::WebProcess::singleton(a1, a2);
  v5 = WebKit::WebProcess::ensureGPUProcessConnection(v4);
  v6 = (v5 + 3);
  while (1)
  {
    v7 = *v6;
    if ((*v6 & 1) == 0)
    {
      break;
    }

    v8 = *v6;
    atomic_compare_exchange_strong_explicit(v6, &v8, v7 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v8 == v7)
    {
      goto LABEL_4;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v6);
LABEL_4:
  WebKit::GPUProcessConnection::createRenderingBackend(v5, v3[10], a1);
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(v5 + 2, v5);
  v10 = v5[1];
  atomic_fetch_add(v10, 1u);
  v11 = v3[7];
  v3[7] = v10;
  if (v11 && atomic_fetch_add(v11, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v11);
    WTF::fastFree(v11, v9);
  }

  WebKit::GPUProcessConnection::sharedResourceCache(v5, v9, &v17);
  v13 = v17;
  v17 = 0;
  v14 = v3[9];
  v3[9] = v13;
  if (v14)
  {
    if (atomic_fetch_add(v14 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v14 + 2);
      (*(*v14 + 8))(v14);
    }

    v16 = v17;
    v17 = 0;
    if (v16 && atomic_fetch_add(v16 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v16 + 2);
      (*(*v16 + 8))(v16);
    }
  }

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref(v6, v12);
}

void *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::begin(void *result)
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

void *WTF::Detail::CallableWrapper<WebKit::RemoteRenderingBackendProxy::didBecomeUnresponsive(void)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F1125720;
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteRenderingBackendProxy::didBecomeUnresponsive(void)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1125720;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

atomic_uchar **WTF::Detail::CallableWrapper<WebKit::RemoteRenderingBackendProxy::didBecomeUnresponsive(void)::$_0,void>::call(atomic_uchar **result, void *a2)
{
  v2 = result[1];
  if (v2)
  {
    v3 = *(v2 + 1);
    if (v3)
    {
      v4 = v3 + 3;
      while (1)
      {
        v5 = *v4;
        if ((*v4 & 1) == 0)
        {
          break;
        }

        v6 = *v4;
        atomic_compare_exchange_strong_explicit(v4, &v6, v5 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v6 == v5)
        {
          goto LABEL_9;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v4);
LABEL_9:
      WebKit::GPUProcessConnection::didBecomeUnresponsive(v3, a2);

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref(v3 + 3, v7);
    }
  }

  return result;
}

uint64_t WTF::checkHashTableKey<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMapTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(uint64_t result)
{
  if (result == -1 || !result)
  {
    __break(0xC471u);
    JUMPOUT(0x19E24DDA4);
  }

  return result;
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t *a2)
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

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t *a3)
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

  v9 = WTF::fastMalloc((24 * a2 + 16));
  v11 = v9;
  v12 = v9 + 16;
  if (a2)
  {
    bzero((v9 + 16), 24 * a2);
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
      v15 = (v6 + 24 * v13);
      v16 = *v15;
      if (*v15)
      {
        if (v16 != -1)
        {
          v17 = *a1;
          if (*a1)
          {
            v18 = *(v17 - 8);
          }

          else
          {
            v18 = 0;
          }

          v19 = (v16 + ~(v16 << 32)) ^ ((v16 + ~(v16 << 32)) >> 22);
          v20 = 9 * ((v19 + ~(v19 << 13)) ^ ((v19 + ~(v19 << 13)) >> 8));
          v21 = (v20 ^ (v20 >> 15)) + ~((v20 ^ (v20 >> 15)) << 27);
          v22 = v18 & ((v21 >> 31) ^ v21);
          v23 = 1;
          do
          {
            v24 = (v17 + 24 * v22);
            v22 = (v22 + v23++) & v18;
          }

          while (*v24);
          v25 = v24[2];
          v24[2] = 0;
          if (v25)
          {
            WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v25, v10);
          }

          *v24 = *v15;
          v26 = v15[1];
          v15[1] = 0;
          v24[1] = v26;
          v24[2] = v15[2];
          v15[2] = 0;
          if (v15 == a3)
          {
            v14 = v24;
          }
        }
      }

      else
      {
        v27 = v15[2];
        v15[2] = 0;
        if (v27)
        {
          WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v27, v10);
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

atomic_uchar *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(uint64_t *a1, void *a2)
{
  *a2 = -1;
  result = a2[2];
  a2[2] = 0;
  if (result)
  {
    result = WTF::ThreadSafeWeakPtrControlBlock::weakDeref(result, a2);
  }

  v4 = *a1;
  v5 = vadd_s32(*(*a1 - 16), 0xFFFFFFFF00000001);
  *(v4 - 16) = v5;
  v6 = *(v4 - 4);
  if (6 * v5.i32[1] < v6 && v6 >= 9)
  {

    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v6 >> 1, 0);
  }

  return result;
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t *a2)
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
    JUMPOUT(0x19E24E110);
  }

  v4 = *(v2 - 8);
  v5 = (v3 + ~(v3 << 32)) ^ ((v3 + ~(v3 << 32)) >> 22);
  v6 = 9 * ((v5 + ~(v5 << 13)) ^ ((v5 + ~(v5 << 13)) >> 8));
  v7 = (v6 ^ (v6 >> 15)) + ~((v6 ^ (v6 >> 15)) << 27);
  v8 = v4 & ((v7 >> 31) ^ v7);
  result = (v2 + 24 * v8);
  v10 = *result;
  if (*result != v3)
  {
    v11 = 1;
    while (v10)
    {
      v8 = (v8 + v11) & v4;
      result = (v2 + 24 * v8);
      v10 = *result;
      ++v11;
      if (*result == v3)
      {
        return result;
      }
    }

    return (v2 + 24 * *(v2 - 4));
  }

  return result;
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferSetProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferSetProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferSetProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferSetProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferSetProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferSetProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferSetProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferSetProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t *a2)
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

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferSetProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferSetProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferSetProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferSetProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferSetProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferSetProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferSetProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferSetProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferSetProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferSetProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferSetProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferSetProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferSetProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferSetProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferSetProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferSetProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t *a3)
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

  v9 = WTF::fastMalloc((24 * a2 + 16));
  v11 = v9;
  v12 = v9 + 16;
  if (a2)
  {
    bzero((v9 + 16), 24 * a2);
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
      v15 = (v6 + 24 * v13);
      v16 = *v15;
      if (*v15)
      {
        if (v16 != -1)
        {
          v17 = *a1;
          if (*a1)
          {
            v18 = *(v17 - 8);
          }

          else
          {
            v18 = 0;
          }

          v19 = (v16 + ~(v16 << 32)) ^ ((v16 + ~(v16 << 32)) >> 22);
          v20 = 9 * ((v19 + ~(v19 << 13)) ^ ((v19 + ~(v19 << 13)) >> 8));
          v21 = (v20 ^ (v20 >> 15)) + ~((v20 ^ (v20 >> 15)) << 27);
          v22 = v18 & ((v21 >> 31) ^ v21);
          v23 = 1;
          do
          {
            v24 = (v17 + 24 * v22);
            v22 = (v22 + v23++) & v18;
          }

          while (*v24);
          v25 = v24[2];
          v24[2] = 0;
          if (v25)
          {
            WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v25, v10);
          }

          *v24 = *v15;
          v26 = v15[1];
          v15[1] = 0;
          v24[1] = v26;
          v24[2] = v15[2];
          v15[2] = 0;
          if (v15 == a3)
          {
            v14 = v24;
          }
        }
      }

      else
      {
        v27 = v15[2];
        v15[2] = 0;
        if (v27)
        {
          WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v27, v10);
        }
      }

      ++v13;
    }

    while (v13 != v7);
    goto LABEL_21;
  }

  v14 = 0;
  result = 0;
  if (v6)
  {
LABEL_21:
    WTF::fastFree((v6 - 16), v10);
    return v14;
  }

  return result;
}

atomic_uchar *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferSetProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferSetProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferSetProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferSetProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferSetProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferSetProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferSetProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferSetProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(uint64_t *a1, void *a2)
{
  *a2 = -1;
  result = a2[2];
  a2[2] = 0;
  if (result)
  {
    result = WTF::ThreadSafeWeakPtrControlBlock::weakDeref(result, a2);
  }

  v4 = *a1;
  v5 = vadd_s32(*(*a1 - 16), 0xFFFFFFFF00000001);
  *(v4 - 16) = v5;
  v6 = *(v4 - 4);
  if (6 * v5.i32[1] < v6 && v6 >= 9)
  {

    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferSetProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferSetProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferSetProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferSetProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferSetProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferSetProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferSetProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferSetProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v6 >> 1, 0);
  }

  return result;
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferSetProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferSetProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferSetProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferSetProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferSetProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferSetProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferSetProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferSetProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferSetProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferSetProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferSetProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferSetProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t *a2)
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
    JUMPOUT(0x19E24E47CLL);
  }

  v4 = *(v2 - 8);
  v5 = (v3 + ~(v3 << 32)) ^ ((v3 + ~(v3 << 32)) >> 22);
  v6 = 9 * ((v5 + ~(v5 << 13)) ^ ((v5 + ~(v5 << 13)) >> 8));
  v7 = (v6 ^ (v6 >> 15)) + ~((v6 ^ (v6 >> 15)) << 27);
  v8 = v4 & ((v7 >> 31) ^ v7);
  result = (v2 + 24 * v8);
  v10 = *result;
  if (*result != v3)
  {
    v11 = 1;
    while (v10)
    {
      v8 = (v8 + v11) & v4;
      result = (v2 + 24 * v8);
      v10 = *result;
      ++v11;
      if (*result == v3)
      {
        return result;
      }
    }

    return (v2 + 24 * *(v2 - 4));
  }

  return result;
}

uint64_t WTF::Vector<WebKit::SwapBuffersDisplayRequirement,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::growImpl<(WTF::FailureAction)0>(uint64_t result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = *(result + 8);
  if (v4 < a2)
  {
    if (v4 + (v4 >> 1) <= v4 + 1)
    {
      v5 = v4 + 1;
    }

    else
    {
      v5 = v4 + (v4 >> 1);
    }

    if (v5 <= a2)
    {
      v5 = a2;
    }

    if (v5 <= 0x10)
    {
      v6 = 16;
    }

    else
    {
      v6 = v5;
    }

    result = WTF::Vector<WebCore::ContactProperty,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(result, v6);
  }

  *(v3 + 12) = v2;
  return result;
}

void WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::MarkSurfacesAsVolatileRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::MarkSurfacesAsVolatileRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(BOOL)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::MarkSurfacesAsVolatileRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(BOOL)>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::MarkSurfacesAsVolatileRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::MarkSurfacesAsVolatileRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(BOOL)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::MarkSurfacesAsVolatileRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::MarkSurfacesAsVolatileRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CompletionHandler<void ()(BOOL)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::MarkSurfacesAsVolatileRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1)
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

  WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::MarkSurfacesAsVolatileRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::MarkSurfacesAsVolatileRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(BOOL)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::MarkSurfacesAsVolatileRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(BOOL)>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::MarkSurfacesAsVolatileRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::MarkSurfacesAsVolatileRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(BOOL)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::MarkSurfacesAsVolatileRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::MarkSurfacesAsVolatileRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CompletionHandler<void ()(BOOL)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::MarkSurfacesAsVolatileRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v3);
}

void WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::MarkSurfacesAsVolatileRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::MarkSurfacesAsVolatileRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(BOOL)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::MarkSurfacesAsVolatileRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(BOOL)>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::MarkSurfacesAsVolatileRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::MarkSurfacesAsVolatileRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(BOOL)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::MarkSurfacesAsVolatileRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::MarkSurfacesAsVolatileRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CompletionHandler<void ()(BOOL)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::MarkSurfacesAsVolatileRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2)
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

atomic_uchar *WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::RemoteImageBufferProxy,WTF::NoTaggingTraits<WebKit::RemoteImageBufferProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>@<X0>(atomic_uchar *result@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *a2;
  if (*a2 == -1 || !v3)
  {
    __break(0xC471u);
    JUMPOUT(0x19E24E858);
  }

  v5 = *result;
  if (!*result)
  {
LABEL_12:
    *a3 = 0;
    a3[1] = 0;
    return result;
  }

  v6 = *(v5 - 8);
  v7 = (v3 + ~(v3 << 32)) ^ ((v3 + ~(v3 << 32)) >> 22);
  v8 = 9 * ((v7 + ~(v7 << 13)) ^ ((v7 + ~(v7 << 13)) >> 8));
  v9 = (v8 ^ (v8 >> 15)) + ~((v8 ^ (v8 >> 15)) << 27);
  v10 = v6 & ((v9 >> 31) ^ v9);
  v11 = *(v5 + 24 * v10);
  if (v11 != v3)
  {
    v13 = 1;
    while (v11)
    {
      v10 = (v10 + v13) & v6;
      v11 = *(v5 + 24 * v10);
      ++v13;
      if (v11 == v3)
      {
        goto LABEL_5;
      }
    }

    goto LABEL_12;
  }

LABEL_5:
  v12 = v5 + 24 * v10;
  result = *(v12 + 16);
  *a3 = *(v12 + 8);
  if (result)
  {
    result = WTF::ThreadSafeWeakPtrControlBlock::weakRef(result);
  }

  a3[1] = result;
  return result;
}

uint64_t IPC::Connection::waitForAndDispatchImmediately<Messages::RemoteRenderingBackendProxy::DidInitialize>(uint64_t a1, uint64_t a2, double a3)
{
  v4 = IPC::Connection::waitForMessage(a1, 0x621u, a2, 0, &v12, a3);
  if (v13)
  {
    if (v13 == 1)
    {
      return v12;
    }

    goto LABEL_14;
  }

  v5 = atomic_load((a1 + 33));
  if ((v5 & 1) == 0)
  {
    v7 = 1;
    goto LABEL_7;
  }

  v6 = *(a1 + 8);
  if (v6)
  {
    v4 = (**v6)(*(a1 + 8));
  }

  if (v13)
  {
LABEL_14:
    mpark::throw_bad_variant_access(v4);
  }

  (*(*v6 + 32))(v6, a1, v12);
  (*(*v6 + 8))(v6);
  v7 = 0;
LABEL_7:
  if (!v13)
  {
    v8 = v12;
    v12 = 0;
    if (v8)
    {
      IPC::Decoder::~Decoder(v8);
      bmalloc::api::tzoneFree(v10, v11);
    }
  }

  return v7;
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  if (*a2 == -1 || !v3)
  {
    __break(0xC471u);
    JUMPOUT(0x19E24EB48);
  }

  v5 = *result;
  if (!*result)
  {
    v22 = result;
    v24 = a3;
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(result, 0);
    result = v22;
    a3 = v24;
    v5 = *v22;
    v3 = *a2;
  }

  v6 = *(v5 - 8);
  v7 = (v3 + ~(v3 << 32)) ^ ((v3 + ~(v3 << 32)) >> 22);
  v8 = 9 * ((v7 + ~(v7 << 13)) ^ ((v7 + ~(v7 << 13)) >> 8));
  v9 = (v8 ^ (v8 >> 15)) + ~((v8 ^ (v8 >> 15)) << 27);
  v10 = v6 & ((v9 >> 31) ^ v9);
  v11 = (v5 + 8 * v10);
  v12 = *v11;
  if (*v11)
  {
    v13 = 0;
    v14 = 1;
    do
    {
      if (v12 == v3)
      {
        v20 = 0;
        v19 = v5 + 8 * *(v5 - 4);
        goto LABEL_19;
      }

      if (v12 == -1)
      {
        v13 = v11;
      }

      v10 = (v10 + v14) & v6;
      v11 = (v5 + 8 * v10);
      v12 = *v11;
      ++v14;
    }

    while (*v11);
    if (v13)
    {
      *v13 = 0;
      --*(*result - 16);
      v3 = *a2;
      v11 = v13;
    }
  }

  *v11 = v3;
  v15 = *result;
  if (*result)
  {
    v16 = *(v15 - 12) + 1;
  }

  else
  {
    v16 = 1;
  }

  *(v15 - 12) = v16;
  v17 = (*(v15 - 16) + v16);
  v18 = *(v15 - 4);
  if (v18 > 0x400)
  {
    if (v18 > 2 * v17)
    {
      goto LABEL_17;
    }

LABEL_21:
    v23 = a3;
    v21 = result;
    result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(result, v11);
    v11 = result;
    v15 = *v21;
    if (*v21)
    {
      v18 = *(v15 - 4);
    }

    else
    {
      v18 = 0;
    }

    a3 = v23;
    goto LABEL_17;
  }

  if (3 * v18 <= 4 * v17)
  {
    goto LABEL_21;
  }

LABEL_17:
  v19 = v15 + 8 * v18;
  v20 = 1;
LABEL_19:
  *a3 = v11;
  *(a3 + 8) = v19;
  *(a3 + 16) = v20;
  return result;
}

void *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t *a2)
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

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

void *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t *a3)
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

  v9 = WTF::fastZeroedMalloc((8 * a2 + 16));
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
      v13 = (v6 + 8 * v11);
      v14 = *v13;
      if ((*v13 + 1) >= 2)
      {
        v15 = *a1;
        v16 = *a1 ? *(v15 - 8) : 0;
        v17 = (v14 + ~(v14 << 32)) ^ ((v14 + ~(v14 << 32)) >> 22);
        v18 = 9 * ((v17 + ~(v17 << 13)) ^ ((v17 + ~(v17 << 13)) >> 8));
        v19 = (v18 ^ (v18 >> 15)) + ~((v18 ^ (v18 >> 15)) << 27);
        v20 = v16 & ((v19 >> 31) ^ v19);
        v21 = 1;
        do
        {
          v22 = v20;
          v23 = *(v15 + 8 * v20);
          v20 = (v20 + v21++) & v16;
        }

        while (v23);
        v24 = (v15 + 8 * v22);
        *v24 = v14;
        if (v13 == a3)
        {
          v12 = v24;
        }
      }

      ++v11;
    }

    while (v11 != v7);
  }

  else
  {
    v12 = 0;
  }

  if (v6)
  {
    WTF::fastFree((v6 - 16), v10);
  }

  return v12;
}

unsigned int *WTF::WeakPtrFactory<WebCore::RenderingResourceObserver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(unsigned int *result, uint64_t a2)
{
  if (!*result)
  {
    v2 = result;
    v5 = WTF::fastCompactMalloc(0x10);
    *v5 = 1;
    *(v5 + 8) = a2;
    result = *v2;
    *v2 = v5;
    if (result)
    {
      if (atomic_fetch_add(result, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, result);

        return WTF::fastFree(result, v4);
      }
    }
  }

  return result;
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(uint64_t *result, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  if (*a3 == -1 || !v3)
  {
    __break(0xC471u);
    JUMPOUT(0x19E24EF00);
  }

  v6 = result;
  v7 = *a2;
  if (!*a2)
  {
    result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(a2, 0);
    v7 = *a2;
    v3 = *a3;
  }

  v8 = *(v7 - 8);
  v9 = (v3 + ~(v3 << 32)) ^ ((v3 + ~(v3 << 32)) >> 22);
  v10 = 9 * ((v9 + ~(v9 << 13)) ^ ((v9 + ~(v9 << 13)) >> 8));
  v11 = (v10 ^ (v10 >> 15)) + ~((v10 ^ (v10 >> 15)) << 27);
  v12 = v8 & ((v11 >> 31) ^ v11);
  v13 = (v7 + 8 * v12);
  v14 = *v13;
  if (*v13)
  {
    v15 = 0;
    v16 = 1;
    do
    {
      if (v14 == v3)
      {
        v22 = 0;
        v21 = v7 + 8 * *(v7 - 4);
        goto LABEL_18;
      }

      if (v14 == -1)
      {
        v15 = v13;
      }

      v12 = (v12 + v16) & v8;
      v13 = (v7 + 8 * v12);
      v14 = *v13;
      ++v16;
    }

    while (*v13);
    if (v15)
    {
      *v15 = 0;
      --*(*a2 - 16);
      v3 = *a3;
      v13 = v15;
    }
  }

  *v13 = v3;
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
    result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(a2, v13);
    v13 = result;
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
  v21 = v17 + 8 * v20;
  v22 = 1;
LABEL_18:
  *v6 = v13;
  v6[1] = v21;
  *(v6 + 16) = v22;
  return result;
}

_OWORD *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,unsigned long long>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,unsigned long long>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,unsigned long long,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1, void *a2)
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

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,unsigned long long>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,unsigned long long>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,unsigned long long,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

_OWORD *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,unsigned long long>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,unsigned long long>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,unsigned long long,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, void *a3)
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
      if ((*v13 + 1) >= 2)
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

        v16 = (*v13 + ~(*v13 << 32)) ^ ((*v13 + ~(*v13 << 32)) >> 22);
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
        *v23 = *v13;
        if (v13 == a3)
        {
          v12 = v23;
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

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(uint64_t *result, void *a2)
{
  *a2 = -1;
  v2 = *result;
  v3 = vadd_s32(*(*result - 16), 0xFFFFFFFF00000001);
  *(v2 - 16) = v3;
  v4 = *(v2 - 4);
  if (6 * v3.i32[1] < v4 && v4 >= 9)
  {
    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(result, v4 >> 1, 0);
  }

  return result;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (a2 == -1 || !a2)
    {
      __break(0xC471u);
      JUMPOUT(0x19E24F19CLL);
    }

    v2 = *(result - 8);
    v3 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
    v4 = 9 * ((v3 + ~(v3 << 13)) ^ ((v3 + ~(v3 << 13)) >> 8));
    v5 = (v4 ^ (v4 >> 15)) + ~((v4 ^ (v4 >> 15)) << 27);
    v6 = v2 & ((v5 >> 31) ^ v5);
    v7 = *(result + 8 * v6);
    if (v7 == a2)
    {
LABEL_5:
      result += 8 * v6;
    }

    else
    {
      v8 = 1;
      while (v7)
      {
        v6 = (v6 + v8) & v2;
        v7 = *(result + 8 * v6);
        ++v8;
        if (v7 == a2)
        {
          goto LABEL_5;
        }
      }

      result += 8 * *(result - 4);
    }
  }

  return result;
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,unsigned long long>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,unsigned long long>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,unsigned long long,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::shrinkToBestSize(uint64_t *result)
{
  if (!*result)
  {
    LODWORD(v1) = 0;
    goto LABEL_7;
  }

  v1 = *(*result - 12);
  if (v1 <= 1)
  {
LABEL_7:
    v4 = v1;
    v3 = 1;
    goto LABEL_8;
  }

  v2 = __clz(v1 - 1);
  if (!v2)
  {
    __break(1u);
    return result;
  }

  v3 = (1 << -v2);
  if (v1 > 0x400)
  {
    if (v3 > 2 * v1)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v4 = *(*result - 12);
LABEL_8:
  if (3 * v3 <= 4 * v4)
  {
LABEL_9:
    LODWORD(v3) = 2 * v3;
  }

LABEL_10:
  if (v3 > 0x400)
  {
    v5 = 0.416666667;
  }

  else
  {
    v5 = 0.604166667;
  }

  if (v3 * v5 <= v1)
  {
    LODWORD(v3) = 2 * v3;
  }

  if (v3 <= 8)
  {
    v6 = 8;
  }

  else
  {
    v6 = v3;
  }

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,unsigned long long>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,unsigned long long>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,unsigned long long,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(result, v6, 0);
}

uint64_t std::optional<IPC::ConnectionSendSyncResult<Messages::RemoteAdapter::RequestDevice>>::optional[abi:sn200100]<IPC::ConnectionSendSyncResult<Messages::RemoteAdapter::RequestDevice>,0>(uint64_t a1, uint64_t *a2)
{
  *a1 = 0;
  *(a1 + 184) = -1;
  v3 = *(a2 + 184);
  if (v3 != 255)
  {
    if (*(a2 + 184))
    {
      *a1 = *a2;
    }

    else
    {
      v5 = *a2;
      *a2 = 0;
      *a1 = v5;
      *(a1 + 16) = 0;
      *(a1 + 8) = 0;
      WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 8, a2 + 2);
      v6 = *(a2 + 3);
      *(a1 + 40) = *(a2 + 5);
      *(a1 + 24) = v6;
      v7 = *(a2 + 7);
      v8 = *(a2 + 9);
      v9 = *(a2 + 11);
      *(a1 + 104) = *(a2 + 13);
      *(a1 + 88) = v9;
      *(a1 + 72) = v8;
      *(a1 + 56) = v7;
      v10 = *(a2 + 15);
      v11 = *(a2 + 17);
      v12 = *(a2 + 19);
      *(a1 + 168) = *(a2 + 21);
      *(a1 + 152) = v12;
      *(a1 + 136) = v11;
      *(a1 + 120) = v10;
      LOBYTE(v3) = *(a2 + 184);
    }

    *(a1 + 184) = v3;
  }

  *(a1 + 192) = 1;
  return a1;
}

IPC::Decoder *IPC::Decoder::operator>><std::tuple<WebKit::WebGPU::SupportedFeatures,WebKit::WebGPU::SupportedLimits>>(IPC::Decoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WebKit::WebGPU::SupportedFeatures,void>::decode(a1, &v48);
  if (v50)
  {
    IPC::ArgumentCoder<WebKit::WebGPU::SupportedLimits,void>::decode(a1, v6, v7, v8, v51);
    if (v52 & 1) != 0 || (v9 = *a1, v31 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (v32 = *(a1 + 3)) != 0) && v31 && ((*(*v32 + 16))(v32, v9), (v52))
    {
      v35 = v48;
      v2 = v49;
      v3 = HIDWORD(v49);
      v48 = 0;
      v49 = 0;
      v36 = __PAIR64__(v3, v2);
      v43 = v51[6];
      v44 = v51[7];
      v45 = v51[8];
      v46 = v51[9];
      v39 = v51[2];
      v40 = v51[3];
      v41 = v51[4];
      v42 = v51[5];
      v37 = v51[0];
      v38 = v51[1];
      v10 = 1;
      v47 = 1;
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v48, v9);
      goto LABEL_4;
    }

    LOBYTE(v35) = 0;
    v47 = 0;
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v48, v9);
  }

  else
  {
    v27 = *a1;
    v28 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v29 = *(a1 + 3);
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

    LOBYTE(v35) = 0;
    v47 = 0;
  }

  v11 = *a1;
  v33 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  v34 = *(a1 + 3);
  if (v34 && v33)
  {
    (*(*v34 + 16))(v34, v11);
  }

  v10 = 0;
LABEL_4:
  if (*(a2 + 176) != v10)
  {
    if (!*(a2 + 176))
    {
      v21 = v35;
      v35 = 0;
      v36 = 0;
      *a2 = v21;
      *(a2 + 8) = v2;
      *(a2 + 12) = v3;
      v22 = v44;
      *(a2 + 112) = v43;
      *(a2 + 128) = v22;
      v23 = v46;
      *(a2 + 144) = v45;
      *(a2 + 160) = v23;
      v24 = v40;
      *(a2 + 48) = v39;
      *(a2 + 64) = v24;
      v25 = v42;
      *(a2 + 80) = v41;
      *(a2 + 96) = v25;
      v26 = v38;
      *(a2 + 16) = v37;
      *(a2 + 32) = v26;
      *(a2 + 176) = 1;
      if (!v10)
      {
        return a1;
      }

      goto LABEL_15;
    }

    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a2, v11);
    *(a2 + 176) = 0;
    goto LABEL_14;
  }

  if (!*(a2 + 176))
  {
LABEL_14:
    if (!v10)
    {
      return a1;
    }

LABEL_15:
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v35, v11);
    return a1;
  }

  v12 = *(a2 + 12);
  if (v12)
  {
    WTF::VectorDestructor<true,WTF::String>::destruct(*a2, (*a2 + 8 * v12));
  }

  v13 = *a2;
  if (*a2)
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    WTF::fastFree(v13, v11);
  }

  v14 = v35;
  v35 = 0;
  v36 = 0;
  *a2 = v14;
  *(a2 + 8) = v2;
  *(a2 + 12) = v3;
  v15 = v44;
  *(a2 + 112) = v43;
  *(a2 + 128) = v15;
  v16 = v46;
  *(a2 + 144) = v45;
  *(a2 + 160) = v16;
  v17 = v40;
  *(a2 + 48) = v39;
  *(a2 + 64) = v17;
  v18 = v42;
  *(a2 + 80) = v41;
  *(a2 + 96) = v18;
  v19 = v38;
  *(a2 + 16) = v37;
  *(a2 + 32) = v19;
  if (v10)
  {
    goto LABEL_15;
  }

  return a1;
}

uint64_t IPC::ConnectionSendSyncResult<Messages::RemoteAdapter::RequestDevice>::ConnectionSendSyncResult(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *a2;
  *a2 = 0;
  v5 = *a3;
  *a3 = 0;
  v6 = *(a3 + 8);
  v19 = *(a3 + 7);
  v20 = v6;
  v7 = *(a3 + 10);
  v21 = *(a3 + 9);
  v22 = v7;
  v8 = *(a3 + 4);
  v15 = *(a3 + 3);
  v16 = v8;
  v9 = *(a3 + 6);
  v17 = *(a3 + 5);
  v18 = v9;
  v10 = *(a3 + 2);
  v13 = *(a3 + 1);
  v14 = v10;
  v12[0] = 0;
  *a1 = v4;
  *(a1 + 8) = v5;
  v12[1] = 0;
  *&v10 = a3[1];
  a3[1] = 0;
  *(a1 + 16) = v10;
  *(a1 + 120) = v19;
  *(a1 + 136) = v20;
  *(a1 + 152) = v21;
  *(a1 + 168) = v22;
  *(a1 + 56) = v15;
  *(a1 + 72) = v16;
  *(a1 + 88) = v17;
  *(a1 + 104) = v18;
  *(a1 + 24) = v13;
  *(a1 + 40) = v14;
  *(a1 + 184) = 0;
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v12, a2);
  return a1;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteBuffer::MapAsync,WebKit::WebGPU::RemoteBufferProxy::mapAsync(WTF::OptionSet<WebCore::WebGPU::MapMode>,unsigned long long,std::optional<unsigned long long>,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0 &>(WebKit::WebGPU::RemoteBufferProxy::mapAsync(WTF::OptionSet<WebCore::WebGPU::MapMode>,unsigned long long,std::optional<unsigned long long>,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0 &,WTF::ThreadLikeAssertion)::{lambda(WebKit::WebGPU::RemoteBufferProxy::mapAsync(WTF::OptionSet<WebCore::WebGPU::MapMode>,unsigned long long,std::optional<unsigned long long>,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0 &,IPC::Decoder)#1},void,WebKit::WebGPU::RemoteBufferProxy::mapAsync(WTF::OptionSet<WebCore::WebGPU::MapMode>,unsigned long long,std::optional<unsigned long long>,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0 &,IPC::Decoder>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1125748;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
    if (v2[4] == 1)
    {
      (*(*v2 + 8))(v2);
    }

    else
    {
      --v2[4];
    }
  }

  v3 = a1[1];
  a1[1] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteBuffer::MapAsync,WebKit::WebGPU::RemoteBufferProxy::mapAsync(WTF::OptionSet<WebCore::WebGPU::MapMode>,unsigned long long,std::optional<unsigned long long>,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0 &>(WebKit::WebGPU::RemoteBufferProxy::mapAsync(WTF::OptionSet<WebCore::WebGPU::MapMode>,unsigned long long,std::optional<unsigned long long>,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0 &,WTF::ThreadLikeAssertion)::{lambda(WebKit::WebGPU::RemoteBufferProxy::mapAsync(WTF::OptionSet<WebCore::WebGPU::MapMode>,unsigned long long,std::optional<unsigned long long>,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0 &,IPC::Decoder)#1},void,WebKit::WebGPU::RemoteBufferProxy::mapAsync(WTF::OptionSet<WebCore::WebGPU::MapMode>,unsigned long long,std::optional<unsigned long long>,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0 &,IPC::Decoder>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1125748;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    if (v3[4] == 1)
    {
      (*(*v3 + 8))(v3);
    }

    else
    {
      --v3[4];
    }
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteBuffer::MapAsync,WebKit::WebGPU::RemoteBufferProxy::mapAsync(WTF::OptionSet<WebCore::WebGPU::MapMode>,unsigned long long,std::optional<unsigned long long>,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0 &>(WebKit::WebGPU::RemoteBufferProxy::mapAsync(WTF::OptionSet<WebCore::WebGPU::MapMode>,unsigned long long,std::optional<unsigned long long>,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0 &,WTF::ThreadLikeAssertion)::{lambda(WebKit::WebGPU::RemoteBufferProxy::mapAsync(WTF::OptionSet<WebCore::WebGPU::MapMode>,unsigned long long,std::optional<unsigned long long>,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0 &,IPC::Decoder)#1},void,WebKit::WebGPU::RemoteBufferProxy::mapAsync(WTF::OptionSet<WebCore::WebGPU::MapMode>,unsigned long long,std::optional<unsigned long long>,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0 &,IPC::Decoder>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
{
  if (a3 && *a3 && (v4 = IPC::Decoder::decode<std::tuple<BOOL>>(a3), (v4 & 0x100) != 0) && (v4 & 1) != 0)
  {
    *(*(a1 + 24) + 56) = *(a1 + 16);
    v5 = 1;
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

void *WTF::Detail::CallableWrapper<std::optional<WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits,unsigned long long>> IPC::StreamClientConnection::sendWithAsyncReply<Messages::RemoteBuffer::MapAsync,WebKit::WebGPU::RemoteBufferProxy::mapAsync(WTF::OptionSet<WebCore::WebGPU::MapMode>,unsigned long long,std::optional<unsigned long long>,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0 &,WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(Messages::RemoteBuffer::MapAsync &&,WebKit::WebGPU::RemoteBufferProxy::mapAsync(WTF::OptionSet<WebCore::WebGPU::MapMode>,unsigned long long,std::optional<unsigned long long>,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0 &,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long><WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1125770;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<std::optional<WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits,unsigned long long>> IPC::StreamClientConnection::sendWithAsyncReply<Messages::RemoteBuffer::MapAsync,WebKit::WebGPU::RemoteBufferProxy::mapAsync(WTF::OptionSet<WebCore::WebGPU::MapMode>,unsigned long long,std::optional<unsigned long long>,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0 &,WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(Messages::RemoteBuffer::MapAsync &&,WebKit::WebGPU::RemoteBufferProxy::mapAsync(WTF::OptionSet<WebCore::WebGPU::MapMode>,unsigned long long,std::optional<unsigned long long>,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0 &,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long><WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1125770;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<std::optional<WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits,unsigned long long>> IPC::StreamClientConnection::sendWithAsyncReply<Messages::RemoteBuffer::MapAsync,WebKit::WebGPU::RemoteBufferProxy::mapAsync(WTF::OptionSet<WebCore::WebGPU::MapMode>,unsigned long long,std::optional<unsigned long long>,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0 &,WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(Messages::RemoteBuffer::MapAsync &&,WebKit::WebGPU::RemoteBufferProxy::mapAsync(WTF::OptionSet<WebCore::WebGPU::MapMode>,unsigned long long,std::optional<unsigned long long>,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0 &,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long><WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>)::{lambda(void)#1},void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1, 0, 0);
  v2 = *(*v1 + 8);

  return v2(v1);
}

uint64_t std::optional<IPC::ConnectionSendSyncResult<Messages::RemoteBuffer::GetMappedRange>>::optional[abi:sn200100]<IPC::ConnectionSendSyncResult<Messages::RemoteBuffer::GetMappedRange>,0>(uint64_t a1, uint64_t *a2)
{
  *a1 = 0;
  *(a1 + 32) = -1;
  if (*(a2 + 32) != 255)
  {
    if (*(a2 + 32))
    {
      *a1 = *a2;
    }

    else
    {
      v4 = *a2;
      *a2 = 0;
      *a1 = v4;
      *(a1 + 8) = 0;
      v5 = (a1 + 8);
      *(a1 + 24) = 0;
      if (*(a2 + 24) == 1)
      {
        *v5 = 0;
        *(a1 + 16) = 0;
        WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(v5, a2 + 1);
        *(a1 + 24) = 1;
      }
    }

    *(a1 + 32) = *(a2 + 32);
  }

  *(a1 + 40) = 1;
  return a1;
}

uint64_t *IPC::Decoder::operator>><std::tuple<std::optional<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>>(uint64_t *a1, WTF *a2)
{
  IPC::ArgumentCoder<std::tuple<std::optional<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,void>::decode<IPC::Decoder>(a1, &v11);
  if ((v14 & 1) == 0)
  {
    v7 = *a1;
    v8 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v9 = a1[3];
    if (v9 && v8 != 0)
    {
      (*(*v9 + 16))(v9, v7);
    }
  }

  std::__optional_storage_base<std::tuple<std::optional<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<std::tuple<std::optional<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,false>>(a2, &v11);
  if (v14 == 1 && v13 == 1)
  {
    v6 = v11;
    if (v11)
    {
      v11 = 0;
      v12 = 0;
      WTF::fastFree(v6, v4);
    }
  }

  return a1;
}

WTF *IPC::ArgumentCoder<std::tuple<std::optional<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,void>::decode<IPC::Decoder>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<std::optional<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder>(a1, v9);
  if (v11 & 1) != 0 || ((v6 = *a1, v7 = a1[1], *a1 = 0, a1[1] = 0, (result = a1[3]) != 0) ? (v8 = v7 == 0) : (v8 = 1), !v8 && (result = (*(*result + 16))(result, v6), (v11)))
  {
    *a2 = 0;
    *(a2 + 16) = 0;
    v5 = 1;
    if (v10)
    {
      *a2 = v9[0];
      *(a2 + 8) = v9[1];
      *(a2 + 16) = 1;
    }
  }

  else
  {
    v5 = 0;
    *a2 = 0;
  }

  *(a2 + 24) = v5;
  return result;
}

WTF *std::__optional_storage_base<std::tuple<std::optional<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<std::tuple<std::optional<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,false>>(WTF *result, _BYTE *a2)
{
  v2 = result;
  if (*(result + 24) == a2[24])
  {
    if (*(result + 24))
    {

      return std::__optional_storage_base<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>>(result, a2);
    }
  }

  else if (*(result + 24))
  {

    return std::__optional_destruct_base<std::tuple<std::optional<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,false>::reset[abi:sn200100](result, a2);
  }

  else
  {
    *result = 0;
    *(result + 16) = 0;
    if (a2[16] == 1)
    {
      *result = 0;
      *(result + 1) = 0;
      result = WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(result, a2);
      *(v2 + 16) = 1;
    }

    *(v2 + 24) = 1;
  }

  return result;
}

WTF *std::__optional_destruct_base<std::tuple<std::optional<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,false>::reset[abi:sn200100](WTF *result, void *a2)
{
  if (*(result + 24) == 1)
  {
    v2 = result;
    if (*(result + 16) == 1)
    {
      result = *result;
      if (*v2)
      {
        *v2 = 0;
        *(v2 + 2) = 0;
        result = WTF::fastFree(result, a2);
      }
    }

    *(v2 + 24) = 0;
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteBuffer::Copy,WebKit::WebGPU::RemoteBufferProxy::copyFrom(std::span<unsigned char const,18446744073709551615ul>,unsigned long)::$_0 &>(WebKit::WebGPU::RemoteBufferProxy::copyFrom(std::span<unsigned char const,18446744073709551615ul>,unsigned long)::$_0 &,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1125798;
  a1[1] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteBuffer::Copy,WebKit::WebGPU::RemoteBufferProxy::copyFrom(std::span<unsigned char const,18446744073709551615ul>,unsigned long)::$_0 &>(WebKit::WebGPU::RemoteBufferProxy::copyFrom(std::span<unsigned char const,18446744073709551615ul>,unsigned long)::$_0 &,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1125798;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteBuffer::Copy,WebKit::WebGPU::RemoteBufferProxy::copyFrom(std::span<unsigned char const,18446744073709551615ul>,unsigned long)::$_0 &>(WebKit::WebGPU::RemoteBufferProxy::copyFrom(std::span<unsigned char const,18446744073709551615ul>,unsigned long)::$_0 &,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t result, uint64_t a2, IPC::Decoder *a3)
{
  v3 = result;
  if (a3 && *a3)
  {
    result = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
    v4 = *(v3 + 8);
    if ((result & 0x100) != 0)
    {
      if (!v4 && *(v3 + 16) == 1)
      {
LABEL_13:
        __break(0xC471u);
        JUMPOUT(0x19E24FEE0);
      }
    }

    else if (!v4 && *(v3 + 16) == 1)
    {
      goto LABEL_13;
    }
  }

  else if (!*(result + 8) && *(result + 16) == 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E24FF14);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<std::optional<WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>> IPC::StreamClientConnection::sendWithAsyncReply<Messages::RemoteBuffer::Copy,WebKit::WebGPU::RemoteBufferProxy::copyFrom(std::span<unsigned char const,18446744073709551615ul>,unsigned long)::$_0 &,WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(Messages::RemoteBuffer::Copy &&,WebKit::WebGPU::RemoteBufferProxy::copyFrom(std::span<unsigned char const,18446744073709551615ul>,unsigned long)::$_0 &,WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F11257C0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<std::optional<WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>> IPC::StreamClientConnection::sendWithAsyncReply<Messages::RemoteBuffer::Copy,WebKit::WebGPU::RemoteBufferProxy::copyFrom(std::span<unsigned char const,18446744073709551615ul>,unsigned long)::$_0 &,WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(Messages::RemoteBuffer::Copy &&,WebKit::WebGPU::RemoteBufferProxy::copyFrom(std::span<unsigned char const,18446744073709551615ul>,unsigned long)::$_0 &,WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F11257C0;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<std::optional<WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>> IPC::StreamClientConnection::sendWithAsyncReply<Messages::RemoteBuffer::Copy,WebKit::WebGPU::RemoteBufferProxy::copyFrom(std::span<unsigned char const,18446744073709551615ul>,unsigned long)::$_0 &,WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(Messages::RemoteBuffer::Copy &&,WebKit::WebGPU::RemoteBufferProxy::copyFrom(std::span<unsigned char const,18446744073709551615ul>,unsigned long)::$_0 &,WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>)::{lambda(void)#1},void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1, 0, 0);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void WebKit::WebGPU::RemoteCompositorIntegrationProxy::~RemoteCompositorIntegrationProxy(WebKit::WebGPU::RemoteCompositorIntegrationProxy *this)
{
  v2 = *(*(this + 5) + 80);
  atomic_fetch_add(v2, 1u);
  v3 = *(this + 3);
  v4 = *(v2 + 128);
  v5 = INFINITY;
  if (fabs(v4) != INFINITY)
  {
    WTF::ApproximateTime::now(this);
    v5 = v4 + v6;
  }

  if (*(v2 + 64) != v3)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(v2 + 72, &v31, v5);
    if (v33 != 1)
    {
      goto LABEL_16;
    }

    v18 = v32;
    if (v32 <= 1)
    {
LABEL_56:
      __break(0xC471u);
      JUMPOUT(0x19E250464);
    }

    v19 = v31;
    *v31 = 3198;
    v20 = v19 + 1;
    if (v18 - 2 < (-v20 & 7 | 8uLL))
    {
      goto LABEL_16;
    }

    v21 = -v20 & 7;
    *(v20 + v21) = v3;
    if (v21 != 7)
    {
      v21 = 6;
    }

    v22 = (*(v2 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v24 = *(v2 + 72);
    v23 = *(v2 + 80);
    v25 = v21 + 10;
    if (v22 + 16 >= v24)
    {
      v22 = 0;
    }

    v26 = v25 + v22;
    if (v24 <= v26)
    {
      v26 = 0;
    }

    *(v2 + 88) = v26;
    if (*(v23 + 8) <= 0xFFuLL)
    {
      goto LABEL_55;
    }

    v27 = atomic_exchange((*(v23 + 16) + 128), v26);
    v28 = *(v2 + 124);
    if (v27 == 0x80000000 || v28 != 0)
    {
      v30 = v28 + 1;
      *(v2 + 124) = v30;
      if (v30 >= *(v2 + 120))
      {
        if (*(v2 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v2 + 100));
        }

        *(v2 + 124) = 0;
      }
    }

    *(v2 + 64) = v3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v2 + 72, &v31, v5);
  if (v33 != 1)
  {
    goto LABEL_16;
  }

  if (v32 <= 1)
  {
    goto LABEL_56;
  }

  *v31 = 1005;
  v9 = (*(v2 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v11 = *(v2 + 72);
  v10 = *(v2 + 80);
  if (v9 + 16 >= v11)
  {
    v9 = 0;
  }

  v12 = v9 + 16;
  if (v11 <= v12)
  {
    v12 = 0;
  }

  *(v2 + 88) = v12;
  if (*(v10 + 8) <= 0xFFuLL)
  {
    goto LABEL_55;
  }

  if (atomic_exchange((*(v10 + 16) + 128), v12) == 0x80000000 || *(v2 + 124))
  {
    if (*(v2 + 112) == 1)
    {
      MEMORY[0x19EB16320](*(v2 + 100));
    }

    *(v2 + 124) = 0;
  }

LABEL_16:
  if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2);
    v8.n128_f64[0] = IPC::StreamClientConnection::operator delete(v2);
  }

  v13 = *(this + 6);
  *(this + 6) = 0;
  if (v13)
  {
    if (v13[4] == 1)
    {
      (*(*v13 + 8))(v13, v8);
    }

    else
    {
      --v13[4];
    }
  }

  v14 = *(this + 5);
  *(this + 5) = 0;
  if (v14 && atomic_fetch_add(v14 + 7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v14 + 7);
    (*(*v14 + 24))(v14, v8);
  }

  v15 = *(this + 4);
  *(this + 4) = 0;
  if (v15)
  {
    if (v15[2] == 1)
    {
      (*(*v15 + 8))(v15, v8);
    }

    else
    {
      --v15[2];
    }
  }

  if (*(this + 4) != 1)
  {
    __break(0xC471u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v16 = *(this + 1);
  if (v16)
  {
    *(v16 + 8) = 0;
    v17 = *(this + 1);
    *(this + 1) = 0;
    if (v17)
    {
      if (atomic_fetch_add(v17, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v17);
        WTF::fastFree(v17, v7);
      }
    }
  }
}

{
  WebKit::WebGPU::RemoteCompositorIntegrationProxy::~RemoteCompositorIntegrationProxy(this);

  bmalloc::api::tzoneFree(v1, v2);
}

uint64_t WebKit::WebGPU::RemoteCompositorIntegrationProxy::recreateRenderBuffers@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, CFTypeRef *a4@<X3>, char a5@<W4>, char a6@<W5>, void *a7@<X6>, void *a8@<X8>)
{
  v15 = (*(*a7 + 240))(a7);
  if ((v15 & 1) == 0)
  {
    __break(0xC471u);
    goto LABEL_117;
  }

  v16 = a7[6];
  v17 = *(*(a1 + 40) + 80);
  atomic_fetch_add(v17, 1u);
  v18 = *(a1 + 24);
  v19 = *(v17 + 128);
  v20 = INFINITY;
  if (fabs(v19) != INFINITY)
  {
    WTF::ApproximateTime::now(v15);
    v20 = v19 + v21;
  }

  if (*(v17 + 64) != v18)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(v17 + 72, &v96, v20);
    if (v97 != 1)
    {
      goto LABEL_96;
    }

    v75 = *(&v96 + 1);
    if (*(&v96 + 1) <= 1uLL)
    {
      __break(0xC471u);
      goto LABEL_116;
    }

    v76 = v96;
    *v96 = 3198;
    v77 = v76 + 2;
    if (v75 - 2 < (-v77 & 7 | 8uLL))
    {
      v89 = 18;
      goto LABEL_97;
    }

    v78 = -v77 & 7;
    *(v77 + v78) = v18;
    v79 = 6;
    if (v78 > 6)
    {
      v79 = v78;
    }

    v80 = v79 + 10;
    v81 = (*(v17 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v82 = *(v17 + 72);
    if (v81 + 16 >= v82)
    {
      v81 = 0;
    }

    v83 = v80 + v81;
    if (v82 <= v83)
    {
      v83 = 0;
    }

    *(v17 + 88) = v83;
    v84 = *(v17 + 80);
    if (*(v84 + 8) <= 0xFFuLL)
    {
      goto LABEL_116;
    }

    v85 = atomic_exchange((*(v84 + 16) + 128), v83);
    v86 = *(v17 + 124);
    v87 = v85 != 0x80000000 && v86 == 0;
    if (!v87)
    {
      v88 = v86 + 1;
      *(v17 + 124) = v88;
      if (v88 >= *(v17 + 120))
      {
        if (*(v17 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v17 + 100));
        }

        *(v17 + 124) = 0;
      }
    }

    *(v17 + 64) = v18;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v17 + 72, &v100, v20);
  if ((v102 & 1) == 0)
  {
LABEL_96:
    v89 = 16;
LABEL_97:
    v106[0] = v89;
    v107 = 1;
    goto LABEL_98;
  }

  v94 = v16;
  if (WTF::ObjectIdentifierGeneric<IPC::SyncRequestIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E250CE4);
  }

  v24 = a5;
  v25 = a6;
  v26 = v100;
  v27 = v101;
  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  if ((IPC::Connection::pushPendingSyncRequestID(*(v17 + 8), IdentifierInternal) & 1) == 0)
  {
    v106[0] = 12;
    v107 = 1;
    std::optional<IPC::ConnectionSendSyncResult<Messages::RemoteCompositorIntegration::RecreateRenderBuffers>>::optional[abi:sn200100]<IPC::ConnectionSendSyncResult<Messages::RemoteCompositorIntegration::RecreateRenderBuffers>,0>(&v96, v106);
    mpark::detail::move_constructor<mpark::detail::traits<IPC::ConnectionSendSyncResult<Messages::RemoteCompositorIntegration::RecreateRenderBuffers>::ReplyData,IPC::Error>,(mpark::detail::Trait)1>::~move_constructor(v106, v53);
LABEL_38:
    v39 = v25;
    goto LABEL_39;
  }

  *&v106[16] = v27;
  if (v27 <= 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E250D04);
  }

  *v26 = 4026;
  v29 = v26 + 1;
  v30 = -v29 & 7 | 8;
  v31 = v27 - 2 - v30;
  if (v27 - 2 >= v30 && (*(v29 + (-v29 & 7)) = IdentifierInternal, v32 = v29 + v30, v33 = -v32 & 3 | 4, v34 = v31 >= v33, v35 = v31 - v33, v34) && (*&v32[-v32 & 3] = a2, v36 = &v32[v33], v37 = -v36 & 3 | 4, v34 = v35 >= v37, v38 = v35 - v37, v34))
  {
    *&v36[-v36 & 3] = a3;
    *v106 = &v36[v37];
    *&v106[8] = v38;
  }

  else
  {
    *v106 = 0uLL;
  }

  v39 = v25;
  IPC::ArgumentCoder<WebCore::DestinationColorSpace,void>::encode(v106, a4);
  if (!*&v106[8])
  {
    goto LABEL_104;
  }

  **v106 = v24;
  if (!*&v106[8])
  {
    goto LABEL_116;
  }

  v87 = *&v106[8] == 1;
  v40 = ++*v106;
  --*&v106[8];
  if (v87)
  {
LABEL_104:
    IPC::Connection::popPendingSyncRequestID(*(v17 + 8));
    LOBYTE(v96) = 0;
    v99 = 0;
    goto LABEL_39;
  }

  *v40 = v25;
  if (!*&v106[8])
  {
LABEL_116:
    __break(1u);
LABEL_117:
    JUMPOUT(0x19E250CC4);
  }

  v41 = *v106 + 1;
  *v106 = __PAIR128__(*&v106[8], *v106 + 1) + __PAIR128__(-1, 0);
  v42 = -v41 & 7 | 8;
  if (*&v106[8] < v42)
  {
    goto LABEL_104;
  }

  *(v41 + (-v41 & 7)) = v94;
  v43 = *&v106[8] - v42;
  if (*&v106[8] < v42)
  {
    goto LABEL_116;
  }

  *v106 += v42;
  *&v106[8] -= v42;
  v44 = *&v106[16] - v43;
  if (*&v106[16] - v43 <= 0x10)
  {
    v44 = 16;
  }

  v45 = (*(v17 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v46 = *(v17 + 72);
  if (v45 + 16 >= v46)
  {
    v45 = 0;
  }

  v47 = v45 + v44;
  if (v46 <= v47)
  {
    v47 = 0;
  }

  *(v17 + 88) = v47;
  v48 = *(v17 + 80);
  if (*(v48 + 8) <= 0xFFuLL)
  {
    goto LABEL_116;
  }

  if (atomic_exchange((*(v48 + 16) + 128), v47) == 0x80000000 || *(v17 + 124))
  {
    if (*(v17 + 112) == 1)
    {
      MEMORY[0x19EB16320](*(v17 + 100));
    }

    *(v17 + 124) = 0;
  }

  *(v17 + 88) = 0;
  IPC::Connection::waitForSyncReply(*(v17 + 8), IdentifierInternal, 0xFBAu, &v103, v20);
  v49 = v104;
  if (v104)
  {
    if (v104 == 255)
    {
      v93 = IPC::Connection::popPendingSyncRequestID(*(v17 + 8));
      mpark::throw_bad_variant_access(v93);
    }

    v50 = v103;
    v51 = IPC::Connection::popPendingSyncRequestID(*(v17 + 8));
    if (v49 != 1)
    {
LABEL_108:
      mpark::throw_bad_variant_access(v51);
    }

    LOBYTE(v96) = v50;
    v98 = 1;
    v99 = 1;
    goto LABEL_38;
  }

  v65 = v103;
  IPC::Connection::popPendingSyncRequestID(*(v17 + 8));
  v109 = v65;
  if (*(v65 + 25) == 3194)
  {
    LOBYTE(v96) = 11;
    v98 = 1;
    v99 = 1;
LABEL_59:
    IPC::Decoder::~Decoder(v65);
    bmalloc::api::tzoneFree(v66, v67);
    goto LABEL_39;
  }

  LOBYTE(v103) = 0;
  v105 = 0;
  IPC::Decoder::operator>><std::tuple<WTF::Vector<WTF::MachSendRight,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(v65, &v103);
  if (v105 == 1)
  {
    IPC::ConnectionSendSyncResult<Messages::RemoteCompositorIntegration::RecreateRenderBuffers>::ConnectionSendSyncResult(v106, &v109, &v103);
    std::optional<IPC::ConnectionSendSyncResult<Messages::RemoteCompositorIntegration::RecreateRenderBuffers>>::optional[abi:sn200100]<IPC::ConnectionSendSyncResult<Messages::RemoteCompositorIntegration::RecreateRenderBuffers>,0>(&v96, v106);
    mpark::detail::move_constructor<mpark::detail::traits<IPC::ConnectionSendSyncResult<Messages::RemoteCompositorIntegration::RecreateRenderBuffers>::ReplyData,IPC::Error>,(mpark::detail::Trait)1>::~move_constructor(v106, v68);
    if (v105)
    {
      WTF::Vector<WTF::MachSendRight,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v103, v52);
    }
  }

  else
  {
    LOBYTE(v96) = 14;
    v98 = 1;
    v99 = 1;
  }

  v65 = v109;
  if (v109)
  {
    goto LABEL_59;
  }

LABEL_39:
  if (v99 == 1)
  {
    v106[0] = 0;
    v107 = -1;
    if (v98 != 255)
    {
      if (v98)
      {
        v106[0] = v96;
      }

      else
      {
        v54 = v96;
        v96 = 0uLL;
        *v106 = v54;
        *&v54 = v97;
        v97 = 0;
        *&v106[16] = v54;
      }

      v107 = v98;
    }

    mpark::detail::move_constructor<mpark::detail::traits<IPC::ConnectionSendSyncResult<Messages::RemoteCompositorIntegration::RecreateRenderBuffers>::ReplyData,IPC::Error>,(mpark::detail::Trait)1>::~move_constructor(&v96, v52);
    goto LABEL_98;
  }

  if ((v102 & 1) == 0)
  {
    goto LABEL_116;
  }

  if (v101 <= 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E250D24);
  }

  *v100 = 3197;
  v55 = (*(v17 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v56 = *(v17 + 72);
  if (v55 + 16 >= v56)
  {
    v55 = 0;
  }

  v57 = v55 + 16;
  v58 = v56 <= v57 ? 0 : v57;
  *(v17 + 88) = v58;
  v59 = *(v17 + 80);
  if (*(v59 + 8) <= 0xFFuLL)
  {
    goto LABEL_116;
  }

  atomic_exchange((*(v59 + 16) + 128), v58);
  *(v17 + 124) = 0;
  v60 = *(v17 + 8);
  IPC::Connection::createSyncMessageEncoder(0xFBA, v18, &v103);
  v61 = v103;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v103, a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v61, a3);
  IPC::ArgumentCoder<WebCore::DestinationColorSpace,void>::encode(v61, a4);
  LOBYTE(v96) = v24;
  IPC::Encoder::operator<<<unsigned char>(v61, &v96);
  LOBYTE(v96) = v39;
  IPC::Encoder::operator<<<unsigned char>(v61, &v96);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v61, v94);
  v51 = IPC::Connection::sendSyncMessage(v60, v104, &v103, 0, &v109, v20);
  if (!v110)
  {
    v62 = v109;
    v108 = v109;
    v109 = 0;
    if (*(v108 + 25) == 3194)
    {
      v106[0] = 11;
      v107 = 1;
    }

    else
    {
      LOBYTE(v96) = 0;
      LOBYTE(v97) = 0;
      IPC::Decoder::operator>><std::tuple<WTF::Vector<WTF::MachSendRight,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(v62, &v96);
      if (v97 == 1)
      {
        IPC::ConnectionSendSyncResult<Messages::RemoteCompositorIntegration::RecreateRenderBuffers>::ConnectionSendSyncResult(v106, &v108, &v96);
        if (v97)
        {
          WTF::Vector<WTF::MachSendRight,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v96, v22);
        }
      }

      else
      {
        v106[0] = 14;
        v107 = 1;
      }

      v62 = v108;
      if (!v108)
      {
        goto LABEL_71;
      }
    }

    IPC::Decoder::~Decoder(v62);
    bmalloc::api::tzoneFree(v63, v64);
LABEL_71:
    if (!v110)
    {
      v69 = v109;
      v109 = 0;
      if (v69)
      {
        IPC::Decoder::~Decoder(v69);
        bmalloc::api::tzoneFree(v73, v74);
      }
    }

    goto LABEL_74;
  }

  if (v110 != 1)
  {
    goto LABEL_108;
  }

  v106[0] = v109;
  v107 = 1;
LABEL_74:
  v70 = v103;
  v103 = 0;
  if (v70)
  {
    IPC::Encoder::~Encoder(v70, v22);
    bmalloc::api::tzoneFree(v71, v72);
  }

LABEL_98:
  if (atomic_fetch_add(v17, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v17);
    IPC::StreamClientConnection::operator delete(v17);
  }

  if (v107)
  {
    *a8 = 0;
    a8[1] = 0;
  }

  else
  {
    *&v23 = 0;
    v90 = *&v106[8];
    v91 = *&v106[16];
    *&v106[8] = v23;
    v96 = v23;
    *a8 = v90;
    a8[1] = v91;
    WTF::Vector<WTF::MachSendRight,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v96, v22);
  }

  return mpark::detail::move_constructor<mpark::detail::traits<IPC::ConnectionSendSyncResult<Messages::RemoteCompositorIntegration::RecreateRenderBuffers>::ReplyData,IPC::Error>,(mpark::detail::Trait)1>::~move_constructor(v106, v22);
}

uint64_t WebKit::WebGPU::RemoteCompositorIntegrationProxy::prepareForDisplay(WTF::ApproximateTime *a1, int a2, uint64_t *a3)
{
  v6 = *(*(a1 + 5) + 80);
  atomic_fetch_add(v6, 1u);
  v7 = *(a1 + 3);
  v8 = *(v6 + 128);
  v9 = INFINITY;
  if (fabs(v8) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v9 = v8 + v10;
  }

  if (*(v6 + 64) != v7)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(v6 + 72, &v70, v9);
    if (v72 != 1)
    {
      v29 = 16;
      goto LABEL_32;
    }

    v39 = v71;
    if (v71 <= 1)
    {
      __break(0xC471u);
      goto LABEL_95;
    }

    v40 = v70;
    *v70 = 3198;
    v41 = v40 + 1;
    if (v39 - 2 < (-v41 & 7 | 8uLL))
    {
      v29 = 18;
      goto LABEL_32;
    }

    v42 = -v41 & 7;
    *(v41 + v42) = v7;
    v43 = 6;
    if (v42 > 6)
    {
      v43 = v42;
    }

    v44 = v43 + 10;
    v45 = (*(v6 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v46 = *(v6 + 72);
    if (v45 + 16 >= v46)
    {
      v45 = 0;
    }

    v47 = v44 + v45;
    if (v46 <= v47)
    {
      v47 = 0;
    }

    *(v6 + 88) = v47;
    v48 = *(v6 + 80);
    if (*(v48 + 8) <= 0xFFuLL)
    {
      goto LABEL_95;
    }

    v49 = atomic_exchange((*(v48 + 16) + 128), v47);
    v50 = *(v6 + 124);
    if (v49 == 0x80000000 || v50 != 0)
    {
      v52 = v50 + 1;
      *(v6 + 124) = v52;
      if (v52 >= *(v6 + 120))
      {
        if (*(v6 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v6 + 100));
        }

        *(v6 + 124) = 0;
      }
    }

    *(v6 + 64) = v7;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v6 + 72, &v70, v9);
  if (v72 != 1)
  {
    v28 = 1;
    v29 = 16;
    goto LABEL_33;
  }

  if (WTF::ObjectIdentifierGeneric<IPC::SyncRequestIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    goto LABEL_96;
  }

  v13 = v70;
  v12 = v71;
  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  if (!IPC::Connection::pushPendingSyncRequestID(*(v6 + 8), IdentifierInternal))
  {
    v26 = 12;
LABEL_31:
    v29 = v26;
LABEL_32:
    v28 = 1;
    goto LABEL_33;
  }

  if (v12 <= 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E25134CLL);
  }

  *v13 = 4025;
  v15 = v13 + 1;
  v16 = -v15 & 7 | 8;
  v17 = v12 - 2 - v16;
  if (v12 - 2 < v16 || (*(v15 + (-v15 & 7)) = IdentifierInternal, v18 = v15 + v16, v19 = -v18 & 3 | 4, v17 < v19))
  {
    IPC::Connection::popPendingSyncRequestID(*(v6 + 8));
    if (v72)
    {
      if (v71 > 1)
      {
        *v70 = 3197;
        v53 = (*(v6 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
        v54 = *(v6 + 72);
        if (v53 + 16 >= v54)
        {
          v53 = 0;
        }

        v55 = v53 + 16;
        if (v54 <= v55)
        {
          v56 = 0;
        }

        else
        {
          v56 = v55;
        }

        *(v6 + 88) = v56;
        v57 = *(v6 + 80);
        if (*(v57 + 8) <= 0xFFuLL)
        {
          goto LABEL_95;
        }

        atomic_exchange((*(v57 + 16) + 128), v56);
        *(v6 + 124) = 0;
        v58 = *(v6 + 8);
        IPC::Connection::createSyncMessageEncoder(0xFB9, v7, &v75);
        IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v75, a2);
        v27 = IPC::Connection::sendSyncMessage(v58, v76, &v75, 0, &v73, v9);
        if (v74)
        {
          if (v74 != 1)
          {
            goto LABEL_25;
          }

          v29 = v73;
          v28 = 1;
          goto LABEL_86;
        }

        v29 = v73;
        v73 = 0;
        if (*(v29 + 50) == 3194)
        {
          v60 = 11;
        }

        else
        {
          if (IPC::Decoder::decode<std::tuple<BOOL>>(v29) > 0xFFu)
          {
            v28 = 0;
            goto LABEL_83;
          }

          v60 = 14;
        }

        IPC::Decoder::~Decoder(v29);
        bmalloc::api::tzoneFree(v61, v62);
        v28 = 1;
        v29 = v60;
LABEL_83:
        if (!v74)
        {
          v63 = v73;
          v73 = 0;
          if (v63)
          {
            IPC::Decoder::~Decoder(v63);
            bmalloc::api::tzoneFree(v68, v69);
          }
        }

LABEL_86:
        v64 = v75;
        v75 = 0;
        if (v64)
        {
          IPC::Encoder::~Encoder(v64, v59);
          bmalloc::api::tzoneFree(v65, v66);
        }

        goto LABEL_33;
      }

LABEL_96:
      __break(0xC471u);
      JUMPOUT(0x19E25132CLL);
    }

LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  *&v18[-v18 & 3] = a2;
  v20 = v12 - v17 + v19;
  if (v20 <= 0x10)
  {
    v20 = 16;
  }

  v21 = (*(v6 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v22 = *(v6 + 72);
  if (v21 + 16 >= v22)
  {
    v21 = 0;
  }

  v23 = v21 + v20;
  if (v22 <= v23)
  {
    v23 = 0;
  }

  *(v6 + 88) = v23;
  v24 = *(v6 + 80);
  if (*(v24 + 8) <= 0xFFuLL)
  {
    goto LABEL_95;
  }

  if (atomic_exchange((*(v24 + 16) + 128), v23) == 0x80000000 || *(v6 + 124))
  {
    if (*(v6 + 112) == 1)
    {
      MEMORY[0x19EB16320](*(v6 + 100));
    }

    *(v6 + 124) = 0;
  }

  *(v6 + 88) = 0;
  IPC::Connection::waitForSyncReply(*(v6 + 8), IdentifierInternal, 0xFB9u, &v75, v9);
  v25 = v76;
  if (v76)
  {
    if (v76 == 255)
    {
      v67 = IPC::Connection::popPendingSyncRequestID(*(v6 + 8));
      mpark::throw_bad_variant_access(v67);
    }

    v26 = v75;
    v27 = IPC::Connection::popPendingSyncRequestID(*(v6 + 8));
    if (v25 != 1)
    {
LABEL_25:
      mpark::throw_bad_variant_access(v27);
    }

    goto LABEL_31;
  }

  v29 = v75;
  IPC::Connection::popPendingSyncRequestID(*(v6 + 8));
  if (*(v29 + 50) == 3194)
  {
    v26 = 11;
LABEL_30:
    IPC::Decoder::~Decoder(v29);
    bmalloc::api::tzoneFree(v30, v31);
    goto LABEL_31;
  }

  if (IPC::Decoder::decode<std::tuple<BOOL>>(v29) <= 0xFFu)
  {
    v26 = 14;
    goto LABEL_30;
  }

  v28 = 0;
LABEL_33:
  if (atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v6);
    v11.n128_f64[0] = IPC::StreamClientConnection::operator delete(v6);
  }

  v32 = *(a1 + 6);
  if (v32)
  {
    v33 = v32[4];
    v32[4] = v33 + 1;
    if (v33)
    {
      v32[4] = v33;
    }

    else
    {
      (*(*v32 + 8))(v32, v11);
    }
  }

  v34 = *a3;
  *a3 = 0;
  (*(*v34 + 16))(v34);
  result = (*(*v34 + 8))(v34);
  if (v29)
  {
    v36 = v28;
  }

  else
  {
    v36 = 1;
  }

  if ((v36 & 1) == 0)
  {
    IPC::Decoder::~Decoder(v29);
    return bmalloc::api::tzoneFree(v37, v38);
  }

  return result;
}

void WebKit::WebGPU::RemotePresentationContextProxy::present(WebKit::WebGPU::RemotePresentationContextProxy *this, int a2, int a3)
{
  if (a3)
  {
    v4 = *(*(this + 5) + 80);
    atomic_fetch_add(v4, 1u);
    v5 = *(this + 3);
    v6 = *(v4 + 128);
    v7 = INFINITY;
    if (fabs(v6) != INFINITY)
    {
      WTF::ApproximateTime::now(this);
      v7 = v6 + v8;
    }

    if (*(v4 + 64) != v5)
    {
      IPC::StreamClientConnectionBuffer::tryAcquire(v4 + 72, &v43, v7);
      if (v45 != 1)
      {
        goto LABEL_18;
      }

      v17 = v44;
      if (v44 <= 1)
      {
        __break(0xC471u);
        JUMPOUT(0x19E251720);
      }

      v18 = v43;
      *v43 = 3198;
      v19 = v18 + 1;
      if (v17 - 2 < (-v19 & 7 | 8uLL))
      {
        goto LABEL_18;
      }

      v20 = -v19 & 7;
      *(v19 + v20) = v5;
      v21 = 6;
      if (v20 > 6)
      {
        v21 = v20;
      }

      v22 = v21 + 10;
      v23 = (*(v4 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v24 = *(v4 + 72);
      if (v23 + 16 >= v24)
      {
        v23 = 0;
      }

      v25 = v22 + v23;
      if (v24 <= v25)
      {
        v25 = 0;
      }

      *(v4 + 88) = v25;
      v26 = *(v4 + 80);
      if (*(v26 + 8) <= 0xFFuLL)
      {
        goto LABEL_53;
      }

      v27 = atomic_exchange((*(v26 + 16) + 128), v25);
      v28 = *(v4 + 124);
      if (v27 == 0x80000000 || v28 != 0)
      {
        v30 = v28 + 1;
        *(v4 + 124) = v30;
        if (v30 >= *(v4 + 120))
        {
          if (*(v4 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v4 + 100));
          }

          *(v4 + 124) = 0;
        }
      }

      *(v4 + 64) = v5;
    }

    IPC::StreamClientConnectionBuffer::tryAcquire(v4 + 72, &v43, v7);
    if (v45 != 1)
    {
LABEL_18:
      if (atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v4);
        IPC::StreamClientConnection::operator delete(v4);
      }

      return;
    }

    v10 = v44;
    if (v44 <= 1)
    {
      __break(0xC471u);
      goto LABEL_54;
    }

    v11 = v43;
    *v43 = 1510;
    v12 = v11 + 1;
    if (v10 - 2 < (-v12 & 3 | 4uLL))
    {
      v42 = v5;
      if (v45)
      {
        if (v44 <= 1)
        {
          __break(0xC471u);
        }

        else
        {
          *v43 = 3197;
          v31 = (*(v4 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
          v32 = *(v4 + 72);
          if (v31 + 16 >= v32)
          {
            v31 = 0;
          }

          v33 = v31 + 16;
          if (v32 <= v33)
          {
            v34 = 0;
          }

          else
          {
            v34 = v33;
          }

          *(v4 + 88) = v34;
          v35 = *(v4 + 80);
          if (*(v35 + 8) > 0xFFuLL)
          {
            atomic_exchange((*(v35 + 16) + 128), v34);
            *(v4 + 124) = 0;
            v36 = *(v4 + 8);
            v37 = IPC::Encoder::operator new(0x238, v9);
            *v37 = 1510;
            *(v37 + 2) = 0;
            *(v37 + 3) = 0;
            *(v37 + 1) = v42;
            *(v37 + 68) = 0;
            *(v37 + 70) = 0;
            *(v37 + 69) = 0;
            IPC::Encoder::encodeHeader(v37);
            v46 = v37;
            IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v37, a2);
            IPC::Connection::sendMessageImpl(v36, &v46, 1, 0);
            v39 = v46;
            v46 = 0;
            if (v39)
            {
              IPC::Encoder::~Encoder(v39, v38);
              bmalloc::api::tzoneFree(v40, v41);
            }

            goto LABEL_18;
          }
        }
      }
    }

    else
    {
      *(v12 + (-v12 & 3)) = a2;
      v13 = (*(v4 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v15 = *(v4 + 72);
      v14 = *(v4 + 80);
      if (v13 + 16 >= v15)
      {
        v13 = 0;
      }

      v16 = v13 + 16;
      if (v15 <= v16)
      {
        v16 = 0;
      }

      *(v4 + 88) = v16;
      if (*(v14 + 8) > 0xFFuLL)
      {
        if (atomic_exchange((*(v14 + 16) + 128), v16) == 0x80000000 || *(v4 + 124))
        {
          if (*(v4 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v4 + 100));
          }

          *(v4 + 124) = 0;
        }

        goto LABEL_18;
      }
    }

LABEL_53:
    __break(1u);
LABEL_54:
    JUMPOUT(0x19E2516F8);
  }
}

void WebKit::WebGPU::RemoteCompositorIntegrationProxy::paintCompositedResultsToCanvas(WebKit::WebGPU::RemoteCompositorIntegrationProxy *this, WebCore::ImageBuffer *a2, int a3)
{
  v6 = (*(*a2 + 24))(a2);
  v7 = *(a2 + 15);
  v8 = *(*(this + 5) + 80);
  atomic_fetch_add(v8, 1u);
  v9 = *(this + 3);
  v10 = *(v8 + 128);
  v11 = INFINITY;
  if (fabs(v10) != INFINITY)
  {
    WTF::ApproximateTime::now(v6);
    v11 = v10 + v12;
  }

  if (*(v8 + 64) != v9)
  {
    goto LABEL_58;
  }

LABEL_4:
  IPC::StreamClientConnectionBuffer::tryAcquire(v8 + 72, &v83, v11);
  if (v85 != 1)
  {
    v37 = 1;
    v36 = 16;
    goto LABEL_47;
  }

  if (WTF::ObjectIdentifierGeneric<IPC::SyncRequestIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    goto LABEL_102;
  }

  v14 = v83;
  v13 = v84;
  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  if (!IPC::Connection::pushPendingSyncRequestID(*(v8 + 8), IdentifierInternal))
  {
    LODWORD(v36) = 12;
    goto LABEL_45;
  }

  if (v13 <= 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E251DC8);
  }

  *v14 = 4024;
  v17 = v14 + 1;
  v18 = -v17 & 7 | 8;
  v19 = v13 - 2 - v18;
  if (v13 - 2 < v18 || (*(v17 + (-v17 & 7)) = IdentifierInternal, v20 = v17 + v18, v21 = -v20 & 7 | 8, v22 = v19 >= v21, v23 = v19 - v21, !v22) || (*&v20[-v20 & 7] = v7, v24 = &v20[v21], v25 = -v24 & 3 | 4, v23 < v25))
  {
    IPC::Connection::popPendingSyncRequestID(*(v8 + 8));
    if ((v85 & 1) == 0)
    {
LABEL_57:
      while (1)
      {
        __break(1u);
LABEL_58:
        IPC::StreamClientConnectionBuffer::tryAcquire(v8 + 72, &v83, v11);
        if (v85 != 1)
        {
          break;
        }

        v52 = v84;
        if (v84 <= 1)
        {
          __break(0xC471u);
          JUMPOUT(0x19E251DF0);
        }

        v53 = v83;
        *v83 = 3198;
        v54 = v53 + 1;
        if (v52 - 2 < (-v54 & 7 | 8uLL))
        {
          v36 = 18;
          goto LABEL_46;
        }

        v55 = -v54 & 7;
        *(v54 + v55) = v9;
        v56 = 6;
        if (v55 > 6)
        {
          v56 = v55;
        }

        v57 = v56 + 10;
        v58 = (*(v8 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
        v59 = *(v8 + 72);
        if (v58 + 16 >= v59)
        {
          v58 = 0;
        }

        v60 = v57 + v58;
        if (v59 <= v60)
        {
          v60 = 0;
        }

        *(v8 + 88) = v60;
        v61 = *(v8 + 80);
        if (*(v61 + 8) > 0xFFuLL)
        {
          v62 = atomic_exchange((*(v61 + 16) + 128), v60);
          v63 = *(v8 + 124);
          if (v62 == 0x80000000 || v63 != 0)
          {
            v65 = v63 + 1;
            *(v8 + 124) = v65;
            if (v65 >= *(v8 + 120))
            {
              if (*(v8 + 112) == 1)
              {
                MEMORY[0x19EB16320](*(v8 + 100));
              }

              *(v8 + 124) = 0;
            }
          }

          *(v8 + 64) = v9;
          goto LABEL_4;
        }
      }

      v36 = 16;
LABEL_46:
      v37 = 1;
      goto LABEL_47;
    }

    if (v84 > 1)
    {
      *v83 = 3197;
      v66 = (*(v8 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v67 = *(v8 + 72);
      if (v66 + 16 >= v67)
      {
        v66 = 0;
      }

      v68 = v66 + 16;
      if (v67 <= v68)
      {
        v69 = 0;
      }

      else
      {
        v69 = v68;
      }

      *(v8 + 88) = v69;
      v70 = *(v8 + 80);
      if (*(v70 + 8) <= 0xFFuLL)
      {
        goto LABEL_57;
      }

      atomic_exchange((*(v70 + 16) + 128), v69);
      *(v8 + 124) = 0;
      v71 = *(v8 + 8);
      IPC::Connection::createSyncMessageEncoder(0xFB8, v9, &v88);
      v72 = v88;
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v88, v7);
      IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v72, a3);
      v45 = IPC::Connection::sendSyncMessage(v71, v89, &v88, 0, &v86, v11);
      if (v87)
      {
        if (v87 != 1)
        {
          goto LABEL_41;
        }

        v36 = v86;
        v37 = 1;
      }

      else
      {
        v36 = v86;
        v86 = 0;
        if (*(v36 + 50) == 3194)
        {
          IPC::Decoder::~Decoder(v36);
          bmalloc::api::tzoneFree(v74, v75);
          if (!v87)
          {
            v76 = v86;
            v86 = 0;
            if (v76)
            {
              IPC::Decoder::~Decoder(v76);
              bmalloc::api::tzoneFree(v77, v78);
            }
          }

          v37 = 1;
          v36 = 11;
        }

        else
        {
          v37 = 0;
        }
      }

      v79 = v88;
      v88 = 0;
      if (v79)
      {
        IPC::Encoder::~Encoder(v79, v73);
        bmalloc::api::tzoneFree(v80, v81);
      }

      goto LABEL_47;
    }

LABEL_102:
    __break(0xC471u);
    JUMPOUT(0x19E251DA8);
  }

  *&v24[-v24 & 3] = a3;
  v26 = v13 - v23 + v25;
  if (v26 <= 0x10)
  {
    v26 = 16;
  }

  v27 = (*(v8 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v28 = *(v8 + 72);
  if (v27 + 16 >= v28)
  {
    v27 = 0;
  }

  v29 = v27 + v26;
  if (v28 <= v29)
  {
    v29 = 0;
  }

  *(v8 + 88) = v29;
  v30 = *(v8 + 80);
  if (*(v30 + 8) <= 0xFFuLL)
  {
    goto LABEL_57;
  }

  if (atomic_exchange((*(v30 + 16) + 128), v29) == 0x80000000 || *(v8 + 124))
  {
    if (*(v8 + 112) == 1)
    {
      MEMORY[0x19EB16320](*(v8 + 100));
    }

    *(v8 + 124) = 0;
  }

  a3 = 0x80000000;
  while (1)
  {
    v31 = *(v8 + 80);
    if (*(v31 + 8) <= 0xFFuLL)
    {
      goto LABEL_57;
    }

    v32 = atomic_exchange(*(v31 + 16), 0x80000000uLL);
    v33 = *(v8 + 80);
    if (*(v33 + 8) <= 0xFFuLL)
    {
      goto LABEL_57;
    }

    if (!(v32 | atomic_load_explicit((*(v33 + 16) + 128), memory_order_acquire) & 0xFFFFFFFF7FFFFFFFLL))
    {
      break;
    }

    if (*(v8 + 112) == 1)
    {
      v34 = IPC::Semaphore::waitFor((v8 + 104), v11);
      if (v34)
      {
        WTF::ApproximateTime::now(v34);
        if (v35 < v11)
        {
          continue;
        }
      }
    }

    IPC::Connection::popPendingSyncRequestID(*(v8 + 8));
    LODWORD(v36) = 17;
    goto LABEL_45;
  }

  v38 = *(v8 + 80);
  if (*(v38 + 8) <= 0xFFuLL)
  {
    goto LABEL_57;
  }

  atomic_store(0, *(v38 + 16));
  *(v8 + 88) = 0;
  v39 = *(v8 + 80);
  v40 = *(v39 + 8);
  if (v40 <= 0xFF)
  {
    goto LABEL_57;
  }

  v41 = *(v8 + 72);
  v9 = *(v39 + 16);
  v7 = v40 - 256;
  if (v41)
  {
    v51 = v41 - 1;
    v22 = v7 >= v51;
    v7 = v51;
    if (!v22)
    {
      goto LABEL_57;
    }
  }

  v36 = IPC::Decoder::operator new(0x58, v16);
  if (*(IPC::Decoder::Decoder(v36, v9 + 256, v7, *(v8 + 64)) + 25) == 3197)
  {
    IPC::Decoder::~Decoder(v36);
    bmalloc::api::tzoneFree(v42, v43);
    IPC::Connection::waitForSyncReply(*(v8 + 8), IdentifierInternal, 0xFB8u, &v88, v11);
    v44 = v89;
    if (v89)
    {
      if (v89 == 255)
      {
        v82 = IPC::Connection::popPendingSyncRequestID(*(v8 + 8));
        mpark::throw_bad_variant_access(v82);
      }

      LODWORD(v36) = v88;
      v45 = IPC::Connection::popPendingSyncRequestID(*(v8 + 8));
      if (v44 != 1)
      {
LABEL_41:
        mpark::throw_bad_variant_access(v45);
      }

LABEL_45:
      v36 = v36;
      goto LABEL_46;
    }

    v36 = v88;
  }

  IPC::Connection::popPendingSyncRequestID(*(v8 + 8));
  if (*(v36 + 50) == 3194)
  {
    IPC::Decoder::~Decoder(v36);
    bmalloc::api::tzoneFree(v46, v47);
    LODWORD(v36) = 11;
    goto LABEL_45;
  }

  v37 = 0;
LABEL_47:
  if (atomic_fetch_add(v8, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v8);
    IPC::StreamClientConnection::operator delete(v8);
  }

  if (v36)
  {
    v48 = v37;
  }

  else
  {
    v48 = 1;
  }

  if ((v48 & 1) == 0)
  {
    IPC::Decoder::~Decoder(v36);
    bmalloc::api::tzoneFree(v49, v50);
  }
}

void WebKit::WebGPU::RemoteCompositorIntegrationProxy::updateContentsHeadroom(WebKit::WebGPU::RemoteCompositorIntegrationProxy *this, float a2)
{
  v3 = *(*(this + 5) + 80);
  atomic_fetch_add(v3, 1u);
  v4 = *(this + 3);
  v5 = *(v3 + 128);
  v6 = INFINITY;
  if (fabs(v5) != INFINITY)
  {
    WTF::ApproximateTime::now(this);
    v6 = v5 + v7;
  }

  if (*(v3 + 64) == v4)
  {
    goto LABEL_4;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v3 + 72, &v40, v6);
  if (v42 == 1)
  {
    v16 = v41;
    if (v41 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E2521A8);
    }

    v17 = v40;
    *v40 = 3198;
    v18 = v17 + 1;
    if (v16 - 2 >= (-v18 & 7 | 8uLL))
    {
      v19 = -v18 & 7;
      *(v18 + v19) = v4;
      if (v19 != 7)
      {
        v19 = 6;
      }

      v20 = (*(v3 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v22 = *(v3 + 72);
      v21 = *(v3 + 80);
      v23 = v19 + 10;
      if (v20 + 16 >= v22)
      {
        v20 = 0;
      }

      v24 = v23 + v20;
      if (v22 <= v24)
      {
        v24 = 0;
      }

      *(v3 + 88) = v24;
      if (*(v21 + 8) <= 0xFFuLL)
      {
        goto LABEL_51;
      }

      v25 = atomic_exchange((*(v21 + 16) + 128), v24);
      v26 = *(v3 + 124);
      if (v25 == 0x80000000 || v26 != 0)
      {
        v28 = v26 + 1;
        *(v3 + 124) = v28;
        if (v28 >= *(v3 + 120))
        {
          if (*(v3 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v3 + 100));
          }

          *(v3 + 124) = 0;
        }
      }

      *(v3 + 64) = v4;
LABEL_4:
      IPC::StreamClientConnectionBuffer::tryAcquire(v3 + 72, &v40, v6);
      if (v42 != 1)
      {
        goto LABEL_17;
      }

      v9 = v41;
      if (v41 <= 1)
      {
        __break(0xC471u);
        goto LABEL_52;
      }

      v10 = v40;
      *v40 = 1006;
      v11 = v10 + 1;
      if (v9 - 2 >= (-v11 & 3 | 4uLL))
      {
        *(v11 + (-v11 & 3)) = a2;
        v12 = (*(v3 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
        v14 = *(v3 + 72);
        v13 = *(v3 + 80);
        if (v12 + 16 >= v14)
        {
          v12 = 0;
        }

        v15 = v12 + 16;
        if (v14 <= v15)
        {
          v15 = 0;
        }

        *(v3 + 88) = v15;
        if (*(v13 + 8) > 0xFFuLL)
        {
          if (atomic_exchange((*(v13 + 16) + 128), v15) == 0x80000000 || *(v3 + 124))
          {
            if (*(v3 + 112) == 1)
            {
              MEMORY[0x19EB16320](*(v3 + 100));
            }

            *(v3 + 124) = 0;
          }

          goto LABEL_17;
        }

        goto LABEL_51;
      }

      v39 = v4;
      if (v42)
      {
        if (v41 <= 1)
        {
          __break(0xC471u);
        }

        else
        {
          *v40 = 3197;
          v29 = (*(v3 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
          v31 = *(v3 + 72);
          v30 = *(v3 + 80);
          if (v29 + 16 >= v31)
          {
            v29 = 0;
          }

          v32 = v29 + 16;
          if (v31 <= v32)
          {
            v32 = 0;
          }

          *(v3 + 88) = v32;
          if (*(v30 + 8) > 0xFFuLL)
          {
            atomic_exchange((*(v30 + 16) + 128), v32);
            *(v3 + 124) = 0;
            v33 = *(v3 + 8);
            v34 = IPC::Encoder::operator new(0x238, v8);
            *v34 = 1006;
            *(v34 + 2) = 0;
            *(v34 + 3) = 0;
            *(v34 + 1) = v39;
            *(v34 + 68) = 0;
            *(v34 + 70) = 0;
            *(v34 + 69) = 0;
            IPC::Encoder::encodeHeader(v34);
            v43 = v34;
            IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(v34, a2);
            IPC::Connection::sendMessageImpl(v33, &v43, 1, 0);
            v36 = v43;
            v43 = 0;
            if (v36)
            {
              IPC::Encoder::~Encoder(v36, v35);
              bmalloc::api::tzoneFree(v37, v38);
            }

            goto LABEL_17;
          }
        }
      }

LABEL_51:
      __break(1u);
LABEL_52:
      JUMPOUT(0x19E252188);
    }
  }

LABEL_17:
  if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    IPC::StreamClientConnection::operator delete(v3);
  }
}

void WebKit::WebGPU::RemoteComputePassEncoderProxy::~RemoteComputePassEncoderProxy(WebKit::WebGPU::RemoteComputePassEncoderProxy *this)
{
  v2 = *(*(this + 6) + 80);
  atomic_fetch_add(v2, 1u);
  v3 = *(this + 4);
  v4 = *(v2 + 128);
  v5 = INFINITY;
  if (fabs(v4) != INFINITY)
  {
    WTF::ApproximateTime::now(this);
    v5 = v4 + v6;
  }

  if (*(v2 + 64) != v3)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(v2 + 72, &v31, v5);
    if (v33 != 1)
    {
      goto LABEL_16;
    }

    v18 = v32;
    if (v32 <= 1)
    {
LABEL_55:
      __break(0xC471u);
      JUMPOUT(0x19E252558);
    }

    v19 = v31;
    *v31 = 3198;
    v20 = v19 + 1;
    if (v18 - 2 < (-v20 & 7 | 8uLL))
    {
      goto LABEL_16;
    }

    v21 = -v20 & 7;
    *(v20 + v21) = v3;
    if (v21 != 7)
    {
      v21 = 6;
    }

    v22 = (*(v2 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v24 = *(v2 + 72);
    v23 = *(v2 + 80);
    v25 = v21 + 10;
    if (v22 + 16 >= v24)
    {
      v22 = 0;
    }

    v26 = v25 + v22;
    if (v24 <= v26)
    {
      v26 = 0;
    }

    *(v2 + 88) = v26;
    if (*(v23 + 8) <= 0xFFuLL)
    {
      goto LABEL_54;
    }

    v27 = atomic_exchange((*(v23 + 16) + 128), v26);
    v28 = *(v2 + 124);
    if (v27 == 0x80000000 || v28 != 0)
    {
      v30 = v28 + 1;
      *(v2 + 124) = v30;
      if (v30 >= *(v2 + 120))
      {
        if (*(v2 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v2 + 100));
        }

        *(v2 + 124) = 0;
      }
    }

    *(v2 + 64) = v3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v2 + 72, &v31, v5);
  if (v33 != 1)
  {
    goto LABEL_16;
  }

  if (v32 <= 1)
  {
    goto LABEL_55;
  }

  *v31 = 1007;
  v9 = (*(v2 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v11 = *(v2 + 72);
  v10 = *(v2 + 80);
  if (v9 + 16 >= v11)
  {
    v9 = 0;
  }

  v12 = v9 + 16;
  if (v11 <= v12)
  {
    v12 = 0;
  }

  *(v2 + 88) = v12;
  if (*(v10 + 8) <= 0xFFuLL)
  {
    goto LABEL_54;
  }

  if (atomic_exchange((*(v10 + 16) + 128), v12) == 0x80000000 || *(v2 + 124))
  {
    if (*(v2 + 112) == 1)
    {
      MEMORY[0x19EB16320](*(v2 + 100));
    }

    *(v2 + 124) = 0;
  }

LABEL_16:
  if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2);
    v8.n128_f64[0] = IPC::StreamClientConnection::operator delete(v2);
  }

  v13 = *(this + 6);
  *(this + 6) = 0;
  if (v13 && atomic_fetch_add(v13 + 7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v13 + 7);
    (*(*v13 + 24))(v13, v8);
  }

  v14 = *(this + 5);
  *(this + 5) = 0;
  if (v14)
  {
    if (v14[2] == 1)
    {
      (*(*v14 + 8))(v14, v8);
    }

    else
    {
      --v14[2];
    }
  }

  *this = &unk_1F1125C78;
  v15 = *(this + 3);
  *(this + 3) = 0;
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, v7);
  }

  if (*(this + 4) != 1)
  {
    __break(0xC471u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v16 = *(this + 1);
  if (v16)
  {
    *(v16 + 8) = 0;
    v17 = *(this + 1);
    *(this + 1) = 0;
    if (v17)
    {
      if (atomic_fetch_add(v17, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v17);
        WTF::fastFree(v17, v7);
      }
    }
  }
}

{
  WebKit::WebGPU::RemoteComputePassEncoderProxy::~RemoteComputePassEncoderProxy(this);

  bmalloc::api::tzoneFree(v1, v2);
}

void WebKit::WebGPU::RemoteComputePassEncoderProxy::setPipeline(WebKit::WebGPU::RemoteComputePassEncoderProxy *this, const WebCore::WebGPU::ComputePipeline *a2)
{
  v3 = (*(**(this + 5) + 88))(*(this + 5), a2);
  v4 = v3;
  v5 = *(*(this + 6) + 80);
  atomic_fetch_add(v5, 1u);
  v6 = *(this + 4);
  v7 = *(v5 + 128);
  v8 = INFINITY;
  if (fabs(v7) != INFINITY)
  {
    WTF::ApproximateTime::now(v3);
    v8 = v7 + v9;
  }

  if (*(v5 + 64) == v6)
  {
    goto LABEL_4;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v5 + 72, &v45, v8);
  if (v47 == 1)
  {
    v20 = v46;
    if (v46 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E25295CLL);
    }

    v21 = v45;
    *v45 = 3198;
    v22 = v21 + 1;
    if (v20 - 2 >= (-v22 & 7 | 8uLL))
    {
      v23 = -v22 & 7;
      *(v22 + v23) = v6;
      if (v23 != 7)
      {
        v23 = 6;
      }

      v24 = (*(v5 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v26 = *(v5 + 72);
      v25 = *(v5 + 80);
      v27 = v23 + 10;
      if (v24 + 16 >= v26)
      {
        v24 = 0;
      }

      v28 = v27 + v24;
      if (v26 <= v28)
      {
        v28 = 0;
      }

      *(v5 + 88) = v28;
      if (*(v25 + 8) <= 0xFFuLL)
      {
        goto LABEL_54;
      }

      v29 = atomic_exchange((*(v25 + 16) + 128), v28);
      v30 = *(v5 + 124);
      if (v29 == 0x80000000 || v30 != 0)
      {
        v32 = v30 + 1;
        *(v5 + 124) = v32;
        if (v32 >= *(v5 + 120))
        {
          if (*(v5 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v5 + 100));
          }

          *(v5 + 124) = 0;
        }
      }

      *(v5 + 64) = v6;
LABEL_4:
      IPC::StreamClientConnectionBuffer::tryAcquire(v5 + 72, &v45, v8);
      if (v47 != 1)
      {
        goto LABEL_19;
      }

      v11 = v46;
      if (v46 <= 1)
      {
        __break(0xC471u);
        goto LABEL_55;
      }

      v12 = v45;
      *v45 = 1016;
      v13 = v12 + 1;
      if (v11 - 2 >= (-v13 & 7 | 8uLL))
      {
        v14 = -v13 & 7;
        *(v13 + v14) = v4;
        if (v14 != 7)
        {
          v14 = 6;
        }

        v15 = (*(v5 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
        v17 = *(v5 + 72);
        v16 = *(v5 + 80);
        v18 = v14 + 10;
        if (v15 + 16 >= v17)
        {
          v15 = 0;
        }

        v19 = v18 + v15;
        if (v17 <= v19)
        {
          v19 = 0;
        }

        *(v5 + 88) = v19;
        if (*(v16 + 8) > 0xFFuLL)
        {
          if (atomic_exchange((*(v16 + 16) + 128), v19) == 0x80000000 || *(v5 + 124))
          {
            if (*(v5 + 112) == 1)
            {
              MEMORY[0x19EB16320](*(v5 + 100));
            }

            *(v5 + 124) = 0;
          }

          goto LABEL_19;
        }

        goto LABEL_54;
      }

      v44 = v6;
      if (v47)
      {
        if (v46 <= 1)
        {
          __break(0xC471u);
        }

        else
        {
          *v45 = 3197;
          v33 = (*(v5 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
          v34 = *(v5 + 72);
          if (v33 + 16 >= v34)
          {
            v33 = 0;
          }

          v35 = v33 + 16;
          if (v34 <= v35)
          {
            v36 = 0;
          }

          else
          {
            v36 = v35;
          }

          *(v5 + 88) = v36;
          v37 = *(v5 + 80);
          if (*(v37 + 8) > 0xFFuLL)
          {
            atomic_exchange((*(v37 + 16) + 128), v36);
            *(v5 + 124) = 0;
            v38 = *(v5 + 8);
            v39 = IPC::Encoder::operator new(0x238, v10);
            *v39 = 1016;
            *(v39 + 2) = 0;
            *(v39 + 3) = 0;
            *(v39 + 1) = v44;
            *(v39 + 68) = 0;
            *(v39 + 70) = 0;
            *(v39 + 69) = 0;
            IPC::Encoder::encodeHeader(v39);
            v48 = v39;
            IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v39, v4);
            IPC::Connection::sendMessageImpl(v38, &v48, 1, 0);
            v41 = v48;
            v48 = 0;
            if (v41)
            {
              IPC::Encoder::~Encoder(v41, v40);
              bmalloc::api::tzoneFree(v42, v43);
            }

            goto LABEL_19;
          }
        }
      }

LABEL_54:
      __break(1u);
LABEL_55:
      JUMPOUT(0x19E252934);
    }
  }

LABEL_19:
  if (atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5);
    IPC::StreamClientConnection::operator delete(v5);
  }
}

void WebKit::WebGPU::RemoteComputePassEncoderProxy::dispatch(WebKit::WebGPU::RemoteComputePassEncoderProxy *this, int a2, int a3, int a4)
{
  v7 = *(*(this + 6) + 80);
  atomic_fetch_add(v7, 1u);
  v8 = *(this + 4);
  v9 = *(v7 + 128);
  v10 = INFINITY;
  if (fabs(v9) != INFINITY)
  {
    WTF::ApproximateTime::now(this);
    v10 = v9 + v11;
  }

  if (*(v7 + 64) == v8)
  {
    goto LABEL_4;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v7 + 72, &v52, v10);
  if (v54 == 1)
  {
    v28 = v53;
    if (v53 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E252D74);
    }

    v29 = v52;
    *v52 = 3198;
    v30 = v29 + 1;
    if (v28 - 2 >= (-v30 & 7 | 8uLL))
    {
      v31 = -v30 & 7;
      *(v30 + v31) = v8;
      if (v31 != 7)
      {
        v31 = 6;
      }

      v32 = (*(v7 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v34 = *(v7 + 72);
      v33 = *(v7 + 80);
      v35 = v31 + 10;
      if (v32 + 16 >= v34)
      {
        v32 = 0;
      }

      v36 = v35 + v32;
      if (v34 <= v36)
      {
        v36 = 0;
      }

      *(v7 + 88) = v36;
      if (*(v33 + 8) <= 0xFFuLL)
      {
        goto LABEL_55;
      }

      v37 = atomic_exchange((*(v33 + 16) + 128), v36);
      v38 = *(v7 + 124);
      if (v37 == 0x80000000 || v38 != 0)
      {
        v40 = v38 + 1;
        *(v7 + 124) = v40;
        if (v40 >= *(v7 + 120))
        {
          if (*(v7 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v7 + 100));
          }

          *(v7 + 124) = 0;
        }
      }

      *(v7 + 64) = v8;
LABEL_4:
      IPC::StreamClientConnectionBuffer::tryAcquire(v7 + 72, &v52, v10);
      if (v54 != 1)
      {
        goto LABEL_21;
      }

      v13 = v53;
      if (v53 <= 1)
      {
        __break(0xC471u);
        goto LABEL_56;
      }

      v14 = v52;
      *v52 = 1008;
      v15 = v14 + 1;
      v16 = -v15 & 3 | 4;
      v17 = v13 - 2 - v16;
      if (v13 - 2 >= v16)
      {
        *(v15 + (-v15 & 3)) = a2;
        v18 = v15 + v16;
        v19 = -v18 & 3 | 4;
        v20 = v17 - v19;
        if (v17 >= v19)
        {
          *(v18 + (-v18 & 3)) = a3;
          v21 = v18 + v19;
          v22 = -v21 & 3 | 4;
          if (v20 >= v22)
          {
            *(v21 + (-v21 & 3)) = a4;
            v23 = v13 - v20 + v22;
            if (v23 <= 0x10)
            {
              v23 = 16;
            }

            v24 = (*(v7 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
            v25 = *(v7 + 72);
            if (v24 + 16 >= v25)
            {
              v24 = 0;
            }

            v26 = v24 + v23;
            if (v25 <= v26)
            {
              v26 = 0;
            }

            *(v7 + 88) = v26;
            v27 = *(v7 + 80);
            if (*(v27 + 8) > 0xFFuLL)
            {
              if (atomic_exchange((*(v27 + 16) + 128), v26) == 0x80000000 || *(v7 + 124))
              {
                if (*(v7 + 112) == 1)
                {
                  MEMORY[0x19EB16320](*(v7 + 100));
                }

                *(v7 + 124) = 0;
              }

              goto LABEL_21;
            }

            goto LABEL_55;
          }
        }
      }

      v51 = v8;
      if (v54)
      {
        if (v53 <= 1)
        {
          __break(0xC471u);
        }

        else
        {
          *v52 = 3197;
          v41 = (*(v7 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
          v43 = *(v7 + 72);
          v42 = *(v7 + 80);
          if (v41 + 16 >= v43)
          {
            v41 = 0;
          }

          v44 = v41 + 16;
          if (v43 <= v44)
          {
            v44 = 0;
          }

          *(v7 + 88) = v44;
          if (*(v42 + 8) > 0xFFuLL)
          {
            atomic_exchange((*(v42 + 16) + 128), v44);
            *(v7 + 124) = 0;
            v45 = *(v7 + 8);
            v46 = IPC::Encoder::operator new(0x238, v12);
            *v46 = 1008;
            *(v46 + 2) = 0;
            *(v46 + 3) = 0;
            *(v46 + 1) = v51;
            *(v46 + 68) = 0;
            *(v46 + 70) = 0;
            *(v46 + 69) = 0;
            IPC::Encoder::encodeHeader(v46);
            v55 = v46;
            IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v46, a2);
            IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v46, a3);
            IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v46, a4);
            IPC::Connection::sendMessageImpl(v45, &v55, 1, 0);
            v48 = v55;
            v55 = 0;
            if (v48)
            {
              IPC::Encoder::~Encoder(v48, v47);
              bmalloc::api::tzoneFree(v49, v50);
            }

            goto LABEL_21;
          }
        }
      }

LABEL_55:
      __break(1u);
LABEL_56:
      JUMPOUT(0x19E252D54);
    }
  }

LABEL_21:
  if (atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v7);
    IPC::StreamClientConnection::operator delete(v7);
  }
}

void WebKit::WebGPU::RemoteComputePassEncoderProxy::dispatchIndirect(WebKit::WebGPU::RemoteComputePassEncoderProxy *this, const WebCore::WebGPU::Buffer *a2, uint64_t a3)
{
  v5 = (*(**(this + 5) + 40))(*(this + 5), a2);
  v6 = v5;
  v7 = *(*(this + 6) + 80);
  atomic_fetch_add(v7, 1u);
  v8 = *(this + 4);
  v9 = *(v7 + 128);
  v10 = INFINITY;
  if (fabs(v9) != INFINITY)
  {
    WTF::ApproximateTime::now(v5);
    v10 = v9 + v11;
  }

  if (*(v7 + 64) == v8)
  {
    goto LABEL_4;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v7 + 72, &v50, v10);
  if (v52 == 1)
  {
    v25 = v51;
    if (v51 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E253194);
    }

    v26 = v50;
    *v50 = 3198;
    v27 = v26 + 1;
    if (v25 - 2 >= (-v27 & 7 | 8uLL))
    {
      v28 = -v27 & 7;
      *(v27 + v28) = v8;
      if (v28 != 7)
      {
        v28 = 6;
      }

      v29 = (*(v7 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v31 = *(v7 + 72);
      v30 = *(v7 + 80);
      v32 = v28 + 10;
      if (v29 + 16 >= v31)
      {
        v29 = 0;
      }

      v33 = v32 + v29;
      if (v31 <= v33)
      {
        v33 = 0;
      }

      *(v7 + 88) = v33;
      if (*(v30 + 8) <= 0xFFuLL)
      {
        goto LABEL_55;
      }

      v34 = atomic_exchange((*(v30 + 16) + 128), v33);
      v35 = *(v7 + 124);
      if (v34 == 0x80000000 || v35 != 0)
      {
        v37 = v35 + 1;
        *(v7 + 124) = v37;
        if (v37 >= *(v7 + 120))
        {
          if (*(v7 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v7 + 100));
          }

          *(v7 + 124) = 0;
        }
      }

      *(v7 + 64) = v8;
LABEL_4:
      IPC::StreamClientConnectionBuffer::tryAcquire(v7 + 72, &v50, v10);
      if (v52 != 1)
      {
        goto LABEL_20;
      }

      v13 = v51;
      if (v51 <= 1)
      {
        __break(0xC471u);
        goto LABEL_56;
      }

      v14 = v50;
      *v50 = 1009;
      v15 = v14 + 1;
      v16 = -v15 & 7 | 8;
      v17 = v13 - 2 - v16;
      if (v13 - 2 >= v16)
      {
        *(v15 + (-v15 & 7)) = v6;
        v18 = v15 + v16;
        v19 = -v18 & 7 | 8;
        if (v17 >= v19)
        {
          *(v18 + (-v18 & 7)) = a3;
          v20 = v13 - v17 + v19;
          if (v20 <= 0x10)
          {
            v20 = 16;
          }

          v21 = (*(v7 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
          v22 = *(v7 + 72);
          if (v21 + 16 >= v22)
          {
            v21 = 0;
          }

          v23 = v21 + v20;
          if (v22 <= v23)
          {
            v23 = 0;
          }

          *(v7 + 88) = v23;
          v24 = *(v7 + 80);
          if (*(v24 + 8) > 0xFFuLL)
          {
            if (atomic_exchange((*(v24 + 16) + 128), v23) == 0x80000000 || *(v7 + 124))
            {
              if (*(v7 + 112) == 1)
              {
                MEMORY[0x19EB16320](*(v7 + 100));
              }

              *(v7 + 124) = 0;
            }

            goto LABEL_20;
          }

          goto LABEL_55;
        }
      }

      v49 = v8;
      if (v52)
      {
        if (v51 <= 1)
        {
          __break(0xC471u);
        }

        else
        {
          *v50 = 3197;
          v38 = (*(v7 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
          v39 = *(v7 + 72);
          if (v38 + 16 >= v39)
          {
            v38 = 0;
          }

          v40 = v38 + 16;
          if (v39 <= v40)
          {
            v41 = 0;
          }

          else
          {
            v41 = v40;
          }

          *(v7 + 88) = v41;
          v42 = *(v7 + 80);
          if (*(v42 + 8) > 0xFFuLL)
          {
            atomic_exchange((*(v42 + 16) + 128), v41);
            *(v7 + 124) = 0;
            v43 = *(v7 + 8);
            v44 = IPC::Encoder::operator new(0x238, v12);
            *v44 = 1009;
            *(v44 + 2) = 0;
            *(v44 + 3) = 0;
            *(v44 + 1) = v49;
            *(v44 + 68) = 0;
            *(v44 + 70) = 0;
            *(v44 + 69) = 0;
            IPC::Encoder::encodeHeader(v44);
            v53 = v44;
            IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v44, v6);
            IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v44, a3);
            IPC::Connection::sendMessageImpl(v43, &v53, 1, 0);
            v46 = v53;
            v53 = 0;
            if (v46)
            {
              IPC::Encoder::~Encoder(v46, v45);
              bmalloc::api::tzoneFree(v47, v48);
            }

            goto LABEL_20;
          }
        }
      }

LABEL_55:
      __break(1u);
LABEL_56:
      JUMPOUT(0x19E25316CLL);
    }
  }

LABEL_20:
  if (atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v7);
    IPC::StreamClientConnection::operator delete(v7);
  }
}

void WebKit::WebGPU::RemoteComputePassEncoderProxy::end(WebKit::WebGPU::RemoteComputePassEncoderProxy *this)
{
  v1 = *(*(this + 6) + 80);
  atomic_fetch_add(v1, 1u);
  v2 = *(this + 4);
  v3 = *(v1 + 128);
  v4 = INFINITY;
  if (fabs(v3) != INFINITY)
  {
    WTF::ApproximateTime::now(this);
    v4 = v3 + v5;
  }

  if (*(v1 + 64) != v2)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(v1 + 72, &v23, v4);
    if (v25 != 1)
    {
      goto LABEL_16;
    }

    v10 = v24;
    if (v24 <= 1)
    {
LABEL_40:
      __break(0xC471u);
      return;
    }

    v11 = v23;
    *v23 = 3198;
    v12 = v11 + 1;
    if (v10 - 2 < (-v12 & 7 | 8uLL))
    {
      goto LABEL_16;
    }

    v13 = -v12 & 7;
    *(v12 + v13) = v2;
    if (v13 != 7)
    {
      v13 = 6;
    }

    v14 = (*(v1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v16 = *(v1 + 72);
    v15 = *(v1 + 80);
    v17 = v13 + 10;
    if (v14 + 16 >= v16)
    {
      v14 = 0;
    }

    v18 = v17 + v14;
    if (v16 <= v18)
    {
      v18 = 0;
    }

    *(v1 + 88) = v18;
    if (*(v15 + 8) <= 0xFFuLL)
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v19 = atomic_exchange((*(v15 + 16) + 128), v18);
    v20 = *(v1 + 124);
    if (v19 == 0x80000000 || v20 != 0)
    {
      v22 = v20 + 1;
      *(v1 + 124) = v22;
      if (v22 >= *(v1 + 120))
      {
        if (*(v1 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v1 + 100));
        }

        *(v1 + 124) = 0;
      }
    }

    *(v1 + 64) = v2;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v1 + 72, &v23, v4);
  if (v25 == 1)
  {
    if (v24 <= 1)
    {
      __break(0xC471u);
    }

    else
    {
      *v23 = 1010;
      v6 = (*(v1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v8 = *(v1 + 72);
      v7 = *(v1 + 80);
      if (v6 + 16 >= v8)
      {
        v6 = 0;
      }

      v9 = v6 + 16;
      if (v8 <= v9)
      {
        v9 = 0;
      }

      *(v1 + 88) = v9;
      if (*(v7 + 8) > 0xFFuLL)
      {
        if (atomic_exchange((*(v7 + 16) + 128), v9) == 0x80000000 || *(v1 + 124))
        {
          if (*(v1 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v1 + 100));
          }

          *(v1 + 124) = 0;
        }

        goto LABEL_16;
      }
    }

    goto LABEL_39;
  }

LABEL_16:
  if (atomic_fetch_add(v1, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v1);
    IPC::StreamClientConnection::operator delete(v1);
  }
}

double WebKit::WebGPU::RemoteComputePassEncoderProxy::setBindGroup(WTF::ApproximateTime *a1, int a2, uint64_t a3, uint64_t a4)
{
  v11 = a2;
  LOBYTE(v9) = 0;
  v10 = 0;
  if (a3)
  {
    v6 = (*(**(a1 + 5) + 24))(*(a1 + 5), a3);
    v10 = 1;
    v9 = v6;
  }

  v8[0] = &v11;
  v8[1] = &v9;
  v8[2] = a4;
  return WebKit::WebGPU::RemoteComputePassEncoderProxy::send<Messages::RemoteComputePassEncoder::SetBindGroup>(a1, v8);
}

double WebKit::WebGPU::RemoteComputePassEncoderProxy::send<Messages::RemoteComputePassEncoder::SetBindGroup>(WTF::ApproximateTime *a1, uint64_t a2)
{
  v3 = *(*(a1 + 6) + 80);
  atomic_fetch_add(v3, 1u);
  v4 = *(a1 + 4);
  v5 = *(v3 + 128);
  v6 = INFINITY;
  if (fabs(v5) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v6 = v5 + v7;
  }

  if (*(v3 + 64) == v4)
  {
    while (1)
    {
      IPC::StreamClientConnectionBuffer::tryAcquire(v3 + 72, &v46, v6);
      if (v48 != 1)
      {
        goto LABEL_32;
      }

      v9 = v46;
      v10 = v47;
      v51 = v47;
      if (v47 <= 1)
      {
        break;
      }

      *v46 = 1014;
      v11 = v9 + 1;
      v12 = v10 - 2;
      v13 = -v11 & 3 | 4;
      v14 = v12 >= v13;
      v15 = v12 - v13;
      if (v14)
      {
        *(v11 + (-v11 & 3)) = **a2;
        v49 = (v11 + v13);
        v50 = v15;
      }

      else
      {
        v49 = 0;
        v50 = 0;
      }

      IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::StreamConnectionEncoder,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>> const&>(&v49, *(a2 + 8));
      IPC::ArgumentCoder<std::optional<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::StreamConnectionEncoder,std::optional<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> const&>(&v49, *(a2 + 16));
      if (v49)
      {
        v17 = v51 - v50;
        if (v51 - v50 <= 0x10)
        {
          v17 = 16;
        }

        v18 = (*(v3 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
        v19 = *(v3 + 72);
        if (v18 + 16 >= v19)
        {
          v18 = 0;
        }

        v20 = v18 + v17;
        if (v19 <= v20)
        {
          v20 = 0;
        }

        *(v3 + 88) = v20;
        v21 = *(v3 + 80);
        if (*(v21 + 8) > 0xFFuLL)
        {
          if (atomic_exchange((*(v21 + 16) + 128), v20) == 0x80000000 || *(v3 + 124))
          {
            if (*(v3 + 112) == 1)
            {
              MEMORY[0x19EB16320](*(v3 + 100));
            }

            *(v3 + 124) = 0;
          }

          goto LABEL_32;
        }
      }

      else if (v48)
      {
        if (v47 <= 1)
        {
          __break(0xC471u);
          JUMPOUT(0x19E2538C8);
        }

        *v46 = 3197;
        v22 = (*(v3 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
        v23 = *(v3 + 72);
        if (v22 + 16 >= v23)
        {
          v22 = 0;
        }

        v24 = v22 + 16;
        v25 = v23 <= v24 ? 0 : v24;
        *(v3 + 88) = v25;
        v26 = *(v3 + 80);
        if (*(v26 + 8) > 0xFFuLL)
        {
          atomic_exchange((*(v26 + 16) + 128), v25);
          *(v3 + 124) = 0;
          v27 = *(v3 + 8);
          v28 = IPC::Encoder::operator new(0x238, v16);
          *v28 = 1014;
          *(v28 + 2) = 0;
          *(v28 + 3) = 0;
          *(v28 + 1) = v4;
          *(v28 + 68) = 0;
          *(v28 + 70) = 0;
          *(v28 + 69) = 0;
          IPC::Encoder::encodeHeader(v28);
          v49 = v28;
          IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v28, **a2);
          IPC::ArgumentCoder<std::optional<unsigned long long>,void>::encode<IPC::Encoder,std::optional<unsigned long long>>(v28, *(a2 + 8));
          IPC::ArgumentCoder<std::optional<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::Encoder,std::optional<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> const&>(v28, *(a2 + 16));
          IPC::Connection::sendMessageImpl(v27, &v49, 1, 0);
          v30 = v49;
          v49 = 0;
          if (v30)
          {
            IPC::Encoder::~Encoder(v30, v29);
            bmalloc::api::tzoneFree(v31, v32);
          }

          goto LABEL_32;
        }
      }

LABEL_52:
      __break(1u);
LABEL_53:
      if (*(v3 + 112) == 1)
      {
        MEMORY[0x19EB16320](*(v3 + 100));
      }

      *(v3 + 124) = 0;
LABEL_51:
      *(v3 + 64) = v4;
    }

    __break(0xC471u);
LABEL_59:
    JUMPOUT(0x19E2538A8);
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v3 + 72, &v49, v6);
  if (v51 != 1)
  {
    goto LABEL_32;
  }

  v33 = v50;
  if (v50 <= 1)
  {
    __break(0xC471u);
    goto LABEL_59;
  }

  v34 = v49;
  *v49 = 3198;
  v35 = v34 + 2;
  if (v33 - 2 >= (-v35 & 7 | 8uLL))
  {
    v36 = -v35 & 7;
    *&v35[v36] = v4;
    if (v36 != 7)
    {
      v36 = 6;
    }

    v37 = (*(v3 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v39 = *(v3 + 72);
    v38 = *(v3 + 80);
    v40 = v36 + 10;
    if (v37 + 16 >= v39)
    {
      v37 = 0;
    }

    v41 = v40 + v37;
    if (v39 <= v41)
    {
      v41 = 0;
    }

    *(v3 + 88) = v41;
    if (*(v38 + 8) <= 0xFFuLL)
    {
      goto LABEL_52;
    }

    v42 = atomic_exchange((*(v38 + 16) + 128), v41);
    v43 = *(v3 + 124);
    if (v42 == 0x80000000 || v43 != 0)
    {
      v45 = v43 + 1;
      *(v3 + 124) = v45;
      if (v45 >= *(v3 + 120))
      {
        goto LABEL_53;
      }
    }

    goto LABEL_51;
  }

LABEL_32:
  if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);

    return IPC::StreamClientConnection::operator delete(v3);
  }

  return result;
}

WTF *WebKit::WebGPU::RemoteComputePassEncoderProxy::setBindGroup(WTF *result, void *a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, unsigned int a7)
{
  v11 = result;
  v22 = a2;
  LOBYTE(v20) = 0;
  v21 = 0;
  if (a3)
  {
    result = (*(**(result + 5) + 24))(*(result + 5), a3);
    v21 = 1;
    v20 = result;
  }

  if (a5 < a6 || a5 - a6 < a7)
  {
    __break(1u);
LABEL_11:
    v14 = 0;
    LODWORD(v15) = 0;
    return WTF::fastFree(result, a2);
  }

  WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector<unsigned int const,18446744073709551615ul>(&v14, (a4 + 4 * a6), a7);
  v16 = v14;
  v12 = v15;
  v14 = 0;
  v15 = 0;
  v17 = v12;
  v18 = 1;
  v19[0] = &v22;
  v19[1] = &v20;
  v19[2] = &v16;
  WebKit::WebGPU::RemoteComputePassEncoderProxy::send<Messages::RemoteComputePassEncoder::SetBindGroup>(v11, v19);
  if (v18 == 1)
  {
    v13 = v16;
    if (v16)
    {
      v16 = 0;
      LODWORD(v17) = 0;
      WTF::fastFree(v13, a2);
    }
  }

  result = v14;
  if (v14)
  {
    goto LABEL_11;
  }

  return result;
}

void WebKit::WebGPU::RemoteComputePassEncoderProxy::pushDebugGroup(WTF::ApproximateTime *a1, uint64_t *a2)
{
  v3 = *(*(a1 + 6) + 80);
  atomic_fetch_add(v3, 1u);
  v4 = *(a1 + 4);
  v5 = *(v3 + 128);
  v6 = INFINITY;
  if (fabs(v5) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v6 = v5 + v7;
  }

  if (*(v3 + 64) != v4)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(v3 + 72, &v42, v6);
    if (v44 != 1)
    {
      goto LABEL_28;
    }

    v26 = v43;
    if (v43 <= 1)
    {
LABEL_53:
      __break(0xC471u);
      JUMPOUT(0x19E253D78);
    }

    v27 = v42;
    *v42 = 3198;
    v28 = v27 + 2;
    if (v26 - 2 < (-v28 & 7 | 8uLL))
    {
      goto LABEL_28;
    }

    v29 = -v28 & 7;
    *&v28[v29] = v4;
    if (v29 != 7)
    {
      v29 = 6;
    }

    v30 = (*(v3 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v32 = *(v3 + 72);
    v31 = *(v3 + 80);
    v33 = v29 + 10;
    if (v30 + 16 >= v32)
    {
      v30 = 0;
    }

    v34 = v33 + v30;
    if (v32 <= v34)
    {
      v34 = 0;
    }

    *(v3 + 88) = v34;
    if (*(v31 + 8) <= 0xFFuLL)
    {
      goto LABEL_52;
    }

    v35 = atomic_exchange((*(v31 + 16) + 128), v34);
    v36 = *(v3 + 124);
    if (v35 == 0x80000000 || v36 != 0)
    {
      v38 = v36 + 1;
      *(v3 + 124) = v38;
      if (v38 >= *(v3 + 120))
      {
        if (*(v3 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v3 + 100));
        }

        *(v3 + 124) = 0;
      }
    }

    *(v3 + 64) = v4;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v3 + 72, &v39, v6);
  if (v41 != 1)
  {
    goto LABEL_28;
  }

  v8 = v39;
  v9 = v40;
  v44 = v40;
  if (v40 <= 1)
  {
    goto LABEL_53;
  }

  *v39 = 1013;
  v42 = (v8 + 1);
  v43 = v9 - 2;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::StreamConnectionEncoder>(&v42, a2);
  if (v42)
  {
    v11 = 16;
    if (v44 - v43 > 0x10)
    {
      v11 = v44 - v43;
    }

    v12 = (*(v3 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v14 = *(v3 + 72);
    v13 = *(v3 + 80);
    if (v12 + 16 >= v14)
    {
      v12 = 0;
    }

    v15 = v12 + v11;
    if (v14 <= v15)
    {
      v15 = 0;
    }

    *(v3 + 88) = v15;
    if (*(v13 + 8) > 0xFFuLL)
    {
      if (atomic_exchange((*(v13 + 16) + 128), v15) == 0x80000000 || *(v3 + 124))
      {
        if (*(v3 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v3 + 100));
        }

        *(v3 + 124) = 0;
      }

      goto LABEL_28;
    }

    goto LABEL_52;
  }

  if ((v41 & 1) == 0)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (v40 <= 1)
  {
    __break(0xC471u);
    goto LABEL_52;
  }

  *v39 = 3197;
  v16 = (*(v3 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v18 = *(v3 + 72);
  v17 = *(v3 + 80);
  if (v16 + 16 >= v18)
  {
    v16 = 0;
  }

  v19 = v16 + 16;
  if (v18 <= v19)
  {
    v19 = 0;
  }

  *(v3 + 88) = v19;
  if (*(v17 + 8) <= 0xFFuLL)
  {
    goto LABEL_52;
  }

  atomic_exchange((*(v17 + 16) + 128), v19);
  *(v3 + 124) = 0;
  v20 = *(v3 + 8);
  v21 = IPC::Encoder::operator new(0x238, v10);
  *v21 = 1013;
  *(v21 + 2) = 0;
  *(v21 + 3) = 0;
  *(v21 + 1) = v4;
  *(v21 + 68) = 0;
  *(v21 + 70) = 0;
  *(v21 + 69) = 0;
  IPC::Encoder::encodeHeader(v21);
  v42 = v21;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v21, a2);
  IPC::Connection::sendMessageImpl(v20, &v42, 1, 0);
  v23 = v42;
  v42 = 0;
  if (v23)
  {
    IPC::Encoder::~Encoder(v23, v22);
    bmalloc::api::tzoneFree(v24, v25);
  }

LABEL_28:
  if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    IPC::StreamClientConnection::operator delete(v3);
  }
}

void WebKit::WebGPU::RemoteComputePassEncoderProxy::popDebugGroup(WebKit::WebGPU::RemoteComputePassEncoderProxy *this)
{
  v1 = *(*(this + 6) + 80);
  atomic_fetch_add(v1, 1u);
  v2 = *(this + 4);
  v3 = *(v1 + 128);
  v4 = INFINITY;
  if (fabs(v3) != INFINITY)
  {
    WTF::ApproximateTime::now(this);
    v4 = v3 + v5;
  }

  if (*(v1 + 64) != v2)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(v1 + 72, &v23, v4);
    if (v25 != 1)
    {
      goto LABEL_16;
    }

    v10 = v24;
    if (v24 <= 1)
    {
LABEL_40:
      __break(0xC471u);
      return;
    }

    v11 = v23;
    *v23 = 3198;
    v12 = v11 + 1;
    if (v10 - 2 < (-v12 & 7 | 8uLL))
    {
      goto LABEL_16;
    }

    v13 = -v12 & 7;
    *(v12 + v13) = v2;
    if (v13 != 7)
    {
      v13 = 6;
    }

    v14 = (*(v1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v16 = *(v1 + 72);
    v15 = *(v1 + 80);
    v17 = v13 + 10;
    if (v14 + 16 >= v16)
    {
      v14 = 0;
    }

    v18 = v17 + v14;
    if (v16 <= v18)
    {
      v18 = 0;
    }

    *(v1 + 88) = v18;
    if (*(v15 + 8) <= 0xFFuLL)
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v19 = atomic_exchange((*(v15 + 16) + 128), v18);
    v20 = *(v1 + 124);
    if (v19 == 0x80000000 || v20 != 0)
    {
      v22 = v20 + 1;
      *(v1 + 124) = v22;
      if (v22 >= *(v1 + 120))
      {
        if (*(v1 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v1 + 100));
        }

        *(v1 + 124) = 0;
      }
    }

    *(v1 + 64) = v2;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v1 + 72, &v23, v4);
  if (v25 == 1)
  {
    if (v24 <= 1)
    {
      __break(0xC471u);
    }

    else
    {
      *v23 = 1012;
      v6 = (*(v1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v8 = *(v1 + 72);
      v7 = *(v1 + 80);
      if (v6 + 16 >= v8)
      {
        v6 = 0;
      }

      v9 = v6 + 16;
      if (v8 <= v9)
      {
        v9 = 0;
      }

      *(v1 + 88) = v9;
      if (*(v7 + 8) > 0xFFuLL)
      {
        if (atomic_exchange((*(v7 + 16) + 128), v9) == 0x80000000 || *(v1 + 124))
        {
          if (*(v1 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v1 + 100));
          }

          *(v1 + 124) = 0;
        }

        goto LABEL_16;
      }
    }

    goto LABEL_39;
  }

LABEL_16:
  if (atomic_fetch_add(v1, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v1);
    IPC::StreamClientConnection::operator delete(v1);
  }
}

void WebKit::WebGPU::RemoteComputePassEncoderProxy::insertDebugMarker(WTF::ApproximateTime *a1, uint64_t *a2)
{
  v3 = *(*(a1 + 6) + 80);
  atomic_fetch_add(v3, 1u);
  v4 = *(a1 + 4);
  v5 = *(v3 + 128);
  v6 = INFINITY;
  if (fabs(v5) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v6 = v5 + v7;
  }

  if (*(v3 + 64) != v4)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(v3 + 72, &v42, v6);
    if (v44 != 1)
    {
      goto LABEL_28;
    }

    v26 = v43;
    if (v43 <= 1)
    {
LABEL_53:
      __break(0xC471u);
      JUMPOUT(0x19E254384);
    }

    v27 = v42;
    *v42 = 3198;
    v28 = v27 + 2;
    if (v26 - 2 < (-v28 & 7 | 8uLL))
    {
      goto LABEL_28;
    }

    v29 = -v28 & 7;
    *&v28[v29] = v4;
    if (v29 != 7)
    {
      v29 = 6;
    }

    v30 = (*(v3 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v32 = *(v3 + 72);
    v31 = *(v3 + 80);
    v33 = v29 + 10;
    if (v30 + 16 >= v32)
    {
      v30 = 0;
    }

    v34 = v33 + v30;
    if (v32 <= v34)
    {
      v34 = 0;
    }

    *(v3 + 88) = v34;
    if (*(v31 + 8) <= 0xFFuLL)
    {
      goto LABEL_52;
    }

    v35 = atomic_exchange((*(v31 + 16) + 128), v34);
    v36 = *(v3 + 124);
    if (v35 == 0x80000000 || v36 != 0)
    {
      v38 = v36 + 1;
      *(v3 + 124) = v38;
      if (v38 >= *(v3 + 120))
      {
        if (*(v3 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v3 + 100));
        }

        *(v3 + 124) = 0;
      }
    }

    *(v3 + 64) = v4;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v3 + 72, &v39, v6);
  if (v41 != 1)
  {
    goto LABEL_28;
  }

  v8 = v39;
  v9 = v40;
  v44 = v40;
  if (v40 <= 1)
  {
    goto LABEL_53;
  }

  *v39 = 1011;
  v42 = (v8 + 1);
  v43 = v9 - 2;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::StreamConnectionEncoder>(&v42, a2);
  if (v42)
  {
    v11 = 16;
    if (v44 - v43 > 0x10)
    {
      v11 = v44 - v43;
    }

    v12 = (*(v3 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v14 = *(v3 + 72);
    v13 = *(v3 + 80);
    if (v12 + 16 >= v14)
    {
      v12 = 0;
    }

    v15 = v12 + v11;
    if (v14 <= v15)
    {
      v15 = 0;
    }

    *(v3 + 88) = v15;
    if (*(v13 + 8) > 0xFFuLL)
    {
      if (atomic_exchange((*(v13 + 16) + 128), v15) == 0x80000000 || *(v3 + 124))
      {
        if (*(v3 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v3 + 100));
        }

        *(v3 + 124) = 0;
      }

      goto LABEL_28;
    }

    goto LABEL_52;
  }

  if ((v41 & 1) == 0)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (v40 <= 1)
  {
    __break(0xC471u);
    goto LABEL_52;
  }

  *v39 = 3197;
  v16 = (*(v3 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v18 = *(v3 + 72);
  v17 = *(v3 + 80);
  if (v16 + 16 >= v18)
  {
    v16 = 0;
  }

  v19 = v16 + 16;
  if (v18 <= v19)
  {
    v19 = 0;
  }

  *(v3 + 88) = v19;
  if (*(v17 + 8) <= 0xFFuLL)
  {
    goto LABEL_52;
  }

  atomic_exchange((*(v17 + 16) + 128), v19);
  *(v3 + 124) = 0;
  v20 = *(v3 + 8);
  v21 = IPC::Encoder::operator new(0x238, v10);
  *v21 = 1011;
  *(v21 + 2) = 0;
  *(v21 + 3) = 0;
  *(v21 + 1) = v4;
  *(v21 + 68) = 0;
  *(v21 + 70) = 0;
  *(v21 + 69) = 0;
  IPC::Encoder::encodeHeader(v21);
  v42 = v21;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v21, a2);
  IPC::Connection::sendMessageImpl(v20, &v42, 1, 0);
  v23 = v42;
  v42 = 0;
  if (v23)
  {
    IPC::Encoder::~Encoder(v23, v22);
    bmalloc::api::tzoneFree(v24, v25);
  }

LABEL_28:
  if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    IPC::StreamClientConnection::operator delete(v3);
  }
}

void WebKit::WebGPU::RemoteComputePassEncoderProxy::setLabelInternal(WebKit::WebGPU::RemoteComputePassEncoderProxy *this, const WTF::String *a2)
{
  v3 = *(*(this + 6) + 80);
  atomic_fetch_add(v3, 1u);
  v4 = *(this + 4);
  v5 = *(v3 + 128);
  v6 = INFINITY;
  if (fabs(v5) != INFINITY)
  {
    WTF::ApproximateTime::now(this);
    v6 = v5 + v7;
  }

  if (*(v3 + 64) != v4)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(v3 + 72, &v42, v6);
    if (v44 != 1)
    {
      goto LABEL_28;
    }

    v26 = v43;
    if (v43 <= 1)
    {
LABEL_53:
      __break(0xC471u);
      JUMPOUT(0x19E254728);
    }

    v27 = v42;
    *v42 = 3198;
    v28 = v27 + 2;
    if (v26 - 2 < (-v28 & 7 | 8uLL))
    {
      goto LABEL_28;
    }

    v29 = -v28 & 7;
    *&v28[v29] = v4;
    if (v29 != 7)
    {
      v29 = 6;
    }

    v30 = (*(v3 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v32 = *(v3 + 72);
    v31 = *(v3 + 80);
    v33 = v29 + 10;
    if (v30 + 16 >= v32)
    {
      v30 = 0;
    }

    v34 = v33 + v30;
    if (v32 <= v34)
    {
      v34 = 0;
    }

    *(v3 + 88) = v34;
    if (*(v31 + 8) <= 0xFFuLL)
    {
      goto LABEL_52;
    }

    v35 = atomic_exchange((*(v31 + 16) + 128), v34);
    v36 = *(v3 + 124);
    if (v35 == 0x80000000 || v36 != 0)
    {
      v38 = v36 + 1;
      *(v3 + 124) = v38;
      if (v38 >= *(v3 + 120))
      {
        if (*(v3 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v3 + 100));
        }

        *(v3 + 124) = 0;
      }
    }

    *(v3 + 64) = v4;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v3 + 72, &v39, v6);
  if (v41 != 1)
  {
    goto LABEL_28;
  }

  v8 = v39;
  v9 = v40;
  v44 = v40;
  if (v40 <= 1)
  {
    goto LABEL_53;
  }

  *v39 = 1015;
  v42 = (v8 + 1);
  v43 = v9 - 2;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::StreamConnectionEncoder>(&v42, a2);
  if (v42)
  {
    v11 = 16;
    if (v44 - v43 > 0x10)
    {
      v11 = v44 - v43;
    }

    v12 = (*(v3 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v14 = *(v3 + 72);
    v13 = *(v3 + 80);
    if (v12 + 16 >= v14)
    {
      v12 = 0;
    }

    v15 = v12 + v11;
    if (v14 <= v15)
    {
      v15 = 0;
    }

    *(v3 + 88) = v15;
    if (*(v13 + 8) > 0xFFuLL)
    {
      if (atomic_exchange((*(v13 + 16) + 128), v15) == 0x80000000 || *(v3 + 124))
      {
        if (*(v3 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v3 + 100));
        }

        *(v3 + 124) = 0;
      }

      goto LABEL_28;
    }

    goto LABEL_52;
  }

  if ((v41 & 1) == 0)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (v40 <= 1)
  {
    __break(0xC471u);
    goto LABEL_52;
  }

  *v39 = 3197;
  v16 = (*(v3 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v18 = *(v3 + 72);
  v17 = *(v3 + 80);
  if (v16 + 16 >= v18)
  {
    v16 = 0;
  }

  v19 = v16 + 16;
  if (v18 <= v19)
  {
    v19 = 0;
  }

  *(v3 + 88) = v19;
  if (*(v17 + 8) <= 0xFFuLL)
  {
    goto LABEL_52;
  }

  atomic_exchange((*(v17 + 16) + 128), v19);
  *(v3 + 124) = 0;
  v20 = *(v3 + 8);
  v21 = IPC::Encoder::operator new(0x238, v10);
  *v21 = 1015;
  *(v21 + 2) = 0;
  *(v21 + 3) = 0;
  *(v21 + 1) = v4;
  *(v21 + 68) = 0;
  *(v21 + 70) = 0;
  *(v21 + 69) = 0;
  IPC::Encoder::encodeHeader(v21);
  v42 = v21;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v21, a2);
  IPC::Connection::sendMessageImpl(v20, &v42, 1, 0);
  v23 = v42;
  v42 = 0;
  if (v23)
  {
    IPC::Encoder::~Encoder(v23, v22);
    bmalloc::api::tzoneFree(v24, v25);
  }

LABEL_28:
  if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    IPC::StreamClientConnection::operator delete(v3);
  }
}

void WebKit::WebGPU::RemoteComputePipelineProxy::~RemoteComputePipelineProxy(WebKit::WebGPU::RemoteComputePipelineProxy *this)
{
  v2 = *(*(*(*(this + 6) + 64) + 72) + 80);
  atomic_fetch_add(v2, 1u);
  v3 = *(this + 4);
  v4 = *(v2 + 128);
  v5 = INFINITY;
  if (fabs(v4) != INFINITY)
  {
    WTF::ApproximateTime::now(this);
    v5 = v4 + v6;
  }

  if (*(v2 + 64) != v3)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(v2 + 72, &v31, v5);
    if (v33 != 1)
    {
      goto LABEL_16;
    }

    v18 = v32;
    if (v32 <= 1)
    {
LABEL_56:
      __break(0xC471u);
      JUMPOUT(0x19E254AFCLL);
    }

    v19 = v31;
    *v31 = 3198;
    v20 = v19 + 1;
    if (v18 - 2 < (-v20 & 7 | 8uLL))
    {
      goto LABEL_16;
    }

    v21 = -v20 & 7;
    *(v20 + v21) = v3;
    if (v21 != 7)
    {
      v21 = 6;
    }

    v22 = (*(v2 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v24 = *(v2 + 72);
    v23 = *(v2 + 80);
    v25 = v21 + 10;
    if (v22 + 16 >= v24)
    {
      v22 = 0;
    }

    v26 = v25 + v22;
    if (v24 <= v26)
    {
      v26 = 0;
    }

    *(v2 + 88) = v26;
    if (*(v23 + 8) <= 0xFFuLL)
    {
      goto LABEL_55;
    }

    v27 = atomic_exchange((*(v23 + 16) + 128), v26);
    v28 = *(v2 + 124);
    if (v27 == 0x80000000 || v28 != 0)
    {
      v30 = v28 + 1;
      *(v2 + 124) = v30;
      if (v30 >= *(v2 + 120))
      {
        if (*(v2 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v2 + 100));
        }

        *(v2 + 124) = 0;
      }
    }

    *(v2 + 64) = v3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v2 + 72, &v31, v5);
  if (v33 != 1)
  {
    goto LABEL_16;
  }

  if (v32 <= 1)
  {
    goto LABEL_56;
  }

  *v31 = 1017;
  v9 = (*(v2 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v11 = *(v2 + 72);
  v10 = *(v2 + 80);
  if (v9 + 16 >= v11)
  {
    v9 = 0;
  }

  v12 = v9 + 16;
  if (v11 <= v12)
  {
    v12 = 0;
  }

  *(v2 + 88) = v12;
  if (*(v10 + 8) <= 0xFFuLL)
  {
    goto LABEL_55;
  }

  if (atomic_exchange((*(v10 + 16) + 128), v12) == 0x80000000 || *(v2 + 124))
  {
    if (*(v2 + 112) == 1)
    {
      MEMORY[0x19EB16320](*(v2 + 100));
    }

    *(v2 + 124) = 0;
  }

LABEL_16:
  if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2);
    v8.n128_f64[0] = IPC::StreamClientConnection::operator delete(v2);
  }

  v13 = *(this + 6);
  *(this + 6) = 0;
  if (v13)
  {
    if (v13[4] == 1)
    {
      (*(*v13 + 8))(v13, v8);
    }

    else
    {
      --v13[4];
    }
  }

  v14 = *(this + 5);
  *(this + 5) = 0;
  if (v14)
  {
    if (v14[2] == 1)
    {
      (*(*v14 + 8))(v14, v8);
    }

    else
    {
      --v14[2];
    }
  }

  *this = &unk_1F1125CE8;
  v15 = *(this + 3);
  *(this + 3) = 0;
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, v7);
  }

  if (*(this + 4) != 1)
  {
    __break(0xC471u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v16 = *(this + 1);
  if (v16)
  {
    *(v16 + 8) = 0;
    v17 = *(this + 1);
    *(this + 1) = 0;
    if (v17)
    {
      if (atomic_fetch_add(v17, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v17);
        WTF::fastFree(v17, v7);
      }
    }
  }
}

{
  WebKit::WebGPU::RemoteComputePipelineProxy::~RemoteComputePipelineProxy(this);

  bmalloc::api::tzoneFree(v1, v2);
}

uint64_t WebKit::WebGPU::RemoteComputePipelineProxy::getBindGroupLayout@<X0>(WebKit::WebGPU::RemoteComputePipelineProxy *this@<X0>, int a2@<W1>, void *a3@<X8>)
{
  if (WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    __break(0xC471u);
    goto LABEL_60;
  }

  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  v7 = IdentifierInternal;
  v8 = *(*(*(*(this + 6) + 64) + 72) + 80);
  atomic_fetch_add(v8, 1u);
  v9 = *(this + 4);
  v10 = *(v8 + 128);
  v11 = INFINITY;
  if (fabs(v10) != INFINITY)
  {
    WTF::ApproximateTime::now(IdentifierInternal);
    v11 = v10 + v12;
  }

  if (*(v8 + 64) == v9)
  {
    goto LABEL_5;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v8 + 72, &v54, v11);
  if (v56 == 1)
  {
    v29 = v55;
    if (v55 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E255014);
    }

    v30 = v54;
    *v54 = 3198;
    v31 = v30 + 1;
    if (v29 - 2 >= (-v31 & 7 | 8uLL))
    {
      v32 = -v31 & 7;
      *(v31 + v32) = v9;
      v33 = 6;
      if (v32 > 6)
      {
        v33 = v32;
      }

      v34 = v33 + 10;
      v35 = (*(v8 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v36 = *(v8 + 72);
      if (v35 + 16 >= v36)
      {
        v35 = 0;
      }

      v37 = v34 + v35;
      if (v36 <= v37)
      {
        v37 = 0;
      }

      *(v8 + 88) = v37;
      v38 = *(v8 + 80);
      if (*(v38 + 8) <= 0xFFuLL)
      {
        goto LABEL_59;
      }

      v39 = atomic_exchange((*(v38 + 16) + 128), v37);
      v40 = *(v8 + 124);
      if (v39 == 0x80000000 || v40 != 0)
      {
        v42 = v40 + 1;
        *(v8 + 124) = v42;
        if (v42 >= *(v8 + 120))
        {
          if (*(v8 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v8 + 100));
          }

          *(v8 + 124) = 0;
        }
      }

      *(v8 + 64) = v9;
LABEL_5:
      IPC::StreamClientConnectionBuffer::tryAcquire(v8 + 72, &v54, v11);
      if (v56 != 1)
      {
        goto LABEL_21;
      }

      v14 = v55;
      if (v55 <= 1)
      {
        __break(0xC471u);
        JUMPOUT(0x19E254FECLL);
      }

      v15 = v54;
      *v54 = 1018;
      v16 = v15 + 1;
      v17 = -v16 & 3 | 4;
      v18 = v14 - 2 - v17;
      if (v14 - 2 >= v17)
      {
        *(v16 + (-v16 & 3)) = a2;
        v19 = v16 + v17;
        v20 = -v19 & 7 | 8;
        if (v18 >= v20)
        {
          *(v19 + (-v19 & 7)) = v7;
          v21 = v14 - v18 + v20;
          if (v21 <= 0x10)
          {
            v21 = 16;
          }

          v22 = (*(v8 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
          v23 = *(v8 + 72);
          if (v22 + 16 >= v23)
          {
            v22 = 0;
          }

          v24 = v22 + v21;
          if (v23 <= v24)
          {
            v24 = 0;
          }

          *(v8 + 88) = v24;
          v25 = *(v8 + 80);
          if (*(v25 + 8) > 0xFFuLL)
          {
            if (atomic_exchange((*(v25 + 16) + 128), v24) == 0x80000000 || *(v8 + 124))
            {
              if (*(v8 + 112) == 1)
              {
                MEMORY[0x19EB16320](*(v8 + 100));
              }

              *(v8 + 124) = 0;
            }

            goto LABEL_21;
          }

          goto LABEL_59;
        }
      }

      v53 = v9;
      if (v56)
      {
        if (v55 <= 1)
        {
          __break(0xC471u);
        }

        else
        {
          *v54 = 3197;
          v43 = (*(v8 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
          v44 = *(v8 + 72);
          if (v43 + 16 >= v44)
          {
            v43 = 0;
          }

          v45 = v43 + 16;
          if (v44 <= v45)
          {
            v46 = 0;
          }

          else
          {
            v46 = v45;
          }

          *(v8 + 88) = v46;
          v47 = *(v8 + 80);
          if (*(v47 + 8) > 0xFFuLL)
          {
            atomic_exchange((*(v47 + 16) + 128), v46);
            *(v8 + 124) = 0;
            v48 = *(v8 + 8);
            v49 = IPC::Encoder::operator new(0x238, v13);
            *v49 = 1018;
            *(v49 + 2) = 0;
            *(v49 + 3) = 0;
            *(v49 + 1) = v53;
            *(v49 + 68) = 0;
            *(v49 + 70) = 0;
            *(v49 + 69) = 0;
            IPC::Encoder::encodeHeader(v49);
            v57 = v49;
            IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v49, a2);
            IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v49, v7);
            IPC::Connection::sendMessageImpl(v48, &v57, 1, 0);
            v50 = v57;
            v57 = 0;
            if (v50)
            {
              IPC::Encoder::~Encoder(v50, v13);
              bmalloc::api::tzoneFree(v51, v52);
            }

            goto LABEL_21;
          }
        }
      }

LABEL_59:
      __break(1u);
LABEL_60:
      JUMPOUT(0x19E254FCCLL);
    }
  }

LABEL_21:
  if (atomic_fetch_add(v8, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v8);
    IPC::StreamClientConnection::operator delete(v8);
  }

  v26 = *(*(*(this + 6) + 64) + 72);
  atomic_fetch_add(v26 + 7, 1u);
  v27 = *(this + 5);
  result = WebKit::WebGPU::RemoteBindGroupLayoutProxy::operator new(0x38, v13);
  *(result + 16) = 1;
  *(result + 24) = 0;
  *(result + 32) = v7;
  *result = &unk_1F1125358;
  *(result + 8) = 0;
  ++*(v27 + 8);
  *(result + 40) = v27;
  atomic_fetch_add(v26 + 7, 1u);
  *(result + 48) = v26;
  *a3 = result;
  if (atomic_fetch_add(v26 + 7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v26 + 7);
    return (*(*v26 + 24))(v26);
  }

  return result;
}

void WebKit::WebGPU::RemoteComputePipelineProxy::setLabelInternal(WebKit::WebGPU::RemoteComputePipelineProxy *this, const WTF::String *a2)
{
  v3 = *(*(*(*(this + 6) + 64) + 72) + 80);
  atomic_fetch_add(v3, 1u);
  v4 = *(this + 4);
  v5 = *(v3 + 128);
  v6 = INFINITY;
  if (fabs(v5) != INFINITY)
  {
    WTF::ApproximateTime::now(this);
    v6 = v5 + v7;
  }

  if (*(v3 + 64) != v4)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(v3 + 72, &v43, v6);
    if (v45 != 1)
    {
      goto LABEL_29;
    }

    v27 = v44;
    if (v44 <= 1)
    {
LABEL_54:
      __break(0xC471u);
      JUMPOUT(0x19E2553ACLL);
    }

    v28 = v43;
    *v43 = 3198;
    v29 = v28 + 2;
    if (v27 - 2 < (-v29 & 7 | 8uLL))
    {
      goto LABEL_29;
    }

    v30 = -v29 & 7;
    *&v29[v30] = v4;
    if (v30 != 7)
    {
      v30 = 6;
    }

    v31 = (*(v3 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v33 = *(v3 + 72);
    v32 = *(v3 + 80);
    v34 = v30 + 10;
    if (v31 + 16 >= v33)
    {
      v31 = 0;
    }

    v35 = v34 + v31;
    if (v33 <= v35)
    {
      v35 = 0;
    }

    *(v3 + 88) = v35;
    if (*(v32 + 8) <= 0xFFuLL)
    {
      goto LABEL_53;
    }

    v36 = atomic_exchange((*(v32 + 16) + 128), v35);
    v37 = *(v3 + 124);
    if (v36 == 0x80000000 || v37 != 0)
    {
      v39 = v37 + 1;
      *(v3 + 124) = v39;
      if (v39 >= *(v3 + 120))
      {
        if (*(v3 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v3 + 100));
        }

        *(v3 + 124) = 0;
      }
    }

    *(v3 + 64) = v4;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v3 + 72, &v40, v6);
  if (v42 != 1)
  {
    goto LABEL_29;
  }

  v8 = v40;
  v9 = v41;
  v45 = v41;
  if (v41 <= 1)
  {
    goto LABEL_54;
  }

  *v40 = 1019;
  v43 = (v8 + 1);
  v44 = v9 - 2;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::StreamConnectionEncoder>(&v43, a2);
  if (v43)
  {
    v11 = 16;
    if (v45 - v44 > 0x10)
    {
      v11 = v45 - v44;
    }

    v12 = (*(v3 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v14 = *(v3 + 72);
    v13 = *(v3 + 80);
    if (v12 + 16 >= v14)
    {
      v12 = 0;
    }

    v15 = v12 + v11;
    if (v14 <= v15)
    {
      v15 = 0;
    }

    *(v3 + 88) = v15;
    if (*(v13 + 8) > 0xFFuLL)
    {
      if (atomic_exchange((*(v13 + 16) + 128), v15) == 0x80000000 || *(v3 + 124))
      {
        if (*(v3 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v3 + 100));
        }

        *(v3 + 124) = 0;
      }

      goto LABEL_29;
    }

    goto LABEL_53;
  }

  if ((v42 & 1) == 0)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  if (v41 <= 1)
  {
    __break(0xC471u);
    goto LABEL_53;
  }

  *v40 = 3197;
  v16 = (*(v3 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v17 = *(v3 + 72);
  if (v16 + 16 >= v17)
  {
    v16 = 0;
  }

  v18 = v16 + 16;
  if (v17 <= v18)
  {
    v19 = 0;
  }

  else
  {
    v19 = v18;
  }

  *(v3 + 88) = v19;
  v20 = *(v3 + 80);
  if (*(v20 + 8) <= 0xFFuLL)
  {
    goto LABEL_53;
  }

  atomic_exchange((*(v20 + 16) + 128), v19);
  *(v3 + 124) = 0;
  v21 = *(v3 + 8);
  v22 = IPC::Encoder::operator new(0x238, v10);
  *v22 = 1019;
  *(v22 + 2) = 0;
  *(v22 + 3) = 0;
  *(v22 + 1) = v4;
  *(v22 + 68) = 0;
  *(v22 + 70) = 0;
  *(v22 + 69) = 0;
  IPC::Encoder::encodeHeader(v22);
  v43 = v22;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v22, a2);
  IPC::Connection::sendMessageImpl(v21, &v43, 1, 0);
  v24 = v43;
  v43 = 0;
  if (v24)
  {
    IPC::Encoder::~Encoder(v24, v23);
    bmalloc::api::tzoneFree(v25, v26);
  }

LABEL_29:
  if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    IPC::StreamClientConnection::operator delete(v3);
  }
}

void WebKit::WebGPU::RemoteDeviceProxy::createCommandEncoder(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  LOBYTE(v56) = 0;
  v57 = 0;
  if (*(a2 + 8) == 1)
  {
    v5 = *a2;
    if (*a2)
    {
      atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
    }

    v56 = v5;
    v57 = 1;
  }

  if (WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    __break(0xC471u);
    goto LABEL_90;
  }

  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  v7 = IdentifierInternal;
  v8 = *(*(a1[8] + 72) + 80);
  atomic_fetch_add(v8, 1u);
  v9 = a1[6];
  v10 = *(v8 + 128);
  v11 = INFINITY;
  if (fabs(v10) != INFINITY)
  {
    WTF::ApproximateTime::now(IdentifierInternal);
    v11 = v10 + v12;
  }

  if (*(v8 + 64) != v9)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(v8 + 72, &v61, v11);
    if (v63 == 1)
    {
      v26 = v62;
      if (v62 <= 1)
      {
        __break(0xC471u);
        JUMPOUT(0x19E255A6CLL);
      }

      v27 = v61;
      *v61 = 3198;
      v28 = v27 + 2;
      if (v26 - 2 >= (-v28 & 7 | 8uLL))
      {
        v29 = -v28 & 7;
        *&v28[v29] = v9;
        v30 = 6;
        if (v29 > 6)
        {
          v30 = v29;
        }

        v31 = v30 + 10;
        v32 = (*(v8 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
        v33 = *(v8 + 72);
        if (v32 + 16 < v33)
        {
          goto LABEL_38;
        }

        goto LABEL_85;
      }
    }

LABEL_47:
    v25 = 0;
    goto LABEL_48;
  }

  while (1)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(v8 + 72, &v58, v11);
    if (v60 != 1)
    {
      goto LABEL_47;
    }

    v14 = v58;
    v15 = v59;
    v63 = v59;
    if (v59 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E255A4CLL);
    }

    *v58 = 1023;
    if ((v57 & 1) == 0)
    {
      if (v15 != 2)
      {
        *(v14 + 2) = 0;
        v17 = v15 - 3;
        v16 = (v14 + 3);
        v61 = v16;
        v62 = v17;
        goto LABEL_17;
      }

      goto LABEL_64;
    }

    if (v15 == 2)
    {
      goto LABEL_76;
    }

    *(v14 + 2) = 1;
    v61 = (v14 + 3);
    v62 = v15 - 3;
    if (v57)
    {
      break;
    }

LABEL_84:
    std::__throw_bad_optional_access[abi:sn200100]();
LABEL_85:
    v32 = 0;
LABEL_38:
    v34 = v31 + v32;
    if (v33 <= v34)
    {
      v34 = 0;
    }

    *(v8 + 88) = v34;
    v35 = *(v8 + 80);
    if (*(v35 + 8) <= 0xFFuLL)
    {
      goto LABEL_75;
    }

    v36 = atomic_exchange((*(v35 + 16) + 128), v34);
    v37 = *(v8 + 124);
    if (v36 == 0x80000000 || v37 != 0)
    {
      v39 = v37 + 1;
      *(v8 + 124) = v39;
      if (v39 >= *(v8 + 120))
      {
        if (*(v8 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v8 + 100));
        }

        *(v8 + 124) = 0;
      }
    }

    *(v8 + 64) = v9;
  }

  while (1)
  {
    IPC::ArgumentCoder<WTF::String,void>::encode<IPC::StreamConnectionEncoder>(&v61, &v56);
    v16 = v61;
    v17 = v62;
LABEL_17:
    v18 = -v16 & 7 | 8;
    if (v17 >= v18)
    {
      *(v16 + (-v16 & 7)) = v7;
      v19 = v62 - v18;
      if (v62 >= v18)
      {
        v61 = (v61 + v18);
        v62 -= v18;
        v20 = v63 - v19;
        if (v20 <= 0x10)
        {
          v20 = 16;
        }

        v21 = (*(v8 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
        v22 = *(v8 + 72);
        if (v21 + 16 >= v22)
        {
          v21 = 0;
        }

        v23 = v21 + v20;
        if (v22 <= v23)
        {
          v23 = 0;
        }

        *(v8 + 88) = v23;
        v24 = *(v8 + 80);
        if (*(v24 + 8) > 0xFFuLL)
        {
          if (atomic_exchange((*(v24 + 16) + 128), v23) == 0x80000000 || *(v8 + 124))
          {
            if (*(v8 + 112) == 1)
            {
              MEMORY[0x19EB16320](*(v8 + 100));
            }

            *(v8 + 124) = 0;
          }

          v25 = 1;
          goto LABEL_48;
        }
      }

      goto LABEL_75;
    }

LABEL_64:
    if (v60)
    {
      break;
    }

LABEL_75:
    __break(1u);
LABEL_76:
    v61 = 0;
    v62 = 0;
  }

  if (v59 <= 1)
  {
    __break(0xC471u);
LABEL_90:
    JUMPOUT(0x19E255A2CLL);
  }

  *v58 = 3197;
  v45 = (*(v8 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v46 = *(v8 + 72);
  if (v45 + 16 >= v46)
  {
    v45 = 0;
  }

  v47 = v45 + 16;
  if (v46 <= v47)
  {
    v48 = 0;
  }

  else
  {
    v48 = v47;
  }

  *(v8 + 88) = v48;
  v49 = *(v8 + 80);
  if (*(v49 + 8) <= 0xFFuLL)
  {
    goto LABEL_75;
  }

  atomic_exchange((*(v49 + 16) + 128), v48);
  *(v8 + 124) = 0;
  v50 = *(v8 + 8);
  v51 = IPC::Encoder::operator new(0x238, v13);
  *v51 = 1023;
  *(v51 + 2) = 0;
  *(v51 + 3) = 0;
  *(v51 + 1) = v9;
  *(v51 + 68) = 0;
  *(v51 + 70) = 0;
  *(v51 + 69) = 0;
  IPC::Encoder::encodeHeader(v51);
  v61 = v51;
  if (v57)
  {
    v64 = 1;
    IPC::Encoder::operator<<<BOOL>(v51, &v64);
    if (v57)
    {
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v51, &v56);
      goto LABEL_78;
    }

    goto LABEL_84;
  }

  v64 = 0;
  IPC::Encoder::operator<<<BOOL>(v51, &v64);
LABEL_78:
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v51, v7);
  v52 = IPC::Connection::sendMessageImpl(v50, &v61, 1, 0);
  v53 = v61;
  v61 = 0;
  if (v53)
  {
    IPC::Encoder::~Encoder(v53, v13);
    bmalloc::api::tzoneFree(v54, v55);
  }

  v25 = v52 == 0;
LABEL_48:
  if (atomic_fetch_add(v8, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v8);
    IPC::StreamClientConnection::operator delete(v8);
    if (!v25)
    {
      goto LABEL_57;
    }

LABEL_50:
    v40 = *(a1[8] + 72);
    atomic_fetch_add(v40 + 7, 1u);
    v41 = a1[7];
    if (WebKit::WebGPU::RemoteCommandEncoderProxy::s_heapRef)
    {
      NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::WebGPU::RemoteCommandEncoderProxy::s_heapRef, v13);
    }

    else
    {
      NonCompact = WebKit::WebGPU::RemoteCommandEncoderProxy::operatorNewSlow(0x38);
    }

    v43 = NonCompact;
    *(NonCompact + 16) = 1;
    *(NonCompact + 24) = 0;
    *(NonCompact + 32) = v7;
    *NonCompact = &unk_1F1125430;
    *(NonCompact + 8) = 0;
    ++*(v41 + 8);
    *(NonCompact + 40) = v41;
    atomic_fetch_add(v40 + 7, 1u);
    *(NonCompact + 48) = v40;
    if (atomic_fetch_add(v40 + 7, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v40 + 7);
      (*(*v40 + 24))(v40);
    }

    if (v57 == 1)
    {
      WebCore::WebGPU::CommandEncoder::setLabel(v43, &v56);
    }
  }

  else
  {
    if (v25)
    {
      goto LABEL_50;
    }

LABEL_57:
    v43 = 0;
  }

  *a3 = v43;
  if (v57)
  {
    v44 = v56;
    v56 = 0;
    if (v44)
    {
      if (atomic_fetch_add_explicit(v44, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v44, v13);
      }
    }
  }
}

void WebKit::WebGPU::RemoteDeviceProxy::createBindGroupLayout(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  WebKit::WebGPU::ConvertToBackingContext::convertToBacking(a2, &v54);
  if (v57 != 1)
  {
    *a3 = 0;
    return;
  }

  if (WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    __break(0xC471u);
    goto LABEL_72;
  }

  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  if ((v57 & 1) == 0)
  {
LABEL_72:
    __break(1u);
    goto LABEL_75;
  }

  v6 = IdentifierInternal;
  v7 = *(*(a1[8] + 72) + 80);
  atomic_fetch_add(v7, 1u);
  v8 = a1[6];
  v9 = *(v7 + 128);
  v10 = INFINITY;
  if (fabs(v9) != INFINITY)
  {
    WTF::ApproximateTime::now(IdentifierInternal);
    v10 = v9 + v11;
  }

  if (*(v7 + 64) != v8)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(v7 + 72, &v61, v10);
    if (v63 != 1)
    {
      goto LABEL_41;
    }

    v23 = v62;
    if (v62 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E256020);
    }

    v24 = v61;
    *v61 = 3198;
    v25 = v24 + 2;
    if (v23 - 2 < (-v25 & 7 | 8uLL))
    {
      goto LABEL_41;
    }

    v26 = -v25 & 7;
    *&v25[v26] = v8;
    v27 = 6;
    if (v26 > 6)
    {
      v27 = v26;
    }

    v28 = v27 + 10;
    v29 = (*(v7 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v30 = *(v7 + 72);
    if (v29 + 16 >= v30)
    {
      v29 = 0;
    }

    v31 = v28 + v29;
    if (v30 <= v31)
    {
      v31 = 0;
    }

    *(v7 + 88) = v31;
    v32 = *(v7 + 80);
    if (*(v32 + 8) <= 0xFFuLL)
    {
      goto LABEL_72;
    }

    v33 = atomic_exchange((*(v32 + 16) + 128), v31);
    v34 = *(v7 + 124);
    if (v33 == 0x80000000 || v34 != 0)
    {
      v36 = v34 + 1;
      *(v7 + 124) = v36;
      if (v36 >= *(v7 + 120))
      {
        if (*(v7 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v7 + 100));
        }

        *(v7 + 124) = 0;
      }
    }

    *(v7 + 64) = v8;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v7 + 72, &v58, v10);
  if (v60 != 1)
  {
LABEL_41:
    v22 = 0;
    goto LABEL_42;
  }

  v13 = v58;
  v14 = v59;
  v63 = v59;
  if (v59 <= 1)
  {
    goto LABEL_75;
  }

  *v58 = 1021;
  v61 = (v13 + 1);
  v62 = v14 - 2;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::StreamConnectionEncoder>(&v61, &v54);
  IPC::VectorArgumentCoder<false,WebKit::WebGPU::BindGroupLayoutEntry,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::StreamConnectionEncoder,WTF::Vector<WebKit::WebGPU::BindGroupLayoutEntry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(&v61, &v55);
  v15 = -v61 & 7 | 8;
  if (v62 >= v15)
  {
    *(v61 + (-v61 & 7)) = v6;
    v16 = v62 - v15;
    if (v62 >= v15)
    {
      v61 = (v61 + v15);
      v62 -= v15;
      v17 = v63 - v16;
      if (v17 <= 0x10)
      {
        v17 = 16;
      }

      v18 = (*(v7 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v19 = *(v7 + 72);
      if (v18 + 16 >= v19)
      {
        v18 = 0;
      }

      v20 = v18 + v17;
      if (v19 <= v20)
      {
        v20 = 0;
      }

      *(v7 + 88) = v20;
      v21 = *(v7 + 80);
      if (*(v21 + 8) > 0xFFuLL)
      {
        if (atomic_exchange((*(v21 + 16) + 128), v20) == 0x80000000 || *(v7 + 124))
        {
          if (*(v7 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v7 + 100));
          }

          *(v7 + 124) = 0;
        }

        v22 = 1;
        goto LABEL_42;
      }
    }

    goto LABEL_72;
  }

  v53 = v8;
  if ((v60 & 1) == 0)
  {
    goto LABEL_72;
  }

  if (v59 <= 1)
  {
LABEL_75:
    __break(0xC471u);
    JUMPOUT(0x19E255FF8);
  }

  *v58 = 3197;
  v42 = (*(v7 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v43 = *(v7 + 72);
  if (v42 + 16 >= v43)
  {
    v42 = 0;
  }

  v44 = v42 + 16;
  if (v43 <= v44)
  {
    v45 = 0;
  }

  else
  {
    v45 = v44;
  }

  *(v7 + 88) = v45;
  v46 = *(v7 + 80);
  if (*(v46 + 8) <= 0xFFuLL)
  {
    goto LABEL_72;
  }

  atomic_exchange((*(v46 + 16) + 128), v45);
  *(v7 + 124) = 0;
  v47 = *(v7 + 8);
  v48 = IPC::Encoder::operator new(0x238, v12);
  *v48 = 1021;
  *(v48 + 2) = 0;
  *(v48 + 3) = 0;
  *(v48 + 1) = v53;
  *(v48 + 68) = 0;
  *(v48 + 70) = 0;
  *(v48 + 69) = 0;
  IPC::Encoder::encodeHeader(v48);
  v61 = v48;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v48, &v54);
  IPC::VectorArgumentCoder<false,WebKit::WebGPU::BindGroupLayoutEntry,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebKit::WebGPU::BindGroupLayoutEntry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(v48, &v55);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v48, v6);
  v49 = IPC::Connection::sendMessageImpl(v47, &v61, 1, 0);
  v50 = v61;
  v61 = 0;
  if (v50)
  {
    IPC::Encoder::~Encoder(v50, v12);
    bmalloc::api::tzoneFree(v51, v52);
  }

  v22 = v49 == 0;
LABEL_42:
  if (atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v7);
    IPC::StreamClientConnection::operator delete(v7);
    if (v22)
    {
LABEL_44:
      v37 = *(a1[8] + 72);
      atomic_fetch_add(v37 + 7, 1u);
      v38 = a1[7];
      v39 = WebKit::WebGPU::RemoteBindGroupLayoutProxy::operator new(0x38, v12);
      *(v39 + 16) = 1;
      *(v39 + 24) = 0;
      *(v39 + 32) = v6;
      *v39 = &unk_1F1125358;
      *(v39 + 8) = 0;
      ++*(v38 + 8);
      *(v39 + 40) = v38;
      atomic_fetch_add(v37 + 7, 1u);
      *(v39 + 48) = v37;
      if (atomic_fetch_add(v37 + 7, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v37 + 7);
        (*(*v37 + 24))(v37);
      }

      if (v57)
      {
        WebCore::WebGPU::BindGroupLayout::setLabel(v39, &v54);
        goto LABEL_50;
      }

      goto LABEL_72;
    }
  }

  else if (v22)
  {
    goto LABEL_44;
  }

  v39 = 0;
LABEL_50:
  *a3 = v39;
  if (v57)
  {
    v40 = v55;
    if (v55)
    {
      v55 = 0;
      v56 = 0;
      WTF::fastFree(v40, v12);
    }

    v41 = v54;
    v54 = 0;
    if (v41)
    {
      if (atomic_fetch_add_explicit(v41, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v41, v12);
      }
    }
  }
}

uint64_t WebKit::WebGPU::RemoteDeviceProxy::RemoteDeviceProxy(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  v11 = *a2;
  *a2 = 0;
  *(a1 + 32) = v11;
  v12 = *a3;
  *a3 = 0;
  *(a1 + 40) = v12;
  *(a1 + 48) = a6;
  *a1 = &unk_1F11258D0;
  ++*(a5 + 8);
  *(a1 + 56) = a5;
  ++*(a4 + 16);
  *(a1 + 64) = a4;
  if (WebKit::WebGPU::RemoteQueueProxy::s_heapRef)
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::WebGPU::RemoteQueueProxy::s_heapRef, a2);
  }

  else
  {
    NonCompact = WebKit::WebGPU::RemoteQueueProxy::operatorNewSlow(0x40);
  }

  *(a1 + 72) = WebKit::WebGPU::RemoteQueueProxy::RemoteQueueProxy(NonCompact, a4, a5, a7);
  WebKit::SharedVideoFrameWriter::SharedVideoFrameWriter((a1 + 80), v14);
  LOBYTE(v36) = 1;
  WebKit::WebGPU::RemoteDeviceProxy::send<Messages::RemoteDevice::PauseAllErrorReporting>(a1, &v36);
  LOBYTE(v36) = 0;
  LOBYTE(v37) = 0;
  WebKit::WebGPU::RemoteDeviceProxy::createCommandEncoder(a1, &v36, &v47);
  v15 = v47;
  *(a1 + 112) = v47;
  v41 = 0;
  v42 = 0;
  LOBYTE(v43) = 0;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  v37 = 0;
  v38 = 0;
  v36 = 0;
  LOBYTE(v39) = 0;
  (*(*v15 + 16))(&v47);
  *(a1 + 120) = v47;
  if (v44 == 1)
  {
    v17 = v43;
    v43 = 0;
    if (v17)
    {
      if (atomic_fetch_add(v17, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v17);
        WTF::fastFree(v17, v16);
      }
    }
  }

  v18 = v42;
  v42 = 0;
  if (v18 && atomic_fetch_add(v18, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v18);
    WTF::fastFree(v18, v16);
  }

  if (v41 == 1)
  {
    v19 = v39;
    v39 = 0;
    if (v19)
    {
      if (atomic_fetch_add(v19, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v19);
        WTF::fastFree(v19, v16);
      }
    }
  }

  WTF::Vector<std::optional<WebCore::WebGPU::RenderPassColorAttachment>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v37, v16);
  v21 = v36;
  v36 = 0;
  if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v21, v20);
  }

  v22 = *(a1 + 112);
  LOBYTE(v36) = 0;
  v40 = 0;
  (*(*v22 + 24))(&v47);
  *(a1 + 128) = v47;
  v47 = 0;
  if (v40 == 1)
  {
    if (v39 == 1)
    {
      v24 = v37;
      v37 = 0;
      if (v24)
      {
        if (atomic_fetch_add(v24, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v24);
          WTF::fastFree(v24, v23);
        }
      }
    }

    v25 = v36;
    v36 = 0;
    if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v25, v23);
    }
  }

  v36 = 0;
  (*(**(a1 + 112) + 112))(&v47);
  *(a1 + 136) = v47;
  v27 = v36;
  v36 = 0;
  if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v27, v26);
  }

  v36 = 0;
  v37 = 0;
  v38 = 0;
  WebKit::WebGPU::RemoteDeviceProxy::createBindGroupLayout(a1, &v36, &v47);
  *(a1 + 144) = v47;
  v29 = v37;
  if (v37)
  {
    v37 = 0;
    LODWORD(v38) = 0;
    WTF::fastFree(v29, v28);
  }

  v30 = v36;
  v36 = 0;
  if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v30, v28);
  }

  (*(**(a1 + 120) + 168))(*(a1 + 120));
  (*(**(a1 + 128) + 40))(*(a1 + 128));
  v31 = *(a1 + 72);
  v32 = *(a1 + 136);
  ++v32[4];
  v33 = WTF::fastMalloc(8);
  v36 = v33;
  ++v32[4];
  *v33 = v32;
  v37 = 0x100000001;
  WebKit::WebGPU::RemoteQueueProxy::submit(v31, &v36);
  WTF::Vector<WTF::Ref<WebCore::WebGPU::CommandBuffer,WTF::RawPtrTraits<WebCore::WebGPU::CommandBuffer>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::CommandBuffer>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v36, v34);
  if (v32[4] == 1)
  {
    (*(*v32 + 8))(v32);
  }

  else
  {
    --v32[4];
  }

  LOBYTE(v36) = 0;
  WebKit::WebGPU::RemoteDeviceProxy::send<Messages::RemoteDevice::PauseAllErrorReporting>(a1, &v36);
  return a1;
}

void WebKit::WebGPU::RemoteDeviceProxy::~RemoteDeviceProxy(WebKit::WebGPU::RemoteDeviceProxy *this)
{
  v2 = *(*(*(this + 8) + 72) + 80);
  atomic_fetch_add(v2, 1u);
  v3 = *(this + 6);
  v4 = *(v2 + 128);
  v5 = INFINITY;
  if (fabs(v4) != INFINITY)
  {
    WTF::ApproximateTime::now(this);
    v5 = v4 + v6;
  }

  if (*(v2 + 64) != v3)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(v2 + 72, &v41, v5);
    if (v43 != 1)
    {
      goto LABEL_16;
    }

    v28 = v42;
    if (v42 <= 1)
    {
LABEL_90:
      __break(0xC471u);
      JUMPOUT(0x19E256A20);
    }

    v29 = v41;
    *v41 = 3198;
    v30 = v29 + 1;
    if (v28 - 2 < (-v30 & 7 | 8uLL))
    {
      goto LABEL_16;
    }

    v31 = -v30 & 7;
    *(v30 + v31) = v3;
    if (v31 != 7)
    {
      v31 = 6;
    }

    v32 = (*(v2 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v34 = *(v2 + 72);
    v33 = *(v2 + 80);
    v35 = v31 + 10;
    if (v32 + 16 >= v34)
    {
      v32 = 0;
    }

    v36 = v35 + v32;
    if (v34 <= v36)
    {
      v36 = 0;
    }

    *(v2 + 88) = v36;
    if (*(v33 + 8) <= 0xFFuLL)
    {
      goto LABEL_89;
    }

    v37 = atomic_exchange((*(v33 + 16) + 128), v36);
    v38 = *(v2 + 124);
    if (v37 == 0x80000000 || v38 != 0)
    {
      v40 = v38 + 1;
      *(v2 + 124) = v40;
      if (v40 >= *(v2 + 120))
      {
        if (*(v2 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v2 + 100));
        }

        *(v2 + 124) = 0;
      }
    }

    *(v2 + 64) = v3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v2 + 72, &v41, v5);
  if (v43 != 1)
  {
    goto LABEL_16;
  }

  if (v42 <= 1)
  {
    goto LABEL_90;
  }

  *v41 = 1036;
  v8 = (*(v2 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v10 = *(v2 + 72);
  v9 = *(v2 + 80);
  if (v8 + 16 >= v10)
  {
    v8 = 0;
  }

  v11 = v8 + 16;
  if (v10 <= v11)
  {
    v11 = 0;
  }

  *(v2 + 88) = v11;
  if (*(v9 + 8) <= 0xFFuLL)
  {
    goto LABEL_89;
  }

  if (atomic_exchange((*(v9 + 16) + 128), v11) == 0x80000000 || *(v2 + 124))
  {
    if (*(v2 + 112) == 1)
    {
      MEMORY[0x19EB16320](*(v2 + 100));
    }

    *(v2 + 124) = 0;
  }

LABEL_16:
  if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2);
    v7.n128_f64[0] = IPC::StreamClientConnection::operator delete(v2);
  }

  v12 = *(this + 18);
  *(this + 18) = 0;
  if (v12)
  {
    if (v12[4] == 1)
    {
      (*(*v12 + 8))(v12, v7);
    }

    else
    {
      --v12[4];
    }
  }

  v13 = *(this + 17);
  *(this + 17) = 0;
  if (v13)
  {
    if (v13[4] == 1)
    {
      (*(*v13 + 8))(v13, v7);
    }

    else
    {
      --v13[4];
    }
  }

  v14 = *(this + 16);
  *(this + 16) = 0;
  if (v14)
  {
    if (v14[4] == 1)
    {
      (*(*v14 + 8))(v14, v7);
    }

    else
    {
      --v14[4];
    }
  }

  v15 = *(this + 15);
  *(this + 15) = 0;
  if (v15)
  {
    if (v15[4] == 1)
    {
      (*(*v15 + 8))(v15, v7);
    }

    else
    {
      --v15[4];
    }
  }

  v16 = *(this + 14);
  *(this + 14) = 0;
  if (v16)
  {
    if (v16[4] == 1)
    {
      (*(*v16 + 8))(v16, v7);
    }

    else
    {
      --v16[4];
    }
  }

  v17 = *(this + 12);
  *(this + 12) = 0;
  if (v17)
  {
    std::default_delete<WebCore::PixelBufferConformerCV>::operator()[abi:sn200100](this + 96, v17);
  }

  v18 = *(this + 11);
  *(this + 11) = 0;
  if (v18)
  {
    WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v18);
  }

  std::unique_ptr<IPC::Semaphore>::reset[abi:sn200100](this + 10, 0);
  v20 = *(this + 9);
  *(this + 9) = 0;
  if (v20)
  {
    if (v20[4] == 1)
    {
      (*(*v20 + 8))(v20);
    }

    else
    {
      --v20[4];
    }
  }

  v21 = *(this + 8);
  *(this + 8) = 0;
  if (v21)
  {
    if (v21[4] == 1)
    {
      (*(*v21 + 8))(v21);
    }

    else
    {
      --v21[4];
    }
  }

  v22 = *(this + 7);
  *(this + 7) = 0;
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

  *this = &unk_1F1125D18;
  v23 = *(this + 5);
  *(this + 5) = 0;
  if (v23)
  {
    if (*v23 == 1)
    {
      WTF::fastFree(v23, v19);
    }

    else
    {
      --*v23;
    }
  }

  v24 = *(this + 4);
  *(this + 4) = 0;
  if (v24)
  {
    WTF::RefCounted<WebCore::WebGPU::SupportedFeatures>::deref(v24, v19);
  }

  v25 = *(this + 3);
  *(this + 3) = 0;
  if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v25, v19);
  }

  if (*(this + 4) != 1)
  {
    __break(0xC471u);
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  v26 = *(this + 1);
  if (v26)
  {
    *(v26 + 8) = 0;
    v27 = *(this + 1);
    *(this + 1) = 0;
    if (v27)
    {
      if (atomic_fetch_add(v27, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v27);
        WTF::fastFree(v27, v19);
      }
    }
  }
}

{
  WebKit::WebGPU::RemoteDeviceProxy::~RemoteDeviceProxy(this);

  bmalloc::api::tzoneFree(v1, v2);
}

uint64_t WebKit::WebGPU::RemoteDeviceProxy::queue@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 72);
  ++*(v2 + 16);
  *a2 = v2;
  return this;
}

void WebKit::WebGPU::RemoteDeviceProxy::destroy(WebKit::WebGPU::RemoteDeviceProxy *this)
{
  v1 = *(*(*(this + 8) + 72) + 80);
  atomic_fetch_add(v1, 1u);
  v2 = *(this + 6);
  v3 = *(v1 + 128);
  v4 = INFINITY;
  if (fabs(v3) != INFINITY)
  {
    WTF::ApproximateTime::now(this);
    v4 = v3 + v5;
  }

  if (*(v1 + 64) != v2)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(v1 + 72, &v23, v4);
    if (v25 != 1)
    {
      goto LABEL_16;
    }

    v10 = v24;
    if (v24 <= 1)
    {
LABEL_40:
      __break(0xC471u);
      return;
    }

    v11 = v23;
    *v23 = 3198;
    v12 = v11 + 1;
    if (v10 - 2 < (-v12 & 7 | 8uLL))
    {
      goto LABEL_16;
    }

    v13 = -v12 & 7;
    *(v12 + v13) = v2;
    if (v13 != 7)
    {
      v13 = 6;
    }

    v14 = (*(v1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v16 = *(v1 + 72);
    v15 = *(v1 + 80);
    v17 = v13 + 10;
    if (v14 + 16 >= v16)
    {
      v14 = 0;
    }

    v18 = v17 + v14;
    if (v16 <= v18)
    {
      v18 = 0;
    }

    *(v1 + 88) = v18;
    if (*(v15 + 8) <= 0xFFuLL)
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v19 = atomic_exchange((*(v15 + 16) + 128), v18);
    v20 = *(v1 + 124);
    if (v19 == 0x80000000 || v20 != 0)
    {
      v22 = v20 + 1;
      *(v1 + 124) = v22;
      if (v22 >= *(v1 + 120))
      {
        if (*(v1 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v1 + 100));
        }

        *(v1 + 124) = 0;
      }
    }

    *(v1 + 64) = v2;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v1 + 72, &v23, v4);
  if (v25 == 1)
  {
    if (v24 <= 1)
    {
      __break(0xC471u);
    }

    else
    {
      *v23 = 1035;
      v6 = (*(v1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v8 = *(v1 + 72);
      v7 = *(v1 + 80);
      if (v6 + 16 >= v8)
      {
        v6 = 0;
      }

      v9 = v6 + 16;
      if (v8 <= v9)
      {
        v9 = 0;
      }

      *(v1 + 88) = v9;
      if (*(v7 + 8) > 0xFFuLL)
      {
        if (atomic_exchange((*(v7 + 16) + 128), v9) == 0x80000000 || *(v1 + 124))
        {
          if (*(v1 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v1 + 100));
          }

          *(v1 + 124) = 0;
        }

        goto LABEL_16;
      }
    }

    goto LABEL_39;
  }

LABEL_16:
  if (atomic_fetch_add(v1, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v1);
    IPC::StreamClientConnection::operator delete(v1);
  }
}

uint64_t WebKit::WebGPU::RemoteDeviceProxy::createXRBinding@<X0>(WebKit::WebGPU::RemoteDeviceProxy *this@<X0>, void *a2@<X8>)
{
  if (WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    __break(0xC471u);
    goto LABEL_66;
  }

  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  v5 = IdentifierInternal;
  v6 = *(*(*(this + 8) + 72) + 80);
  atomic_fetch_add(v6, 1u);
  v7 = *(this + 6);
  v8 = *(v6 + 128);
  v9 = INFINITY;
  if (fabs(v8) != INFINITY)
  {
    WTF::ApproximateTime::now(IdentifierInternal);
    v9 = v8 + v10;
  }

  if (*(v6 + 64) != v7)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(v6 + 72, &v51, v9);
    if (v53 != 1)
    {
      goto LABEL_37;
    }

    v23 = v52;
    if (v52 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E257170);
    }

    v24 = v51;
    *v51 = 3198;
    v25 = v24 + 1;
    if (v23 - 2 < (-v25 & 7 | 8uLL))
    {
      goto LABEL_37;
    }

    v26 = -v25 & 7;
    *(v25 + v26) = v7;
    v27 = 6;
    if (v26 > 6)
    {
      v27 = v26;
    }

    v28 = v27 + 10;
    v29 = (*(v6 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v30 = *(v6 + 72);
    if (v29 + 16 >= v30)
    {
      v29 = 0;
    }

    v31 = v28 + v29;
    if (v30 <= v31)
    {
      v31 = 0;
    }

    *(v6 + 88) = v31;
    v32 = *(v6 + 80);
    if (*(v32 + 8) <= 0xFFuLL)
    {
      goto LABEL_65;
    }

    v33 = atomic_exchange((*(v32 + 16) + 128), v31);
    v34 = *(v6 + 124);
    if (v33 == 0x80000000 || v34 != 0)
    {
      v36 = v34 + 1;
      *(v6 + 124) = v36;
      if (v36 >= *(v6 + 120))
      {
        if (*(v6 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v6 + 100));
        }

        *(v6 + 124) = 0;
      }
    }

    *(v6 + 64) = v7;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v6 + 72, &v51, v9);
  if (v53 != 1)
  {
LABEL_37:
    v22 = 0;
    goto LABEL_38;
  }

  v12 = v52;
  if (v52 <= 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E257148);
  }

  v13 = v51;
  *v51 = 1034;
  v14 = v13 + 1;
  if (v12 - 2 >= (-v14 & 7 | 8uLL))
  {
    v15 = -v14 & 7;
    *(v14 + v15) = v5;
    v16 = 6;
    if (v15 > 6)
    {
      v16 = v15;
    }

    v17 = v16 + 10;
    v18 = (*(v6 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v19 = *(v6 + 72);
    if (v18 + 16 >= v19)
    {
      v18 = 0;
    }

    v20 = v17 + v18;
    if (v19 <= v20)
    {
      v20 = 0;
    }

    *(v6 + 88) = v20;
    v21 = *(v6 + 80);
    if (*(v21 + 8) > 0xFFuLL)
    {
      if (atomic_exchange((*(v21 + 16) + 128), v20) == 0x80000000 || *(v6 + 124))
      {
        if (*(v6 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v6 + 100));
        }

        *(v6 + 124) = 0;
      }

      v22 = 1;
      goto LABEL_38;
    }

    goto LABEL_65;
  }

  v50 = v7;
  if ((v53 & 1) == 0)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    JUMPOUT(0x19E257128);
  }

  if (v52 <= 1)
  {
    __break(0xC471u);
    goto LABEL_65;
  }

  *v51 = 3197;
  v39 = (*(v6 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v40 = *(v6 + 72);
  if (v39 + 16 >= v40)
  {
    v39 = 0;
  }

  v41 = v39 + 16;
  if (v40 <= v41)
  {
    v42 = 0;
  }

  else
  {
    v42 = v41;
  }

  *(v6 + 88) = v42;
  v43 = *(v6 + 80);
  if (*(v43 + 8) <= 0xFFuLL)
  {
    goto LABEL_65;
  }

  atomic_exchange((*(v43 + 16) + 128), v42);
  *(v6 + 124) = 0;
  v44 = *(v6 + 8);
  v45 = IPC::Encoder::operator new(0x238, v11);
  *v45 = 1034;
  *(v45 + 2) = 0;
  *(v45 + 3) = 0;
  *(v45 + 1) = v50;
  *(v45 + 68) = 0;
  *(v45 + 70) = 0;
  *(v45 + 69) = 0;
  IPC::Encoder::encodeHeader(v45);
  v54 = v45;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v45, v5);
  v46 = IPC::Connection::sendMessageImpl(v44, &v54, 1, 0);
  v47 = v54;
  v54 = 0;
  if (v47)
  {
    IPC::Encoder::~Encoder(v47, v11);
    bmalloc::api::tzoneFree(v48, v49);
  }

  v22 = v46 == 0;
LABEL_38:
  if (atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v6);
    IPC::StreamClientConnection::operator delete(v6);
    if (v22)
    {
      goto LABEL_40;
    }

LABEL_44:
    result = 0;
    goto LABEL_45;
  }

  if (!v22)
  {
    goto LABEL_44;
  }

LABEL_40:
  v37 = *(this + 7);
  if (WebKit::WebGPU::RemoteXRBindingProxy::s_heapRef)
  {
    result = bmalloc::api::tzoneAllocateNonCompact(WebKit::WebGPU::RemoteXRBindingProxy::s_heapRef, v11);
  }

  else
  {
    result = WebKit::WebGPU::RemoteXRBindingProxy::operatorNewSlow(0x30);
  }

  *(result + 16) = 1;
  *result = &unk_1F1126928;
  *(result + 8) = 0;
  *(result + 24) = v5;
  ++*(v37 + 8);
  *(result + 32) = v37;
  ++*(this + 4);
  *(result + 40) = this;
LABEL_45:
  *a2 = result;
  return result;
}

void WebKit::WebGPU::RemoteDeviceProxy::createBuffer(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
  }

  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a2 + 18);
  v59[0] = v5;
  v59[1] = v6;
  v60 = v7;
  v61 = v8;
  v62 = 1;
  if (WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    __break(0xC471u);
    goto LABEL_78;
  }

  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  v10 = IdentifierInternal;
  v11 = *(*(*(a1 + 64) + 72) + 80);
  atomic_fetch_add(v11, 1u);
  v12 = *(a1 + 48);
  v13 = *(v11 + 128);
  v14 = INFINITY;
  if (fabs(v13) != INFINITY)
  {
    WTF::ApproximateTime::now(IdentifierInternal);
    v14 = v13 + v15;
  }

  if (*(v11 + 64) != v12)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(v11 + 72, &v66, v14);
    if (v68 != 1)
    {
      goto LABEL_40;
    }

    v27 = v67;
    if (v67 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E2576D4);
    }

    v28 = v66;
    *v66 = 3198;
    v29 = v28 + 2;
    if (v27 - 2 < (-v29 & 7 | 8uLL))
    {
      goto LABEL_40;
    }

    v30 = -v29 & 7;
    *&v29[v30] = v12;
    v31 = 6;
    if (v30 > 6)
    {
      v31 = v30;
    }

    v32 = v31 + 10;
    v33 = (*(v11 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v34 = *(v11 + 72);
    if (v33 + 16 >= v34)
    {
      v33 = 0;
    }

    v35 = v32 + v33;
    if (v34 <= v35)
    {
      v35 = 0;
    }

    *(v11 + 88) = v35;
    v36 = *(v11 + 80);
    if (*(v36 + 8) <= 0xFFuLL)
    {
      goto LABEL_77;
    }

    v37 = atomic_exchange((*(v36 + 16) + 128), v35);
    v38 = *(v11 + 124);
    if (v37 == 0x80000000 || v38 != 0)
    {
      v40 = v38 + 1;
      *(v11 + 124) = v40;
      if (v40 >= *(v11 + 120))
      {
        if (*(v11 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v11 + 100));
        }

        *(v11 + 124) = 0;
      }
    }

    *(v11 + 64) = v12;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v11 + 72, &v63, v14);
  if (v65 != 1)
  {
LABEL_40:
    v26 = 0;
    goto LABEL_41;
  }

  v17 = v63;
  v18 = v64;
  v68 = v64;
  if (v64 <= 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E2576ACLL);
  }

  *v63 = 1022;
  v66 = (v17 + 1);
  v67 = v18 - 2;
  IPC::ArgumentCoder<WebKit::WebGPU::BufferDescriptor,void>::encode(&v66, v59);
  v19 = -v66 & 7 | 8;
  if (v67 < v19)
  {
    v58 = v12;
    if (v65)
    {
      if (v64 > 1)
      {
        *v63 = 3197;
        v47 = (*(v11 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
        v48 = *(v11 + 72);
        if (v47 + 16 >= v48)
        {
          v47 = 0;
        }

        v49 = v47 + 16;
        if (v48 <= v49)
        {
          v50 = 0;
        }

        else
        {
          v50 = v49;
        }

        *(v11 + 88) = v50;
        v51 = *(v11 + 80);
        if (*(v51 + 8) <= 0xFFuLL)
        {
          goto LABEL_77;
        }

        atomic_exchange((*(v51 + 16) + 128), v50);
        *(v11 + 124) = 0;
        v52 = *(v11 + 8);
        v53 = IPC::Encoder::operator new(0x238, v16);
        *v53 = 1022;
        *(v53 + 2) = 0;
        *(v53 + 3) = 0;
        *(v53 + 1) = v58;
        *(v53 + 68) = 0;
        *(v53 + 70) = 0;
        *(v53 + 69) = 0;
        IPC::Encoder::encodeHeader(v53);
        v66 = v53;
        IPC::ArgumentCoder<WebKit::WebGPU::BufferDescriptor,void>::encode(v53, v59);
        IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v53, v10);
        v54 = IPC::Connection::sendMessageImpl(v52, &v66, 1, 0);
        v55 = v66;
        v66 = 0;
        if (v55)
        {
          IPC::Encoder::~Encoder(v55, v16);
          bmalloc::api::tzoneFree(v56, v57);
        }

        v26 = v54 == 0;
        goto LABEL_41;
      }

      __break(0xC471u);
    }

LABEL_77:
    __break(1u);
LABEL_78:
    JUMPOUT(0x19E25768CLL);
  }

  *(v66 + (-v66 & 7)) = v10;
  v20 = v67 - v19;
  if (v67 < v19)
  {
    goto LABEL_77;
  }

  v66 = (v66 + v19);
  v67 -= v19;
  v21 = v68 - v20;
  if (v21 <= 0x10)
  {
    v21 = 16;
  }

  v22 = (*(v11 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v23 = *(v11 + 72);
  if (v22 + 16 >= v23)
  {
    v22 = 0;
  }

  v24 = v22 + v21;
  if (v23 <= v24)
  {
    v24 = 0;
  }

  *(v11 + 88) = v24;
  v25 = *(v11 + 80);
  if (*(v25 + 8) <= 0xFFuLL)
  {
    goto LABEL_77;
  }

  if (atomic_exchange((*(v25 + 16) + 128), v24) == 0x80000000 || *(v11 + 124))
  {
    if (*(v11 + 112) == 1)
    {
      MEMORY[0x19EB16320](*(v11 + 100));
    }

    *(v11 + 124) = 0;
  }

  v26 = 1;
LABEL_41:
  if (atomic_fetch_add(v11, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v11);
    IPC::StreamClientConnection::operator delete(v11);
    if (v26)
    {
      goto LABEL_43;
    }

LABEL_52:
    v44 = 0;
    goto LABEL_53;
  }

  if (!v26)
  {
    goto LABEL_52;
  }

LABEL_43:
  if ((v62 & 1) == 0)
  {
    goto LABEL_77;
  }

  v41 = *(a1 + 56);
  v42 = v61;
  v43 = WebKit::WebGPU::RemoteBufferProxy::s_heapRef ? bmalloc::api::tzoneAllocateNonCompact(WebKit::WebGPU::RemoteBufferProxy::s_heapRef, v16) : WebKit::WebGPU::RemoteBufferProxy::operatorNewSlow(0x40);
  v44 = v43;
  *(v43 + 16) = 1;
  *(v43 + 24) = 0;
  *(v43 + 32) = v10;
  *v43 = &unk_1F11253B0;
  *(v43 + 8) = 0;
  ++*(v41 + 8);
  *(v43 + 40) = v41;
  ++*(a1 + 16);
  *(v43 + 48) = a1;
  v45 = v42 ? 2 : 0;
  *(v43 + 56) = v45;
  if ((v62 & 1) == 0)
  {
    goto LABEL_77;
  }

  WebCore::WebGPU::Buffer::setLabel(v43, v59);
LABEL_53:
  *a3 = v44;
  if (v62)
  {
    v46 = v59[0];
    v59[0] = 0;
    if (v46)
    {
      if (atomic_fetch_add_explicit(v46, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v46, v16);
      }
    }
  }
}

void WebKit::WebGPU::RemoteDeviceProxy::createTexture(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  WebKit::WebGPU::ConvertToBackingContext::convertToBacking(*(a1 + 56), a2, &v56);
  if (v62 != 1)
  {
    *a3 = 0;
    return;
  }

  if (WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    __break(0xC471u);
    goto LABEL_73;
  }

  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  if ((v62 & 1) == 0)
  {
LABEL_73:
    __break(1u);
    goto LABEL_76;
  }

  v6 = IdentifierInternal;
  v7 = *(*(*(a1 + 64) + 72) + 80);
  atomic_fetch_add(v7, 1u);
  v8 = *(a1 + 48);
  v9 = *(v7 + 128);
  v10 = INFINITY;
  if (fabs(v9) != INFINITY)
  {
    WTF::ApproximateTime::now(IdentifierInternal);
    v10 = v9 + v11;
  }

  if (*(v7 + 64) != v8)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(v7 + 72, &v66, v10);
    if (v68 != 1)
    {
      goto LABEL_41;
    }

    v23 = v67;
    if (v67 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E257C4CLL);
    }

    v24 = v66;
    *v66 = 3198;
    v25 = (v24 + 2);
    if (v23 - 2 < (-v25 & 7 | 8uLL))
    {
      goto LABEL_41;
    }

    v26 = -v25 & 7;
    *(v25 + v26) = v8;
    v27 = 6;
    if (v26 > 6)
    {
      v27 = v26;
    }

    v28 = v27 + 10;
    v29 = (*(v7 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v30 = *(v7 + 72);
    if (v29 + 16 >= v30)
    {
      v29 = 0;
    }

    v31 = v28 + v29;
    if (v30 <= v31)
    {
      v31 = 0;
    }

    *(v7 + 88) = v31;
    v32 = *(v7 + 80);
    if (*(v32 + 8) <= 0xFFuLL)
    {
      goto LABEL_73;
    }

    v33 = atomic_exchange((*(v32 + 16) + 128), v31);
    v34 = *(v7 + 124);
    if (v33 == 0x80000000 || v34 != 0)
    {
      v36 = v34 + 1;
      *(v7 + 124) = v36;
      if (v36 >= *(v7 + 120))
      {
        if (*(v7 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v7 + 100));
        }

        *(v7 + 124) = 0;
      }
    }

    *(v7 + 64) = v8;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v7 + 72, &v63, v10);
  if (v65 != 1)
  {
LABEL_41:
    v22 = 0;
    goto LABEL_42;
  }

  v13 = v63;
  v14 = v64;
  v68 = v64;
  if (v64 <= 1)
  {
    goto LABEL_76;
  }

  *v63 = 1033;
  v66 = (v13 + 1);
  v67 = v14 - 2;
  IPC::ArgumentCoder<WebKit::WebGPU::TextureDescriptor,void>::encode(&v66, &v56);
  v15 = -v66 & 7 | 8;
  if (v67 >= v15)
  {
    *(v66 + (-v66 & 7)) = v6;
    v16 = v67 - v15;
    if (v67 >= v15)
    {
      v66 = (v66 + v15);
      v67 -= v15;
      v17 = v68 - v16;
      if (v17 <= 0x10)
      {
        v17 = 16;
      }

      v18 = (*(v7 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v19 = *(v7 + 72);
      if (v18 + 16 >= v19)
      {
        v18 = 0;
      }

      v20 = v18 + v17;
      if (v19 <= v20)
      {
        v20 = 0;
      }

      *(v7 + 88) = v20;
      v21 = *(v7 + 80);
      if (*(v21 + 8) > 0xFFuLL)
      {
        if (atomic_exchange((*(v21 + 16) + 128), v20) == 0x80000000 || *(v7 + 124))
        {
          if (*(v7 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v7 + 100));
          }

          *(v7 + 124) = 0;
        }

        v22 = 1;
        goto LABEL_42;
      }
    }

    goto LABEL_73;
  }

  v55 = v8;
  if ((v65 & 1) == 0)
  {
    goto LABEL_73;
  }

  if (v64 <= 1)
  {
LABEL_76:
    __break(0xC471u);
    JUMPOUT(0x19E257C24);
  }

  *v63 = 3197;
  v44 = (*(v7 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v45 = *(v7 + 72);
  if (v44 + 16 >= v45)
  {
    v44 = 0;
  }

  v46 = v44 + 16;
  if (v45 <= v46)
  {
    v47 = 0;
  }

  else
  {
    v47 = v46;
  }

  *(v7 + 88) = v47;
  v48 = *(v7 + 80);
  if (*(v48 + 8) <= 0xFFuLL)
  {
    goto LABEL_73;
  }

  atomic_exchange((*(v48 + 16) + 128), v47);
  *(v7 + 124) = 0;
  v49 = *(v7 + 8);
  v50 = IPC::Encoder::operator new(0x238, v12);
  *v50 = 1033;
  *(v50 + 2) = 0;
  *(v50 + 3) = 0;
  *(v50 + 1) = v55;
  *(v50 + 68) = 0;
  *(v50 + 70) = 0;
  *(v50 + 69) = 0;
  IPC::Encoder::encodeHeader(v50);
  v66 = v50;
  IPC::ArgumentCoder<WebKit::WebGPU::TextureDescriptor,void>::encode(v50, &v56);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v50, v6);
  v51 = IPC::Connection::sendMessageImpl(v49, &v66, 1, 0);
  v52 = v66;
  v66 = 0;
  if (v52)
  {
    IPC::Encoder::~Encoder(v52, v12);
    bmalloc::api::tzoneFree(v53, v54);
  }

  v22 = v51 == 0;
LABEL_42:
  if (atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v7);
    IPC::StreamClientConnection::operator delete(v7);
    if (v22)
    {
LABEL_44:
      v37 = *(*(a1 + 64) + 72);
      atomic_fetch_add((v37 + 28), 1u);
      v38 = *(a1 + 56);
      v39 = WebKit::WebGPU::RemoteTextureProxy::operator new(0x78, v12);
      *(v39 + 16) = 1;
      *(v39 + 24) = 0;
      *(v39 + 32) = v6;
      *v39 = &unk_1F11268C0;
      *(v39 + 8) = 0;
      ++*(v38 + 8);
      *(v39 + 40) = v38;
      *(v39 + 48) = v37;
      *(v39 + 56) = 0;
      *(v39 + 64) = 0;
      *(v39 + 104) = 0;
      *(v39 + 112) = 0;
      if (v62)
      {
        v40 = v39;
        WebCore::WebGPU::Texture::setLabel(v39, &v56);
        goto LABEL_48;
      }

      goto LABEL_73;
    }
  }

  else if (v22)
  {
    goto LABEL_44;
  }

  v40 = 0;
LABEL_48:
  *a3 = v40;
  if (v62)
  {
    v41 = v60;
    if (v60)
    {
      v60 = 0;
      v61 = 0;
      WTF::fastFree(v41, v12);
    }

    if (!v59)
    {
      v42 = v57;
      if (v57)
      {
        v57 = 0;
        v58 = 0;
        WTF::fastFree(v42, v12);
      }
    }

    v59 = -1;
    v43 = v56;
    v56 = 0;
    if (v43)
    {
      if (atomic_fetch_add_explicit(v43, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v43, v12);
      }
    }
  }
}

void WebKit::WebGPU::RemoteDeviceProxy::createSampler(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
  }

  v6 = *(a2 + 12);
  v7 = *(a2 + 24);
  v56 = v5;
  v57 = *(a2 + 8);
  v58 = v6;
  v59 = *(a2 + 16);
  v60 = v7;
  v61 = 1;
  if (WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    __break(0xC471u);
    goto LABEL_74;
  }

  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  v9 = IdentifierInternal;
  v10 = *(*(*(a1 + 64) + 72) + 80);
  atomic_fetch_add(v10, 1u);
  v11 = *(a1 + 48);
  v12 = *(v10 + 128);
  v13 = INFINITY;
  if (fabs(v12) != INFINITY)
  {
    WTF::ApproximateTime::now(IdentifierInternal);
    v13 = v12 + v14;
  }

  if (*(v10 + 64) != v11)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(v10 + 72, &v65, v13);
    if (v67 != 1)
    {
      goto LABEL_40;
    }

    v26 = v66;
    if (v66 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E2581A0);
    }

    v27 = v65;
    *v65 = 3198;
    v28 = v27 + 2;
    if (v26 - 2 < (-v28 & 7 | 8uLL))
    {
      goto LABEL_40;
    }

    v29 = -v28 & 7;
    *&v28[v29] = v11;
    v30 = 6;
    if (v29 > 6)
    {
      v30 = v29;
    }

    v31 = v30 + 10;
    v32 = (*(v10 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v33 = *(v10 + 72);
    if (v32 + 16 >= v33)
    {
      v32 = 0;
    }

    v34 = v31 + v32;
    if (v33 <= v34)
    {
      v34 = 0;
    }

    *(v10 + 88) = v34;
    v35 = *(v10 + 80);
    if (*(v35 + 8) <= 0xFFuLL)
    {
      goto LABEL_73;
    }

    v36 = atomic_exchange((*(v35 + 16) + 128), v34);
    v37 = *(v10 + 124);
    if (v36 == 0x80000000 || v37 != 0)
    {
      v39 = v37 + 1;
      *(v10 + 124) = v39;
      if (v39 >= *(v10 + 120))
      {
        if (*(v10 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v10 + 100));
        }

        *(v10 + 124) = 0;
      }
    }

    *(v10 + 64) = v11;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v10 + 72, &v62, v13);
  if (v64 != 1)
  {
LABEL_40:
    v25 = 0;
    goto LABEL_41;
  }

  v16 = v62;
  v17 = v63;
  v67 = v63;
  if (v63 <= 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E258178);
  }

  *v62 = 1031;
  v65 = (v16 + 1);
  v66 = v17 - 2;
  IPC::ArgumentCoder<WebKit::WebGPU::SamplerDescriptor,void>::encode(&v65, &v56);
  v18 = -v65 & 7 | 8;
  if (v66 < v18)
  {
    v55 = v11;
    if (v64)
    {
      if (v63 > 1)
      {
        *v62 = 3197;
        v44 = (*(v10 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
        v45 = *(v10 + 72);
        if (v44 + 16 >= v45)
        {
          v44 = 0;
        }

        v46 = v44 + 16;
        if (v45 <= v46)
        {
          v47 = 0;
        }

        else
        {
          v47 = v46;
        }

        *(v10 + 88) = v47;
        v48 = *(v10 + 80);
        if (*(v48 + 8) <= 0xFFuLL)
        {
          goto LABEL_73;
        }

        atomic_exchange((*(v48 + 16) + 128), v47);
        *(v10 + 124) = 0;
        v49 = *(v10 + 8);
        v50 = IPC::Encoder::operator new(0x238, v15);
        *v50 = 1031;
        *(v50 + 2) = 0;
        *(v50 + 3) = 0;
        *(v50 + 1) = v55;
        *(v50 + 68) = 0;
        *(v50 + 70) = 0;
        *(v50 + 69) = 0;
        IPC::Encoder::encodeHeader(v50);
        v65 = v50;
        IPC::ArgumentCoder<WebKit::WebGPU::SamplerDescriptor,void>::encode(v50, &v56);
        IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v50, v9);
        v51 = IPC::Connection::sendMessageImpl(v49, &v65, 1, 0);
        v52 = v65;
        v65 = 0;
        if (v52)
        {
          IPC::Encoder::~Encoder(v52, v15);
          bmalloc::api::tzoneFree(v53, v54);
        }

        v25 = v51 == 0;
        goto LABEL_41;
      }

      __break(0xC471u);
    }

LABEL_73:
    __break(1u);
LABEL_74:
    JUMPOUT(0x19E258158);
  }

  *(v65 + (-v65 & 7)) = v9;
  v19 = v66 - v18;
  if (v66 < v18)
  {
    goto LABEL_73;
  }

  v65 = (v65 + v18);
  v66 -= v18;
  v20 = v67 - v19;
  if (v20 <= 0x10)
  {
    v20 = 16;
  }

  v21 = (*(v10 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v22 = *(v10 + 72);
  if (v21 + 16 >= v22)
  {
    v21 = 0;
  }

  v23 = v21 + v20;
  if (v22 <= v23)
  {
    v23 = 0;
  }

  *(v10 + 88) = v23;
  v24 = *(v10 + 80);
  if (*(v24 + 8) <= 0xFFuLL)
  {
    goto LABEL_73;
  }

  if (atomic_exchange((*(v24 + 16) + 128), v23) == 0x80000000 || *(v10 + 124))
  {
    if (*(v10 + 112) == 1)
    {
      MEMORY[0x19EB16320](*(v10 + 100));
    }

    *(v10 + 124) = 0;
  }

  v25 = 1;
LABEL_41:
  if (atomic_fetch_add(v10, 0xFFFFFFFF) != 1)
  {
    if (v25)
    {
      goto LABEL_43;
    }

LABEL_48:
    v42 = 0;
    goto LABEL_49;
  }

  atomic_store(1u, v10);
  IPC::StreamClientConnection::operator delete(v10);
  if (!v25)
  {
    goto LABEL_48;
  }

LABEL_43:
  v40 = *(a1 + 56);
  if (WebKit::WebGPU::RemoteSamplerProxy::s_heapRef)
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::WebGPU::RemoteSamplerProxy::s_heapRef, v15);
  }

  else
  {
    NonCompact = WebKit::WebGPU::RemoteSamplerProxy::operatorNewSlow(0x38);
  }

  v42 = NonCompact;
  *(NonCompact + 16) = 1;
  *(NonCompact + 24) = 0;
  *(NonCompact + 32) = v9;
  *NonCompact = &unk_1F1126438;
  *(NonCompact + 8) = 0;
  ++*(v40 + 8);
  *(NonCompact + 40) = v40;
  ++*(a1 + 16);
  *(NonCompact + 48) = a1;
  if ((v61 & 1) == 0)
  {
    goto LABEL_73;
  }

  WebCore::WebGPU::Sampler::setLabel(NonCompact, &v56);
LABEL_49:
  *a3 = v42;
  if (v61)
  {
    v43 = v56;
    v56 = 0;
    if (v43)
    {
      if (atomic_fetch_add_explicit(v43, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v43, v15);
      }
    }
  }
}