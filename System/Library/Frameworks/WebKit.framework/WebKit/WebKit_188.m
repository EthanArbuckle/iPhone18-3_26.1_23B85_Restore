uint64_t WTF::Detail::CallableWrapper<WebKit::WebGPU::RemoteDeviceProxy::importExternalTexture(WebCore::WebGPU::ExternalTextureDescriptor const&)::$_1,void,WebCore::SharedMemoryHandle &&>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1125FE8;
  v3 = *(this + 2);
  *(this + 2) = 0;
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

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<WebKit::WebGPU::RemoteDeviceProxy::importExternalTexture(WebCore::WebGPU::ExternalTextureDescriptor const&)::$_1,void,WebCore::SharedMemoryHandle &&>::call(WTF::ApproximateTime *a1, unint64_t a2)
{
  v3 = *(a1 + 1);
  v4 = *(*(*(v3 + 64) + 72) + 80);
  atomic_fetch_add(v4, 1u);
  v5 = *(v3 + 48);
  v6 = *(v4 + 128);
  v7 = INFINITY;
  if (fabs(v6) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v7 = v6 + v8;
  }

  if (*(v4 + 64) != v5)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(v4 + 72, &v33, v7);
    if (v35 != 1)
    {
      goto LABEL_13;
    }

    v20 = v34;
    if (v34 <= 1)
    {
LABEL_37:
      __break(0xC471u);
      return;
    }

    v21 = v33;
    *v33 = 3198;
    v22 = v21 + 1;
    if (v20 - 2 < (-v22 & 7 | 8uLL))
    {
      goto LABEL_13;
    }

    v23 = -v22 & 7;
    *(v22 + v23) = v5;
    if (v23 != 7)
    {
      v23 = 6;
    }

    v24 = (*(v4 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v26 = *(v4 + 72);
    v25 = *(v4 + 80);
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

    *(v4 + 88) = v28;
    if (*(v25 + 8) <= 0xFFuLL)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v29 = atomic_exchange((*(v25 + 16) + 128), v28);
    v30 = *(v4 + 124);
    if (v29 == 0x80000000 || v30 != 0)
    {
      v32 = v30 + 1;
      *(v4 + 124) = v32;
      if (v32 >= *(v4 + 120))
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

  IPC::StreamClientConnectionBuffer::tryAcquire(v4 + 72, &v33, v7);
  if (v35 == 1)
  {
    if (v34 <= 1)
    {
      __break(0xC471u);
    }

    else
    {
      *v33 = 3197;
      v10 = (*(v4 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v12 = *(v4 + 72);
      v11 = *(v4 + 80);
      if (v10 + 16 >= v12)
      {
        v10 = 0;
      }

      v13 = v10 + 16;
      if (v12 <= v13)
      {
        v13 = 0;
      }

      *(v4 + 88) = v13;
      if (*(v11 + 8) > 0xFFuLL)
      {
        atomic_exchange((*(v11 + 16) + 128), v13);
        *(v4 + 124) = 0;
        v14 = *(v4 + 8);
        v15 = IPC::Encoder::operator new(0x238, v9);
        *v15 = 1044;
        *(v15 + 2) = 0;
        *(v15 + 3) = 0;
        *(v15 + 1) = v5;
        *(v15 + 68) = 0;
        *(v15 + 70) = 0;
        *(v15 + 69) = 0;
        IPC::Encoder::encodeHeader(v15);
        v36 = v15;
        IPC::ArgumentCoder<WebCore::SharedMemoryHandle,void>::encode(v15, a2);
        IPC::Connection::sendMessageImpl(v14, &v36, 1, 0);
        v17 = v36;
        v36 = 0;
        if (v17)
        {
          IPC::Encoder::~Encoder(v17, v16);
          bmalloc::api::tzoneFree(v18, v19);
        }

        goto LABEL_13;
      }
    }

    goto LABEL_36;
  }

LABEL_13:
  if (atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    IPC::StreamClientConnection::operator delete(v4);
  }
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteDevice::CreateComputePipelineAsync,WebKit::WebGPU::RemoteDeviceProxy::createComputePipelineAsync(WebCore::WebGPU::ComputePipelineDescriptor const&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::WebGPU::ComputePipeline,WTF::RawPtrTraits<WebCore::WebGPU::ComputePipeline>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::ComputePipeline>> &&,WTF::String &&)> &&)::$_0 &>(WebKit::WebGPU::RemoteDeviceProxy::createComputePipelineAsync(WebCore::WebGPU::ComputePipelineDescriptor const&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::WebGPU::ComputePipeline,WTF::RawPtrTraits<WebCore::WebGPU::ComputePipeline>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::ComputePipeline>> &&,WTF::String &&)> &&)::$_0 &,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::WebGPU::ComputePipeline,WTF::RawPtrTraits<WebCore::WebGPU::ComputePipeline>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::ComputePipeline>> &&,WTF::String &&)> &&,WebKit::WebGPU::RemoteDeviceProxy::createComputePipelineAsync(WebCore::WebGPU::ComputePipelineDescriptor const&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::WebGPU::ComputePipeline,WTF::RawPtrTraits<WebCore::WebGPU::ComputePipeline>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::ComputePipeline>> &&,WTF::String &&)> &&)::$_0 &)#1},void,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::WebGPU::ComputePipeline,WTF::RawPtrTraits<WebCore::WebGPU::ComputePipeline>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::ComputePipeline>> &&,WTF::String &&)> &&,WebKit::WebGPU::RemoteDeviceProxy::createComputePipelineAsync(WebCore::WebGPU::ComputePipelineDescriptor const&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::WebGPU::ComputePipeline,WTF::RawPtrTraits<WebCore::WebGPU::ComputePipeline>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::ComputePipeline>> &&,WTF::String &&)> &&)::$_0 &>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1126010;
  v3 = a1[4];
  a1[4] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = a1[3];
  a1[3] = 0;
  if (v4)
  {
    if (v4[4] == 1)
    {
      (*(*v4 + 8))(v4);
    }

    else
    {
      --v4[4];
    }
  }

  v5 = a1[2];
  a1[2] = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteDevice::CreateComputePipelineAsync,WebKit::WebGPU::RemoteDeviceProxy::createComputePipelineAsync(WebCore::WebGPU::ComputePipelineDescriptor const&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::WebGPU::ComputePipeline,WTF::RawPtrTraits<WebCore::WebGPU::ComputePipeline>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::ComputePipeline>> &&,WTF::String &&)> &&)::$_0 &>(WebKit::WebGPU::RemoteDeviceProxy::createComputePipelineAsync(WebCore::WebGPU::ComputePipelineDescriptor const&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::WebGPU::ComputePipeline,WTF::RawPtrTraits<WebCore::WebGPU::ComputePipeline>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::ComputePipeline>> &&,WTF::String &&)> &&)::$_0 &,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::WebGPU::ComputePipeline,WTF::RawPtrTraits<WebCore::WebGPU::ComputePipeline>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::ComputePipeline>> &&,WTF::String &&)> &&,WebKit::WebGPU::RemoteDeviceProxy::createComputePipelineAsync(WebCore::WebGPU::ComputePipelineDescriptor const&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::WebGPU::ComputePipeline,WTF::RawPtrTraits<WebCore::WebGPU::ComputePipeline>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::ComputePipeline>> &&,WTF::String &&)> &&)::$_0 &)#1},void,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::WebGPU::ComputePipeline,WTF::RawPtrTraits<WebCore::WebGPU::ComputePipeline>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::ComputePipeline>> &&,WTF::String &&)> &&,WebKit::WebGPU::RemoteDeviceProxy::createComputePipelineAsync(WebCore::WebGPU::ComputePipelineDescriptor const&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::WebGPU::ComputePipeline,WTF::RawPtrTraits<WebCore::WebGPU::ComputePipeline>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::ComputePipeline>> &&,WTF::String &&)> &&)::$_0 &>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F1126010;
  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *(this + 3);
  *(this + 3) = 0;
  if (v4)
  {
    if (v4[4] == 1)
    {
      (*(*v4 + 8))(v4);
    }

    else
    {
      --v4[4];
    }
  }

  v5 = *(this + 2);
  *(this + 2) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteDevice::CreateComputePipelineAsync,WebKit::WebGPU::RemoteDeviceProxy::createComputePipelineAsync(WebCore::WebGPU::ComputePipelineDescriptor const&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::WebGPU::ComputePipeline,WTF::RawPtrTraits<WebCore::WebGPU::ComputePipeline>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::ComputePipeline>> &&,WTF::String &&)> &&)::$_0 &>(WebKit::WebGPU::RemoteDeviceProxy::createComputePipelineAsync(WebCore::WebGPU::ComputePipelineDescriptor const&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::WebGPU::ComputePipeline,WTF::RawPtrTraits<WebCore::WebGPU::ComputePipeline>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::ComputePipeline>> &&,WTF::String &&)> &&)::$_0 &,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::WebGPU::ComputePipeline,WTF::RawPtrTraits<WebCore::WebGPU::ComputePipeline>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::ComputePipeline>> &&,WTF::String &&)> &&,WebKit::WebGPU::RemoteDeviceProxy::createComputePipelineAsync(WebCore::WebGPU::ComputePipelineDescriptor const&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::WebGPU::ComputePipeline,WTF::RawPtrTraits<WebCore::WebGPU::ComputePipeline>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::ComputePipeline>> &&,WTF::String &&)> &&)::$_0 &)#1},void,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::WebGPU::ComputePipeline,WTF::RawPtrTraits<WebCore::WebGPU::ComputePipeline>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::ComputePipeline>> &&,WTF::String &&)> &&,WebKit::WebGPU::RemoteDeviceProxy::createComputePipelineAsync(WebCore::WebGPU::ComputePipelineDescriptor const&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::WebGPU::ComputePipeline,WTF::RawPtrTraits<WebCore::WebGPU::ComputePipeline>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::ComputePipeline>> &&,WTF::String &&)> &&)::$_0 &>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
{
  if (a3 && *a3 && (IPC::Decoder::decode<std::tuple<BOOL,WTF::String>>(v6, a3), v8 == 1))
  {
    result = std::apply[abi:sn200100]<WebKit::WebGPU::RemoteDeviceProxy::createComputePipelineAsync(WebCore::WebGPU::ComputePipelineDescriptor const&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::WebGPU::ComputePipeline,WTF::RawPtrTraits<WebCore::WebGPU::ComputePipeline>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::ComputePipeline>> &&,WTF::String &&)> &&)::$_0,std::tuple<BOOL,WTF::RefPtr<WebCore::WebGPU::ComputePipeline,WTF::RawPtrTraits<WebCore::WebGPU::ComputePipeline>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::ComputePipeline>> &&>>((a1 + 8), v6);
    if ((v8 & 1) == 0)
    {
      return result;
    }
  }

  else
  {
    v6[0] = 0;
    v7 = 0;
    std::apply[abi:sn200100]<WebKit::WebGPU::RemoteDeviceProxy::createComputePipelineAsync(WebCore::WebGPU::ComputePipelineDescriptor const&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::WebGPU::ComputePipeline,WTF::RawPtrTraits<WebCore::WebGPU::ComputePipeline>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::ComputePipeline>> &&,WTF::String &&)> &&)::$_0,std::tuple<BOOL,WTF::RefPtr<WebCore::WebGPU::ComputePipeline,WTF::RawPtrTraits<WebCore::WebGPU::ComputePipeline>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::ComputePipeline>> &&>>((a1 + 8), v6);
  }

  result = v7;
  v7 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v5);
    }
  }

  return result;
}

IPC::Decoder *IPC::Decoder::decode<std::tuple<BOOL,WTF::String>>(uint64_t a1, IPC::Decoder *a2)
{
  v4 = *(a2 + 2);
  v5 = *a2;
  v6 = *(a2 + 1);
  if (v6 <= &v4[-v5])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v14 = *(a2 + 3);
    if (v14)
    {
      if (v6)
      {
        (*(*v14 + 16))(v14);
        v5 = *a2;
        v6 = *(a2 + 1);
        goto LABEL_16;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
LABEL_16:
    *a2 = 0;
    *(a2 + 1) = 0;
    v15 = *(a2 + 3);
    if (v15)
    {
      if (v6)
      {
        (*(*v15 + 16))(v15, v5);
        v5 = *a2;
        v6 = *(a2 + 1);
        goto LABEL_19;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
LABEL_19:
    *a2 = 0;
    *(a2 + 1) = 0;
    v16 = *(a2 + 3);
    if (v16 && v6)
    {
      (*(*v16 + 16))(v16, v5);
    }

    goto LABEL_8;
  }

  *(a2 + 2) = v4 + 1;
  if (!v4)
  {
    goto LABEL_16;
  }

  v7 = *v4;
  if (v7 >= 2)
  {
    goto LABEL_19;
  }

  result = IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a2, &v17);
  if (v18 & 1) != 0 || (v9 = *a2, v10 = *(a2 + 1), *a2 = 0, *(a2 + 1) = 0, (v11 = *(a2 + 3)) != 0) && v10 && (result = (*(*v11 + 16))(v11, v9), (v18))
  {
    *a1 = v7;
    *(a1 + 8) = v17;
    *(a1 + 16) = 1;
    return result;
  }

LABEL_8:
  *a1 = 0;
  *(a1 + 16) = 0;
  v12 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result && v12)
  {
    v13 = *(*result + 16);

    return v13();
  }

  return result;
}

_DWORD *std::apply[abi:sn200100]<WebKit::WebGPU::RemoteDeviceProxy::createComputePipelineAsync(WebCore::WebGPU::ComputePipelineDescriptor const&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::WebGPU::ComputePipeline,WTF::RawPtrTraits<WebCore::WebGPU::ComputePipeline>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::ComputePipeline>> &&,WTF::String &&)> &&)::$_0,std::tuple<BOOL,WTF::RefPtr<WebCore::WebGPU::ComputePipeline,WTF::RawPtrTraits<WebCore::WebGPU::ComputePipeline>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::ComputePipeline>> &&>>(uint64_t *a1, _BYTE *a2)
{
  if (*a2)
  {
    v3 = a1[2];
    v4 = *(v3 + 56);
    v5 = *a1;
    v6 = WebKit::WebGPU::RemoteComputePipelineProxy::operator new(0x38, a2);
    *(v6 + 16) = 1;
    *(v6 + 24) = 0;
    *(v6 + 32) = v5;
    *v6 = &unk_1F11258A0;
    *(v6 + 8) = 0;
    ++*(v4 + 8);
    *(v6 + 40) = v4;
    ++*(v3 + 16);
    *(v6 + 48) = v3;
    WebCore::WebGPU::ComputePipeline::setLabel(v6, (a1 + 3));
    v14 = v6;
    v7 = MEMORY[0x1E696EB88];
    atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
    v13 = v7;
    v8 = a1[1];
    a1[1] = 0;
    (*(*v8 + 16))(v8, &v14, &v13);
    (*(*v8 + 8))(v8);
    v10 = v13;
    v13 = 0;
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v9);
    }
  }

  else
  {
    v14 = 0;
    v11 = a1[1];
    a1[1] = 0;
    (*(*v11 + 16))(v11, &v14, a2 + 8);
    (*(*v11 + 8))(v11);
  }

  result = v14;
  v14 = 0;
  if (result)
  {
    if (result[4] == 1)
    {
      return (*(*result + 8))(result);
    }

    else
    {
      --result[4];
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<std::optional<WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WebKit::WebGPU::RemoteDeviceProxy::createComputePipelineAsync(WebCore::WebGPU::ComputePipelineDescriptor const&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::WebGPU::ComputePipeline,WTF::RawPtrTraits<WebCore::WebGPU::ComputePipeline>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::ComputePipeline>> &&,WTF::String &&)> &&)::$_0 &,unsigned long long>> IPC::StreamClientConnection::sendWithAsyncReply<Messages::RemoteDevice::CreateComputePipelineAsync,WebKit::WebGPU::RemoteDeviceProxy::createComputePipelineAsync(WebCore::WebGPU::ComputePipelineDescriptor const&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::WebGPU::ComputePipeline,WTF::RawPtrTraits<WebCore::WebGPU::ComputePipeline>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::ComputePipeline>> &&,WTF::String &&)> &&)::$_0 &,WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(Messages::RemoteDevice::CreateComputePipelineAsync &&,WebKit::WebGPU::RemoteDeviceProxy::createComputePipelineAsync(WebCore::WebGPU::ComputePipelineDescriptor const&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::WebGPU::ComputePipeline,WTF::RawPtrTraits<WebCore::WebGPU::ComputePipeline>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::ComputePipeline>> &&,WTF::String &&)> &&)::$_0 &,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long><WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1126038;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<std::optional<WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WebKit::WebGPU::RemoteDeviceProxy::createComputePipelineAsync(WebCore::WebGPU::ComputePipelineDescriptor const&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::WebGPU::ComputePipeline,WTF::RawPtrTraits<WebCore::WebGPU::ComputePipeline>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::ComputePipeline>> &&,WTF::String &&)> &&)::$_0 &,unsigned long long>> IPC::StreamClientConnection::sendWithAsyncReply<Messages::RemoteDevice::CreateComputePipelineAsync,WebKit::WebGPU::RemoteDeviceProxy::createComputePipelineAsync(WebCore::WebGPU::ComputePipelineDescriptor const&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::WebGPU::ComputePipeline,WTF::RawPtrTraits<WebCore::WebGPU::ComputePipeline>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::ComputePipeline>> &&,WTF::String &&)> &&)::$_0 &,WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(Messages::RemoteDevice::CreateComputePipelineAsync &&,WebKit::WebGPU::RemoteDeviceProxy::createComputePipelineAsync(WebCore::WebGPU::ComputePipelineDescriptor const&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::WebGPU::ComputePipeline,WTF::RawPtrTraits<WebCore::WebGPU::ComputePipeline>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::ComputePipeline>> &&,WTF::String &&)> &&)::$_0 &,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long><WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1126038;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<std::optional<WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WebKit::WebGPU::RemoteDeviceProxy::createComputePipelineAsync(WebCore::WebGPU::ComputePipelineDescriptor const&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::WebGPU::ComputePipeline,WTF::RawPtrTraits<WebCore::WebGPU::ComputePipeline>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::ComputePipeline>> &&,WTF::String &&)> &&)::$_0 &,unsigned long long>> IPC::StreamClientConnection::sendWithAsyncReply<Messages::RemoteDevice::CreateComputePipelineAsync,WebKit::WebGPU::RemoteDeviceProxy::createComputePipelineAsync(WebCore::WebGPU::ComputePipelineDescriptor const&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::WebGPU::ComputePipeline,WTF::RawPtrTraits<WebCore::WebGPU::ComputePipeline>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::ComputePipeline>> &&,WTF::String &&)> &&)::$_0 &,WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(Messages::RemoteDevice::CreateComputePipelineAsync &&,WebKit::WebGPU::RemoteDeviceProxy::createComputePipelineAsync(WebCore::WebGPU::ComputePipelineDescriptor const&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::WebGPU::ComputePipeline,WTF::RawPtrTraits<WebCore::WebGPU::ComputePipeline>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::ComputePipeline>> &&,WTF::String &&)> &&)::$_0 &,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long><WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>)::{lambda(void)#1},void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1, 0, 0);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteDevice::CreateRenderPipelineAsync,WebKit::WebGPU::RemoteDeviceProxy::createRenderPipelineAsync(WebCore::WebGPU::RenderPipelineDescriptor const&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::WebGPU::RenderPipeline,WTF::RawPtrTraits<WebCore::WebGPU::RenderPipeline>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::RenderPipeline>> &&,WTF::String &&)> &&)::$_0 &>(WebKit::WebGPU::RemoteDeviceProxy::createRenderPipelineAsync(WebCore::WebGPU::RenderPipelineDescriptor const&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::WebGPU::RenderPipeline,WTF::RawPtrTraits<WebCore::WebGPU::RenderPipeline>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::RenderPipeline>> &&,WTF::String &&)> &&)::$_0 &,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::WebGPU::RenderPipeline,WTF::RawPtrTraits<WebCore::WebGPU::RenderPipeline>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::RenderPipeline>> &&,WTF::String &&)> &&,WebKit::WebGPU::RemoteDeviceProxy::createRenderPipelineAsync(WebCore::WebGPU::RenderPipelineDescriptor const&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::WebGPU::RenderPipeline,WTF::RawPtrTraits<WebCore::WebGPU::RenderPipeline>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::RenderPipeline>> &&,WTF::String &&)> &&)::$_0 &)#1},void,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::WebGPU::RenderPipeline,WTF::RawPtrTraits<WebCore::WebGPU::RenderPipeline>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::RenderPipeline>> &&,WTF::String &&)> &&,WebKit::WebGPU::RemoteDeviceProxy::createRenderPipelineAsync(WebCore::WebGPU::RenderPipelineDescriptor const&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::WebGPU::RenderPipeline,WTF::RawPtrTraits<WebCore::WebGPU::RenderPipeline>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::RenderPipeline>> &&,WTF::String &&)> &&)::$_0 &>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1126060;
  v3 = a1[4];
  a1[4] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = a1[3];
  a1[3] = 0;
  if (v4)
  {
    if (v4[4] == 1)
    {
      (*(*v4 + 8))(v4);
    }

    else
    {
      --v4[4];
    }
  }

  v5 = a1[2];
  a1[2] = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteDevice::CreateRenderPipelineAsync,WebKit::WebGPU::RemoteDeviceProxy::createRenderPipelineAsync(WebCore::WebGPU::RenderPipelineDescriptor const&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::WebGPU::RenderPipeline,WTF::RawPtrTraits<WebCore::WebGPU::RenderPipeline>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::RenderPipeline>> &&,WTF::String &&)> &&)::$_0 &>(WebKit::WebGPU::RemoteDeviceProxy::createRenderPipelineAsync(WebCore::WebGPU::RenderPipelineDescriptor const&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::WebGPU::RenderPipeline,WTF::RawPtrTraits<WebCore::WebGPU::RenderPipeline>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::RenderPipeline>> &&,WTF::String &&)> &&)::$_0 &,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::WebGPU::RenderPipeline,WTF::RawPtrTraits<WebCore::WebGPU::RenderPipeline>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::RenderPipeline>> &&,WTF::String &&)> &&,WebKit::WebGPU::RemoteDeviceProxy::createRenderPipelineAsync(WebCore::WebGPU::RenderPipelineDescriptor const&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::WebGPU::RenderPipeline,WTF::RawPtrTraits<WebCore::WebGPU::RenderPipeline>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::RenderPipeline>> &&,WTF::String &&)> &&)::$_0 &)#1},void,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::WebGPU::RenderPipeline,WTF::RawPtrTraits<WebCore::WebGPU::RenderPipeline>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::RenderPipeline>> &&,WTF::String &&)> &&,WebKit::WebGPU::RemoteDeviceProxy::createRenderPipelineAsync(WebCore::WebGPU::RenderPipelineDescriptor const&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::WebGPU::RenderPipeline,WTF::RawPtrTraits<WebCore::WebGPU::RenderPipeline>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::RenderPipeline>> &&,WTF::String &&)> &&)::$_0 &>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F1126060;
  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *(this + 3);
  *(this + 3) = 0;
  if (v4)
  {
    if (v4[4] == 1)
    {
      (*(*v4 + 8))(v4);
    }

    else
    {
      --v4[4];
    }
  }

  v5 = *(this + 2);
  *(this + 2) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteDevice::CreateRenderPipelineAsync,WebKit::WebGPU::RemoteDeviceProxy::createRenderPipelineAsync(WebCore::WebGPU::RenderPipelineDescriptor const&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::WebGPU::RenderPipeline,WTF::RawPtrTraits<WebCore::WebGPU::RenderPipeline>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::RenderPipeline>> &&,WTF::String &&)> &&)::$_0 &>(WebKit::WebGPU::RemoteDeviceProxy::createRenderPipelineAsync(WebCore::WebGPU::RenderPipelineDescriptor const&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::WebGPU::RenderPipeline,WTF::RawPtrTraits<WebCore::WebGPU::RenderPipeline>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::RenderPipeline>> &&,WTF::String &&)> &&)::$_0 &,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::WebGPU::RenderPipeline,WTF::RawPtrTraits<WebCore::WebGPU::RenderPipeline>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::RenderPipeline>> &&,WTF::String &&)> &&,WebKit::WebGPU::RemoteDeviceProxy::createRenderPipelineAsync(WebCore::WebGPU::RenderPipelineDescriptor const&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::WebGPU::RenderPipeline,WTF::RawPtrTraits<WebCore::WebGPU::RenderPipeline>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::RenderPipeline>> &&,WTF::String &&)> &&)::$_0 &)#1},void,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::WebGPU::RenderPipeline,WTF::RawPtrTraits<WebCore::WebGPU::RenderPipeline>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::RenderPipeline>> &&,WTF::String &&)> &&,WebKit::WebGPU::RemoteDeviceProxy::createRenderPipelineAsync(WebCore::WebGPU::RenderPipelineDescriptor const&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::WebGPU::RenderPipeline,WTF::RawPtrTraits<WebCore::WebGPU::RenderPipeline>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::RenderPipeline>> &&,WTF::String &&)> &&)::$_0 &>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
{
  if (a3 && *a3 && (IPC::Decoder::decode<std::tuple<BOOL,WTF::String>>(v6, a3), v8 == 1))
  {
    result = std::apply[abi:sn200100]<WebKit::WebGPU::RemoteDeviceProxy::createRenderPipelineAsync(WebCore::WebGPU::RenderPipelineDescriptor const&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::WebGPU::RenderPipeline,WTF::RawPtrTraits<WebCore::WebGPU::RenderPipeline>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::RenderPipeline>> &&,WTF::String &&)> &&)::$_0,std::tuple<BOOL,WTF::RefPtr<WebCore::WebGPU::RenderPipeline,WTF::RawPtrTraits<WebCore::WebGPU::RenderPipeline>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::RenderPipeline>> &&>>((a1 + 8), v6);
    if ((v8 & 1) == 0)
    {
      return result;
    }
  }

  else
  {
    v6[0] = 0;
    v7 = 0;
    std::apply[abi:sn200100]<WebKit::WebGPU::RemoteDeviceProxy::createRenderPipelineAsync(WebCore::WebGPU::RenderPipelineDescriptor const&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::WebGPU::RenderPipeline,WTF::RawPtrTraits<WebCore::WebGPU::RenderPipeline>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::RenderPipeline>> &&,WTF::String &&)> &&)::$_0,std::tuple<BOOL,WTF::RefPtr<WebCore::WebGPU::RenderPipeline,WTF::RawPtrTraits<WebCore::WebGPU::RenderPipeline>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::RenderPipeline>> &&>>((a1 + 8), v6);
  }

  result = v7;
  v7 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v5);
    }
  }

  return result;
}

_DWORD *std::apply[abi:sn200100]<WebKit::WebGPU::RemoteDeviceProxy::createRenderPipelineAsync(WebCore::WebGPU::RenderPipelineDescriptor const&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::WebGPU::RenderPipeline,WTF::RawPtrTraits<WebCore::WebGPU::RenderPipeline>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::RenderPipeline>> &&,WTF::String &&)> &&)::$_0,std::tuple<BOOL,WTF::RefPtr<WebCore::WebGPU::RenderPipeline,WTF::RawPtrTraits<WebCore::WebGPU::RenderPipeline>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::RenderPipeline>> &&>>(void *a1, _BYTE *a2)
{
  if (*a2)
  {
    v3 = a1[2];
    v4 = *(v3 + 56);
    v5 = *a1;
    v6 = WebKit::WebGPU::RemoteRenderPipelineProxy::operator new(a1, a2);
    *(v6 + 16) = 1;
    *(v6 + 24) = 0;
    *(v6 + 32) = v5;
    *v6 = &unk_1F1126408;
    *(v6 + 8) = 0;
    ++*(v4 + 8);
    *(v6 + 40) = v4;
    ++*(v3 + 16);
    *(v6 + 48) = v3;
    WebCore::WebGPU::RenderPipeline::setLabel(v6, (a1 + 3));
    v14 = v6;
    v7 = MEMORY[0x1E696EB88];
    atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
    v13 = v7;
    v8 = a1[1];
    a1[1] = 0;
    (*(*v8 + 16))(v8, &v14, &v13);
    (*(*v8 + 8))(v8);
    v10 = v13;
    v13 = 0;
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v9);
    }
  }

  else
  {
    v14 = 0;
    v11 = a1[1];
    a1[1] = 0;
    (*(*v11 + 16))(v11, &v14, a2 + 8);
    (*(*v11 + 8))(v11);
  }

  result = v14;
  v14 = 0;
  if (result)
  {
    if (result[4] == 1)
    {
      return (*(*result + 8))(result);
    }

    else
    {
      --result[4];
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<std::optional<WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WebKit::WebGPU::RemoteDeviceProxy::createRenderPipelineAsync(WebCore::WebGPU::RenderPipelineDescriptor const&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::WebGPU::RenderPipeline,WTF::RawPtrTraits<WebCore::WebGPU::RenderPipeline>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::RenderPipeline>> &&,WTF::String &&)> &&)::$_0 &,unsigned long long>> IPC::StreamClientConnection::sendWithAsyncReply<Messages::RemoteDevice::CreateRenderPipelineAsync,WebKit::WebGPU::RemoteDeviceProxy::createRenderPipelineAsync(WebCore::WebGPU::RenderPipelineDescriptor const&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::WebGPU::RenderPipeline,WTF::RawPtrTraits<WebCore::WebGPU::RenderPipeline>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::RenderPipeline>> &&,WTF::String &&)> &&)::$_0 &,WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(Messages::RemoteDevice::CreateRenderPipelineAsync &&,WebKit::WebGPU::RemoteDeviceProxy::createRenderPipelineAsync(WebCore::WebGPU::RenderPipelineDescriptor const&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::WebGPU::RenderPipeline,WTF::RawPtrTraits<WebCore::WebGPU::RenderPipeline>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::RenderPipeline>> &&,WTF::String &&)> &&)::$_0 &,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long><WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1126088;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<std::optional<WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WebKit::WebGPU::RemoteDeviceProxy::createRenderPipelineAsync(WebCore::WebGPU::RenderPipelineDescriptor const&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::WebGPU::RenderPipeline,WTF::RawPtrTraits<WebCore::WebGPU::RenderPipeline>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::RenderPipeline>> &&,WTF::String &&)> &&)::$_0 &,unsigned long long>> IPC::StreamClientConnection::sendWithAsyncReply<Messages::RemoteDevice::CreateRenderPipelineAsync,WebKit::WebGPU::RemoteDeviceProxy::createRenderPipelineAsync(WebCore::WebGPU::RenderPipelineDescriptor const&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::WebGPU::RenderPipeline,WTF::RawPtrTraits<WebCore::WebGPU::RenderPipeline>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::RenderPipeline>> &&,WTF::String &&)> &&)::$_0 &,WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(Messages::RemoteDevice::CreateRenderPipelineAsync &&,WebKit::WebGPU::RemoteDeviceProxy::createRenderPipelineAsync(WebCore::WebGPU::RenderPipelineDescriptor const&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::WebGPU::RenderPipeline,WTF::RawPtrTraits<WebCore::WebGPU::RenderPipeline>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::RenderPipeline>> &&,WTF::String &&)> &&)::$_0 &,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long><WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1126088;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<std::optional<WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WebKit::WebGPU::RemoteDeviceProxy::createRenderPipelineAsync(WebCore::WebGPU::RenderPipelineDescriptor const&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::WebGPU::RenderPipeline,WTF::RawPtrTraits<WebCore::WebGPU::RenderPipeline>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::RenderPipeline>> &&,WTF::String &&)> &&)::$_0 &,unsigned long long>> IPC::StreamClientConnection::sendWithAsyncReply<Messages::RemoteDevice::CreateRenderPipelineAsync,WebKit::WebGPU::RemoteDeviceProxy::createRenderPipelineAsync(WebCore::WebGPU::RenderPipelineDescriptor const&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::WebGPU::RenderPipeline,WTF::RawPtrTraits<WebCore::WebGPU::RenderPipeline>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::RenderPipeline>> &&,WTF::String &&)> &&)::$_0 &,WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(Messages::RemoteDevice::CreateRenderPipelineAsync &&,WebKit::WebGPU::RemoteDeviceProxy::createRenderPipelineAsync(WebCore::WebGPU::RenderPipelineDescriptor const&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::WebGPU::RenderPipeline,WTF::RawPtrTraits<WebCore::WebGPU::RenderPipeline>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::RenderPipeline>> &&,WTF::String &&)> &&)::$_0 &,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long><WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>)::{lambda(void)#1},void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1, 0, 0);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteDevice::PopErrorScope,WebKit::WebGPU::RemoteDeviceProxy::popErrorScope(WTF::CompletionHandler<void ()(BOOL,std::optional<mpark::variant<WTF::Ref<WebCore::WebGPU::OutOfMemoryError,WTF::RawPtrTraits<WebCore::WebGPU::OutOfMemoryError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::OutOfMemoryError>>,WTF::Ref<WebCore::WebGPU::ValidationError,WTF::RawPtrTraits<WebCore::WebGPU::ValidationError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::ValidationError>>,WTF::Ref<WebCore::WebGPU::InternalError,WTF::RawPtrTraits<WebCore::WebGPU::InternalError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::InternalError>>>> &&)> &&)::$_0 &>(WebKit::WebGPU::RemoteDeviceProxy::popErrorScope(WTF::CompletionHandler<void ()(BOOL,std::optional<mpark::variant<WTF::Ref<WebCore::WebGPU::OutOfMemoryError,WTF::RawPtrTraits<WebCore::WebGPU::OutOfMemoryError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::OutOfMemoryError>>,WTF::Ref<WebCore::WebGPU::ValidationError,WTF::RawPtrTraits<WebCore::WebGPU::ValidationError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::ValidationError>>,WTF::Ref<WebCore::WebGPU::InternalError,WTF::RawPtrTraits<WebCore::WebGPU::InternalError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::InternalError>>>> &&)> &&)::$_0 &,WTF::ThreadLikeAssertion)::{lambda(WebKit::WebGPU::RemoteDeviceProxy::popErrorScope(WTF::CompletionHandler<void ()(BOOL,std::optional<mpark::variant<WTF::Ref<WebCore::WebGPU::OutOfMemoryError,WTF::RawPtrTraits<WebCore::WebGPU::OutOfMemoryError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::OutOfMemoryError>>,WTF::Ref<WebCore::WebGPU::ValidationError,WTF::RawPtrTraits<WebCore::WebGPU::ValidationError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::ValidationError>>,WTF::Ref<WebCore::WebGPU::InternalError,WTF::RawPtrTraits<WebCore::WebGPU::InternalError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::InternalError>>>> &&)> &&)::$_0,IPC::Connection*)#1},void,WebKit::WebGPU::RemoteDeviceProxy::popErrorScope(WTF::CompletionHandler<void ()(BOOL,std::optional<mpark::variant<WTF::Ref<WebCore::WebGPU::OutOfMemoryError,WTF::RawPtrTraits<WebCore::WebGPU::OutOfMemoryError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::OutOfMemoryError>>,WTF::Ref<WebCore::WebGPU::ValidationError,WTF::RawPtrTraits<WebCore::WebGPU::ValidationError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::ValidationError>>,WTF::Ref<WebCore::WebGPU::InternalError,WTF::RawPtrTraits<WebCore::WebGPU::InternalError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::InternalError>>>> &&)> &&)::$_0,IPC::Connection*>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F11260B0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteDevice::PopErrorScope,WebKit::WebGPU::RemoteDeviceProxy::popErrorScope(WTF::CompletionHandler<void ()(BOOL,std::optional<mpark::variant<WTF::Ref<WebCore::WebGPU::OutOfMemoryError,WTF::RawPtrTraits<WebCore::WebGPU::OutOfMemoryError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::OutOfMemoryError>>,WTF::Ref<WebCore::WebGPU::ValidationError,WTF::RawPtrTraits<WebCore::WebGPU::ValidationError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::ValidationError>>,WTF::Ref<WebCore::WebGPU::InternalError,WTF::RawPtrTraits<WebCore::WebGPU::InternalError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::InternalError>>>> &&)> &&)::$_0 &>(WebKit::WebGPU::RemoteDeviceProxy::popErrorScope(WTF::CompletionHandler<void ()(BOOL,std::optional<mpark::variant<WTF::Ref<WebCore::WebGPU::OutOfMemoryError,WTF::RawPtrTraits<WebCore::WebGPU::OutOfMemoryError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::OutOfMemoryError>>,WTF::Ref<WebCore::WebGPU::ValidationError,WTF::RawPtrTraits<WebCore::WebGPU::ValidationError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::ValidationError>>,WTF::Ref<WebCore::WebGPU::InternalError,WTF::RawPtrTraits<WebCore::WebGPU::InternalError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::InternalError>>>> &&)> &&)::$_0 &,WTF::ThreadLikeAssertion)::{lambda(WebKit::WebGPU::RemoteDeviceProxy::popErrorScope(WTF::CompletionHandler<void ()(BOOL,std::optional<mpark::variant<WTF::Ref<WebCore::WebGPU::OutOfMemoryError,WTF::RawPtrTraits<WebCore::WebGPU::OutOfMemoryError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::OutOfMemoryError>>,WTF::Ref<WebCore::WebGPU::ValidationError,WTF::RawPtrTraits<WebCore::WebGPU::ValidationError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::ValidationError>>,WTF::Ref<WebCore::WebGPU::InternalError,WTF::RawPtrTraits<WebCore::WebGPU::InternalError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::InternalError>>>> &&)> &&)::$_0,IPC::Connection*)#1},void,WebKit::WebGPU::RemoteDeviceProxy::popErrorScope(WTF::CompletionHandler<void ()(BOOL,std::optional<mpark::variant<WTF::Ref<WebCore::WebGPU::OutOfMemoryError,WTF::RawPtrTraits<WebCore::WebGPU::OutOfMemoryError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::OutOfMemoryError>>,WTF::Ref<WebCore::WebGPU::ValidationError,WTF::RawPtrTraits<WebCore::WebGPU::ValidationError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::ValidationError>>,WTF::Ref<WebCore::WebGPU::InternalError,WTF::RawPtrTraits<WebCore::WebGPU::InternalError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::InternalError>>>> &&)> &&)::$_0,IPC::Connection*>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F11260B0;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

WTF *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteDevice::PopErrorScope,WebKit::WebGPU::RemoteDeviceProxy::popErrorScope(WTF::CompletionHandler<void ()(BOOL,std::optional<mpark::variant<WTF::Ref<WebCore::WebGPU::OutOfMemoryError,WTF::RawPtrTraits<WebCore::WebGPU::OutOfMemoryError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::OutOfMemoryError>>,WTF::Ref<WebCore::WebGPU::ValidationError,WTF::RawPtrTraits<WebCore::WebGPU::ValidationError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::ValidationError>>,WTF::Ref<WebCore::WebGPU::InternalError,WTF::RawPtrTraits<WebCore::WebGPU::InternalError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::InternalError>>>> &&)> &&)::$_0 &>(WebKit::WebGPU::RemoteDeviceProxy::popErrorScope(WTF::CompletionHandler<void ()(BOOL,std::optional<mpark::variant<WTF::Ref<WebCore::WebGPU::OutOfMemoryError,WTF::RawPtrTraits<WebCore::WebGPU::OutOfMemoryError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::OutOfMemoryError>>,WTF::Ref<WebCore::WebGPU::ValidationError,WTF::RawPtrTraits<WebCore::WebGPU::ValidationError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::ValidationError>>,WTF::Ref<WebCore::WebGPU::InternalError,WTF::RawPtrTraits<WebCore::WebGPU::InternalError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::InternalError>>>> &&)> &&)::$_0 &,WTF::ThreadLikeAssertion)::{lambda(WebKit::WebGPU::RemoteDeviceProxy::popErrorScope(WTF::CompletionHandler<void ()(BOOL,std::optional<mpark::variant<WTF::Ref<WebCore::WebGPU::OutOfMemoryError,WTF::RawPtrTraits<WebCore::WebGPU::OutOfMemoryError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::OutOfMemoryError>>,WTF::Ref<WebCore::WebGPU::ValidationError,WTF::RawPtrTraits<WebCore::WebGPU::ValidationError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::ValidationError>>,WTF::Ref<WebCore::WebGPU::InternalError,WTF::RawPtrTraits<WebCore::WebGPU::InternalError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::InternalError>>>> &&)> &&)::$_0,IPC::Connection*)#1},void,WebKit::WebGPU::RemoteDeviceProxy::popErrorScope(WTF::CompletionHandler<void ()(BOOL,std::optional<mpark::variant<WTF::Ref<WebCore::WebGPU::OutOfMemoryError,WTF::RawPtrTraits<WebCore::WebGPU::OutOfMemoryError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::OutOfMemoryError>>,WTF::Ref<WebCore::WebGPU::ValidationError,WTF::RawPtrTraits<WebCore::WebGPU::ValidationError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::ValidationError>>,WTF::Ref<WebCore::WebGPU::InternalError,WTF::RawPtrTraits<WebCore::WebGPU::InternalError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::InternalError>>>> &&)> &&)::$_0,IPC::Connection*>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
{
  if (a3 && *a3 && (IPC::Decoder::decode<std::tuple<BOOL,std::optional<mpark::variant<WebKit::WebGPU::OutOfMemoryError,WebKit::WebGPU::ValidationError,WebKit::WebGPU::InternalError>>>>(v6, a3), v10 == 1))
  {
    result = std::apply[abi:sn200100]<WebKit::WebGPU::RemoteDeviceProxy::popErrorScope(WTF::CompletionHandler<void ()(BOOL,std::optional<mpark::variant<WTF::Ref<WebCore::WebGPU::OutOfMemoryError,WTF::RawPtrTraits<WebCore::WebGPU::OutOfMemoryError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::OutOfMemoryError>>,WTF::Ref<WebCore::WebGPU::ValidationError,WTF::RawPtrTraits<WebCore::WebGPU::ValidationError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::ValidationError>>,WTF::Ref<WebCore::WebGPU::InternalError,WTF::RawPtrTraits<WebCore::WebGPU::InternalError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::InternalError>>>> &&)> &&)::$_0,std::tuple<BOOL,std::optional<mpark::variant<WebKit::WebGPU::OutOfMemoryError,WebKit::WebGPU::ValidationError,WebKit::WebGPU::InternalError>>>>((a1 + 8), v6);
    if ((v10 & 1) == 0)
    {
      return result;
    }
  }

  else
  {
    v6[0] = 0;
    LOBYTE(v7) = 0;
    v9 = 0;
    result = std::apply[abi:sn200100]<WebKit::WebGPU::RemoteDeviceProxy::popErrorScope(WTF::CompletionHandler<void ()(BOOL,std::optional<mpark::variant<WTF::Ref<WebCore::WebGPU::OutOfMemoryError,WTF::RawPtrTraits<WebCore::WebGPU::OutOfMemoryError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::OutOfMemoryError>>,WTF::Ref<WebCore::WebGPU::ValidationError,WTF::RawPtrTraits<WebCore::WebGPU::ValidationError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::ValidationError>>,WTF::Ref<WebCore::WebGPU::InternalError,WTF::RawPtrTraits<WebCore::WebGPU::InternalError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::InternalError>>>> &&)> &&)::$_0,std::tuple<BOOL,std::optional<mpark::variant<WebKit::WebGPU::OutOfMemoryError,WebKit::WebGPU::ValidationError,WebKit::WebGPU::InternalError>>>>((a1 + 8), v6);
  }

  if (v9 != 1)
  {
    return result;
  }

  if (v8 > 1u)
  {
    if (v8 != 2)
    {
      return result;
    }
  }

  else if (!v8)
  {
    return result;
  }

  result = v7;
  if (v7)
  {
    if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v5);
    }
  }

  return result;
}

WTF::StringImpl *IPC::Decoder::decode<std::tuple<BOOL,std::optional<mpark::variant<WebKit::WebGPU::OutOfMemoryError,WebKit::WebGPU::ValidationError,WebKit::WebGPU::InternalError>>>>(WTF::StringImpl *result, IPC::Decoder *a2)
{
  v3 = result;
  v4 = *(a2 + 2);
  v5 = *a2;
  v6 = *(a2 + 1);
  if (v6 <= &v4[-v5])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v22 = *(a2 + 3);
    if (v22)
    {
      if (v6)
      {
        (*(*v22 + 16))(v22);
        v5 = *a2;
        v6 = *(a2 + 1);
        goto LABEL_46;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
    goto LABEL_46;
  }

  v7 = v4 + 1;
  *(a2 + 2) = v4 + 1;
  if (v4)
  {
    v8 = *v4;
    if (v8 >= 2)
    {
      goto LABEL_14;
    }

    if (v6 <= &v7[-v5])
    {
      v23 = 0;
      v24 = 0;
      *a2 = 0;
      *(a2 + 1) = 0;
      v25 = *(a2 + 3);
      if (v25)
      {
        (*(*v25 + 16))(v25);
        v24 = *a2;
        v23 = *(a2 + 1);
      }
    }

    else
    {
      v9 = v4 + 2;
      *(a2 + 2) = v4 + 2;
      if (v4 != -1)
      {
        v10 = *v7;
        if (v10 >= 2)
        {
LABEL_12:
          *a2 = 0;
          *(a2 + 1) = 0;
          v12 = *(a2 + 3);
          if (!v12 || !v6)
          {
            goto LABEL_13;
          }

          goto LABEL_36;
        }

        if (!v10)
        {
          *result = v8;
          *(result + 8) = 0;
          *(result + 24) = 0;
LABEL_31:
          *(v3 + 32) = 1;
          return result;
        }

        if (v6 <= &v9[-v5])
        {
          v23 = 0;
          v24 = 0;
          *a2 = 0;
          *(a2 + 1) = 0;
          v27 = *(a2 + 3);
          if (v27)
          {
            (*(*v27 + 16))(v27);
            v24 = *a2;
            v23 = *(a2 + 1);
          }
        }

        else
        {
          *(a2 + 2) = v4 + 3;
          if (v4 != -2)
          {
            v11 = *v9;
            if (v11 > 2)
            {
LABEL_11:
              v5 = *a2;
              v6 = *(a2 + 1);
              goto LABEL_12;
            }

            if (v11 == 1)
            {
              result = IPC::ArgumentCoder<WebCore::ApplePayAMSUIRequest,void>::decode(a2, &v28);
              if (v29)
              {
                v16 = v28;
                v17 = 1;
LABEL_29:
                *v3 = v8;
                *(v3 + 1) = v16;
                *(v3 + 16) = v17;
                goto LABEL_30;
              }
            }

            else
            {
              if (!*v9)
              {
                if (v5)
                {
                  *result = v8;
                  *(result + 8) = 0;
                  *(result + 16) = 0;
LABEL_30:
                  *(v3 + 24) = 1;
                  goto LABEL_31;
                }

                *a2 = 0;
                *(a2 + 1) = 0;
                v21 = *(a2 + 3);
                if (!v21)
                {
                  goto LABEL_11;
                }

                v20 = *(*v21 + 16);
LABEL_42:
                v20();
                goto LABEL_11;
              }

              result = IPC::ArgumentCoder<WebCore::ApplePayAMSUIRequest,void>::decode(a2, &v28);
              if (v29)
              {
                v16 = v28;
                v17 = 2;
                goto LABEL_29;
              }
            }

            v18 = *(a2 + 1);
            *a2 = 0;
            *(a2 + 1) = 0;
            v19 = *(a2 + 3);
            if (!v19 || !v18)
            {
              goto LABEL_11;
            }

            v20 = *(*v19 + 16);
            goto LABEL_42;
          }

          v23 = v6;
          v24 = v5;
        }

        *a2 = 0;
        *(a2 + 1) = 0;
        v26 = *(a2 + 3);
        if (!v26 || !v23)
        {
          goto LABEL_11;
        }

LABEL_63:
        (*(*v26 + 16))(v26, v24, v23);
        goto LABEL_11;
      }

      v23 = v6;
      v24 = v5;
    }

    *a2 = 0;
    *(a2 + 1) = 0;
    v26 = *(a2 + 3);
    if (!v26 || !v23)
    {
      v6 = 0;
      v5 = 0;
      goto LABEL_12;
    }

    goto LABEL_63;
  }

LABEL_46:
  *a2 = 0;
  *(a2 + 1) = 0;
  v12 = *(a2 + 3);
  if (v12)
  {
    if (v6)
    {
LABEL_36:
      (*(*v12 + 16))(v12, v5);
LABEL_13:
      v5 = *a2;
      v6 = *(a2 + 1);
      goto LABEL_14;
    }
  }

  else
  {
    v6 = 0;
  }

  v5 = 0;
LABEL_14:
  *a2 = 0;
  *(a2 + 1) = 0;
  v13 = *(a2 + 3);
  if (v13 && v6)
  {
    (*(*v13 + 16))(v13, v5);
  }

  *v3 = 0;
  *(v3 + 32) = 0;
  v14 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result && v14)
  {
    v15 = *(*result + 16);

    return v15();
  }

  return result;
}

WTF *std::apply[abi:sn200100]<WebKit::WebGPU::RemoteDeviceProxy::popErrorScope(WTF::CompletionHandler<void ()(BOOL,std::optional<mpark::variant<WTF::Ref<WebCore::WebGPU::OutOfMemoryError,WTF::RawPtrTraits<WebCore::WebGPU::OutOfMemoryError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::OutOfMemoryError>>,WTF::Ref<WebCore::WebGPU::ValidationError,WTF::RawPtrTraits<WebCore::WebGPU::ValidationError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::ValidationError>>,WTF::Ref<WebCore::WebGPU::InternalError,WTF::RawPtrTraits<WebCore::WebGPU::InternalError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::InternalError>>>> &&)> &&)::$_0,std::tuple<BOOL,std::optional<mpark::variant<WebKit::WebGPU::OutOfMemoryError,WebKit::WebGPU::ValidationError,WebKit::WebGPU::InternalError>>>>(mpark *a1, unsigned __int8 *a2)
{
  v3 = *a2;
  if (a2[24] == 1)
  {
    v4 = a2[16];
    if (a2[16])
    {
      v5 = *(a2 + 1);
      *(a2 + 1) = 0;
      if (v4 == 1)
      {
        v8 = WTF::fastMalloc(0x10);
        *v8 = 1;
        *(v8 + 1) = v5;
        v12 = v8;
        v13 = 1;
      }

      else
      {
        if (v4 != 2)
        {
          mpark::throw_bad_variant_access(a1);
        }

        v6 = WTF::fastMalloc(0x10);
        *v6 = 1;
        *(v6 + 1) = v5;
        v12 = v6;
        v13 = 2;
      }
    }

    else
    {
      v7 = WTF::fastMalloc(4);
      *v7 = 1;
      v12 = v7;
      v13 = 0;
    }

    v14 = 1;
  }

  else
  {
    LOBYTE(v12) = 0;
    v14 = 0;
  }

  v9 = *a1;
  *a1 = 0;
  (*(*v9 + 16))(v9, v3, &v12);
  result = (*(*v9 + 8))(v9);
  if (v14 == 1 && v13 != 255)
  {
    result = v12;
    v12 = 0;
    if (v13 == 2)
    {
      if (!result)
      {
        return result;
      }
    }

    else
    {
      if (v13 != 1)
      {
        if (result)
        {
          if (*result == 1)
          {
            return WTF::fastFree(result, v11);
          }

          else
          {
            --*result;
          }
        }

        return result;
      }

      if (!result)
      {
        return result;
      }
    }

    return WTF::RefCounted<WebCore::WebGPU::ValidationError>::deref(result, v11);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<std::optional<WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WebKit::WebGPUIdentifierType,unsigned long long>> IPC::StreamClientConnection::sendWithAsyncReply<Messages::RemoteDevice::PopErrorScope,WebKit::WebGPU::RemoteDeviceProxy::popErrorScope(WTF::CompletionHandler<void ()(BOOL,std::optional<mpark::variant<WTF::Ref<WebCore::WebGPU::OutOfMemoryError,WTF::RawPtrTraits<WebCore::WebGPU::OutOfMemoryError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::OutOfMemoryError>>,WTF::Ref<WebCore::WebGPU::ValidationError,WTF::RawPtrTraits<WebCore::WebGPU::ValidationError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::ValidationError>>,WTF::Ref<WebCore::WebGPU::InternalError,WTF::RawPtrTraits<WebCore::WebGPU::InternalError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::InternalError>>>> &&)> &&)::$_0 &,WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(Messages::RemoteDevice::PopErrorScope &&,WebKit::WebGPU::RemoteDeviceProxy::popErrorScope(WTF::CompletionHandler<void ()(BOOL,std::optional<mpark::variant<WTF::Ref<WebCore::WebGPU::OutOfMemoryError,WTF::RawPtrTraits<WebCore::WebGPU::OutOfMemoryError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::OutOfMemoryError>>,WTF::Ref<WebCore::WebGPU::ValidationError,WTF::RawPtrTraits<WebCore::WebGPU::ValidationError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::ValidationError>>,WTF::Ref<WebCore::WebGPU::InternalError,WTF::RawPtrTraits<WebCore::WebGPU::InternalError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::InternalError>>>> &&)> &&)::$_0 &,WTF::ObjectIdentifierThreadSafeAccessTraits<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F11260D8;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<std::optional<WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WebKit::WebGPUIdentifierType,unsigned long long>> IPC::StreamClientConnection::sendWithAsyncReply<Messages::RemoteDevice::PopErrorScope,WebKit::WebGPU::RemoteDeviceProxy::popErrorScope(WTF::CompletionHandler<void ()(BOOL,std::optional<mpark::variant<WTF::Ref<WebCore::WebGPU::OutOfMemoryError,WTF::RawPtrTraits<WebCore::WebGPU::OutOfMemoryError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::OutOfMemoryError>>,WTF::Ref<WebCore::WebGPU::ValidationError,WTF::RawPtrTraits<WebCore::WebGPU::ValidationError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::ValidationError>>,WTF::Ref<WebCore::WebGPU::InternalError,WTF::RawPtrTraits<WebCore::WebGPU::InternalError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::InternalError>>>> &&)> &&)::$_0 &,WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(Messages::RemoteDevice::PopErrorScope &&,WebKit::WebGPU::RemoteDeviceProxy::popErrorScope(WTF::CompletionHandler<void ()(BOOL,std::optional<mpark::variant<WTF::Ref<WebCore::WebGPU::OutOfMemoryError,WTF::RawPtrTraits<WebCore::WebGPU::OutOfMemoryError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::OutOfMemoryError>>,WTF::Ref<WebCore::WebGPU::ValidationError,WTF::RawPtrTraits<WebCore::WebGPU::ValidationError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::ValidationError>>,WTF::Ref<WebCore::WebGPU::InternalError,WTF::RawPtrTraits<WebCore::WebGPU::InternalError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::InternalError>>>> &&)> &&)::$_0 &,WTF::ObjectIdentifierThreadSafeAccessTraits<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F11260D8;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<std::optional<WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WebKit::WebGPUIdentifierType,unsigned long long>> IPC::StreamClientConnection::sendWithAsyncReply<Messages::RemoteDevice::PopErrorScope,WebKit::WebGPU::RemoteDeviceProxy::popErrorScope(WTF::CompletionHandler<void ()(BOOL,std::optional<mpark::variant<WTF::Ref<WebCore::WebGPU::OutOfMemoryError,WTF::RawPtrTraits<WebCore::WebGPU::OutOfMemoryError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::OutOfMemoryError>>,WTF::Ref<WebCore::WebGPU::ValidationError,WTF::RawPtrTraits<WebCore::WebGPU::ValidationError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::ValidationError>>,WTF::Ref<WebCore::WebGPU::InternalError,WTF::RawPtrTraits<WebCore::WebGPU::InternalError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::InternalError>>>> &&)> &&)::$_0 &,WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(Messages::RemoteDevice::PopErrorScope &&,WebKit::WebGPU::RemoteDeviceProxy::popErrorScope(WTF::CompletionHandler<void ()(BOOL,std::optional<mpark::variant<WTF::Ref<WebCore::WebGPU::OutOfMemoryError,WTF::RawPtrTraits<WebCore::WebGPU::OutOfMemoryError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::OutOfMemoryError>>,WTF::Ref<WebCore::WebGPU::ValidationError,WTF::RawPtrTraits<WebCore::WebGPU::ValidationError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::ValidationError>>,WTF::Ref<WebCore::WebGPU::InternalError,WTF::RawPtrTraits<WebCore::WebGPU::InternalError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::InternalError>>>> &&)> &&)::$_0 &,WTF::ObjectIdentifierThreadSafeAccessTraits<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>)::{lambda(void)#1},void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1, 0, 0);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteDevice::ResolveUncapturedErrorEvent,WebKit::WebGPU::RemoteDeviceProxy::resolveUncapturedErrorEvent(WTF::CompletionHandler<void ()(BOOL,std::optional<mpark::variant<WTF::Ref<WebCore::WebGPU::OutOfMemoryError,WTF::RawPtrTraits<WebCore::WebGPU::OutOfMemoryError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::OutOfMemoryError>>,WTF::Ref<WebCore::WebGPU::ValidationError,WTF::RawPtrTraits<WebCore::WebGPU::ValidationError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::ValidationError>>,WTF::Ref<WebCore::WebGPU::InternalError,WTF::RawPtrTraits<WebCore::WebGPU::InternalError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::InternalError>>>> &&)> &&)::$_0 &>(WebKit::WebGPU::RemoteDeviceProxy::resolveUncapturedErrorEvent(WTF::CompletionHandler<void ()(BOOL,std::optional<mpark::variant<WTF::Ref<WebCore::WebGPU::OutOfMemoryError,WTF::RawPtrTraits<WebCore::WebGPU::OutOfMemoryError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::OutOfMemoryError>>,WTF::Ref<WebCore::WebGPU::ValidationError,WTF::RawPtrTraits<WebCore::WebGPU::ValidationError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::ValidationError>>,WTF::Ref<WebCore::WebGPU::InternalError,WTF::RawPtrTraits<WebCore::WebGPU::InternalError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::InternalError>>>> &&)> &&)::$_0 &,WTF::ThreadLikeAssertion)::{lambda(WebKit::WebGPU::RemoteDeviceProxy::resolveUncapturedErrorEvent(WTF::CompletionHandler<void ()(BOOL,std::optional<mpark::variant<WTF::Ref<WebCore::WebGPU::OutOfMemoryError,WTF::RawPtrTraits<WebCore::WebGPU::OutOfMemoryError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::OutOfMemoryError>>,WTF::Ref<WebCore::WebGPU::ValidationError,WTF::RawPtrTraits<WebCore::WebGPU::ValidationError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::ValidationError>>,WTF::Ref<WebCore::WebGPU::InternalError,WTF::RawPtrTraits<WebCore::WebGPU::InternalError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::InternalError>>>> &&)> &&)::$_0,IPC::Connection*)#1},void,WebKit::WebGPU::RemoteDeviceProxy::resolveUncapturedErrorEvent(WTF::CompletionHandler<void ()(BOOL,std::optional<mpark::variant<WTF::Ref<WebCore::WebGPU::OutOfMemoryError,WTF::RawPtrTraits<WebCore::WebGPU::OutOfMemoryError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::OutOfMemoryError>>,WTF::Ref<WebCore::WebGPU::ValidationError,WTF::RawPtrTraits<WebCore::WebGPU::ValidationError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::ValidationError>>,WTF::Ref<WebCore::WebGPU::InternalError,WTF::RawPtrTraits<WebCore::WebGPU::InternalError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::InternalError>>>> &&)> &&)::$_0,IPC::Connection*>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1126100;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteDevice::ResolveUncapturedErrorEvent,WebKit::WebGPU::RemoteDeviceProxy::resolveUncapturedErrorEvent(WTF::CompletionHandler<void ()(BOOL,std::optional<mpark::variant<WTF::Ref<WebCore::WebGPU::OutOfMemoryError,WTF::RawPtrTraits<WebCore::WebGPU::OutOfMemoryError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::OutOfMemoryError>>,WTF::Ref<WebCore::WebGPU::ValidationError,WTF::RawPtrTraits<WebCore::WebGPU::ValidationError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::ValidationError>>,WTF::Ref<WebCore::WebGPU::InternalError,WTF::RawPtrTraits<WebCore::WebGPU::InternalError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::InternalError>>>> &&)> &&)::$_0 &>(WebKit::WebGPU::RemoteDeviceProxy::resolveUncapturedErrorEvent(WTF::CompletionHandler<void ()(BOOL,std::optional<mpark::variant<WTF::Ref<WebCore::WebGPU::OutOfMemoryError,WTF::RawPtrTraits<WebCore::WebGPU::OutOfMemoryError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::OutOfMemoryError>>,WTF::Ref<WebCore::WebGPU::ValidationError,WTF::RawPtrTraits<WebCore::WebGPU::ValidationError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::ValidationError>>,WTF::Ref<WebCore::WebGPU::InternalError,WTF::RawPtrTraits<WebCore::WebGPU::InternalError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::InternalError>>>> &&)> &&)::$_0 &,WTF::ThreadLikeAssertion)::{lambda(WebKit::WebGPU::RemoteDeviceProxy::resolveUncapturedErrorEvent(WTF::CompletionHandler<void ()(BOOL,std::optional<mpark::variant<WTF::Ref<WebCore::WebGPU::OutOfMemoryError,WTF::RawPtrTraits<WebCore::WebGPU::OutOfMemoryError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::OutOfMemoryError>>,WTF::Ref<WebCore::WebGPU::ValidationError,WTF::RawPtrTraits<WebCore::WebGPU::ValidationError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::ValidationError>>,WTF::Ref<WebCore::WebGPU::InternalError,WTF::RawPtrTraits<WebCore::WebGPU::InternalError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::InternalError>>>> &&)> &&)::$_0,IPC::Connection*)#1},void,WebKit::WebGPU::RemoteDeviceProxy::resolveUncapturedErrorEvent(WTF::CompletionHandler<void ()(BOOL,std::optional<mpark::variant<WTF::Ref<WebCore::WebGPU::OutOfMemoryError,WTF::RawPtrTraits<WebCore::WebGPU::OutOfMemoryError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::OutOfMemoryError>>,WTF::Ref<WebCore::WebGPU::ValidationError,WTF::RawPtrTraits<WebCore::WebGPU::ValidationError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::ValidationError>>,WTF::Ref<WebCore::WebGPU::InternalError,WTF::RawPtrTraits<WebCore::WebGPU::InternalError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::InternalError>>>> &&)> &&)::$_0,IPC::Connection*>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1126100;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

WTF *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteDevice::ResolveUncapturedErrorEvent,WebKit::WebGPU::RemoteDeviceProxy::resolveUncapturedErrorEvent(WTF::CompletionHandler<void ()(BOOL,std::optional<mpark::variant<WTF::Ref<WebCore::WebGPU::OutOfMemoryError,WTF::RawPtrTraits<WebCore::WebGPU::OutOfMemoryError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::OutOfMemoryError>>,WTF::Ref<WebCore::WebGPU::ValidationError,WTF::RawPtrTraits<WebCore::WebGPU::ValidationError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::ValidationError>>,WTF::Ref<WebCore::WebGPU::InternalError,WTF::RawPtrTraits<WebCore::WebGPU::InternalError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::InternalError>>>> &&)> &&)::$_0 &>(WebKit::WebGPU::RemoteDeviceProxy::resolveUncapturedErrorEvent(WTF::CompletionHandler<void ()(BOOL,std::optional<mpark::variant<WTF::Ref<WebCore::WebGPU::OutOfMemoryError,WTF::RawPtrTraits<WebCore::WebGPU::OutOfMemoryError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::OutOfMemoryError>>,WTF::Ref<WebCore::WebGPU::ValidationError,WTF::RawPtrTraits<WebCore::WebGPU::ValidationError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::ValidationError>>,WTF::Ref<WebCore::WebGPU::InternalError,WTF::RawPtrTraits<WebCore::WebGPU::InternalError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::InternalError>>>> &&)> &&)::$_0 &,WTF::ThreadLikeAssertion)::{lambda(WebKit::WebGPU::RemoteDeviceProxy::resolveUncapturedErrorEvent(WTF::CompletionHandler<void ()(BOOL,std::optional<mpark::variant<WTF::Ref<WebCore::WebGPU::OutOfMemoryError,WTF::RawPtrTraits<WebCore::WebGPU::OutOfMemoryError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::OutOfMemoryError>>,WTF::Ref<WebCore::WebGPU::ValidationError,WTF::RawPtrTraits<WebCore::WebGPU::ValidationError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::ValidationError>>,WTF::Ref<WebCore::WebGPU::InternalError,WTF::RawPtrTraits<WebCore::WebGPU::InternalError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::InternalError>>>> &&)> &&)::$_0,IPC::Connection*)#1},void,WebKit::WebGPU::RemoteDeviceProxy::resolveUncapturedErrorEvent(WTF::CompletionHandler<void ()(BOOL,std::optional<mpark::variant<WTF::Ref<WebCore::WebGPU::OutOfMemoryError,WTF::RawPtrTraits<WebCore::WebGPU::OutOfMemoryError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::OutOfMemoryError>>,WTF::Ref<WebCore::WebGPU::ValidationError,WTF::RawPtrTraits<WebCore::WebGPU::ValidationError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::ValidationError>>,WTF::Ref<WebCore::WebGPU::InternalError,WTF::RawPtrTraits<WebCore::WebGPU::InternalError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::InternalError>>>> &&)> &&)::$_0,IPC::Connection*>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
{
  if (a3 && *a3 && (IPC::Decoder::decode<std::tuple<BOOL,std::optional<mpark::variant<WebKit::WebGPU::OutOfMemoryError,WebKit::WebGPU::ValidationError,WebKit::WebGPU::InternalError>>>>(v6, a3), v10 == 1))
  {
    result = std::apply[abi:sn200100]<WebKit::WebGPU::RemoteDeviceProxy::popErrorScope(WTF::CompletionHandler<void ()(BOOL,std::optional<mpark::variant<WTF::Ref<WebCore::WebGPU::OutOfMemoryError,WTF::RawPtrTraits<WebCore::WebGPU::OutOfMemoryError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::OutOfMemoryError>>,WTF::Ref<WebCore::WebGPU::ValidationError,WTF::RawPtrTraits<WebCore::WebGPU::ValidationError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::ValidationError>>,WTF::Ref<WebCore::WebGPU::InternalError,WTF::RawPtrTraits<WebCore::WebGPU::InternalError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::InternalError>>>> &&)> &&)::$_0,std::tuple<BOOL,std::optional<mpark::variant<WebKit::WebGPU::OutOfMemoryError,WebKit::WebGPU::ValidationError,WebKit::WebGPU::InternalError>>>>((a1 + 8), v6);
    if ((v10 & 1) == 0)
    {
      return result;
    }
  }

  else
  {
    v6[0] = 0;
    LOBYTE(v7) = 0;
    v9 = 0;
    result = std::apply[abi:sn200100]<WebKit::WebGPU::RemoteDeviceProxy::popErrorScope(WTF::CompletionHandler<void ()(BOOL,std::optional<mpark::variant<WTF::Ref<WebCore::WebGPU::OutOfMemoryError,WTF::RawPtrTraits<WebCore::WebGPU::OutOfMemoryError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::OutOfMemoryError>>,WTF::Ref<WebCore::WebGPU::ValidationError,WTF::RawPtrTraits<WebCore::WebGPU::ValidationError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::ValidationError>>,WTF::Ref<WebCore::WebGPU::InternalError,WTF::RawPtrTraits<WebCore::WebGPU::InternalError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::InternalError>>>> &&)> &&)::$_0,std::tuple<BOOL,std::optional<mpark::variant<WebKit::WebGPU::OutOfMemoryError,WebKit::WebGPU::ValidationError,WebKit::WebGPU::InternalError>>>>((a1 + 8), v6);
  }

  if (v9 != 1)
  {
    return result;
  }

  if (v8 > 1u)
  {
    if (v8 != 2)
    {
      return result;
    }
  }

  else if (!v8)
  {
    return result;
  }

  result = v7;
  if (v7)
  {
    if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v5);
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<std::optional<WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WebKit::WebGPUIdentifierType,unsigned long long>> IPC::StreamClientConnection::sendWithAsyncReply<Messages::RemoteDevice::ResolveUncapturedErrorEvent,WebKit::WebGPU::RemoteDeviceProxy::resolveUncapturedErrorEvent(WTF::CompletionHandler<void ()(BOOL,std::optional<mpark::variant<WTF::Ref<WebCore::WebGPU::OutOfMemoryError,WTF::RawPtrTraits<WebCore::WebGPU::OutOfMemoryError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::OutOfMemoryError>>,WTF::Ref<WebCore::WebGPU::ValidationError,WTF::RawPtrTraits<WebCore::WebGPU::ValidationError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::ValidationError>>,WTF::Ref<WebCore::WebGPU::InternalError,WTF::RawPtrTraits<WebCore::WebGPU::InternalError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::InternalError>>>> &&)> &&)::$_0 &,WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(Messages::RemoteDevice::ResolveUncapturedErrorEvent &&,WebKit::WebGPU::RemoteDeviceProxy::resolveUncapturedErrorEvent(WTF::CompletionHandler<void ()(BOOL,std::optional<mpark::variant<WTF::Ref<WebCore::WebGPU::OutOfMemoryError,WTF::RawPtrTraits<WebCore::WebGPU::OutOfMemoryError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::OutOfMemoryError>>,WTF::Ref<WebCore::WebGPU::ValidationError,WTF::RawPtrTraits<WebCore::WebGPU::ValidationError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::ValidationError>>,WTF::Ref<WebCore::WebGPU::InternalError,WTF::RawPtrTraits<WebCore::WebGPU::InternalError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::InternalError>>>> &&)> &&)::$_0 &,WTF::ObjectIdentifierThreadSafeAccessTraits<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1126128;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<std::optional<WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WebKit::WebGPUIdentifierType,unsigned long long>> IPC::StreamClientConnection::sendWithAsyncReply<Messages::RemoteDevice::ResolveUncapturedErrorEvent,WebKit::WebGPU::RemoteDeviceProxy::resolveUncapturedErrorEvent(WTF::CompletionHandler<void ()(BOOL,std::optional<mpark::variant<WTF::Ref<WebCore::WebGPU::OutOfMemoryError,WTF::RawPtrTraits<WebCore::WebGPU::OutOfMemoryError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::OutOfMemoryError>>,WTF::Ref<WebCore::WebGPU::ValidationError,WTF::RawPtrTraits<WebCore::WebGPU::ValidationError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::ValidationError>>,WTF::Ref<WebCore::WebGPU::InternalError,WTF::RawPtrTraits<WebCore::WebGPU::InternalError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::InternalError>>>> &&)> &&)::$_0 &,WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(Messages::RemoteDevice::ResolveUncapturedErrorEvent &&,WebKit::WebGPU::RemoteDeviceProxy::resolveUncapturedErrorEvent(WTF::CompletionHandler<void ()(BOOL,std::optional<mpark::variant<WTF::Ref<WebCore::WebGPU::OutOfMemoryError,WTF::RawPtrTraits<WebCore::WebGPU::OutOfMemoryError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::OutOfMemoryError>>,WTF::Ref<WebCore::WebGPU::ValidationError,WTF::RawPtrTraits<WebCore::WebGPU::ValidationError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::ValidationError>>,WTF::Ref<WebCore::WebGPU::InternalError,WTF::RawPtrTraits<WebCore::WebGPU::InternalError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::InternalError>>>> &&)> &&)::$_0 &,WTF::ObjectIdentifierThreadSafeAccessTraits<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1126128;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<std::optional<WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WebKit::WebGPUIdentifierType,unsigned long long>> IPC::StreamClientConnection::sendWithAsyncReply<Messages::RemoteDevice::ResolveUncapturedErrorEvent,WebKit::WebGPU::RemoteDeviceProxy::resolveUncapturedErrorEvent(WTF::CompletionHandler<void ()(BOOL,std::optional<mpark::variant<WTF::Ref<WebCore::WebGPU::OutOfMemoryError,WTF::RawPtrTraits<WebCore::WebGPU::OutOfMemoryError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::OutOfMemoryError>>,WTF::Ref<WebCore::WebGPU::ValidationError,WTF::RawPtrTraits<WebCore::WebGPU::ValidationError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::ValidationError>>,WTF::Ref<WebCore::WebGPU::InternalError,WTF::RawPtrTraits<WebCore::WebGPU::InternalError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::InternalError>>>> &&)> &&)::$_0 &,WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(Messages::RemoteDevice::ResolveUncapturedErrorEvent &&,WebKit::WebGPU::RemoteDeviceProxy::resolveUncapturedErrorEvent(WTF::CompletionHandler<void ()(BOOL,std::optional<mpark::variant<WTF::Ref<WebCore::WebGPU::OutOfMemoryError,WTF::RawPtrTraits<WebCore::WebGPU::OutOfMemoryError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::OutOfMemoryError>>,WTF::Ref<WebCore::WebGPU::ValidationError,WTF::RawPtrTraits<WebCore::WebGPU::ValidationError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::ValidationError>>,WTF::Ref<WebCore::WebGPU::InternalError,WTF::RawPtrTraits<WebCore::WebGPU::InternalError>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::InternalError>>>> &&)> &&)::$_0 &,WTF::ObjectIdentifierThreadSafeAccessTraits<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>)::{lambda(void)#1},void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1, 0, 0);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteDevice::ResolveDeviceLostPromise,WebKit::WebGPU::RemoteDeviceProxy::resolveDeviceLostPromise(WTF::CompletionHandler<void ()(WebCore::WebGPU::DeviceLostReason)> &&)::$_0 &>(WebKit::WebGPU::RemoteDeviceProxy::resolveDeviceLostPromise(WTF::CompletionHandler<void ()(WebCore::WebGPU::DeviceLostReason)> &&)::$_0 &,WTF::ThreadLikeAssertion)::{lambda(WebKit::WebGPU::RemoteDeviceProxy::resolveDeviceLostPromise(WTF::CompletionHandler<void ()(WebCore::WebGPU::DeviceLostReason)> &&)::$_0 &,IPC::Decoder)#1},void,WebKit::WebGPU::RemoteDeviceProxy::resolveDeviceLostPromise(WTF::CompletionHandler<void ()(WebCore::WebGPU::DeviceLostReason)> &&)::$_0 &,IPC::Decoder>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1126150;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteDevice::ResolveDeviceLostPromise,WebKit::WebGPU::RemoteDeviceProxy::resolveDeviceLostPromise(WTF::CompletionHandler<void ()(WebCore::WebGPU::DeviceLostReason)> &&)::$_0 &>(WebKit::WebGPU::RemoteDeviceProxy::resolveDeviceLostPromise(WTF::CompletionHandler<void ()(WebCore::WebGPU::DeviceLostReason)> &&)::$_0 &,WTF::ThreadLikeAssertion)::{lambda(WebKit::WebGPU::RemoteDeviceProxy::resolveDeviceLostPromise(WTF::CompletionHandler<void ()(WebCore::WebGPU::DeviceLostReason)> &&)::$_0 &,IPC::Decoder)#1},void,WebKit::WebGPU::RemoteDeviceProxy::resolveDeviceLostPromise(WTF::CompletionHandler<void ()(WebCore::WebGPU::DeviceLostReason)> &&)::$_0 &,IPC::Decoder>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1126150;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteDevice::ResolveDeviceLostPromise,WebKit::WebGPU::RemoteDeviceProxy::resolveDeviceLostPromise(WTF::CompletionHandler<void ()(WebCore::WebGPU::DeviceLostReason)> &&)::$_0 &>(WebKit::WebGPU::RemoteDeviceProxy::resolveDeviceLostPromise(WTF::CompletionHandler<void ()(WebCore::WebGPU::DeviceLostReason)> &&)::$_0 &,WTF::ThreadLikeAssertion)::{lambda(WebKit::WebGPU::RemoteDeviceProxy::resolveDeviceLostPromise(WTF::CompletionHandler<void ()(WebCore::WebGPU::DeviceLostReason)> &&)::$_0 &,IPC::Decoder)#1},void,WebKit::WebGPU::RemoteDeviceProxy::resolveDeviceLostPromise(WTF::CompletionHandler<void ()(WebCore::WebGPU::DeviceLostReason)> &&)::$_0 &,IPC::Decoder>::call(uint64_t a1, uint64_t a2, uint64_t *a3)
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
      if (v8 < 2)
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

void *WTF::Detail::CallableWrapper<std::optional<WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits,unsigned long long>> IPC::StreamClientConnection::sendWithAsyncReply<Messages::RemoteDevice::ResolveDeviceLostPromise,WebKit::WebGPU::RemoteDeviceProxy::resolveDeviceLostPromise(WTF::CompletionHandler<void ()(WebCore::WebGPU::DeviceLostReason)> &&)::$_0 &,WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(Messages::RemoteDevice::ResolveDeviceLostPromise &&,WebKit::WebGPU::RemoteDeviceProxy::resolveDeviceLostPromise(WTF::CompletionHandler<void ()(WebCore::WebGPU::DeviceLostReason)> &&)::$_0 &,std::optional<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1126178;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<std::optional<WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits,unsigned long long>> IPC::StreamClientConnection::sendWithAsyncReply<Messages::RemoteDevice::ResolveDeviceLostPromise,WebKit::WebGPU::RemoteDeviceProxy::resolveDeviceLostPromise(WTF::CompletionHandler<void ()(WebCore::WebGPU::DeviceLostReason)> &&)::$_0 &,WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(Messages::RemoteDevice::ResolveDeviceLostPromise &&,WebKit::WebGPU::RemoteDeviceProxy::resolveDeviceLostPromise(WTF::CompletionHandler<void ()(WebCore::WebGPU::DeviceLostReason)> &&)::$_0 &,std::optional<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1126178;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<std::optional<WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits,unsigned long long>> IPC::StreamClientConnection::sendWithAsyncReply<Messages::RemoteDevice::ResolveDeviceLostPromise,WebKit::WebGPU::RemoteDeviceProxy::resolveDeviceLostPromise(WTF::CompletionHandler<void ()(WebCore::WebGPU::DeviceLostReason)> &&)::$_0 &,WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(Messages::RemoteDevice::ResolveDeviceLostPromise &&,WebKit::WebGPU::RemoteDeviceProxy::resolveDeviceLostPromise(WTF::CompletionHandler<void ()(WebCore::WebGPU::DeviceLostReason)> &&)::$_0 &,std::optional<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>)::{lambda(void)#1},void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1, 0, 0);
  v2 = *(*v1 + 8);

  return v2(v1);
}

atomic_uchar **WTF::Detail::CallableWrapper<WebKit::RemoteGPUProxy::initializeIPC(WTF::Ref<IPC::StreamClientConnection,WTF::RawPtrTraits<IPC::StreamClientConnection>,WTF::DefaultRefDerefTraits<IPC::StreamClientConnection>> &&,WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::StreamServerConnectionHandle &&)::$_0,void>::call(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  {
    v4 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v16 = WebKit::WebProcess::operator new(0x370, a2);
    v4 = WebKit::WebProcess::WebProcess(v16);
    WebKit::WebProcess::singleton(void)::process = v4;
  }

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
      goto LABEL_8;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v6);
LABEL_8:
  v9 = *(v3 + 88);
  v10 = *(a1 + 24);
  v18 = **(a1 + 16);
  v19 = v9;
  v11 = v5[4];
  v17[0] = &v19;
  v17[1] = &v18;
  v17[2] = v10;
  IPC::Connection::send<Messages::GPUConnectionToWebProcess::CreateGPU>(v11, v17, 0, 1, 0);
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(v5 + 2, v5);
  v13 = v5[1];
  atomic_fetch_add(v13, 1u);
  v14 = *(v3 + 72);
  *(v3 + 72) = v13;
  if (v14 && atomic_fetch_add(v14, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v14);
    WTF::fastFree(v14, v12);
  }

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref(v6, v12);
}

void *WTF::Detail::CallableWrapper<WebKit::RemoteGPUProxy::disconnectGpuProcessIfNeeded(void)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F11261C8;
  v3 = a1[2];
  a1[2] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteGPUProxy::disconnectGpuProcessIfNeeded(void)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F11261C8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

atomic_uchar **WTF::Detail::CallableWrapper<WebKit::RemoteGPUProxy::disconnectGpuProcessIfNeeded(void)::$_0,void>::call(atomic_uchar **result)
{
  v1 = result[2];
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
          goto LABEL_9;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v4);
LABEL_9:
      v7 = v3[1];
      v8 = *(v2 + 32);
      v10 = &v11;
      v11 = v7;
      IPC::Connection::send<Messages::GPUConnectionToWebProcess::ReleaseGPU>(v8, &v10, 0, 1, 0);

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref((v2 + 24), v9);
    }
  }

  return result;
}

uint64_t IPC::Connection::waitForAndDispatchImmediately<Messages::RemoteGPUProxy::WasCreated>(uint64_t a1, uint64_t a2, int a3, double a4)
{
  v5 = IPC::Connection::waitForMessage(a1, 0x47Fu, a2, a3, &v13, a4);
  if (v14)
  {
    if (v14 == 1)
    {
      return v13;
    }

LABEL_14:
    mpark::throw_bad_variant_access(v5);
  }

  v7 = atomic_load((a1 + 33));
  if (v7)
  {
    v8 = *(a1 + 8);
    if (v8)
    {
      v5 = (**v8)(*(a1 + 8));
    }

    if (v14)
    {
      goto LABEL_14;
    }

    (*(*v8 + 32))(v8, a1, v13);
    (*(*v8 + 8))(v8);
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v14)
  {
    v9 = v13;
    v13 = 0;
    if (v9)
    {
      IPC::Decoder::~Decoder(v9);
      bmalloc::api::tzoneFree(v11, v12);
    }
  }

  return v6;
}

IPC::Decoder *IPC::Decoder::operator>><std::tuple<std::optional<WebKit::RemoteGPURequestAdapterResponse>>>(IPC::Decoder *a1, uint64_t a2)
{
  v4 = *(a1 + 1);
  v5 = *(a1 + 2);
  v6 = *a1;
  if (v4 <= &v5[-*a1])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v33 = *(a1 + 3);
    if (v33)
    {
      if (v4)
      {
        (*(*v33 + 16))(v33);
        v4 = *(a1 + 1);
      }
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_64;
  }

  *(a1 + 2) = v5 + 1;
  if (!v5)
  {
LABEL_64:
    *a1 = 0;
    *(a1 + 1) = 0;
    v34 = *(a1 + 3);
    if (v34)
    {
      if (v4)
      {
        (*(*v34 + 16))(v34);
        v6 = *a1;
        v4 = *(a1 + 1);
        goto LABEL_67;
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = 0;
LABEL_67:
    *a1 = 0;
    *(a1 + 1) = 0;
    v35 = *(a1 + 3);
    if (v35 && v4)
    {
      (*(*v35 + 16))(v35, v6);
    }

    goto LABEL_55;
  }

  v7 = *v5;
  if (v7 >= 2)
  {
    goto LABEL_67;
  }

  if (v7)
  {
    IPC::ArgumentCoder<WebKit::RemoteGPURequestAdapterResponse,void>::decode(a1, v36);
    if ((v49 & 1) == 0)
    {
      v30 = *a1;
      v31 = *(a1 + 1);
      *a1 = 0;
      *(a1 + 1) = 0;
      v32 = *(a1 + 3);
      if (!v32 || !v31 || ((*(*v32 + 16))(v32, v30), (v49 & 1) == 0))
      {
LABEL_55:
        LOBYTE(v51[0]) = 0;
        v65 = 0;
        goto LABEL_11;
      }
    }

    v9 = *v36;
    v36[0] = 0;
    v36[1] = 0;
    *v51 = v9;
    *&v9 = v37;
    v37 = 0;
    v52 = v9;
    v60 = v45;
    v61 = v46;
    v62 = v47;
    v63 = v48;
    v56 = v41;
    v57 = v42;
    v58 = v43;
    v59 = v44;
    v53 = v38;
    v54 = v39;
    v55 = v40;
    v64 = 1;
    v65 = 1;
  }

  else
  {
    LOBYTE(v36[0]) = 0;
    v49 = 0;
    std::__optional_copy_assign_base<WebKit::RemoteGPURequestAdapterResponse,false>::__optional_copy_assign_base[abi:sn200100](v51, v36);
    v65 = 1;
    if (v49 != 1)
    {
      goto LABEL_11;
    }
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v36[1], v8);
  v11 = v36[0];
  v36[0] = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v10);
  }

LABEL_11:
  if (v65 & 1) != 0 || (v12 = *a1, v26 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (v27 = *(a1 + 3)) != 0) && v26 && ((*(*v27 + 16))(v27, v12), (v65))
  {
    std::__optional_copy_assign_base<WebKit::RemoteGPURequestAdapterResponse,false>::__optional_copy_assign_base[abi:sn200100](v36, v51);
    v50 = 1;
    if ((v65 & 1) != 0 && v64 == 1)
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v51[1], v12);
      v13 = v51[0];
      v51[0] = 0;
      if (v13)
      {
        if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v13, v12);
        }
      }
    }
  }

  else
  {
    LOBYTE(v36[0]) = 0;
    v50 = 0;
  }

  v14 = v50;
  if ((v50 & 1) == 0)
  {
    v12 = *a1;
    v28 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v29 = *(a1 + 3);
    if (v29)
    {
      if (v28)
      {
        (*(*v29 + 16))(v29, v12);
        v14 = v50;
      }
    }
  }

  if (*(a2 + 200) == v14)
  {
    if (*(a2 + 200))
    {
      if (*(a2 + 192) == v49)
      {
        if (*(a2 + 192))
        {
          v15 = v36[0];
          v36[0] = 0;
          v16 = *a2;
          *a2 = v15;
          if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v16, v12);
          }

          v17 = *(a2 + 20);
          if (v17)
          {
            WTF::VectorDestructor<true,WTF::String>::destruct(*(a2 + 8), (*(a2 + 8) + 8 * v17));
          }

          v18 = *(a2 + 8);
          if (v18)
          {
            *(a2 + 8) = 0;
            *(a2 + 16) = 0;
            WTF::fastFree(v18, v12);
          }

          *(a2 + 8) = v36[1];
          v19 = v37;
          v36[1] = 0;
          v37 = 0;
          *(a2 + 16) = v19;
          *(a2 + 136) = v45;
          *(a2 + 152) = v46;
          *(a2 + 168) = v47;
          *(a2 + 184) = v48;
          *(a2 + 72) = v41;
          *(a2 + 88) = v42;
          *(a2 + 104) = v43;
          *(a2 + 120) = v44;
          *(a2 + 24) = v38;
          *(a2 + 40) = v39;
          *(a2 + 56) = v40;
        }
      }

      else if (*(a2 + 192))
      {
        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a2 + 8, v12);
        v24 = *a2;
        *a2 = 0;
        if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v24, v12);
        }

        *(a2 + 192) = 0;
      }

      else
      {
        v25 = *v36;
        v36[0] = 0;
        v36[1] = 0;
        *a2 = v25;
        *&v25 = v37;
        v37 = 0;
        *(a2 + 16) = v25;
        *(a2 + 136) = v45;
        *(a2 + 152) = v46;
        *(a2 + 168) = v47;
        *(a2 + 184) = v48;
        *(a2 + 72) = v41;
        *(a2 + 88) = v42;
        *(a2 + 104) = v43;
        *(a2 + 120) = v44;
        *(a2 + 24) = v38;
        *(a2 + 40) = v39;
        *(a2 + 56) = v40;
        *(a2 + 192) = 1;
      }
    }
  }

  else if (*(a2 + 200))
  {
    if (*(a2 + 192) == 1)
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a2 + 8, v12);
      v20 = *a2;
      *a2 = 0;
      if (v20)
      {
        if (atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v20, v12);
        }
      }
    }

    *(a2 + 200) = 0;
  }

  else
  {
    std::__optional_copy_assign_base<WebKit::RemoteGPURequestAdapterResponse,false>::__optional_copy_assign_base[abi:sn200100](a2, v36);
    *(a2 + 200) = 1;
  }

  if (v50 == 1 && v49 == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v36[1], v12);
    v22 = v36[0];
    v36[0] = 0;
    if (v22)
    {
      if (atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v22, v21);
      }
    }
  }

  return a1;
}

uint64_t std::__optional_copy_assign_base<WebKit::RemoteGPURequestAdapterResponse,false>::__optional_copy_assign_base[abi:sn200100](uint64_t a1, uint64_t *a2)
{
  *a1 = 0;
  *(a1 + 192) = 0;
  if (*(a2 + 192) == 1)
  {
    v4 = *a2;
    *a2 = 0;
    *a1 = v4;
    *(a1 + 16) = 0;
    *(a1 + 8) = 0;
    WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 8, a2 + 2);
    v5 = *(a2 + 3);
    v6 = *(a2 + 5);
    *(a1 + 56) = *(a2 + 7);
    *(a1 + 40) = v6;
    *(a1 + 24) = v5;
    v7 = *(a2 + 9);
    v8 = *(a2 + 11);
    v9 = *(a2 + 13);
    *(a1 + 120) = *(a2 + 15);
    *(a1 + 104) = v9;
    *(a1 + 88) = v8;
    *(a1 + 72) = v7;
    v10 = *(a2 + 17);
    v11 = *(a2 + 19);
    v12 = *(a2 + 21);
    *(a1 + 184) = *(a2 + 184);
    *(a1 + 168) = v12;
    *(a1 + 152) = v11;
    *(a1 + 136) = v10;
    *(a1 + 192) = 1;
  }

  return a1;
}

uint64_t IPC::ConnectionSendSyncResult<Messages::RemoteGPU::RequestAdapter>::ConnectionSendSyncResult(uint64_t a1, IPC::Decoder **a2, uint64_t *a3)
{
  v4 = *a2;
  *a2 = 0;
  v9 = v4;
  std::__optional_copy_assign_base<WebKit::RemoteGPURequestAdapterResponse,false>::__optional_copy_assign_base[abi:sn200100](&v10, a3);
  *a1 = v9;
  std::__optional_copy_assign_base<WebKit::RemoteGPURequestAdapterResponse,false>::__optional_copy_assign_base[abi:sn200100](a1 + 8, &v10);
  *(a1 + 208) = 0;
  if (v11[184] == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v11, v5);
    v7 = v10;
    v10 = 0;
    if (v7)
    {
      if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, v6);
      }
    }
  }

  return a1;
}

_BYTE *mpark::detail::move_assignment<mpark::detail::traits<IPC::ConnectionSendSyncResult<Messages::RemoteGPU::RequestAdapter>::ReplyData,IPC::Error>,(mpark::detail::Trait)1>::move_assignment(_BYTE *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[208] = -1;
  v3 = *(a2 + 208);
  if (v3 != 255)
  {
    if (*(a2 + 208))
    {
      *a1 = *a2;
    }

    else
    {
      v5 = *a2;
      *a2 = 0;
      *a1 = v5;
      std::__optional_copy_assign_base<WebKit::RemoteGPURequestAdapterResponse,false>::__optional_copy_assign_base[abi:sn200100]((a1 + 8), a2 + 1);
      LOBYTE(v3) = *(a2 + 208);
    }

    a1[208] = v3;
  }

  return a1;
}

void WebKit::WebGPU::RemoteQuerySetProxy::~RemoteQuerySetProxy(WebKit::WebGPU::RemoteQuerySetProxy *this)
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
      JUMPOUT(0x19E2664C4);
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

  *v31 = 1513;
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

  *this = &unk_1F1126490;
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
  WebKit::WebGPU::RemoteQuerySetProxy::~RemoteQuerySetProxy(this);

  bmalloc::api::tzoneFree(v1, v2);
}

void WebKit::WebGPU::RemoteQuerySetProxy::destroy(WebKit::WebGPU::RemoteQuerySetProxy *this)
{
  v1 = *(*(*(*(this + 6) + 64) + 72) + 80);
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
      *v23 = 1512;
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

void WebKit::WebGPU::RemoteQuerySetProxy::setLabelInternal(WebKit::WebGPU::RemoteQuerySetProxy *this, const WTF::String *a2)
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
      JUMPOUT(0x19E266AF8);
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

  *v40 = 1514;
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
  *v22 = 1514;
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

uint64_t WebKit::WebGPU::RemoteQueueProxy::RemoteQueueProxy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = a4;
  *a1 = &unk_1F1126220;
  *(a1 + 8) = 0;
  ++*(a3 + 8);
  *(a1 + 40) = a3;
  ++*(a2 + 16);
  *(a1 + 48) = a2;
  *(a1 + 56) = 0;
  v11 = 0;
  v5 = WTF::fastMalloc(0x10);
  *v5 = &unk_1F1126730;
  v5[1] = &v11;
  v10 = v5;
  WTF::callOnMainRunLoopAndWait();
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v6 = v11;
  if (v11)
  {
    atomic_fetch_add(v11, 1u);
  }

  v7 = *(a1 + 56);
  *(a1 + 56) = v6;
  if (v7)
  {
    WTF::ThreadSafeRefCounted<WebKit::RemoteVideoFrameObjectHeapProxy,(WTF::DestructionThread)2>::deref(v7);
  }

  v8 = v11;
  v11 = 0;
  if (v8)
  {
    WTF::ThreadSafeRefCounted<WebKit::RemoteVideoFrameObjectHeapProxy,(WTF::DestructionThread)2>::deref(v8);
  }

  return a1;
}

void WebKit::WebGPU::RemoteQueueProxy::~RemoteQueueProxy(WebKit::WebGPU::RemoteQueueProxy *this)
{
  v2 = *(*(*(this + 6) + 72) + 80);
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
    IPC::StreamClientConnectionBuffer::tryAcquire(v2 + 72, &v32, v5);
    if (v34 != 1)
    {
      goto LABEL_16;
    }

    v19 = v33;
    if (v33 <= 1)
    {
LABEL_58:
      __break(0xC471u);
      JUMPOUT(0x19E266FE0);
    }

    v20 = v32;
    *v32 = 3198;
    v21 = v20 + 1;
    if (v19 - 2 < (-v21 & 7 | 8uLL))
    {
      goto LABEL_16;
    }

    v22 = -v21 & 7;
    *(v21 + v22) = v3;
    if (v22 != 7)
    {
      v22 = 6;
    }

    v23 = (*(v2 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v25 = *(v2 + 72);
    v24 = *(v2 + 80);
    v26 = v22 + 10;
    if (v23 + 16 >= v25)
    {
      v23 = 0;
    }

    v27 = v26 + v23;
    if (v25 <= v27)
    {
      v27 = 0;
    }

    *(v2 + 88) = v27;
    if (*(v24 + 8) <= 0xFFuLL)
    {
      goto LABEL_57;
    }

    v28 = atomic_exchange((*(v24 + 16) + 128), v27);
    v29 = *(v2 + 124);
    if (v28 == 0x80000000 || v29 != 0)
    {
      v31 = v29 + 1;
      *(v2 + 124) = v31;
      if (v31 >= *(v2 + 120))
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

  IPC::StreamClientConnectionBuffer::tryAcquire(v2 + 72, &v32, v5);
  if (v34 != 1)
  {
    goto LABEL_16;
  }

  if (v33 <= 1)
  {
    goto LABEL_58;
  }

  *v32 = 1516;
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
    goto LABEL_57;
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

  v13 = *(this + 7);
  *(this + 7) = 0;
  if (v13)
  {
    WTF::ThreadSafeRefCounted<WebKit::RemoteVideoFrameObjectHeapProxy,(WTF::DestructionThread)2>::deref(v13);
  }

  v14 = *(this + 6);
  *(this + 6) = 0;
  if (v14)
  {
    if (v14[4] == 1)
    {
      (*(*v14 + 8))(v14, v8);
    }

    else
    {
      --v14[4];
    }
  }

  v15 = *(this + 5);
  *(this + 5) = 0;
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

  *this = &unk_1F11264C0;
  v16 = *(this + 3);
  *(this + 3) = 0;
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, v7);
  }

  if (*(this + 4) != 1)
  {
    __break(0xC471u);
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v17 = *(this + 1);
  if (v17)
  {
    *(v17 + 8) = 0;
    v18 = *(this + 1);
    *(this + 1) = 0;
    if (v18)
    {
      if (atomic_fetch_add(v18, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v18);
        WTF::fastFree(v18, v7);
      }
    }
  }
}

{
  WebKit::WebGPU::RemoteQueueProxy::~RemoteQueueProxy(this);

  bmalloc::api::tzoneFree(v1, v2);
}

WTF *WebKit::WebGPU::RemoteQueueProxy::submit(WTF *result, uint64_t a2)
{
  v2 = result;
  v12 = 0;
  v13 = 0;
  v3 = *(a2 + 12);
  if (!v3)
  {
    goto LABEL_10;
  }

  if (v3 >> 29)
  {
    __break(0xC471u);
    return result;
  }

  LODWORD(v13) = *(a2 + 12);
  v12 = WTF::fastMalloc((8 * v3));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = 8 * v5;
    do
    {
      v8 = (*(**(v2 + 40) + 48))(*(v2 + 40), *v6);
      v14 = v8;
      if (HIDWORD(v13) == v13)
      {
        v9 = WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionFrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v12, HIDWORD(v13) + 1, &v14);
        *(v12 + HIDWORD(v13)) = *v9;
      }

      else
      {
        *(v12 + HIDWORD(v13)) = v8;
      }

      v10 = ++HIDWORD(v13);
      ++v6;
      v7 -= 8;
    }

    while (v7);
  }

  else
  {
LABEL_10:
    v10 = 0;
  }

  WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v12, v10);
  v14 = &v12;
  WebKit::WebGPU::RemoteQueueProxy::send<Messages::RemoteQueue::Submit>(v2, &v14);
  result = v12;
  if (v12)
  {
    v12 = 0;
    LODWORD(v13) = 0;
    return WTF::fastFree(result, v11);
  }

  return result;
}

uint64_t WebKit::WebGPU::RemoteQueueProxy::send<Messages::RemoteQueue::Submit>(uint64_t a1, uint64_t *a2)
{
  v2 = *(*(*(a1 + 48) + 72) + 80);
  atomic_fetch_add(v2, 1u);
  v3 = IPC::StreamClientConnection::send<Messages::RemoteQueue::Submit,WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 32));
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2);
    IPC::StreamClientConnection::operator delete(v2);
  }

  return v3;
}

void WebKit::WebGPU::RemoteQueueProxy::onSubmittedWorkDone(WTF::ApproximateTime *a1, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  v3 = *(*(*(a1 + 6) + 72) + 80);
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
    IPC::StreamClientConnectionBuffer::tryAcquire(v3 + 72, &v58, v6);
    if (v60 != 1)
    {
      goto LABEL_30;
    }

    v26 = v59;
    if (v59 <= 1)
    {
      __break(0xC471u);
      goto LABEL_74;
    }

    v27 = v58;
    *v58 = 3198;
    v28 = v27 + 1;
    if (v26 - 2 < (-v28 & 7 | 8uLL))
    {
      goto LABEL_30;
    }

    v29 = -v28 & 7;
    *(v28 + v29) = v4;
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
      goto LABEL_74;
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

  IPC::StreamClientConnectionBuffer::tryAcquire(v3 + 72, &v58, v6);
  if ((v60 & 1) == 0)
  {
    goto LABEL_30;
  }

  v8 = *(v3 + 8);
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
      goto LABEL_10;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v8);
LABEL_10:
  v11 = WTF::fastMalloc(0x10);
  *v11 = &unk_1F1126758;
  v11[1] = v2;
  v57[0] = v11;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    __break(0xC471u);
    goto LABEL_76;
  }

  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  v57[1] = IdentifierInternal;
  if (!IdentifierInternal)
  {
    __break(0xC471u);
    JUMPOUT(0x19E267710);
  }

  v13 = IdentifierInternal;
  IPC::Connection::addAsyncReplyHandler(v8, v57);
  if ((v60 & 1) == 0)
  {
    goto LABEL_74;
  }

  v15 = v59;
  if (v59 <= 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E267730);
  }

  v16 = v58;
  *v58 = 1517;
  v17 = v16 + 1;
  if (v15 - 2 < (-v17 & 7 | 8uLL))
  {
    v53 = v4;
    if (v60)
    {
      if (v59 <= 1)
      {
LABEL_75:
        __break(0xC471u);
LABEL_76:
        JUMPOUT(0x19E2676F0);
      }

      *v58 = 3197;
      v39 = (*(v3 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v40 = *(v3 + 72);
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

      *(v3 + 88) = v42;
      v43 = *(v3 + 80);
      if (*(v43 + 8) > 0xFFuLL)
      {
        atomic_exchange((*(v43 + 16) + 128), v42);
        *(v3 + 124) = 0;
        v44 = IPC::Encoder::operator new(0x238, v14);
        *v44 = 1517;
        *(v44 + 2) = 0;
        *(v44 + 3) = 0;
        *(v44 + 1) = v53;
        *(v44 + 68) = 0;
        *(v44 + 70) = 0;
        *(v44 + 69) = 0;
        IPC::Encoder::encodeHeader(v44);
        v56 = v44;
        IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v44, v13);
        if (IPC::Connection::sendMessageImpl(v8, &v56, 1, 0))
        {
          IPC::Connection::takeAsyncReplyHandler(v8, v13, &v55);
          if (v55)
          {
            WTF::RunLoop::mainSingleton(v46);
            v47 = v55;
            v55 = 0;
            v48 = WTF::fastMalloc(0x10);
            *v48 = &unk_1F1126780;
            v48[1] = v47;
            v54 = v48;
            WTF::RunLoop::dispatch();
            if (v54)
            {
              (*(*v54 + 8))(v54);
            }

            v49 = v55;
            v55 = 0;
            if (v49)
            {
              (*(*v49 + 8))(v49);
            }
          }
        }

        v50 = v56;
        v56 = 0;
        if (v50)
        {
          IPC::Encoder::~Encoder(v50, v45);
          bmalloc::api::tzoneFree(v51, v52);
        }

        goto LABEL_27;
      }
    }

LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v18 = -v17 & 7;
  *(v17 + v18) = v13;
  v19 = 6;
  if (v18 > 6)
  {
    v19 = v18;
  }

  v20 = v19 + 10;
  v21 = (*(v3 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v22 = *(v3 + 72);
  if (v21 + 16 >= v22)
  {
    v21 = 0;
  }

  v23 = v20 + v21;
  if (v22 <= v23)
  {
    v23 = 0;
  }

  *(v3 + 88) = v23;
  v24 = *(v3 + 80);
  if (*(v24 + 8) <= 0xFFuLL)
  {
    goto LABEL_74;
  }

  if (atomic_exchange((*(v24 + 16) + 128), v23) == 0x80000000 || *(v3 + 124))
  {
    if (*(v3 + 112) == 1)
    {
      MEMORY[0x19EB16320](*(v3 + 100));
    }

    *(v3 + 124) = 0;
  }

LABEL_27:
  v25 = v57[0];
  v57[0] = 0;
  if (v25)
  {
    (*(*v25 + 8))(v25);
  }

  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v8);
  v2 = 0;
LABEL_30:
  if (atomic_fetch_add(v3, 0xFFFFFFFF) != 1)
  {
    if (!v2)
    {
      return;
    }

LABEL_34:
    (*(*v2 + 8))(v2);
    return;
  }

  atomic_store(1u, v3);
  IPC::StreamClientConnection::operator delete(v3);
  if (v2)
  {
    goto LABEL_34;
  }
}

void WebKit::WebGPU::RemoteQueueProxy::writeBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, WTF::ApproximateTime *a6, WTF *a7, char a8)
{
  v16 = (*(**(a1 + 40) + 40))(*(a1 + 40));
  v17 = v16;
  v18 = a5 - a6;
  if (a8)
  {
    v19 = a7;
  }

  else
  {
    v19 = (a5 - a6);
  }

  if (v19 < 0x1000001)
  {
    if (a5 < a6 || v18 < v19)
    {
      goto LABEL_127;
    }

    if (v19)
    {
      v21 = a6 + a4;
      v16 = WTF::fastMalloc(v19);
      a6 = v16;
      for (i = 0; i != v19; i = (i + 1))
      {
        *(i + v16) = *(i + v21);
      }
    }

    else
    {
      a6 = 0;
    }

    v23 = *(*(*(a1 + 48) + 72) + 80);
    atomic_fetch_add(v23, 1u);
    a7 = *(a1 + 32);
    v24 = *(v23 + 128);
    v8 = INFINITY;
    if (fabs(v24) != INFINITY)
    {
      WTF::ApproximateTime::now(v16);
      v8 = v24 + v25;
    }

    if (*(v23 + 64) != a7)
    {
      IPC::StreamClientConnectionBuffer::tryAcquire(v23 + 72, &v110, v8);
      if (v112 != 1)
      {
        goto LABEL_87;
      }

      v88 = v111;
      if (v111 <= 1)
      {
        __break(0xC471u);
        goto LABEL_143;
      }

      v89 = v110;
      *v110 = 3198;
      v90 = v89 + 2;
      if (v88 - 2 < (-v90 & 7 | 8uLL))
      {
        goto LABEL_87;
      }

      v91 = -v90 & 7;
      *&v90[v91] = a7;
      v92 = 6;
      if (v91 > 6)
      {
        v92 = v91;
      }

      v93 = v92 + 10;
      v94 = (*(v23 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v95 = *(v23 + 72);
      if (v94 + 16 >= v95)
      {
        v94 = 0;
      }

      v96 = v93 + v94;
      if (v95 <= v96)
      {
        v96 = 0;
      }

      *(v23 + 88) = v96;
      v97 = *(v23 + 80);
      if (*(v97 + 8) <= 0xFFuLL)
      {
        goto LABEL_127;
      }

      v98 = atomic_exchange((*(v97 + 16) + 128), v96);
      v99 = *(v23 + 124);
      if (v98 == 0x80000000 || v99 != 0)
      {
        v101 = v99 + 1;
        *(v23 + 124) = v101;
        if (v101 >= *(v23 + 120))
        {
          if (*(v23 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v23 + 100));
          }

          *(v23 + 124) = 0;
        }
      }

      *(v23 + 64) = a7;
    }

    IPC::StreamClientConnectionBuffer::tryAcquire(v23 + 72, &v107, v8);
    if (v109 != 1)
    {
      goto LABEL_87;
    }

    v27 = v107;
    v28 = v108;
    v112 = v108;
    if (v108 > 1)
    {
      *v107 = 1521;
      v29 = v27 + 1;
      v30 = v28 - 2;
      v31 = -v29 & 7 | 8;
      v32 = v30 >= v31;
      v33 = v30 - v31;
      if (v32 && (*(v29 + (-v29 & 7)) = v17, v34 = v29 + v31, v35 = -v34 & 7 | 8, v32 = v33 >= v35, v36 = v33 - v35, v32))
      {
        *(v34 + (-v34 & 7)) = a3;
        v110 = (v34 + v35);
        v111 = v36;
      }

      else
      {
        v110 = 0;
        v111 = 0;
      }

      IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::StreamConnectionEncoder>(&v110, a6, v19);
      if (v110)
      {
        v37 = v112 - v111;
        if (v112 - v111 <= 0x10)
        {
          v37 = 16;
        }

        v38 = (*(v23 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
        v39 = *(v23 + 72);
        if (v38 + 16 >= v39)
        {
          v38 = 0;
        }

        v40 = v38 + v37;
        if (v39 <= v40)
        {
          v40 = 0;
        }

        *(v23 + 88) = v40;
        v41 = *(v23 + 80);
        if (*(v41 + 8) <= 0xFFuLL)
        {
          goto LABEL_127;
        }

        if (atomic_exchange((*(v41 + 16) + 128), v40) == 0x80000000 || *(v23 + 124))
        {
          if (*(v23 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v23 + 100));
          }

          *(v23 + 124) = 0;
        }
      }

      else
      {
        if ((v109 & 1) == 0)
        {
          goto LABEL_127;
        }

        if (v108 <= 1)
        {
          __break(0xC471u);
          JUMPOUT(0x19E268170);
        }

        *v107 = 3197;
        v62 = (*(v23 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
        v63 = *(v23 + 72);
        if (v62 + 16 >= v63)
        {
          v62 = 0;
        }

        v64 = v62 + 16;
        v65 = v63 <= v64 ? 0 : v64;
        *(v23 + 88) = v65;
        v66 = *(v23 + 80);
        if (*(v66 + 8) <= 0xFFuLL)
        {
          goto LABEL_127;
        }

        atomic_exchange((*(v66 + 16) + 128), v65);
        *(v23 + 124) = 0;
        v67 = *(v23 + 8);
        v68 = IPC::Encoder::operator new(0x238, v26);
        *v68 = 1521;
        *(v68 + 2) = 0;
        *(v68 + 3) = 0;
        *(v68 + 1) = a7;
        *(v68 + 68) = 0;
        *(v68 + 70) = 0;
        *(v68 + 69) = 0;
        IPC::Encoder::encodeHeader(v68);
        v110 = v68;
        IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v68, v17);
        IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v68, a3);
        IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(v68, a6, v19);
        IPC::Connection::sendMessageImpl(v67, &v110, 1, 0);
        v69 = v110;
        v110 = 0;
        if (v69)
        {
          IPC::Encoder::~Encoder(v69, v26);
          bmalloc::api::tzoneFree(v72, v73);
        }
      }

LABEL_87:
      if (atomic_fetch_add(v23, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v23);
        IPC::StreamClientConnection::operator delete(v23);
        if (!a6)
        {
          return;
        }
      }

      else if (!a6)
      {
        return;
      }

      WTF::fastFree(a6, v26);
      return;
    }

    __break(0xC471u);
LABEL_143:
    JUMPOUT(0x19E2680F0);
  }

  if (a5 < a6 || v19 != -1 && v18 < v19)
  {
    goto LABEL_127;
  }

  WebCore::SharedMemory::copySpan();
  LOBYTE(v107) = 0;
  v109 = 0;
  v20 = v102;
  if (v102)
  {
    WebCore::SharedMemory::createHandle();
    std::__optional_storage_base<WebCore::SharedMemoryHandle,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::SharedMemoryHandle,false>>(&v107, &v110);
    if (v112 == 1)
    {
      WTF::MachSendRight::~MachSendRight(&v110);
    }

    v19 = v102;
    atomic_fetch_add(v102, 1u);
  }

  else
  {
    v19 = 0;
  }

  LOBYTE(a7) = v109;
  a6 = *(*(*(a1 + 48) + 72) + 80);
  atomic_fetch_add(a6, 1u);
  a5 = *(a1 + 32);
  v42 = *(a6 + 16);
  v8 = INFINITY;
  if (fabs(v42) != INFINITY)
  {
    WTF::ApproximateTime::now(v20);
    v8 = v42 + v43;
  }

  if (*(a6 + 8) == a5)
  {
    while (1)
    {
      IPC::StreamClientConnectionBuffer::tryAcquire(a6 + 72, &v110, v8);
      if (v112 != 1)
      {
        break;
      }

      v44 = *(a6 + 1);
      while (1)
      {
        v45 = *v44;
        if ((*v44 & 1) == 0)
        {
          break;
        }

        v46 = *v44;
        atomic_compare_exchange_strong_explicit(v44, &v46, v45 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v46 == v45)
        {
          goto LABEL_50;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v44);
LABEL_50:
      v47 = WTF::fastMalloc(0x18);
      *v47 = &unk_1F11267A8;
      *(v47 + 8) = v19;
      *(v47 + 16) = a7;
      v106[0] = v47;
      if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
      {
        __break(0xC471u);
        JUMPOUT(0x19E268110);
      }

      IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
      v106[1] = IdentifierInternal;
      if (!IdentifierInternal)
      {
        __break(0xC471u);
        JUMPOUT(0x19E268130);
      }

      v19 = IdentifierInternal;
      IPC::Connection::addAsyncReplyHandler(v44, v106);
      if (v112)
      {
        if (v111 <= 1)
        {
          __break(0xC471u);
          JUMPOUT(0x19E268150);
        }

        *v110 = 3197;
        v50 = (*(a6 + 11) + 1) & 0xFFFFFFFFFFFFFFFELL;
        v52 = *(a6 + 9);
        v51 = *(a6 + 10);
        if (v50 + 16 >= v52)
        {
          v50 = 0;
        }

        v53 = v50 + 16;
        if (v52 <= v53)
        {
          v53 = 0;
        }

        *(a6 + 11) = v53;
        if (*(v51 + 8) > 0xFFuLL)
        {
          atomic_exchange((*(v51 + 16) + 128), v53);
          *(a6 + 31) = 0;
          v54 = IPC::Encoder::operator new(0x238, v49);
          *v54 = 1520;
          *(v54 + 2) = 0;
          *(v54 + 3) = 0;
          *(v54 + 1) = a5;
          *(v54 + 68) = 0;
          *(v54 + 70) = 0;
          *(v54 + 69) = 0;
          IPC::Encoder::encodeHeader(v54);
          v105 = v54;
          IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v54, v17);
          IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v54, a3);
          IPC::ArgumentCoder<std::optional<WebCore::SharedMemoryHandle>,void>::encode<IPC::Encoder,std::optional<WebCore::SharedMemoryHandle>>(v54, &v107);
          IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v54, v19);
          if (IPC::Connection::sendMessageImpl(v44, &v105, 1, 0))
          {
            IPC::Connection::takeAsyncReplyHandler(v44, v19, &v104);
            if (v104)
            {
              WTF::RunLoop::mainSingleton(v56);
              v57 = v104;
              v104 = 0;
              v58 = WTF::fastMalloc(0x10);
              *v58 = &unk_1F11267D0;
              v58[1] = v57;
              v103 = v58;
              WTF::RunLoop::dispatch();
              if (v103)
              {
                (*(*v103 + 8))(v103);
              }

              v59 = v104;
              v104 = 0;
              if (v59)
              {
                (*(*v59 + 8))(v59);
              }
            }
          }

          v60 = v105;
          v105 = 0;
          if (v60)
          {
            IPC::Encoder::~Encoder(v60, v55);
            bmalloc::api::tzoneFree(v70, v71);
          }

          v61 = v106[0];
          v106[0] = 0;
          if (v61)
          {
            (*(*v61 + 8))(v61);
          }

          WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v44);
          v19 = 0;
          break;
        }
      }

LABEL_127:
      __break(1u);
LABEL_128:
      if (*(a6 + 112) == 1)
      {
        MEMORY[0x19EB16320](*(a6 + 25));
      }

      *(a6 + 31) = 0;
LABEL_110:
      *(a6 + 8) = a5;
    }
  }

  else
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(a6 + 72, &v110, v8);
    if (v112 == 1)
    {
      v74 = v111;
      if (v111 <= 1)
      {
        __break(0xC471u);
        JUMPOUT(0x19E268190);
      }

      v75 = v110;
      *v110 = 3198;
      v76 = v75 + 2;
      if (v74 - 2 >= (-v76 & 7 | 8uLL))
      {
        v77 = -v76 & 7;
        *&v76[v77] = a5;
        v78 = 6;
        if (v77 > 6)
        {
          v78 = v77;
        }

        v79 = v78 + 10;
        v80 = (*(a6 + 11) + 1) & 0xFFFFFFFFFFFFFFFELL;
        v81 = *(a6 + 9);
        if (v80 + 16 >= v81)
        {
          v80 = 0;
        }

        v82 = v79 + v80;
        if (v81 <= v82)
        {
          v82 = 0;
        }

        *(a6 + 11) = v82;
        v83 = *(a6 + 10);
        if (*(v83 + 8) <= 0xFFuLL)
        {
          goto LABEL_127;
        }

        v84 = atomic_exchange((*(v83 + 16) + 128), v82);
        v85 = *(a6 + 31);
        if (v84 == 0x80000000 || v85 != 0)
        {
          v87 = v85 + 1;
          *(a6 + 31) = v87;
          if (v87 >= *(a6 + 30))
          {
            goto LABEL_128;
          }
        }

        goto LABEL_110;
      }
    }
  }

  if (atomic_fetch_add(a6, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, a6);
    IPC::StreamClientConnection::operator delete(a6);
    if (!v19)
    {
      goto LABEL_73;
    }

    goto LABEL_72;
  }

  if (v19)
  {
LABEL_72:
    WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v19);
  }

LABEL_73:
  if (v109 == 1)
  {
    WTF::MachSendRight::~MachSendRight(&v107);
  }

  if (v102)
  {
    WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v102);
  }
}

void WebKit::WebGPU::RemoteQueueProxy::writeTexture(void *a1, uint64_t a2, uint64_t a3, WTF *a4, uint64_t a5, uint64_t a6)
{
  WebKit::WebGPU::ConvertToBackingContext::convertToBacking(a1[5], a2, v102);
  v13 = a1[5];
  v14 = *a5;
  v98 = *(a5 + 8);
  v99 = *(a5 + 12);
  v15 = (*(a5 + 16) << 24) | (*(a5 + 20) << 56);
  v97 = v14;
  v100 = v15;
  v101 = 1;
  v16 = WebKit::WebGPU::ConvertToBackingContext::convertToBacking(v13, a6, &v93);
  if (v107 != 1 || v96 != 1)
  {
    goto LABEL_83;
  }

  if (a4 < 0x1000001)
  {
    if (a4)
    {
      v16 = WTF::fastMalloc(a4);
      a6 = v16;
      v24 = 0;
      do
      {
        *(v24 + v16) = *(v24 + a3);
        v24 = (v24 + 1);
      }

      while (a4 != v24);
      if ((v101 & 1) == 0 || (v96 & 1) == 0)
      {
LABEL_130:
        while (1)
        {
          __break(1u);
LABEL_131:
          if (*(a3 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(a3 + 100));
          }

          *(a3 + 124) = 0;
LABEL_113:
          *(a3 + 64) = v6;
LABEL_28:
          IPC::StreamClientConnectionBuffer::tryAcquire(a3 + 72, &v112, v7);
          if (v114 != 1)
          {
            break;
          }

          v27 = v112;
          v28 = v113;
          v117 = v113;
          if (v113 <= 1)
          {
            goto LABEL_143;
          }

          *v112 = 1523;
          v115 = (v27 + 1);
          v116 = v28 - 2;
          IPC::ArgumentCoder<WebKit::WebGPU::ImageCopyTexture,void>::encode(&v115, v102);
          IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::StreamConnectionEncoder>(&v115, a6, a4);
          IPC::ArgumentCoder<WebKit::WebGPU::ImageDataLayout,void>::encode(&v115, &v97);
          IPC::ArgumentCoder<mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin3DDict>,void>::encode<IPC::StreamConnectionEncoder,mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin3DDict> const&>(&v115, &v93);
          if (v115)
          {
            v29 = v117 - v116;
            if (v117 - v116 <= 0x10)
            {
              v29 = 16;
            }

            v30 = (*(a3 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
            v31 = *(a3 + 72);
            if (v30 + 16 >= v31)
            {
              v30 = 0;
            }

            v32 = v30 + v29;
            if (v31 <= v32)
            {
              v32 = 0;
            }

            *(a3 + 88) = v32;
            v33 = *(a3 + 80);
            if (*(v33 + 8) > 0xFFuLL)
            {
              if (atomic_exchange((*(v33 + 16) + 128), v32) == 0x80000000 || *(a3 + 124))
              {
                if (*(a3 + 112) == 1)
                {
                  MEMORY[0x19EB16320](*(a3 + 100));
                }

                *(a3 + 124) = 0;
              }

              break;
            }
          }

          else if (v114)
          {
            if (v113 <= 1)
            {
              __break(0xC471u);
              JUMPOUT(0x19E268C14);
            }

            *v112 = 3197;
            v50 = (*(a3 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
            v51 = *(a3 + 72);
            if (v50 + 16 >= v51)
            {
              v50 = 0;
            }

            v52 = v50 + 16;
            v53 = v51 <= v52 ? 0 : v52;
            *(a3 + 88) = v53;
            v54 = *(a3 + 80);
            if (*(v54 + 8) > 0xFFuLL)
            {
              atomic_exchange((*(v54 + 16) + 128), v53);
              *(a3 + 124) = 0;
              v55 = *(a3 + 8);
              v56 = IPC::Encoder::operator new(0x238, v17);
              *v56 = 1523;
              *(v56 + 2) = 0;
              *(v56 + 3) = 0;
              *(v56 + 1) = v6;
              *(v56 + 68) = 0;
              *(v56 + 70) = 0;
              *(v56 + 69) = 0;
              IPC::Encoder::encodeHeader(v56);
              v115 = v56;
              IPC::ArgumentCoder<WebKit::WebGPU::ImageCopyTexture,void>::encode(v56, v102);
              IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(v56, a6, a4);
              IPC::ArgumentCoder<WebKit::WebGPU::ImageDataLayout,void>::encode(v56, &v97);
              IPC::ArgumentCoder<mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Extent3DDict>,void>::encode<IPC::Encoder,mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Extent3DDict> const&>(v56, &v93);
              IPC::Connection::sendMessageImpl(v55, &v115, 1, 0);
              v57 = v115;
              v115 = 0;
              if (v57)
              {
                IPC::Encoder::~Encoder(v57, v17);
                bmalloc::api::tzoneFree(v62, v63);
              }

              break;
            }
          }
        }

LABEL_81:
        if (atomic_fetch_add(a3, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, a3);
          IPC::StreamClientConnection::operator delete(a3);
          if (!a6)
          {
            goto LABEL_83;
          }
        }

        else if (!a6)
        {
          goto LABEL_83;
        }

        WTF::fastFree(a6, v17);
        goto LABEL_83;
      }
    }

    else
    {
      a6 = 0;
    }

    a3 = *(*(a1[6] + 72) + 80);
    atomic_fetch_add(a3, 1u);
    v6 = a1[4];
    v25 = *(a3 + 128);
    v7 = INFINITY;
    if (fabs(v25) != INFINITY)
    {
      WTF::ApproximateTime::now(v16);
      v7 = v25 + v26;
    }

    if (*(a3 + 64) == v6)
    {
      goto LABEL_28;
    }

    IPC::StreamClientConnectionBuffer::tryAcquire(a3 + 72, &v115, v7);
    if (v117 == 1)
    {
      v64 = v116;
      if (v116 <= 1)
      {
        __break(0xC471u);
        JUMPOUT(0x19E268C34);
      }

      v65 = v115;
      *v115 = 3198;
      v66 = (v65 + 2);
      if (v64 - 2 >= (-v66 & 7 | 8uLL))
      {
        v67 = -v66 & 7;
        *(v66 + v67) = v6;
        v68 = 6;
        if (v67 > 6)
        {
          v68 = v67;
        }

        v69 = v68 + 10;
        v70 = (*(a3 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
        v71 = *(a3 + 72);
        if (v70 + 16 >= v71)
        {
          v70 = 0;
        }

        v72 = v69 + v70;
        if (v71 <= v72)
        {
          v72 = 0;
        }

        *(a3 + 88) = v72;
        v73 = *(a3 + 80);
        if (*(v73 + 8) > 0xFFuLL)
        {
          v74 = atomic_exchange((*(v73 + 16) + 128), v72);
          v75 = *(a3 + 124);
          if (v74 == 0x80000000 || v75 != 0)
          {
            v77 = v75 + 1;
            *(a3 + 124) = v77;
            if (v77 >= *(a3 + 120))
            {
              goto LABEL_131;
            }
          }

          goto LABEL_113;
        }

        goto LABEL_130;
      }
    }

    goto LABEL_81;
  }

  WebCore::SharedMemory::copySpan();
  LOBYTE(v112) = 0;
  v114 = 0;
  v18 = v92;
  if (v92)
  {
    WebCore::SharedMemory::createHandle();
    std::__optional_storage_base<WebCore::SharedMemoryHandle,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::SharedMemoryHandle,false>>(&v112, &v115);
    if (v117 == 1)
    {
      WTF::MachSendRight::~MachSendRight(&v115);
    }
  }

  if ((v107 & 1) == 0 || (v101 & 1) == 0 || (v96 & 1) == 0)
  {
    goto LABEL_130;
  }

  a4 = v92;
  if (v92)
  {
    atomic_fetch_add(v92, 1u);
  }

  v6 = v114;
  a6 = *(*(a1[6] + 72) + 80);
  atomic_fetch_add(a6, 1u);
  v19 = a1[4];
  v20 = *(a6 + 128);
  v7 = INFINITY;
  if (fabs(v20) != INFINITY)
  {
    WTF::ApproximateTime::now(v18);
    v7 = v20 + v21;
  }

  if (*(a6 + 64) == v19)
  {
    goto LABEL_15;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(a6 + 72, &v115, v7);
  if (v117 == 1)
  {
    v78 = v116;
    if (v116 <= 1)
    {
LABEL_143:
      __break(0xC471u);
      JUMPOUT(0x19E268B94);
    }

    v79 = v115;
    *v115 = 3198;
    v80 = (v79 + 2);
    if (v78 - 2 >= (-v80 & 7 | 8uLL))
    {
      v81 = -v80 & 7;
      *(v80 + v81) = v19;
      v82 = 6;
      if (v81 > 6)
      {
        v82 = v81;
      }

      v83 = v82 + 10;
      v84 = (*(a6 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v85 = *(a6 + 72);
      if (v84 + 16 >= v85)
      {
        v84 = 0;
      }

      v86 = v83 + v84;
      if (v85 <= v86)
      {
        v86 = 0;
      }

      *(a6 + 88) = v86;
      v87 = *(a6 + 80);
      if (*(v87 + 8) <= 0xFFuLL)
      {
        goto LABEL_130;
      }

      v88 = atomic_exchange((*(v87 + 16) + 128), v86);
      v89 = *(a6 + 124);
      if (v88 == 0x80000000 || v89 != 0)
      {
        v91 = v89 + 1;
        *(a6 + 124) = v91;
        if (v91 >= *(a6 + 120))
        {
          if (*(a6 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(a6 + 100));
          }

          *(a6 + 124) = 0;
        }
      }

      *(a6 + 64) = v19;
LABEL_15:
      IPC::StreamClientConnectionBuffer::tryAcquire(a6 + 72, &v115, v7);
      if (v117 == 1)
      {
        a3 = *(a6 + 8);
        while (1)
        {
          v22 = *a3;
          if ((*a3 & 1) == 0)
          {
            break;
          }

          v23 = *a3;
          atomic_compare_exchange_strong_explicit(a3, &v23, v22 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v23 == v22)
          {
            goto LABEL_44;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a3);
LABEL_44:
        v34 = WTF::fastMalloc(0x18);
        *v34 = &unk_1F11267F8;
        *(v34 + 8) = v92;
        *(v34 + 16) = v6;
        v111[0] = v34;
        if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
        {
          __break(0xC471u);
          JUMPOUT(0x19E268BB4);
        }

        IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
        v111[1] = IdentifierInternal;
        if (!IdentifierInternal)
        {
          __break(0xC471u);
          JUMPOUT(0x19E268BD4);
        }

        a4 = IdentifierInternal;
        IPC::Connection::addAsyncReplyHandler(a3, v111);
        if ((v117 & 1) == 0)
        {
          goto LABEL_130;
        }

        if (v116 <= 1)
        {
          __break(0xC471u);
          JUMPOUT(0x19E268BF4);
        }

        *v115 = 3197;
        v37 = (*(a6 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
        v39 = *(a6 + 72);
        v38 = *(a6 + 80);
        if (v37 + 16 >= v39)
        {
          v37 = 0;
        }

        v40 = v37 + 16;
        if (v39 <= v40)
        {
          v40 = 0;
        }

        *(a6 + 88) = v40;
        if (*(v38 + 8) <= 0xFFuLL)
        {
          goto LABEL_130;
        }

        atomic_exchange((*(v38 + 16) + 128), v40);
        *(a6 + 124) = 0;
        v41 = IPC::Encoder::operator new(0x238, v36);
        *v41 = 1522;
        *(v41 + 2) = 0;
        *(v41 + 3) = 0;
        *(v41 + 1) = v19;
        *(v41 + 68) = 0;
        *(v41 + 70) = 0;
        *(v41 + 69) = 0;
        IPC::Encoder::encodeHeader(v41);
        v110 = v41;
        IPC::ArgumentCoder<WebKit::WebGPU::ImageCopyTexture,void>::encode(v41, v102);
        IPC::ArgumentCoder<std::optional<WebCore::SharedMemoryHandle>,void>::encode<IPC::Encoder,std::optional<WebCore::SharedMemoryHandle>>(v41, &v112);
        IPC::ArgumentCoder<WebKit::WebGPU::ImageDataLayout,void>::encode(v41, &v97);
        IPC::ArgumentCoder<mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Extent3DDict>,void>::encode<IPC::Encoder,mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Extent3DDict> const&>(v41, &v93);
        IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v41, a4);
        if (IPC::Connection::sendMessageImpl(a3, &v110, 1, 0))
        {
          IPC::Connection::takeAsyncReplyHandler(a3, a4, &v109);
          if (v109)
          {
            WTF::RunLoop::mainSingleton(v43);
            v44 = v109;
            v109 = 0;
            v45 = WTF::fastMalloc(0x10);
            *v45 = &unk_1F1126820;
            v45[1] = v44;
            v108 = v45;
            WTF::RunLoop::dispatch();
            v46 = v108;
            v108 = 0;
            if (v46)
            {
              (*(*v46 + 8))(v46);
            }

            v47 = v109;
            v109 = 0;
            if (v47)
            {
              (*(*v47 + 8))(v47);
            }
          }
        }

        v48 = v110;
        v110 = 0;
        if (v48)
        {
          IPC::Encoder::~Encoder(v48, v42);
          bmalloc::api::tzoneFree(v60, v61);
        }

        v49 = v111[0];
        v111[0] = 0;
        if (v49)
        {
          (*(*v49 + 8))(v49);
        }

        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(a3);
        a4 = 0;
      }
    }
  }

  if (atomic_fetch_add(a6, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, a6);
    IPC::StreamClientConnection::operator delete(a6);
    if (!a4)
    {
      goto LABEL_67;
    }

    goto LABEL_66;
  }

  if (a4)
  {
LABEL_66:
    WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(a4);
  }

LABEL_67:
  if (v114 == 1)
  {
    WTF::MachSendRight::~MachSendRight(&v112);
  }

  if (v92)
  {
    WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v92);
  }

LABEL_83:
  if (v96 == 1 && !v95)
  {
    v58 = v93;
    if (v93)
    {
      v93 = 0;
      v94 = 0;
      WTF::fastFree(v58, v17);
    }
  }

  if (v107 == 1 && v106 == 1 && !v105)
  {
    v59 = v103;
    if (v103)
    {
      v103 = 0;
      v104 = 0;
      WTF::fastFree(v59, v17);
    }
  }
}

void WebKit::WebGPU::RemoteQueueProxy::copyExternalImageToTexture(void *a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v7 = a1[5];
  ++*(v7 + 2);
  WebKit::WebGPU::ConvertToBackingContext::convertToBacking(v7, a2, &v61);
  WebKit::WebGPU::ConvertToBackingContext::convertToBacking(v7, a3, v55);
  v8 = WebKit::WebGPU::ConvertToBackingContext::convertToBacking(v7, a4, &v51);
  if (v66 != 1 || v60 != 1 || v54 != 1)
  {
    goto LABEL_34;
  }

  v11 = *(*(a1[6] + 72) + 80);
  atomic_fetch_add(v11, 1u);
  v12 = a1[4];
  v13 = *(v11 + 128);
  v14 = INFINITY;
  if (fabs(v13) != INFINITY)
  {
    WTF::ApproximateTime::now(v8);
    v14 = v13 + v15;
  }

  if (*(v11 + 64) != v12)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(v11 + 72, &v70, v14);
    if (v72 != 1)
    {
      goto LABEL_32;
    }

    v37 = v71;
    if (v71 <= 1)
    {
LABEL_76:
      __break(0xC471u);
      JUMPOUT(0x19E2691A0);
    }

    v38 = v70;
    *v70 = 3198;
    v39 = (v38 + 2);
    if (v37 - 2 < (-v39 & 7 | 8uLL))
    {
      goto LABEL_32;
    }

    v40 = -v39 & 7;
    *(v39 + v40) = v12;
    v41 = 6;
    if (v40 > 6)
    {
      v41 = v40;
    }

    v42 = v41 + 10;
    v43 = (*(v11 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v44 = *(v11 + 72);
    if (v43 + 16 >= v44)
    {
      v43 = 0;
    }

    v45 = v42 + v43;
    if (v44 <= v45)
    {
      v45 = 0;
    }

    *(v11 + 88) = v45;
    v46 = *(v11 + 80);
    if (*(v46 + 8) <= 0xFFuLL)
    {
LABEL_75:
      __break(1u);
      goto LABEL_76;
    }

    v47 = atomic_exchange((*(v46 + 16) + 128), v45);
    v48 = *(v11 + 124);
    if (v47 == 0x80000000 || v48 != 0)
    {
      v50 = v48 + 1;
      *(v11 + 124) = v50;
      if (v50 >= *(v11 + 120))
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

  IPC::StreamClientConnectionBuffer::tryAcquire(v11 + 72, &v67, v14);
  if (v69 == 1)
  {
    v16 = v67;
    v17 = v68;
    v72 = v68;
    if (v68 <= 1)
    {
      goto LABEL_76;
    }

    *v67 = 1515;
    v70 = (v16 + 1);
    v71 = v17 - 2;
    IPC::ArgumentCoder<WebKit::WebGPU::ImageCopyExternalImage,void>::encode(&v70, &v61);
    IPC::ArgumentCoder<WebKit::WebGPU::ImageCopyTextureTagged,void>::encode(&v70, v55);
    IPC::ArgumentCoder<mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin3DDict>,void>::encode<IPC::StreamConnectionEncoder,mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin3DDict> const&>(&v70, &v51);
    if (v70)
    {
      v18 = v72 - v71;
      if (v72 - v71 <= 0x10)
      {
        v18 = 16;
      }

      v19 = (*(v11 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v20 = *(v11 + 72);
      if (v19 + 16 >= v20)
      {
        v19 = 0;
      }

      v21 = v19 + v18;
      if (v20 <= v21)
      {
        v21 = 0;
      }

      *(v11 + 88) = v21;
      v22 = *(v11 + 80);
      if (*(v22 + 8) > 0xFFuLL)
      {
        if (atomic_exchange((*(v22 + 16) + 128), v21) == 0x80000000 || *(v11 + 124))
        {
          if (*(v11 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v11 + 100));
          }

          *(v11 + 124) = 0;
        }

        goto LABEL_32;
      }
    }

    else if (v69)
    {
      if (v68 <= 1)
      {
        __break(0xC471u);
      }

      else
      {
        *v67 = 3197;
        v23 = (*(v11 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
        v24 = *(v11 + 72);
        if (v23 + 16 >= v24)
        {
          v23 = 0;
        }

        v25 = v23 + 16;
        if (v24 <= v25)
        {
          v26 = 0;
        }

        else
        {
          v26 = v25;
        }

        *(v11 + 88) = v26;
        v27 = *(v11 + 80);
        if (*(v27 + 8) > 0xFFuLL)
        {
          atomic_exchange((*(v27 + 16) + 128), v26);
          *(v11 + 124) = 0;
          v28 = *(v11 + 8);
          v29 = IPC::Encoder::operator new(0x238, v9);
          *v29 = 1515;
          *(v29 + 2) = 0;
          *(v29 + 3) = 0;
          *(v29 + 1) = v12;
          *(v29 + 68) = 0;
          *(v29 + 70) = 0;
          *(v29 + 69) = 0;
          IPC::Encoder::encodeHeader(v29);
          v70 = v29;
          IPC::ArgumentCoder<std::optional<mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin2DDict>>,void>::encode<IPC::Encoder,std::optional<mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin2DDict>> const&>(v29, &v61);
          IPC::Encoder::operator<<<BOOL>(v29, v65);
          IPC::ArgumentCoder<WebKit::WebGPU::ImageCopyTextureTagged,void>::encode(v29, v55);
          IPC::ArgumentCoder<mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Extent3DDict>,void>::encode<IPC::Encoder,mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Extent3DDict> const&>(v29, &v51);
          IPC::Connection::sendMessageImpl(v28, &v70, 1, 0);
          v30 = v70;
          v70 = 0;
          if (v30)
          {
            IPC::Encoder::~Encoder(v30, v9);
            bmalloc::api::tzoneFree(v35, v36);
          }

          goto LABEL_32;
        }
      }
    }

    goto LABEL_75;
  }

LABEL_32:
  if (atomic_fetch_add(v11, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v11);
    v10.n128_f64[0] = IPC::StreamClientConnection::operator delete(v11);
  }

LABEL_34:
  if (v54 == 1 && v53 == 0)
  {
    v32 = v51;
    if (v51)
    {
      v51 = 0;
      v52 = 0;
      WTF::fastFree(v32, v9);
    }
  }

  if (v60 == 1 && v59 == 1 && !v58)
  {
    v33 = v56;
    if (v56)
    {
      v56 = 0;
      v57 = 0;
      WTF::fastFree(v33, v9);
    }
  }

  if (v66 == 1 && v64 == 1 && !v63)
  {
    v34 = v61;
    if (v61)
    {
      v61 = 0;
      v62 = 0;
      WTF::fastFree(v34, v9);
    }
  }

  if (*(v7 + 2) == 1)
  {
    (*(*v7 + 8))(v7, v10);
  }

  else
  {
    --*(v7 + 2);
  }
}

void WebKit::WebGPU::RemoteQueueProxy::setLabelInternal(WebKit::WebGPU::RemoteQueueProxy *this, const WTF::String *a2)
{
  v3 = *(*(*(this + 6) + 72) + 80);
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
      JUMPOUT(0x19E269554);
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

  *v40 = 1518;
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
  *v22 = 1518;
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

uint64_t WebKit::WebGPU::RemoteQueueProxy::getNativeImage@<X0>(WebKit::WebGPU::RemoteQueueProxy *this@<X0>, atomic_uint *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  atomic_fetch_add(a2 + 2, 1u);
  v5 = *(this + 7);
  if (v5)
  {
    atomic_fetch_add(v5, 1u);
  }

  v6 = WTF::fastMalloc(0x20);
  *v6 = &unk_1F1126848;
  v6[1] = a3;
  v6[2] = a2;
  v6[3] = v5;
  v9 = v6;
  WTF::callOnMainRunLoopAndWait();
  result = v9;
  if (v9)
  {
    v8 = *(*v9 + 8);

    return v8();
  }

  return result;
}

void WebKit::WebGPU::RemoteRenderBundleEncoderProxy::~RemoteRenderBundleEncoderProxy(WebKit::WebGPU::RemoteRenderBundleEncoderProxy *this)
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
      JUMPOUT(0x19E2699F4);
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

  *v31 = 1526;
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

  *this = &unk_1F1126528;
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
  WebKit::WebGPU::RemoteRenderBundleEncoderProxy::~RemoteRenderBundleEncoderProxy(this);

  bmalloc::api::tzoneFree(v1, v2);
}

void WebKit::WebGPU::RemoteRenderBundleEncoderProxy::setPipeline(WebKit::WebGPU::RemoteRenderBundleEncoderProxy *this, const WebCore::WebGPU::RenderPipeline *a2)
{
  v3 = (*(**(this + 5) + 176))(*(this + 5), a2);
  v4 = v3;
  v5 = *(*(*(*(this + 6) + 64) + 72) + 80);
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
      JUMPOUT(0x19E269E00);
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
      *v45 = 1538;
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
            *v39 = 1538;
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
      JUMPOUT(0x19E269DD8);
    }
  }

LABEL_19:
  if (atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5);
    IPC::StreamClientConnection::operator delete(v5);
  }
}

void WebKit::WebGPU::RemoteRenderBundleEncoderProxy::setIndexBuffer(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v55[0] = a4;
  v55[1] = a5;
  v54[0] = a6;
  v54[1] = a7;
  v9 = (*(**(a1 + 40) + 40))(*(a1 + 40));
  v10 = v9;
  v11 = *(*(*(*(a1 + 48) + 64) + 72) + 80);
  atomic_fetch_add(v11, 1u);
  v12 = *(a1 + 32);
  v13 = *(v11 + 128);
  v14 = INFINITY;
  if (fabs(v13) != INFINITY)
  {
    WTF::ApproximateTime::now(v9);
    v14 = v13 + v15;
  }

  if (*(v11 + 64) != v12)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(v11 + 72, &v59, v14);
    if (v61 != 1)
    {
      goto LABEL_32;
    }

    v40 = v60;
    if (v60 <= 1)
    {
      goto LABEL_58;
    }

    v41 = v59;
    *v59 = 3198;
    v42 = v41 + 2;
    if (v40 - 2 < (-v42 & 7 | 8uLL))
    {
      goto LABEL_32;
    }

    v43 = -v42 & 7;
    *&v42[v43] = v12;
    v44 = 6;
    if (v43 > 6)
    {
      v44 = v43;
    }

    v45 = v44 + 10;
    v46 = (*(v11 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v47 = *(v11 + 72);
    if (v46 + 16 >= v47)
    {
      v46 = 0;
    }

    v48 = v45 + v46;
    if (v47 <= v48)
    {
      v48 = 0;
    }

    *(v11 + 88) = v48;
    v49 = *(v11 + 80);
    if (*(v49 + 8) <= 0xFFuLL)
    {
      goto LABEL_57;
    }

    v50 = atomic_exchange((*(v49 + 16) + 128), v48);
    v51 = *(v11 + 124);
    if (v50 == 0x80000000 || v51 != 0)
    {
      v53 = v51 + 1;
      *(v11 + 124) = v53;
      if (v53 >= *(v11 + 120))
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

  IPC::StreamClientConnectionBuffer::tryAcquire(v11 + 72, &v56, v14);
  if (v58 != 1)
  {
    goto LABEL_32;
  }

  v16 = v56;
  v17 = v57;
  v61 = v57;
  if (v57 <= 1)
  {
    __break(0xC471u);
    goto LABEL_59;
  }

  *v56 = 1536;
  v18 = v16 + 1;
  v19 = v17 - 2;
  v20 = -v18 & 7 | 8;
  if (v19 < v20 || (v21 = -v18 & 7, *(v18 + v21) = v10, v19 == v20))
  {
    v59 = 0;
    v60 = 0;
  }

  else
  {
    v22 = v18 + v20;
    *v22 = a3;
    v59 = (v22 + 1);
    v60 = (v21 ^ 0xFFFFFFFFFFFFFFF7) + v19;
  }

  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::StreamConnectionEncoder,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>> const&>(&v59, v55);
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::StreamConnectionEncoder,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>> const&>(&v59, v54);
  if (v59)
  {
    v24 = v61 - v60;
    if (v61 - v60 <= 0x10)
    {
      v24 = 16;
    }

    v25 = (*(v11 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v26 = *(v11 + 72);
    if (v25 + 16 >= v26)
    {
      v25 = 0;
    }

    v27 = v25 + v24;
    if (v26 <= v27)
    {
      v27 = 0;
    }

    *(v11 + 88) = v27;
    v28 = *(v11 + 80);
    if (*(v28 + 8) > 0xFFuLL)
    {
      if (atomic_exchange((*(v28 + 16) + 128), v27) == 0x80000000 || *(v11 + 124))
      {
        if (*(v11 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v11 + 100));
        }

        *(v11 + 124) = 0;
      }

      goto LABEL_32;
    }

    goto LABEL_57;
  }

  if ((v58 & 1) == 0)
  {
LABEL_57:
    __break(1u);
LABEL_58:
    __break(0xC471u);
LABEL_59:
    JUMPOUT(0x19E26A250);
  }

  if (v57 <= 1)
  {
    __break(0xC471u);
    goto LABEL_57;
  }

  *v56 = 3197;
  v29 = (*(v11 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v30 = *(v11 + 72);
  if (v29 + 16 >= v30)
  {
    v29 = 0;
  }

  v31 = v29 + 16;
  if (v30 <= v31)
  {
    v32 = 0;
  }

  else
  {
    v32 = v31;
  }

  *(v11 + 88) = v32;
  v33 = *(v11 + 80);
  if (*(v33 + 8) <= 0xFFuLL)
  {
    goto LABEL_57;
  }

  atomic_exchange((*(v33 + 16) + 128), v32);
  *(v11 + 124) = 0;
  v34 = *(v11 + 8);
  v35 = IPC::Encoder::operator new(0x238, v23);
  *v35 = 1536;
  *(v35 + 2) = 0;
  *(v35 + 3) = 0;
  *(v35 + 1) = v12;
  *(v35 + 68) = 0;
  *(v35 + 70) = 0;
  *(v35 + 69) = 0;
  IPC::Encoder::encodeHeader(v35);
  v59 = v35;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v35, v10);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v35, a3);
  IPC::ArgumentCoder<std::optional<unsigned long long>,void>::encode<IPC::Encoder,std::optional<unsigned long long> const&>(v35, v55);
  IPC::ArgumentCoder<std::optional<unsigned long long>,void>::encode<IPC::Encoder,std::optional<unsigned long long> const&>(v35, v54);
  IPC::Connection::sendMessageImpl(v34, &v59, 1, 0);
  v37 = v59;
  v59 = 0;
  if (v37)
  {
    IPC::Encoder::~Encoder(v37, v36);
    bmalloc::api::tzoneFree(v38, v39);
  }

LABEL_32:
  if (atomic_fetch_add(v11, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v11);
    IPC::StreamClientConnection::operator delete(v11);
  }
}

void WebKit::WebGPU::RemoteRenderBundleEncoderProxy::setVertexBuffer(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v91[0] = a4;
  v91[1] = a5;
  v90[0] = a6;
  v90[1] = a7;
  if (!a3)
  {
    v11 = *(*(*(*(a1 + 48) + 64) + 72) + 80);
    atomic_fetch_add(v11, 1u);
    v35 = *(a1 + 32);
    v36 = *(v11 + 128);
    v37 = INFINITY;
    if (fabs(v36) != INFINITY)
    {
      WTF::ApproximateTime::now(a1);
      v37 = v36 + v38;
    }

    if (*(v11 + 64) != v35)
    {
      IPC::StreamClientConnectionBuffer::tryAcquire(v11 + 72, &v95, v37);
      if (v97 != 1)
      {
        goto LABEL_54;
      }

      v76 = v96;
      if (v96 <= 1)
      {
        __break(0xC471u);
        goto LABEL_103;
      }

      v77 = v95;
      *v95 = 3198;
      v78 = v77 + 2;
      if (v76 - 2 < (-v78 & 7 | 8uLL))
      {
        goto LABEL_54;
      }

      v79 = -v78 & 7;
      *&v78[v79] = v35;
      v80 = 6;
      if (v79 > 6)
      {
        v80 = v79;
      }

      v81 = v80 + 10;
      v82 = (*(v11 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v83 = *(v11 + 72);
      if (v82 + 16 >= v83)
      {
        v82 = 0;
      }

      v84 = v81 + v82;
      if (v83 <= v84)
      {
        v84 = 0;
      }

      *(v11 + 88) = v84;
      v85 = *(v11 + 80);
      if (*(v85 + 8) <= 0xFFuLL)
      {
        goto LABEL_99;
      }

      v86 = atomic_exchange((*(v85 + 16) + 128), v84);
      v87 = *(v11 + 124);
      if (v86 == 0x80000000 || v87 != 0)
      {
        v89 = v87 + 1;
        *(v11 + 124) = v89;
        if (v89 >= *(v11 + 120))
        {
          if (*(v11 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v11 + 100));
          }

          *(v11 + 124) = 0;
        }
      }

      *(v11 + 64) = v35;
    }

    IPC::StreamClientConnectionBuffer::tryAcquire(v11 + 72, &v92, v37);
    if (v94 != 1)
    {
      goto LABEL_54;
    }

    v39 = v92;
    v40 = v93;
    v97 = v93;
    if (v93 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E26A9A0);
    }

    *v92 = 1540;
    v41 = v39 + 1;
    v42 = v40 - 2;
    v43 = -v41 & 3 | 4;
    v21 = v42 >= v43;
    v44 = v42 - v43;
    if (v21)
    {
      *(v41 + (-v41 & 3)) = a2;
      v95 = (v41 + v43);
      v96 = v44;
    }

    else
    {
      v95 = 0;
      v96 = 0;
    }

    IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::StreamConnectionEncoder,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>> const&>(&v95, v91);
    IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::StreamConnectionEncoder,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>> const&>(&v95, v90);
    if (!v95)
    {
      if (v94)
      {
        if (v93 <= 1)
        {
LABEL_100:
          __break(0xC471u);
          JUMPOUT(0x19E26A9E0);
        }

        *v92 = 3197;
        v51 = (*(v11 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
        v52 = *(v11 + 72);
        if (v51 + 16 >= v52)
        {
          v51 = 0;
        }

        v53 = v51 + 16;
        if (v52 <= v53)
        {
          v54 = 0;
        }

        else
        {
          v54 = v53;
        }

        *(v11 + 88) = v54;
        v55 = *(v11 + 80);
        if (*(v55 + 8) > 0xFFuLL)
        {
          atomic_exchange((*(v55 + 16) + 128), v54);
          *(v11 + 124) = 0;
          v56 = *(v11 + 8);
          v57 = IPC::Encoder::operator new(0x238, v45);
          *v57 = 1540;
          *(v57 + 2) = 0;
          *(v57 + 3) = 0;
          *(v57 + 1) = v35;
          *(v57 + 68) = 0;
          *(v57 + 70) = 0;
          *(v57 + 69) = 0;
          IPC::Encoder::encodeHeader(v57);
          v95 = v57;
          IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v57, a2);
          IPC::ArgumentCoder<std::optional<unsigned long long>,void>::encode<IPC::Encoder,std::optional<unsigned long long> const&>(v57, v91);
          IPC::ArgumentCoder<std::optional<unsigned long long>,void>::encode<IPC::Encoder,std::optional<unsigned long long> const&>(v57, v90);
          v34 = v56;
LABEL_52:
          IPC::Connection::sendMessageImpl(v34, &v95, 1, 0);
          v59 = v95;
          v95 = 0;
          if (v59)
          {
            IPC::Encoder::~Encoder(v59, v58);
            bmalloc::api::tzoneFree(v60, v61);
          }

          goto LABEL_54;
        }
      }

      goto LABEL_99;
    }

LABEL_31:
    v46 = v97 - v96;
    if (v97 - v96 <= 0x10)
    {
      v46 = 16;
    }

    v47 = (*(v11 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v48 = *(v11 + 72);
    if (v47 + 16 >= v48)
    {
      v47 = 0;
    }

    v49 = v47 + v46;
    if (v48 <= v49)
    {
      v49 = 0;
    }

    *(v11 + 88) = v49;
    v50 = *(v11 + 80);
    if (*(v50 + 8) > 0xFFuLL)
    {
      if (atomic_exchange((*(v50 + 16) + 128), v49) == 0x80000000 || *(v11 + 124))
      {
        if (*(v11 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v11 + 100));
        }

        *(v11 + 124) = 0;
      }

      goto LABEL_54;
    }

LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  v9 = (*(**(a1 + 40) + 40))(*(a1 + 40), a3);
  v10 = v9;
  v11 = *(*(*(*(a1 + 48) + 64) + 72) + 80);
  atomic_fetch_add(v11, 1u);
  v12 = *(a1 + 32);
  v13 = *(v11 + 128);
  v14 = INFINITY;
  if (fabs(v13) != INFINITY)
  {
    WTF::ApproximateTime::now(v9);
    v14 = v13 + v15;
  }

  if (*(v11 + 64) == v12)
  {
LABEL_5:
    IPC::StreamClientConnectionBuffer::tryAcquire(v11 + 72, &v92, v14);
    if (v94 != 1)
    {
      goto LABEL_54;
    }

    v16 = v92;
    v17 = v93;
    v97 = v93;
    if (v93 > 1)
    {
      *v92 = 1539;
      v18 = v16 + 1;
      v19 = v17 - 2;
      v20 = -v18 & 3 | 4;
      v21 = v19 >= v20;
      v22 = v19 - v20;
      if (v21 && (*(v18 + (-v18 & 3)) = a2, v23 = v18 + v20, v24 = -v23 & 7 | 8, v21 = v22 >= v24, v25 = v22 - v24, v21))
      {
        *(v23 + (-v23 & 7)) = v10;
        v95 = (v23 + v24);
        v96 = v25;
      }

      else
      {
        v95 = 0;
        v96 = 0;
      }

      IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::StreamConnectionEncoder,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>> const&>(&v95, v91);
      IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::StreamConnectionEncoder,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>> const&>(&v95, v90);
      if (!v95)
      {
        if (v94)
        {
          if (v93 <= 1)
          {
            __break(0xC471u);
          }

          else
          {
            *v92 = 3197;
            v27 = (*(v11 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
            v28 = *(v11 + 72);
            if (v27 + 16 >= v28)
            {
              v27 = 0;
            }

            v29 = v27 + 16;
            if (v28 <= v29)
            {
              v30 = 0;
            }

            else
            {
              v30 = v29;
            }

            *(v11 + 88) = v30;
            v31 = *(v11 + 80);
            if (*(v31 + 8) > 0xFFuLL)
            {
              atomic_exchange((*(v31 + 16) + 128), v30);
              *(v11 + 124) = 0;
              v32 = *(v11 + 8);
              v33 = IPC::Encoder::operator new(0x238, v26);
              *v33 = 1539;
              *(v33 + 2) = 0;
              *(v33 + 3) = 0;
              *(v33 + 1) = v12;
              *(v33 + 68) = 0;
              *(v33 + 70) = 0;
              *(v33 + 69) = 0;
              IPC::Encoder::encodeHeader(v33);
              v95 = v33;
              IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v33, a2);
              IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v33, v10);
              IPC::ArgumentCoder<std::optional<unsigned long long>,void>::encode<IPC::Encoder,std::optional<unsigned long long> const&>(v33, v91);
              IPC::ArgumentCoder<std::optional<unsigned long long>,void>::encode<IPC::Encoder,std::optional<unsigned long long> const&>(v33, v90);
              v34 = v32;
              goto LABEL_52;
            }
          }
        }

        goto LABEL_99;
      }

      goto LABEL_31;
    }

    __break(0xC471u);
LABEL_103:
    JUMPOUT(0x19E26A980);
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v11 + 72, &v95, v14);
  if (v97 == 1)
  {
    v62 = v96;
    if (v96 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E26AA00);
    }

    v63 = v95;
    *v95 = 3198;
    v64 = v63 + 2;
    if (v62 - 2 >= (-v64 & 7 | 8uLL))
    {
      v65 = -v64 & 7;
      *&v64[v65] = v12;
      v66 = 6;
      if (v65 > 6)
      {
        v66 = v65;
      }

      v67 = v66 + 10;
      v68 = (*(v11 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v69 = *(v11 + 72);
      if (v68 + 16 >= v69)
      {
        v68 = 0;
      }

      v70 = v67 + v68;
      if (v69 <= v70)
      {
        v70 = 0;
      }

      *(v11 + 88) = v70;
      v71 = *(v11 + 80);
      if (*(v71 + 8) <= 0xFFuLL)
      {
        goto LABEL_99;
      }

      v72 = atomic_exchange((*(v71 + 16) + 128), v70);
      v73 = *(v11 + 124);
      if (v72 == 0x80000000 || v73 != 0)
      {
        v75 = v73 + 1;
        *(v11 + 124) = v75;
        if (v75 >= *(v11 + 120))
        {
          if (*(v11 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v11 + 100));
          }

          *(v11 + 124) = 0;
        }
      }

      *(v11 + 64) = v12;
      goto LABEL_5;
    }
  }

LABEL_54:
  if (atomic_fetch_add(v11, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v11);
    IPC::StreamClientConnection::operator delete(v11);
  }
}

void WebKit::WebGPU::RemoteRenderBundleEncoderProxy::draw(WTF::ApproximateTime *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v49 = a4;
  v50 = a3;
  v48 = a5;
  v6 = *(*(*(*(a1 + 6) + 64) + 72) + 80);
  atomic_fetch_add(v6, 1u);
  v7 = *(a1 + 4);
  v8 = *(v6 + 128);
  v9 = INFINITY;
  if (fabs(v8) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v9 = v8 + v10;
  }

  if (*(v6 + 64) != v7)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(v6 + 72, &v54, v9);
    if (v56 != 1)
    {
      goto LABEL_32;
    }

    v35 = v55;
    if (v55 <= 1)
    {
      goto LABEL_57;
    }

    v36 = v54;
    *v54 = 3198;
    v37 = v36 + 2;
    if (v35 - 2 < (-v37 & 7 | 8uLL))
    {
      goto LABEL_32;
    }

    v38 = -v37 & 7;
    *&v37[v38] = v7;
    if (v38 != 7)
    {
      v38 = 6;
    }

    v39 = (*(v6 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v41 = *(v6 + 72);
    v40 = *(v6 + 80);
    v42 = v38 + 10;
    if (v39 + 16 >= v41)
    {
      v39 = 0;
    }

    v43 = v42 + v39;
    if (v41 <= v43)
    {
      v43 = 0;
    }

    *(v6 + 88) = v43;
    if (*(v40 + 8) <= 0xFFuLL)
    {
      goto LABEL_56;
    }

    v44 = atomic_exchange((*(v40 + 16) + 128), v43);
    v45 = *(v6 + 124);
    if (v44 == 0x80000000 || v45 != 0)
    {
      v47 = v45 + 1;
      *(v6 + 124) = v47;
      if (v47 >= *(v6 + 120))
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
    goto LABEL_32;
  }

  v11 = v51;
  v12 = v52;
  v56 = v52;
  if (v52 <= 1)
  {
    __break(0xC471u);
    goto LABEL_58;
  }

  *v51 = 1527;
  v13 = v11 + 1;
  v14 = v12 - 2;
  v15 = -v13 & 3 | 4;
  v16 = v14 >= v15;
  v17 = v14 - v15;
  if (v16)
  {
    *(v13 + (-v13 & 3)) = a2;
    v54 = (v13 + v15);
    v55 = v17;
  }

  else
  {
    v54 = 0;
    v55 = 0;
  }

  IPC::ArgumentCoder<std::optional<unsigned int>,void>::encode<IPC::StreamConnectionEncoder,std::optional<unsigned int> const&>(&v54, &v50);
  IPC::ArgumentCoder<std::optional<unsigned int>,void>::encode<IPC::StreamConnectionEncoder,std::optional<unsigned int> const&>(&v54, &v49);
  IPC::ArgumentCoder<std::optional<unsigned int>,void>::encode<IPC::StreamConnectionEncoder,std::optional<unsigned int> const&>(&v54, &v48);
  if (v54)
  {
    v19 = v56 - v55;
    if (v56 - v55 <= 0x10)
    {
      v19 = 16;
    }

    v20 = (*(v6 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v21 = *(v6 + 72);
    if (v20 + 16 >= v21)
    {
      v20 = 0;
    }

    v22 = v20 + v19;
    if (v21 <= v22)
    {
      v22 = 0;
    }

    *(v6 + 88) = v22;
    v23 = *(v6 + 80);
    if (*(v23 + 8) > 0xFFuLL)
    {
      if (atomic_exchange((*(v23 + 16) + 128), v22) == 0x80000000 || *(v6 + 124))
      {
        if (*(v6 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v6 + 100));
        }

        *(v6 + 124) = 0;
      }

      goto LABEL_32;
    }

    goto LABEL_56;
  }

  if ((v53 & 1) == 0)
  {
LABEL_56:
    __break(1u);
LABEL_57:
    __break(0xC471u);
LABEL_58:
    JUMPOUT(0x19E26AE10);
  }

  if (v52 <= 1)
  {
    __break(0xC471u);
    goto LABEL_56;
  }

  *v51 = 3197;
  v24 = (*(v6 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v25 = *(v6 + 72);
  if (v24 + 16 >= v25)
  {
    v24 = 0;
  }

  v26 = v24 + 16;
  if (v25 <= v26)
  {
    v27 = 0;
  }

  else
  {
    v27 = v26;
  }

  *(v6 + 88) = v27;
  v28 = *(v6 + 80);
  if (*(v28 + 8) <= 0xFFuLL)
  {
    goto LABEL_56;
  }

  atomic_exchange((*(v28 + 16) + 128), v27);
  *(v6 + 124) = 0;
  v29 = *(v6 + 8);
  v30 = IPC::Encoder::operator new(0x238, v18);
  *v30 = 1527;
  *(v30 + 2) = 0;
  *(v30 + 3) = 0;
  *(v30 + 1) = v7;
  *(v30 + 68) = 0;
  *(v30 + 70) = 0;
  *(v30 + 69) = 0;
  IPC::Encoder::encodeHeader(v30);
  v54 = v30;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v30, a2);
  IPC::ArgumentCoder<std::optional<unsigned int>,void>::encode<IPC::Encoder,std::optional<unsigned int>>(v30, &v50);
  IPC::ArgumentCoder<std::optional<unsigned int>,void>::encode<IPC::Encoder,std::optional<unsigned int>>(v30, &v49);
  IPC::ArgumentCoder<std::optional<unsigned int>,void>::encode<IPC::Encoder,std::optional<unsigned int>>(v30, &v48);
  IPC::Connection::sendMessageImpl(v29, &v54, 1, 0);
  v32 = v54;
  v54 = 0;
  if (v32)
  {
    IPC::Encoder::~Encoder(v32, v31);
    bmalloc::api::tzoneFree(v33, v34);
  }

LABEL_32:
  if (atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v6);
    IPC::StreamClientConnection::operator delete(v6);
  }
}

void WebKit::WebGPU::RemoteRenderBundleEncoderProxy::drawIndexed(WTF::ApproximateTime *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v51 = a4;
  v52 = a3;
  v49 = a6;
  v50 = a5;
  v7 = *(*(*(*(a1 + 6) + 64) + 72) + 80);
  atomic_fetch_add(v7, 1u);
  v8 = *(a1 + 4);
  v9 = *(v7 + 128);
  v10 = INFINITY;
  if (fabs(v9) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v10 = v9 + v11;
  }

  if (*(v7 + 64) != v8)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(v7 + 72, &v56, v10);
    if (v58 != 1)
    {
      goto LABEL_32;
    }

    v36 = v57;
    if (v57 <= 1)
    {
      goto LABEL_57;
    }

    v37 = v56;
    *v56 = 3198;
    v38 = v37 + 2;
    if (v36 - 2 < (-v38 & 7 | 8uLL))
    {
      goto LABEL_32;
    }

    v39 = -v38 & 7;
    *&v38[v39] = v8;
    if (v39 != 7)
    {
      v39 = 6;
    }

    v40 = (*(v7 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v42 = *(v7 + 72);
    v41 = *(v7 + 80);
    v43 = v39 + 10;
    if (v40 + 16 >= v42)
    {
      v40 = 0;
    }

    v44 = v43 + v40;
    if (v42 <= v44)
    {
      v44 = 0;
    }

    *(v7 + 88) = v44;
    if (*(v41 + 8) <= 0xFFuLL)
    {
      goto LABEL_56;
    }

    v45 = atomic_exchange((*(v41 + 16) + 128), v44);
    v46 = *(v7 + 124);
    if (v45 == 0x80000000 || v46 != 0)
    {
      v48 = v46 + 1;
      *(v7 + 124) = v48;
      if (v48 >= *(v7 + 120))
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

  IPC::StreamClientConnectionBuffer::tryAcquire(v7 + 72, &v53, v10);
  if (v55 != 1)
  {
    goto LABEL_32;
  }

  v12 = v53;
  v13 = v54;
  v58 = v54;
  if (v54 <= 1)
  {
    __break(0xC471u);
    goto LABEL_58;
  }

  *v53 = 1528;
  v14 = v12 + 1;
  v15 = v13 - 2;
  v16 = -v14 & 3 | 4;
  v17 = v15 >= v16;
  v18 = v15 - v16;
  if (v17)
  {
    *(v14 + (-v14 & 3)) = a2;
    v56 = (v14 + v16);
    v57 = v18;
  }

  else
  {
    v56 = 0;
    v57 = 0;
  }

  IPC::ArgumentCoder<std::optional<unsigned int>,void>::encode<IPC::StreamConnectionEncoder,std::optional<unsigned int> const&>(&v56, &v52);
  IPC::ArgumentCoder<std::optional<unsigned int>,void>::encode<IPC::StreamConnectionEncoder,std::optional<unsigned int> const&>(&v56, &v51);
  IPC::ArgumentCoder<std::optional<int>,void>::encode<IPC::StreamConnectionEncoder,std::optional<int> const&>(&v56, &v50);
  IPC::ArgumentCoder<std::optional<unsigned int>,void>::encode<IPC::StreamConnectionEncoder,std::optional<unsigned int> const&>(&v56, &v49);
  if (v56)
  {
    v20 = v58 - v57;
    if (v58 - v57 <= 0x10)
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

      goto LABEL_32;
    }

    goto LABEL_56;
  }

  if ((v55 & 1) == 0)
  {
LABEL_56:
    __break(1u);
LABEL_57:
    __break(0xC471u);
LABEL_58:
    JUMPOUT(0x19E26B258);
  }

  if (v54 <= 1)
  {
    __break(0xC471u);
    goto LABEL_56;
  }

  *v53 = 3197;
  v25 = (*(v7 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v26 = *(v7 + 72);
  if (v25 + 16 >= v26)
  {
    v25 = 0;
  }

  v27 = v25 + 16;
  if (v26 <= v27)
  {
    v28 = 0;
  }

  else
  {
    v28 = v27;
  }

  *(v7 + 88) = v28;
  v29 = *(v7 + 80);
  if (*(v29 + 8) <= 0xFFuLL)
  {
    goto LABEL_56;
  }

  atomic_exchange((*(v29 + 16) + 128), v28);
  *(v7 + 124) = 0;
  v30 = *(v7 + 8);
  v31 = IPC::Encoder::operator new(0x238, v19);
  *v31 = 1528;
  *(v31 + 2) = 0;
  *(v31 + 3) = 0;
  *(v31 + 1) = v8;
  *(v31 + 68) = 0;
  *(v31 + 70) = 0;
  *(v31 + 69) = 0;
  IPC::Encoder::encodeHeader(v31);
  v56 = v31;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v31, a2);
  IPC::ArgumentCoder<std::optional<unsigned int>,void>::encode<IPC::Encoder,std::optional<unsigned int>>(v31, &v52);
  IPC::ArgumentCoder<std::optional<unsigned int>,void>::encode<IPC::Encoder,std::optional<unsigned int>>(v31, &v51);
  IPC::ArgumentCoder<std::optional<int>,void>::encode<IPC::Encoder,std::optional<int> const&>(v31, &v50);
  IPC::ArgumentCoder<std::optional<unsigned int>,void>::encode<IPC::Encoder,std::optional<unsigned int>>(v31, &v49);
  IPC::Connection::sendMessageImpl(v30, &v56, 1, 0);
  v33 = v56;
  v56 = 0;
  if (v33)
  {
    IPC::Encoder::~Encoder(v33, v32);
    bmalloc::api::tzoneFree(v34, v35);
  }

LABEL_32:
  if (atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v7);
    IPC::StreamClientConnection::operator delete(v7);
  }
}

void WebKit::WebGPU::RemoteRenderBundleEncoderProxy::drawIndirect(WebKit::WebGPU::RemoteRenderBundleEncoderProxy *this, const WebCore::WebGPU::Buffer *a2, uint64_t a3)
{
  v5 = (*(**(this + 5) + 40))(*(this + 5), a2);
  v6 = v5;
  v7 = *(*(*(*(this + 6) + 64) + 72) + 80);
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
      JUMPOUT(0x19E26B6A0);
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
      *v50 = 1530;
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
            *v44 = 1530;
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
      JUMPOUT(0x19E26B678);
    }
  }

LABEL_20:
  if (atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v7);
    IPC::StreamClientConnection::operator delete(v7);
  }
}

void WebKit::WebGPU::RemoteRenderBundleEncoderProxy::drawIndexedIndirect(WebKit::WebGPU::RemoteRenderBundleEncoderProxy *this, const WebCore::WebGPU::Buffer *a2, uint64_t a3)
{
  v5 = (*(**(this + 5) + 40))(*(this + 5), a2);
  v6 = v5;
  v7 = *(*(*(*(this + 6) + 64) + 72) + 80);
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
      JUMPOUT(0x19E26BAC8);
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
      *v50 = 1529;
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
            *v44 = 1529;
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
      JUMPOUT(0x19E26BAA0);
    }
  }

LABEL_20:
  if (atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v7);
    IPC::StreamClientConnection::operator delete(v7);
  }
}

double WebKit::WebGPU::RemoteRenderBundleEncoderProxy::setBindGroup(WTF::ApproximateTime *a1, int a2, uint64_t a3, uint64_t a4)
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
  return WebKit::WebGPU::RemoteRenderBundleEncoderProxy::send<Messages::RemoteRenderBundleEncoder::SetBindGroup>(a1, v8);
}

double WebKit::WebGPU::RemoteRenderBundleEncoderProxy::send<Messages::RemoteRenderBundleEncoder::SetBindGroup>(WTF::ApproximateTime *a1, uint64_t a2)
{
  v3 = *(*(*(*(a1 + 6) + 64) + 72) + 80);
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

      *v46 = 1535;
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
          JUMPOUT(0x19E26BF9CLL);
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
          *v28 = 1535;
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
    JUMPOUT(0x19E26BF7CLL);
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

WTF *WebKit::WebGPU::RemoteRenderBundleEncoderProxy::setBindGroup(WTF *result, void *a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, unsigned int a7)
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
  WebKit::WebGPU::RemoteRenderBundleEncoderProxy::send<Messages::RemoteRenderBundleEncoder::SetBindGroup>(v11, v19);
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

void WebKit::WebGPU::RemoteRenderBundleEncoderProxy::pushDebugGroup(WTF::ApproximateTime *a1, uint64_t *a2)
{
  v3 = *(*(*(*(a1 + 6) + 64) + 72) + 80);
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
      JUMPOUT(0x19E26C460);
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

  *v40 = 1534;
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
  *v22 = 1534;
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

void WebKit::WebGPU::RemoteRenderBundleEncoderProxy::popDebugGroup(WebKit::WebGPU::RemoteRenderBundleEncoderProxy *this)
{
  v1 = *(*(*(*(this + 6) + 64) + 72) + 80);
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
      *v23 = 1533;
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

void WebKit::WebGPU::RemoteRenderBundleEncoderProxy::insertDebugMarker(WTF::ApproximateTime *a1, uint64_t *a2)
{
  v3 = *(*(*(*(a1 + 6) + 64) + 72) + 80);
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
      JUMPOUT(0x19E26CA88);
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

  *v40 = 1532;
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
  *v22 = 1532;
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

uint64_t WebKit::WebGPU::RemoteRenderBundleEncoderProxy::finish@<X0>(void *a1@<X0>, atomic_uint **a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = a1[5];
  ++v5[2];
  v6 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
  }

  v53 = v6;
  v54 = 1;
  if (WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    __break(0xC471u);
    goto LABEL_75;
  }

  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  v8 = IdentifierInternal;
  v9 = *(*(*(a1[6] + 64) + 72) + 80);
  atomic_fetch_add(v9, 1u);
  v10 = a1[4];
  v11 = *(v9 + 128);
  v12 = INFINITY;
  if (fabs(v11) != INFINITY)
  {
    WTF::ApproximateTime::now(IdentifierInternal);
    v12 = v11 + v13;
  }

  if (*(v9 + 64) != v10)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(v9 + 72, &v58, v12);
    if (v60 != 1)
    {
      goto LABEL_40;
    }

    v25 = v59;
    if (v59 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E26D018);
    }

    v26 = v58;
    *v58 = 3198;
    v27 = v26 + 2;
    if (v25 - 2 < (-v27 & 7 | 8uLL))
    {
      goto LABEL_40;
    }

    v28 = -v27 & 7;
    *&v27[v28] = v10;
    v29 = 6;
    if (v28 > 6)
    {
      v29 = v28;
    }

    v30 = v29 + 10;
    v31 = (*(v9 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v32 = *(v9 + 72);
    if (v31 + 16 >= v32)
    {
      v31 = 0;
    }

    v33 = v30 + v31;
    if (v32 <= v33)
    {
      v33 = 0;
    }

    *(v9 + 88) = v33;
    v34 = *(v9 + 80);
    if (*(v34 + 8) <= 0xFFuLL)
    {
      goto LABEL_74;
    }

    v35 = atomic_exchange((*(v34 + 16) + 128), v33);
    v36 = *(v9 + 124);
    if (v35 == 0x80000000 || v36 != 0)
    {
      v38 = v36 + 1;
      *(v9 + 124) = v38;
      if (v38 >= *(v9 + 120))
      {
        if (*(v9 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v9 + 100));
        }

        *(v9 + 124) = 0;
      }
    }

    *(v9 + 64) = v10;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v9 + 72, &v55, v12);
  if (v57 != 1)
  {
LABEL_40:
    v24 = 0;
    goto LABEL_41;
  }

  v15 = v55;
  v16 = v56;
  v60 = v56;
  if (v56 <= 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E26CFF0);
  }

  *v55 = 1531;
  v58 = (v15 + 1);
  v59 = v16 - 2;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::StreamConnectionEncoder>(&v58, &v53);
  v17 = -v58 & 7 | 8;
  if (v59 >= v17)
  {
    *(v58 + (-v58 & 7)) = v8;
    v18 = v59 - v17;
    if (v59 >= v17)
    {
      v58 = (v58 + v17);
      v59 -= v17;
      v19 = v60 - v18;
      if (v19 <= 0x10)
      {
        v19 = 16;
      }

      v20 = (*(v9 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v21 = *(v9 + 72);
      if (v20 + 16 >= v21)
      {
        v20 = 0;
      }

      v22 = v20 + v19;
      if (v21 <= v22)
      {
        v22 = 0;
      }

      *(v9 + 88) = v22;
      v23 = *(v9 + 80);
      if (*(v23 + 8) > 0xFFuLL)
      {
        if (atomic_exchange((*(v23 + 16) + 128), v22) == 0x80000000 || *(v9 + 124))
        {
          if (*(v9 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v9 + 100));
          }

          *(v9 + 124) = 0;
        }

        v24 = 1;
        goto LABEL_41;
      }
    }

    goto LABEL_74;
  }

  v52 = v10;
  if ((v57 & 1) == 0)
  {
LABEL_74:
    __break(1u);
LABEL_75:
    JUMPOUT(0x19E26CFD0);
  }

  if (v56 <= 1)
  {
    __break(0xC471u);
    goto LABEL_74;
  }

  *v55 = 3197;
  v41 = (*(v9 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v42 = *(v9 + 72);
  if (v41 + 16 >= v42)
  {
    v41 = 0;
  }

  v43 = v41 + 16;
  if (v42 <= v43)
  {
    v44 = 0;
  }

  else
  {
    v44 = v43;
  }

  *(v9 + 88) = v44;
  v45 = *(v9 + 80);
  if (*(v45 + 8) <= 0xFFuLL)
  {
    goto LABEL_74;
  }

  atomic_exchange((*(v45 + 16) + 128), v44);
  *(v9 + 124) = 0;
  v46 = *(v9 + 8);
  v47 = IPC::Encoder::operator new(0x238, v14);
  *v47 = 1531;
  *(v47 + 2) = 0;
  *(v47 + 3) = 0;
  *(v47 + 1) = v52;
  *(v47 + 68) = 0;
  *(v47 + 70) = 0;
  *(v47 + 69) = 0;
  IPC::Encoder::encodeHeader(v47);
  v58 = v47;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v47, &v53);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v47, v8);
  v48 = IPC::Connection::sendMessageImpl(v46, &v58, 1, 0);
  v49 = v58;
  v58 = 0;
  if (v49)
  {
    IPC::Encoder::~Encoder(v49, v14);
    bmalloc::api::tzoneFree(v50, v51);
  }

  v24 = v48 == 0;
LABEL_41:
  if (atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v9);
    IPC::StreamClientConnection::operator delete(v9);
    if (v24)
    {
      goto LABEL_43;
    }

LABEL_47:
    result = 0;
    goto LABEL_48;
  }

  if (!v24)
  {
    goto LABEL_47;
  }

LABEL_43:
  v39 = a1[6];
  if (WebKit::WebGPU::RemoteRenderBundleProxy::s_heapRef)
  {
    result = bmalloc::api::tzoneAllocateNonCompact(WebKit::WebGPU::RemoteRenderBundleProxy::s_heapRef, v14);
  }

  else
  {
    result = WebKit::WebGPU::RemoteRenderBundleProxy::operatorNewSlow(0);
  }

  *(result + 16) = 1;
  *(result + 24) = 0;
  *(result + 32) = v8;
  *result = &unk_1F1126318;
  *(result + 8) = 0;
  ++v5[2];
  *(result + 40) = v5;
  ++*(v39 + 16);
  *(result + 48) = v39;
LABEL_48:
  *a3 = result;
  if (v54)
  {
    result = v53;
    v53 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v14);
      }
    }
  }

  if (v5[2] == 1)
  {
    return (*(*v5 + 8))(v5);
  }

  --v5[2];
  return result;
}

void WebKit::WebGPU::RemoteRenderBundleEncoderProxy::setLabelInternal(WebKit::WebGPU::RemoteRenderBundleEncoderProxy *this, const WTF::String *a2)
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
      JUMPOUT(0x19E26D3B0);
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

  *v40 = 1537;
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
  *v22 = 1537;
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

void WebKit::WebGPU::RemoteRenderBundleProxy::~RemoteRenderBundleProxy(WebKit::WebGPU::RemoteRenderBundleProxy *this)
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
      JUMPOUT(0x19E26D784);
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

  *v31 = 1541;
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

  *this = &unk_1F11265B8;
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
  WebKit::WebGPU::RemoteRenderBundleProxy::~RemoteRenderBundleProxy(this);

  bmalloc::api::tzoneFree(v1, v2);
}

void WebKit::WebGPU::RemoteRenderBundleProxy::setLabelInternal(WebKit::WebGPU::RemoteRenderBundleProxy *this, const WTF::String *a2)
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
      JUMPOUT(0x19E26DB48);
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

  *v40 = 1542;
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
  *v22 = 1542;
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

void WebKit::WebGPU::RemoteRenderPassEncoderProxy::~RemoteRenderPassEncoderProxy(WebKit::WebGPU::RemoteRenderPassEncoderProxy *this)
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
      JUMPOUT(0x19E26DF18);
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

  *v31 = 1544;
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

  *this = &unk_1F11265E0;
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
  WebKit::WebGPU::RemoteRenderPassEncoderProxy::~RemoteRenderPassEncoderProxy(this);

  bmalloc::api::tzoneFree(v1, v2);
}

void WebKit::WebGPU::RemoteRenderPassEncoderProxy::setPipeline(WebKit::WebGPU::RemoteRenderPassEncoderProxy *this, const WebCore::WebGPU::RenderPipeline *a2)
{
  v3 = (*(**(this + 5) + 176))(*(this + 5), a2);
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
      JUMPOUT(0x19E26E31CLL);
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
      *v45 = 1559;
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
            *v39 = 1559;
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
      JUMPOUT(0x19E26E2F4);
    }
  }

LABEL_19:
  if (atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5);
    IPC::StreamClientConnection::operator delete(v5);
  }
}

void WebKit::WebGPU::RemoteRenderPassEncoderProxy::setIndexBuffer(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v55[0] = a4;
  v55[1] = a5;
  v54[0] = a6;
  v54[1] = a7;
  v9 = (*(**(a1 + 40) + 40))(*(a1 + 40));
  v10 = v9;
  v11 = *(*(a1 + 48) + 80);
  atomic_fetch_add(v11, 1u);
  v12 = *(a1 + 32);
  v13 = *(v11 + 128);
  v14 = INFINITY;
  if (fabs(v13) != INFINITY)
  {
    WTF::ApproximateTime::now(v9);
    v14 = v13 + v15;
  }

  if (*(v11 + 64) != v12)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(v11 + 72, &v59, v14);
    if (v61 != 1)
    {
      goto LABEL_32;
    }

    v40 = v60;
    if (v60 <= 1)
    {
      goto LABEL_58;
    }

    v41 = v59;
    *v59 = 3198;
    v42 = v41 + 2;
    if (v40 - 2 < (-v42 & 7 | 8uLL))
    {
      goto LABEL_32;
    }

    v43 = -v42 & 7;
    *&v42[v43] = v12;
    v44 = 6;
    if (v43 > 6)
    {
      v44 = v43;
    }

    v45 = v44 + 10;
    v46 = (*(v11 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v47 = *(v11 + 72);
    if (v46 + 16 >= v47)
    {
      v46 = 0;
    }

    v48 = v45 + v46;
    if (v47 <= v48)
    {
      v48 = 0;
    }

    *(v11 + 88) = v48;
    v49 = *(v11 + 80);
    if (*(v49 + 8) <= 0xFFuLL)
    {
      goto LABEL_57;
    }

    v50 = atomic_exchange((*(v49 + 16) + 128), v48);
    v51 = *(v11 + 124);
    if (v50 == 0x80000000 || v51 != 0)
    {
      v53 = v51 + 1;
      *(v11 + 124) = v53;
      if (v53 >= *(v11 + 120))
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

  IPC::StreamClientConnectionBuffer::tryAcquire(v11 + 72, &v56, v14);
  if (v58 != 1)
  {
    goto LABEL_32;
  }

  v16 = v56;
  v17 = v57;
  v61 = v57;
  if (v57 <= 1)
  {
    __break(0xC471u);
    goto LABEL_59;
  }

  *v56 = 1557;
  v18 = v16 + 1;
  v19 = v17 - 2;
  v20 = -v18 & 7 | 8;
  if (v19 < v20 || (v21 = -v18 & 7, *(v18 + v21) = v10, v19 == v20))
  {
    v59 = 0;
    v60 = 0;
  }

  else
  {
    v22 = v18 + v20;
    *v22 = a3;
    v59 = (v22 + 1);
    v60 = (v21 ^ 0xFFFFFFFFFFFFFFF7) + v19;
  }

  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::StreamConnectionEncoder,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>> const&>(&v59, v55);
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::StreamConnectionEncoder,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>> const&>(&v59, v54);
  if (v59)
  {
    v24 = v61 - v60;
    if (v61 - v60 <= 0x10)
    {
      v24 = 16;
    }

    v25 = (*(v11 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v26 = *(v11 + 72);
    if (v25 + 16 >= v26)
    {
      v25 = 0;
    }

    v27 = v25 + v24;
    if (v26 <= v27)
    {
      v27 = 0;
    }

    *(v11 + 88) = v27;
    v28 = *(v11 + 80);
    if (*(v28 + 8) > 0xFFuLL)
    {
      if (atomic_exchange((*(v28 + 16) + 128), v27) == 0x80000000 || *(v11 + 124))
      {
        if (*(v11 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v11 + 100));
        }

        *(v11 + 124) = 0;
      }

      goto LABEL_32;
    }

    goto LABEL_57;
  }

  if ((v58 & 1) == 0)
  {
LABEL_57:
    __break(1u);
LABEL_58:
    __break(0xC471u);
LABEL_59:
    JUMPOUT(0x19E26E764);
  }

  if (v57 <= 1)
  {
    __break(0xC471u);
    goto LABEL_57;
  }

  *v56 = 3197;
  v29 = (*(v11 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v30 = *(v11 + 72);
  if (v29 + 16 >= v30)
  {
    v29 = 0;
  }

  v31 = v29 + 16;
  if (v30 <= v31)
  {
    v32 = 0;
  }

  else
  {
    v32 = v31;
  }

  *(v11 + 88) = v32;
  v33 = *(v11 + 80);
  if (*(v33 + 8) <= 0xFFuLL)
  {
    goto LABEL_57;
  }

  atomic_exchange((*(v33 + 16) + 128), v32);
  *(v11 + 124) = 0;
  v34 = *(v11 + 8);
  v35 = IPC::Encoder::operator new(0x238, v23);
  *v35 = 1557;
  *(v35 + 2) = 0;
  *(v35 + 3) = 0;
  *(v35 + 1) = v12;
  *(v35 + 68) = 0;
  *(v35 + 70) = 0;
  *(v35 + 69) = 0;
  IPC::Encoder::encodeHeader(v35);
  v59 = v35;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v35, v10);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v35, a3);
  IPC::ArgumentCoder<std::optional<unsigned long long>,void>::encode<IPC::Encoder,std::optional<unsigned long long> const&>(v35, v55);
  IPC::ArgumentCoder<std::optional<unsigned long long>,void>::encode<IPC::Encoder,std::optional<unsigned long long> const&>(v35, v54);
  IPC::Connection::sendMessageImpl(v34, &v59, 1, 0);
  v37 = v59;
  v59 = 0;
  if (v37)
  {
    IPC::Encoder::~Encoder(v37, v36);
    bmalloc::api::tzoneFree(v38, v39);
  }

LABEL_32:
  if (atomic_fetch_add(v11, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v11);
    IPC::StreamClientConnection::operator delete(v11);
  }
}

void WebKit::WebGPU::RemoteRenderPassEncoderProxy::setVertexBuffer(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v91[0] = a4;
  v91[1] = a5;
  v90[0] = a6;
  v90[1] = a7;
  if (!a3)
  {
    v11 = *(*(a1 + 48) + 80);
    atomic_fetch_add(v11, 1u);
    v35 = *(a1 + 32);
    v36 = *(v11 + 128);
    v37 = INFINITY;
    if (fabs(v36) != INFINITY)
    {
      WTF::ApproximateTime::now(a1);
      v37 = v36 + v38;
    }

    if (*(v11 + 64) != v35)
    {
      IPC::StreamClientConnectionBuffer::tryAcquire(v11 + 72, &v95, v37);
      if (v97 != 1)
      {
        goto LABEL_54;
      }

      v76 = v96;
      if (v96 <= 1)
      {
        __break(0xC471u);
        goto LABEL_103;
      }

      v77 = v95;
      *v95 = 3198;
      v78 = v77 + 2;
      if (v76 - 2 < (-v78 & 7 | 8uLL))
      {
        goto LABEL_54;
      }

      v79 = -v78 & 7;
      *&v78[v79] = v35;
      v80 = 6;
      if (v79 > 6)
      {
        v80 = v79;
      }

      v81 = v80 + 10;
      v82 = (*(v11 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v83 = *(v11 + 72);
      if (v82 + 16 >= v83)
      {
        v82 = 0;
      }

      v84 = v81 + v82;
      if (v83 <= v84)
      {
        v84 = 0;
      }

      *(v11 + 88) = v84;
      v85 = *(v11 + 80);
      if (*(v85 + 8) <= 0xFFuLL)
      {
        goto LABEL_99;
      }

      v86 = atomic_exchange((*(v85 + 16) + 128), v84);
      v87 = *(v11 + 124);
      if (v86 == 0x80000000 || v87 != 0)
      {
        v89 = v87 + 1;
        *(v11 + 124) = v89;
        if (v89 >= *(v11 + 120))
        {
          if (*(v11 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v11 + 100));
          }

          *(v11 + 124) = 0;
        }
      }

      *(v11 + 64) = v35;
    }

    IPC::StreamClientConnectionBuffer::tryAcquire(v11 + 72, &v92, v37);
    if (v94 != 1)
    {
      goto LABEL_54;
    }

    v39 = v92;
    v40 = v93;
    v97 = v93;
    if (v93 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E26EEA4);
    }

    *v92 = 1564;
    v41 = v39 + 1;
    v42 = v40 - 2;
    v43 = -v41 & 3 | 4;
    v21 = v42 >= v43;
    v44 = v42 - v43;
    if (v21)
    {
      *(v41 + (-v41 & 3)) = a2;
      v95 = (v41 + v43);
      v96 = v44;
    }

    else
    {
      v95 = 0;
      v96 = 0;
    }

    IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::StreamConnectionEncoder,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>> const&>(&v95, v91);
    IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::StreamConnectionEncoder,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>> const&>(&v95, v90);
    if (!v95)
    {
      if (v94)
      {
        if (v93 <= 1)
        {
LABEL_100:
          __break(0xC471u);
          JUMPOUT(0x19E26EEE4);
        }

        *v92 = 3197;
        v51 = (*(v11 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
        v52 = *(v11 + 72);
        if (v51 + 16 >= v52)
        {
          v51 = 0;
        }

        v53 = v51 + 16;
        if (v52 <= v53)
        {
          v54 = 0;
        }

        else
        {
          v54 = v53;
        }

        *(v11 + 88) = v54;
        v55 = *(v11 + 80);
        if (*(v55 + 8) > 0xFFuLL)
        {
          atomic_exchange((*(v55 + 16) + 128), v54);
          *(v11 + 124) = 0;
          v56 = *(v11 + 8);
          v57 = IPC::Encoder::operator new(0x238, v45);
          *v57 = 1564;
          *(v57 + 2) = 0;
          *(v57 + 3) = 0;
          *(v57 + 1) = v35;
          *(v57 + 68) = 0;
          *(v57 + 70) = 0;
          *(v57 + 69) = 0;
          IPC::Encoder::encodeHeader(v57);
          v95 = v57;
          IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v57, a2);
          IPC::ArgumentCoder<std::optional<unsigned long long>,void>::encode<IPC::Encoder,std::optional<unsigned long long> const&>(v57, v91);
          IPC::ArgumentCoder<std::optional<unsigned long long>,void>::encode<IPC::Encoder,std::optional<unsigned long long> const&>(v57, v90);
          v34 = v56;
LABEL_52:
          IPC::Connection::sendMessageImpl(v34, &v95, 1, 0);
          v59 = v95;
          v95 = 0;
          if (v59)
          {
            IPC::Encoder::~Encoder(v59, v58);
            bmalloc::api::tzoneFree(v60, v61);
          }

          goto LABEL_54;
        }
      }

      goto LABEL_99;
    }

LABEL_31:
    v46 = v97 - v96;
    if (v97 - v96 <= 0x10)
    {
      v46 = 16;
    }

    v47 = (*(v11 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v48 = *(v11 + 72);
    if (v47 + 16 >= v48)
    {
      v47 = 0;
    }

    v49 = v47 + v46;
    if (v48 <= v49)
    {
      v49 = 0;
    }

    *(v11 + 88) = v49;
    v50 = *(v11 + 80);
    if (*(v50 + 8) > 0xFFuLL)
    {
      if (atomic_exchange((*(v50 + 16) + 128), v49) == 0x80000000 || *(v11 + 124))
      {
        if (*(v11 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v11 + 100));
        }

        *(v11 + 124) = 0;
      }

      goto LABEL_54;
    }

LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  v9 = (*(**(a1 + 40) + 40))(*(a1 + 40), a3);
  v10 = v9;
  v11 = *(*(a1 + 48) + 80);
  atomic_fetch_add(v11, 1u);
  v12 = *(a1 + 32);
  v13 = *(v11 + 128);
  v14 = INFINITY;
  if (fabs(v13) != INFINITY)
  {
    WTF::ApproximateTime::now(v9);
    v14 = v13 + v15;
  }

  if (*(v11 + 64) == v12)
  {
LABEL_5:
    IPC::StreamClientConnectionBuffer::tryAcquire(v11 + 72, &v92, v14);
    if (v94 != 1)
    {
      goto LABEL_54;
    }

    v16 = v92;
    v17 = v93;
    v97 = v93;
    if (v93 > 1)
    {
      *v92 = 1562;
      v18 = v16 + 1;
      v19 = v17 - 2;
      v20 = -v18 & 3 | 4;
      v21 = v19 >= v20;
      v22 = v19 - v20;
      if (v21 && (*(v18 + (-v18 & 3)) = a2, v23 = v18 + v20, v24 = -v23 & 7 | 8, v21 = v22 >= v24, v25 = v22 - v24, v21))
      {
        *(v23 + (-v23 & 7)) = v10;
        v95 = (v23 + v24);
        v96 = v25;
      }

      else
      {
        v95 = 0;
        v96 = 0;
      }

      IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::StreamConnectionEncoder,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>> const&>(&v95, v91);
      IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::StreamConnectionEncoder,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>> const&>(&v95, v90);
      if (!v95)
      {
        if (v94)
        {
          if (v93 <= 1)
          {
            __break(0xC471u);
          }

          else
          {
            *v92 = 3197;
            v27 = (*(v11 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
            v28 = *(v11 + 72);
            if (v27 + 16 >= v28)
            {
              v27 = 0;
            }

            v29 = v27 + 16;
            if (v28 <= v29)
            {
              v30 = 0;
            }

            else
            {
              v30 = v29;
            }

            *(v11 + 88) = v30;
            v31 = *(v11 + 80);
            if (*(v31 + 8) > 0xFFuLL)
            {
              atomic_exchange((*(v31 + 16) + 128), v30);
              *(v11 + 124) = 0;
              v32 = *(v11 + 8);
              v33 = IPC::Encoder::operator new(0x238, v26);
              *v33 = 1562;
              *(v33 + 2) = 0;
              *(v33 + 3) = 0;
              *(v33 + 1) = v12;
              *(v33 + 68) = 0;
              *(v33 + 70) = 0;
              *(v33 + 69) = 0;
              IPC::Encoder::encodeHeader(v33);
              v95 = v33;
              IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v33, a2);
              IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v33, v10);
              IPC::ArgumentCoder<std::optional<unsigned long long>,void>::encode<IPC::Encoder,std::optional<unsigned long long> const&>(v33, v91);
              IPC::ArgumentCoder<std::optional<unsigned long long>,void>::encode<IPC::Encoder,std::optional<unsigned long long> const&>(v33, v90);
              v34 = v32;
              goto LABEL_52;
            }
          }
        }

        goto LABEL_99;
      }

      goto LABEL_31;
    }

    __break(0xC471u);
LABEL_103:
    JUMPOUT(0x19E26EE84);
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v11 + 72, &v95, v14);
  if (v97 == 1)
  {
    v62 = v96;
    if (v96 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E26EF04);
    }

    v63 = v95;
    *v95 = 3198;
    v64 = v63 + 2;
    if (v62 - 2 >= (-v64 & 7 | 8uLL))
    {
      v65 = -v64 & 7;
      *&v64[v65] = v12;
      v66 = 6;
      if (v65 > 6)
      {
        v66 = v65;
      }

      v67 = v66 + 10;
      v68 = (*(v11 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v69 = *(v11 + 72);
      if (v68 + 16 >= v69)
      {
        v68 = 0;
      }

      v70 = v67 + v68;
      if (v69 <= v70)
      {
        v70 = 0;
      }

      *(v11 + 88) = v70;
      v71 = *(v11 + 80);
      if (*(v71 + 8) <= 0xFFuLL)
      {
        goto LABEL_99;
      }

      v72 = atomic_exchange((*(v71 + 16) + 128), v70);
      v73 = *(v11 + 124);
      if (v72 == 0x80000000 || v73 != 0)
      {
        v75 = v73 + 1;
        *(v11 + 124) = v75;
        if (v75 >= *(v11 + 120))
        {
          if (*(v11 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v11 + 100));
          }

          *(v11 + 124) = 0;
        }
      }

      *(v11 + 64) = v12;
      goto LABEL_5;
    }
  }

LABEL_54:
  if (atomic_fetch_add(v11, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v11);
    IPC::StreamClientConnection::operator delete(v11);
  }
}

void WebKit::WebGPU::RemoteRenderPassEncoderProxy::draw(WTF::ApproximateTime *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v49 = a4;
  v50 = a3;
  v48 = a5;
  v6 = *(*(a1 + 6) + 80);
  atomic_fetch_add(v6, 1u);
  v7 = *(a1 + 4);
  v8 = *(v6 + 128);
  v9 = INFINITY;
  if (fabs(v8) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v9 = v8 + v10;
  }

  if (*(v6 + 64) != v7)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(v6 + 72, &v54, v9);
    if (v56 != 1)
    {
      goto LABEL_32;
    }

    v35 = v55;
    if (v55 <= 1)
    {
      goto LABEL_57;
    }

    v36 = v54;
    *v54 = 3198;
    v37 = v36 + 2;
    if (v35 - 2 < (-v37 & 7 | 8uLL))
    {
      goto LABEL_32;
    }

    v38 = -v37 & 7;
    *&v37[v38] = v7;
    if (v38 != 7)
    {
      v38 = 6;
    }

    v39 = (*(v6 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v41 = *(v6 + 72);
    v40 = *(v6 + 80);
    v42 = v38 + 10;
    if (v39 + 16 >= v41)
    {
      v39 = 0;
    }

    v43 = v42 + v39;
    if (v41 <= v43)
    {
      v43 = 0;
    }

    *(v6 + 88) = v43;
    if (*(v40 + 8) <= 0xFFuLL)
    {
      goto LABEL_56;
    }

    v44 = atomic_exchange((*(v40 + 16) + 128), v43);
    v45 = *(v6 + 124);
    if (v44 == 0x80000000 || v45 != 0)
    {
      v47 = v45 + 1;
      *(v6 + 124) = v47;
      if (v47 >= *(v6 + 120))
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
    goto LABEL_32;
  }

  v11 = v51;
  v12 = v52;
  v56 = v52;
  if (v52 <= 1)
  {
    __break(0xC471u);
    goto LABEL_58;
  }

  *v51 = 1545;
  v13 = v11 + 1;
  v14 = v12 - 2;
  v15 = -v13 & 3 | 4;
  v16 = v14 >= v15;
  v17 = v14 - v15;
  if (v16)
  {
    *(v13 + (-v13 & 3)) = a2;
    v54 = (v13 + v15);
    v55 = v17;
  }

  else
  {
    v54 = 0;
    v55 = 0;
  }

  IPC::ArgumentCoder<std::optional<unsigned int>,void>::encode<IPC::StreamConnectionEncoder,std::optional<unsigned int> const&>(&v54, &v50);
  IPC::ArgumentCoder<std::optional<unsigned int>,void>::encode<IPC::StreamConnectionEncoder,std::optional<unsigned int> const&>(&v54, &v49);
  IPC::ArgumentCoder<std::optional<unsigned int>,void>::encode<IPC::StreamConnectionEncoder,std::optional<unsigned int> const&>(&v54, &v48);
  if (v54)
  {
    v19 = v56 - v55;
    if (v56 - v55 <= 0x10)
    {
      v19 = 16;
    }

    v20 = (*(v6 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v21 = *(v6 + 72);
    if (v20 + 16 >= v21)
    {
      v20 = 0;
    }

    v22 = v20 + v19;
    if (v21 <= v22)
    {
      v22 = 0;
    }

    *(v6 + 88) = v22;
    v23 = *(v6 + 80);
    if (*(v23 + 8) > 0xFFuLL)
    {
      if (atomic_exchange((*(v23 + 16) + 128), v22) == 0x80000000 || *(v6 + 124))
      {
        if (*(v6 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v6 + 100));
        }

        *(v6 + 124) = 0;
      }

      goto LABEL_32;
    }

    goto LABEL_56;
  }

  if ((v53 & 1) == 0)
  {
LABEL_56:
    __break(1u);
LABEL_57:
    __break(0xC471u);
LABEL_58:
    JUMPOUT(0x19E26F30CLL);
  }

  if (v52 <= 1)
  {
    __break(0xC471u);
    goto LABEL_56;
  }

  *v51 = 3197;
  v24 = (*(v6 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v25 = *(v6 + 72);
  if (v24 + 16 >= v25)
  {
    v24 = 0;
  }

  v26 = v24 + 16;
  if (v25 <= v26)
  {
    v27 = 0;
  }

  else
  {
    v27 = v26;
  }

  *(v6 + 88) = v27;
  v28 = *(v6 + 80);
  if (*(v28 + 8) <= 0xFFuLL)
  {
    goto LABEL_56;
  }

  atomic_exchange((*(v28 + 16) + 128), v27);
  *(v6 + 124) = 0;
  v29 = *(v6 + 8);
  v30 = IPC::Encoder::operator new(0x238, v18);
  *v30 = 1545;
  *(v30 + 2) = 0;
  *(v30 + 3) = 0;
  *(v30 + 1) = v7;
  *(v30 + 68) = 0;
  *(v30 + 70) = 0;
  *(v30 + 69) = 0;
  IPC::Encoder::encodeHeader(v30);
  v54 = v30;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v30, a2);
  IPC::ArgumentCoder<std::optional<unsigned int>,void>::encode<IPC::Encoder,std::optional<unsigned int>>(v30, &v50);
  IPC::ArgumentCoder<std::optional<unsigned int>,void>::encode<IPC::Encoder,std::optional<unsigned int>>(v30, &v49);
  IPC::ArgumentCoder<std::optional<unsigned int>,void>::encode<IPC::Encoder,std::optional<unsigned int>>(v30, &v48);
  IPC::Connection::sendMessageImpl(v29, &v54, 1, 0);
  v32 = v54;
  v54 = 0;
  if (v32)
  {
    IPC::Encoder::~Encoder(v32, v31);
    bmalloc::api::tzoneFree(v33, v34);
  }

LABEL_32:
  if (atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v6);
    IPC::StreamClientConnection::operator delete(v6);
  }
}