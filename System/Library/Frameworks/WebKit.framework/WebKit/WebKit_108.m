uint64_t WebKit::RemoteRenderPassEncoder::setViewport(WebKit::RemoteRenderPassEncoder *this, float a2, float a3, float a4, float a5, float a6, float a7)
{
  v7 = *(this + 2);
  ++v7[4];
  result = (*(*v7 + 112))(v7, a2, a3, a4, a5, a6, a7);
  if (v7[4] == 1)
  {
    v9 = *(*v7 + 8);

    return v9(v7);
  }

  else
  {
    --v7[4];
  }

  return result;
}

uint64_t WebKit::RemoteRenderPassEncoder::setScissorRect(WebKit::RemoteRenderPassEncoder *this)
{
  v1 = *(this + 2);
  ++v1[4];
  result = (*(*v1 + 120))(v1);
  if (v1[4] == 1)
  {
    v3 = *(*v1 + 8);

    return v3(v1);
  }

  else
  {
    --v1[4];
  }

  return result;
}

uint64_t WebKit::RemoteRenderPassEncoder::setBlendConstant(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 24) + 8);
  if (v3)
  {
    v4 = v3 + 4;
    ++v3[4];
    WebKit::WebGPU::ConvertToBackingContext::convertToBacking(v3, a2, v14);
    result = WTF::RefCounted<WebKit::WebGPU::ObjectHeap>::deref(v4, v5);
    if (v17 == 1)
    {
      v8 = *(a1 + 16);
      ++v8[4];
      LOBYTE(v11[0]) = 0;
      v13 = -1;
      v9 = v16;
      if (v16 != 255)
      {
        if (v16)
        {
          *v11 = *v14;
          v12 = v15;
        }

        else
        {
          WTF::Vector<double,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v11, v14);
          v9 = v16;
        }

        v13 = v9;
      }

      result = (*(*v8 + 128))(v8, v11);
      if (!v13)
      {
        result = v11[0];
        if (v11[0])
        {
          v11[0] = 0;
          LODWORD(v11[1]) = 0;
          result = WTF::fastFree(result, v7);
        }
      }

      v13 = -1;
      if (v8[4] == 1)
      {
        result = (*(*v8 + 8))(v8);
      }

      else
      {
        --v8[4];
      }
    }

    if (v17 == 1 && v16 == 0)
    {
      result = v14[0];
      if (v14[0])
      {
        v14[0] = 0;
        LODWORD(v14[1]) = 0;
        return WTF::fastFree(result, v7);
      }
    }
  }

  else
  {
    result = 103;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::RemoteRenderPassEncoder::setStencilReference(WebKit::RemoteRenderPassEncoder *this)
{
  v1 = *(this + 2);
  ++v1[4];
  result = (*(*v1 + 136))(v1);
  if (v1[4] == 1)
  {
    v3 = *(*v1 + 8);

    return v3(v1);
  }

  else
  {
    --v1[4];
  }

  return result;
}

uint64_t WebKit::RemoteRenderPassEncoder::beginOcclusionQuery(WebKit::RemoteRenderPassEncoder *this)
{
  v1 = *(this + 2);
  ++v1[4];
  result = (*(*v1 + 144))(v1);
  if (v1[4] == 1)
  {
    v3 = *(*v1 + 8);

    return v3(v1);
  }

  else
  {
    --v1[4];
  }

  return result;
}

uint64_t WebKit::RemoteRenderPassEncoder::endOcclusionQuery(WebKit::RemoteRenderPassEncoder *this)
{
  v1 = *(this + 2);
  ++v1[4];
  result = (*(*v1 + 152))(v1);
  if (v1[4] == 1)
  {
    v3 = *(*v1 + 8);

    return v3(v1);
  }

  else
  {
    --v1[4];
  }

  return result;
}

_DWORD *WebKit::RemoteRenderPassEncoder::executeBundles(uint64_t a1, uint64_t a2)
{
  v26 = 0;
  v27 = 0;
  v3 = *(a2 + 12);
  if (!v3)
  {
    goto LABEL_23;
  }

  if (v3 >> 29)
  {
    __break(0xC471u);
LABEL_42:
    JUMPOUT(0x19DB80D8CLL);
  }

  LODWORD(v27) = *(a2 + 12);
  v26 = WTF::fastMalloc((8 * v3));
  v5 = *(a2 + 12);
  if (!v5)
  {
LABEL_23:
    v22 = *(a1 + 16);
    ++v22[4];
    result = (*(*v22 + 160))(v22, &v26);
    if (v22[4] == 1)
    {
      result = (*(*v22 + 8))(v22);
    }

    else
    {
      --v22[4];
    }

    goto LABEL_25;
  }

  v6 = *a2;
  v7 = 8 * v5;
  while (1)
  {
    v8 = *(*(a1 + 24) + 8);
    if (!v8)
    {
      __break(0xC471u);
      goto LABEL_42;
    }

    v9 = *v6;
    v10 = (v8 + 16);
    ++*(v8 + 16);
    WebKit::WebGPU::ObjectHeap::convertRenderBundleFromBacking(v8, v9, &v25);
    result = WTF::RefCounted<WebKit::WebGPU::ObjectHeap>::deref(v10, v11);
    v14 = v25;
    if (!v25)
    {
      goto LABEL_25;
    }

    v15 = *(v25 + 1);
    if (!v15)
    {
      break;
    }

    v16 = HIDWORD(v27);
    if (HIDWORD(v27) == v27)
    {
      v17 = HIDWORD(v27) + (HIDWORD(v27) >> 1);
      if (v17 <= HIDWORD(v27) + 1)
      {
        v17 = HIDWORD(v27) + 1;
      }

      if (v17 >> 29)
      {
        __break(0xC471u);
        JUMPOUT(0x19DB80D94);
      }

      v18 = v26;
      if (v17 <= 0x10)
      {
        v19 = 16;
      }

      else
      {
        v19 = v17;
      }

      v20 = WTF::fastMalloc((8 * v19));
      LODWORD(v27) = v19;
      v26 = v20;
      memcpy(v20, v18, 8 * v16);
      if (v18)
      {
        if (v20 == v18)
        {
          v20 = 0;
          v26 = 0;
          LODWORD(v27) = 0;
        }

        WTF::fastFree(v18, v13);
      }
    }

    else
    {
      v20 = v26;
    }

    v21 = *(v15 + 16) + 1;
    *(v20 + v16) = v15;
    *(v15 + 16) = v21;
    HIDWORD(v27) = v16 + 1;
    v25 = 0;
    if (atomic_fetch_add(v14, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v14);
      WTF::fastFree(v14, v13);
    }

    ++v6;
    v7 -= 8;
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  v25 = 0;
  if (atomic_fetch_add(v14, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v14);
    result = WTF::fastFree(v14, v13);
  }

LABEL_25:
  v23 = v26;
  if (HIDWORD(v27))
  {
    v24 = 8 * HIDWORD(v27);
    do
    {
      result = *v23;
      *v23 = 0;
      if (result)
      {
        if (result[4] == 1)
        {
          result = (*(*result + 8))(result);
        }

        else
        {
          --result[4];
        }
      }

      v23 = (v23 + 8);
      v24 -= 8;
    }

    while (v24);
    v23 = v26;
  }

  if (v23)
  {
    v26 = 0;
    LODWORD(v27) = 0;
    return WTF::fastFree(v23, v13);
  }

  return result;
}

uint64_t WebKit::RemoteRenderPassEncoder::end(WebKit::RemoteRenderPassEncoder *this)
{
  v1 = *(this + 2);
  ++v1[4];
  result = (*(*v1 + 168))(v1);
  if (v1[4] == 1)
  {
    v3 = *(*v1 + 8);

    return v3(v1);
  }

  else
  {
    --v1[4];
  }

  return result;
}

uint64_t WebKit::RemoteRenderPassEncoder::setLabel(uint64_t a1, WTF::StringImpl *a2)
{
  v2 = *(a1 + 16);
  ++*(v2 + 16);
  result = WebCore::WebGPU::RenderPassEncoder::setLabel(v2, a2);
  if (*(v2 + 16) == 1)
  {
    v4 = *(*v2 + 8);

    return v4(v2);
  }

  else
  {
    --*(v2 + 16);
  }

  return result;
}

uint64_t WebCore::WebGPU::RenderPassEncoder::setLabel(void *a1, WTF::StringImpl *a2)
{
  v3 = *a2;
  *a2 = 0;
  v5 = a1 + 3;
  v4 = a1[3];
  *v5 = v3;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v6 = *(*a1 + 176);

  return v6(a1, v5);
}

uint64_t WebKit::RemoteRenderPipeline::RemoteRenderPipeline(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  *(a1 + 8) = 1;
  *a1 = &unk_1F10FBAE8;
  ++*(a2 + 16);
  *(a1 + 16) = a2;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a3 + 8), a3);
  v11 = *(a3 + 8);
  atomic_fetch_add(v11, 1u);
  *(a1 + 24) = v11;
  v12 = *a4;
  *a4 = 0;
  *(a1 + 32) = v12;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a5 + 16), a5);
  v13 = *(a5 + 16);
  atomic_fetch_add(v13, 1u);
  *(a1 + 40) = v13;
  *(a1 + 48) = a6;
  v14 = *(a1 + 32);
  atomic_fetch_add(v14 + 2, 1u);
  IPC::StreamServerConnection::startReceivingMessages(v14, a1, 0x73u, *(a1 + 48));
  if (v14 && atomic_fetch_add(v14 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v14 + 2);
    (*(*v14 + 8))(v14);
  }

  return a1;
}

void WebKit::RemoteRenderPipeline::~RemoteRenderPipeline(WebKit::RemoteRenderPipeline *this, void *a2)
{
  v3 = *(this + 5);
  *(this + 5) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  v4 = *(this + 4);
  *(this + 4) = 0;
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 2);
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 3);
  *(this + 3) = 0;
  if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5);
    WTF::fastFree(v5, a2);
  }

  v6 = *(this + 2);
  *(this + 2) = 0;
  if (v6)
  {
    if (v6[4] == 1)
    {
      (*(*v6 + 8))(v6);
    }

    else
    {
      --v6[4];
    }
  }
}

{
  WebKit::RemoteRenderPipeline::~RemoteRenderPipeline(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

void *WebKit::RemoteRenderPipeline::stopListeningForIPC(WebKit::RemoteRenderPipeline *this)
{
  v1 = *(this + 4);
  atomic_fetch_add(v1 + 2, 1u);
  result = IPC::StreamServerConnection::stopReceivingMessages(v1, 0x73u, *(this + 6));
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v1 + 2);
    v3 = *(*v1 + 8);

    return v3(v1);
  }

  return result;
}

_DWORD *WebKit::RemoteRenderPipeline::getBindGroupLayout(void *a1, uint64_t a2, void *a3)
{
  v5 = a1[2];
  ++v5[4];
  (*(*v5 + 16))(&v16, v5);
  if (v5[4] == 1)
  {
    (*(*v5 + 8))(v5);
  }

  else
  {
    --v5[4];
  }

  v7 = *(a1[3] + 8);
  if (!v7 || (++*(v7 + 16), v8 = v16, v9 = a1[4], atomic_fetch_add((v9 + 8), 1u), v15 = v9, (v10 = *(a1[5] + 8)) == 0))
  {
    __break(0xC471u);
    JUMPOUT(0x19DB814B4);
  }

  atomic_fetch_add(v10 + 2, 1u);
  v11 = WebKit::RemoteBindGroupLayout::operator new(0x38, v6);
  WebKit::RemoteBindGroupLayout::RemoteBindGroupLayout(v11, v8, v7, &v15, v10, a3);
  if (atomic_fetch_add(v10 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v10 + 2);
    (*(*v10 + 8))(v10);
  }

  v12 = v15;
  v15 = 0;
  if (v12 && atomic_fetch_add(v12 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v12 + 2);
    (*(*v12 + 8))(v12);
  }

  WebKit::WebGPU::ObjectHeap::addObject(v7, a3, v11);
  if (atomic_fetch_add((v11 + 8), 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, (v11 + 8));
    (*(*v11 + 8))(v11);
  }

  WTF::RefCounted<WebKit::WebGPU::ObjectHeap>::deref((v7 + 16), v13);
  result = v16;
  v16 = 0;
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

uint64_t WebKit::RemoteRenderPipeline::setLabel(uint64_t a1, WTF::StringImpl *a2)
{
  v2 = *(a1 + 16);
  ++*(v2 + 16);
  result = WebCore::WebGPU::RenderPipeline::setLabel(v2, a2);
  if (*(v2 + 16) == 1)
  {
    v4 = *(*v2 + 8);

    return v4(v2);
  }

  else
  {
    --*(v2 + 16);
  }

  return result;
}

uint64_t WebCore::WebGPU::RenderPipeline::setLabel(void *a1, WTF::StringImpl *a2)
{
  v3 = *a2;
  *a2 = 0;
  v5 = a1 + 3;
  v4 = a1[3];
  *v5 = v3;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v6 = *(*a1 + 24);

  return v6(a1, v5);
}

uint64_t WebKit::RemoteSampler::RemoteSampler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  *(a1 + 8) = 1;
  *a1 = &unk_1F10FBB10;
  ++*(a2 + 16);
  *(a1 + 16) = a2;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a3 + 8), a3);
  v11 = *(a3 + 8);
  atomic_fetch_add(v11, 1u);
  *(a1 + 24) = v11;
  v12 = *a4;
  *a4 = 0;
  *(a1 + 32) = v12;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a5 + 16), a5);
  v13 = *(a5 + 16);
  atomic_fetch_add(v13, 1u);
  *(a1 + 40) = v13;
  *(a1 + 48) = a6;
  v14 = *(a1 + 32);
  atomic_fetch_add(v14 + 2, 1u);
  IPC::StreamServerConnection::startReceivingMessages(v14, a1, 0x78u, *(a1 + 48));
  if (v14 && atomic_fetch_add(v14 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v14 + 2);
    (*(*v14 + 8))(v14);
  }

  return a1;
}

void WebKit::RemoteSampler::~RemoteSampler(WebKit::RemoteSampler *this, void *a2)
{
  v3 = *(this + 5);
  *(this + 5) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  v4 = *(this + 4);
  *(this + 4) = 0;
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 2);
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 3);
  *(this + 3) = 0;
  if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5);
    WTF::fastFree(v5, a2);
  }

  v6 = *(this + 2);
  *(this + 2) = 0;
  if (v6)
  {
    if (v6[4] == 1)
    {
      (*(*v6 + 8))(v6);
    }

    else
    {
      --v6[4];
    }
  }
}

{
  WebKit::RemoteSampler::~RemoteSampler(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

void *WebKit::RemoteSampler::stopListeningForIPC(WebKit::RemoteSampler *this)
{
  v1 = *(this + 4);
  atomic_fetch_add(v1 + 2, 1u);
  result = IPC::StreamServerConnection::stopReceivingMessages(v1, 0x78u, *(this + 6));
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v1 + 2);
    v3 = *(*v1 + 8);

    return v3(v1);
  }

  return result;
}

uint64_t WebKit::RemoteSampler::setLabel(uint64_t a1, WTF::StringImpl *a2)
{
  v2 = *(a1 + 16);
  ++*(v2 + 16);
  result = WebCore::WebGPU::Sampler::setLabel(v2, a2);
  if (*(v2 + 16) == 1)
  {
    v4 = *(*v2 + 8);

    return v4(v2);
  }

  else
  {
    --*(v2 + 16);
  }

  return result;
}

uint64_t WebCore::WebGPU::Sampler::setLabel(void *a1, WTF::StringImpl *a2)
{
  v3 = *a2;
  *a2 = 0;
  v5 = a1 + 3;
  v4 = a1[3];
  *v5 = v3;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v6 = *(*a1 + 16);

  return v6(a1, v5);
}

uint64_t WTF::Vector<double,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(a2 + 12);
  *result = 0;
  *(result + 8) = 0;
  *(result + 12) = v3;
  if (!v3)
  {
    return v2;
  }

  if (!(v3 >> 29))
  {
    v5 = WTF::fastMalloc((8 * v3));
    *(v2 + 8) = v3;
    *v2 = v5;
    v6 = *(a2 + 12);
    if (v6)
    {
      v7 = *a2;
      v8 = 8 * v6;
      do
      {
        v9 = *v7++;
        *v5++ = v9;
        v8 -= 8;
      }

      while (v8);
    }

    return v2;
  }

  __break(0xC471u);
  return result;
}

uint64_t WTF::Vector<WTF::Ref<WebCore::WebGPU::CommandBuffer,WTF::RawPtrTraits<WebCore::WebGPU::CommandBuffer>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::CommandBuffer>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorDestructor<true,WTF::Ref<WebCore::WebGPU::CommandBuffer,WTF::RawPtrTraits<WebCore::WebGPU::CommandBuffer>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::CommandBuffer>>>::destruct(*a1, (*a1 + 8 * v3));
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

_DWORD *WTF::VectorDestructor<true,WTF::Ref<WebCore::WebGPU::CommandBuffer,WTF::RawPtrTraits<WebCore::WebGPU::CommandBuffer>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::CommandBuffer>>>::destruct(_DWORD *result, _DWORD **a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      result = *v3;
      *v3 = 0;
      if (result)
      {
        if (result[4] == 1)
        {
          result = (*(*result + 8))(result);
        }

        else
        {
          --result[4];
        }
      }

      ++v3;
    }

    while (v3 != a2);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::RemoteQueue::onSubmittedWorkDone(WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F10FBB38;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteQueue::onSubmittedWorkDone(WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10FBB38;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteQueue::onSubmittedWorkDone(WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void sub_19DB821DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB82330(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v11)
  {
  }

  if (v10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB82424(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB824F4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB825C4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB826D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Block_release(0);
  _Unwind_Resume(a1);
}

void sub_19DB82824(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB82A60(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (v16)
  {
    if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void API::TargetedElementRequest::~TargetedElementRequest(API::TargetedElementRequest *this, WTF::StringImpl *a2)
{
  if (*(this + 32) > 1u)
  {
    if (*(this + 32) == 2)
    {
      WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 16, a2);
    }
  }

  else if (*(this + 32))
  {
    v3 = *(this + 2);
    *(this + 2) = 0;
    if (v3)
    {
      if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v3, a2);
      }
    }
  }

  *(this + 32) = -1;
}

{
  if (*(this + 32) > 1u)
  {
    if (*(this + 32) == 2)
    {
      WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 16, a2);
    }
  }

  else if (*(this + 32))
  {
    v3 = *(this + 2);
    *(this + 2) = 0;
    if (v3)
    {
      if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v3, a2);
      }
    }
  }

  *(this + 32) = -1;

  JUMPOUT(0x19EB14CF0);
}

uint64_t WTF::dynamic_objc_cast<_WKTextInputContext>(uint64_t result)
{
  if (result)
  {
    v1 = result;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      return v1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_19DB837F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19DB839AC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebCore::ElementContext::isSameElement(WebCore::ElementContext *this, const ElementContext *a2)
{
  v2 = *(this + 2);
  v3 = v2 != 0;
  m_identifier = a2->webPageIdentifier.m_value.m_identifier;
  v5 = m_identifier != 0;
  v6 = v2 == m_identifier;
  if (!v3 || !v5)
  {
    v6 = v3 ^ v5 ^ 1;
  }

  if (v6 != 1)
  {
    return 0;
  }

  v8 = *(this + 4);
  v7 = *(this + 5);
  v10 = *&a2->documentIdentifier.m_value.m_object[8];
  v9 = a2->documentIdentifier.m_processIdentifier.m_identifier;
  v11 = v10 | v9;
  if (*(this + 2) == 0 || v11 == 0)
  {
    if (((v8 | v7) != 0) == (v11 != 0))
    {
LABEL_17:
      v13 = *(this + 8);
      v15 = v13 != 0;
      v16 = a2[1].webPageIdentifier.m_value.m_identifier;
      v17 = v16 != 0;
      LODWORD(v13) = v13 == v16;
      if (v15 && v17)
      {
        return v13;
      }

      else
      {
        return v15 ^ v17 ^ 1u;
      }
    }

    return 0;
  }

  v13 = 0;
  v14 = v7 == v9 && v8 == v10;
  if (v14 && *(this + 6) == *&a2[1].boundingRect.m_location)
  {
    goto LABEL_17;
  }

  return v13;
}

void sub_19DB83CD8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB83E60(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, CFTypeRef cf, WTF *a10)
{
  if (cf)
  {
    CFRelease(cf);
  }

  if (a10)
  {
    WTF::ThreadSafeRefCounted<WebCore::ShareableBitmap,(WTF::DestructionThread)0>::deref(a10, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::RemoteShaderModule::RemoteShaderModule(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  *(a1 + 8) = 1;
  *a1 = &unk_1F10FBBD8;
  ++*(a2 + 16);
  *(a1 + 16) = a2;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a3 + 8), a3);
  v11 = *(a3 + 8);
  atomic_fetch_add(v11, 1u);
  *(a1 + 24) = v11;
  v12 = *a4;
  *a4 = 0;
  *(a1 + 32) = v12;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a5 + 16), a5);
  v13 = *(a5 + 16);
  atomic_fetch_add(v13, 1u);
  *(a1 + 40) = v13;
  *(a1 + 48) = a6;
  v14 = *(a1 + 32);
  atomic_fetch_add(v14 + 2, 1u);
  IPC::StreamServerConnection::startReceivingMessages(v14, a1, 0x7Au, *(a1 + 48));
  if (v14 && atomic_fetch_add(v14 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v14 + 2);
    (*(*v14 + 8))(v14);
  }

  return a1;
}

void WebKit::RemoteShaderModule::~RemoteShaderModule(WebKit::RemoteShaderModule *this, void *a2)
{
  v3 = *(this + 5);
  *(this + 5) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  v4 = *(this + 4);
  *(this + 4) = 0;
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 2);
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 3);
  *(this + 3) = 0;
  if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5);
    WTF::fastFree(v5, a2);
  }

  v6 = *(this + 2);
  *(this + 2) = 0;
  if (v6)
  {
    if (v6[4] == 1)
    {
      (*(*v6 + 8))(v6);
    }

    else
    {
      --v6[4];
    }
  }
}

{
  WebKit::RemoteShaderModule::~RemoteShaderModule(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

uint64_t WebKit::RemoteShaderModule::destruct(WebKit::RemoteShaderModule *this)
{
  v1 = *(*(this + 3) + 8);
  if (v1)
  {
    v2 = (v1 + 16);
    ++*(v1 + 16);
    WebKit::WebGPU::ObjectHeap::removeObject(v1, *(this + 6));

    return WTF::RefCounted<WebKit::WebGPU::ObjectHeap>::deref(v2, v3);
  }

  else
  {
    result = 103;
    __break(0xC471u);
  }

  return result;
}

uint64_t *WebKit::WebGPU::ObjectHeap::removeObject(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  result = _ZN3WTF9HashTableINS_23ObjectIdentifierGenericIN6WebKit20WebGPUIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEENS_12KeyValuePairIS6_N5mpark7variantIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueINS2_13RemoteAdapterENS_6RefPtrISE_NS_12RawPtrTraitsISE_EENS_21DefaultRefDerefTraitsISE_EEEEEENSD_INS2_15RemoteBindGroupENSF_ISM_NSG_ISM_EENSI_ISM_EEEEEENSD_INS2_21RemoteBindGroupLayoutENSF_ISR_NSG_ISR_EENSI_ISR_EEEEEENSD_INS2_12RemoteBufferENSF_ISW_NSG_ISW_EENSI_ISW_EEEEEENSD_INS2_19RemoteCommandBufferENSF_IS11_NSG_IS11_EENSI_IS11_EEEEEENSD_INS2_20RemoteCommandEncoderENSF_IS16_NSG_IS16_EENSI_IS16_EEEEEENSD_INS2_27RemoteCompositorIntegrationENSF_IS1B_NSG_IS1B_EENSI_IS1B_EEEEEENSD_INS2_24RemoteComputePassEncoderENSF_IS1G_NSG_IS1G_EENSI_IS1G_EEEEEENSD_INS2_21RemoteComputePipelineENSF_IS1L_NSG_IS1L_EENSI_IS1L_EEEEEENSD_INS2_12RemoteDeviceENSF_IS1Q_NSG_IS1Q_EENSI_IS1Q_EEEEEENSD_INS2_21RemoteExternalTextureENSF_IS1V_NSG_IS1V_EENSI_IS1V_EEEEEENSD_INS2_20RemotePipelineLayoutENSF_IS20_NSG_IS20_EENSI_IS20_EEEEEENSD_INS2_25RemotePresentationContextENSF_IS25_NSG_IS25_EENSI_IS25_EEEEEENSD_INS2_14RemoteQuerySetENSF_IS2A_NSG_IS2A_EENSI_IS2A_EEEEEENSD_INS2_11RemoteQueueENSF_IS2F_NSG_IS2F_EENSI_IS2F_EEEEEENSD_INS2_25RemoteRenderBundleEncoderENSF_IS2K_NSG_IS2K_EENSI_IS2K_EEEEEENSD_INS2_18RemoteRenderBundleENSF_IS2P_NSG_IS2P_EENSI_IS2P_EEEEEENSD_INS2_23RemoteRenderPassEncoderENSF_IS2U_NSG_IS2U_EENSI_IS2U_EEEEEENSD_INS2_20RemoteRenderPipelineENSF_IS2Z_NSG_IS2Z_EENSI_IS2Z_EEEEEENSD_INS2_13RemoteSamplerENSF_IS34_NSG_IS34_EENSI_IS34_EEEEEENSD_INS2_18RemoteShaderModuleENSF_IS39_NSG_IS39_EENSI_IS39_EEEEEENSD_INS2_13RemoteTextureENSF_IS3E_NSG_IS3E_EENSI_IS3E_EEEEEENSD_INS2_17RemoteTextureViewENSF_IS3J_NSG_IS3J_EENSI_IS3J_EEEEEENSD_INS2_15RemoteXRBindingENSF_IS3O_NSG_IS3O_EENSI_IS3O_EEEEEENSD_INS2_16RemoteXRSubImageENSF_IS3T_NSG_IS3T_EENSI_IS3T_EEEEEENSD_INS2_23RemoteXRProjectionLayerENSF_IS3Y_NSG_IS3Y_EENSI_IS3Y_EEEEEENSD_INS2_12RemoteXRViewENSF_IS43_NSG_IS43_EENSI_IS43_EEEEEEEEEEENS_24KeyValuePairKeyExtractorIS49_EENS_11DefaultHashIS6_EENS_7HashMapIS6_S48_S4D_NS_10HashTraitsIS6_EENS4F_IS48_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1ENS_10FastMallocEE18KeyValuePairTraitsES4G_S4K_E4findINS_22IdentityHashTranslatorIS4M_S4D_EELS4J_1ES6_EENS_17HashTableIteratorIS4N_S6_S49_S4B_S4D_S4M_S4G_EERKT1_((a1 + 24), &v6);
  v4 = *(a1 + 24);
  if (v4)
  {
    v5 = (v4 + 24 * *(v4 - 4));
    if (v5 == result)
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

    v5 = 0;
  }

  if (v5 != result)
  {
    return _ZN3WTF9HashTableINS_23ObjectIdentifierGenericIN6WebKit20WebGPUIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEENS_12KeyValuePairIS6_N5mpark7variantIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueINS2_13RemoteAdapterENS_6RefPtrISE_NS_12RawPtrTraitsISE_EENS_21DefaultRefDerefTraitsISE_EEEEEENSD_INS2_15RemoteBindGroupENSF_ISM_NSG_ISM_EENSI_ISM_EEEEEENSD_INS2_21RemoteBindGroupLayoutENSF_ISR_NSG_ISR_EENSI_ISR_EEEEEENSD_INS2_12RemoteBufferENSF_ISW_NSG_ISW_EENSI_ISW_EEEEEENSD_INS2_19RemoteCommandBufferENSF_IS11_NSG_IS11_EENSI_IS11_EEEEEENSD_INS2_20RemoteCommandEncoderENSF_IS16_NSG_IS16_EENSI_IS16_EEEEEENSD_INS2_27RemoteCompositorIntegrationENSF_IS1B_NSG_IS1B_EENSI_IS1B_EEEEEENSD_INS2_24RemoteComputePassEncoderENSF_IS1G_NSG_IS1G_EENSI_IS1G_EEEEEENSD_INS2_21RemoteComputePipelineENSF_IS1L_NSG_IS1L_EENSI_IS1L_EEEEEENSD_INS2_12RemoteDeviceENSF_IS1Q_NSG_IS1Q_EENSI_IS1Q_EEEEEENSD_INS2_21RemoteExternalTextureENSF_IS1V_NSG_IS1V_EENSI_IS1V_EEEEEENSD_INS2_20RemotePipelineLayoutENSF_IS20_NSG_IS20_EENSI_IS20_EEEEEENSD_INS2_25RemotePresentationContextENSF_IS25_NSG_IS25_EENSI_IS25_EEEEEENSD_INS2_14RemoteQuerySetENSF_IS2A_NSG_IS2A_EENSI_IS2A_EEEEEENSD_INS2_11RemoteQueueENSF_IS2F_NSG_IS2F_EENSI_IS2F_EEEEEENSD_INS2_25RemoteRenderBundleEncoderENSF_IS2K_NSG_IS2K_EENSI_IS2K_EEEEEENSD_INS2_18RemoteRenderBundleENSF_IS2P_NSG_IS2P_EENSI_IS2P_EEEEEENSD_INS2_23RemoteRenderPassEncoderENSF_IS2U_NSG_IS2U_EENSI_IS2U_EEEEEENSD_INS2_20RemoteRenderPipelineENSF_IS2Z_NSG_IS2Z_EENSI_IS2Z_EEEEEENSD_INS2_13RemoteSamplerENSF_IS34_NSG_IS34_EENSI_IS34_EEEEEENSD_INS2_18RemoteShaderModuleENSF_IS39_NSG_IS39_EENSI_IS39_EEEEEENSD_INS2_13RemoteTextureENSF_IS3E_NSG_IS3E_EENSI_IS3E_EEEEEENSD_INS2_17RemoteTextureViewENSF_IS3J_NSG_IS3J_EENSI_IS3J_EEEEEENSD_INS2_15RemoteXRBindingENSF_IS3O_NSG_IS3O_EENSI_IS3O_EEEEEENSD_INS2_16RemoteXRSubImageENSF_IS3T_NSG_IS3T_EENSI_IS3T_EEEEEENSD_INS2_23RemoteXRProjectionLayerENSF_IS3Y_NSG_IS3Y_EENSI_IS3Y_EEEEEENSD_INS2_12RemoteXRViewENSF_IS43_NSG_IS43_EENSI_IS43_EEEEEEEEEEENS_24KeyValuePairKeyExtractorIS49_EENS_11DefaultHashIS6_EENS_7HashMapIS6_S48_S4D_NS_10HashTraitsIS6_EENS4F_IS48_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1ENS_10FastMallocEE18KeyValuePairTraitsES4G_S4K_E6removeEPS49_((a1 + 24), result);
  }

  return result;
}

void *WebKit::RemoteShaderModule::stopListeningForIPC(WebKit::RemoteShaderModule *this)
{
  v1 = *(this + 4);
  atomic_fetch_add(v1 + 2, 1u);
  result = IPC::StreamServerConnection::stopReceivingMessages(v1, 0x7Au, *(this + 6));
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v1 + 2);
    v3 = *(*v1 + 8);

    return v3(v1);
  }

  return result;
}

uint64_t WebKit::RemoteShaderModule::compilationInfo(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  ++v2[4];
  v3 = *a2;
  *a2 = 0;
  v4 = WTF::fastMalloc(0x10);
  *v4 = &unk_1F10FBDC0;
  v4[1] = v3;
  v6 = v4;
  (*(*v2 + 16))(v2, &v6);
  result = v6;
  v6 = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  if (v2[4] == 1)
  {
    return (*(*v2 + 8))(v2);
  }

  --v2[4];
  return result;
}

uint64_t WebKit::RemoteShaderModule::setLabel(uint64_t a1, WTF::StringImpl *a2)
{
  v2 = *(a1 + 16);
  ++*(v2 + 16);
  result = WebCore::WebGPU::ShaderModule::setLabel(v2, a2);
  if (*(v2 + 16) == 1)
  {
    v4 = *(*v2 + 8);

    return v4(v2);
  }

  else
  {
    --*(v2 + 16);
  }

  return result;
}

uint64_t WebCore::WebGPU::ShaderModule::setLabel(void *a1, WTF::StringImpl *a2)
{
  v3 = *a2;
  *a2 = 0;
  v5 = a1 + 3;
  v4 = a1[3];
  *v5 = v3;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v6 = *(*a1 + 24);

  return v6(a1, v5);
}

uint64_t WebKit::RemoteTexture::RemoteTexture(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  *(a1 + 8) = 1;
  *a1 = &unk_1F10FBC00;
  ++*(a4 + 16);
  *(a1 + 16) = a4;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a5 + 8), a5);
  v13 = *(a5 + 8);
  atomic_fetch_add(v13, 1u);
  *(a1 + 24) = v13;
  v14 = *a6;
  *a6 = 0;
  *(a1 + 32) = v14;
  *(a1 + 40) = a7;
  *(a1 + 48) = a2;
  v15 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::controlBlock((a2 + 16));
  *(a1 + 56) = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v15);
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a3 + 16), a3);
  v16 = *(a3 + 16);
  atomic_fetch_add(v16, 1u);
  *(a1 + 64) = v16;
  v17 = *(a1 + 32);
  atomic_fetch_add(v17 + 2, 1u);
  IPC::StreamServerConnection::startReceivingMessages(v17, a1, 0x7Eu, *(a1 + 40));
  if (v17 && atomic_fetch_add(v17 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v17 + 2);
    (*(*v17 + 8))(v17);
  }

  return a1;
}

void WebKit::RemoteTexture::~RemoteTexture(WebKit::RemoteTexture *this, void *a2)
{
  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  v4 = *(this + 7);
  *(this + 7) = 0;
  if (v4)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v4, a2);
  }

  v5 = *(this + 4);
  *(this + 4) = 0;
  if (v5 && atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5 + 2);
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 3);
  *(this + 3) = 0;
  if (v6 && atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v6);
    WTF::fastFree(v6, a2);
  }

  v7 = *(this + 2);
  *(this + 2) = 0;
  if (v7)
  {
    if (v7[4] == 1)
    {
      (*(*v7 + 8))(v7);
    }

    else
    {
      --v7[4];
    }
  }
}

{
  WebKit::RemoteTexture::~RemoteTexture(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

void *WebKit::RemoteTexture::stopListeningForIPC(WebKit::RemoteTexture *this)
{
  v1 = *(this + 4);
  atomic_fetch_add(v1 + 2, 1u);
  result = IPC::StreamServerConnection::stopReceivingMessages(v1, 0x7Eu, *(this + 5));
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v1 + 2);
    v3 = *(*v1 + 8);

    return v3(v1);
  }

  return result;
}

WTF::StringImpl *WebKit::RemoteTexture::createView(void *a1, uint64_t a2, void *a3)
{
  v57 = *MEMORY[0x1E69E9840];
  LOBYTE(v40) = 0;
  v50 = 0;
  v3 = *(a1[3] + 8);
  if (!v3)
  {
    __break(0xC471u);
    JUMPOUT(0x19DB84DF8);
  }

  v6 = (v3 + 16);
  ++*(v3 + 16);
  if (*(a2 + 40) == 1)
  {
    v7 = *a2;
    if (*a2)
    {
      atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
      v8 = v50 == 0;
    }

    else
    {
      v8 = 1;
    }

    v10 = *(a2 + 20);
    v9 = (a2 + 20);
    v11 = *(v9 - 6);
    v12 = *(v9 - 5);
    v13 = *(v9 - 8);
    v14 = *(v9 - 1);
    *buf = v10;
    buf[4] = *(v9 + 4);
    v15 = v9[2];
    LODWORD(v52) = v9[3];
    BYTE4(v52) = *(v9 + 16);
    if (v8)
    {
      v40 = v7;
      v41 = v11;
      v42 = v12;
      v43 = v13;
      v16 = *v9;
      v44 = v14;
      v45 = v16;
      v46 = *(v9 + 4);
      v17 = v9[3];
      v47 = v15;
      v48 = v17;
      v49 = *(v9 + 16);
      v50 = 1;
    }

    else
    {
      v18 = v40;
      v40 = v7;
      if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v18, v9);
      }

      v41 = v11;
      v42 = v12;
      v43 = v13;
      v44 = v14;
      v45 = *buf;
      v46 = buf[4];
      v47 = v15;
      v48 = v52;
      v49 = BYTE4(v52);
    }
  }

  v19 = a1[2];
  ++v19[4];
  (*(*v19 + 16))(&v39, v19, &v40);
  if (v19[4] == 1)
  {
    (*(*v19 + 8))(v19);
  }

  else
  {
    --v19[4];
  }

  v21 = v39;
  if (v39)
  {
    v39 = 0;
    v22 = a1[4];
    atomic_fetch_add((v22 + 8), 1u);
    v23 = *(a1[8] + 8);
    if (v23)
    {
      atomic_fetch_add((v23 + 8), 1u);
      if (WebKit::RemoteTextureView::s_heapRef)
      {
        NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::RemoteTextureView::s_heapRef, v20);
      }

      else
      {
        NonCompact = WebKit::RemoteTextureView::operatorNewSlow(0);
      }

      v25 = NonCompact;
      *(NonCompact + 8) = 1;
      *NonCompact = &unk_1F10FBC28;
      ++v21[4];
      *(NonCompact + 16) = v21;
      WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v3 + 8), v3);
      v26 = *(v3 + 8);
      atomic_fetch_add(v26, 1u);
      *(v25 + 24) = v26;
      *(v25 + 32) = v22;
      WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v23 + 16), v23);
      v27 = *(v23 + 16);
      atomic_fetch_add(v27, 1u);
      *(v25 + 40) = v27;
      *(v25 + 48) = a3;
      v28 = *(v25 + 32);
      atomic_fetch_add(v28 + 2, 1u);
      IPC::StreamServerConnection::startReceivingMessages(v28, v25, 0x7Fu, *(v25 + 48));
      if (v28 && atomic_fetch_add(v28 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v28 + 2);
        (*(*v28 + 8))(v28);
      }

      if (atomic_fetch_add((v23 + 8), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, (v23 + 8));
        (*(*v23 + 8))(v23);
      }

      if (v21[4] == 1)
      {
        (*(*v21 + 8))(v21);
      }

      else
      {
        --v21[4];
      }

      v54 = a3;
      atomic_fetch_add((v25 + 8), 1u);
      v51 = 0;
      v52 = v25;
      v53 = 23;
      _ZN3WTF7HashMapINS_23ObjectIdentifierGenericIN6WebKit20WebGPUIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEN5mpark7variantIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueINS2_13RemoteAdapterENS_6RefPtrISD_NS_12RawPtrTraitsISD_EENS_21DefaultRefDerefTraitsISD_EEEEEENSC_INS2_15RemoteBindGroupENSE_ISL_NSF_ISL_EENSH_ISL_EEEEEENSC_INS2_21RemoteBindGroupLayoutENSE_ISQ_NSF_ISQ_EENSH_ISQ_EEEEEENSC_INS2_12RemoteBufferENSE_ISV_NSF_ISV_EENSH_ISV_EEEEEENSC_INS2_19RemoteCommandBufferENSE_IS10_NSF_IS10_EENSH_IS10_EEEEEENSC_INS2_20RemoteCommandEncoderENSE_IS15_NSF_IS15_EENSH_IS15_EEEEEENSC_INS2_27RemoteCompositorIntegrationENSE_IS1A_NSF_IS1A_EENSH_IS1A_EEEEEENSC_INS2_24RemoteComputePassEncoderENSE_IS1F_NSF_IS1F_EENSH_IS1F_EEEEEENSC_INS2_21RemoteComputePipelineENSE_IS1K_NSF_IS1K_EENSH_IS1K_EEEEEENSC_INS2_12RemoteDeviceENSE_IS1P_NSF_IS1P_EENSH_IS1P_EEEEEENSC_INS2_21RemoteExternalTextureENSE_IS1U_NSF_IS1U_EENSH_IS1U_EEEEEENSC_INS2_20RemotePipelineLayoutENSE_IS1Z_NSF_IS1Z_EENSH_IS1Z_EEEEEENSC_INS2_25RemotePresentationContextENSE_IS24_NSF_IS24_EENSH_IS24_EEEEEENSC_INS2_14RemoteQuerySetENSE_IS29_NSF_IS29_EENSH_IS29_EEEEEENSC_INS2_11RemoteQueueENSE_IS2E_NSF_IS2E_EENSH_IS2E_EEEEEENSC_INS2_25RemoteRenderBundleEncoderENSE_IS2J_NSF_IS2J_EENSH_IS2J_EEEEEENSC_INS2_18RemoteRenderBundleENSE_IS2O_NSF_IS2O_EENSH_IS2O_EEEEEENSC_INS2_23RemoteRenderPassEncoderENSE_IS2T_NSF_IS2T_EENSH_IS2T_EEEEEENSC_INS2_20RemoteRenderPipelineENSE_IS2Y_NSF_IS2Y_EENSH_IS2Y_EEEEEENSC_INS2_13RemoteSamplerENSE_IS33_NSF_IS33_EENSH_IS33_EEEEEENSC_INS2_18RemoteShaderModuleENSE_IS38_NSF_IS38_EENSH_IS38_EEEEEENSC_INS2_13RemoteTextureENSE_IS3D_NSF_IS3D_EENSH_IS3D_EEEEEENSC_INS2_17RemoteTextureViewENSE_IS3I_NSF_IS3I_EENSH_IS3I_EEEEEENSC_INS2_15RemoteXRBindingENSE_IS3N_NSF_IS3N_EENSH_IS3N_EEEEEENSC_INS2_16RemoteXRSubImageENSE_IS3S_NSF_IS3S_EENSH_IS3S_EEEEEENSC_INS2_23RemoteXRProjectionLayerENSE_IS3X_NSF_IS3X_EENSH_IS3X_EEEEEENSC_INS2_12RemoteXRViewENSE_IS42_NSF_IS42_EENSH_IS42_EEEEEEEEENS_11DefaultHashIS6_EENS_10HashTraitsIS6_EENS4A_IS47_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1ENS_10FastMallocEE3addIS47_EENS_18HashTableAddResultINS_17HashTableIteratorINS_9HashTableIS6_NS_12KeyValuePairIS6_S47_EENS_24KeyValuePairKeyExtractorIS4M_EES49_NS4G_18KeyValuePairTraitsES4B_S4F_EES6_S4M_S4O_S49_S4P_S4B_EEEERKS6_OT_((v3 + 24), &v54, &v52, buf);
      if (v53 != 255)
      {
        _ZN5mpark6detail10visitation3alt9visit_altINS0_4dtorEJRNS0_10destructorINS0_6traitsIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueIN6WebKit13RemoteAdapterEN3WTF6RefPtrISC_NSD_12RawPtrTraitsISC_EENSD_21DefaultRefDerefTraitsISC_EEEEEENSA_INSB_15RemoteBindGroupENSE_ISL_NSF_ISL_EENSH_ISL_EEEEEENSA_INSB_21RemoteBindGroupLayoutENSE_ISQ_NSF_ISQ_EENSH_ISQ_EEEEEENSA_INSB_12RemoteBufferENSE_ISV_NSF_ISV_EENSH_ISV_EEEEEENSA_INSB_19RemoteCommandBufferENSE_IS10_NSF_IS10_EENSH_IS10_EEEEEENSA_INSB_20RemoteCommandEncoderENSE_IS15_NSF_IS15_EENSH_IS15_EEEEEENSA_INSB_27RemoteCompositorIntegrationENSE_IS1A_NSF_IS1A_EENSH_IS1A_EEEEEENSA_INSB_24RemoteComputePassEncoderENSE_IS1F_NSF_IS1F_EENSH_IS1F_EEEEEENSA_INSB_21RemoteComputePipelineENSE_IS1K_NSF_IS1K_EENSH_IS1K_EEEEEENSA_INSB_12RemoteDeviceENSE_IS1P_NSF_IS1P_EENSH_IS1P_EEEEEENSA_INSB_21RemoteExternalTextureENSE_IS1U_NSF_IS1U_EENSH_IS1U_EEEEEENSA_INSB_20RemotePipelineLayoutENSE_IS1Z_NSF_IS1Z_EENSH_IS1Z_EEEEEENSA_INSB_25RemotePresentationContextENSE_IS24_NSF_IS24_EENSH_IS24_EEEEEENSA_INSB_14RemoteQuerySetENSE_IS29_NSF_IS29_EENSH_IS29_EEEEEENSA_INSB_11RemoteQueueENSE_IS2E_NSF_IS2E_EENSH_IS2E_EEEEEENSA_INSB_25RemoteRenderBundleEncoderENSE_IS2J_NSF_IS2J_EENSH_IS2J_EEEEEENSA_INSB_18RemoteRenderBundleENSE_IS2O_NSF_IS2O_EENSH_IS2O_EEEEEENSA_INSB_23RemoteRenderPassEncoderENSE_IS2T_NSF_IS2T_EENSH_IS2T_EEEEEENSA_INSB_20RemoteRenderPipelineENSE_IS2Y_NSF_IS2Y_EENSH_IS2Y_EEEEEENSA_INSB_13RemoteSamplerENSE_IS33_NSF_IS33_EENSH_IS33_EEEEEENSA_INSB_18RemoteShaderModuleENSE_IS38_NSF_IS38_EENSH_IS38_EEEEEENSA_INSB_13RemoteTextureENSE_IS3D_NSF_IS3D_EENSH_IS3D_EEEEEENSA_INSB_17RemoteTextureViewENSE_IS3I_NSF_IS3I_EENSH_IS3I_EEEEEENSA_INSB_15RemoteXRBindingENSE_IS3N_NSF_IS3N_EENSH_IS3N_EEEEEENSA_INSB_16RemoteXRSubImageENSE_IS3S_NSF_IS3S_EENSH_IS3S_EEEEEENSA_INSB_23RemoteXRProjectionLayerENSE_IS3X_NSF_IS3X_EENSH_IS3X_EEEEEENSA_INSB_12RemoteXRViewENSE_IS42_NSF_IS42_EENSH_IS42_EEEEEEEEELNS0_5TraitE1EEEEEEDcOT_DpOT0_(&v55, &v52);
      }

      v53 = -1;
      IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteTextureView,WTF::RefPtr<WebKit::RemoteTextureView,WTF::RawPtrTraits<WebKit::RemoteTextureView>,WTF::DefaultRefDerefTraits<WebKit::RemoteTextureView>>>::~ScopedActiveMessageReceiveQueue(&v51);
      if (atomic_fetch_add((v25 + 8), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, (v25 + 8));
        (*(*v25 + 8))(v25);
      }

      goto LABEL_29;
    }

LABEL_56:
    __break(0xC471u);
    JUMPOUT(0x19DB84D2CLL);
  }

  v33 = qword_1ED6416C8;
  if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
  {
    *buf = 136446210;
    *&buf[4] = "void WebKit::RemoteTexture::createView(const std::optional<WebGPU::TextureViewDescriptor> &, WebGPUIdentifier)";
    _os_log_fault_impl(&dword_19D52D000, v33, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/GPUProcess/graphics/WebGPU/RemoteTexture.cpp 86: Invalid message dispatched %{public}s", buf, 0xCu);
  }

  v34 = a1[7];
  if (v34)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v34, a1[6], buf);
    if (*buf)
    {
      v35 = *(*buf + 56);
      while (1)
      {
        v36 = *v35;
        if ((*v35 & 1) == 0)
        {
          break;
        }

        v37 = *v35;
        atomic_compare_exchange_strong_explicit(v35, &v37, v36 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v37 == v36)
        {
          goto LABEL_52;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v35);
LABEL_52:
      v38 = *buf;
      *buf = 0;
      if (v38)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v38 + 16));
      }

      *(v35 + 94) = 1;
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v35);
    }
  }

  if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
  {
    goto LABEL_56;
  }

LABEL_29:
  v30 = v39;
  v39 = 0;
  if (v30)
  {
    if (v30[4] == 1)
    {
      (*(*v30 + 8))(v30);
    }

    else
    {
      --v30[4];
    }
  }

  result = WTF::RefCounted<WebKit::WebGPU::ObjectHeap>::deref(v6, v29);
  if (v50 == 1)
  {
    result = v40;
    v40 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v32);
      }
    }
  }

  return result;
}

uint64_t WebKit::RemoteTexture::destroy(WebKit::RemoteTexture *this)
{
  v1 = *(this + 2);
  ++v1[4];
  result = (*(*v1 + 24))(v1);
  if (v1[4] == 1)
  {
    v3 = *(*v1 + 8);

    return v3(v1);
  }

  else
  {
    --v1[4];
  }

  return result;
}

uint64_t WebKit::RemoteTexture::undestroy(WebKit::RemoteTexture *this)
{
  v1 = *(this + 2);
  ++v1[4];
  result = (*(*v1 + 32))(v1);
  if (v1[4] == 1)
  {
    v3 = *(*v1 + 8);

    return v3(v1);
  }

  else
  {
    --v1[4];
  }

  return result;
}

uint64_t WebKit::RemoteTexture::destruct(WebKit::RemoteTexture *this)
{
  v1 = *(*(this + 3) + 8);
  if (v1)
  {
    v2 = (v1 + 16);
    ++*(v1 + 16);
    WebKit::WebGPU::ObjectHeap::removeObject(v1, *(this + 5));

    return WTF::RefCounted<WebKit::WebGPU::ObjectHeap>::deref(v2, v3);
  }

  else
  {
    result = 103;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::RemoteTexture::setLabel(uint64_t a1, WTF::StringImpl *a2)
{
  v2 = *(a1 + 16);
  ++*(v2 + 16);
  result = WebCore::WebGPU::Texture::setLabel(v2, a2);
  if (*(v2 + 16) == 1)
  {
    v4 = *(*v2 + 8);

    return v4(v2);
  }

  else
  {
    --*(v2 + 16);
  }

  return result;
}

uint64_t WebCore::WebGPU::Texture::setLabel(void *a1, WTF::StringImpl *a2)
{
  v3 = *a2;
  *a2 = 0;
  v5 = a1 + 3;
  v4 = a1[3];
  *v5 = v3;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v6 = *(*a1 + 40);

  return v6(a1, v5);
}

void WebKit::RemoteTextureView::~RemoteTextureView(WebKit::RemoteTextureView *this, void *a2)
{
  v3 = *(this + 5);
  *(this + 5) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  v4 = *(this + 4);
  *(this + 4) = 0;
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 2);
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 3);
  *(this + 3) = 0;
  if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5);
    WTF::fastFree(v5, a2);
  }

  v6 = *(this + 2);
  *(this + 2) = 0;
  if (v6)
  {
    if (v6[4] == 1)
    {
      (*(*v6 + 8))(v6);
    }

    else
    {
      --v6[4];
    }
  }
}

{
  WebKit::RemoteTextureView::~RemoteTextureView(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

void *WebKit::RemoteTextureView::stopListeningForIPC(WebKit::RemoteTextureView *this)
{
  v1 = *(this + 4);
  atomic_fetch_add(v1 + 2, 1u);
  result = IPC::StreamServerConnection::stopReceivingMessages(v1, 0x7Fu, *(this + 6));
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v1 + 2);
    v3 = *(*v1 + 8);

    return v3(v1);
  }

  return result;
}

uint64_t WebKit::RemoteTextureView::setLabel(uint64_t a1, WTF::StringImpl *a2)
{
  v2 = *(a1 + 16);
  ++*(v2 + 16);
  result = WebCore::WebGPU::TextureView::setLabel(v2, a2);
  if (*(v2 + 16) == 1)
  {
    v4 = *(*v2 + 8);

    return v4(v2);
  }

  else
  {
    --*(v2 + 16);
  }

  return result;
}

uint64_t WebCore::WebGPU::TextureView::setLabel(void *a1, WTF::StringImpl *a2)
{
  v3 = *a2;
  *a2 = 0;
  v5 = a1 + 3;
  v4 = a1[3];
  *v5 = v3;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v6 = *(*a1 + 16);

  return v6(a1, v5);
}

uint64_t WebKit::RemoteXRBinding::RemoteXRBinding(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  *(a1 + 8) = 1;
  *a1 = &unk_1F10FBC50;
  ++*(a3 + 16);
  *(a1 + 16) = a3;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a4 + 8), a4);
  v13 = *(a4 + 8);
  atomic_fetch_add(v13, 1u);
  *(a1 + 24) = v13;
  v14 = *a6;
  *a6 = 0;
  *(a1 + 32) = v14;
  *(a1 + 40) = a2;
  v15 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::controlBlock((a2 + 16));
  *(a1 + 48) = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v15);
  *(a1 + 56) = a7;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a5 + 16), a5);
  v16 = *(a5 + 16);
  atomic_fetch_add(v16, 1u);
  *(a1 + 64) = v16;
  v17 = *(a1 + 32);
  atomic_fetch_add(v17 + 2, 1u);
  IPC::StreamServerConnection::startReceivingMessages(v17, a1, 0x85u, *(a1 + 56));
  if (v17 && atomic_fetch_add(v17 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v17 + 2);
    (*(*v17 + 8))(v17);
  }

  return a1;
}

void WebKit::RemoteXRBinding::~RemoteXRBinding(WebKit::RemoteXRBinding *this, void *a2)
{
  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  v4 = *(this + 6);
  *(this + 6) = 0;
  if (v4)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v4, a2);
  }

  v5 = *(this + 4);
  *(this + 4) = 0;
  if (v5 && atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5 + 2);
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 3);
  *(this + 3) = 0;
  if (v6 && atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v6);
    WTF::fastFree(v6, a2);
  }

  v7 = *(this + 2);
  *(this + 2) = 0;
  if (v7)
  {
    if (v7[4] == 1)
    {
      (*(*v7 + 8))(v7);
    }

    else
    {
      --v7[4];
    }
  }
}

{
  WebKit::RemoteXRBinding::~RemoteXRBinding(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

uint64_t WebKit::RemoteXRBinding::destruct(WebKit::RemoteXRBinding *this)
{
  v1 = *(*(this + 3) + 8);
  if (v1)
  {
    v2 = (v1 + 16);
    ++*(v1 + 16);
    WebKit::WebGPU::ObjectHeap::removeObject(v1, *(this + 7));

    return WTF::RefCounted<WebKit::WebGPU::ObjectHeap>::deref(v2, v3);
  }

  else
  {
    result = 103;
    __break(0xC471u);
  }

  return result;
}

_DWORD *WebKit::RemoteXRBinding::createProjectionLayer(void *a1, char a2, __int16 a3, char a4, void *a5, double a6)
{
  v22 = a2;
  v23 = a3;
  v24 = a4;
  v25 = a6;
  v8 = a1[2];
  ++v8[4];
  result = (*(*v8 + 16))(&v21, v8, &v22);
  if (v8[4] == 1)
  {
    result = (*(*v8 + 8))(v8);
  }

  else
  {
    --v8[4];
  }

  v11 = v21;
  if (v21)
  {
    v12 = *(a1[3] + 8);
    if (!v12 || (++*(v12 + 16), v13 = a1[4], atomic_fetch_add((v13 + 8), 1u), (v14 = *(a1[8] + 8)) == 0))
    {
      __break(0xC471u);
      JUMPOUT(0x19DB85A1CLL);
    }

    atomic_fetch_add((v14 + 8), 1u);
    if (WebKit::RemoteXRProjectionLayer::s_heapRef)
    {
      NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::RemoteXRProjectionLayer::s_heapRef, v10);
    }

    else
    {
      NonCompact = WebKit::RemoteXRProjectionLayer::operatorNewSlow(0);
    }

    v16 = NonCompact;
    *(NonCompact + 8) = 1;
    *NonCompact = &unk_1F10FBC78;
    ++v11[4];
    *(NonCompact + 16) = v11;
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v12 + 8), v12);
    v17 = *(v12 + 8);
    atomic_fetch_add(v17, 1u);
    *(v16 + 24) = v17;
    *(v16 + 32) = v13;
    *(v16 + 40) = a5;
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v14 + 16), v14);
    v18 = *(v14 + 16);
    atomic_fetch_add(v18, 1u);
    *(v16 + 48) = v18;
    v19 = *(v16 + 32);
    atomic_fetch_add(v19 + 2, 1u);
    IPC::StreamServerConnection::startReceivingMessages(v19, v16, 0x86u, *(v16 + 40));
    if (v19 && atomic_fetch_add(v19 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v19 + 2);
      (*(*v19 + 8))(v19);
    }

    if (atomic_fetch_add((v14 + 8), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, (v14 + 8));
      (*(*v14 + 8))(v14);
    }

    v30 = a5;
    atomic_fetch_add((v16 + 8), 1u);
    v26 = 0;
    v27 = v16;
    v28 = 26;
    _ZN3WTF7HashMapINS_23ObjectIdentifierGenericIN6WebKit20WebGPUIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEN5mpark7variantIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueINS2_13RemoteAdapterENS_6RefPtrISD_NS_12RawPtrTraitsISD_EENS_21DefaultRefDerefTraitsISD_EEEEEENSC_INS2_15RemoteBindGroupENSE_ISL_NSF_ISL_EENSH_ISL_EEEEEENSC_INS2_21RemoteBindGroupLayoutENSE_ISQ_NSF_ISQ_EENSH_ISQ_EEEEEENSC_INS2_12RemoteBufferENSE_ISV_NSF_ISV_EENSH_ISV_EEEEEENSC_INS2_19RemoteCommandBufferENSE_IS10_NSF_IS10_EENSH_IS10_EEEEEENSC_INS2_20RemoteCommandEncoderENSE_IS15_NSF_IS15_EENSH_IS15_EEEEEENSC_INS2_27RemoteCompositorIntegrationENSE_IS1A_NSF_IS1A_EENSH_IS1A_EEEEEENSC_INS2_24RemoteComputePassEncoderENSE_IS1F_NSF_IS1F_EENSH_IS1F_EEEEEENSC_INS2_21RemoteComputePipelineENSE_IS1K_NSF_IS1K_EENSH_IS1K_EEEEEENSC_INS2_12RemoteDeviceENSE_IS1P_NSF_IS1P_EENSH_IS1P_EEEEEENSC_INS2_21RemoteExternalTextureENSE_IS1U_NSF_IS1U_EENSH_IS1U_EEEEEENSC_INS2_20RemotePipelineLayoutENSE_IS1Z_NSF_IS1Z_EENSH_IS1Z_EEEEEENSC_INS2_25RemotePresentationContextENSE_IS24_NSF_IS24_EENSH_IS24_EEEEEENSC_INS2_14RemoteQuerySetENSE_IS29_NSF_IS29_EENSH_IS29_EEEEEENSC_INS2_11RemoteQueueENSE_IS2E_NSF_IS2E_EENSH_IS2E_EEEEEENSC_INS2_25RemoteRenderBundleEncoderENSE_IS2J_NSF_IS2J_EENSH_IS2J_EEEEEENSC_INS2_18RemoteRenderBundleENSE_IS2O_NSF_IS2O_EENSH_IS2O_EEEEEENSC_INS2_23RemoteRenderPassEncoderENSE_IS2T_NSF_IS2T_EENSH_IS2T_EEEEEENSC_INS2_20RemoteRenderPipelineENSE_IS2Y_NSF_IS2Y_EENSH_IS2Y_EEEEEENSC_INS2_13RemoteSamplerENSE_IS33_NSF_IS33_EENSH_IS33_EEEEEENSC_INS2_18RemoteShaderModuleENSE_IS38_NSF_IS38_EENSH_IS38_EEEEEENSC_INS2_13RemoteTextureENSE_IS3D_NSF_IS3D_EENSH_IS3D_EEEEEENSC_INS2_17RemoteTextureViewENSE_IS3I_NSF_IS3I_EENSH_IS3I_EEEEEENSC_INS2_15RemoteXRBindingENSE_IS3N_NSF_IS3N_EENSH_IS3N_EEEEEENSC_INS2_16RemoteXRSubImageENSE_IS3S_NSF_IS3S_EENSH_IS3S_EEEEEENSC_INS2_23RemoteXRProjectionLayerENSE_IS3X_NSF_IS3X_EENSH_IS3X_EEEEEENSC_INS2_12RemoteXRViewENSE_IS42_NSF_IS42_EENSH_IS42_EEEEEEEEENS_11DefaultHashIS6_EENS_10HashTraitsIS6_EENS4A_IS47_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1ENS_10FastMallocEE3addIS47_EENS_18HashTableAddResultINS_17HashTableIteratorINS_9HashTableIS6_NS_12KeyValuePairIS6_S47_EENS_24KeyValuePairKeyExtractorIS4M_EES49_NS4G_18KeyValuePairTraitsES4B_S4F_EES6_S4M_S4O_S49_S4P_S4B_EEEERKS6_OT_((v12 + 24), &v30, &v27, v29);
    if (v28 != 255)
    {
      _ZN5mpark6detail10visitation3alt9visit_altINS0_4dtorEJRNS0_10destructorINS0_6traitsIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueIN6WebKit13RemoteAdapterEN3WTF6RefPtrISC_NSD_12RawPtrTraitsISC_EENSD_21DefaultRefDerefTraitsISC_EEEEEENSA_INSB_15RemoteBindGroupENSE_ISL_NSF_ISL_EENSH_ISL_EEEEEENSA_INSB_21RemoteBindGroupLayoutENSE_ISQ_NSF_ISQ_EENSH_ISQ_EEEEEENSA_INSB_12RemoteBufferENSE_ISV_NSF_ISV_EENSH_ISV_EEEEEENSA_INSB_19RemoteCommandBufferENSE_IS10_NSF_IS10_EENSH_IS10_EEEEEENSA_INSB_20RemoteCommandEncoderENSE_IS15_NSF_IS15_EENSH_IS15_EEEEEENSA_INSB_27RemoteCompositorIntegrationENSE_IS1A_NSF_IS1A_EENSH_IS1A_EEEEEENSA_INSB_24RemoteComputePassEncoderENSE_IS1F_NSF_IS1F_EENSH_IS1F_EEEEEENSA_INSB_21RemoteComputePipelineENSE_IS1K_NSF_IS1K_EENSH_IS1K_EEEEEENSA_INSB_12RemoteDeviceENSE_IS1P_NSF_IS1P_EENSH_IS1P_EEEEEENSA_INSB_21RemoteExternalTextureENSE_IS1U_NSF_IS1U_EENSH_IS1U_EEEEEENSA_INSB_20RemotePipelineLayoutENSE_IS1Z_NSF_IS1Z_EENSH_IS1Z_EEEEEENSA_INSB_25RemotePresentationContextENSE_IS24_NSF_IS24_EENSH_IS24_EEEEEENSA_INSB_14RemoteQuerySetENSE_IS29_NSF_IS29_EENSH_IS29_EEEEEENSA_INSB_11RemoteQueueENSE_IS2E_NSF_IS2E_EENSH_IS2E_EEEEEENSA_INSB_25RemoteRenderBundleEncoderENSE_IS2J_NSF_IS2J_EENSH_IS2J_EEEEEENSA_INSB_18RemoteRenderBundleENSE_IS2O_NSF_IS2O_EENSH_IS2O_EEEEEENSA_INSB_23RemoteRenderPassEncoderENSE_IS2T_NSF_IS2T_EENSH_IS2T_EEEEEENSA_INSB_20RemoteRenderPipelineENSE_IS2Y_NSF_IS2Y_EENSH_IS2Y_EEEEEENSA_INSB_13RemoteSamplerENSE_IS33_NSF_IS33_EENSH_IS33_EEEEEENSA_INSB_18RemoteShaderModuleENSE_IS38_NSF_IS38_EENSH_IS38_EEEEEENSA_INSB_13RemoteTextureENSE_IS3D_NSF_IS3D_EENSH_IS3D_EEEEEENSA_INSB_17RemoteTextureViewENSE_IS3I_NSF_IS3I_EENSH_IS3I_EEEEEENSA_INSB_15RemoteXRBindingENSE_IS3N_NSF_IS3N_EENSH_IS3N_EEEEEENSA_INSB_16RemoteXRSubImageENSE_IS3S_NSF_IS3S_EENSH_IS3S_EEEEEENSA_INSB_23RemoteXRProjectionLayerENSE_IS3X_NSF_IS3X_EENSH_IS3X_EEEEEENSA_INSB_12RemoteXRViewENSE_IS42_NSF_IS42_EENSH_IS42_EEEEEEEEELNS0_5TraitE1EEEEEEDcOT_DpOT0_(&v31, &v27);
    }

    v28 = -1;
    IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteXRProjectionLayer,WTF::RefPtr<WebKit::RemoteXRProjectionLayer,WTF::RawPtrTraits<WebKit::RemoteXRProjectionLayer>,WTF::DefaultRefDerefTraits<WebKit::RemoteXRProjectionLayer>>>::~ScopedActiveMessageReceiveQueue(&v26);
    if (atomic_fetch_add((v16 + 8), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, (v16 + 8));
      (*(*v16 + 8))(v16);
    }

    WTF::RefCounted<WebKit::WebGPU::ObjectHeap>::deref((v12 + 16), v20);
    result = v21;
    v21 = 0;
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
  }

  return result;
}

_DWORD *WebKit::RemoteXRBinding::getViewSubImage(void *a1, uint64_t a2, void *a3)
{
  v3 = *(a1[3] + 8);
  if (!v3)
  {
    __break(0xC471u);
    goto LABEL_38;
  }

  ++*(v3 + 16);
  WebKit::WebGPU::ObjectHeap::convertXRProjectionLayerFromBacking(v3, a2, &v24);
  v7 = v24;
  if (!v24)
  {
    return WTF::RefCounted<WebKit::WebGPU::ObjectHeap>::deref((v3 + 16), v6);
  }

  v6 = *(v24 + 1);
  if (v6)
  {
    v8 = a1[2];
    ++v8[4];
    (*(*v8 + 32))(&v23, v8);
    if (v8[4] == 1)
    {
      (*(*v8 + 8))(v8);
    }

    else
    {
      --v8[4];
    }

    v9 = v23;
    if (!v23)
    {
      goto LABEL_26;
    }

    v10 = a1[6];
    if (v10)
    {
      WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v10, a1[5], v28);
      v11 = v28[0];
      v9 = v23;
    }

    else
    {
      v11 = 0;
      v28[0] = 0;
    }

    v12 = a1[4];
    atomic_fetch_add((v12 + 8), 1u);
    v13 = *(a1[8] + 8);
    if (v13)
    {
      atomic_fetch_add((v13 + 8), 1u);
      if (WebKit::RemoteXRSubImage::s_heapRef)
      {
        NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::RemoteXRSubImage::s_heapRef, v6);
      }

      else
      {
        NonCompact = WebKit::RemoteXRSubImage::operatorNewSlow(0);
      }

      v15 = NonCompact;
      *(NonCompact + 8) = 1;
      *NonCompact = &unk_1F10FBCA0;
      ++v9[4];
      *(NonCompact + 16) = v9;
      WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v3 + 8), v3);
      v16 = *(v3 + 8);
      atomic_fetch_add(v16, 1u);
      *(v15 + 24) = v16;
      *(v15 + 32) = v12;
      *(v15 + 40) = v11;
      v17 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::controlBlock((v11 + 16));
      *(v15 + 48) = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v17);
      *(v15 + 56) = a3;
      WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v13 + 16), v13);
      v18 = *(v13 + 16);
      atomic_fetch_add(v18, 1u);
      *(v15 + 64) = v18;
      v19 = *(v15 + 32);
      atomic_fetch_add(v19 + 2, 1u);
      IPC::StreamServerConnection::startReceivingMessages(v19, v15, 0x87u, *(v15 + 56));
      if (v19 && atomic_fetch_add(v19 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v19 + 2);
        (*(*v19 + 8))(v19);
      }

      if (atomic_fetch_add((v13 + 8), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, (v13 + 8));
        (*(*v13 + 8))(v13);
      }

      v20 = v28[0];
      v28[0] = 0;
      if (v20)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v20 + 16));
      }

      v29 = a3;
      atomic_fetch_add((v15 + 8), 1u);
      v25 = 0;
      v26 = v15;
      v27 = 25;
      _ZN3WTF7HashMapINS_23ObjectIdentifierGenericIN6WebKit20WebGPUIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEN5mpark7variantIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueINS2_13RemoteAdapterENS_6RefPtrISD_NS_12RawPtrTraitsISD_EENS_21DefaultRefDerefTraitsISD_EEEEEENSC_INS2_15RemoteBindGroupENSE_ISL_NSF_ISL_EENSH_ISL_EEEEEENSC_INS2_21RemoteBindGroupLayoutENSE_ISQ_NSF_ISQ_EENSH_ISQ_EEEEEENSC_INS2_12RemoteBufferENSE_ISV_NSF_ISV_EENSH_ISV_EEEEEENSC_INS2_19RemoteCommandBufferENSE_IS10_NSF_IS10_EENSH_IS10_EEEEEENSC_INS2_20RemoteCommandEncoderENSE_IS15_NSF_IS15_EENSH_IS15_EEEEEENSC_INS2_27RemoteCompositorIntegrationENSE_IS1A_NSF_IS1A_EENSH_IS1A_EEEEEENSC_INS2_24RemoteComputePassEncoderENSE_IS1F_NSF_IS1F_EENSH_IS1F_EEEEEENSC_INS2_21RemoteComputePipelineENSE_IS1K_NSF_IS1K_EENSH_IS1K_EEEEEENSC_INS2_12RemoteDeviceENSE_IS1P_NSF_IS1P_EENSH_IS1P_EEEEEENSC_INS2_21RemoteExternalTextureENSE_IS1U_NSF_IS1U_EENSH_IS1U_EEEEEENSC_INS2_20RemotePipelineLayoutENSE_IS1Z_NSF_IS1Z_EENSH_IS1Z_EEEEEENSC_INS2_25RemotePresentationContextENSE_IS24_NSF_IS24_EENSH_IS24_EEEEEENSC_INS2_14RemoteQuerySetENSE_IS29_NSF_IS29_EENSH_IS29_EEEEEENSC_INS2_11RemoteQueueENSE_IS2E_NSF_IS2E_EENSH_IS2E_EEEEEENSC_INS2_25RemoteRenderBundleEncoderENSE_IS2J_NSF_IS2J_EENSH_IS2J_EEEEEENSC_INS2_18RemoteRenderBundleENSE_IS2O_NSF_IS2O_EENSH_IS2O_EEEEEENSC_INS2_23RemoteRenderPassEncoderENSE_IS2T_NSF_IS2T_EENSH_IS2T_EEEEEENSC_INS2_20RemoteRenderPipelineENSE_IS2Y_NSF_IS2Y_EENSH_IS2Y_EEEEEENSC_INS2_13RemoteSamplerENSE_IS33_NSF_IS33_EENSH_IS33_EEEEEENSC_INS2_18RemoteShaderModuleENSE_IS38_NSF_IS38_EENSH_IS38_EEEEEENSC_INS2_13RemoteTextureENSE_IS3D_NSF_IS3D_EENSH_IS3D_EEEEEENSC_INS2_17RemoteTextureViewENSE_IS3I_NSF_IS3I_EENSH_IS3I_EEEEEENSC_INS2_15RemoteXRBindingENSE_IS3N_NSF_IS3N_EENSH_IS3N_EEEEEENSC_INS2_16RemoteXRSubImageENSE_IS3S_NSF_IS3S_EENSH_IS3S_EEEEEENSC_INS2_23RemoteXRProjectionLayerENSE_IS3X_NSF_IS3X_EENSH_IS3X_EEEEEENSC_INS2_12RemoteXRViewENSE_IS42_NSF_IS42_EENSH_IS42_EEEEEEEEENS_11DefaultHashIS6_EENS_10HashTraitsIS6_EENS4A_IS47_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1ENS_10FastMallocEE3addIS47_EENS_18HashTableAddResultINS_17HashTableIteratorINS_9HashTableIS6_NS_12KeyValuePairIS6_S47_EENS_24KeyValuePairKeyExtractorIS4M_EES49_NS4G_18KeyValuePairTraitsES4B_S4F_EES6_S4M_S4O_S49_S4P_S4B_EEEERKS6_OT_((v3 + 24), &v29, &v26, v28);
      if (v27 != 255)
      {
        _ZN5mpark6detail10visitation3alt9visit_altINS0_4dtorEJRNS0_10destructorINS0_6traitsIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueIN6WebKit13RemoteAdapterEN3WTF6RefPtrISC_NSD_12RawPtrTraitsISC_EENSD_21DefaultRefDerefTraitsISC_EEEEEENSA_INSB_15RemoteBindGroupENSE_ISL_NSF_ISL_EENSH_ISL_EEEEEENSA_INSB_21RemoteBindGroupLayoutENSE_ISQ_NSF_ISQ_EENSH_ISQ_EEEEEENSA_INSB_12RemoteBufferENSE_ISV_NSF_ISV_EENSH_ISV_EEEEEENSA_INSB_19RemoteCommandBufferENSE_IS10_NSF_IS10_EENSH_IS10_EEEEEENSA_INSB_20RemoteCommandEncoderENSE_IS15_NSF_IS15_EENSH_IS15_EEEEEENSA_INSB_27RemoteCompositorIntegrationENSE_IS1A_NSF_IS1A_EENSH_IS1A_EEEEEENSA_INSB_24RemoteComputePassEncoderENSE_IS1F_NSF_IS1F_EENSH_IS1F_EEEEEENSA_INSB_21RemoteComputePipelineENSE_IS1K_NSF_IS1K_EENSH_IS1K_EEEEEENSA_INSB_12RemoteDeviceENSE_IS1P_NSF_IS1P_EENSH_IS1P_EEEEEENSA_INSB_21RemoteExternalTextureENSE_IS1U_NSF_IS1U_EENSH_IS1U_EEEEEENSA_INSB_20RemotePipelineLayoutENSE_IS1Z_NSF_IS1Z_EENSH_IS1Z_EEEEEENSA_INSB_25RemotePresentationContextENSE_IS24_NSF_IS24_EENSH_IS24_EEEEEENSA_INSB_14RemoteQuerySetENSE_IS29_NSF_IS29_EENSH_IS29_EEEEEENSA_INSB_11RemoteQueueENSE_IS2E_NSF_IS2E_EENSH_IS2E_EEEEEENSA_INSB_25RemoteRenderBundleEncoderENSE_IS2J_NSF_IS2J_EENSH_IS2J_EEEEEENSA_INSB_18RemoteRenderBundleENSE_IS2O_NSF_IS2O_EENSH_IS2O_EEEEEENSA_INSB_23RemoteRenderPassEncoderENSE_IS2T_NSF_IS2T_EENSH_IS2T_EEEEEENSA_INSB_20RemoteRenderPipelineENSE_IS2Y_NSF_IS2Y_EENSH_IS2Y_EEEEEENSA_INSB_13RemoteSamplerENSE_IS33_NSF_IS33_EENSH_IS33_EEEEEENSA_INSB_18RemoteShaderModuleENSE_IS38_NSF_IS38_EENSH_IS38_EEEEEENSA_INSB_13RemoteTextureENSE_IS3D_NSF_IS3D_EENSH_IS3D_EEEEEENSA_INSB_17RemoteTextureViewENSE_IS3I_NSF_IS3I_EENSH_IS3I_EEEEEENSA_INSB_15RemoteXRBindingENSE_IS3N_NSF_IS3N_EENSH_IS3N_EEEEEENSA_INSB_16RemoteXRSubImageENSE_IS3S_NSF_IS3S_EENSH_IS3S_EEEEEENSA_INSB_23RemoteXRProjectionLayerENSE_IS3X_NSF_IS3X_EENSH_IS3X_EEEEEENSA_INSB_12RemoteXRViewENSE_IS42_NSF_IS42_EENSH_IS42_EEEEEEEEELNS0_5TraitE1EEEEEEDcOT_DpOT0_(&v30, &v26);
      }

      v27 = -1;
      IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteXRSubImage,WTF::RefPtr<WebKit::RemoteXRSubImage,WTF::RawPtrTraits<WebKit::RemoteXRSubImage>,WTF::DefaultRefDerefTraits<WebKit::RemoteXRSubImage>>>::~ScopedActiveMessageReceiveQueue(&v25);
      if (atomic_fetch_add((v15 + 8), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, (v15 + 8));
        (*(*v15 + 8))(v15);
      }

      v21 = v23;
      v23 = 0;
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

LABEL_26:
      v7 = v24;
      v24 = 0;
      if (!v7)
      {
        return WTF::RefCounted<WebKit::WebGPU::ObjectHeap>::deref((v3 + 16), v6);
      }

      goto LABEL_29;
    }

    __break(0xC471u);
LABEL_38:
    JUMPOUT(0x19DB85E20);
  }

  v24 = 0;
LABEL_29:
  if (atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v7);
    WTF::fastFree(v7, v6);
  }

  return WTF::RefCounted<WebKit::WebGPU::ObjectHeap>::deref((v3 + 16), v6);
}

uint64_t WebKit::WebGPU::ObjectHeap::convertXRProjectionLayerFromBacking@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v11 = a2;
  v5 = _ZN3WTF9HashTableINS_23ObjectIdentifierGenericIN6WebKit20WebGPUIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEENS_12KeyValuePairIS6_N5mpark7variantIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueINS2_13RemoteAdapterENS_6RefPtrISE_NS_12RawPtrTraitsISE_EENS_21DefaultRefDerefTraitsISE_EEEEEENSD_INS2_15RemoteBindGroupENSF_ISM_NSG_ISM_EENSI_ISM_EEEEEENSD_INS2_21RemoteBindGroupLayoutENSF_ISR_NSG_ISR_EENSI_ISR_EEEEEENSD_INS2_12RemoteBufferENSF_ISW_NSG_ISW_EENSI_ISW_EEEEEENSD_INS2_19RemoteCommandBufferENSF_IS11_NSG_IS11_EENSI_IS11_EEEEEENSD_INS2_20RemoteCommandEncoderENSF_IS16_NSG_IS16_EENSI_IS16_EEEEEENSD_INS2_27RemoteCompositorIntegrationENSF_IS1B_NSG_IS1B_EENSI_IS1B_EEEEEENSD_INS2_24RemoteComputePassEncoderENSF_IS1G_NSG_IS1G_EENSI_IS1G_EEEEEENSD_INS2_21RemoteComputePipelineENSF_IS1L_NSG_IS1L_EENSI_IS1L_EEEEEENSD_INS2_12RemoteDeviceENSF_IS1Q_NSG_IS1Q_EENSI_IS1Q_EEEEEENSD_INS2_21RemoteExternalTextureENSF_IS1V_NSG_IS1V_EENSI_IS1V_EEEEEENSD_INS2_20RemotePipelineLayoutENSF_IS20_NSG_IS20_EENSI_IS20_EEEEEENSD_INS2_25RemotePresentationContextENSF_IS25_NSG_IS25_EENSI_IS25_EEEEEENSD_INS2_14RemoteQuerySetENSF_IS2A_NSG_IS2A_EENSI_IS2A_EEEEEENSD_INS2_11RemoteQueueENSF_IS2F_NSG_IS2F_EENSI_IS2F_EEEEEENSD_INS2_25RemoteRenderBundleEncoderENSF_IS2K_NSG_IS2K_EENSI_IS2K_EEEEEENSD_INS2_18RemoteRenderBundleENSF_IS2P_NSG_IS2P_EENSI_IS2P_EEEEEENSD_INS2_23RemoteRenderPassEncoderENSF_IS2U_NSG_IS2U_EENSI_IS2U_EEEEEENSD_INS2_20RemoteRenderPipelineENSF_IS2Z_NSG_IS2Z_EENSI_IS2Z_EEEEEENSD_INS2_13RemoteSamplerENSF_IS34_NSG_IS34_EENSI_IS34_EEEEEENSD_INS2_18RemoteShaderModuleENSF_IS39_NSG_IS39_EENSI_IS39_EEEEEENSD_INS2_13RemoteTextureENSF_IS3E_NSG_IS3E_EENSI_IS3E_EEEEEENSD_INS2_17RemoteTextureViewENSF_IS3J_NSG_IS3J_EENSI_IS3J_EEEEEENSD_INS2_15RemoteXRBindingENSF_IS3O_NSG_IS3O_EENSI_IS3O_EEEEEENSD_INS2_16RemoteXRSubImageENSF_IS3T_NSG_IS3T_EENSI_IS3T_EEEEEENSD_INS2_23RemoteXRProjectionLayerENSF_IS3Y_NSG_IS3Y_EENSI_IS3Y_EEEEEENSD_INS2_12RemoteXRViewENSF_IS43_NSG_IS43_EENSI_IS43_EEEEEEEEEEENS_24KeyValuePairKeyExtractorIS49_EENS_11DefaultHashIS6_EENS_7HashMapIS6_S48_S4D_NS_10HashTraitsIS6_EENS4F_IS48_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1ENS_10FastMallocEE18KeyValuePairTraitsES4G_S4K_E4findINS_22IdentityHashTranslatorIS4M_S4D_EELS4J_1ES6_EENS_17HashTableIteratorIS4N_S6_S49_S4B_S4D_S4M_S4G_EERKT1_((a1 + 24), &v11);
  v6 = *(a1 + 24);
  if (v6)
  {
    v6 += 3 * *(v6 - 1);
  }

  if (v6 != v5 && *(v5 + 16) == 26 && (v7 = *(v5[1] + 16)) != 0)
  {
    result = *(v7 + 8);
    if (result)
    {
      goto LABEL_11;
    }

    result = WTF::fastCompactMalloc(0x10);
    *result = 1;
    *(result + 8) = v7;
    v10 = *(v7 + 8);
    *(v7 + 8) = result;
    if (!v10)
    {
      goto LABEL_11;
    }

    if (atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v10);
      WTF::fastFree(v10, v9);
    }

    result = *(v7 + 8);
    if (result)
    {
LABEL_11:
      atomic_fetch_add(result, 1u);
    }
  }

  else
  {
    result = 0;
  }

  *a3 = result;
  return result;
}

void *WebKit::RemoteXRBinding::stopListeningForIPC(WebKit::RemoteXRBinding *this)
{
  v1 = *(this + 4);
  atomic_fetch_add(v1 + 2, 1u);
  result = IPC::StreamServerConnection::stopReceivingMessages(v1, 0x85u, *(this + 7));
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v1 + 2);
    v3 = *(*v1 + 8);

    return v3(v1);
  }

  return result;
}

void WebKit::RemoteXRProjectionLayer::~RemoteXRProjectionLayer(WebKit::RemoteXRProjectionLayer *this, void *a2)
{
  v3 = *(this + 6);
  *(this + 6) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  v4 = *(this + 4);
  *(this + 4) = 0;
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 2);
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 3);
  *(this + 3) = 0;
  if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5);
    WTF::fastFree(v5, a2);
  }

  v6 = *(this + 2);
  *(this + 2) = 0;
  if (v6)
  {
    if (v6[4] == 1)
    {
      (*(*v6 + 8))(v6);
    }

    else
    {
      --v6[4];
    }
  }
}

{
  WebKit::RemoteXRProjectionLayer::~RemoteXRProjectionLayer(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

uint64_t WebKit::RemoteXRProjectionLayer::startFrame(uint64_t a1)
{
  v1 = *(a1 + 16);
  ++v1[4];
  result = (*(*v1 + 80))(v1);
  if (v1[4] == 1)
  {
    v3 = *(*v1 + 8);

    return v3(v1);
  }

  else
  {
    --v1[4];
  }

  return result;
}

void *WebKit::RemoteXRProjectionLayer::stopListeningForIPC(WebKit::RemoteXRProjectionLayer *this)
{
  v1 = *(this + 4);
  atomic_fetch_add(v1 + 2, 1u);
  result = IPC::StreamServerConnection::stopReceivingMessages(v1, 0x86u, *(this + 5));
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v1 + 2);
    v3 = *(*v1 + 8);

    return v3(v1);
  }

  return result;
}

void WebKit::RemoteXRSubImage::~RemoteXRSubImage(WebKit::RemoteXRSubImage *this, void *a2)
{
  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  v4 = *(this + 6);
  *(this + 6) = 0;
  if (v4)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v4, a2);
  }

  v5 = *(this + 4);
  *(this + 4) = 0;
  if (v5 && atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5 + 2);
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 3);
  *(this + 3) = 0;
  if (v6 && atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v6);
    WTF::fastFree(v6, a2);
  }

  v7 = *(this + 2);
  *(this + 2) = 0;
  if (v7)
  {
    if (v7[4] == 1)
    {
      (*(*v7 + 8))(v7);
    }

    else
    {
      --v7[4];
    }
  }
}

{
  WebKit::RemoteXRSubImage::~RemoteXRSubImage(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

_DWORD *WebKit::RemoteXRSubImage::getColorTexture(void *a1, void *a2)
{
  v4 = a1[2];
  ++v4[4];
  (*(*v4 + 16))(&v18, v4);
  if (v4[4] == 1)
  {
    (*(*v4 + 8))(v4);
  }

  else
  {
    --v4[4];
  }

  v5 = a1[6];
  if (!v5)
  {
    result = v18;
    if (!v18)
    {
      return result;
    }

    goto LABEL_5;
  }

  WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v5, a1[5], &v17);
  v8 = v17;
  result = v18;
  if (v18)
  {
    if (!v17)
    {
LABEL_5:
      v18 = 0;
LABEL_6:
      if (result[4] == 1)
      {
        return (*(*result + 8))(result);
      }

      --result[4];
      return result;
    }

    v9 = *(a1[3] + 8);
    if (!v9 || (++*(v9 + 16), (v10 = *(a1[8] + 8)) == 0))
    {
      __break(0xC471u);
      JUMPOUT(0x19DB86640);
    }

    atomic_fetch_add(v10 + 2, 1u);
    v11 = v18;
    v12 = a1[4];
    atomic_fetch_add((v12 + 8), 1u);
    v16 = v12;
    v13 = WebKit::RemoteTexture::operator new(0x48, v7);
    WebKit::RemoteTexture::RemoteTexture(v13, v8, v10, v11, v9, &v16, a2);
    v14 = v16;
    v16 = 0;
    if (v14 && atomic_fetch_add(v14 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v14 + 2);
      (*(*v14 + 8))(v14);
    }

    if (atomic_fetch_add(v10 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v10 + 2);
      (*(*v10 + 8))(v10);
    }

    WebKit::WebGPU::ObjectHeap::addObject(v9, a2, v13);
    if (atomic_fetch_add((v13 + 8), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, (v13 + 8));
      (*(*v13 + 8))(v13);
    }

    WTF::RefCounted<WebKit::WebGPU::ObjectHeap>::deref((v9 + 16), v15);
    v8 = v17;
  }

  v17 = 0;
  if (v8)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v8 + 16));
  }

  result = v18;
  v18 = 0;
  if (result)
  {
    goto LABEL_6;
  }

  return result;
}

WebKit::RemoteTexture **WebKit::WebGPU::ObjectHeap::addObject(uint64_t a1, void *a2, atomic_uint *a3)
{
  v8 = a2;
  atomic_fetch_add(a3 + 2, 1u);
  v4 = 0;
  v5 = a3;
  v6 = 22;
  _ZN3WTF7HashMapINS_23ObjectIdentifierGenericIN6WebKit20WebGPUIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEN5mpark7variantIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueINS2_13RemoteAdapterENS_6RefPtrISD_NS_12RawPtrTraitsISD_EENS_21DefaultRefDerefTraitsISD_EEEEEENSC_INS2_15RemoteBindGroupENSE_ISL_NSF_ISL_EENSH_ISL_EEEEEENSC_INS2_21RemoteBindGroupLayoutENSE_ISQ_NSF_ISQ_EENSH_ISQ_EEEEEENSC_INS2_12RemoteBufferENSE_ISV_NSF_ISV_EENSH_ISV_EEEEEENSC_INS2_19RemoteCommandBufferENSE_IS10_NSF_IS10_EENSH_IS10_EEEEEENSC_INS2_20RemoteCommandEncoderENSE_IS15_NSF_IS15_EENSH_IS15_EEEEEENSC_INS2_27RemoteCompositorIntegrationENSE_IS1A_NSF_IS1A_EENSH_IS1A_EEEEEENSC_INS2_24RemoteComputePassEncoderENSE_IS1F_NSF_IS1F_EENSH_IS1F_EEEEEENSC_INS2_21RemoteComputePipelineENSE_IS1K_NSF_IS1K_EENSH_IS1K_EEEEEENSC_INS2_12RemoteDeviceENSE_IS1P_NSF_IS1P_EENSH_IS1P_EEEEEENSC_INS2_21RemoteExternalTextureENSE_IS1U_NSF_IS1U_EENSH_IS1U_EEEEEENSC_INS2_20RemotePipelineLayoutENSE_IS1Z_NSF_IS1Z_EENSH_IS1Z_EEEEEENSC_INS2_25RemotePresentationContextENSE_IS24_NSF_IS24_EENSH_IS24_EEEEEENSC_INS2_14RemoteQuerySetENSE_IS29_NSF_IS29_EENSH_IS29_EEEEEENSC_INS2_11RemoteQueueENSE_IS2E_NSF_IS2E_EENSH_IS2E_EEEEEENSC_INS2_25RemoteRenderBundleEncoderENSE_IS2J_NSF_IS2J_EENSH_IS2J_EEEEEENSC_INS2_18RemoteRenderBundleENSE_IS2O_NSF_IS2O_EENSH_IS2O_EEEEEENSC_INS2_23RemoteRenderPassEncoderENSE_IS2T_NSF_IS2T_EENSH_IS2T_EEEEEENSC_INS2_20RemoteRenderPipelineENSE_IS2Y_NSF_IS2Y_EENSH_IS2Y_EEEEEENSC_INS2_13RemoteSamplerENSE_IS33_NSF_IS33_EENSH_IS33_EEEEEENSC_INS2_18RemoteShaderModuleENSE_IS38_NSF_IS38_EENSH_IS38_EEEEEENSC_INS2_13RemoteTextureENSE_IS3D_NSF_IS3D_EENSH_IS3D_EEEEEENSC_INS2_17RemoteTextureViewENSE_IS3I_NSF_IS3I_EENSH_IS3I_EEEEEENSC_INS2_15RemoteXRBindingENSE_IS3N_NSF_IS3N_EENSH_IS3N_EEEEEENSC_INS2_16RemoteXRSubImageENSE_IS3S_NSF_IS3S_EENSH_IS3S_EEEEEENSC_INS2_23RemoteXRProjectionLayerENSE_IS3X_NSF_IS3X_EENSH_IS3X_EEEEEENSC_INS2_12RemoteXRViewENSE_IS42_NSF_IS42_EENSH_IS42_EEEEEEEEENS_11DefaultHashIS6_EENS_10HashTraitsIS6_EENS4A_IS47_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1ENS_10FastMallocEE3addIS47_EENS_18HashTableAddResultINS_17HashTableIteratorINS_9HashTableIS6_NS_12KeyValuePairIS6_S47_EENS_24KeyValuePairKeyExtractorIS4M_EES49_NS4G_18KeyValuePairTraitsES4B_S4F_EES6_S4M_S4O_S49_S4P_S4B_EEEERKS6_OT_((a1 + 24), &v8, &v5, v7);
  if (v6 != 255)
  {
    _ZN5mpark6detail10visitation3alt9visit_altINS0_4dtorEJRNS0_10destructorINS0_6traitsIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueIN6WebKit13RemoteAdapterEN3WTF6RefPtrISC_NSD_12RawPtrTraitsISC_EENSD_21DefaultRefDerefTraitsISC_EEEEEENSA_INSB_15RemoteBindGroupENSE_ISL_NSF_ISL_EENSH_ISL_EEEEEENSA_INSB_21RemoteBindGroupLayoutENSE_ISQ_NSF_ISQ_EENSH_ISQ_EEEEEENSA_INSB_12RemoteBufferENSE_ISV_NSF_ISV_EENSH_ISV_EEEEEENSA_INSB_19RemoteCommandBufferENSE_IS10_NSF_IS10_EENSH_IS10_EEEEEENSA_INSB_20RemoteCommandEncoderENSE_IS15_NSF_IS15_EENSH_IS15_EEEEEENSA_INSB_27RemoteCompositorIntegrationENSE_IS1A_NSF_IS1A_EENSH_IS1A_EEEEEENSA_INSB_24RemoteComputePassEncoderENSE_IS1F_NSF_IS1F_EENSH_IS1F_EEEEEENSA_INSB_21RemoteComputePipelineENSE_IS1K_NSF_IS1K_EENSH_IS1K_EEEEEENSA_INSB_12RemoteDeviceENSE_IS1P_NSF_IS1P_EENSH_IS1P_EEEEEENSA_INSB_21RemoteExternalTextureENSE_IS1U_NSF_IS1U_EENSH_IS1U_EEEEEENSA_INSB_20RemotePipelineLayoutENSE_IS1Z_NSF_IS1Z_EENSH_IS1Z_EEEEEENSA_INSB_25RemotePresentationContextENSE_IS24_NSF_IS24_EENSH_IS24_EEEEEENSA_INSB_14RemoteQuerySetENSE_IS29_NSF_IS29_EENSH_IS29_EEEEEENSA_INSB_11RemoteQueueENSE_IS2E_NSF_IS2E_EENSH_IS2E_EEEEEENSA_INSB_25RemoteRenderBundleEncoderENSE_IS2J_NSF_IS2J_EENSH_IS2J_EEEEEENSA_INSB_18RemoteRenderBundleENSE_IS2O_NSF_IS2O_EENSH_IS2O_EEEEEENSA_INSB_23RemoteRenderPassEncoderENSE_IS2T_NSF_IS2T_EENSH_IS2T_EEEEEENSA_INSB_20RemoteRenderPipelineENSE_IS2Y_NSF_IS2Y_EENSH_IS2Y_EEEEEENSA_INSB_13RemoteSamplerENSE_IS33_NSF_IS33_EENSH_IS33_EEEEEENSA_INSB_18RemoteShaderModuleENSE_IS38_NSF_IS38_EENSH_IS38_EEEEEENSA_INSB_13RemoteTextureENSE_IS3D_NSF_IS3D_EENSH_IS3D_EEEEEENSA_INSB_17RemoteTextureViewENSE_IS3I_NSF_IS3I_EENSH_IS3I_EEEEEENSA_INSB_15RemoteXRBindingENSE_IS3N_NSF_IS3N_EENSH_IS3N_EEEEEENSA_INSB_16RemoteXRSubImageENSE_IS3S_NSF_IS3S_EENSH_IS3S_EEEEEENSA_INSB_23RemoteXRProjectionLayerENSE_IS3X_NSF_IS3X_EENSH_IS3X_EEEEEENSA_INSB_12RemoteXRViewENSE_IS42_NSF_IS42_EENSH_IS42_EEEEEEEEELNS0_5TraitE1EEEEEEDcOT_DpOT0_(&v9, &v5);
  }

  v6 = -1;
  return IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteTexture,WTF::RefPtr<WebKit::RemoteTexture,WTF::RawPtrTraits<WebKit::RemoteTexture>,WTF::DefaultRefDerefTraits<WebKit::RemoteTexture>>>::~ScopedActiveMessageReceiveQueue(&v4);
}

_DWORD *WebKit::RemoteXRSubImage::getDepthTexture(void *a1, void *a2)
{
  v4 = a1[2];
  ++v4[4];
  (*(*v4 + 24))(&v18, v4);
  if (v4[4] == 1)
  {
    (*(*v4 + 8))(v4);
  }

  else
  {
    --v4[4];
  }

  v5 = a1[6];
  if (!v5)
  {
    result = v18;
    if (!v18)
    {
      return result;
    }

    goto LABEL_5;
  }

  WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v5, a1[5], &v17);
  v8 = v17;
  result = v18;
  if (v18)
  {
    if (!v17)
    {
LABEL_5:
      v18 = 0;
LABEL_6:
      if (result[4] == 1)
      {
        return (*(*result + 8))(result);
      }

      --result[4];
      return result;
    }

    v9 = *(a1[3] + 8);
    if (!v9 || (++*(v9 + 16), (v10 = *(a1[8] + 8)) == 0))
    {
      __break(0xC471u);
      JUMPOUT(0x19DB86994);
    }

    atomic_fetch_add(v10 + 2, 1u);
    v11 = v18;
    v12 = a1[4];
    atomic_fetch_add((v12 + 8), 1u);
    v16 = v12;
    v13 = WebKit::RemoteTexture::operator new(0x48, v7);
    WebKit::RemoteTexture::RemoteTexture(v13, v8, v10, v11, v9, &v16, a2);
    v14 = v16;
    v16 = 0;
    if (v14 && atomic_fetch_add(v14 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v14 + 2);
      (*(*v14 + 8))(v14);
    }

    if (atomic_fetch_add(v10 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v10 + 2);
      (*(*v10 + 8))(v10);
    }

    WebKit::WebGPU::ObjectHeap::addObject(v9, a2, v13);
    if (atomic_fetch_add((v13 + 8), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, (v13 + 8));
      (*(*v13 + 8))(v13);
    }

    WTF::RefCounted<WebKit::WebGPU::ObjectHeap>::deref((v9 + 16), v15);
    v8 = v17;
  }

  v17 = 0;
  if (v8)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v8 + 16));
  }

  result = v18;
  v18 = 0;
  if (result)
  {
    goto LABEL_6;
  }

  return result;
}

void *WebKit::RemoteXRSubImage::stopListeningForIPC(WebKit::RemoteXRSubImage *this)
{
  v1 = *(this + 4);
  atomic_fetch_add(v1 + 2, 1u);
  result = IPC::StreamServerConnection::stopReceivingMessages(v1, 0x87u, *(this + 7));
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v1 + 2);
    v3 = *(*v1 + 8);

    return v3(v1);
  }

  return result;
}

void *WebKit::RemoteXRView::stopListeningForIPC(WebKit::RemoteXRView *this)
{
  v1 = *(this + 4);
  atomic_fetch_add(v1 + 2, 1u);
  result = IPC::StreamServerConnection::stopReceivingMessages(v1, 0x88u, *(this + 5));
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v1 + 2);
    v3 = *(*v1 + 8);

    return v3(v1);
  }

  return result;
}

void WebKit::WebGPU::ObjectHeap::~ObjectHeap(WebKit::WebGPU::ObjectHeap *this, void *a2)
{
  v3 = *(this + 3);
  if (v3)
  {
    _ZN3WTF9HashTableINS_23ObjectIdentifierGenericIN6WebKit20WebGPUIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEENS_12KeyValuePairIS6_N5mpark7variantIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueINS2_13RemoteAdapterENS_6RefPtrISE_NS_12RawPtrTraitsISE_EENS_21DefaultRefDerefTraitsISE_EEEEEENSD_INS2_15RemoteBindGroupENSF_ISM_NSG_ISM_EENSI_ISM_EEEEEENSD_INS2_21RemoteBindGroupLayoutENSF_ISR_NSG_ISR_EENSI_ISR_EEEEEENSD_INS2_12RemoteBufferENSF_ISW_NSG_ISW_EENSI_ISW_EEEEEENSD_INS2_19RemoteCommandBufferENSF_IS11_NSG_IS11_EENSI_IS11_EEEEEENSD_INS2_20RemoteCommandEncoderENSF_IS16_NSG_IS16_EENSI_IS16_EEEEEENSD_INS2_27RemoteCompositorIntegrationENSF_IS1B_NSG_IS1B_EENSI_IS1B_EEEEEENSD_INS2_24RemoteComputePassEncoderENSF_IS1G_NSG_IS1G_EENSI_IS1G_EEEEEENSD_INS2_21RemoteComputePipelineENSF_IS1L_NSG_IS1L_EENSI_IS1L_EEEEEENSD_INS2_12RemoteDeviceENSF_IS1Q_NSG_IS1Q_EENSI_IS1Q_EEEEEENSD_INS2_21RemoteExternalTextureENSF_IS1V_NSG_IS1V_EENSI_IS1V_EEEEEENSD_INS2_20RemotePipelineLayoutENSF_IS20_NSG_IS20_EENSI_IS20_EEEEEENSD_INS2_25RemotePresentationContextENSF_IS25_NSG_IS25_EENSI_IS25_EEEEEENSD_INS2_14RemoteQuerySetENSF_IS2A_NSG_IS2A_EENSI_IS2A_EEEEEENSD_INS2_11RemoteQueueENSF_IS2F_NSG_IS2F_EENSI_IS2F_EEEEEENSD_INS2_25RemoteRenderBundleEncoderENSF_IS2K_NSG_IS2K_EENSI_IS2K_EEEEEENSD_INS2_18RemoteRenderBundleENSF_IS2P_NSG_IS2P_EENSI_IS2P_EEEEEENSD_INS2_23RemoteRenderPassEncoderENSF_IS2U_NSG_IS2U_EENSI_IS2U_EEEEEENSD_INS2_20RemoteRenderPipelineENSF_IS2Z_NSG_IS2Z_EENSI_IS2Z_EEEEEENSD_INS2_13RemoteSamplerENSF_IS34_NSG_IS34_EENSI_IS34_EEEEEENSD_INS2_18RemoteShaderModuleENSF_IS39_NSG_IS39_EENSI_IS39_EEEEEENSD_INS2_13RemoteTextureENSF_IS3E_NSG_IS3E_EENSI_IS3E_EEEEEENSD_INS2_17RemoteTextureViewENSF_IS3J_NSG_IS3J_EENSI_IS3J_EEEEEENSD_INS2_15RemoteXRBindingENSF_IS3O_NSG_IS3O_EENSI_IS3O_EEEEEENSD_INS2_16RemoteXRSubImageENSF_IS3T_NSG_IS3T_EENSI_IS3T_EEEEEENSD_INS2_23RemoteXRProjectionLayerENSF_IS3Y_NSG_IS3Y_EENSI_IS3Y_EEEEEENSD_INS2_12RemoteXRViewENSF_IS43_NSG_IS43_EENSI_IS43_EEEEEEEEEEENS_24KeyValuePairKeyExtractorIS49_EENS_11DefaultHashIS6_EENS_7HashMapIS6_S48_S4D_NS_10HashTraitsIS6_EENS4F_IS48_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1ENS_10FastMallocEE18KeyValuePairTraitsES4G_S4K_E15deallocateTableEPS49_(v3, a2);
  }

  if (*(this + 4) == 1)
  {
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, a2);
  }

  else
  {
    __break(0xC471u);
  }
}

{
  WebKit::WebGPU::ObjectHeap::~ObjectHeap(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

WebKit::RemoteAdapter **WebKit::WebGPU::ObjectHeap::addObject(uint64_t a1, void *a2, atomic_uint *a3)
{
  v8 = a2;
  atomic_fetch_add(a3 + 2, 1u);
  v4 = 0;
  v5 = a3;
  v6 = 1;
  _ZN3WTF7HashMapINS_23ObjectIdentifierGenericIN6WebKit20WebGPUIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEN5mpark7variantIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueINS2_13RemoteAdapterENS_6RefPtrISD_NS_12RawPtrTraitsISD_EENS_21DefaultRefDerefTraitsISD_EEEEEENSC_INS2_15RemoteBindGroupENSE_ISL_NSF_ISL_EENSH_ISL_EEEEEENSC_INS2_21RemoteBindGroupLayoutENSE_ISQ_NSF_ISQ_EENSH_ISQ_EEEEEENSC_INS2_12RemoteBufferENSE_ISV_NSF_ISV_EENSH_ISV_EEEEEENSC_INS2_19RemoteCommandBufferENSE_IS10_NSF_IS10_EENSH_IS10_EEEEEENSC_INS2_20RemoteCommandEncoderENSE_IS15_NSF_IS15_EENSH_IS15_EEEEEENSC_INS2_27RemoteCompositorIntegrationENSE_IS1A_NSF_IS1A_EENSH_IS1A_EEEEEENSC_INS2_24RemoteComputePassEncoderENSE_IS1F_NSF_IS1F_EENSH_IS1F_EEEEEENSC_INS2_21RemoteComputePipelineENSE_IS1K_NSF_IS1K_EENSH_IS1K_EEEEEENSC_INS2_12RemoteDeviceENSE_IS1P_NSF_IS1P_EENSH_IS1P_EEEEEENSC_INS2_21RemoteExternalTextureENSE_IS1U_NSF_IS1U_EENSH_IS1U_EEEEEENSC_INS2_20RemotePipelineLayoutENSE_IS1Z_NSF_IS1Z_EENSH_IS1Z_EEEEEENSC_INS2_25RemotePresentationContextENSE_IS24_NSF_IS24_EENSH_IS24_EEEEEENSC_INS2_14RemoteQuerySetENSE_IS29_NSF_IS29_EENSH_IS29_EEEEEENSC_INS2_11RemoteQueueENSE_IS2E_NSF_IS2E_EENSH_IS2E_EEEEEENSC_INS2_25RemoteRenderBundleEncoderENSE_IS2J_NSF_IS2J_EENSH_IS2J_EEEEEENSC_INS2_18RemoteRenderBundleENSE_IS2O_NSF_IS2O_EENSH_IS2O_EEEEEENSC_INS2_23RemoteRenderPassEncoderENSE_IS2T_NSF_IS2T_EENSH_IS2T_EEEEEENSC_INS2_20RemoteRenderPipelineENSE_IS2Y_NSF_IS2Y_EENSH_IS2Y_EEEEEENSC_INS2_13RemoteSamplerENSE_IS33_NSF_IS33_EENSH_IS33_EEEEEENSC_INS2_18RemoteShaderModuleENSE_IS38_NSF_IS38_EENSH_IS38_EEEEEENSC_INS2_13RemoteTextureENSE_IS3D_NSF_IS3D_EENSH_IS3D_EEEEEENSC_INS2_17RemoteTextureViewENSE_IS3I_NSF_IS3I_EENSH_IS3I_EEEEEENSC_INS2_15RemoteXRBindingENSE_IS3N_NSF_IS3N_EENSH_IS3N_EEEEEENSC_INS2_16RemoteXRSubImageENSE_IS3S_NSF_IS3S_EENSH_IS3S_EEEEEENSC_INS2_23RemoteXRProjectionLayerENSE_IS3X_NSF_IS3X_EENSH_IS3X_EEEEEENSC_INS2_12RemoteXRViewENSE_IS42_NSF_IS42_EENSH_IS42_EEEEEEEEENS_11DefaultHashIS6_EENS_10HashTraitsIS6_EENS4A_IS47_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1ENS_10FastMallocEE3addIS47_EENS_18HashTableAddResultINS_17HashTableIteratorINS_9HashTableIS6_NS_12KeyValuePairIS6_S47_EENS_24KeyValuePairKeyExtractorIS4M_EES49_NS4G_18KeyValuePairTraitsES4B_S4F_EES6_S4M_S4O_S49_S4P_S4B_EEEERKS6_OT_((a1 + 24), &v8, &v5, v7);
  if (v6 != 255)
  {
    _ZN5mpark6detail10visitation3alt9visit_altINS0_4dtorEJRNS0_10destructorINS0_6traitsIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueIN6WebKit13RemoteAdapterEN3WTF6RefPtrISC_NSD_12RawPtrTraitsISC_EENSD_21DefaultRefDerefTraitsISC_EEEEEENSA_INSB_15RemoteBindGroupENSE_ISL_NSF_ISL_EENSH_ISL_EEEEEENSA_INSB_21RemoteBindGroupLayoutENSE_ISQ_NSF_ISQ_EENSH_ISQ_EEEEEENSA_INSB_12RemoteBufferENSE_ISV_NSF_ISV_EENSH_ISV_EEEEEENSA_INSB_19RemoteCommandBufferENSE_IS10_NSF_IS10_EENSH_IS10_EEEEEENSA_INSB_20RemoteCommandEncoderENSE_IS15_NSF_IS15_EENSH_IS15_EEEEEENSA_INSB_27RemoteCompositorIntegrationENSE_IS1A_NSF_IS1A_EENSH_IS1A_EEEEEENSA_INSB_24RemoteComputePassEncoderENSE_IS1F_NSF_IS1F_EENSH_IS1F_EEEEEENSA_INSB_21RemoteComputePipelineENSE_IS1K_NSF_IS1K_EENSH_IS1K_EEEEEENSA_INSB_12RemoteDeviceENSE_IS1P_NSF_IS1P_EENSH_IS1P_EEEEEENSA_INSB_21RemoteExternalTextureENSE_IS1U_NSF_IS1U_EENSH_IS1U_EEEEEENSA_INSB_20RemotePipelineLayoutENSE_IS1Z_NSF_IS1Z_EENSH_IS1Z_EEEEEENSA_INSB_25RemotePresentationContextENSE_IS24_NSF_IS24_EENSH_IS24_EEEEEENSA_INSB_14RemoteQuerySetENSE_IS29_NSF_IS29_EENSH_IS29_EEEEEENSA_INSB_11RemoteQueueENSE_IS2E_NSF_IS2E_EENSH_IS2E_EEEEEENSA_INSB_25RemoteRenderBundleEncoderENSE_IS2J_NSF_IS2J_EENSH_IS2J_EEEEEENSA_INSB_18RemoteRenderBundleENSE_IS2O_NSF_IS2O_EENSH_IS2O_EEEEEENSA_INSB_23RemoteRenderPassEncoderENSE_IS2T_NSF_IS2T_EENSH_IS2T_EEEEEENSA_INSB_20RemoteRenderPipelineENSE_IS2Y_NSF_IS2Y_EENSH_IS2Y_EEEEEENSA_INSB_13RemoteSamplerENSE_IS33_NSF_IS33_EENSH_IS33_EEEEEENSA_INSB_18RemoteShaderModuleENSE_IS38_NSF_IS38_EENSH_IS38_EEEEEENSA_INSB_13RemoteTextureENSE_IS3D_NSF_IS3D_EENSH_IS3D_EEEEEENSA_INSB_17RemoteTextureViewENSE_IS3I_NSF_IS3I_EENSH_IS3I_EEEEEENSA_INSB_15RemoteXRBindingENSE_IS3N_NSF_IS3N_EENSH_IS3N_EEEEEENSA_INSB_16RemoteXRSubImageENSE_IS3S_NSF_IS3S_EENSH_IS3S_EEEEEENSA_INSB_23RemoteXRProjectionLayerENSE_IS3X_NSF_IS3X_EENSH_IS3X_EEEEEENSA_INSB_12RemoteXRViewENSE_IS42_NSF_IS42_EENSH_IS42_EEEEEEEEELNS0_5TraitE1EEEEEEDcOT_DpOT0_(&v9, &v5);
  }

  v6 = -1;
  return IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteAdapter,WTF::RefPtr<WebKit::RemoteAdapter,WTF::RawPtrTraits<WebKit::RemoteAdapter>,WTF::DefaultRefDerefTraits<WebKit::RemoteAdapter>>>::~ScopedActiveMessageReceiveQueue(&v4);
}

char *_ZN3WTF7HashMapINS_23ObjectIdentifierGenericIN6WebKit20WebGPUIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEN5mpark7variantIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueINS2_13RemoteAdapterENS_6RefPtrISD_NS_12RawPtrTraitsISD_EENS_21DefaultRefDerefTraitsISD_EEEEEENSC_INS2_15RemoteBindGroupENSE_ISL_NSF_ISL_EENSH_ISL_EEEEEENSC_INS2_21RemoteBindGroupLayoutENSE_ISQ_NSF_ISQ_EENSH_ISQ_EEEEEENSC_INS2_12RemoteBufferENSE_ISV_NSF_ISV_EENSH_ISV_EEEEEENSC_INS2_19RemoteCommandBufferENSE_IS10_NSF_IS10_EENSH_IS10_EEEEEENSC_INS2_20RemoteCommandEncoderENSE_IS15_NSF_IS15_EENSH_IS15_EEEEEENSC_INS2_27RemoteCompositorIntegrationENSE_IS1A_NSF_IS1A_EENSH_IS1A_EEEEEENSC_INS2_24RemoteComputePassEncoderENSE_IS1F_NSF_IS1F_EENSH_IS1F_EEEEEENSC_INS2_21RemoteComputePipelineENSE_IS1K_NSF_IS1K_EENSH_IS1K_EEEEEENSC_INS2_12RemoteDeviceENSE_IS1P_NSF_IS1P_EENSH_IS1P_EEEEEENSC_INS2_21RemoteExternalTextureENSE_IS1U_NSF_IS1U_EENSH_IS1U_EEEEEENSC_INS2_20RemotePipelineLayoutENSE_IS1Z_NSF_IS1Z_EENSH_IS1Z_EEEEEENSC_INS2_25RemotePresentationContextENSE_IS24_NSF_IS24_EENSH_IS24_EEEEEENSC_INS2_14RemoteQuerySetENSE_IS29_NSF_IS29_EENSH_IS29_EEEEEENSC_INS2_11RemoteQueueENSE_IS2E_NSF_IS2E_EENSH_IS2E_EEEEEENSC_INS2_25RemoteRenderBundleEncoderENSE_IS2J_NSF_IS2J_EENSH_IS2J_EEEEEENSC_INS2_18RemoteRenderBundleENSE_IS2O_NSF_IS2O_EENSH_IS2O_EEEEEENSC_INS2_23RemoteRenderPassEncoderENSE_IS2T_NSF_IS2T_EENSH_IS2T_EEEEEENSC_INS2_20RemoteRenderPipelineENSE_IS2Y_NSF_IS2Y_EENSH_IS2Y_EEEEEENSC_INS2_13RemoteSamplerENSE_IS33_NSF_IS33_EENSH_IS33_EEEEEENSC_INS2_18RemoteShaderModuleENSE_IS38_NSF_IS38_EENSH_IS38_EEEEEENSC_INS2_13RemoteTextureENSE_IS3D_NSF_IS3D_EENSH_IS3D_EEEEEENSC_INS2_17RemoteTextureViewENSE_IS3I_NSF_IS3I_EENSH_IS3I_EEEEEENSC_INS2_15RemoteXRBindingENSE_IS3N_NSF_IS3N_EENSH_IS3N_EEEEEENSC_INS2_16RemoteXRSubImageENSE_IS3S_NSF_IS3S_EENSH_IS3S_EEEEEENSC_INS2_23RemoteXRProjectionLayerENSE_IS3X_NSF_IS3X_EENSH_IS3X_EEEEEENSC_INS2_12RemoteXRViewENSE_IS42_NSF_IS42_EENSH_IS42_EEEEEEEEENS_11DefaultHashIS6_EENS_10HashTraitsIS6_EENS4A_IS47_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1ENS_10FastMallocEE3addIS47_EENS_18HashTableAddResultINS_17HashTableIteratorINS_9HashTableIS6_NS_12KeyValuePairIS6_S47_EENS_24KeyValuePairKeyExtractorIS4M_EES49_NS4G_18KeyValuePairTraitsES4B_S4F_EES6_S4M_S4O_S49_S4P_S4B_EEEERKS6_OT_@<X0>(char *result@<X0>, void **a2@<X1>, void **a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a2;
  if (*a2 == -1 || !v5)
  {
    __break(0xC471u);
    JUMPOUT(0x19DB8774CLL);
  }

  v8 = result;
  v9 = *result;
  if (!*result)
  {
    result = _ZN3WTF9HashTableINS_23ObjectIdentifierGenericIN6WebKit20WebGPUIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEENS_12KeyValuePairIS6_N5mpark7variantIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueINS2_13RemoteAdapterENS_6RefPtrISE_NS_12RawPtrTraitsISE_EENS_21DefaultRefDerefTraitsISE_EEEEEENSD_INS2_15RemoteBindGroupENSF_ISM_NSG_ISM_EENSI_ISM_EEEEEENSD_INS2_21RemoteBindGroupLayoutENSF_ISR_NSG_ISR_EENSI_ISR_EEEEEENSD_INS2_12RemoteBufferENSF_ISW_NSG_ISW_EENSI_ISW_EEEEEENSD_INS2_19RemoteCommandBufferENSF_IS11_NSG_IS11_EENSI_IS11_EEEEEENSD_INS2_20RemoteCommandEncoderENSF_IS16_NSG_IS16_EENSI_IS16_EEEEEENSD_INS2_27RemoteCompositorIntegrationENSF_IS1B_NSG_IS1B_EENSI_IS1B_EEEEEENSD_INS2_24RemoteComputePassEncoderENSF_IS1G_NSG_IS1G_EENSI_IS1G_EEEEEENSD_INS2_21RemoteComputePipelineENSF_IS1L_NSG_IS1L_EENSI_IS1L_EEEEEENSD_INS2_12RemoteDeviceENSF_IS1Q_NSG_IS1Q_EENSI_IS1Q_EEEEEENSD_INS2_21RemoteExternalTextureENSF_IS1V_NSG_IS1V_EENSI_IS1V_EEEEEENSD_INS2_20RemotePipelineLayoutENSF_IS20_NSG_IS20_EENSI_IS20_EEEEEENSD_INS2_25RemotePresentationContextENSF_IS25_NSG_IS25_EENSI_IS25_EEEEEENSD_INS2_14RemoteQuerySetENSF_IS2A_NSG_IS2A_EENSI_IS2A_EEEEEENSD_INS2_11RemoteQueueENSF_IS2F_NSG_IS2F_EENSI_IS2F_EEEEEENSD_INS2_25RemoteRenderBundleEncoderENSF_IS2K_NSG_IS2K_EENSI_IS2K_EEEEEENSD_INS2_18RemoteRenderBundleENSF_IS2P_NSG_IS2P_EENSI_IS2P_EEEEEENSD_INS2_23RemoteRenderPassEncoderENSF_IS2U_NSG_IS2U_EENSI_IS2U_EEEEEENSD_INS2_20RemoteRenderPipelineENSF_IS2Z_NSG_IS2Z_EENSI_IS2Z_EEEEEENSD_INS2_13RemoteSamplerENSF_IS34_NSG_IS34_EENSI_IS34_EEEEEENSD_INS2_18RemoteShaderModuleENSF_IS39_NSG_IS39_EENSI_IS39_EEEEEENSD_INS2_13RemoteTextureENSF_IS3E_NSG_IS3E_EENSI_IS3E_EEEEEENSD_INS2_17RemoteTextureViewENSF_IS3J_NSG_IS3J_EENSI_IS3J_EEEEEENSD_INS2_15RemoteXRBindingENSF_IS3O_NSG_IS3O_EENSI_IS3O_EEEEEENSD_INS2_16RemoteXRSubImageENSF_IS3T_NSG_IS3T_EENSI_IS3T_EEEEEENSD_INS2_23RemoteXRProjectionLayerENSF_IS3Y_NSG_IS3Y_EENSI_IS3Y_EEEEEENSD_INS2_12RemoteXRViewENSF_IS43_NSG_IS43_EENSI_IS43_EEEEEEEEEEENS_24KeyValuePairKeyExtractorIS49_EENS_11DefaultHashIS6_EENS_7HashMapIS6_S48_S4D_NS_10HashTraitsIS6_EENS4F_IS48_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1ENS_10FastMallocEE18KeyValuePairTraitsES4G_S4K_E6expandEPS49_(result, 0);
    v9 = *v8;
    v5 = *a2;
  }

  v10 = *(v9 - 8);
  v11 = (v5 + ~(v5 << 32)) ^ ((v5 + ~(v5 << 32)) >> 22);
  v12 = 9 * ((v11 + ~(v11 << 13)) ^ ((v11 + ~(v11 << 13)) >> 8));
  v13 = (v12 ^ (v12 >> 15)) + ~((v12 ^ (v12 >> 15)) << 27);
  v14 = v10 & ((v13 >> 31) ^ v13);
  v15 = (v9 + 24 * v14);
  v16 = *v15;
  if (*v15)
  {
    v17 = 0;
    v18 = 1;
    do
    {
      if (v16 == v5)
      {
        v25 = 0;
        v26 = v9 + 24 * *(v9 - 4);
        goto LABEL_40;
      }

      if (v16 == -1)
      {
        v17 = v15;
      }

      v14 = (v14 + v18) & v10;
      v15 = (v9 + 24 * v14);
      v16 = *v15;
      ++v18;
    }

    while (*v15);
    if (v17)
    {
      *v17 = 0;
      *(v17 + 16) = 0;
      --*(*v8 - 16);
      v5 = *a2;
      v15 = v17;
    }
  }

  *v15 = v5;
  v19 = v15 + 1;
  LOBYTE(v31) = 0;
  v32 = -1;
  v20 = *(a3 + 8);
  if (*(a3 + 8))
  {
    if (v20 == 255)
    {
      goto LABEL_17;
    }

    v31 = *a3;
    *a3 = 0;
  }

  v32 = v20;
LABEL_17:
  v21 = *(v15 + 16);
  if (v21 == 255)
  {
    if (v20 == 255)
    {
      goto LABEL_23;
    }
  }

  else if (v20 == 255)
  {
    result = _ZN5mpark6detail10visitation3alt9visit_altINS0_4dtorEJRNS0_10destructorINS0_6traitsIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueIN6WebKit13RemoteAdapterEN3WTF6RefPtrISC_NSD_12RawPtrTraitsISC_EENSD_21DefaultRefDerefTraitsISC_EEEEEENSA_INSB_15RemoteBindGroupENSE_ISL_NSF_ISL_EENSH_ISL_EEEEEENSA_INSB_21RemoteBindGroupLayoutENSE_ISQ_NSF_ISQ_EENSH_ISQ_EEEEEENSA_INSB_12RemoteBufferENSE_ISV_NSF_ISV_EENSH_ISV_EEEEEENSA_INSB_19RemoteCommandBufferENSE_IS10_NSF_IS10_EENSH_IS10_EEEEEENSA_INSB_20RemoteCommandEncoderENSE_IS15_NSF_IS15_EENSH_IS15_EEEEEENSA_INSB_27RemoteCompositorIntegrationENSE_IS1A_NSF_IS1A_EENSH_IS1A_EEEEEENSA_INSB_24RemoteComputePassEncoderENSE_IS1F_NSF_IS1F_EENSH_IS1F_EEEEEENSA_INSB_21RemoteComputePipelineENSE_IS1K_NSF_IS1K_EENSH_IS1K_EEEEEENSA_INSB_12RemoteDeviceENSE_IS1P_NSF_IS1P_EENSH_IS1P_EEEEEENSA_INSB_21RemoteExternalTextureENSE_IS1U_NSF_IS1U_EENSH_IS1U_EEEEEENSA_INSB_20RemotePipelineLayoutENSE_IS1Z_NSF_IS1Z_EENSH_IS1Z_EEEEEENSA_INSB_25RemotePresentationContextENSE_IS24_NSF_IS24_EENSH_IS24_EEEEEENSA_INSB_14RemoteQuerySetENSE_IS29_NSF_IS29_EENSH_IS29_EEEEEENSA_INSB_11RemoteQueueENSE_IS2E_NSF_IS2E_EENSH_IS2E_EEEEEENSA_INSB_25RemoteRenderBundleEncoderENSE_IS2J_NSF_IS2J_EENSH_IS2J_EEEEEENSA_INSB_18RemoteRenderBundleENSE_IS2O_NSF_IS2O_EENSH_IS2O_EEEEEENSA_INSB_23RemoteRenderPassEncoderENSE_IS2T_NSF_IS2T_EENSH_IS2T_EEEEEENSA_INSB_20RemoteRenderPipelineENSE_IS2Y_NSF_IS2Y_EENSH_IS2Y_EEEEEENSA_INSB_13RemoteSamplerENSE_IS33_NSF_IS33_EENSH_IS33_EEEEEENSA_INSB_18RemoteShaderModuleENSE_IS38_NSF_IS38_EENSH_IS38_EEEEEENSA_INSB_13RemoteTextureENSE_IS3D_NSF_IS3D_EENSH_IS3D_EEEEEENSA_INSB_17RemoteTextureViewENSE_IS3I_NSF_IS3I_EENSH_IS3I_EEEEEENSA_INSB_15RemoteXRBindingENSE_IS3N_NSF_IS3N_EENSH_IS3N_EEEEEENSA_INSB_16RemoteXRSubImageENSE_IS3S_NSF_IS3S_EENSH_IS3S_EEEEEENSA_INSB_23RemoteXRProjectionLayerENSE_IS3X_NSF_IS3X_EENSH_IS3X_EEEEEENSA_INSB_12RemoteXRViewENSE_IS42_NSF_IS42_EENSH_IS42_EEEEEEEEELNS0_5TraitE1EEEEEEDcOT_DpOT0_(&v33, (v15 + 1));
    v22 = -1;
LABEL_22:
    *(v15 + 16) = v22;
    goto LABEL_23;
  }

  switch(v20)
  {
    case 1:
      if (v21 == 255)
      {
        goto LABEL_209;
      }

      if (v21 != 1)
      {
        result = _ZN5mpark6detail10visitation3alt9visit_altINS0_4dtorEJRNS0_10destructorINS0_6traitsIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueIN6WebKit13RemoteAdapterEN3WTF6RefPtrISC_NSD_12RawPtrTraitsISC_EENSD_21DefaultRefDerefTraitsISC_EEEEEENSA_INSB_15RemoteBindGroupENSE_ISL_NSF_ISL_EENSH_ISL_EEEEEENSA_INSB_21RemoteBindGroupLayoutENSE_ISQ_NSF_ISQ_EENSH_ISQ_EEEEEENSA_INSB_12RemoteBufferENSE_ISV_NSF_ISV_EENSH_ISV_EEEEEENSA_INSB_19RemoteCommandBufferENSE_IS10_NSF_IS10_EENSH_IS10_EEEEEENSA_INSB_20RemoteCommandEncoderENSE_IS15_NSF_IS15_EENSH_IS15_EEEEEENSA_INSB_27RemoteCompositorIntegrationENSE_IS1A_NSF_IS1A_EENSH_IS1A_EEEEEENSA_INSB_24RemoteComputePassEncoderENSE_IS1F_NSF_IS1F_EENSH_IS1F_EEEEEENSA_INSB_21RemoteComputePipelineENSE_IS1K_NSF_IS1K_EENSH_IS1K_EEEEEENSA_INSB_12RemoteDeviceENSE_IS1P_NSF_IS1P_EENSH_IS1P_EEEEEENSA_INSB_21RemoteExternalTextureENSE_IS1U_NSF_IS1U_EENSH_IS1U_EEEEEENSA_INSB_20RemotePipelineLayoutENSE_IS1Z_NSF_IS1Z_EENSH_IS1Z_EEEEEENSA_INSB_25RemotePresentationContextENSE_IS24_NSF_IS24_EENSH_IS24_EEEEEENSA_INSB_14RemoteQuerySetENSE_IS29_NSF_IS29_EENSH_IS29_EEEEEENSA_INSB_11RemoteQueueENSE_IS2E_NSF_IS2E_EENSH_IS2E_EEEEEENSA_INSB_25RemoteRenderBundleEncoderENSE_IS2J_NSF_IS2J_EENSH_IS2J_EEEEEENSA_INSB_18RemoteRenderBundleENSE_IS2O_NSF_IS2O_EENSH_IS2O_EEEEEENSA_INSB_23RemoteRenderPassEncoderENSE_IS2T_NSF_IS2T_EENSH_IS2T_EEEEEENSA_INSB_20RemoteRenderPipelineENSE_IS2Y_NSF_IS2Y_EENSH_IS2Y_EEEEEENSA_INSB_13RemoteSamplerENSE_IS33_NSF_IS33_EENSH_IS33_EEEEEENSA_INSB_18RemoteShaderModuleENSE_IS38_NSF_IS38_EENSH_IS38_EEEEEENSA_INSB_13RemoteTextureENSE_IS3D_NSF_IS3D_EENSH_IS3D_EEEEEENSA_INSB_17RemoteTextureViewENSE_IS3I_NSF_IS3I_EENSH_IS3I_EEEEEENSA_INSB_15RemoteXRBindingENSE_IS3N_NSF_IS3N_EENSH_IS3N_EEEEEENSA_INSB_16RemoteXRSubImageENSE_IS3S_NSF_IS3S_EENSH_IS3S_EEEEEENSA_INSB_23RemoteXRProjectionLayerENSE_IS3X_NSF_IS3X_EENSH_IS3X_EEEEEENSA_INSB_12RemoteXRViewENSE_IS42_NSF_IS42_EENSH_IS42_EEEEEEEEELNS0_5TraitE1EEEEEEDcOT_DpOT0_(&v33, (v15 + 1));
LABEL_209:
        v15[1] = v31;
        v31 = 0;
        v22 = 1;
        goto LABEL_22;
      }

      if (v19 == &v31)
      {
        break;
      }

      if (!*v19)
      {
        goto LABEL_181;
      }

      IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteAdapter,WTF::RefPtr<WebKit::RemoteAdapter,WTF::RawPtrTraits<WebKit::RemoteAdapter>,WTF::DefaultRefDerefTraits<WebKit::RemoteAdapter>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::RemoteAdapter,WTF::RawPtrTraits<WebKit::RemoteAdapter>,WTF::DefaultRefDerefTraits<WebKit::RemoteAdapter>>>(v15 + 1);
      goto LABEL_178;
    case 2:
      if (v21 == 255)
      {
        goto LABEL_201;
      }

      if (v21 != 2)
      {
        result = _ZN5mpark6detail10visitation3alt9visit_altINS0_4dtorEJRNS0_10destructorINS0_6traitsIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueIN6WebKit13RemoteAdapterEN3WTF6RefPtrISC_NSD_12RawPtrTraitsISC_EENSD_21DefaultRefDerefTraitsISC_EEEEEENSA_INSB_15RemoteBindGroupENSE_ISL_NSF_ISL_EENSH_ISL_EEEEEENSA_INSB_21RemoteBindGroupLayoutENSE_ISQ_NSF_ISQ_EENSH_ISQ_EEEEEENSA_INSB_12RemoteBufferENSE_ISV_NSF_ISV_EENSH_ISV_EEEEEENSA_INSB_19RemoteCommandBufferENSE_IS10_NSF_IS10_EENSH_IS10_EEEEEENSA_INSB_20RemoteCommandEncoderENSE_IS15_NSF_IS15_EENSH_IS15_EEEEEENSA_INSB_27RemoteCompositorIntegrationENSE_IS1A_NSF_IS1A_EENSH_IS1A_EEEEEENSA_INSB_24RemoteComputePassEncoderENSE_IS1F_NSF_IS1F_EENSH_IS1F_EEEEEENSA_INSB_21RemoteComputePipelineENSE_IS1K_NSF_IS1K_EENSH_IS1K_EEEEEENSA_INSB_12RemoteDeviceENSE_IS1P_NSF_IS1P_EENSH_IS1P_EEEEEENSA_INSB_21RemoteExternalTextureENSE_IS1U_NSF_IS1U_EENSH_IS1U_EEEEEENSA_INSB_20RemotePipelineLayoutENSE_IS1Z_NSF_IS1Z_EENSH_IS1Z_EEEEEENSA_INSB_25RemotePresentationContextENSE_IS24_NSF_IS24_EENSH_IS24_EEEEEENSA_INSB_14RemoteQuerySetENSE_IS29_NSF_IS29_EENSH_IS29_EEEEEENSA_INSB_11RemoteQueueENSE_IS2E_NSF_IS2E_EENSH_IS2E_EEEEEENSA_INSB_25RemoteRenderBundleEncoderENSE_IS2J_NSF_IS2J_EENSH_IS2J_EEEEEENSA_INSB_18RemoteRenderBundleENSE_IS2O_NSF_IS2O_EENSH_IS2O_EEEEEENSA_INSB_23RemoteRenderPassEncoderENSE_IS2T_NSF_IS2T_EENSH_IS2T_EEEEEENSA_INSB_20RemoteRenderPipelineENSE_IS2Y_NSF_IS2Y_EENSH_IS2Y_EEEEEENSA_INSB_13RemoteSamplerENSE_IS33_NSF_IS33_EENSH_IS33_EEEEEENSA_INSB_18RemoteShaderModuleENSE_IS38_NSF_IS38_EENSH_IS38_EEEEEENSA_INSB_13RemoteTextureENSE_IS3D_NSF_IS3D_EENSH_IS3D_EEEEEENSA_INSB_17RemoteTextureViewENSE_IS3I_NSF_IS3I_EENSH_IS3I_EEEEEENSA_INSB_15RemoteXRBindingENSE_IS3N_NSF_IS3N_EENSH_IS3N_EEEEEENSA_INSB_16RemoteXRSubImageENSE_IS3S_NSF_IS3S_EENSH_IS3S_EEEEEENSA_INSB_23RemoteXRProjectionLayerENSE_IS3X_NSF_IS3X_EENSH_IS3X_EEEEEENSA_INSB_12RemoteXRViewENSE_IS42_NSF_IS42_EENSH_IS42_EEEEEEEEELNS0_5TraitE1EEEEEEDcOT_DpOT0_(&v33, (v15 + 1));
LABEL_201:
        v15[1] = v31;
        v31 = 0;
        v22 = 2;
        goto LABEL_22;
      }

      if (v19 == &v31)
      {
        break;
      }

      if (*v19)
      {
        IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteBindGroup,WTF::RefPtr<WebKit::RemoteBindGroup,WTF::RawPtrTraits<WebKit::RemoteBindGroup>,WTF::DefaultRefDerefTraits<WebKit::RemoteBindGroup>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::RemoteBindGroup,WTF::RawPtrTraits<WebKit::RemoteBindGroup>,WTF::DefaultRefDerefTraits<WebKit::RemoteBindGroup>>>(v15 + 1);
        goto LABEL_178;
      }

      goto LABEL_181;
    case 3:
      if (v21 == 255)
      {
        goto LABEL_205;
      }

      if (v21 != 3)
      {
        result = _ZN5mpark6detail10visitation3alt9visit_altINS0_4dtorEJRNS0_10destructorINS0_6traitsIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueIN6WebKit13RemoteAdapterEN3WTF6RefPtrISC_NSD_12RawPtrTraitsISC_EENSD_21DefaultRefDerefTraitsISC_EEEEEENSA_INSB_15RemoteBindGroupENSE_ISL_NSF_ISL_EENSH_ISL_EEEEEENSA_INSB_21RemoteBindGroupLayoutENSE_ISQ_NSF_ISQ_EENSH_ISQ_EEEEEENSA_INSB_12RemoteBufferENSE_ISV_NSF_ISV_EENSH_ISV_EEEEEENSA_INSB_19RemoteCommandBufferENSE_IS10_NSF_IS10_EENSH_IS10_EEEEEENSA_INSB_20RemoteCommandEncoderENSE_IS15_NSF_IS15_EENSH_IS15_EEEEEENSA_INSB_27RemoteCompositorIntegrationENSE_IS1A_NSF_IS1A_EENSH_IS1A_EEEEEENSA_INSB_24RemoteComputePassEncoderENSE_IS1F_NSF_IS1F_EENSH_IS1F_EEEEEENSA_INSB_21RemoteComputePipelineENSE_IS1K_NSF_IS1K_EENSH_IS1K_EEEEEENSA_INSB_12RemoteDeviceENSE_IS1P_NSF_IS1P_EENSH_IS1P_EEEEEENSA_INSB_21RemoteExternalTextureENSE_IS1U_NSF_IS1U_EENSH_IS1U_EEEEEENSA_INSB_20RemotePipelineLayoutENSE_IS1Z_NSF_IS1Z_EENSH_IS1Z_EEEEEENSA_INSB_25RemotePresentationContextENSE_IS24_NSF_IS24_EENSH_IS24_EEEEEENSA_INSB_14RemoteQuerySetENSE_IS29_NSF_IS29_EENSH_IS29_EEEEEENSA_INSB_11RemoteQueueENSE_IS2E_NSF_IS2E_EENSH_IS2E_EEEEEENSA_INSB_25RemoteRenderBundleEncoderENSE_IS2J_NSF_IS2J_EENSH_IS2J_EEEEEENSA_INSB_18RemoteRenderBundleENSE_IS2O_NSF_IS2O_EENSH_IS2O_EEEEEENSA_INSB_23RemoteRenderPassEncoderENSE_IS2T_NSF_IS2T_EENSH_IS2T_EEEEEENSA_INSB_20RemoteRenderPipelineENSE_IS2Y_NSF_IS2Y_EENSH_IS2Y_EEEEEENSA_INSB_13RemoteSamplerENSE_IS33_NSF_IS33_EENSH_IS33_EEEEEENSA_INSB_18RemoteShaderModuleENSE_IS38_NSF_IS38_EENSH_IS38_EEEEEENSA_INSB_13RemoteTextureENSE_IS3D_NSF_IS3D_EENSH_IS3D_EEEEEENSA_INSB_17RemoteTextureViewENSE_IS3I_NSF_IS3I_EENSH_IS3I_EEEEEENSA_INSB_15RemoteXRBindingENSE_IS3N_NSF_IS3N_EENSH_IS3N_EEEEEENSA_INSB_16RemoteXRSubImageENSE_IS3S_NSF_IS3S_EENSH_IS3S_EEEEEENSA_INSB_23RemoteXRProjectionLayerENSE_IS3X_NSF_IS3X_EENSH_IS3X_EEEEEENSA_INSB_12RemoteXRViewENSE_IS42_NSF_IS42_EENSH_IS42_EEEEEEEEELNS0_5TraitE1EEEEEEDcOT_DpOT0_(&v33, (v15 + 1));
LABEL_205:
        v15[1] = v31;
        v31 = 0;
        v22 = 3;
        goto LABEL_22;
      }

      if (v19 == &v31)
      {
        break;
      }

      if (*v19)
      {
        IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteBindGroupLayout,WTF::RefPtr<WebKit::RemoteBindGroupLayout,WTF::RawPtrTraits<WebKit::RemoteBindGroupLayout>,WTF::DefaultRefDerefTraits<WebKit::RemoteBindGroupLayout>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::RemoteBindGroupLayout,WTF::RawPtrTraits<WebKit::RemoteBindGroupLayout>,WTF::DefaultRefDerefTraits<WebKit::RemoteBindGroupLayout>>>(v15 + 1);
        goto LABEL_178;
      }

      goto LABEL_181;
    case 4:
      if (v21 == 255)
      {
        goto LABEL_191;
      }

      if (v21 != 4)
      {
        result = _ZN5mpark6detail10visitation3alt9visit_altINS0_4dtorEJRNS0_10destructorINS0_6traitsIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueIN6WebKit13RemoteAdapterEN3WTF6RefPtrISC_NSD_12RawPtrTraitsISC_EENSD_21DefaultRefDerefTraitsISC_EEEEEENSA_INSB_15RemoteBindGroupENSE_ISL_NSF_ISL_EENSH_ISL_EEEEEENSA_INSB_21RemoteBindGroupLayoutENSE_ISQ_NSF_ISQ_EENSH_ISQ_EEEEEENSA_INSB_12RemoteBufferENSE_ISV_NSF_ISV_EENSH_ISV_EEEEEENSA_INSB_19RemoteCommandBufferENSE_IS10_NSF_IS10_EENSH_IS10_EEEEEENSA_INSB_20RemoteCommandEncoderENSE_IS15_NSF_IS15_EENSH_IS15_EEEEEENSA_INSB_27RemoteCompositorIntegrationENSE_IS1A_NSF_IS1A_EENSH_IS1A_EEEEEENSA_INSB_24RemoteComputePassEncoderENSE_IS1F_NSF_IS1F_EENSH_IS1F_EEEEEENSA_INSB_21RemoteComputePipelineENSE_IS1K_NSF_IS1K_EENSH_IS1K_EEEEEENSA_INSB_12RemoteDeviceENSE_IS1P_NSF_IS1P_EENSH_IS1P_EEEEEENSA_INSB_21RemoteExternalTextureENSE_IS1U_NSF_IS1U_EENSH_IS1U_EEEEEENSA_INSB_20RemotePipelineLayoutENSE_IS1Z_NSF_IS1Z_EENSH_IS1Z_EEEEEENSA_INSB_25RemotePresentationContextENSE_IS24_NSF_IS24_EENSH_IS24_EEEEEENSA_INSB_14RemoteQuerySetENSE_IS29_NSF_IS29_EENSH_IS29_EEEEEENSA_INSB_11RemoteQueueENSE_IS2E_NSF_IS2E_EENSH_IS2E_EEEEEENSA_INSB_25RemoteRenderBundleEncoderENSE_IS2J_NSF_IS2J_EENSH_IS2J_EEEEEENSA_INSB_18RemoteRenderBundleENSE_IS2O_NSF_IS2O_EENSH_IS2O_EEEEEENSA_INSB_23RemoteRenderPassEncoderENSE_IS2T_NSF_IS2T_EENSH_IS2T_EEEEEENSA_INSB_20RemoteRenderPipelineENSE_IS2Y_NSF_IS2Y_EENSH_IS2Y_EEEEEENSA_INSB_13RemoteSamplerENSE_IS33_NSF_IS33_EENSH_IS33_EEEEEENSA_INSB_18RemoteShaderModuleENSE_IS38_NSF_IS38_EENSH_IS38_EEEEEENSA_INSB_13RemoteTextureENSE_IS3D_NSF_IS3D_EENSH_IS3D_EEEEEENSA_INSB_17RemoteTextureViewENSE_IS3I_NSF_IS3I_EENSH_IS3I_EEEEEENSA_INSB_15RemoteXRBindingENSE_IS3N_NSF_IS3N_EENSH_IS3N_EEEEEENSA_INSB_16RemoteXRSubImageENSE_IS3S_NSF_IS3S_EENSH_IS3S_EEEEEENSA_INSB_23RemoteXRProjectionLayerENSE_IS3X_NSF_IS3X_EENSH_IS3X_EEEEEENSA_INSB_12RemoteXRViewENSE_IS42_NSF_IS42_EENSH_IS42_EEEEEEEEELNS0_5TraitE1EEEEEEDcOT_DpOT0_(&v33, (v15 + 1));
LABEL_191:
        v15[1] = v31;
        v31 = 0;
        v22 = 4;
        goto LABEL_22;
      }

      if (v19 == &v31)
      {
        break;
      }

      if (*v19)
      {
        IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteBuffer,WTF::RefPtr<WebKit::RemoteBuffer,WTF::RawPtrTraits<WebKit::RemoteBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteBuffer>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::RemoteBuffer,WTF::RawPtrTraits<WebKit::RemoteBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteBuffer>>>(v15 + 1);
        goto LABEL_178;
      }

      goto LABEL_181;
    case 5:
      if (v21 == 255)
      {
        goto LABEL_215;
      }

      if (v21 != 5)
      {
        result = _ZN5mpark6detail10visitation3alt9visit_altINS0_4dtorEJRNS0_10destructorINS0_6traitsIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueIN6WebKit13RemoteAdapterEN3WTF6RefPtrISC_NSD_12RawPtrTraitsISC_EENSD_21DefaultRefDerefTraitsISC_EEEEEENSA_INSB_15RemoteBindGroupENSE_ISL_NSF_ISL_EENSH_ISL_EEEEEENSA_INSB_21RemoteBindGroupLayoutENSE_ISQ_NSF_ISQ_EENSH_ISQ_EEEEEENSA_INSB_12RemoteBufferENSE_ISV_NSF_ISV_EENSH_ISV_EEEEEENSA_INSB_19RemoteCommandBufferENSE_IS10_NSF_IS10_EENSH_IS10_EEEEEENSA_INSB_20RemoteCommandEncoderENSE_IS15_NSF_IS15_EENSH_IS15_EEEEEENSA_INSB_27RemoteCompositorIntegrationENSE_IS1A_NSF_IS1A_EENSH_IS1A_EEEEEENSA_INSB_24RemoteComputePassEncoderENSE_IS1F_NSF_IS1F_EENSH_IS1F_EEEEEENSA_INSB_21RemoteComputePipelineENSE_IS1K_NSF_IS1K_EENSH_IS1K_EEEEEENSA_INSB_12RemoteDeviceENSE_IS1P_NSF_IS1P_EENSH_IS1P_EEEEEENSA_INSB_21RemoteExternalTextureENSE_IS1U_NSF_IS1U_EENSH_IS1U_EEEEEENSA_INSB_20RemotePipelineLayoutENSE_IS1Z_NSF_IS1Z_EENSH_IS1Z_EEEEEENSA_INSB_25RemotePresentationContextENSE_IS24_NSF_IS24_EENSH_IS24_EEEEEENSA_INSB_14RemoteQuerySetENSE_IS29_NSF_IS29_EENSH_IS29_EEEEEENSA_INSB_11RemoteQueueENSE_IS2E_NSF_IS2E_EENSH_IS2E_EEEEEENSA_INSB_25RemoteRenderBundleEncoderENSE_IS2J_NSF_IS2J_EENSH_IS2J_EEEEEENSA_INSB_18RemoteRenderBundleENSE_IS2O_NSF_IS2O_EENSH_IS2O_EEEEEENSA_INSB_23RemoteRenderPassEncoderENSE_IS2T_NSF_IS2T_EENSH_IS2T_EEEEEENSA_INSB_20RemoteRenderPipelineENSE_IS2Y_NSF_IS2Y_EENSH_IS2Y_EEEEEENSA_INSB_13RemoteSamplerENSE_IS33_NSF_IS33_EENSH_IS33_EEEEEENSA_INSB_18RemoteShaderModuleENSE_IS38_NSF_IS38_EENSH_IS38_EEEEEENSA_INSB_13RemoteTextureENSE_IS3D_NSF_IS3D_EENSH_IS3D_EEEEEENSA_INSB_17RemoteTextureViewENSE_IS3I_NSF_IS3I_EENSH_IS3I_EEEEEENSA_INSB_15RemoteXRBindingENSE_IS3N_NSF_IS3N_EENSH_IS3N_EEEEEENSA_INSB_16RemoteXRSubImageENSE_IS3S_NSF_IS3S_EENSH_IS3S_EEEEEENSA_INSB_23RemoteXRProjectionLayerENSE_IS3X_NSF_IS3X_EENSH_IS3X_EEEEEENSA_INSB_12RemoteXRViewENSE_IS42_NSF_IS42_EENSH_IS42_EEEEEEEEELNS0_5TraitE1EEEEEEDcOT_DpOT0_(&v33, (v15 + 1));
LABEL_215:
        v15[1] = v31;
        v31 = 0;
        v22 = 5;
        goto LABEL_22;
      }

      if (v19 == &v31)
      {
        break;
      }

      if (*v19)
      {
        IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteCommandBuffer,WTF::RefPtr<WebKit::RemoteCommandBuffer,WTF::RawPtrTraits<WebKit::RemoteCommandBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteCommandBuffer>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::RemoteCommandBuffer,WTF::RawPtrTraits<WebKit::RemoteCommandBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteCommandBuffer>>>(v15 + 1);
        goto LABEL_178;
      }

      goto LABEL_181;
    case 6:
      if (v21 == 255)
      {
        goto LABEL_221;
      }

      if (v21 != 6)
      {
        result = _ZN5mpark6detail10visitation3alt9visit_altINS0_4dtorEJRNS0_10destructorINS0_6traitsIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueIN6WebKit13RemoteAdapterEN3WTF6RefPtrISC_NSD_12RawPtrTraitsISC_EENSD_21DefaultRefDerefTraitsISC_EEEEEENSA_INSB_15RemoteBindGroupENSE_ISL_NSF_ISL_EENSH_ISL_EEEEEENSA_INSB_21RemoteBindGroupLayoutENSE_ISQ_NSF_ISQ_EENSH_ISQ_EEEEEENSA_INSB_12RemoteBufferENSE_ISV_NSF_ISV_EENSH_ISV_EEEEEENSA_INSB_19RemoteCommandBufferENSE_IS10_NSF_IS10_EENSH_IS10_EEEEEENSA_INSB_20RemoteCommandEncoderENSE_IS15_NSF_IS15_EENSH_IS15_EEEEEENSA_INSB_27RemoteCompositorIntegrationENSE_IS1A_NSF_IS1A_EENSH_IS1A_EEEEEENSA_INSB_24RemoteComputePassEncoderENSE_IS1F_NSF_IS1F_EENSH_IS1F_EEEEEENSA_INSB_21RemoteComputePipelineENSE_IS1K_NSF_IS1K_EENSH_IS1K_EEEEEENSA_INSB_12RemoteDeviceENSE_IS1P_NSF_IS1P_EENSH_IS1P_EEEEEENSA_INSB_21RemoteExternalTextureENSE_IS1U_NSF_IS1U_EENSH_IS1U_EEEEEENSA_INSB_20RemotePipelineLayoutENSE_IS1Z_NSF_IS1Z_EENSH_IS1Z_EEEEEENSA_INSB_25RemotePresentationContextENSE_IS24_NSF_IS24_EENSH_IS24_EEEEEENSA_INSB_14RemoteQuerySetENSE_IS29_NSF_IS29_EENSH_IS29_EEEEEENSA_INSB_11RemoteQueueENSE_IS2E_NSF_IS2E_EENSH_IS2E_EEEEEENSA_INSB_25RemoteRenderBundleEncoderENSE_IS2J_NSF_IS2J_EENSH_IS2J_EEEEEENSA_INSB_18RemoteRenderBundleENSE_IS2O_NSF_IS2O_EENSH_IS2O_EEEEEENSA_INSB_23RemoteRenderPassEncoderENSE_IS2T_NSF_IS2T_EENSH_IS2T_EEEEEENSA_INSB_20RemoteRenderPipelineENSE_IS2Y_NSF_IS2Y_EENSH_IS2Y_EEEEEENSA_INSB_13RemoteSamplerENSE_IS33_NSF_IS33_EENSH_IS33_EEEEEENSA_INSB_18RemoteShaderModuleENSE_IS38_NSF_IS38_EENSH_IS38_EEEEEENSA_INSB_13RemoteTextureENSE_IS3D_NSF_IS3D_EENSH_IS3D_EEEEEENSA_INSB_17RemoteTextureViewENSE_IS3I_NSF_IS3I_EENSH_IS3I_EEEEEENSA_INSB_15RemoteXRBindingENSE_IS3N_NSF_IS3N_EENSH_IS3N_EEEEEENSA_INSB_16RemoteXRSubImageENSE_IS3S_NSF_IS3S_EENSH_IS3S_EEEEEENSA_INSB_23RemoteXRProjectionLayerENSE_IS3X_NSF_IS3X_EENSH_IS3X_EEEEEENSA_INSB_12RemoteXRViewENSE_IS42_NSF_IS42_EENSH_IS42_EEEEEEEEELNS0_5TraitE1EEEEEEDcOT_DpOT0_(&v33, (v15 + 1));
LABEL_221:
        v15[1] = v31;
        v31 = 0;
        v22 = 6;
        goto LABEL_22;
      }

      if (v19 == &v31)
      {
        break;
      }

      if (*v19)
      {
        IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteCommandEncoder,WTF::RefPtr<WebKit::RemoteCommandEncoder,WTF::RawPtrTraits<WebKit::RemoteCommandEncoder>,WTF::DefaultRefDerefTraits<WebKit::RemoteCommandEncoder>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::RemoteCommandEncoder,WTF::RawPtrTraits<WebKit::RemoteCommandEncoder>,WTF::DefaultRefDerefTraits<WebKit::RemoteCommandEncoder>>>(v15 + 1);
        goto LABEL_178;
      }

      goto LABEL_181;
    case 7:
      if (v21 == 255)
      {
        goto LABEL_207;
      }

      if (v21 != 7)
      {
        result = _ZN5mpark6detail10visitation3alt9visit_altINS0_4dtorEJRNS0_10destructorINS0_6traitsIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueIN6WebKit13RemoteAdapterEN3WTF6RefPtrISC_NSD_12RawPtrTraitsISC_EENSD_21DefaultRefDerefTraitsISC_EEEEEENSA_INSB_15RemoteBindGroupENSE_ISL_NSF_ISL_EENSH_ISL_EEEEEENSA_INSB_21RemoteBindGroupLayoutENSE_ISQ_NSF_ISQ_EENSH_ISQ_EEEEEENSA_INSB_12RemoteBufferENSE_ISV_NSF_ISV_EENSH_ISV_EEEEEENSA_INSB_19RemoteCommandBufferENSE_IS10_NSF_IS10_EENSH_IS10_EEEEEENSA_INSB_20RemoteCommandEncoderENSE_IS15_NSF_IS15_EENSH_IS15_EEEEEENSA_INSB_27RemoteCompositorIntegrationENSE_IS1A_NSF_IS1A_EENSH_IS1A_EEEEEENSA_INSB_24RemoteComputePassEncoderENSE_IS1F_NSF_IS1F_EENSH_IS1F_EEEEEENSA_INSB_21RemoteComputePipelineENSE_IS1K_NSF_IS1K_EENSH_IS1K_EEEEEENSA_INSB_12RemoteDeviceENSE_IS1P_NSF_IS1P_EENSH_IS1P_EEEEEENSA_INSB_21RemoteExternalTextureENSE_IS1U_NSF_IS1U_EENSH_IS1U_EEEEEENSA_INSB_20RemotePipelineLayoutENSE_IS1Z_NSF_IS1Z_EENSH_IS1Z_EEEEEENSA_INSB_25RemotePresentationContextENSE_IS24_NSF_IS24_EENSH_IS24_EEEEEENSA_INSB_14RemoteQuerySetENSE_IS29_NSF_IS29_EENSH_IS29_EEEEEENSA_INSB_11RemoteQueueENSE_IS2E_NSF_IS2E_EENSH_IS2E_EEEEEENSA_INSB_25RemoteRenderBundleEncoderENSE_IS2J_NSF_IS2J_EENSH_IS2J_EEEEEENSA_INSB_18RemoteRenderBundleENSE_IS2O_NSF_IS2O_EENSH_IS2O_EEEEEENSA_INSB_23RemoteRenderPassEncoderENSE_IS2T_NSF_IS2T_EENSH_IS2T_EEEEEENSA_INSB_20RemoteRenderPipelineENSE_IS2Y_NSF_IS2Y_EENSH_IS2Y_EEEEEENSA_INSB_13RemoteSamplerENSE_IS33_NSF_IS33_EENSH_IS33_EEEEEENSA_INSB_18RemoteShaderModuleENSE_IS38_NSF_IS38_EENSH_IS38_EEEEEENSA_INSB_13RemoteTextureENSE_IS3D_NSF_IS3D_EENSH_IS3D_EEEEEENSA_INSB_17RemoteTextureViewENSE_IS3I_NSF_IS3I_EENSH_IS3I_EEEEEENSA_INSB_15RemoteXRBindingENSE_IS3N_NSF_IS3N_EENSH_IS3N_EEEEEENSA_INSB_16RemoteXRSubImageENSE_IS3S_NSF_IS3S_EENSH_IS3S_EEEEEENSA_INSB_23RemoteXRProjectionLayerENSE_IS3X_NSF_IS3X_EENSH_IS3X_EEEEEENSA_INSB_12RemoteXRViewENSE_IS42_NSF_IS42_EENSH_IS42_EEEEEEEEELNS0_5TraitE1EEEEEEDcOT_DpOT0_(&v33, (v15 + 1));
LABEL_207:
        v15[1] = v31;
        v31 = 0;
        v22 = 7;
        goto LABEL_22;
      }

      if (v19 == &v31)
      {
        break;
      }

      if (*v19)
      {
        IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteCompositorIntegration,WTF::RefPtr<WebKit::RemoteCompositorIntegration,WTF::RawPtrTraits<WebKit::RemoteCompositorIntegration>,WTF::DefaultRefDerefTraits<WebKit::RemoteCompositorIntegration>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::RemoteCompositorIntegration,WTF::RawPtrTraits<WebKit::RemoteCompositorIntegration>,WTF::DefaultRefDerefTraits<WebKit::RemoteCompositorIntegration>>>(v15 + 1);
        goto LABEL_178;
      }

      goto LABEL_181;
    case 8:
      if (v21 == 255)
      {
        goto LABEL_227;
      }

      if (v21 != 8)
      {
        result = _ZN5mpark6detail10visitation3alt9visit_altINS0_4dtorEJRNS0_10destructorINS0_6traitsIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueIN6WebKit13RemoteAdapterEN3WTF6RefPtrISC_NSD_12RawPtrTraitsISC_EENSD_21DefaultRefDerefTraitsISC_EEEEEENSA_INSB_15RemoteBindGroupENSE_ISL_NSF_ISL_EENSH_ISL_EEEEEENSA_INSB_21RemoteBindGroupLayoutENSE_ISQ_NSF_ISQ_EENSH_ISQ_EEEEEENSA_INSB_12RemoteBufferENSE_ISV_NSF_ISV_EENSH_ISV_EEEEEENSA_INSB_19RemoteCommandBufferENSE_IS10_NSF_IS10_EENSH_IS10_EEEEEENSA_INSB_20RemoteCommandEncoderENSE_IS15_NSF_IS15_EENSH_IS15_EEEEEENSA_INSB_27RemoteCompositorIntegrationENSE_IS1A_NSF_IS1A_EENSH_IS1A_EEEEEENSA_INSB_24RemoteComputePassEncoderENSE_IS1F_NSF_IS1F_EENSH_IS1F_EEEEEENSA_INSB_21RemoteComputePipelineENSE_IS1K_NSF_IS1K_EENSH_IS1K_EEEEEENSA_INSB_12RemoteDeviceENSE_IS1P_NSF_IS1P_EENSH_IS1P_EEEEEENSA_INSB_21RemoteExternalTextureENSE_IS1U_NSF_IS1U_EENSH_IS1U_EEEEEENSA_INSB_20RemotePipelineLayoutENSE_IS1Z_NSF_IS1Z_EENSH_IS1Z_EEEEEENSA_INSB_25RemotePresentationContextENSE_IS24_NSF_IS24_EENSH_IS24_EEEEEENSA_INSB_14RemoteQuerySetENSE_IS29_NSF_IS29_EENSH_IS29_EEEEEENSA_INSB_11RemoteQueueENSE_IS2E_NSF_IS2E_EENSH_IS2E_EEEEEENSA_INSB_25RemoteRenderBundleEncoderENSE_IS2J_NSF_IS2J_EENSH_IS2J_EEEEEENSA_INSB_18RemoteRenderBundleENSE_IS2O_NSF_IS2O_EENSH_IS2O_EEEEEENSA_INSB_23RemoteRenderPassEncoderENSE_IS2T_NSF_IS2T_EENSH_IS2T_EEEEEENSA_INSB_20RemoteRenderPipelineENSE_IS2Y_NSF_IS2Y_EENSH_IS2Y_EEEEEENSA_INSB_13RemoteSamplerENSE_IS33_NSF_IS33_EENSH_IS33_EEEEEENSA_INSB_18RemoteShaderModuleENSE_IS38_NSF_IS38_EENSH_IS38_EEEEEENSA_INSB_13RemoteTextureENSE_IS3D_NSF_IS3D_EENSH_IS3D_EEEEEENSA_INSB_17RemoteTextureViewENSE_IS3I_NSF_IS3I_EENSH_IS3I_EEEEEENSA_INSB_15RemoteXRBindingENSE_IS3N_NSF_IS3N_EENSH_IS3N_EEEEEENSA_INSB_16RemoteXRSubImageENSE_IS3S_NSF_IS3S_EENSH_IS3S_EEEEEENSA_INSB_23RemoteXRProjectionLayerENSE_IS3X_NSF_IS3X_EENSH_IS3X_EEEEEENSA_INSB_12RemoteXRViewENSE_IS42_NSF_IS42_EENSH_IS42_EEEEEEEEELNS0_5TraitE1EEEEEEDcOT_DpOT0_(&v33, (v15 + 1));
LABEL_227:
        v15[1] = v31;
        v31 = 0;
        v22 = 8;
        goto LABEL_22;
      }

      if (v19 == &v31)
      {
        break;
      }

      if (*v19)
      {
        IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteComputePassEncoder,WTF::RefPtr<WebKit::RemoteComputePassEncoder,WTF::RawPtrTraits<WebKit::RemoteComputePassEncoder>,WTF::DefaultRefDerefTraits<WebKit::RemoteComputePassEncoder>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::RemoteComputePassEncoder,WTF::RawPtrTraits<WebKit::RemoteComputePassEncoder>,WTF::DefaultRefDerefTraits<WebKit::RemoteComputePassEncoder>>>(v15 + 1);
        goto LABEL_178;
      }

      goto LABEL_181;
    case 9:
      if (v21 == 255)
      {
        goto LABEL_195;
      }

      if (v21 != 9)
      {
        result = _ZN5mpark6detail10visitation3alt9visit_altINS0_4dtorEJRNS0_10destructorINS0_6traitsIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueIN6WebKit13RemoteAdapterEN3WTF6RefPtrISC_NSD_12RawPtrTraitsISC_EENSD_21DefaultRefDerefTraitsISC_EEEEEENSA_INSB_15RemoteBindGroupENSE_ISL_NSF_ISL_EENSH_ISL_EEEEEENSA_INSB_21RemoteBindGroupLayoutENSE_ISQ_NSF_ISQ_EENSH_ISQ_EEEEEENSA_INSB_12RemoteBufferENSE_ISV_NSF_ISV_EENSH_ISV_EEEEEENSA_INSB_19RemoteCommandBufferENSE_IS10_NSF_IS10_EENSH_IS10_EEEEEENSA_INSB_20RemoteCommandEncoderENSE_IS15_NSF_IS15_EENSH_IS15_EEEEEENSA_INSB_27RemoteCompositorIntegrationENSE_IS1A_NSF_IS1A_EENSH_IS1A_EEEEEENSA_INSB_24RemoteComputePassEncoderENSE_IS1F_NSF_IS1F_EENSH_IS1F_EEEEEENSA_INSB_21RemoteComputePipelineENSE_IS1K_NSF_IS1K_EENSH_IS1K_EEEEEENSA_INSB_12RemoteDeviceENSE_IS1P_NSF_IS1P_EENSH_IS1P_EEEEEENSA_INSB_21RemoteExternalTextureENSE_IS1U_NSF_IS1U_EENSH_IS1U_EEEEEENSA_INSB_20RemotePipelineLayoutENSE_IS1Z_NSF_IS1Z_EENSH_IS1Z_EEEEEENSA_INSB_25RemotePresentationContextENSE_IS24_NSF_IS24_EENSH_IS24_EEEEEENSA_INSB_14RemoteQuerySetENSE_IS29_NSF_IS29_EENSH_IS29_EEEEEENSA_INSB_11RemoteQueueENSE_IS2E_NSF_IS2E_EENSH_IS2E_EEEEEENSA_INSB_25RemoteRenderBundleEncoderENSE_IS2J_NSF_IS2J_EENSH_IS2J_EEEEEENSA_INSB_18RemoteRenderBundleENSE_IS2O_NSF_IS2O_EENSH_IS2O_EEEEEENSA_INSB_23RemoteRenderPassEncoderENSE_IS2T_NSF_IS2T_EENSH_IS2T_EEEEEENSA_INSB_20RemoteRenderPipelineENSE_IS2Y_NSF_IS2Y_EENSH_IS2Y_EEEEEENSA_INSB_13RemoteSamplerENSE_IS33_NSF_IS33_EENSH_IS33_EEEEEENSA_INSB_18RemoteShaderModuleENSE_IS38_NSF_IS38_EENSH_IS38_EEEEEENSA_INSB_13RemoteTextureENSE_IS3D_NSF_IS3D_EENSH_IS3D_EEEEEENSA_INSB_17RemoteTextureViewENSE_IS3I_NSF_IS3I_EENSH_IS3I_EEEEEENSA_INSB_15RemoteXRBindingENSE_IS3N_NSF_IS3N_EENSH_IS3N_EEEEEENSA_INSB_16RemoteXRSubImageENSE_IS3S_NSF_IS3S_EENSH_IS3S_EEEEEENSA_INSB_23RemoteXRProjectionLayerENSE_IS3X_NSF_IS3X_EENSH_IS3X_EEEEEENSA_INSB_12RemoteXRViewENSE_IS42_NSF_IS42_EENSH_IS42_EEEEEEEEELNS0_5TraitE1EEEEEEDcOT_DpOT0_(&v33, (v15 + 1));
LABEL_195:
        v15[1] = v31;
        v31 = 0;
        v22 = 9;
        goto LABEL_22;
      }

      if (v19 == &v31)
      {
        break;
      }

      if (*v19)
      {
        IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteComputePipeline,WTF::RefPtr<WebKit::RemoteComputePipeline,WTF::RawPtrTraits<WebKit::RemoteComputePipeline>,WTF::DefaultRefDerefTraits<WebKit::RemoteComputePipeline>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::RemoteComputePipeline,WTF::RawPtrTraits<WebKit::RemoteComputePipeline>,WTF::DefaultRefDerefTraits<WebKit::RemoteComputePipeline>>>(v15 + 1);
        goto LABEL_178;
      }

      goto LABEL_181;
    case 10:
      if (v21 == 255)
      {
        goto LABEL_225;
      }

      if (v21 != 10)
      {
        result = _ZN5mpark6detail10visitation3alt9visit_altINS0_4dtorEJRNS0_10destructorINS0_6traitsIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueIN6WebKit13RemoteAdapterEN3WTF6RefPtrISC_NSD_12RawPtrTraitsISC_EENSD_21DefaultRefDerefTraitsISC_EEEEEENSA_INSB_15RemoteBindGroupENSE_ISL_NSF_ISL_EENSH_ISL_EEEEEENSA_INSB_21RemoteBindGroupLayoutENSE_ISQ_NSF_ISQ_EENSH_ISQ_EEEEEENSA_INSB_12RemoteBufferENSE_ISV_NSF_ISV_EENSH_ISV_EEEEEENSA_INSB_19RemoteCommandBufferENSE_IS10_NSF_IS10_EENSH_IS10_EEEEEENSA_INSB_20RemoteCommandEncoderENSE_IS15_NSF_IS15_EENSH_IS15_EEEEEENSA_INSB_27RemoteCompositorIntegrationENSE_IS1A_NSF_IS1A_EENSH_IS1A_EEEEEENSA_INSB_24RemoteComputePassEncoderENSE_IS1F_NSF_IS1F_EENSH_IS1F_EEEEEENSA_INSB_21RemoteComputePipelineENSE_IS1K_NSF_IS1K_EENSH_IS1K_EEEEEENSA_INSB_12RemoteDeviceENSE_IS1P_NSF_IS1P_EENSH_IS1P_EEEEEENSA_INSB_21RemoteExternalTextureENSE_IS1U_NSF_IS1U_EENSH_IS1U_EEEEEENSA_INSB_20RemotePipelineLayoutENSE_IS1Z_NSF_IS1Z_EENSH_IS1Z_EEEEEENSA_INSB_25RemotePresentationContextENSE_IS24_NSF_IS24_EENSH_IS24_EEEEEENSA_INSB_14RemoteQuerySetENSE_IS29_NSF_IS29_EENSH_IS29_EEEEEENSA_INSB_11RemoteQueueENSE_IS2E_NSF_IS2E_EENSH_IS2E_EEEEEENSA_INSB_25RemoteRenderBundleEncoderENSE_IS2J_NSF_IS2J_EENSH_IS2J_EEEEEENSA_INSB_18RemoteRenderBundleENSE_IS2O_NSF_IS2O_EENSH_IS2O_EEEEEENSA_INSB_23RemoteRenderPassEncoderENSE_IS2T_NSF_IS2T_EENSH_IS2T_EEEEEENSA_INSB_20RemoteRenderPipelineENSE_IS2Y_NSF_IS2Y_EENSH_IS2Y_EEEEEENSA_INSB_13RemoteSamplerENSE_IS33_NSF_IS33_EENSH_IS33_EEEEEENSA_INSB_18RemoteShaderModuleENSE_IS38_NSF_IS38_EENSH_IS38_EEEEEENSA_INSB_13RemoteTextureENSE_IS3D_NSF_IS3D_EENSH_IS3D_EEEEEENSA_INSB_17RemoteTextureViewENSE_IS3I_NSF_IS3I_EENSH_IS3I_EEEEEENSA_INSB_15RemoteXRBindingENSE_IS3N_NSF_IS3N_EENSH_IS3N_EEEEEENSA_INSB_16RemoteXRSubImageENSE_IS3S_NSF_IS3S_EENSH_IS3S_EEEEEENSA_INSB_23RemoteXRProjectionLayerENSE_IS3X_NSF_IS3X_EENSH_IS3X_EEEEEENSA_INSB_12RemoteXRViewENSE_IS42_NSF_IS42_EENSH_IS42_EEEEEEEEELNS0_5TraitE1EEEEEEDcOT_DpOT0_(&v33, (v15 + 1));
LABEL_225:
        v15[1] = v31;
        v31 = 0;
        v22 = 10;
        goto LABEL_22;
      }

      if (v19 == &v31)
      {
        break;
      }

      if (*v19)
      {
        IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteDevice,WTF::RefPtr<WebKit::RemoteDevice,WTF::RawPtrTraits<WebKit::RemoteDevice>,WTF::DefaultRefDerefTraits<WebKit::RemoteDevice>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::RemoteDevice,WTF::RawPtrTraits<WebKit::RemoteDevice>,WTF::DefaultRefDerefTraits<WebKit::RemoteDevice>>>(v15 + 1);
        goto LABEL_178;
      }

      goto LABEL_181;
    case 11:
      if (v21 == 255)
      {
        goto LABEL_189;
      }

      if (v21 != 11)
      {
        result = _ZN5mpark6detail10visitation3alt9visit_altINS0_4dtorEJRNS0_10destructorINS0_6traitsIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueIN6WebKit13RemoteAdapterEN3WTF6RefPtrISC_NSD_12RawPtrTraitsISC_EENSD_21DefaultRefDerefTraitsISC_EEEEEENSA_INSB_15RemoteBindGroupENSE_ISL_NSF_ISL_EENSH_ISL_EEEEEENSA_INSB_21RemoteBindGroupLayoutENSE_ISQ_NSF_ISQ_EENSH_ISQ_EEEEEENSA_INSB_12RemoteBufferENSE_ISV_NSF_ISV_EENSH_ISV_EEEEEENSA_INSB_19RemoteCommandBufferENSE_IS10_NSF_IS10_EENSH_IS10_EEEEEENSA_INSB_20RemoteCommandEncoderENSE_IS15_NSF_IS15_EENSH_IS15_EEEEEENSA_INSB_27RemoteCompositorIntegrationENSE_IS1A_NSF_IS1A_EENSH_IS1A_EEEEEENSA_INSB_24RemoteComputePassEncoderENSE_IS1F_NSF_IS1F_EENSH_IS1F_EEEEEENSA_INSB_21RemoteComputePipelineENSE_IS1K_NSF_IS1K_EENSH_IS1K_EEEEEENSA_INSB_12RemoteDeviceENSE_IS1P_NSF_IS1P_EENSH_IS1P_EEEEEENSA_INSB_21RemoteExternalTextureENSE_IS1U_NSF_IS1U_EENSH_IS1U_EEEEEENSA_INSB_20RemotePipelineLayoutENSE_IS1Z_NSF_IS1Z_EENSH_IS1Z_EEEEEENSA_INSB_25RemotePresentationContextENSE_IS24_NSF_IS24_EENSH_IS24_EEEEEENSA_INSB_14RemoteQuerySetENSE_IS29_NSF_IS29_EENSH_IS29_EEEEEENSA_INSB_11RemoteQueueENSE_IS2E_NSF_IS2E_EENSH_IS2E_EEEEEENSA_INSB_25RemoteRenderBundleEncoderENSE_IS2J_NSF_IS2J_EENSH_IS2J_EEEEEENSA_INSB_18RemoteRenderBundleENSE_IS2O_NSF_IS2O_EENSH_IS2O_EEEEEENSA_INSB_23RemoteRenderPassEncoderENSE_IS2T_NSF_IS2T_EENSH_IS2T_EEEEEENSA_INSB_20RemoteRenderPipelineENSE_IS2Y_NSF_IS2Y_EENSH_IS2Y_EEEEEENSA_INSB_13RemoteSamplerENSE_IS33_NSF_IS33_EENSH_IS33_EEEEEENSA_INSB_18RemoteShaderModuleENSE_IS38_NSF_IS38_EENSH_IS38_EEEEEENSA_INSB_13RemoteTextureENSE_IS3D_NSF_IS3D_EENSH_IS3D_EEEEEENSA_INSB_17RemoteTextureViewENSE_IS3I_NSF_IS3I_EENSH_IS3I_EEEEEENSA_INSB_15RemoteXRBindingENSE_IS3N_NSF_IS3N_EENSH_IS3N_EEEEEENSA_INSB_16RemoteXRSubImageENSE_IS3S_NSF_IS3S_EENSH_IS3S_EEEEEENSA_INSB_23RemoteXRProjectionLayerENSE_IS3X_NSF_IS3X_EENSH_IS3X_EEEEEENSA_INSB_12RemoteXRViewENSE_IS42_NSF_IS42_EENSH_IS42_EEEEEEEEELNS0_5TraitE1EEEEEEDcOT_DpOT0_(&v33, (v15 + 1));
LABEL_189:
        v15[1] = v31;
        v31 = 0;
        v22 = 11;
        goto LABEL_22;
      }

      if (v19 == &v31)
      {
        break;
      }

      if (*v19)
      {
        IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteExternalTexture,WTF::RefPtr<WebKit::RemoteExternalTexture,WTF::RawPtrTraits<WebKit::RemoteExternalTexture>,WTF::DefaultRefDerefTraits<WebKit::RemoteExternalTexture>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::RemoteExternalTexture,WTF::RawPtrTraits<WebKit::RemoteExternalTexture>,WTF::DefaultRefDerefTraits<WebKit::RemoteExternalTexture>>>(v15 + 1);
        goto LABEL_178;
      }

      goto LABEL_181;
    case 12:
      if (v21 == 255)
      {
        goto LABEL_193;
      }

      if (v21 != 12)
      {
        result = _ZN5mpark6detail10visitation3alt9visit_altINS0_4dtorEJRNS0_10destructorINS0_6traitsIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueIN6WebKit13RemoteAdapterEN3WTF6RefPtrISC_NSD_12RawPtrTraitsISC_EENSD_21DefaultRefDerefTraitsISC_EEEEEENSA_INSB_15RemoteBindGroupENSE_ISL_NSF_ISL_EENSH_ISL_EEEEEENSA_INSB_21RemoteBindGroupLayoutENSE_ISQ_NSF_ISQ_EENSH_ISQ_EEEEEENSA_INSB_12RemoteBufferENSE_ISV_NSF_ISV_EENSH_ISV_EEEEEENSA_INSB_19RemoteCommandBufferENSE_IS10_NSF_IS10_EENSH_IS10_EEEEEENSA_INSB_20RemoteCommandEncoderENSE_IS15_NSF_IS15_EENSH_IS15_EEEEEENSA_INSB_27RemoteCompositorIntegrationENSE_IS1A_NSF_IS1A_EENSH_IS1A_EEEEEENSA_INSB_24RemoteComputePassEncoderENSE_IS1F_NSF_IS1F_EENSH_IS1F_EEEEEENSA_INSB_21RemoteComputePipelineENSE_IS1K_NSF_IS1K_EENSH_IS1K_EEEEEENSA_INSB_12RemoteDeviceENSE_IS1P_NSF_IS1P_EENSH_IS1P_EEEEEENSA_INSB_21RemoteExternalTextureENSE_IS1U_NSF_IS1U_EENSH_IS1U_EEEEEENSA_INSB_20RemotePipelineLayoutENSE_IS1Z_NSF_IS1Z_EENSH_IS1Z_EEEEEENSA_INSB_25RemotePresentationContextENSE_IS24_NSF_IS24_EENSH_IS24_EEEEEENSA_INSB_14RemoteQuerySetENSE_IS29_NSF_IS29_EENSH_IS29_EEEEEENSA_INSB_11RemoteQueueENSE_IS2E_NSF_IS2E_EENSH_IS2E_EEEEEENSA_INSB_25RemoteRenderBundleEncoderENSE_IS2J_NSF_IS2J_EENSH_IS2J_EEEEEENSA_INSB_18RemoteRenderBundleENSE_IS2O_NSF_IS2O_EENSH_IS2O_EEEEEENSA_INSB_23RemoteRenderPassEncoderENSE_IS2T_NSF_IS2T_EENSH_IS2T_EEEEEENSA_INSB_20RemoteRenderPipelineENSE_IS2Y_NSF_IS2Y_EENSH_IS2Y_EEEEEENSA_INSB_13RemoteSamplerENSE_IS33_NSF_IS33_EENSH_IS33_EEEEEENSA_INSB_18RemoteShaderModuleENSE_IS38_NSF_IS38_EENSH_IS38_EEEEEENSA_INSB_13RemoteTextureENSE_IS3D_NSF_IS3D_EENSH_IS3D_EEEEEENSA_INSB_17RemoteTextureViewENSE_IS3I_NSF_IS3I_EENSH_IS3I_EEEEEENSA_INSB_15RemoteXRBindingENSE_IS3N_NSF_IS3N_EENSH_IS3N_EEEEEENSA_INSB_16RemoteXRSubImageENSE_IS3S_NSF_IS3S_EENSH_IS3S_EEEEEENSA_INSB_23RemoteXRProjectionLayerENSE_IS3X_NSF_IS3X_EENSH_IS3X_EEEEEENSA_INSB_12RemoteXRViewENSE_IS42_NSF_IS42_EENSH_IS42_EEEEEEEEELNS0_5TraitE1EEEEEEDcOT_DpOT0_(&v33, (v15 + 1));
LABEL_193:
        v15[1] = v31;
        v31 = 0;
        v22 = 12;
        goto LABEL_22;
      }

      if (v19 == &v31)
      {
        break;
      }

      if (*v19)
      {
        IPC::ScopedActiveMessageReceiveQueue<WebKit::RemotePipelineLayout,WTF::RefPtr<WebKit::RemotePipelineLayout,WTF::RawPtrTraits<WebKit::RemotePipelineLayout>,WTF::DefaultRefDerefTraits<WebKit::RemotePipelineLayout>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::RemotePipelineLayout,WTF::RawPtrTraits<WebKit::RemotePipelineLayout>,WTF::DefaultRefDerefTraits<WebKit::RemotePipelineLayout>>>(v15 + 1);
        goto LABEL_178;
      }

      goto LABEL_181;
    case 13:
      if (v21 == 255)
      {
        goto LABEL_219;
      }

      if (v21 != 13)
      {
        result = _ZN5mpark6detail10visitation3alt9visit_altINS0_4dtorEJRNS0_10destructorINS0_6traitsIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueIN6WebKit13RemoteAdapterEN3WTF6RefPtrISC_NSD_12RawPtrTraitsISC_EENSD_21DefaultRefDerefTraitsISC_EEEEEENSA_INSB_15RemoteBindGroupENSE_ISL_NSF_ISL_EENSH_ISL_EEEEEENSA_INSB_21RemoteBindGroupLayoutENSE_ISQ_NSF_ISQ_EENSH_ISQ_EEEEEENSA_INSB_12RemoteBufferENSE_ISV_NSF_ISV_EENSH_ISV_EEEEEENSA_INSB_19RemoteCommandBufferENSE_IS10_NSF_IS10_EENSH_IS10_EEEEEENSA_INSB_20RemoteCommandEncoderENSE_IS15_NSF_IS15_EENSH_IS15_EEEEEENSA_INSB_27RemoteCompositorIntegrationENSE_IS1A_NSF_IS1A_EENSH_IS1A_EEEEEENSA_INSB_24RemoteComputePassEncoderENSE_IS1F_NSF_IS1F_EENSH_IS1F_EEEEEENSA_INSB_21RemoteComputePipelineENSE_IS1K_NSF_IS1K_EENSH_IS1K_EEEEEENSA_INSB_12RemoteDeviceENSE_IS1P_NSF_IS1P_EENSH_IS1P_EEEEEENSA_INSB_21RemoteExternalTextureENSE_IS1U_NSF_IS1U_EENSH_IS1U_EEEEEENSA_INSB_20RemotePipelineLayoutENSE_IS1Z_NSF_IS1Z_EENSH_IS1Z_EEEEEENSA_INSB_25RemotePresentationContextENSE_IS24_NSF_IS24_EENSH_IS24_EEEEEENSA_INSB_14RemoteQuerySetENSE_IS29_NSF_IS29_EENSH_IS29_EEEEEENSA_INSB_11RemoteQueueENSE_IS2E_NSF_IS2E_EENSH_IS2E_EEEEEENSA_INSB_25RemoteRenderBundleEncoderENSE_IS2J_NSF_IS2J_EENSH_IS2J_EEEEEENSA_INSB_18RemoteRenderBundleENSE_IS2O_NSF_IS2O_EENSH_IS2O_EEEEEENSA_INSB_23RemoteRenderPassEncoderENSE_IS2T_NSF_IS2T_EENSH_IS2T_EEEEEENSA_INSB_20RemoteRenderPipelineENSE_IS2Y_NSF_IS2Y_EENSH_IS2Y_EEEEEENSA_INSB_13RemoteSamplerENSE_IS33_NSF_IS33_EENSH_IS33_EEEEEENSA_INSB_18RemoteShaderModuleENSE_IS38_NSF_IS38_EENSH_IS38_EEEEEENSA_INSB_13RemoteTextureENSE_IS3D_NSF_IS3D_EENSH_IS3D_EEEEEENSA_INSB_17RemoteTextureViewENSE_IS3I_NSF_IS3I_EENSH_IS3I_EEEEEENSA_INSB_15RemoteXRBindingENSE_IS3N_NSF_IS3N_EENSH_IS3N_EEEEEENSA_INSB_16RemoteXRSubImageENSE_IS3S_NSF_IS3S_EENSH_IS3S_EEEEEENSA_INSB_23RemoteXRProjectionLayerENSE_IS3X_NSF_IS3X_EENSH_IS3X_EEEEEENSA_INSB_12RemoteXRViewENSE_IS42_NSF_IS42_EENSH_IS42_EEEEEEEEELNS0_5TraitE1EEEEEEDcOT_DpOT0_(&v33, (v15 + 1));
LABEL_219:
        v15[1] = v31;
        v31 = 0;
        v22 = 13;
        goto LABEL_22;
      }

      if (v19 == &v31)
      {
        break;
      }

      if (*v19)
      {
        IPC::ScopedActiveMessageReceiveQueue<WebKit::RemotePresentationContext,WTF::RefPtr<WebKit::RemotePresentationContext,WTF::RawPtrTraits<WebKit::RemotePresentationContext>,WTF::DefaultRefDerefTraits<WebKit::RemotePresentationContext>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::RemotePresentationContext,WTF::RawPtrTraits<WebKit::RemotePresentationContext>,WTF::DefaultRefDerefTraits<WebKit::RemotePresentationContext>>>(v15 + 1);
        goto LABEL_178;
      }

      goto LABEL_181;
    case 14:
      if (v21 == 255)
      {
        goto LABEL_187;
      }

      if (v21 != 14)
      {
        result = _ZN5mpark6detail10visitation3alt9visit_altINS0_4dtorEJRNS0_10destructorINS0_6traitsIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueIN6WebKit13RemoteAdapterEN3WTF6RefPtrISC_NSD_12RawPtrTraitsISC_EENSD_21DefaultRefDerefTraitsISC_EEEEEENSA_INSB_15RemoteBindGroupENSE_ISL_NSF_ISL_EENSH_ISL_EEEEEENSA_INSB_21RemoteBindGroupLayoutENSE_ISQ_NSF_ISQ_EENSH_ISQ_EEEEEENSA_INSB_12RemoteBufferENSE_ISV_NSF_ISV_EENSH_ISV_EEEEEENSA_INSB_19RemoteCommandBufferENSE_IS10_NSF_IS10_EENSH_IS10_EEEEEENSA_INSB_20RemoteCommandEncoderENSE_IS15_NSF_IS15_EENSH_IS15_EEEEEENSA_INSB_27RemoteCompositorIntegrationENSE_IS1A_NSF_IS1A_EENSH_IS1A_EEEEEENSA_INSB_24RemoteComputePassEncoderENSE_IS1F_NSF_IS1F_EENSH_IS1F_EEEEEENSA_INSB_21RemoteComputePipelineENSE_IS1K_NSF_IS1K_EENSH_IS1K_EEEEEENSA_INSB_12RemoteDeviceENSE_IS1P_NSF_IS1P_EENSH_IS1P_EEEEEENSA_INSB_21RemoteExternalTextureENSE_IS1U_NSF_IS1U_EENSH_IS1U_EEEEEENSA_INSB_20RemotePipelineLayoutENSE_IS1Z_NSF_IS1Z_EENSH_IS1Z_EEEEEENSA_INSB_25RemotePresentationContextENSE_IS24_NSF_IS24_EENSH_IS24_EEEEEENSA_INSB_14RemoteQuerySetENSE_IS29_NSF_IS29_EENSH_IS29_EEEEEENSA_INSB_11RemoteQueueENSE_IS2E_NSF_IS2E_EENSH_IS2E_EEEEEENSA_INSB_25RemoteRenderBundleEncoderENSE_IS2J_NSF_IS2J_EENSH_IS2J_EEEEEENSA_INSB_18RemoteRenderBundleENSE_IS2O_NSF_IS2O_EENSH_IS2O_EEEEEENSA_INSB_23RemoteRenderPassEncoderENSE_IS2T_NSF_IS2T_EENSH_IS2T_EEEEEENSA_INSB_20RemoteRenderPipelineENSE_IS2Y_NSF_IS2Y_EENSH_IS2Y_EEEEEENSA_INSB_13RemoteSamplerENSE_IS33_NSF_IS33_EENSH_IS33_EEEEEENSA_INSB_18RemoteShaderModuleENSE_IS38_NSF_IS38_EENSH_IS38_EEEEEENSA_INSB_13RemoteTextureENSE_IS3D_NSF_IS3D_EENSH_IS3D_EEEEEENSA_INSB_17RemoteTextureViewENSE_IS3I_NSF_IS3I_EENSH_IS3I_EEEEEENSA_INSB_15RemoteXRBindingENSE_IS3N_NSF_IS3N_EENSH_IS3N_EEEEEENSA_INSB_16RemoteXRSubImageENSE_IS3S_NSF_IS3S_EENSH_IS3S_EEEEEENSA_INSB_23RemoteXRProjectionLayerENSE_IS3X_NSF_IS3X_EENSH_IS3X_EEEEEENSA_INSB_12RemoteXRViewENSE_IS42_NSF_IS42_EENSH_IS42_EEEEEEEEELNS0_5TraitE1EEEEEEDcOT_DpOT0_(&v33, (v15 + 1));
LABEL_187:
        v15[1] = v31;
        v31 = 0;
        v22 = 14;
        goto LABEL_22;
      }

      if (v19 == &v31)
      {
        break;
      }

      if (*v19)
      {
        IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteQuerySet,WTF::RefPtr<WebKit::RemoteQuerySet,WTF::RawPtrTraits<WebKit::RemoteQuerySet>,WTF::DefaultRefDerefTraits<WebKit::RemoteQuerySet>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::RemoteQuerySet,WTF::RawPtrTraits<WebKit::RemoteQuerySet>,WTF::DefaultRefDerefTraits<WebKit::RemoteQuerySet>>>(v15 + 1);
        goto LABEL_178;
      }

      goto LABEL_181;
    case 15:
      if (v21 == 255)
      {
        goto LABEL_203;
      }

      if (v21 != 15)
      {
        result = _ZN5mpark6detail10visitation3alt9visit_altINS0_4dtorEJRNS0_10destructorINS0_6traitsIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueIN6WebKit13RemoteAdapterEN3WTF6RefPtrISC_NSD_12RawPtrTraitsISC_EENSD_21DefaultRefDerefTraitsISC_EEEEEENSA_INSB_15RemoteBindGroupENSE_ISL_NSF_ISL_EENSH_ISL_EEEEEENSA_INSB_21RemoteBindGroupLayoutENSE_ISQ_NSF_ISQ_EENSH_ISQ_EEEEEENSA_INSB_12RemoteBufferENSE_ISV_NSF_ISV_EENSH_ISV_EEEEEENSA_INSB_19RemoteCommandBufferENSE_IS10_NSF_IS10_EENSH_IS10_EEEEEENSA_INSB_20RemoteCommandEncoderENSE_IS15_NSF_IS15_EENSH_IS15_EEEEEENSA_INSB_27RemoteCompositorIntegrationENSE_IS1A_NSF_IS1A_EENSH_IS1A_EEEEEENSA_INSB_24RemoteComputePassEncoderENSE_IS1F_NSF_IS1F_EENSH_IS1F_EEEEEENSA_INSB_21RemoteComputePipelineENSE_IS1K_NSF_IS1K_EENSH_IS1K_EEEEEENSA_INSB_12RemoteDeviceENSE_IS1P_NSF_IS1P_EENSH_IS1P_EEEEEENSA_INSB_21RemoteExternalTextureENSE_IS1U_NSF_IS1U_EENSH_IS1U_EEEEEENSA_INSB_20RemotePipelineLayoutENSE_IS1Z_NSF_IS1Z_EENSH_IS1Z_EEEEEENSA_INSB_25RemotePresentationContextENSE_IS24_NSF_IS24_EENSH_IS24_EEEEEENSA_INSB_14RemoteQuerySetENSE_IS29_NSF_IS29_EENSH_IS29_EEEEEENSA_INSB_11RemoteQueueENSE_IS2E_NSF_IS2E_EENSH_IS2E_EEEEEENSA_INSB_25RemoteRenderBundleEncoderENSE_IS2J_NSF_IS2J_EENSH_IS2J_EEEEEENSA_INSB_18RemoteRenderBundleENSE_IS2O_NSF_IS2O_EENSH_IS2O_EEEEEENSA_INSB_23RemoteRenderPassEncoderENSE_IS2T_NSF_IS2T_EENSH_IS2T_EEEEEENSA_INSB_20RemoteRenderPipelineENSE_IS2Y_NSF_IS2Y_EENSH_IS2Y_EEEEEENSA_INSB_13RemoteSamplerENSE_IS33_NSF_IS33_EENSH_IS33_EEEEEENSA_INSB_18RemoteShaderModuleENSE_IS38_NSF_IS38_EENSH_IS38_EEEEEENSA_INSB_13RemoteTextureENSE_IS3D_NSF_IS3D_EENSH_IS3D_EEEEEENSA_INSB_17RemoteTextureViewENSE_IS3I_NSF_IS3I_EENSH_IS3I_EEEEEENSA_INSB_15RemoteXRBindingENSE_IS3N_NSF_IS3N_EENSH_IS3N_EEEEEENSA_INSB_16RemoteXRSubImageENSE_IS3S_NSF_IS3S_EENSH_IS3S_EEEEEENSA_INSB_23RemoteXRProjectionLayerENSE_IS3X_NSF_IS3X_EENSH_IS3X_EEEEEENSA_INSB_12RemoteXRViewENSE_IS42_NSF_IS42_EENSH_IS42_EEEEEEEEELNS0_5TraitE1EEEEEEDcOT_DpOT0_(&v33, (v15 + 1));
LABEL_203:
        v15[1] = v31;
        v31 = 0;
        v22 = 15;
        goto LABEL_22;
      }

      if (v19 == &v31)
      {
        break;
      }

      if (*v19)
      {
        IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteQueue,WTF::RefPtr<WebKit::RemoteQueue,WTF::RawPtrTraits<WebKit::RemoteQueue>,WTF::DefaultRefDerefTraits<WebKit::RemoteQueue>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::RemoteQueue,WTF::RawPtrTraits<WebKit::RemoteQueue>,WTF::DefaultRefDerefTraits<WebKit::RemoteQueue>>>(v15 + 1);
        goto LABEL_178;
      }

      goto LABEL_181;
    case 16:
      if (v21 == 255)
      {
        goto LABEL_185;
      }

      if (v21 != 16)
      {
        result = _ZN5mpark6detail10visitation3alt9visit_altINS0_4dtorEJRNS0_10destructorINS0_6traitsIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueIN6WebKit13RemoteAdapterEN3WTF6RefPtrISC_NSD_12RawPtrTraitsISC_EENSD_21DefaultRefDerefTraitsISC_EEEEEENSA_INSB_15RemoteBindGroupENSE_ISL_NSF_ISL_EENSH_ISL_EEEEEENSA_INSB_21RemoteBindGroupLayoutENSE_ISQ_NSF_ISQ_EENSH_ISQ_EEEEEENSA_INSB_12RemoteBufferENSE_ISV_NSF_ISV_EENSH_ISV_EEEEEENSA_INSB_19RemoteCommandBufferENSE_IS10_NSF_IS10_EENSH_IS10_EEEEEENSA_INSB_20RemoteCommandEncoderENSE_IS15_NSF_IS15_EENSH_IS15_EEEEEENSA_INSB_27RemoteCompositorIntegrationENSE_IS1A_NSF_IS1A_EENSH_IS1A_EEEEEENSA_INSB_24RemoteComputePassEncoderENSE_IS1F_NSF_IS1F_EENSH_IS1F_EEEEEENSA_INSB_21RemoteComputePipelineENSE_IS1K_NSF_IS1K_EENSH_IS1K_EEEEEENSA_INSB_12RemoteDeviceENSE_IS1P_NSF_IS1P_EENSH_IS1P_EEEEEENSA_INSB_21RemoteExternalTextureENSE_IS1U_NSF_IS1U_EENSH_IS1U_EEEEEENSA_INSB_20RemotePipelineLayoutENSE_IS1Z_NSF_IS1Z_EENSH_IS1Z_EEEEEENSA_INSB_25RemotePresentationContextENSE_IS24_NSF_IS24_EENSH_IS24_EEEEEENSA_INSB_14RemoteQuerySetENSE_IS29_NSF_IS29_EENSH_IS29_EEEEEENSA_INSB_11RemoteQueueENSE_IS2E_NSF_IS2E_EENSH_IS2E_EEEEEENSA_INSB_25RemoteRenderBundleEncoderENSE_IS2J_NSF_IS2J_EENSH_IS2J_EEEEEENSA_INSB_18RemoteRenderBundleENSE_IS2O_NSF_IS2O_EENSH_IS2O_EEEEEENSA_INSB_23RemoteRenderPassEncoderENSE_IS2T_NSF_IS2T_EENSH_IS2T_EEEEEENSA_INSB_20RemoteRenderPipelineENSE_IS2Y_NSF_IS2Y_EENSH_IS2Y_EEEEEENSA_INSB_13RemoteSamplerENSE_IS33_NSF_IS33_EENSH_IS33_EEEEEENSA_INSB_18RemoteShaderModuleENSE_IS38_NSF_IS38_EENSH_IS38_EEEEEENSA_INSB_13RemoteTextureENSE_IS3D_NSF_IS3D_EENSH_IS3D_EEEEEENSA_INSB_17RemoteTextureViewENSE_IS3I_NSF_IS3I_EENSH_IS3I_EEEEEENSA_INSB_15RemoteXRBindingENSE_IS3N_NSF_IS3N_EENSH_IS3N_EEEEEENSA_INSB_16RemoteXRSubImageENSE_IS3S_NSF_IS3S_EENSH_IS3S_EEEEEENSA_INSB_23RemoteXRProjectionLayerENSE_IS3X_NSF_IS3X_EENSH_IS3X_EEEEEENSA_INSB_12RemoteXRViewENSE_IS42_NSF_IS42_EENSH_IS42_EEEEEEEEELNS0_5TraitE1EEEEEEDcOT_DpOT0_(&v33, (v15 + 1));
LABEL_185:
        v15[1] = v31;
        v31 = 0;
        v22 = 16;
        goto LABEL_22;
      }

      if (v19 == &v31)
      {
        break;
      }

      if (*v19)
      {
        IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderBundleEncoder,WTF::RefPtr<WebKit::RemoteRenderBundleEncoder,WTF::RawPtrTraits<WebKit::RemoteRenderBundleEncoder>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderBundleEncoder>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::RemoteRenderBundleEncoder,WTF::RawPtrTraits<WebKit::RemoteRenderBundleEncoder>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderBundleEncoder>>>(v15 + 1);
        goto LABEL_178;
      }

      goto LABEL_181;
    case 17:
      if (v21 == 255)
      {
        goto LABEL_211;
      }

      if (v21 != 17)
      {
        result = _ZN5mpark6detail10visitation3alt9visit_altINS0_4dtorEJRNS0_10destructorINS0_6traitsIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueIN6WebKit13RemoteAdapterEN3WTF6RefPtrISC_NSD_12RawPtrTraitsISC_EENSD_21DefaultRefDerefTraitsISC_EEEEEENSA_INSB_15RemoteBindGroupENSE_ISL_NSF_ISL_EENSH_ISL_EEEEEENSA_INSB_21RemoteBindGroupLayoutENSE_ISQ_NSF_ISQ_EENSH_ISQ_EEEEEENSA_INSB_12RemoteBufferENSE_ISV_NSF_ISV_EENSH_ISV_EEEEEENSA_INSB_19RemoteCommandBufferENSE_IS10_NSF_IS10_EENSH_IS10_EEEEEENSA_INSB_20RemoteCommandEncoderENSE_IS15_NSF_IS15_EENSH_IS15_EEEEEENSA_INSB_27RemoteCompositorIntegrationENSE_IS1A_NSF_IS1A_EENSH_IS1A_EEEEEENSA_INSB_24RemoteComputePassEncoderENSE_IS1F_NSF_IS1F_EENSH_IS1F_EEEEEENSA_INSB_21RemoteComputePipelineENSE_IS1K_NSF_IS1K_EENSH_IS1K_EEEEEENSA_INSB_12RemoteDeviceENSE_IS1P_NSF_IS1P_EENSH_IS1P_EEEEEENSA_INSB_21RemoteExternalTextureENSE_IS1U_NSF_IS1U_EENSH_IS1U_EEEEEENSA_INSB_20RemotePipelineLayoutENSE_IS1Z_NSF_IS1Z_EENSH_IS1Z_EEEEEENSA_INSB_25RemotePresentationContextENSE_IS24_NSF_IS24_EENSH_IS24_EEEEEENSA_INSB_14RemoteQuerySetENSE_IS29_NSF_IS29_EENSH_IS29_EEEEEENSA_INSB_11RemoteQueueENSE_IS2E_NSF_IS2E_EENSH_IS2E_EEEEEENSA_INSB_25RemoteRenderBundleEncoderENSE_IS2J_NSF_IS2J_EENSH_IS2J_EEEEEENSA_INSB_18RemoteRenderBundleENSE_IS2O_NSF_IS2O_EENSH_IS2O_EEEEEENSA_INSB_23RemoteRenderPassEncoderENSE_IS2T_NSF_IS2T_EENSH_IS2T_EEEEEENSA_INSB_20RemoteRenderPipelineENSE_IS2Y_NSF_IS2Y_EENSH_IS2Y_EEEEEENSA_INSB_13RemoteSamplerENSE_IS33_NSF_IS33_EENSH_IS33_EEEEEENSA_INSB_18RemoteShaderModuleENSE_IS38_NSF_IS38_EENSH_IS38_EEEEEENSA_INSB_13RemoteTextureENSE_IS3D_NSF_IS3D_EENSH_IS3D_EEEEEENSA_INSB_17RemoteTextureViewENSE_IS3I_NSF_IS3I_EENSH_IS3I_EEEEEENSA_INSB_15RemoteXRBindingENSE_IS3N_NSF_IS3N_EENSH_IS3N_EEEEEENSA_INSB_16RemoteXRSubImageENSE_IS3S_NSF_IS3S_EENSH_IS3S_EEEEEENSA_INSB_23RemoteXRProjectionLayerENSE_IS3X_NSF_IS3X_EENSH_IS3X_EEEEEENSA_INSB_12RemoteXRViewENSE_IS42_NSF_IS42_EENSH_IS42_EEEEEEEEELNS0_5TraitE1EEEEEEDcOT_DpOT0_(&v33, (v15 + 1));
LABEL_211:
        v15[1] = v31;
        v31 = 0;
        v22 = 17;
        goto LABEL_22;
      }

      if (v19 == &v31)
      {
        break;
      }

      if (*v19)
      {
        IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderBundle,WTF::RefPtr<WebKit::RemoteRenderBundle,WTF::RawPtrTraits<WebKit::RemoteRenderBundle>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderBundle>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::RemoteRenderBundle,WTF::RawPtrTraits<WebKit::RemoteRenderBundle>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderBundle>>>(v15 + 1);
        goto LABEL_178;
      }

      goto LABEL_181;
    case 18:
      if (v21 == 255)
      {
        goto LABEL_223;
      }

      if (v21 != 18)
      {
        result = _ZN5mpark6detail10visitation3alt9visit_altINS0_4dtorEJRNS0_10destructorINS0_6traitsIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueIN6WebKit13RemoteAdapterEN3WTF6RefPtrISC_NSD_12RawPtrTraitsISC_EENSD_21DefaultRefDerefTraitsISC_EEEEEENSA_INSB_15RemoteBindGroupENSE_ISL_NSF_ISL_EENSH_ISL_EEEEEENSA_INSB_21RemoteBindGroupLayoutENSE_ISQ_NSF_ISQ_EENSH_ISQ_EEEEEENSA_INSB_12RemoteBufferENSE_ISV_NSF_ISV_EENSH_ISV_EEEEEENSA_INSB_19RemoteCommandBufferENSE_IS10_NSF_IS10_EENSH_IS10_EEEEEENSA_INSB_20RemoteCommandEncoderENSE_IS15_NSF_IS15_EENSH_IS15_EEEEEENSA_INSB_27RemoteCompositorIntegrationENSE_IS1A_NSF_IS1A_EENSH_IS1A_EEEEEENSA_INSB_24RemoteComputePassEncoderENSE_IS1F_NSF_IS1F_EENSH_IS1F_EEEEEENSA_INSB_21RemoteComputePipelineENSE_IS1K_NSF_IS1K_EENSH_IS1K_EEEEEENSA_INSB_12RemoteDeviceENSE_IS1P_NSF_IS1P_EENSH_IS1P_EEEEEENSA_INSB_21RemoteExternalTextureENSE_IS1U_NSF_IS1U_EENSH_IS1U_EEEEEENSA_INSB_20RemotePipelineLayoutENSE_IS1Z_NSF_IS1Z_EENSH_IS1Z_EEEEEENSA_INSB_25RemotePresentationContextENSE_IS24_NSF_IS24_EENSH_IS24_EEEEEENSA_INSB_14RemoteQuerySetENSE_IS29_NSF_IS29_EENSH_IS29_EEEEEENSA_INSB_11RemoteQueueENSE_IS2E_NSF_IS2E_EENSH_IS2E_EEEEEENSA_INSB_25RemoteRenderBundleEncoderENSE_IS2J_NSF_IS2J_EENSH_IS2J_EEEEEENSA_INSB_18RemoteRenderBundleENSE_IS2O_NSF_IS2O_EENSH_IS2O_EEEEEENSA_INSB_23RemoteRenderPassEncoderENSE_IS2T_NSF_IS2T_EENSH_IS2T_EEEEEENSA_INSB_20RemoteRenderPipelineENSE_IS2Y_NSF_IS2Y_EENSH_IS2Y_EEEEEENSA_INSB_13RemoteSamplerENSE_IS33_NSF_IS33_EENSH_IS33_EEEEEENSA_INSB_18RemoteShaderModuleENSE_IS38_NSF_IS38_EENSH_IS38_EEEEEENSA_INSB_13RemoteTextureENSE_IS3D_NSF_IS3D_EENSH_IS3D_EEEEEENSA_INSB_17RemoteTextureViewENSE_IS3I_NSF_IS3I_EENSH_IS3I_EEEEEENSA_INSB_15RemoteXRBindingENSE_IS3N_NSF_IS3N_EENSH_IS3N_EEEEEENSA_INSB_16RemoteXRSubImageENSE_IS3S_NSF_IS3S_EENSH_IS3S_EEEEEENSA_INSB_23RemoteXRProjectionLayerENSE_IS3X_NSF_IS3X_EENSH_IS3X_EEEEEENSA_INSB_12RemoteXRViewENSE_IS42_NSF_IS42_EENSH_IS42_EEEEEEEEELNS0_5TraitE1EEEEEEDcOT_DpOT0_(&v33, (v15 + 1));
LABEL_223:
        v15[1] = v31;
        v31 = 0;
        v22 = 18;
        goto LABEL_22;
      }

      if (v19 == &v31)
      {
        break;
      }

      if (*v19)
      {
        IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderPassEncoder,WTF::RefPtr<WebKit::RemoteRenderPassEncoder,WTF::RawPtrTraits<WebKit::RemoteRenderPassEncoder>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderPassEncoder>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::RemoteRenderPassEncoder,WTF::RawPtrTraits<WebKit::RemoteRenderPassEncoder>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderPassEncoder>>>(v15 + 1);
        goto LABEL_178;
      }

      goto LABEL_181;
    case 19:
      if (v21 == 255)
      {
        goto LABEL_231;
      }

      if (v21 != 19)
      {
        result = _ZN5mpark6detail10visitation3alt9visit_altINS0_4dtorEJRNS0_10destructorINS0_6traitsIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueIN6WebKit13RemoteAdapterEN3WTF6RefPtrISC_NSD_12RawPtrTraitsISC_EENSD_21DefaultRefDerefTraitsISC_EEEEEENSA_INSB_15RemoteBindGroupENSE_ISL_NSF_ISL_EENSH_ISL_EEEEEENSA_INSB_21RemoteBindGroupLayoutENSE_ISQ_NSF_ISQ_EENSH_ISQ_EEEEEENSA_INSB_12RemoteBufferENSE_ISV_NSF_ISV_EENSH_ISV_EEEEEENSA_INSB_19RemoteCommandBufferENSE_IS10_NSF_IS10_EENSH_IS10_EEEEEENSA_INSB_20RemoteCommandEncoderENSE_IS15_NSF_IS15_EENSH_IS15_EEEEEENSA_INSB_27RemoteCompositorIntegrationENSE_IS1A_NSF_IS1A_EENSH_IS1A_EEEEEENSA_INSB_24RemoteComputePassEncoderENSE_IS1F_NSF_IS1F_EENSH_IS1F_EEEEEENSA_INSB_21RemoteComputePipelineENSE_IS1K_NSF_IS1K_EENSH_IS1K_EEEEEENSA_INSB_12RemoteDeviceENSE_IS1P_NSF_IS1P_EENSH_IS1P_EEEEEENSA_INSB_21RemoteExternalTextureENSE_IS1U_NSF_IS1U_EENSH_IS1U_EEEEEENSA_INSB_20RemotePipelineLayoutENSE_IS1Z_NSF_IS1Z_EENSH_IS1Z_EEEEEENSA_INSB_25RemotePresentationContextENSE_IS24_NSF_IS24_EENSH_IS24_EEEEEENSA_INSB_14RemoteQuerySetENSE_IS29_NSF_IS29_EENSH_IS29_EEEEEENSA_INSB_11RemoteQueueENSE_IS2E_NSF_IS2E_EENSH_IS2E_EEEEEENSA_INSB_25RemoteRenderBundleEncoderENSE_IS2J_NSF_IS2J_EENSH_IS2J_EEEEEENSA_INSB_18RemoteRenderBundleENSE_IS2O_NSF_IS2O_EENSH_IS2O_EEEEEENSA_INSB_23RemoteRenderPassEncoderENSE_IS2T_NSF_IS2T_EENSH_IS2T_EEEEEENSA_INSB_20RemoteRenderPipelineENSE_IS2Y_NSF_IS2Y_EENSH_IS2Y_EEEEEENSA_INSB_13RemoteSamplerENSE_IS33_NSF_IS33_EENSH_IS33_EEEEEENSA_INSB_18RemoteShaderModuleENSE_IS38_NSF_IS38_EENSH_IS38_EEEEEENSA_INSB_13RemoteTextureENSE_IS3D_NSF_IS3D_EENSH_IS3D_EEEEEENSA_INSB_17RemoteTextureViewENSE_IS3I_NSF_IS3I_EENSH_IS3I_EEEEEENSA_INSB_15RemoteXRBindingENSE_IS3N_NSF_IS3N_EENSH_IS3N_EEEEEENSA_INSB_16RemoteXRSubImageENSE_IS3S_NSF_IS3S_EENSH_IS3S_EEEEEENSA_INSB_23RemoteXRProjectionLayerENSE_IS3X_NSF_IS3X_EENSH_IS3X_EEEEEENSA_INSB_12RemoteXRViewENSE_IS42_NSF_IS42_EENSH_IS42_EEEEEEEEELNS0_5TraitE1EEEEEEDcOT_DpOT0_(&v33, (v15 + 1));
LABEL_231:
        v15[1] = v31;
        v31 = 0;
        v22 = 19;
        goto LABEL_22;
      }

      if (v19 == &v31)
      {
        break;
      }

      if (*v19)
      {
        IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderPipeline,WTF::RefPtr<WebKit::RemoteRenderPipeline,WTF::RawPtrTraits<WebKit::RemoteRenderPipeline>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderPipeline>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::RemoteRenderPipeline,WTF::RawPtrTraits<WebKit::RemoteRenderPipeline>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderPipeline>>>(v15 + 1);
        goto LABEL_178;
      }

      goto LABEL_181;
    case 20:
      if (v21 == 255)
      {
        goto LABEL_213;
      }

      if (v21 != 20)
      {
        result = _ZN5mpark6detail10visitation3alt9visit_altINS0_4dtorEJRNS0_10destructorINS0_6traitsIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueIN6WebKit13RemoteAdapterEN3WTF6RefPtrISC_NSD_12RawPtrTraitsISC_EENSD_21DefaultRefDerefTraitsISC_EEEEEENSA_INSB_15RemoteBindGroupENSE_ISL_NSF_ISL_EENSH_ISL_EEEEEENSA_INSB_21RemoteBindGroupLayoutENSE_ISQ_NSF_ISQ_EENSH_ISQ_EEEEEENSA_INSB_12RemoteBufferENSE_ISV_NSF_ISV_EENSH_ISV_EEEEEENSA_INSB_19RemoteCommandBufferENSE_IS10_NSF_IS10_EENSH_IS10_EEEEEENSA_INSB_20RemoteCommandEncoderENSE_IS15_NSF_IS15_EENSH_IS15_EEEEEENSA_INSB_27RemoteCompositorIntegrationENSE_IS1A_NSF_IS1A_EENSH_IS1A_EEEEEENSA_INSB_24RemoteComputePassEncoderENSE_IS1F_NSF_IS1F_EENSH_IS1F_EEEEEENSA_INSB_21RemoteComputePipelineENSE_IS1K_NSF_IS1K_EENSH_IS1K_EEEEEENSA_INSB_12RemoteDeviceENSE_IS1P_NSF_IS1P_EENSH_IS1P_EEEEEENSA_INSB_21RemoteExternalTextureENSE_IS1U_NSF_IS1U_EENSH_IS1U_EEEEEENSA_INSB_20RemotePipelineLayoutENSE_IS1Z_NSF_IS1Z_EENSH_IS1Z_EEEEEENSA_INSB_25RemotePresentationContextENSE_IS24_NSF_IS24_EENSH_IS24_EEEEEENSA_INSB_14RemoteQuerySetENSE_IS29_NSF_IS29_EENSH_IS29_EEEEEENSA_INSB_11RemoteQueueENSE_IS2E_NSF_IS2E_EENSH_IS2E_EEEEEENSA_INSB_25RemoteRenderBundleEncoderENSE_IS2J_NSF_IS2J_EENSH_IS2J_EEEEEENSA_INSB_18RemoteRenderBundleENSE_IS2O_NSF_IS2O_EENSH_IS2O_EEEEEENSA_INSB_23RemoteRenderPassEncoderENSE_IS2T_NSF_IS2T_EENSH_IS2T_EEEEEENSA_INSB_20RemoteRenderPipelineENSE_IS2Y_NSF_IS2Y_EENSH_IS2Y_EEEEEENSA_INSB_13RemoteSamplerENSE_IS33_NSF_IS33_EENSH_IS33_EEEEEENSA_INSB_18RemoteShaderModuleENSE_IS38_NSF_IS38_EENSH_IS38_EEEEEENSA_INSB_13RemoteTextureENSE_IS3D_NSF_IS3D_EENSH_IS3D_EEEEEENSA_INSB_17RemoteTextureViewENSE_IS3I_NSF_IS3I_EENSH_IS3I_EEEEEENSA_INSB_15RemoteXRBindingENSE_IS3N_NSF_IS3N_EENSH_IS3N_EEEEEENSA_INSB_16RemoteXRSubImageENSE_IS3S_NSF_IS3S_EENSH_IS3S_EEEEEENSA_INSB_23RemoteXRProjectionLayerENSE_IS3X_NSF_IS3X_EENSH_IS3X_EEEEEENSA_INSB_12RemoteXRViewENSE_IS42_NSF_IS42_EENSH_IS42_EEEEEEEEELNS0_5TraitE1EEEEEEDcOT_DpOT0_(&v33, (v15 + 1));
LABEL_213:
        v15[1] = v31;
        v31 = 0;
        v22 = 20;
        goto LABEL_22;
      }

      if (v19 == &v31)
      {
        break;
      }

      if (*v19)
      {
        IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteSampler,WTF::RefPtr<WebKit::RemoteSampler,WTF::RawPtrTraits<WebKit::RemoteSampler>,WTF::DefaultRefDerefTraits<WebKit::RemoteSampler>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::RemoteSampler,WTF::RawPtrTraits<WebKit::RemoteSampler>,WTF::DefaultRefDerefTraits<WebKit::RemoteSampler>>>(v15 + 1);
        goto LABEL_178;
      }

      goto LABEL_181;
    case 21:
      if (v21 == 255)
      {
        goto LABEL_217;
      }

      if (v21 != 21)
      {
        result = _ZN5mpark6detail10visitation3alt9visit_altINS0_4dtorEJRNS0_10destructorINS0_6traitsIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueIN6WebKit13RemoteAdapterEN3WTF6RefPtrISC_NSD_12RawPtrTraitsISC_EENSD_21DefaultRefDerefTraitsISC_EEEEEENSA_INSB_15RemoteBindGroupENSE_ISL_NSF_ISL_EENSH_ISL_EEEEEENSA_INSB_21RemoteBindGroupLayoutENSE_ISQ_NSF_ISQ_EENSH_ISQ_EEEEEENSA_INSB_12RemoteBufferENSE_ISV_NSF_ISV_EENSH_ISV_EEEEEENSA_INSB_19RemoteCommandBufferENSE_IS10_NSF_IS10_EENSH_IS10_EEEEEENSA_INSB_20RemoteCommandEncoderENSE_IS15_NSF_IS15_EENSH_IS15_EEEEEENSA_INSB_27RemoteCompositorIntegrationENSE_IS1A_NSF_IS1A_EENSH_IS1A_EEEEEENSA_INSB_24RemoteComputePassEncoderENSE_IS1F_NSF_IS1F_EENSH_IS1F_EEEEEENSA_INSB_21RemoteComputePipelineENSE_IS1K_NSF_IS1K_EENSH_IS1K_EEEEEENSA_INSB_12RemoteDeviceENSE_IS1P_NSF_IS1P_EENSH_IS1P_EEEEEENSA_INSB_21RemoteExternalTextureENSE_IS1U_NSF_IS1U_EENSH_IS1U_EEEEEENSA_INSB_20RemotePipelineLayoutENSE_IS1Z_NSF_IS1Z_EENSH_IS1Z_EEEEEENSA_INSB_25RemotePresentationContextENSE_IS24_NSF_IS24_EENSH_IS24_EEEEEENSA_INSB_14RemoteQuerySetENSE_IS29_NSF_IS29_EENSH_IS29_EEEEEENSA_INSB_11RemoteQueueENSE_IS2E_NSF_IS2E_EENSH_IS2E_EEEEEENSA_INSB_25RemoteRenderBundleEncoderENSE_IS2J_NSF_IS2J_EENSH_IS2J_EEEEEENSA_INSB_18RemoteRenderBundleENSE_IS2O_NSF_IS2O_EENSH_IS2O_EEEEEENSA_INSB_23RemoteRenderPassEncoderENSE_IS2T_NSF_IS2T_EENSH_IS2T_EEEEEENSA_INSB_20RemoteRenderPipelineENSE_IS2Y_NSF_IS2Y_EENSH_IS2Y_EEEEEENSA_INSB_13RemoteSamplerENSE_IS33_NSF_IS33_EENSH_IS33_EEEEEENSA_INSB_18RemoteShaderModuleENSE_IS38_NSF_IS38_EENSH_IS38_EEEEEENSA_INSB_13RemoteTextureENSE_IS3D_NSF_IS3D_EENSH_IS3D_EEEEEENSA_INSB_17RemoteTextureViewENSE_IS3I_NSF_IS3I_EENSH_IS3I_EEEEEENSA_INSB_15RemoteXRBindingENSE_IS3N_NSF_IS3N_EENSH_IS3N_EEEEEENSA_INSB_16RemoteXRSubImageENSE_IS3S_NSF_IS3S_EENSH_IS3S_EEEEEENSA_INSB_23RemoteXRProjectionLayerENSE_IS3X_NSF_IS3X_EENSH_IS3X_EEEEEENSA_INSB_12RemoteXRViewENSE_IS42_NSF_IS42_EENSH_IS42_EEEEEEEEELNS0_5TraitE1EEEEEEDcOT_DpOT0_(&v33, (v15 + 1));
LABEL_217:
        v15[1] = v31;
        v31 = 0;
        v22 = 21;
        goto LABEL_22;
      }

      if (v19 == &v31)
      {
        break;
      }

      if (*v19)
      {
        IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteShaderModule,WTF::RefPtr<WebKit::RemoteShaderModule,WTF::RawPtrTraits<WebKit::RemoteShaderModule>,WTF::DefaultRefDerefTraits<WebKit::RemoteShaderModule>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::RemoteShaderModule,WTF::RawPtrTraits<WebKit::RemoteShaderModule>,WTF::DefaultRefDerefTraits<WebKit::RemoteShaderModule>>>(v15 + 1);
        goto LABEL_178;
      }

      goto LABEL_181;
    case 22:
      if (v21 == 255)
      {
        goto LABEL_229;
      }

      if (v21 != 22)
      {
        result = _ZN5mpark6detail10visitation3alt9visit_altINS0_4dtorEJRNS0_10destructorINS0_6traitsIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueIN6WebKit13RemoteAdapterEN3WTF6RefPtrISC_NSD_12RawPtrTraitsISC_EENSD_21DefaultRefDerefTraitsISC_EEEEEENSA_INSB_15RemoteBindGroupENSE_ISL_NSF_ISL_EENSH_ISL_EEEEEENSA_INSB_21RemoteBindGroupLayoutENSE_ISQ_NSF_ISQ_EENSH_ISQ_EEEEEENSA_INSB_12RemoteBufferENSE_ISV_NSF_ISV_EENSH_ISV_EEEEEENSA_INSB_19RemoteCommandBufferENSE_IS10_NSF_IS10_EENSH_IS10_EEEEEENSA_INSB_20RemoteCommandEncoderENSE_IS15_NSF_IS15_EENSH_IS15_EEEEEENSA_INSB_27RemoteCompositorIntegrationENSE_IS1A_NSF_IS1A_EENSH_IS1A_EEEEEENSA_INSB_24RemoteComputePassEncoderENSE_IS1F_NSF_IS1F_EENSH_IS1F_EEEEEENSA_INSB_21RemoteComputePipelineENSE_IS1K_NSF_IS1K_EENSH_IS1K_EEEEEENSA_INSB_12RemoteDeviceENSE_IS1P_NSF_IS1P_EENSH_IS1P_EEEEEENSA_INSB_21RemoteExternalTextureENSE_IS1U_NSF_IS1U_EENSH_IS1U_EEEEEENSA_INSB_20RemotePipelineLayoutENSE_IS1Z_NSF_IS1Z_EENSH_IS1Z_EEEEEENSA_INSB_25RemotePresentationContextENSE_IS24_NSF_IS24_EENSH_IS24_EEEEEENSA_INSB_14RemoteQuerySetENSE_IS29_NSF_IS29_EENSH_IS29_EEEEEENSA_INSB_11RemoteQueueENSE_IS2E_NSF_IS2E_EENSH_IS2E_EEEEEENSA_INSB_25RemoteRenderBundleEncoderENSE_IS2J_NSF_IS2J_EENSH_IS2J_EEEEEENSA_INSB_18RemoteRenderBundleENSE_IS2O_NSF_IS2O_EENSH_IS2O_EEEEEENSA_INSB_23RemoteRenderPassEncoderENSE_IS2T_NSF_IS2T_EENSH_IS2T_EEEEEENSA_INSB_20RemoteRenderPipelineENSE_IS2Y_NSF_IS2Y_EENSH_IS2Y_EEEEEENSA_INSB_13RemoteSamplerENSE_IS33_NSF_IS33_EENSH_IS33_EEEEEENSA_INSB_18RemoteShaderModuleENSE_IS38_NSF_IS38_EENSH_IS38_EEEEEENSA_INSB_13RemoteTextureENSE_IS3D_NSF_IS3D_EENSH_IS3D_EEEEEENSA_INSB_17RemoteTextureViewENSE_IS3I_NSF_IS3I_EENSH_IS3I_EEEEEENSA_INSB_15RemoteXRBindingENSE_IS3N_NSF_IS3N_EENSH_IS3N_EEEEEENSA_INSB_16RemoteXRSubImageENSE_IS3S_NSF_IS3S_EENSH_IS3S_EEEEEENSA_INSB_23RemoteXRProjectionLayerENSE_IS3X_NSF_IS3X_EENSH_IS3X_EEEEEENSA_INSB_12RemoteXRViewENSE_IS42_NSF_IS42_EENSH_IS42_EEEEEEEEELNS0_5TraitE1EEEEEEDcOT_DpOT0_(&v33, (v15 + 1));
LABEL_229:
        v15[1] = v31;
        v31 = 0;
        v22 = 22;
        goto LABEL_22;
      }

      if (v19 == &v31)
      {
        break;
      }

      if (*v19)
      {
        IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteTexture,WTF::RefPtr<WebKit::RemoteTexture,WTF::RawPtrTraits<WebKit::RemoteTexture>,WTF::DefaultRefDerefTraits<WebKit::RemoteTexture>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::RemoteTexture,WTF::RawPtrTraits<WebKit::RemoteTexture>,WTF::DefaultRefDerefTraits<WebKit::RemoteTexture>>>(v15 + 1);
        goto LABEL_178;
      }

      goto LABEL_181;
    case 23:
      if (v21 == 255)
      {
        goto LABEL_233;
      }

      if (v21 != 23)
      {
        result = _ZN5mpark6detail10visitation3alt9visit_altINS0_4dtorEJRNS0_10destructorINS0_6traitsIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueIN6WebKit13RemoteAdapterEN3WTF6RefPtrISC_NSD_12RawPtrTraitsISC_EENSD_21DefaultRefDerefTraitsISC_EEEEEENSA_INSB_15RemoteBindGroupENSE_ISL_NSF_ISL_EENSH_ISL_EEEEEENSA_INSB_21RemoteBindGroupLayoutENSE_ISQ_NSF_ISQ_EENSH_ISQ_EEEEEENSA_INSB_12RemoteBufferENSE_ISV_NSF_ISV_EENSH_ISV_EEEEEENSA_INSB_19RemoteCommandBufferENSE_IS10_NSF_IS10_EENSH_IS10_EEEEEENSA_INSB_20RemoteCommandEncoderENSE_IS15_NSF_IS15_EENSH_IS15_EEEEEENSA_INSB_27RemoteCompositorIntegrationENSE_IS1A_NSF_IS1A_EENSH_IS1A_EEEEEENSA_INSB_24RemoteComputePassEncoderENSE_IS1F_NSF_IS1F_EENSH_IS1F_EEEEEENSA_INSB_21RemoteComputePipelineENSE_IS1K_NSF_IS1K_EENSH_IS1K_EEEEEENSA_INSB_12RemoteDeviceENSE_IS1P_NSF_IS1P_EENSH_IS1P_EEEEEENSA_INSB_21RemoteExternalTextureENSE_IS1U_NSF_IS1U_EENSH_IS1U_EEEEEENSA_INSB_20RemotePipelineLayoutENSE_IS1Z_NSF_IS1Z_EENSH_IS1Z_EEEEEENSA_INSB_25RemotePresentationContextENSE_IS24_NSF_IS24_EENSH_IS24_EEEEEENSA_INSB_14RemoteQuerySetENSE_IS29_NSF_IS29_EENSH_IS29_EEEEEENSA_INSB_11RemoteQueueENSE_IS2E_NSF_IS2E_EENSH_IS2E_EEEEEENSA_INSB_25RemoteRenderBundleEncoderENSE_IS2J_NSF_IS2J_EENSH_IS2J_EEEEEENSA_INSB_18RemoteRenderBundleENSE_IS2O_NSF_IS2O_EENSH_IS2O_EEEEEENSA_INSB_23RemoteRenderPassEncoderENSE_IS2T_NSF_IS2T_EENSH_IS2T_EEEEEENSA_INSB_20RemoteRenderPipelineENSE_IS2Y_NSF_IS2Y_EENSH_IS2Y_EEEEEENSA_INSB_13RemoteSamplerENSE_IS33_NSF_IS33_EENSH_IS33_EEEEEENSA_INSB_18RemoteShaderModuleENSE_IS38_NSF_IS38_EENSH_IS38_EEEEEENSA_INSB_13RemoteTextureENSE_IS3D_NSF_IS3D_EENSH_IS3D_EEEEEENSA_INSB_17RemoteTextureViewENSE_IS3I_NSF_IS3I_EENSH_IS3I_EEEEEENSA_INSB_15RemoteXRBindingENSE_IS3N_NSF_IS3N_EENSH_IS3N_EEEEEENSA_INSB_16RemoteXRSubImageENSE_IS3S_NSF_IS3S_EENSH_IS3S_EEEEEENSA_INSB_23RemoteXRProjectionLayerENSE_IS3X_NSF_IS3X_EENSH_IS3X_EEEEEENSA_INSB_12RemoteXRViewENSE_IS42_NSF_IS42_EENSH_IS42_EEEEEEEEELNS0_5TraitE1EEEEEEDcOT_DpOT0_(&v33, (v15 + 1));
LABEL_233:
        v15[1] = v31;
        v31 = 0;
        v22 = 23;
        goto LABEL_22;
      }

      if (v19 == &v31)
      {
        break;
      }

      if (*v19)
      {
        IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteTextureView,WTF::RefPtr<WebKit::RemoteTextureView,WTF::RawPtrTraits<WebKit::RemoteTextureView>,WTF::DefaultRefDerefTraits<WebKit::RemoteTextureView>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::RemoteTextureView,WTF::RawPtrTraits<WebKit::RemoteTextureView>,WTF::DefaultRefDerefTraits<WebKit::RemoteTextureView>>>(v15 + 1);
        goto LABEL_178;
      }

      goto LABEL_181;
    case 24:
      if (v21 == 255)
      {
        goto LABEL_199;
      }

      if (v21 != 24)
      {
        result = _ZN5mpark6detail10visitation3alt9visit_altINS0_4dtorEJRNS0_10destructorINS0_6traitsIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueIN6WebKit13RemoteAdapterEN3WTF6RefPtrISC_NSD_12RawPtrTraitsISC_EENSD_21DefaultRefDerefTraitsISC_EEEEEENSA_INSB_15RemoteBindGroupENSE_ISL_NSF_ISL_EENSH_ISL_EEEEEENSA_INSB_21RemoteBindGroupLayoutENSE_ISQ_NSF_ISQ_EENSH_ISQ_EEEEEENSA_INSB_12RemoteBufferENSE_ISV_NSF_ISV_EENSH_ISV_EEEEEENSA_INSB_19RemoteCommandBufferENSE_IS10_NSF_IS10_EENSH_IS10_EEEEEENSA_INSB_20RemoteCommandEncoderENSE_IS15_NSF_IS15_EENSH_IS15_EEEEEENSA_INSB_27RemoteCompositorIntegrationENSE_IS1A_NSF_IS1A_EENSH_IS1A_EEEEEENSA_INSB_24RemoteComputePassEncoderENSE_IS1F_NSF_IS1F_EENSH_IS1F_EEEEEENSA_INSB_21RemoteComputePipelineENSE_IS1K_NSF_IS1K_EENSH_IS1K_EEEEEENSA_INSB_12RemoteDeviceENSE_IS1P_NSF_IS1P_EENSH_IS1P_EEEEEENSA_INSB_21RemoteExternalTextureENSE_IS1U_NSF_IS1U_EENSH_IS1U_EEEEEENSA_INSB_20RemotePipelineLayoutENSE_IS1Z_NSF_IS1Z_EENSH_IS1Z_EEEEEENSA_INSB_25RemotePresentationContextENSE_IS24_NSF_IS24_EENSH_IS24_EEEEEENSA_INSB_14RemoteQuerySetENSE_IS29_NSF_IS29_EENSH_IS29_EEEEEENSA_INSB_11RemoteQueueENSE_IS2E_NSF_IS2E_EENSH_IS2E_EEEEEENSA_INSB_25RemoteRenderBundleEncoderENSE_IS2J_NSF_IS2J_EENSH_IS2J_EEEEEENSA_INSB_18RemoteRenderBundleENSE_IS2O_NSF_IS2O_EENSH_IS2O_EEEEEENSA_INSB_23RemoteRenderPassEncoderENSE_IS2T_NSF_IS2T_EENSH_IS2T_EEEEEENSA_INSB_20RemoteRenderPipelineENSE_IS2Y_NSF_IS2Y_EENSH_IS2Y_EEEEEENSA_INSB_13RemoteSamplerENSE_IS33_NSF_IS33_EENSH_IS33_EEEEEENSA_INSB_18RemoteShaderModuleENSE_IS38_NSF_IS38_EENSH_IS38_EEEEEENSA_INSB_13RemoteTextureENSE_IS3D_NSF_IS3D_EENSH_IS3D_EEEEEENSA_INSB_17RemoteTextureViewENSE_IS3I_NSF_IS3I_EENSH_IS3I_EEEEEENSA_INSB_15RemoteXRBindingENSE_IS3N_NSF_IS3N_EENSH_IS3N_EEEEEENSA_INSB_16RemoteXRSubImageENSE_IS3S_NSF_IS3S_EENSH_IS3S_EEEEEENSA_INSB_23RemoteXRProjectionLayerENSE_IS3X_NSF_IS3X_EENSH_IS3X_EEEEEENSA_INSB_12RemoteXRViewENSE_IS42_NSF_IS42_EENSH_IS42_EEEEEEEEELNS0_5TraitE1EEEEEEDcOT_DpOT0_(&v33, (v15 + 1));
LABEL_199:
        v15[1] = v31;
        v31 = 0;
        v22 = 24;
        goto LABEL_22;
      }

      if (v19 == &v31)
      {
        break;
      }

      if (*v19)
      {
        IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteXRBinding,WTF::RefPtr<WebKit::RemoteXRBinding,WTF::RawPtrTraits<WebKit::RemoteXRBinding>,WTF::DefaultRefDerefTraits<WebKit::RemoteXRBinding>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::RemoteXRBinding,WTF::RawPtrTraits<WebKit::RemoteXRBinding>,WTF::DefaultRefDerefTraits<WebKit::RemoteXRBinding>>>(v15 + 1);
        goto LABEL_178;
      }

      goto LABEL_181;
    case 25:
      if (v21 == 255)
      {
        goto LABEL_197;
      }

      if (v21 != 25)
      {
        result = _ZN5mpark6detail10visitation3alt9visit_altINS0_4dtorEJRNS0_10destructorINS0_6traitsIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueIN6WebKit13RemoteAdapterEN3WTF6RefPtrISC_NSD_12RawPtrTraitsISC_EENSD_21DefaultRefDerefTraitsISC_EEEEEENSA_INSB_15RemoteBindGroupENSE_ISL_NSF_ISL_EENSH_ISL_EEEEEENSA_INSB_21RemoteBindGroupLayoutENSE_ISQ_NSF_ISQ_EENSH_ISQ_EEEEEENSA_INSB_12RemoteBufferENSE_ISV_NSF_ISV_EENSH_ISV_EEEEEENSA_INSB_19RemoteCommandBufferENSE_IS10_NSF_IS10_EENSH_IS10_EEEEEENSA_INSB_20RemoteCommandEncoderENSE_IS15_NSF_IS15_EENSH_IS15_EEEEEENSA_INSB_27RemoteCompositorIntegrationENSE_IS1A_NSF_IS1A_EENSH_IS1A_EEEEEENSA_INSB_24RemoteComputePassEncoderENSE_IS1F_NSF_IS1F_EENSH_IS1F_EEEEEENSA_INSB_21RemoteComputePipelineENSE_IS1K_NSF_IS1K_EENSH_IS1K_EEEEEENSA_INSB_12RemoteDeviceENSE_IS1P_NSF_IS1P_EENSH_IS1P_EEEEEENSA_INSB_21RemoteExternalTextureENSE_IS1U_NSF_IS1U_EENSH_IS1U_EEEEEENSA_INSB_20RemotePipelineLayoutENSE_IS1Z_NSF_IS1Z_EENSH_IS1Z_EEEEEENSA_INSB_25RemotePresentationContextENSE_IS24_NSF_IS24_EENSH_IS24_EEEEEENSA_INSB_14RemoteQuerySetENSE_IS29_NSF_IS29_EENSH_IS29_EEEEEENSA_INSB_11RemoteQueueENSE_IS2E_NSF_IS2E_EENSH_IS2E_EEEEEENSA_INSB_25RemoteRenderBundleEncoderENSE_IS2J_NSF_IS2J_EENSH_IS2J_EEEEEENSA_INSB_18RemoteRenderBundleENSE_IS2O_NSF_IS2O_EENSH_IS2O_EEEEEENSA_INSB_23RemoteRenderPassEncoderENSE_IS2T_NSF_IS2T_EENSH_IS2T_EEEEEENSA_INSB_20RemoteRenderPipelineENSE_IS2Y_NSF_IS2Y_EENSH_IS2Y_EEEEEENSA_INSB_13RemoteSamplerENSE_IS33_NSF_IS33_EENSH_IS33_EEEEEENSA_INSB_18RemoteShaderModuleENSE_IS38_NSF_IS38_EENSH_IS38_EEEEEENSA_INSB_13RemoteTextureENSE_IS3D_NSF_IS3D_EENSH_IS3D_EEEEEENSA_INSB_17RemoteTextureViewENSE_IS3I_NSF_IS3I_EENSH_IS3I_EEEEEENSA_INSB_15RemoteXRBindingENSE_IS3N_NSF_IS3N_EENSH_IS3N_EEEEEENSA_INSB_16RemoteXRSubImageENSE_IS3S_NSF_IS3S_EENSH_IS3S_EEEEEENSA_INSB_23RemoteXRProjectionLayerENSE_IS3X_NSF_IS3X_EENSH_IS3X_EEEEEENSA_INSB_12RemoteXRViewENSE_IS42_NSF_IS42_EENSH_IS42_EEEEEEEEELNS0_5TraitE1EEEEEEDcOT_DpOT0_(&v33, (v15 + 1));
LABEL_197:
        v15[1] = v31;
        v31 = 0;
        v22 = 25;
        goto LABEL_22;
      }

      if (v19 == &v31)
      {
        break;
      }

      if (*v19)
      {
        IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteXRSubImage,WTF::RefPtr<WebKit::RemoteXRSubImage,WTF::RawPtrTraits<WebKit::RemoteXRSubImage>,WTF::DefaultRefDerefTraits<WebKit::RemoteXRSubImage>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::RemoteXRSubImage,WTF::RawPtrTraits<WebKit::RemoteXRSubImage>,WTF::DefaultRefDerefTraits<WebKit::RemoteXRSubImage>>>(v15 + 1);
        goto LABEL_178;
      }

      goto LABEL_181;
    case 26:
      if (v21 == 255)
      {
        goto LABEL_235;
      }

      if (v21 != 26)
      {
        result = _ZN5mpark6detail10visitation3alt9visit_altINS0_4dtorEJRNS0_10destructorINS0_6traitsIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueIN6WebKit13RemoteAdapterEN3WTF6RefPtrISC_NSD_12RawPtrTraitsISC_EENSD_21DefaultRefDerefTraitsISC_EEEEEENSA_INSB_15RemoteBindGroupENSE_ISL_NSF_ISL_EENSH_ISL_EEEEEENSA_INSB_21RemoteBindGroupLayoutENSE_ISQ_NSF_ISQ_EENSH_ISQ_EEEEEENSA_INSB_12RemoteBufferENSE_ISV_NSF_ISV_EENSH_ISV_EEEEEENSA_INSB_19RemoteCommandBufferENSE_IS10_NSF_IS10_EENSH_IS10_EEEEEENSA_INSB_20RemoteCommandEncoderENSE_IS15_NSF_IS15_EENSH_IS15_EEEEEENSA_INSB_27RemoteCompositorIntegrationENSE_IS1A_NSF_IS1A_EENSH_IS1A_EEEEEENSA_INSB_24RemoteComputePassEncoderENSE_IS1F_NSF_IS1F_EENSH_IS1F_EEEEEENSA_INSB_21RemoteComputePipelineENSE_IS1K_NSF_IS1K_EENSH_IS1K_EEEEEENSA_INSB_12RemoteDeviceENSE_IS1P_NSF_IS1P_EENSH_IS1P_EEEEEENSA_INSB_21RemoteExternalTextureENSE_IS1U_NSF_IS1U_EENSH_IS1U_EEEEEENSA_INSB_20RemotePipelineLayoutENSE_IS1Z_NSF_IS1Z_EENSH_IS1Z_EEEEEENSA_INSB_25RemotePresentationContextENSE_IS24_NSF_IS24_EENSH_IS24_EEEEEENSA_INSB_14RemoteQuerySetENSE_IS29_NSF_IS29_EENSH_IS29_EEEEEENSA_INSB_11RemoteQueueENSE_IS2E_NSF_IS2E_EENSH_IS2E_EEEEEENSA_INSB_25RemoteRenderBundleEncoderENSE_IS2J_NSF_IS2J_EENSH_IS2J_EEEEEENSA_INSB_18RemoteRenderBundleENSE_IS2O_NSF_IS2O_EENSH_IS2O_EEEEEENSA_INSB_23RemoteRenderPassEncoderENSE_IS2T_NSF_IS2T_EENSH_IS2T_EEEEEENSA_INSB_20RemoteRenderPipelineENSE_IS2Y_NSF_IS2Y_EENSH_IS2Y_EEEEEENSA_INSB_13RemoteSamplerENSE_IS33_NSF_IS33_EENSH_IS33_EEEEEENSA_INSB_18RemoteShaderModuleENSE_IS38_NSF_IS38_EENSH_IS38_EEEEEENSA_INSB_13RemoteTextureENSE_IS3D_NSF_IS3D_EENSH_IS3D_EEEEEENSA_INSB_17RemoteTextureViewENSE_IS3I_NSF_IS3I_EENSH_IS3I_EEEEEENSA_INSB_15RemoteXRBindingENSE_IS3N_NSF_IS3N_EENSH_IS3N_EEEEEENSA_INSB_16RemoteXRSubImageENSE_IS3S_NSF_IS3S_EENSH_IS3S_EEEEEENSA_INSB_23RemoteXRProjectionLayerENSE_IS3X_NSF_IS3X_EENSH_IS3X_EEEEEENSA_INSB_12RemoteXRViewENSE_IS42_NSF_IS42_EENSH_IS42_EEEEEEEEELNS0_5TraitE1EEEEEEDcOT_DpOT0_(&v33, (v15 + 1));
LABEL_235:
        v15[1] = v31;
        v31 = 0;
        v22 = 26;
        goto LABEL_22;
      }

      if (v19 == &v31)
      {
        break;
      }

      if (*v19)
      {
        IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteXRProjectionLayer,WTF::RefPtr<WebKit::RemoteXRProjectionLayer,WTF::RawPtrTraits<WebKit::RemoteXRProjectionLayer>,WTF::DefaultRefDerefTraits<WebKit::RemoteXRProjectionLayer>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::RemoteXRProjectionLayer,WTF::RawPtrTraits<WebKit::RemoteXRProjectionLayer>,WTF::DefaultRefDerefTraits<WebKit::RemoteXRProjectionLayer>>>(v15 + 1);
        goto LABEL_178;
      }

      goto LABEL_181;
    case 27:
      if (v21 == 255)
      {
        goto LABEL_183;
      }

      if (v21 != 27)
      {
        result = _ZN5mpark6detail10visitation3alt9visit_altINS0_4dtorEJRNS0_10destructorINS0_6traitsIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueIN6WebKit13RemoteAdapterEN3WTF6RefPtrISC_NSD_12RawPtrTraitsISC_EENSD_21DefaultRefDerefTraitsISC_EEEEEENSA_INSB_15RemoteBindGroupENSE_ISL_NSF_ISL_EENSH_ISL_EEEEEENSA_INSB_21RemoteBindGroupLayoutENSE_ISQ_NSF_ISQ_EENSH_ISQ_EEEEEENSA_INSB_12RemoteBufferENSE_ISV_NSF_ISV_EENSH_ISV_EEEEEENSA_INSB_19RemoteCommandBufferENSE_IS10_NSF_IS10_EENSH_IS10_EEEEEENSA_INSB_20RemoteCommandEncoderENSE_IS15_NSF_IS15_EENSH_IS15_EEEEEENSA_INSB_27RemoteCompositorIntegrationENSE_IS1A_NSF_IS1A_EENSH_IS1A_EEEEEENSA_INSB_24RemoteComputePassEncoderENSE_IS1F_NSF_IS1F_EENSH_IS1F_EEEEEENSA_INSB_21RemoteComputePipelineENSE_IS1K_NSF_IS1K_EENSH_IS1K_EEEEEENSA_INSB_12RemoteDeviceENSE_IS1P_NSF_IS1P_EENSH_IS1P_EEEEEENSA_INSB_21RemoteExternalTextureENSE_IS1U_NSF_IS1U_EENSH_IS1U_EEEEEENSA_INSB_20RemotePipelineLayoutENSE_IS1Z_NSF_IS1Z_EENSH_IS1Z_EEEEEENSA_INSB_25RemotePresentationContextENSE_IS24_NSF_IS24_EENSH_IS24_EEEEEENSA_INSB_14RemoteQuerySetENSE_IS29_NSF_IS29_EENSH_IS29_EEEEEENSA_INSB_11RemoteQueueENSE_IS2E_NSF_IS2E_EENSH_IS2E_EEEEEENSA_INSB_25RemoteRenderBundleEncoderENSE_IS2J_NSF_IS2J_EENSH_IS2J_EEEEEENSA_INSB_18RemoteRenderBundleENSE_IS2O_NSF_IS2O_EENSH_IS2O_EEEEEENSA_INSB_23RemoteRenderPassEncoderENSE_IS2T_NSF_IS2T_EENSH_IS2T_EEEEEENSA_INSB_20RemoteRenderPipelineENSE_IS2Y_NSF_IS2Y_EENSH_IS2Y_EEEEEENSA_INSB_13RemoteSamplerENSE_IS33_NSF_IS33_EENSH_IS33_EEEEEENSA_INSB_18RemoteShaderModuleENSE_IS38_NSF_IS38_EENSH_IS38_EEEEEENSA_INSB_13RemoteTextureENSE_IS3D_NSF_IS3D_EENSH_IS3D_EEEEEENSA_INSB_17RemoteTextureViewENSE_IS3I_NSF_IS3I_EENSH_IS3I_EEEEEENSA_INSB_15RemoteXRBindingENSE_IS3N_NSF_IS3N_EENSH_IS3N_EEEEEENSA_INSB_16RemoteXRSubImageENSE_IS3S_NSF_IS3S_EENSH_IS3S_EEEEEENSA_INSB_23RemoteXRProjectionLayerENSE_IS3X_NSF_IS3X_EENSH_IS3X_EEEEEENSA_INSB_12RemoteXRViewENSE_IS42_NSF_IS42_EENSH_IS42_EEEEEEEEELNS0_5TraitE1EEEEEEDcOT_DpOT0_(&v33, (v15 + 1));
LABEL_183:
        v15[1] = v31;
        v31 = 0;
        v22 = 27;
        goto LABEL_22;
      }

      if (v19 != &v31)
      {
        if (*v19)
        {
          IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteXRView,WTF::RefPtr<WebKit::RemoteXRView,WTF::RawPtrTraits<WebKit::RemoteXRView>,WTF::DefaultRefDerefTraits<WebKit::RemoteXRView>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::RemoteXRView,WTF::RawPtrTraits<WebKit::RemoteXRView>,WTF::DefaultRefDerefTraits<WebKit::RemoteXRView>>>(v15 + 1);
LABEL_178:
          result = *v19;
          v29 = v31;
          v31 = 0;
          *v19 = v29;
          if (result && atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, result + 2);
            result = (*(*result + 8))(result);
          }
        }

        else
        {
LABEL_181:
          v30 = v31;
          v31 = 0;
          *v19 = v30;
        }
      }

      break;
    default:
      if (*(v15 + 16))
      {
        if (v21 != 255)
        {
          result = _ZN5mpark6detail10visitation3alt9visit_altINS0_4dtorEJRNS0_10destructorINS0_6traitsIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueIN6WebKit13RemoteAdapterEN3WTF6RefPtrISC_NSD_12RawPtrTraitsISC_EENSD_21DefaultRefDerefTraitsISC_EEEEEENSA_INSB_15RemoteBindGroupENSE_ISL_NSF_ISL_EENSH_ISL_EEEEEENSA_INSB_21RemoteBindGroupLayoutENSE_ISQ_NSF_ISQ_EENSH_ISQ_EEEEEENSA_INSB_12RemoteBufferENSE_ISV_NSF_ISV_EENSH_ISV_EEEEEENSA_INSB_19RemoteCommandBufferENSE_IS10_NSF_IS10_EENSH_IS10_EEEEEENSA_INSB_20RemoteCommandEncoderENSE_IS15_NSF_IS15_EENSH_IS15_EEEEEENSA_INSB_27RemoteCompositorIntegrationENSE_IS1A_NSF_IS1A_EENSH_IS1A_EEEEEENSA_INSB_24RemoteComputePassEncoderENSE_IS1F_NSF_IS1F_EENSH_IS1F_EEEEEENSA_INSB_21RemoteComputePipelineENSE_IS1K_NSF_IS1K_EENSH_IS1K_EEEEEENSA_INSB_12RemoteDeviceENSE_IS1P_NSF_IS1P_EENSH_IS1P_EEEEEENSA_INSB_21RemoteExternalTextureENSE_IS1U_NSF_IS1U_EENSH_IS1U_EEEEEENSA_INSB_20RemotePipelineLayoutENSE_IS1Z_NSF_IS1Z_EENSH_IS1Z_EEEEEENSA_INSB_25RemotePresentationContextENSE_IS24_NSF_IS24_EENSH_IS24_EEEEEENSA_INSB_14RemoteQuerySetENSE_IS29_NSF_IS29_EENSH_IS29_EEEEEENSA_INSB_11RemoteQueueENSE_IS2E_NSF_IS2E_EENSH_IS2E_EEEEEENSA_INSB_25RemoteRenderBundleEncoderENSE_IS2J_NSF_IS2J_EENSH_IS2J_EEEEEENSA_INSB_18RemoteRenderBundleENSE_IS2O_NSF_IS2O_EENSH_IS2O_EEEEEENSA_INSB_23RemoteRenderPassEncoderENSE_IS2T_NSF_IS2T_EENSH_IS2T_EEEEEENSA_INSB_20RemoteRenderPipelineENSE_IS2Y_NSF_IS2Y_EENSH_IS2Y_EEEEEENSA_INSB_13RemoteSamplerENSE_IS33_NSF_IS33_EENSH_IS33_EEEEEENSA_INSB_18RemoteShaderModuleENSE_IS38_NSF_IS38_EENSH_IS38_EEEEEENSA_INSB_13RemoteTextureENSE_IS3D_NSF_IS3D_EENSH_IS3D_EEEEEENSA_INSB_17RemoteTextureViewENSE_IS3I_NSF_IS3I_EENSH_IS3I_EEEEEENSA_INSB_15RemoteXRBindingENSE_IS3N_NSF_IS3N_EENSH_IS3N_EEEEEENSA_INSB_16RemoteXRSubImageENSE_IS3S_NSF_IS3S_EENSH_IS3S_EEEEEENSA_INSB_23RemoteXRProjectionLayerENSE_IS3X_NSF_IS3X_EENSH_IS3X_EEEEEENSA_INSB_12RemoteXRViewENSE_IS42_NSF_IS42_EENSH_IS42_EEEEEEEEELNS0_5TraitE1EEEEEEDcOT_DpOT0_(&v33, (v15 + 1));
        }

        *(v15 + 16) = 0;
      }

      break;
  }

LABEL_23:
  if (v32 != 255)
  {
    result = _ZN5mpark6detail10visitation3alt9visit_altINS0_4dtorEJRNS0_10destructorINS0_6traitsIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueIN6WebKit13RemoteAdapterEN3WTF6RefPtrISC_NSD_12RawPtrTraitsISC_EENSD_21DefaultRefDerefTraitsISC_EEEEEENSA_INSB_15RemoteBindGroupENSE_ISL_NSF_ISL_EENSH_ISL_EEEEEENSA_INSB_21RemoteBindGroupLayoutENSE_ISQ_NSF_ISQ_EENSH_ISQ_EEEEEENSA_INSB_12RemoteBufferENSE_ISV_NSF_ISV_EENSH_ISV_EEEEEENSA_INSB_19RemoteCommandBufferENSE_IS10_NSF_IS10_EENSH_IS10_EEEEEENSA_INSB_20RemoteCommandEncoderENSE_IS15_NSF_IS15_EENSH_IS15_EEEEEENSA_INSB_27RemoteCompositorIntegrationENSE_IS1A_NSF_IS1A_EENSH_IS1A_EEEEEENSA_INSB_24RemoteComputePassEncoderENSE_IS1F_NSF_IS1F_EENSH_IS1F_EEEEEENSA_INSB_21RemoteComputePipelineENSE_IS1K_NSF_IS1K_EENSH_IS1K_EEEEEENSA_INSB_12RemoteDeviceENSE_IS1P_NSF_IS1P_EENSH_IS1P_EEEEEENSA_INSB_21RemoteExternalTextureENSE_IS1U_NSF_IS1U_EENSH_IS1U_EEEEEENSA_INSB_20RemotePipelineLayoutENSE_IS1Z_NSF_IS1Z_EENSH_IS1Z_EEEEEENSA_INSB_25RemotePresentationContextENSE_IS24_NSF_IS24_EENSH_IS24_EEEEEENSA_INSB_14RemoteQuerySetENSE_IS29_NSF_IS29_EENSH_IS29_EEEEEENSA_INSB_11RemoteQueueENSE_IS2E_NSF_IS2E_EENSH_IS2E_EEEEEENSA_INSB_25RemoteRenderBundleEncoderENSE_IS2J_NSF_IS2J_EENSH_IS2J_EEEEEENSA_INSB_18RemoteRenderBundleENSE_IS2O_NSF_IS2O_EENSH_IS2O_EEEEEENSA_INSB_23RemoteRenderPassEncoderENSE_IS2T_NSF_IS2T_EENSH_IS2T_EEEEEENSA_INSB_20RemoteRenderPipelineENSE_IS2Y_NSF_IS2Y_EENSH_IS2Y_EEEEEENSA_INSB_13RemoteSamplerENSE_IS33_NSF_IS33_EENSH_IS33_EEEEEENSA_INSB_18RemoteShaderModuleENSE_IS38_NSF_IS38_EENSH_IS38_EEEEEENSA_INSB_13RemoteTextureENSE_IS3D_NSF_IS3D_EENSH_IS3D_EEEEEENSA_INSB_17RemoteTextureViewENSE_IS3I_NSF_IS3I_EENSH_IS3I_EEEEEENSA_INSB_15RemoteXRBindingENSE_IS3N_NSF_IS3N_EENSH_IS3N_EEEEEENSA_INSB_16RemoteXRSubImageENSE_IS3S_NSF_IS3S_EENSH_IS3S_EEEEEENSA_INSB_23RemoteXRProjectionLayerENSE_IS3X_NSF_IS3X_EENSH_IS3X_EEEEEENSA_INSB_12RemoteXRViewENSE_IS42_NSF_IS42_EENSH_IS42_EEEEEEEEELNS0_5TraitE1EEEEEEDcOT_DpOT0_(&v33, &v31);
  }

  v23 = *v8;
  if (*v8)
  {
    v24 = *(v23 - 12) + 1;
  }

  else
  {
    v24 = 1;
  }

  *(v23 - 12) = v24;
  v27 = (*(v23 - 16) + v24);
  v28 = *(v23 - 4);
  if (v28 > 0x400)
  {
    if (v28 <= 2 * v27)
    {
LABEL_36:
      result = _ZN3WTF9HashTableINS_23ObjectIdentifierGenericIN6WebKit20WebGPUIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEENS_12KeyValuePairIS6_N5mpark7variantIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueINS2_13RemoteAdapterENS_6RefPtrISE_NS_12RawPtrTraitsISE_EENS_21DefaultRefDerefTraitsISE_EEEEEENSD_INS2_15RemoteBindGroupENSF_ISM_NSG_ISM_EENSI_ISM_EEEEEENSD_INS2_21RemoteBindGroupLayoutENSF_ISR_NSG_ISR_EENSI_ISR_EEEEEENSD_INS2_12RemoteBufferENSF_ISW_NSG_ISW_EENSI_ISW_EEEEEENSD_INS2_19RemoteCommandBufferENSF_IS11_NSG_IS11_EENSI_IS11_EEEEEENSD_INS2_20RemoteCommandEncoderENSF_IS16_NSG_IS16_EENSI_IS16_EEEEEENSD_INS2_27RemoteCompositorIntegrationENSF_IS1B_NSG_IS1B_EENSI_IS1B_EEEEEENSD_INS2_24RemoteComputePassEncoderENSF_IS1G_NSG_IS1G_EENSI_IS1G_EEEEEENSD_INS2_21RemoteComputePipelineENSF_IS1L_NSG_IS1L_EENSI_IS1L_EEEEEENSD_INS2_12RemoteDeviceENSF_IS1Q_NSG_IS1Q_EENSI_IS1Q_EEEEEENSD_INS2_21RemoteExternalTextureENSF_IS1V_NSG_IS1V_EENSI_IS1V_EEEEEENSD_INS2_20RemotePipelineLayoutENSF_IS20_NSG_IS20_EENSI_IS20_EEEEEENSD_INS2_25RemotePresentationContextENSF_IS25_NSG_IS25_EENSI_IS25_EEEEEENSD_INS2_14RemoteQuerySetENSF_IS2A_NSG_IS2A_EENSI_IS2A_EEEEEENSD_INS2_11RemoteQueueENSF_IS2F_NSG_IS2F_EENSI_IS2F_EEEEEENSD_INS2_25RemoteRenderBundleEncoderENSF_IS2K_NSG_IS2K_EENSI_IS2K_EEEEEENSD_INS2_18RemoteRenderBundleENSF_IS2P_NSG_IS2P_EENSI_IS2P_EEEEEENSD_INS2_23RemoteRenderPassEncoderENSF_IS2U_NSG_IS2U_EENSI_IS2U_EEEEEENSD_INS2_20RemoteRenderPipelineENSF_IS2Z_NSG_IS2Z_EENSI_IS2Z_EEEEEENSD_INS2_13RemoteSamplerENSF_IS34_NSG_IS34_EENSI_IS34_EEEEEENSD_INS2_18RemoteShaderModuleENSF_IS39_NSG_IS39_EENSI_IS39_EEEEEENSD_INS2_13RemoteTextureENSF_IS3E_NSG_IS3E_EENSI_IS3E_EEEEEENSD_INS2_17RemoteTextureViewENSF_IS3J_NSG_IS3J_EENSI_IS3J_EEEEEENSD_INS2_15RemoteXRBindingENSF_IS3O_NSG_IS3O_EENSI_IS3O_EEEEEENSD_INS2_16RemoteXRSubImageENSF_IS3T_NSG_IS3T_EENSI_IS3T_EEEEEENSD_INS2_23RemoteXRProjectionLayerENSF_IS3Y_NSG_IS3Y_EENSI_IS3Y_EEEEEENSD_INS2_12RemoteXRViewENSF_IS43_NSG_IS43_EENSI_IS43_EEEEEEEEEEENS_24KeyValuePairKeyExtractorIS49_EENS_11DefaultHashIS6_EENS_7HashMapIS6_S48_S4D_NS_10HashTraitsIS6_EENS4F_IS48_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1ENS_10FastMallocEE18KeyValuePairTraitsES4G_S4K_E6expandEPS49_(v8, v15);
      v15 = result;
      v23 = *v8;
      if (*v8)
      {
        LODWORD(v28) = *(v23 - 4);
      }

      else
      {
        LODWORD(v28) = 0;
      }
    }
  }

  else if (3 * v28 <= 4 * v27)
  {
    goto LABEL_36;
  }

  v26 = v23 + 24 * v28;
  v25 = 1;
LABEL_40:
  *a4 = v15;
  *(a4 + 8) = v26;
  *(a4 + 16) = v25;
  return result;
}

WebKit::RemoteBindGroup **WebKit::WebGPU::ObjectHeap::addObject(uint64_t a1, void *a2, atomic_uint *a3)
{
  v8 = a2;
  atomic_fetch_add(a3 + 2, 1u);
  v4 = 0;
  v5 = a3;
  v6 = 2;
  _ZN3WTF7HashMapINS_23ObjectIdentifierGenericIN6WebKit20WebGPUIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEN5mpark7variantIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueINS2_13RemoteAdapterENS_6RefPtrISD_NS_12RawPtrTraitsISD_EENS_21DefaultRefDerefTraitsISD_EEEEEENSC_INS2_15RemoteBindGroupENSE_ISL_NSF_ISL_EENSH_ISL_EEEEEENSC_INS2_21RemoteBindGroupLayoutENSE_ISQ_NSF_ISQ_EENSH_ISQ_EEEEEENSC_INS2_12RemoteBufferENSE_ISV_NSF_ISV_EENSH_ISV_EEEEEENSC_INS2_19RemoteCommandBufferENSE_IS10_NSF_IS10_EENSH_IS10_EEEEEENSC_INS2_20RemoteCommandEncoderENSE_IS15_NSF_IS15_EENSH_IS15_EEEEEENSC_INS2_27RemoteCompositorIntegrationENSE_IS1A_NSF_IS1A_EENSH_IS1A_EEEEEENSC_INS2_24RemoteComputePassEncoderENSE_IS1F_NSF_IS1F_EENSH_IS1F_EEEEEENSC_INS2_21RemoteComputePipelineENSE_IS1K_NSF_IS1K_EENSH_IS1K_EEEEEENSC_INS2_12RemoteDeviceENSE_IS1P_NSF_IS1P_EENSH_IS1P_EEEEEENSC_INS2_21RemoteExternalTextureENSE_IS1U_NSF_IS1U_EENSH_IS1U_EEEEEENSC_INS2_20RemotePipelineLayoutENSE_IS1Z_NSF_IS1Z_EENSH_IS1Z_EEEEEENSC_INS2_25RemotePresentationContextENSE_IS24_NSF_IS24_EENSH_IS24_EEEEEENSC_INS2_14RemoteQuerySetENSE_IS29_NSF_IS29_EENSH_IS29_EEEEEENSC_INS2_11RemoteQueueENSE_IS2E_NSF_IS2E_EENSH_IS2E_EEEEEENSC_INS2_25RemoteRenderBundleEncoderENSE_IS2J_NSF_IS2J_EENSH_IS2J_EEEEEENSC_INS2_18RemoteRenderBundleENSE_IS2O_NSF_IS2O_EENSH_IS2O_EEEEEENSC_INS2_23RemoteRenderPassEncoderENSE_IS2T_NSF_IS2T_EENSH_IS2T_EEEEEENSC_INS2_20RemoteRenderPipelineENSE_IS2Y_NSF_IS2Y_EENSH_IS2Y_EEEEEENSC_INS2_13RemoteSamplerENSE_IS33_NSF_IS33_EENSH_IS33_EEEEEENSC_INS2_18RemoteShaderModuleENSE_IS38_NSF_IS38_EENSH_IS38_EEEEEENSC_INS2_13RemoteTextureENSE_IS3D_NSF_IS3D_EENSH_IS3D_EEEEEENSC_INS2_17RemoteTextureViewENSE_IS3I_NSF_IS3I_EENSH_IS3I_EEEEEENSC_INS2_15RemoteXRBindingENSE_IS3N_NSF_IS3N_EENSH_IS3N_EEEEEENSC_INS2_16RemoteXRSubImageENSE_IS3S_NSF_IS3S_EENSH_IS3S_EEEEEENSC_INS2_23RemoteXRProjectionLayerENSE_IS3X_NSF_IS3X_EENSH_IS3X_EEEEEENSC_INS2_12RemoteXRViewENSE_IS42_NSF_IS42_EENSH_IS42_EEEEEEEEENS_11DefaultHashIS6_EENS_10HashTraitsIS6_EENS4A_IS47_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1ENS_10FastMallocEE3addIS47_EENS_18HashTableAddResultINS_17HashTableIteratorINS_9HashTableIS6_NS_12KeyValuePairIS6_S47_EENS_24KeyValuePairKeyExtractorIS4M_EES49_NS4G_18KeyValuePairTraitsES4B_S4F_EES6_S4M_S4O_S49_S4P_S4B_EEEERKS6_OT_((a1 + 24), &v8, &v5, v7);
  if (v6 != 255)
  {
    _ZN5mpark6detail10visitation3alt9visit_altINS0_4dtorEJRNS0_10destructorINS0_6traitsIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueIN6WebKit13RemoteAdapterEN3WTF6RefPtrISC_NSD_12RawPtrTraitsISC_EENSD_21DefaultRefDerefTraitsISC_EEEEEENSA_INSB_15RemoteBindGroupENSE_ISL_NSF_ISL_EENSH_ISL_EEEEEENSA_INSB_21RemoteBindGroupLayoutENSE_ISQ_NSF_ISQ_EENSH_ISQ_EEEEEENSA_INSB_12RemoteBufferENSE_ISV_NSF_ISV_EENSH_ISV_EEEEEENSA_INSB_19RemoteCommandBufferENSE_IS10_NSF_IS10_EENSH_IS10_EEEEEENSA_INSB_20RemoteCommandEncoderENSE_IS15_NSF_IS15_EENSH_IS15_EEEEEENSA_INSB_27RemoteCompositorIntegrationENSE_IS1A_NSF_IS1A_EENSH_IS1A_EEEEEENSA_INSB_24RemoteComputePassEncoderENSE_IS1F_NSF_IS1F_EENSH_IS1F_EEEEEENSA_INSB_21RemoteComputePipelineENSE_IS1K_NSF_IS1K_EENSH_IS1K_EEEEEENSA_INSB_12RemoteDeviceENSE_IS1P_NSF_IS1P_EENSH_IS1P_EEEEEENSA_INSB_21RemoteExternalTextureENSE_IS1U_NSF_IS1U_EENSH_IS1U_EEEEEENSA_INSB_20RemotePipelineLayoutENSE_IS1Z_NSF_IS1Z_EENSH_IS1Z_EEEEEENSA_INSB_25RemotePresentationContextENSE_IS24_NSF_IS24_EENSH_IS24_EEEEEENSA_INSB_14RemoteQuerySetENSE_IS29_NSF_IS29_EENSH_IS29_EEEEEENSA_INSB_11RemoteQueueENSE_IS2E_NSF_IS2E_EENSH_IS2E_EEEEEENSA_INSB_25RemoteRenderBundleEncoderENSE_IS2J_NSF_IS2J_EENSH_IS2J_EEEEEENSA_INSB_18RemoteRenderBundleENSE_IS2O_NSF_IS2O_EENSH_IS2O_EEEEEENSA_INSB_23RemoteRenderPassEncoderENSE_IS2T_NSF_IS2T_EENSH_IS2T_EEEEEENSA_INSB_20RemoteRenderPipelineENSE_IS2Y_NSF_IS2Y_EENSH_IS2Y_EEEEEENSA_INSB_13RemoteSamplerENSE_IS33_NSF_IS33_EENSH_IS33_EEEEEENSA_INSB_18RemoteShaderModuleENSE_IS38_NSF_IS38_EENSH_IS38_EEEEEENSA_INSB_13RemoteTextureENSE_IS3D_NSF_IS3D_EENSH_IS3D_EEEEEENSA_INSB_17RemoteTextureViewENSE_IS3I_NSF_IS3I_EENSH_IS3I_EEEEEENSA_INSB_15RemoteXRBindingENSE_IS3N_NSF_IS3N_EENSH_IS3N_EEEEEENSA_INSB_16RemoteXRSubImageENSE_IS3S_NSF_IS3S_EENSH_IS3S_EEEEEENSA_INSB_23RemoteXRProjectionLayerENSE_IS3X_NSF_IS3X_EENSH_IS3X_EEEEEENSA_INSB_12RemoteXRViewENSE_IS42_NSF_IS42_EENSH_IS42_EEEEEEEEELNS0_5TraitE1EEEEEEDcOT_DpOT0_(&v9, &v5);
  }

  v6 = -1;
  return IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteBindGroup,WTF::RefPtr<WebKit::RemoteBindGroup,WTF::RawPtrTraits<WebKit::RemoteBindGroup>,WTF::DefaultRefDerefTraits<WebKit::RemoteBindGroup>>>::~ScopedActiveMessageReceiveQueue(&v4);
}

WebKit::RemoteBindGroupLayout **WebKit::WebGPU::ObjectHeap::addObject(uint64_t a1, void *a2, atomic_uint *a3)
{
  v8 = a2;
  atomic_fetch_add(a3 + 2, 1u);
  v4 = 0;
  v5 = a3;
  v6 = 3;
  _ZN3WTF7HashMapINS_23ObjectIdentifierGenericIN6WebKit20WebGPUIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEN5mpark7variantIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueINS2_13RemoteAdapterENS_6RefPtrISD_NS_12RawPtrTraitsISD_EENS_21DefaultRefDerefTraitsISD_EEEEEENSC_INS2_15RemoteBindGroupENSE_ISL_NSF_ISL_EENSH_ISL_EEEEEENSC_INS2_21RemoteBindGroupLayoutENSE_ISQ_NSF_ISQ_EENSH_ISQ_EEEEEENSC_INS2_12RemoteBufferENSE_ISV_NSF_ISV_EENSH_ISV_EEEEEENSC_INS2_19RemoteCommandBufferENSE_IS10_NSF_IS10_EENSH_IS10_EEEEEENSC_INS2_20RemoteCommandEncoderENSE_IS15_NSF_IS15_EENSH_IS15_EEEEEENSC_INS2_27RemoteCompositorIntegrationENSE_IS1A_NSF_IS1A_EENSH_IS1A_EEEEEENSC_INS2_24RemoteComputePassEncoderENSE_IS1F_NSF_IS1F_EENSH_IS1F_EEEEEENSC_INS2_21RemoteComputePipelineENSE_IS1K_NSF_IS1K_EENSH_IS1K_EEEEEENSC_INS2_12RemoteDeviceENSE_IS1P_NSF_IS1P_EENSH_IS1P_EEEEEENSC_INS2_21RemoteExternalTextureENSE_IS1U_NSF_IS1U_EENSH_IS1U_EEEEEENSC_INS2_20RemotePipelineLayoutENSE_IS1Z_NSF_IS1Z_EENSH_IS1Z_EEEEEENSC_INS2_25RemotePresentationContextENSE_IS24_NSF_IS24_EENSH_IS24_EEEEEENSC_INS2_14RemoteQuerySetENSE_IS29_NSF_IS29_EENSH_IS29_EEEEEENSC_INS2_11RemoteQueueENSE_IS2E_NSF_IS2E_EENSH_IS2E_EEEEEENSC_INS2_25RemoteRenderBundleEncoderENSE_IS2J_NSF_IS2J_EENSH_IS2J_EEEEEENSC_INS2_18RemoteRenderBundleENSE_IS2O_NSF_IS2O_EENSH_IS2O_EEEEEENSC_INS2_23RemoteRenderPassEncoderENSE_IS2T_NSF_IS2T_EENSH_IS2T_EEEEEENSC_INS2_20RemoteRenderPipelineENSE_IS2Y_NSF_IS2Y_EENSH_IS2Y_EEEEEENSC_INS2_13RemoteSamplerENSE_IS33_NSF_IS33_EENSH_IS33_EEEEEENSC_INS2_18RemoteShaderModuleENSE_IS38_NSF_IS38_EENSH_IS38_EEEEEENSC_INS2_13RemoteTextureENSE_IS3D_NSF_IS3D_EENSH_IS3D_EEEEEENSC_INS2_17RemoteTextureViewENSE_IS3I_NSF_IS3I_EENSH_IS3I_EEEEEENSC_INS2_15RemoteXRBindingENSE_IS3N_NSF_IS3N_EENSH_IS3N_EEEEEENSC_INS2_16RemoteXRSubImageENSE_IS3S_NSF_IS3S_EENSH_IS3S_EEEEEENSC_INS2_23RemoteXRProjectionLayerENSE_IS3X_NSF_IS3X_EENSH_IS3X_EEEEEENSC_INS2_12RemoteXRViewENSE_IS42_NSF_IS42_EENSH_IS42_EEEEEEEEENS_11DefaultHashIS6_EENS_10HashTraitsIS6_EENS4A_IS47_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1ENS_10FastMallocEE3addIS47_EENS_18HashTableAddResultINS_17HashTableIteratorINS_9HashTableIS6_NS_12KeyValuePairIS6_S47_EENS_24KeyValuePairKeyExtractorIS4M_EES49_NS4G_18KeyValuePairTraitsES4B_S4F_EES6_S4M_S4O_S49_S4P_S4B_EEEERKS6_OT_((a1 + 24), &v8, &v5, v7);
  if (v6 != 255)
  {
    _ZN5mpark6detail10visitation3alt9visit_altINS0_4dtorEJRNS0_10destructorINS0_6traitsIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueIN6WebKit13RemoteAdapterEN3WTF6RefPtrISC_NSD_12RawPtrTraitsISC_EENSD_21DefaultRefDerefTraitsISC_EEEEEENSA_INSB_15RemoteBindGroupENSE_ISL_NSF_ISL_EENSH_ISL_EEEEEENSA_INSB_21RemoteBindGroupLayoutENSE_ISQ_NSF_ISQ_EENSH_ISQ_EEEEEENSA_INSB_12RemoteBufferENSE_ISV_NSF_ISV_EENSH_ISV_EEEEEENSA_INSB_19RemoteCommandBufferENSE_IS10_NSF_IS10_EENSH_IS10_EEEEEENSA_INSB_20RemoteCommandEncoderENSE_IS15_NSF_IS15_EENSH_IS15_EEEEEENSA_INSB_27RemoteCompositorIntegrationENSE_IS1A_NSF_IS1A_EENSH_IS1A_EEEEEENSA_INSB_24RemoteComputePassEncoderENSE_IS1F_NSF_IS1F_EENSH_IS1F_EEEEEENSA_INSB_21RemoteComputePipelineENSE_IS1K_NSF_IS1K_EENSH_IS1K_EEEEEENSA_INSB_12RemoteDeviceENSE_IS1P_NSF_IS1P_EENSH_IS1P_EEEEEENSA_INSB_21RemoteExternalTextureENSE_IS1U_NSF_IS1U_EENSH_IS1U_EEEEEENSA_INSB_20RemotePipelineLayoutENSE_IS1Z_NSF_IS1Z_EENSH_IS1Z_EEEEEENSA_INSB_25RemotePresentationContextENSE_IS24_NSF_IS24_EENSH_IS24_EEEEEENSA_INSB_14RemoteQuerySetENSE_IS29_NSF_IS29_EENSH_IS29_EEEEEENSA_INSB_11RemoteQueueENSE_IS2E_NSF_IS2E_EENSH_IS2E_EEEEEENSA_INSB_25RemoteRenderBundleEncoderENSE_IS2J_NSF_IS2J_EENSH_IS2J_EEEEEENSA_INSB_18RemoteRenderBundleENSE_IS2O_NSF_IS2O_EENSH_IS2O_EEEEEENSA_INSB_23RemoteRenderPassEncoderENSE_IS2T_NSF_IS2T_EENSH_IS2T_EEEEEENSA_INSB_20RemoteRenderPipelineENSE_IS2Y_NSF_IS2Y_EENSH_IS2Y_EEEEEENSA_INSB_13RemoteSamplerENSE_IS33_NSF_IS33_EENSH_IS33_EEEEEENSA_INSB_18RemoteShaderModuleENSE_IS38_NSF_IS38_EENSH_IS38_EEEEEENSA_INSB_13RemoteTextureENSE_IS3D_NSF_IS3D_EENSH_IS3D_EEEEEENSA_INSB_17RemoteTextureViewENSE_IS3I_NSF_IS3I_EENSH_IS3I_EEEEEENSA_INSB_15RemoteXRBindingENSE_IS3N_NSF_IS3N_EENSH_IS3N_EEEEEENSA_INSB_16RemoteXRSubImageENSE_IS3S_NSF_IS3S_EENSH_IS3S_EEEEEENSA_INSB_23RemoteXRProjectionLayerENSE_IS3X_NSF_IS3X_EENSH_IS3X_EEEEEENSA_INSB_12RemoteXRViewENSE_IS42_NSF_IS42_EENSH_IS42_EEEEEEEEELNS0_5TraitE1EEEEEEDcOT_DpOT0_(&v9, &v5);
  }

  v6 = -1;
  return IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteBindGroupLayout,WTF::RefPtr<WebKit::RemoteBindGroupLayout,WTF::RawPtrTraits<WebKit::RemoteBindGroupLayout>,WTF::DefaultRefDerefTraits<WebKit::RemoteBindGroupLayout>>>::~ScopedActiveMessageReceiveQueue(&v4);
}

WebKit::RemoteBuffer **WebKit::WebGPU::ObjectHeap::addObject(uint64_t a1, void *a2, atomic_uint *a3)
{
  v8 = a2;
  atomic_fetch_add(a3 + 2, 1u);
  v4 = 0;
  v5 = a3;
  v6 = 4;
  _ZN3WTF7HashMapINS_23ObjectIdentifierGenericIN6WebKit20WebGPUIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEN5mpark7variantIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueINS2_13RemoteAdapterENS_6RefPtrISD_NS_12RawPtrTraitsISD_EENS_21DefaultRefDerefTraitsISD_EEEEEENSC_INS2_15RemoteBindGroupENSE_ISL_NSF_ISL_EENSH_ISL_EEEEEENSC_INS2_21RemoteBindGroupLayoutENSE_ISQ_NSF_ISQ_EENSH_ISQ_EEEEEENSC_INS2_12RemoteBufferENSE_ISV_NSF_ISV_EENSH_ISV_EEEEEENSC_INS2_19RemoteCommandBufferENSE_IS10_NSF_IS10_EENSH_IS10_EEEEEENSC_INS2_20RemoteCommandEncoderENSE_IS15_NSF_IS15_EENSH_IS15_EEEEEENSC_INS2_27RemoteCompositorIntegrationENSE_IS1A_NSF_IS1A_EENSH_IS1A_EEEEEENSC_INS2_24RemoteComputePassEncoderENSE_IS1F_NSF_IS1F_EENSH_IS1F_EEEEEENSC_INS2_21RemoteComputePipelineENSE_IS1K_NSF_IS1K_EENSH_IS1K_EEEEEENSC_INS2_12RemoteDeviceENSE_IS1P_NSF_IS1P_EENSH_IS1P_EEEEEENSC_INS2_21RemoteExternalTextureENSE_IS1U_NSF_IS1U_EENSH_IS1U_EEEEEENSC_INS2_20RemotePipelineLayoutENSE_IS1Z_NSF_IS1Z_EENSH_IS1Z_EEEEEENSC_INS2_25RemotePresentationContextENSE_IS24_NSF_IS24_EENSH_IS24_EEEEEENSC_INS2_14RemoteQuerySetENSE_IS29_NSF_IS29_EENSH_IS29_EEEEEENSC_INS2_11RemoteQueueENSE_IS2E_NSF_IS2E_EENSH_IS2E_EEEEEENSC_INS2_25RemoteRenderBundleEncoderENSE_IS2J_NSF_IS2J_EENSH_IS2J_EEEEEENSC_INS2_18RemoteRenderBundleENSE_IS2O_NSF_IS2O_EENSH_IS2O_EEEEEENSC_INS2_23RemoteRenderPassEncoderENSE_IS2T_NSF_IS2T_EENSH_IS2T_EEEEEENSC_INS2_20RemoteRenderPipelineENSE_IS2Y_NSF_IS2Y_EENSH_IS2Y_EEEEEENSC_INS2_13RemoteSamplerENSE_IS33_NSF_IS33_EENSH_IS33_EEEEEENSC_INS2_18RemoteShaderModuleENSE_IS38_NSF_IS38_EENSH_IS38_EEEEEENSC_INS2_13RemoteTextureENSE_IS3D_NSF_IS3D_EENSH_IS3D_EEEEEENSC_INS2_17RemoteTextureViewENSE_IS3I_NSF_IS3I_EENSH_IS3I_EEEEEENSC_INS2_15RemoteXRBindingENSE_IS3N_NSF_IS3N_EENSH_IS3N_EEEEEENSC_INS2_16RemoteXRSubImageENSE_IS3S_NSF_IS3S_EENSH_IS3S_EEEEEENSC_INS2_23RemoteXRProjectionLayerENSE_IS3X_NSF_IS3X_EENSH_IS3X_EEEEEENSC_INS2_12RemoteXRViewENSE_IS42_NSF_IS42_EENSH_IS42_EEEEEEEEENS_11DefaultHashIS6_EENS_10HashTraitsIS6_EENS4A_IS47_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1ENS_10FastMallocEE3addIS47_EENS_18HashTableAddResultINS_17HashTableIteratorINS_9HashTableIS6_NS_12KeyValuePairIS6_S47_EENS_24KeyValuePairKeyExtractorIS4M_EES49_NS4G_18KeyValuePairTraitsES4B_S4F_EES6_S4M_S4O_S49_S4P_S4B_EEEERKS6_OT_((a1 + 24), &v8, &v5, v7);
  if (v6 != 255)
  {
    _ZN5mpark6detail10visitation3alt9visit_altINS0_4dtorEJRNS0_10destructorINS0_6traitsIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueIN6WebKit13RemoteAdapterEN3WTF6RefPtrISC_NSD_12RawPtrTraitsISC_EENSD_21DefaultRefDerefTraitsISC_EEEEEENSA_INSB_15RemoteBindGroupENSE_ISL_NSF_ISL_EENSH_ISL_EEEEEENSA_INSB_21RemoteBindGroupLayoutENSE_ISQ_NSF_ISQ_EENSH_ISQ_EEEEEENSA_INSB_12RemoteBufferENSE_ISV_NSF_ISV_EENSH_ISV_EEEEEENSA_INSB_19RemoteCommandBufferENSE_IS10_NSF_IS10_EENSH_IS10_EEEEEENSA_INSB_20RemoteCommandEncoderENSE_IS15_NSF_IS15_EENSH_IS15_EEEEEENSA_INSB_27RemoteCompositorIntegrationENSE_IS1A_NSF_IS1A_EENSH_IS1A_EEEEEENSA_INSB_24RemoteComputePassEncoderENSE_IS1F_NSF_IS1F_EENSH_IS1F_EEEEEENSA_INSB_21RemoteComputePipelineENSE_IS1K_NSF_IS1K_EENSH_IS1K_EEEEEENSA_INSB_12RemoteDeviceENSE_IS1P_NSF_IS1P_EENSH_IS1P_EEEEEENSA_INSB_21RemoteExternalTextureENSE_IS1U_NSF_IS1U_EENSH_IS1U_EEEEEENSA_INSB_20RemotePipelineLayoutENSE_IS1Z_NSF_IS1Z_EENSH_IS1Z_EEEEEENSA_INSB_25RemotePresentationContextENSE_IS24_NSF_IS24_EENSH_IS24_EEEEEENSA_INSB_14RemoteQuerySetENSE_IS29_NSF_IS29_EENSH_IS29_EEEEEENSA_INSB_11RemoteQueueENSE_IS2E_NSF_IS2E_EENSH_IS2E_EEEEEENSA_INSB_25RemoteRenderBundleEncoderENSE_IS2J_NSF_IS2J_EENSH_IS2J_EEEEEENSA_INSB_18RemoteRenderBundleENSE_IS2O_NSF_IS2O_EENSH_IS2O_EEEEEENSA_INSB_23RemoteRenderPassEncoderENSE_IS2T_NSF_IS2T_EENSH_IS2T_EEEEEENSA_INSB_20RemoteRenderPipelineENSE_IS2Y_NSF_IS2Y_EENSH_IS2Y_EEEEEENSA_INSB_13RemoteSamplerENSE_IS33_NSF_IS33_EENSH_IS33_EEEEEENSA_INSB_18RemoteShaderModuleENSE_IS38_NSF_IS38_EENSH_IS38_EEEEEENSA_INSB_13RemoteTextureENSE_IS3D_NSF_IS3D_EENSH_IS3D_EEEEEENSA_INSB_17RemoteTextureViewENSE_IS3I_NSF_IS3I_EENSH_IS3I_EEEEEENSA_INSB_15RemoteXRBindingENSE_IS3N_NSF_IS3N_EENSH_IS3N_EEEEEENSA_INSB_16RemoteXRSubImageENSE_IS3S_NSF_IS3S_EENSH_IS3S_EEEEEENSA_INSB_23RemoteXRProjectionLayerENSE_IS3X_NSF_IS3X_EENSH_IS3X_EEEEEENSA_INSB_12RemoteXRViewENSE_IS42_NSF_IS42_EENSH_IS42_EEEEEEEEELNS0_5TraitE1EEEEEEDcOT_DpOT0_(&v9, &v5);
  }

  v6 = -1;
  return IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteBuffer,WTF::RefPtr<WebKit::RemoteBuffer,WTF::RawPtrTraits<WebKit::RemoteBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteBuffer>>>::~ScopedActiveMessageReceiveQueue(&v4);
}

WebKit::RemoteCommandBuffer **WebKit::WebGPU::ObjectHeap::addObject(uint64_t a1, void *a2, atomic_uint *a3)
{
  v8 = a2;
  atomic_fetch_add(a3 + 2, 1u);
  v4 = 0;
  v5 = a3;
  v6 = 5;
  _ZN3WTF7HashMapINS_23ObjectIdentifierGenericIN6WebKit20WebGPUIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEN5mpark7variantIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueINS2_13RemoteAdapterENS_6RefPtrISD_NS_12RawPtrTraitsISD_EENS_21DefaultRefDerefTraitsISD_EEEEEENSC_INS2_15RemoteBindGroupENSE_ISL_NSF_ISL_EENSH_ISL_EEEEEENSC_INS2_21RemoteBindGroupLayoutENSE_ISQ_NSF_ISQ_EENSH_ISQ_EEEEEENSC_INS2_12RemoteBufferENSE_ISV_NSF_ISV_EENSH_ISV_EEEEEENSC_INS2_19RemoteCommandBufferENSE_IS10_NSF_IS10_EENSH_IS10_EEEEEENSC_INS2_20RemoteCommandEncoderENSE_IS15_NSF_IS15_EENSH_IS15_EEEEEENSC_INS2_27RemoteCompositorIntegrationENSE_IS1A_NSF_IS1A_EENSH_IS1A_EEEEEENSC_INS2_24RemoteComputePassEncoderENSE_IS1F_NSF_IS1F_EENSH_IS1F_EEEEEENSC_INS2_21RemoteComputePipelineENSE_IS1K_NSF_IS1K_EENSH_IS1K_EEEEEENSC_INS2_12RemoteDeviceENSE_IS1P_NSF_IS1P_EENSH_IS1P_EEEEEENSC_INS2_21RemoteExternalTextureENSE_IS1U_NSF_IS1U_EENSH_IS1U_EEEEEENSC_INS2_20RemotePipelineLayoutENSE_IS1Z_NSF_IS1Z_EENSH_IS1Z_EEEEEENSC_INS2_25RemotePresentationContextENSE_IS24_NSF_IS24_EENSH_IS24_EEEEEENSC_INS2_14RemoteQuerySetENSE_IS29_NSF_IS29_EENSH_IS29_EEEEEENSC_INS2_11RemoteQueueENSE_IS2E_NSF_IS2E_EENSH_IS2E_EEEEEENSC_INS2_25RemoteRenderBundleEncoderENSE_IS2J_NSF_IS2J_EENSH_IS2J_EEEEEENSC_INS2_18RemoteRenderBundleENSE_IS2O_NSF_IS2O_EENSH_IS2O_EEEEEENSC_INS2_23RemoteRenderPassEncoderENSE_IS2T_NSF_IS2T_EENSH_IS2T_EEEEEENSC_INS2_20RemoteRenderPipelineENSE_IS2Y_NSF_IS2Y_EENSH_IS2Y_EEEEEENSC_INS2_13RemoteSamplerENSE_IS33_NSF_IS33_EENSH_IS33_EEEEEENSC_INS2_18RemoteShaderModuleENSE_IS38_NSF_IS38_EENSH_IS38_EEEEEENSC_INS2_13RemoteTextureENSE_IS3D_NSF_IS3D_EENSH_IS3D_EEEEEENSC_INS2_17RemoteTextureViewENSE_IS3I_NSF_IS3I_EENSH_IS3I_EEEEEENSC_INS2_15RemoteXRBindingENSE_IS3N_NSF_IS3N_EENSH_IS3N_EEEEEENSC_INS2_16RemoteXRSubImageENSE_IS3S_NSF_IS3S_EENSH_IS3S_EEEEEENSC_INS2_23RemoteXRProjectionLayerENSE_IS3X_NSF_IS3X_EENSH_IS3X_EEEEEENSC_INS2_12RemoteXRViewENSE_IS42_NSF_IS42_EENSH_IS42_EEEEEEEEENS_11DefaultHashIS6_EENS_10HashTraitsIS6_EENS4A_IS47_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1ENS_10FastMallocEE3addIS47_EENS_18HashTableAddResultINS_17HashTableIteratorINS_9HashTableIS6_NS_12KeyValuePairIS6_S47_EENS_24KeyValuePairKeyExtractorIS4M_EES49_NS4G_18KeyValuePairTraitsES4B_S4F_EES6_S4M_S4O_S49_S4P_S4B_EEEERKS6_OT_((a1 + 24), &v8, &v5, v7);
  if (v6 != 255)
  {
    _ZN5mpark6detail10visitation3alt9visit_altINS0_4dtorEJRNS0_10destructorINS0_6traitsIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueIN6WebKit13RemoteAdapterEN3WTF6RefPtrISC_NSD_12RawPtrTraitsISC_EENSD_21DefaultRefDerefTraitsISC_EEEEEENSA_INSB_15RemoteBindGroupENSE_ISL_NSF_ISL_EENSH_ISL_EEEEEENSA_INSB_21RemoteBindGroupLayoutENSE_ISQ_NSF_ISQ_EENSH_ISQ_EEEEEENSA_INSB_12RemoteBufferENSE_ISV_NSF_ISV_EENSH_ISV_EEEEEENSA_INSB_19RemoteCommandBufferENSE_IS10_NSF_IS10_EENSH_IS10_EEEEEENSA_INSB_20RemoteCommandEncoderENSE_IS15_NSF_IS15_EENSH_IS15_EEEEEENSA_INSB_27RemoteCompositorIntegrationENSE_IS1A_NSF_IS1A_EENSH_IS1A_EEEEEENSA_INSB_24RemoteComputePassEncoderENSE_IS1F_NSF_IS1F_EENSH_IS1F_EEEEEENSA_INSB_21RemoteComputePipelineENSE_IS1K_NSF_IS1K_EENSH_IS1K_EEEEEENSA_INSB_12RemoteDeviceENSE_IS1P_NSF_IS1P_EENSH_IS1P_EEEEEENSA_INSB_21RemoteExternalTextureENSE_IS1U_NSF_IS1U_EENSH_IS1U_EEEEEENSA_INSB_20RemotePipelineLayoutENSE_IS1Z_NSF_IS1Z_EENSH_IS1Z_EEEEEENSA_INSB_25RemotePresentationContextENSE_IS24_NSF_IS24_EENSH_IS24_EEEEEENSA_INSB_14RemoteQuerySetENSE_IS29_NSF_IS29_EENSH_IS29_EEEEEENSA_INSB_11RemoteQueueENSE_IS2E_NSF_IS2E_EENSH_IS2E_EEEEEENSA_INSB_25RemoteRenderBundleEncoderENSE_IS2J_NSF_IS2J_EENSH_IS2J_EEEEEENSA_INSB_18RemoteRenderBundleENSE_IS2O_NSF_IS2O_EENSH_IS2O_EEEEEENSA_INSB_23RemoteRenderPassEncoderENSE_IS2T_NSF_IS2T_EENSH_IS2T_EEEEEENSA_INSB_20RemoteRenderPipelineENSE_IS2Y_NSF_IS2Y_EENSH_IS2Y_EEEEEENSA_INSB_13RemoteSamplerENSE_IS33_NSF_IS33_EENSH_IS33_EEEEEENSA_INSB_18RemoteShaderModuleENSE_IS38_NSF_IS38_EENSH_IS38_EEEEEENSA_INSB_13RemoteTextureENSE_IS3D_NSF_IS3D_EENSH_IS3D_EEEEEENSA_INSB_17RemoteTextureViewENSE_IS3I_NSF_IS3I_EENSH_IS3I_EEEEEENSA_INSB_15RemoteXRBindingENSE_IS3N_NSF_IS3N_EENSH_IS3N_EEEEEENSA_INSB_16RemoteXRSubImageENSE_IS3S_NSF_IS3S_EENSH_IS3S_EEEEEENSA_INSB_23RemoteXRProjectionLayerENSE_IS3X_NSF_IS3X_EENSH_IS3X_EEEEEENSA_INSB_12RemoteXRViewENSE_IS42_NSF_IS42_EENSH_IS42_EEEEEEEEELNS0_5TraitE1EEEEEEDcOT_DpOT0_(&v9, &v5);
  }

  v6 = -1;
  return IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteCommandBuffer,WTF::RefPtr<WebKit::RemoteCommandBuffer,WTF::RawPtrTraits<WebKit::RemoteCommandBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteCommandBuffer>>>::~ScopedActiveMessageReceiveQueue(&v4);
}

WebKit::RemoteCommandEncoder **WebKit::WebGPU::ObjectHeap::addObject(uint64_t a1, void *a2, atomic_uint *a3)
{
  v8 = a2;
  atomic_fetch_add(a3 + 2, 1u);
  v4 = 0;
  v5 = a3;
  v6 = 6;
  _ZN3WTF7HashMapINS_23ObjectIdentifierGenericIN6WebKit20WebGPUIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEN5mpark7variantIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueINS2_13RemoteAdapterENS_6RefPtrISD_NS_12RawPtrTraitsISD_EENS_21DefaultRefDerefTraitsISD_EEEEEENSC_INS2_15RemoteBindGroupENSE_ISL_NSF_ISL_EENSH_ISL_EEEEEENSC_INS2_21RemoteBindGroupLayoutENSE_ISQ_NSF_ISQ_EENSH_ISQ_EEEEEENSC_INS2_12RemoteBufferENSE_ISV_NSF_ISV_EENSH_ISV_EEEEEENSC_INS2_19RemoteCommandBufferENSE_IS10_NSF_IS10_EENSH_IS10_EEEEEENSC_INS2_20RemoteCommandEncoderENSE_IS15_NSF_IS15_EENSH_IS15_EEEEEENSC_INS2_27RemoteCompositorIntegrationENSE_IS1A_NSF_IS1A_EENSH_IS1A_EEEEEENSC_INS2_24RemoteComputePassEncoderENSE_IS1F_NSF_IS1F_EENSH_IS1F_EEEEEENSC_INS2_21RemoteComputePipelineENSE_IS1K_NSF_IS1K_EENSH_IS1K_EEEEEENSC_INS2_12RemoteDeviceENSE_IS1P_NSF_IS1P_EENSH_IS1P_EEEEEENSC_INS2_21RemoteExternalTextureENSE_IS1U_NSF_IS1U_EENSH_IS1U_EEEEEENSC_INS2_20RemotePipelineLayoutENSE_IS1Z_NSF_IS1Z_EENSH_IS1Z_EEEEEENSC_INS2_25RemotePresentationContextENSE_IS24_NSF_IS24_EENSH_IS24_EEEEEENSC_INS2_14RemoteQuerySetENSE_IS29_NSF_IS29_EENSH_IS29_EEEEEENSC_INS2_11RemoteQueueENSE_IS2E_NSF_IS2E_EENSH_IS2E_EEEEEENSC_INS2_25RemoteRenderBundleEncoderENSE_IS2J_NSF_IS2J_EENSH_IS2J_EEEEEENSC_INS2_18RemoteRenderBundleENSE_IS2O_NSF_IS2O_EENSH_IS2O_EEEEEENSC_INS2_23RemoteRenderPassEncoderENSE_IS2T_NSF_IS2T_EENSH_IS2T_EEEEEENSC_INS2_20RemoteRenderPipelineENSE_IS2Y_NSF_IS2Y_EENSH_IS2Y_EEEEEENSC_INS2_13RemoteSamplerENSE_IS33_NSF_IS33_EENSH_IS33_EEEEEENSC_INS2_18RemoteShaderModuleENSE_IS38_NSF_IS38_EENSH_IS38_EEEEEENSC_INS2_13RemoteTextureENSE_IS3D_NSF_IS3D_EENSH_IS3D_EEEEEENSC_INS2_17RemoteTextureViewENSE_IS3I_NSF_IS3I_EENSH_IS3I_EEEEEENSC_INS2_15RemoteXRBindingENSE_IS3N_NSF_IS3N_EENSH_IS3N_EEEEEENSC_INS2_16RemoteXRSubImageENSE_IS3S_NSF_IS3S_EENSH_IS3S_EEEEEENSC_INS2_23RemoteXRProjectionLayerENSE_IS3X_NSF_IS3X_EENSH_IS3X_EEEEEENSC_INS2_12RemoteXRViewENSE_IS42_NSF_IS42_EENSH_IS42_EEEEEEEEENS_11DefaultHashIS6_EENS_10HashTraitsIS6_EENS4A_IS47_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1ENS_10FastMallocEE3addIS47_EENS_18HashTableAddResultINS_17HashTableIteratorINS_9HashTableIS6_NS_12KeyValuePairIS6_S47_EENS_24KeyValuePairKeyExtractorIS4M_EES49_NS4G_18KeyValuePairTraitsES4B_S4F_EES6_S4M_S4O_S49_S4P_S4B_EEEERKS6_OT_((a1 + 24), &v8, &v5, v7);
  if (v6 != 255)
  {
    _ZN5mpark6detail10visitation3alt9visit_altINS0_4dtorEJRNS0_10destructorINS0_6traitsIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueIN6WebKit13RemoteAdapterEN3WTF6RefPtrISC_NSD_12RawPtrTraitsISC_EENSD_21DefaultRefDerefTraitsISC_EEEEEENSA_INSB_15RemoteBindGroupENSE_ISL_NSF_ISL_EENSH_ISL_EEEEEENSA_INSB_21RemoteBindGroupLayoutENSE_ISQ_NSF_ISQ_EENSH_ISQ_EEEEEENSA_INSB_12RemoteBufferENSE_ISV_NSF_ISV_EENSH_ISV_EEEEEENSA_INSB_19RemoteCommandBufferENSE_IS10_NSF_IS10_EENSH_IS10_EEEEEENSA_INSB_20RemoteCommandEncoderENSE_IS15_NSF_IS15_EENSH_IS15_EEEEEENSA_INSB_27RemoteCompositorIntegrationENSE_IS1A_NSF_IS1A_EENSH_IS1A_EEEEEENSA_INSB_24RemoteComputePassEncoderENSE_IS1F_NSF_IS1F_EENSH_IS1F_EEEEEENSA_INSB_21RemoteComputePipelineENSE_IS1K_NSF_IS1K_EENSH_IS1K_EEEEEENSA_INSB_12RemoteDeviceENSE_IS1P_NSF_IS1P_EENSH_IS1P_EEEEEENSA_INSB_21RemoteExternalTextureENSE_IS1U_NSF_IS1U_EENSH_IS1U_EEEEEENSA_INSB_20RemotePipelineLayoutENSE_IS1Z_NSF_IS1Z_EENSH_IS1Z_EEEEEENSA_INSB_25RemotePresentationContextENSE_IS24_NSF_IS24_EENSH_IS24_EEEEEENSA_INSB_14RemoteQuerySetENSE_IS29_NSF_IS29_EENSH_IS29_EEEEEENSA_INSB_11RemoteQueueENSE_IS2E_NSF_IS2E_EENSH_IS2E_EEEEEENSA_INSB_25RemoteRenderBundleEncoderENSE_IS2J_NSF_IS2J_EENSH_IS2J_EEEEEENSA_INSB_18RemoteRenderBundleENSE_IS2O_NSF_IS2O_EENSH_IS2O_EEEEEENSA_INSB_23RemoteRenderPassEncoderENSE_IS2T_NSF_IS2T_EENSH_IS2T_EEEEEENSA_INSB_20RemoteRenderPipelineENSE_IS2Y_NSF_IS2Y_EENSH_IS2Y_EEEEEENSA_INSB_13RemoteSamplerENSE_IS33_NSF_IS33_EENSH_IS33_EEEEEENSA_INSB_18RemoteShaderModuleENSE_IS38_NSF_IS38_EENSH_IS38_EEEEEENSA_INSB_13RemoteTextureENSE_IS3D_NSF_IS3D_EENSH_IS3D_EEEEEENSA_INSB_17RemoteTextureViewENSE_IS3I_NSF_IS3I_EENSH_IS3I_EEEEEENSA_INSB_15RemoteXRBindingENSE_IS3N_NSF_IS3N_EENSH_IS3N_EEEEEENSA_INSB_16RemoteXRSubImageENSE_IS3S_NSF_IS3S_EENSH_IS3S_EEEEEENSA_INSB_23RemoteXRProjectionLayerENSE_IS3X_NSF_IS3X_EENSH_IS3X_EEEEEENSA_INSB_12RemoteXRViewENSE_IS42_NSF_IS42_EENSH_IS42_EEEEEEEEELNS0_5TraitE1EEEEEEDcOT_DpOT0_(&v9, &v5);
  }

  v6 = -1;
  return IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteCommandEncoder,WTF::RefPtr<WebKit::RemoteCommandEncoder,WTF::RawPtrTraits<WebKit::RemoteCommandEncoder>,WTF::DefaultRefDerefTraits<WebKit::RemoteCommandEncoder>>>::~ScopedActiveMessageReceiveQueue(&v4);
}

WebKit::RemoteCompositorIntegration **WebKit::WebGPU::ObjectHeap::addObject(uint64_t a1, void *a2, atomic_uint *a3)
{
  v8 = a2;
  atomic_fetch_add(a3 + 2, 1u);
  v4 = 0;
  v5 = a3;
  v6 = 7;
  _ZN3WTF7HashMapINS_23ObjectIdentifierGenericIN6WebKit20WebGPUIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEN5mpark7variantIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueINS2_13RemoteAdapterENS_6RefPtrISD_NS_12RawPtrTraitsISD_EENS_21DefaultRefDerefTraitsISD_EEEEEENSC_INS2_15RemoteBindGroupENSE_ISL_NSF_ISL_EENSH_ISL_EEEEEENSC_INS2_21RemoteBindGroupLayoutENSE_ISQ_NSF_ISQ_EENSH_ISQ_EEEEEENSC_INS2_12RemoteBufferENSE_ISV_NSF_ISV_EENSH_ISV_EEEEEENSC_INS2_19RemoteCommandBufferENSE_IS10_NSF_IS10_EENSH_IS10_EEEEEENSC_INS2_20RemoteCommandEncoderENSE_IS15_NSF_IS15_EENSH_IS15_EEEEEENSC_INS2_27RemoteCompositorIntegrationENSE_IS1A_NSF_IS1A_EENSH_IS1A_EEEEEENSC_INS2_24RemoteComputePassEncoderENSE_IS1F_NSF_IS1F_EENSH_IS1F_EEEEEENSC_INS2_21RemoteComputePipelineENSE_IS1K_NSF_IS1K_EENSH_IS1K_EEEEEENSC_INS2_12RemoteDeviceENSE_IS1P_NSF_IS1P_EENSH_IS1P_EEEEEENSC_INS2_21RemoteExternalTextureENSE_IS1U_NSF_IS1U_EENSH_IS1U_EEEEEENSC_INS2_20RemotePipelineLayoutENSE_IS1Z_NSF_IS1Z_EENSH_IS1Z_EEEEEENSC_INS2_25RemotePresentationContextENSE_IS24_NSF_IS24_EENSH_IS24_EEEEEENSC_INS2_14RemoteQuerySetENSE_IS29_NSF_IS29_EENSH_IS29_EEEEEENSC_INS2_11RemoteQueueENSE_IS2E_NSF_IS2E_EENSH_IS2E_EEEEEENSC_INS2_25RemoteRenderBundleEncoderENSE_IS2J_NSF_IS2J_EENSH_IS2J_EEEEEENSC_INS2_18RemoteRenderBundleENSE_IS2O_NSF_IS2O_EENSH_IS2O_EEEEEENSC_INS2_23RemoteRenderPassEncoderENSE_IS2T_NSF_IS2T_EENSH_IS2T_EEEEEENSC_INS2_20RemoteRenderPipelineENSE_IS2Y_NSF_IS2Y_EENSH_IS2Y_EEEEEENSC_INS2_13RemoteSamplerENSE_IS33_NSF_IS33_EENSH_IS33_EEEEEENSC_INS2_18RemoteShaderModuleENSE_IS38_NSF_IS38_EENSH_IS38_EEEEEENSC_INS2_13RemoteTextureENSE_IS3D_NSF_IS3D_EENSH_IS3D_EEEEEENSC_INS2_17RemoteTextureViewENSE_IS3I_NSF_IS3I_EENSH_IS3I_EEEEEENSC_INS2_15RemoteXRBindingENSE_IS3N_NSF_IS3N_EENSH_IS3N_EEEEEENSC_INS2_16RemoteXRSubImageENSE_IS3S_NSF_IS3S_EENSH_IS3S_EEEEEENSC_INS2_23RemoteXRProjectionLayerENSE_IS3X_NSF_IS3X_EENSH_IS3X_EEEEEENSC_INS2_12RemoteXRViewENSE_IS42_NSF_IS42_EENSH_IS42_EEEEEEEEENS_11DefaultHashIS6_EENS_10HashTraitsIS6_EENS4A_IS47_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1ENS_10FastMallocEE3addIS47_EENS_18HashTableAddResultINS_17HashTableIteratorINS_9HashTableIS6_NS_12KeyValuePairIS6_S47_EENS_24KeyValuePairKeyExtractorIS4M_EES49_NS4G_18KeyValuePairTraitsES4B_S4F_EES6_S4M_S4O_S49_S4P_S4B_EEEERKS6_OT_((a1 + 24), &v8, &v5, v7);
  if (v6 != 255)
  {
    _ZN5mpark6detail10visitation3alt9visit_altINS0_4dtorEJRNS0_10destructorINS0_6traitsIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueIN6WebKit13RemoteAdapterEN3WTF6RefPtrISC_NSD_12RawPtrTraitsISC_EENSD_21DefaultRefDerefTraitsISC_EEEEEENSA_INSB_15RemoteBindGroupENSE_ISL_NSF_ISL_EENSH_ISL_EEEEEENSA_INSB_21RemoteBindGroupLayoutENSE_ISQ_NSF_ISQ_EENSH_ISQ_EEEEEENSA_INSB_12RemoteBufferENSE_ISV_NSF_ISV_EENSH_ISV_EEEEEENSA_INSB_19RemoteCommandBufferENSE_IS10_NSF_IS10_EENSH_IS10_EEEEEENSA_INSB_20RemoteCommandEncoderENSE_IS15_NSF_IS15_EENSH_IS15_EEEEEENSA_INSB_27RemoteCompositorIntegrationENSE_IS1A_NSF_IS1A_EENSH_IS1A_EEEEEENSA_INSB_24RemoteComputePassEncoderENSE_IS1F_NSF_IS1F_EENSH_IS1F_EEEEEENSA_INSB_21RemoteComputePipelineENSE_IS1K_NSF_IS1K_EENSH_IS1K_EEEEEENSA_INSB_12RemoteDeviceENSE_IS1P_NSF_IS1P_EENSH_IS1P_EEEEEENSA_INSB_21RemoteExternalTextureENSE_IS1U_NSF_IS1U_EENSH_IS1U_EEEEEENSA_INSB_20RemotePipelineLayoutENSE_IS1Z_NSF_IS1Z_EENSH_IS1Z_EEEEEENSA_INSB_25RemotePresentationContextENSE_IS24_NSF_IS24_EENSH_IS24_EEEEEENSA_INSB_14RemoteQuerySetENSE_IS29_NSF_IS29_EENSH_IS29_EEEEEENSA_INSB_11RemoteQueueENSE_IS2E_NSF_IS2E_EENSH_IS2E_EEEEEENSA_INSB_25RemoteRenderBundleEncoderENSE_IS2J_NSF_IS2J_EENSH_IS2J_EEEEEENSA_INSB_18RemoteRenderBundleENSE_IS2O_NSF_IS2O_EENSH_IS2O_EEEEEENSA_INSB_23RemoteRenderPassEncoderENSE_IS2T_NSF_IS2T_EENSH_IS2T_EEEEEENSA_INSB_20RemoteRenderPipelineENSE_IS2Y_NSF_IS2Y_EENSH_IS2Y_EEEEEENSA_INSB_13RemoteSamplerENSE_IS33_NSF_IS33_EENSH_IS33_EEEEEENSA_INSB_18RemoteShaderModuleENSE_IS38_NSF_IS38_EENSH_IS38_EEEEEENSA_INSB_13RemoteTextureENSE_IS3D_NSF_IS3D_EENSH_IS3D_EEEEEENSA_INSB_17RemoteTextureViewENSE_IS3I_NSF_IS3I_EENSH_IS3I_EEEEEENSA_INSB_15RemoteXRBindingENSE_IS3N_NSF_IS3N_EENSH_IS3N_EEEEEENSA_INSB_16RemoteXRSubImageENSE_IS3S_NSF_IS3S_EENSH_IS3S_EEEEEENSA_INSB_23RemoteXRProjectionLayerENSE_IS3X_NSF_IS3X_EENSH_IS3X_EEEEEENSA_INSB_12RemoteXRViewENSE_IS42_NSF_IS42_EENSH_IS42_EEEEEEEEELNS0_5TraitE1EEEEEEDcOT_DpOT0_(&v9, &v5);
  }

  v6 = -1;
  return IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteCompositorIntegration,WTF::RefPtr<WebKit::RemoteCompositorIntegration,WTF::RawPtrTraits<WebKit::RemoteCompositorIntegration>,WTF::DefaultRefDerefTraits<WebKit::RemoteCompositorIntegration>>>::~ScopedActiveMessageReceiveQueue(&v4);
}

WebKit::RemoteComputePassEncoder **WebKit::WebGPU::ObjectHeap::addObject(uint64_t a1, void *a2, atomic_uint *a3)
{
  v8 = a2;
  atomic_fetch_add(a3 + 2, 1u);
  v4 = 0;
  v5 = a3;
  v6 = 8;
  _ZN3WTF7HashMapINS_23ObjectIdentifierGenericIN6WebKit20WebGPUIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEN5mpark7variantIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueINS2_13RemoteAdapterENS_6RefPtrISD_NS_12RawPtrTraitsISD_EENS_21DefaultRefDerefTraitsISD_EEEEEENSC_INS2_15RemoteBindGroupENSE_ISL_NSF_ISL_EENSH_ISL_EEEEEENSC_INS2_21RemoteBindGroupLayoutENSE_ISQ_NSF_ISQ_EENSH_ISQ_EEEEEENSC_INS2_12RemoteBufferENSE_ISV_NSF_ISV_EENSH_ISV_EEEEEENSC_INS2_19RemoteCommandBufferENSE_IS10_NSF_IS10_EENSH_IS10_EEEEEENSC_INS2_20RemoteCommandEncoderENSE_IS15_NSF_IS15_EENSH_IS15_EEEEEENSC_INS2_27RemoteCompositorIntegrationENSE_IS1A_NSF_IS1A_EENSH_IS1A_EEEEEENSC_INS2_24RemoteComputePassEncoderENSE_IS1F_NSF_IS1F_EENSH_IS1F_EEEEEENSC_INS2_21RemoteComputePipelineENSE_IS1K_NSF_IS1K_EENSH_IS1K_EEEEEENSC_INS2_12RemoteDeviceENSE_IS1P_NSF_IS1P_EENSH_IS1P_EEEEEENSC_INS2_21RemoteExternalTextureENSE_IS1U_NSF_IS1U_EENSH_IS1U_EEEEEENSC_INS2_20RemotePipelineLayoutENSE_IS1Z_NSF_IS1Z_EENSH_IS1Z_EEEEEENSC_INS2_25RemotePresentationContextENSE_IS24_NSF_IS24_EENSH_IS24_EEEEEENSC_INS2_14RemoteQuerySetENSE_IS29_NSF_IS29_EENSH_IS29_EEEEEENSC_INS2_11RemoteQueueENSE_IS2E_NSF_IS2E_EENSH_IS2E_EEEEEENSC_INS2_25RemoteRenderBundleEncoderENSE_IS2J_NSF_IS2J_EENSH_IS2J_EEEEEENSC_INS2_18RemoteRenderBundleENSE_IS2O_NSF_IS2O_EENSH_IS2O_EEEEEENSC_INS2_23RemoteRenderPassEncoderENSE_IS2T_NSF_IS2T_EENSH_IS2T_EEEEEENSC_INS2_20RemoteRenderPipelineENSE_IS2Y_NSF_IS2Y_EENSH_IS2Y_EEEEEENSC_INS2_13RemoteSamplerENSE_IS33_NSF_IS33_EENSH_IS33_EEEEEENSC_INS2_18RemoteShaderModuleENSE_IS38_NSF_IS38_EENSH_IS38_EEEEEENSC_INS2_13RemoteTextureENSE_IS3D_NSF_IS3D_EENSH_IS3D_EEEEEENSC_INS2_17RemoteTextureViewENSE_IS3I_NSF_IS3I_EENSH_IS3I_EEEEEENSC_INS2_15RemoteXRBindingENSE_IS3N_NSF_IS3N_EENSH_IS3N_EEEEEENSC_INS2_16RemoteXRSubImageENSE_IS3S_NSF_IS3S_EENSH_IS3S_EEEEEENSC_INS2_23RemoteXRProjectionLayerENSE_IS3X_NSF_IS3X_EENSH_IS3X_EEEEEENSC_INS2_12RemoteXRViewENSE_IS42_NSF_IS42_EENSH_IS42_EEEEEEEEENS_11DefaultHashIS6_EENS_10HashTraitsIS6_EENS4A_IS47_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1ENS_10FastMallocEE3addIS47_EENS_18HashTableAddResultINS_17HashTableIteratorINS_9HashTableIS6_NS_12KeyValuePairIS6_S47_EENS_24KeyValuePairKeyExtractorIS4M_EES49_NS4G_18KeyValuePairTraitsES4B_S4F_EES6_S4M_S4O_S49_S4P_S4B_EEEERKS6_OT_((a1 + 24), &v8, &v5, v7);
  if (v6 != 255)
  {
    _ZN5mpark6detail10visitation3alt9visit_altINS0_4dtorEJRNS0_10destructorINS0_6traitsIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueIN6WebKit13RemoteAdapterEN3WTF6RefPtrISC_NSD_12RawPtrTraitsISC_EENSD_21DefaultRefDerefTraitsISC_EEEEEENSA_INSB_15RemoteBindGroupENSE_ISL_NSF_ISL_EENSH_ISL_EEEEEENSA_INSB_21RemoteBindGroupLayoutENSE_ISQ_NSF_ISQ_EENSH_ISQ_EEEEEENSA_INSB_12RemoteBufferENSE_ISV_NSF_ISV_EENSH_ISV_EEEEEENSA_INSB_19RemoteCommandBufferENSE_IS10_NSF_IS10_EENSH_IS10_EEEEEENSA_INSB_20RemoteCommandEncoderENSE_IS15_NSF_IS15_EENSH_IS15_EEEEEENSA_INSB_27RemoteCompositorIntegrationENSE_IS1A_NSF_IS1A_EENSH_IS1A_EEEEEENSA_INSB_24RemoteComputePassEncoderENSE_IS1F_NSF_IS1F_EENSH_IS1F_EEEEEENSA_INSB_21RemoteComputePipelineENSE_IS1K_NSF_IS1K_EENSH_IS1K_EEEEEENSA_INSB_12RemoteDeviceENSE_IS1P_NSF_IS1P_EENSH_IS1P_EEEEEENSA_INSB_21RemoteExternalTextureENSE_IS1U_NSF_IS1U_EENSH_IS1U_EEEEEENSA_INSB_20RemotePipelineLayoutENSE_IS1Z_NSF_IS1Z_EENSH_IS1Z_EEEEEENSA_INSB_25RemotePresentationContextENSE_IS24_NSF_IS24_EENSH_IS24_EEEEEENSA_INSB_14RemoteQuerySetENSE_IS29_NSF_IS29_EENSH_IS29_EEEEEENSA_INSB_11RemoteQueueENSE_IS2E_NSF_IS2E_EENSH_IS2E_EEEEEENSA_INSB_25RemoteRenderBundleEncoderENSE_IS2J_NSF_IS2J_EENSH_IS2J_EEEEEENSA_INSB_18RemoteRenderBundleENSE_IS2O_NSF_IS2O_EENSH_IS2O_EEEEEENSA_INSB_23RemoteRenderPassEncoderENSE_IS2T_NSF_IS2T_EENSH_IS2T_EEEEEENSA_INSB_20RemoteRenderPipelineENSE_IS2Y_NSF_IS2Y_EENSH_IS2Y_EEEEEENSA_INSB_13RemoteSamplerENSE_IS33_NSF_IS33_EENSH_IS33_EEEEEENSA_INSB_18RemoteShaderModuleENSE_IS38_NSF_IS38_EENSH_IS38_EEEEEENSA_INSB_13RemoteTextureENSE_IS3D_NSF_IS3D_EENSH_IS3D_EEEEEENSA_INSB_17RemoteTextureViewENSE_IS3I_NSF_IS3I_EENSH_IS3I_EEEEEENSA_INSB_15RemoteXRBindingENSE_IS3N_NSF_IS3N_EENSH_IS3N_EEEEEENSA_INSB_16RemoteXRSubImageENSE_IS3S_NSF_IS3S_EENSH_IS3S_EEEEEENSA_INSB_23RemoteXRProjectionLayerENSE_IS3X_NSF_IS3X_EENSH_IS3X_EEEEEENSA_INSB_12RemoteXRViewENSE_IS42_NSF_IS42_EENSH_IS42_EEEEEEEEELNS0_5TraitE1EEEEEEDcOT_DpOT0_(&v9, &v5);
  }

  v6 = -1;
  return IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteComputePassEncoder,WTF::RefPtr<WebKit::RemoteComputePassEncoder,WTF::RawPtrTraits<WebKit::RemoteComputePassEncoder>,WTF::DefaultRefDerefTraits<WebKit::RemoteComputePassEncoder>>>::~ScopedActiveMessageReceiveQueue(&v4);
}

WebKit::RemoteComputePipeline **WebKit::WebGPU::ObjectHeap::addObject(uint64_t a1, void *a2, atomic_uint *a3)
{
  v8 = a2;
  atomic_fetch_add(a3 + 2, 1u);
  v4 = 0;
  v5 = a3;
  v6 = 9;
  _ZN3WTF7HashMapINS_23ObjectIdentifierGenericIN6WebKit20WebGPUIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEN5mpark7variantIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueINS2_13RemoteAdapterENS_6RefPtrISD_NS_12RawPtrTraitsISD_EENS_21DefaultRefDerefTraitsISD_EEEEEENSC_INS2_15RemoteBindGroupENSE_ISL_NSF_ISL_EENSH_ISL_EEEEEENSC_INS2_21RemoteBindGroupLayoutENSE_ISQ_NSF_ISQ_EENSH_ISQ_EEEEEENSC_INS2_12RemoteBufferENSE_ISV_NSF_ISV_EENSH_ISV_EEEEEENSC_INS2_19RemoteCommandBufferENSE_IS10_NSF_IS10_EENSH_IS10_EEEEEENSC_INS2_20RemoteCommandEncoderENSE_IS15_NSF_IS15_EENSH_IS15_EEEEEENSC_INS2_27RemoteCompositorIntegrationENSE_IS1A_NSF_IS1A_EENSH_IS1A_EEEEEENSC_INS2_24RemoteComputePassEncoderENSE_IS1F_NSF_IS1F_EENSH_IS1F_EEEEEENSC_INS2_21RemoteComputePipelineENSE_IS1K_NSF_IS1K_EENSH_IS1K_EEEEEENSC_INS2_12RemoteDeviceENSE_IS1P_NSF_IS1P_EENSH_IS1P_EEEEEENSC_INS2_21RemoteExternalTextureENSE_IS1U_NSF_IS1U_EENSH_IS1U_EEEEEENSC_INS2_20RemotePipelineLayoutENSE_IS1Z_NSF_IS1Z_EENSH_IS1Z_EEEEEENSC_INS2_25RemotePresentationContextENSE_IS24_NSF_IS24_EENSH_IS24_EEEEEENSC_INS2_14RemoteQuerySetENSE_IS29_NSF_IS29_EENSH_IS29_EEEEEENSC_INS2_11RemoteQueueENSE_IS2E_NSF_IS2E_EENSH_IS2E_EEEEEENSC_INS2_25RemoteRenderBundleEncoderENSE_IS2J_NSF_IS2J_EENSH_IS2J_EEEEEENSC_INS2_18RemoteRenderBundleENSE_IS2O_NSF_IS2O_EENSH_IS2O_EEEEEENSC_INS2_23RemoteRenderPassEncoderENSE_IS2T_NSF_IS2T_EENSH_IS2T_EEEEEENSC_INS2_20RemoteRenderPipelineENSE_IS2Y_NSF_IS2Y_EENSH_IS2Y_EEEEEENSC_INS2_13RemoteSamplerENSE_IS33_NSF_IS33_EENSH_IS33_EEEEEENSC_INS2_18RemoteShaderModuleENSE_IS38_NSF_IS38_EENSH_IS38_EEEEEENSC_INS2_13RemoteTextureENSE_IS3D_NSF_IS3D_EENSH_IS3D_EEEEEENSC_INS2_17RemoteTextureViewENSE_IS3I_NSF_IS3I_EENSH_IS3I_EEEEEENSC_INS2_15RemoteXRBindingENSE_IS3N_NSF_IS3N_EENSH_IS3N_EEEEEENSC_INS2_16RemoteXRSubImageENSE_IS3S_NSF_IS3S_EENSH_IS3S_EEEEEENSC_INS2_23RemoteXRProjectionLayerENSE_IS3X_NSF_IS3X_EENSH_IS3X_EEEEEENSC_INS2_12RemoteXRViewENSE_IS42_NSF_IS42_EENSH_IS42_EEEEEEEEENS_11DefaultHashIS6_EENS_10HashTraitsIS6_EENS4A_IS47_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1ENS_10FastMallocEE3addIS47_EENS_18HashTableAddResultINS_17HashTableIteratorINS_9HashTableIS6_NS_12KeyValuePairIS6_S47_EENS_24KeyValuePairKeyExtractorIS4M_EES49_NS4G_18KeyValuePairTraitsES4B_S4F_EES6_S4M_S4O_S49_S4P_S4B_EEEERKS6_OT_((a1 + 24), &v8, &v5, v7);
  if (v6 != 255)
  {
    _ZN5mpark6detail10visitation3alt9visit_altINS0_4dtorEJRNS0_10destructorINS0_6traitsIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueIN6WebKit13RemoteAdapterEN3WTF6RefPtrISC_NSD_12RawPtrTraitsISC_EENSD_21DefaultRefDerefTraitsISC_EEEEEENSA_INSB_15RemoteBindGroupENSE_ISL_NSF_ISL_EENSH_ISL_EEEEEENSA_INSB_21RemoteBindGroupLayoutENSE_ISQ_NSF_ISQ_EENSH_ISQ_EEEEEENSA_INSB_12RemoteBufferENSE_ISV_NSF_ISV_EENSH_ISV_EEEEEENSA_INSB_19RemoteCommandBufferENSE_IS10_NSF_IS10_EENSH_IS10_EEEEEENSA_INSB_20RemoteCommandEncoderENSE_IS15_NSF_IS15_EENSH_IS15_EEEEEENSA_INSB_27RemoteCompositorIntegrationENSE_IS1A_NSF_IS1A_EENSH_IS1A_EEEEEENSA_INSB_24RemoteComputePassEncoderENSE_IS1F_NSF_IS1F_EENSH_IS1F_EEEEEENSA_INSB_21RemoteComputePipelineENSE_IS1K_NSF_IS1K_EENSH_IS1K_EEEEEENSA_INSB_12RemoteDeviceENSE_IS1P_NSF_IS1P_EENSH_IS1P_EEEEEENSA_INSB_21RemoteExternalTextureENSE_IS1U_NSF_IS1U_EENSH_IS1U_EEEEEENSA_INSB_20RemotePipelineLayoutENSE_IS1Z_NSF_IS1Z_EENSH_IS1Z_EEEEEENSA_INSB_25RemotePresentationContextENSE_IS24_NSF_IS24_EENSH_IS24_EEEEEENSA_INSB_14RemoteQuerySetENSE_IS29_NSF_IS29_EENSH_IS29_EEEEEENSA_INSB_11RemoteQueueENSE_IS2E_NSF_IS2E_EENSH_IS2E_EEEEEENSA_INSB_25RemoteRenderBundleEncoderENSE_IS2J_NSF_IS2J_EENSH_IS2J_EEEEEENSA_INSB_18RemoteRenderBundleENSE_IS2O_NSF_IS2O_EENSH_IS2O_EEEEEENSA_INSB_23RemoteRenderPassEncoderENSE_IS2T_NSF_IS2T_EENSH_IS2T_EEEEEENSA_INSB_20RemoteRenderPipelineENSE_IS2Y_NSF_IS2Y_EENSH_IS2Y_EEEEEENSA_INSB_13RemoteSamplerENSE_IS33_NSF_IS33_EENSH_IS33_EEEEEENSA_INSB_18RemoteShaderModuleENSE_IS38_NSF_IS38_EENSH_IS38_EEEEEENSA_INSB_13RemoteTextureENSE_IS3D_NSF_IS3D_EENSH_IS3D_EEEEEENSA_INSB_17RemoteTextureViewENSE_IS3I_NSF_IS3I_EENSH_IS3I_EEEEEENSA_INSB_15RemoteXRBindingENSE_IS3N_NSF_IS3N_EENSH_IS3N_EEEEEENSA_INSB_16RemoteXRSubImageENSE_IS3S_NSF_IS3S_EENSH_IS3S_EEEEEENSA_INSB_23RemoteXRProjectionLayerENSE_IS3X_NSF_IS3X_EENSH_IS3X_EEEEEENSA_INSB_12RemoteXRViewENSE_IS42_NSF_IS42_EENSH_IS42_EEEEEEEEELNS0_5TraitE1EEEEEEDcOT_DpOT0_(&v9, &v5);
  }

  v6 = -1;
  return IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteComputePipeline,WTF::RefPtr<WebKit::RemoteComputePipeline,WTF::RawPtrTraits<WebKit::RemoteComputePipeline>,WTF::DefaultRefDerefTraits<WebKit::RemoteComputePipeline>>>::~ScopedActiveMessageReceiveQueue(&v4);
}

unsigned int **WebKit::WebGPU::ObjectHeap::addObject(uint64_t a1, void *a2, atomic_uint *a3)
{
  v8 = a2;
  atomic_fetch_add(a3 + 2, 1u);
  v4 = 0;
  v5 = a3;
  v6 = 10;
  _ZN3WTF7HashMapINS_23ObjectIdentifierGenericIN6WebKit20WebGPUIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEN5mpark7variantIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueINS2_13RemoteAdapterENS_6RefPtrISD_NS_12RawPtrTraitsISD_EENS_21DefaultRefDerefTraitsISD_EEEEEENSC_INS2_15RemoteBindGroupENSE_ISL_NSF_ISL_EENSH_ISL_EEEEEENSC_INS2_21RemoteBindGroupLayoutENSE_ISQ_NSF_ISQ_EENSH_ISQ_EEEEEENSC_INS2_12RemoteBufferENSE_ISV_NSF_ISV_EENSH_ISV_EEEEEENSC_INS2_19RemoteCommandBufferENSE_IS10_NSF_IS10_EENSH_IS10_EEEEEENSC_INS2_20RemoteCommandEncoderENSE_IS15_NSF_IS15_EENSH_IS15_EEEEEENSC_INS2_27RemoteCompositorIntegrationENSE_IS1A_NSF_IS1A_EENSH_IS1A_EEEEEENSC_INS2_24RemoteComputePassEncoderENSE_IS1F_NSF_IS1F_EENSH_IS1F_EEEEEENSC_INS2_21RemoteComputePipelineENSE_IS1K_NSF_IS1K_EENSH_IS1K_EEEEEENSC_INS2_12RemoteDeviceENSE_IS1P_NSF_IS1P_EENSH_IS1P_EEEEEENSC_INS2_21RemoteExternalTextureENSE_IS1U_NSF_IS1U_EENSH_IS1U_EEEEEENSC_INS2_20RemotePipelineLayoutENSE_IS1Z_NSF_IS1Z_EENSH_IS1Z_EEEEEENSC_INS2_25RemotePresentationContextENSE_IS24_NSF_IS24_EENSH_IS24_EEEEEENSC_INS2_14RemoteQuerySetENSE_IS29_NSF_IS29_EENSH_IS29_EEEEEENSC_INS2_11RemoteQueueENSE_IS2E_NSF_IS2E_EENSH_IS2E_EEEEEENSC_INS2_25RemoteRenderBundleEncoderENSE_IS2J_NSF_IS2J_EENSH_IS2J_EEEEEENSC_INS2_18RemoteRenderBundleENSE_IS2O_NSF_IS2O_EENSH_IS2O_EEEEEENSC_INS2_23RemoteRenderPassEncoderENSE_IS2T_NSF_IS2T_EENSH_IS2T_EEEEEENSC_INS2_20RemoteRenderPipelineENSE_IS2Y_NSF_IS2Y_EENSH_IS2Y_EEEEEENSC_INS2_13RemoteSamplerENSE_IS33_NSF_IS33_EENSH_IS33_EEEEEENSC_INS2_18RemoteShaderModuleENSE_IS38_NSF_IS38_EENSH_IS38_EEEEEENSC_INS2_13RemoteTextureENSE_IS3D_NSF_IS3D_EENSH_IS3D_EEEEEENSC_INS2_17RemoteTextureViewENSE_IS3I_NSF_IS3I_EENSH_IS3I_EEEEEENSC_INS2_15RemoteXRBindingENSE_IS3N_NSF_IS3N_EENSH_IS3N_EEEEEENSC_INS2_16RemoteXRSubImageENSE_IS3S_NSF_IS3S_EENSH_IS3S_EEEEEENSC_INS2_23RemoteXRProjectionLayerENSE_IS3X_NSF_IS3X_EENSH_IS3X_EEEEEENSC_INS2_12RemoteXRViewENSE_IS42_NSF_IS42_EENSH_IS42_EEEEEEEEENS_11DefaultHashIS6_EENS_10HashTraitsIS6_EENS4A_IS47_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1ENS_10FastMallocEE3addIS47_EENS_18HashTableAddResultINS_17HashTableIteratorINS_9HashTableIS6_NS_12KeyValuePairIS6_S47_EENS_24KeyValuePairKeyExtractorIS4M_EES49_NS4G_18KeyValuePairTraitsES4B_S4F_EES6_S4M_S4O_S49_S4P_S4B_EEEERKS6_OT_((a1 + 24), &v8, &v5, v7);
  if (v6 != 255)
  {
    _ZN5mpark6detail10visitation3alt9visit_altINS0_4dtorEJRNS0_10destructorINS0_6traitsIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueIN6WebKit13RemoteAdapterEN3WTF6RefPtrISC_NSD_12RawPtrTraitsISC_EENSD_21DefaultRefDerefTraitsISC_EEEEEENSA_INSB_15RemoteBindGroupENSE_ISL_NSF_ISL_EENSH_ISL_EEEEEENSA_INSB_21RemoteBindGroupLayoutENSE_ISQ_NSF_ISQ_EENSH_ISQ_EEEEEENSA_INSB_12RemoteBufferENSE_ISV_NSF_ISV_EENSH_ISV_EEEEEENSA_INSB_19RemoteCommandBufferENSE_IS10_NSF_IS10_EENSH_IS10_EEEEEENSA_INSB_20RemoteCommandEncoderENSE_IS15_NSF_IS15_EENSH_IS15_EEEEEENSA_INSB_27RemoteCompositorIntegrationENSE_IS1A_NSF_IS1A_EENSH_IS1A_EEEEEENSA_INSB_24RemoteComputePassEncoderENSE_IS1F_NSF_IS1F_EENSH_IS1F_EEEEEENSA_INSB_21RemoteComputePipelineENSE_IS1K_NSF_IS1K_EENSH_IS1K_EEEEEENSA_INSB_12RemoteDeviceENSE_IS1P_NSF_IS1P_EENSH_IS1P_EEEEEENSA_INSB_21RemoteExternalTextureENSE_IS1U_NSF_IS1U_EENSH_IS1U_EEEEEENSA_INSB_20RemotePipelineLayoutENSE_IS1Z_NSF_IS1Z_EENSH_IS1Z_EEEEEENSA_INSB_25RemotePresentationContextENSE_IS24_NSF_IS24_EENSH_IS24_EEEEEENSA_INSB_14RemoteQuerySetENSE_IS29_NSF_IS29_EENSH_IS29_EEEEEENSA_INSB_11RemoteQueueENSE_IS2E_NSF_IS2E_EENSH_IS2E_EEEEEENSA_INSB_25RemoteRenderBundleEncoderENSE_IS2J_NSF_IS2J_EENSH_IS2J_EEEEEENSA_INSB_18RemoteRenderBundleENSE_IS2O_NSF_IS2O_EENSH_IS2O_EEEEEENSA_INSB_23RemoteRenderPassEncoderENSE_IS2T_NSF_IS2T_EENSH_IS2T_EEEEEENSA_INSB_20RemoteRenderPipelineENSE_IS2Y_NSF_IS2Y_EENSH_IS2Y_EEEEEENSA_INSB_13RemoteSamplerENSE_IS33_NSF_IS33_EENSH_IS33_EEEEEENSA_INSB_18RemoteShaderModuleENSE_IS38_NSF_IS38_EENSH_IS38_EEEEEENSA_INSB_13RemoteTextureENSE_IS3D_NSF_IS3D_EENSH_IS3D_EEEEEENSA_INSB_17RemoteTextureViewENSE_IS3I_NSF_IS3I_EENSH_IS3I_EEEEEENSA_INSB_15RemoteXRBindingENSE_IS3N_NSF_IS3N_EENSH_IS3N_EEEEEENSA_INSB_16RemoteXRSubImageENSE_IS3S_NSF_IS3S_EENSH_IS3S_EEEEEENSA_INSB_23RemoteXRProjectionLayerENSE_IS3X_NSF_IS3X_EENSH_IS3X_EEEEEENSA_INSB_12RemoteXRViewENSE_IS42_NSF_IS42_EENSH_IS42_EEEEEEEEELNS0_5TraitE1EEEEEEDcOT_DpOT0_(&v9, &v5);
  }

  v6 = -1;
  return IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteDevice,WTF::RefPtr<WebKit::RemoteDevice,WTF::RawPtrTraits<WebKit::RemoteDevice>,WTF::DefaultRefDerefTraits<WebKit::RemoteDevice>>>::~ScopedActiveMessageReceiveQueue(&v4);
}

WebKit::RemoteExternalTexture **WebKit::WebGPU::ObjectHeap::addObject(uint64_t a1, void *a2, atomic_uint *a3)
{
  v8 = a2;
  atomic_fetch_add(a3 + 2, 1u);
  v4 = 0;
  v5 = a3;
  v6 = 11;
  _ZN3WTF7HashMapINS_23ObjectIdentifierGenericIN6WebKit20WebGPUIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEN5mpark7variantIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueINS2_13RemoteAdapterENS_6RefPtrISD_NS_12RawPtrTraitsISD_EENS_21DefaultRefDerefTraitsISD_EEEEEENSC_INS2_15RemoteBindGroupENSE_ISL_NSF_ISL_EENSH_ISL_EEEEEENSC_INS2_21RemoteBindGroupLayoutENSE_ISQ_NSF_ISQ_EENSH_ISQ_EEEEEENSC_INS2_12RemoteBufferENSE_ISV_NSF_ISV_EENSH_ISV_EEEEEENSC_INS2_19RemoteCommandBufferENSE_IS10_NSF_IS10_EENSH_IS10_EEEEEENSC_INS2_20RemoteCommandEncoderENSE_IS15_NSF_IS15_EENSH_IS15_EEEEEENSC_INS2_27RemoteCompositorIntegrationENSE_IS1A_NSF_IS1A_EENSH_IS1A_EEEEEENSC_INS2_24RemoteComputePassEncoderENSE_IS1F_NSF_IS1F_EENSH_IS1F_EEEEEENSC_INS2_21RemoteComputePipelineENSE_IS1K_NSF_IS1K_EENSH_IS1K_EEEEEENSC_INS2_12RemoteDeviceENSE_IS1P_NSF_IS1P_EENSH_IS1P_EEEEEENSC_INS2_21RemoteExternalTextureENSE_IS1U_NSF_IS1U_EENSH_IS1U_EEEEEENSC_INS2_20RemotePipelineLayoutENSE_IS1Z_NSF_IS1Z_EENSH_IS1Z_EEEEEENSC_INS2_25RemotePresentationContextENSE_IS24_NSF_IS24_EENSH_IS24_EEEEEENSC_INS2_14RemoteQuerySetENSE_IS29_NSF_IS29_EENSH_IS29_EEEEEENSC_INS2_11RemoteQueueENSE_IS2E_NSF_IS2E_EENSH_IS2E_EEEEEENSC_INS2_25RemoteRenderBundleEncoderENSE_IS2J_NSF_IS2J_EENSH_IS2J_EEEEEENSC_INS2_18RemoteRenderBundleENSE_IS2O_NSF_IS2O_EENSH_IS2O_EEEEEENSC_INS2_23RemoteRenderPassEncoderENSE_IS2T_NSF_IS2T_EENSH_IS2T_EEEEEENSC_INS2_20RemoteRenderPipelineENSE_IS2Y_NSF_IS2Y_EENSH_IS2Y_EEEEEENSC_INS2_13RemoteSamplerENSE_IS33_NSF_IS33_EENSH_IS33_EEEEEENSC_INS2_18RemoteShaderModuleENSE_IS38_NSF_IS38_EENSH_IS38_EEEEEENSC_INS2_13RemoteTextureENSE_IS3D_NSF_IS3D_EENSH_IS3D_EEEEEENSC_INS2_17RemoteTextureViewENSE_IS3I_NSF_IS3I_EENSH_IS3I_EEEEEENSC_INS2_15RemoteXRBindingENSE_IS3N_NSF_IS3N_EENSH_IS3N_EEEEEENSC_INS2_16RemoteXRSubImageENSE_IS3S_NSF_IS3S_EENSH_IS3S_EEEEEENSC_INS2_23RemoteXRProjectionLayerENSE_IS3X_NSF_IS3X_EENSH_IS3X_EEEEEENSC_INS2_12RemoteXRViewENSE_IS42_NSF_IS42_EENSH_IS42_EEEEEEEEENS_11DefaultHashIS6_EENS_10HashTraitsIS6_EENS4A_IS47_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1ENS_10FastMallocEE3addIS47_EENS_18HashTableAddResultINS_17HashTableIteratorINS_9HashTableIS6_NS_12KeyValuePairIS6_S47_EENS_24KeyValuePairKeyExtractorIS4M_EES49_NS4G_18KeyValuePairTraitsES4B_S4F_EES6_S4M_S4O_S49_S4P_S4B_EEEERKS6_OT_((a1 + 24), &v8, &v5, v7);
  if (v6 != 255)
  {
    _ZN5mpark6detail10visitation3alt9visit_altINS0_4dtorEJRNS0_10destructorINS0_6traitsIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueIN6WebKit13RemoteAdapterEN3WTF6RefPtrISC_NSD_12RawPtrTraitsISC_EENSD_21DefaultRefDerefTraitsISC_EEEEEENSA_INSB_15RemoteBindGroupENSE_ISL_NSF_ISL_EENSH_ISL_EEEEEENSA_INSB_21RemoteBindGroupLayoutENSE_ISQ_NSF_ISQ_EENSH_ISQ_EEEEEENSA_INSB_12RemoteBufferENSE_ISV_NSF_ISV_EENSH_ISV_EEEEEENSA_INSB_19RemoteCommandBufferENSE_IS10_NSF_IS10_EENSH_IS10_EEEEEENSA_INSB_20RemoteCommandEncoderENSE_IS15_NSF_IS15_EENSH_IS15_EEEEEENSA_INSB_27RemoteCompositorIntegrationENSE_IS1A_NSF_IS1A_EENSH_IS1A_EEEEEENSA_INSB_24RemoteComputePassEncoderENSE_IS1F_NSF_IS1F_EENSH_IS1F_EEEEEENSA_INSB_21RemoteComputePipelineENSE_IS1K_NSF_IS1K_EENSH_IS1K_EEEEEENSA_INSB_12RemoteDeviceENSE_IS1P_NSF_IS1P_EENSH_IS1P_EEEEEENSA_INSB_21RemoteExternalTextureENSE_IS1U_NSF_IS1U_EENSH_IS1U_EEEEEENSA_INSB_20RemotePipelineLayoutENSE_IS1Z_NSF_IS1Z_EENSH_IS1Z_EEEEEENSA_INSB_25RemotePresentationContextENSE_IS24_NSF_IS24_EENSH_IS24_EEEEEENSA_INSB_14RemoteQuerySetENSE_IS29_NSF_IS29_EENSH_IS29_EEEEEENSA_INSB_11RemoteQueueENSE_IS2E_NSF_IS2E_EENSH_IS2E_EEEEEENSA_INSB_25RemoteRenderBundleEncoderENSE_IS2J_NSF_IS2J_EENSH_IS2J_EEEEEENSA_INSB_18RemoteRenderBundleENSE_IS2O_NSF_IS2O_EENSH_IS2O_EEEEEENSA_INSB_23RemoteRenderPassEncoderENSE_IS2T_NSF_IS2T_EENSH_IS2T_EEEEEENSA_INSB_20RemoteRenderPipelineENSE_IS2Y_NSF_IS2Y_EENSH_IS2Y_EEEEEENSA_INSB_13RemoteSamplerENSE_IS33_NSF_IS33_EENSH_IS33_EEEEEENSA_INSB_18RemoteShaderModuleENSE_IS38_NSF_IS38_EENSH_IS38_EEEEEENSA_INSB_13RemoteTextureENSE_IS3D_NSF_IS3D_EENSH_IS3D_EEEEEENSA_INSB_17RemoteTextureViewENSE_IS3I_NSF_IS3I_EENSH_IS3I_EEEEEENSA_INSB_15RemoteXRBindingENSE_IS3N_NSF_IS3N_EENSH_IS3N_EEEEEENSA_INSB_16RemoteXRSubImageENSE_IS3S_NSF_IS3S_EENSH_IS3S_EEEEEENSA_INSB_23RemoteXRProjectionLayerENSE_IS3X_NSF_IS3X_EENSH_IS3X_EEEEEENSA_INSB_12RemoteXRViewENSE_IS42_NSF_IS42_EENSH_IS42_EEEEEEEEELNS0_5TraitE1EEEEEEDcOT_DpOT0_(&v9, &v5);
  }

  v6 = -1;
  return IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteExternalTexture,WTF::RefPtr<WebKit::RemoteExternalTexture,WTF::RawPtrTraits<WebKit::RemoteExternalTexture>,WTF::DefaultRefDerefTraits<WebKit::RemoteExternalTexture>>>::~ScopedActiveMessageReceiveQueue(&v4);
}

WebKit::RemotePipelineLayout **WebKit::WebGPU::ObjectHeap::addObject(uint64_t a1, void *a2, atomic_uint *a3)
{
  v8 = a2;
  atomic_fetch_add(a3 + 2, 1u);
  v4 = 0;
  v5 = a3;
  v6 = 12;
  _ZN3WTF7HashMapINS_23ObjectIdentifierGenericIN6WebKit20WebGPUIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEN5mpark7variantIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueINS2_13RemoteAdapterENS_6RefPtrISD_NS_12RawPtrTraitsISD_EENS_21DefaultRefDerefTraitsISD_EEEEEENSC_INS2_15RemoteBindGroupENSE_ISL_NSF_ISL_EENSH_ISL_EEEEEENSC_INS2_21RemoteBindGroupLayoutENSE_ISQ_NSF_ISQ_EENSH_ISQ_EEEEEENSC_INS2_12RemoteBufferENSE_ISV_NSF_ISV_EENSH_ISV_EEEEEENSC_INS2_19RemoteCommandBufferENSE_IS10_NSF_IS10_EENSH_IS10_EEEEEENSC_INS2_20RemoteCommandEncoderENSE_IS15_NSF_IS15_EENSH_IS15_EEEEEENSC_INS2_27RemoteCompositorIntegrationENSE_IS1A_NSF_IS1A_EENSH_IS1A_EEEEEENSC_INS2_24RemoteComputePassEncoderENSE_IS1F_NSF_IS1F_EENSH_IS1F_EEEEEENSC_INS2_21RemoteComputePipelineENSE_IS1K_NSF_IS1K_EENSH_IS1K_EEEEEENSC_INS2_12RemoteDeviceENSE_IS1P_NSF_IS1P_EENSH_IS1P_EEEEEENSC_INS2_21RemoteExternalTextureENSE_IS1U_NSF_IS1U_EENSH_IS1U_EEEEEENSC_INS2_20RemotePipelineLayoutENSE_IS1Z_NSF_IS1Z_EENSH_IS1Z_EEEEEENSC_INS2_25RemotePresentationContextENSE_IS24_NSF_IS24_EENSH_IS24_EEEEEENSC_INS2_14RemoteQuerySetENSE_IS29_NSF_IS29_EENSH_IS29_EEEEEENSC_INS2_11RemoteQueueENSE_IS2E_NSF_IS2E_EENSH_IS2E_EEEEEENSC_INS2_25RemoteRenderBundleEncoderENSE_IS2J_NSF_IS2J_EENSH_IS2J_EEEEEENSC_INS2_18RemoteRenderBundleENSE_IS2O_NSF_IS2O_EENSH_IS2O_EEEEEENSC_INS2_23RemoteRenderPassEncoderENSE_IS2T_NSF_IS2T_EENSH_IS2T_EEEEEENSC_INS2_20RemoteRenderPipelineENSE_IS2Y_NSF_IS2Y_EENSH_IS2Y_EEEEEENSC_INS2_13RemoteSamplerENSE_IS33_NSF_IS33_EENSH_IS33_EEEEEENSC_INS2_18RemoteShaderModuleENSE_IS38_NSF_IS38_EENSH_IS38_EEEEEENSC_INS2_13RemoteTextureENSE_IS3D_NSF_IS3D_EENSH_IS3D_EEEEEENSC_INS2_17RemoteTextureViewENSE_IS3I_NSF_IS3I_EENSH_IS3I_EEEEEENSC_INS2_15RemoteXRBindingENSE_IS3N_NSF_IS3N_EENSH_IS3N_EEEEEENSC_INS2_16RemoteXRSubImageENSE_IS3S_NSF_IS3S_EENSH_IS3S_EEEEEENSC_INS2_23RemoteXRProjectionLayerENSE_IS3X_NSF_IS3X_EENSH_IS3X_EEEEEENSC_INS2_12RemoteXRViewENSE_IS42_NSF_IS42_EENSH_IS42_EEEEEEEEENS_11DefaultHashIS6_EENS_10HashTraitsIS6_EENS4A_IS47_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1ENS_10FastMallocEE3addIS47_EENS_18HashTableAddResultINS_17HashTableIteratorINS_9HashTableIS6_NS_12KeyValuePairIS6_S47_EENS_24KeyValuePairKeyExtractorIS4M_EES49_NS4G_18KeyValuePairTraitsES4B_S4F_EES6_S4M_S4O_S49_S4P_S4B_EEEERKS6_OT_((a1 + 24), &v8, &v5, v7);
  if (v6 != 255)
  {
    _ZN5mpark6detail10visitation3alt9visit_altINS0_4dtorEJRNS0_10destructorINS0_6traitsIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueIN6WebKit13RemoteAdapterEN3WTF6RefPtrISC_NSD_12RawPtrTraitsISC_EENSD_21DefaultRefDerefTraitsISC_EEEEEENSA_INSB_15RemoteBindGroupENSE_ISL_NSF_ISL_EENSH_ISL_EEEEEENSA_INSB_21RemoteBindGroupLayoutENSE_ISQ_NSF_ISQ_EENSH_ISQ_EEEEEENSA_INSB_12RemoteBufferENSE_ISV_NSF_ISV_EENSH_ISV_EEEEEENSA_INSB_19RemoteCommandBufferENSE_IS10_NSF_IS10_EENSH_IS10_EEEEEENSA_INSB_20RemoteCommandEncoderENSE_IS15_NSF_IS15_EENSH_IS15_EEEEEENSA_INSB_27RemoteCompositorIntegrationENSE_IS1A_NSF_IS1A_EENSH_IS1A_EEEEEENSA_INSB_24RemoteComputePassEncoderENSE_IS1F_NSF_IS1F_EENSH_IS1F_EEEEEENSA_INSB_21RemoteComputePipelineENSE_IS1K_NSF_IS1K_EENSH_IS1K_EEEEEENSA_INSB_12RemoteDeviceENSE_IS1P_NSF_IS1P_EENSH_IS1P_EEEEEENSA_INSB_21RemoteExternalTextureENSE_IS1U_NSF_IS1U_EENSH_IS1U_EEEEEENSA_INSB_20RemotePipelineLayoutENSE_IS1Z_NSF_IS1Z_EENSH_IS1Z_EEEEEENSA_INSB_25RemotePresentationContextENSE_IS24_NSF_IS24_EENSH_IS24_EEEEEENSA_INSB_14RemoteQuerySetENSE_IS29_NSF_IS29_EENSH_IS29_EEEEEENSA_INSB_11RemoteQueueENSE_IS2E_NSF_IS2E_EENSH_IS2E_EEEEEENSA_INSB_25RemoteRenderBundleEncoderENSE_IS2J_NSF_IS2J_EENSH_IS2J_EEEEEENSA_INSB_18RemoteRenderBundleENSE_IS2O_NSF_IS2O_EENSH_IS2O_EEEEEENSA_INSB_23RemoteRenderPassEncoderENSE_IS2T_NSF_IS2T_EENSH_IS2T_EEEEEENSA_INSB_20RemoteRenderPipelineENSE_IS2Y_NSF_IS2Y_EENSH_IS2Y_EEEEEENSA_INSB_13RemoteSamplerENSE_IS33_NSF_IS33_EENSH_IS33_EEEEEENSA_INSB_18RemoteShaderModuleENSE_IS38_NSF_IS38_EENSH_IS38_EEEEEENSA_INSB_13RemoteTextureENSE_IS3D_NSF_IS3D_EENSH_IS3D_EEEEEENSA_INSB_17RemoteTextureViewENSE_IS3I_NSF_IS3I_EENSH_IS3I_EEEEEENSA_INSB_15RemoteXRBindingENSE_IS3N_NSF_IS3N_EENSH_IS3N_EEEEEENSA_INSB_16RemoteXRSubImageENSE_IS3S_NSF_IS3S_EENSH_IS3S_EEEEEENSA_INSB_23RemoteXRProjectionLayerENSE_IS3X_NSF_IS3X_EENSH_IS3X_EEEEEENSA_INSB_12RemoteXRViewENSE_IS42_NSF_IS42_EENSH_IS42_EEEEEEEEELNS0_5TraitE1EEEEEEDcOT_DpOT0_(&v9, &v5);
  }

  v6 = -1;
  return IPC::ScopedActiveMessageReceiveQueue<WebKit::RemotePipelineLayout,WTF::RefPtr<WebKit::RemotePipelineLayout,WTF::RawPtrTraits<WebKit::RemotePipelineLayout>,WTF::DefaultRefDerefTraits<WebKit::RemotePipelineLayout>>>::~ScopedActiveMessageReceiveQueue(&v4);
}

WebKit::RemotePresentationContext **WebKit::WebGPU::ObjectHeap::addObject(uint64_t a1, void *a2, atomic_uint *a3)
{
  v8 = a2;
  atomic_fetch_add(a3 + 2, 1u);
  v4 = 0;
  v5 = a3;
  v6 = 13;
  _ZN3WTF7HashMapINS_23ObjectIdentifierGenericIN6WebKit20WebGPUIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEN5mpark7variantIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueINS2_13RemoteAdapterENS_6RefPtrISD_NS_12RawPtrTraitsISD_EENS_21DefaultRefDerefTraitsISD_EEEEEENSC_INS2_15RemoteBindGroupENSE_ISL_NSF_ISL_EENSH_ISL_EEEEEENSC_INS2_21RemoteBindGroupLayoutENSE_ISQ_NSF_ISQ_EENSH_ISQ_EEEEEENSC_INS2_12RemoteBufferENSE_ISV_NSF_ISV_EENSH_ISV_EEEEEENSC_INS2_19RemoteCommandBufferENSE_IS10_NSF_IS10_EENSH_IS10_EEEEEENSC_INS2_20RemoteCommandEncoderENSE_IS15_NSF_IS15_EENSH_IS15_EEEEEENSC_INS2_27RemoteCompositorIntegrationENSE_IS1A_NSF_IS1A_EENSH_IS1A_EEEEEENSC_INS2_24RemoteComputePassEncoderENSE_IS1F_NSF_IS1F_EENSH_IS1F_EEEEEENSC_INS2_21RemoteComputePipelineENSE_IS1K_NSF_IS1K_EENSH_IS1K_EEEEEENSC_INS2_12RemoteDeviceENSE_IS1P_NSF_IS1P_EENSH_IS1P_EEEEEENSC_INS2_21RemoteExternalTextureENSE_IS1U_NSF_IS1U_EENSH_IS1U_EEEEEENSC_INS2_20RemotePipelineLayoutENSE_IS1Z_NSF_IS1Z_EENSH_IS1Z_EEEEEENSC_INS2_25RemotePresentationContextENSE_IS24_NSF_IS24_EENSH_IS24_EEEEEENSC_INS2_14RemoteQuerySetENSE_IS29_NSF_IS29_EENSH_IS29_EEEEEENSC_INS2_11RemoteQueueENSE_IS2E_NSF_IS2E_EENSH_IS2E_EEEEEENSC_INS2_25RemoteRenderBundleEncoderENSE_IS2J_NSF_IS2J_EENSH_IS2J_EEEEEENSC_INS2_18RemoteRenderBundleENSE_IS2O_NSF_IS2O_EENSH_IS2O_EEEEEENSC_INS2_23RemoteRenderPassEncoderENSE_IS2T_NSF_IS2T_EENSH_IS2T_EEEEEENSC_INS2_20RemoteRenderPipelineENSE_IS2Y_NSF_IS2Y_EENSH_IS2Y_EEEEEENSC_INS2_13RemoteSamplerENSE_IS33_NSF_IS33_EENSH_IS33_EEEEEENSC_INS2_18RemoteShaderModuleENSE_IS38_NSF_IS38_EENSH_IS38_EEEEEENSC_INS2_13RemoteTextureENSE_IS3D_NSF_IS3D_EENSH_IS3D_EEEEEENSC_INS2_17RemoteTextureViewENSE_IS3I_NSF_IS3I_EENSH_IS3I_EEEEEENSC_INS2_15RemoteXRBindingENSE_IS3N_NSF_IS3N_EENSH_IS3N_EEEEEENSC_INS2_16RemoteXRSubImageENSE_IS3S_NSF_IS3S_EENSH_IS3S_EEEEEENSC_INS2_23RemoteXRProjectionLayerENSE_IS3X_NSF_IS3X_EENSH_IS3X_EEEEEENSC_INS2_12RemoteXRViewENSE_IS42_NSF_IS42_EENSH_IS42_EEEEEEEEENS_11DefaultHashIS6_EENS_10HashTraitsIS6_EENS4A_IS47_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1ENS_10FastMallocEE3addIS47_EENS_18HashTableAddResultINS_17HashTableIteratorINS_9HashTableIS6_NS_12KeyValuePairIS6_S47_EENS_24KeyValuePairKeyExtractorIS4M_EES49_NS4G_18KeyValuePairTraitsES4B_S4F_EES6_S4M_S4O_S49_S4P_S4B_EEEERKS6_OT_((a1 + 24), &v8, &v5, v7);
  if (v6 != 255)
  {
    _ZN5mpark6detail10visitation3alt9visit_altINS0_4dtorEJRNS0_10destructorINS0_6traitsIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueIN6WebKit13RemoteAdapterEN3WTF6RefPtrISC_NSD_12RawPtrTraitsISC_EENSD_21DefaultRefDerefTraitsISC_EEEEEENSA_INSB_15RemoteBindGroupENSE_ISL_NSF_ISL_EENSH_ISL_EEEEEENSA_INSB_21RemoteBindGroupLayoutENSE_ISQ_NSF_ISQ_EENSH_ISQ_EEEEEENSA_INSB_12RemoteBufferENSE_ISV_NSF_ISV_EENSH_ISV_EEEEEENSA_INSB_19RemoteCommandBufferENSE_IS10_NSF_IS10_EENSH_IS10_EEEEEENSA_INSB_20RemoteCommandEncoderENSE_IS15_NSF_IS15_EENSH_IS15_EEEEEENSA_INSB_27RemoteCompositorIntegrationENSE_IS1A_NSF_IS1A_EENSH_IS1A_EEEEEENSA_INSB_24RemoteComputePassEncoderENSE_IS1F_NSF_IS1F_EENSH_IS1F_EEEEEENSA_INSB_21RemoteComputePipelineENSE_IS1K_NSF_IS1K_EENSH_IS1K_EEEEEENSA_INSB_12RemoteDeviceENSE_IS1P_NSF_IS1P_EENSH_IS1P_EEEEEENSA_INSB_21RemoteExternalTextureENSE_IS1U_NSF_IS1U_EENSH_IS1U_EEEEEENSA_INSB_20RemotePipelineLayoutENSE_IS1Z_NSF_IS1Z_EENSH_IS1Z_EEEEEENSA_INSB_25RemotePresentationContextENSE_IS24_NSF_IS24_EENSH_IS24_EEEEEENSA_INSB_14RemoteQuerySetENSE_IS29_NSF_IS29_EENSH_IS29_EEEEEENSA_INSB_11RemoteQueueENSE_IS2E_NSF_IS2E_EENSH_IS2E_EEEEEENSA_INSB_25RemoteRenderBundleEncoderENSE_IS2J_NSF_IS2J_EENSH_IS2J_EEEEEENSA_INSB_18RemoteRenderBundleENSE_IS2O_NSF_IS2O_EENSH_IS2O_EEEEEENSA_INSB_23RemoteRenderPassEncoderENSE_IS2T_NSF_IS2T_EENSH_IS2T_EEEEEENSA_INSB_20RemoteRenderPipelineENSE_IS2Y_NSF_IS2Y_EENSH_IS2Y_EEEEEENSA_INSB_13RemoteSamplerENSE_IS33_NSF_IS33_EENSH_IS33_EEEEEENSA_INSB_18RemoteShaderModuleENSE_IS38_NSF_IS38_EENSH_IS38_EEEEEENSA_INSB_13RemoteTextureENSE_IS3D_NSF_IS3D_EENSH_IS3D_EEEEEENSA_INSB_17RemoteTextureViewENSE_IS3I_NSF_IS3I_EENSH_IS3I_EEEEEENSA_INSB_15RemoteXRBindingENSE_IS3N_NSF_IS3N_EENSH_IS3N_EEEEEENSA_INSB_16RemoteXRSubImageENSE_IS3S_NSF_IS3S_EENSH_IS3S_EEEEEENSA_INSB_23RemoteXRProjectionLayerENSE_IS3X_NSF_IS3X_EENSH_IS3X_EEEEEENSA_INSB_12RemoteXRViewENSE_IS42_NSF_IS42_EENSH_IS42_EEEEEEEEELNS0_5TraitE1EEEEEEDcOT_DpOT0_(&v9, &v5);
  }

  v6 = -1;
  return IPC::ScopedActiveMessageReceiveQueue<WebKit::RemotePresentationContext,WTF::RefPtr<WebKit::RemotePresentationContext,WTF::RawPtrTraits<WebKit::RemotePresentationContext>,WTF::DefaultRefDerefTraits<WebKit::RemotePresentationContext>>>::~ScopedActiveMessageReceiveQueue(&v4);
}

WebKit::RemoteQuerySet **WebKit::WebGPU::ObjectHeap::addObject(uint64_t a1, void *a2, atomic_uint *a3)
{
  v8 = a2;
  atomic_fetch_add(a3 + 2, 1u);
  v4 = 0;
  v5 = a3;
  v6 = 14;
  _ZN3WTF7HashMapINS_23ObjectIdentifierGenericIN6WebKit20WebGPUIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEN5mpark7variantIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueINS2_13RemoteAdapterENS_6RefPtrISD_NS_12RawPtrTraitsISD_EENS_21DefaultRefDerefTraitsISD_EEEEEENSC_INS2_15RemoteBindGroupENSE_ISL_NSF_ISL_EENSH_ISL_EEEEEENSC_INS2_21RemoteBindGroupLayoutENSE_ISQ_NSF_ISQ_EENSH_ISQ_EEEEEENSC_INS2_12RemoteBufferENSE_ISV_NSF_ISV_EENSH_ISV_EEEEEENSC_INS2_19RemoteCommandBufferENSE_IS10_NSF_IS10_EENSH_IS10_EEEEEENSC_INS2_20RemoteCommandEncoderENSE_IS15_NSF_IS15_EENSH_IS15_EEEEEENSC_INS2_27RemoteCompositorIntegrationENSE_IS1A_NSF_IS1A_EENSH_IS1A_EEEEEENSC_INS2_24RemoteComputePassEncoderENSE_IS1F_NSF_IS1F_EENSH_IS1F_EEEEEENSC_INS2_21RemoteComputePipelineENSE_IS1K_NSF_IS1K_EENSH_IS1K_EEEEEENSC_INS2_12RemoteDeviceENSE_IS1P_NSF_IS1P_EENSH_IS1P_EEEEEENSC_INS2_21RemoteExternalTextureENSE_IS1U_NSF_IS1U_EENSH_IS1U_EEEEEENSC_INS2_20RemotePipelineLayoutENSE_IS1Z_NSF_IS1Z_EENSH_IS1Z_EEEEEENSC_INS2_25RemotePresentationContextENSE_IS24_NSF_IS24_EENSH_IS24_EEEEEENSC_INS2_14RemoteQuerySetENSE_IS29_NSF_IS29_EENSH_IS29_EEEEEENSC_INS2_11RemoteQueueENSE_IS2E_NSF_IS2E_EENSH_IS2E_EEEEEENSC_INS2_25RemoteRenderBundleEncoderENSE_IS2J_NSF_IS2J_EENSH_IS2J_EEEEEENSC_INS2_18RemoteRenderBundleENSE_IS2O_NSF_IS2O_EENSH_IS2O_EEEEEENSC_INS2_23RemoteRenderPassEncoderENSE_IS2T_NSF_IS2T_EENSH_IS2T_EEEEEENSC_INS2_20RemoteRenderPipelineENSE_IS2Y_NSF_IS2Y_EENSH_IS2Y_EEEEEENSC_INS2_13RemoteSamplerENSE_IS33_NSF_IS33_EENSH_IS33_EEEEEENSC_INS2_18RemoteShaderModuleENSE_IS38_NSF_IS38_EENSH_IS38_EEEEEENSC_INS2_13RemoteTextureENSE_IS3D_NSF_IS3D_EENSH_IS3D_EEEEEENSC_INS2_17RemoteTextureViewENSE_IS3I_NSF_IS3I_EENSH_IS3I_EEEEEENSC_INS2_15RemoteXRBindingENSE_IS3N_NSF_IS3N_EENSH_IS3N_EEEEEENSC_INS2_16RemoteXRSubImageENSE_IS3S_NSF_IS3S_EENSH_IS3S_EEEEEENSC_INS2_23RemoteXRProjectionLayerENSE_IS3X_NSF_IS3X_EENSH_IS3X_EEEEEENSC_INS2_12RemoteXRViewENSE_IS42_NSF_IS42_EENSH_IS42_EEEEEEEEENS_11DefaultHashIS6_EENS_10HashTraitsIS6_EENS4A_IS47_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1ENS_10FastMallocEE3addIS47_EENS_18HashTableAddResultINS_17HashTableIteratorINS_9HashTableIS6_NS_12KeyValuePairIS6_S47_EENS_24KeyValuePairKeyExtractorIS4M_EES49_NS4G_18KeyValuePairTraitsES4B_S4F_EES6_S4M_S4O_S49_S4P_S4B_EEEERKS6_OT_((a1 + 24), &v8, &v5, v7);
  if (v6 != 255)
  {
    _ZN5mpark6detail10visitation3alt9visit_altINS0_4dtorEJRNS0_10destructorINS0_6traitsIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueIN6WebKit13RemoteAdapterEN3WTF6RefPtrISC_NSD_12RawPtrTraitsISC_EENSD_21DefaultRefDerefTraitsISC_EEEEEENSA_INSB_15RemoteBindGroupENSE_ISL_NSF_ISL_EENSH_ISL_EEEEEENSA_INSB_21RemoteBindGroupLayoutENSE_ISQ_NSF_ISQ_EENSH_ISQ_EEEEEENSA_INSB_12RemoteBufferENSE_ISV_NSF_ISV_EENSH_ISV_EEEEEENSA_INSB_19RemoteCommandBufferENSE_IS10_NSF_IS10_EENSH_IS10_EEEEEENSA_INSB_20RemoteCommandEncoderENSE_IS15_NSF_IS15_EENSH_IS15_EEEEEENSA_INSB_27RemoteCompositorIntegrationENSE_IS1A_NSF_IS1A_EENSH_IS1A_EEEEEENSA_INSB_24RemoteComputePassEncoderENSE_IS1F_NSF_IS1F_EENSH_IS1F_EEEEEENSA_INSB_21RemoteComputePipelineENSE_IS1K_NSF_IS1K_EENSH_IS1K_EEEEEENSA_INSB_12RemoteDeviceENSE_IS1P_NSF_IS1P_EENSH_IS1P_EEEEEENSA_INSB_21RemoteExternalTextureENSE_IS1U_NSF_IS1U_EENSH_IS1U_EEEEEENSA_INSB_20RemotePipelineLayoutENSE_IS1Z_NSF_IS1Z_EENSH_IS1Z_EEEEEENSA_INSB_25RemotePresentationContextENSE_IS24_NSF_IS24_EENSH_IS24_EEEEEENSA_INSB_14RemoteQuerySetENSE_IS29_NSF_IS29_EENSH_IS29_EEEEEENSA_INSB_11RemoteQueueENSE_IS2E_NSF_IS2E_EENSH_IS2E_EEEEEENSA_INSB_25RemoteRenderBundleEncoderENSE_IS2J_NSF_IS2J_EENSH_IS2J_EEEEEENSA_INSB_18RemoteRenderBundleENSE_IS2O_NSF_IS2O_EENSH_IS2O_EEEEEENSA_INSB_23RemoteRenderPassEncoderENSE_IS2T_NSF_IS2T_EENSH_IS2T_EEEEEENSA_INSB_20RemoteRenderPipelineENSE_IS2Y_NSF_IS2Y_EENSH_IS2Y_EEEEEENSA_INSB_13RemoteSamplerENSE_IS33_NSF_IS33_EENSH_IS33_EEEEEENSA_INSB_18RemoteShaderModuleENSE_IS38_NSF_IS38_EENSH_IS38_EEEEEENSA_INSB_13RemoteTextureENSE_IS3D_NSF_IS3D_EENSH_IS3D_EEEEEENSA_INSB_17RemoteTextureViewENSE_IS3I_NSF_IS3I_EENSH_IS3I_EEEEEENSA_INSB_15RemoteXRBindingENSE_IS3N_NSF_IS3N_EENSH_IS3N_EEEEEENSA_INSB_16RemoteXRSubImageENSE_IS3S_NSF_IS3S_EENSH_IS3S_EEEEEENSA_INSB_23RemoteXRProjectionLayerENSE_IS3X_NSF_IS3X_EENSH_IS3X_EEEEEENSA_INSB_12RemoteXRViewENSE_IS42_NSF_IS42_EENSH_IS42_EEEEEEEEELNS0_5TraitE1EEEEEEDcOT_DpOT0_(&v9, &v5);
  }

  v6 = -1;
  return IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteQuerySet,WTF::RefPtr<WebKit::RemoteQuerySet,WTF::RawPtrTraits<WebKit::RemoteQuerySet>,WTF::DefaultRefDerefTraits<WebKit::RemoteQuerySet>>>::~ScopedActiveMessageReceiveQueue(&v4);
}

WebKit::RemoteQueue **WebKit::WebGPU::ObjectHeap::addObject(uint64_t a1, void *a2, atomic_uint *a3)
{
  v8 = a2;
  atomic_fetch_add(a3 + 2, 1u);
  v4 = 0;
  v5 = a3;
  v6 = 15;
  _ZN3WTF7HashMapINS_23ObjectIdentifierGenericIN6WebKit20WebGPUIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEN5mpark7variantIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueINS2_13RemoteAdapterENS_6RefPtrISD_NS_12RawPtrTraitsISD_EENS_21DefaultRefDerefTraitsISD_EEEEEENSC_INS2_15RemoteBindGroupENSE_ISL_NSF_ISL_EENSH_ISL_EEEEEENSC_INS2_21RemoteBindGroupLayoutENSE_ISQ_NSF_ISQ_EENSH_ISQ_EEEEEENSC_INS2_12RemoteBufferENSE_ISV_NSF_ISV_EENSH_ISV_EEEEEENSC_INS2_19RemoteCommandBufferENSE_IS10_NSF_IS10_EENSH_IS10_EEEEEENSC_INS2_20RemoteCommandEncoderENSE_IS15_NSF_IS15_EENSH_IS15_EEEEEENSC_INS2_27RemoteCompositorIntegrationENSE_IS1A_NSF_IS1A_EENSH_IS1A_EEEEEENSC_INS2_24RemoteComputePassEncoderENSE_IS1F_NSF_IS1F_EENSH_IS1F_EEEEEENSC_INS2_21RemoteComputePipelineENSE_IS1K_NSF_IS1K_EENSH_IS1K_EEEEEENSC_INS2_12RemoteDeviceENSE_IS1P_NSF_IS1P_EENSH_IS1P_EEEEEENSC_INS2_21RemoteExternalTextureENSE_IS1U_NSF_IS1U_EENSH_IS1U_EEEEEENSC_INS2_20RemotePipelineLayoutENSE_IS1Z_NSF_IS1Z_EENSH_IS1Z_EEEEEENSC_INS2_25RemotePresentationContextENSE_IS24_NSF_IS24_EENSH_IS24_EEEEEENSC_INS2_14RemoteQuerySetENSE_IS29_NSF_IS29_EENSH_IS29_EEEEEENSC_INS2_11RemoteQueueENSE_IS2E_NSF_IS2E_EENSH_IS2E_EEEEEENSC_INS2_25RemoteRenderBundleEncoderENSE_IS2J_NSF_IS2J_EENSH_IS2J_EEEEEENSC_INS2_18RemoteRenderBundleENSE_IS2O_NSF_IS2O_EENSH_IS2O_EEEEEENSC_INS2_23RemoteRenderPassEncoderENSE_IS2T_NSF_IS2T_EENSH_IS2T_EEEEEENSC_INS2_20RemoteRenderPipelineENSE_IS2Y_NSF_IS2Y_EENSH_IS2Y_EEEEEENSC_INS2_13RemoteSamplerENSE_IS33_NSF_IS33_EENSH_IS33_EEEEEENSC_INS2_18RemoteShaderModuleENSE_IS38_NSF_IS38_EENSH_IS38_EEEEEENSC_INS2_13RemoteTextureENSE_IS3D_NSF_IS3D_EENSH_IS3D_EEEEEENSC_INS2_17RemoteTextureViewENSE_IS3I_NSF_IS3I_EENSH_IS3I_EEEEEENSC_INS2_15RemoteXRBindingENSE_IS3N_NSF_IS3N_EENSH_IS3N_EEEEEENSC_INS2_16RemoteXRSubImageENSE_IS3S_NSF_IS3S_EENSH_IS3S_EEEEEENSC_INS2_23RemoteXRProjectionLayerENSE_IS3X_NSF_IS3X_EENSH_IS3X_EEEEEENSC_INS2_12RemoteXRViewENSE_IS42_NSF_IS42_EENSH_IS42_EEEEEEEEENS_11DefaultHashIS6_EENS_10HashTraitsIS6_EENS4A_IS47_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1ENS_10FastMallocEE3addIS47_EENS_18HashTableAddResultINS_17HashTableIteratorINS_9HashTableIS6_NS_12KeyValuePairIS6_S47_EENS_24KeyValuePairKeyExtractorIS4M_EES49_NS4G_18KeyValuePairTraitsES4B_S4F_EES6_S4M_S4O_S49_S4P_S4B_EEEERKS6_OT_((a1 + 24), &v8, &v5, v7);
  if (v6 != 255)
  {
    _ZN5mpark6detail10visitation3alt9visit_altINS0_4dtorEJRNS0_10destructorINS0_6traitsIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueIN6WebKit13RemoteAdapterEN3WTF6RefPtrISC_NSD_12RawPtrTraitsISC_EENSD_21DefaultRefDerefTraitsISC_EEEEEENSA_INSB_15RemoteBindGroupENSE_ISL_NSF_ISL_EENSH_ISL_EEEEEENSA_INSB_21RemoteBindGroupLayoutENSE_ISQ_NSF_ISQ_EENSH_ISQ_EEEEEENSA_INSB_12RemoteBufferENSE_ISV_NSF_ISV_EENSH_ISV_EEEEEENSA_INSB_19RemoteCommandBufferENSE_IS10_NSF_IS10_EENSH_IS10_EEEEEENSA_INSB_20RemoteCommandEncoderENSE_IS15_NSF_IS15_EENSH_IS15_EEEEEENSA_INSB_27RemoteCompositorIntegrationENSE_IS1A_NSF_IS1A_EENSH_IS1A_EEEEEENSA_INSB_24RemoteComputePassEncoderENSE_IS1F_NSF_IS1F_EENSH_IS1F_EEEEEENSA_INSB_21RemoteComputePipelineENSE_IS1K_NSF_IS1K_EENSH_IS1K_EEEEEENSA_INSB_12RemoteDeviceENSE_IS1P_NSF_IS1P_EENSH_IS1P_EEEEEENSA_INSB_21RemoteExternalTextureENSE_IS1U_NSF_IS1U_EENSH_IS1U_EEEEEENSA_INSB_20RemotePipelineLayoutENSE_IS1Z_NSF_IS1Z_EENSH_IS1Z_EEEEEENSA_INSB_25RemotePresentationContextENSE_IS24_NSF_IS24_EENSH_IS24_EEEEEENSA_INSB_14RemoteQuerySetENSE_IS29_NSF_IS29_EENSH_IS29_EEEEEENSA_INSB_11RemoteQueueENSE_IS2E_NSF_IS2E_EENSH_IS2E_EEEEEENSA_INSB_25RemoteRenderBundleEncoderENSE_IS2J_NSF_IS2J_EENSH_IS2J_EEEEEENSA_INSB_18RemoteRenderBundleENSE_IS2O_NSF_IS2O_EENSH_IS2O_EEEEEENSA_INSB_23RemoteRenderPassEncoderENSE_IS2T_NSF_IS2T_EENSH_IS2T_EEEEEENSA_INSB_20RemoteRenderPipelineENSE_IS2Y_NSF_IS2Y_EENSH_IS2Y_EEEEEENSA_INSB_13RemoteSamplerENSE_IS33_NSF_IS33_EENSH_IS33_EEEEEENSA_INSB_18RemoteShaderModuleENSE_IS38_NSF_IS38_EENSH_IS38_EEEEEENSA_INSB_13RemoteTextureENSE_IS3D_NSF_IS3D_EENSH_IS3D_EEEEEENSA_INSB_17RemoteTextureViewENSE_IS3I_NSF_IS3I_EENSH_IS3I_EEEEEENSA_INSB_15RemoteXRBindingENSE_IS3N_NSF_IS3N_EENSH_IS3N_EEEEEENSA_INSB_16RemoteXRSubImageENSE_IS3S_NSF_IS3S_EENSH_IS3S_EEEEEENSA_INSB_23RemoteXRProjectionLayerENSE_IS3X_NSF_IS3X_EENSH_IS3X_EEEEEENSA_INSB_12RemoteXRViewENSE_IS42_NSF_IS42_EENSH_IS42_EEEEEEEEELNS0_5TraitE1EEEEEEDcOT_DpOT0_(&v9, &v5);
  }

  v6 = -1;
  return IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteQueue,WTF::RefPtr<WebKit::RemoteQueue,WTF::RawPtrTraits<WebKit::RemoteQueue>,WTF::DefaultRefDerefTraits<WebKit::RemoteQueue>>>::~ScopedActiveMessageReceiveQueue(&v4);
}

WebKit::RemoteRenderBundleEncoder **WebKit::WebGPU::ObjectHeap::addObject(uint64_t a1, void *a2, atomic_uint *a3)
{
  v8 = a2;
  atomic_fetch_add(a3 + 2, 1u);
  v4 = 0;
  v5 = a3;
  v6 = 16;
  _ZN3WTF7HashMapINS_23ObjectIdentifierGenericIN6WebKit20WebGPUIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEN5mpark7variantIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueINS2_13RemoteAdapterENS_6RefPtrISD_NS_12RawPtrTraitsISD_EENS_21DefaultRefDerefTraitsISD_EEEEEENSC_INS2_15RemoteBindGroupENSE_ISL_NSF_ISL_EENSH_ISL_EEEEEENSC_INS2_21RemoteBindGroupLayoutENSE_ISQ_NSF_ISQ_EENSH_ISQ_EEEEEENSC_INS2_12RemoteBufferENSE_ISV_NSF_ISV_EENSH_ISV_EEEEEENSC_INS2_19RemoteCommandBufferENSE_IS10_NSF_IS10_EENSH_IS10_EEEEEENSC_INS2_20RemoteCommandEncoderENSE_IS15_NSF_IS15_EENSH_IS15_EEEEEENSC_INS2_27RemoteCompositorIntegrationENSE_IS1A_NSF_IS1A_EENSH_IS1A_EEEEEENSC_INS2_24RemoteComputePassEncoderENSE_IS1F_NSF_IS1F_EENSH_IS1F_EEEEEENSC_INS2_21RemoteComputePipelineENSE_IS1K_NSF_IS1K_EENSH_IS1K_EEEEEENSC_INS2_12RemoteDeviceENSE_IS1P_NSF_IS1P_EENSH_IS1P_EEEEEENSC_INS2_21RemoteExternalTextureENSE_IS1U_NSF_IS1U_EENSH_IS1U_EEEEEENSC_INS2_20RemotePipelineLayoutENSE_IS1Z_NSF_IS1Z_EENSH_IS1Z_EEEEEENSC_INS2_25RemotePresentationContextENSE_IS24_NSF_IS24_EENSH_IS24_EEEEEENSC_INS2_14RemoteQuerySetENSE_IS29_NSF_IS29_EENSH_IS29_EEEEEENSC_INS2_11RemoteQueueENSE_IS2E_NSF_IS2E_EENSH_IS2E_EEEEEENSC_INS2_25RemoteRenderBundleEncoderENSE_IS2J_NSF_IS2J_EENSH_IS2J_EEEEEENSC_INS2_18RemoteRenderBundleENSE_IS2O_NSF_IS2O_EENSH_IS2O_EEEEEENSC_INS2_23RemoteRenderPassEncoderENSE_IS2T_NSF_IS2T_EENSH_IS2T_EEEEEENSC_INS2_20RemoteRenderPipelineENSE_IS2Y_NSF_IS2Y_EENSH_IS2Y_EEEEEENSC_INS2_13RemoteSamplerENSE_IS33_NSF_IS33_EENSH_IS33_EEEEEENSC_INS2_18RemoteShaderModuleENSE_IS38_NSF_IS38_EENSH_IS38_EEEEEENSC_INS2_13RemoteTextureENSE_IS3D_NSF_IS3D_EENSH_IS3D_EEEEEENSC_INS2_17RemoteTextureViewENSE_IS3I_NSF_IS3I_EENSH_IS3I_EEEEEENSC_INS2_15RemoteXRBindingENSE_IS3N_NSF_IS3N_EENSH_IS3N_EEEEEENSC_INS2_16RemoteXRSubImageENSE_IS3S_NSF_IS3S_EENSH_IS3S_EEEEEENSC_INS2_23RemoteXRProjectionLayerENSE_IS3X_NSF_IS3X_EENSH_IS3X_EEEEEENSC_INS2_12RemoteXRViewENSE_IS42_NSF_IS42_EENSH_IS42_EEEEEEEEENS_11DefaultHashIS6_EENS_10HashTraitsIS6_EENS4A_IS47_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1ENS_10FastMallocEE3addIS47_EENS_18HashTableAddResultINS_17HashTableIteratorINS_9HashTableIS6_NS_12KeyValuePairIS6_S47_EENS_24KeyValuePairKeyExtractorIS4M_EES49_NS4G_18KeyValuePairTraitsES4B_S4F_EES6_S4M_S4O_S49_S4P_S4B_EEEERKS6_OT_((a1 + 24), &v8, &v5, v7);
  if (v6 != 255)
  {
    _ZN5mpark6detail10visitation3alt9visit_altINS0_4dtorEJRNS0_10destructorINS0_6traitsIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueIN6WebKit13RemoteAdapterEN3WTF6RefPtrISC_NSD_12RawPtrTraitsISC_EENSD_21DefaultRefDerefTraitsISC_EEEEEENSA_INSB_15RemoteBindGroupENSE_ISL_NSF_ISL_EENSH_ISL_EEEEEENSA_INSB_21RemoteBindGroupLayoutENSE_ISQ_NSF_ISQ_EENSH_ISQ_EEEEEENSA_INSB_12RemoteBufferENSE_ISV_NSF_ISV_EENSH_ISV_EEEEEENSA_INSB_19RemoteCommandBufferENSE_IS10_NSF_IS10_EENSH_IS10_EEEEEENSA_INSB_20RemoteCommandEncoderENSE_IS15_NSF_IS15_EENSH_IS15_EEEEEENSA_INSB_27RemoteCompositorIntegrationENSE_IS1A_NSF_IS1A_EENSH_IS1A_EEEEEENSA_INSB_24RemoteComputePassEncoderENSE_IS1F_NSF_IS1F_EENSH_IS1F_EEEEEENSA_INSB_21RemoteComputePipelineENSE_IS1K_NSF_IS1K_EENSH_IS1K_EEEEEENSA_INSB_12RemoteDeviceENSE_IS1P_NSF_IS1P_EENSH_IS1P_EEEEEENSA_INSB_21RemoteExternalTextureENSE_IS1U_NSF_IS1U_EENSH_IS1U_EEEEEENSA_INSB_20RemotePipelineLayoutENSE_IS1Z_NSF_IS1Z_EENSH_IS1Z_EEEEEENSA_INSB_25RemotePresentationContextENSE_IS24_NSF_IS24_EENSH_IS24_EEEEEENSA_INSB_14RemoteQuerySetENSE_IS29_NSF_IS29_EENSH_IS29_EEEEEENSA_INSB_11RemoteQueueENSE_IS2E_NSF_IS2E_EENSH_IS2E_EEEEEENSA_INSB_25RemoteRenderBundleEncoderENSE_IS2J_NSF_IS2J_EENSH_IS2J_EEEEEENSA_INSB_18RemoteRenderBundleENSE_IS2O_NSF_IS2O_EENSH_IS2O_EEEEEENSA_INSB_23RemoteRenderPassEncoderENSE_IS2T_NSF_IS2T_EENSH_IS2T_EEEEEENSA_INSB_20RemoteRenderPipelineENSE_IS2Y_NSF_IS2Y_EENSH_IS2Y_EEEEEENSA_INSB_13RemoteSamplerENSE_IS33_NSF_IS33_EENSH_IS33_EEEEEENSA_INSB_18RemoteShaderModuleENSE_IS38_NSF_IS38_EENSH_IS38_EEEEEENSA_INSB_13RemoteTextureENSE_IS3D_NSF_IS3D_EENSH_IS3D_EEEEEENSA_INSB_17RemoteTextureViewENSE_IS3I_NSF_IS3I_EENSH_IS3I_EEEEEENSA_INSB_15RemoteXRBindingENSE_IS3N_NSF_IS3N_EENSH_IS3N_EEEEEENSA_INSB_16RemoteXRSubImageENSE_IS3S_NSF_IS3S_EENSH_IS3S_EEEEEENSA_INSB_23RemoteXRProjectionLayerENSE_IS3X_NSF_IS3X_EENSH_IS3X_EEEEEENSA_INSB_12RemoteXRViewENSE_IS42_NSF_IS42_EENSH_IS42_EEEEEEEEELNS0_5TraitE1EEEEEEDcOT_DpOT0_(&v9, &v5);
  }

  v6 = -1;
  return IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderBundleEncoder,WTF::RefPtr<WebKit::RemoteRenderBundleEncoder,WTF::RawPtrTraits<WebKit::RemoteRenderBundleEncoder>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderBundleEncoder>>>::~ScopedActiveMessageReceiveQueue(&v4);
}

WebKit::RemoteRenderBundle **WebKit::WebGPU::ObjectHeap::addObject(uint64_t a1, void *a2, atomic_uint *a3)
{
  v8 = a2;
  atomic_fetch_add(a3 + 2, 1u);
  v4 = 0;
  v5 = a3;
  v6 = 17;
  _ZN3WTF7HashMapINS_23ObjectIdentifierGenericIN6WebKit20WebGPUIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEN5mpark7variantIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueINS2_13RemoteAdapterENS_6RefPtrISD_NS_12RawPtrTraitsISD_EENS_21DefaultRefDerefTraitsISD_EEEEEENSC_INS2_15RemoteBindGroupENSE_ISL_NSF_ISL_EENSH_ISL_EEEEEENSC_INS2_21RemoteBindGroupLayoutENSE_ISQ_NSF_ISQ_EENSH_ISQ_EEEEEENSC_INS2_12RemoteBufferENSE_ISV_NSF_ISV_EENSH_ISV_EEEEEENSC_INS2_19RemoteCommandBufferENSE_IS10_NSF_IS10_EENSH_IS10_EEEEEENSC_INS2_20RemoteCommandEncoderENSE_IS15_NSF_IS15_EENSH_IS15_EEEEEENSC_INS2_27RemoteCompositorIntegrationENSE_IS1A_NSF_IS1A_EENSH_IS1A_EEEEEENSC_INS2_24RemoteComputePassEncoderENSE_IS1F_NSF_IS1F_EENSH_IS1F_EEEEEENSC_INS2_21RemoteComputePipelineENSE_IS1K_NSF_IS1K_EENSH_IS1K_EEEEEENSC_INS2_12RemoteDeviceENSE_IS1P_NSF_IS1P_EENSH_IS1P_EEEEEENSC_INS2_21RemoteExternalTextureENSE_IS1U_NSF_IS1U_EENSH_IS1U_EEEEEENSC_INS2_20RemotePipelineLayoutENSE_IS1Z_NSF_IS1Z_EENSH_IS1Z_EEEEEENSC_INS2_25RemotePresentationContextENSE_IS24_NSF_IS24_EENSH_IS24_EEEEEENSC_INS2_14RemoteQuerySetENSE_IS29_NSF_IS29_EENSH_IS29_EEEEEENSC_INS2_11RemoteQueueENSE_IS2E_NSF_IS2E_EENSH_IS2E_EEEEEENSC_INS2_25RemoteRenderBundleEncoderENSE_IS2J_NSF_IS2J_EENSH_IS2J_EEEEEENSC_INS2_18RemoteRenderBundleENSE_IS2O_NSF_IS2O_EENSH_IS2O_EEEEEENSC_INS2_23RemoteRenderPassEncoderENSE_IS2T_NSF_IS2T_EENSH_IS2T_EEEEEENSC_INS2_20RemoteRenderPipelineENSE_IS2Y_NSF_IS2Y_EENSH_IS2Y_EEEEEENSC_INS2_13RemoteSamplerENSE_IS33_NSF_IS33_EENSH_IS33_EEEEEENSC_INS2_18RemoteShaderModuleENSE_IS38_NSF_IS38_EENSH_IS38_EEEEEENSC_INS2_13RemoteTextureENSE_IS3D_NSF_IS3D_EENSH_IS3D_EEEEEENSC_INS2_17RemoteTextureViewENSE_IS3I_NSF_IS3I_EENSH_IS3I_EEEEEENSC_INS2_15RemoteXRBindingENSE_IS3N_NSF_IS3N_EENSH_IS3N_EEEEEENSC_INS2_16RemoteXRSubImageENSE_IS3S_NSF_IS3S_EENSH_IS3S_EEEEEENSC_INS2_23RemoteXRProjectionLayerENSE_IS3X_NSF_IS3X_EENSH_IS3X_EEEEEENSC_INS2_12RemoteXRViewENSE_IS42_NSF_IS42_EENSH_IS42_EEEEEEEEENS_11DefaultHashIS6_EENS_10HashTraitsIS6_EENS4A_IS47_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1ENS_10FastMallocEE3addIS47_EENS_18HashTableAddResultINS_17HashTableIteratorINS_9HashTableIS6_NS_12KeyValuePairIS6_S47_EENS_24KeyValuePairKeyExtractorIS4M_EES49_NS4G_18KeyValuePairTraitsES4B_S4F_EES6_S4M_S4O_S49_S4P_S4B_EEEERKS6_OT_((a1 + 24), &v8, &v5, v7);
  if (v6 != 255)
  {
    _ZN5mpark6detail10visitation3alt9visit_altINS0_4dtorEJRNS0_10destructorINS0_6traitsIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueIN6WebKit13RemoteAdapterEN3WTF6RefPtrISC_NSD_12RawPtrTraitsISC_EENSD_21DefaultRefDerefTraitsISC_EEEEEENSA_INSB_15RemoteBindGroupENSE_ISL_NSF_ISL_EENSH_ISL_EEEEEENSA_INSB_21RemoteBindGroupLayoutENSE_ISQ_NSF_ISQ_EENSH_ISQ_EEEEEENSA_INSB_12RemoteBufferENSE_ISV_NSF_ISV_EENSH_ISV_EEEEEENSA_INSB_19RemoteCommandBufferENSE_IS10_NSF_IS10_EENSH_IS10_EEEEEENSA_INSB_20RemoteCommandEncoderENSE_IS15_NSF_IS15_EENSH_IS15_EEEEEENSA_INSB_27RemoteCompositorIntegrationENSE_IS1A_NSF_IS1A_EENSH_IS1A_EEEEEENSA_INSB_24RemoteComputePassEncoderENSE_IS1F_NSF_IS1F_EENSH_IS1F_EEEEEENSA_INSB_21RemoteComputePipelineENSE_IS1K_NSF_IS1K_EENSH_IS1K_EEEEEENSA_INSB_12RemoteDeviceENSE_IS1P_NSF_IS1P_EENSH_IS1P_EEEEEENSA_INSB_21RemoteExternalTextureENSE_IS1U_NSF_IS1U_EENSH_IS1U_EEEEEENSA_INSB_20RemotePipelineLayoutENSE_IS1Z_NSF_IS1Z_EENSH_IS1Z_EEEEEENSA_INSB_25RemotePresentationContextENSE_IS24_NSF_IS24_EENSH_IS24_EEEEEENSA_INSB_14RemoteQuerySetENSE_IS29_NSF_IS29_EENSH_IS29_EEEEEENSA_INSB_11RemoteQueueENSE_IS2E_NSF_IS2E_EENSH_IS2E_EEEEEENSA_INSB_25RemoteRenderBundleEncoderENSE_IS2J_NSF_IS2J_EENSH_IS2J_EEEEEENSA_INSB_18RemoteRenderBundleENSE_IS2O_NSF_IS2O_EENSH_IS2O_EEEEEENSA_INSB_23RemoteRenderPassEncoderENSE_IS2T_NSF_IS2T_EENSH_IS2T_EEEEEENSA_INSB_20RemoteRenderPipelineENSE_IS2Y_NSF_IS2Y_EENSH_IS2Y_EEEEEENSA_INSB_13RemoteSamplerENSE_IS33_NSF_IS33_EENSH_IS33_EEEEEENSA_INSB_18RemoteShaderModuleENSE_IS38_NSF_IS38_EENSH_IS38_EEEEEENSA_INSB_13RemoteTextureENSE_IS3D_NSF_IS3D_EENSH_IS3D_EEEEEENSA_INSB_17RemoteTextureViewENSE_IS3I_NSF_IS3I_EENSH_IS3I_EEEEEENSA_INSB_15RemoteXRBindingENSE_IS3N_NSF_IS3N_EENSH_IS3N_EEEEEENSA_INSB_16RemoteXRSubImageENSE_IS3S_NSF_IS3S_EENSH_IS3S_EEEEEENSA_INSB_23RemoteXRProjectionLayerENSE_IS3X_NSF_IS3X_EENSH_IS3X_EEEEEENSA_INSB_12RemoteXRViewENSE_IS42_NSF_IS42_EENSH_IS42_EEEEEEEEELNS0_5TraitE1EEEEEEDcOT_DpOT0_(&v9, &v5);
  }

  v6 = -1;
  return IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderBundle,WTF::RefPtr<WebKit::RemoteRenderBundle,WTF::RawPtrTraits<WebKit::RemoteRenderBundle>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderBundle>>>::~ScopedActiveMessageReceiveQueue(&v4);
}

WebKit::RemoteRenderPassEncoder **WebKit::WebGPU::ObjectHeap::addObject(uint64_t a1, void *a2, atomic_uint *a3)
{
  v8 = a2;
  atomic_fetch_add(a3 + 2, 1u);
  v4 = 0;
  v5 = a3;
  v6 = 18;
  _ZN3WTF7HashMapINS_23ObjectIdentifierGenericIN6WebKit20WebGPUIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEN5mpark7variantIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueINS2_13RemoteAdapterENS_6RefPtrISD_NS_12RawPtrTraitsISD_EENS_21DefaultRefDerefTraitsISD_EEEEEENSC_INS2_15RemoteBindGroupENSE_ISL_NSF_ISL_EENSH_ISL_EEEEEENSC_INS2_21RemoteBindGroupLayoutENSE_ISQ_NSF_ISQ_EENSH_ISQ_EEEEEENSC_INS2_12RemoteBufferENSE_ISV_NSF_ISV_EENSH_ISV_EEEEEENSC_INS2_19RemoteCommandBufferENSE_IS10_NSF_IS10_EENSH_IS10_EEEEEENSC_INS2_20RemoteCommandEncoderENSE_IS15_NSF_IS15_EENSH_IS15_EEEEEENSC_INS2_27RemoteCompositorIntegrationENSE_IS1A_NSF_IS1A_EENSH_IS1A_EEEEEENSC_INS2_24RemoteComputePassEncoderENSE_IS1F_NSF_IS1F_EENSH_IS1F_EEEEEENSC_INS2_21RemoteComputePipelineENSE_IS1K_NSF_IS1K_EENSH_IS1K_EEEEEENSC_INS2_12RemoteDeviceENSE_IS1P_NSF_IS1P_EENSH_IS1P_EEEEEENSC_INS2_21RemoteExternalTextureENSE_IS1U_NSF_IS1U_EENSH_IS1U_EEEEEENSC_INS2_20RemotePipelineLayoutENSE_IS1Z_NSF_IS1Z_EENSH_IS1Z_EEEEEENSC_INS2_25RemotePresentationContextENSE_IS24_NSF_IS24_EENSH_IS24_EEEEEENSC_INS2_14RemoteQuerySetENSE_IS29_NSF_IS29_EENSH_IS29_EEEEEENSC_INS2_11RemoteQueueENSE_IS2E_NSF_IS2E_EENSH_IS2E_EEEEEENSC_INS2_25RemoteRenderBundleEncoderENSE_IS2J_NSF_IS2J_EENSH_IS2J_EEEEEENSC_INS2_18RemoteRenderBundleENSE_IS2O_NSF_IS2O_EENSH_IS2O_EEEEEENSC_INS2_23RemoteRenderPassEncoderENSE_IS2T_NSF_IS2T_EENSH_IS2T_EEEEEENSC_INS2_20RemoteRenderPipelineENSE_IS2Y_NSF_IS2Y_EENSH_IS2Y_EEEEEENSC_INS2_13RemoteSamplerENSE_IS33_NSF_IS33_EENSH_IS33_EEEEEENSC_INS2_18RemoteShaderModuleENSE_IS38_NSF_IS38_EENSH_IS38_EEEEEENSC_INS2_13RemoteTextureENSE_IS3D_NSF_IS3D_EENSH_IS3D_EEEEEENSC_INS2_17RemoteTextureViewENSE_IS3I_NSF_IS3I_EENSH_IS3I_EEEEEENSC_INS2_15RemoteXRBindingENSE_IS3N_NSF_IS3N_EENSH_IS3N_EEEEEENSC_INS2_16RemoteXRSubImageENSE_IS3S_NSF_IS3S_EENSH_IS3S_EEEEEENSC_INS2_23RemoteXRProjectionLayerENSE_IS3X_NSF_IS3X_EENSH_IS3X_EEEEEENSC_INS2_12RemoteXRViewENSE_IS42_NSF_IS42_EENSH_IS42_EEEEEEEEENS_11DefaultHashIS6_EENS_10HashTraitsIS6_EENS4A_IS47_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1ENS_10FastMallocEE3addIS47_EENS_18HashTableAddResultINS_17HashTableIteratorINS_9HashTableIS6_NS_12KeyValuePairIS6_S47_EENS_24KeyValuePairKeyExtractorIS4M_EES49_NS4G_18KeyValuePairTraitsES4B_S4F_EES6_S4M_S4O_S49_S4P_S4B_EEEERKS6_OT_((a1 + 24), &v8, &v5, v7);
  if (v6 != 255)
  {
    _ZN5mpark6detail10visitation3alt9visit_altINS0_4dtorEJRNS0_10destructorINS0_6traitsIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueIN6WebKit13RemoteAdapterEN3WTF6RefPtrISC_NSD_12RawPtrTraitsISC_EENSD_21DefaultRefDerefTraitsISC_EEEEEENSA_INSB_15RemoteBindGroupENSE_ISL_NSF_ISL_EENSH_ISL_EEEEEENSA_INSB_21RemoteBindGroupLayoutENSE_ISQ_NSF_ISQ_EENSH_ISQ_EEEEEENSA_INSB_12RemoteBufferENSE_ISV_NSF_ISV_EENSH_ISV_EEEEEENSA_INSB_19RemoteCommandBufferENSE_IS10_NSF_IS10_EENSH_IS10_EEEEEENSA_INSB_20RemoteCommandEncoderENSE_IS15_NSF_IS15_EENSH_IS15_EEEEEENSA_INSB_27RemoteCompositorIntegrationENSE_IS1A_NSF_IS1A_EENSH_IS1A_EEEEEENSA_INSB_24RemoteComputePassEncoderENSE_IS1F_NSF_IS1F_EENSH_IS1F_EEEEEENSA_INSB_21RemoteComputePipelineENSE_IS1K_NSF_IS1K_EENSH_IS1K_EEEEEENSA_INSB_12RemoteDeviceENSE_IS1P_NSF_IS1P_EENSH_IS1P_EEEEEENSA_INSB_21RemoteExternalTextureENSE_IS1U_NSF_IS1U_EENSH_IS1U_EEEEEENSA_INSB_20RemotePipelineLayoutENSE_IS1Z_NSF_IS1Z_EENSH_IS1Z_EEEEEENSA_INSB_25RemotePresentationContextENSE_IS24_NSF_IS24_EENSH_IS24_EEEEEENSA_INSB_14RemoteQuerySetENSE_IS29_NSF_IS29_EENSH_IS29_EEEEEENSA_INSB_11RemoteQueueENSE_IS2E_NSF_IS2E_EENSH_IS2E_EEEEEENSA_INSB_25RemoteRenderBundleEncoderENSE_IS2J_NSF_IS2J_EENSH_IS2J_EEEEEENSA_INSB_18RemoteRenderBundleENSE_IS2O_NSF_IS2O_EENSH_IS2O_EEEEEENSA_INSB_23RemoteRenderPassEncoderENSE_IS2T_NSF_IS2T_EENSH_IS2T_EEEEEENSA_INSB_20RemoteRenderPipelineENSE_IS2Y_NSF_IS2Y_EENSH_IS2Y_EEEEEENSA_INSB_13RemoteSamplerENSE_IS33_NSF_IS33_EENSH_IS33_EEEEEENSA_INSB_18RemoteShaderModuleENSE_IS38_NSF_IS38_EENSH_IS38_EEEEEENSA_INSB_13RemoteTextureENSE_IS3D_NSF_IS3D_EENSH_IS3D_EEEEEENSA_INSB_17RemoteTextureViewENSE_IS3I_NSF_IS3I_EENSH_IS3I_EEEEEENSA_INSB_15RemoteXRBindingENSE_IS3N_NSF_IS3N_EENSH_IS3N_EEEEEENSA_INSB_16RemoteXRSubImageENSE_IS3S_NSF_IS3S_EENSH_IS3S_EEEEEENSA_INSB_23RemoteXRProjectionLayerENSE_IS3X_NSF_IS3X_EENSH_IS3X_EEEEEENSA_INSB_12RemoteXRViewENSE_IS42_NSF_IS42_EENSH_IS42_EEEEEEEEELNS0_5TraitE1EEEEEEDcOT_DpOT0_(&v9, &v5);
  }

  v6 = -1;
  return IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderPassEncoder,WTF::RefPtr<WebKit::RemoteRenderPassEncoder,WTF::RawPtrTraits<WebKit::RemoteRenderPassEncoder>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderPassEncoder>>>::~ScopedActiveMessageReceiveQueue(&v4);
}

WebKit::RemoteRenderPipeline **WebKit::WebGPU::ObjectHeap::addObject(uint64_t a1, void *a2, atomic_uint *a3)
{
  v8 = a2;
  atomic_fetch_add(a3 + 2, 1u);
  v4 = 0;
  v5 = a3;
  v6 = 19;
  _ZN3WTF7HashMapINS_23ObjectIdentifierGenericIN6WebKit20WebGPUIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEN5mpark7variantIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueINS2_13RemoteAdapterENS_6RefPtrISD_NS_12RawPtrTraitsISD_EENS_21DefaultRefDerefTraitsISD_EEEEEENSC_INS2_15RemoteBindGroupENSE_ISL_NSF_ISL_EENSH_ISL_EEEEEENSC_INS2_21RemoteBindGroupLayoutENSE_ISQ_NSF_ISQ_EENSH_ISQ_EEEEEENSC_INS2_12RemoteBufferENSE_ISV_NSF_ISV_EENSH_ISV_EEEEEENSC_INS2_19RemoteCommandBufferENSE_IS10_NSF_IS10_EENSH_IS10_EEEEEENSC_INS2_20RemoteCommandEncoderENSE_IS15_NSF_IS15_EENSH_IS15_EEEEEENSC_INS2_27RemoteCompositorIntegrationENSE_IS1A_NSF_IS1A_EENSH_IS1A_EEEEEENSC_INS2_24RemoteComputePassEncoderENSE_IS1F_NSF_IS1F_EENSH_IS1F_EEEEEENSC_INS2_21RemoteComputePipelineENSE_IS1K_NSF_IS1K_EENSH_IS1K_EEEEEENSC_INS2_12RemoteDeviceENSE_IS1P_NSF_IS1P_EENSH_IS1P_EEEEEENSC_INS2_21RemoteExternalTextureENSE_IS1U_NSF_IS1U_EENSH_IS1U_EEEEEENSC_INS2_20RemotePipelineLayoutENSE_IS1Z_NSF_IS1Z_EENSH_IS1Z_EEEEEENSC_INS2_25RemotePresentationContextENSE_IS24_NSF_IS24_EENSH_IS24_EEEEEENSC_INS2_14RemoteQuerySetENSE_IS29_NSF_IS29_EENSH_IS29_EEEEEENSC_INS2_11RemoteQueueENSE_IS2E_NSF_IS2E_EENSH_IS2E_EEEEEENSC_INS2_25RemoteRenderBundleEncoderENSE_IS2J_NSF_IS2J_EENSH_IS2J_EEEEEENSC_INS2_18RemoteRenderBundleENSE_IS2O_NSF_IS2O_EENSH_IS2O_EEEEEENSC_INS2_23RemoteRenderPassEncoderENSE_IS2T_NSF_IS2T_EENSH_IS2T_EEEEEENSC_INS2_20RemoteRenderPipelineENSE_IS2Y_NSF_IS2Y_EENSH_IS2Y_EEEEEENSC_INS2_13RemoteSamplerENSE_IS33_NSF_IS33_EENSH_IS33_EEEEEENSC_INS2_18RemoteShaderModuleENSE_IS38_NSF_IS38_EENSH_IS38_EEEEEENSC_INS2_13RemoteTextureENSE_IS3D_NSF_IS3D_EENSH_IS3D_EEEEEENSC_INS2_17RemoteTextureViewENSE_IS3I_NSF_IS3I_EENSH_IS3I_EEEEEENSC_INS2_15RemoteXRBindingENSE_IS3N_NSF_IS3N_EENSH_IS3N_EEEEEENSC_INS2_16RemoteXRSubImageENSE_IS3S_NSF_IS3S_EENSH_IS3S_EEEEEENSC_INS2_23RemoteXRProjectionLayerENSE_IS3X_NSF_IS3X_EENSH_IS3X_EEEEEENSC_INS2_12RemoteXRViewENSE_IS42_NSF_IS42_EENSH_IS42_EEEEEEEEENS_11DefaultHashIS6_EENS_10HashTraitsIS6_EENS4A_IS47_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1ENS_10FastMallocEE3addIS47_EENS_18HashTableAddResultINS_17HashTableIteratorINS_9HashTableIS6_NS_12KeyValuePairIS6_S47_EENS_24KeyValuePairKeyExtractorIS4M_EES49_NS4G_18KeyValuePairTraitsES4B_S4F_EES6_S4M_S4O_S49_S4P_S4B_EEEERKS6_OT_((a1 + 24), &v8, &v5, v7);
  if (v6 != 255)
  {
    _ZN5mpark6detail10visitation3alt9visit_altINS0_4dtorEJRNS0_10destructorINS0_6traitsIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueIN6WebKit13RemoteAdapterEN3WTF6RefPtrISC_NSD_12RawPtrTraitsISC_EENSD_21DefaultRefDerefTraitsISC_EEEEEENSA_INSB_15RemoteBindGroupENSE_ISL_NSF_ISL_EENSH_ISL_EEEEEENSA_INSB_21RemoteBindGroupLayoutENSE_ISQ_NSF_ISQ_EENSH_ISQ_EEEEEENSA_INSB_12RemoteBufferENSE_ISV_NSF_ISV_EENSH_ISV_EEEEEENSA_INSB_19RemoteCommandBufferENSE_IS10_NSF_IS10_EENSH_IS10_EEEEEENSA_INSB_20RemoteCommandEncoderENSE_IS15_NSF_IS15_EENSH_IS15_EEEEEENSA_INSB_27RemoteCompositorIntegrationENSE_IS1A_NSF_IS1A_EENSH_IS1A_EEEEEENSA_INSB_24RemoteComputePassEncoderENSE_IS1F_NSF_IS1F_EENSH_IS1F_EEEEEENSA_INSB_21RemoteComputePipelineENSE_IS1K_NSF_IS1K_EENSH_IS1K_EEEEEENSA_INSB_12RemoteDeviceENSE_IS1P_NSF_IS1P_EENSH_IS1P_EEEEEENSA_INSB_21RemoteExternalTextureENSE_IS1U_NSF_IS1U_EENSH_IS1U_EEEEEENSA_INSB_20RemotePipelineLayoutENSE_IS1Z_NSF_IS1Z_EENSH_IS1Z_EEEEEENSA_INSB_25RemotePresentationContextENSE_IS24_NSF_IS24_EENSH_IS24_EEEEEENSA_INSB_14RemoteQuerySetENSE_IS29_NSF_IS29_EENSH_IS29_EEEEEENSA_INSB_11RemoteQueueENSE_IS2E_NSF_IS2E_EENSH_IS2E_EEEEEENSA_INSB_25RemoteRenderBundleEncoderENSE_IS2J_NSF_IS2J_EENSH_IS2J_EEEEEENSA_INSB_18RemoteRenderBundleENSE_IS2O_NSF_IS2O_EENSH_IS2O_EEEEEENSA_INSB_23RemoteRenderPassEncoderENSE_IS2T_NSF_IS2T_EENSH_IS2T_EEEEEENSA_INSB_20RemoteRenderPipelineENSE_IS2Y_NSF_IS2Y_EENSH_IS2Y_EEEEEENSA_INSB_13RemoteSamplerENSE_IS33_NSF_IS33_EENSH_IS33_EEEEEENSA_INSB_18RemoteShaderModuleENSE_IS38_NSF_IS38_EENSH_IS38_EEEEEENSA_INSB_13RemoteTextureENSE_IS3D_NSF_IS3D_EENSH_IS3D_EEEEEENSA_INSB_17RemoteTextureViewENSE_IS3I_NSF_IS3I_EENSH_IS3I_EEEEEENSA_INSB_15RemoteXRBindingENSE_IS3N_NSF_IS3N_EENSH_IS3N_EEEEEENSA_INSB_16RemoteXRSubImageENSE_IS3S_NSF_IS3S_EENSH_IS3S_EEEEEENSA_INSB_23RemoteXRProjectionLayerENSE_IS3X_NSF_IS3X_EENSH_IS3X_EEEEEENSA_INSB_12RemoteXRViewENSE_IS42_NSF_IS42_EENSH_IS42_EEEEEEEEELNS0_5TraitE1EEEEEEDcOT_DpOT0_(&v9, &v5);
  }

  v6 = -1;
  return IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderPipeline,WTF::RefPtr<WebKit::RemoteRenderPipeline,WTF::RawPtrTraits<WebKit::RemoteRenderPipeline>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderPipeline>>>::~ScopedActiveMessageReceiveQueue(&v4);
}

WebKit::RemoteSampler **WebKit::WebGPU::ObjectHeap::addObject(uint64_t a1, void *a2, atomic_uint *a3)
{
  v8 = a2;
  atomic_fetch_add(a3 + 2, 1u);
  v4 = 0;
  v5 = a3;
  v6 = 20;
  _ZN3WTF7HashMapINS_23ObjectIdentifierGenericIN6WebKit20WebGPUIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEN5mpark7variantIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueINS2_13RemoteAdapterENS_6RefPtrISD_NS_12RawPtrTraitsISD_EENS_21DefaultRefDerefTraitsISD_EEEEEENSC_INS2_15RemoteBindGroupENSE_ISL_NSF_ISL_EENSH_ISL_EEEEEENSC_INS2_21RemoteBindGroupLayoutENSE_ISQ_NSF_ISQ_EENSH_ISQ_EEEEEENSC_INS2_12RemoteBufferENSE_ISV_NSF_ISV_EENSH_ISV_EEEEEENSC_INS2_19RemoteCommandBufferENSE_IS10_NSF_IS10_EENSH_IS10_EEEEEENSC_INS2_20RemoteCommandEncoderENSE_IS15_NSF_IS15_EENSH_IS15_EEEEEENSC_INS2_27RemoteCompositorIntegrationENSE_IS1A_NSF_IS1A_EENSH_IS1A_EEEEEENSC_INS2_24RemoteComputePassEncoderENSE_IS1F_NSF_IS1F_EENSH_IS1F_EEEEEENSC_INS2_21RemoteComputePipelineENSE_IS1K_NSF_IS1K_EENSH_IS1K_EEEEEENSC_INS2_12RemoteDeviceENSE_IS1P_NSF_IS1P_EENSH_IS1P_EEEEEENSC_INS2_21RemoteExternalTextureENSE_IS1U_NSF_IS1U_EENSH_IS1U_EEEEEENSC_INS2_20RemotePipelineLayoutENSE_IS1Z_NSF_IS1Z_EENSH_IS1Z_EEEEEENSC_INS2_25RemotePresentationContextENSE_IS24_NSF_IS24_EENSH_IS24_EEEEEENSC_INS2_14RemoteQuerySetENSE_IS29_NSF_IS29_EENSH_IS29_EEEEEENSC_INS2_11RemoteQueueENSE_IS2E_NSF_IS2E_EENSH_IS2E_EEEEEENSC_INS2_25RemoteRenderBundleEncoderENSE_IS2J_NSF_IS2J_EENSH_IS2J_EEEEEENSC_INS2_18RemoteRenderBundleENSE_IS2O_NSF_IS2O_EENSH_IS2O_EEEEEENSC_INS2_23RemoteRenderPassEncoderENSE_IS2T_NSF_IS2T_EENSH_IS2T_EEEEEENSC_INS2_20RemoteRenderPipelineENSE_IS2Y_NSF_IS2Y_EENSH_IS2Y_EEEEEENSC_INS2_13RemoteSamplerENSE_IS33_NSF_IS33_EENSH_IS33_EEEEEENSC_INS2_18RemoteShaderModuleENSE_IS38_NSF_IS38_EENSH_IS38_EEEEEENSC_INS2_13RemoteTextureENSE_IS3D_NSF_IS3D_EENSH_IS3D_EEEEEENSC_INS2_17RemoteTextureViewENSE_IS3I_NSF_IS3I_EENSH_IS3I_EEEEEENSC_INS2_15RemoteXRBindingENSE_IS3N_NSF_IS3N_EENSH_IS3N_EEEEEENSC_INS2_16RemoteXRSubImageENSE_IS3S_NSF_IS3S_EENSH_IS3S_EEEEEENSC_INS2_23RemoteXRProjectionLayerENSE_IS3X_NSF_IS3X_EENSH_IS3X_EEEEEENSC_INS2_12RemoteXRViewENSE_IS42_NSF_IS42_EENSH_IS42_EEEEEEEEENS_11DefaultHashIS6_EENS_10HashTraitsIS6_EENS4A_IS47_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1ENS_10FastMallocEE3addIS47_EENS_18HashTableAddResultINS_17HashTableIteratorINS_9HashTableIS6_NS_12KeyValuePairIS6_S47_EENS_24KeyValuePairKeyExtractorIS4M_EES49_NS4G_18KeyValuePairTraitsES4B_S4F_EES6_S4M_S4O_S49_S4P_S4B_EEEERKS6_OT_((a1 + 24), &v8, &v5, v7);
  if (v6 != 255)
  {
    _ZN5mpark6detail10visitation3alt9visit_altINS0_4dtorEJRNS0_10destructorINS0_6traitsIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueIN6WebKit13RemoteAdapterEN3WTF6RefPtrISC_NSD_12RawPtrTraitsISC_EENSD_21DefaultRefDerefTraitsISC_EEEEEENSA_INSB_15RemoteBindGroupENSE_ISL_NSF_ISL_EENSH_ISL_EEEEEENSA_INSB_21RemoteBindGroupLayoutENSE_ISQ_NSF_ISQ_EENSH_ISQ_EEEEEENSA_INSB_12RemoteBufferENSE_ISV_NSF_ISV_EENSH_ISV_EEEEEENSA_INSB_19RemoteCommandBufferENSE_IS10_NSF_IS10_EENSH_IS10_EEEEEENSA_INSB_20RemoteCommandEncoderENSE_IS15_NSF_IS15_EENSH_IS15_EEEEEENSA_INSB_27RemoteCompositorIntegrationENSE_IS1A_NSF_IS1A_EENSH_IS1A_EEEEEENSA_INSB_24RemoteComputePassEncoderENSE_IS1F_NSF_IS1F_EENSH_IS1F_EEEEEENSA_INSB_21RemoteComputePipelineENSE_IS1K_NSF_IS1K_EENSH_IS1K_EEEEEENSA_INSB_12RemoteDeviceENSE_IS1P_NSF_IS1P_EENSH_IS1P_EEEEEENSA_INSB_21RemoteExternalTextureENSE_IS1U_NSF_IS1U_EENSH_IS1U_EEEEEENSA_INSB_20RemotePipelineLayoutENSE_IS1Z_NSF_IS1Z_EENSH_IS1Z_EEEEEENSA_INSB_25RemotePresentationContextENSE_IS24_NSF_IS24_EENSH_IS24_EEEEEENSA_INSB_14RemoteQuerySetENSE_IS29_NSF_IS29_EENSH_IS29_EEEEEENSA_INSB_11RemoteQueueENSE_IS2E_NSF_IS2E_EENSH_IS2E_EEEEEENSA_INSB_25RemoteRenderBundleEncoderENSE_IS2J_NSF_IS2J_EENSH_IS2J_EEEEEENSA_INSB_18RemoteRenderBundleENSE_IS2O_NSF_IS2O_EENSH_IS2O_EEEEEENSA_INSB_23RemoteRenderPassEncoderENSE_IS2T_NSF_IS2T_EENSH_IS2T_EEEEEENSA_INSB_20RemoteRenderPipelineENSE_IS2Y_NSF_IS2Y_EENSH_IS2Y_EEEEEENSA_INSB_13RemoteSamplerENSE_IS33_NSF_IS33_EENSH_IS33_EEEEEENSA_INSB_18RemoteShaderModuleENSE_IS38_NSF_IS38_EENSH_IS38_EEEEEENSA_INSB_13RemoteTextureENSE_IS3D_NSF_IS3D_EENSH_IS3D_EEEEEENSA_INSB_17RemoteTextureViewENSE_IS3I_NSF_IS3I_EENSH_IS3I_EEEEEENSA_INSB_15RemoteXRBindingENSE_IS3N_NSF_IS3N_EENSH_IS3N_EEEEEENSA_INSB_16RemoteXRSubImageENSE_IS3S_NSF_IS3S_EENSH_IS3S_EEEEEENSA_INSB_23RemoteXRProjectionLayerENSE_IS3X_NSF_IS3X_EENSH_IS3X_EEEEEENSA_INSB_12RemoteXRViewENSE_IS42_NSF_IS42_EENSH_IS42_EEEEEEEEELNS0_5TraitE1EEEEEEDcOT_DpOT0_(&v9, &v5);
  }

  v6 = -1;
  return IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteSampler,WTF::RefPtr<WebKit::RemoteSampler,WTF::RawPtrTraits<WebKit::RemoteSampler>,WTF::DefaultRefDerefTraits<WebKit::RemoteSampler>>>::~ScopedActiveMessageReceiveQueue(&v4);
}

WebKit::RemoteShaderModule **WebKit::WebGPU::ObjectHeap::addObject(uint64_t a1, void *a2, atomic_uint *a3)
{
  v8 = a2;
  atomic_fetch_add(a3 + 2, 1u);
  v4 = 0;
  v5 = a3;
  v6 = 21;
  _ZN3WTF7HashMapINS_23ObjectIdentifierGenericIN6WebKit20WebGPUIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEN5mpark7variantIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueINS2_13RemoteAdapterENS_6RefPtrISD_NS_12RawPtrTraitsISD_EENS_21DefaultRefDerefTraitsISD_EEEEEENSC_INS2_15RemoteBindGroupENSE_ISL_NSF_ISL_EENSH_ISL_EEEEEENSC_INS2_21RemoteBindGroupLayoutENSE_ISQ_NSF_ISQ_EENSH_ISQ_EEEEEENSC_INS2_12RemoteBufferENSE_ISV_NSF_ISV_EENSH_ISV_EEEEEENSC_INS2_19RemoteCommandBufferENSE_IS10_NSF_IS10_EENSH_IS10_EEEEEENSC_INS2_20RemoteCommandEncoderENSE_IS15_NSF_IS15_EENSH_IS15_EEEEEENSC_INS2_27RemoteCompositorIntegrationENSE_IS1A_NSF_IS1A_EENSH_IS1A_EEEEEENSC_INS2_24RemoteComputePassEncoderENSE_IS1F_NSF_IS1F_EENSH_IS1F_EEEEEENSC_INS2_21RemoteComputePipelineENSE_IS1K_NSF_IS1K_EENSH_IS1K_EEEEEENSC_INS2_12RemoteDeviceENSE_IS1P_NSF_IS1P_EENSH_IS1P_EEEEEENSC_INS2_21RemoteExternalTextureENSE_IS1U_NSF_IS1U_EENSH_IS1U_EEEEEENSC_INS2_20RemotePipelineLayoutENSE_IS1Z_NSF_IS1Z_EENSH_IS1Z_EEEEEENSC_INS2_25RemotePresentationContextENSE_IS24_NSF_IS24_EENSH_IS24_EEEEEENSC_INS2_14RemoteQuerySetENSE_IS29_NSF_IS29_EENSH_IS29_EEEEEENSC_INS2_11RemoteQueueENSE_IS2E_NSF_IS2E_EENSH_IS2E_EEEEEENSC_INS2_25RemoteRenderBundleEncoderENSE_IS2J_NSF_IS2J_EENSH_IS2J_EEEEEENSC_INS2_18RemoteRenderBundleENSE_IS2O_NSF_IS2O_EENSH_IS2O_EEEEEENSC_INS2_23RemoteRenderPassEncoderENSE_IS2T_NSF_IS2T_EENSH_IS2T_EEEEEENSC_INS2_20RemoteRenderPipelineENSE_IS2Y_NSF_IS2Y_EENSH_IS2Y_EEEEEENSC_INS2_13RemoteSamplerENSE_IS33_NSF_IS33_EENSH_IS33_EEEEEENSC_INS2_18RemoteShaderModuleENSE_IS38_NSF_IS38_EENSH_IS38_EEEEEENSC_INS2_13RemoteTextureENSE_IS3D_NSF_IS3D_EENSH_IS3D_EEEEEENSC_INS2_17RemoteTextureViewENSE_IS3I_NSF_IS3I_EENSH_IS3I_EEEEEENSC_INS2_15RemoteXRBindingENSE_IS3N_NSF_IS3N_EENSH_IS3N_EEEEEENSC_INS2_16RemoteXRSubImageENSE_IS3S_NSF_IS3S_EENSH_IS3S_EEEEEENSC_INS2_23RemoteXRProjectionLayerENSE_IS3X_NSF_IS3X_EENSH_IS3X_EEEEEENSC_INS2_12RemoteXRViewENSE_IS42_NSF_IS42_EENSH_IS42_EEEEEEEEENS_11DefaultHashIS6_EENS_10HashTraitsIS6_EENS4A_IS47_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1ENS_10FastMallocEE3addIS47_EENS_18HashTableAddResultINS_17HashTableIteratorINS_9HashTableIS6_NS_12KeyValuePairIS6_S47_EENS_24KeyValuePairKeyExtractorIS4M_EES49_NS4G_18KeyValuePairTraitsES4B_S4F_EES6_S4M_S4O_S49_S4P_S4B_EEEERKS6_OT_((a1 + 24), &v8, &v5, v7);
  if (v6 != 255)
  {
    _ZN5mpark6detail10visitation3alt9visit_altINS0_4dtorEJRNS0_10destructorINS0_6traitsIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueIN6WebKit13RemoteAdapterEN3WTF6RefPtrISC_NSD_12RawPtrTraitsISC_EENSD_21DefaultRefDerefTraitsISC_EEEEEENSA_INSB_15RemoteBindGroupENSE_ISL_NSF_ISL_EENSH_ISL_EEEEEENSA_INSB_21RemoteBindGroupLayoutENSE_ISQ_NSF_ISQ_EENSH_ISQ_EEEEEENSA_INSB_12RemoteBufferENSE_ISV_NSF_ISV_EENSH_ISV_EEEEEENSA_INSB_19RemoteCommandBufferENSE_IS10_NSF_IS10_EENSH_IS10_EEEEEENSA_INSB_20RemoteCommandEncoderENSE_IS15_NSF_IS15_EENSH_IS15_EEEEEENSA_INSB_27RemoteCompositorIntegrationENSE_IS1A_NSF_IS1A_EENSH_IS1A_EEEEEENSA_INSB_24RemoteComputePassEncoderENSE_IS1F_NSF_IS1F_EENSH_IS1F_EEEEEENSA_INSB_21RemoteComputePipelineENSE_IS1K_NSF_IS1K_EENSH_IS1K_EEEEEENSA_INSB_12RemoteDeviceENSE_IS1P_NSF_IS1P_EENSH_IS1P_EEEEEENSA_INSB_21RemoteExternalTextureENSE_IS1U_NSF_IS1U_EENSH_IS1U_EEEEEENSA_INSB_20RemotePipelineLayoutENSE_IS1Z_NSF_IS1Z_EENSH_IS1Z_EEEEEENSA_INSB_25RemotePresentationContextENSE_IS24_NSF_IS24_EENSH_IS24_EEEEEENSA_INSB_14RemoteQuerySetENSE_IS29_NSF_IS29_EENSH_IS29_EEEEEENSA_INSB_11RemoteQueueENSE_IS2E_NSF_IS2E_EENSH_IS2E_EEEEEENSA_INSB_25RemoteRenderBundleEncoderENSE_IS2J_NSF_IS2J_EENSH_IS2J_EEEEEENSA_INSB_18RemoteRenderBundleENSE_IS2O_NSF_IS2O_EENSH_IS2O_EEEEEENSA_INSB_23RemoteRenderPassEncoderENSE_IS2T_NSF_IS2T_EENSH_IS2T_EEEEEENSA_INSB_20RemoteRenderPipelineENSE_IS2Y_NSF_IS2Y_EENSH_IS2Y_EEEEEENSA_INSB_13RemoteSamplerENSE_IS33_NSF_IS33_EENSH_IS33_EEEEEENSA_INSB_18RemoteShaderModuleENSE_IS38_NSF_IS38_EENSH_IS38_EEEEEENSA_INSB_13RemoteTextureENSE_IS3D_NSF_IS3D_EENSH_IS3D_EEEEEENSA_INSB_17RemoteTextureViewENSE_IS3I_NSF_IS3I_EENSH_IS3I_EEEEEENSA_INSB_15RemoteXRBindingENSE_IS3N_NSF_IS3N_EENSH_IS3N_EEEEEENSA_INSB_16RemoteXRSubImageENSE_IS3S_NSF_IS3S_EENSH_IS3S_EEEEEENSA_INSB_23RemoteXRProjectionLayerENSE_IS3X_NSF_IS3X_EENSH_IS3X_EEEEEENSA_INSB_12RemoteXRViewENSE_IS42_NSF_IS42_EENSH_IS42_EEEEEEEEELNS0_5TraitE1EEEEEEDcOT_DpOT0_(&v9, &v5);
  }

  v6 = -1;
  return IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteShaderModule,WTF::RefPtr<WebKit::RemoteShaderModule,WTF::RawPtrTraits<WebKit::RemoteShaderModule>,WTF::DefaultRefDerefTraits<WebKit::RemoteShaderModule>>>::~ScopedActiveMessageReceiveQueue(&v4);
}

WebKit::RemoteXRBinding **WebKit::WebGPU::ObjectHeap::addObject(uint64_t a1, void *a2, atomic_uint *a3)
{
  v8 = a2;
  atomic_fetch_add(a3 + 2, 1u);
  v4 = 0;
  v5 = a3;
  v6 = 24;
  _ZN3WTF7HashMapINS_23ObjectIdentifierGenericIN6WebKit20WebGPUIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEN5mpark7variantIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueINS2_13RemoteAdapterENS_6RefPtrISD_NS_12RawPtrTraitsISD_EENS_21DefaultRefDerefTraitsISD_EEEEEENSC_INS2_15RemoteBindGroupENSE_ISL_NSF_ISL_EENSH_ISL_EEEEEENSC_INS2_21RemoteBindGroupLayoutENSE_ISQ_NSF_ISQ_EENSH_ISQ_EEEEEENSC_INS2_12RemoteBufferENSE_ISV_NSF_ISV_EENSH_ISV_EEEEEENSC_INS2_19RemoteCommandBufferENSE_IS10_NSF_IS10_EENSH_IS10_EEEEEENSC_INS2_20RemoteCommandEncoderENSE_IS15_NSF_IS15_EENSH_IS15_EEEEEENSC_INS2_27RemoteCompositorIntegrationENSE_IS1A_NSF_IS1A_EENSH_IS1A_EEEEEENSC_INS2_24RemoteComputePassEncoderENSE_IS1F_NSF_IS1F_EENSH_IS1F_EEEEEENSC_INS2_21RemoteComputePipelineENSE_IS1K_NSF_IS1K_EENSH_IS1K_EEEEEENSC_INS2_12RemoteDeviceENSE_IS1P_NSF_IS1P_EENSH_IS1P_EEEEEENSC_INS2_21RemoteExternalTextureENSE_IS1U_NSF_IS1U_EENSH_IS1U_EEEEEENSC_INS2_20RemotePipelineLayoutENSE_IS1Z_NSF_IS1Z_EENSH_IS1Z_EEEEEENSC_INS2_25RemotePresentationContextENSE_IS24_NSF_IS24_EENSH_IS24_EEEEEENSC_INS2_14RemoteQuerySetENSE_IS29_NSF_IS29_EENSH_IS29_EEEEEENSC_INS2_11RemoteQueueENSE_IS2E_NSF_IS2E_EENSH_IS2E_EEEEEENSC_INS2_25RemoteRenderBundleEncoderENSE_IS2J_NSF_IS2J_EENSH_IS2J_EEEEEENSC_INS2_18RemoteRenderBundleENSE_IS2O_NSF_IS2O_EENSH_IS2O_EEEEEENSC_INS2_23RemoteRenderPassEncoderENSE_IS2T_NSF_IS2T_EENSH_IS2T_EEEEEENSC_INS2_20RemoteRenderPipelineENSE_IS2Y_NSF_IS2Y_EENSH_IS2Y_EEEEEENSC_INS2_13RemoteSamplerENSE_IS33_NSF_IS33_EENSH_IS33_EEEEEENSC_INS2_18RemoteShaderModuleENSE_IS38_NSF_IS38_EENSH_IS38_EEEEEENSC_INS2_13RemoteTextureENSE_IS3D_NSF_IS3D_EENSH_IS3D_EEEEEENSC_INS2_17RemoteTextureViewENSE_IS3I_NSF_IS3I_EENSH_IS3I_EEEEEENSC_INS2_15RemoteXRBindingENSE_IS3N_NSF_IS3N_EENSH_IS3N_EEEEEENSC_INS2_16RemoteXRSubImageENSE_IS3S_NSF_IS3S_EENSH_IS3S_EEEEEENSC_INS2_23RemoteXRProjectionLayerENSE_IS3X_NSF_IS3X_EENSH_IS3X_EEEEEENSC_INS2_12RemoteXRViewENSE_IS42_NSF_IS42_EENSH_IS42_EEEEEEEEENS_11DefaultHashIS6_EENS_10HashTraitsIS6_EENS4A_IS47_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1ENS_10FastMallocEE3addIS47_EENS_18HashTableAddResultINS_17HashTableIteratorINS_9HashTableIS6_NS_12KeyValuePairIS6_S47_EENS_24KeyValuePairKeyExtractorIS4M_EES49_NS4G_18KeyValuePairTraitsES4B_S4F_EES6_S4M_S4O_S49_S4P_S4B_EEEERKS6_OT_((a1 + 24), &v8, &v5, v7);
  if (v6 != 255)
  {
    _ZN5mpark6detail10visitation3alt9visit_altINS0_4dtorEJRNS0_10destructorINS0_6traitsIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueIN6WebKit13RemoteAdapterEN3WTF6RefPtrISC_NSD_12RawPtrTraitsISC_EENSD_21DefaultRefDerefTraitsISC_EEEEEENSA_INSB_15RemoteBindGroupENSE_ISL_NSF_ISL_EENSH_ISL_EEEEEENSA_INSB_21RemoteBindGroupLayoutENSE_ISQ_NSF_ISQ_EENSH_ISQ_EEEEEENSA_INSB_12RemoteBufferENSE_ISV_NSF_ISV_EENSH_ISV_EEEEEENSA_INSB_19RemoteCommandBufferENSE_IS10_NSF_IS10_EENSH_IS10_EEEEEENSA_INSB_20RemoteCommandEncoderENSE_IS15_NSF_IS15_EENSH_IS15_EEEEEENSA_INSB_27RemoteCompositorIntegrationENSE_IS1A_NSF_IS1A_EENSH_IS1A_EEEEEENSA_INSB_24RemoteComputePassEncoderENSE_IS1F_NSF_IS1F_EENSH_IS1F_EEEEEENSA_INSB_21RemoteComputePipelineENSE_IS1K_NSF_IS1K_EENSH_IS1K_EEEEEENSA_INSB_12RemoteDeviceENSE_IS1P_NSF_IS1P_EENSH_IS1P_EEEEEENSA_INSB_21RemoteExternalTextureENSE_IS1U_NSF_IS1U_EENSH_IS1U_EEEEEENSA_INSB_20RemotePipelineLayoutENSE_IS1Z_NSF_IS1Z_EENSH_IS1Z_EEEEEENSA_INSB_25RemotePresentationContextENSE_IS24_NSF_IS24_EENSH_IS24_EEEEEENSA_INSB_14RemoteQuerySetENSE_IS29_NSF_IS29_EENSH_IS29_EEEEEENSA_INSB_11RemoteQueueENSE_IS2E_NSF_IS2E_EENSH_IS2E_EEEEEENSA_INSB_25RemoteRenderBundleEncoderENSE_IS2J_NSF_IS2J_EENSH_IS2J_EEEEEENSA_INSB_18RemoteRenderBundleENSE_IS2O_NSF_IS2O_EENSH_IS2O_EEEEEENSA_INSB_23RemoteRenderPassEncoderENSE_IS2T_NSF_IS2T_EENSH_IS2T_EEEEEENSA_INSB_20RemoteRenderPipelineENSE_IS2Y_NSF_IS2Y_EENSH_IS2Y_EEEEEENSA_INSB_13RemoteSamplerENSE_IS33_NSF_IS33_EENSH_IS33_EEEEEENSA_INSB_18RemoteShaderModuleENSE_IS38_NSF_IS38_EENSH_IS38_EEEEEENSA_INSB_13RemoteTextureENSE_IS3D_NSF_IS3D_EENSH_IS3D_EEEEEENSA_INSB_17RemoteTextureViewENSE_IS3I_NSF_IS3I_EENSH_IS3I_EEEEEENSA_INSB_15RemoteXRBindingENSE_IS3N_NSF_IS3N_EENSH_IS3N_EEEEEENSA_INSB_16RemoteXRSubImageENSE_IS3S_NSF_IS3S_EENSH_IS3S_EEEEEENSA_INSB_23RemoteXRProjectionLayerENSE_IS3X_NSF_IS3X_EENSH_IS3X_EEEEEENSA_INSB_12RemoteXRViewENSE_IS42_NSF_IS42_EENSH_IS42_EEEEEEEEELNS0_5TraitE1EEEEEEDcOT_DpOT0_(&v9, &v5);
  }

  v6 = -1;
  return IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteXRBinding,WTF::RefPtr<WebKit::RemoteXRBinding,WTF::RawPtrTraits<WebKit::RemoteXRBinding>,WTF::DefaultRefDerefTraits<WebKit::RemoteXRBinding>>>::~ScopedActiveMessageReceiveQueue(&v4);
}

uint64_t WebKit::WebGPU::ObjectHeap::convertAdapterFromBacking@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v11 = a2;
  v5 = _ZN3WTF9HashTableINS_23ObjectIdentifierGenericIN6WebKit20WebGPUIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEENS_12KeyValuePairIS6_N5mpark7variantIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueINS2_13RemoteAdapterENS_6RefPtrISE_NS_12RawPtrTraitsISE_EENS_21DefaultRefDerefTraitsISE_EEEEEENSD_INS2_15RemoteBindGroupENSF_ISM_NSG_ISM_EENSI_ISM_EEEEEENSD_INS2_21RemoteBindGroupLayoutENSF_ISR_NSG_ISR_EENSI_ISR_EEEEEENSD_INS2_12RemoteBufferENSF_ISW_NSG_ISW_EENSI_ISW_EEEEEENSD_INS2_19RemoteCommandBufferENSF_IS11_NSG_IS11_EENSI_IS11_EEEEEENSD_INS2_20RemoteCommandEncoderENSF_IS16_NSG_IS16_EENSI_IS16_EEEEEENSD_INS2_27RemoteCompositorIntegrationENSF_IS1B_NSG_IS1B_EENSI_IS1B_EEEEEENSD_INS2_24RemoteComputePassEncoderENSF_IS1G_NSG_IS1G_EENSI_IS1G_EEEEEENSD_INS2_21RemoteComputePipelineENSF_IS1L_NSG_IS1L_EENSI_IS1L_EEEEEENSD_INS2_12RemoteDeviceENSF_IS1Q_NSG_IS1Q_EENSI_IS1Q_EEEEEENSD_INS2_21RemoteExternalTextureENSF_IS1V_NSG_IS1V_EENSI_IS1V_EEEEEENSD_INS2_20RemotePipelineLayoutENSF_IS20_NSG_IS20_EENSI_IS20_EEEEEENSD_INS2_25RemotePresentationContextENSF_IS25_NSG_IS25_EENSI_IS25_EEEEEENSD_INS2_14RemoteQuerySetENSF_IS2A_NSG_IS2A_EENSI_IS2A_EEEEEENSD_INS2_11RemoteQueueENSF_IS2F_NSG_IS2F_EENSI_IS2F_EEEEEENSD_INS2_25RemoteRenderBundleEncoderENSF_IS2K_NSG_IS2K_EENSI_IS2K_EEEEEENSD_INS2_18RemoteRenderBundleENSF_IS2P_NSG_IS2P_EENSI_IS2P_EEEEEENSD_INS2_23RemoteRenderPassEncoderENSF_IS2U_NSG_IS2U_EENSI_IS2U_EEEEEENSD_INS2_20RemoteRenderPipelineENSF_IS2Z_NSG_IS2Z_EENSI_IS2Z_EEEEEENSD_INS2_13RemoteSamplerENSF_IS34_NSG_IS34_EENSI_IS34_EEEEEENSD_INS2_18RemoteShaderModuleENSF_IS39_NSG_IS39_EENSI_IS39_EEEEEENSD_INS2_13RemoteTextureENSF_IS3E_NSG_IS3E_EENSI_IS3E_EEEEEENSD_INS2_17RemoteTextureViewENSF_IS3J_NSG_IS3J_EENSI_IS3J_EEEEEENSD_INS2_15RemoteXRBindingENSF_IS3O_NSG_IS3O_EENSI_IS3O_EEEEEENSD_INS2_16RemoteXRSubImageENSF_IS3T_NSG_IS3T_EENSI_IS3T_EEEEEENSD_INS2_23RemoteXRProjectionLayerENSF_IS3Y_NSG_IS3Y_EENSI_IS3Y_EEEEEENSD_INS2_12RemoteXRViewENSF_IS43_NSG_IS43_EENSI_IS43_EEEEEEEEEEENS_24KeyValuePairKeyExtractorIS49_EENS_11DefaultHashIS6_EENS_7HashMapIS6_S48_S4D_NS_10HashTraitsIS6_EENS4F_IS48_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1ENS_10FastMallocEE18KeyValuePairTraitsES4G_S4K_E4findINS_22IdentityHashTranslatorIS4M_S4D_EELS4J_1ES6_EENS_17HashTableIteratorIS4N_S6_S49_S4B_S4D_S4M_S4G_EERKT1_((a1 + 24), &v11);
  v6 = *(a1 + 24);
  if (v6)
  {
    v6 += 3 * *(v6 - 1);
  }

  if (v6 != v5 && *(v5 + 16) == 1 && (v7 = *(v5[1] + 16)) != 0)
  {
    result = *(v7 + 8);
    if (result)
    {
      goto LABEL_11;
    }

    result = WTF::fastCompactMalloc(0x10);
    *result = 1;
    *(result + 8) = v7;
    v10 = *(v7 + 8);
    *(v7 + 8) = result;
    if (!v10)
    {
      goto LABEL_11;
    }

    if (atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v10);
      WTF::fastFree(v10, v9);
    }

    result = *(v7 + 8);
    if (result)
    {
LABEL_11:
      atomic_fetch_add(result, 1u);
    }
  }

  else
  {
    result = 0;
  }

  *a3 = result;
  return result;
}

char *WebKit::WebGPU::ObjectHeap::convertBindGroupFromBacking@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, atomic_uint **a3@<X8>)
{
  v10 = a2;
  result = _ZN3WTF9HashTableINS_23ObjectIdentifierGenericIN6WebKit20WebGPUIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEENS_12KeyValuePairIS6_N5mpark7variantIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueINS2_13RemoteAdapterENS_6RefPtrISE_NS_12RawPtrTraitsISE_EENS_21DefaultRefDerefTraitsISE_EEEEEENSD_INS2_15RemoteBindGroupENSF_ISM_NSG_ISM_EENSI_ISM_EEEEEENSD_INS2_21RemoteBindGroupLayoutENSF_ISR_NSG_ISR_EENSI_ISR_EEEEEENSD_INS2_12RemoteBufferENSF_ISW_NSG_ISW_EENSI_ISW_EEEEEENSD_INS2_19RemoteCommandBufferENSF_IS11_NSG_IS11_EENSI_IS11_EEEEEENSD_INS2_20RemoteCommandEncoderENSF_IS16_NSG_IS16_EENSI_IS16_EEEEEENSD_INS2_27RemoteCompositorIntegrationENSF_IS1B_NSG_IS1B_EENSI_IS1B_EEEEEENSD_INS2_24RemoteComputePassEncoderENSF_IS1G_NSG_IS1G_EENSI_IS1G_EEEEEENSD_INS2_21RemoteComputePipelineENSF_IS1L_NSG_IS1L_EENSI_IS1L_EEEEEENSD_INS2_12RemoteDeviceENSF_IS1Q_NSG_IS1Q_EENSI_IS1Q_EEEEEENSD_INS2_21RemoteExternalTextureENSF_IS1V_NSG_IS1V_EENSI_IS1V_EEEEEENSD_INS2_20RemotePipelineLayoutENSF_IS20_NSG_IS20_EENSI_IS20_EEEEEENSD_INS2_25RemotePresentationContextENSF_IS25_NSG_IS25_EENSI_IS25_EEEEEENSD_INS2_14RemoteQuerySetENSF_IS2A_NSG_IS2A_EENSI_IS2A_EEEEEENSD_INS2_11RemoteQueueENSF_IS2F_NSG_IS2F_EENSI_IS2F_EEEEEENSD_INS2_25RemoteRenderBundleEncoderENSF_IS2K_NSG_IS2K_EENSI_IS2K_EEEEEENSD_INS2_18RemoteRenderBundleENSF_IS2P_NSG_IS2P_EENSI_IS2P_EEEEEENSD_INS2_23RemoteRenderPassEncoderENSF_IS2U_NSG_IS2U_EENSI_IS2U_EEEEEENSD_INS2_20RemoteRenderPipelineENSF_IS2Z_NSG_IS2Z_EENSI_IS2Z_EEEEEENSD_INS2_13RemoteSamplerENSF_IS34_NSG_IS34_EENSI_IS34_EEEEEENSD_INS2_18RemoteShaderModuleENSF_IS39_NSG_IS39_EENSI_IS39_EEEEEENSD_INS2_13RemoteTextureENSF_IS3E_NSG_IS3E_EENSI_IS3E_EEEEEENSD_INS2_17RemoteTextureViewENSF_IS3J_NSG_IS3J_EENSI_IS3J_EEEEEENSD_INS2_15RemoteXRBindingENSF_IS3O_NSG_IS3O_EENSI_IS3O_EEEEEENSD_INS2_16RemoteXRSubImageENSF_IS3T_NSG_IS3T_EENSI_IS3T_EEEEEENSD_INS2_23RemoteXRProjectionLayerENSF_IS3Y_NSG_IS3Y_EENSI_IS3Y_EEEEEENSD_INS2_12RemoteXRViewENSF_IS43_NSG_IS43_EENSI_IS43_EEEEEEEEEEENS_24KeyValuePairKeyExtractorIS49_EENS_11DefaultHashIS6_EENS_7HashMapIS6_S48_S4D_NS_10HashTraitsIS6_EENS4F_IS48_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1ENS_10FastMallocEE18KeyValuePairTraitsES4G_S4K_E4findINS_22IdentityHashTranslatorIS4M_S4D_EELS4J_1ES6_EENS_17HashTableIteratorIS4N_S6_S49_S4B_S4D_S4M_S4G_EERKT1_((a1 + 24), &v10);
  v6 = *(a1 + 24);
  if (v6)
  {
    v6 += 24 * *(v6 - 1);
  }

  if (v6 != result && result[16] == 2 && (v7 = *(result + 1), (v8 = *(v7 + 16)) != 0))
  {
    result = WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v8 + 8), *(v7 + 16));
    v9 = *(v8 + 8);
    if (v9)
    {
      atomic_fetch_add(v9, 1u);
    }
  }

  else
  {
    v9 = 0;
  }

  *a3 = v9;
  return result;
}

char *WebKit::WebGPU::ObjectHeap::convertBindGroupLayoutFromBacking@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, atomic_uint **a3@<X8>)
{
  v10 = a2;
  result = _ZN3WTF9HashTableINS_23ObjectIdentifierGenericIN6WebKit20WebGPUIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEENS_12KeyValuePairIS6_N5mpark7variantIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueINS2_13RemoteAdapterENS_6RefPtrISE_NS_12RawPtrTraitsISE_EENS_21DefaultRefDerefTraitsISE_EEEEEENSD_INS2_15RemoteBindGroupENSF_ISM_NSG_ISM_EENSI_ISM_EEEEEENSD_INS2_21RemoteBindGroupLayoutENSF_ISR_NSG_ISR_EENSI_ISR_EEEEEENSD_INS2_12RemoteBufferENSF_ISW_NSG_ISW_EENSI_ISW_EEEEEENSD_INS2_19RemoteCommandBufferENSF_IS11_NSG_IS11_EENSI_IS11_EEEEEENSD_INS2_20RemoteCommandEncoderENSF_IS16_NSG_IS16_EENSI_IS16_EEEEEENSD_INS2_27RemoteCompositorIntegrationENSF_IS1B_NSG_IS1B_EENSI_IS1B_EEEEEENSD_INS2_24RemoteComputePassEncoderENSF_IS1G_NSG_IS1G_EENSI_IS1G_EEEEEENSD_INS2_21RemoteComputePipelineENSF_IS1L_NSG_IS1L_EENSI_IS1L_EEEEEENSD_INS2_12RemoteDeviceENSF_IS1Q_NSG_IS1Q_EENSI_IS1Q_EEEEEENSD_INS2_21RemoteExternalTextureENSF_IS1V_NSG_IS1V_EENSI_IS1V_EEEEEENSD_INS2_20RemotePipelineLayoutENSF_IS20_NSG_IS20_EENSI_IS20_EEEEEENSD_INS2_25RemotePresentationContextENSF_IS25_NSG_IS25_EENSI_IS25_EEEEEENSD_INS2_14RemoteQuerySetENSF_IS2A_NSG_IS2A_EENSI_IS2A_EEEEEENSD_INS2_11RemoteQueueENSF_IS2F_NSG_IS2F_EENSI_IS2F_EEEEEENSD_INS2_25RemoteRenderBundleEncoderENSF_IS2K_NSG_IS2K_EENSI_IS2K_EEEEEENSD_INS2_18RemoteRenderBundleENSF_IS2P_NSG_IS2P_EENSI_IS2P_EEEEEENSD_INS2_23RemoteRenderPassEncoderENSF_IS2U_NSG_IS2U_EENSI_IS2U_EEEEEENSD_INS2_20RemoteRenderPipelineENSF_IS2Z_NSG_IS2Z_EENSI_IS2Z_EEEEEENSD_INS2_13RemoteSamplerENSF_IS34_NSG_IS34_EENSI_IS34_EEEEEENSD_INS2_18RemoteShaderModuleENSF_IS39_NSG_IS39_EENSI_IS39_EEEEEENSD_INS2_13RemoteTextureENSF_IS3E_NSG_IS3E_EENSI_IS3E_EEEEEENSD_INS2_17RemoteTextureViewENSF_IS3J_NSG_IS3J_EENSI_IS3J_EEEEEENSD_INS2_15RemoteXRBindingENSF_IS3O_NSG_IS3O_EENSI_IS3O_EEEEEENSD_INS2_16RemoteXRSubImageENSF_IS3T_NSG_IS3T_EENSI_IS3T_EEEEEENSD_INS2_23RemoteXRProjectionLayerENSF_IS3Y_NSG_IS3Y_EENSI_IS3Y_EEEEEENSD_INS2_12RemoteXRViewENSF_IS43_NSG_IS43_EENSI_IS43_EEEEEEEEEEENS_24KeyValuePairKeyExtractorIS49_EENS_11DefaultHashIS6_EENS_7HashMapIS6_S48_S4D_NS_10HashTraitsIS6_EENS4F_IS48_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1ENS_10FastMallocEE18KeyValuePairTraitsES4G_S4K_E4findINS_22IdentityHashTranslatorIS4M_S4D_EELS4J_1ES6_EENS_17HashTableIteratorIS4N_S6_S49_S4B_S4D_S4M_S4G_EERKT1_((a1 + 24), &v10);
  v6 = *(a1 + 24);
  if (v6)
  {
    v6 += 24 * *(v6 - 1);
  }

  if (v6 != result && result[16] == 3 && (v7 = *(result + 1), (v8 = *(v7 + 16)) != 0))
  {
    result = WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v8 + 8), *(v7 + 16));
    v9 = *(v8 + 8);
    if (v9)
    {
      atomic_fetch_add(v9, 1u);
    }
  }

  else
  {
    v9 = 0;
  }

  *a3 = v9;
  return result;
}

char *WebKit::WebGPU::ObjectHeap::convertBufferFromBacking@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, atomic_uint **a3@<X8>)
{
  v10 = a2;
  result = _ZN3WTF9HashTableINS_23ObjectIdentifierGenericIN6WebKit20WebGPUIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEENS_12KeyValuePairIS6_N5mpark7variantIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueINS2_13RemoteAdapterENS_6RefPtrISE_NS_12RawPtrTraitsISE_EENS_21DefaultRefDerefTraitsISE_EEEEEENSD_INS2_15RemoteBindGroupENSF_ISM_NSG_ISM_EENSI_ISM_EEEEEENSD_INS2_21RemoteBindGroupLayoutENSF_ISR_NSG_ISR_EENSI_ISR_EEEEEENSD_INS2_12RemoteBufferENSF_ISW_NSG_ISW_EENSI_ISW_EEEEEENSD_INS2_19RemoteCommandBufferENSF_IS11_NSG_IS11_EENSI_IS11_EEEEEENSD_INS2_20RemoteCommandEncoderENSF_IS16_NSG_IS16_EENSI_IS16_EEEEEENSD_INS2_27RemoteCompositorIntegrationENSF_IS1B_NSG_IS1B_EENSI_IS1B_EEEEEENSD_INS2_24RemoteComputePassEncoderENSF_IS1G_NSG_IS1G_EENSI_IS1G_EEEEEENSD_INS2_21RemoteComputePipelineENSF_IS1L_NSG_IS1L_EENSI_IS1L_EEEEEENSD_INS2_12RemoteDeviceENSF_IS1Q_NSG_IS1Q_EENSI_IS1Q_EEEEEENSD_INS2_21RemoteExternalTextureENSF_IS1V_NSG_IS1V_EENSI_IS1V_EEEEEENSD_INS2_20RemotePipelineLayoutENSF_IS20_NSG_IS20_EENSI_IS20_EEEEEENSD_INS2_25RemotePresentationContextENSF_IS25_NSG_IS25_EENSI_IS25_EEEEEENSD_INS2_14RemoteQuerySetENSF_IS2A_NSG_IS2A_EENSI_IS2A_EEEEEENSD_INS2_11RemoteQueueENSF_IS2F_NSG_IS2F_EENSI_IS2F_EEEEEENSD_INS2_25RemoteRenderBundleEncoderENSF_IS2K_NSG_IS2K_EENSI_IS2K_EEEEEENSD_INS2_18RemoteRenderBundleENSF_IS2P_NSG_IS2P_EENSI_IS2P_EEEEEENSD_INS2_23RemoteRenderPassEncoderENSF_IS2U_NSG_IS2U_EENSI_IS2U_EEEEEENSD_INS2_20RemoteRenderPipelineENSF_IS2Z_NSG_IS2Z_EENSI_IS2Z_EEEEEENSD_INS2_13RemoteSamplerENSF_IS34_NSG_IS34_EENSI_IS34_EEEEEENSD_INS2_18RemoteShaderModuleENSF_IS39_NSG_IS39_EENSI_IS39_EEEEEENSD_INS2_13RemoteTextureENSF_IS3E_NSG_IS3E_EENSI_IS3E_EEEEEENSD_INS2_17RemoteTextureViewENSF_IS3J_NSG_IS3J_EENSI_IS3J_EEEEEENSD_INS2_15RemoteXRBindingENSF_IS3O_NSG_IS3O_EENSI_IS3O_EEEEEENSD_INS2_16RemoteXRSubImageENSF_IS3T_NSG_IS3T_EENSI_IS3T_EEEEEENSD_INS2_23RemoteXRProjectionLayerENSF_IS3Y_NSG_IS3Y_EENSI_IS3Y_EEEEEENSD_INS2_12RemoteXRViewENSF_IS43_NSG_IS43_EENSI_IS43_EEEEEEEEEEENS_24KeyValuePairKeyExtractorIS49_EENS_11DefaultHashIS6_EENS_7HashMapIS6_S48_S4D_NS_10HashTraitsIS6_EENS4F_IS48_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1ENS_10FastMallocEE18KeyValuePairTraitsES4G_S4K_E4findINS_22IdentityHashTranslatorIS4M_S4D_EELS4J_1ES6_EENS_17HashTableIteratorIS4N_S6_S49_S4B_S4D_S4M_S4G_EERKT1_((a1 + 24), &v10);
  v6 = *(a1 + 24);
  if (v6)
  {
    v6 += 24 * *(v6 - 1);
  }

  if (v6 != result && result[16] == 4 && (v7 = *(result + 1), (v8 = *(v7 + 16)) != 0))
  {
    result = WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v8 + 8), *(v7 + 16));
    v9 = *(v8 + 8);
    if (v9)
    {
      atomic_fetch_add(v9, 1u);
    }
  }

  else
  {
    v9 = 0;
  }

  *a3 = v9;
  return result;
}

char *WebKit::WebGPU::ObjectHeap::convertCommandBufferFromBacking@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, atomic_uint **a3@<X8>)
{
  v10 = a2;
  result = _ZN3WTF9HashTableINS_23ObjectIdentifierGenericIN6WebKit20WebGPUIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEENS_12KeyValuePairIS6_N5mpark7variantIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueINS2_13RemoteAdapterENS_6RefPtrISE_NS_12RawPtrTraitsISE_EENS_21DefaultRefDerefTraitsISE_EEEEEENSD_INS2_15RemoteBindGroupENSF_ISM_NSG_ISM_EENSI_ISM_EEEEEENSD_INS2_21RemoteBindGroupLayoutENSF_ISR_NSG_ISR_EENSI_ISR_EEEEEENSD_INS2_12RemoteBufferENSF_ISW_NSG_ISW_EENSI_ISW_EEEEEENSD_INS2_19RemoteCommandBufferENSF_IS11_NSG_IS11_EENSI_IS11_EEEEEENSD_INS2_20RemoteCommandEncoderENSF_IS16_NSG_IS16_EENSI_IS16_EEEEEENSD_INS2_27RemoteCompositorIntegrationENSF_IS1B_NSG_IS1B_EENSI_IS1B_EEEEEENSD_INS2_24RemoteComputePassEncoderENSF_IS1G_NSG_IS1G_EENSI_IS1G_EEEEEENSD_INS2_21RemoteComputePipelineENSF_IS1L_NSG_IS1L_EENSI_IS1L_EEEEEENSD_INS2_12RemoteDeviceENSF_IS1Q_NSG_IS1Q_EENSI_IS1Q_EEEEEENSD_INS2_21RemoteExternalTextureENSF_IS1V_NSG_IS1V_EENSI_IS1V_EEEEEENSD_INS2_20RemotePipelineLayoutENSF_IS20_NSG_IS20_EENSI_IS20_EEEEEENSD_INS2_25RemotePresentationContextENSF_IS25_NSG_IS25_EENSI_IS25_EEEEEENSD_INS2_14RemoteQuerySetENSF_IS2A_NSG_IS2A_EENSI_IS2A_EEEEEENSD_INS2_11RemoteQueueENSF_IS2F_NSG_IS2F_EENSI_IS2F_EEEEEENSD_INS2_25RemoteRenderBundleEncoderENSF_IS2K_NSG_IS2K_EENSI_IS2K_EEEEEENSD_INS2_18RemoteRenderBundleENSF_IS2P_NSG_IS2P_EENSI_IS2P_EEEEEENSD_INS2_23RemoteRenderPassEncoderENSF_IS2U_NSG_IS2U_EENSI_IS2U_EEEEEENSD_INS2_20RemoteRenderPipelineENSF_IS2Z_NSG_IS2Z_EENSI_IS2Z_EEEEEENSD_INS2_13RemoteSamplerENSF_IS34_NSG_IS34_EENSI_IS34_EEEEEENSD_INS2_18RemoteShaderModuleENSF_IS39_NSG_IS39_EENSI_IS39_EEEEEENSD_INS2_13RemoteTextureENSF_IS3E_NSG_IS3E_EENSI_IS3E_EEEEEENSD_INS2_17RemoteTextureViewENSF_IS3J_NSG_IS3J_EENSI_IS3J_EEEEEENSD_INS2_15RemoteXRBindingENSF_IS3O_NSG_IS3O_EENSI_IS3O_EEEEEENSD_INS2_16RemoteXRSubImageENSF_IS3T_NSG_IS3T_EENSI_IS3T_EEEEEENSD_INS2_23RemoteXRProjectionLayerENSF_IS3Y_NSG_IS3Y_EENSI_IS3Y_EEEEEENSD_INS2_12RemoteXRViewENSF_IS43_NSG_IS43_EENSI_IS43_EEEEEEEEEEENS_24KeyValuePairKeyExtractorIS49_EENS_11DefaultHashIS6_EENS_7HashMapIS6_S48_S4D_NS_10HashTraitsIS6_EENS4F_IS48_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1ENS_10FastMallocEE18KeyValuePairTraitsES4G_S4K_E4findINS_22IdentityHashTranslatorIS4M_S4D_EELS4J_1ES6_EENS_17HashTableIteratorIS4N_S6_S49_S4B_S4D_S4M_S4G_EERKT1_((a1 + 24), &v10);
  v6 = *(a1 + 24);
  if (v6)
  {
    v6 += 24 * *(v6 - 1);
  }

  if (v6 != result && result[16] == 5 && (v7 = *(result + 1), (v8 = *(v7 + 16)) != 0))
  {
    result = WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v8 + 8), *(v7 + 16));
    v9 = *(v8 + 8);
    if (v9)
    {
      atomic_fetch_add(v9, 1u);
    }
  }

  else
  {
    v9 = 0;
  }

  *a3 = v9;
  return result;
}

uint64_t WebKit::WebGPU::ObjectHeap::convertCommandEncoderFromBacking@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v11 = a2;
  v5 = _ZN3WTF9HashTableINS_23ObjectIdentifierGenericIN6WebKit20WebGPUIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEENS_12KeyValuePairIS6_N5mpark7variantIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueINS2_13RemoteAdapterENS_6RefPtrISE_NS_12RawPtrTraitsISE_EENS_21DefaultRefDerefTraitsISE_EEEEEENSD_INS2_15RemoteBindGroupENSF_ISM_NSG_ISM_EENSI_ISM_EEEEEENSD_INS2_21RemoteBindGroupLayoutENSF_ISR_NSG_ISR_EENSI_ISR_EEEEEENSD_INS2_12RemoteBufferENSF_ISW_NSG_ISW_EENSI_ISW_EEEEEENSD_INS2_19RemoteCommandBufferENSF_IS11_NSG_IS11_EENSI_IS11_EEEEEENSD_INS2_20RemoteCommandEncoderENSF_IS16_NSG_IS16_EENSI_IS16_EEEEEENSD_INS2_27RemoteCompositorIntegrationENSF_IS1B_NSG_IS1B_EENSI_IS1B_EEEEEENSD_INS2_24RemoteComputePassEncoderENSF_IS1G_NSG_IS1G_EENSI_IS1G_EEEEEENSD_INS2_21RemoteComputePipelineENSF_IS1L_NSG_IS1L_EENSI_IS1L_EEEEEENSD_INS2_12RemoteDeviceENSF_IS1Q_NSG_IS1Q_EENSI_IS1Q_EEEEEENSD_INS2_21RemoteExternalTextureENSF_IS1V_NSG_IS1V_EENSI_IS1V_EEEEEENSD_INS2_20RemotePipelineLayoutENSF_IS20_NSG_IS20_EENSI_IS20_EEEEEENSD_INS2_25RemotePresentationContextENSF_IS25_NSG_IS25_EENSI_IS25_EEEEEENSD_INS2_14RemoteQuerySetENSF_IS2A_NSG_IS2A_EENSI_IS2A_EEEEEENSD_INS2_11RemoteQueueENSF_IS2F_NSG_IS2F_EENSI_IS2F_EEEEEENSD_INS2_25RemoteRenderBundleEncoderENSF_IS2K_NSG_IS2K_EENSI_IS2K_EEEEEENSD_INS2_18RemoteRenderBundleENSF_IS2P_NSG_IS2P_EENSI_IS2P_EEEEEENSD_INS2_23RemoteRenderPassEncoderENSF_IS2U_NSG_IS2U_EENSI_IS2U_EEEEEENSD_INS2_20RemoteRenderPipelineENSF_IS2Z_NSG_IS2Z_EENSI_IS2Z_EEEEEENSD_INS2_13RemoteSamplerENSF_IS34_NSG_IS34_EENSI_IS34_EEEEEENSD_INS2_18RemoteShaderModuleENSF_IS39_NSG_IS39_EENSI_IS39_EEEEEENSD_INS2_13RemoteTextureENSF_IS3E_NSG_IS3E_EENSI_IS3E_EEEEEENSD_INS2_17RemoteTextureViewENSF_IS3J_NSG_IS3J_EENSI_IS3J_EEEEEENSD_INS2_15RemoteXRBindingENSF_IS3O_NSG_IS3O_EENSI_IS3O_EEEEEENSD_INS2_16RemoteXRSubImageENSF_IS3T_NSG_IS3T_EENSI_IS3T_EEEEEENSD_INS2_23RemoteXRProjectionLayerENSF_IS3Y_NSG_IS3Y_EENSI_IS3Y_EEEEEENSD_INS2_12RemoteXRViewENSF_IS43_NSG_IS43_EENSI_IS43_EEEEEEEEEEENS_24KeyValuePairKeyExtractorIS49_EENS_11DefaultHashIS6_EENS_7HashMapIS6_S48_S4D_NS_10HashTraitsIS6_EENS4F_IS48_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1ENS_10FastMallocEE18KeyValuePairTraitsES4G_S4K_E4findINS_22IdentityHashTranslatorIS4M_S4D_EELS4J_1ES6_EENS_17HashTableIteratorIS4N_S6_S49_S4B_S4D_S4M_S4G_EERKT1_((a1 + 24), &v11);
  v6 = *(a1 + 24);
  if (v6)
  {
    v6 += 3 * *(v6 - 1);
  }

  if (v6 != v5 && *(v5 + 16) == 6 && (v7 = *(v5[1] + 16)) != 0)
  {
    result = *(v7 + 8);
    if (result)
    {
      goto LABEL_11;
    }

    result = WTF::fastCompactMalloc(0x10);
    *result = 1;
    *(result + 8) = v7;
    v10 = *(v7 + 8);
    *(v7 + 8) = result;
    if (!v10)
    {
      goto LABEL_11;
    }

    if (atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v10);
      WTF::fastFree(v10, v9);
    }

    result = *(v7 + 8);
    if (result)
    {
LABEL_11:
      atomic_fetch_add(result, 1u);
    }
  }

  else
  {
    result = 0;
  }

  *a3 = result;
  return result;
}

uint64_t WebKit::WebGPU::ObjectHeap::convertCompositorIntegrationFromBacking@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v11 = a2;
  v5 = _ZN3WTF9HashTableINS_23ObjectIdentifierGenericIN6WebKit20WebGPUIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEENS_12KeyValuePairIS6_N5mpark7variantIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueINS2_13RemoteAdapterENS_6RefPtrISE_NS_12RawPtrTraitsISE_EENS_21DefaultRefDerefTraitsISE_EEEEEENSD_INS2_15RemoteBindGroupENSF_ISM_NSG_ISM_EENSI_ISM_EEEEEENSD_INS2_21RemoteBindGroupLayoutENSF_ISR_NSG_ISR_EENSI_ISR_EEEEEENSD_INS2_12RemoteBufferENSF_ISW_NSG_ISW_EENSI_ISW_EEEEEENSD_INS2_19RemoteCommandBufferENSF_IS11_NSG_IS11_EENSI_IS11_EEEEEENSD_INS2_20RemoteCommandEncoderENSF_IS16_NSG_IS16_EENSI_IS16_EEEEEENSD_INS2_27RemoteCompositorIntegrationENSF_IS1B_NSG_IS1B_EENSI_IS1B_EEEEEENSD_INS2_24RemoteComputePassEncoderENSF_IS1G_NSG_IS1G_EENSI_IS1G_EEEEEENSD_INS2_21RemoteComputePipelineENSF_IS1L_NSG_IS1L_EENSI_IS1L_EEEEEENSD_INS2_12RemoteDeviceENSF_IS1Q_NSG_IS1Q_EENSI_IS1Q_EEEEEENSD_INS2_21RemoteExternalTextureENSF_IS1V_NSG_IS1V_EENSI_IS1V_EEEEEENSD_INS2_20RemotePipelineLayoutENSF_IS20_NSG_IS20_EENSI_IS20_EEEEEENSD_INS2_25RemotePresentationContextENSF_IS25_NSG_IS25_EENSI_IS25_EEEEEENSD_INS2_14RemoteQuerySetENSF_IS2A_NSG_IS2A_EENSI_IS2A_EEEEEENSD_INS2_11RemoteQueueENSF_IS2F_NSG_IS2F_EENSI_IS2F_EEEEEENSD_INS2_25RemoteRenderBundleEncoderENSF_IS2K_NSG_IS2K_EENSI_IS2K_EEEEEENSD_INS2_18RemoteRenderBundleENSF_IS2P_NSG_IS2P_EENSI_IS2P_EEEEEENSD_INS2_23RemoteRenderPassEncoderENSF_IS2U_NSG_IS2U_EENSI_IS2U_EEEEEENSD_INS2_20RemoteRenderPipelineENSF_IS2Z_NSG_IS2Z_EENSI_IS2Z_EEEEEENSD_INS2_13RemoteSamplerENSF_IS34_NSG_IS34_EENSI_IS34_EEEEEENSD_INS2_18RemoteShaderModuleENSF_IS39_NSG_IS39_EENSI_IS39_EEEEEENSD_INS2_13RemoteTextureENSF_IS3E_NSG_IS3E_EENSI_IS3E_EEEEEENSD_INS2_17RemoteTextureViewENSF_IS3J_NSG_IS3J_EENSI_IS3J_EEEEEENSD_INS2_15RemoteXRBindingENSF_IS3O_NSG_IS3O_EENSI_IS3O_EEEEEENSD_INS2_16RemoteXRSubImageENSF_IS3T_NSG_IS3T_EENSI_IS3T_EEEEEENSD_INS2_23RemoteXRProjectionLayerENSF_IS3Y_NSG_IS3Y_EENSI_IS3Y_EEEEEENSD_INS2_12RemoteXRViewENSF_IS43_NSG_IS43_EENSI_IS43_EEEEEEEEEEENS_24KeyValuePairKeyExtractorIS49_EENS_11DefaultHashIS6_EENS_7HashMapIS6_S48_S4D_NS_10HashTraitsIS6_EENS4F_IS48_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1ENS_10FastMallocEE18KeyValuePairTraitsES4G_S4K_E4findINS_22IdentityHashTranslatorIS4M_S4D_EELS4J_1ES6_EENS_17HashTableIteratorIS4N_S6_S49_S4B_S4D_S4M_S4G_EERKT1_((a1 + 24), &v11);
  v6 = *(a1 + 24);
  if (v6)
  {
    v6 += 3 * *(v6 - 1);
  }

  if (v6 != v5 && *(v5 + 16) == 7 && (v7 = *(v5[1] + 16)) != 0)
  {
    result = *(v7 + 8);
    if (result)
    {
      goto LABEL_11;
    }

    result = WTF::fastCompactMalloc(0x10);
    *result = 1;
    *(result + 8) = v7;
    v10 = *(v7 + 8);
    *(v7 + 8) = result;
    if (!v10)
    {
      goto LABEL_11;
    }

    if (atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v10);
      WTF::fastFree(v10, v9);
    }

    result = *(v7 + 8);
    if (result)
    {
LABEL_11:
      atomic_fetch_add(result, 1u);
    }
  }

  else
  {
    result = 0;
  }

  *a3 = result;
  return result;
}

uint64_t WebKit::WebGPU::ObjectHeap::convertComputePassEncoderFromBacking@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v11 = a2;
  v5 = _ZN3WTF9HashTableINS_23ObjectIdentifierGenericIN6WebKit20WebGPUIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEENS_12KeyValuePairIS6_N5mpark7variantIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueINS2_13RemoteAdapterENS_6RefPtrISE_NS_12RawPtrTraitsISE_EENS_21DefaultRefDerefTraitsISE_EEEEEENSD_INS2_15RemoteBindGroupENSF_ISM_NSG_ISM_EENSI_ISM_EEEEEENSD_INS2_21RemoteBindGroupLayoutENSF_ISR_NSG_ISR_EENSI_ISR_EEEEEENSD_INS2_12RemoteBufferENSF_ISW_NSG_ISW_EENSI_ISW_EEEEEENSD_INS2_19RemoteCommandBufferENSF_IS11_NSG_IS11_EENSI_IS11_EEEEEENSD_INS2_20RemoteCommandEncoderENSF_IS16_NSG_IS16_EENSI_IS16_EEEEEENSD_INS2_27RemoteCompositorIntegrationENSF_IS1B_NSG_IS1B_EENSI_IS1B_EEEEEENSD_INS2_24RemoteComputePassEncoderENSF_IS1G_NSG_IS1G_EENSI_IS1G_EEEEEENSD_INS2_21RemoteComputePipelineENSF_IS1L_NSG_IS1L_EENSI_IS1L_EEEEEENSD_INS2_12RemoteDeviceENSF_IS1Q_NSG_IS1Q_EENSI_IS1Q_EEEEEENSD_INS2_21RemoteExternalTextureENSF_IS1V_NSG_IS1V_EENSI_IS1V_EEEEEENSD_INS2_20RemotePipelineLayoutENSF_IS20_NSG_IS20_EENSI_IS20_EEEEEENSD_INS2_25RemotePresentationContextENSF_IS25_NSG_IS25_EENSI_IS25_EEEEEENSD_INS2_14RemoteQuerySetENSF_IS2A_NSG_IS2A_EENSI_IS2A_EEEEEENSD_INS2_11RemoteQueueENSF_IS2F_NSG_IS2F_EENSI_IS2F_EEEEEENSD_INS2_25RemoteRenderBundleEncoderENSF_IS2K_NSG_IS2K_EENSI_IS2K_EEEEEENSD_INS2_18RemoteRenderBundleENSF_IS2P_NSG_IS2P_EENSI_IS2P_EEEEEENSD_INS2_23RemoteRenderPassEncoderENSF_IS2U_NSG_IS2U_EENSI_IS2U_EEEEEENSD_INS2_20RemoteRenderPipelineENSF_IS2Z_NSG_IS2Z_EENSI_IS2Z_EEEEEENSD_INS2_13RemoteSamplerENSF_IS34_NSG_IS34_EENSI_IS34_EEEEEENSD_INS2_18RemoteShaderModuleENSF_IS39_NSG_IS39_EENSI_IS39_EEEEEENSD_INS2_13RemoteTextureENSF_IS3E_NSG_IS3E_EENSI_IS3E_EEEEEENSD_INS2_17RemoteTextureViewENSF_IS3J_NSG_IS3J_EENSI_IS3J_EEEEEENSD_INS2_15RemoteXRBindingENSF_IS3O_NSG_IS3O_EENSI_IS3O_EEEEEENSD_INS2_16RemoteXRSubImageENSF_IS3T_NSG_IS3T_EENSI_IS3T_EEEEEENSD_INS2_23RemoteXRProjectionLayerENSF_IS3Y_NSG_IS3Y_EENSI_IS3Y_EEEEEENSD_INS2_12RemoteXRViewENSF_IS43_NSG_IS43_EENSI_IS43_EEEEEEEEEEENS_24KeyValuePairKeyExtractorIS49_EENS_11DefaultHashIS6_EENS_7HashMapIS6_S48_S4D_NS_10HashTraitsIS6_EENS4F_IS48_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1ENS_10FastMallocEE18KeyValuePairTraitsES4G_S4K_E4findINS_22IdentityHashTranslatorIS4M_S4D_EELS4J_1ES6_EENS_17HashTableIteratorIS4N_S6_S49_S4B_S4D_S4M_S4G_EERKT1_((a1 + 24), &v11);
  v6 = *(a1 + 24);
  if (v6)
  {
    v6 += 3 * *(v6 - 1);
  }

  if (v6 != v5 && *(v5 + 16) == 8 && (v7 = *(v5[1] + 16)) != 0)
  {
    result = *(v7 + 8);
    if (result)
    {
      goto LABEL_11;
    }

    result = WTF::fastCompactMalloc(0x10);
    *result = 1;
    *(result + 8) = v7;
    v10 = *(v7 + 8);
    *(v7 + 8) = result;
    if (!v10)
    {
      goto LABEL_11;
    }

    if (atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v10);
      WTF::fastFree(v10, v9);
    }

    result = *(v7 + 8);
    if (result)
    {
LABEL_11:
      atomic_fetch_add(result, 1u);
    }
  }

  else
  {
    result = 0;
  }

  *a3 = result;
  return result;
}

char *WebKit::WebGPU::ObjectHeap::convertComputePipelineFromBacking@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, atomic_uint **a3@<X8>)
{
  v10 = a2;
  result = _ZN3WTF9HashTableINS_23ObjectIdentifierGenericIN6WebKit20WebGPUIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEENS_12KeyValuePairIS6_N5mpark7variantIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueINS2_13RemoteAdapterENS_6RefPtrISE_NS_12RawPtrTraitsISE_EENS_21DefaultRefDerefTraitsISE_EEEEEENSD_INS2_15RemoteBindGroupENSF_ISM_NSG_ISM_EENSI_ISM_EEEEEENSD_INS2_21RemoteBindGroupLayoutENSF_ISR_NSG_ISR_EENSI_ISR_EEEEEENSD_INS2_12RemoteBufferENSF_ISW_NSG_ISW_EENSI_ISW_EEEEEENSD_INS2_19RemoteCommandBufferENSF_IS11_NSG_IS11_EENSI_IS11_EEEEEENSD_INS2_20RemoteCommandEncoderENSF_IS16_NSG_IS16_EENSI_IS16_EEEEEENSD_INS2_27RemoteCompositorIntegrationENSF_IS1B_NSG_IS1B_EENSI_IS1B_EEEEEENSD_INS2_24RemoteComputePassEncoderENSF_IS1G_NSG_IS1G_EENSI_IS1G_EEEEEENSD_INS2_21RemoteComputePipelineENSF_IS1L_NSG_IS1L_EENSI_IS1L_EEEEEENSD_INS2_12RemoteDeviceENSF_IS1Q_NSG_IS1Q_EENSI_IS1Q_EEEEEENSD_INS2_21RemoteExternalTextureENSF_IS1V_NSG_IS1V_EENSI_IS1V_EEEEEENSD_INS2_20RemotePipelineLayoutENSF_IS20_NSG_IS20_EENSI_IS20_EEEEEENSD_INS2_25RemotePresentationContextENSF_IS25_NSG_IS25_EENSI_IS25_EEEEEENSD_INS2_14RemoteQuerySetENSF_IS2A_NSG_IS2A_EENSI_IS2A_EEEEEENSD_INS2_11RemoteQueueENSF_IS2F_NSG_IS2F_EENSI_IS2F_EEEEEENSD_INS2_25RemoteRenderBundleEncoderENSF_IS2K_NSG_IS2K_EENSI_IS2K_EEEEEENSD_INS2_18RemoteRenderBundleENSF_IS2P_NSG_IS2P_EENSI_IS2P_EEEEEENSD_INS2_23RemoteRenderPassEncoderENSF_IS2U_NSG_IS2U_EENSI_IS2U_EEEEEENSD_INS2_20RemoteRenderPipelineENSF_IS2Z_NSG_IS2Z_EENSI_IS2Z_EEEEEENSD_INS2_13RemoteSamplerENSF_IS34_NSG_IS34_EENSI_IS34_EEEEEENSD_INS2_18RemoteShaderModuleENSF_IS39_NSG_IS39_EENSI_IS39_EEEEEENSD_INS2_13RemoteTextureENSF_IS3E_NSG_IS3E_EENSI_IS3E_EEEEEENSD_INS2_17RemoteTextureViewENSF_IS3J_NSG_IS3J_EENSI_IS3J_EEEEEENSD_INS2_15RemoteXRBindingENSF_IS3O_NSG_IS3O_EENSI_IS3O_EEEEEENSD_INS2_16RemoteXRSubImageENSF_IS3T_NSG_IS3T_EENSI_IS3T_EEEEEENSD_INS2_23RemoteXRProjectionLayerENSF_IS3Y_NSG_IS3Y_EENSI_IS3Y_EEEEEENSD_INS2_12RemoteXRViewENSF_IS43_NSG_IS43_EENSI_IS43_EEEEEEEEEEENS_24KeyValuePairKeyExtractorIS49_EENS_11DefaultHashIS6_EENS_7HashMapIS6_S48_S4D_NS_10HashTraitsIS6_EENS4F_IS48_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1ENS_10FastMallocEE18KeyValuePairTraitsES4G_S4K_E4findINS_22IdentityHashTranslatorIS4M_S4D_EELS4J_1ES6_EENS_17HashTableIteratorIS4N_S6_S49_S4B_S4D_S4M_S4G_EERKT1_((a1 + 24), &v10);
  v6 = *(a1 + 24);
  if (v6)
  {
    v6 += 24 * *(v6 - 1);
  }

  if (v6 != result && result[16] == 9 && (v7 = *(result + 1), (v8 = *(v7 + 16)) != 0))
  {
    result = WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v8 + 8), *(v7 + 16));
    v9 = *(v8 + 8);
    if (v9)
    {
      atomic_fetch_add(v9, 1u);
    }
  }

  else
  {
    v9 = 0;
  }

  *a3 = v9;
  return result;
}

char *WebKit::WebGPU::ObjectHeap::convertDeviceFromBacking@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, atomic_uint **a3@<X8>)
{
  v10 = a2;
  result = _ZN3WTF9HashTableINS_23ObjectIdentifierGenericIN6WebKit20WebGPUIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEENS_12KeyValuePairIS6_N5mpark7variantIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueINS2_13RemoteAdapterENS_6RefPtrISE_NS_12RawPtrTraitsISE_EENS_21DefaultRefDerefTraitsISE_EEEEEENSD_INS2_15RemoteBindGroupENSF_ISM_NSG_ISM_EENSI_ISM_EEEEEENSD_INS2_21RemoteBindGroupLayoutENSF_ISR_NSG_ISR_EENSI_ISR_EEEEEENSD_INS2_12RemoteBufferENSF_ISW_NSG_ISW_EENSI_ISW_EEEEEENSD_INS2_19RemoteCommandBufferENSF_IS11_NSG_IS11_EENSI_IS11_EEEEEENSD_INS2_20RemoteCommandEncoderENSF_IS16_NSG_IS16_EENSI_IS16_EEEEEENSD_INS2_27RemoteCompositorIntegrationENSF_IS1B_NSG_IS1B_EENSI_IS1B_EEEEEENSD_INS2_24RemoteComputePassEncoderENSF_IS1G_NSG_IS1G_EENSI_IS1G_EEEEEENSD_INS2_21RemoteComputePipelineENSF_IS1L_NSG_IS1L_EENSI_IS1L_EEEEEENSD_INS2_12RemoteDeviceENSF_IS1Q_NSG_IS1Q_EENSI_IS1Q_EEEEEENSD_INS2_21RemoteExternalTextureENSF_IS1V_NSG_IS1V_EENSI_IS1V_EEEEEENSD_INS2_20RemotePipelineLayoutENSF_IS20_NSG_IS20_EENSI_IS20_EEEEEENSD_INS2_25RemotePresentationContextENSF_IS25_NSG_IS25_EENSI_IS25_EEEEEENSD_INS2_14RemoteQuerySetENSF_IS2A_NSG_IS2A_EENSI_IS2A_EEEEEENSD_INS2_11RemoteQueueENSF_IS2F_NSG_IS2F_EENSI_IS2F_EEEEEENSD_INS2_25RemoteRenderBundleEncoderENSF_IS2K_NSG_IS2K_EENSI_IS2K_EEEEEENSD_INS2_18RemoteRenderBundleENSF_IS2P_NSG_IS2P_EENSI_IS2P_EEEEEENSD_INS2_23RemoteRenderPassEncoderENSF_IS2U_NSG_IS2U_EENSI_IS2U_EEEEEENSD_INS2_20RemoteRenderPipelineENSF_IS2Z_NSG_IS2Z_EENSI_IS2Z_EEEEEENSD_INS2_13RemoteSamplerENSF_IS34_NSG_IS34_EENSI_IS34_EEEEEENSD_INS2_18RemoteShaderModuleENSF_IS39_NSG_IS39_EENSI_IS39_EEEEEENSD_INS2_13RemoteTextureENSF_IS3E_NSG_IS3E_EENSI_IS3E_EEEEEENSD_INS2_17RemoteTextureViewENSF_IS3J_NSG_IS3J_EENSI_IS3J_EEEEEENSD_INS2_15RemoteXRBindingENSF_IS3O_NSG_IS3O_EENSI_IS3O_EEEEEENSD_INS2_16RemoteXRSubImageENSF_IS3T_NSG_IS3T_EENSI_IS3T_EEEEEENSD_INS2_23RemoteXRProjectionLayerENSF_IS3Y_NSG_IS3Y_EENSI_IS3Y_EEEEEENSD_INS2_12RemoteXRViewENSF_IS43_NSG_IS43_EENSI_IS43_EEEEEEEEEEENS_24KeyValuePairKeyExtractorIS49_EENS_11DefaultHashIS6_EENS_7HashMapIS6_S48_S4D_NS_10HashTraitsIS6_EENS4F_IS48_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1ENS_10FastMallocEE18KeyValuePairTraitsES4G_S4K_E4findINS_22IdentityHashTranslatorIS4M_S4D_EELS4J_1ES6_EENS_17HashTableIteratorIS4N_S6_S49_S4B_S4D_S4M_S4G_EERKT1_((a1 + 24), &v10);
  v6 = *(a1 + 24);
  if (v6)
  {
    v6 += 24 * *(v6 - 1);
  }

  if (v6 != result && result[16] == 10 && (v7 = *(result + 1), (v8 = *(v7 + 16)) != 0))
  {
    result = WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v8 + 8), *(v7 + 16));
    v9 = *(v8 + 8);
    if (v9)
    {
      atomic_fetch_add(v9, 1u);
    }
  }

  else
  {
    v9 = 0;
  }

  *a3 = v9;
  return result;
}

uint64_t *WebKit::WebGPU::ObjectHeap::convertExternalTextureFromBacking@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = a2;
  result = _ZN3WTF9HashTableINS_23ObjectIdentifierGenericIN6WebKit20WebGPUIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEENS_12KeyValuePairIS6_N5mpark7variantIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueINS2_13RemoteAdapterENS_6RefPtrISE_NS_12RawPtrTraitsISE_EENS_21DefaultRefDerefTraitsISE_EEEEEENSD_INS2_15RemoteBindGroupENSF_ISM_NSG_ISM_EENSI_ISM_EEEEEENSD_INS2_21RemoteBindGroupLayoutENSF_ISR_NSG_ISR_EENSI_ISR_EEEEEENSD_INS2_12RemoteBufferENSF_ISW_NSG_ISW_EENSI_ISW_EEEEEENSD_INS2_19RemoteCommandBufferENSF_IS11_NSG_IS11_EENSI_IS11_EEEEEENSD_INS2_20RemoteCommandEncoderENSF_IS16_NSG_IS16_EENSI_IS16_EEEEEENSD_INS2_27RemoteCompositorIntegrationENSF_IS1B_NSG_IS1B_EENSI_IS1B_EEEEEENSD_INS2_24RemoteComputePassEncoderENSF_IS1G_NSG_IS1G_EENSI_IS1G_EEEEEENSD_INS2_21RemoteComputePipelineENSF_IS1L_NSG_IS1L_EENSI_IS1L_EEEEEENSD_INS2_12RemoteDeviceENSF_IS1Q_NSG_IS1Q_EENSI_IS1Q_EEEEEENSD_INS2_21RemoteExternalTextureENSF_IS1V_NSG_IS1V_EENSI_IS1V_EEEEEENSD_INS2_20RemotePipelineLayoutENSF_IS20_NSG_IS20_EENSI_IS20_EEEEEENSD_INS2_25RemotePresentationContextENSF_IS25_NSG_IS25_EENSI_IS25_EEEEEENSD_INS2_14RemoteQuerySetENSF_IS2A_NSG_IS2A_EENSI_IS2A_EEEEEENSD_INS2_11RemoteQueueENSF_IS2F_NSG_IS2F_EENSI_IS2F_EEEEEENSD_INS2_25RemoteRenderBundleEncoderENSF_IS2K_NSG_IS2K_EENSI_IS2K_EEEEEENSD_INS2_18RemoteRenderBundleENSF_IS2P_NSG_IS2P_EENSI_IS2P_EEEEEENSD_INS2_23RemoteRenderPassEncoderENSF_IS2U_NSG_IS2U_EENSI_IS2U_EEEEEENSD_INS2_20RemoteRenderPipelineENSF_IS2Z_NSG_IS2Z_EENSI_IS2Z_EEEEEENSD_INS2_13RemoteSamplerENSF_IS34_NSG_IS34_EENSI_IS34_EEEEEENSD_INS2_18RemoteShaderModuleENSF_IS39_NSG_IS39_EENSI_IS39_EEEEEENSD_INS2_13RemoteTextureENSF_IS3E_NSG_IS3E_EENSI_IS3E_EEEEEENSD_INS2_17RemoteTextureViewENSF_IS3J_NSG_IS3J_EENSI_IS3J_EEEEEENSD_INS2_15RemoteXRBindingENSF_IS3O_NSG_IS3O_EENSI_IS3O_EEEEEENSD_INS2_16RemoteXRSubImageENSF_IS3T_NSG_IS3T_EENSI_IS3T_EEEEEENSD_INS2_23RemoteXRProjectionLayerENSF_IS3Y_NSG_IS3Y_EENSI_IS3Y_EEEEEENSD_INS2_12RemoteXRViewENSF_IS43_NSG_IS43_EENSI_IS43_EEEEEEEEEEENS_24KeyValuePairKeyExtractorIS49_EENS_11DefaultHashIS6_EENS_7HashMapIS6_S48_S4D_NS_10HashTraitsIS6_EENS4F_IS48_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1ENS_10FastMallocEE18KeyValuePairTraitsES4G_S4K_E4findINS_22IdentityHashTranslatorIS4M_S4D_EELS4J_1ES6_EENS_17HashTableIteratorIS4N_S6_S49_S4B_S4D_S4M_S4G_EERKT1_((a1 + 24), &v7);
  v6 = *(a1 + 24);
  if (v6)
  {
    v6 += 3 * *(v6 - 1);
  }

  if (v6 != result && *(result + 16) == 11)
  {
    return WTF::ThreadSafeWeakPtr<WebCore::WebGPU::ExternalTexture,WTF::NoTaggingTraits<WebCore::WebGPU::ExternalTexture>>::ThreadSafeWeakPtr<WebCore::WebGPU::ExternalTexture>(a3, *(result[1] + 16));
  }

  *a3 = 0;
  a3[1] = 0;
  return result;
}

char *WebKit::WebGPU::ObjectHeap::convertPipelineLayoutFromBacking@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, atomic_uint **a3@<X8>)
{
  v10 = a2;
  result = _ZN3WTF9HashTableINS_23ObjectIdentifierGenericIN6WebKit20WebGPUIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEENS_12KeyValuePairIS6_N5mpark7variantIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueINS2_13RemoteAdapterENS_6RefPtrISE_NS_12RawPtrTraitsISE_EENS_21DefaultRefDerefTraitsISE_EEEEEENSD_INS2_15RemoteBindGroupENSF_ISM_NSG_ISM_EENSI_ISM_EEEEEENSD_INS2_21RemoteBindGroupLayoutENSF_ISR_NSG_ISR_EENSI_ISR_EEEEEENSD_INS2_12RemoteBufferENSF_ISW_NSG_ISW_EENSI_ISW_EEEEEENSD_INS2_19RemoteCommandBufferENSF_IS11_NSG_IS11_EENSI_IS11_EEEEEENSD_INS2_20RemoteCommandEncoderENSF_IS16_NSG_IS16_EENSI_IS16_EEEEEENSD_INS2_27RemoteCompositorIntegrationENSF_IS1B_NSG_IS1B_EENSI_IS1B_EEEEEENSD_INS2_24RemoteComputePassEncoderENSF_IS1G_NSG_IS1G_EENSI_IS1G_EEEEEENSD_INS2_21RemoteComputePipelineENSF_IS1L_NSG_IS1L_EENSI_IS1L_EEEEEENSD_INS2_12RemoteDeviceENSF_IS1Q_NSG_IS1Q_EENSI_IS1Q_EEEEEENSD_INS2_21RemoteExternalTextureENSF_IS1V_NSG_IS1V_EENSI_IS1V_EEEEEENSD_INS2_20RemotePipelineLayoutENSF_IS20_NSG_IS20_EENSI_IS20_EEEEEENSD_INS2_25RemotePresentationContextENSF_IS25_NSG_IS25_EENSI_IS25_EEEEEENSD_INS2_14RemoteQuerySetENSF_IS2A_NSG_IS2A_EENSI_IS2A_EEEEEENSD_INS2_11RemoteQueueENSF_IS2F_NSG_IS2F_EENSI_IS2F_EEEEEENSD_INS2_25RemoteRenderBundleEncoderENSF_IS2K_NSG_IS2K_EENSI_IS2K_EEEEEENSD_INS2_18RemoteRenderBundleENSF_IS2P_NSG_IS2P_EENSI_IS2P_EEEEEENSD_INS2_23RemoteRenderPassEncoderENSF_IS2U_NSG_IS2U_EENSI_IS2U_EEEEEENSD_INS2_20RemoteRenderPipelineENSF_IS2Z_NSG_IS2Z_EENSI_IS2Z_EEEEEENSD_INS2_13RemoteSamplerENSF_IS34_NSG_IS34_EENSI_IS34_EEEEEENSD_INS2_18RemoteShaderModuleENSF_IS39_NSG_IS39_EENSI_IS39_EEEEEENSD_INS2_13RemoteTextureENSF_IS3E_NSG_IS3E_EENSI_IS3E_EEEEEENSD_INS2_17RemoteTextureViewENSF_IS3J_NSG_IS3J_EENSI_IS3J_EEEEEENSD_INS2_15RemoteXRBindingENSF_IS3O_NSG_IS3O_EENSI_IS3O_EEEEEENSD_INS2_16RemoteXRSubImageENSF_IS3T_NSG_IS3T_EENSI_IS3T_EEEEEENSD_INS2_23RemoteXRProjectionLayerENSF_IS3Y_NSG_IS3Y_EENSI_IS3Y_EEEEEENSD_INS2_12RemoteXRViewENSF_IS43_NSG_IS43_EENSI_IS43_EEEEEEEEEEENS_24KeyValuePairKeyExtractorIS49_EENS_11DefaultHashIS6_EENS_7HashMapIS6_S48_S4D_NS_10HashTraitsIS6_EENS4F_IS48_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1ENS_10FastMallocEE18KeyValuePairTraitsES4G_S4K_E4findINS_22IdentityHashTranslatorIS4M_S4D_EELS4J_1ES6_EENS_17HashTableIteratorIS4N_S6_S49_S4B_S4D_S4M_S4G_EERKT1_((a1 + 24), &v10);
  v6 = *(a1 + 24);
  if (v6)
  {
    v6 += 24 * *(v6 - 1);
  }

  if (v6 != result && result[16] == 12 && (v7 = *(result + 1), (v8 = *(v7 + 16)) != 0))
  {
    result = WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v8 + 8), *(v7 + 16));
    v9 = *(v8 + 8);
    if (v9)
    {
      atomic_fetch_add(v9, 1u);
    }
  }

  else
  {
    v9 = 0;
  }

  *a3 = v9;
  return result;
}

uint64_t WebKit::WebGPU::ObjectHeap::convertPresentationContextFromBacking@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v11 = a2;
  v5 = _ZN3WTF9HashTableINS_23ObjectIdentifierGenericIN6WebKit20WebGPUIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEENS_12KeyValuePairIS6_N5mpark7variantIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueINS2_13RemoteAdapterENS_6RefPtrISE_NS_12RawPtrTraitsISE_EENS_21DefaultRefDerefTraitsISE_EEEEEENSD_INS2_15RemoteBindGroupENSF_ISM_NSG_ISM_EENSI_ISM_EEEEEENSD_INS2_21RemoteBindGroupLayoutENSF_ISR_NSG_ISR_EENSI_ISR_EEEEEENSD_INS2_12RemoteBufferENSF_ISW_NSG_ISW_EENSI_ISW_EEEEEENSD_INS2_19RemoteCommandBufferENSF_IS11_NSG_IS11_EENSI_IS11_EEEEEENSD_INS2_20RemoteCommandEncoderENSF_IS16_NSG_IS16_EENSI_IS16_EEEEEENSD_INS2_27RemoteCompositorIntegrationENSF_IS1B_NSG_IS1B_EENSI_IS1B_EEEEEENSD_INS2_24RemoteComputePassEncoderENSF_IS1G_NSG_IS1G_EENSI_IS1G_EEEEEENSD_INS2_21RemoteComputePipelineENSF_IS1L_NSG_IS1L_EENSI_IS1L_EEEEEENSD_INS2_12RemoteDeviceENSF_IS1Q_NSG_IS1Q_EENSI_IS1Q_EEEEEENSD_INS2_21RemoteExternalTextureENSF_IS1V_NSG_IS1V_EENSI_IS1V_EEEEEENSD_INS2_20RemotePipelineLayoutENSF_IS20_NSG_IS20_EENSI_IS20_EEEEEENSD_INS2_25RemotePresentationContextENSF_IS25_NSG_IS25_EENSI_IS25_EEEEEENSD_INS2_14RemoteQuerySetENSF_IS2A_NSG_IS2A_EENSI_IS2A_EEEEEENSD_INS2_11RemoteQueueENSF_IS2F_NSG_IS2F_EENSI_IS2F_EEEEEENSD_INS2_25RemoteRenderBundleEncoderENSF_IS2K_NSG_IS2K_EENSI_IS2K_EEEEEENSD_INS2_18RemoteRenderBundleENSF_IS2P_NSG_IS2P_EENSI_IS2P_EEEEEENSD_INS2_23RemoteRenderPassEncoderENSF_IS2U_NSG_IS2U_EENSI_IS2U_EEEEEENSD_INS2_20RemoteRenderPipelineENSF_IS2Z_NSG_IS2Z_EENSI_IS2Z_EEEEEENSD_INS2_13RemoteSamplerENSF_IS34_NSG_IS34_EENSI_IS34_EEEEEENSD_INS2_18RemoteShaderModuleENSF_IS39_NSG_IS39_EENSI_IS39_EEEEEENSD_INS2_13RemoteTextureENSF_IS3E_NSG_IS3E_EENSI_IS3E_EEEEEENSD_INS2_17RemoteTextureViewENSF_IS3J_NSG_IS3J_EENSI_IS3J_EEEEEENSD_INS2_15RemoteXRBindingENSF_IS3O_NSG_IS3O_EENSI_IS3O_EEEEEENSD_INS2_16RemoteXRSubImageENSF_IS3T_NSG_IS3T_EENSI_IS3T_EEEEEENSD_INS2_23RemoteXRProjectionLayerENSF_IS3Y_NSG_IS3Y_EENSI_IS3Y_EEEEEENSD_INS2_12RemoteXRViewENSF_IS43_NSG_IS43_EENSI_IS43_EEEEEEEEEEENS_24KeyValuePairKeyExtractorIS49_EENS_11DefaultHashIS6_EENS_7HashMapIS6_S48_S4D_NS_10HashTraitsIS6_EENS4F_IS48_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1ENS_10FastMallocEE18KeyValuePairTraitsES4G_S4K_E4findINS_22IdentityHashTranslatorIS4M_S4D_EELS4J_1ES6_EENS_17HashTableIteratorIS4N_S6_S49_S4B_S4D_S4M_S4G_EERKT1_((a1 + 24), &v11);
  v6 = *(a1 + 24);
  if (v6)
  {
    v6 += 3 * *(v6 - 1);
  }

  if (v6 != v5 && *(v5 + 16) == 13 && (v7 = *(v5[1] + 16)) != 0)
  {
    result = *(v7 + 8);
    if (result)
    {
      goto LABEL_11;
    }

    result = WTF::fastCompactMalloc(0x10);
    *result = 1;
    *(result + 8) = v7;
    v10 = *(v7 + 8);
    *(v7 + 8) = result;
    if (!v10)
    {
      goto LABEL_11;
    }

    if (atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v10);
      WTF::fastFree(v10, v9);
    }

    result = *(v7 + 8);
    if (result)
    {
LABEL_11:
      atomic_fetch_add(result, 1u);
    }
  }

  else
  {
    result = 0;
  }

  *a3 = result;
  return result;
}

char *WebKit::WebGPU::ObjectHeap::convertQuerySetFromBacking@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, atomic_uint **a3@<X8>)
{
  v10 = a2;
  result = _ZN3WTF9HashTableINS_23ObjectIdentifierGenericIN6WebKit20WebGPUIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEENS_12KeyValuePairIS6_N5mpark7variantIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueINS2_13RemoteAdapterENS_6RefPtrISE_NS_12RawPtrTraitsISE_EENS_21DefaultRefDerefTraitsISE_EEEEEENSD_INS2_15RemoteBindGroupENSF_ISM_NSG_ISM_EENSI_ISM_EEEEEENSD_INS2_21RemoteBindGroupLayoutENSF_ISR_NSG_ISR_EENSI_ISR_EEEEEENSD_INS2_12RemoteBufferENSF_ISW_NSG_ISW_EENSI_ISW_EEEEEENSD_INS2_19RemoteCommandBufferENSF_IS11_NSG_IS11_EENSI_IS11_EEEEEENSD_INS2_20RemoteCommandEncoderENSF_IS16_NSG_IS16_EENSI_IS16_EEEEEENSD_INS2_27RemoteCompositorIntegrationENSF_IS1B_NSG_IS1B_EENSI_IS1B_EEEEEENSD_INS2_24RemoteComputePassEncoderENSF_IS1G_NSG_IS1G_EENSI_IS1G_EEEEEENSD_INS2_21RemoteComputePipelineENSF_IS1L_NSG_IS1L_EENSI_IS1L_EEEEEENSD_INS2_12RemoteDeviceENSF_IS1Q_NSG_IS1Q_EENSI_IS1Q_EEEEEENSD_INS2_21RemoteExternalTextureENSF_IS1V_NSG_IS1V_EENSI_IS1V_EEEEEENSD_INS2_20RemotePipelineLayoutENSF_IS20_NSG_IS20_EENSI_IS20_EEEEEENSD_INS2_25RemotePresentationContextENSF_IS25_NSG_IS25_EENSI_IS25_EEEEEENSD_INS2_14RemoteQuerySetENSF_IS2A_NSG_IS2A_EENSI_IS2A_EEEEEENSD_INS2_11RemoteQueueENSF_IS2F_NSG_IS2F_EENSI_IS2F_EEEEEENSD_INS2_25RemoteRenderBundleEncoderENSF_IS2K_NSG_IS2K_EENSI_IS2K_EEEEEENSD_INS2_18RemoteRenderBundleENSF_IS2P_NSG_IS2P_EENSI_IS2P_EEEEEENSD_INS2_23RemoteRenderPassEncoderENSF_IS2U_NSG_IS2U_EENSI_IS2U_EEEEEENSD_INS2_20RemoteRenderPipelineENSF_IS2Z_NSG_IS2Z_EENSI_IS2Z_EEEEEENSD_INS2_13RemoteSamplerENSF_IS34_NSG_IS34_EENSI_IS34_EEEEEENSD_INS2_18RemoteShaderModuleENSF_IS39_NSG_IS39_EENSI_IS39_EEEEEENSD_INS2_13RemoteTextureENSF_IS3E_NSG_IS3E_EENSI_IS3E_EEEEEENSD_INS2_17RemoteTextureViewENSF_IS3J_NSG_IS3J_EENSI_IS3J_EEEEEENSD_INS2_15RemoteXRBindingENSF_IS3O_NSG_IS3O_EENSI_IS3O_EEEEEENSD_INS2_16RemoteXRSubImageENSF_IS3T_NSG_IS3T_EENSI_IS3T_EEEEEENSD_INS2_23RemoteXRProjectionLayerENSF_IS3Y_NSG_IS3Y_EENSI_IS3Y_EEEEEENSD_INS2_12RemoteXRViewENSF_IS43_NSG_IS43_EENSI_IS43_EEEEEEEEEEENS_24KeyValuePairKeyExtractorIS49_EENS_11DefaultHashIS6_EENS_7HashMapIS6_S48_S4D_NS_10HashTraitsIS6_EENS4F_IS48_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1ENS_10FastMallocEE18KeyValuePairTraitsES4G_S4K_E4findINS_22IdentityHashTranslatorIS4M_S4D_EELS4J_1ES6_EENS_17HashTableIteratorIS4N_S6_S49_S4B_S4D_S4M_S4G_EERKT1_((a1 + 24), &v10);
  v6 = *(a1 + 24);
  if (v6)
  {
    v6 += 24 * *(v6 - 1);
  }

  if (v6 != result && result[16] == 14 && (v7 = *(result + 1), (v8 = *(v7 + 16)) != 0))
  {
    result = WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v8 + 8), *(v7 + 16));
    v9 = *(v8 + 8);
    if (v9)
    {
      atomic_fetch_add(v9, 1u);
    }
  }

  else
  {
    v9 = 0;
  }

  *a3 = v9;
  return result;
}

uint64_t WebKit::WebGPU::ObjectHeap::convertQueueFromBacking@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v11 = a2;
  v5 = _ZN3WTF9HashTableINS_23ObjectIdentifierGenericIN6WebKit20WebGPUIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEENS_12KeyValuePairIS6_N5mpark7variantIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueINS2_13RemoteAdapterENS_6RefPtrISE_NS_12RawPtrTraitsISE_EENS_21DefaultRefDerefTraitsISE_EEEEEENSD_INS2_15RemoteBindGroupENSF_ISM_NSG_ISM_EENSI_ISM_EEEEEENSD_INS2_21RemoteBindGroupLayoutENSF_ISR_NSG_ISR_EENSI_ISR_EEEEEENSD_INS2_12RemoteBufferENSF_ISW_NSG_ISW_EENSI_ISW_EEEEEENSD_INS2_19RemoteCommandBufferENSF_IS11_NSG_IS11_EENSI_IS11_EEEEEENSD_INS2_20RemoteCommandEncoderENSF_IS16_NSG_IS16_EENSI_IS16_EEEEEENSD_INS2_27RemoteCompositorIntegrationENSF_IS1B_NSG_IS1B_EENSI_IS1B_EEEEEENSD_INS2_24RemoteComputePassEncoderENSF_IS1G_NSG_IS1G_EENSI_IS1G_EEEEEENSD_INS2_21RemoteComputePipelineENSF_IS1L_NSG_IS1L_EENSI_IS1L_EEEEEENSD_INS2_12RemoteDeviceENSF_IS1Q_NSG_IS1Q_EENSI_IS1Q_EEEEEENSD_INS2_21RemoteExternalTextureENSF_IS1V_NSG_IS1V_EENSI_IS1V_EEEEEENSD_INS2_20RemotePipelineLayoutENSF_IS20_NSG_IS20_EENSI_IS20_EEEEEENSD_INS2_25RemotePresentationContextENSF_IS25_NSG_IS25_EENSI_IS25_EEEEEENSD_INS2_14RemoteQuerySetENSF_IS2A_NSG_IS2A_EENSI_IS2A_EEEEEENSD_INS2_11RemoteQueueENSF_IS2F_NSG_IS2F_EENSI_IS2F_EEEEEENSD_INS2_25RemoteRenderBundleEncoderENSF_IS2K_NSG_IS2K_EENSI_IS2K_EEEEEENSD_INS2_18RemoteRenderBundleENSF_IS2P_NSG_IS2P_EENSI_IS2P_EEEEEENSD_INS2_23RemoteRenderPassEncoderENSF_IS2U_NSG_IS2U_EENSI_IS2U_EEEEEENSD_INS2_20RemoteRenderPipelineENSF_IS2Z_NSG_IS2Z_EENSI_IS2Z_EEEEEENSD_INS2_13RemoteSamplerENSF_IS34_NSG_IS34_EENSI_IS34_EEEEEENSD_INS2_18RemoteShaderModuleENSF_IS39_NSG_IS39_EENSI_IS39_EEEEEENSD_INS2_13RemoteTextureENSF_IS3E_NSG_IS3E_EENSI_IS3E_EEEEEENSD_INS2_17RemoteTextureViewENSF_IS3J_NSG_IS3J_EENSI_IS3J_EEEEEENSD_INS2_15RemoteXRBindingENSF_IS3O_NSG_IS3O_EENSI_IS3O_EEEEEENSD_INS2_16RemoteXRSubImageENSF_IS3T_NSG_IS3T_EENSI_IS3T_EEEEEENSD_INS2_23RemoteXRProjectionLayerENSF_IS3Y_NSG_IS3Y_EENSI_IS3Y_EEEEEENSD_INS2_12RemoteXRViewENSF_IS43_NSG_IS43_EENSI_IS43_EEEEEEEEEEENS_24KeyValuePairKeyExtractorIS49_EENS_11DefaultHashIS6_EENS_7HashMapIS6_S48_S4D_NS_10HashTraitsIS6_EENS4F_IS48_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1ENS_10FastMallocEE18KeyValuePairTraitsES4G_S4K_E4findINS_22IdentityHashTranslatorIS4M_S4D_EELS4J_1ES6_EENS_17HashTableIteratorIS4N_S6_S49_S4B_S4D_S4M_S4G_EERKT1_((a1 + 24), &v11);
  v6 = *(a1 + 24);
  if (v6)
  {
    v6 += 3 * *(v6 - 1);
  }

  if (v6 != v5 && *(v5 + 16) == 15 && (v7 = *(v5[1] + 16)) != 0)
  {
    result = *(v7 + 8);
    if (result)
    {
      goto LABEL_11;
    }

    result = WTF::fastCompactMalloc(0x10);
    *result = 1;
    *(result + 8) = v7;
    v10 = *(v7 + 8);
    *(v7 + 8) = result;
    if (!v10)
    {
      goto LABEL_11;
    }

    if (atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v10);
      WTF::fastFree(v10, v9);
    }

    result = *(v7 + 8);
    if (result)
    {
LABEL_11:
      atomic_fetch_add(result, 1u);
    }
  }

  else
  {
    result = 0;
  }

  *a3 = result;
  return result;
}

uint64_t WebKit::WebGPU::ObjectHeap::convertRenderBundleEncoderFromBacking@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v11 = a2;
  v5 = _ZN3WTF9HashTableINS_23ObjectIdentifierGenericIN6WebKit20WebGPUIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEENS_12KeyValuePairIS6_N5mpark7variantIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueINS2_13RemoteAdapterENS_6RefPtrISE_NS_12RawPtrTraitsISE_EENS_21DefaultRefDerefTraitsISE_EEEEEENSD_INS2_15RemoteBindGroupENSF_ISM_NSG_ISM_EENSI_ISM_EEEEEENSD_INS2_21RemoteBindGroupLayoutENSF_ISR_NSG_ISR_EENSI_ISR_EEEEEENSD_INS2_12RemoteBufferENSF_ISW_NSG_ISW_EENSI_ISW_EEEEEENSD_INS2_19RemoteCommandBufferENSF_IS11_NSG_IS11_EENSI_IS11_EEEEEENSD_INS2_20RemoteCommandEncoderENSF_IS16_NSG_IS16_EENSI_IS16_EEEEEENSD_INS2_27RemoteCompositorIntegrationENSF_IS1B_NSG_IS1B_EENSI_IS1B_EEEEEENSD_INS2_24RemoteComputePassEncoderENSF_IS1G_NSG_IS1G_EENSI_IS1G_EEEEEENSD_INS2_21RemoteComputePipelineENSF_IS1L_NSG_IS1L_EENSI_IS1L_EEEEEENSD_INS2_12RemoteDeviceENSF_IS1Q_NSG_IS1Q_EENSI_IS1Q_EEEEEENSD_INS2_21RemoteExternalTextureENSF_IS1V_NSG_IS1V_EENSI_IS1V_EEEEEENSD_INS2_20RemotePipelineLayoutENSF_IS20_NSG_IS20_EENSI_IS20_EEEEEENSD_INS2_25RemotePresentationContextENSF_IS25_NSG_IS25_EENSI_IS25_EEEEEENSD_INS2_14RemoteQuerySetENSF_IS2A_NSG_IS2A_EENSI_IS2A_EEEEEENSD_INS2_11RemoteQueueENSF_IS2F_NSG_IS2F_EENSI_IS2F_EEEEEENSD_INS2_25RemoteRenderBundleEncoderENSF_IS2K_NSG_IS2K_EENSI_IS2K_EEEEEENSD_INS2_18RemoteRenderBundleENSF_IS2P_NSG_IS2P_EENSI_IS2P_EEEEEENSD_INS2_23RemoteRenderPassEncoderENSF_IS2U_NSG_IS2U_EENSI_IS2U_EEEEEENSD_INS2_20RemoteRenderPipelineENSF_IS2Z_NSG_IS2Z_EENSI_IS2Z_EEEEEENSD_INS2_13RemoteSamplerENSF_IS34_NSG_IS34_EENSI_IS34_EEEEEENSD_INS2_18RemoteShaderModuleENSF_IS39_NSG_IS39_EENSI_IS39_EEEEEENSD_INS2_13RemoteTextureENSF_IS3E_NSG_IS3E_EENSI_IS3E_EEEEEENSD_INS2_17RemoteTextureViewENSF_IS3J_NSG_IS3J_EENSI_IS3J_EEEEEENSD_INS2_15RemoteXRBindingENSF_IS3O_NSG_IS3O_EENSI_IS3O_EEEEEENSD_INS2_16RemoteXRSubImageENSF_IS3T_NSG_IS3T_EENSI_IS3T_EEEEEENSD_INS2_23RemoteXRProjectionLayerENSF_IS3Y_NSG_IS3Y_EENSI_IS3Y_EEEEEENSD_INS2_12RemoteXRViewENSF_IS43_NSG_IS43_EENSI_IS43_EEEEEEEEEEENS_24KeyValuePairKeyExtractorIS49_EENS_11DefaultHashIS6_EENS_7HashMapIS6_S48_S4D_NS_10HashTraitsIS6_EENS4F_IS48_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1ENS_10FastMallocEE18KeyValuePairTraitsES4G_S4K_E4findINS_22IdentityHashTranslatorIS4M_S4D_EELS4J_1ES6_EENS_17HashTableIteratorIS4N_S6_S49_S4B_S4D_S4M_S4G_EERKT1_((a1 + 24), &v11);
  v6 = *(a1 + 24);
  if (v6)
  {
    v6 += 3 * *(v6 - 1);
  }

  if (v6 != v5 && *(v5 + 16) == 16 && (v7 = *(v5[1] + 16)) != 0)
  {
    result = *(v7 + 8);
    if (result)
    {
      goto LABEL_11;
    }

    result = WTF::fastCompactMalloc(0x10);
    *result = 1;
    *(result + 8) = v7;
    v10 = *(v7 + 8);
    *(v7 + 8) = result;
    if (!v10)
    {
      goto LABEL_11;
    }

    if (atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v10);
      WTF::fastFree(v10, v9);
    }

    result = *(v7 + 8);
    if (result)
    {
LABEL_11:
      atomic_fetch_add(result, 1u);
    }
  }

  else
  {
    result = 0;
  }

  *a3 = result;
  return result;
}

char *WebKit::WebGPU::ObjectHeap::convertRenderBundleFromBacking@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, atomic_uint **a3@<X8>)
{
  v10 = a2;
  result = _ZN3WTF9HashTableINS_23ObjectIdentifierGenericIN6WebKit20WebGPUIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEENS_12KeyValuePairIS6_N5mpark7variantIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueINS2_13RemoteAdapterENS_6RefPtrISE_NS_12RawPtrTraitsISE_EENS_21DefaultRefDerefTraitsISE_EEEEEENSD_INS2_15RemoteBindGroupENSF_ISM_NSG_ISM_EENSI_ISM_EEEEEENSD_INS2_21RemoteBindGroupLayoutENSF_ISR_NSG_ISR_EENSI_ISR_EEEEEENSD_INS2_12RemoteBufferENSF_ISW_NSG_ISW_EENSI_ISW_EEEEEENSD_INS2_19RemoteCommandBufferENSF_IS11_NSG_IS11_EENSI_IS11_EEEEEENSD_INS2_20RemoteCommandEncoderENSF_IS16_NSG_IS16_EENSI_IS16_EEEEEENSD_INS2_27RemoteCompositorIntegrationENSF_IS1B_NSG_IS1B_EENSI_IS1B_EEEEEENSD_INS2_24RemoteComputePassEncoderENSF_IS1G_NSG_IS1G_EENSI_IS1G_EEEEEENSD_INS2_21RemoteComputePipelineENSF_IS1L_NSG_IS1L_EENSI_IS1L_EEEEEENSD_INS2_12RemoteDeviceENSF_IS1Q_NSG_IS1Q_EENSI_IS1Q_EEEEEENSD_INS2_21RemoteExternalTextureENSF_IS1V_NSG_IS1V_EENSI_IS1V_EEEEEENSD_INS2_20RemotePipelineLayoutENSF_IS20_NSG_IS20_EENSI_IS20_EEEEEENSD_INS2_25RemotePresentationContextENSF_IS25_NSG_IS25_EENSI_IS25_EEEEEENSD_INS2_14RemoteQuerySetENSF_IS2A_NSG_IS2A_EENSI_IS2A_EEEEEENSD_INS2_11RemoteQueueENSF_IS2F_NSG_IS2F_EENSI_IS2F_EEEEEENSD_INS2_25RemoteRenderBundleEncoderENSF_IS2K_NSG_IS2K_EENSI_IS2K_EEEEEENSD_INS2_18RemoteRenderBundleENSF_IS2P_NSG_IS2P_EENSI_IS2P_EEEEEENSD_INS2_23RemoteRenderPassEncoderENSF_IS2U_NSG_IS2U_EENSI_IS2U_EEEEEENSD_INS2_20RemoteRenderPipelineENSF_IS2Z_NSG_IS2Z_EENSI_IS2Z_EEEEEENSD_INS2_13RemoteSamplerENSF_IS34_NSG_IS34_EENSI_IS34_EEEEEENSD_INS2_18RemoteShaderModuleENSF_IS39_NSG_IS39_EENSI_IS39_EEEEEENSD_INS2_13RemoteTextureENSF_IS3E_NSG_IS3E_EENSI_IS3E_EEEEEENSD_INS2_17RemoteTextureViewENSF_IS3J_NSG_IS3J_EENSI_IS3J_EEEEEENSD_INS2_15RemoteXRBindingENSF_IS3O_NSG_IS3O_EENSI_IS3O_EEEEEENSD_INS2_16RemoteXRSubImageENSF_IS3T_NSG_IS3T_EENSI_IS3T_EEEEEENSD_INS2_23RemoteXRProjectionLayerENSF_IS3Y_NSG_IS3Y_EENSI_IS3Y_EEEEEENSD_INS2_12RemoteXRViewENSF_IS43_NSG_IS43_EENSI_IS43_EEEEEEEEEEENS_24KeyValuePairKeyExtractorIS49_EENS_11DefaultHashIS6_EENS_7HashMapIS6_S48_S4D_NS_10HashTraitsIS6_EENS4F_IS48_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1ENS_10FastMallocEE18KeyValuePairTraitsES4G_S4K_E4findINS_22IdentityHashTranslatorIS4M_S4D_EELS4J_1ES6_EENS_17HashTableIteratorIS4N_S6_S49_S4B_S4D_S4M_S4G_EERKT1_((a1 + 24), &v10);
  v6 = *(a1 + 24);
  if (v6)
  {
    v6 += 24 * *(v6 - 1);
  }

  if (v6 != result && result[16] == 17 && (v7 = *(result + 1), (v8 = *(v7 + 16)) != 0))
  {
    result = WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v8 + 8), *(v7 + 16));
    v9 = *(v8 + 8);
    if (v9)
    {
      atomic_fetch_add(v9, 1u);
    }
  }

  else
  {
    v9 = 0;
  }

  *a3 = v9;
  return result;
}

uint64_t WebKit::WebGPU::ObjectHeap::convertRenderPassEncoderFromBacking@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v11 = a2;
  v5 = _ZN3WTF9HashTableINS_23ObjectIdentifierGenericIN6WebKit20WebGPUIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEENS_12KeyValuePairIS6_N5mpark7variantIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueINS2_13RemoteAdapterENS_6RefPtrISE_NS_12RawPtrTraitsISE_EENS_21DefaultRefDerefTraitsISE_EEEEEENSD_INS2_15RemoteBindGroupENSF_ISM_NSG_ISM_EENSI_ISM_EEEEEENSD_INS2_21RemoteBindGroupLayoutENSF_ISR_NSG_ISR_EENSI_ISR_EEEEEENSD_INS2_12RemoteBufferENSF_ISW_NSG_ISW_EENSI_ISW_EEEEEENSD_INS2_19RemoteCommandBufferENSF_IS11_NSG_IS11_EENSI_IS11_EEEEEENSD_INS2_20RemoteCommandEncoderENSF_IS16_NSG_IS16_EENSI_IS16_EEEEEENSD_INS2_27RemoteCompositorIntegrationENSF_IS1B_NSG_IS1B_EENSI_IS1B_EEEEEENSD_INS2_24RemoteComputePassEncoderENSF_IS1G_NSG_IS1G_EENSI_IS1G_EEEEEENSD_INS2_21RemoteComputePipelineENSF_IS1L_NSG_IS1L_EENSI_IS1L_EEEEEENSD_INS2_12RemoteDeviceENSF_IS1Q_NSG_IS1Q_EENSI_IS1Q_EEEEEENSD_INS2_21RemoteExternalTextureENSF_IS1V_NSG_IS1V_EENSI_IS1V_EEEEEENSD_INS2_20RemotePipelineLayoutENSF_IS20_NSG_IS20_EENSI_IS20_EEEEEENSD_INS2_25RemotePresentationContextENSF_IS25_NSG_IS25_EENSI_IS25_EEEEEENSD_INS2_14RemoteQuerySetENSF_IS2A_NSG_IS2A_EENSI_IS2A_EEEEEENSD_INS2_11RemoteQueueENSF_IS2F_NSG_IS2F_EENSI_IS2F_EEEEEENSD_INS2_25RemoteRenderBundleEncoderENSF_IS2K_NSG_IS2K_EENSI_IS2K_EEEEEENSD_INS2_18RemoteRenderBundleENSF_IS2P_NSG_IS2P_EENSI_IS2P_EEEEEENSD_INS2_23RemoteRenderPassEncoderENSF_IS2U_NSG_IS2U_EENSI_IS2U_EEEEEENSD_INS2_20RemoteRenderPipelineENSF_IS2Z_NSG_IS2Z_EENSI_IS2Z_EEEEEENSD_INS2_13RemoteSamplerENSF_IS34_NSG_IS34_EENSI_IS34_EEEEEENSD_INS2_18RemoteShaderModuleENSF_IS39_NSG_IS39_EENSI_IS39_EEEEEENSD_INS2_13RemoteTextureENSF_IS3E_NSG_IS3E_EENSI_IS3E_EEEEEENSD_INS2_17RemoteTextureViewENSF_IS3J_NSG_IS3J_EENSI_IS3J_EEEEEENSD_INS2_15RemoteXRBindingENSF_IS3O_NSG_IS3O_EENSI_IS3O_EEEEEENSD_INS2_16RemoteXRSubImageENSF_IS3T_NSG_IS3T_EENSI_IS3T_EEEEEENSD_INS2_23RemoteXRProjectionLayerENSF_IS3Y_NSG_IS3Y_EENSI_IS3Y_EEEEEENSD_INS2_12RemoteXRViewENSF_IS43_NSG_IS43_EENSI_IS43_EEEEEEEEEEENS_24KeyValuePairKeyExtractorIS49_EENS_11DefaultHashIS6_EENS_7HashMapIS6_S48_S4D_NS_10HashTraitsIS6_EENS4F_IS48_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1ENS_10FastMallocEE18KeyValuePairTraitsES4G_S4K_E4findINS_22IdentityHashTranslatorIS4M_S4D_EELS4J_1ES6_EENS_17HashTableIteratorIS4N_S6_S49_S4B_S4D_S4M_S4G_EERKT1_((a1 + 24), &v11);
  v6 = *(a1 + 24);
  if (v6)
  {
    v6 += 3 * *(v6 - 1);
  }

  if (v6 != v5 && *(v5 + 16) == 18 && (v7 = *(v5[1] + 16)) != 0)
  {
    result = *(v7 + 8);
    if (result)
    {
      goto LABEL_11;
    }

    result = WTF::fastCompactMalloc(0x10);
    *result = 1;
    *(result + 8) = v7;
    v10 = *(v7 + 8);
    *(v7 + 8) = result;
    if (!v10)
    {
      goto LABEL_11;
    }

    if (atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v10);
      WTF::fastFree(v10, v9);
    }

    result = *(v7 + 8);
    if (result)
    {
LABEL_11:
      atomic_fetch_add(result, 1u);
    }
  }

  else
  {
    result = 0;
  }

  *a3 = result;
  return result;
}

char *WebKit::WebGPU::ObjectHeap::convertRenderPipelineFromBacking@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, atomic_uint **a3@<X8>)
{
  v10 = a2;
  result = _ZN3WTF9HashTableINS_23ObjectIdentifierGenericIN6WebKit20WebGPUIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEENS_12KeyValuePairIS6_N5mpark7variantIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueINS2_13RemoteAdapterENS_6RefPtrISE_NS_12RawPtrTraitsISE_EENS_21DefaultRefDerefTraitsISE_EEEEEENSD_INS2_15RemoteBindGroupENSF_ISM_NSG_ISM_EENSI_ISM_EEEEEENSD_INS2_21RemoteBindGroupLayoutENSF_ISR_NSG_ISR_EENSI_ISR_EEEEEENSD_INS2_12RemoteBufferENSF_ISW_NSG_ISW_EENSI_ISW_EEEEEENSD_INS2_19RemoteCommandBufferENSF_IS11_NSG_IS11_EENSI_IS11_EEEEEENSD_INS2_20RemoteCommandEncoderENSF_IS16_NSG_IS16_EENSI_IS16_EEEEEENSD_INS2_27RemoteCompositorIntegrationENSF_IS1B_NSG_IS1B_EENSI_IS1B_EEEEEENSD_INS2_24RemoteComputePassEncoderENSF_IS1G_NSG_IS1G_EENSI_IS1G_EEEEEENSD_INS2_21RemoteComputePipelineENSF_IS1L_NSG_IS1L_EENSI_IS1L_EEEEEENSD_INS2_12RemoteDeviceENSF_IS1Q_NSG_IS1Q_EENSI_IS1Q_EEEEEENSD_INS2_21RemoteExternalTextureENSF_IS1V_NSG_IS1V_EENSI_IS1V_EEEEEENSD_INS2_20RemotePipelineLayoutENSF_IS20_NSG_IS20_EENSI_IS20_EEEEEENSD_INS2_25RemotePresentationContextENSF_IS25_NSG_IS25_EENSI_IS25_EEEEEENSD_INS2_14RemoteQuerySetENSF_IS2A_NSG_IS2A_EENSI_IS2A_EEEEEENSD_INS2_11RemoteQueueENSF_IS2F_NSG_IS2F_EENSI_IS2F_EEEEEENSD_INS2_25RemoteRenderBundleEncoderENSF_IS2K_NSG_IS2K_EENSI_IS2K_EEEEEENSD_INS2_18RemoteRenderBundleENSF_IS2P_NSG_IS2P_EENSI_IS2P_EEEEEENSD_INS2_23RemoteRenderPassEncoderENSF_IS2U_NSG_IS2U_EENSI_IS2U_EEEEEENSD_INS2_20RemoteRenderPipelineENSF_IS2Z_NSG_IS2Z_EENSI_IS2Z_EEEEEENSD_INS2_13RemoteSamplerENSF_IS34_NSG_IS34_EENSI_IS34_EEEEEENSD_INS2_18RemoteShaderModuleENSF_IS39_NSG_IS39_EENSI_IS39_EEEEEENSD_INS2_13RemoteTextureENSF_IS3E_NSG_IS3E_EENSI_IS3E_EEEEEENSD_INS2_17RemoteTextureViewENSF_IS3J_NSG_IS3J_EENSI_IS3J_EEEEEENSD_INS2_15RemoteXRBindingENSF_IS3O_NSG_IS3O_EENSI_IS3O_EEEEEENSD_INS2_16RemoteXRSubImageENSF_IS3T_NSG_IS3T_EENSI_IS3T_EEEEEENSD_INS2_23RemoteXRProjectionLayerENSF_IS3Y_NSG_IS3Y_EENSI_IS3Y_EEEEEENSD_INS2_12RemoteXRViewENSF_IS43_NSG_IS43_EENSI_IS43_EEEEEEEEEEENS_24KeyValuePairKeyExtractorIS49_EENS_11DefaultHashIS6_EENS_7HashMapIS6_S48_S4D_NS_10HashTraitsIS6_EENS4F_IS48_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1ENS_10FastMallocEE18KeyValuePairTraitsES4G_S4K_E4findINS_22IdentityHashTranslatorIS4M_S4D_EELS4J_1ES6_EENS_17HashTableIteratorIS4N_S6_S49_S4B_S4D_S4M_S4G_EERKT1_((a1 + 24), &v10);
  v6 = *(a1 + 24);
  if (v6)
  {
    v6 += 24 * *(v6 - 1);
  }

  if (v6 != result && result[16] == 19 && (v7 = *(result + 1), (v8 = *(v7 + 16)) != 0))
  {
    result = WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v8 + 8), *(v7 + 16));
    v9 = *(v8 + 8);
    if (v9)
    {
      atomic_fetch_add(v9, 1u);
    }
  }

  else
  {
    v9 = 0;
  }

  *a3 = v9;
  return result;
}

uint64_t WebKit::WebGPU::ObjectHeap::convertSamplerFromBacking@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v11 = a2;
  v5 = _ZN3WTF9HashTableINS_23ObjectIdentifierGenericIN6WebKit20WebGPUIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEENS_12KeyValuePairIS6_N5mpark7variantIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueINS2_13RemoteAdapterENS_6RefPtrISE_NS_12RawPtrTraitsISE_EENS_21DefaultRefDerefTraitsISE_EEEEEENSD_INS2_15RemoteBindGroupENSF_ISM_NSG_ISM_EENSI_ISM_EEEEEENSD_INS2_21RemoteBindGroupLayoutENSF_ISR_NSG_ISR_EENSI_ISR_EEEEEENSD_INS2_12RemoteBufferENSF_ISW_NSG_ISW_EENSI_ISW_EEEEEENSD_INS2_19RemoteCommandBufferENSF_IS11_NSG_IS11_EENSI_IS11_EEEEEENSD_INS2_20RemoteCommandEncoderENSF_IS16_NSG_IS16_EENSI_IS16_EEEEEENSD_INS2_27RemoteCompositorIntegrationENSF_IS1B_NSG_IS1B_EENSI_IS1B_EEEEEENSD_INS2_24RemoteComputePassEncoderENSF_IS1G_NSG_IS1G_EENSI_IS1G_EEEEEENSD_INS2_21RemoteComputePipelineENSF_IS1L_NSG_IS1L_EENSI_IS1L_EEEEEENSD_INS2_12RemoteDeviceENSF_IS1Q_NSG_IS1Q_EENSI_IS1Q_EEEEEENSD_INS2_21RemoteExternalTextureENSF_IS1V_NSG_IS1V_EENSI_IS1V_EEEEEENSD_INS2_20RemotePipelineLayoutENSF_IS20_NSG_IS20_EENSI_IS20_EEEEEENSD_INS2_25RemotePresentationContextENSF_IS25_NSG_IS25_EENSI_IS25_EEEEEENSD_INS2_14RemoteQuerySetENSF_IS2A_NSG_IS2A_EENSI_IS2A_EEEEEENSD_INS2_11RemoteQueueENSF_IS2F_NSG_IS2F_EENSI_IS2F_EEEEEENSD_INS2_25RemoteRenderBundleEncoderENSF_IS2K_NSG_IS2K_EENSI_IS2K_EEEEEENSD_INS2_18RemoteRenderBundleENSF_IS2P_NSG_IS2P_EENSI_IS2P_EEEEEENSD_INS2_23RemoteRenderPassEncoderENSF_IS2U_NSG_IS2U_EENSI_IS2U_EEEEEENSD_INS2_20RemoteRenderPipelineENSF_IS2Z_NSG_IS2Z_EENSI_IS2Z_EEEEEENSD_INS2_13RemoteSamplerENSF_IS34_NSG_IS34_EENSI_IS34_EEEEEENSD_INS2_18RemoteShaderModuleENSF_IS39_NSG_IS39_EENSI_IS39_EEEEEENSD_INS2_13RemoteTextureENSF_IS3E_NSG_IS3E_EENSI_IS3E_EEEEEENSD_INS2_17RemoteTextureViewENSF_IS3J_NSG_IS3J_EENSI_IS3J_EEEEEENSD_INS2_15RemoteXRBindingENSF_IS3O_NSG_IS3O_EENSI_IS3O_EEEEEENSD_INS2_16RemoteXRSubImageENSF_IS3T_NSG_IS3T_EENSI_IS3T_EEEEEENSD_INS2_23RemoteXRProjectionLayerENSF_IS3Y_NSG_IS3Y_EENSI_IS3Y_EEEEEENSD_INS2_12RemoteXRViewENSF_IS43_NSG_IS43_EENSI_IS43_EEEEEEEEEEENS_24KeyValuePairKeyExtractorIS49_EENS_11DefaultHashIS6_EENS_7HashMapIS6_S48_S4D_NS_10HashTraitsIS6_EENS4F_IS48_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1ENS_10FastMallocEE18KeyValuePairTraitsES4G_S4K_E4findINS_22IdentityHashTranslatorIS4M_S4D_EELS4J_1ES6_EENS_17HashTableIteratorIS4N_S6_S49_S4B_S4D_S4M_S4G_EERKT1_((a1 + 24), &v11);
  v6 = *(a1 + 24);
  if (v6)
  {
    v6 += 3 * *(v6 - 1);
  }

  if (v6 != v5 && *(v5 + 16) == 20 && (v7 = *(v5[1] + 16)) != 0)
  {
    result = *(v7 + 8);
    if (result)
    {
      goto LABEL_11;
    }

    result = WTF::fastCompactMalloc(0x10);
    *result = 1;
    *(result + 8) = v7;
    v10 = *(v7 + 8);
    *(v7 + 8) = result;
    if (!v10)
    {
      goto LABEL_11;
    }

    if (atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v10);
      WTF::fastFree(v10, v9);
    }

    result = *(v7 + 8);
    if (result)
    {
LABEL_11:
      atomic_fetch_add(result, 1u);
    }
  }

  else
  {
    result = 0;
  }

  *a3 = result;
  return result;
}

char *WebKit::WebGPU::ObjectHeap::convertShaderModuleFromBacking@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, atomic_uint **a3@<X8>)
{
  v10 = a2;
  result = _ZN3WTF9HashTableINS_23ObjectIdentifierGenericIN6WebKit20WebGPUIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEENS_12KeyValuePairIS6_N5mpark7variantIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueINS2_13RemoteAdapterENS_6RefPtrISE_NS_12RawPtrTraitsISE_EENS_21DefaultRefDerefTraitsISE_EEEEEENSD_INS2_15RemoteBindGroupENSF_ISM_NSG_ISM_EENSI_ISM_EEEEEENSD_INS2_21RemoteBindGroupLayoutENSF_ISR_NSG_ISR_EENSI_ISR_EEEEEENSD_INS2_12RemoteBufferENSF_ISW_NSG_ISW_EENSI_ISW_EEEEEENSD_INS2_19RemoteCommandBufferENSF_IS11_NSG_IS11_EENSI_IS11_EEEEEENSD_INS2_20RemoteCommandEncoderENSF_IS16_NSG_IS16_EENSI_IS16_EEEEEENSD_INS2_27RemoteCompositorIntegrationENSF_IS1B_NSG_IS1B_EENSI_IS1B_EEEEEENSD_INS2_24RemoteComputePassEncoderENSF_IS1G_NSG_IS1G_EENSI_IS1G_EEEEEENSD_INS2_21RemoteComputePipelineENSF_IS1L_NSG_IS1L_EENSI_IS1L_EEEEEENSD_INS2_12RemoteDeviceENSF_IS1Q_NSG_IS1Q_EENSI_IS1Q_EEEEEENSD_INS2_21RemoteExternalTextureENSF_IS1V_NSG_IS1V_EENSI_IS1V_EEEEEENSD_INS2_20RemotePipelineLayoutENSF_IS20_NSG_IS20_EENSI_IS20_EEEEEENSD_INS2_25RemotePresentationContextENSF_IS25_NSG_IS25_EENSI_IS25_EEEEEENSD_INS2_14RemoteQuerySetENSF_IS2A_NSG_IS2A_EENSI_IS2A_EEEEEENSD_INS2_11RemoteQueueENSF_IS2F_NSG_IS2F_EENSI_IS2F_EEEEEENSD_INS2_25RemoteRenderBundleEncoderENSF_IS2K_NSG_IS2K_EENSI_IS2K_EEEEEENSD_INS2_18RemoteRenderBundleENSF_IS2P_NSG_IS2P_EENSI_IS2P_EEEEEENSD_INS2_23RemoteRenderPassEncoderENSF_IS2U_NSG_IS2U_EENSI_IS2U_EEEEEENSD_INS2_20RemoteRenderPipelineENSF_IS2Z_NSG_IS2Z_EENSI_IS2Z_EEEEEENSD_INS2_13RemoteSamplerENSF_IS34_NSG_IS34_EENSI_IS34_EEEEEENSD_INS2_18RemoteShaderModuleENSF_IS39_NSG_IS39_EENSI_IS39_EEEEEENSD_INS2_13RemoteTextureENSF_IS3E_NSG_IS3E_EENSI_IS3E_EEEEEENSD_INS2_17RemoteTextureViewENSF_IS3J_NSG_IS3J_EENSI_IS3J_EEEEEENSD_INS2_15RemoteXRBindingENSF_IS3O_NSG_IS3O_EENSI_IS3O_EEEEEENSD_INS2_16RemoteXRSubImageENSF_IS3T_NSG_IS3T_EENSI_IS3T_EEEEEENSD_INS2_23RemoteXRProjectionLayerENSF_IS3Y_NSG_IS3Y_EENSI_IS3Y_EEEEEENSD_INS2_12RemoteXRViewENSF_IS43_NSG_IS43_EENSI_IS43_EEEEEEEEEEENS_24KeyValuePairKeyExtractorIS49_EENS_11DefaultHashIS6_EENS_7HashMapIS6_S48_S4D_NS_10HashTraitsIS6_EENS4F_IS48_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1ENS_10FastMallocEE18KeyValuePairTraitsES4G_S4K_E4findINS_22IdentityHashTranslatorIS4M_S4D_EELS4J_1ES6_EENS_17HashTableIteratorIS4N_S6_S49_S4B_S4D_S4M_S4G_EERKT1_((a1 + 24), &v10);
  v6 = *(a1 + 24);
  if (v6)
  {
    v6 += 24 * *(v6 - 1);
  }

  if (v6 != result && result[16] == 21 && (v7 = *(result + 1), (v8 = *(v7 + 16)) != 0))
  {
    result = WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v8 + 8), *(v7 + 16));
    v9 = *(v8 + 8);
    if (v9)
    {
      atomic_fetch_add(v9, 1u);
    }
  }

  else
  {
    v9 = 0;
  }

  *a3 = v9;
  return result;
}

char *WebKit::WebGPU::ObjectHeap::convertTextureFromBacking@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, atomic_uint **a3@<X8>)
{
  v10 = a2;
  result = _ZN3WTF9HashTableINS_23ObjectIdentifierGenericIN6WebKit20WebGPUIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEENS_12KeyValuePairIS6_N5mpark7variantIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueINS2_13RemoteAdapterENS_6RefPtrISE_NS_12RawPtrTraitsISE_EENS_21DefaultRefDerefTraitsISE_EEEEEENSD_INS2_15RemoteBindGroupENSF_ISM_NSG_ISM_EENSI_ISM_EEEEEENSD_INS2_21RemoteBindGroupLayoutENSF_ISR_NSG_ISR_EENSI_ISR_EEEEEENSD_INS2_12RemoteBufferENSF_ISW_NSG_ISW_EENSI_ISW_EEEEEENSD_INS2_19RemoteCommandBufferENSF_IS11_NSG_IS11_EENSI_IS11_EEEEEENSD_INS2_20RemoteCommandEncoderENSF_IS16_NSG_IS16_EENSI_IS16_EEEEEENSD_INS2_27RemoteCompositorIntegrationENSF_IS1B_NSG_IS1B_EENSI_IS1B_EEEEEENSD_INS2_24RemoteComputePassEncoderENSF_IS1G_NSG_IS1G_EENSI_IS1G_EEEEEENSD_INS2_21RemoteComputePipelineENSF_IS1L_NSG_IS1L_EENSI_IS1L_EEEEEENSD_INS2_12RemoteDeviceENSF_IS1Q_NSG_IS1Q_EENSI_IS1Q_EEEEEENSD_INS2_21RemoteExternalTextureENSF_IS1V_NSG_IS1V_EENSI_IS1V_EEEEEENSD_INS2_20RemotePipelineLayoutENSF_IS20_NSG_IS20_EENSI_IS20_EEEEEENSD_INS2_25RemotePresentationContextENSF_IS25_NSG_IS25_EENSI_IS25_EEEEEENSD_INS2_14RemoteQuerySetENSF_IS2A_NSG_IS2A_EENSI_IS2A_EEEEEENSD_INS2_11RemoteQueueENSF_IS2F_NSG_IS2F_EENSI_IS2F_EEEEEENSD_INS2_25RemoteRenderBundleEncoderENSF_IS2K_NSG_IS2K_EENSI_IS2K_EEEEEENSD_INS2_18RemoteRenderBundleENSF_IS2P_NSG_IS2P_EENSI_IS2P_EEEEEENSD_INS2_23RemoteRenderPassEncoderENSF_IS2U_NSG_IS2U_EENSI_IS2U_EEEEEENSD_INS2_20RemoteRenderPipelineENSF_IS2Z_NSG_IS2Z_EENSI_IS2Z_EEEEEENSD_INS2_13RemoteSamplerENSF_IS34_NSG_IS34_EENSI_IS34_EEEEEENSD_INS2_18RemoteShaderModuleENSF_IS39_NSG_IS39_EENSI_IS39_EEEEEENSD_INS2_13RemoteTextureENSF_IS3E_NSG_IS3E_EENSI_IS3E_EEEEEENSD_INS2_17RemoteTextureViewENSF_IS3J_NSG_IS3J_EENSI_IS3J_EEEEEENSD_INS2_15RemoteXRBindingENSF_IS3O_NSG_IS3O_EENSI_IS3O_EEEEEENSD_INS2_16RemoteXRSubImageENSF_IS3T_NSG_IS3T_EENSI_IS3T_EEEEEENSD_INS2_23RemoteXRProjectionLayerENSF_IS3Y_NSG_IS3Y_EENSI_IS3Y_EEEEEENSD_INS2_12RemoteXRViewENSF_IS43_NSG_IS43_EENSI_IS43_EEEEEEEEEEENS_24KeyValuePairKeyExtractorIS49_EENS_11DefaultHashIS6_EENS_7HashMapIS6_S48_S4D_NS_10HashTraitsIS6_EENS4F_IS48_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1ENS_10FastMallocEE18KeyValuePairTraitsES4G_S4K_E4findINS_22IdentityHashTranslatorIS4M_S4D_EELS4J_1ES6_EENS_17HashTableIteratorIS4N_S6_S49_S4B_S4D_S4M_S4G_EERKT1_((a1 + 24), &v10);
  v6 = *(a1 + 24);
  if (v6)
  {
    v6 += 24 * *(v6 - 1);
  }

  if (v6 != result && result[16] == 22 && (v7 = *(result + 1), (v8 = *(v7 + 16)) != 0))
  {
    result = WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v8 + 8), *(v7 + 16));
    v9 = *(v8 + 8);
    if (v9)
    {
      atomic_fetch_add(v9, 1u);
    }
  }

  else
  {
    v9 = 0;
  }

  *a3 = v9;
  return result;
}

char *WebKit::WebGPU::ObjectHeap::convertTextureViewFromBacking@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, atomic_uint **a3@<X8>)
{
  v10 = a2;
  result = _ZN3WTF9HashTableINS_23ObjectIdentifierGenericIN6WebKit20WebGPUIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEENS_12KeyValuePairIS6_N5mpark7variantIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueINS2_13RemoteAdapterENS_6RefPtrISE_NS_12RawPtrTraitsISE_EENS_21DefaultRefDerefTraitsISE_EEEEEENSD_INS2_15RemoteBindGroupENSF_ISM_NSG_ISM_EENSI_ISM_EEEEEENSD_INS2_21RemoteBindGroupLayoutENSF_ISR_NSG_ISR_EENSI_ISR_EEEEEENSD_INS2_12RemoteBufferENSF_ISW_NSG_ISW_EENSI_ISW_EEEEEENSD_INS2_19RemoteCommandBufferENSF_IS11_NSG_IS11_EENSI_IS11_EEEEEENSD_INS2_20RemoteCommandEncoderENSF_IS16_NSG_IS16_EENSI_IS16_EEEEEENSD_INS2_27RemoteCompositorIntegrationENSF_IS1B_NSG_IS1B_EENSI_IS1B_EEEEEENSD_INS2_24RemoteComputePassEncoderENSF_IS1G_NSG_IS1G_EENSI_IS1G_EEEEEENSD_INS2_21RemoteComputePipelineENSF_IS1L_NSG_IS1L_EENSI_IS1L_EEEEEENSD_INS2_12RemoteDeviceENSF_IS1Q_NSG_IS1Q_EENSI_IS1Q_EEEEEENSD_INS2_21RemoteExternalTextureENSF_IS1V_NSG_IS1V_EENSI_IS1V_EEEEEENSD_INS2_20RemotePipelineLayoutENSF_IS20_NSG_IS20_EENSI_IS20_EEEEEENSD_INS2_25RemotePresentationContextENSF_IS25_NSG_IS25_EENSI_IS25_EEEEEENSD_INS2_14RemoteQuerySetENSF_IS2A_NSG_IS2A_EENSI_IS2A_EEEEEENSD_INS2_11RemoteQueueENSF_IS2F_NSG_IS2F_EENSI_IS2F_EEEEEENSD_INS2_25RemoteRenderBundleEncoderENSF_IS2K_NSG_IS2K_EENSI_IS2K_EEEEEENSD_INS2_18RemoteRenderBundleENSF_IS2P_NSG_IS2P_EENSI_IS2P_EEEEEENSD_INS2_23RemoteRenderPassEncoderENSF_IS2U_NSG_IS2U_EENSI_IS2U_EEEEEENSD_INS2_20RemoteRenderPipelineENSF_IS2Z_NSG_IS2Z_EENSI_IS2Z_EEEEEENSD_INS2_13RemoteSamplerENSF_IS34_NSG_IS34_EENSI_IS34_EEEEEENSD_INS2_18RemoteShaderModuleENSF_IS39_NSG_IS39_EENSI_IS39_EEEEEENSD_INS2_13RemoteTextureENSF_IS3E_NSG_IS3E_EENSI_IS3E_EEEEEENSD_INS2_17RemoteTextureViewENSF_IS3J_NSG_IS3J_EENSI_IS3J_EEEEEENSD_INS2_15RemoteXRBindingENSF_IS3O_NSG_IS3O_EENSI_IS3O_EEEEEENSD_INS2_16RemoteXRSubImageENSF_IS3T_NSG_IS3T_EENSI_IS3T_EEEEEENSD_INS2_23RemoteXRProjectionLayerENSF_IS3Y_NSG_IS3Y_EENSI_IS3Y_EEEEEENSD_INS2_12RemoteXRViewENSF_IS43_NSG_IS43_EENSI_IS43_EEEEEEEEEEENS_24KeyValuePairKeyExtractorIS49_EENS_11DefaultHashIS6_EENS_7HashMapIS6_S48_S4D_NS_10HashTraitsIS6_EENS4F_IS48_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1ENS_10FastMallocEE18KeyValuePairTraitsES4G_S4K_E4findINS_22IdentityHashTranslatorIS4M_S4D_EELS4J_1ES6_EENS_17HashTableIteratorIS4N_S6_S49_S4B_S4D_S4M_S4G_EERKT1_((a1 + 24), &v10);
  v6 = *(a1 + 24);
  if (v6)
  {
    v6 += 24 * *(v6 - 1);
  }

  if (v6 != result && result[16] == 23 && (v7 = *(result + 1), (v8 = *(v7 + 16)) != 0))
  {
    result = WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v8 + 8), *(v7 + 16));
    v9 = *(v8 + 8);
    if (v9)
    {
      atomic_fetch_add(v9, 1u);
    }
  }

  else
  {
    v9 = 0;
  }

  *a3 = v9;
  return result;
}

uint64_t WebKit::WebGPU::ObjectHeap::convertXRBindingFromBacking@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v11 = a2;
  v5 = _ZN3WTF9HashTableINS_23ObjectIdentifierGenericIN6WebKit20WebGPUIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEENS_12KeyValuePairIS6_N5mpark7variantIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueINS2_13RemoteAdapterENS_6RefPtrISE_NS_12RawPtrTraitsISE_EENS_21DefaultRefDerefTraitsISE_EEEEEENSD_INS2_15RemoteBindGroupENSF_ISM_NSG_ISM_EENSI_ISM_EEEEEENSD_INS2_21RemoteBindGroupLayoutENSF_ISR_NSG_ISR_EENSI_ISR_EEEEEENSD_INS2_12RemoteBufferENSF_ISW_NSG_ISW_EENSI_ISW_EEEEEENSD_INS2_19RemoteCommandBufferENSF_IS11_NSG_IS11_EENSI_IS11_EEEEEENSD_INS2_20RemoteCommandEncoderENSF_IS16_NSG_IS16_EENSI_IS16_EEEEEENSD_INS2_27RemoteCompositorIntegrationENSF_IS1B_NSG_IS1B_EENSI_IS1B_EEEEEENSD_INS2_24RemoteComputePassEncoderENSF_IS1G_NSG_IS1G_EENSI_IS1G_EEEEEENSD_INS2_21RemoteComputePipelineENSF_IS1L_NSG_IS1L_EENSI_IS1L_EEEEEENSD_INS2_12RemoteDeviceENSF_IS1Q_NSG_IS1Q_EENSI_IS1Q_EEEEEENSD_INS2_21RemoteExternalTextureENSF_IS1V_NSG_IS1V_EENSI_IS1V_EEEEEENSD_INS2_20RemotePipelineLayoutENSF_IS20_NSG_IS20_EENSI_IS20_EEEEEENSD_INS2_25RemotePresentationContextENSF_IS25_NSG_IS25_EENSI_IS25_EEEEEENSD_INS2_14RemoteQuerySetENSF_IS2A_NSG_IS2A_EENSI_IS2A_EEEEEENSD_INS2_11RemoteQueueENSF_IS2F_NSG_IS2F_EENSI_IS2F_EEEEEENSD_INS2_25RemoteRenderBundleEncoderENSF_IS2K_NSG_IS2K_EENSI_IS2K_EEEEEENSD_INS2_18RemoteRenderBundleENSF_IS2P_NSG_IS2P_EENSI_IS2P_EEEEEENSD_INS2_23RemoteRenderPassEncoderENSF_IS2U_NSG_IS2U_EENSI_IS2U_EEEEEENSD_INS2_20RemoteRenderPipelineENSF_IS2Z_NSG_IS2Z_EENSI_IS2Z_EEEEEENSD_INS2_13RemoteSamplerENSF_IS34_NSG_IS34_EENSI_IS34_EEEEEENSD_INS2_18RemoteShaderModuleENSF_IS39_NSG_IS39_EENSI_IS39_EEEEEENSD_INS2_13RemoteTextureENSF_IS3E_NSG_IS3E_EENSI_IS3E_EEEEEENSD_INS2_17RemoteTextureViewENSF_IS3J_NSG_IS3J_EENSI_IS3J_EEEEEENSD_INS2_15RemoteXRBindingENSF_IS3O_NSG_IS3O_EENSI_IS3O_EEEEEENSD_INS2_16RemoteXRSubImageENSF_IS3T_NSG_IS3T_EENSI_IS3T_EEEEEENSD_INS2_23RemoteXRProjectionLayerENSF_IS3Y_NSG_IS3Y_EENSI_IS3Y_EEEEEENSD_INS2_12RemoteXRViewENSF_IS43_NSG_IS43_EENSI_IS43_EEEEEEEEEEENS_24KeyValuePairKeyExtractorIS49_EENS_11DefaultHashIS6_EENS_7HashMapIS6_S48_S4D_NS_10HashTraitsIS6_EENS4F_IS48_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1ENS_10FastMallocEE18KeyValuePairTraitsES4G_S4K_E4findINS_22IdentityHashTranslatorIS4M_S4D_EELS4J_1ES6_EENS_17HashTableIteratorIS4N_S6_S49_S4B_S4D_S4M_S4G_EERKT1_((a1 + 24), &v11);
  v6 = *(a1 + 24);
  if (v6)
  {
    v6 += 3 * *(v6 - 1);
  }

  if (v6 != v5 && *(v5 + 16) == 24 && (v7 = *(v5[1] + 16)) != 0)
  {
    result = *(v7 + 8);
    if (result)
    {
      goto LABEL_11;
    }

    result = WTF::fastCompactMalloc(0x10);
    *result = 1;
    *(result + 8) = v7;
    v10 = *(v7 + 8);
    *(v7 + 8) = result;
    if (!v10)
    {
      goto LABEL_11;
    }

    if (atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v10);
      WTF::fastFree(v10, v9);
    }

    result = *(v7 + 8);
    if (result)
    {
LABEL_11:
      atomic_fetch_add(result, 1u);
    }
  }

  else
  {
    result = 0;
  }

  *a3 = result;
  return result;
}

uint64_t WebKit::WebGPU::ObjectHeap::convertXRSubImageFromBacking@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v11 = a2;
  v5 = _ZN3WTF9HashTableINS_23ObjectIdentifierGenericIN6WebKit20WebGPUIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEENS_12KeyValuePairIS6_N5mpark7variantIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueINS2_13RemoteAdapterENS_6RefPtrISE_NS_12RawPtrTraitsISE_EENS_21DefaultRefDerefTraitsISE_EEEEEENSD_INS2_15RemoteBindGroupENSF_ISM_NSG_ISM_EENSI_ISM_EEEEEENSD_INS2_21RemoteBindGroupLayoutENSF_ISR_NSG_ISR_EENSI_ISR_EEEEEENSD_INS2_12RemoteBufferENSF_ISW_NSG_ISW_EENSI_ISW_EEEEEENSD_INS2_19RemoteCommandBufferENSF_IS11_NSG_IS11_EENSI_IS11_EEEEEENSD_INS2_20RemoteCommandEncoderENSF_IS16_NSG_IS16_EENSI_IS16_EEEEEENSD_INS2_27RemoteCompositorIntegrationENSF_IS1B_NSG_IS1B_EENSI_IS1B_EEEEEENSD_INS2_24RemoteComputePassEncoderENSF_IS1G_NSG_IS1G_EENSI_IS1G_EEEEEENSD_INS2_21RemoteComputePipelineENSF_IS1L_NSG_IS1L_EENSI_IS1L_EEEEEENSD_INS2_12RemoteDeviceENSF_IS1Q_NSG_IS1Q_EENSI_IS1Q_EEEEEENSD_INS2_21RemoteExternalTextureENSF_IS1V_NSG_IS1V_EENSI_IS1V_EEEEEENSD_INS2_20RemotePipelineLayoutENSF_IS20_NSG_IS20_EENSI_IS20_EEEEEENSD_INS2_25RemotePresentationContextENSF_IS25_NSG_IS25_EENSI_IS25_EEEEEENSD_INS2_14RemoteQuerySetENSF_IS2A_NSG_IS2A_EENSI_IS2A_EEEEEENSD_INS2_11RemoteQueueENSF_IS2F_NSG_IS2F_EENSI_IS2F_EEEEEENSD_INS2_25RemoteRenderBundleEncoderENSF_IS2K_NSG_IS2K_EENSI_IS2K_EEEEEENSD_INS2_18RemoteRenderBundleENSF_IS2P_NSG_IS2P_EENSI_IS2P_EEEEEENSD_INS2_23RemoteRenderPassEncoderENSF_IS2U_NSG_IS2U_EENSI_IS2U_EEEEEENSD_INS2_20RemoteRenderPipelineENSF_IS2Z_NSG_IS2Z_EENSI_IS2Z_EEEEEENSD_INS2_13RemoteSamplerENSF_IS34_NSG_IS34_EENSI_IS34_EEEEEENSD_INS2_18RemoteShaderModuleENSF_IS39_NSG_IS39_EENSI_IS39_EEEEEENSD_INS2_13RemoteTextureENSF_IS3E_NSG_IS3E_EENSI_IS3E_EEEEEENSD_INS2_17RemoteTextureViewENSF_IS3J_NSG_IS3J_EENSI_IS3J_EEEEEENSD_INS2_15RemoteXRBindingENSF_IS3O_NSG_IS3O_EENSI_IS3O_EEEEEENSD_INS2_16RemoteXRSubImageENSF_IS3T_NSG_IS3T_EENSI_IS3T_EEEEEENSD_INS2_23RemoteXRProjectionLayerENSF_IS3Y_NSG_IS3Y_EENSI_IS3Y_EEEEEENSD_INS2_12RemoteXRViewENSF_IS43_NSG_IS43_EENSI_IS43_EEEEEEEEEEENS_24KeyValuePairKeyExtractorIS49_EENS_11DefaultHashIS6_EENS_7HashMapIS6_S48_S4D_NS_10HashTraitsIS6_EENS4F_IS48_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1ENS_10FastMallocEE18KeyValuePairTraitsES4G_S4K_E4findINS_22IdentityHashTranslatorIS4M_S4D_EELS4J_1ES6_EENS_17HashTableIteratorIS4N_S6_S49_S4B_S4D_S4M_S4G_EERKT1_((a1 + 24), &v11);
  v6 = *(a1 + 24);
  if (v6)
  {
    v6 += 3 * *(v6 - 1);
  }

  if (v6 != v5 && *(v5 + 16) == 25 && (v7 = *(v5[1] + 16)) != 0)
  {
    result = *(v7 + 8);
    if (result)
    {
      goto LABEL_11;
    }

    result = WTF::fastCompactMalloc(0x10);
    *result = 1;
    *(result + 8) = v7;
    v10 = *(v7 + 8);
    *(v7 + 8) = result;
    if (!v10)
    {
      goto LABEL_11;
    }

    if (atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v10);
      WTF::fastFree(v10, v9);
    }

    result = *(v7 + 8);
    if (result)
    {
LABEL_11:
      atomic_fetch_add(result, 1u);
    }
  }

  else
  {
    result = 0;
  }

  *a3 = result;
  return result;
}

uint64_t WebKit::WebGPU::ObjectHeap::createXRViewFromBacking@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v11 = a2;
  v5 = _ZN3WTF9HashTableINS_23ObjectIdentifierGenericIN6WebKit20WebGPUIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEENS_12KeyValuePairIS6_N5mpark7variantIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueINS2_13RemoteAdapterENS_6RefPtrISE_NS_12RawPtrTraitsISE_EENS_21DefaultRefDerefTraitsISE_EEEEEENSD_INS2_15RemoteBindGroupENSF_ISM_NSG_ISM_EENSI_ISM_EEEEEENSD_INS2_21RemoteBindGroupLayoutENSF_ISR_NSG_ISR_EENSI_ISR_EEEEEENSD_INS2_12RemoteBufferENSF_ISW_NSG_ISW_EENSI_ISW_EEEEEENSD_INS2_19RemoteCommandBufferENSF_IS11_NSG_IS11_EENSI_IS11_EEEEEENSD_INS2_20RemoteCommandEncoderENSF_IS16_NSG_IS16_EENSI_IS16_EEEEEENSD_INS2_27RemoteCompositorIntegrationENSF_IS1B_NSG_IS1B_EENSI_IS1B_EEEEEENSD_INS2_24RemoteComputePassEncoderENSF_IS1G_NSG_IS1G_EENSI_IS1G_EEEEEENSD_INS2_21RemoteComputePipelineENSF_IS1L_NSG_IS1L_EENSI_IS1L_EEEEEENSD_INS2_12RemoteDeviceENSF_IS1Q_NSG_IS1Q_EENSI_IS1Q_EEEEEENSD_INS2_21RemoteExternalTextureENSF_IS1V_NSG_IS1V_EENSI_IS1V_EEEEEENSD_INS2_20RemotePipelineLayoutENSF_IS20_NSG_IS20_EENSI_IS20_EEEEEENSD_INS2_25RemotePresentationContextENSF_IS25_NSG_IS25_EENSI_IS25_EEEEEENSD_INS2_14RemoteQuerySetENSF_IS2A_NSG_IS2A_EENSI_IS2A_EEEEEENSD_INS2_11RemoteQueueENSF_IS2F_NSG_IS2F_EENSI_IS2F_EEEEEENSD_INS2_25RemoteRenderBundleEncoderENSF_IS2K_NSG_IS2K_EENSI_IS2K_EEEEEENSD_INS2_18RemoteRenderBundleENSF_IS2P_NSG_IS2P_EENSI_IS2P_EEEEEENSD_INS2_23RemoteRenderPassEncoderENSF_IS2U_NSG_IS2U_EENSI_IS2U_EEEEEENSD_INS2_20RemoteRenderPipelineENSF_IS2Z_NSG_IS2Z_EENSI_IS2Z_EEEEEENSD_INS2_13RemoteSamplerENSF_IS34_NSG_IS34_EENSI_IS34_EEEEEENSD_INS2_18RemoteShaderModuleENSF_IS39_NSG_IS39_EENSI_IS39_EEEEEENSD_INS2_13RemoteTextureENSF_IS3E_NSG_IS3E_EENSI_IS3E_EEEEEENSD_INS2_17RemoteTextureViewENSF_IS3J_NSG_IS3J_EENSI_IS3J_EEEEEENSD_INS2_15RemoteXRBindingENSF_IS3O_NSG_IS3O_EENSI_IS3O_EEEEEENSD_INS2_16RemoteXRSubImageENSF_IS3T_NSG_IS3T_EENSI_IS3T_EEEEEENSD_INS2_23RemoteXRProjectionLayerENSF_IS3Y_NSG_IS3Y_EENSI_IS3Y_EEEEEENSD_INS2_12RemoteXRViewENSF_IS43_NSG_IS43_EENSI_IS43_EEEEEEEEEEENS_24KeyValuePairKeyExtractorIS49_EENS_11DefaultHashIS6_EENS_7HashMapIS6_S48_S4D_NS_10HashTraitsIS6_EENS4F_IS48_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1ENS_10FastMallocEE18KeyValuePairTraitsES4G_S4K_E4findINS_22IdentityHashTranslatorIS4M_S4D_EELS4J_1ES6_EENS_17HashTableIteratorIS4N_S6_S49_S4B_S4D_S4M_S4G_EERKT1_((a1 + 24), &v11);
  v6 = *(a1 + 24);
  if (v6)
  {
    v6 += 3 * *(v6 - 1);
  }

  if (v6 != v5 && *(v5 + 16) == 27 && (v7 = *(v5[1] + 16)) != 0)
  {
    result = *(v7 + 8);
    if (result)
    {
      goto LABEL_11;
    }

    result = WTF::fastCompactMalloc(0x10);
    *result = 1;
    *(result + 8) = v7;
    v10 = *(v7 + 8);
    *(v7 + 8) = result;
    if (!v10)
    {
      goto LABEL_11;
    }

    if (atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v10);
      WTF::fastFree(v10, v9);
    }

    result = *(v7 + 8);
    if (result)
    {
LABEL_11:
      atomic_fetch_add(result, 1u);
    }
  }

  else
  {
    result = 0;
  }

  *a3 = result;
  return result;
}

uint64_t WebKit::WebGPU::ObjectHeap::objectExistsAndValid(mpark *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 3);
  if (!v3)
  {
    goto LABEL_17;
  }

  if (a3 == -1 || !a3)
  {
    __break(0xC471u);
    JUMPOUT(0x19DB89B18);
  }

  v4 = *(v3 - 8);
  v5 = (~(a3 << 32) + a3) ^ ((~(a3 << 32) + a3) >> 22);
  v6 = 9 * ((v5 + ~(v5 << 13)) ^ ((v5 + ~(v5 << 13)) >> 8));
  v7 = (v6 ^ (v6 >> 15)) + ~((v6 ^ (v6 >> 15)) << 27);
  v8 = v4 & ((v7 >> 31) ^ v7);
  v9 = (v3 + 24 * v8);
  v10 = *v9;
  if (*v9 != a3)
  {
    v11 = 1;
    while (v10)
    {
      v8 = (v8 + v11) & v4;
      v9 = (v3 + 24 * v8);
      v10 = *v9;
      ++v11;
      if (*v9 == a3)
      {
        goto LABEL_10;
      }
    }

    v9 = (v3 + 24 * *(v3 - 4));
  }

LABEL_10:
  if ((v3 + 24 * *(v3 - 4)) == v9)
  {
LABEL_17:
    v15 = 0;
    v14 = 0;
  }

  else
  {
    v12 = *(v9 + 16);
    if (v12 == 255)
    {
      v13 = -1;
    }

    else
    {
      v13 = *(v9 + 16);
    }

    switch(v13)
    {
      case 1:
        if (v12 != 1)
        {
          goto LABEL_74;
        }

        v14 = (*(*a2 + 80))(a2, *(v9[1] + 16));
        break;
      case 2:
        if (v12 != 2)
        {
          goto LABEL_74;
        }

        v14 = (*(*a2 + 88))(a2, *(v9[1] + 16));
        break;
      case 3:
        if (v12 != 3)
        {
          goto LABEL_74;
        }

        v14 = (*(*a2 + 96))(a2, *(v9[1] + 16));
        break;
      case 4:
        if (v12 != 4)
        {
          goto LABEL_74;
        }

        v14 = (*(*a2 + 72))(a2, *(v9[1] + 16));
        break;
      case 5:
        if (v12 != 5)
        {
          goto LABEL_74;
        }

        v14 = (*(*a2 + 104))(a2, *(v9[1] + 16));
        break;
      case 6:
        if (v12 != 6)
        {
          goto LABEL_74;
        }

        v14 = (*(*a2 + 112))(a2, *(v9[1] + 16));
        break;
      case 7:
        if (v12 != 7)
        {
          goto LABEL_74;
        }

        v14 = (*(*a2 + 64))(a2, *(v9[1] + 16));
        break;
      case 8:
        if (v12 != 8)
        {
          goto LABEL_74;
        }

        v14 = (*(*a2 + 120))(a2, *(v9[1] + 16));
        break;
      case 9:
        if (v12 != 9)
        {
          goto LABEL_74;
        }

        v14 = (*(*a2 + 128))(a2, *(v9[1] + 16));
        break;
      case 10:
        if (v12 != 10)
        {
          goto LABEL_74;
        }

        v14 = (*(*a2 + 136))(a2, *(v9[1] + 16));
        break;
      case 11:
        if (v12 != 11)
        {
          goto LABEL_74;
        }

        v14 = (*(*a2 + 144))(a2, *(v9[1] + 16));
        break;
      case 12:
        if (v12 != 12)
        {
          goto LABEL_74;
        }

        v14 = (*(*a2 + 152))(a2, *(v9[1] + 16));
        break;
      case 13:
        if (v12 != 13)
        {
          goto LABEL_74;
        }

        v14 = (*(*a2 + 160))(a2, *(v9[1] + 16));
        break;
      case 14:
        if (v12 != 14)
        {
          goto LABEL_74;
        }

        v14 = (*(*a2 + 168))(a2, *(v9[1] + 16));
        break;
      case 15:
        if (v12 != 15)
        {
          goto LABEL_74;
        }

        v14 = (*(*a2 + 176))(a2, *(v9[1] + 16));
        break;
      case 16:
        if (v12 != 16)
        {
          goto LABEL_74;
        }

        v14 = (*(*a2 + 184))(a2, *(v9[1] + 16));
        break;
      case 17:
        if (v12 != 17)
        {
          goto LABEL_74;
        }

        v14 = (*(*a2 + 192))(a2, *(v9[1] + 16));
        break;
      case 18:
        if (v12 != 18)
        {
          goto LABEL_74;
        }

        v14 = (*(*a2 + 200))(a2, *(v9[1] + 16));
        break;
      case 19:
        if (v12 != 19)
        {
          goto LABEL_74;
        }

        v14 = (*(*a2 + 208))(a2, *(v9[1] + 16));
        break;
      case 20:
        if (v12 != 20)
        {
          goto LABEL_74;
        }

        v14 = (*(*a2 + 216))(a2, *(v9[1] + 16));
        break;
      case 21:
        if (v12 != 21)
        {
          goto LABEL_74;
        }

        v14 = (*(*a2 + 224))(a2, *(v9[1] + 16));
        break;
      case 22:
        if (v12 != 22)
        {
          goto LABEL_74;
        }

        v14 = (*(*a2 + 232))(a2, *(v9[1] + 16));
        break;
      case 23:
        if (v12 != 23)
        {
          goto LABEL_74;
        }

        v14 = (*(*a2 + 240))(a2, *(v9[1] + 16));
        break;
      case 24:
        if (v12 != 24)
        {
          goto LABEL_74;
        }

        v14 = (*(*a2 + 248))(a2, *(v9[1] + 16));
        break;
      case 25:
        if (v12 != 25)
        {
          goto LABEL_74;
        }

        v14 = (*(*a2 + 256))(a2, *(v9[1] + 16));
        break;
      case 26:
        if (v12 != 26)
        {
          goto LABEL_74;
        }

        v14 = (*(*a2 + 264))(a2, *(v9[1] + 16));
        break;
      case 27:
        if (v12 != 27)
        {
          goto LABEL_74;
        }

        v14 = (*(*a2 + 272))(a2, *(v9[1] + 16));
        break;
      default:
        if (*(v9 + 16))
        {
LABEL_74:
          mpark::throw_bad_variant_access(a1);
        }

        v14 = 0;
        break;
    }

    v15 = 1;
  }

  return v15 | (v14 << 8);
}

WTF::StringImpl *std::__optional_destruct_base<WebCore::WebGPU::TextureViewDescriptor,false>::reset[abi:sn200100](WTF::StringImpl *result, WTF::StringImpl *a2)
{
  if (*(result + 40) == 1)
  {
    v2 = result;
    result = *result;
    *v2 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, a2);
      }
    }

    *(v2 + 40) = 0;
  }

  return result;
}

uint64_t _ZN3WTF9HashTableINS_23ObjectIdentifierGenericIN6WebKit20WebGPUIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEENS_12KeyValuePairIS6_N5mpark7variantIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueINS2_13RemoteAdapterENS_6RefPtrISE_NS_12RawPtrTraitsISE_EENS_21DefaultRefDerefTraitsISE_EEEEEENSD_INS2_15RemoteBindGroupENSF_ISM_NSG_ISM_EENSI_ISM_EEEEEENSD_INS2_21RemoteBindGroupLayoutENSF_ISR_NSG_ISR_EENSI_ISR_EEEEEENSD_INS2_12RemoteBufferENSF_ISW_NSG_ISW_EENSI_ISW_EEEEEENSD_INS2_19RemoteCommandBufferENSF_IS11_NSG_IS11_EENSI_IS11_EEEEEENSD_INS2_20RemoteCommandEncoderENSF_IS16_NSG_IS16_EENSI_IS16_EEEEEENSD_INS2_27RemoteCompositorIntegrationENSF_IS1B_NSG_IS1B_EENSI_IS1B_EEEEEENSD_INS2_24RemoteComputePassEncoderENSF_IS1G_NSG_IS1G_EENSI_IS1G_EEEEEENSD_INS2_21RemoteComputePipelineENSF_IS1L_NSG_IS1L_EENSI_IS1L_EEEEEENSD_INS2_12RemoteDeviceENSF_IS1Q_NSG_IS1Q_EENSI_IS1Q_EEEEEENSD_INS2_21RemoteExternalTextureENSF_IS1V_NSG_IS1V_EENSI_IS1V_EEEEEENSD_INS2_20RemotePipelineLayoutENSF_IS20_NSG_IS20_EENSI_IS20_EEEEEENSD_INS2_25RemotePresentationContextENSF_IS25_NSG_IS25_EENSI_IS25_EEEEEENSD_INS2_14RemoteQuerySetENSF_IS2A_NSG_IS2A_EENSI_IS2A_EEEEEENSD_INS2_11RemoteQueueENSF_IS2F_NSG_IS2F_EENSI_IS2F_EEEEEENSD_INS2_25RemoteRenderBundleEncoderENSF_IS2K_NSG_IS2K_EENSI_IS2K_EEEEEENSD_INS2_18RemoteRenderBundleENSF_IS2P_NSG_IS2P_EENSI_IS2P_EEEEEENSD_INS2_23RemoteRenderPassEncoderENSF_IS2U_NSG_IS2U_EENSI_IS2U_EEEEEENSD_INS2_20RemoteRenderPipelineENSF_IS2Z_NSG_IS2Z_EENSI_IS2Z_EEEEEENSD_INS2_13RemoteSamplerENSF_IS34_NSG_IS34_EENSI_IS34_EEEEEENSD_INS2_18RemoteShaderModuleENSF_IS39_NSG_IS39_EENSI_IS39_EEEEEENSD_INS2_13RemoteTextureENSF_IS3E_NSG_IS3E_EENSI_IS3E_EEEEEENSD_INS2_17RemoteTextureViewENSF_IS3J_NSG_IS3J_EENSI_IS3J_EEEEEENSD_INS2_15RemoteXRBindingENSF_IS3O_NSG_IS3O_EENSI_IS3O_EEEEEENSD_INS2_16RemoteXRSubImageENSF_IS3T_NSG_IS3T_EENSI_IS3T_EEEEEENSD_INS2_23RemoteXRProjectionLayerENSF_IS3Y_NSG_IS3Y_EENSI_IS3Y_EEEEEENSD_INS2_12RemoteXRViewENSF_IS43_NSG_IS43_EENSI_IS43_EEEEEEEEEEENS_24KeyValuePairKeyExtractorIS49_EENS_11DefaultHashIS6_EENS_7HashMapIS6_S48_S4D_NS_10HashTraitsIS6_EENS4F_IS48_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1ENS_10FastMallocEE18KeyValuePairTraitsES4G_S4K_E15deallocateTableEPS49_(uint64_t a1, void *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = a1 + 8;
    do
    {
      if (*(v4 - 8) != -1)
      {
        if (*(v4 + 8) != 255)
        {
          _ZN5mpark6detail10visitation3alt9visit_altINS0_4dtorEJRNS0_10destructorINS0_6traitsIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueIN6WebKit13RemoteAdapterEN3WTF6RefPtrISC_NSD_12RawPtrTraitsISC_EENSD_21DefaultRefDerefTraitsISC_EEEEEENSA_INSB_15RemoteBindGroupENSE_ISL_NSF_ISL_EENSH_ISL_EEEEEENSA_INSB_21RemoteBindGroupLayoutENSE_ISQ_NSF_ISQ_EENSH_ISQ_EEEEEENSA_INSB_12RemoteBufferENSE_ISV_NSF_ISV_EENSH_ISV_EEEEEENSA_INSB_19RemoteCommandBufferENSE_IS10_NSF_IS10_EENSH_IS10_EEEEEENSA_INSB_20RemoteCommandEncoderENSE_IS15_NSF_IS15_EENSH_IS15_EEEEEENSA_INSB_27RemoteCompositorIntegrationENSE_IS1A_NSF_IS1A_EENSH_IS1A_EEEEEENSA_INSB_24RemoteComputePassEncoderENSE_IS1F_NSF_IS1F_EENSH_IS1F_EEEEEENSA_INSB_21RemoteComputePipelineENSE_IS1K_NSF_IS1K_EENSH_IS1K_EEEEEENSA_INSB_12RemoteDeviceENSE_IS1P_NSF_IS1P_EENSH_IS1P_EEEEEENSA_INSB_21RemoteExternalTextureENSE_IS1U_NSF_IS1U_EENSH_IS1U_EEEEEENSA_INSB_20RemotePipelineLayoutENSE_IS1Z_NSF_IS1Z_EENSH_IS1Z_EEEEEENSA_INSB_25RemotePresentationContextENSE_IS24_NSF_IS24_EENSH_IS24_EEEEEENSA_INSB_14RemoteQuerySetENSE_IS29_NSF_IS29_EENSH_IS29_EEEEEENSA_INSB_11RemoteQueueENSE_IS2E_NSF_IS2E_EENSH_IS2E_EEEEEENSA_INSB_25RemoteRenderBundleEncoderENSE_IS2J_NSF_IS2J_EENSH_IS2J_EEEEEENSA_INSB_18RemoteRenderBundleENSE_IS2O_NSF_IS2O_EENSH_IS2O_EEEEEENSA_INSB_23RemoteRenderPassEncoderENSE_IS2T_NSF_IS2T_EENSH_IS2T_EEEEEENSA_INSB_20RemoteRenderPipelineENSE_IS2Y_NSF_IS2Y_EENSH_IS2Y_EEEEEENSA_INSB_13RemoteSamplerENSE_IS33_NSF_IS33_EENSH_IS33_EEEEEENSA_INSB_18RemoteShaderModuleENSE_IS38_NSF_IS38_EENSH_IS38_EEEEEENSA_INSB_13RemoteTextureENSE_IS3D_NSF_IS3D_EENSH_IS3D_EEEEEENSA_INSB_17RemoteTextureViewENSE_IS3I_NSF_IS3I_EENSH_IS3I_EEEEEENSA_INSB_15RemoteXRBindingENSE_IS3N_NSF_IS3N_EENSH_IS3N_EEEEEENSA_INSB_16RemoteXRSubImageENSE_IS3S_NSF_IS3S_EENSH_IS3S_EEEEEENSA_INSB_23RemoteXRProjectionLayerENSE_IS3X_NSF_IS3X_EENSH_IS3X_EEEEEENSA_INSB_12RemoteXRViewENSE_IS42_NSF_IS42_EENSH_IS42_EEEEEEEEELNS0_5TraitE1EEEEEEDcOT_DpOT0_(&v6, v4);
        }

        *(v4 + 8) = -1;
      }

      v4 += 24;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

void *_ZN5mpark6detail10visitation3alt9visit_altINS0_4dtorEJRNS0_10destructorINS0_6traitsIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueIN6WebKit13RemoteAdapterEN3WTF6RefPtrISC_NSD_12RawPtrTraitsISC_EENSD_21DefaultRefDerefTraitsISC_EEEEEENSA_INSB_15RemoteBindGroupENSE_ISL_NSF_ISL_EENSH_ISL_EEEEEENSA_INSB_21RemoteBindGroupLayoutENSE_ISQ_NSF_ISQ_EENSH_ISQ_EEEEEENSA_INSB_12RemoteBufferENSE_ISV_NSF_ISV_EENSH_ISV_EEEEEENSA_INSB_19RemoteCommandBufferENSE_IS10_NSF_IS10_EENSH_IS10_EEEEEENSA_INSB_20RemoteCommandEncoderENSE_IS15_NSF_IS15_EENSH_IS15_EEEEEENSA_INSB_27RemoteCompositorIntegrationENSE_IS1A_NSF_IS1A_EENSH_IS1A_EEEEEENSA_INSB_24RemoteComputePassEncoderENSE_IS1F_NSF_IS1F_EENSH_IS1F_EEEEEENSA_INSB_21RemoteComputePipelineENSE_IS1K_NSF_IS1K_EENSH_IS1K_EEEEEENSA_INSB_12RemoteDeviceENSE_IS1P_NSF_IS1P_EENSH_IS1P_EEEEEENSA_INSB_21RemoteExternalTextureENSE_IS1U_NSF_IS1U_EENSH_IS1U_EEEEEENSA_INSB_20RemotePipelineLayoutENSE_IS1Z_NSF_IS1Z_EENSH_IS1Z_EEEEEENSA_INSB_25RemotePresentationContextENSE_IS24_NSF_IS24_EENSH_IS24_EEEEEENSA_INSB_14RemoteQuerySetENSE_IS29_NSF_IS29_EENSH_IS29_EEEEEENSA_INSB_11RemoteQueueENSE_IS2E_NSF_IS2E_EENSH_IS2E_EEEEEENSA_INSB_25RemoteRenderBundleEncoderENSE_IS2J_NSF_IS2J_EENSH_IS2J_EEEEEENSA_INSB_18RemoteRenderBundleENSE_IS2O_NSF_IS2O_EENSH_IS2O_EEEEEENSA_INSB_23RemoteRenderPassEncoderENSE_IS2T_NSF_IS2T_EENSH_IS2T_EEEEEENSA_INSB_20RemoteRenderPipelineENSE_IS2Y_NSF_IS2Y_EENSH_IS2Y_EEEEEENSA_INSB_13RemoteSamplerENSE_IS33_NSF_IS33_EENSH_IS33_EEEEEENSA_INSB_18RemoteShaderModuleENSE_IS38_NSF_IS38_EENSH_IS38_EEEEEENSA_INSB_13RemoteTextureENSE_IS3D_NSF_IS3D_EENSH_IS3D_EEEEEENSA_INSB_17RemoteTextureViewENSE_IS3I_NSF_IS3I_EENSH_IS3I_EEEEEENSA_INSB_15RemoteXRBindingENSE_IS3N_NSF_IS3N_EENSH_IS3N_EEEEEENSA_INSB_16RemoteXRSubImageENSE_IS3S_NSF_IS3S_EENSH_IS3S_EEEEEENSA_INSB_23RemoteXRProjectionLayerENSE_IS3X_NSF_IS3X_EENSH_IS3X_EEEEEENSA_INSB_12RemoteXRViewENSE_IS42_NSF_IS42_EENSH_IS42_EEEEEEEEELNS0_5TraitE1EEEEEEDcOT_DpOT0_(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) == 255)
  {
    v2 = -1;
  }

  else
  {
    v2 = *(a2 + 8);
  }

  switch(v2)
  {
    case 1:
      result = IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteAdapter,WTF::RefPtr<WebKit::RemoteAdapter,WTF::RawPtrTraits<WebKit::RemoteAdapter>,WTF::DefaultRefDerefTraits<WebKit::RemoteAdapter>>>::~ScopedActiveMessageReceiveQueue(a2);
      break;
    case 2:
      result = IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteBindGroup,WTF::RefPtr<WebKit::RemoteBindGroup,WTF::RawPtrTraits<WebKit::RemoteBindGroup>,WTF::DefaultRefDerefTraits<WebKit::RemoteBindGroup>>>::~ScopedActiveMessageReceiveQueue(a2);
      break;
    case 3:
      result = IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteBindGroupLayout,WTF::RefPtr<WebKit::RemoteBindGroupLayout,WTF::RawPtrTraits<WebKit::RemoteBindGroupLayout>,WTF::DefaultRefDerefTraits<WebKit::RemoteBindGroupLayout>>>::~ScopedActiveMessageReceiveQueue(a2);
      break;
    case 4:
      result = IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteBuffer,WTF::RefPtr<WebKit::RemoteBuffer,WTF::RawPtrTraits<WebKit::RemoteBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteBuffer>>>::~ScopedActiveMessageReceiveQueue(a2);
      break;
    case 5:
      result = IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteCommandBuffer,WTF::RefPtr<WebKit::RemoteCommandBuffer,WTF::RawPtrTraits<WebKit::RemoteCommandBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteCommandBuffer>>>::~ScopedActiveMessageReceiveQueue(a2);
      break;
    case 6:
      result = IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteCommandEncoder,WTF::RefPtr<WebKit::RemoteCommandEncoder,WTF::RawPtrTraits<WebKit::RemoteCommandEncoder>,WTF::DefaultRefDerefTraits<WebKit::RemoteCommandEncoder>>>::~ScopedActiveMessageReceiveQueue(a2);
      break;
    case 7:
      result = IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteCompositorIntegration,WTF::RefPtr<WebKit::RemoteCompositorIntegration,WTF::RawPtrTraits<WebKit::RemoteCompositorIntegration>,WTF::DefaultRefDerefTraits<WebKit::RemoteCompositorIntegration>>>::~ScopedActiveMessageReceiveQueue(a2);
      break;
    case 8:
      result = IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteComputePassEncoder,WTF::RefPtr<WebKit::RemoteComputePassEncoder,WTF::RawPtrTraits<WebKit::RemoteComputePassEncoder>,WTF::DefaultRefDerefTraits<WebKit::RemoteComputePassEncoder>>>::~ScopedActiveMessageReceiveQueue(a2);
      break;
    case 9:
      result = IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteComputePipeline,WTF::RefPtr<WebKit::RemoteComputePipeline,WTF::RawPtrTraits<WebKit::RemoteComputePipeline>,WTF::DefaultRefDerefTraits<WebKit::RemoteComputePipeline>>>::~ScopedActiveMessageReceiveQueue(a2);
      break;
    case 10:
      result = IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteDevice,WTF::RefPtr<WebKit::RemoteDevice,WTF::RawPtrTraits<WebKit::RemoteDevice>,WTF::DefaultRefDerefTraits<WebKit::RemoteDevice>>>::~ScopedActiveMessageReceiveQueue(a2);
      break;
    case 11:
      result = IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteExternalTexture,WTF::RefPtr<WebKit::RemoteExternalTexture,WTF::RawPtrTraits<WebKit::RemoteExternalTexture>,WTF::DefaultRefDerefTraits<WebKit::RemoteExternalTexture>>>::~ScopedActiveMessageReceiveQueue(a2);
      break;
    case 12:
      result = IPC::ScopedActiveMessageReceiveQueue<WebKit::RemotePipelineLayout,WTF::RefPtr<WebKit::RemotePipelineLayout,WTF::RawPtrTraits<WebKit::RemotePipelineLayout>,WTF::DefaultRefDerefTraits<WebKit::RemotePipelineLayout>>>::~ScopedActiveMessageReceiveQueue(a2);
      break;
    case 13:
      result = IPC::ScopedActiveMessageReceiveQueue<WebKit::RemotePresentationContext,WTF::RefPtr<WebKit::RemotePresentationContext,WTF::RawPtrTraits<WebKit::RemotePresentationContext>,WTF::DefaultRefDerefTraits<WebKit::RemotePresentationContext>>>::~ScopedActiveMessageReceiveQueue(a2);
      break;
    case 14:
      result = IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteQuerySet,WTF::RefPtr<WebKit::RemoteQuerySet,WTF::RawPtrTraits<WebKit::RemoteQuerySet>,WTF::DefaultRefDerefTraits<WebKit::RemoteQuerySet>>>::~ScopedActiveMessageReceiveQueue(a2);
      break;
    case 15:
      result = IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteQueue,WTF::RefPtr<WebKit::RemoteQueue,WTF::RawPtrTraits<WebKit::RemoteQueue>,WTF::DefaultRefDerefTraits<WebKit::RemoteQueue>>>::~ScopedActiveMessageReceiveQueue(a2);
      break;
    case 16:
      result = IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderBundleEncoder,WTF::RefPtr<WebKit::RemoteRenderBundleEncoder,WTF::RawPtrTraits<WebKit::RemoteRenderBundleEncoder>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderBundleEncoder>>>::~ScopedActiveMessageReceiveQueue(a2);
      break;
    case 17:
      result = IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderBundle,WTF::RefPtr<WebKit::RemoteRenderBundle,WTF::RawPtrTraits<WebKit::RemoteRenderBundle>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderBundle>>>::~ScopedActiveMessageReceiveQueue(a2);
      break;
    case 18:
      result = IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderPassEncoder,WTF::RefPtr<WebKit::RemoteRenderPassEncoder,WTF::RawPtrTraits<WebKit::RemoteRenderPassEncoder>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderPassEncoder>>>::~ScopedActiveMessageReceiveQueue(a2);
      break;
    case 19:
      result = IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderPipeline,WTF::RefPtr<WebKit::RemoteRenderPipeline,WTF::RawPtrTraits<WebKit::RemoteRenderPipeline>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderPipeline>>>::~ScopedActiveMessageReceiveQueue(a2);
      break;
    case 20:
      result = IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteSampler,WTF::RefPtr<WebKit::RemoteSampler,WTF::RawPtrTraits<WebKit::RemoteSampler>,WTF::DefaultRefDerefTraits<WebKit::RemoteSampler>>>::~ScopedActiveMessageReceiveQueue(a2);
      break;
    case 21:
      result = IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteShaderModule,WTF::RefPtr<WebKit::RemoteShaderModule,WTF::RawPtrTraits<WebKit::RemoteShaderModule>,WTF::DefaultRefDerefTraits<WebKit::RemoteShaderModule>>>::~ScopedActiveMessageReceiveQueue(a2);
      break;
    case 22:
      result = IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteTexture,WTF::RefPtr<WebKit::RemoteTexture,WTF::RawPtrTraits<WebKit::RemoteTexture>,WTF::DefaultRefDerefTraits<WebKit::RemoteTexture>>>::~ScopedActiveMessageReceiveQueue(a2);
      break;
    case 23:
      result = IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteTextureView,WTF::RefPtr<WebKit::RemoteTextureView,WTF::RawPtrTraits<WebKit::RemoteTextureView>,WTF::DefaultRefDerefTraits<WebKit::RemoteTextureView>>>::~ScopedActiveMessageReceiveQueue(a2);
      break;
    case 24:
      result = IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteXRBinding,WTF::RefPtr<WebKit::RemoteXRBinding,WTF::RawPtrTraits<WebKit::RemoteXRBinding>,WTF::DefaultRefDerefTraits<WebKit::RemoteXRBinding>>>::~ScopedActiveMessageReceiveQueue(a2);
      break;
    case 25:
      result = IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteXRSubImage,WTF::RefPtr<WebKit::RemoteXRSubImage,WTF::RawPtrTraits<WebKit::RemoteXRSubImage>,WTF::DefaultRefDerefTraits<WebKit::RemoteXRSubImage>>>::~ScopedActiveMessageReceiveQueue(a2);
      break;
    case 26:
      result = IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteXRProjectionLayer,WTF::RefPtr<WebKit::RemoteXRProjectionLayer,WTF::RawPtrTraits<WebKit::RemoteXRProjectionLayer>,WTF::DefaultRefDerefTraits<WebKit::RemoteXRProjectionLayer>>>::~ScopedActiveMessageReceiveQueue(a2);
      break;
    case 27:
      result = IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteXRView,WTF::RefPtr<WebKit::RemoteXRView,WTF::RawPtrTraits<WebKit::RemoteXRView>,WTF::DefaultRefDerefTraits<WebKit::RemoteXRView>>>::~ScopedActiveMessageReceiveQueue(a2);
      break;
    default:
      return result;
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::RemoteShaderModule::compilationInfo(WTF::CompletionHandler<void ()(WTF::Vector<WebKit::WebGPU::CompilationMessage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::$_0,void,WTF::Ref<WebCore::WebGPU::CompilationInfo,WTF::RawPtrTraits<WebCore>,WTF::DefaultRefDerefTraits<WebCore>> &&>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F10FBDC0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteShaderModule::compilationInfo(WTF::CompletionHandler<void ()(WTF::Vector<WebKit::WebGPU::CompilationMessage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::$_0,void,WTF::Ref<WebCore::WebGPU::CompilationInfo,WTF::RawPtrTraits<WebCore>,WTF::DefaultRefDerefTraits<WebCore>> &&>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10FBDC0;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteShaderModule::compilationInfo(WTF::CompletionHandler<void ()(WTF::Vector<WebKit::WebGPU::CompilationMessage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::$_0,void,WTF::Ref<WebCore::WebGPU::CompilationInfo,WTF::RawPtrTraits<WebCore>,WTF::DefaultRefDerefTraits<WebCore>> &&>::call(uint64_t result, uint64_t *a2)
{
  v2 = result;
  v3 = *a2;
  v17 = 0;
  v18 = 0;
  v4 = *(v3 + 20);
  if (!v4)
  {
LABEL_9:
    v15 = *(v2 + 8);
    *(v2 + 8) = 0;
    (*(*v15 + 16))(v15, &v17);
    (*(*v15 + 8))(v15);
    return WTF::Vector<WebCore::TextRecognitionWordData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v17, v16);
  }

  if (v4 < 0x5555556)
  {
    v5 = 48 * v4;
    v6 = WTF::fastMalloc((48 * v4));
    LODWORD(v18) = v5 / 0x30;
    v17 = v6;
    if (*(v3 + 20))
    {
      v7 = 0;
      v8 = (v6 + 16);
      do
      {
        v9 = *(v3 + 8);
        v10 = *(v9 + 8 * v7);
        v11 = *(v10 + 8);
        if (v11)
        {
          atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
          v10 = *(v9 + 8 * v7);
        }

        v12 = *(v10 + 16);
        *(v8 - 2) = v11;
        v13 = *(v10 + 24);
        v14 = *(v10 + 40);
        *(v8 - 8) = v12;
        *v8 = v13;
        v8[1] = v14;
        v8 += 3;
        ++v7;
      }

      while (v7 < *(v3 + 20));
      HIDWORD(v18) = v7;
    }

    goto LABEL_9;
  }

  __break(0xC471u);
  return result;
}

WebKit::RemoteAdapter **IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteAdapter,WTF::RefPtr<WebKit::RemoteAdapter,WTF::RawPtrTraits<WebKit::RemoteAdapter>,WTF::DefaultRefDerefTraits<WebKit::RemoteAdapter>>>::~ScopedActiveMessageReceiveQueue(WebKit::RemoteAdapter **a1)
{
  if (*a1)
  {
    IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteAdapter,WTF::RefPtr<WebKit::RemoteAdapter,WTF::RawPtrTraits<WebKit::RemoteAdapter>,WTF::DefaultRefDerefTraits<WebKit::RemoteAdapter>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::RemoteAdapter,WTF::RawPtrTraits<WebKit::RemoteAdapter>,WTF::DefaultRefDerefTraits<WebKit::RemoteAdapter>>>(a1);
    v2 = *a1;
    *a1 = 0;
    if (v2)
    {
      if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v2 + 2);
        (*(*v2 + 8))(v2);
      }
    }
  }

  return a1;
}

WebKit::RemoteAdapter *IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteAdapter,WTF::RefPtr<WebKit::RemoteAdapter,WTF::RawPtrTraits<WebKit::RemoteAdapter>,WTF::DefaultRefDerefTraits<WebKit::RemoteAdapter>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::RemoteAdapter,WTF::RawPtrTraits<WebKit::RemoteAdapter>,WTF::DefaultRefDerefTraits<WebKit::RemoteAdapter>>>(WebKit::RemoteAdapter **a1)
{
  WebKit::RemoteAdapter::stopListeningForIPC(*a1);
  result = *a1;
  *a1 = 0;
  if (result && atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, result + 2);
    v3 = *(*result + 8);

    return v3();
  }

  return result;
}

uint64_t _ZN3WTF9HashTableINS_23ObjectIdentifierGenericIN6WebKit20WebGPUIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEENS_12KeyValuePairIS6_N5mpark7variantIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueINS2_13RemoteAdapterENS_6RefPtrISE_NS_12RawPtrTraitsISE_EENS_21DefaultRefDerefTraitsISE_EEEEEENSD_INS2_15RemoteBindGroupENSF_ISM_NSG_ISM_EENSI_ISM_EEEEEENSD_INS2_21RemoteBindGroupLayoutENSF_ISR_NSG_ISR_EENSI_ISR_EEEEEENSD_INS2_12RemoteBufferENSF_ISW_NSG_ISW_EENSI_ISW_EEEEEENSD_INS2_19RemoteCommandBufferENSF_IS11_NSG_IS11_EENSI_IS11_EEEEEENSD_INS2_20RemoteCommandEncoderENSF_IS16_NSG_IS16_EENSI_IS16_EEEEEENSD_INS2_27RemoteCompositorIntegrationENSF_IS1B_NSG_IS1B_EENSI_IS1B_EEEEEENSD_INS2_24RemoteComputePassEncoderENSF_IS1G_NSG_IS1G_EENSI_IS1G_EEEEEENSD_INS2_21RemoteComputePipelineENSF_IS1L_NSG_IS1L_EENSI_IS1L_EEEEEENSD_INS2_12RemoteDeviceENSF_IS1Q_NSG_IS1Q_EENSI_IS1Q_EEEEEENSD_INS2_21RemoteExternalTextureENSF_IS1V_NSG_IS1V_EENSI_IS1V_EEEEEENSD_INS2_20RemotePipelineLayoutENSF_IS20_NSG_IS20_EENSI_IS20_EEEEEENSD_INS2_25RemotePresentationContextENSF_IS25_NSG_IS25_EENSI_IS25_EEEEEENSD_INS2_14RemoteQuerySetENSF_IS2A_NSG_IS2A_EENSI_IS2A_EEEEEENSD_INS2_11RemoteQueueENSF_IS2F_NSG_IS2F_EENSI_IS2F_EEEEEENSD_INS2_25RemoteRenderBundleEncoderENSF_IS2K_NSG_IS2K_EENSI_IS2K_EEEEEENSD_INS2_18RemoteRenderBundleENSF_IS2P_NSG_IS2P_EENSI_IS2P_EEEEEENSD_INS2_23RemoteRenderPassEncoderENSF_IS2U_NSG_IS2U_EENSI_IS2U_EEEEEENSD_INS2_20RemoteRenderPipelineENSF_IS2Z_NSG_IS2Z_EENSI_IS2Z_EEEEEENSD_INS2_13RemoteSamplerENSF_IS34_NSG_IS34_EENSI_IS34_EEEEEENSD_INS2_18RemoteShaderModuleENSF_IS39_NSG_IS39_EENSI_IS39_EEEEEENSD_INS2_13RemoteTextureENSF_IS3E_NSG_IS3E_EENSI_IS3E_EEEEEENSD_INS2_17RemoteTextureViewENSF_IS3J_NSG_IS3J_EENSI_IS3J_EEEEEENSD_INS2_15RemoteXRBindingENSF_IS3O_NSG_IS3O_EENSI_IS3O_EEEEEENSD_INS2_16RemoteXRSubImageENSF_IS3T_NSG_IS3T_EENSI_IS3T_EEEEEENSD_INS2_23RemoteXRProjectionLayerENSF_IS3Y_NSG_IS3Y_EENSI_IS3Y_EEEEEENSD_INS2_12RemoteXRViewENSF_IS43_NSG_IS43_EENSI_IS43_EEEEEEEEEEENS_24KeyValuePairKeyExtractorIS49_EENS_11DefaultHashIS6_EENS_7HashMapIS6_S48_S4D_NS_10HashTraitsIS6_EENS4F_IS48_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1ENS_10FastMallocEE18KeyValuePairTraitsES4G_S4K_E6expandEPS49_(uint64_t *a1, uint64_t *a2)
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

  return _ZN3WTF9HashTableINS_23ObjectIdentifierGenericIN6WebKit20WebGPUIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEENS_12KeyValuePairIS6_N5mpark7variantIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueINS2_13RemoteAdapterENS_6RefPtrISE_NS_12RawPtrTraitsISE_EENS_21DefaultRefDerefTraitsISE_EEEEEENSD_INS2_15RemoteBindGroupENSF_ISM_NSG_ISM_EENSI_ISM_EEEEEENSD_INS2_21RemoteBindGroupLayoutENSF_ISR_NSG_ISR_EENSI_ISR_EEEEEENSD_INS2_12RemoteBufferENSF_ISW_NSG_ISW_EENSI_ISW_EEEEEENSD_INS2_19RemoteCommandBufferENSF_IS11_NSG_IS11_EENSI_IS11_EEEEEENSD_INS2_20RemoteCommandEncoderENSF_IS16_NSG_IS16_EENSI_IS16_EEEEEENSD_INS2_27RemoteCompositorIntegrationENSF_IS1B_NSG_IS1B_EENSI_IS1B_EEEEEENSD_INS2_24RemoteComputePassEncoderENSF_IS1G_NSG_IS1G_EENSI_IS1G_EEEEEENSD_INS2_21RemoteComputePipelineENSF_IS1L_NSG_IS1L_EENSI_IS1L_EEEEEENSD_INS2_12RemoteDeviceENSF_IS1Q_NSG_IS1Q_EENSI_IS1Q_EEEEEENSD_INS2_21RemoteExternalTextureENSF_IS1V_NSG_IS1V_EENSI_IS1V_EEEEEENSD_INS2_20RemotePipelineLayoutENSF_IS20_NSG_IS20_EENSI_IS20_EEEEEENSD_INS2_25RemotePresentationContextENSF_IS25_NSG_IS25_EENSI_IS25_EEEEEENSD_INS2_14RemoteQuerySetENSF_IS2A_NSG_IS2A_EENSI_IS2A_EEEEEENSD_INS2_11RemoteQueueENSF_IS2F_NSG_IS2F_EENSI_IS2F_EEEEEENSD_INS2_25RemoteRenderBundleEncoderENSF_IS2K_NSG_IS2K_EENSI_IS2K_EEEEEENSD_INS2_18RemoteRenderBundleENSF_IS2P_NSG_IS2P_EENSI_IS2P_EEEEEENSD_INS2_23RemoteRenderPassEncoderENSF_IS2U_NSG_IS2U_EENSI_IS2U_EEEEEENSD_INS2_20RemoteRenderPipelineENSF_IS2Z_NSG_IS2Z_EENSI_IS2Z_EEEEEENSD_INS2_13RemoteSamplerENSF_IS34_NSG_IS34_EENSI_IS34_EEEEEENSD_INS2_18RemoteShaderModuleENSF_IS39_NSG_IS39_EENSI_IS39_EEEEEENSD_INS2_13RemoteTextureENSF_IS3E_NSG_IS3E_EENSI_IS3E_EEEEEENSD_INS2_17RemoteTextureViewENSF_IS3J_NSG_IS3J_EENSI_IS3J_EEEEEENSD_INS2_15RemoteXRBindingENSF_IS3O_NSG_IS3O_EENSI_IS3O_EEEEEENSD_INS2_16RemoteXRSubImageENSF_IS3T_NSG_IS3T_EENSI_IS3T_EEEEEENSD_INS2_23RemoteXRProjectionLayerENSF_IS3Y_NSG_IS3Y_EENSI_IS3Y_EEEEEENSD_INS2_12RemoteXRViewENSF_IS43_NSG_IS43_EENSI_IS43_EEEEEEEEEEENS_24KeyValuePairKeyExtractorIS49_EENS_11DefaultHashIS6_EENS_7HashMapIS6_S48_S4D_NS_10HashTraitsIS6_EENS4F_IS48_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1ENS_10FastMallocEE18KeyValuePairTraitsES4G_S4K_E6rehashEjPS49_(a1, v5, a2);
}

uint64_t _ZN3WTF9HashTableINS_23ObjectIdentifierGenericIN6WebKit20WebGPUIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEENS_12KeyValuePairIS6_N5mpark7variantIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueINS2_13RemoteAdapterENS_6RefPtrISE_NS_12RawPtrTraitsISE_EENS_21DefaultRefDerefTraitsISE_EEEEEENSD_INS2_15RemoteBindGroupENSF_ISM_NSG_ISM_EENSI_ISM_EEEEEENSD_INS2_21RemoteBindGroupLayoutENSF_ISR_NSG_ISR_EENSI_ISR_EEEEEENSD_INS2_12RemoteBufferENSF_ISW_NSG_ISW_EENSI_ISW_EEEEEENSD_INS2_19RemoteCommandBufferENSF_IS11_NSG_IS11_EENSI_IS11_EEEEEENSD_INS2_20RemoteCommandEncoderENSF_IS16_NSG_IS16_EENSI_IS16_EEEEEENSD_INS2_27RemoteCompositorIntegrationENSF_IS1B_NSG_IS1B_EENSI_IS1B_EEEEEENSD_INS2_24RemoteComputePassEncoderENSF_IS1G_NSG_IS1G_EENSI_IS1G_EEEEEENSD_INS2_21RemoteComputePipelineENSF_IS1L_NSG_IS1L_EENSI_IS1L_EEEEEENSD_INS2_12RemoteDeviceENSF_IS1Q_NSG_IS1Q_EENSI_IS1Q_EEEEEENSD_INS2_21RemoteExternalTextureENSF_IS1V_NSG_IS1V_EENSI_IS1V_EEEEEENSD_INS2_20RemotePipelineLayoutENSF_IS20_NSG_IS20_EENSI_IS20_EEEEEENSD_INS2_25RemotePresentationContextENSF_IS25_NSG_IS25_EENSI_IS25_EEEEEENSD_INS2_14RemoteQuerySetENSF_IS2A_NSG_IS2A_EENSI_IS2A_EEEEEENSD_INS2_11RemoteQueueENSF_IS2F_NSG_IS2F_EENSI_IS2F_EEEEEENSD_INS2_25RemoteRenderBundleEncoderENSF_IS2K_NSG_IS2K_EENSI_IS2K_EEEEEENSD_INS2_18RemoteRenderBundleENSF_IS2P_NSG_IS2P_EENSI_IS2P_EEEEEENSD_INS2_23RemoteRenderPassEncoderENSF_IS2U_NSG_IS2U_EENSI_IS2U_EEEEEENSD_INS2_20RemoteRenderPipelineENSF_IS2Z_NSG_IS2Z_EENSI_IS2Z_EEEEEENSD_INS2_13RemoteSamplerENSF_IS34_NSG_IS34_EENSI_IS34_EEEEEENSD_INS2_18RemoteShaderModuleENSF_IS39_NSG_IS39_EENSI_IS39_EEEEEENSD_INS2_13RemoteTextureENSF_IS3E_NSG_IS3E_EENSI_IS3E_EEEEEENSD_INS2_17RemoteTextureViewENSF_IS3J_NSG_IS3J_EENSI_IS3J_EEEEEENSD_INS2_15RemoteXRBindingENSF_IS3O_NSG_IS3O_EENSI_IS3O_EEEEEENSD_INS2_16RemoteXRSubImageENSF_IS3T_NSG_IS3T_EENSI_IS3T_EEEEEENSD_INS2_23RemoteXRProjectionLayerENSF_IS3Y_NSG_IS3Y_EENSI_IS3Y_EEEEEENSD_INS2_12RemoteXRViewENSF_IS43_NSG_IS43_EENSI_IS43_EEEEEEEEEEENS_24KeyValuePairKeyExtractorIS49_EENS_11DefaultHashIS6_EENS_7HashMapIS6_S48_S4D_NS_10HashTraitsIS6_EENS4F_IS48_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1ENS_10FastMallocEE18KeyValuePairTraitsES4G_S4K_E6rehashEjPS49_(uint64_t *a1, unsigned int a2, uint64_t *a3)
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
  if (a2)
  {
    v10 = a2;
    v11 = v8 + 8;
    do
    {
      *(v11 - 2) = 0;
      *v11 = 0;
      v11 += 24;
      --v10;
    }

    while (v10);
  }

  *a1 = (v8 + 4);
  v8[2] = a2 - 1;
  v8[3] = a2;
  *v8 = 0;
  v8[1] = v7;
  if (v6)
  {
    v12 = 0;
    v13 = 0;
    while (1)
    {
      v14 = (v5 + 24 * v12);
      v15 = *v14;
      if (*v14 != -1)
      {
        if (v15)
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

          v18 = (v15 + ~(v15 << 32)) ^ ((v15 + ~(v15 << 32)) >> 22);
          v19 = 9 * ((v18 + ~(v18 << 13)) ^ ((v18 + ~(v18 << 13)) >> 8));
          v20 = (v19 ^ (v19 >> 15)) + ~((v19 ^ (v19 >> 15)) << 27);
          v21 = v17 & ((v20 >> 31) ^ v20);
          v22 = 1;
          do
          {
            v23 = v16 + 24 * v21;
            v21 = (v21 + v22++) & v17;
          }

          while (*v23);
          if (*(v23 + 16) != 255)
          {
            _ZN5mpark6detail10visitation3alt9visit_altINS0_4dtorEJRNS0_10destructorINS0_6traitsIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueIN6WebKit13RemoteAdapterEN3WTF6RefPtrISC_NSD_12RawPtrTraitsISC_EENSD_21DefaultRefDerefTraitsISC_EEEEEENSA_INSB_15RemoteBindGroupENSE_ISL_NSF_ISL_EENSH_ISL_EEEEEENSA_INSB_21RemoteBindGroupLayoutENSE_ISQ_NSF_ISQ_EENSH_ISQ_EEEEEENSA_INSB_12RemoteBufferENSE_ISV_NSF_ISV_EENSH_ISV_EEEEEENSA_INSB_19RemoteCommandBufferENSE_IS10_NSF_IS10_EENSH_IS10_EEEEEENSA_INSB_20RemoteCommandEncoderENSE_IS15_NSF_IS15_EENSH_IS15_EEEEEENSA_INSB_27RemoteCompositorIntegrationENSE_IS1A_NSF_IS1A_EENSH_IS1A_EEEEEENSA_INSB_24RemoteComputePassEncoderENSE_IS1F_NSF_IS1F_EENSH_IS1F_EEEEEENSA_INSB_21RemoteComputePipelineENSE_IS1K_NSF_IS1K_EENSH_IS1K_EEEEEENSA_INSB_12RemoteDeviceENSE_IS1P_NSF_IS1P_EENSH_IS1P_EEEEEENSA_INSB_21RemoteExternalTextureENSE_IS1U_NSF_IS1U_EENSH_IS1U_EEEEEENSA_INSB_20RemotePipelineLayoutENSE_IS1Z_NSF_IS1Z_EENSH_IS1Z_EEEEEENSA_INSB_25RemotePresentationContextENSE_IS24_NSF_IS24_EENSH_IS24_EEEEEENSA_INSB_14RemoteQuerySetENSE_IS29_NSF_IS29_EENSH_IS29_EEEEEENSA_INSB_11RemoteQueueENSE_IS2E_NSF_IS2E_EENSH_IS2E_EEEEEENSA_INSB_25RemoteRenderBundleEncoderENSE_IS2J_NSF_IS2J_EENSH_IS2J_EEEEEENSA_INSB_18RemoteRenderBundleENSE_IS2O_NSF_IS2O_EENSH_IS2O_EEEEEENSA_INSB_23RemoteRenderPassEncoderENSE_IS2T_NSF_IS2T_EENSH_IS2T_EEEEEENSA_INSB_20RemoteRenderPipelineENSE_IS2Y_NSF_IS2Y_EENSH_IS2Y_EEEEEENSA_INSB_13RemoteSamplerENSE_IS33_NSF_IS33_EENSH_IS33_EEEEEENSA_INSB_18RemoteShaderModuleENSE_IS38_NSF_IS38_EENSH_IS38_EEEEEENSA_INSB_13RemoteTextureENSE_IS3D_NSF_IS3D_EENSH_IS3D_EEEEEENSA_INSB_17RemoteTextureViewENSE_IS3I_NSF_IS3I_EENSH_IS3I_EEEEEENSA_INSB_15RemoteXRBindingENSE_IS3N_NSF_IS3N_EENSH_IS3N_EEEEEENSA_INSB_16RemoteXRSubImageENSE_IS3S_NSF_IS3S_EENSH_IS3S_EEEEEENSA_INSB_23RemoteXRProjectionLayerENSE_IS3X_NSF_IS3X_EENSH_IS3X_EEEEEENSA_INSB_12RemoteXRViewENSE_IS42_NSF_IS42_EENSH_IS42_EEEEEEEEELNS0_5TraitE1EEEEEEDcOT_DpOT0_(&v28, v23 + 8);
          }

          *(v23 + 16) = -1;
          *v23 = *v14;
          *(v23 + 8) = 0;
          *(v23 + 16) = -1;
          v24 = *(v14 + 16);
          if (*(v14 + 16))
          {
            if (v24 != 255)
            {
              *(v23 + 8) = v14[1];
              v14[1] = 0;
              goto LABEL_24;
            }
          }

          else
          {
LABEL_24:
            *(v23 + 16) = v24;
            if (*(v14 + 16) != 255)
            {
              _ZN5mpark6detail10visitation3alt9visit_altINS0_4dtorEJRNS0_10destructorINS0_6traitsIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueIN6WebKit13RemoteAdapterEN3WTF6RefPtrISC_NSD_12RawPtrTraitsISC_EENSD_21DefaultRefDerefTraitsISC_EEEEEENSA_INSB_15RemoteBindGroupENSE_ISL_NSF_ISL_EENSH_ISL_EEEEEENSA_INSB_21RemoteBindGroupLayoutENSE_ISQ_NSF_ISQ_EENSH_ISQ_EEEEEENSA_INSB_12RemoteBufferENSE_ISV_NSF_ISV_EENSH_ISV_EEEEEENSA_INSB_19RemoteCommandBufferENSE_IS10_NSF_IS10_EENSH_IS10_EEEEEENSA_INSB_20RemoteCommandEncoderENSE_IS15_NSF_IS15_EENSH_IS15_EEEEEENSA_INSB_27RemoteCompositorIntegrationENSE_IS1A_NSF_IS1A_EENSH_IS1A_EEEEEENSA_INSB_24RemoteComputePassEncoderENSE_IS1F_NSF_IS1F_EENSH_IS1F_EEEEEENSA_INSB_21RemoteComputePipelineENSE_IS1K_NSF_IS1K_EENSH_IS1K_EEEEEENSA_INSB_12RemoteDeviceENSE_IS1P_NSF_IS1P_EENSH_IS1P_EEEEEENSA_INSB_21RemoteExternalTextureENSE_IS1U_NSF_IS1U_EENSH_IS1U_EEEEEENSA_INSB_20RemotePipelineLayoutENSE_IS1Z_NSF_IS1Z_EENSH_IS1Z_EEEEEENSA_INSB_25RemotePresentationContextENSE_IS24_NSF_IS24_EENSH_IS24_EEEEEENSA_INSB_14RemoteQuerySetENSE_IS29_NSF_IS29_EENSH_IS29_EEEEEENSA_INSB_11RemoteQueueENSE_IS2E_NSF_IS2E_EENSH_IS2E_EEEEEENSA_INSB_25RemoteRenderBundleEncoderENSE_IS2J_NSF_IS2J_EENSH_IS2J_EEEEEENSA_INSB_18RemoteRenderBundleENSE_IS2O_NSF_IS2O_EENSH_IS2O_EEEEEENSA_INSB_23RemoteRenderPassEncoderENSE_IS2T_NSF_IS2T_EENSH_IS2T_EEEEEENSA_INSB_20RemoteRenderPipelineENSE_IS2Y_NSF_IS2Y_EENSH_IS2Y_EEEEEENSA_INSB_13RemoteSamplerENSE_IS33_NSF_IS33_EENSH_IS33_EEEEEENSA_INSB_18RemoteShaderModuleENSE_IS38_NSF_IS38_EENSH_IS38_EEEEEENSA_INSB_13RemoteTextureENSE_IS3D_NSF_IS3D_EENSH_IS3D_EEEEEENSA_INSB_17RemoteTextureViewENSE_IS3I_NSF_IS3I_EENSH_IS3I_EEEEEENSA_INSB_15RemoteXRBindingENSE_IS3N_NSF_IS3N_EENSH_IS3N_EEEEEENSA_INSB_16RemoteXRSubImageENSE_IS3S_NSF_IS3S_EENSH_IS3S_EEEEEENSA_INSB_23RemoteXRProjectionLayerENSE_IS3X_NSF_IS3X_EENSH_IS3X_EEEEEENSA_INSB_12RemoteXRViewENSE_IS42_NSF_IS42_EENSH_IS42_EEEEEEEEELNS0_5TraitE1EEEEEEDcOT_DpOT0_(&v29, (v14 + 1));
            }
          }

          *(v14 + 16) = -1;
          if (v14 == a3)
          {
            v13 = v23;
          }

          goto LABEL_28;
        }

        if (*(v14 + 16) != 255)
        {
          _ZN5mpark6detail10visitation3alt9visit_altINS0_4dtorEJRNS0_10destructorINS0_6traitsIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueIN6WebKit13RemoteAdapterEN3WTF6RefPtrISC_NSD_12RawPtrTraitsISC_EENSD_21DefaultRefDerefTraitsISC_EEEEEENSA_INSB_15RemoteBindGroupENSE_ISL_NSF_ISL_EENSH_ISL_EEEEEENSA_INSB_21RemoteBindGroupLayoutENSE_ISQ_NSF_ISQ_EENSH_ISQ_EEEEEENSA_INSB_12RemoteBufferENSE_ISV_NSF_ISV_EENSH_ISV_EEEEEENSA_INSB_19RemoteCommandBufferENSE_IS10_NSF_IS10_EENSH_IS10_EEEEEENSA_INSB_20RemoteCommandEncoderENSE_IS15_NSF_IS15_EENSH_IS15_EEEEEENSA_INSB_27RemoteCompositorIntegrationENSE_IS1A_NSF_IS1A_EENSH_IS1A_EEEEEENSA_INSB_24RemoteComputePassEncoderENSE_IS1F_NSF_IS1F_EENSH_IS1F_EEEEEENSA_INSB_21RemoteComputePipelineENSE_IS1K_NSF_IS1K_EENSH_IS1K_EEEEEENSA_INSB_12RemoteDeviceENSE_IS1P_NSF_IS1P_EENSH_IS1P_EEEEEENSA_INSB_21RemoteExternalTextureENSE_IS1U_NSF_IS1U_EENSH_IS1U_EEEEEENSA_INSB_20RemotePipelineLayoutENSE_IS1Z_NSF_IS1Z_EENSH_IS1Z_EEEEEENSA_INSB_25RemotePresentationContextENSE_IS24_NSF_IS24_EENSH_IS24_EEEEEENSA_INSB_14RemoteQuerySetENSE_IS29_NSF_IS29_EENSH_IS29_EEEEEENSA_INSB_11RemoteQueueENSE_IS2E_NSF_IS2E_EENSH_IS2E_EEEEEENSA_INSB_25RemoteRenderBundleEncoderENSE_IS2J_NSF_IS2J_EENSH_IS2J_EEEEEENSA_INSB_18RemoteRenderBundleENSE_IS2O_NSF_IS2O_EENSH_IS2O_EEEEEENSA_INSB_23RemoteRenderPassEncoderENSE_IS2T_NSF_IS2T_EENSH_IS2T_EEEEEENSA_INSB_20RemoteRenderPipelineENSE_IS2Y_NSF_IS2Y_EENSH_IS2Y_EEEEEENSA_INSB_13RemoteSamplerENSE_IS33_NSF_IS33_EENSH_IS33_EEEEEENSA_INSB_18RemoteShaderModuleENSE_IS38_NSF_IS38_EENSH_IS38_EEEEEENSA_INSB_13RemoteTextureENSE_IS3D_NSF_IS3D_EENSH_IS3D_EEEEEENSA_INSB_17RemoteTextureViewENSE_IS3I_NSF_IS3I_EENSH_IS3I_EEEEEENSA_INSB_15RemoteXRBindingENSE_IS3N_NSF_IS3N_EENSH_IS3N_EEEEEENSA_INSB_16RemoteXRSubImageENSE_IS3S_NSF_IS3S_EENSH_IS3S_EEEEEENSA_INSB_23RemoteXRProjectionLayerENSE_IS3X_NSF_IS3X_EENSH_IS3X_EEEEEENSA_INSB_12RemoteXRViewENSE_IS42_NSF_IS42_EENSH_IS42_EEEEEEEEELNS0_5TraitE1EEEEEEDcOT_DpOT0_(&v27, (v14 + 1));
        }

        *(v14 + 16) = -1;
      }

LABEL_28:
      if (++v12 == v6)
      {
        goto LABEL_31;
      }
    }
  }

  v13 = 0;
  result = 0;
  if (v5)
  {
LABEL_31:
    WTF::fastFree((v5 - 16), v9);
    return v13;
  }

  return result;
}

WebKit::RemoteBindGroup *IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteBindGroup,WTF::RefPtr<WebKit::RemoteBindGroup,WTF::RawPtrTraits<WebKit::RemoteBindGroup>,WTF::DefaultRefDerefTraits<WebKit::RemoteBindGroup>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::RemoteBindGroup,WTF::RawPtrTraits<WebKit::RemoteBindGroup>,WTF::DefaultRefDerefTraits<WebKit::RemoteBindGroup>>>(WebKit::RemoteBindGroup **a1)
{
  WebKit::RemoteBindGroup::stopListeningForIPC(*a1);
  result = *a1;
  *a1 = 0;
  if (result && atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, result + 2);
    v3 = *(*result + 8);

    return v3();
  }

  return result;
}

WebKit::RemoteBindGroupLayout *IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteBindGroupLayout,WTF::RefPtr<WebKit::RemoteBindGroupLayout,WTF::RawPtrTraits<WebKit::RemoteBindGroupLayout>,WTF::DefaultRefDerefTraits<WebKit::RemoteBindGroupLayout>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::RemoteBindGroupLayout,WTF::RawPtrTraits<WebKit::RemoteBindGroupLayout>,WTF::DefaultRefDerefTraits<WebKit::RemoteBindGroupLayout>>>(WebKit::RemoteBindGroupLayout **a1)
{
  WebKit::RemoteBindGroupLayout::stopListeningForIPC(*a1);
  result = *a1;
  *a1 = 0;
  if (result && atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, result + 2);
    v3 = *(*result + 8);

    return v3();
  }

  return result;
}

WebKit::RemoteBuffer *IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteBuffer,WTF::RefPtr<WebKit::RemoteBuffer,WTF::RawPtrTraits<WebKit::RemoteBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteBuffer>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::RemoteBuffer,WTF::RawPtrTraits<WebKit::RemoteBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteBuffer>>>(WebKit::RemoteBuffer **a1)
{
  WebKit::RemoteBuffer::stopListeningForIPC(*a1);
  result = *a1;
  *a1 = 0;
  if (result && atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, result + 2);
    v3 = *(*result + 8);

    return v3();
  }

  return result;
}

WebKit::RemoteCommandBuffer *IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteCommandBuffer,WTF::RefPtr<WebKit::RemoteCommandBuffer,WTF::RawPtrTraits<WebKit::RemoteCommandBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteCommandBuffer>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::RemoteCommandBuffer,WTF::RawPtrTraits<WebKit::RemoteCommandBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteCommandBuffer>>>(WebKit::RemoteCommandBuffer **a1)
{
  WebKit::RemoteCommandBuffer::stopListeningForIPC(*a1);
  result = *a1;
  *a1 = 0;
  if (result && atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, result + 2);
    v3 = *(*result + 8);

    return v3();
  }

  return result;
}

WebKit::RemoteCommandEncoder *IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteCommandEncoder,WTF::RefPtr<WebKit::RemoteCommandEncoder,WTF::RawPtrTraits<WebKit::RemoteCommandEncoder>,WTF::DefaultRefDerefTraits<WebKit::RemoteCommandEncoder>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::RemoteCommandEncoder,WTF::RawPtrTraits<WebKit::RemoteCommandEncoder>,WTF::DefaultRefDerefTraits<WebKit::RemoteCommandEncoder>>>(WebKit::RemoteCommandEncoder **a1)
{
  WebKit::RemoteCommandEncoder::stopListeningForIPC(*a1);
  result = *a1;
  *a1 = 0;
  if (result && atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, result + 2);
    v3 = *(*result + 8);

    return v3();
  }

  return result;
}

WebKit::RemoteCompositorIntegration *IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteCompositorIntegration,WTF::RefPtr<WebKit::RemoteCompositorIntegration,WTF::RawPtrTraits<WebKit::RemoteCompositorIntegration>,WTF::DefaultRefDerefTraits<WebKit::RemoteCompositorIntegration>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::RemoteCompositorIntegration,WTF::RawPtrTraits<WebKit::RemoteCompositorIntegration>,WTF::DefaultRefDerefTraits<WebKit::RemoteCompositorIntegration>>>(WebKit::RemoteCompositorIntegration **a1)
{
  WebKit::RemoteCompositorIntegration::stopListeningForIPC(*a1);
  result = *a1;
  *a1 = 0;
  if (result && atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, result + 2);
    v3 = *(*result + 8);

    return v3();
  }

  return result;
}

WebKit::RemoteComputePassEncoder *IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteComputePassEncoder,WTF::RefPtr<WebKit::RemoteComputePassEncoder,WTF::RawPtrTraits<WebKit::RemoteComputePassEncoder>,WTF::DefaultRefDerefTraits<WebKit::RemoteComputePassEncoder>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::RemoteComputePassEncoder,WTF::RawPtrTraits<WebKit::RemoteComputePassEncoder>,WTF::DefaultRefDerefTraits<WebKit::RemoteComputePassEncoder>>>(WebKit::RemoteComputePassEncoder **a1)
{
  WebKit::RemoteComputePassEncoder::stopListeningForIPC(*a1);
  result = *a1;
  *a1 = 0;
  if (result && atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, result + 2);
    v3 = *(*result + 8);

    return v3();
  }

  return result;
}

WebKit::RemoteComputePipeline *IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteComputePipeline,WTF::RefPtr<WebKit::RemoteComputePipeline,WTF::RawPtrTraits<WebKit::RemoteComputePipeline>,WTF::DefaultRefDerefTraits<WebKit::RemoteComputePipeline>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::RemoteComputePipeline,WTF::RawPtrTraits<WebKit::RemoteComputePipeline>,WTF::DefaultRefDerefTraits<WebKit::RemoteComputePipeline>>>(WebKit::RemoteComputePipeline **a1)
{
  WebKit::RemoteComputePipeline::stopListeningForIPC(*a1);
  result = *a1;
  *a1 = 0;
  if (result && atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, result + 2);
    v3 = *(*result + 8);

    return v3();
  }

  return result;
}

unsigned int *IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteDevice,WTF::RefPtr<WebKit::RemoteDevice,WTF::RawPtrTraits<WebKit::RemoteDevice>,WTF::DefaultRefDerefTraits<WebKit::RemoteDevice>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::RemoteDevice,WTF::RawPtrTraits<WebKit::RemoteDevice>,WTF::DefaultRefDerefTraits<WebKit::RemoteDevice>>>(unsigned int **a1)
{
  IPC::StreamServerConnection::stopReceivingMessages(*(*a1 + 4), 0x4Du, *(*a1 + 5));
  result = *a1;
  *a1 = 0;
  if (result && atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, result + 2);
    v3 = *(*result + 8);

    return v3();
  }

  return result;
}

WebKit::RemoteExternalTexture *IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteExternalTexture,WTF::RefPtr<WebKit::RemoteExternalTexture,WTF::RawPtrTraits<WebKit::RemoteExternalTexture>,WTF::DefaultRefDerefTraits<WebKit::RemoteExternalTexture>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::RemoteExternalTexture,WTF::RawPtrTraits<WebKit::RemoteExternalTexture>,WTF::DefaultRefDerefTraits<WebKit::RemoteExternalTexture>>>(WebKit::RemoteExternalTexture **a1)
{
  WebKit::RemoteExternalTexture::stopListeningForIPC(*a1);
  result = *a1;
  *a1 = 0;
  if (result && atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, result + 2);
    v3 = *(*result + 8);

    return v3();
  }

  return result;
}

WebKit::RemotePipelineLayout *IPC::ScopedActiveMessageReceiveQueue<WebKit::RemotePipelineLayout,WTF::RefPtr<WebKit::RemotePipelineLayout,WTF::RawPtrTraits<WebKit::RemotePipelineLayout>,WTF::DefaultRefDerefTraits<WebKit::RemotePipelineLayout>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::RemotePipelineLayout,WTF::RawPtrTraits<WebKit::RemotePipelineLayout>,WTF::DefaultRefDerefTraits<WebKit::RemotePipelineLayout>>>(WebKit::RemotePipelineLayout **a1)
{
  WebKit::RemotePipelineLayout::stopListeningForIPC(*a1);
  result = *a1;
  *a1 = 0;
  if (result && atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, result + 2);
    v3 = *(*result + 8);

    return v3();
  }

  return result;
}

WebKit::RemotePresentationContext *IPC::ScopedActiveMessageReceiveQueue<WebKit::RemotePresentationContext,WTF::RefPtr<WebKit::RemotePresentationContext,WTF::RawPtrTraits<WebKit::RemotePresentationContext>,WTF::DefaultRefDerefTraits<WebKit::RemotePresentationContext>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::RemotePresentationContext,WTF::RawPtrTraits<WebKit::RemotePresentationContext>,WTF::DefaultRefDerefTraits<WebKit::RemotePresentationContext>>>(WebKit::RemotePresentationContext **a1)
{
  WebKit::RemotePresentationContext::stopListeningForIPC(*a1);
  result = *a1;
  *a1 = 0;
  if (result && atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, result + 2);
    v3 = *(*result + 8);

    return v3();
  }

  return result;
}

WebKit::RemoteQuerySet *IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteQuerySet,WTF::RefPtr<WebKit::RemoteQuerySet,WTF::RawPtrTraits<WebKit::RemoteQuerySet>,WTF::DefaultRefDerefTraits<WebKit::RemoteQuerySet>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::RemoteQuerySet,WTF::RawPtrTraits<WebKit::RemoteQuerySet>,WTF::DefaultRefDerefTraits<WebKit::RemoteQuerySet>>>(WebKit::RemoteQuerySet **a1)
{
  WebKit::RemoteQuerySet::stopListeningForIPC(*a1);
  result = *a1;
  *a1 = 0;
  if (result && atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, result + 2);
    v3 = *(*result + 8);

    return v3();
  }

  return result;
}

WebKit::RemoteQueue *IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteQueue,WTF::RefPtr<WebKit::RemoteQueue,WTF::RawPtrTraits<WebKit::RemoteQueue>,WTF::DefaultRefDerefTraits<WebKit::RemoteQueue>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::RemoteQueue,WTF::RawPtrTraits<WebKit::RemoteQueue>,WTF::DefaultRefDerefTraits<WebKit::RemoteQueue>>>(WebKit::RemoteQueue **a1)
{
  WebKit::RemoteQueue::stopListeningForIPC(*a1);
  result = *a1;
  *a1 = 0;
  if (result && atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, result + 2);
    v3 = *(*result + 8);

    return v3();
  }

  return result;
}

WebKit::RemoteRenderBundleEncoder *IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderBundleEncoder,WTF::RefPtr<WebKit::RemoteRenderBundleEncoder,WTF::RawPtrTraits<WebKit::RemoteRenderBundleEncoder>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderBundleEncoder>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::RemoteRenderBundleEncoder,WTF::RawPtrTraits<WebKit::RemoteRenderBundleEncoder>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderBundleEncoder>>>(WebKit::RemoteRenderBundleEncoder **a1)
{
  WebKit::RemoteRenderBundleEncoder::stopListeningForIPC(*a1);
  result = *a1;
  *a1 = 0;
  if (result && atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, result + 2);
    v3 = *(*result + 8);

    return v3();
  }

  return result;
}

WebKit::RemoteRenderBundle *IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderBundle,WTF::RefPtr<WebKit::RemoteRenderBundle,WTF::RawPtrTraits<WebKit::RemoteRenderBundle>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderBundle>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::RemoteRenderBundle,WTF::RawPtrTraits<WebKit::RemoteRenderBundle>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderBundle>>>(WebKit::RemoteRenderBundle **a1)
{
  WebKit::RemoteRenderBundle::stopListeningForIPC(*a1);
  result = *a1;
  *a1 = 0;
  if (result && atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, result + 2);
    v3 = *(*result + 8);

    return v3();
  }

  return result;
}

WebKit::RemoteRenderPassEncoder *IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderPassEncoder,WTF::RefPtr<WebKit::RemoteRenderPassEncoder,WTF::RawPtrTraits<WebKit::RemoteRenderPassEncoder>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderPassEncoder>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::RemoteRenderPassEncoder,WTF::RawPtrTraits<WebKit::RemoteRenderPassEncoder>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderPassEncoder>>>(WebKit::RemoteRenderPassEncoder **a1)
{
  WebKit::RemoteRenderPassEncoder::stopListeningForIPC(*a1);
  result = *a1;
  *a1 = 0;
  if (result && atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, result + 2);
    v3 = *(*result + 8);

    return v3();
  }

  return result;
}

WebKit::RemoteRenderPipeline *IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderPipeline,WTF::RefPtr<WebKit::RemoteRenderPipeline,WTF::RawPtrTraits<WebKit::RemoteRenderPipeline>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderPipeline>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::RemoteRenderPipeline,WTF::RawPtrTraits<WebKit::RemoteRenderPipeline>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderPipeline>>>(WebKit::RemoteRenderPipeline **a1)
{
  WebKit::RemoteRenderPipeline::stopListeningForIPC(*a1);
  result = *a1;
  *a1 = 0;
  if (result && atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, result + 2);
    v3 = *(*result + 8);

    return v3();
  }

  return result;
}

WebKit::RemoteSampler *IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteSampler,WTF::RefPtr<WebKit::RemoteSampler,WTF::RawPtrTraits<WebKit::RemoteSampler>,WTF::DefaultRefDerefTraits<WebKit::RemoteSampler>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::RemoteSampler,WTF::RawPtrTraits<WebKit::RemoteSampler>,WTF::DefaultRefDerefTraits<WebKit::RemoteSampler>>>(WebKit::RemoteSampler **a1)
{
  WebKit::RemoteSampler::stopListeningForIPC(*a1);
  result = *a1;
  *a1 = 0;
  if (result && atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, result + 2);
    v3 = *(*result + 8);

    return v3();
  }

  return result;
}

WebKit::RemoteShaderModule *IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteShaderModule,WTF::RefPtr<WebKit::RemoteShaderModule,WTF::RawPtrTraits<WebKit::RemoteShaderModule>,WTF::DefaultRefDerefTraits<WebKit::RemoteShaderModule>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::RemoteShaderModule,WTF::RawPtrTraits<WebKit::RemoteShaderModule>,WTF::DefaultRefDerefTraits<WebKit::RemoteShaderModule>>>(WebKit::RemoteShaderModule **a1)
{
  WebKit::RemoteShaderModule::stopListeningForIPC(*a1);
  result = *a1;
  *a1 = 0;
  if (result && atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, result + 2);
    v3 = *(*result + 8);

    return v3();
  }

  return result;
}

WebKit::RemoteTexture *IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteTexture,WTF::RefPtr<WebKit::RemoteTexture,WTF::RawPtrTraits<WebKit::RemoteTexture>,WTF::DefaultRefDerefTraits<WebKit::RemoteTexture>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::RemoteTexture,WTF::RawPtrTraits<WebKit::RemoteTexture>,WTF::DefaultRefDerefTraits<WebKit::RemoteTexture>>>(WebKit::RemoteTexture **a1)
{
  WebKit::RemoteTexture::stopListeningForIPC(*a1);
  result = *a1;
  *a1 = 0;
  if (result && atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, result + 2);
    v3 = *(*result + 8);

    return v3();
  }

  return result;
}

WebKit::RemoteTextureView *IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteTextureView,WTF::RefPtr<WebKit::RemoteTextureView,WTF::RawPtrTraits<WebKit::RemoteTextureView>,WTF::DefaultRefDerefTraits<WebKit::RemoteTextureView>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::RemoteTextureView,WTF::RawPtrTraits<WebKit::RemoteTextureView>,WTF::DefaultRefDerefTraits<WebKit::RemoteTextureView>>>(WebKit::RemoteTextureView **a1)
{
  WebKit::RemoteTextureView::stopListeningForIPC(*a1);
  result = *a1;
  *a1 = 0;
  if (result && atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, result + 2);
    v3 = *(*result + 8);

    return v3();
  }

  return result;
}

WebKit::RemoteXRBinding *IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteXRBinding,WTF::RefPtr<WebKit::RemoteXRBinding,WTF::RawPtrTraits<WebKit::RemoteXRBinding>,WTF::DefaultRefDerefTraits<WebKit::RemoteXRBinding>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::RemoteXRBinding,WTF::RawPtrTraits<WebKit::RemoteXRBinding>,WTF::DefaultRefDerefTraits<WebKit::RemoteXRBinding>>>(WebKit::RemoteXRBinding **a1)
{
  WebKit::RemoteXRBinding::stopListeningForIPC(*a1);
  result = *a1;
  *a1 = 0;
  if (result && atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, result + 2);
    v3 = *(*result + 8);

    return v3();
  }

  return result;
}

WebKit::RemoteXRSubImage *IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteXRSubImage,WTF::RefPtr<WebKit::RemoteXRSubImage,WTF::RawPtrTraits<WebKit::RemoteXRSubImage>,WTF::DefaultRefDerefTraits<WebKit::RemoteXRSubImage>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::RemoteXRSubImage,WTF::RawPtrTraits<WebKit::RemoteXRSubImage>,WTF::DefaultRefDerefTraits<WebKit::RemoteXRSubImage>>>(WebKit::RemoteXRSubImage **a1)
{
  WebKit::RemoteXRSubImage::stopListeningForIPC(*a1);
  result = *a1;
  *a1 = 0;
  if (result && atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, result + 2);
    v3 = *(*result + 8);

    return v3();
  }

  return result;
}

WebKit::RemoteXRProjectionLayer *IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteXRProjectionLayer,WTF::RefPtr<WebKit::RemoteXRProjectionLayer,WTF::RawPtrTraits<WebKit::RemoteXRProjectionLayer>,WTF::DefaultRefDerefTraits<WebKit::RemoteXRProjectionLayer>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::RemoteXRProjectionLayer,WTF::RawPtrTraits<WebKit::RemoteXRProjectionLayer>,WTF::DefaultRefDerefTraits<WebKit::RemoteXRProjectionLayer>>>(WebKit::RemoteXRProjectionLayer **a1)
{
  WebKit::RemoteXRProjectionLayer::stopListeningForIPC(*a1);
  result = *a1;
  *a1 = 0;
  if (result && atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, result + 2);
    v3 = *(*result + 8);

    return v3();
  }

  return result;
}

WebKit::RemoteXRView *IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteXRView,WTF::RefPtr<WebKit::RemoteXRView,WTF::RawPtrTraits<WebKit::RemoteXRView>,WTF::DefaultRefDerefTraits<WebKit::RemoteXRView>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::RemoteXRView,WTF::RawPtrTraits<WebKit::RemoteXRView>,WTF::DefaultRefDerefTraits<WebKit::RemoteXRView>>>(WebKit::RemoteXRView **a1)
{
  WebKit::RemoteXRView::stopListeningForIPC(*a1);
  result = *a1;
  *a1 = 0;
  if (result && atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, result + 2);
    v3 = *(*result + 8);

    return v3();
  }

  return result;
}

WebKit::RemoteBindGroup **IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteBindGroup,WTF::RefPtr<WebKit::RemoteBindGroup,WTF::RawPtrTraits<WebKit::RemoteBindGroup>,WTF::DefaultRefDerefTraits<WebKit::RemoteBindGroup>>>::~ScopedActiveMessageReceiveQueue(WebKit::RemoteBindGroup **a1)
{
  if (*a1)
  {
    IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteBindGroup,WTF::RefPtr<WebKit::RemoteBindGroup,WTF::RawPtrTraits<WebKit::RemoteBindGroup>,WTF::DefaultRefDerefTraits<WebKit::RemoteBindGroup>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::RemoteBindGroup,WTF::RawPtrTraits<WebKit::RemoteBindGroup>,WTF::DefaultRefDerefTraits<WebKit::RemoteBindGroup>>>(a1);
    v2 = *a1;
    *a1 = 0;
    if (v2)
    {
      if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v2 + 2);
        (*(*v2 + 8))(v2);
      }
    }
  }

  return a1;
}

WebKit::RemoteBindGroupLayout **IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteBindGroupLayout,WTF::RefPtr<WebKit::RemoteBindGroupLayout,WTF::RawPtrTraits<WebKit::RemoteBindGroupLayout>,WTF::DefaultRefDerefTraits<WebKit::RemoteBindGroupLayout>>>::~ScopedActiveMessageReceiveQueue(WebKit::RemoteBindGroupLayout **a1)
{
  if (*a1)
  {
    IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteBindGroupLayout,WTF::RefPtr<WebKit::RemoteBindGroupLayout,WTF::RawPtrTraits<WebKit::RemoteBindGroupLayout>,WTF::DefaultRefDerefTraits<WebKit::RemoteBindGroupLayout>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::RemoteBindGroupLayout,WTF::RawPtrTraits<WebKit::RemoteBindGroupLayout>,WTF::DefaultRefDerefTraits<WebKit::RemoteBindGroupLayout>>>(a1);
    v2 = *a1;
    *a1 = 0;
    if (v2)
    {
      if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v2 + 2);
        (*(*v2 + 8))(v2);
      }
    }
  }

  return a1;
}

WebKit::RemoteBuffer **IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteBuffer,WTF::RefPtr<WebKit::RemoteBuffer,WTF::RawPtrTraits<WebKit::RemoteBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteBuffer>>>::~ScopedActiveMessageReceiveQueue(WebKit::RemoteBuffer **a1)
{
  if (*a1)
  {
    IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteBuffer,WTF::RefPtr<WebKit::RemoteBuffer,WTF::RawPtrTraits<WebKit::RemoteBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteBuffer>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::RemoteBuffer,WTF::RawPtrTraits<WebKit::RemoteBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteBuffer>>>(a1);
    v2 = *a1;
    *a1 = 0;
    if (v2)
    {
      if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v2 + 2);
        (*(*v2 + 8))(v2);
      }
    }
  }

  return a1;
}

WebKit::RemoteCommandBuffer **IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteCommandBuffer,WTF::RefPtr<WebKit::RemoteCommandBuffer,WTF::RawPtrTraits<WebKit::RemoteCommandBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteCommandBuffer>>>::~ScopedActiveMessageReceiveQueue(WebKit::RemoteCommandBuffer **a1)
{
  if (*a1)
  {
    IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteCommandBuffer,WTF::RefPtr<WebKit::RemoteCommandBuffer,WTF::RawPtrTraits<WebKit::RemoteCommandBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteCommandBuffer>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::RemoteCommandBuffer,WTF::RawPtrTraits<WebKit::RemoteCommandBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteCommandBuffer>>>(a1);
    v2 = *a1;
    *a1 = 0;
    if (v2)
    {
      if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v2 + 2);
        (*(*v2 + 8))(v2);
      }
    }
  }

  return a1;
}

WebKit::RemoteCommandEncoder **IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteCommandEncoder,WTF::RefPtr<WebKit::RemoteCommandEncoder,WTF::RawPtrTraits<WebKit::RemoteCommandEncoder>,WTF::DefaultRefDerefTraits<WebKit::RemoteCommandEncoder>>>::~ScopedActiveMessageReceiveQueue(WebKit::RemoteCommandEncoder **a1)
{
  if (*a1)
  {
    IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteCommandEncoder,WTF::RefPtr<WebKit::RemoteCommandEncoder,WTF::RawPtrTraits<WebKit::RemoteCommandEncoder>,WTF::DefaultRefDerefTraits<WebKit::RemoteCommandEncoder>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::RemoteCommandEncoder,WTF::RawPtrTraits<WebKit::RemoteCommandEncoder>,WTF::DefaultRefDerefTraits<WebKit::RemoteCommandEncoder>>>(a1);
    v2 = *a1;
    *a1 = 0;
    if (v2)
    {
      if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v2 + 2);
        (*(*v2 + 8))(v2);
      }
    }
  }

  return a1;
}

WebKit::RemoteCompositorIntegration **IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteCompositorIntegration,WTF::RefPtr<WebKit::RemoteCompositorIntegration,WTF::RawPtrTraits<WebKit::RemoteCompositorIntegration>,WTF::DefaultRefDerefTraits<WebKit::RemoteCompositorIntegration>>>::~ScopedActiveMessageReceiveQueue(WebKit::RemoteCompositorIntegration **a1)
{
  if (*a1)
  {
    IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteCompositorIntegration,WTF::RefPtr<WebKit::RemoteCompositorIntegration,WTF::RawPtrTraits<WebKit::RemoteCompositorIntegration>,WTF::DefaultRefDerefTraits<WebKit::RemoteCompositorIntegration>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::RemoteCompositorIntegration,WTF::RawPtrTraits<WebKit::RemoteCompositorIntegration>,WTF::DefaultRefDerefTraits<WebKit::RemoteCompositorIntegration>>>(a1);
    v2 = *a1;
    *a1 = 0;
    if (v2)
    {
      if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v2 + 2);
        (*(*v2 + 8))(v2);
      }
    }
  }

  return a1;
}

WebKit::RemoteComputePassEncoder **IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteComputePassEncoder,WTF::RefPtr<WebKit::RemoteComputePassEncoder,WTF::RawPtrTraits<WebKit::RemoteComputePassEncoder>,WTF::DefaultRefDerefTraits<WebKit::RemoteComputePassEncoder>>>::~ScopedActiveMessageReceiveQueue(WebKit::RemoteComputePassEncoder **a1)
{
  if (*a1)
  {
    IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteComputePassEncoder,WTF::RefPtr<WebKit::RemoteComputePassEncoder,WTF::RawPtrTraits<WebKit::RemoteComputePassEncoder>,WTF::DefaultRefDerefTraits<WebKit::RemoteComputePassEncoder>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::RemoteComputePassEncoder,WTF::RawPtrTraits<WebKit::RemoteComputePassEncoder>,WTF::DefaultRefDerefTraits<WebKit::RemoteComputePassEncoder>>>(a1);
    v2 = *a1;
    *a1 = 0;
    if (v2)
    {
      if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v2 + 2);
        (*(*v2 + 8))(v2);
      }
    }
  }

  return a1;
}

WebKit::RemoteComputePipeline **IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteComputePipeline,WTF::RefPtr<WebKit::RemoteComputePipeline,WTF::RawPtrTraits<WebKit::RemoteComputePipeline>,WTF::DefaultRefDerefTraits<WebKit::RemoteComputePipeline>>>::~ScopedActiveMessageReceiveQueue(WebKit::RemoteComputePipeline **a1)
{
  if (*a1)
  {
    IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteComputePipeline,WTF::RefPtr<WebKit::RemoteComputePipeline,WTF::RawPtrTraits<WebKit::RemoteComputePipeline>,WTF::DefaultRefDerefTraits<WebKit::RemoteComputePipeline>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::RemoteComputePipeline,WTF::RawPtrTraits<WebKit::RemoteComputePipeline>,WTF::DefaultRefDerefTraits<WebKit::RemoteComputePipeline>>>(a1);
    v2 = *a1;
    *a1 = 0;
    if (v2)
    {
      if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v2 + 2);
        (*(*v2 + 8))(v2);
      }
    }
  }

  return a1;
}

unsigned int **IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteDevice,WTF::RefPtr<WebKit::RemoteDevice,WTF::RawPtrTraits<WebKit::RemoteDevice>,WTF::DefaultRefDerefTraits<WebKit::RemoteDevice>>>::~ScopedActiveMessageReceiveQueue(unsigned int **a1)
{
  if (*a1)
  {
    IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteDevice,WTF::RefPtr<WebKit::RemoteDevice,WTF::RawPtrTraits<WebKit::RemoteDevice>,WTF::DefaultRefDerefTraits<WebKit::RemoteDevice>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::RemoteDevice,WTF::RawPtrTraits<WebKit::RemoteDevice>,WTF::DefaultRefDerefTraits<WebKit::RemoteDevice>>>(a1);
    v2 = *a1;
    *a1 = 0;
    if (v2)
    {
      if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v2 + 2);
        (*(*v2 + 8))(v2);
      }
    }
  }

  return a1;
}

WebKit::RemoteExternalTexture **IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteExternalTexture,WTF::RefPtr<WebKit::RemoteExternalTexture,WTF::RawPtrTraits<WebKit::RemoteExternalTexture>,WTF::DefaultRefDerefTraits<WebKit::RemoteExternalTexture>>>::~ScopedActiveMessageReceiveQueue(WebKit::RemoteExternalTexture **a1)
{
  if (*a1)
  {
    IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteExternalTexture,WTF::RefPtr<WebKit::RemoteExternalTexture,WTF::RawPtrTraits<WebKit::RemoteExternalTexture>,WTF::DefaultRefDerefTraits<WebKit::RemoteExternalTexture>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::RemoteExternalTexture,WTF::RawPtrTraits<WebKit::RemoteExternalTexture>,WTF::DefaultRefDerefTraits<WebKit::RemoteExternalTexture>>>(a1);
    v2 = *a1;
    *a1 = 0;
    if (v2)
    {
      if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v2 + 2);
        (*(*v2 + 8))(v2);
      }
    }
  }

  return a1;
}

WebKit::RemotePipelineLayout **IPC::ScopedActiveMessageReceiveQueue<WebKit::RemotePipelineLayout,WTF::RefPtr<WebKit::RemotePipelineLayout,WTF::RawPtrTraits<WebKit::RemotePipelineLayout>,WTF::DefaultRefDerefTraits<WebKit::RemotePipelineLayout>>>::~ScopedActiveMessageReceiveQueue(WebKit::RemotePipelineLayout **a1)
{
  if (*a1)
  {
    IPC::ScopedActiveMessageReceiveQueue<WebKit::RemotePipelineLayout,WTF::RefPtr<WebKit::RemotePipelineLayout,WTF::RawPtrTraits<WebKit::RemotePipelineLayout>,WTF::DefaultRefDerefTraits<WebKit::RemotePipelineLayout>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::RemotePipelineLayout,WTF::RawPtrTraits<WebKit::RemotePipelineLayout>,WTF::DefaultRefDerefTraits<WebKit::RemotePipelineLayout>>>(a1);
    v2 = *a1;
    *a1 = 0;
    if (v2)
    {
      if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v2 + 2);
        (*(*v2 + 8))(v2);
      }
    }
  }

  return a1;
}

WebKit::RemotePresentationContext **IPC::ScopedActiveMessageReceiveQueue<WebKit::RemotePresentationContext,WTF::RefPtr<WebKit::RemotePresentationContext,WTF::RawPtrTraits<WebKit::RemotePresentationContext>,WTF::DefaultRefDerefTraits<WebKit::RemotePresentationContext>>>::~ScopedActiveMessageReceiveQueue(WebKit::RemotePresentationContext **a1)
{
  if (*a1)
  {
    IPC::ScopedActiveMessageReceiveQueue<WebKit::RemotePresentationContext,WTF::RefPtr<WebKit::RemotePresentationContext,WTF::RawPtrTraits<WebKit::RemotePresentationContext>,WTF::DefaultRefDerefTraits<WebKit::RemotePresentationContext>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::RemotePresentationContext,WTF::RawPtrTraits<WebKit::RemotePresentationContext>,WTF::DefaultRefDerefTraits<WebKit::RemotePresentationContext>>>(a1);
    v2 = *a1;
    *a1 = 0;
    if (v2)
    {
      if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v2 + 2);
        (*(*v2 + 8))(v2);
      }
    }
  }

  return a1;
}

WebKit::RemoteQuerySet **IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteQuerySet,WTF::RefPtr<WebKit::RemoteQuerySet,WTF::RawPtrTraits<WebKit::RemoteQuerySet>,WTF::DefaultRefDerefTraits<WebKit::RemoteQuerySet>>>::~ScopedActiveMessageReceiveQueue(WebKit::RemoteQuerySet **a1)
{
  if (*a1)
  {
    IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteQuerySet,WTF::RefPtr<WebKit::RemoteQuerySet,WTF::RawPtrTraits<WebKit::RemoteQuerySet>,WTF::DefaultRefDerefTraits<WebKit::RemoteQuerySet>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::RemoteQuerySet,WTF::RawPtrTraits<WebKit::RemoteQuerySet>,WTF::DefaultRefDerefTraits<WebKit::RemoteQuerySet>>>(a1);
    v2 = *a1;
    *a1 = 0;
    if (v2)
    {
      if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v2 + 2);
        (*(*v2 + 8))(v2);
      }
    }
  }

  return a1;
}

WebKit::RemoteQueue **IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteQueue,WTF::RefPtr<WebKit::RemoteQueue,WTF::RawPtrTraits<WebKit::RemoteQueue>,WTF::DefaultRefDerefTraits<WebKit::RemoteQueue>>>::~ScopedActiveMessageReceiveQueue(WebKit::RemoteQueue **a1)
{
  if (*a1)
  {
    IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteQueue,WTF::RefPtr<WebKit::RemoteQueue,WTF::RawPtrTraits<WebKit::RemoteQueue>,WTF::DefaultRefDerefTraits<WebKit::RemoteQueue>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::RemoteQueue,WTF::RawPtrTraits<WebKit::RemoteQueue>,WTF::DefaultRefDerefTraits<WebKit::RemoteQueue>>>(a1);
    v2 = *a1;
    *a1 = 0;
    if (v2)
    {
      if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v2 + 2);
        (*(*v2 + 8))(v2);
      }
    }
  }

  return a1;
}

WebKit::RemoteRenderBundleEncoder **IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderBundleEncoder,WTF::RefPtr<WebKit::RemoteRenderBundleEncoder,WTF::RawPtrTraits<WebKit::RemoteRenderBundleEncoder>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderBundleEncoder>>>::~ScopedActiveMessageReceiveQueue(WebKit::RemoteRenderBundleEncoder **a1)
{
  if (*a1)
  {
    IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderBundleEncoder,WTF::RefPtr<WebKit::RemoteRenderBundleEncoder,WTF::RawPtrTraits<WebKit::RemoteRenderBundleEncoder>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderBundleEncoder>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::RemoteRenderBundleEncoder,WTF::RawPtrTraits<WebKit::RemoteRenderBundleEncoder>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderBundleEncoder>>>(a1);
    v2 = *a1;
    *a1 = 0;
    if (v2)
    {
      if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v2 + 2);
        (*(*v2 + 8))(v2);
      }
    }
  }

  return a1;
}

WebKit::RemoteRenderBundle **IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderBundle,WTF::RefPtr<WebKit::RemoteRenderBundle,WTF::RawPtrTraits<WebKit::RemoteRenderBundle>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderBundle>>>::~ScopedActiveMessageReceiveQueue(WebKit::RemoteRenderBundle **a1)
{
  if (*a1)
  {
    IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderBundle,WTF::RefPtr<WebKit::RemoteRenderBundle,WTF::RawPtrTraits<WebKit::RemoteRenderBundle>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderBundle>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::RemoteRenderBundle,WTF::RawPtrTraits<WebKit::RemoteRenderBundle>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderBundle>>>(a1);
    v2 = *a1;
    *a1 = 0;
    if (v2)
    {
      if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v2 + 2);
        (*(*v2 + 8))(v2);
      }
    }
  }

  return a1;
}

WebKit::RemoteRenderPassEncoder **IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderPassEncoder,WTF::RefPtr<WebKit::RemoteRenderPassEncoder,WTF::RawPtrTraits<WebKit::RemoteRenderPassEncoder>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderPassEncoder>>>::~ScopedActiveMessageReceiveQueue(WebKit::RemoteRenderPassEncoder **a1)
{
  if (*a1)
  {
    IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderPassEncoder,WTF::RefPtr<WebKit::RemoteRenderPassEncoder,WTF::RawPtrTraits<WebKit::RemoteRenderPassEncoder>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderPassEncoder>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::RemoteRenderPassEncoder,WTF::RawPtrTraits<WebKit::RemoteRenderPassEncoder>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderPassEncoder>>>(a1);
    v2 = *a1;
    *a1 = 0;
    if (v2)
    {
      if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v2 + 2);
        (*(*v2 + 8))(v2);
      }
    }
  }

  return a1;
}

WebKit::RemoteRenderPipeline **IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderPipeline,WTF::RefPtr<WebKit::RemoteRenderPipeline,WTF::RawPtrTraits<WebKit::RemoteRenderPipeline>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderPipeline>>>::~ScopedActiveMessageReceiveQueue(WebKit::RemoteRenderPipeline **a1)
{
  if (*a1)
  {
    IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderPipeline,WTF::RefPtr<WebKit::RemoteRenderPipeline,WTF::RawPtrTraits<WebKit::RemoteRenderPipeline>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderPipeline>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::RemoteRenderPipeline,WTF::RawPtrTraits<WebKit::RemoteRenderPipeline>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderPipeline>>>(a1);
    v2 = *a1;
    *a1 = 0;
    if (v2)
    {
      if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v2 + 2);
        (*(*v2 + 8))(v2);
      }
    }
  }

  return a1;
}

WebKit::RemoteSampler **IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteSampler,WTF::RefPtr<WebKit::RemoteSampler,WTF::RawPtrTraits<WebKit::RemoteSampler>,WTF::DefaultRefDerefTraits<WebKit::RemoteSampler>>>::~ScopedActiveMessageReceiveQueue(WebKit::RemoteSampler **a1)
{
  if (*a1)
  {
    IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteSampler,WTF::RefPtr<WebKit::RemoteSampler,WTF::RawPtrTraits<WebKit::RemoteSampler>,WTF::DefaultRefDerefTraits<WebKit::RemoteSampler>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::RemoteSampler,WTF::RawPtrTraits<WebKit::RemoteSampler>,WTF::DefaultRefDerefTraits<WebKit::RemoteSampler>>>(a1);
    v2 = *a1;
    *a1 = 0;
    if (v2)
    {
      if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v2 + 2);
        (*(*v2 + 8))(v2);
      }
    }
  }

  return a1;
}

WebKit::RemoteShaderModule **IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteShaderModule,WTF::RefPtr<WebKit::RemoteShaderModule,WTF::RawPtrTraits<WebKit::RemoteShaderModule>,WTF::DefaultRefDerefTraits<WebKit::RemoteShaderModule>>>::~ScopedActiveMessageReceiveQueue(WebKit::RemoteShaderModule **a1)
{
  if (*a1)
  {
    IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteShaderModule,WTF::RefPtr<WebKit::RemoteShaderModule,WTF::RawPtrTraits<WebKit::RemoteShaderModule>,WTF::DefaultRefDerefTraits<WebKit::RemoteShaderModule>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::RemoteShaderModule,WTF::RawPtrTraits<WebKit::RemoteShaderModule>,WTF::DefaultRefDerefTraits<WebKit::RemoteShaderModule>>>(a1);
    v2 = *a1;
    *a1 = 0;
    if (v2)
    {
      if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v2 + 2);
        (*(*v2 + 8))(v2);
      }
    }
  }

  return a1;
}

WebKit::RemoteTexture **IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteTexture,WTF::RefPtr<WebKit::RemoteTexture,WTF::RawPtrTraits<WebKit::RemoteTexture>,WTF::DefaultRefDerefTraits<WebKit::RemoteTexture>>>::~ScopedActiveMessageReceiveQueue(WebKit::RemoteTexture **a1)
{
  if (*a1)
  {
    IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteTexture,WTF::RefPtr<WebKit::RemoteTexture,WTF::RawPtrTraits<WebKit::RemoteTexture>,WTF::DefaultRefDerefTraits<WebKit::RemoteTexture>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::RemoteTexture,WTF::RawPtrTraits<WebKit::RemoteTexture>,WTF::DefaultRefDerefTraits<WebKit::RemoteTexture>>>(a1);
    v2 = *a1;
    *a1 = 0;
    if (v2)
    {
      if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v2 + 2);
        (*(*v2 + 8))(v2);
      }
    }
  }

  return a1;
}

WebKit::RemoteTextureView **IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteTextureView,WTF::RefPtr<WebKit::RemoteTextureView,WTF::RawPtrTraits<WebKit::RemoteTextureView>,WTF::DefaultRefDerefTraits<WebKit::RemoteTextureView>>>::~ScopedActiveMessageReceiveQueue(WebKit::RemoteTextureView **a1)
{
  if (*a1)
  {
    IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteTextureView,WTF::RefPtr<WebKit::RemoteTextureView,WTF::RawPtrTraits<WebKit::RemoteTextureView>,WTF::DefaultRefDerefTraits<WebKit::RemoteTextureView>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::RemoteTextureView,WTF::RawPtrTraits<WebKit::RemoteTextureView>,WTF::DefaultRefDerefTraits<WebKit::RemoteTextureView>>>(a1);
    v2 = *a1;
    *a1 = 0;
    if (v2)
    {
      if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v2 + 2);
        (*(*v2 + 8))(v2);
      }
    }
  }

  return a1;
}

WebKit::RemoteXRBinding **IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteXRBinding,WTF::RefPtr<WebKit::RemoteXRBinding,WTF::RawPtrTraits<WebKit::RemoteXRBinding>,WTF::DefaultRefDerefTraits<WebKit::RemoteXRBinding>>>::~ScopedActiveMessageReceiveQueue(WebKit::RemoteXRBinding **a1)
{
  if (*a1)
  {
    IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteXRBinding,WTF::RefPtr<WebKit::RemoteXRBinding,WTF::RawPtrTraits<WebKit::RemoteXRBinding>,WTF::DefaultRefDerefTraits<WebKit::RemoteXRBinding>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::RemoteXRBinding,WTF::RawPtrTraits<WebKit::RemoteXRBinding>,WTF::DefaultRefDerefTraits<WebKit::RemoteXRBinding>>>(a1);
    v2 = *a1;
    *a1 = 0;
    if (v2)
    {
      if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v2 + 2);
        (*(*v2 + 8))(v2);
      }
    }
  }

  return a1;
}

WebKit::RemoteXRSubImage **IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteXRSubImage,WTF::RefPtr<WebKit::RemoteXRSubImage,WTF::RawPtrTraits<WebKit::RemoteXRSubImage>,WTF::DefaultRefDerefTraits<WebKit::RemoteXRSubImage>>>::~ScopedActiveMessageReceiveQueue(WebKit::RemoteXRSubImage **a1)
{
  if (*a1)
  {
    IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteXRSubImage,WTF::RefPtr<WebKit::RemoteXRSubImage,WTF::RawPtrTraits<WebKit::RemoteXRSubImage>,WTF::DefaultRefDerefTraits<WebKit::RemoteXRSubImage>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::RemoteXRSubImage,WTF::RawPtrTraits<WebKit::RemoteXRSubImage>,WTF::DefaultRefDerefTraits<WebKit::RemoteXRSubImage>>>(a1);
    v2 = *a1;
    *a1 = 0;
    if (v2)
    {
      if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v2 + 2);
        (*(*v2 + 8))(v2);
      }
    }
  }

  return a1;
}

WebKit::RemoteXRProjectionLayer **IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteXRProjectionLayer,WTF::RefPtr<WebKit::RemoteXRProjectionLayer,WTF::RawPtrTraits<WebKit::RemoteXRProjectionLayer>,WTF::DefaultRefDerefTraits<WebKit::RemoteXRProjectionLayer>>>::~ScopedActiveMessageReceiveQueue(WebKit::RemoteXRProjectionLayer **a1)
{
  if (*a1)
  {
    IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteXRProjectionLayer,WTF::RefPtr<WebKit::RemoteXRProjectionLayer,WTF::RawPtrTraits<WebKit::RemoteXRProjectionLayer>,WTF::DefaultRefDerefTraits<WebKit::RemoteXRProjectionLayer>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::RemoteXRProjectionLayer,WTF::RawPtrTraits<WebKit::RemoteXRProjectionLayer>,WTF::DefaultRefDerefTraits<WebKit::RemoteXRProjectionLayer>>>(a1);
    v2 = *a1;
    *a1 = 0;
    if (v2)
    {
      if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v2 + 2);
        (*(*v2 + 8))(v2);
      }
    }
  }

  return a1;
}

WebKit::RemoteXRView **IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteXRView,WTF::RefPtr<WebKit::RemoteXRView,WTF::RawPtrTraits<WebKit::RemoteXRView>,WTF::DefaultRefDerefTraits<WebKit::RemoteXRView>>>::~ScopedActiveMessageReceiveQueue(WebKit::RemoteXRView **a1)
{
  if (*a1)
  {
    IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteXRView,WTF::RefPtr<WebKit::RemoteXRView,WTF::RawPtrTraits<WebKit::RemoteXRView>,WTF::DefaultRefDerefTraits<WebKit::RemoteXRView>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::RemoteXRView,WTF::RawPtrTraits<WebKit::RemoteXRView>,WTF::DefaultRefDerefTraits<WebKit::RemoteXRView>>>(a1);
    v2 = *a1;
    *a1 = 0;
    if (v2)
    {
      if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v2 + 2);
        (*(*v2 + 8))(v2);
      }
    }
  }

  return a1;
}

uint64_t *_ZN3WTF9HashTableINS_23ObjectIdentifierGenericIN6WebKit20WebGPUIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEENS_12KeyValuePairIS6_N5mpark7variantIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueINS2_13RemoteAdapterENS_6RefPtrISE_NS_12RawPtrTraitsISE_EENS_21DefaultRefDerefTraitsISE_EEEEEENSD_INS2_15RemoteBindGroupENSF_ISM_NSG_ISM_EENSI_ISM_EEEEEENSD_INS2_21RemoteBindGroupLayoutENSF_ISR_NSG_ISR_EENSI_ISR_EEEEEENSD_INS2_12RemoteBufferENSF_ISW_NSG_ISW_EENSI_ISW_EEEEEENSD_INS2_19RemoteCommandBufferENSF_IS11_NSG_IS11_EENSI_IS11_EEEEEENSD_INS2_20RemoteCommandEncoderENSF_IS16_NSG_IS16_EENSI_IS16_EEEEEENSD_INS2_27RemoteCompositorIntegrationENSF_IS1B_NSG_IS1B_EENSI_IS1B_EEEEEENSD_INS2_24RemoteComputePassEncoderENSF_IS1G_NSG_IS1G_EENSI_IS1G_EEEEEENSD_INS2_21RemoteComputePipelineENSF_IS1L_NSG_IS1L_EENSI_IS1L_EEEEEENSD_INS2_12RemoteDeviceENSF_IS1Q_NSG_IS1Q_EENSI_IS1Q_EEEEEENSD_INS2_21RemoteExternalTextureENSF_IS1V_NSG_IS1V_EENSI_IS1V_EEEEEENSD_INS2_20RemotePipelineLayoutENSF_IS20_NSG_IS20_EENSI_IS20_EEEEEENSD_INS2_25RemotePresentationContextENSF_IS25_NSG_IS25_EENSI_IS25_EEEEEENSD_INS2_14RemoteQuerySetENSF_IS2A_NSG_IS2A_EENSI_IS2A_EEEEEENSD_INS2_11RemoteQueueENSF_IS2F_NSG_IS2F_EENSI_IS2F_EEEEEENSD_INS2_25RemoteRenderBundleEncoderENSF_IS2K_NSG_IS2K_EENSI_IS2K_EEEEEENSD_INS2_18RemoteRenderBundleENSF_IS2P_NSG_IS2P_EENSI_IS2P_EEEEEENSD_INS2_23RemoteRenderPassEncoderENSF_IS2U_NSG_IS2U_EENSI_IS2U_EEEEEENSD_INS2_20RemoteRenderPipelineENSF_IS2Z_NSG_IS2Z_EENSI_IS2Z_EEEEEENSD_INS2_13RemoteSamplerENSF_IS34_NSG_IS34_EENSI_IS34_EEEEEENSD_INS2_18RemoteShaderModuleENSF_IS39_NSG_IS39_EENSI_IS39_EEEEEENSD_INS2_13RemoteTextureENSF_IS3E_NSG_IS3E_EENSI_IS3E_EEEEEENSD_INS2_17RemoteTextureViewENSF_IS3J_NSG_IS3J_EENSI_IS3J_EEEEEENSD_INS2_15RemoteXRBindingENSF_IS3O_NSG_IS3O_EENSI_IS3O_EEEEEENSD_INS2_16RemoteXRSubImageENSF_IS3T_NSG_IS3T_EENSI_IS3T_EEEEEENSD_INS2_23RemoteXRProjectionLayerENSF_IS3Y_NSG_IS3Y_EENSI_IS3Y_EEEEEENSD_INS2_12RemoteXRViewENSF_IS43_NSG_IS43_EENSI_IS43_EEEEEEEEEEENS_24KeyValuePairKeyExtractorIS49_EENS_11DefaultHashIS6_EENS_7HashMapIS6_S48_S4D_NS_10HashTraitsIS6_EENS4F_IS48_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1ENS_10FastMallocEE18KeyValuePairTraitsES4G_S4K_E6removeEPS49_(uint64_t *result, uint64_t a2)
{
  v3 = result;
  *a2 = -1;
  if (*(a2 + 16) != 255)
  {
    result = _ZN5mpark6detail10visitation3alt9visit_altINS0_4dtorEJRNS0_10destructorINS0_6traitsIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueIN6WebKit13RemoteAdapterEN3WTF6RefPtrISC_NSD_12RawPtrTraitsISC_EENSD_21DefaultRefDerefTraitsISC_EEEEEENSA_INSB_15RemoteBindGroupENSE_ISL_NSF_ISL_EENSH_ISL_EEEEEENSA_INSB_21RemoteBindGroupLayoutENSE_ISQ_NSF_ISQ_EENSH_ISQ_EEEEEENSA_INSB_12RemoteBufferENSE_ISV_NSF_ISV_EENSH_ISV_EEEEEENSA_INSB_19RemoteCommandBufferENSE_IS10_NSF_IS10_EENSH_IS10_EEEEEENSA_INSB_20RemoteCommandEncoderENSE_IS15_NSF_IS15_EENSH_IS15_EEEEEENSA_INSB_27RemoteCompositorIntegrationENSE_IS1A_NSF_IS1A_EENSH_IS1A_EEEEEENSA_INSB_24RemoteComputePassEncoderENSE_IS1F_NSF_IS1F_EENSH_IS1F_EEEEEENSA_INSB_21RemoteComputePipelineENSE_IS1K_NSF_IS1K_EENSH_IS1K_EEEEEENSA_INSB_12RemoteDeviceENSE_IS1P_NSF_IS1P_EENSH_IS1P_EEEEEENSA_INSB_21RemoteExternalTextureENSE_IS1U_NSF_IS1U_EENSH_IS1U_EEEEEENSA_INSB_20RemotePipelineLayoutENSE_IS1Z_NSF_IS1Z_EENSH_IS1Z_EEEEEENSA_INSB_25RemotePresentationContextENSE_IS24_NSF_IS24_EENSH_IS24_EEEEEENSA_INSB_14RemoteQuerySetENSE_IS29_NSF_IS29_EENSH_IS29_EEEEEENSA_INSB_11RemoteQueueENSE_IS2E_NSF_IS2E_EENSH_IS2E_EEEEEENSA_INSB_25RemoteRenderBundleEncoderENSE_IS2J_NSF_IS2J_EENSH_IS2J_EEEEEENSA_INSB_18RemoteRenderBundleENSE_IS2O_NSF_IS2O_EENSH_IS2O_EEEEEENSA_INSB_23RemoteRenderPassEncoderENSE_IS2T_NSF_IS2T_EENSH_IS2T_EEEEEENSA_INSB_20RemoteRenderPipelineENSE_IS2Y_NSF_IS2Y_EENSH_IS2Y_EEEEEENSA_INSB_13RemoteSamplerENSE_IS33_NSF_IS33_EENSH_IS33_EEEEEENSA_INSB_18RemoteShaderModuleENSE_IS38_NSF_IS38_EENSH_IS38_EEEEEENSA_INSB_13RemoteTextureENSE_IS3D_NSF_IS3D_EENSH_IS3D_EEEEEENSA_INSB_17RemoteTextureViewENSE_IS3I_NSF_IS3I_EENSH_IS3I_EEEEEENSA_INSB_15RemoteXRBindingENSE_IS3N_NSF_IS3N_EENSH_IS3N_EEEEEENSA_INSB_16RemoteXRSubImageENSE_IS3S_NSF_IS3S_EENSH_IS3S_EEEEEENSA_INSB_23RemoteXRProjectionLayerENSE_IS3X_NSF_IS3X_EENSH_IS3X_EEEEEENSA_INSB_12RemoteXRViewENSE_IS42_NSF_IS42_EENSH_IS42_EEEEEEEEELNS0_5TraitE1EEEEEEDcOT_DpOT0_(&v8, a2 + 8);
  }

  *(a2 + 16) = -1;
  v4 = *v3;
  v5 = vadd_s32(*(*v3 - 16), 0xFFFFFFFF00000001);
  *(v4 - 16) = v5;
  v6 = *(v4 - 4);
  if (6 * v5.i32[1] < v6 && v6 >= 9)
  {
    return _ZN3WTF9HashTableINS_23ObjectIdentifierGenericIN6WebKit20WebGPUIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEENS_12KeyValuePairIS6_N5mpark7variantIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueINS2_13RemoteAdapterENS_6RefPtrISE_NS_12RawPtrTraitsISE_EENS_21DefaultRefDerefTraitsISE_EEEEEENSD_INS2_15RemoteBindGroupENSF_ISM_NSG_ISM_EENSI_ISM_EEEEEENSD_INS2_21RemoteBindGroupLayoutENSF_ISR_NSG_ISR_EENSI_ISR_EEEEEENSD_INS2_12RemoteBufferENSF_ISW_NSG_ISW_EENSI_ISW_EEEEEENSD_INS2_19RemoteCommandBufferENSF_IS11_NSG_IS11_EENSI_IS11_EEEEEENSD_INS2_20RemoteCommandEncoderENSF_IS16_NSG_IS16_EENSI_IS16_EEEEEENSD_INS2_27RemoteCompositorIntegrationENSF_IS1B_NSG_IS1B_EENSI_IS1B_EEEEEENSD_INS2_24RemoteComputePassEncoderENSF_IS1G_NSG_IS1G_EENSI_IS1G_EEEEEENSD_INS2_21RemoteComputePipelineENSF_IS1L_NSG_IS1L_EENSI_IS1L_EEEEEENSD_INS2_12RemoteDeviceENSF_IS1Q_NSG_IS1Q_EENSI_IS1Q_EEEEEENSD_INS2_21RemoteExternalTextureENSF_IS1V_NSG_IS1V_EENSI_IS1V_EEEEEENSD_INS2_20RemotePipelineLayoutENSF_IS20_NSG_IS20_EENSI_IS20_EEEEEENSD_INS2_25RemotePresentationContextENSF_IS25_NSG_IS25_EENSI_IS25_EEEEEENSD_INS2_14RemoteQuerySetENSF_IS2A_NSG_IS2A_EENSI_IS2A_EEEEEENSD_INS2_11RemoteQueueENSF_IS2F_NSG_IS2F_EENSI_IS2F_EEEEEENSD_INS2_25RemoteRenderBundleEncoderENSF_IS2K_NSG_IS2K_EENSI_IS2K_EEEEEENSD_INS2_18RemoteRenderBundleENSF_IS2P_NSG_IS2P_EENSI_IS2P_EEEEEENSD_INS2_23RemoteRenderPassEncoderENSF_IS2U_NSG_IS2U_EENSI_IS2U_EEEEEENSD_INS2_20RemoteRenderPipelineENSF_IS2Z_NSG_IS2Z_EENSI_IS2Z_EEEEEENSD_INS2_13RemoteSamplerENSF_IS34_NSG_IS34_EENSI_IS34_EEEEEENSD_INS2_18RemoteShaderModuleENSF_IS39_NSG_IS39_EENSI_IS39_EEEEEENSD_INS2_13RemoteTextureENSF_IS3E_NSG_IS3E_EENSI_IS3E_EEEEEENSD_INS2_17RemoteTextureViewENSF_IS3J_NSG_IS3J_EENSI_IS3J_EEEEEENSD_INS2_15RemoteXRBindingENSF_IS3O_NSG_IS3O_EENSI_IS3O_EEEEEENSD_INS2_16RemoteXRSubImageENSF_IS3T_NSG_IS3T_EENSI_IS3T_EEEEEENSD_INS2_23RemoteXRProjectionLayerENSF_IS3Y_NSG_IS3Y_EENSI_IS3Y_EEEEEENSD_INS2_12RemoteXRViewENSF_IS43_NSG_IS43_EENSI_IS43_EEEEEEEEEEENS_24KeyValuePairKeyExtractorIS49_EENS_11DefaultHashIS6_EENS_7HashMapIS6_S48_S4D_NS_10HashTraitsIS6_EENS4F_IS48_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1ENS_10FastMallocEE18KeyValuePairTraitsES4G_S4K_E6rehashEjPS49_(v3, v6 >> 1, 0);
  }

  return result;
}

uint64_t *_ZN3WTF9HashTableINS_23ObjectIdentifierGenericIN6WebKit20WebGPUIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEENS_12KeyValuePairIS6_N5mpark7variantIJNSt3__19monostateEN3IPC31ScopedActiveMessageReceiveQueueINS2_13RemoteAdapterENS_6RefPtrISE_NS_12RawPtrTraitsISE_EENS_21DefaultRefDerefTraitsISE_EEEEEENSD_INS2_15RemoteBindGroupENSF_ISM_NSG_ISM_EENSI_ISM_EEEEEENSD_INS2_21RemoteBindGroupLayoutENSF_ISR_NSG_ISR_EENSI_ISR_EEEEEENSD_INS2_12RemoteBufferENSF_ISW_NSG_ISW_EENSI_ISW_EEEEEENSD_INS2_19RemoteCommandBufferENSF_IS11_NSG_IS11_EENSI_IS11_EEEEEENSD_INS2_20RemoteCommandEncoderENSF_IS16_NSG_IS16_EENSI_IS16_EEEEEENSD_INS2_27RemoteCompositorIntegrationENSF_IS1B_NSG_IS1B_EENSI_IS1B_EEEEEENSD_INS2_24RemoteComputePassEncoderENSF_IS1G_NSG_IS1G_EENSI_IS1G_EEEEEENSD_INS2_21RemoteComputePipelineENSF_IS1L_NSG_IS1L_EENSI_IS1L_EEEEEENSD_INS2_12RemoteDeviceENSF_IS1Q_NSG_IS1Q_EENSI_IS1Q_EEEEEENSD_INS2_21RemoteExternalTextureENSF_IS1V_NSG_IS1V_EENSI_IS1V_EEEEEENSD_INS2_20RemotePipelineLayoutENSF_IS20_NSG_IS20_EENSI_IS20_EEEEEENSD_INS2_25RemotePresentationContextENSF_IS25_NSG_IS25_EENSI_IS25_EEEEEENSD_INS2_14RemoteQuerySetENSF_IS2A_NSG_IS2A_EENSI_IS2A_EEEEEENSD_INS2_11RemoteQueueENSF_IS2F_NSG_IS2F_EENSI_IS2F_EEEEEENSD_INS2_25RemoteRenderBundleEncoderENSF_IS2K_NSG_IS2K_EENSI_IS2K_EEEEEENSD_INS2_18RemoteRenderBundleENSF_IS2P_NSG_IS2P_EENSI_IS2P_EEEEEENSD_INS2_23RemoteRenderPassEncoderENSF_IS2U_NSG_IS2U_EENSI_IS2U_EEEEEENSD_INS2_20RemoteRenderPipelineENSF_IS2Z_NSG_IS2Z_EENSI_IS2Z_EEEEEENSD_INS2_13RemoteSamplerENSF_IS34_NSG_IS34_EENSI_IS34_EEEEEENSD_INS2_18RemoteShaderModuleENSF_IS39_NSG_IS39_EENSI_IS39_EEEEEENSD_INS2_13RemoteTextureENSF_IS3E_NSG_IS3E_EENSI_IS3E_EEEEEENSD_INS2_17RemoteTextureViewENSF_IS3J_NSG_IS3J_EENSI_IS3J_EEEEEENSD_INS2_15RemoteXRBindingENSF_IS3O_NSG_IS3O_EENSI_IS3O_EEEEEENSD_INS2_16RemoteXRSubImageENSF_IS3T_NSG_IS3T_EENSI_IS3T_EEEEEENSD_INS2_23RemoteXRProjectionLayerENSF_IS3Y_NSG_IS3Y_EENSI_IS3Y_EEEEEENSD_INS2_12RemoteXRViewENSF_IS43_NSG_IS43_EENSI_IS43_EEEEEEEEEEENS_24KeyValuePairKeyExtractorIS49_EENS_11DefaultHashIS6_EENS_7HashMapIS6_S48_S4D_NS_10HashTraitsIS6_EENS4F_IS48_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1ENS_10FastMallocEE18KeyValuePairTraitsES4G_S4K_E4findINS_22IdentityHashTranslatorIS4M_S4D_EELS4J_1ES6_EENS_17HashTableIteratorIS4N_S6_S49_S4B_S4D_S4M_S4G_EERKT1_(uint64_t *a1, uint64_t *a2)
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
    JUMPOUT(0x19DB8BEC0);
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

void *WTF::ThreadSafeWeakPtr<WebCore::WebGPU::ExternalTexture,WTF::NoTaggingTraits<WebCore::WebGPU::ExternalTexture>>::ThreadSafeWeakPtr<WebCore::WebGPU::ExternalTexture>(void *a1, uint64_t a2)
{
  *a1 = a2;
  if (a2)
  {
    v3 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::controlBlock((a2 + 8));
    v4 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v3);
  }

  else
  {
    v4 = 0;
  }

  a1[1] = v4;
  return a1;
}

void sub_19DB8C4DC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB8C95C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    CFRelease(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB8CA80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB8CC08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    (*(*a9 + 8))(a9);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB8CD34(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    CFRelease(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB8CDEC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    CFRelease(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB8CE84(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF *a9, int a10)
{
  if (v10 != a9 && a9 != 0)
  {
    WTF::fastFree(a9, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB8CF90(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    CFRelease(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB8D028(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF *a9, int a10)
{
  if (v10 != a9 && a9 != 0)
  {
    WTF::fastFree(a9, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB8D2C0(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF *a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, WTF *a22, int a23)
{
  if (v24 != a10 && a10 != 0)
  {
    WTF::fastFree(a10, a2);
  }

  if (v23 != a22 && a22 != 0)
  {
    WTF::fastFree(a22, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB8D730(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t toUserContentRuleListStoreError(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = [result code];
    if ((v2 - 6) >= 4)
    {
      result = 55;
      __break(0xC471u);
    }

    else
    {
      v3 = qword_19E703798[v2 - 6];
      v4 = MEMORY[0x1E696ABC0];
      v5 = [v1 userInfo];

      return [v4 errorWithDomain:@"WKErrorDomain" code:v3 userInfo:v5];
    }
  }

  return result;
}

void sub_19DB8D914(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t initBKSHIDEventSetDigitizerInfo(__IOHIDEvent *a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFString *a5, double a6, float a7)
{
  if (byte_1ED6424B1 == 1)
  {
    v14 = qword_1ED6424C0;
  }

  else
  {
    v14 = dlopen("/System/Library/PrivateFrameworks/BackBoardServices.framework/BackBoardServices", 2);
    if (!v14)
    {
      goto LABEL_9;
    }

    qword_1ED6424C0 = v14;
    byte_1ED6424B1 = 1;
  }

  v15 = dlsym(v14, "BKSHIDEventSetDigitizerInfo");
  softLinkBKSHIDEventSetDigitizerInfo = v15;
  if (!v15)
  {
LABEL_9:
    __break(0xC471u);
    JUMPOUT(0x19DB8DF2CLL);
  }

  v16.n128_f64[0] = a6;
  v17.n128_f32[0] = a7;

  return (v15)(a1, a2, a3, a4, a5, v16, v17);
}

WebKit::RemoteAudioHardwareListenerProxy *WebKit::RemoteAudioHardwareListenerProxy::RemoteAudioHardwareListenerProxy(WebKit::RemoteAudioHardwareListenerProxy *a1, uint64_t a2, void *a3)
{
  *a1 = &unk_1F10FBE38;
  *(a1 + 1) = a2;
  v5 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::controlBlock((a2 + 16));
  *(a1 + 2) = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v5);
  *(a1 + 3) = *a3;
  WebCore::AudioHardwareListener::create();
  WebKit::RemoteAudioHardwareListenerProxy::audioOutputDeviceChanged(a1);
  return a1;
}

atomic_uchar *WebKit::RemoteAudioHardwareListenerProxy::audioOutputDeviceChanged(WebKit::RemoteAudioHardwareListenerProxy *this)
{
  result = *(this + 2);
  if (result)
  {
    result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(result, *(this + 1), &v7);
    if (v7)
    {
      v3 = *(v7 + 56);
      v4 = *(this + 3);
      *v6 = *(*(this + 4) + 24);
      result = IPC::Connection::send<Messages::RemoteAudioHardwareListener::AudioOutputDeviceChanged>(v3, v6, v4, 0, 0);
      v5 = v7;
      v7 = 0;
      if (v5)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v5 + 16));
      }
    }
  }

  return result;
}

void WebKit::RemoteAudioHardwareListenerProxy::~RemoteAudioHardwareListenerProxy(WebKit::RemoteAudioHardwareListenerProxy *this, void *a2)
{
  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v4, a2);
  }
}

{
  WebKit::RemoteAudioHardwareListenerProxy::~RemoteAudioHardwareListenerProxy(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

atomic_uchar *WebKit::RemoteAudioHardwareListenerProxy::audioHardwareDidBecomeActive(WebKit::RemoteAudioHardwareListenerProxy *this)
{
  result = *(this + 2);
  if (result)
  {
    result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(result, *(this + 1), &v11);
    if (v11)
    {
      v4 = *(v11 + 56);
      v5 = *(this + 3);
      v6 = IPC::Encoder::operator new(0x238, v3);
      *v6 = 932;
      *(v6 + 2) = 0;
      *(v6 + 3) = 0;
      *(v6 + 1) = v5;
      *(v6 + 68) = 0;
      *(v6 + 70) = 0;
      *(v6 + 69) = 0;
      IPC::Encoder::encodeHeader(v6);
      v12 = v6;
      IPC::Connection::sendMessageImpl(v4, &v12, 0, 0);
      result = v12;
      v12 = 0;
      if (result)
      {
        IPC::Encoder::~Encoder(result, v7);
        result = bmalloc::api::tzoneFree(v9, v10);
      }

      v8 = v11;
      v11 = 0;
      if (v8)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v8 + 16));
      }
    }
  }

  return result;
}

atomic_uchar *WebKit::RemoteAudioHardwareListenerProxy::audioHardwareDidBecomeInactive(WebKit::RemoteAudioHardwareListenerProxy *this)
{
  result = *(this + 2);
  if (result)
  {
    result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(result, *(this + 1), &v11);
    if (v11)
    {
      v4 = *(v11 + 56);
      v5 = *(this + 3);
      v6 = IPC::Encoder::operator new(0x238, v3);
      *v6 = 933;
      *(v6 + 2) = 0;
      *(v6 + 3) = 0;
      *(v6 + 1) = v5;
      *(v6 + 68) = 0;
      *(v6 + 70) = 0;
      *(v6 + 69) = 0;
      IPC::Encoder::encodeHeader(v6);
      v12 = v6;
      IPC::Connection::sendMessageImpl(v4, &v12, 0, 0);
      result = v12;
      v12 = 0;
      if (result)
      {
        IPC::Encoder::~Encoder(result, v7);
        result = bmalloc::api::tzoneFree(v9, v10);
      }

      v8 = v11;
      v11 = 0;
      if (v8)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v8 + 16));
      }
    }
  }

  return result;
}

WebKit::RemoteAudioSessionProxy *WebKit::RemoteAudioSessionProxy::RemoteAudioSessionProxy(WebKit::RemoteAudioSessionProxy *this, atomic_ullong *a2)
{
  *(this + 4) = 1;
  *this = &unk_1F10FBE70;
  *(this + 1) = 0;
  *(this + 3) = a2;
  v3 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::controlBlock(a2 + 2);
  *(this + 4) = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v3);
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 63) = 0;
  return this;
}

void WebKit::RemoteAudioSessionProxy::~RemoteAudioSessionProxy(WebKit::RemoteAudioSessionProxy *this, WTF::StringImpl *a2)
{
  *this = &unk_1F10FBE70;
  v3 = *(this + 9);
  *(this + 9) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *(this + 6);
  *(this + 6) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *(this + 4);
  *(this + 4) = 0;
  if (v5)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v5, a2);
  }

  *this = &unk_1F10EA5E0;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, a2);
  if (*(this + 4) != 1)
  {
    __break(0xC471u);
  }
}

{
  WebKit::RemoteAudioSessionProxy::~RemoteAudioSessionProxy(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

atomic_uchar **WebKit::RemoteAudioSessionProxy::configuration@<X0>(atomic_uint **this@<X0>, uint64_t a2@<X8>)
{
  v4 = WebKit::RemoteAudioSessionProxy::audioSessionManager(this);
  ++*(v4 + 4);
  v5 = WebCore::AudioSession::sharedSession(v4);
  v6 = (v5 + 1);
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
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v6);
LABEL_6:
  if (*(v4 + 4) == 1)
  {
    (*(*v4 + 8))(v4);
  }

  else
  {
    --*(v4 + 4);
  }

  (*(*v5 + 8))(v5);
  *(a2 + 8) = (*(*v5 + 9))(v5);
  *(a2 + 16) = (*(*v5 + 10))(v5);
  *(a2 + 24) = (*(*v5 + 11))(v5);
  *(a2 + 32) = (*(*v5 + 12))(v5);
  *(a2 + 40) = (*(*v5 + 13))(v5);
  *(a2 + 48) = (*(*v5 + 15))(v5);
  *(a2 + 56) = (*(*v5 + 20))(v5);
  *(a2 + 57) = *(this + 64);
  v10 = this[6];
  if (v10)
  {
    atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
  }

  *(a2 + 64) = v10;
  *(a2 + 72) = *(this + 43);

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::AudioSession,(WTF::DestructionThread)0>::deref(v5 + 1, v9);
}

atomic_uchar **WebKit::RemoteAudioSessionProxy::setCategory(atomic_uchar **result, int a2, int a3, int a4)
{
  if (*(result + 40) != a2 || *(result + 41) != a3 || *(result + 42) != a4 || *(result + 66) == 1)
  {
    *(result + 40) = a2;
    *(result + 41) = a3;
    *(result + 42) = a4;
    *(result + 66) = 0;
    v4 = WebKit::RemoteAudioSessionProxy::audioSessionManager(result);
    ++*(v4 + 4);
    result = WebKit::RemoteAudioSessionProxyManager::updateCategory(v4);
    if (*(v4 + 4) == 1)
    {
      v5 = *(*v4 + 8);

      return v5(v4);
    }

    else
    {
      --*(v4 + 4);
    }
  }

  return result;
}

atomic_uchar **WebKit::RemoteAudioSessionProxyManager::updateCategory(WebKit::RemoteAudioSessionProxyManager *this)
{
  v103 = 0;
  v104 = 0;
  v102 = 0;
  v2 = this + 48;
  WTF::WeakHashSet<WebKit::RemoteAudioSessionProxy,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::begin(&v100, this + 6);
  v3 = 0;
  v4 = 0;
  v5 = *(this + 6);
  if (v5)
  {
    v4 = *(v5 - 4);
    v3 = v5 + 8 * v4;
  }

  v95 = v2;
  v96 = v3;
  v97 = v3;
  v98 = v3;
  v99 = v5 + 8 * v4;
  v6 = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v95);
  v7 = v101;
  v8 = v96;
  if (v101 == v96)
  {
    v52 = 0;
    goto LABEL_67;
  }

  do
  {
    v9 = *(*v7 + 8);
    ++*(v9 + 16);
    v10 = *(v9 + 40);
    if (v10 == 254)
    {
LABEL_137:
      __break(0xC471u);
      JUMPOUT(0x19DB8F040);
    }

    if (v10 == 255)
    {
      __break(0xC471u);
      JUMPOUT(0x19DB8F060);
    }

    v11 = v104;
    if (!v104)
    {
      WTF::HashTable<WebCore::AudioSessionCategory,WTF::KeyValuePair<WebCore::AudioSessionCategory,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::AudioSessionCategory,unsigned int>>,WTF::IntHash<WebCore::AudioSessionCategory>,WTF::HashMap<WebCore::AudioSessionCategory,unsigned int,WTF::IntHash<WebCore::AudioSessionCategory>,WTF::StrongEnumHashTraits<WebCore::AudioSessionCategory>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::StrongEnumHashTraits<WebCore::AudioSessionCategory>,WTF::FastMalloc>::expand(&v104, 0);
      v11 = v104;
    }

    v12 = *(v11 - 8);
    v13 = 9 * ((~(v10 << 15) + v10) ^ ((~(v10 << 15) + v10) >> 10));
    v14 = (v13 ^ (v13 >> 6)) + ~((v13 ^ (v13 >> 6)) << 11);
    v15 = v12 & (v14 ^ HIWORD(v14));
    v16 = (v11 + 8 * v15);
    v17 = *v16;
    if (v17 == 255)
    {
LABEL_16:
      *v16 = v10;
      *(v16 + 1) = 0;
      v20 = *(v11 - 16);
      v21 = *(v11 - 12) + 1;
      *(v11 - 12) = v21;
      v22 = (v20 + v21);
      v23 = *(v11 - 4);
      if (v23 <= 0x400)
      {
        if (3 * v23 > 4 * v22)
        {
          goto LABEL_19;
        }

LABEL_18:
        v16 = WTF::HashTable<WebCore::AudioSessionCategory,WTF::KeyValuePair<WebCore::AudioSessionCategory,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::AudioSessionCategory,unsigned int>>,WTF::IntHash<WebCore::AudioSessionCategory>,WTF::HashMap<WebCore::AudioSessionCategory,unsigned int,WTF::IntHash<WebCore::AudioSessionCategory>,WTF::StrongEnumHashTraits<WebCore::AudioSessionCategory>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::StrongEnumHashTraits<WebCore::AudioSessionCategory>,WTF::FastMalloc>::expand(&v104, v16);
        goto LABEL_19;
      }

      if (v23 <= 2 * v22)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v18 = 0;
      v19 = 1;
      while (v17 != v10)
      {
        if (v17 == 254)
        {
          v18 = v16;
        }

        v15 = (v15 + v19) & v12;
        v16 = (v11 + 8 * v15);
        v17 = *v16;
        ++v19;
        if (v17 == 255)
        {
          if (v18)
          {
            *v18 = -1;
            *(v18 + 1) = 0;
            --*(v11 - 16);
            v16 = v18;
          }

          goto LABEL_16;
        }
      }
    }

LABEL_19:
    ++*(v16 + 1);
    v24 = *(v9 + 41);
    if (v24 == 254)
    {
      __break(0xC471u);
      JUMPOUT(0x19DB8F080);
    }

    if (v24 == 255)
    {
      __break(0xC471u);
      JUMPOUT(0x19DB8F0A0);
    }

    v25 = v103;
    if (!v103)
    {
      WTF::HashTable<WebCore::AudioSessionCategory,WTF::KeyValuePair<WebCore::AudioSessionCategory,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::AudioSessionCategory,unsigned int>>,WTF::IntHash<WebCore::AudioSessionCategory>,WTF::HashMap<WebCore::AudioSessionCategory,unsigned int,WTF::IntHash<WebCore::AudioSessionCategory>,WTF::StrongEnumHashTraits<WebCore::AudioSessionCategory>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::StrongEnumHashTraits<WebCore::AudioSessionCategory>,WTF::FastMalloc>::expand(&v103, 0);
      v25 = v103;
    }

    v26 = *(v25 - 8);
    v27 = 9 * ((~(v24 << 15) + v24) ^ ((~(v24 << 15) + v24) >> 10));
    v28 = (v27 ^ (v27 >> 6)) + ~((v27 ^ (v27 >> 6)) << 11);
    v29 = v26 & (v28 ^ HIWORD(v28));
    v30 = (v25 + 8 * v29);
    v31 = *v30;
    if (v31 == 255)
    {
LABEL_31:
      *v30 = v24;
      *(v30 + 1) = 0;
      v34 = *(v25 - 16);
      v35 = *(v25 - 12) + 1;
      *(v25 - 12) = v35;
      v36 = (v34 + v35);
      v37 = *(v25 - 4);
      if (v37 <= 0x400)
      {
        if (3 * v37 > 4 * v36)
        {
          goto LABEL_34;
        }

LABEL_33:
        v30 = WTF::HashTable<WebCore::AudioSessionCategory,WTF::KeyValuePair<WebCore::AudioSessionCategory,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::AudioSessionCategory,unsigned int>>,WTF::IntHash<WebCore::AudioSessionCategory>,WTF::HashMap<WebCore::AudioSessionCategory,unsigned int,WTF::IntHash<WebCore::AudioSessionCategory>,WTF::StrongEnumHashTraits<WebCore::AudioSessionCategory>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::StrongEnumHashTraits<WebCore::AudioSessionCategory>,WTF::FastMalloc>::expand(&v103, v30);
        goto LABEL_34;
      }

      if (v37 <= 2 * v36)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v32 = 0;
      v33 = 1;
      while (v31 != v24)
      {
        if (v31 == 254)
        {
          v32 = v30;
        }

        v29 = (v29 + v33) & v26;
        v30 = (v25 + 8 * v29);
        v31 = *v30;
        ++v33;
        if (v31 == 255)
        {
          if (v32)
          {
            *v32 = -1;
            *(v32 + 1) = 0;
            --*(v25 - 16);
            v30 = v32;
          }

          goto LABEL_31;
        }
      }
    }

LABEL_34:
    ++*(v30 + 1);
    v38 = *(v9 + 42);
    if (v38 == 254)
    {
      __break(0xC471u);
      JUMPOUT(0x19DB8F0C0);
    }

    if (v38 == 255)
    {
      goto LABEL_137;
    }

    v39 = v102;
    if (!v102)
    {
      WTF::HashTable<WebCore::AudioSessionCategory,WTF::KeyValuePair<WebCore::AudioSessionCategory,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::AudioSessionCategory,unsigned int>>,WTF::IntHash<WebCore::AudioSessionCategory>,WTF::HashMap<WebCore::AudioSessionCategory,unsigned int,WTF::IntHash<WebCore::AudioSessionCategory>,WTF::StrongEnumHashTraits<WebCore::AudioSessionCategory>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::StrongEnumHashTraits<WebCore::AudioSessionCategory>,WTF::FastMalloc>::expand(&v102, 0);
      v39 = v102;
    }

    v40 = *(v39 - 8);
    v41 = 9 * ((~(v38 << 15) + v38) ^ ((~(v38 << 15) + v38) >> 10));
    v42 = (v41 ^ (v41 >> 6)) + ~((v41 ^ (v41 >> 6)) << 11);
    v43 = v40 & (v42 ^ HIWORD(v42));
    v44 = (v39 + 8 * v43);
    v45 = *v44;
    if (v45 == 255)
    {
LABEL_46:
      *v44 = v38;
      *(v44 + 1) = 0;
      v48 = *(v39 - 16);
      v49 = *(v39 - 12) + 1;
      *(v39 - 12) = v49;
      v50 = (v48 + v49);
      v51 = *(v39 - 4);
      if (v51 <= 0x400)
      {
        if (3 * v51 > 4 * v50)
        {
          goto LABEL_49;
        }

LABEL_48:
        v44 = WTF::HashTable<WebCore::AudioSessionCategory,WTF::KeyValuePair<WebCore::AudioSessionCategory,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::AudioSessionCategory,unsigned int>>,WTF::IntHash<WebCore::AudioSessionCategory>,WTF::HashMap<WebCore::AudioSessionCategory,unsigned int,WTF::IntHash<WebCore::AudioSessionCategory>,WTF::StrongEnumHashTraits<WebCore::AudioSessionCategory>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::StrongEnumHashTraits<WebCore::AudioSessionCategory>,WTF::FastMalloc>::expand(&v102, v44);
        goto LABEL_49;
      }

      if (v51 <= 2 * v50)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v46 = 0;
      v47 = 1;
      while (v45 != v38)
      {
        if (v45 == 254)
        {
          v46 = v44;
        }

        v43 = (v43 + v47) & v40;
        v44 = (v39 + 8 * v43);
        v45 = *v44;
        ++v47;
        if (v45 == 255)
        {
          if (v46)
          {
            *v46 = -1;
            *(v46 + 1) = 0;
            --*(v39 - 16);
            v44 = v46;
          }

          goto LABEL_46;
        }
      }
    }

LABEL_49:
    ++*(v44 + 1);
    if (*(v9 + 16) == 1)
    {
      (*(*v9 + 24))(v9);
    }

    else
    {
      --*(v9 + 16);
    }

    v6 = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::operator++(&v100);
    v7 = v101;
  }

  while (v101 != v8);
  v52 = v104;
  if (!v104)
  {
LABEL_67:
    v58 = 0;
    v57 = 1;
    goto LABEL_68;
  }

  v53 = *(v104 - 8);
  v54 = v53 & 0xF5054668;
  v55 = *(v104 + 8 * (v53 & 0xF5054668));
  if (v55 == 5)
  {
LABEL_65:
    v57 = 0;
    v58 = 5;
  }

  else
  {
    v56 = 1;
    while (v55 != 255)
    {
      v54 = (v54 + v56) & v53;
      v55 = *(v104 + 8 * v54);
      ++v56;
      if (v55 == 5)
      {
        goto LABEL_65;
      }
    }

    v80 = v53 & 0xC843DC37;
    v81 = *(v104 + 8 * (v53 & 0xC843DC37));
    if (v81 == 4)
    {
      v57 = 0;
      v58 = 4;
    }

    else
    {
      v82 = 1;
      v58 = 4;
      while (v81 != 255)
      {
        v80 = (v80 + v82) & v53;
        v81 = *(v104 + 8 * v80);
        ++v82;
        if (v81 == 4)
        {
LABEL_130:
          v57 = 0;
          goto LABEL_68;
        }
      }

      v83 = v53 & 0x2BF062CF;
      v84 = *(v104 + 8 * (v53 & 0x2BF062CF));
      if (v84 == 3)
      {
        v57 = 0;
        v58 = 3;
      }

      else
      {
        v85 = 1;
        v58 = 3;
        while (v84 != 255)
        {
          v83 = (v83 + v85) & v53;
          v84 = *(v104 + 8 * v83);
          ++v85;
          if (v84 == 3)
          {
            goto LABEL_130;
          }
        }

        v86 = v53 & 0xFF4D1170;
        v87 = *(v104 + 8 * (v53 & 0xFF4D1170));
        if (v87 == 2)
        {
          v57 = 0;
          v58 = 2;
        }

        else
        {
          v88 = 1;
          v58 = 2;
          while (v87 != 255)
          {
            v86 = (v86 + v88) & v53;
            v87 = *(v104 + 8 * v86);
            ++v88;
            if (v87 == 2)
            {
              goto LABEL_130;
            }
          }

          v89 = v53 & 0x62BAF5A0;
          v90 = *(v104 + 8 * (v53 & 0x62BAF5A0));
          if (v90 == 1)
          {
            v57 = 0;
            v58 = 1;
          }

          else
          {
            v91 = 1;
            v58 = 1;
            while (v90 != 255)
            {
              v89 = (v89 + v91) & v53;
              v90 = *(v104 + 8 * v89);
              ++v91;
              if (v90 == 1)
              {
                goto LABEL_130;
              }
            }

            v92 = v53 & 0x9199C31E;
            v93 = *(v104 + 8 * (v53 & 0x9199C31E));
            if (v93 == 6)
            {
              v57 = 0;
              v58 = 6;
            }

            else
            {
              v94 = 1;
              v58 = 6;
              while (v93 != 255)
              {
                v92 = (v92 + v94) & v53;
                v93 = *(v104 + 8 * v92);
                ++v94;
                if (v93 == 6)
                {
                  goto LABEL_130;
                }
              }

              v57 = 0;
              v58 = 0;
            }
          }
        }
      }
    }
  }

LABEL_68:
  v59 = v103;
  if (v103)
  {
    v60 = *(v103 - 8);
    v61 = v60 & 0xFF4D1170;
    v62 = *(v103 + 8 * (v60 & 0xFF4D1170));
    if (v62 == 2)
    {
LABEL_73:
      v64 = 2;
    }

    else
    {
      v63 = 1;
      while (v62 != 255)
      {
        v61 = (v61 + v63) & v60;
        v62 = *(v103 + 8 * v61);
        ++v63;
        if (v62 == 2)
        {
          goto LABEL_73;
        }
      }

      v65 = v60 & 0x62BAF5A0;
      v66 = *(v103 + 8 * (v60 & 0x62BAF5A0));
      if (v66 != 1)
      {
        v67 = 1;
        while (v66 != 255)
        {
          v65 = (v65 + v67) & v60;
          v66 = *(v103 + 8 * v65);
          ++v67;
          if (v66 == 1)
          {
            goto LABEL_78;
          }
        }

        goto LABEL_79;
      }

LABEL_78:
      v64 = 1;
    }
  }

  else
  {
LABEL_79:
    v64 = 0;
  }

  v68 = v102;
  if (v102)
  {
    v69 = *(v102 - 8);
    v70 = v69 & 0x2BF062CF;
    v71 = *(v102 + 8 * (v69 & 0x2BF062CF));
    if (v71 == 3)
    {
LABEL_85:
      v73 = 3;
    }

    else
    {
      v72 = 1;
      while (v71 != 255)
      {
        v70 = (v70 + v72) & v69;
        v71 = *(v102 + 8 * v70);
        ++v72;
        if (v71 == 3)
        {
          goto LABEL_85;
        }
      }

      v74 = v69 & 0x62BAF5A0;
      v75 = *(v102 + 8 * (v69 & 0x62BAF5A0));
      if (v75 != 1)
      {
        v76 = 1;
        while (v75 != 255)
        {
          v74 = (v74 + v76) & v69;
          v75 = *(v102 + 8 * v74);
          ++v76;
          if (v75 == 1)
          {
            goto LABEL_90;
          }
        }

        goto LABEL_91;
      }

LABEL_90:
      v73 = 1;
    }
  }

  else
  {
LABEL_91:
    v73 = 0;
  }

  WebKit::RemoteAudioSessionProxyManager::protectedSession(v6, &v100);
  result = (*(*v100 + 32))(v100, v58, v64, v73);
  v79 = v100;
  v100 = 0;
  if (v79)
  {
    result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::AudioSession,(WTF::DestructionThread)0>::deref((v79 + 8), v78);
  }

  if (v68)
  {
    result = WTF::fastFree((v68 - 16), v78);
  }

  if (v59)
  {
    result = WTF::fastFree((v59 - 16), v78);
  }

  if ((v57 & 1) == 0)
  {
    return WTF::fastFree((v52 - 16), v78);
  }

  return result;
}

atomic_uchar **WebKit::RemoteAudioSessionProxy::setPreferredBufferSize(WebKit::RemoteAudioSessionProxy *this, uint64_t a2)
{
  *(this + 7) = a2;
  v2 = WebKit::RemoteAudioSessionProxy::audioSessionManager(this);
  ++*(v2 + 4);
  result = WebKit::RemoteAudioSessionProxyManager::updatePreferredBufferSizeForProcess(v2);
  if (*(v2 + 4) == 1)
  {
    v4 = *(*v2 + 8);

    return v4(v2);
  }

  else
  {
    --*(v2 + 4);
  }

  return result;
}

atomic_uchar **WebKit::RemoteAudioSessionProxyManager::updatePreferredBufferSizeForProcess(WebKit::RemoteAudioSessionProxyManager *this)
{
  v2 = this + 48;
  WTF::WeakHashSet<WebKit::RemoteAudioSessionProxy,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::begin(&v21, this + 6);
  v3 = *(this + 6);
  if (v3)
  {
    v4 = *(v3 - 4);
    v5 = v3 + 8 * v4;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  v16 = v2;
  v17 = v5;
  v18 = v5;
  v19 = v5;
  v20 = v3 + 8 * v4;
  result = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v16);
  v7 = v22;
  v8 = v17;
  if (v22 != v17)
  {
    v9 = -1;
    do
    {
      v10 = *(*v7 + 8);
      v11 = *(v10 + 16);
      *(v10 + 16) = v11 + 1;
      v12 = *(v10 + 56);
      if (v12 >= v9)
      {
        v13 = v9;
      }

      else
      {
        v13 = *(v10 + 56);
      }

      if (v12)
      {
        v9 = v13;
      }

      if (v11)
      {
        *(v10 + 16) = v11;
      }

      else
      {
        (*(*v10 + 24))(v10);
      }

      result = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::operator++(&v21);
      v7 = v22;
    }

    while (v22 != v8);
    if (v9 != -1)
    {
      WebKit::RemoteAudioSessionProxyManager::protectedSession(result, &v21);
      result = (*(*v21 + 112))(v21, v9);
      v15 = v21;
      v21 = 0;
      if (v15)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::AudioSession,(WTF::DestructionThread)0>::deref((v15 + 8), v14);
      }
    }
  }

  return result;
}

uint64_t WebKit::RemoteAudioSessionProxy::tryToSetActive(uint64_t a1, int a2, uint64_t *a3)
{
  v6 = WebKit::RemoteAudioSessionProxy::audioSessionManager(a1);
  ++*(v6 + 4);
  if (a2)
  {
    v7 = *(a1 + 32);
    if (v7)
    {
      WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v7, *(a1 + 24), v70);
      v48 = v70[0];
      if (v70[0])
      {
        if ((*(v70[0] + 349) & 8) != 0)
        {
          v70[0] = 0;
        }

        else
        {
          {
            WebKit::GPUProcess::GPUProcess(&WebKit::GPUProcess::singleton(void)::gpuProcess);
          }

          v49 = *(qword_1EB01DB88 + 344);
          if (v49)
          {
            pid = xpc_connection_get_pid(v49);
          }

          else
          {
            pid = 0;
          }

          v51 = v70[0];
          v52 = *(v70[0] + 26);
          if (v52 && *(v52 - 3))
          {
            v53 = *(v52 - 1);
            if (v53)
            {
              v54 = &v52[5 * v53];
              v55 = 40 * v53;
              while ((*v52 + 1) <= 1)
              {
                v52 += 5;
                v55 -= 40;
                if (!v55)
                {
                  v52 = v54;
                  break;
                }
              }
            }

            v51 = WebKit::GPUConnectionToWebProcess::presentingApplicationPID(v70[0], *v52);
            pid = v51;
          }

          v56 = WebCore::MediaSessionHelper::sharedHelper(v51);
          (*(*v56 + 24))(v56, pid);
          v48 = v70[0];
          v70[0] = 0;
          if (!v48)
          {
            goto LABEL_3;
          }
        }

        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref(v48 + 2);
      }
    }

LABEL_3:
    v8 = (v6 + 48);
    WTF::WeakHashSet<WebKit::RemoteAudioSessionProxy,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::begin(v70, v6 + 6);
    v9 = *(v6 + 6);
    if (v9)
    {
      v10 = *(v9 - 4);
      v11 = (v9 + 8 * v10);
    }

    else
    {
      v11 = 0;
      v10 = 0;
    }

    v65 = (v6 + 48);
    v66 = v11;
    v67 = v11;
    v68 = v11;
    v69 = v9 + 8 * v10;
    v15 = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v65);
    v16 = v70[1];
    v17 = v66;
    while (v16 != v17)
    {
      v18 = *(*v16 + 8);
      v19 = *(v18 + 4);
      *(v18 + 4) = v19 + 1;
      if (*(v18 + 64) == 1 && *(v18 + 65) != 1)
      {
        if (v19)
        {
          *(v18 + 4) = v19;
        }

        else
        {
          v18 = (*(*v18 + 24))(v18);
        }

        if (*(a1 + 40) != 1)
        {
          WTF::WeakHashSet<WebKit::RemoteAudioSessionProxy,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::begin(v70, v6 + 6);
          v45 = *v8;
          if (*v8)
          {
            v46 = *(v45 - 4);
            v47 = (v45 + 8 * v46);
          }

          else
          {
            v47 = 0;
            v46 = 0;
          }

          v65 = (v6 + 48);
          v66 = v47;
          v67 = v47;
          v68 = v47;
          v69 = v45 + 8 * v46;
          v18 = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v65);
          v57 = v70[1];
          v58 = v66;
          while (v57 != v58)
          {
            v59 = *(*v57 + 8);
            WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(*(v59 + 32), *(v59 + 24), &v73);
            v60 = v73;
            v61 = v73[11];
            v73 = 0;
            WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref(v60 + 2);
            WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(*(a1 + 32), *(a1 + 24), &v73);
            v62 = v73;
            v63 = v73[11];
            v73 = 0;
            WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref(v62 + 2);
            if (v61 != v63 && *(v59 + 64) == 1 && *(v59 + 40) != 1)
            {
              WebKit::RemoteAudioSessionProxy::beginInterruption(v59);
            }

            v18 = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::operator++(v70);
            v57 = v70[1];
          }
        }

        goto LABEL_38;
      }

      if (v19)
      {
        *(v18 + 4) = v19;
      }

      else
      {
        (*(*v18 + 24))(v18);
      }

      v15 = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::operator++(v70);
      v16 = v70[1];
    }

    WebKit::RemoteAudioSessionProxyManager::protectedSession(v15, v70);
    v18 = WebCore::AudioSession::tryToSetActive(v70[0]);
    v21 = v18;
    v22 = v70[0];
    v70[0] = 0;
    if (v22)
    {
      v18 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::AudioSession,(WTF::DestructionThread)0>::deref(v22 + 1, v20);
    }

    if ((v21 & 1) == 0)
    {
      v23 = 0;
      v24 = 0;
      goto LABEL_41;
    }

    goto LABEL_38;
  }

  WTF::WeakHashSet<WebKit::RemoteAudioSessionProxy,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::begin(v70, v6 + 6);
  v12 = *(v6 + 6);
  if (v12)
  {
    v13 = *(v12 - 4);
    v14 = (v12 + 8 * v13);
  }

  else
  {
    v14 = 0;
    v13 = 0;
  }

  v65 = (v6 + 48);
  v66 = v14;
  v67 = v14;
  v68 = v14;
  v69 = v12 + 8 * v13;
  v25 = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v65);
  v26 = v70[1];
  v27 = v66;
  while (v26 != v27)
  {
    v18 = *(*v26 + 8);
    v28 = *(v18 + 4);
    *(v18 + 4) = v28 + 1;
    if (v18 != a1 && (*(v18 + 64) & 1) != 0)
    {
      if (v28)
      {
        *(v18 + 4) = v28;
      }

      else
      {
        v18 = (*(*v18 + 24))(v18);
      }

      goto LABEL_38;
    }

    if (v28)
    {
      *(v18 + 4) = v28;
    }

    else
    {
      (*(*v18 + 24))(v18);
    }

    v25 = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::operator++(v70);
    v26 = v70[1];
  }

  WebKit::RemoteAudioSessionProxyManager::protectedSession(v25, v70);
  v18 = WebCore::AudioSession::tryToSetActive(v70[0]);
  v24 = v18;
  v30 = v70[0];
  v70[0] = 0;
  if (v30)
  {
    v18 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::AudioSession,(WTF::DestructionThread)0>::deref(v30 + 1, v29);
  }

  if (!v24)
  {
    v23 = 0;
    goto LABEL_41;
  }

LABEL_38:
  v24 = *(a1 + 64) != a2;
  *(a1 + 64) = a2;
  if (a2)
  {
    *(a1 + 65) = 0;
    v31 = WebCore::AVAudioSessionCaptureDeviceManager::singleton(v18);
    WebCore::AVAudioSessionCaptureDeviceManager::setPreferredSpeakerID(v31, (a1 + 72));
  }

  v23 = 1;
LABEL_41:
  v32 = *a3;
  *a3 = 0;
  (*(*v32 + 16))(v32, v23);
  (*(*v32 + 8))(v32);
  if (v24)
  {
    WebKit::RemoteAudioSessionProxy::configurationChanged(a1);
  }

  v65 = 0;
  v66 = 0;
  v74 = 0;
  v33 = WTF::fastMalloc(0x18);
  *v33 = &unk_1F10FC158;
  *(v33 + 1) = &v74;
  *(v33 + 2) = &v65;
  v70[0] = v33;
  WTF::WeakHashSet<WebKit::RemoteAudioSessionProxy,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::forEach(v6 + 12, v70);
  (*(*v33 + 8))(v33);
  v34 = *(*(v6 + 5) + 8);
  if (v34)
  {
    WebKit::AuxiliaryProcess::protectedParentProcessConnection(v34, &v73);
    IPC::Connection::getAuditToken(v73, v70);
    v36 = v73;
    v73 = 0;
    if (v36)
    {
      v36 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v36);
    }

    if (v72 == 1 && v74 == 1)
    {
      v37 = HIDWORD(v66);
      if (HIDWORD(v66) == v66)
      {
        v36 = WTF::Vector<audit_token_t,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v65, HIDWORD(v66) + 1, v70);
        v37 = HIDWORD(v66);
        v38 = (v65 + 32 * HIDWORD(v66));
        v39 = *(v36 + 16);
        *v38 = *v36;
        v38[1] = v39;
      }

      else
      {
        v40 = (v65 + 32 * HIDWORD(v66));
        v41 = v71;
        *v40 = *v70;
        v40[1] = v41;
      }

      HIDWORD(v66) = v37 + 1;
    }

    if (HIDWORD(v66))
    {
      WebKit::RemoteAudioSessionProxyManager::protectedSession(v36, v70);
      (*(*v70[0] + 256))(v70[0], &v65);
      v42 = v70[0];
      v70[0] = 0;
      if (v42)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::AudioSession,(WTF::DestructionThread)0>::deref(v42 + 1, v35);
      }
    }

    v43 = v65;
    if (v65)
    {
      v65 = 0;
      LODWORD(v66) = 0;
      WTF::fastFree(v43, v35);
    }

    result = WebKit::RemoteAudioSessionProxyManager::updateSpatialExperience(v6);
    if (*(v6 + 4) == 1)
    {
      v64 = *(*v6 + 8);

      return v64(v6);
    }

    else
    {
      --*(v6 + 4);
    }
  }

  else
  {
    result = 92;
    __break(0xC471u);
  }

  return result;
}

WebKit::RemoteAudioSessionProxyManager *WebKit::RemoteAudioSessionProxy::audioSessionManager(WebKit::RemoteAudioSessionProxy *this)
{
  WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(*(this + 4), *(this + 3), &v5);
  v2 = WebKit::GPUProcess::audioSessionManager(*(v5 + 80), v1);
  v3 = v5;
  v5 = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v3 + 16));
  }

  return v2;
}

WTF::StringImpl *WebKit::RemoteAudioSessionProxy::configurationChanged(WebKit::RemoteAudioSessionProxy *this)
{
  WebKit::RemoteAudioSessionProxy::protectedConnection(&v13, *(this + 3), *(this + 4));
  v2 = v13;
  WebKit::RemoteAudioSessionProxy::configuration(this, v11);
  v4 = IPC::Encoder::operator new(0x238, v3);
  *v4 = 950;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = 0;
  IPC::Encoder::encodeHeader(v4);
  v14 = v4;
  IPC::ArgumentCoder<WebKit::RemoteAudioSessionConfiguration,void>::encode(v4, v11);
  IPC::Connection::sendMessageImpl(v2, &v14, 0, 0);
  v6 = v14;
  v14 = 0;
  if (v6)
  {
    IPC::Encoder::~Encoder(v6, v5);
    bmalloc::api::tzoneFree(v9, v10);
  }

  v7 = v12;
  v12 = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v5);
  }

  result = v11[0];
  v11[0] = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v5);
    if (!v2)
    {
      return result;
    }
  }

  else if (!v2)
  {
    return result;
  }

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
}

WTF::StringImpl *WebKit::RemoteAudioSessionProxyManager::updateSpatialExperience(WebKit::RemoteAudioSessionProxyManager *this)
{
  v30 = 0;
  v2 = this + 48;
  WTF::WeakHashSet<WebKit::RemoteAudioSessionProxy,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::begin(&v28, this + 6);
  v3 = 0;
  v4 = 0;
  v5 = *(this + 6);
  if (v5)
  {
    v4 = *(v5 - 4);
    v3 = v5 + 8 * v4;
  }

  v23 = v2;
  v24 = v3;
  v25 = v3;
  v26 = v3;
  v27 = v5 + 8 * v4;
  v6 = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v23);
  v8 = v29;
  if (v29 == v24)
  {
    v15 = 0;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = *(*v8 + 8);
      ++*(v12 + 16);
      if (*(v12 + 64) == 1)
      {
        v13 = *(v12 + 43);
        if ((v10 & (v13 <= v11)) != 0)
        {
          v10 = 1;
        }

        else
        {
          v14 = *(v12 + 48);
          if (v14)
          {
            atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
          }

          v30 = v14;
          if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v9, v7);
          }

          v10 = 1;
          v9 = v14;
          v11 = v13;
        }
      }

      if (*(v12 + 16) == 1)
      {
        (*(*v12 + 24))(v12);
      }

      else
      {
        --*(v12 + 16);
      }

      v6 = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::operator++(&v28);
      v8 = v29;
    }

    while (v29 != v24);
    if (v10)
    {
      v15 = v11;
    }

    else
    {
      v15 = 0;
    }
  }

  v16 = WebCore::AudioSession::sharedSession(v6);
  v17 = (v16 + 8);
  while (1)
  {
    v18 = *v17;
    if ((*v17 & 1) == 0)
    {
      break;
    }

    v19 = *v17;
    atomic_compare_exchange_strong_explicit(v17, &v19, v18 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v19 == v18)
    {
      goto LABEL_28;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v17);
LABEL_28:
  (*(*v16 + 264))(v16, &v30);
  (*(*v16 + 280))(v16, v15);
  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::AudioSession,(WTF::DestructionThread)0>::deref(v17, v20);
  result = v30;
  v30 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v21);
    }
  }

  return result;
}

atomic_uchar **WebKit::RemoteAudioSessionProxy::setIsPlayingToBluetoothOverride(WebKit::RemoteAudioSessionProxy *a1, unsigned __int16 *a2)
{
  *(a1 + 66) = 1;
  v3 = WebKit::RemoteAudioSessionProxy::audioSessionManager(a1);
  ++*(v3 + 4);
  WebKit::RemoteAudioSessionProxyManager::protectedSession(v3, &v7);
  result = (*(*v7 + 152))(v7, *a2);
  v6 = v7;
  v7 = 0;
  if (v6)
  {
    result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::AudioSession,(WTF::DestructionThread)0>::deref((v6 + 8), v5);
  }

  if (*(v3 + 4) == 1)
  {
    return (*(*v3 + 8))(v3);
  }

  --*(v3 + 4);
  return result;
}

uint64_t WebKit::RemoteAudioSessionProxyManager::protectedSession@<X0>(WebKit::RemoteAudioSessionProxyManager *this@<X0>, uint64_t *a2@<X8>)
{
  result = WebCore::AudioSession::sharedSession(this);
  v4 = result;
  while (1)
  {
    v5 = *(result + 8);
    if ((v5 & 1) == 0)
    {
      break;
    }

    v6 = *(result + 8);
    atomic_compare_exchange_strong_explicit((result + 8), &v6, v5 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v6 == v5)
    {
      goto LABEL_6;
    }
  }

  result = WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(result + 8));
LABEL_6:
  *a2 = v4;
  return result;
}

atomic_uchar *WebKit::RemoteAudioSessionProxy::protectedConnection(WebKit::RemoteAudioSessionProxy *this, uint64_t a2, atomic_uchar *a3)
{
  result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(a3, a2, &v9);
  v5 = *(v9 + 56);
  while (1)
  {
    v6 = *v5;
    if ((*v5 & 1) == 0)
    {
      break;
    }

    v7 = *v5;
    atomic_compare_exchange_strong_explicit(v5, &v7, v6 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v7 == v6)
    {
      goto LABEL_6;
    }
  }

  result = WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v5);
LABEL_6:
  *this = v5;
  v8 = v9;
  v9 = 0;
  if (v8)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v8 + 16));
  }

  return result;
}

IPC::Encoder *WebKit::RemoteAudioSessionProxy::beginInterruption(WebKit::RemoteAudioSessionProxy *this)
{
  *(this + 65) = 1;
  WebKit::RemoteAudioSessionProxy::protectedConnection(&v8, *(this + 3), *(this + 4));
  v1 = v8;
  v3 = IPC::Encoder::operator new(0x238, v2);
  *v3 = 949;
  *(v3 + 68) = 0;
  *(v3 + 70) = 0;
  *(v3 + 69) = 0;
  *(v3 + 2) = 0;
  *(v3 + 3) = 0;
  *(v3 + 1) = 0;
  IPC::Encoder::encodeHeader(v3);
  v9 = v3;
  IPC::Connection::sendMessageImpl(v1, &v9, 0, 0);
  result = v9;
  v9 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v4);
    result = bmalloc::api::tzoneFree(v6, v7);
    if (!v1)
    {
      return result;
    }
  }

  else if (!v1)
  {
    return result;
  }

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v1);
}

atomic_uchar **WebKit::RemoteAudioSessionProxy::beginInterruptionRemote(WebKit::RemoteAudioSessionProxy *this)
{
  v1 = WebKit::RemoteAudioSessionProxy::audioSessionManager(this);
  ++*(v1 + 4);
  result = WebKit::RemoteAudioSessionProxyManager::beginInterruptionRemote(v1);
  if (*(v1 + 4) == 1)
  {
    v3 = *(*v1 + 8);

    return v3(v1);
  }

  else
  {
    --*(v1 + 4);
  }

  return result;
}

atomic_uchar **WebKit::RemoteAudioSessionProxyManager::beginInterruptionRemote(WebKit::RemoteAudioSessionProxyManager *this)
{
  v2 = WebCore::AudioSession::sharedSession(this);
  v3 = (v2 + 1);
  while (1)
  {
    v4 = *v3;
    if ((*v3 & 1) == 0)
    {
      break;
    }

    v5 = *v3;
    atomic_compare_exchange_strong_explicit(v3, &v5, v4 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v5 == v4)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v3);
LABEL_6:
  (*(*v2 + 28))(v2, this);
  (*(*v2 + 22))(v2);
  (*(*v2 + 27))(v2, this);

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::AudioSession,(WTF::DestructionThread)0>::deref(v2 + 1, v6);
}

atomic_uchar **WebKit::RemoteAudioSessionProxy::endInterruptionRemote(WebKit::RemoteAudioSessionProxy *a1, uint64_t a2)
{
  v3 = WebKit::RemoteAudioSessionProxy::audioSessionManager(a1);
  ++*(v3 + 4);
  result = WebKit::RemoteAudioSessionProxyManager::endInterruptionRemote(v3, a2);
  if (*(v3 + 4) == 1)
  {
    v5 = *(*v3 + 8);

    return v5(v3);
  }

  else
  {
    --*(v3 + 4);
  }

  return result;
}

atomic_uchar **WebKit::RemoteAudioSessionProxyManager::endInterruptionRemote(WebCore::AudioSession *a1, uint64_t a2)
{
  v4 = WebCore::AudioSession::sharedSession(a1);
  v5 = (v4 + 1);
  while (1)
  {
    v6 = *v5;
    if ((*v5 & 1) == 0)
    {
      break;
    }

    v7 = *v5;
    atomic_compare_exchange_strong_explicit(v5, &v7, v6 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v7 == v6)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v5);
LABEL_6:
  (*(*v4 + 28))(v4, a1);
  (*(*v4 + 23))(v4, a2);
  (*(*v4 + 27))(v4, a1);

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::AudioSession,(WTF::DestructionThread)0>::deref(v4 + 1, v8);
}

WTF::StringImpl *WebKit::RemoteAudioSessionProxy::setSceneIdentifier(WebKit::RemoteAudioSessionProxy *this, atomic_uint **a2)
{
  WTF::String::operator=(this + 6, a2);
  v3 = WebKit::RemoteAudioSessionProxy::audioSessionManager(this);
  ++*(v3 + 4);
  result = WebKit::RemoteAudioSessionProxyManager::updateSpatialExperience(v3);
  if (*(v3 + 4) == 1)
  {
    v5 = *(*v3 + 8);

    return v5(v3);
  }

  else
  {
    --*(v3 + 4);
  }

  return result;
}

WTF::StringImpl *WebKit::RemoteAudioSessionProxy::setSoundStageSize(WebKit::RemoteAudioSessionProxy *a1, char a2)
{
  *(a1 + 43) = a2;
  v2 = WebKit::RemoteAudioSessionProxy::audioSessionManager(a1);
  ++*(v2 + 4);
  result = WebKit::RemoteAudioSessionProxyManager::updateSpatialExperience(v2);
  if (*(v2 + 4) == 1)
  {
    v4 = *(*v2 + 8);

    return v4(v2);
  }

  else
  {
    --*(v2 + 4);
  }

  return result;
}

atomic_uchar **WebKit::RemoteAudioSessionProxy::triggerBeginInterruptionForTesting(WebKit::RemoteAudioSessionProxy *this)
{
  WebKit::RemoteAudioSessionProxyManager::protectedSession(this, &v4);
  result = (*(*v4 + 192))(v4);
  v3 = v4;
  v4 = 0;
  if (v3)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::AudioSession,(WTF::DestructionThread)0>::deref((v3 + 8), v2);
  }

  return result;
}

atomic_uchar **WebKit::RemoteAudioSessionProxy::triggerEndInterruptionForTesting(WebKit::RemoteAudioSessionProxy *this)
{
  WebKit::RemoteAudioSessionProxyManager::protectedSession(this, &v4);
  result = (*(*v4 + 200))(v4);
  v3 = v4;
  v4 = 0;
  if (v3)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::AudioSession,(WTF::DestructionThread)0>::deref((v3 + 8), v2);
  }

  return result;
}

uint64_t WebKit::RemoteAudioSessionProxy::setPreferredSpeakerID(WTF **this, const WTF::StringImpl **a2, const WTF::StringImpl *a3)
{
  v5 = (this + 9);
  result = WTF::equal(this[9], *a2, a3);
  if ((result & 1) == 0)
  {
    result = WTF::String::operator=(v5, a2);
    if (*(this + 64) == 1)
    {
      v7 = WebCore::AVAudioSessionCaptureDeviceManager::singleton(result);

      return WebCore::AVAudioSessionCaptureDeviceManager::setPreferredSpeakerID(v7, v5);
    }
  }

  return result;
}

WebKit::RemoteAudioSessionProxyManager *WebKit::RemoteAudioSessionProxyManager::RemoteAudioSessionProxyManager(WebKit::RemoteAudioSessionProxyManager *this, WebKit::GPUProcess *a2)
{
  *(this + 4) = 1;
  v4 = this + 24;
  *this = &unk_1F10FBEB8;
  *(this + 1) = 0;
  *(this + 3) = &unk_1F10FBF08;
  *(this + 4) = 0;
  v5 = WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2 + 2, a2);
  v6 = *(a2 + 1);
  atomic_fetch_add(v6, 1u);
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 5) = v6;
  v7 = WebCore::AudioSession::sharedSession(v5);
  v8 = (v7 + 8);
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
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v8);
LABEL_6:
  (*(*v7 + 216))(v7, this);
  (*(*v7 + 128))(v7, v4);
  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::AudioSession,(WTF::DestructionThread)0>::deref(v8, v11);
  return this;
}

void WebKit::RemoteAudioSessionProxyManager::~RemoteAudioSessionProxyManager(WebKit::RemoteAudioSessionProxyManager *this)
{
  *this = &unk_1F10FBEB8;
  v2 = this + 24;
  *(this + 3) = &unk_1F10FBF08;
  v3 = WebCore::AudioSession::sharedSession(this);
  v4 = (v3 + 8);
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
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v4);
LABEL_6:
  (*(*v3 + 224))(v3, this);
  (*(*v3 + 136))(v3, v2);
  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::AudioSession,(WTF::DestructionThread)0>::deref(v4, v7);
  v9 = *(this + 6);
  if (v9)
  {
    WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::deallocateTable(v9, v8);
  }

  v10 = *(this + 5);
  *(this + 5) = 0;
  if (v10 && atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v10);
    WTF::fastFree(v10, v8);
  }

  v11 = *(this + 4);
  if (v11)
  {
    *(v11 + 8) = 0;
    v12 = *(this + 4);
    *(this + 4) = 0;
    if (v12)
    {
      if (atomic_fetch_add(v12, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v12);
        WTF::fastFree(v12, v8);
      }
    }
  }

  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, v8);
  if (*(this + 4) != 1)
  {
    __break(0xC471u);
  }
}

{
  WebKit::RemoteAudioSessionProxyManager::~RemoteAudioSessionProxyManager(this);

  bmalloc::api::tzoneFree(v1, v2);
}

void non-virtual thunk toWebKit::RemoteAudioSessionProxyManager::~RemoteAudioSessionProxyManager(WebKit::RemoteAudioSessionProxyManager *this)
{
  WebKit::RemoteAudioSessionProxyManager::~RemoteAudioSessionProxyManager((this - 24));
}

{
  WebKit::RemoteAudioSessionProxyManager::~RemoteAudioSessionProxyManager((this - 24));

  bmalloc::api::tzoneFree(v1, v2);
}

atomic_uchar **WebKit::RemoteAudioSessionProxyManager::addProxy(WebKit::RemoteAudioSessionProxyManager *a1, unsigned int *a2, uint64_t a3)
{
  WTF::WeakHashSet<WebKit::RemoteAudioSessionProxy,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::add<WebKit::RemoteAudioSessionProxy>(a1 + 48, a2, v9);
  result = WebKit::RemoteAudioSessionProxyManager::updateCategory(a1);
  if (*(a3 + 32) == 1)
  {
    result = WebKit::RemoteAudioSessionProxyManager::protectedSession(result, &v10);
    if (*(a3 + 32))
    {
      v6 = *(a3 + 16);
      v9[0] = *a3;
      v9[1] = v6;
      result = (*(*v10 + 248))(v10, v9);
      v8 = v10;
      v10 = 0;
      if (v8)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::AudioSession,(WTF::DestructionThread)0>::deref((v8 + 8), v7);
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

unsigned int *WTF::WeakHashSet<WebKit::RemoteAudioSessionProxy,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::add<WebKit::RemoteAudioSessionProxy>@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 12);
  v7 = *(a1 + 8) + 1;
  *(a1 + 8) = v7;
  if (v7 > v6)
  {
    v8 = *a1;
    if (*a1)
    {
      v9 = *(v8 - 4);
      if (!v9)
      {
LABEL_15:
        v15 = *(v8 - 4);
        if (6 * *(v8 - 12) < v15 && v15 > 8)
        {
          WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::shrinkToBestSize(a1);
          v8 = *a1;
          *(a1 + 8) = 0;
          if (!v8)
          {
            goto LABEL_22;
          }
        }

        else
        {
          *(a1 + 8) = 0;
        }

        LODWORD(v8) = *(v8 - 12);
        if (v8 > 0x7FFFFFFE)
        {
          v17 = -2;
          goto LABEL_24;
        }

LABEL_22:
        v17 = 2 * v8;
LABEL_24:
        *(a1 + 12) = v17;
        goto LABEL_25;
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
            WTF::fastFree(v13, a2);
          }

          *(v12 + v11) = -1;
          ++v10;
        }

        v11 -= 8;
      }

      while (v11);
      v8 = *a1;
      if (v10)
      {
        v14 = *(v8 - 12) - v10;
        *(v8 - 16) += v10;
        *(v8 - 12) = v14;
        goto LABEL_15;
      }

      if (v8)
      {
        goto LABEL_15;
      }
    }

    LODWORD(v8) = 0;
    *(a1 + 8) = 0;
    goto LABEL_22;
  }

LABEL_25:
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2 + 2, a2);
  v18 = *(a2 + 1);
  atomic_fetch_add(v18, 1u);
  v21 = v18;
  WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(a1, &v21, a3);
  result = v21;
  v21 = 0;
  if (result)
  {
    if (atomic_fetch_add(result, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result);
      return WTF::fastFree(result, v19);
    }
  }

  return result;
}

void *WTF::WeakHashSet<WebKit::RemoteAudioSessionProxy,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::begin(void *a1, void **a2)
{
  v4 = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(a2);
  *a1 = a2;
  a1[1] = v4;
  a1[2] = v5;
  v6 = *a2;
  if (*a2)
  {
    v7 = *(v6 - 1);
    v8 = &v6[v7];
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  a1[3] = v8;
  a1[4] = &v6[v7];

  return WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(a1);
}

unsigned int *WTF::WeakHashSet<WebKit::RemoteAudioSessionProxy,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::forEach(unsigned int *result, uint64_t a2)
{
  v3 = result;
  if (*result && (v4 = *(*result - 12), v4))
  {
    if (v4 >> 29)
    {
      __break(0xC471u);
      return result;
    }

    v5 = WTF::fastMalloc((8 * v4));
  }

  else
  {
    v5 = 0;
  }

  result = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(v3);
  v7 = result;
  v8 = v6;
  if (*v3)
  {
    v9 = *v3 + 8 * *(*v3 - 4);
  }

  else
  {
    v9 = 0;
  }

  if (v9 != result)
  {
    v10 = 0;
    v11 = 1;
    do
    {
      v12 = v11;
      v13 = *(*v7 + 8);
      if (v13)
      {
        result = WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v13 + 8), *(*v7 + 8));
        v14 = *(v13 + 8);
        if (v14)
        {
          atomic_fetch_add(v14, 1u);
        }
      }

      else
      {
        v14 = 0;
      }

      *(v5 + v10) = v14;
      do
      {
        v7 += 2;
      }

      while (v7 != v8 && (*v7 + 1) <= 1);
      ++v10;
      v11 = v12 + 1;
    }

    while (v7 != v9);
    if (v10)
    {
      v15 = v5;
      do
      {
        v16 = *v15;
        if (*v15)
        {
          v6 = *(v16 + 8);
          if (v6)
          {
            v17 = *v3;
            if (*v3)
            {
              v18 = *(v17 - 2);
              v19 = (~(v16 << 32) + v16) ^ ((~(v16 << 32) + v16) >> 22);
              v20 = 9 * ((v19 + ~(v19 << 13)) ^ ((v19 + ~(v19 << 13)) >> 8));
              v21 = (v20 ^ (v20 >> 15)) + ~((v20 ^ (v20 >> 15)) << 27);
              v22 = v18 & ((v21 >> 31) ^ v21);
              for (i = 1; ; ++i)
              {
                v24 = v17[v22];
                if (!v24)
                {
                  break;
                }

                if (v24 != -1 && v24 == v16)
                {
                  (*(**a2 + 16))();
                  break;
                }

                v22 = (v22 + i) & v18;
              }
            }
          }
        }

        v15 = (v15 + 8);
      }

      while (v15 != (v5 + 8 * v10));
      v26 = 8 * v12;
      v27 = v5;
      do
      {
        result = *v27;
        *v27 = 0;
        if (result && atomic_fetch_add(result, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, result);
          result = WTF::fastFree(result, v6);
        }

        ++v27;
        v26 -= 8;
      }

      while (v26);
    }
  }

  if (v5)
  {

    return WTF::fastFree(v5, v6);
  }

  return result;
}

uint64_t WebKit::RemoteAudioSessionProxyManager::beginAudioSessionInterruption(WebKit::RemoteAudioSessionProxyManager *this)
{
  v2 = WTF::fastMalloc(0x10);
  *v2 = &unk_1F10FC180;
  v5 = v2;
  WTF::WeakHashSet<WebKit::RemoteAudioSessionProxy,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::forEach(this + 12, &v5);
  v3 = *(*v2 + 8);

  return v3(v2);
}

uint64_t WebKit::RemoteAudioSessionProxyManager::endAudioSessionInterruption(uint64_t a1, char a2)
{
  v4 = WTF::fastMalloc(0x10);
  *v4 = &unk_1F10FC1A8;
  v4[8] = a2;
  v7 = v4;
  WTF::WeakHashSet<WebKit::RemoteAudioSessionProxy,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::forEach((a1 + 48), &v7);
  v5 = *(*v4 + 8);

  return v5(v4);
}

uint64_t WebKit::RemoteAudioSessionProxyManager::configurationDidChange(WebKit::RemoteAudioSessionProxyManager *this, const WebCore::AudioSession *a2)
{
  v3 = WTF::fastMalloc(0x10);
  *v3 = &unk_1F10FC1D0;
  v6 = v3;
  WTF::WeakHashSet<WebKit::RemoteAudioSessionProxy,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::forEach(this + 12, &v6);
  v4 = *(*v3 + 8);

  return v4(v3);
}

uint64_t WebKit::RemoteAudioTrackProxy::RemoteAudioTrackProxy(uint64_t a1, uint64_t a2, atomic_ullong *a3, uint64_t a4)
{
  *(a1 + 16) = 1;
  *a1 = &unk_1F10FBF40;
  *(a1 + 8) = 0;
  *(a1 + 24) = a2;
  v8 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::controlBlock((a2 + 16));
  *(a1 + 32) = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v8);
  while (1)
  {
    v9 = a3[1];
    if ((v9 & 1) == 0)
    {
      break;
    }

    v10 = a3[1];
    atomic_compare_exchange_strong_explicit(a3 + 1, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v10 == v9)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(a3[1]);
LABEL_6:
  *(a1 + 40) = a3;
  *(a1 + 48) = (*(*a3 + 48))(a3);
  *(a1 + 56) = a4;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v11 = WTF::fastMalloc(0x10);
  *v11 = &unk_1F10FC1F8;
  v25 = v11;
  *(a1 + 72) = WebCore::TrackPrivateBase::addClient();
  v12 = v25;
  v25 = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  v13 = *(a2 + 56);
  WebKit::RemoteAudioTrackProxy::configuration(&v25, a1);
  v14 = *(a1 + 56);
  v16 = IPC::Encoder::operator new(0x238, v15);
  *v16 = 331;
  *(v16 + 2) = 0;
  *(v16 + 3) = 0;
  *(v16 + 1) = v14;
  *(v16 + 68) = 0;
  *(v16 + 70) = 0;
  *(v16 + 69) = 0;
  IPC::Encoder::encodeHeader(v16);
  v29 = v16;
  IPC::ArgumentCoder<WebKit::AudioTrackPrivateRemoteConfiguration,void>::encode(v16, &v25);
  IPC::Connection::sendMessageImpl(v13, &v29, 0, 0);
  v18 = v29;
  v29 = 0;
  if (v18)
  {
    IPC::Encoder::~Encoder(v18, v17);
    bmalloc::api::tzoneFree(v23, v24);
  }

  v19 = v28;
  v28 = 0;
  if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v19, v17);
  }

  v20 = v27;
  v27 = 0;
  if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v20, v17);
  }

  v21 = v26;
  v26 = 0;
  if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v21, v17);
  }

  return a1;
}

WTF::StringImpl *WebKit::RemoteAudioTrackProxy::configuration(WebKit::RemoteAudioTrackProxy *this, uint64_t a2)
{
  *this = (*(**(a2 + 40) + 48))(*(a2 + 40));
  (*(**(a2 + 40) + 56))(&v15);
  v4 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed);
  }

  *(this + 1) = v4;
  (*(**(a2 + 40) + 64))(&v14);
  v5 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
  }

  *(this + 2) = v5;
  *(this + 3) = (*(**(a2 + 40) + 96))(*(a2 + 40));
  *(this + 8) = v6;
  *(this + 36) = v7;
  *(this + 10) = (*(**(a2 + 40) + 72))(*(a2 + 40));
  v8 = *(a2 + 40);
  *(this + 44) = v8[56];
  *(this + 45) = (*(*v8 + 128))(v8);
  v10 = *(a2 + 40);
  v11 = *(v10 + 64);
  if (v11)
  {
    atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
  }

  *(this + 6) = v11;
  *(this + 56) = *(v10 + 72);
  v12 = v14;
  v14 = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v9);
  }

  result = v15;
  v15 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v9);
    }
  }

  return result;
}

void WebKit::RemoteAudioTrackProxy::~RemoteAudioTrackProxy(WebKit::RemoteAudioTrackProxy *this)
{
  WebCore::TrackPrivateBase::removeClient(*(this + 5));
  v3 = *(this + 5);
  *(this + 5) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::TrackPrivateBase,(WTF::DestructionThread)0>::deref((v3 + 8), v2);
  }

  v4 = *(this + 4);
  *(this + 4) = 0;
  if (v4)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v4, v2);
  }

  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, v2);
}

{
  WebKit::RemoteAudioTrackProxy::~RemoteAudioTrackProxy(this);

  bmalloc::api::tzoneFree(v1, v2);
}

atomic_uchar *WebKit::RemoteAudioTrackProxy::configurationChanged(WebKit::RemoteAudioTrackProxy *this)
{
  result = *(this + 4);
  if (result)
  {
    result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(result, *(this + 3), &v20);
    if (v20)
    {
      v3 = *(v20 + 56);
      v4 = (*(**(this + 5) + 48))(*(this + 5));
      v5 = *(this + 6);
      *(this + 6) = v4;
      WebKit::RemoteAudioTrackProxy::configuration(v16, this);
      v6 = *(this + 7);
      v8 = IPC::Encoder::operator new(0x238, v7);
      *v8 = 354;
      *(v8 + 2) = 0;
      *(v8 + 3) = 0;
      *(v8 + 1) = v6;
      *(v8 + 68) = 0;
      *(v8 + 70) = 0;
      *(v8 + 69) = 0;
      IPC::Encoder::encodeHeader(v8);
      v21 = v8;
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v8, v5);
      IPC::ArgumentCoder<WebKit::AudioTrackPrivateRemoteConfiguration,void>::encode(v8, v16);
      IPC::Connection::sendMessageImpl(v3, &v21, 0, 0);
      v10 = v21;
      v21 = 0;
      if (v10)
      {
        IPC::Encoder::~Encoder(v10, v9);
        bmalloc::api::tzoneFree(v14, v15);
      }

      v11 = v19;
      v19 = 0;
      if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v11, v9);
      }

      v12 = v18;
      v18 = 0;
      if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v12, v9);
      }

      result = v17;
      v17 = 0;
      if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v9);
      }

      v13 = v20;
      v20 = 0;
      if (v13)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v13 + 16));
      }
    }
  }

  return result;
}

atomic_uchar *WebKit::RemoteAudioTrackProxy::enabledChanged(atomic_uchar *this, int a2)
{
  if (this[64] != a2)
  {
    this[64] = a2;
    return WebKit::RemoteAudioTrackProxy::configurationChanged(this);
  }

  return this;
}

WebKit::RemoteCDMFactoryProxy *WebKit::RemoteCDMFactoryProxy::RemoteCDMFactoryProxy(WebKit::RemoteCDMFactoryProxy *this, atomic_ullong *a2)
{
  *(this + 4) = 1;
  *this = &unk_1F10FBF98;
  *(this + 1) = 0;
  *(this + 3) = &unk_1F10FBFE8;
  *(this + 4) = a2;
  v3 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::controlBlock(a2 + 2);
  *(this + 5) = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v3);
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  return this;
}

void WebKit::RemoteCDMFactoryProxy::~RemoteCDMFactoryProxy(WebKit::RemoteCDMFactoryProxy *this, void *a2)
{
  v3 = *(this + 6);
  if (v3)
  {
    *(this + 6) = 0;
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::RemoteCDMProxy,WTF::RawPtrTraits<WebKit::RemoteCDMProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::RemoteCDMProxy,WTF::RawPtrTraits<WebKit::RemoteCDMProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::RemoteCDMProxy,WTF::RawPtrTraits<WebKit::RemoteCDMProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::RemoteCDMProxy,WTF::RawPtrTraits<WebKit::RemoteCDMProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  v4 = *(this + 9);
  *(this + 9) = 0;
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 2);
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 8);
  if (v5)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceSessionProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceSessionProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceSessionProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceSessionProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceSessionProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceSessionProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteCDMInstanceSessionProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceSessionProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v5, a2);
  }

  v6 = *(this + 7);
  if (v6)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteCDMInstanceProxy,WTF::RawPtrTraits<WebKit::RemoteCDMInstanceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMInstanceProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMInstanceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v6, a2);
  }

  v7 = *(this + 6);
  if (v7)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::RemoteCDMProxy,WTF::RawPtrTraits<WebKit::RemoteCDMProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::RemoteCDMProxy,WTF::RawPtrTraits<WebKit::RemoteCDMProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::RemoteCDMProxy,WTF::RawPtrTraits<WebKit::RemoteCDMProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::RemoteCDMProxy,WTF::RawPtrTraits<WebKit::RemoteCDMProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v7, a2);
  }

  v8 = *(this + 5);
  *(this + 5) = 0;
  if (v8)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v8, a2);
  }

  *this = &unk_1F10EA5E0;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, a2);
  if (*(this + 4) != 1)
  {
    __break(0xC471u);
  }
}

{
  WebKit::RemoteCDMFactoryProxy::~RemoteCDMFactoryProxy(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

void non-virtual thunk toWebKit::RemoteCDMFactoryProxy::~RemoteCDMFactoryProxy(WebKit::RemoteCDMFactoryProxy *this, void *a2)
{
  WebKit::RemoteCDMFactoryProxy::~RemoteCDMFactoryProxy((this - 24), a2);
}

{
  WebKit::RemoteCDMFactoryProxy::~RemoteCDMFactoryProxy((this - 24), a2);

  bmalloc::api::tzoneFree(v2, v3);
}

uint64_t WebKit::RemoteCDMFactoryProxy::createCDM(uint64_t a1, WebKit *this, uint64_t a3, uint64_t *a4)
{
  v6 = WebKit::factoryForKeySystem(this, this);
  if (!v6)
  {
    LOBYTE(v39) = 0;
    v40 = 0;
    *(&v38 + 1) = 0;
    LOWORD(v38) = 0;
    v36 = 0u;
    v37 = 0u;
    v23 = *a4;
    *a4 = 0;
    (*(*v23 + 16))(v23, &v39, &v36);
    (*(*v23 + 8))(v23);
    WTF::Vector<WTF::AtomString,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v37, v24);
    return WTF::Vector<WTF::AtomString,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v36, v25);
  }

  (*(*v6 + 16))(&v35);
  if (!v35)
  {
    LOBYTE(v39) = 0;
    v40 = 0;
    *(&v38 + 1) = 0;
    LOWORD(v38) = 0;
    v36 = 0u;
    v37 = 0u;
    v27 = *a4;
    *a4 = 0;
    (*(*v27 + 16))(v27, &v39, &v36);
    (*(*v27 + 8))(v27);
    goto LABEL_30;
  }

  WebKit::RemoteCDMProxy::create(&v35, &v34);
  IdentifierInternal = WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>::generateIdentifierInternal();
  v8 = v34;
  v9 = *(v34 + 40);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v36, v9);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v37, v9 + 16);
  v38 = *(v9 + 32);
  if (IdentifierInternal == -1 || !IdentifierInternal)
  {
    __break(0xC471u);
    JUMPOUT(0x19DB91B90);
  }

  v10 = *(a1 + 48);
  if (!v10)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::RemoteCDMProxy,WTF::RawPtrTraits<WebKit::RemoteCDMProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::RemoteCDMProxy,WTF::RawPtrTraits<WebKit::RemoteCDMProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::RemoteCDMProxy,WTF::RawPtrTraits<WebKit::RemoteCDMProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::RemoteCDMProxy,WTF::RawPtrTraits<WebKit::RemoteCDMProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand((a1 + 48));
    v10 = *(a1 + 48);
  }

  v11 = *(v10 - 8);
  v12 = (IdentifierInternal + ~(IdentifierInternal << 32)) ^ ((IdentifierInternal + ~(IdentifierInternal << 32)) >> 22);
  v13 = 9 * ((v12 + ~(v12 << 13)) ^ ((v12 + ~(v12 << 13)) >> 8));
  v14 = (v13 ^ (v13 >> 15)) + ~((v13 ^ (v13 >> 15)) << 27);
  v15 = v11 & ((v14 >> 31) ^ v14);
  v16 = (v10 + 16 * v15);
  v17 = *v16;
  if (*v16)
  {
    v18 = 0;
    v19 = 1;
    while (v17 != IdentifierInternal)
    {
      if (v17 == -1)
      {
        v18 = v16;
      }

      v15 = (v15 + v19) & v11;
      v16 = (v10 + 16 * v15);
      v17 = *v16;
      ++v19;
      if (!*v16)
      {
        if (v18)
        {
          *v18 = 0;
          v18[1] = 0;
          --*(*(a1 + 48) - 16);
          v16 = v18;
        }

        goto LABEL_15;
      }
    }

    v29 = v16[1];
    v16[1] = v8;
    if (v29)
    {
      if (v29[4] == 1)
      {
        (*(*v29 + 24))(v29);
      }

      else
      {
        --v29[4];
      }
    }

    goto LABEL_29;
  }

LABEL_15:
  v20 = v16[1];
  *v16 = IdentifierInternal;
  v16[1] = v8;
  if (v20)
  {
    if (v20[4] == 1)
    {
      (*(*v20 + 24))(v20);
    }

    else
    {
      --v20[4];
    }
  }

  v21 = *(a1 + 48);
  if (v21)
  {
    v22 = *(v21 - 12) + 1;
  }

  else
  {
    v22 = 1;
  }

  *(v21 - 12) = v22;
  v30 = (*(v21 - 16) + v22);
  v31 = *(v21 - 4);
  if (v31 > 0x400)
  {
    if (v31 > 2 * v30)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  if (3 * v31 <= 4 * v30)
  {
LABEL_28:
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::RemoteCDMProxy,WTF::RawPtrTraits<WebKit::RemoteCDMProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::RemoteCDMProxy,WTF::RawPtrTraits<WebKit::RemoteCDMProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::RemoteCDMProxy,WTF::RawPtrTraits<WebKit::RemoteCDMProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::RemoteCDMProxy,WTF::RawPtrTraits<WebKit::RemoteCDMProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand((a1 + 48));
  }

LABEL_29:
  v39 = IdentifierInternal;
  v40 = 1;
  v32 = *a4;
  *a4 = 0;
  (*(*v32 + 16))(v32, &v39, &v36);
  (*(*v32 + 8))(v32);
LABEL_30:
  WTF::Vector<WTF::AtomString,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v37, v28);
  WTF::Vector<WTF::AtomString,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v36, v33);
  result = v35;
  v35 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}