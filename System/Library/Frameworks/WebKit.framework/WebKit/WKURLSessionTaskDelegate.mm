@interface WKURLSessionTaskDelegate
- (WKURLSessionTaskDelegate)initWithTask:(id)a3 identifier:()ObjectIdentifierGeneric<WebKit:()WTF:(unsigned long long>)a4 :(void *)a5 ObjectIdentifierMainThreadAccessTraits<uint64_t> :DataTaskIdentifierType session:;
- (WTF::StringImpl)URLSession:(uint64_t)a1 task:didReceiveChallenge:completionHandler:;
- (WTF::StringImpl)URLSession:task:didReceiveChallenge:completionHandler:;
- (id).cxx_construct;
- (uint64_t)URLSession:dataTask:didReceiveResponse:completionHandler:;
- (uint64_t)URLSession:task:didReceiveChallenge:completionHandler:;
- (uint64_t)URLSession:task:willPerformHTTPRedirection:newRequest:completionHandler:;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6;
- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didReceiveChallenge:(id)a5 completionHandler:(id)a6;
- (void)URLSession:(id)a3 task:(id)a4 willPerformHTTPRedirection:(id)a5 newRequest:(id)a6 completionHandler:(id)a7;
- (void)connection;
- (void)dealloc;
@end

@implementation WKURLSessionTaskDelegate

- (WKURLSessionTaskDelegate)initWithTask:(id)a3 identifier:()ObjectIdentifierGeneric<WebKit:()WTF:(unsigned long long>)a4 :(void *)a5 ObjectIdentifierMainThreadAccessTraits<uint64_t> :DataTaskIdentifierType session:
{
  v34 = *MEMORY[0x1E69E9840];
  v24.receiver = self;
  v24.super_class = WKURLSessionTaskDelegate;
  v8 = [(WKURLSessionTaskDelegate *)&v24 init];
  if (v8)
  {
    if (kdebug_is_enabled())
    {
      v13 = *MEMORY[0x1E696EB68];
      v14 = WTFSignpostLogHandle();
      v15 = v14;
      if (v13)
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v16 = WTFCurrentContinuousTime();
          v17 = [objc_msgSend(a3 "originalRequest")];
          v18 = [objc_msgSend(a3 "originalRequest")];
          *buf = 67110403;
          *v26 = 1;
          *&v26[4] = 1024;
          *&v26[6] = 0;
          *v27 = 2048;
          *&v27[2] = v8;
          v28 = 2048;
          v29 = v16;
          v30 = 2114;
          v31 = v17;
          v32 = 2113;
          v33 = v18;
          _os_log_impl(&dword_19D52D000, v15, OS_LOG_TYPE_DEFAULT, "type=%d name=%d p=%lu ts=%llu %{public}@ %{private}@", buf, 0x36u);
        }
      }

      else
      {
        if (v14)
        {
          v19 = v14;
        }

        v20 = os_signpost_id_make_with_pointer(v15, v8);
        if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v21 = v20;
          if (os_signpost_enabled(v15))
          {
            v22 = [objc_msgSend(a3 "originalRequest")];
            v23 = [objc_msgSend(a3 "originalRequest")];
            *buf = 138543619;
            *v26 = v22;
            *&v26[8] = 2113;
            *v27 = v23;
            _os_signpost_emit_with_name_impl(&dword_19D52D000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v21, "DataTask", "%{public}@ %{private}@", buf, 0x16u);
          }
        }

        if (v15)
        {
        }
      }
    }

    v8->_identifier.m_value = a4;
    WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a5 + 2, a5);
    v10 = *(a5 + 1);
    atomic_fetch_add(v10, 1u);
    m_ptr = v8->_session.m_impl.m_ptr;
    v8->_session.m_impl.m_ptr = v10;
    if (m_ptr && atomic_fetch_add(m_ptr, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, m_ptr);
      WTF::fastFree(m_ptr, v9);
    }
  }

  return v8;
}

- (void)dealloc
{
  v17 = *MEMORY[0x1E69E9840];
  if (!kdebug_is_enabled())
  {
    goto LABEL_2;
  }

  v3 = *MEMORY[0x1E696EB68];
  v4 = WTFSignpostLogHandle();
  v5 = v4;
  if (v3 == 1)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109888;
      v10 = 2;
      v11 = 1024;
      v12 = 0;
      v13 = 2048;
      v14 = self;
      v15 = 2048;
      v16 = WTFCurrentContinuousTime();
      _os_log_impl(&dword_19D52D000, v5, OS_LOG_TYPE_DEFAULT, "type=%d name=%d p=%lu ts=%llu ", buf, 0x22u);
    }

    goto LABEL_2;
  }

  if (v4)
  {
    v6 = v4;
  }

  if (!self)
  {
    v7 = 0xEEEEB0B5B2B2EEEELL;
LABEL_12:
    if (os_signpost_enabled(v5))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19D52D000, v5, OS_SIGNPOST_INTERVAL_END, v7, "DataTask", &unk_19E9BA835, buf, 2u);
    }

    goto LABEL_14;
  }

  v7 = os_signpost_id_make_with_pointer(v5, self);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    goto LABEL_12;
  }

LABEL_14:
  if (v5)
  {
  }

LABEL_2:
  v8.receiver = self;
  v8.super_class = WKURLSessionTaskDelegate;
  [(WKURLSessionTaskDelegate *)&v8 dealloc];
}

- (void)connection
{
  m_ptr = self->_session.m_impl.m_ptr;
  if (m_ptr && (v3 = *(m_ptr + 1)) != 0)
  {
    return *(*(v3 + 32) + 40);
  }

  else
  {
    return 0;
  }
}

- (void)URLSession:(id)a3 task:(id)a4 didReceiveChallenge:(id)a5 completionHandler:(id)a6
{
  v43 = *MEMORY[0x1E69E9840];
  if (!kdebug_is_enabled())
  {
    goto LABEL_2;
  }

  v26 = *MEMORY[0x1E696EB68];
  v27 = WTFSignpostLogHandle();
  v28 = v27;
  if (v26 == 1)
  {
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109888;
      v34 = 0;
      v35 = 1024;
      v36 = 0;
      v37 = 2048;
      v38 = self;
      v39 = 2048;
      v40 = WTFCurrentContinuousTime();
      _os_log_impl(&dword_19D52D000, v28, OS_LOG_TYPE_DEFAULT, "type=%d name=%d p=%lu ts=%llu received challenge", buf, 0x22u);
    }

    goto LABEL_2;
  }

  if (v27)
  {
    v29 = v27;
  }

  if (!self)
  {
    v30 = 0xEEEEB0B5B2B2EEEELL;
LABEL_28:
    if (os_signpost_enabled(v28))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19D52D000, v28, OS_SIGNPOST_EVENT, v30, "DataTask", "received challenge", buf, 2u);
    }

    goto LABEL_30;
  }

  v30 = os_signpost_id_make_with_pointer(v28, self);
  if (v30 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    goto LABEL_28;
  }

LABEL_30:
  if (v28)
  {
  }

LABEL_2:
  v9 = [(WKURLSessionTaskDelegate *)self connection];
  v10 = v9;
  if (v9)
  {
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
    if (!self->_identifier.m_value.m_identifier || (MEMORY[0x19EB0B400](buf, a5), v13 = _Block_copy(a6), v14 = WTF::fastMalloc(0x10), *v14 = &unk_1F10EE020, v14[1] = v13, _Block_release(0), WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1))
    {
      __break(0xC471u);
      JUMPOUT(0x19D952EC8);
    }

    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v17 = IPC::Encoder::operator new(0x238, v16);
    *v17 = 526;
    *(v17 + 68) = 0;
    *(v17 + 70) = 0;
    *(v17 + 69) = 0;
    *(v17 + 2) = 0;
    *(v17 + 3) = 0;
    *(v17 + 1) = 0;
    IPC::Encoder::encodeHeader(v17);
    v32 = v17;
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v17, self->_identifier.m_value.m_identifier);
    IPC::ArgumentCoder<WebCore::AuthenticationChallenge,void>::encode(v17, buf);
    v31[0] = v14;
    v31[1] = IdentifierInternal;
    IPC::Connection::sendMessageWithAsyncReply(v10, &v32, v31, 0, 0);
    v19 = v31[0];
    v31[0] = 0;
    if (v19)
    {
      (*(*v19 + 8))(v19);
    }

    v20 = v32;
    v32 = 0;
    if (v20)
    {
      IPC::Encoder::~Encoder(v20, v18);
      bmalloc::api::tzoneFree(v24, v25);
    }

    _Block_release(0);
    v22 = v42;
    v42 = 0;
    if (v22)
    {
    }

    v23 = v41;
    v41 = 0;
    if (v23)
    {
    }

    WebCore::AuthenticationChallengeBase::~AuthenticationChallengeBase(buf, v21);
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v10);
  }

  else
  {
    (*(a6 + 2))(a6, 3, 0);
  }
}

- (void)URLSession:(id)a3 task:(id)a4 willPerformHTTPRedirection:(id)a5 newRequest:(id)a6 completionHandler:(id)a7
{
  v45 = *MEMORY[0x1E69E9840];
  if (!kdebug_is_enabled())
  {
    goto LABEL_2;
  }

  v28 = *MEMORY[0x1E696EB68];
  v29 = WTFSignpostLogHandle();
  v30 = v29;
  if (v28 == 1)
  {
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109888;
      v37 = 0;
      v38 = 1024;
      v39 = 0;
      v40 = 2048;
      v41 = self;
      v42 = 2048;
      v43 = WTFCurrentContinuousTime();
      _os_log_impl(&dword_19D52D000, v30, OS_LOG_TYPE_DEFAULT, "type=%d name=%d p=%lu ts=%llu redirect", buf, 0x22u);
    }

    goto LABEL_2;
  }

  if (v29)
  {
    v31 = v29;
  }

  if (!self)
  {
    v32 = 0xEEEEB0B5B2B2EEEELL;
LABEL_28:
    if (os_signpost_enabled(v30))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19D52D000, v30, OS_SIGNPOST_EVENT, v32, "DataTask", "redirect", buf, 2u);
    }

    goto LABEL_30;
  }

  v32 = os_signpost_id_make_with_pointer(v30, self);
  if (v32 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    goto LABEL_28;
  }

LABEL_30:
  if (v30)
  {
  }

LABEL_2:
  v11 = [(WKURLSessionTaskDelegate *)self connection];
  v12 = v11;
  if (!v11)
  {
    (*(a7 + 2))(a7, 0);
    return;
  }

  while (1)
  {
    v13 = *v11;
    if ((*v11 & 1) == 0)
    {
      break;
    }

    v14 = *v11;
    atomic_compare_exchange_strong_explicit(v11, &v14, v13 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v14 == v13)
    {
      goto LABEL_7;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v11);
LABEL_7:
  if (!self->_identifier.m_value.m_identifier)
  {
    __break(0xC471u);
    goto LABEL_34;
  }

  WebCore::ResourceResponse::ResourceResponse(buf, a5);
  MEMORY[0x19EB06210](v33, a6);
  v15 = _Block_copy(a7);
  if (a6)
  {
    v16 = a6;
  }

  v17 = WTF::fastMalloc(0x18);
  *v17 = &unk_1F10EE048;
  v17[1] = v15;
  v17[2] = a6;
  _Block_release(0);
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    __break(0xC471u);
LABEL_34:
    JUMPOUT(0x19D953308);
  }

  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  v20 = IPC::Encoder::operator new(0x238, v19);
  *v20 = 527;
  *(v20 + 68) = 0;
  *(v20 + 70) = 0;
  *(v20 + 69) = 0;
  *(v20 + 2) = 0;
  *(v20 + 3) = 0;
  *(v20 + 1) = 0;
  IPC::Encoder::encodeHeader(v20);
  v35 = v20;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v20, self->_identifier.m_value.m_identifier);
  IPC::ArgumentCoder<WebCore::ResourceResponse,void>::encode(v20, buf);
  IPC::ArgumentCoder<WebCore::ResourceRequest,void>::encode(v20, v33);
  v34[0] = v17;
  v34[1] = IdentifierInternal;
  IPC::Connection::sendMessageWithAsyncReply(v12, &v35, v34, 0, 0);
  v22 = v34[0];
  v34[0] = 0;
  if (v22)
  {
    (*(*v22 + 8))(v22);
  }

  v23 = v35;
  v35 = 0;
  if (v23)
  {
    IPC::Encoder::~Encoder(v23, v21);
    bmalloc::api::tzoneFree(v26, v27);
  }

  _Block_release(0);
  WebCore::ResourceRequest::~ResourceRequest(v33);
  v25 = v44;
  v44 = 0;
  if (v25)
  {
  }

  WebCore::ResourceResponseBase::~ResourceResponseBase(buf, v24);
  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v12);
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6
{
  v41 = *MEMORY[0x1E69E9840];
  if (!kdebug_is_enabled())
  {
    goto LABEL_2;
  }

  v25 = *MEMORY[0x1E696EB68];
  v26 = WTFSignpostLogHandle();
  v27 = v26;
  if (v25 == 1)
  {
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109888;
      v33 = 0;
      v34 = 1024;
      v35 = 0;
      v36 = 2048;
      v37 = self;
      v38 = 2048;
      v39 = WTFCurrentContinuousTime();
      _os_log_impl(&dword_19D52D000, v27, OS_LOG_TYPE_DEFAULT, "type=%d name=%d p=%lu ts=%llu received response headers", buf, 0x22u);
    }

    goto LABEL_2;
  }

  if (v26)
  {
    v28 = v26;
  }

  if (!self)
  {
    v29 = 0xEEEEB0B5B2B2EEEELL;
LABEL_26:
    if (os_signpost_enabled(v27))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19D52D000, v27, OS_SIGNPOST_EVENT, v29, "DataTask", "received response headers", buf, 2u);
    }

    goto LABEL_28;
  }

  v29 = os_signpost_id_make_with_pointer(v27, self);
  if (v29 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    goto LABEL_26;
  }

LABEL_28:
  if (v27)
  {
  }

LABEL_2:
  v9 = [(WKURLSessionTaskDelegate *)self connection];
  v10 = v9;
  if (v9)
  {
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
    if (!self->_identifier.m_value.m_identifier || (WebCore::ResourceResponse::ResourceResponse(buf, a5), v13 = _Block_copy(a6), v14 = WTF::fastMalloc(0x10), *v14 = &unk_1F10EE070, v14[1] = v13, _Block_release(0), WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1))
    {
      __break(0xC471u);
      JUMPOUT(0x19D953724);
    }

    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v17 = IPC::Encoder::operator new(0x238, v16);
    *v17 = 525;
    *(v17 + 68) = 0;
    *(v17 + 70) = 0;
    *(v17 + 69) = 0;
    *(v17 + 2) = 0;
    *(v17 + 3) = 0;
    *(v17 + 1) = 0;
    IPC::Encoder::encodeHeader(v17);
    v31 = v17;
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v17, self->_identifier.m_value.m_identifier);
    IPC::ArgumentCoder<WebCore::ResourceResponse,void>::encode(v17, buf);
    v30[0] = v14;
    v30[1] = IdentifierInternal;
    IPC::Connection::sendMessageWithAsyncReply(v10, &v31, v30, 0, 0);
    v19 = v30[0];
    v30[0] = 0;
    if (v19)
    {
      (*(*v19 + 8))(v19);
    }

    v20 = v31;
    v31 = 0;
    if (v20)
    {
      IPC::Encoder::~Encoder(v20, v18);
      bmalloc::api::tzoneFree(v23, v24);
    }

    _Block_release(0);
    v22 = v40;
    v40 = 0;
    if (v22)
    {
    }

    WebCore::ResourceResponseBase::~ResourceResponseBase(buf, v21);
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v10);
  }

  else
  {
    (*(a6 + 2))(a6, 0);
  }
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5
{
  v27 = *MEMORY[0x1E69E9840];
  if (!kdebug_is_enabled())
  {
    goto LABEL_2;
  }

  v15 = *MEMORY[0x1E696EB68];
  v16 = WTFSignpostLogHandle();
  v17 = v16;
  if (v15 == 1)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *&buf = 67110144;
      WORD4(buf) = 1024;
      *(&buf + 10) = 0;
      HIWORD(buf) = 2048;
      v22 = self;
      v23 = 2048;
      v24 = WTFCurrentContinuousTime();
      v25 = 2048;
      v26 = [a5 length];
      _os_log_impl(&dword_19D52D000, v17, OS_LOG_TYPE_DEFAULT, "type=%d name=%d p=%lu ts=%llu received %zu bytes", &buf, 0x2Cu);
    }

    goto LABEL_2;
  }

  if (v16)
  {
    v18 = v16;
  }

  if (!self)
  {
    v19 = 0xEEEEB0B5B2B2EEEELL;
LABEL_22:
    if (os_signpost_enabled(v17))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = [a5 length];
      _os_signpost_emit_with_name_impl(&dword_19D52D000, v17, OS_SIGNPOST_EVENT, v19, "DataTask", "received %zu bytes", &buf, 0xCu);
    }

    goto LABEL_24;
  }

  v19 = os_signpost_id_make_with_pointer(v17, self);
  if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    goto LABEL_22;
  }

LABEL_24:
  if (v17)
  {
  }

LABEL_2:
  v7 = [(WKURLSessionTaskDelegate *)self connection];
  v8 = v7;
  if (v7)
  {
    while (1)
    {
      v9 = *v7;
      if ((*v7 & 1) == 0)
      {
        break;
      }

      v10 = *v7;
      atomic_compare_exchange_strong_explicit(v7, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v10 == v9)
      {
        goto LABEL_7;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v7);
LABEL_7:
    m_identifier = self->_identifier.m_value.m_identifier;
    p_identifier = &self->_identifier;
    if (m_identifier)
    {
      if (a5)
      {
        v13 = [a5 bytes];
        v14 = [a5 length];
      }

      else
      {
        v13 = 0;
        v14 = 0;
      }

      v20[0] = v13;
      v20[1] = v14;
      *&buf = p_identifier;
      *(&buf + 1) = v20;
      IPC::Connection::send<Messages::NetworkProcessProxy::DataTaskDidReceiveData>(v8, &buf, 0, 0, 0);
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v8);
    }

    else
    {
      __break(0xC471u);
    }
  }
}

- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5
{
  v34 = *MEMORY[0x1E69E9840];
  if (!kdebug_is_enabled())
  {
    goto LABEL_2;
  }

  v19 = *MEMORY[0x1E696EB68];
  v20 = WTFSignpostLogHandle();
  v21 = v20;
  if (v19 == 1)
  {
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67110144;
      *&buf[4] = 0;
      LOWORD(v26) = 1024;
      *(&v26 + 2) = 0;
      HIWORD(v26) = 2048;
      v27 = self;
      v28 = 2048;
      v29 = WTFCurrentContinuousTime();
      v30 = 1024;
      v31 = a5 != 0;
      _os_log_impl(&dword_19D52D000, v21, OS_LOG_TYPE_DEFAULT, "type=%d name=%d p=%lu ts=%llu completed with error: %d", buf, 0x28u);
    }

    goto LABEL_2;
  }

  if (v20)
  {
    v22 = v20;
  }

  if (!self)
  {
    v23 = 0xEEEEB0B5B2B2EEEELL;
LABEL_34:
    if (os_signpost_enabled(v21))
    {
      *buf = 67109120;
      *&buf[4] = a5 != 0;
      _os_signpost_emit_with_name_impl(&dword_19D52D000, v21, OS_SIGNPOST_EVENT, v23, "DataTask", "completed with error: %d", buf, 8u);
    }

    goto LABEL_36;
  }

  v23 = os_signpost_id_make_with_pointer(v21, self);
  if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    goto LABEL_34;
  }

LABEL_36:
  if (v21)
  {
  }

LABEL_2:
  v7 = [(WKURLSessionTaskDelegate *)self connection];
  v8 = v7;
  if (!v7)
  {
    return;
  }

  while (1)
  {
    v9 = *v7;
    if ((*v7 & 1) == 0)
    {
      break;
    }

    v10 = *v7;
    atomic_compare_exchange_strong_explicit(v7, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v10 == v9)
    {
      goto LABEL_7;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v7);
LABEL_7:
  p_identifier = &self->_identifier;
  if (!self->_identifier.m_value.m_identifier)
  {
    __break(0xC471u);
    goto LABEL_40;
  }

  MEMORY[0x19EB04D40](buf, a5);
  v24[0] = &self->_identifier;
  v24[1] = buf;
  IPC::Connection::send<Messages::NetworkProcessProxy::DataTaskDidCompleteWithError>(v8, v24, 0, 0, 0);
  v13 = v33;
  v33 = 0;
  if (v13)
  {
  }

  v14 = v32;
  v32 = 0;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, v12);
  }

  v15 = v26;
  v26 = 0;
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, v12);
  }

  v16 = *buf;
  *buf = 0;
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, v12);
  }

  m_ptr = self->_session.m_impl.m_ptr;
  if (!m_ptr)
  {
    goto LABEL_23;
  }

  v18 = *(m_ptr + 1);
  if (!v18)
  {
    goto LABEL_23;
  }

  if (!p_identifier->m_value.m_identifier)
  {
    __break(0xC471u);
LABEL_40:
    JUMPOUT(0x19D953D34);
  }

  WebKit::NetworkSessionCocoa::removeDataTask(v18, p_identifier->m_value.m_identifier);
LABEL_23:
  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v8);
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

- (uint64_t)URLSession:task:didReceiveChallenge:completionHandler:
{
  *a1 = &unk_1F10EE020;
  _Block_release(a1[1]);

  return WTF::fastFree(a1, v2);
}

- (WTF::StringImpl)URLSession:task:didReceiveChallenge:completionHandler:
{
  if (a3 && *a3)
  {
    v5 = IPC::Decoder::decode<WebKit::AuthenticationChallengeDisposition>(a3);
    if (v5 & 0x100) != 0 && (v6 = v5, IPC::Decoder::decode<WebCore::Credential>(a3, &v19), (v22))
    {
      *v15 = v19;
      v16 = v20;
      v17 = v21;
      v18 = 1;
      WebKit::fromAuthenticationChallengeDisposition(v6);
      WebCore::Credential::nsCredential(v15);
      result = (*(*(a1 + 8) + 16))(*(a1 + 8));
      if (v18)
      {
        v9 = v17;
        v17 = 0;
        if (v9)
        {
        }

        v10 = v15[1];
        v15[1] = 0;
        if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v10, v8);
        }

        result = v15[0];
        v15[0] = 0;
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
      v12 = *a3;
      v13 = a3[1];
      *a3 = 0;
      a3[1] = 0;
      v14 = a3[3];
      if (v14 && v13)
      {
        (*(*v14 + 16))(v14, v12);
      }

      return IPC::Connection::cancelReply<Messages::NetworkProcessProxy::DataTaskReceivedChallenge,[WKURLSessionTaskDelegate URLSession:task:didReceiveChallenge:completionHandler:]::$_3>(a1 + 8);
    }
  }

  else
  {
    v11 = a1 + 8;

    return IPC::Connection::cancelReply<Messages::NetworkProcessProxy::DataTaskReceivedChallenge,[WKURLSessionTaskDelegate URLSession:task:didReceiveChallenge:completionHandler:]::$_3>(v11);
  }

  return result;
}

- (WTF::StringImpl)URLSession:(uint64_t)a1 task:didReceiveChallenge:completionHandler:
{
  WebCore::CredentialBase::CredentialBase(&v9);
  *v6 = v9;
  v7 = v10;
  v8 = 0;
  WebKit::fromAuthenticationChallengeDisposition(0);
  WebCore::Credential::nsCredential(v6);
  (*(*a1 + 16))();
  v3 = v8;
  v8 = 0;
  if (v3)
  {
  }

  v4 = v6[1];
  v6[1] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, v2);
  }

  result = v6[0];
  v6[0] = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v2);
    }
  }

  return result;
}

- (uint64_t)URLSession:task:willPerformHTTPRedirection:newRequest:completionHandler:
{
  if (a3 && *a3)
  {
    IPC::Decoder::decode<std::tuple<BOOL>>(a3);
  }

  v4 = *(*(a1 + 8) + 16);

  return v4();
}

- (uint64_t)URLSession:dataTask:didReceiveResponse:completionHandler:
{
  if (a3 && *a3)
  {
    IPC::Decoder::decode<std::tuple<BOOL>>(a3);
  }

  v4 = *(*(a1 + 8) + 16);

  return v4();
}

@end