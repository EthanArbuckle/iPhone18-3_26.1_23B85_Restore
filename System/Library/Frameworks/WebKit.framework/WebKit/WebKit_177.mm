uint64_t *IPC::Decoder::operator>><std::tuple<std::optional<WebKit::RemoteVideoFrameProxyProperties>>>(uint64_t *a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  IPC::ArgumentCoder<std::optional<WebKit::RemoteVideoFrameProxyProperties>,void>::decode<IPC::Decoder>(a1, &v15);
  if (v19)
  {
    goto LABEL_2;
  }

  v9 = *a1;
  v10 = a1[1];
  *a1 = 0;
  a1[1] = 0;
  v11 = a1[3];
  if (v11 && v10)
  {
    (*(*v11 + 16))(v11, v9);
    if (v19)
    {
LABEL_2:
      v4 = v15;
      v20 = v16;
      v21 = v17;
      *v22 = *v18;
      *&v22[15] = *&v18[15];
      v5 = 1;
      goto LABEL_3;
    }

    v5 = 0;
    v12 = *a1;
    v13 = a1[1];
    v14 = a1[3];
    *a1 = 0;
    a1[1] = 0;
    v4 = 0;
    if (v14 && v13)
    {
      (*(*v14 + 16))(v14, v12);
      v5 = 0;
      v4 = 0;
    }
  }

  else
  {
    v5 = 0;
    v4 = 0;
    *a1 = 0;
    a1[1] = 0;
  }

LABEL_3:
  if (*(a2 + 64) == v5)
  {
    if (*(a2 + 64))
    {
      *a2 = v4;
      v6 = v21;
      *(a2 + 1) = v20;
      *(a2 + 17) = v6;
      *(a2 + 33) = *v22;
      *(a2 + 49) = *&v22[16];
    }
  }

  else if (*(a2 + 64))
  {
    *(a2 + 64) = 0;
  }

  else
  {
    *a2 = v4;
    v7 = v21;
    *(a2 + 1) = v20;
    *(a2 + 17) = v7;
    *(a2 + 33) = *v22;
    *(a2 + 48) = *&v22[15];
    *(a2 + 64) = 1;
  }

  return a1;
}

uint64_t *IPC::ArgumentCoder<std::optional<WebKit::RemoteVideoFrameProxyProperties>,void>::decode<IPC::Decoder>@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result;
  v4 = result[1];
  v5 = result[2];
  v6 = *result;
  if (v4 <= &v5[-*result])
  {
    *result = 0;
    result[1] = 0;
    v12 = result[3];
    if (v12)
    {
      if (v4)
      {
        (*(*v12 + 16))(v12);
        v4 = v2[1];
      }
    }

    else
    {
      v4 = 0;
    }

LABEL_16:
    *v2 = 0;
    v2[1] = 0;
    v13 = v2[3];
    if (v13)
    {
      if (v4)
      {
        (*(*v13 + 16))(v13);
        v6 = *v2;
        v4 = v2[1];
        goto LABEL_19;
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = 0;
    goto LABEL_19;
  }

  result[2] = (v5 + 1);
  if (!v5)
  {
    goto LABEL_16;
  }

  v7 = *v5;
  if (v7 < 2)
  {
    if (v7)
    {
      result = IPC::ArgumentCoder<WebKit::RemoteVideoFrameProxyProperties,void>::decode(result, v14);
      if (v16 & 1) != 0 || (v10 = *v2, v11 = v2[1], *v2 = 0, v2[1] = 0, (result = v2[3]) != 0) && v11 && (result = (*(*result + 16))(result, v10), (v16))
      {
        v8 = v14[1];
        *a2 = v14[0];
        *(a2 + 16) = v8;
        *(a2 + 32) = v14[2];
        *(a2 + 48) = v15;
        v9 = 1;
        *(a2 + 56) = 1;
      }

      else
      {
        v9 = 0;
        *a2 = 0;
      }
    }

    else
    {
      *a2 = 0;
      *(a2 + 56) = 0;
      v9 = 1;
    }

    *(a2 + 64) = v9;
    return result;
  }

LABEL_19:
  *v2 = 0;
  v2[1] = 0;
  result = v2[3];
  if (result && v4)
  {
    result = (*(*result + 16))(result, v6);
  }

  *a2 = 0;
  *(a2 + 64) = 0;
  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::RemoteGraphicsContextGLProxy::copyTextureFromVideoFrame(WebCore::VideoFrame &,unsigned int,unsigned int,int,unsigned int,unsigned int,unsigned int,BOOL,BOOL)::$_0,void,IPC::Semaphore &>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1125148;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    if (*(v2 + 32) == 1)
    {
      (*(*(v2 + 24) + 16))();
    }

    else
    {
      --*(v2 + 32);
    }
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteGraphicsContextGLProxy::copyTextureFromVideoFrame(WebCore::VideoFrame &,unsigned int,unsigned int,int,unsigned int,unsigned int,unsigned int,BOOL,BOOL)::$_0,void,IPC::Semaphore &>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1125148;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    if (*(v3 + 32) == 1)
    {
      (*(*(v3 + 24) + 16))();
    }

    else
    {
      --*(v3 + 32);
    }
  }

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<WebKit::RemoteGraphicsContextGLProxy::copyTextureFromVideoFrame(WebCore::VideoFrame &,unsigned int,unsigned int,int,unsigned int,unsigned int,unsigned int,BOOL,BOOL)::$_0,void,IPC::Semaphore &>::call(uint64_t a1, IPC::Semaphore *a2)
{
  v2 = *(a1 + 8);
  v6 = a2;
  v3 = *(v2 + 11);
  if (v3)
  {
    atomic_fetch_add(v3, 1u);
    v4 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::SetSharedVideoFrameSemaphore,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v3, &v6, *(v2 + 9));
    if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3);
      IPC::StreamClientConnection::operator delete(v3);
    }
  }

  else
  {
    v4 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::SetSharedVideoFrameSemaphore,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, &v6, *(v2 + 9));
  }

  if (v4)
  {
    WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v2);
    v5 = *(*(v2 + 3) + 2288);

    v5(v2 + 24);
  }
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::SetSharedVideoFrameSemaphore,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, IPC::Semaphore **a2, uint64_t a3)
{
  v6 = *(a1 + 128);
  v7 = INFINITY;
  if (fabs(v6) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v7 = v6 + v8;
  }

  if (*(a1 + 64) == a3)
  {
LABEL_4:
    IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v31, v7);
    if (v33 == 1)
    {
      if (v32 <= 1)
      {
        __break(0xC471u);
      }

      else
      {
        *v31 = 3197;
        v10 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
        v12 = *(a1 + 72);
        v11 = *(a1 + 80);
        if (v10 + 16 >= v12)
        {
          v10 = 0;
        }

        v13 = v10 + 16;
        if (v12 <= v13)
        {
          v13 = 0;
        }

        *(a1 + 88) = v13;
        if (*(v11 + 8) > 0xFFuLL)
        {
          atomic_exchange((*(v11 + 16) + 128), v13);
          *(a1 + 124) = 0;
          v14 = *(a1 + 8);
          v15 = IPC::Encoder::operator new(0x238, v9);
          *v15 = 1295;
          *(v15 + 2) = 0;
          *(v15 + 3) = 0;
          *(v15 + 1) = a3;
          *(v15 + 68) = 0;
          *(v15 + 70) = 0;
          *(v15 + 69) = 0;
          IPC::Encoder::encodeHeader(v15);
          v34 = v15;
          IPC::ArgumentCoder<IPC::Semaphore,void>::encode(v15, *a2);
          v17 = IPC::Connection::sendMessageImpl(v14, &v34, 1, 0);
          v18 = v34;
          v34 = 0;
          if (v18)
          {
            IPC::Encoder::~Encoder(v18, v16);
            bmalloc::api::tzoneFree(v19, v20);
          }

          return v17;
        }
      }

      goto LABEL_28;
    }

    return 16;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v31, v7);
  if (v33 != 1)
  {
    return 16;
  }

  v21 = v32;
  if (v32 > 1)
  {
    v22 = v31;
    *v31 = 3198;
    v23 = v22 + 1;
    if (v21 - 2 < (-v23 & 7 | 8uLL))
    {
      return 18;
    }

    v24 = -v23 & 7;
    *(v23 + v24) = a3;
    if (v24 != 7)
    {
      v24 = 6;
    }

    v25 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v27 = *(a1 + 72);
    v26 = *(a1 + 80);
    v28 = v24 + 10;
    if (v25 + 16 >= v27)
    {
      v25 = 0;
    }

    v29 = v28 + v25;
    if (v27 <= v29)
    {
      v29 = 0;
    }

    *(a1 + 88) = v29;
    if (*(v26 + 8) <= 0xFFuLL)
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v26 + 16) + 128), v29) == 0x80000000);
    *(a1 + 64) = a3;
    goto LABEL_4;
  }

LABEL_29:
  result = 1067;
  __break(0xC471u);
  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::RemoteGraphicsContextGLProxy::copyTextureFromVideoFrame(WebCore::VideoFrame &,unsigned int,unsigned int,int,unsigned int,unsigned int,unsigned int,BOOL,BOOL)::$_1,void,WebCore::SharedMemoryHandle &&>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1125170;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    if (*(v2 + 32) == 1)
    {
      (*(*(v2 + 24) + 16))();
    }

    else
    {
      --*(v2 + 32);
    }
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteGraphicsContextGLProxy::copyTextureFromVideoFrame(WebCore::VideoFrame &,unsigned int,unsigned int,int,unsigned int,unsigned int,unsigned int,BOOL,BOOL)::$_1,void,WebCore::SharedMemoryHandle &&>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1125170;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    if (*(v3 + 32) == 1)
    {
      (*(*(v3 + 24) + 16))();
    }

    else
    {
      --*(v3 + 32);
    }
  }

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<WebKit::RemoteGraphicsContextGLProxy::copyTextureFromVideoFrame(WebCore::VideoFrame &,unsigned int,unsigned int,int,unsigned int,unsigned int,unsigned int,BOOL,BOOL)::$_1,void,WebCore::SharedMemoryHandle &&>::call(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  v6 = a2;
  v3 = *(v2 + 11);
  if (v3)
  {
    atomic_fetch_add(v3, 1u);
    v4 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::SetSharedVideoFrameMemory,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v3, &v6, *(v2 + 9));
    if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3);
      IPC::StreamClientConnection::operator delete(v3);
    }
  }

  else
  {
    v4 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::SetSharedVideoFrameMemory,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, &v6, *(v2 + 9));
  }

  if (v4)
  {
    WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v2);
    v5 = *(*(v2 + 3) + 2288);

    v5(v2 + 24);
  }
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::SetSharedVideoFrameMemory,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v6 = *(a1 + 128);
  v7 = INFINITY;
  if (fabs(v6) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v7 = v6 + v8;
  }

  if (*(a1 + 64) == a3)
  {
LABEL_4:
    IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v31, v7);
    if (v33 == 1)
    {
      if (v32 <= 1)
      {
        __break(0xC471u);
      }

      else
      {
        *v31 = 3197;
        v10 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
        v12 = *(a1 + 72);
        v11 = *(a1 + 80);
        if (v10 + 16 >= v12)
        {
          v10 = 0;
        }

        v13 = v10 + 16;
        if (v12 <= v13)
        {
          v13 = 0;
        }

        *(a1 + 88) = v13;
        if (*(v11 + 8) > 0xFFuLL)
        {
          atomic_exchange((*(v11 + 16) + 128), v13);
          *(a1 + 124) = 0;
          v14 = *(a1 + 8);
          v15 = IPC::Encoder::operator new(0x238, v9);
          *v15 = 1294;
          *(v15 + 2) = 0;
          *(v15 + 3) = 0;
          *(v15 + 1) = a3;
          *(v15 + 68) = 0;
          *(v15 + 70) = 0;
          *(v15 + 69) = 0;
          IPC::Encoder::encodeHeader(v15);
          v34 = v15;
          IPC::ArgumentCoder<WebCore::SharedMemoryHandle,void>::encode(v15, *a2);
          v17 = IPC::Connection::sendMessageImpl(v14, &v34, 1, 0);
          v18 = v34;
          v34 = 0;
          if (v18)
          {
            IPC::Encoder::~Encoder(v18, v16);
            bmalloc::api::tzoneFree(v19, v20);
          }

          return v17;
        }
      }

      goto LABEL_28;
    }

    return 16;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v31, v7);
  if (v33 != 1)
  {
    return 16;
  }

  v21 = v32;
  if (v32 > 1)
  {
    v22 = v31;
    *v31 = 3198;
    v23 = v22 + 1;
    if (v21 - 2 < (-v23 & 7 | 8uLL))
    {
      return 18;
    }

    v24 = -v23 & 7;
    *(v23 + v24) = a3;
    if (v24 != 7)
    {
      v24 = 6;
    }

    v25 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v27 = *(a1 + 72);
    v26 = *(a1 + 80);
    v28 = v24 + 10;
    if (v25 + 16 >= v27)
    {
      v25 = 0;
    }

    v29 = v28 + v25;
    if (v27 <= v29)
    {
      v29 = 0;
    }

    *(a1 + 88) = v29;
    if (*(v26 + 8) <= 0xFFuLL)
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v26 + 16) + 128), v29) == 0x80000000);
    *(a1 + 64) = a3;
    goto LABEL_4;
  }

LABEL_29:
  result = 1067;
  __break(0xC471u);
  return result;
}

IPC::Encoder *IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::CopyTextureFromVideoFrame,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a2 + 128);
  v9 = INFINITY;
  if (fabs(v8) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v9 = v8 + v10;
  }

  if (*(a2 + 64) != a4)
  {
    result = IPC::StreamClientConnectionBuffer::tryAcquire(a2 + 72, &v40, v9);
    if (v42 != 1)
    {
      goto LABEL_36;
    }

    v30 = v41;
    if (v41 <= 1)
    {
      __break(0xC471u);
      goto LABEL_43;
    }

    v31 = v40;
    *v40 = 3198;
    v32 = v31 + 1;
    if (v30 - 2 < (-v32 & 7 | 8uLL))
    {
      v39 = 18;
      goto LABEL_37;
    }

    v33 = -v32 & 7;
    *(v32 + v33) = a4;
    if (v33 != 7)
    {
      v33 = 6;
    }

    v34 = (*(a2 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v36 = *(a2 + 72);
    v35 = *(a2 + 80);
    v37 = v33 + 10;
    if (v34 + 16 >= v36)
    {
      v34 = 0;
    }

    v38 = v37 + v34;
    if (v36 <= v38)
    {
      v38 = 0;
    }

    *(a2 + 88) = v38;
    if (*(v35 + 8) <= 0xFFuLL)
    {
      goto LABEL_43;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a2, atomic_exchange((*(v35 + 16) + 128), v38) == 0x80000000);
    *(a2 + 64) = a4;
  }

  result = IPC::StreamClientConnectionBuffer::tryAcquire(a2 + 72, &v40, v9);
  if ((v42 & 1) == 0)
  {
LABEL_36:
    v39 = 16;
LABEL_37:
    *a1 = v39;
    a1[16] = 1;
    return result;
  }

  if (v41 <= 1)
  {
    __break(0xC471u);
    goto LABEL_44;
  }

  *v40 = 3197;
  v12 = (*(a2 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v14 = *(a2 + 72);
  v13 = *(a2 + 80);
  if (v12 + 16 >= v14)
  {
    v12 = 0;
  }

  v15 = v12 + 16;
  if (v14 <= v15)
  {
    v15 = 0;
  }

  *(a2 + 88) = v15;
  if (*(v13 + 8) <= 0xFFuLL)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    JUMPOUT(0x19E1E7F24);
  }

  atomic_exchange((*(v13 + 16) + 128), v15);
  *(a2 + 124) = 0;
  v16 = *(a2 + 8);
  IPC::Connection::createSyncMessageEncoder(0xFBF, a4, v45);
  v17 = v45[0];
  IPC::ArgumentCoder<WebKit::SharedVideoFrame,void>::encode(v45[0], *a3);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v17, **(a3 + 8));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v17, *(a3 + 16));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v17, *(a3 + 20));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v17, *(a3 + 24));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v17, *(a3 + 28));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v17, *(a3 + 32));
  IPC::Encoder::operator<<<BOOL &>(v17, (a3 + 36));
  IPC::Encoder::operator<<<BOOL &>(v17, (a3 + 37));
  v18 = IPC::Connection::sendSyncMessage(v16, v45[1], v45, 0, &v43, v9);
  if (v44)
  {
    if (v44 != 1)
    {
      mpark::throw_bad_variant_access(v18);
    }

    *a1 = v43;
    a1[16] = 1;
    goto LABEL_19;
  }

  v20 = v43;
  v43 = 0;
  if (*(v20 + 25) == 3194)
  {
    v21 = 11;
LABEL_16:
    *a1 = v21;
    a1[16] = 1;
    IPC::Decoder::~Decoder(v20);
    bmalloc::api::tzoneFree(v22, v23);
    goto LABEL_19;
  }

  v24 = IPC::Decoder::decode<std::tuple<BOOL>>(v20);
  if (v24 < 0x100u)
  {
    v21 = 14;
    goto LABEL_16;
  }

  *a1 = v20;
  a1[8] = v24;
  a1[16] = 0;
LABEL_19:
  if (!v44)
  {
    v25 = v43;
    v43 = 0;
    if (v25)
    {
      IPC::Decoder::~Decoder(v25);
      bmalloc::api::tzoneFree(v28, v29);
    }
  }

  result = v45[0];
  v45[0] = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v19);
    return bmalloc::api::tzoneFree(v26, v27);
  }

  return result;
}

atomic_uchar **WTF::Detail::CallableWrapper<WebKit::RemoteGraphicsContextGLProxy::videoFrameToImage(WebCore::VideoFrame &)::$_0,void>::call(uint64_t a1)
{
  v2 = *(*(a1 + 16) + 160);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
  }

  WebKit::RemoteVideoFrameObjectHeapProxyProcessor::getNativeImage(*(v2 + 8), *(a1 + 24), &v12);
  v4 = *(a1 + 8);
  v5 = v12;
  v12 = 0;
  v6 = *v4;
  *v4 = v5;
  if (v6)
  {
    do
    {
      v7 = v6[1];
      if ((v7 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::RenderingResource,(WTF::DestructionThread)0>(v6[1], v3);
        goto LABEL_8;
      }

      v8 = v6[1];
      atomic_compare_exchange_strong_explicit(v6 + 1, &v8, (v7 - 2), memory_order_relaxed, memory_order_relaxed);
    }

    while (v8 != v7);
    if (v7 == 3)
    {
      (*(*v6 + 1))(v6);
    }
  }

LABEL_8:
  result = v12;
  v12 = 0;
  if (result)
  {
    do
    {
      v10 = result[1];
      if ((v10 & 1) == 0)
      {
        result = WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::RenderingResource,(WTF::DestructionThread)0>(result[1], v3);
        goto LABEL_13;
      }

      v11 = result[1];
      atomic_compare_exchange_strong_explicit(result + 1, &v11, (v10 - 2), memory_order_relaxed, memory_order_relaxed);
    }

    while (v11 != v10);
    if (v10 == 3)
    {
      result = (*(*result + 1))(result);
    }
  }

LABEL_13:
  if (v2)
  {
    return WTF::ThreadSafeRefCounted<WebKit::RemoteVideoFrameObjectHeapProxy,(WTF::DestructionThread)2>::deref(v2);
  }

  return result;
}

mpark *IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetErrors,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 128);
  v7 = INFINITY;
  if (fabs(v6) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v7 = v6 + v8;
  }

  if (*(a2 + 64) != a3)
  {
    goto LABEL_48;
  }

LABEL_4:
  result = IPC::StreamClientConnectionBuffer::tryAcquire(a2 + 72, &v70, v7);
  if ((v72 & 1) == 0)
  {
LABEL_59:
    v51 = 16;
LABEL_60:
    *a1 = v51;
    goto LABEL_61;
  }

  if (WTF::ObjectIdentifierGeneric<IPC::SyncRequestIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    goto LABEL_91;
  }

  v10 = v70;
  v11 = v71;
  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  result = IPC::Connection::pushPendingSyncRequestID(*(a2 + 8), IdentifierInternal);
  if (!result)
  {
    v26 = 12;
LABEL_44:
    *a1 = v26;
LABEL_61:
    v39 = 1;
    goto LABEL_62;
  }

  if (v11 <= 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E1E8638);
  }

  *v10 = 4044;
  v14 = v10 + 1;
  if (v11 - 2 >= (-v14 & 7 | 8uLL))
  {
    v15 = -v14 & 7;
    *(v14 + v15) = IdentifierInternal;
    if (v15 != 7)
    {
      v15 = 6;
    }

    v16 = v15 + 10;
    v17 = (*(a2 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v18 = *(a2 + 72);
    if (v17 + 16 >= v18)
    {
      v17 = 0;
    }

    v19 = v16 + v17;
    if (v18 <= v19)
    {
      v19 = 0;
    }

    *(a2 + 88) = v19;
    v20 = *(a2 + 80);
    if (*(v20 + 8) <= 0xFFuLL)
    {
      goto LABEL_47;
    }

    if (atomic_exchange((*(v20 + 16) + 128), v19) == 0x80000000 || *(a2 + 124))
    {
      if (*(a2 + 112) == 1)
      {
        MEMORY[0x19EB16320](*(a2 + 100));
      }

      *(a2 + 124) = 0;
    }

    a3 = 0x80000000;
    while (1)
    {
      v21 = *(a2 + 80);
      if (*(v21 + 8) <= 0xFFuLL)
      {
        goto LABEL_47;
      }

      v22 = atomic_exchange(*(v21 + 16), 0x80000000uLL);
      v23 = *(a2 + 80);
      if (*(v23 + 8) <= 0xFFuLL)
      {
        goto LABEL_47;
      }

      if (!(v22 | atomic_load_explicit((*(v23 + 16) + 128), memory_order_acquire) & 0xFFFFFFFF7FFFFFFFLL))
      {
        break;
      }

      if (*(a2 + 112) == 1)
      {
        v24 = IPC::Semaphore::waitFor((a2 + 104), v7);
        if (v24)
        {
          WTF::ApproximateTime::now(v24);
          if (v25 < v7)
          {
            continue;
          }
        }
      }

      result = IPC::Connection::popPendingSyncRequestID(*(a2 + 8));
      v26 = 17;
      goto LABEL_44;
    }

    v27 = *(a2 + 80);
    if (*(v27 + 8) <= 0xFFuLL)
    {
      goto LABEL_47;
    }

    atomic_store(0, *(v27 + 16));
    *(a2 + 88) = 0;
    v28 = *(a2 + 80);
    v29 = *(v28 + 8);
    if (v29 <= 0xFF)
    {
      goto LABEL_47;
    }

    v30 = *(a2 + 72);
    v31 = *(v28 + 16);
    v32 = v29 - 256;
    if (v30)
    {
      v40 = v30 - 1;
      v41 = v32 >= v40;
      v32 = v40;
      if (!v41)
      {
        goto LABEL_47;
      }
    }

    v33 = IPC::Decoder::operator new(0x58, v13);
    if (*(IPC::Decoder::Decoder(v33, v31 + 256, v32, *(a2 + 64)) + 25) == 3197)
    {
      IPC::Decoder::~Decoder(v33);
      bmalloc::api::tzoneFree(v34, v35);
      IPC::Connection::waitForSyncReply(*(a2 + 8), IdentifierInternal, 0xFCCu, &v75, v7);
      v36 = v76;
      if (v76)
      {
        if (v76 == 255)
        {
          v69 = IPC::Connection::popPendingSyncRequestID(*(a2 + 8));
          mpark::throw_bad_variant_access(v69);
        }

        v26 = v75;
        result = IPC::Connection::popPendingSyncRequestID(*(a2 + 8));
        if (v36 != 1)
        {
LABEL_37:
          mpark::throw_bad_variant_access(result);
        }

        goto LABEL_44;
      }

      v33 = v75;
    }

    IPC::Connection::popPendingSyncRequestID(*(a2 + 8));
    if (*(v33 + 25) == 3194)
    {
      v26 = 11;
    }

    else
    {
      result = IPC::Decoder::decode<std::tuple<WTF::OptionSet<GCGLErrorCode>>>(v33);
      if (result > 0xFFu)
      {
        v39 = 0;
        *a1 = v33;
        a1[8] = result;
LABEL_62:
        a1[16] = v39;
        return result;
      }

      v26 = 14;
    }

    IPC::Decoder::~Decoder(v33);
    result = bmalloc::api::tzoneFree(v37, v38);
    goto LABEL_44;
  }

  IPC::Connection::popPendingSyncRequestID(*(a2 + 8));
  if ((v72 & 1) == 0)
  {
    while (1)
    {
LABEL_47:
      __break(1u);
LABEL_48:
      result = IPC::StreamClientConnectionBuffer::tryAcquire(a2 + 72, &v70, v7);
      if (v72 != 1)
      {
        goto LABEL_59;
      }

      v42 = v71;
      if (v71 <= 1)
      {
        __break(0xC471u);
        JUMPOUT(0x19E1E8660);
      }

      v43 = v70;
      *v70 = 3198;
      v44 = v43 + 1;
      if (v42 - 2 < (-v44 & 7 | 8uLL))
      {
        break;
      }

      v45 = -v44 & 7;
      *(v44 + v45) = a3;
      if (v45 != 7)
      {
        v45 = 6;
      }

      v46 = (*(a2 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v48 = *(a2 + 72);
      v47 = *(a2 + 80);
      v49 = v45 + 10;
      if (v46 + 16 >= v48)
      {
        v46 = 0;
      }

      v50 = v49 + v46;
      if (v48 <= v50)
      {
        v50 = 0;
      }

      *(a2 + 88) = v50;
      if (*(v47 + 8) > 0xFFuLL)
      {
        IPC::StreamClientConnection::wakeUpServerBatched(a2, atomic_exchange((*(v47 + 16) + 128), v50) == 0x80000000);
        *(a2 + 64) = a3;
        goto LABEL_4;
      }
    }

    v51 = 18;
    goto LABEL_60;
  }

  if (v71 <= 1)
  {
LABEL_91:
    __break(0xC471u);
    JUMPOUT(0x19E1E8618);
  }

  *v70 = 3197;
  v52 = (*(a2 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v53 = *(a2 + 72);
  if (v52 + 16 >= v53)
  {
    v52 = 0;
  }

  v54 = v52 + 16;
  if (v53 <= v54)
  {
    v55 = 0;
  }

  else
  {
    v55 = v54;
  }

  *(a2 + 88) = v55;
  v56 = *(a2 + 80);
  if (*(v56 + 8) <= 0xFFuLL)
  {
    goto LABEL_47;
  }

  atomic_exchange((*(v56 + 16) + 128), v55);
  *(a2 + 124) = 0;
  v57 = *(a2 + 8);
  IPC::Connection::createSyncMessageEncoder(0xFCC, a3, &v75);
  result = IPC::Connection::sendSyncMessage(v57, v76, &v75, 0, &v73, v7);
  if (v74)
  {
    if (v74 != 1)
    {
      goto LABEL_37;
    }

    *a1 = v73;
    a1[16] = 1;
    goto LABEL_81;
  }

  v59 = v73;
  v73 = 0;
  if (*(v59 + 25) == 3194)
  {
    v60 = 11;
LABEL_79:
    *a1 = v60;
    a1[16] = 1;
    IPC::Decoder::~Decoder(v59);
    bmalloc::api::tzoneFree(v62, v63);
    goto LABEL_81;
  }

  v61 = IPC::Decoder::decode<std::tuple<WTF::OptionSet<GCGLErrorCode>>>(v59);
  if (v61 < 0x100u)
  {
    v60 = 14;
    goto LABEL_79;
  }

  *a1 = v59;
  a1[8] = v61;
  a1[16] = 0;
LABEL_81:
  if (!v74)
  {
    v64 = v73;
    v73 = 0;
    if (v64)
    {
      IPC::Decoder::~Decoder(v64);
      bmalloc::api::tzoneFree(v67, v68);
    }
  }

  result = v75;
  v75 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v58);
    return bmalloc::api::tzoneFree(v65, v66);
  }

  return result;
}

uint64_t IPC::Decoder::decode<std::tuple<WTF::OptionSet<GCGLErrorCode>>>(void *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = *a1;
  if (v1 <= &v2[-*a1])
  {
    *a1 = 0;
    a1[1] = 0;
    v12 = a1;
    v7 = a1[3];
    if (v7)
    {
      if (v1)
      {
        (*(*v7 + 16))(v7);
        v3 = *v12;
        v1 = v12[1];
LABEL_9:
        *v12 = 0;
        v12[1] = 0;
        v8 = v12[3];
        if (v8)
        {
          if (v1)
          {
            (*(*v8 + 16))(v8, v3);
            a1 = v12;
            v3 = *v12;
            v1 = v12[1];
            goto LABEL_12;
          }
        }

        else
        {
          v1 = 0;
        }

        v3 = 0;
        a1 = v12;
        goto LABEL_12;
      }
    }

    else
    {
      v1 = 0;
    }

    v3 = 0;
    goto LABEL_9;
  }

  a1[2] = v2 + 1;
  if (!v2)
  {
    v12 = a1;
    goto LABEL_9;
  }

  v4 = *v2;
  if ((v4 & 0x82) == 0)
  {
    LODWORD(v5) = 256;
    return v4 | v5;
  }

LABEL_12:
  *a1 = 0;
  a1[1] = 0;
  v5 = a1[3];
  if (!v5)
  {
LABEL_13:
    v4 = 0;
    return v4 | v5;
  }

  v13 = a1;
  if (!v1)
  {
LABEL_18:
    LODWORD(v5) = 0;
    goto LABEL_13;
  }

  (*(*v5 + 16))(v5, v3);
  LODWORD(v5) = 0;
  v9 = *v13;
  v10 = v13[1];
  v11 = v13[3];
  *v13 = 0;
  v13[1] = 0;
  v4 = 0;
  if (v11 && v10)
  {
    (*(*v11 + 16))(v11, v9);
    goto LABEL_18;
  }

  return v4 | v5;
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::SimulateEventForTesting,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, char *a2, uint64_t a3)
{
  v6 = *(a1 + 128);
  v7 = INFINITY;
  if (fabs(v6) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v7 = v6 + v8;
  }

  if (*(a1 + 64) != a3)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v37, v7);
    if (v39 != 1)
    {
      return 16;
    }

    v17 = v38;
    if (v38 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E1E8B28);
    }

    v18 = v37;
    *v37 = 3198;
    v19 = v18 + 1;
    if (v17 - 2 < (-v19 & 7 | 8uLL))
    {
      return 18;
    }

    v20 = -v19 & 7;
    *(v19 + v20) = a3;
    if (v20 != 7)
    {
      v20 = 6;
    }

    v21 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v23 = *(a1 + 72);
    v22 = *(a1 + 80);
    v24 = v20 + 10;
    if (v21 + 16 >= v23)
    {
      v21 = 0;
    }

    v25 = v24 + v21;
    if (v23 <= v25)
    {
      v25 = 0;
    }

    *(a1 + 88) = v25;
    if (*(v22 + 8) <= 0xFFuLL)
    {
      goto LABEL_44;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v22 + 16) + 128), v25) == 0x80000000);
    *(a1 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v37, v7);
  if (v39 != 1)
  {
    return 16;
  }

  v10 = v38;
  if (v38 <= 1)
  {
    __break(0xC471u);
    goto LABEL_45;
  }

  v11 = v37;
  *v37 = 1297;
  if (v10 != 2)
  {
    *(v11 + 2) = *a2;
    v12 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v14 = *(a1 + 72);
    v13 = *(a1 + 80);
    if (v12 + 16 >= v14)
    {
      v12 = 0;
    }

    v15 = v12 + 16;
    if (v14 <= v15)
    {
      v15 = 0;
    }

    *(a1 + 88) = v15;
    if (*(v13 + 8) > 0xFFuLL)
    {
      if (atomic_exchange((*(v13 + 16) + 128), v15) != 0x80000000 && !*(a1 + 124))
      {
        return 0;
      }

      if (*(a1 + 112) == 1)
      {
        MEMORY[0x19EB16320](*(a1 + 100));
      }

      v16 = 0;
      *(a1 + 124) = 0;
      return v16;
    }

    goto LABEL_44;
  }

  if ((v39 & 1) == 0)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    JUMPOUT(0x19E1E8B08);
  }

  if (v38 <= 1)
  {
    __break(0xC471u);
    goto LABEL_44;
  }

  *v37 = 3197;
  v27 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v29 = *(a1 + 72);
  v28 = *(a1 + 80);
  if (v27 + 16 >= v29)
  {
    v27 = 0;
  }

  v30 = v27 + 16;
  if (v29 <= v30)
  {
    v30 = 0;
  }

  *(a1 + 88) = v30;
  if (*(v28 + 8) <= 0xFFuLL)
  {
    goto LABEL_44;
  }

  atomic_exchange((*(v28 + 16) + 128), v30);
  *(a1 + 124) = 0;
  v31 = *(a1 + 8);
  v32 = IPC::Encoder::operator new(0x238, v9);
  *v32 = 1297;
  *(v32 + 2) = 0;
  *(v32 + 3) = 0;
  *(v32 + 1) = a3;
  *(v32 + 68) = 0;
  *(v32 + 70) = 0;
  *(v32 + 69) = 0;
  IPC::Encoder::encodeHeader(v32);
  v40 = v32;
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v32, *a2);
  v16 = IPC::Connection::sendMessageImpl(v31, &v40, 1, 0);
  v34 = v40;
  v40 = 0;
  if (v34)
  {
    IPC::Encoder::~Encoder(v34, v33);
    bmalloc::api::tzoneFree(v35, v36);
  }

  return v16;
}

IPC::Encoder *IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetBufferSubDataSharedMemory,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a2 + 128);
  v9 = INFINITY;
  if (fabs(v8) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v9 = v8 + v10;
  }

  if (*(a2 + 64) != a4)
  {
    result = IPC::StreamClientConnectionBuffer::tryAcquire(a2 + 72, &v40, v9);
    if (v42 != 1)
    {
      goto LABEL_36;
    }

    v30 = v41;
    if (v41 <= 1)
    {
      __break(0xC471u);
      goto LABEL_43;
    }

    v31 = v40;
    *v40 = 3198;
    v32 = v31 + 1;
    if (v30 - 2 < (-v32 & 7 | 8uLL))
    {
      v39 = 18;
      goto LABEL_37;
    }

    v33 = -v32 & 7;
    *(v32 + v33) = a4;
    if (v33 != 7)
    {
      v33 = 6;
    }

    v34 = (*(a2 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v36 = *(a2 + 72);
    v35 = *(a2 + 80);
    v37 = v33 + 10;
    if (v34 + 16 >= v36)
    {
      v34 = 0;
    }

    v38 = v37 + v34;
    if (v36 <= v38)
    {
      v38 = 0;
    }

    *(a2 + 88) = v38;
    if (*(v35 + 8) <= 0xFFuLL)
    {
      goto LABEL_43;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a2, atomic_exchange((*(v35 + 16) + 128), v38) == 0x80000000);
    *(a2 + 64) = a4;
  }

  result = IPC::StreamClientConnectionBuffer::tryAcquire(a2 + 72, &v40, v9);
  if ((v42 & 1) == 0)
  {
LABEL_36:
    v39 = 16;
LABEL_37:
    *a1 = v39;
    a1[16] = 1;
    return result;
  }

  if (v41 <= 1)
  {
    __break(0xC471u);
    goto LABEL_44;
  }

  *v40 = 3197;
  v12 = (*(a2 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v14 = *(a2 + 72);
  v13 = *(a2 + 80);
  if (v12 + 16 >= v14)
  {
    v12 = 0;
  }

  v15 = v12 + 16;
  if (v14 <= v15)
  {
    v15 = 0;
  }

  *(a2 + 88) = v15;
  if (*(v13 + 8) <= 0xFFuLL)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    JUMPOUT(0x19E1E8E50);
  }

  atomic_exchange((*(v13 + 16) + 128), v15);
  *(a2 + 124) = 0;
  v16 = *(a2 + 8);
  IPC::Connection::createSyncMessageEncoder(0xFCB, a4, v45);
  v17 = v45[0];
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v45[0], *a3);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v17, *(a3 + 8));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v17, *(a3 + 16));
  IPC::ArgumentCoder<WebCore::SharedMemoryHandle,void>::encode(v17, *(a3 + 24));
  v18 = IPC::Connection::sendSyncMessage(v16, v45[1], v45, 0, &v43, v9);
  if (v44)
  {
    if (v44 != 1)
    {
      mpark::throw_bad_variant_access(v18);
    }

    *a1 = v43;
    a1[16] = 1;
    goto LABEL_19;
  }

  v20 = v43;
  v43 = 0;
  if (*(v20 + 25) == 3194)
  {
    v21 = 11;
LABEL_16:
    *a1 = v21;
    a1[16] = 1;
    IPC::Decoder::~Decoder(v20);
    bmalloc::api::tzoneFree(v22, v23);
    goto LABEL_19;
  }

  v24 = IPC::Decoder::decode<std::tuple<BOOL>>(v20);
  if (v24 < 0x100u)
  {
    v21 = 14;
    goto LABEL_16;
  }

  *a1 = v20;
  a1[8] = v24;
  a1[16] = 0;
LABEL_19:
  if (!v44)
  {
    v25 = v43;
    v43 = 0;
    if (v25)
    {
      IPC::Decoder::~Decoder(v25);
      bmalloc::api::tzoneFree(v28, v29);
    }
  }

  result = v45[0];
  v45[0] = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v19);
    return bmalloc::api::tzoneFree(v26, v27);
  }

  return result;
}

mpark *IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetBufferSubDataInline,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v92 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 128);
  v9 = INFINITY;
  if (fabs(v8) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v9 = v8 + v10;
  }

  if (*(a2 + 64) != a4)
  {
    goto LABEL_51;
  }

LABEL_4:
  result = IPC::StreamClientConnectionBuffer::tryAcquire(a2 + 72, &v84, v9);
  if ((v86 & 1) == 0)
  {
LABEL_62:
    v64 = 16;
LABEL_63:
    *a1 = v64;
    goto LABEL_64;
  }

  if (WTF::ObjectIdentifierGeneric<IPC::SyncRequestIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    goto LABEL_94;
  }

  v13 = v84;
  v12 = v85;
  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  result = IPC::Connection::pushPendingSyncRequestID(*(a2 + 8), IdentifierInternal);
  if (!result)
  {
    v38 = 12;
LABEL_48:
    *a1 = v38;
LABEL_64:
    v48 = 1;
    goto LABEL_65;
  }

  if (v12 <= 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E1E952CLL);
  }

  *v13 = 4042;
  v16 = v13 + 1;
  v17 = -v16 & 7 | 8;
  v18 = v12 - 2 - v17;
  if (v12 - 2 >= v17)
  {
    *(v16 + (-v16 & 7)) = IdentifierInternal;
    v19 = v16 + v17;
    v20 = -v19 & 3 | 4;
    v21 = v18 - v20;
    if (v18 >= v20)
    {
      *&v19[-v19 & 3] = *a3;
      v22 = &v19[v20];
      v23 = -(v19 + v20);
      v24 = v23 & 7 | 8;
      v25 = v21 - v24;
      if (v21 >= v24)
      {
        *&v22[v23 & 7] = *(a3 + 8);
        v26 = &v22[v24];
        v27 = -v26 & 7 | 8;
        if (v25 >= v27)
        {
          *&v26[-v26 & 7] = *(a3 + 16);
          v28 = v12 - v25 + v27;
          if (v28 <= 0x10)
          {
            v28 = 16;
          }

          v29 = (*(a2 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
          v30 = *(a2 + 72);
          if (v29 + 16 >= v30)
          {
            v29 = 0;
          }

          v31 = v29 + v28;
          if (v30 <= v31)
          {
            v31 = 0;
          }

          *(a2 + 88) = v31;
          v32 = *(a2 + 80);
          if (*(v32 + 8) <= 0xFFuLL)
          {
            goto LABEL_50;
          }

          if (atomic_exchange((*(v32 + 16) + 128), v31) == 0x80000000 || *(a2 + 124))
          {
            if (*(a2 + 112) == 1)
            {
              MEMORY[0x19EB16320](*(a2 + 100));
            }

            *(a2 + 124) = 0;
          }

          a3 = 0x80000000;
          while (1)
          {
            v33 = *(a2 + 80);
            if (*(v33 + 8) <= 0xFFuLL)
            {
              goto LABEL_50;
            }

            v34 = atomic_exchange(*(v33 + 16), 0x80000000uLL);
            v35 = *(a2 + 80);
            if (*(v35 + 8) <= 0xFFuLL)
            {
              goto LABEL_50;
            }

            if (!(v34 | atomic_load_explicit((*(v35 + 16) + 128), memory_order_acquire) & 0xFFFFFFFF7FFFFFFFLL))
            {
              break;
            }

            if (*(a2 + 112) == 1)
            {
              v36 = IPC::Semaphore::waitFor((a2 + 104), v9);
              if (v36)
              {
                WTF::ApproximateTime::now(v36);
                if (v37 < v9)
                {
                  continue;
                }
              }
            }

            result = IPC::Connection::popPendingSyncRequestID(*(a2 + 8));
            v38 = 17;
            goto LABEL_48;
          }

          v39 = *(a2 + 80);
          if (*(v39 + 8) <= 0xFFuLL)
          {
            goto LABEL_50;
          }

          atomic_store(0, *(v39 + 16));
          *(a2 + 88) = 0;
          v40 = *(a2 + 80);
          v41 = *(v40 + 8);
          if (v41 <= 0xFF)
          {
            goto LABEL_50;
          }

          v42 = *(a2 + 72);
          v43 = *(v40 + 16);
          a4 = v41 - 256;
          if (v42)
          {
            v53 = v42 - 1;
            v54 = a4 >= v53;
            a4 = v53;
            if (!v54)
            {
              goto LABEL_50;
            }
          }

          v44 = IPC::Decoder::operator new(0x58, v15);
          if (*(IPC::Decoder::Decoder(v44, v43 + 256, a4, *(a2 + 64)) + 25) == 3197)
          {
            IPC::Decoder::~Decoder(v44);
            bmalloc::api::tzoneFree(v45, v46);
            IPC::Connection::waitForSyncReply(*(a2 + 8), IdentifierInternal, 0xFCAu, &v89, v9);
            v47 = BYTE8(v89);
            if (BYTE8(v89))
            {
              if (BYTE8(v89) == 255)
              {
                v83 = IPC::Connection::popPendingSyncRequestID(*(a2 + 8));
                mpark::throw_bad_variant_access(v83);
              }

              v38 = v89;
              result = IPC::Connection::popPendingSyncRequestID(*(a2 + 8));
              if (v47 != 1)
              {
LABEL_40:
                mpark::throw_bad_variant_access(result);
              }

              goto LABEL_48;
            }

            v44 = v89;
          }

          IPC::Connection::popPendingSyncRequestID(*(a2 + 8));
          if (*(v44 + 25) == 3194)
          {
            v38 = 11;
          }

          else
          {
            result = IPC::Decoder::decode<std::tuple<std::span<unsigned char const,18446744073709551615ul>>>(v44, &v89);
            if (v90)
            {
              v48 = 0;
              v49 = v89;
              *&v91 = *(&v89 + 1);
              v50 = *(&v89 + 1);
              *(&v91 + 7) = *(&v89 + 1);
              *a1 = v44;
              *(a1 + 8) = v49;
              *(a1 + 9) = v91;
              *(a1 + 16) = v50;
LABEL_65:
              *(a1 + 24) = v48;
              return result;
            }

            v38 = 14;
          }

          IPC::Decoder::~Decoder(v44);
          result = bmalloc::api::tzoneFree(v51, v52);
          goto LABEL_48;
        }
      }
    }
  }

  IPC::Connection::popPendingSyncRequestID(*(a2 + 8));
  if ((v86 & 1) == 0)
  {
    while (1)
    {
LABEL_50:
      __break(1u);
LABEL_51:
      result = IPC::StreamClientConnectionBuffer::tryAcquire(a2 + 72, &v89, v9);
      if (v90 != 1)
      {
        goto LABEL_62;
      }

      v55 = *(&v89 + 1);
      if (*(&v89 + 1) <= 1uLL)
      {
        __break(0xC471u);
        JUMPOUT(0x19E1E9554);
      }

      v56 = v89;
      *v89 = 3198;
      v57 = v56 + 2;
      if (v55 - 2 < (-v57 & 7 | 8uLL))
      {
        break;
      }

      v58 = -v57 & 7;
      *(v57 + v58) = a4;
      if (v58 != 7)
      {
        v58 = 6;
      }

      v59 = (*(a2 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v61 = *(a2 + 72);
      v60 = *(a2 + 80);
      v62 = v58 + 10;
      if (v59 + 16 >= v61)
      {
        v59 = 0;
      }

      v63 = v62 + v59;
      if (v61 <= v63)
      {
        v63 = 0;
      }

      *(a2 + 88) = v63;
      if (*(v60 + 8) > 0xFFuLL)
      {
        IPC::StreamClientConnection::wakeUpServerBatched(a2, atomic_exchange((*(v60 + 16) + 128), v63) == 0x80000000);
        *(a2 + 64) = a4;
        goto LABEL_4;
      }
    }

    v64 = 18;
    goto LABEL_63;
  }

  if (v85 <= 1)
  {
LABEL_94:
    __break(0xC471u);
    JUMPOUT(0x19E1E950CLL);
  }

  *v84 = 3197;
  v65 = (*(a2 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v66 = *(a2 + 72);
  if (v65 + 16 >= v66)
  {
    v65 = 0;
  }

  v67 = v65 + 16;
  if (v66 <= v67)
  {
    v68 = 0;
  }

  else
  {
    v68 = v67;
  }

  *(a2 + 88) = v68;
  v69 = *(a2 + 80);
  if (*(v69 + 8) <= 0xFFuLL)
  {
    goto LABEL_50;
  }

  atomic_exchange((*(v69 + 16) + 128), v68);
  *(a2 + 124) = 0;
  v70 = *(a2 + 8);
  IPC::Connection::createSyncMessageEncoder(0xFCA, a4, &v91);
  v71 = v91;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v91, *a3);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v71, *(a3 + 8));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v71, *(a3 + 16));
  result = IPC::Connection::sendSyncMessage(v70, *(&v91 + 1), &v91, 0, &v87, v9);
  if (v88)
  {
    if (v88 != 1)
    {
      goto LABEL_40;
    }

    *a1 = v87;
    *(a1 + 24) = 1;
    goto LABEL_84;
  }

  v73 = v87;
  v87 = 0;
  if (*(v73 + 25) == 3194)
  {
    v74 = 11;
  }

  else
  {
    IPC::Decoder::decode<std::tuple<std::span<unsigned char const,18446744073709551615ul>>>(v73, &v89);
    if (v90)
    {
      v75 = v89;
      *(a1 + 9) = *(&v89 + 1);
      *(a1 + 16) = *(&v89 + 1);
      *a1 = v73;
      *(a1 + 8) = v75;
      *(a1 + 24) = 0;
      goto LABEL_84;
    }

    v74 = 14;
  }

  *a1 = v74;
  *(a1 + 24) = 1;
  IPC::Decoder::~Decoder(v73);
  bmalloc::api::tzoneFree(v76, v77);
LABEL_84:
  if (!v88)
  {
    v78 = v87;
    v87 = 0;
    if (v78)
    {
      IPC::Decoder::~Decoder(v78);
      bmalloc::api::tzoneFree(v81, v82);
    }
  }

  result = v91;
  *&v91 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v72);
    return bmalloc::api::tzoneFree(v79, v80);
  }

  return result;
}

IPC::Encoder *IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::ReadPixelsSharedMemory,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a2 + 128);
  v9 = INFINITY;
  if (fabs(v8) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v9 = v8 + v10;
  }

  if (*(a2 + 64) != a4)
  {
    result = IPC::StreamClientConnectionBuffer::tryAcquire(a2 + 72, &v43, v9);
    if (v45 != 1)
    {
      goto LABEL_35;
    }

    v30 = v44;
    if (v44 <= 1)
    {
      __break(0xC471u);
      goto LABEL_46;
    }

    v31 = v43;
    *v43 = 3198;
    v32 = v31 + 1;
    if (v30 - 2 < (-v32 & 7 | 8uLL))
    {
      v39 = 18;
      goto LABEL_36;
    }

    v33 = -v32 & 7;
    *(v32 + v33) = a4;
    if (v33 != 7)
    {
      v33 = 6;
    }

    v34 = (*(a2 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v36 = *(a2 + 72);
    v35 = *(a2 + 80);
    v37 = v33 + 10;
    if (v34 + 16 >= v36)
    {
      v34 = 0;
    }

    v38 = v37 + v34;
    if (v36 <= v38)
    {
      v38 = 0;
    }

    *(a2 + 88) = v38;
    if (*(v35 + 8) <= 0xFFuLL)
    {
      goto LABEL_46;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a2, atomic_exchange((*(v35 + 16) + 128), v38) == 0x80000000);
    *(a2 + 64) = a4;
  }

  result = IPC::StreamClientConnectionBuffer::tryAcquire(a2 + 72, &v43, v9);
  if ((v45 & 1) == 0)
  {
LABEL_35:
    v39 = 16;
LABEL_36:
    *a1 = v39;
    *(a1 + 24) = 1;
    return result;
  }

  if (v44 <= 1)
  {
    __break(0xC471u);
    goto LABEL_47;
  }

  *v43 = 3197;
  v12 = (*(a2 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v14 = *(a2 + 72);
  v13 = *(a2 + 80);
  if (v12 + 16 >= v14)
  {
    v12 = 0;
  }

  v15 = v12 + 16;
  if (v14 <= v15)
  {
    v15 = 0;
  }

  *(a2 + 88) = v15;
  if (*(v13 + 8) <= 0xFFuLL)
  {
LABEL_46:
    __break(1u);
LABEL_47:
    JUMPOUT(0x19E1E98BCLL);
  }

  atomic_exchange((*(v13 + 16) + 128), v15);
  *(a2 + 124) = 0;
  v16 = *(a2 + 8);
  IPC::Connection::createSyncMessageEncoder(0x1000, a4, v48);
  v17 = v48[0];
  IPC::ArgumentCoder<WebCore::IntRect,void>::encode(v48[0], *a3);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v17, *(a3 + 8));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v17, *(a3 + 12));
  IPC::Encoder::operator<<<BOOL &>(v17, (a3 + 16));
  IPC::ArgumentCoder<WebCore::SharedMemoryHandle,void>::encode(v17, *(a3 + 24));
  v18 = IPC::Connection::sendSyncMessage(v16, v48[1], v48, 0, &v46, v9);
  if (v47)
  {
    if (v47 != 1)
    {
      mpark::throw_bad_variant_access(v18);
    }

    *a1 = v46;
    *(a1 + 24) = 1;
    goto LABEL_19;
  }

  v20 = v46;
  v46 = 0;
  if (*(v20 + 25) == 3194)
  {
    v21 = 11;
LABEL_16:
    *a1 = v21;
    *(a1 + 24) = 1;
    IPC::Decoder::~Decoder(v20);
    bmalloc::api::tzoneFree(v22, v23);
    goto LABEL_19;
  }

  v24 = IPC::Decoder::decode<std::optional<WebCore::IntSize>>(v20);
  if ((v19 & 0x100000000) == 0)
  {
    v40 = *v20;
    v41 = *(v20 + 1);
    *v20 = 0;
    *(v20 + 1) = 0;
    v42 = *(v20 + 3);
    if (v42 && v41)
    {
      (*(*v42 + 16))(v42, v40);
    }

    v21 = 14;
    goto LABEL_16;
  }

  *a1 = v20;
  *(a1 + 8) = v24;
  *(a1 + 16) = v19;
  *(a1 + 24) = 0;
LABEL_19:
  if (!v47)
  {
    v25 = v46;
    v46 = 0;
    if (v25)
    {
      IPC::Decoder::~Decoder(v25);
      bmalloc::api::tzoneFree(v28, v29);
    }
  }

  result = v48[0];
  v48[0] = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v19);
    return bmalloc::api::tzoneFree(v26, v27);
  }

  return result;
}

mpark *IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::ReadPixelsInline,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = *(a2 + 128);
  v9 = INFINITY;
  if (fabs(v8) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v9 = v8 + v10;
  }

  if (*(a2 + 64) != a4)
  {
    goto LABEL_52;
  }

LABEL_4:
  result = IPC::StreamClientConnectionBuffer::tryAcquire(a2 + 72, &v84, v9);
  if ((v86 & 1) == 0)
  {
LABEL_63:
    v62 = 16;
LABEL_64:
    *a1 = v62;
    goto LABEL_65;
  }

  if (WTF::ObjectIdentifierGeneric<IPC::SyncRequestIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    goto LABEL_96;
  }

  v12 = v84;
  v13 = v85;
  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  result = IPC::Connection::pushPendingSyncRequestID(*(a2 + 8), IdentifierInternal);
  if (!result)
  {
    v36 = 12;
LABEL_49:
    *a1 = v36;
LABEL_65:
    v46 = 1;
    goto LABEL_66;
  }

  *&v88 = v13;
  if (v13 <= 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E1E9FACLL);
  }

  *v12 = 4095;
  v15 = v12 + 1;
  v16 = -v15 & 7 | 8;
  if (v13 - 2 < v16)
  {
    v87 = 0uLL;
  }

  else
  {
    *(v15 + (-v15 & 7)) = IdentifierInternal;
    *&v87 = v15 + v16;
    *(&v87 + 1) = v13 - 2 - v16;
  }

  v17 = *a3;
  v90 = **a3;
  IPC::ArgumentCoder<WebCore::IntPoint,void>::encode(&v87, &v90);
  v90 = v17[1];
  IPC::ArgumentCoder<WebCore::IntPoint,void>::encode(&v87, &v90);
  v19 = v87;
  v20 = -v87 & 3 | 4;
  v21 = *(&v87 + 1) - v20;
  if (*(&v87 + 1) >= v20)
  {
    *(v87 + (-v87 & 3)) = *(a3 + 8);
    v22 = v19 + v20;
    v23 = -v22 & 3 | 4;
    if (v21 >= v23)
    {
      v24 = -v22 & 3;
      *(v22 + v24) = *(a3 + 12);
      if (v21 != v23)
      {
        v25 = (v22 + v23);
        *v25 = *(a3 + 16);
        *&v87 = v25 + 1;
        *(&v87 + 1) = (v24 ^ 0xFFFFFFFFFFFFFFFBLL) + v21;
        v26 = v88 - *(&v87 + 1);
        if (v88 - *(&v87 + 1) <= 0x10uLL)
        {
          v26 = 16;
        }

        v27 = (*(a2 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
        v28 = *(a2 + 72);
        if (v27 + 16 >= v28)
        {
          v27 = 0;
        }

        v29 = v27 + v26;
        if (v28 <= v29)
        {
          v29 = 0;
        }

        *(a2 + 88) = v29;
        v30 = *(a2 + 80);
        if (*(v30 + 8) <= 0xFFuLL)
        {
          goto LABEL_51;
        }

        if (atomic_exchange((*(v30 + 16) + 128), v29) == 0x80000000 || *(a2 + 124))
        {
          if (*(a2 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(a2 + 100));
          }

          *(a2 + 124) = 0;
        }

        a3 = 0x80000000;
        while (1)
        {
          v31 = *(a2 + 80);
          if (*(v31 + 8) <= 0xFFuLL)
          {
            goto LABEL_51;
          }

          v32 = atomic_exchange(*(v31 + 16), 0x80000000uLL);
          v33 = *(a2 + 80);
          if (*(v33 + 8) <= 0xFFuLL)
          {
            goto LABEL_51;
          }

          if (!(v32 | atomic_load_explicit((*(v33 + 16) + 128), memory_order_acquire) & 0xFFFFFFFF7FFFFFFFLL))
          {
            break;
          }

          if (*(a2 + 112) == 1)
          {
            v34 = IPC::Semaphore::waitFor((a2 + 104), v9);
            if (v34)
            {
              WTF::ApproximateTime::now(v34);
              if (v35 < v9)
              {
                continue;
              }
            }
          }

          result = IPC::Connection::popPendingSyncRequestID(*(a2 + 8));
          v36 = 17;
          goto LABEL_49;
        }

        v37 = *(a2 + 80);
        if (*(v37 + 8) <= 0xFFuLL)
        {
          goto LABEL_51;
        }

        atomic_store(0, *(v37 + 16));
        *(a2 + 88) = 0;
        v38 = *(a2 + 80);
        v39 = *(v38 + 8);
        if (v39 <= 0xFF)
        {
          goto LABEL_51;
        }

        v40 = *(a2 + 72);
        v41 = *(v38 + 16);
        a4 = v39 - 256;
        if (v40)
        {
          v51 = v40 - 1;
          v52 = a4 >= v51;
          a4 = v51;
          if (!v52)
          {
            goto LABEL_51;
          }
        }

        v42 = IPC::Decoder::operator new(0x58, v18);
        if (*(IPC::Decoder::Decoder(v42, v41 + 256, a4, *(a2 + 64)) + 25) == 3197)
        {
          IPC::Decoder::~Decoder(v42);
          bmalloc::api::tzoneFree(v43, v44);
          IPC::Connection::waitForSyncReply(*(a2 + 8), IdentifierInternal, 0xFFFu, &v90, v9);
          v45 = v91;
          if (v91)
          {
            if (v91 == 255)
            {
              v81 = IPC::Connection::popPendingSyncRequestID(*(a2 + 8));
              mpark::throw_bad_variant_access(v81);
            }

            v36 = v90;
            result = IPC::Connection::popPendingSyncRequestID(*(a2 + 8));
            if (v45 != 1)
            {
LABEL_41:
              mpark::throw_bad_variant_access(result);
            }

            goto LABEL_49;
          }

          v42 = v90;
        }

        IPC::Connection::popPendingSyncRequestID(*(a2 + 8));
        if (*(v42 + 25) == 3194)
        {
          v36 = 11;
        }

        else
        {
          LOBYTE(v87) = 0;
          v89 = 0;
          result = IPC::Decoder::operator>><std::tuple<std::optional<WebCore::IntSize>,std::span<unsigned char const,18446744073709551615ul>>>(v42, &v87);
          if (v89)
          {
            v46 = 0;
            v47 = v87;
            v48 = v88;
            *v82 = v87;
            v83 = v88;
            *a1 = v42;
            *(a1 + 8) = v47;
            *(a1 + 24) = v48;
LABEL_66:
            *(a1 + 40) = v46;
            return result;
          }

          v36 = 14;
        }

        IPC::Decoder::~Decoder(v42);
        result = bmalloc::api::tzoneFree(v49, v50);
        goto LABEL_49;
      }
    }
  }

  IPC::Connection::popPendingSyncRequestID(*(a2 + 8));
  if ((v86 & 1) == 0)
  {
    while (1)
    {
LABEL_51:
      __break(1u);
LABEL_52:
      result = IPC::StreamClientConnectionBuffer::tryAcquire(a2 + 72, &v87, v9);
      if (v88 != 1)
      {
        goto LABEL_63;
      }

      v53 = *(&v87 + 1);
      if (*(&v87 + 1) <= 1uLL)
      {
        __break(0xC471u);
        JUMPOUT(0x19E1E9FCCLL);
      }

      v54 = v87;
      *v87 = 3198;
      v55 = v54 + 2;
      if (v53 - 2 < (-v55 & 7 | 8uLL))
      {
        break;
      }

      v56 = -v55 & 7;
      *(v55 + v56) = a4;
      if (v56 != 7)
      {
        v56 = 6;
      }

      v57 = (*(a2 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v59 = *(a2 + 72);
      v58 = *(a2 + 80);
      v60 = v56 + 10;
      if (v57 + 16 >= v59)
      {
        v57 = 0;
      }

      v61 = v60 + v57;
      if (v59 <= v61)
      {
        v61 = 0;
      }

      *(a2 + 88) = v61;
      if (*(v58 + 8) > 0xFFuLL)
      {
        IPC::StreamClientConnection::wakeUpServerBatched(a2, atomic_exchange((*(v58 + 16) + 128), v61) == 0x80000000);
        *(a2 + 64) = a4;
        goto LABEL_4;
      }
    }

    v62 = 18;
    goto LABEL_64;
  }

  if (v85 <= 1)
  {
LABEL_96:
    __break(0xC471u);
    JUMPOUT(0x19E1E9F8CLL);
  }

  *v84 = 3197;
  v63 = (*(a2 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v64 = *(a2 + 72);
  if (v63 + 16 >= v64)
  {
    v63 = 0;
  }

  v65 = v63 + 16;
  if (v64 <= v65)
  {
    v66 = 0;
  }

  else
  {
    v66 = v65;
  }

  *(a2 + 88) = v66;
  v67 = *(a2 + 80);
  if (*(v67 + 8) <= 0xFFuLL)
  {
    goto LABEL_51;
  }

  atomic_exchange((*(v67 + 16) + 128), v66);
  *(a2 + 124) = 0;
  v68 = *(a2 + 8);
  IPC::Connection::createSyncMessageEncoder(0xFFF, a4, v82);
  v69 = v82[0];
  IPC::ArgumentCoder<WebCore::IntRect,void>::encode(v82[0], *a3);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v69, *(a3 + 8));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v69, *(a3 + 12));
  IPC::Encoder::operator<<<BOOL &>(v69, (a3 + 16));
  result = IPC::Connection::sendSyncMessage(v68, v82[1], v82, 0, &v90, v9);
  if (v91)
  {
    if (v91 != 1)
    {
      goto LABEL_41;
    }

    *a1 = v90;
    *(a1 + 40) = 1;
    goto LABEL_85;
  }

  v71 = v90;
  v90 = 0;
  if (*(v71 + 25) == 3194)
  {
    v72 = 11;
  }

  else
  {
    LOBYTE(v87) = 0;
    v89 = 0;
    v71 = IPC::Decoder::operator>><std::tuple<std::optional<WebCore::IntSize>,std::span<unsigned char const,18446744073709551615ul>>>(v71, &v87);
    if (v89 == 1)
    {
      v73 = v88;
      *(a1 + 8) = v87;
      *(a1 + 24) = v73;
      *a1 = v71;
      *(a1 + 40) = 0;
      goto LABEL_85;
    }

    v72 = 14;
  }

  *a1 = v72;
  *(a1 + 40) = 1;
  IPC::Decoder::~Decoder(v71);
  bmalloc::api::tzoneFree(v74, v75);
LABEL_85:
  if (!v91)
  {
    v76 = v90;
    v90 = 0;
    if (v76)
    {
      IPC::Decoder::~Decoder(v76);
      bmalloc::api::tzoneFree(v79, v80);
    }
  }

  result = v82[0];
  v82[0] = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v70);
    return bmalloc::api::tzoneFree(v77, v78);
  }

  return result;
}

uint64_t *IPC::Decoder::operator>><std::tuple<std::optional<WebCore::IntSize>,std::span<unsigned char const,18446744073709551615ul>>>(uint64_t *a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = IPC::Decoder::decode<std::optional<WebCore::IntSize>>(a1);
  if (v6 & 0x100000000) != 0 && ((v13 = v5, v2 = v6, IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::decode<IPC::Decoder>(a1, &v18), (v19) || (v15 = *a1, v16 = a1[1], *a1 = 0, a1[1] = 0, (v17 = a1[3]) != 0) && v16 && ((*(*v17 + 16))(v17, v15), (v19)))
  {
    v11 = v13 & 0xFFFFFFFFFFFFFF00;
    *&v20[4] = v18;
    v12 = v13;
    v10 = 1;
  }

  else
  {
    v7 = *a1;
    v8 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v9 = a1[3];
    if (v9 && v8)
    {
      (*(*v9 + 16))(v9, v7);
    }

    v10 = 0;
    v11 = 0;
    v12 = 0;
  }

  if (*(a2 + 32) == v10)
  {
    if (*(a2 + 32))
    {
      *a2 = v12 | v11;
      *(a2 + 8) = v2;
      *(a2 + 16) = *&v20[4];
    }
  }

  else if (*(a2 + 32))
  {
    *(a2 + 32) = 0;
  }

  else
  {
    *a2 = v12 | v11;
    *(a2 + 8) = v2;
    *(a2 + 12) = *v20;
    *(a2 + 28) = *&v20[16];
    *(a2 + 32) = 1;
  }

  return a1;
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::MultiDrawArraysANGLE,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 128);
  v7 = INFINITY;
  if (fabs(v6) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v7 = v6 + v8;
  }

  if (*(a1 + 64) != a3)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v47, v7);
    if (v49 != 1)
    {
      return 16;
    }

    v34 = v48;
    if (v48 <= 1)
    {
LABEL_50:
      __break(0xC471u);
      JUMPOUT(0x19E1EA4D4);
    }

    v35 = v47;
    *v47 = 3198;
    v36 = v35 + 2;
    if (v34 - 2 < (-v36 & 7 | 8uLL))
    {
      return 18;
    }

    v37 = -v36 & 7;
    *&v36[v37] = a3;
    if (v37 != 7)
    {
      v37 = 6;
    }

    v38 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v40 = *(a1 + 72);
    v39 = *(a1 + 80);
    v41 = v37 + 10;
    if (v38 + 16 >= v40)
    {
      v38 = 0;
    }

    v42 = v41 + v38;
    if (v40 <= v42)
    {
      v42 = 0;
    }

    *(a1 + 88) = v42;
    if (*(v39 + 8) <= 0xFFuLL)
    {
      goto LABEL_49;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v39 + 16) + 128), v42) == 0x80000000);
    *(a1 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v44, v7);
  if (v46 != 1)
  {
    return 16;
  }

  v9 = v44;
  v10 = v45;
  v49 = v45;
  if (v45 <= 1)
  {
    goto LABEL_50;
  }

  *v44 = 1269;
  v11 = v9 + 1;
  v12 = v10 - 2;
  v13 = -v11 & 3 | 4;
  v14 = v12 >= v13;
  v15 = v12 - v13;
  if (v14)
  {
    *(v11 + (-v11 & 3)) = *a2;
    v47 = (v11 + v13);
    v48 = v15;
  }

  else
  {
    v47 = 0;
    v48 = 0;
  }

  IPC::ArgumentCoder<IPC::ArrayReferenceTuple<int,int>,void>::encode<IPC::StreamConnectionEncoder,0ul,1ul>(&v47, *(a2 + 8));
  if (v47)
  {
    v17 = v49 - v48;
    if (v49 - v48 <= 0x10)
    {
      v17 = 16;
    }

    v18 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v19 = *(a1 + 72);
    if (v18 + 16 >= v19)
    {
      v18 = 0;
    }

    v20 = v18 + v17;
    if (v19 <= v20)
    {
      v20 = 0;
    }

    *(a1 + 88) = v20;
    v21 = *(a1 + 80);
    if (*(v21 + 8) > 0xFFuLL)
    {
      if (atomic_exchange((*(v21 + 16) + 128), v20) == 0x80000000 || *(a1 + 124))
      {
        if (*(a1 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(a1 + 100));
        }

        *(a1 + 124) = 0;
      }

      return 0;
    }

    goto LABEL_49;
  }

  if ((v46 & 1) == 0)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (v45 <= 1)
  {
    __break(0xC471u);
    goto LABEL_49;
  }

  *v44 = 3197;
  v23 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v24 = *(a1 + 72);
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

  *(a1 + 88) = v26;
  v27 = *(a1 + 80);
  if (*(v27 + 8) <= 0xFFuLL)
  {
    goto LABEL_49;
  }

  atomic_exchange((*(v27 + 16) + 128), v26);
  *(a1 + 124) = 0;
  v28 = *(a1 + 8);
  v29 = IPC::Encoder::operator new(0x238, v16);
  *v29 = 1269;
  *(v29 + 2) = 0;
  *(v29 + 3) = 0;
  *(v29 + 1) = a3;
  *(v29 + 68) = 0;
  *(v29 + 70) = 0;
  *(v29 + 69) = 0;
  IPC::Encoder::encodeHeader(v29);
  v47 = v29;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v29, *a2);
  IPC::ArgumentCoder<IPC::ArrayReferenceTuple<int,int>,void>::encode<IPC::Encoder,0ul,1ul>(v29, *(a2 + 8));
  v22 = IPC::Connection::sendMessageImpl(v28, &v47, 1, 0);
  v31 = v47;
  v47 = 0;
  if (v31)
  {
    IPC::Encoder::~Encoder(v31, v30);
    bmalloc::api::tzoneFree(v32, v33);
  }

  return v22;
}

uint64_t IPC::ArgumentCoder<IPC::ArrayReferenceTuple<int,int>,void>::encode<IPC::StreamConnectionEncoder,0ul,1ul>(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *a2;
  v5 = -*result;
  v6 = v5 & 7 | 8;
  if (*(result + 8) < v6)
  {
LABEL_8:
    *result = 0;
    *(result + 8) = 0;
    if (!v4)
    {
      return result;
    }

    goto LABEL_5;
  }

  *(*result + (v5 & 7)) = v4;
  v7 = *(result + 8);
  v8 = v7 >= v6;
  v9 = v7 - v6;
  if (!v8)
  {
    __break(1u);
    goto LABEL_8;
  }

  *result += v6;
  *(result + 8) = v9;
  if (!v4)
  {
    return result;
  }

LABEL_5:
  IPC::StreamConnectionEncoder::encodeSpan<int const,18446744073709551615ul>(result, *(a2 + 8), *a2);
  v10 = *(a2 + 16);
  v11 = *a2;

  return IPC::StreamConnectionEncoder::encodeSpan<int const,18446744073709551615ul>(v3, v10, v11);
}

void *IPC::ArgumentCoder<IPC::ArrayReferenceTuple<int,int>,void>::encode<IPC::Encoder,0ul,1ul>(IPC::Encoder *a1, uint64_t *a2)
{
  v4 = *a2;
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *a2);
  if (v4)
  {
    v7 = *a2;
    v6 = a2[1];
    v8 = 4 * *a2;
    v9 = IPC::Encoder::grow(a1, 4uLL, v8);
    if (v10 < 4 * v7 || (memcpy(v9, v6, v8), v11 = a2[2], v12 = *a2, v13 = 4 * *a2, v14 = IPC::Encoder::grow(a1, 4uLL, v13), v15 < 4 * v12))
    {
      __break(0xC471u);
      JUMPOUT(0x19E1EA698);
    }

    return memcpy(v14, v11, v13);
  }

  return result;
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::MultiDrawArraysInstancedANGLE,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 128);
  v7 = INFINITY;
  if (fabs(v6) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v7 = v6 + v8;
  }

  if (*(a1 + 64) != a3)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v47, v7);
    if (v49 != 1)
    {
      return 16;
    }

    v34 = v48;
    if (v48 <= 1)
    {
LABEL_50:
      __break(0xC471u);
      JUMPOUT(0x19E1EAA1CLL);
    }

    v35 = v47;
    *v47 = 3198;
    v36 = v35 + 2;
    if (v34 - 2 < (-v36 & 7 | 8uLL))
    {
      return 18;
    }

    v37 = -v36 & 7;
    *&v36[v37] = a3;
    if (v37 != 7)
    {
      v37 = 6;
    }

    v38 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v40 = *(a1 + 72);
    v39 = *(a1 + 80);
    v41 = v37 + 10;
    if (v38 + 16 >= v40)
    {
      v38 = 0;
    }

    v42 = v41 + v38;
    if (v40 <= v42)
    {
      v42 = 0;
    }

    *(a1 + 88) = v42;
    if (*(v39 + 8) <= 0xFFuLL)
    {
      goto LABEL_49;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v39 + 16) + 128), v42) == 0x80000000);
    *(a1 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v44, v7);
  if (v46 != 1)
  {
    return 16;
  }

  v9 = v44;
  v10 = v45;
  v49 = v45;
  if (v45 <= 1)
  {
    goto LABEL_50;
  }

  *v44 = 1270;
  v11 = v9 + 1;
  v12 = v10 - 2;
  v13 = -v11 & 3 | 4;
  v14 = v12 >= v13;
  v15 = v12 - v13;
  if (v14)
  {
    *(v11 + (-v11 & 3)) = *a2;
    v47 = (v11 + v13);
    v48 = v15;
  }

  else
  {
    v47 = 0;
    v48 = 0;
  }

  IPC::ArgumentCoder<IPC::ArrayReferenceTuple<int,int,int>,void>::encode<IPC::StreamConnectionEncoder,0ul,1ul,2ul>(&v47, *(a2 + 8));
  if (v47)
  {
    v17 = v49 - v48;
    if (v49 - v48 <= 0x10)
    {
      v17 = 16;
    }

    v18 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v19 = *(a1 + 72);
    if (v18 + 16 >= v19)
    {
      v18 = 0;
    }

    v20 = v18 + v17;
    if (v19 <= v20)
    {
      v20 = 0;
    }

    *(a1 + 88) = v20;
    v21 = *(a1 + 80);
    if (*(v21 + 8) > 0xFFuLL)
    {
      if (atomic_exchange((*(v21 + 16) + 128), v20) == 0x80000000 || *(a1 + 124))
      {
        if (*(a1 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(a1 + 100));
        }

        *(a1 + 124) = 0;
      }

      return 0;
    }

    goto LABEL_49;
  }

  if ((v46 & 1) == 0)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (v45 <= 1)
  {
    __break(0xC471u);
    goto LABEL_49;
  }

  *v44 = 3197;
  v23 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v24 = *(a1 + 72);
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

  *(a1 + 88) = v26;
  v27 = *(a1 + 80);
  if (*(v27 + 8) <= 0xFFuLL)
  {
    goto LABEL_49;
  }

  atomic_exchange((*(v27 + 16) + 128), v26);
  *(a1 + 124) = 0;
  v28 = *(a1 + 8);
  v29 = IPC::Encoder::operator new(0x238, v16);
  *v29 = 1270;
  *(v29 + 2) = 0;
  *(v29 + 3) = 0;
  *(v29 + 1) = a3;
  *(v29 + 68) = 0;
  *(v29 + 70) = 0;
  *(v29 + 69) = 0;
  IPC::Encoder::encodeHeader(v29);
  v47 = v29;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v29, *a2);
  IPC::ArgumentCoder<IPC::ArrayReferenceTuple<int,int,int>,void>::encode<IPC::Encoder,0ul,1ul,2ul>(v29, *(a2 + 8));
  v22 = IPC::Connection::sendMessageImpl(v28, &v47, 1, 0);
  v31 = v47;
  v47 = 0;
  if (v31)
  {
    IPC::Encoder::~Encoder(v31, v30);
    bmalloc::api::tzoneFree(v32, v33);
  }

  return v22;
}

uint64_t IPC::ArgumentCoder<IPC::ArrayReferenceTuple<int,int,int>,void>::encode<IPC::StreamConnectionEncoder,0ul,1ul,2ul>(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *a2;
  v5 = -*result;
  v6 = v5 & 7 | 8;
  if (*(result + 8) < v6)
  {
LABEL_8:
    *result = 0;
    *(result + 8) = 0;
    if (!v4)
    {
      return result;
    }

    goto LABEL_5;
  }

  *(*result + (v5 & 7)) = v4;
  v7 = *(result + 8);
  v8 = v7 >= v6;
  v9 = v7 - v6;
  if (!v8)
  {
    __break(1u);
    goto LABEL_8;
  }

  *result += v6;
  *(result + 8) = v9;
  if (!v4)
  {
    return result;
  }

LABEL_5:
  IPC::StreamConnectionEncoder::encodeSpan<int const,18446744073709551615ul>(result, *(a2 + 8), *a2);
  IPC::StreamConnectionEncoder::encodeSpan<int const,18446744073709551615ul>(v3, *(a2 + 16), *a2);
  v10 = *(a2 + 24);
  v11 = *a2;

  return IPC::StreamConnectionEncoder::encodeSpan<int const,18446744073709551615ul>(v3, v10, v11);
}

void *IPC::ArgumentCoder<IPC::ArrayReferenceTuple<int,int,int>,void>::encode<IPC::Encoder,0ul,1ul,2ul>(IPC::Encoder *a1, uint64_t *a2)
{
  v4 = *a2;
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *a2);
  if (v4)
  {
    v7 = *a2;
    v6 = a2[1];
    v8 = 4 * *a2;
    v9 = IPC::Encoder::grow(a1, 4uLL, v8);
    if (v10 < 4 * v7)
    {
      goto LABEL_11;
    }

    memcpy(v9, v6, v8);
    v11 = a2[2];
    v12 = *a2;
    v13 = 4 * *a2;
    v14 = IPC::Encoder::grow(a1, 4uLL, v13);
    if (v15 < 4 * v12)
    {
      __break(0xC471u);
      JUMPOUT(0x19E1EAC40);
    }

    memcpy(v14, v11, v13);
    v16 = a2[3];
    v17 = *a2;
    v18 = 4 * *a2;
    v19 = IPC::Encoder::grow(a1, 4uLL, v18);
    if (v20 < 4 * v17)
    {
LABEL_11:
      __break(0xC471u);
      JUMPOUT(0x19E1EAC20);
    }

    return memcpy(v19, v16, v18);
  }

  return result;
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::MultiDrawElementsANGLE,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 128);
  v7 = INFINITY;
  if (fabs(v6) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v7 = v6 + v8;
  }

  if (*(a1 + 64) != a3)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v49, v7);
    if (v51 != 1)
    {
      return 16;
    }

    v25 = v50;
    if (v50 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E1EB024);
    }

    v26 = v49;
    *v49 = 3198;
    v27 = v26 + 2;
    if (v25 - 2 < (-v27 & 7 | 8uLL))
    {
      return 18;
    }

    v28 = -v27 & 7;
    *&v27[v28] = a3;
    if (v28 != 7)
    {
      v28 = 6;
    }

    v29 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v31 = *(a1 + 72);
    v30 = *(a1 + 80);
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

    *(a1 + 88) = v33;
    if (*(v30 + 8) <= 0xFFuLL)
    {
      goto LABEL_51;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v30 + 16) + 128), v33) == 0x80000000);
    *(a1 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v46, v7);
  if (v48 != 1)
  {
    return 16;
  }

  v9 = v46;
  v10 = v47;
  v51 = v47;
  if (v47 <= 1)
  {
    __break(0xC471u);
    goto LABEL_52;
  }

  *v46 = 1272;
  v11 = v9 + 1;
  v12 = v10 - 2;
  v13 = -v11 & 3 | 4;
  v14 = v12 >= v13;
  v15 = v12 - v13;
  if (v14)
  {
    *(v11 + (-v11 & 3)) = *a2;
    v49 = (v11 + v13);
    v50 = v15;
  }

  else
  {
    v49 = 0;
    v50 = 0;
  }

  IPC::ArgumentCoder<IPC::ArrayReferenceTuple<int,int>,void>::encode<IPC::StreamConnectionEncoder,0ul,1ul>(&v49, *(a2 + 8));
  v17 = -v49 & 3 | 4;
  if (v50 >= v17)
  {
    *(v49 + (-v49 & 3)) = *(a2 + 16);
    v18 = v50 - v17;
    if (v50 >= v17)
    {
      v49 = (v49 + v17);
      v50 -= v17;
      v19 = v51 - v18;
      if (v19 <= 0x10)
      {
        v19 = 16;
      }

      v20 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v21 = *(a1 + 72);
      if (v20 + 16 >= v21)
      {
        v20 = 0;
      }

      v22 = v20 + v19;
      if (v21 <= v22)
      {
        v22 = 0;
      }

      *(a1 + 88) = v22;
      v23 = *(a1 + 80);
      if (*(v23 + 8) > 0xFFuLL)
      {
        if (atomic_exchange((*(v23 + 16) + 128), v22) == 0x80000000 || *(a1 + 124))
        {
          if (*(a1 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(a1 + 100));
          }

          *(a1 + 124) = 0;
        }

        return 0;
      }
    }

    goto LABEL_51;
  }

  if ((v48 & 1) == 0)
  {
LABEL_51:
    __break(1u);
LABEL_52:
    JUMPOUT(0x19E1EAFFCLL);
  }

  if (v47 <= 1)
  {
    __break(0xC471u);
    goto LABEL_51;
  }

  *v46 = 3197;
  v35 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v36 = *(a1 + 72);
  if (v35 + 16 >= v36)
  {
    v35 = 0;
  }

  v37 = v35 + 16;
  if (v36 <= v37)
  {
    v38 = 0;
  }

  else
  {
    v38 = v37;
  }

  *(a1 + 88) = v38;
  v39 = *(a1 + 80);
  if (*(v39 + 8) <= 0xFFuLL)
  {
    goto LABEL_51;
  }

  atomic_exchange((*(v39 + 16) + 128), v38);
  *(a1 + 124) = 0;
  v40 = *(a1 + 8);
  v41 = IPC::Encoder::operator new(0x238, v16);
  *v41 = 1272;
  *(v41 + 2) = 0;
  *(v41 + 3) = 0;
  *(v41 + 1) = a3;
  *(v41 + 68) = 0;
  *(v41 + 70) = 0;
  *(v41 + 69) = 0;
  IPC::Encoder::encodeHeader(v41);
  v49 = v41;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v41, *a2);
  IPC::ArgumentCoder<IPC::ArrayReferenceTuple<int,int>,void>::encode<IPC::Encoder,0ul,1ul>(v41, *(a2 + 8));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v41, *(a2 + 16));
  v24 = IPC::Connection::sendMessageImpl(v40, &v49, 1, 0);
  v43 = v49;
  v49 = 0;
  if (v43)
  {
    IPC::Encoder::~Encoder(v43, v42);
    bmalloc::api::tzoneFree(v44, v45);
  }

  return v24;
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::MultiDrawElementsInstancedANGLE,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 128);
  v7 = INFINITY;
  if (fabs(v6) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v7 = v6 + v8;
  }

  if (*(a1 + 64) != a3)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v49, v7);
    if (v51 != 1)
    {
      return 16;
    }

    v25 = v50;
    if (v50 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E1EB408);
    }

    v26 = v49;
    *v49 = 3198;
    v27 = v26 + 2;
    if (v25 - 2 < (-v27 & 7 | 8uLL))
    {
      return 18;
    }

    v28 = -v27 & 7;
    *&v27[v28] = a3;
    if (v28 != 7)
    {
      v28 = 6;
    }

    v29 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v31 = *(a1 + 72);
    v30 = *(a1 + 80);
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

    *(a1 + 88) = v33;
    if (*(v30 + 8) <= 0xFFuLL)
    {
      goto LABEL_51;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v30 + 16) + 128), v33) == 0x80000000);
    *(a1 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v46, v7);
  if (v48 != 1)
  {
    return 16;
  }

  v9 = v46;
  v10 = v47;
  v51 = v47;
  if (v47 <= 1)
  {
    __break(0xC471u);
    goto LABEL_52;
  }

  *v46 = 1273;
  v11 = v9 + 1;
  v12 = v10 - 2;
  v13 = -v11 & 3 | 4;
  v14 = v12 >= v13;
  v15 = v12 - v13;
  if (v14)
  {
    *(v11 + (-v11 & 3)) = *a2;
    v49 = (v11 + v13);
    v50 = v15;
  }

  else
  {
    v49 = 0;
    v50 = 0;
  }

  IPC::ArgumentCoder<IPC::ArrayReferenceTuple<int,int,int>,void>::encode<IPC::StreamConnectionEncoder,0ul,1ul,2ul>(&v49, *(a2 + 8));
  v17 = -v49 & 3 | 4;
  if (v50 >= v17)
  {
    *(v49 + (-v49 & 3)) = *(a2 + 16);
    v18 = v50 - v17;
    if (v50 >= v17)
    {
      v49 = (v49 + v17);
      v50 -= v17;
      v19 = v51 - v18;
      if (v19 <= 0x10)
      {
        v19 = 16;
      }

      v20 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v21 = *(a1 + 72);
      if (v20 + 16 >= v21)
      {
        v20 = 0;
      }

      v22 = v20 + v19;
      if (v21 <= v22)
      {
        v22 = 0;
      }

      *(a1 + 88) = v22;
      v23 = *(a1 + 80);
      if (*(v23 + 8) > 0xFFuLL)
      {
        if (atomic_exchange((*(v23 + 16) + 128), v22) == 0x80000000 || *(a1 + 124))
        {
          if (*(a1 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(a1 + 100));
          }

          *(a1 + 124) = 0;
        }

        return 0;
      }
    }

    goto LABEL_51;
  }

  if ((v48 & 1) == 0)
  {
LABEL_51:
    __break(1u);
LABEL_52:
    JUMPOUT(0x19E1EB3E0);
  }

  if (v47 <= 1)
  {
    __break(0xC471u);
    goto LABEL_51;
  }

  *v46 = 3197;
  v35 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v36 = *(a1 + 72);
  if (v35 + 16 >= v36)
  {
    v35 = 0;
  }

  v37 = v35 + 16;
  if (v36 <= v37)
  {
    v38 = 0;
  }

  else
  {
    v38 = v37;
  }

  *(a1 + 88) = v38;
  v39 = *(a1 + 80);
  if (*(v39 + 8) <= 0xFFuLL)
  {
    goto LABEL_51;
  }

  atomic_exchange((*(v39 + 16) + 128), v38);
  *(a1 + 124) = 0;
  v40 = *(a1 + 8);
  v41 = IPC::Encoder::operator new(0x238, v16);
  *v41 = 1273;
  *(v41 + 2) = 0;
  *(v41 + 3) = 0;
  *(v41 + 1) = a3;
  *(v41 + 68) = 0;
  *(v41 + 70) = 0;
  *(v41 + 69) = 0;
  IPC::Encoder::encodeHeader(v41);
  v49 = v41;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v41, *a2);
  IPC::ArgumentCoder<IPC::ArrayReferenceTuple<int,int,int>,void>::encode<IPC::Encoder,0ul,1ul,2ul>(v41, *(a2 + 8));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v41, *(a2 + 16));
  v24 = IPC::Connection::sendMessageImpl(v40, &v49, 1, 0);
  v43 = v49;
  v49 = 0;
  if (v43)
  {
    IPC::Encoder::~Encoder(v43, v42);
    bmalloc::api::tzoneFree(v44, v45);
  }

  return v24;
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::MultiDrawArraysInstancedBaseInstanceANGLE,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 128);
  v7 = INFINITY;
  if (fabs(v6) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v7 = v6 + v8;
  }

  if (*(a1 + 64) != a3)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v70, v7);
    if (v72 != 1)
    {
      return 16;
    }

    v55 = v71;
    if (v71 <= 1)
    {
LABEL_62:
      __break(0xC471u);
      JUMPOUT(0x19E1EB8A8);
    }

    v56 = v70;
    *v70 = 3198;
    v57 = v56 + 2;
    if (v55 - 2 < (-v57 & 7 | 8uLL))
    {
      return 18;
    }

    v58 = -v57 & 7;
    *&v57[v58] = a3;
    if (v58 != 7)
    {
      v58 = 6;
    }

    v59 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v61 = *(a1 + 72);
    v60 = *(a1 + 80);
    v62 = v58 + 10;
    if (v59 + 16 >= v61)
    {
      v59 = 0;
    }

    v63 = v62 + v59;
    if (v61 <= v63)
    {
      v63 = 0;
    }

    *(a1 + 88) = v63;
    if (*(v60 + 8) <= 0xFFuLL)
    {
      goto LABEL_61;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v60 + 16) + 128), v63) == 0x80000000);
    *(a1 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v67, v7);
  if (v69 != 1)
  {
    return 16;
  }

  v10 = v67;
  v11 = v68;
  v72 = v68;
  if (v68 <= 1)
  {
    goto LABEL_62;
  }

  *v67 = 1271;
  v12 = v10 + 1;
  v13 = v11 - 2;
  v14 = -v12 & 3 | 4;
  v15 = v13 >= v14;
  v16 = v13 - v14;
  if (v15)
  {
    *(v12 + (-v12 & 3)) = *a2;
    v17 = v12 + v14;
    v65 = *(a2 + 8);
    v66 = *v65;
    v18 = -v17 & 7 | 8;
    v19 = v16 - v18;
    if (v16 >= v18)
    {
      *(v17 + (-v17 & 7)) = v66;
      v20 = (v17 + v18);
      v70 = (v17 + v18);
      v71 = v19;
      if (!v66)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v65 = *(a2 + 8);
    v66 = *v65;
  }

  v20 = 0;
  v70 = 0;
  v71 = 0;
  if (v66)
  {
LABEL_10:
    IPC::StreamConnectionEncoder::encodeSpan<int const,18446744073709551615ul>(&v70, *(v65 + 8), *v65);
    IPC::StreamConnectionEncoder::encodeSpan<int const,18446744073709551615ul>(&v70, *(v65 + 16), *v65);
    IPC::StreamConnectionEncoder::encodeSpan<int const,18446744073709551615ul>(&v70, *(v65 + 24), *v65);
    IPC::StreamConnectionEncoder::encodeSpan<float const,18446744073709551615ul>(&v70, *(v65 + 32), *v65);
    v20 = v70;
  }

LABEL_11:
  if (v20)
  {
    v21 = v72 - v71;
    if (v72 - v71 <= 0x10)
    {
      v21 = 16;
    }

    v22 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v23 = *(a1 + 72);
    if (v22 + 16 >= v23)
    {
      v22 = 0;
    }

    v24 = v22 + v21;
    if (v23 <= v24)
    {
      v24 = 0;
    }

    *(a1 + 88) = v24;
    v25 = *(a1 + 80);
    if (*(v25 + 8) > 0xFFuLL)
    {
      if (atomic_exchange((*(v25 + 16) + 128), v24) == 0x80000000 || *(a1 + 124))
      {
        if (*(a1 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(a1 + 100));
        }

        *(a1 + 124) = 0;
      }

      return 0;
    }

    goto LABEL_61;
  }

  if ((v69 & 1) == 0)
  {
    goto LABEL_61;
  }

  if (v68 <= 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E1EB8C8);
  }

  *v67 = 3197;
  v27 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v28 = *(a1 + 72);
  if (v27 + 16 >= v28)
  {
    v27 = 0;
  }

  v29 = v27 + 16;
  v30 = v28 <= v29 ? 0 : v29;
  *(a1 + 88) = v30;
  v31 = *(a1 + 80);
  if (*(v31 + 8) <= 0xFFuLL)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  atomic_exchange((*(v31 + 16) + 128), v30);
  *(a1 + 124) = 0;
  v32 = *(a1 + 8);
  v33 = IPC::Encoder::operator new(0x238, v9);
  *v33 = 1271;
  *(v33 + 2) = 0;
  *(v33 + 3) = 0;
  *(v33 + 1) = a3;
  *(v33 + 68) = 0;
  *(v33 + 70) = 0;
  *(v33 + 69) = 0;
  IPC::Encoder::encodeHeader(v33);
  v70 = v33;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v33, *a2);
  v34 = *(a2 + 8);
  v35 = *v34;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v33, *v34);
  if (!v35)
  {
    goto LABEL_38;
  }

  v37 = *v34;
  v36 = *(v34 + 8);
  v38 = 4 * *v34;
  v39 = IPC::Encoder::grow(v33, 4uLL, v38);
  if (v40 < 4 * v37)
  {
    __break(0xC471u);
    JUMPOUT(0x19E1EB8E8);
  }

  memcpy(v39, v36, v38);
  v41 = *(v34 + 16);
  v42 = *v34;
  v43 = 4 * *v34;
  v44 = IPC::Encoder::grow(v33, 4uLL, v43);
  if (v45 < 4 * v42)
  {
    __break(0xC471u);
    JUMPOUT(0x19E1EB908);
  }

  memcpy(v44, v41, v43);
  v46 = *(v34 + 24);
  v47 = *v34;
  v48 = 4 * *v34;
  v49 = IPC::Encoder::grow(v33, 4uLL, v48);
  if (v50 < 4 * v47)
  {
    __break(0xC471u);
    goto LABEL_61;
  }

  memcpy(v49, v46, v48);
  IPC::Encoder::encodeSpan<float const,18446744073709551615ul>(v33, *(v34 + 32), *v34);
LABEL_38:
  v26 = IPC::Connection::sendMessageImpl(v32, &v70, 1, 0);
  v52 = v70;
  v70 = 0;
  if (v52)
  {
    IPC::Encoder::~Encoder(v52, v51);
    bmalloc::api::tzoneFree(v53, v54);
  }

  return v26;
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::MultiDrawElementsInstancedBaseVertexBaseInstanceANGLE,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 128);
  v7 = INFINITY;
  if (fabs(v6) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v7 = v6 + v8;
  }

  if (*(a1 + 64) != a3)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v77, v7);
    if (v79 != 1)
    {
      return 16;
    }

    v29 = v78;
    if (v78 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E1EBE74);
    }

    v30 = v77;
    *v77 = 3198;
    v31 = v30 + 2;
    if (v29 - 2 < (-v31 & 7 | 8uLL))
    {
      return 18;
    }

    v32 = -v31 & 7;
    *&v31[v32] = a3;
    if (v32 != 7)
    {
      v32 = 6;
    }

    v33 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v35 = *(a1 + 72);
    v34 = *(a1 + 80);
    v36 = v32 + 10;
    if (v33 + 16 >= v35)
    {
      v33 = 0;
    }

    v37 = v36 + v33;
    if (v35 <= v37)
    {
      v37 = 0;
    }

    *(a1 + 88) = v37;
    if (*(v34 + 8) <= 0xFFuLL)
    {
      goto LABEL_66;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v34 + 16) + 128), v37) == 0x80000000);
    *(a1 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v74, v7);
  if (v76 != 1)
  {
    return 16;
  }

  v10 = v74;
  v11 = v75;
  v79 = v75;
  if (v75 <= 1)
  {
    __break(0xC471u);
    goto LABEL_67;
  }

  *v74 = 1274;
  v12 = v10 + 1;
  v13 = v11 - 2;
  v14 = -v12 & 3 | 4;
  v15 = v13 >= v14;
  v16 = v13 - v14;
  if (v15)
  {
    *(v12 + (-v12 & 3)) = *a2;
    v17 = v12 + v14;
    v39 = *(a2 + 8);
    v40 = *v39;
    v18 = -v17 & 7 | 8;
    v15 = v16 >= v18;
    v19 = v16 - v18;
    if (v15)
    {
      *(v17 + (-v17 & 7)) = v40;
      v20 = (v17 + v18);
      v77 = v20;
      v78 = v19;
      if (!v40)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v39 = *(a2 + 8);
    v40 = *v39;
  }

  v19 = 0;
  v20 = 0;
  v77 = 0;
  v78 = 0;
  if (v40)
  {
LABEL_11:
    IPC::StreamConnectionEncoder::encodeSpan<int const,18446744073709551615ul>(&v77, *(v39 + 8), *v39);
    IPC::StreamConnectionEncoder::encodeSpan<int const,18446744073709551615ul>(&v77, *(v39 + 16), *v39);
    IPC::StreamConnectionEncoder::encodeSpan<int const,18446744073709551615ul>(&v77, *(v39 + 24), *v39);
    IPC::StreamConnectionEncoder::encodeSpan<int const,18446744073709551615ul>(&v77, *(v39 + 32), *v39);
    IPC::StreamConnectionEncoder::encodeSpan<float const,18446744073709551615ul>(&v77, *(v39 + 40), *v39);
    v20 = v77;
    v19 = v78;
  }

LABEL_12:
  v21 = -v20 & 3 | 4;
  if (v19 >= v21)
  {
    *(v20 + (-v20 & 3)) = *(a2 + 16);
    v22 = v78 - v21;
    if (v78 >= v21)
    {
      v77 = (v77 + v21);
      v78 -= v21;
      v23 = v79 - v22;
      if (v79 - v22 <= 0x10)
      {
        v23 = 16;
      }

      v24 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v25 = *(a1 + 72);
      if (v24 + 16 >= v25)
      {
        v24 = 0;
      }

      v26 = v24 + v23;
      if (v25 <= v26)
      {
        v26 = 0;
      }

      *(a1 + 88) = v26;
      v27 = *(a1 + 80);
      if (*(v27 + 8) > 0xFFuLL)
      {
        if (atomic_exchange((*(v27 + 16) + 128), v26) == 0x80000000 || *(a1 + 124))
        {
          if (*(a1 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(a1 + 100));
          }

          *(a1 + 124) = 0;
        }

        return 0;
      }
    }

    goto LABEL_66;
  }

  if ((v76 & 1) == 0)
  {
    goto LABEL_66;
  }

  if (v75 <= 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E1EBE94);
  }

  *v74 = 3197;
  v41 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v42 = *(a1 + 72);
  if (v41 + 16 >= v42)
  {
    v41 = 0;
  }

  v43 = v41 + 16;
  v44 = v42 <= v43 ? 0 : v43;
  *(a1 + 88) = v44;
  v45 = *(a1 + 80);
  if (*(v45 + 8) <= 0xFFuLL)
  {
LABEL_66:
    __break(1u);
LABEL_67:
    JUMPOUT(0x19E1EBE4CLL);
  }

  atomic_exchange((*(v45 + 16) + 128), v44);
  *(a1 + 124) = 0;
  v46 = *(a1 + 8);
  v47 = IPC::Encoder::operator new(0x238, v9);
  *v47 = 1274;
  *(v47 + 2) = 0;
  *(v47 + 3) = 0;
  *(v47 + 1) = a3;
  *(v47 + 68) = 0;
  *(v47 + 70) = 0;
  *(v47 + 69) = 0;
  IPC::Encoder::encodeHeader(v47);
  v77 = v47;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v47, *a2);
  v48 = *(a2 + 8);
  v49 = *v48;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v47, *v48);
  if (!v49)
  {
    goto LABEL_56;
  }

  v51 = *v48;
  v50 = *(v48 + 8);
  v52 = 4 * *v48;
  v53 = IPC::Encoder::grow(v47, 4uLL, v52);
  if (v54 < 4 * v51)
  {
    __break(0xC471u);
    JUMPOUT(0x19E1EBEB4);
  }

  memcpy(v53, v50, v52);
  v55 = *(v48 + 16);
  v56 = *v48;
  v57 = 4 * *v48;
  v58 = IPC::Encoder::grow(v47, 4uLL, v57);
  if (v59 < 4 * v56)
  {
    __break(0xC471u);
    JUMPOUT(0x19E1EBED4);
  }

  memcpy(v58, v55, v57);
  v60 = *(v48 + 24);
  v61 = *v48;
  v62 = 4 * *v48;
  v63 = IPC::Encoder::grow(v47, 4uLL, v62);
  if (v64 < 4 * v61)
  {
    __break(0xC471u);
    JUMPOUT(0x19E1EBEF4);
  }

  memcpy(v63, v60, v62);
  v65 = *(v48 + 32);
  v66 = *v48;
  v67 = 4 * *v48;
  v68 = IPC::Encoder::grow(v47, 4uLL, v67);
  if (v69 < 4 * v66)
  {
    __break(0xC471u);
    goto LABEL_66;
  }

  memcpy(v68, v65, v67);
  IPC::Encoder::encodeSpan<float const,18446744073709551615ul>(v47, *(v48 + 40), *v48);
LABEL_56:
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v47, *(a2 + 16));
  v28 = IPC::Connection::sendMessageImpl(v46, &v77, 1, 0);
  v71 = v77;
  v77 = 0;
  if (v71)
  {
    IPC::Encoder::~Encoder(v71, v70);
    bmalloc::api::tzoneFree(v72, v73);
  }

  return v28;
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::DrawBuffers,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, const void ***a2, uint64_t a3)
{
  v6 = *(a1 + 128);
  v7 = INFINITY;
  if (fabs(v6) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v7 = v6 + v8;
  }

  if (*(a1 + 64) != a3)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v41, v7);
    if (v43 != 1)
    {
      return 16;
    }

    v28 = v42;
    if (v42 <= 1)
    {
LABEL_46:
      __break(0xC471u);
      JUMPOUT(0x19E1EC230);
    }

    v29 = v41;
    *v41 = 3198;
    v30 = v29 + 2;
    if (v28 - 2 < (-v30 & 7 | 8uLL))
    {
      return 18;
    }

    v31 = -v30 & 7;
    *&v30[v31] = a3;
    if (v31 != 7)
    {
      v31 = 6;
    }

    v32 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v34 = *(a1 + 72);
    v33 = *(a1 + 80);
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

    *(a1 + 88) = v36;
    if (*(v33 + 8) <= 0xFFuLL)
    {
      goto LABEL_45;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v33 + 16) + 128), v36) == 0x80000000);
    *(a1 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v38, v7);
  if (v40 != 1)
  {
    return 16;
  }

  v9 = v38;
  v10 = v39;
  v43 = v39;
  if (v39 <= 1)
  {
    goto LABEL_46;
  }

  *v38 = 1244;
  v41 = (v9 + 1);
  v42 = v10 - 2;
  IPC::ArgumentCoder<std::span<unsigned int const,18446744073709551615ul>,void>::encode<IPC::StreamConnectionEncoder>(&v41, **a2, (*a2)[1]);
  if (v41)
  {
    v12 = 16;
    if (v43 - v42 > 0x10)
    {
      v12 = v43 - v42;
    }

    v13 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v15 = *(a1 + 72);
    v14 = *(a1 + 80);
    if (v13 + 16 >= v15)
    {
      v13 = 0;
    }

    v16 = v13 + v12;
    if (v15 <= v16)
    {
      v16 = 0;
    }

    *(a1 + 88) = v16;
    if (*(v14 + 8) > 0xFFuLL)
    {
      if (atomic_exchange((*(v14 + 16) + 128), v16) == 0x80000000 || *(a1 + 124))
      {
        if (*(a1 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(a1 + 100));
        }

        *(a1 + 124) = 0;
      }

      return 0;
    }

    goto LABEL_45;
  }

  if ((v40 & 1) == 0)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (v39 <= 1)
  {
    __break(0xC471u);
    goto LABEL_45;
  }

  *v38 = 3197;
  v18 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v20 = *(a1 + 72);
  v19 = *(a1 + 80);
  if (v18 + 16 >= v20)
  {
    v18 = 0;
  }

  v21 = v18 + 16;
  if (v20 <= v21)
  {
    v21 = 0;
  }

  *(a1 + 88) = v21;
  if (*(v19 + 8) <= 0xFFuLL)
  {
    goto LABEL_45;
  }

  atomic_exchange((*(v19 + 16) + 128), v21);
  *(a1 + 124) = 0;
  v22 = *(a1 + 8);
  v23 = IPC::Encoder::operator new(0x238, v11);
  *v23 = 1244;
  *(v23 + 2) = 0;
  *(v23 + 3) = 0;
  *(v23 + 1) = a3;
  *(v23 + 68) = 0;
  *(v23 + 70) = 0;
  *(v23 + 69) = 0;
  IPC::Encoder::encodeHeader(v23);
  v41 = v23;
  IPC::ArgumentCoder<std::span<float const,18446744073709551615ul>,void>::encode<IPC::Encoder>(v23, **a2, (*a2)[1]);
  v17 = IPC::Connection::sendMessageImpl(v22, &v41, 1, 0);
  v25 = v41;
  v41 = 0;
  if (v25)
  {
    IPC::Encoder::~Encoder(v25, v24);
    bmalloc::api::tzoneFree(v26, v27);
  }

  return v17;
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::DrawBuffersEXT,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, const void ***a2, uint64_t a3)
{
  v6 = *(a1 + 128);
  v7 = INFINITY;
  if (fabs(v6) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v7 = v6 + v8;
  }

  if (*(a1 + 64) != a3)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v41, v7);
    if (v43 != 1)
    {
      return 16;
    }

    v28 = v42;
    if (v42 <= 1)
    {
LABEL_46:
      __break(0xC471u);
      JUMPOUT(0x19E1EC58CLL);
    }

    v29 = v41;
    *v41 = 3198;
    v30 = v29 + 2;
    if (v28 - 2 < (-v30 & 7 | 8uLL))
    {
      return 18;
    }

    v31 = -v30 & 7;
    *&v30[v31] = a3;
    if (v31 != 7)
    {
      v31 = 6;
    }

    v32 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v34 = *(a1 + 72);
    v33 = *(a1 + 80);
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

    *(a1 + 88) = v36;
    if (*(v33 + 8) <= 0xFFuLL)
    {
      goto LABEL_45;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v33 + 16) + 128), v36) == 0x80000000);
    *(a1 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v38, v7);
  if (v40 != 1)
  {
    return 16;
  }

  v9 = v38;
  v10 = v39;
  v43 = v39;
  if (v39 <= 1)
  {
    goto LABEL_46;
  }

  *v38 = 1245;
  v41 = (v9 + 1);
  v42 = v10 - 2;
  IPC::ArgumentCoder<std::span<unsigned int const,18446744073709551615ul>,void>::encode<IPC::StreamConnectionEncoder>(&v41, **a2, (*a2)[1]);
  if (v41)
  {
    v12 = 16;
    if (v43 - v42 > 0x10)
    {
      v12 = v43 - v42;
    }

    v13 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v15 = *(a1 + 72);
    v14 = *(a1 + 80);
    if (v13 + 16 >= v15)
    {
      v13 = 0;
    }

    v16 = v13 + v12;
    if (v15 <= v16)
    {
      v16 = 0;
    }

    *(a1 + 88) = v16;
    if (*(v14 + 8) > 0xFFuLL)
    {
      if (atomic_exchange((*(v14 + 16) + 128), v16) == 0x80000000 || *(a1 + 124))
      {
        if (*(a1 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(a1 + 100));
        }

        *(a1 + 124) = 0;
      }

      return 0;
    }

    goto LABEL_45;
  }

  if ((v40 & 1) == 0)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (v39 <= 1)
  {
    __break(0xC471u);
    goto LABEL_45;
  }

  *v38 = 3197;
  v18 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v20 = *(a1 + 72);
  v19 = *(a1 + 80);
  if (v18 + 16 >= v20)
  {
    v18 = 0;
  }

  v21 = v18 + 16;
  if (v20 <= v21)
  {
    v21 = 0;
  }

  *(a1 + 88) = v21;
  if (*(v19 + 8) <= 0xFFuLL)
  {
    goto LABEL_45;
  }

  atomic_exchange((*(v19 + 16) + 128), v21);
  *(a1 + 124) = 0;
  v22 = *(a1 + 8);
  v23 = IPC::Encoder::operator new(0x238, v11);
  *v23 = 1245;
  *(v23 + 2) = 0;
  *(v23 + 3) = 0;
  *(v23 + 1) = a3;
  *(v23 + 68) = 0;
  *(v23 + 70) = 0;
  *(v23 + 69) = 0;
  IPC::Encoder::encodeHeader(v23);
  v41 = v23;
  IPC::ArgumentCoder<std::span<float const,18446744073709551615ul>,void>::encode<IPC::Encoder>(v23, **a2, (*a2)[1]);
  v17 = IPC::Connection::sendMessageImpl(v22, &v41, 1, 0);
  v25 = v41;
  v41 = 0;
  if (v25)
  {
    IPC::Encoder::~Encoder(v25, v24);
    bmalloc::api::tzoneFree(v26, v27);
  }

  return v17;
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::InvalidateFramebuffer,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 128);
  v7 = INFINITY;
  if (fabs(v6) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v7 = v6 + v8;
  }

  if (*(a1 + 64) != a3)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v47, v7);
    if (v49 != 1)
    {
      return 16;
    }

    v34 = v48;
    if (v48 <= 1)
    {
LABEL_50:
      __break(0xC471u);
      JUMPOUT(0x19E1EC938);
    }

    v35 = v47;
    *v47 = 3198;
    v36 = v35 + 2;
    if (v34 - 2 < (-v36 & 7 | 8uLL))
    {
      return 18;
    }

    v37 = -v36 & 7;
    *&v36[v37] = a3;
    if (v37 != 7)
    {
      v37 = 6;
    }

    v38 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v40 = *(a1 + 72);
    v39 = *(a1 + 80);
    v41 = v37 + 10;
    if (v38 + 16 >= v40)
    {
      v38 = 0;
    }

    v42 = v41 + v38;
    if (v40 <= v42)
    {
      v42 = 0;
    }

    *(a1 + 88) = v42;
    if (*(v39 + 8) <= 0xFFuLL)
    {
      goto LABEL_49;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v39 + 16) + 128), v42) == 0x80000000);
    *(a1 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v44, v7);
  if (v46 != 1)
  {
    return 16;
  }

  v9 = v44;
  v10 = v45;
  v49 = v45;
  if (v45 <= 1)
  {
    goto LABEL_50;
  }

  *v44 = 1265;
  v11 = v9 + 1;
  v12 = v10 - 2;
  v13 = -v11 & 3 | 4;
  v14 = v12 >= v13;
  v15 = v12 - v13;
  if (v14)
  {
    *(v11 + (-v11 & 3)) = *a2;
    v47 = (v11 + v13);
    v48 = v15;
  }

  else
  {
    v47 = 0;
    v48 = 0;
  }

  IPC::ArgumentCoder<std::span<unsigned int const,18446744073709551615ul>,void>::encode<IPC::StreamConnectionEncoder>(&v47, **(a2 + 8), *(*(a2 + 8) + 8));
  if (v47)
  {
    v17 = v49 - v48;
    if (v49 - v48 <= 0x10)
    {
      v17 = 16;
    }

    v18 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v19 = *(a1 + 72);
    if (v18 + 16 >= v19)
    {
      v18 = 0;
    }

    v20 = v18 + v17;
    if (v19 <= v20)
    {
      v20 = 0;
    }

    *(a1 + 88) = v20;
    v21 = *(a1 + 80);
    if (*(v21 + 8) > 0xFFuLL)
    {
      if (atomic_exchange((*(v21 + 16) + 128), v20) == 0x80000000 || *(a1 + 124))
      {
        if (*(a1 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(a1 + 100));
        }

        *(a1 + 124) = 0;
      }

      return 0;
    }

    goto LABEL_49;
  }

  if ((v46 & 1) == 0)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (v45 <= 1)
  {
    __break(0xC471u);
    goto LABEL_49;
  }

  *v44 = 3197;
  v23 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v24 = *(a1 + 72);
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

  *(a1 + 88) = v26;
  v27 = *(a1 + 80);
  if (*(v27 + 8) <= 0xFFuLL)
  {
    goto LABEL_49;
  }

  atomic_exchange((*(v27 + 16) + 128), v26);
  *(a1 + 124) = 0;
  v28 = *(a1 + 8);
  v29 = IPC::Encoder::operator new(0x238, v16);
  *v29 = 1265;
  *(v29 + 2) = 0;
  *(v29 + 3) = 0;
  *(v29 + 1) = a3;
  *(v29 + 68) = 0;
  *(v29 + 70) = 0;
  *(v29 + 69) = 0;
  IPC::Encoder::encodeHeader(v29);
  v47 = v29;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v29, *a2);
  IPC::ArgumentCoder<std::span<float const,18446744073709551615ul>,void>::encode<IPC::Encoder>(v29, **(a2 + 8), *(*(a2 + 8) + 8));
  v22 = IPC::Connection::sendMessageImpl(v28, &v47, 1, 0);
  v31 = v47;
  v47 = 0;
  if (v31)
  {
    IPC::Encoder::~Encoder(v31, v30);
    bmalloc::api::tzoneFree(v32, v33);
  }

  return v22;
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::InvalidateSubFramebuffer,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 128);
  v7 = INFINITY;
  if (fabs(v6) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v7 = v6 + v8;
  }

  if (*(a1 + 64) != a3)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v58, v7);
    if (v60 != 1)
    {
      return 16;
    }

    v45 = v59;
    if (v59 <= 1)
    {
LABEL_57:
      __break(0xC471u);
      JUMPOUT(0x19E1ECDF0);
    }

    v46 = v58;
    *v58 = 3198;
    v47 = v46 + 2;
    if (v45 - 2 < (-v47 & 7 | 8uLL))
    {
      return 18;
    }

    v48 = -v47 & 7;
    *&v47[v48] = a3;
    if (v48 != 7)
    {
      v48 = 6;
    }

    v49 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v51 = *(a1 + 72);
    v50 = *(a1 + 80);
    v52 = v48 + 10;
    if (v49 + 16 >= v51)
    {
      v49 = 0;
    }

    v53 = v52 + v49;
    if (v51 <= v53)
    {
      v53 = 0;
    }

    *(a1 + 88) = v53;
    if (*(v50 + 8) <= 0xFFuLL)
    {
      goto LABEL_56;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v50 + 16) + 128), v53) == 0x80000000);
    *(a1 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v55, v7);
  if (v57 != 1)
  {
    return 16;
  }

  v9 = v55;
  v10 = v56;
  v60 = v56;
  if (v56 <= 1)
  {
    goto LABEL_57;
  }

  *v55 = 1266;
  v11 = v9 + 1;
  v12 = v10 - 2;
  v13 = -v11 & 3 | 4;
  v14 = v12 >= v13;
  v15 = v12 - v13;
  if (v14)
  {
    *(v11 + (-v11 & 3)) = *a2;
    v58 = (v11 + v13);
    v59 = v15;
  }

  else
  {
    v58 = 0;
    v59 = 0;
  }

  IPC::ArgumentCoder<std::span<unsigned int const,18446744073709551615ul>,void>::encode<IPC::StreamConnectionEncoder>(&v58, **(a2 + 8), *(*(a2 + 8) + 8));
  v17 = -v58 & 3 | 4;
  if (v59 < v17)
  {
    goto LABEL_30;
  }

  *(v58 + (-v58 & 3)) = *(a2 + 16);
  v18 = v59 - v17;
  if (v59 < v17)
  {
    goto LABEL_56;
  }

  v19 = (v58 + v17);
  v58 = v19;
  v59 -= v17;
  v20 = -v19 & 3 | 4;
  if (v18 < v20)
  {
    goto LABEL_30;
  }

  *(v19 + (-v19 & 3)) = *(a2 + 20);
  v21 = v59 - v20;
  if (v59 < v20)
  {
    goto LABEL_56;
  }

  v22 = (v58 + v20);
  v58 = v22;
  v59 -= v20;
  v23 = -v22 & 3 | 4;
  if (v21 < v23)
  {
    goto LABEL_30;
  }

  *(v22 + (-v22 & 3)) = *(a2 + 24);
  v24 = v59 - v23;
  if (v59 < v23)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v25 = (v58 + v23);
  v58 = v25;
  v59 = v24;
  v26 = -v25 & 3 | 4;
  if (v24 >= v26)
  {
    *(v25 + (-v25 & 3)) = *(a2 + 28);
    v27 = v59 - v26;
    if (v59 >= v26)
    {
      v58 = (v58 + v26);
      v59 -= v26;
      v28 = v60 - v27;
      if (v60 - v27 <= 0x10)
      {
        v28 = 16;
      }

      v29 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v30 = *(a1 + 72);
      if (v29 + 16 >= v30)
      {
        v29 = 0;
      }

      v31 = v29 + v28;
      if (v30 <= v31)
      {
        v31 = 0;
      }

      *(a1 + 88) = v31;
      v32 = *(a1 + 80);
      if (*(v32 + 8) > 0xFFuLL)
      {
        if (atomic_exchange((*(v32 + 16) + 128), v31) == 0x80000000 || *(a1 + 124))
        {
          if (*(a1 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(a1 + 100));
          }

          *(a1 + 124) = 0;
        }

        return 0;
      }
    }

    goto LABEL_56;
  }

LABEL_30:
  if ((v57 & 1) == 0)
  {
    goto LABEL_56;
  }

  if (v56 <= 1)
  {
    __break(0xC471u);
    goto LABEL_56;
  }

  *v55 = 3197;
  v34 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v35 = *(a1 + 72);
  if (v34 + 16 >= v35)
  {
    v34 = 0;
  }

  v36 = v34 + 16;
  if (v35 <= v36)
  {
    v37 = 0;
  }

  else
  {
    v37 = v36;
  }

  *(a1 + 88) = v37;
  v38 = *(a1 + 80);
  if (*(v38 + 8) <= 0xFFuLL)
  {
    goto LABEL_56;
  }

  atomic_exchange((*(v38 + 16) + 128), v37);
  *(a1 + 124) = 0;
  v39 = *(a1 + 8);
  v40 = IPC::Encoder::operator new(0x238, v16);
  *v40 = 1266;
  *(v40 + 2) = 0;
  *(v40 + 3) = 0;
  *(v40 + 1) = a3;
  *(v40 + 68) = 0;
  *(v40 + 70) = 0;
  *(v40 + 69) = 0;
  IPC::Encoder::encodeHeader(v40);
  v58 = v40;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v40, *a2);
  IPC::ArgumentCoder<std::span<float const,18446744073709551615ul>,void>::encode<IPC::Encoder>(v40, **(a2 + 8), *(*(a2 + 8) + 8));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v40, *(a2 + 16));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v40, *(a2 + 20));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v40, *(a2 + 24));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v40, *(a2 + 28));
  v33 = IPC::Connection::sendMessageImpl(v39, &v58, 1, 0);
  v42 = v58;
  v58 = 0;
  if (v42)
  {
    IPC::Encoder::~Encoder(v42, v41);
    bmalloc::api::tzoneFree(v43, v44);
  }

  return v33;
}

uint64_t IPC::Connection::waitForAndDispatchImmediately<Messages::RemoteGraphicsContextGLProxy::WasCreated>(uint64_t a1, uint64_t a2, int a3, double a4)
{
  v5 = IPC::Connection::waitForMessage(a1, 0x482u, a2, a3, &v13, a4);
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

void *WTF::Detail::CallableWrapper<WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(void)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F11251C0;
  v3 = a1[2];
  a1[2] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(void)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F11251C0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

atomic_uchar **WTF::Detail::CallableWrapper<WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(void)::$_0,void>::call(atomic_uchar **result)
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
      IPC::Connection::send<Messages::GPUConnectionToWebProcess::ReleaseGraphicsContextGL>(v8, &v10, 0, 1, 0);

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref((v2 + 24), v9);
    }
  }

  return result;
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::ActiveTexture,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
{
  v6 = *(a1 + 128);
  v7 = INFINITY;
  if (fabs(v6) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v7 = v6 + v8;
  }

  if (*(a1 + 64) != a3)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v38, v7);
    if (v40 != 1)
    {
      return 16;
    }

    v18 = v39;
    if (v39 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E1ED420);
    }

    v19 = v38;
    *v38 = 3198;
    v20 = v19 + 1;
    if (v18 - 2 < (-v20 & 7 | 8uLL))
    {
      return 18;
    }

    v21 = -v20 & 7;
    *(v20 + v21) = a3;
    if (v21 != 7)
    {
      v21 = 6;
    }

    v22 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v24 = *(a1 + 72);
    v23 = *(a1 + 80);
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

    *(a1 + 88) = v26;
    if (*(v23 + 8) <= 0xFFuLL)
    {
      goto LABEL_44;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v23 + 16) + 128), v26) == 0x80000000);
    *(a1 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v38, v7);
  if (v40 != 1)
  {
    return 16;
  }

  v10 = v39;
  if (v39 <= 1)
  {
    __break(0xC471u);
    goto LABEL_45;
  }

  v11 = v38;
  *v38 = 1157;
  v12 = v11 + 1;
  if (v10 - 2 >= (-v12 & 3 | 4uLL))
  {
    *(v12 + (-v12 & 3)) = *a2;
    v13 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v15 = *(a1 + 72);
    v14 = *(a1 + 80);
    if (v13 + 16 >= v15)
    {
      v13 = 0;
    }

    v16 = v13 + 16;
    if (v15 <= v16)
    {
      v16 = 0;
    }

    *(a1 + 88) = v16;
    if (*(v14 + 8) > 0xFFuLL)
    {
      if (atomic_exchange((*(v14 + 16) + 128), v16) != 0x80000000 && !*(a1 + 124))
      {
        return 0;
      }

      if (*(a1 + 112) == 1)
      {
        MEMORY[0x19EB16320](*(a1 + 100));
      }

      v17 = 0;
      *(a1 + 124) = 0;
      return v17;
    }

    goto LABEL_44;
  }

  if ((v40 & 1) == 0)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    JUMPOUT(0x19E1ED400);
  }

  if (v39 <= 1)
  {
    __break(0xC471u);
    goto LABEL_44;
  }

  *v38 = 3197;
  v28 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v30 = *(a1 + 72);
  v29 = *(a1 + 80);
  if (v28 + 16 >= v30)
  {
    v28 = 0;
  }

  v31 = v28 + 16;
  if (v30 <= v31)
  {
    v31 = 0;
  }

  *(a1 + 88) = v31;
  if (*(v29 + 8) <= 0xFFuLL)
  {
    goto LABEL_44;
  }

  atomic_exchange((*(v29 + 16) + 128), v31);
  *(a1 + 124) = 0;
  v32 = *(a1 + 8);
  v33 = IPC::Encoder::operator new(0x238, v9);
  *v33 = 1157;
  *(v33 + 2) = 0;
  *(v33 + 3) = 0;
  *(v33 + 1) = a3;
  *(v33 + 68) = 0;
  *(v33 + 70) = 0;
  *(v33 + 69) = 0;
  IPC::Encoder::encodeHeader(v33);
  v41 = v33;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v33, *a2);
  v17 = IPC::Connection::sendMessageImpl(v32, &v41, 1, 0);
  v35 = v41;
  v41 = 0;
  if (v35)
  {
    IPC::Encoder::~Encoder(v35, v34);
    bmalloc::api::tzoneFree(v36, v37);
  }

  return v17;
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::AttachShader,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
{
  v6 = *(a1 + 128);
  v7 = INFINITY;
  if (fabs(v6) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v7 = v6 + v8;
  }

  if (*(a1 + 64) != a3)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v43, v7);
    if (v45 != 1)
    {
      return 16;
    }

    v23 = v44;
    if (v44 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E1ED7C0);
    }

    v24 = v43;
    *v43 = 3198;
    v25 = v24 + 1;
    if (v23 - 2 < (-v25 & 7 | 8uLL))
    {
      return 18;
    }

    v26 = -v25 & 7;
    *(v25 + v26) = a3;
    if (v26 != 7)
    {
      v26 = 6;
    }

    v27 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v29 = *(a1 + 72);
    v28 = *(a1 + 80);
    v30 = v26 + 10;
    if (v27 + 16 >= v29)
    {
      v27 = 0;
    }

    v31 = v30 + v27;
    if (v29 <= v31)
    {
      v31 = 0;
    }

    *(a1 + 88) = v31;
    if (*(v28 + 8) <= 0xFFuLL)
    {
      goto LABEL_47;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v28 + 16) + 128), v31) == 0x80000000);
    *(a1 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v43, v7);
  if (v45 != 1)
  {
    return 16;
  }

  v10 = v44;
  if (v44 <= 1)
  {
    __break(0xC471u);
    goto LABEL_48;
  }

  v11 = v43;
  *v43 = 1158;
  v12 = v11 + 1;
  v13 = -v12 & 3 | 4;
  v14 = v10 - 2 - v13;
  if (v10 - 2 >= v13)
  {
    *(v12 + (-v12 & 3)) = *a2;
    v15 = v12 + v13;
    v16 = -v15 & 3 | 4;
    if (v14 >= v16)
    {
      *(v15 + (-v15 & 3)) = a2[1];
      v17 = v10 - v14 + v16;
      if (v17 <= 0x10)
      {
        v17 = 16;
      }

      v18 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v19 = *(a1 + 72);
      if (v18 + 16 >= v19)
      {
        v18 = 0;
      }

      v20 = v18 + v17;
      if (v19 <= v20)
      {
        v20 = 0;
      }

      *(a1 + 88) = v20;
      v21 = *(a1 + 80);
      if (*(v21 + 8) > 0xFFuLL)
      {
        if (atomic_exchange((*(v21 + 16) + 128), v20) != 0x80000000 && !*(a1 + 124))
        {
          return 0;
        }

        if (*(a1 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(a1 + 100));
        }

        v22 = 0;
        *(a1 + 124) = 0;
        return v22;
      }

      goto LABEL_47;
    }
  }

  if ((v45 & 1) == 0)
  {
LABEL_47:
    __break(1u);
LABEL_48:
    JUMPOUT(0x19E1ED7A0);
  }

  if (v44 <= 1)
  {
    __break(0xC471u);
    goto LABEL_47;
  }

  *v43 = 3197;
  v33 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v35 = *(a1 + 72);
  v34 = *(a1 + 80);
  if (v33 + 16 >= v35)
  {
    v33 = 0;
  }

  v36 = v33 + 16;
  if (v35 <= v36)
  {
    v36 = 0;
  }

  *(a1 + 88) = v36;
  if (*(v34 + 8) <= 0xFFuLL)
  {
    goto LABEL_47;
  }

  atomic_exchange((*(v34 + 16) + 128), v36);
  *(a1 + 124) = 0;
  v37 = *(a1 + 8);
  v38 = IPC::Encoder::operator new(0x238, v9);
  *v38 = 1158;
  *(v38 + 2) = 0;
  *(v38 + 3) = 0;
  *(v38 + 1) = a3;
  *(v38 + 68) = 0;
  *(v38 + 70) = 0;
  *(v38 + 69) = 0;
  IPC::Encoder::encodeHeader(v38);
  v46 = v38;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v38, *a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v38, a2[1]);
  v22 = IPC::Connection::sendMessageImpl(v37, &v46, 1, 0);
  v40 = v46;
  v46 = 0;
  if (v40)
  {
    IPC::Encoder::~Encoder(v40, v39);
    bmalloc::api::tzoneFree(v41, v42);
  }

  return v22;
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::BindAttribLocation,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 128);
  v7 = INFINITY;
  if (fabs(v6) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v7 = v6 + v8;
  }

  if (*(a1 + 64) != a3)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v50, v7);
    if (v52 != 1)
    {
      return 16;
    }

    v37 = v51;
    if (v51 <= 1)
    {
LABEL_53:
      __break(0xC471u);
      JUMPOUT(0x19E1EDB74);
    }

    v38 = v50;
    *v50 = 3198;
    v39 = v38 + 2;
    if (v37 - 2 < (-v39 & 7 | 8uLL))
    {
      return 18;
    }

    v40 = -v39 & 7;
    *&v39[v40] = a3;
    if (v40 != 7)
    {
      v40 = 6;
    }

    v41 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v43 = *(a1 + 72);
    v42 = *(a1 + 80);
    v44 = v40 + 10;
    if (v41 + 16 >= v43)
    {
      v41 = 0;
    }

    v45 = v44 + v41;
    if (v43 <= v45)
    {
      v45 = 0;
    }

    *(a1 + 88) = v45;
    if (*(v42 + 8) <= 0xFFuLL)
    {
      goto LABEL_52;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v42 + 16) + 128), v45) == 0x80000000);
    *(a1 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v47, v7);
  if (v49 != 1)
  {
    return 16;
  }

  v9 = v47;
  v10 = v48;
  v52 = v48;
  if (v48 <= 1)
  {
    goto LABEL_53;
  }

  *v47 = 1162;
  v11 = v9 + 1;
  v12 = v10 - 2;
  v13 = -v11 & 3 | 4;
  v14 = v12 >= v13;
  v15 = v12 - v13;
  if (v14 && (*(v11 + (-v11 & 3)) = *a2, v16 = v11 + v13, v17 = -v16 & 3 | 4, v14 = v15 >= v17, v18 = v15 - v17, v14))
  {
    *(v16 + (-v16 & 3)) = *(a2 + 4);
    v50 = (v16 + v17);
    v51 = v18;
  }

  else
  {
    v50 = 0;
    v51 = 0;
  }

  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::StreamConnectionEncoder>(&v50, *(a2 + 8));
  if (v50)
  {
    v20 = v52 - v51;
    if (v52 - v51 <= 0x10)
    {
      v20 = 16;
    }

    v21 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v22 = *(a1 + 72);
    if (v21 + 16 >= v22)
    {
      v21 = 0;
    }

    v23 = v21 + v20;
    if (v22 <= v23)
    {
      v23 = 0;
    }

    *(a1 + 88) = v23;
    v24 = *(a1 + 80);
    if (*(v24 + 8) > 0xFFuLL)
    {
      if (atomic_exchange((*(v24 + 16) + 128), v23) == 0x80000000 || *(a1 + 124))
      {
        if (*(a1 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(a1 + 100));
        }

        *(a1 + 124) = 0;
      }

      return 0;
    }

    goto LABEL_52;
  }

  if ((v49 & 1) == 0)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (v48 <= 1)
  {
    __break(0xC471u);
    goto LABEL_52;
  }

  *v47 = 3197;
  v26 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v27 = *(a1 + 72);
  if (v26 + 16 >= v27)
  {
    v26 = 0;
  }

  v28 = v26 + 16;
  if (v27 <= v28)
  {
    v29 = 0;
  }

  else
  {
    v29 = v28;
  }

  *(a1 + 88) = v29;
  v30 = *(a1 + 80);
  if (*(v30 + 8) <= 0xFFuLL)
  {
    goto LABEL_52;
  }

  atomic_exchange((*(v30 + 16) + 128), v29);
  *(a1 + 124) = 0;
  v31 = *(a1 + 8);
  v32 = IPC::Encoder::operator new(0x238, v19);
  *v32 = 1162;
  *(v32 + 2) = 0;
  *(v32 + 3) = 0;
  *(v32 + 1) = a3;
  *(v32 + 68) = 0;
  *(v32 + 70) = 0;
  *(v32 + 69) = 0;
  IPC::Encoder::encodeHeader(v32);
  v50 = v32;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v32, *a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v32, *(a2 + 4));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v32, *(a2 + 8));
  v25 = IPC::Connection::sendMessageImpl(v31, &v50, 1, 0);
  v34 = v50;
  v50 = 0;
  if (v34)
  {
    IPC::Encoder::~Encoder(v34, v33);
    bmalloc::api::tzoneFree(v35, v36);
  }

  return v25;
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::BindBuffer,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
{
  v6 = *(a1 + 128);
  v7 = INFINITY;
  if (fabs(v6) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v7 = v6 + v8;
  }

  if (*(a1 + 64) != a3)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v43, v7);
    if (v45 != 1)
    {
      return 16;
    }

    v23 = v44;
    if (v44 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E1EDF34);
    }

    v24 = v43;
    *v43 = 3198;
    v25 = v24 + 1;
    if (v23 - 2 < (-v25 & 7 | 8uLL))
    {
      return 18;
    }

    v26 = -v25 & 7;
    *(v25 + v26) = a3;
    if (v26 != 7)
    {
      v26 = 6;
    }

    v27 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v29 = *(a1 + 72);
    v28 = *(a1 + 80);
    v30 = v26 + 10;
    if (v27 + 16 >= v29)
    {
      v27 = 0;
    }

    v31 = v30 + v27;
    if (v29 <= v31)
    {
      v31 = 0;
    }

    *(a1 + 88) = v31;
    if (*(v28 + 8) <= 0xFFuLL)
    {
      goto LABEL_47;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v28 + 16) + 128), v31) == 0x80000000);
    *(a1 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v43, v7);
  if (v45 != 1)
  {
    return 16;
  }

  v10 = v44;
  if (v44 <= 1)
  {
    __break(0xC471u);
    goto LABEL_48;
  }

  v11 = v43;
  *v43 = 1163;
  v12 = v11 + 1;
  v13 = -v12 & 3 | 4;
  v14 = v10 - 2 - v13;
  if (v10 - 2 >= v13)
  {
    *(v12 + (-v12 & 3)) = *a2;
    v15 = v12 + v13;
    v16 = -v15 & 3 | 4;
    if (v14 >= v16)
    {
      *(v15 + (-v15 & 3)) = a2[1];
      v17 = v10 - v14 + v16;
      if (v17 <= 0x10)
      {
        v17 = 16;
      }

      v18 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v19 = *(a1 + 72);
      if (v18 + 16 >= v19)
      {
        v18 = 0;
      }

      v20 = v18 + v17;
      if (v19 <= v20)
      {
        v20 = 0;
      }

      *(a1 + 88) = v20;
      v21 = *(a1 + 80);
      if (*(v21 + 8) > 0xFFuLL)
      {
        if (atomic_exchange((*(v21 + 16) + 128), v20) != 0x80000000 && !*(a1 + 124))
        {
          return 0;
        }

        if (*(a1 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(a1 + 100));
        }

        v22 = 0;
        *(a1 + 124) = 0;
        return v22;
      }

      goto LABEL_47;
    }
  }

  if ((v45 & 1) == 0)
  {
LABEL_47:
    __break(1u);
LABEL_48:
    JUMPOUT(0x19E1EDF14);
  }

  if (v44 <= 1)
  {
    __break(0xC471u);
    goto LABEL_47;
  }

  *v43 = 3197;
  v33 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v35 = *(a1 + 72);
  v34 = *(a1 + 80);
  if (v33 + 16 >= v35)
  {
    v33 = 0;
  }

  v36 = v33 + 16;
  if (v35 <= v36)
  {
    v36 = 0;
  }

  *(a1 + 88) = v36;
  if (*(v34 + 8) <= 0xFFuLL)
  {
    goto LABEL_47;
  }

  atomic_exchange((*(v34 + 16) + 128), v36);
  *(a1 + 124) = 0;
  v37 = *(a1 + 8);
  v38 = IPC::Encoder::operator new(0x238, v9);
  *v38 = 1163;
  *(v38 + 2) = 0;
  *(v38 + 3) = 0;
  *(v38 + 1) = a3;
  *(v38 + 68) = 0;
  *(v38 + 70) = 0;
  *(v38 + 69) = 0;
  IPC::Encoder::encodeHeader(v38);
  v46 = v38;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v38, *a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v38, a2[1]);
  v22 = IPC::Connection::sendMessageImpl(v37, &v46, 1, 0);
  v40 = v46;
  v46 = 0;
  if (v40)
  {
    IPC::Encoder::~Encoder(v40, v39);
    bmalloc::api::tzoneFree(v41, v42);
  }

  return v22;
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::BindFramebuffer,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
{
  v6 = *(a1 + 128);
  v7 = INFINITY;
  if (fabs(v6) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v7 = v6 + v8;
  }

  if (*(a1 + 64) != a3)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v43, v7);
    if (v45 != 1)
    {
      return 16;
    }

    v23 = v44;
    if (v44 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E1EE2D4);
    }

    v24 = v43;
    *v43 = 3198;
    v25 = v24 + 1;
    if (v23 - 2 < (-v25 & 7 | 8uLL))
    {
      return 18;
    }

    v26 = -v25 & 7;
    *(v25 + v26) = a3;
    if (v26 != 7)
    {
      v26 = 6;
    }

    v27 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v29 = *(a1 + 72);
    v28 = *(a1 + 80);
    v30 = v26 + 10;
    if (v27 + 16 >= v29)
    {
      v27 = 0;
    }

    v31 = v30 + v27;
    if (v29 <= v31)
    {
      v31 = 0;
    }

    *(a1 + 88) = v31;
    if (*(v28 + 8) <= 0xFFuLL)
    {
      goto LABEL_47;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v28 + 16) + 128), v31) == 0x80000000);
    *(a1 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v43, v7);
  if (v45 != 1)
  {
    return 16;
  }

  v10 = v44;
  if (v44 <= 1)
  {
    __break(0xC471u);
    goto LABEL_48;
  }

  v11 = v43;
  *v43 = 1166;
  v12 = v11 + 1;
  v13 = -v12 & 3 | 4;
  v14 = v10 - 2 - v13;
  if (v10 - 2 >= v13)
  {
    *(v12 + (-v12 & 3)) = *a2;
    v15 = v12 + v13;
    v16 = -v15 & 3 | 4;
    if (v14 >= v16)
    {
      *(v15 + (-v15 & 3)) = a2[1];
      v17 = v10 - v14 + v16;
      if (v17 <= 0x10)
      {
        v17 = 16;
      }

      v18 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v19 = *(a1 + 72);
      if (v18 + 16 >= v19)
      {
        v18 = 0;
      }

      v20 = v18 + v17;
      if (v19 <= v20)
      {
        v20 = 0;
      }

      *(a1 + 88) = v20;
      v21 = *(a1 + 80);
      if (*(v21 + 8) > 0xFFuLL)
      {
        if (atomic_exchange((*(v21 + 16) + 128), v20) != 0x80000000 && !*(a1 + 124))
        {
          return 0;
        }

        if (*(a1 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(a1 + 100));
        }

        v22 = 0;
        *(a1 + 124) = 0;
        return v22;
      }

      goto LABEL_47;
    }
  }

  if ((v45 & 1) == 0)
  {
LABEL_47:
    __break(1u);
LABEL_48:
    JUMPOUT(0x19E1EE2B4);
  }

  if (v44 <= 1)
  {
    __break(0xC471u);
    goto LABEL_47;
  }

  *v43 = 3197;
  v33 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v35 = *(a1 + 72);
  v34 = *(a1 + 80);
  if (v33 + 16 >= v35)
  {
    v33 = 0;
  }

  v36 = v33 + 16;
  if (v35 <= v36)
  {
    v36 = 0;
  }

  *(a1 + 88) = v36;
  if (*(v34 + 8) <= 0xFFuLL)
  {
    goto LABEL_47;
  }

  atomic_exchange((*(v34 + 16) + 128), v36);
  *(a1 + 124) = 0;
  v37 = *(a1 + 8);
  v38 = IPC::Encoder::operator new(0x238, v9);
  *v38 = 1166;
  *(v38 + 2) = 0;
  *(v38 + 3) = 0;
  *(v38 + 1) = a3;
  *(v38 + 68) = 0;
  *(v38 + 70) = 0;
  *(v38 + 69) = 0;
  IPC::Encoder::encodeHeader(v38);
  v46 = v38;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v38, *a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v38, a2[1]);
  v22 = IPC::Connection::sendMessageImpl(v37, &v46, 1, 0);
  v40 = v46;
  v46 = 0;
  if (v40)
  {
    IPC::Encoder::~Encoder(v40, v39);
    bmalloc::api::tzoneFree(v41, v42);
  }

  return v22;
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::BindRenderbuffer,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
{
  v6 = *(a1 + 128);
  v7 = INFINITY;
  if (fabs(v6) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v7 = v6 + v8;
  }

  if (*(a1 + 64) != a3)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v43, v7);
    if (v45 != 1)
    {
      return 16;
    }

    v23 = v44;
    if (v44 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E1EE674);
    }

    v24 = v43;
    *v43 = 3198;
    v25 = v24 + 1;
    if (v23 - 2 < (-v25 & 7 | 8uLL))
    {
      return 18;
    }

    v26 = -v25 & 7;
    *(v25 + v26) = a3;
    if (v26 != 7)
    {
      v26 = 6;
    }

    v27 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v29 = *(a1 + 72);
    v28 = *(a1 + 80);
    v30 = v26 + 10;
    if (v27 + 16 >= v29)
    {
      v27 = 0;
    }

    v31 = v30 + v27;
    if (v29 <= v31)
    {
      v31 = 0;
    }

    *(a1 + 88) = v31;
    if (*(v28 + 8) <= 0xFFuLL)
    {
      goto LABEL_47;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v28 + 16) + 128), v31) == 0x80000000);
    *(a1 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v43, v7);
  if (v45 != 1)
  {
    return 16;
  }

  v10 = v44;
  if (v44 <= 1)
  {
    __break(0xC471u);
    goto LABEL_48;
  }

  v11 = v43;
  *v43 = 1167;
  v12 = v11 + 1;
  v13 = -v12 & 3 | 4;
  v14 = v10 - 2 - v13;
  if (v10 - 2 >= v13)
  {
    *(v12 + (-v12 & 3)) = *a2;
    v15 = v12 + v13;
    v16 = -v15 & 3 | 4;
    if (v14 >= v16)
    {
      *(v15 + (-v15 & 3)) = a2[1];
      v17 = v10 - v14 + v16;
      if (v17 <= 0x10)
      {
        v17 = 16;
      }

      v18 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v19 = *(a1 + 72);
      if (v18 + 16 >= v19)
      {
        v18 = 0;
      }

      v20 = v18 + v17;
      if (v19 <= v20)
      {
        v20 = 0;
      }

      *(a1 + 88) = v20;
      v21 = *(a1 + 80);
      if (*(v21 + 8) > 0xFFuLL)
      {
        if (atomic_exchange((*(v21 + 16) + 128), v20) != 0x80000000 && !*(a1 + 124))
        {
          return 0;
        }

        if (*(a1 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(a1 + 100));
        }

        v22 = 0;
        *(a1 + 124) = 0;
        return v22;
      }

      goto LABEL_47;
    }
  }

  if ((v45 & 1) == 0)
  {
LABEL_47:
    __break(1u);
LABEL_48:
    JUMPOUT(0x19E1EE654);
  }

  if (v44 <= 1)
  {
    __break(0xC471u);
    goto LABEL_47;
  }

  *v43 = 3197;
  v33 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v35 = *(a1 + 72);
  v34 = *(a1 + 80);
  if (v33 + 16 >= v35)
  {
    v33 = 0;
  }

  v36 = v33 + 16;
  if (v35 <= v36)
  {
    v36 = 0;
  }

  *(a1 + 88) = v36;
  if (*(v34 + 8) <= 0xFFuLL)
  {
    goto LABEL_47;
  }

  atomic_exchange((*(v34 + 16) + 128), v36);
  *(a1 + 124) = 0;
  v37 = *(a1 + 8);
  v38 = IPC::Encoder::operator new(0x238, v9);
  *v38 = 1167;
  *(v38 + 2) = 0;
  *(v38 + 3) = 0;
  *(v38 + 1) = a3;
  *(v38 + 68) = 0;
  *(v38 + 70) = 0;
  *(v38 + 69) = 0;
  IPC::Encoder::encodeHeader(v38);
  v46 = v38;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v38, *a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v38, a2[1]);
  v22 = IPC::Connection::sendMessageImpl(v37, &v46, 1, 0);
  v40 = v46;
  v46 = 0;
  if (v40)
  {
    IPC::Encoder::~Encoder(v40, v39);
    bmalloc::api::tzoneFree(v41, v42);
  }

  return v22;
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::BindTexture,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
{
  v6 = *(a1 + 128);
  v7 = INFINITY;
  if (fabs(v6) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v7 = v6 + v8;
  }

  if (*(a1 + 64) != a3)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v43, v7);
    if (v45 != 1)
    {
      return 16;
    }

    v23 = v44;
    if (v44 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E1EEA14);
    }

    v24 = v43;
    *v43 = 3198;
    v25 = v24 + 1;
    if (v23 - 2 < (-v25 & 7 | 8uLL))
    {
      return 18;
    }

    v26 = -v25 & 7;
    *(v25 + v26) = a3;
    if (v26 != 7)
    {
      v26 = 6;
    }

    v27 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v29 = *(a1 + 72);
    v28 = *(a1 + 80);
    v30 = v26 + 10;
    if (v27 + 16 >= v29)
    {
      v27 = 0;
    }

    v31 = v30 + v27;
    if (v29 <= v31)
    {
      v31 = 0;
    }

    *(a1 + 88) = v31;
    if (*(v28 + 8) <= 0xFFuLL)
    {
      goto LABEL_47;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v28 + 16) + 128), v31) == 0x80000000);
    *(a1 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v43, v7);
  if (v45 != 1)
  {
    return 16;
  }

  v10 = v44;
  if (v44 <= 1)
  {
    __break(0xC471u);
    goto LABEL_48;
  }

  v11 = v43;
  *v43 = 1169;
  v12 = v11 + 1;
  v13 = -v12 & 3 | 4;
  v14 = v10 - 2 - v13;
  if (v10 - 2 >= v13)
  {
    *(v12 + (-v12 & 3)) = *a2;
    v15 = v12 + v13;
    v16 = -v15 & 3 | 4;
    if (v14 >= v16)
    {
      *(v15 + (-v15 & 3)) = a2[1];
      v17 = v10 - v14 + v16;
      if (v17 <= 0x10)
      {
        v17 = 16;
      }

      v18 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v19 = *(a1 + 72);
      if (v18 + 16 >= v19)
      {
        v18 = 0;
      }

      v20 = v18 + v17;
      if (v19 <= v20)
      {
        v20 = 0;
      }

      *(a1 + 88) = v20;
      v21 = *(a1 + 80);
      if (*(v21 + 8) > 0xFFuLL)
      {
        if (atomic_exchange((*(v21 + 16) + 128), v20) != 0x80000000 && !*(a1 + 124))
        {
          return 0;
        }

        if (*(a1 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(a1 + 100));
        }

        v22 = 0;
        *(a1 + 124) = 0;
        return v22;
      }

      goto LABEL_47;
    }
  }

  if ((v45 & 1) == 0)
  {
LABEL_47:
    __break(1u);
LABEL_48:
    JUMPOUT(0x19E1EE9F4);
  }

  if (v44 <= 1)
  {
    __break(0xC471u);
    goto LABEL_47;
  }

  *v43 = 3197;
  v33 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v35 = *(a1 + 72);
  v34 = *(a1 + 80);
  if (v33 + 16 >= v35)
  {
    v33 = 0;
  }

  v36 = v33 + 16;
  if (v35 <= v36)
  {
    v36 = 0;
  }

  *(a1 + 88) = v36;
  if (*(v34 + 8) <= 0xFFuLL)
  {
    goto LABEL_47;
  }

  atomic_exchange((*(v34 + 16) + 128), v36);
  *(a1 + 124) = 0;
  v37 = *(a1 + 8);
  v38 = IPC::Encoder::operator new(0x238, v9);
  *v38 = 1169;
  *(v38 + 2) = 0;
  *(v38 + 3) = 0;
  *(v38 + 1) = a3;
  *(v38 + 68) = 0;
  *(v38 + 70) = 0;
  *(v38 + 69) = 0;
  IPC::Encoder::encodeHeader(v38);
  v46 = v38;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v38, *a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v38, a2[1]);
  v22 = IPC::Connection::sendMessageImpl(v37, &v46, 1, 0);
  v40 = v46;
  v46 = 0;
  if (v40)
  {
    IPC::Encoder::~Encoder(v40, v39);
    bmalloc::api::tzoneFree(v41, v42);
  }

  return v22;
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::BlendColor,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, float *a2, uint64_t a3)
{
  v6 = *(a1 + 128);
  v7 = INFINITY;
  if (fabs(v6) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v7 = v6 + v8;
  }

  if (*(a1 + 64) != a3)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v50, v7);
    if (v52 != 1)
    {
      return 16;
    }

    v30 = v51;
    if (v51 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E1EEE14);
    }

    v31 = v50;
    *v50 = 3198;
    v32 = v31 + 1;
    if (v30 - 2 < (-v32 & 7 | 8uLL))
    {
      return 18;
    }

    v33 = -v32 & 7;
    *(v32 + v33) = a3;
    if (v33 != 7)
    {
      v33 = 6;
    }

    v34 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v36 = *(a1 + 72);
    v35 = *(a1 + 80);
    v37 = v33 + 10;
    if (v34 + 16 >= v36)
    {
      v34 = 0;
    }

    v38 = v37 + v34;
    if (v36 <= v38)
    {
      v38 = 0;
    }

    *(a1 + 88) = v38;
    if (*(v35 + 8) <= 0xFFuLL)
    {
      goto LABEL_49;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v35 + 16) + 128), v38) == 0x80000000);
    *(a1 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v50, v7);
  if (v52 != 1)
  {
    return 16;
  }

  v10 = v51;
  if (v51 <= 1)
  {
    __break(0xC471u);
    goto LABEL_50;
  }

  v11 = v50;
  *v50 = 1172;
  v12 = v11 + 1;
  v13 = -v12 & 3 | 4;
  v14 = v10 - 2 - v13;
  if (v10 - 2 >= v13)
  {
    *(v12 + (-v12 & 3)) = *a2;
    v15 = v12 + v13;
    v16 = -v15 & 3 | 4;
    v17 = v14 - v16;
    if (v14 >= v16)
    {
      *(v15 + (-v15 & 3)) = a2[1];
      v18 = v15 + v16;
      v19 = -(v15 + v16);
      v20 = v19 & 3 | 4;
      v21 = v17 - v20;
      if (v17 >= v20)
      {
        *(v18 + (v19 & 3)) = a2[2];
        v22 = v18 + v20;
        v23 = -v22 & 3 | 4;
        if (v21 >= v23)
        {
          *(v22 + (-v22 & 3)) = a2[3];
          v24 = v10 - v21 + v23;
          if (v24 <= 0x10)
          {
            v24 = 16;
          }

          v25 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
          v26 = *(a1 + 72);
          if (v25 + 16 >= v26)
          {
            v25 = 0;
          }

          v27 = v25 + v24;
          if (v26 <= v27)
          {
            v27 = 0;
          }

          *(a1 + 88) = v27;
          v28 = *(a1 + 80);
          if (*(v28 + 8) > 0xFFuLL)
          {
            if (atomic_exchange((*(v28 + 16) + 128), v27) != 0x80000000 && !*(a1 + 124))
            {
              return 0;
            }

            if (*(a1 + 112) == 1)
            {
              MEMORY[0x19EB16320](*(a1 + 100));
            }

            v29 = 0;
            *(a1 + 124) = 0;
            return v29;
          }

          goto LABEL_49;
        }
      }
    }
  }

  if ((v52 & 1) == 0)
  {
LABEL_49:
    __break(1u);
LABEL_50:
    JUMPOUT(0x19E1EEDF4);
  }

  if (v51 <= 1)
  {
    __break(0xC471u);
    goto LABEL_49;
  }

  *v50 = 3197;
  v40 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v42 = *(a1 + 72);
  v41 = *(a1 + 80);
  if (v40 + 16 >= v42)
  {
    v40 = 0;
  }

  v43 = v40 + 16;
  if (v42 <= v43)
  {
    v43 = 0;
  }

  *(a1 + 88) = v43;
  if (*(v41 + 8) <= 0xFFuLL)
  {
    goto LABEL_49;
  }

  atomic_exchange((*(v41 + 16) + 128), v43);
  *(a1 + 124) = 0;
  v44 = *(a1 + 8);
  v45 = IPC::Encoder::operator new(0x238, v9);
  *v45 = 1172;
  *(v45 + 2) = 0;
  *(v45 + 3) = 0;
  *(v45 + 1) = a3;
  *(v45 + 68) = 0;
  *(v45 + 70) = 0;
  *(v45 + 69) = 0;
  IPC::Encoder::encodeHeader(v45);
  v53 = v45;
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(v45, *a2);
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(v45, a2[1]);
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(v45, a2[2]);
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(v45, a2[3]);
  v29 = IPC::Connection::sendMessageImpl(v44, &v53, 1, 0);
  v47 = v53;
  v53 = 0;
  if (v47)
  {
    IPC::Encoder::~Encoder(v47, v46);
    bmalloc::api::tzoneFree(v48, v49);
  }

  return v29;
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::BlendEquation,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
{
  v6 = *(a1 + 128);
  v7 = INFINITY;
  if (fabs(v6) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v7 = v6 + v8;
  }

  if (*(a1 + 64) != a3)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v38, v7);
    if (v40 != 1)
    {
      return 16;
    }

    v18 = v39;
    if (v39 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E1EF164);
    }

    v19 = v38;
    *v38 = 3198;
    v20 = v19 + 1;
    if (v18 - 2 < (-v20 & 7 | 8uLL))
    {
      return 18;
    }

    v21 = -v20 & 7;
    *(v20 + v21) = a3;
    if (v21 != 7)
    {
      v21 = 6;
    }

    v22 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v24 = *(a1 + 72);
    v23 = *(a1 + 80);
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

    *(a1 + 88) = v26;
    if (*(v23 + 8) <= 0xFFuLL)
    {
      goto LABEL_44;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v23 + 16) + 128), v26) == 0x80000000);
    *(a1 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v38, v7);
  if (v40 != 1)
  {
    return 16;
  }

  v10 = v39;
  if (v39 <= 1)
  {
    __break(0xC471u);
    goto LABEL_45;
  }

  v11 = v38;
  *v38 = 1173;
  v12 = v11 + 1;
  if (v10 - 2 >= (-v12 & 3 | 4uLL))
  {
    *(v12 + (-v12 & 3)) = *a2;
    v13 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v15 = *(a1 + 72);
    v14 = *(a1 + 80);
    if (v13 + 16 >= v15)
    {
      v13 = 0;
    }

    v16 = v13 + 16;
    if (v15 <= v16)
    {
      v16 = 0;
    }

    *(a1 + 88) = v16;
    if (*(v14 + 8) > 0xFFuLL)
    {
      if (atomic_exchange((*(v14 + 16) + 128), v16) != 0x80000000 && !*(a1 + 124))
      {
        return 0;
      }

      if (*(a1 + 112) == 1)
      {
        MEMORY[0x19EB16320](*(a1 + 100));
      }

      v17 = 0;
      *(a1 + 124) = 0;
      return v17;
    }

    goto LABEL_44;
  }

  if ((v40 & 1) == 0)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    JUMPOUT(0x19E1EF144);
  }

  if (v39 <= 1)
  {
    __break(0xC471u);
    goto LABEL_44;
  }

  *v38 = 3197;
  v28 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v30 = *(a1 + 72);
  v29 = *(a1 + 80);
  if (v28 + 16 >= v30)
  {
    v28 = 0;
  }

  v31 = v28 + 16;
  if (v30 <= v31)
  {
    v31 = 0;
  }

  *(a1 + 88) = v31;
  if (*(v29 + 8) <= 0xFFuLL)
  {
    goto LABEL_44;
  }

  atomic_exchange((*(v29 + 16) + 128), v31);
  *(a1 + 124) = 0;
  v32 = *(a1 + 8);
  v33 = IPC::Encoder::operator new(0x238, v9);
  *v33 = 1173;
  *(v33 + 2) = 0;
  *(v33 + 3) = 0;
  *(v33 + 1) = a3;
  *(v33 + 68) = 0;
  *(v33 + 70) = 0;
  *(v33 + 69) = 0;
  IPC::Encoder::encodeHeader(v33);
  v41 = v33;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v33, *a2);
  v17 = IPC::Connection::sendMessageImpl(v32, &v41, 1, 0);
  v35 = v41;
  v41 = 0;
  if (v35)
  {
    IPC::Encoder::~Encoder(v35, v34);
    bmalloc::api::tzoneFree(v36, v37);
  }

  return v17;
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::BlendEquationSeparate,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
{
  v6 = *(a1 + 128);
  v7 = INFINITY;
  if (fabs(v6) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v7 = v6 + v8;
  }

  if (*(a1 + 64) != a3)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v43, v7);
    if (v45 != 1)
    {
      return 16;
    }

    v23 = v44;
    if (v44 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E1EF504);
    }

    v24 = v43;
    *v43 = 3198;
    v25 = v24 + 1;
    if (v23 - 2 < (-v25 & 7 | 8uLL))
    {
      return 18;
    }

    v26 = -v25 & 7;
    *(v25 + v26) = a3;
    if (v26 != 7)
    {
      v26 = 6;
    }

    v27 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v29 = *(a1 + 72);
    v28 = *(a1 + 80);
    v30 = v26 + 10;
    if (v27 + 16 >= v29)
    {
      v27 = 0;
    }

    v31 = v30 + v27;
    if (v29 <= v31)
    {
      v31 = 0;
    }

    *(a1 + 88) = v31;
    if (*(v28 + 8) <= 0xFFuLL)
    {
      goto LABEL_47;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v28 + 16) + 128), v31) == 0x80000000);
    *(a1 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v43, v7);
  if (v45 != 1)
  {
    return 16;
  }

  v10 = v44;
  if (v44 <= 1)
  {
    __break(0xC471u);
    goto LABEL_48;
  }

  v11 = v43;
  *v43 = 1174;
  v12 = v11 + 1;
  v13 = -v12 & 3 | 4;
  v14 = v10 - 2 - v13;
  if (v10 - 2 >= v13)
  {
    *(v12 + (-v12 & 3)) = *a2;
    v15 = v12 + v13;
    v16 = -v15 & 3 | 4;
    if (v14 >= v16)
    {
      *(v15 + (-v15 & 3)) = a2[1];
      v17 = v10 - v14 + v16;
      if (v17 <= 0x10)
      {
        v17 = 16;
      }

      v18 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v19 = *(a1 + 72);
      if (v18 + 16 >= v19)
      {
        v18 = 0;
      }

      v20 = v18 + v17;
      if (v19 <= v20)
      {
        v20 = 0;
      }

      *(a1 + 88) = v20;
      v21 = *(a1 + 80);
      if (*(v21 + 8) > 0xFFuLL)
      {
        if (atomic_exchange((*(v21 + 16) + 128), v20) != 0x80000000 && !*(a1 + 124))
        {
          return 0;
        }

        if (*(a1 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(a1 + 100));
        }

        v22 = 0;
        *(a1 + 124) = 0;
        return v22;
      }

      goto LABEL_47;
    }
  }

  if ((v45 & 1) == 0)
  {
LABEL_47:
    __break(1u);
LABEL_48:
    JUMPOUT(0x19E1EF4E4);
  }

  if (v44 <= 1)
  {
    __break(0xC471u);
    goto LABEL_47;
  }

  *v43 = 3197;
  v33 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v35 = *(a1 + 72);
  v34 = *(a1 + 80);
  if (v33 + 16 >= v35)
  {
    v33 = 0;
  }

  v36 = v33 + 16;
  if (v35 <= v36)
  {
    v36 = 0;
  }

  *(a1 + 88) = v36;
  if (*(v34 + 8) <= 0xFFuLL)
  {
    goto LABEL_47;
  }

  atomic_exchange((*(v34 + 16) + 128), v36);
  *(a1 + 124) = 0;
  v37 = *(a1 + 8);
  v38 = IPC::Encoder::operator new(0x238, v9);
  *v38 = 1174;
  *(v38 + 2) = 0;
  *(v38 + 3) = 0;
  *(v38 + 1) = a3;
  *(v38 + 68) = 0;
  *(v38 + 70) = 0;
  *(v38 + 69) = 0;
  IPC::Encoder::encodeHeader(v38);
  v46 = v38;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v38, *a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v38, a2[1]);
  v22 = IPC::Connection::sendMessageImpl(v37, &v46, 1, 0);
  v40 = v46;
  v46 = 0;
  if (v40)
  {
    IPC::Encoder::~Encoder(v40, v39);
    bmalloc::api::tzoneFree(v41, v42);
  }

  return v22;
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::BlendFunc,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
{
  v6 = *(a1 + 128);
  v7 = INFINITY;
  if (fabs(v6) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v7 = v6 + v8;
  }

  if (*(a1 + 64) != a3)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v43, v7);
    if (v45 != 1)
    {
      return 16;
    }

    v23 = v44;
    if (v44 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E1EF8A4);
    }

    v24 = v43;
    *v43 = 3198;
    v25 = v24 + 1;
    if (v23 - 2 < (-v25 & 7 | 8uLL))
    {
      return 18;
    }

    v26 = -v25 & 7;
    *(v25 + v26) = a3;
    if (v26 != 7)
    {
      v26 = 6;
    }

    v27 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v29 = *(a1 + 72);
    v28 = *(a1 + 80);
    v30 = v26 + 10;
    if (v27 + 16 >= v29)
    {
      v27 = 0;
    }

    v31 = v30 + v27;
    if (v29 <= v31)
    {
      v31 = 0;
    }

    *(a1 + 88) = v31;
    if (*(v28 + 8) <= 0xFFuLL)
    {
      goto LABEL_47;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v28 + 16) + 128), v31) == 0x80000000);
    *(a1 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v43, v7);
  if (v45 != 1)
  {
    return 16;
  }

  v10 = v44;
  if (v44 <= 1)
  {
    __break(0xC471u);
    goto LABEL_48;
  }

  v11 = v43;
  *v43 = 1177;
  v12 = v11 + 1;
  v13 = -v12 & 3 | 4;
  v14 = v10 - 2 - v13;
  if (v10 - 2 >= v13)
  {
    *(v12 + (-v12 & 3)) = *a2;
    v15 = v12 + v13;
    v16 = -v15 & 3 | 4;
    if (v14 >= v16)
    {
      *(v15 + (-v15 & 3)) = a2[1];
      v17 = v10 - v14 + v16;
      if (v17 <= 0x10)
      {
        v17 = 16;
      }

      v18 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v19 = *(a1 + 72);
      if (v18 + 16 >= v19)
      {
        v18 = 0;
      }

      v20 = v18 + v17;
      if (v19 <= v20)
      {
        v20 = 0;
      }

      *(a1 + 88) = v20;
      v21 = *(a1 + 80);
      if (*(v21 + 8) > 0xFFuLL)
      {
        if (atomic_exchange((*(v21 + 16) + 128), v20) != 0x80000000 && !*(a1 + 124))
        {
          return 0;
        }

        if (*(a1 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(a1 + 100));
        }

        v22 = 0;
        *(a1 + 124) = 0;
        return v22;
      }

      goto LABEL_47;
    }
  }

  if ((v45 & 1) == 0)
  {
LABEL_47:
    __break(1u);
LABEL_48:
    JUMPOUT(0x19E1EF884);
  }

  if (v44 <= 1)
  {
    __break(0xC471u);
    goto LABEL_47;
  }

  *v43 = 3197;
  v33 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v35 = *(a1 + 72);
  v34 = *(a1 + 80);
  if (v33 + 16 >= v35)
  {
    v33 = 0;
  }

  v36 = v33 + 16;
  if (v35 <= v36)
  {
    v36 = 0;
  }

  *(a1 + 88) = v36;
  if (*(v34 + 8) <= 0xFFuLL)
  {
    goto LABEL_47;
  }

  atomic_exchange((*(v34 + 16) + 128), v36);
  *(a1 + 124) = 0;
  v37 = *(a1 + 8);
  v38 = IPC::Encoder::operator new(0x238, v9);
  *v38 = 1177;
  *(v38 + 2) = 0;
  *(v38 + 3) = 0;
  *(v38 + 1) = a3;
  *(v38 + 68) = 0;
  *(v38 + 70) = 0;
  *(v38 + 69) = 0;
  IPC::Encoder::encodeHeader(v38);
  v46 = v38;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v38, *a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v38, a2[1]);
  v22 = IPC::Connection::sendMessageImpl(v37, &v46, 1, 0);
  v40 = v46;
  v46 = 0;
  if (v40)
  {
    IPC::Encoder::~Encoder(v40, v39);
    bmalloc::api::tzoneFree(v41, v42);
  }

  return v22;
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::BlendFuncSeparate,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
{
  v6 = *(a1 + 128);
  v7 = INFINITY;
  if (fabs(v6) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v7 = v6 + v8;
  }

  if (*(a1 + 64) != a3)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v50, v7);
    if (v52 != 1)
    {
      return 16;
    }

    v30 = v51;
    if (v51 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E1EFCA4);
    }

    v31 = v50;
    *v50 = 3198;
    v32 = v31 + 1;
    if (v30 - 2 < (-v32 & 7 | 8uLL))
    {
      return 18;
    }

    v33 = -v32 & 7;
    *(v32 + v33) = a3;
    if (v33 != 7)
    {
      v33 = 6;
    }

    v34 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v36 = *(a1 + 72);
    v35 = *(a1 + 80);
    v37 = v33 + 10;
    if (v34 + 16 >= v36)
    {
      v34 = 0;
    }

    v38 = v37 + v34;
    if (v36 <= v38)
    {
      v38 = 0;
    }

    *(a1 + 88) = v38;
    if (*(v35 + 8) <= 0xFFuLL)
    {
      goto LABEL_49;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v35 + 16) + 128), v38) == 0x80000000);
    *(a1 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v50, v7);
  if (v52 != 1)
  {
    return 16;
  }

  v10 = v51;
  if (v51 <= 1)
  {
    __break(0xC471u);
    goto LABEL_50;
  }

  v11 = v50;
  *v50 = 1178;
  v12 = v11 + 1;
  v13 = -v12 & 3 | 4;
  v14 = v10 - 2 - v13;
  if (v10 - 2 >= v13)
  {
    *(v12 + (-v12 & 3)) = *a2;
    v15 = v12 + v13;
    v16 = -v15 & 3 | 4;
    v17 = v14 - v16;
    if (v14 >= v16)
    {
      *(v15 + (-v15 & 3)) = a2[1];
      v18 = v15 + v16;
      v19 = -(v15 + v16);
      v20 = v19 & 3 | 4;
      v21 = v17 - v20;
      if (v17 >= v20)
      {
        *(v18 + (v19 & 3)) = a2[2];
        v22 = v18 + v20;
        v23 = -v22 & 3 | 4;
        if (v21 >= v23)
        {
          *(v22 + (-v22 & 3)) = a2[3];
          v24 = v10 - v21 + v23;
          if (v24 <= 0x10)
          {
            v24 = 16;
          }

          v25 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
          v26 = *(a1 + 72);
          if (v25 + 16 >= v26)
          {
            v25 = 0;
          }

          v27 = v25 + v24;
          if (v26 <= v27)
          {
            v27 = 0;
          }

          *(a1 + 88) = v27;
          v28 = *(a1 + 80);
          if (*(v28 + 8) > 0xFFuLL)
          {
            if (atomic_exchange((*(v28 + 16) + 128), v27) != 0x80000000 && !*(a1 + 124))
            {
              return 0;
            }

            if (*(a1 + 112) == 1)
            {
              MEMORY[0x19EB16320](*(a1 + 100));
            }

            v29 = 0;
            *(a1 + 124) = 0;
            return v29;
          }

          goto LABEL_49;
        }
      }
    }
  }

  if ((v52 & 1) == 0)
  {
LABEL_49:
    __break(1u);
LABEL_50:
    JUMPOUT(0x19E1EFC84);
  }

  if (v51 <= 1)
  {
    __break(0xC471u);
    goto LABEL_49;
  }

  *v50 = 3197;
  v40 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v42 = *(a1 + 72);
  v41 = *(a1 + 80);
  if (v40 + 16 >= v42)
  {
    v40 = 0;
  }

  v43 = v40 + 16;
  if (v42 <= v43)
  {
    v43 = 0;
  }

  *(a1 + 88) = v43;
  if (*(v41 + 8) <= 0xFFuLL)
  {
    goto LABEL_49;
  }

  atomic_exchange((*(v41 + 16) + 128), v43);
  *(a1 + 124) = 0;
  v44 = *(a1 + 8);
  v45 = IPC::Encoder::operator new(0x238, v9);
  *v45 = 1178;
  *(v45 + 2) = 0;
  *(v45 + 3) = 0;
  *(v45 + 1) = a3;
  *(v45 + 68) = 0;
  *(v45 + 70) = 0;
  *(v45 + 69) = 0;
  IPC::Encoder::encodeHeader(v45);
  v53 = v45;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v45, *a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v45, a2[1]);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v45, a2[2]);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v45, a2[3]);
  v29 = IPC::Connection::sendMessageImpl(v44, &v53, 1, 0);
  v47 = v53;
  v53 = 0;
  if (v47)
  {
    IPC::Encoder::~Encoder(v47, v46);
    bmalloc::api::tzoneFree(v48, v49);
  }

  return v29;
}

uint64_t IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::CheckFramebufferStatus,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>@<X0>(uint64_t a1@<X0>, int *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a1 + 128);
  v9 = INFINITY;
  if (fabs(v8) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v9 = v8 + v10;
  }

  if (*(a1 + 64) != a3)
  {
    goto LABEL_49;
  }

LABEL_4:
  result = IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v74, v9);
  if ((v76 & 1) == 0)
  {
LABEL_60:
    v55 = 16;
LABEL_61:
    *a4 = v55;
    goto LABEL_62;
  }

  if (WTF::ObjectIdentifierGeneric<IPC::SyncRequestIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    goto LABEL_92;
  }

  v13 = v74;
  v12 = v75;
  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  result = IPC::Connection::pushPendingSyncRequestID(*(a1 + 8), IdentifierInternal);
  if (!result)
  {
    v31 = 12;
LABEL_46:
    *a4 = v31;
LABEL_62:
    v41 = 1;
    goto LABEL_63;
  }

  if (v12 <= 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E1F02B4);
  }

  *v13 = 4029;
  v16 = v13 + 1;
  v17 = -v16 & 7 | 8;
  v18 = v12 - 2 - v17;
  if (v12 - 2 >= v17)
  {
    *(v16 + (-v16 & 7)) = IdentifierInternal;
    v19 = v16 + v17;
    v20 = -v19 & 3 | 4;
    if (v18 >= v20)
    {
      *&v19[-v19 & 3] = *a2;
      v21 = v12 - v18 + v20;
      if (v21 <= 0x10)
      {
        v21 = 16;
      }

      v22 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v23 = *(a1 + 72);
      if (v22 + 16 >= v23)
      {
        v22 = 0;
      }

      v24 = v22 + v21;
      if (v23 <= v24)
      {
        v24 = 0;
      }

      *(a1 + 88) = v24;
      v25 = *(a1 + 80);
      if (*(v25 + 8) <= 0xFFuLL)
      {
        goto LABEL_48;
      }

      if (atomic_exchange((*(v25 + 16) + 128), v24) == 0x80000000 || *(a1 + 124))
      {
        if (*(a1 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(a1 + 100));
        }

        *(a1 + 124) = 0;
      }

      a2 = 0x80000000;
      while (1)
      {
        v26 = *(a1 + 80);
        if (*(v26 + 8) <= 0xFFuLL)
        {
          goto LABEL_48;
        }

        v27 = atomic_exchange(*(v26 + 16), 0x80000000uLL);
        v28 = *(a1 + 80);
        if (*(v28 + 8) <= 0xFFuLL)
        {
          goto LABEL_48;
        }

        if (!(v27 | atomic_load_explicit((*(v28 + 16) + 128), memory_order_acquire) & 0xFFFFFFFF7FFFFFFFLL))
        {
          break;
        }

        if (*(a1 + 112) == 1)
        {
          v29 = IPC::Semaphore::waitFor((a1 + 104), v9);
          if (v29)
          {
            WTF::ApproximateTime::now(v29);
            if (v30 < v9)
            {
              continue;
            }
          }
        }

        result = IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
        v31 = 17;
        goto LABEL_46;
      }

      v32 = *(a1 + 80);
      if (*(v32 + 8) <= 0xFFuLL)
      {
        goto LABEL_48;
      }

      atomic_store(0, *(v32 + 16));
      *(a1 + 88) = 0;
      v33 = *(a1 + 80);
      v34 = *(v33 + 8);
      if (v34 <= 0xFF)
      {
        goto LABEL_48;
      }

      v35 = *(a1 + 72);
      v36 = *(v33 + 16);
      a3 = v34 - 256;
      if (v35)
      {
        v44 = v35 - 1;
        v45 = a3 >= v44;
        a3 = v44;
        if (!v45)
        {
          goto LABEL_48;
        }
      }

      v37 = IPC::Decoder::operator new(0x58, v15);
      if (*(IPC::Decoder::Decoder(v37, v36 + 256, a3, *(a1 + 64)) + 25) == 3197)
      {
        IPC::Decoder::~Decoder(v37);
        bmalloc::api::tzoneFree(v38, v39);
        IPC::Connection::waitForSyncReply(*(a1 + 8), IdentifierInternal, 0xFBDu, &v79, v9);
        v40 = v80;
        if (v80)
        {
          if (v80 == 255)
          {
            v73 = IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
            mpark::throw_bad_variant_access(v73);
          }

          v31 = v79;
          result = IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
          if (v40 != 1)
          {
LABEL_38:
            mpark::throw_bad_variant_access(result);
          }

          goto LABEL_46;
        }

        v37 = v79;
      }

      IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
      if (*(v37 + 25) == 3194)
      {
        v31 = 11;
      }

      else
      {
        result = IPC::Decoder::decode<std::tuple<unsigned int>>(v37);
        if ((result & 0xFF00000000) != 0)
        {
          v41 = 0;
          *a4 = v37;
          *(a4 + 8) = result;
LABEL_63:
          *(a4 + 16) = v41;
          return result;
        }

        v31 = 14;
      }

      IPC::Decoder::~Decoder(v37);
      result = bmalloc::api::tzoneFree(v42, v43);
      goto LABEL_46;
    }
  }

  IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
  if ((v76 & 1) == 0)
  {
    while (1)
    {
LABEL_48:
      __break(1u);
LABEL_49:
      result = IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v74, v9);
      if (v76 != 1)
      {
        goto LABEL_60;
      }

      v46 = v75;
      if (v75 <= 1)
      {
        __break(0xC471u);
        JUMPOUT(0x19E1F02DCLL);
      }

      v47 = v74;
      *v74 = 3198;
      v48 = v47 + 1;
      if (v46 - 2 < (-v48 & 7 | 8uLL))
      {
        break;
      }

      v49 = -v48 & 7;
      *(v48 + v49) = a3;
      if (v49 != 7)
      {
        v49 = 6;
      }

      v50 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v52 = *(a1 + 72);
      v51 = *(a1 + 80);
      v53 = v49 + 10;
      if (v50 + 16 >= v52)
      {
        v50 = 0;
      }

      v54 = v53 + v50;
      if (v52 <= v54)
      {
        v54 = 0;
      }

      *(a1 + 88) = v54;
      if (*(v51 + 8) > 0xFFuLL)
      {
        IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v51 + 16) + 128), v54) == 0x80000000);
        *(a1 + 64) = a3;
        goto LABEL_4;
      }
    }

    v55 = 18;
    goto LABEL_61;
  }

  if (v75 <= 1)
  {
LABEL_92:
    __break(0xC471u);
    JUMPOUT(0x19E1F0294);
  }

  *v74 = 3197;
  v56 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v57 = *(a1 + 72);
  if (v56 + 16 >= v57)
  {
    v56 = 0;
  }

  v58 = v56 + 16;
  if (v57 <= v58)
  {
    v59 = 0;
  }

  else
  {
    v59 = v58;
  }

  *(a1 + 88) = v59;
  v60 = *(a1 + 80);
  if (*(v60 + 8) <= 0xFFuLL)
  {
    goto LABEL_48;
  }

  atomic_exchange((*(v60 + 16) + 128), v59);
  *(a1 + 124) = 0;
  v61 = *(a1 + 8);
  IPC::Connection::createSyncMessageEncoder(0xFBD, a3, &v79);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v79, *a2);
  result = IPC::Connection::sendSyncMessage(v61, v80, &v79, 0, &v77, v9);
  if (v78)
  {
    if (v78 != 1)
    {
      goto LABEL_38;
    }

    *a4 = v77;
    *(a4 + 16) = 1;
    goto LABEL_82;
  }

  v63 = v77;
  v77 = 0;
  if (*(v63 + 25) == 3194)
  {
    v64 = 11;
  }

  else
  {
    v65 = IPC::Decoder::decode<std::tuple<unsigned int>>(v63);
    if ((v65 & 0xFF00000000) != 0)
    {
      *a4 = v63;
      *(a4 + 8) = v65;
      *(a4 + 16) = 0;
      goto LABEL_82;
    }

    v64 = 14;
  }

  *a4 = v64;
  *(a4 + 16) = 1;
  IPC::Decoder::~Decoder(v63);
  bmalloc::api::tzoneFree(v66, v67);
LABEL_82:
  if (!v78)
  {
    v68 = v77;
    v77 = 0;
    if (v68)
    {
      IPC::Decoder::~Decoder(v68);
      bmalloc::api::tzoneFree(v71, v72);
    }
  }

  result = v79;
  v79 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v62);
    return bmalloc::api::tzoneFree(v69, v70);
  }

  return result;
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::Clear,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
{
  v6 = *(a1 + 128);
  v7 = INFINITY;
  if (fabs(v6) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v7 = v6 + v8;
  }

  if (*(a1 + 64) != a3)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v38, v7);
    if (v40 != 1)
    {
      return 16;
    }

    v18 = v39;
    if (v39 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E1F062CLL);
    }

    v19 = v38;
    *v38 = 3198;
    v20 = v19 + 1;
    if (v18 - 2 < (-v20 & 7 | 8uLL))
    {
      return 18;
    }

    v21 = -v20 & 7;
    *(v20 + v21) = a3;
    if (v21 != 7)
    {
      v21 = 6;
    }

    v22 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v24 = *(a1 + 72);
    v23 = *(a1 + 80);
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

    *(a1 + 88) = v26;
    if (*(v23 + 8) <= 0xFFuLL)
    {
      goto LABEL_44;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v23 + 16) + 128), v26) == 0x80000000);
    *(a1 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v38, v7);
  if (v40 != 1)
  {
    return 16;
  }

  v10 = v39;
  if (v39 <= 1)
  {
    __break(0xC471u);
    goto LABEL_45;
  }

  v11 = v38;
  *v38 = 1185;
  v12 = v11 + 1;
  if (v10 - 2 >= (-v12 & 3 | 4uLL))
  {
    *(v12 + (-v12 & 3)) = *a2;
    v13 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v15 = *(a1 + 72);
    v14 = *(a1 + 80);
    if (v13 + 16 >= v15)
    {
      v13 = 0;
    }

    v16 = v13 + 16;
    if (v15 <= v16)
    {
      v16 = 0;
    }

    *(a1 + 88) = v16;
    if (*(v14 + 8) > 0xFFuLL)
    {
      if (atomic_exchange((*(v14 + 16) + 128), v16) != 0x80000000 && !*(a1 + 124))
      {
        return 0;
      }

      if (*(a1 + 112) == 1)
      {
        MEMORY[0x19EB16320](*(a1 + 100));
      }

      v17 = 0;
      *(a1 + 124) = 0;
      return v17;
    }

    goto LABEL_44;
  }

  if ((v40 & 1) == 0)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    JUMPOUT(0x19E1F060CLL);
  }

  if (v39 <= 1)
  {
    __break(0xC471u);
    goto LABEL_44;
  }

  *v38 = 3197;
  v28 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v30 = *(a1 + 72);
  v29 = *(a1 + 80);
  if (v28 + 16 >= v30)
  {
    v28 = 0;
  }

  v31 = v28 + 16;
  if (v30 <= v31)
  {
    v31 = 0;
  }

  *(a1 + 88) = v31;
  if (*(v29 + 8) <= 0xFFuLL)
  {
    goto LABEL_44;
  }

  atomic_exchange((*(v29 + 16) + 128), v31);
  *(a1 + 124) = 0;
  v32 = *(a1 + 8);
  v33 = IPC::Encoder::operator new(0x238, v9);
  *v33 = 1185;
  *(v33 + 2) = 0;
  *(v33 + 3) = 0;
  *(v33 + 1) = a3;
  *(v33 + 68) = 0;
  *(v33 + 70) = 0;
  *(v33 + 69) = 0;
  IPC::Encoder::encodeHeader(v33);
  v41 = v33;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v33, *a2);
  v17 = IPC::Connection::sendMessageImpl(v32, &v41, 1, 0);
  v35 = v41;
  v41 = 0;
  if (v35)
  {
    IPC::Encoder::~Encoder(v35, v34);
    bmalloc::api::tzoneFree(v36, v37);
  }

  return v17;
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::ClearColor,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, float *a2, uint64_t a3)
{
  v6 = *(a1 + 128);
  v7 = INFINITY;
  if (fabs(v6) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v7 = v6 + v8;
  }

  if (*(a1 + 64) != a3)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v50, v7);
    if (v52 != 1)
    {
      return 16;
    }

    v30 = v51;
    if (v51 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E1F0A2CLL);
    }

    v31 = v50;
    *v50 = 3198;
    v32 = v31 + 1;
    if (v30 - 2 < (-v32 & 7 | 8uLL))
    {
      return 18;
    }

    v33 = -v32 & 7;
    *(v32 + v33) = a3;
    if (v33 != 7)
    {
      v33 = 6;
    }

    v34 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v36 = *(a1 + 72);
    v35 = *(a1 + 80);
    v37 = v33 + 10;
    if (v34 + 16 >= v36)
    {
      v34 = 0;
    }

    v38 = v37 + v34;
    if (v36 <= v38)
    {
      v38 = 0;
    }

    *(a1 + 88) = v38;
    if (*(v35 + 8) <= 0xFFuLL)
    {
      goto LABEL_49;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v35 + 16) + 128), v38) == 0x80000000);
    *(a1 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v50, v7);
  if (v52 != 1)
  {
    return 16;
  }

  v10 = v51;
  if (v51 <= 1)
  {
    __break(0xC471u);
    goto LABEL_50;
  }

  v11 = v50;
  *v50 = 1190;
  v12 = v11 + 1;
  v13 = -v12 & 3 | 4;
  v14 = v10 - 2 - v13;
  if (v10 - 2 >= v13)
  {
    *(v12 + (-v12 & 3)) = *a2;
    v15 = v12 + v13;
    v16 = -v15 & 3 | 4;
    v17 = v14 - v16;
    if (v14 >= v16)
    {
      *(v15 + (-v15 & 3)) = a2[1];
      v18 = v15 + v16;
      v19 = -(v15 + v16);
      v20 = v19 & 3 | 4;
      v21 = v17 - v20;
      if (v17 >= v20)
      {
        *(v18 + (v19 & 3)) = a2[2];
        v22 = v18 + v20;
        v23 = -v22 & 3 | 4;
        if (v21 >= v23)
        {
          *(v22 + (-v22 & 3)) = a2[3];
          v24 = v10 - v21 + v23;
          if (v24 <= 0x10)
          {
            v24 = 16;
          }

          v25 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
          v26 = *(a1 + 72);
          if (v25 + 16 >= v26)
          {
            v25 = 0;
          }

          v27 = v25 + v24;
          if (v26 <= v27)
          {
            v27 = 0;
          }

          *(a1 + 88) = v27;
          v28 = *(a1 + 80);
          if (*(v28 + 8) > 0xFFuLL)
          {
            if (atomic_exchange((*(v28 + 16) + 128), v27) != 0x80000000 && !*(a1 + 124))
            {
              return 0;
            }

            if (*(a1 + 112) == 1)
            {
              MEMORY[0x19EB16320](*(a1 + 100));
            }

            v29 = 0;
            *(a1 + 124) = 0;
            return v29;
          }

          goto LABEL_49;
        }
      }
    }
  }

  if ((v52 & 1) == 0)
  {
LABEL_49:
    __break(1u);
LABEL_50:
    JUMPOUT(0x19E1F0A0CLL);
  }

  if (v51 <= 1)
  {
    __break(0xC471u);
    goto LABEL_49;
  }

  *v50 = 3197;
  v40 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v42 = *(a1 + 72);
  v41 = *(a1 + 80);
  if (v40 + 16 >= v42)
  {
    v40 = 0;
  }

  v43 = v40 + 16;
  if (v42 <= v43)
  {
    v43 = 0;
  }

  *(a1 + 88) = v43;
  if (*(v41 + 8) <= 0xFFuLL)
  {
    goto LABEL_49;
  }

  atomic_exchange((*(v41 + 16) + 128), v43);
  *(a1 + 124) = 0;
  v44 = *(a1 + 8);
  v45 = IPC::Encoder::operator new(0x238, v9);
  *v45 = 1190;
  *(v45 + 2) = 0;
  *(v45 + 3) = 0;
  *(v45 + 1) = a3;
  *(v45 + 68) = 0;
  *(v45 + 70) = 0;
  *(v45 + 69) = 0;
  IPC::Encoder::encodeHeader(v45);
  v53 = v45;
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(v45, *a2);
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(v45, a2[1]);
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(v45, a2[2]);
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(v45, a2[3]);
  v29 = IPC::Connection::sendMessageImpl(v44, &v53, 1, 0);
  v47 = v53;
  v53 = 0;
  if (v47)
  {
    IPC::Encoder::~Encoder(v47, v46);
    bmalloc::api::tzoneFree(v48, v49);
  }

  return v29;
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::ClearDepth,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, float *a2, uint64_t a3)
{
  v6 = *(a1 + 128);
  v7 = INFINITY;
  if (fabs(v6) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v7 = v6 + v8;
  }

  if (*(a1 + 64) != a3)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v38, v7);
    if (v40 != 1)
    {
      return 16;
    }

    v18 = v39;
    if (v39 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E1F0D7CLL);
    }

    v19 = v38;
    *v38 = 3198;
    v20 = v19 + 1;
    if (v18 - 2 < (-v20 & 7 | 8uLL))
    {
      return 18;
    }

    v21 = -v20 & 7;
    *(v20 + v21) = a3;
    if (v21 != 7)
    {
      v21 = 6;
    }

    v22 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v24 = *(a1 + 72);
    v23 = *(a1 + 80);
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

    *(a1 + 88) = v26;
    if (*(v23 + 8) <= 0xFFuLL)
    {
      goto LABEL_44;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v23 + 16) + 128), v26) == 0x80000000);
    *(a1 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v38, v7);
  if (v40 != 1)
  {
    return 16;
  }

  v10 = v39;
  if (v39 <= 1)
  {
    __break(0xC471u);
    goto LABEL_45;
  }

  v11 = v38;
  *v38 = 1191;
  v12 = v11 + 1;
  if (v10 - 2 >= (-v12 & 3 | 4uLL))
  {
    *(v12 + (-v12 & 3)) = *a2;
    v13 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v15 = *(a1 + 72);
    v14 = *(a1 + 80);
    if (v13 + 16 >= v15)
    {
      v13 = 0;
    }

    v16 = v13 + 16;
    if (v15 <= v16)
    {
      v16 = 0;
    }

    *(a1 + 88) = v16;
    if (*(v14 + 8) > 0xFFuLL)
    {
      if (atomic_exchange((*(v14 + 16) + 128), v16) != 0x80000000 && !*(a1 + 124))
      {
        return 0;
      }

      if (*(a1 + 112) == 1)
      {
        MEMORY[0x19EB16320](*(a1 + 100));
      }

      v17 = 0;
      *(a1 + 124) = 0;
      return v17;
    }

    goto LABEL_44;
  }

  if ((v40 & 1) == 0)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    JUMPOUT(0x19E1F0D5CLL);
  }

  if (v39 <= 1)
  {
    __break(0xC471u);
    goto LABEL_44;
  }

  *v38 = 3197;
  v28 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v30 = *(a1 + 72);
  v29 = *(a1 + 80);
  if (v28 + 16 >= v30)
  {
    v28 = 0;
  }

  v31 = v28 + 16;
  if (v30 <= v31)
  {
    v31 = 0;
  }

  *(a1 + 88) = v31;
  if (*(v29 + 8) <= 0xFFuLL)
  {
    goto LABEL_44;
  }

  atomic_exchange((*(v29 + 16) + 128), v31);
  *(a1 + 124) = 0;
  v32 = *(a1 + 8);
  v33 = IPC::Encoder::operator new(0x238, v9);
  *v33 = 1191;
  *(v33 + 2) = 0;
  *(v33 + 3) = 0;
  *(v33 + 1) = a3;
  *(v33 + 68) = 0;
  *(v33 + 70) = 0;
  *(v33 + 69) = 0;
  IPC::Encoder::encodeHeader(v33);
  v41 = v33;
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(v33, *a2);
  v17 = IPC::Connection::sendMessageImpl(v32, &v41, 1, 0);
  v35 = v41;
  v41 = 0;
  if (v35)
  {
    IPC::Encoder::~Encoder(v35, v34);
    bmalloc::api::tzoneFree(v36, v37);
  }

  return v17;
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::ClearStencil,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
{
  v6 = *(a1 + 128);
  v7 = INFINITY;
  if (fabs(v6) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v7 = v6 + v8;
  }

  if (*(a1 + 64) != a3)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v38, v7);
    if (v40 != 1)
    {
      return 16;
    }

    v28 = v39;
    if (v39 <= 1)
    {
LABEL_44:
      __break(0xC471u);
      JUMPOUT(0x19E1F10ACLL);
    }

    v29 = v38;
    *v38 = 3198;
    v30 = v29 + 1;
    if (v28 - 2 < (-v30 & 7 | 8uLL))
    {
      return 18;
    }

    v31 = -v30 & 7;
    *(v30 + v31) = a3;
    if (v31 != 7)
    {
      v31 = 6;
    }

    v32 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v34 = *(a1 + 72);
    v33 = *(a1 + 80);
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

    *(a1 + 88) = v36;
    if (*(v33 + 8) <= 0xFFuLL)
    {
      goto LABEL_43;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v33 + 16) + 128), v36) == 0x80000000);
    *(a1 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v38, v7);
  if (v40 != 1)
  {
    return 16;
  }

  v10 = v39;
  if (v39 <= 1)
  {
    goto LABEL_44;
  }

  v11 = v38;
  *v38 = 1192;
  v12 = v11 + 1;
  if (v10 - 2 >= (-v12 & 3 | 4uLL))
  {
    *(v12 + (-v12 & 3)) = *a2;
    v13 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v15 = *(a1 + 72);
    v14 = *(a1 + 80);
    if (v13 + 16 >= v15)
    {
      v13 = 0;
    }

    v16 = v13 + 16;
    if (v15 <= v16)
    {
      v16 = 0;
    }

    *(a1 + 88) = v16;
    if (*(v14 + 8) > 0xFFuLL)
    {
      if (atomic_exchange((*(v14 + 16) + 128), v16) != 0x80000000 && !*(a1 + 124))
      {
        return 0;
      }

      if (*(a1 + 112) == 1)
      {
        MEMORY[0x19EB16320](*(a1 + 100));
      }

      v17 = 0;
      *(a1 + 124) = 0;
      return v17;
    }

    goto LABEL_43;
  }

  if ((v40 & 1) == 0)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (v39 <= 1)
  {
    __break(0xC471u);
    goto LABEL_43;
  }

  *v38 = 3197;
  v18 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v20 = *(a1 + 72);
  v19 = *(a1 + 80);
  if (v18 + 16 >= v20)
  {
    v18 = 0;
  }

  v21 = v18 + 16;
  if (v20 <= v21)
  {
    v21 = 0;
  }

  *(a1 + 88) = v21;
  if (*(v19 + 8) <= 0xFFuLL)
  {
    goto LABEL_43;
  }

  atomic_exchange((*(v19 + 16) + 128), v21);
  *(a1 + 124) = 0;
  v22 = *(a1 + 8);
  v23 = IPC::Encoder::operator new(0x238, v9);
  *v23 = 1192;
  *(v23 + 2) = 0;
  *(v23 + 3) = 0;
  *(v23 + 1) = a3;
  *(v23 + 68) = 0;
  *(v23 + 70) = 0;
  *(v23 + 69) = 0;
  IPC::Encoder::encodeHeader(v23);
  v41 = v23;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v23, *a2);
  v17 = IPC::Connection::sendMessageImpl(v22, &v41, 1, 0);
  v25 = v41;
  v41 = 0;
  if (v25)
  {
    IPC::Encoder::~Encoder(v25, v24);
    bmalloc::api::tzoneFree(v26, v27);
  }

  return v17;
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::ColorMask,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, char *a2, uint64_t a3)
{
  v6 = *(a1 + 128);
  v7 = INFINITY;
  if (fabs(v6) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v7 = v6 + v8;
  }

  if (*(a1 + 64) != a3)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v37, v7);
    if (v39 != 1)
    {
      return 16;
    }

    v17 = v38;
    if (v38 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E1F145CLL);
    }

    v18 = v37;
    *v37 = 3198;
    v19 = v18 + 1;
    if (v17 - 2 < (-v19 & 7 | 8uLL))
    {
      return 18;
    }

    v20 = -v19 & 7;
    *(v19 + v20) = a3;
    if (v20 != 7)
    {
      v20 = 6;
    }

    v21 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v23 = *(a1 + 72);
    v22 = *(a1 + 80);
    v24 = v20 + 10;
    if (v21 + 16 >= v23)
    {
      v21 = 0;
    }

    v25 = v24 + v21;
    if (v23 <= v25)
    {
      v25 = 0;
    }

    *(a1 + 88) = v25;
    if (*(v22 + 8) <= 0xFFuLL)
    {
      goto LABEL_47;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v22 + 16) + 128), v25) == 0x80000000);
    *(a1 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v37, v7);
  if (v39 != 1)
  {
    return 16;
  }

  v10 = v38;
  if (v38 <= 1)
  {
    __break(0xC471u);
    goto LABEL_48;
  }

  v11 = v37;
  *v37 = 1194;
  if (v10 != 2)
  {
    v11[2] = *a2;
    if (v10 != 3)
    {
      v11[3] = a2[1];
      if (v10 != 4)
      {
        v11[4] = a2[2];
        if (v10 != 5)
        {
          v11[5] = a2[3];
          v12 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
          v14 = *(a1 + 72);
          v13 = *(a1 + 80);
          if (v12 + 16 >= v14)
          {
            v12 = 0;
          }

          v15 = v12 + 16;
          if (v14 <= v15)
          {
            v15 = 0;
          }

          *(a1 + 88) = v15;
          if (*(v13 + 8) > 0xFFuLL)
          {
            if (atomic_exchange((*(v13 + 16) + 128), v15) != 0x80000000 && !*(a1 + 124))
            {
              return 0;
            }

            if (*(a1 + 112) == 1)
            {
              MEMORY[0x19EB16320](*(a1 + 100));
            }

            v16 = 0;
            *(a1 + 124) = 0;
            return v16;
          }

          goto LABEL_47;
        }
      }
    }
  }

  if ((v39 & 1) == 0)
  {
LABEL_47:
    __break(1u);
LABEL_48:
    JUMPOUT(0x19E1F143CLL);
  }

  if (v38 <= 1)
  {
    __break(0xC471u);
    goto LABEL_47;
  }

  *v37 = 3197;
  v27 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v29 = *(a1 + 72);
  v28 = *(a1 + 80);
  if (v27 + 16 >= v29)
  {
    v27 = 0;
  }

  v30 = v27 + 16;
  if (v29 <= v30)
  {
    v30 = 0;
  }

  *(a1 + 88) = v30;
  if (*(v28 + 8) <= 0xFFuLL)
  {
    goto LABEL_47;
  }

  atomic_exchange((*(v28 + 16) + 128), v30);
  *(a1 + 124) = 0;
  v31 = *(a1 + 8);
  v32 = IPC::Encoder::operator new(0x238, v9);
  *v32 = 1194;
  *(v32 + 2) = 0;
  *(v32 + 3) = 0;
  *(v32 + 1) = a3;
  *(v32 + 68) = 0;
  *(v32 + 70) = 0;
  *(v32 + 69) = 0;
  IPC::Encoder::encodeHeader(v32);
  v40 = v32;
  IPC::Encoder::operator<<<BOOL &>(v32, a2);
  IPC::Encoder::operator<<<BOOL &>(v32, a2 + 1);
  IPC::Encoder::operator<<<BOOL &>(v32, a2 + 2);
  IPC::Encoder::operator<<<BOOL &>(v32, a2 + 3);
  v16 = IPC::Connection::sendMessageImpl(v31, &v40, 1, 0);
  v34 = v40;
  v40 = 0;
  if (v34)
  {
    IPC::Encoder::~Encoder(v34, v33);
    bmalloc::api::tzoneFree(v35, v36);
  }

  return v16;
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::CompileShader,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
{
  v6 = *(a1 + 128);
  v7 = INFINITY;
  if (fabs(v6) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v7 = v6 + v8;
  }

  if (*(a1 + 64) != a3)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v38, v7);
    if (v40 != 1)
    {
      return 16;
    }

    v18 = v39;
    if (v39 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E1F17ACLL);
    }

    v19 = v38;
    *v38 = 3198;
    v20 = v19 + 1;
    if (v18 - 2 < (-v20 & 7 | 8uLL))
    {
      return 18;
    }

    v21 = -v20 & 7;
    *(v20 + v21) = a3;
    if (v21 != 7)
    {
      v21 = 6;
    }

    v22 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v24 = *(a1 + 72);
    v23 = *(a1 + 80);
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

    *(a1 + 88) = v26;
    if (*(v23 + 8) <= 0xFFuLL)
    {
      goto LABEL_44;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v23 + 16) + 128), v26) == 0x80000000);
    *(a1 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v38, v7);
  if (v40 != 1)
  {
    return 16;
  }

  v10 = v39;
  if (v39 <= 1)
  {
    __break(0xC471u);
    goto LABEL_45;
  }

  v11 = v38;
  *v38 = 1196;
  v12 = v11 + 1;
  if (v10 - 2 >= (-v12 & 3 | 4uLL))
  {
    *(v12 + (-v12 & 3)) = *a2;
    v13 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v15 = *(a1 + 72);
    v14 = *(a1 + 80);
    if (v13 + 16 >= v15)
    {
      v13 = 0;
    }

    v16 = v13 + 16;
    if (v15 <= v16)
    {
      v16 = 0;
    }

    *(a1 + 88) = v16;
    if (*(v14 + 8) > 0xFFuLL)
    {
      if (atomic_exchange((*(v14 + 16) + 128), v16) != 0x80000000 && !*(a1 + 124))
      {
        return 0;
      }

      if (*(a1 + 112) == 1)
      {
        MEMORY[0x19EB16320](*(a1 + 100));
      }

      v17 = 0;
      *(a1 + 124) = 0;
      return v17;
    }

    goto LABEL_44;
  }

  if ((v40 & 1) == 0)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    JUMPOUT(0x19E1F178CLL);
  }

  if (v39 <= 1)
  {
    __break(0xC471u);
    goto LABEL_44;
  }

  *v38 = 3197;
  v28 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v30 = *(a1 + 72);
  v29 = *(a1 + 80);
  if (v28 + 16 >= v30)
  {
    v28 = 0;
  }

  v31 = v28 + 16;
  if (v30 <= v31)
  {
    v31 = 0;
  }

  *(a1 + 88) = v31;
  if (*(v29 + 8) <= 0xFFuLL)
  {
    goto LABEL_44;
  }

  atomic_exchange((*(v29 + 16) + 128), v31);
  *(a1 + 124) = 0;
  v32 = *(a1 + 8);
  v33 = IPC::Encoder::operator new(0x238, v9);
  *v33 = 1196;
  *(v33 + 2) = 0;
  *(v33 + 3) = 0;
  *(v33 + 1) = a3;
  *(v33 + 68) = 0;
  *(v33 + 70) = 0;
  *(v33 + 69) = 0;
  IPC::Encoder::encodeHeader(v33);
  v41 = v33;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v33, *a2);
  v17 = IPC::Connection::sendMessageImpl(v32, &v41, 1, 0);
  v35 = v41;
  v41 = 0;
  if (v35)
  {
    IPC::Encoder::~Encoder(v35, v34);
    bmalloc::api::tzoneFree(v36, v37);
  }

  return v17;
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::CopyTexImage2D,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
{
  v6 = *(a1 + 128);
  v7 = INFINITY;
  if (fabs(v6) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v7 = v6 + v8;
  }

  if (*(a1 + 64) != a3)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v63, v7);
    if (v65 != 1)
    {
      return 16;
    }

    v53 = v64;
    if (v64 <= 1)
    {
LABEL_57:
      __break(0xC471u);
      JUMPOUT(0x19E1F1C4CLL);
    }

    v54 = v63;
    *v63 = 3198;
    v55 = v54 + 1;
    if (v53 - 2 < (-v55 & 7 | 8uLL))
    {
      return 18;
    }

    v56 = -v55 & 7;
    *(v55 + v56) = a3;
    if (v56 != 7)
    {
      v56 = 6;
    }

    v57 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v59 = *(a1 + 72);
    v58 = *(a1 + 80);
    v60 = v56 + 10;
    if (v57 + 16 >= v59)
    {
      v57 = 0;
    }

    v61 = v60 + v57;
    if (v59 <= v61)
    {
      v61 = 0;
    }

    *(a1 + 88) = v61;
    if (*(v58 + 8) <= 0xFFuLL)
    {
      goto LABEL_56;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v58 + 16) + 128), v61) == 0x80000000);
    *(a1 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v63, v7);
  if (v65 != 1)
  {
    return 16;
  }

  v10 = v64;
  if (v64 <= 1)
  {
    goto LABEL_57;
  }

  v11 = v63;
  *v63 = 1206;
  v12 = v11 + 1;
  v13 = -v12 & 3 | 4;
  v14 = v10 - 2 - v13;
  if (v10 - 2 >= v13)
  {
    *(v12 + (-v12 & 3)) = *a2;
    v15 = v12 + v13;
    v16 = -v15 & 3 | 4;
    v17 = v14 >= v16;
    v18 = v14 - v16;
    if (v17)
    {
      *(v15 + (-v15 & 3)) = a2[1];
      v19 = v15 + v16;
      v20 = -v19 & 3 | 4;
      v17 = v18 >= v20;
      v21 = v18 - v20;
      if (v17)
      {
        *(v19 + (-v19 & 3)) = a2[2];
        v22 = v19 + v20;
        v23 = -v22 & 3 | 4;
        v17 = v21 >= v23;
        v24 = v21 - v23;
        if (v17)
        {
          *(v22 + (-v22 & 3)) = a2[3];
          v25 = v22 + v23;
          v26 = -v25 & 3 | 4;
          v17 = v24 >= v26;
          v27 = v24 - v26;
          if (v17)
          {
            *(v25 + (-v25 & 3)) = a2[4];
            v28 = v25 + v26;
            v29 = -v28 & 3 | 4;
            v30 = v27 - v29;
            if (v27 >= v29)
            {
              *(v28 + (-v28 & 3)) = a2[5];
              v31 = v28 + v29;
              v32 = -(v28 + v29);
              v33 = v32 & 3 | 4;
              v34 = v30 - v33;
              if (v30 >= v33)
              {
                *(v31 + (v32 & 3)) = a2[6];
                v35 = v31 + v33;
                v36 = -v35 & 3 | 4;
                if (v34 >= v36)
                {
                  *(v35 + (-v35 & 3)) = a2[7];
                  v37 = v10 - v34 + v36;
                  if (v37 <= 0x10)
                  {
                    v37 = 16;
                  }

                  v38 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
                  v39 = *(a1 + 72);
                  if (v38 + 16 >= v39)
                  {
                    v38 = 0;
                  }

                  v40 = v38 + v37;
                  if (v39 <= v40)
                  {
                    v40 = 0;
                  }

                  *(a1 + 88) = v40;
                  v41 = *(a1 + 80);
                  if (*(v41 + 8) > 0xFFuLL)
                  {
                    if (atomic_exchange((*(v41 + 16) + 128), v40) != 0x80000000 && !*(a1 + 124))
                    {
                      return 0;
                    }

                    if (*(a1 + 112) == 1)
                    {
                      MEMORY[0x19EB16320](*(a1 + 100));
                    }

                    v42 = 0;
                    *(a1 + 124) = 0;
                    return v42;
                  }

                  goto LABEL_56;
                }
              }
            }
          }
        }
      }
    }
  }

  if ((v65 & 1) == 0)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  if (v64 <= 1)
  {
    __break(0xC471u);
    goto LABEL_56;
  }

  *v63 = 3197;
  v43 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v45 = *(a1 + 72);
  v44 = *(a1 + 80);
  if (v43 + 16 >= v45)
  {
    v43 = 0;
  }

  v46 = v43 + 16;
  if (v45 <= v46)
  {
    v46 = 0;
  }

  *(a1 + 88) = v46;
  if (*(v44 + 8) <= 0xFFuLL)
  {
    goto LABEL_56;
  }

  atomic_exchange((*(v44 + 16) + 128), v46);
  *(a1 + 124) = 0;
  v47 = *(a1 + 8);
  v48 = IPC::Encoder::operator new(0x238, v9);
  *v48 = 1206;
  *(v48 + 2) = 0;
  *(v48 + 3) = 0;
  *(v48 + 1) = a3;
  *(v48 + 68) = 0;
  *(v48 + 70) = 0;
  *(v48 + 69) = 0;
  IPC::Encoder::encodeHeader(v48);
  v66 = v48;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v48, *a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v48, a2[1]);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v48, a2[2]);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v48, a2[3]);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v48, a2[4]);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v48, a2[5]);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v48, a2[6]);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v48, a2[7]);
  v42 = IPC::Connection::sendMessageImpl(v47, &v66, 1, 0);
  v50 = v66;
  v66 = 0;
  if (v50)
  {
    IPC::Encoder::~Encoder(v50, v49);
    bmalloc::api::tzoneFree(v51, v52);
  }

  return v42;
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::CopyTexSubImage2D,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
{
  v6 = *(a1 + 128);
  v7 = INFINITY;
  if (fabs(v6) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v7 = v6 + v8;
  }

  if (*(a1 + 64) != a3)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v63, v7);
    if (v65 != 1)
    {
      return 16;
    }

    v53 = v64;
    if (v64 <= 1)
    {
LABEL_57:
      __break(0xC471u);
      JUMPOUT(0x19E1F210CLL);
    }

    v54 = v63;
    *v63 = 3198;
    v55 = v54 + 1;
    if (v53 - 2 < (-v55 & 7 | 8uLL))
    {
      return 18;
    }

    v56 = -v55 & 7;
    *(v55 + v56) = a3;
    if (v56 != 7)
    {
      v56 = 6;
    }

    v57 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v59 = *(a1 + 72);
    v58 = *(a1 + 80);
    v60 = v56 + 10;
    if (v57 + 16 >= v59)
    {
      v57 = 0;
    }

    v61 = v60 + v57;
    if (v59 <= v61)
    {
      v61 = 0;
    }

    *(a1 + 88) = v61;
    if (*(v58 + 8) <= 0xFFuLL)
    {
      goto LABEL_56;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v58 + 16) + 128), v61) == 0x80000000);
    *(a1 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v63, v7);
  if (v65 != 1)
  {
    return 16;
  }

  v10 = v64;
  if (v64 <= 1)
  {
    goto LABEL_57;
  }

  v11 = v63;
  *v63 = 1207;
  v12 = v11 + 1;
  v13 = -v12 & 3 | 4;
  v14 = v10 - 2 - v13;
  if (v10 - 2 >= v13)
  {
    *(v12 + (-v12 & 3)) = *a2;
    v15 = v12 + v13;
    v16 = -v15 & 3 | 4;
    v17 = v14 >= v16;
    v18 = v14 - v16;
    if (v17)
    {
      *(v15 + (-v15 & 3)) = a2[1];
      v19 = v15 + v16;
      v20 = -v19 & 3 | 4;
      v17 = v18 >= v20;
      v21 = v18 - v20;
      if (v17)
      {
        *(v19 + (-v19 & 3)) = a2[2];
        v22 = v19 + v20;
        v23 = -v22 & 3 | 4;
        v17 = v21 >= v23;
        v24 = v21 - v23;
        if (v17)
        {
          *(v22 + (-v22 & 3)) = a2[3];
          v25 = v22 + v23;
          v26 = -v25 & 3 | 4;
          v17 = v24 >= v26;
          v27 = v24 - v26;
          if (v17)
          {
            *(v25 + (-v25 & 3)) = a2[4];
            v28 = v25 + v26;
            v29 = -v28 & 3 | 4;
            v30 = v27 - v29;
            if (v27 >= v29)
            {
              *(v28 + (-v28 & 3)) = a2[5];
              v31 = v28 + v29;
              v32 = -(v28 + v29);
              v33 = v32 & 3 | 4;
              v34 = v30 - v33;
              if (v30 >= v33)
              {
                *(v31 + (v32 & 3)) = a2[6];
                v35 = v31 + v33;
                v36 = -v35 & 3 | 4;
                if (v34 >= v36)
                {
                  *(v35 + (-v35 & 3)) = a2[7];
                  v37 = v10 - v34 + v36;
                  if (v37 <= 0x10)
                  {
                    v37 = 16;
                  }

                  v38 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
                  v39 = *(a1 + 72);
                  if (v38 + 16 >= v39)
                  {
                    v38 = 0;
                  }

                  v40 = v38 + v37;
                  if (v39 <= v40)
                  {
                    v40 = 0;
                  }

                  *(a1 + 88) = v40;
                  v41 = *(a1 + 80);
                  if (*(v41 + 8) > 0xFFuLL)
                  {
                    if (atomic_exchange((*(v41 + 16) + 128), v40) != 0x80000000 && !*(a1 + 124))
                    {
                      return 0;
                    }

                    if (*(a1 + 112) == 1)
                    {
                      MEMORY[0x19EB16320](*(a1 + 100));
                    }

                    v42 = 0;
                    *(a1 + 124) = 0;
                    return v42;
                  }

                  goto LABEL_56;
                }
              }
            }
          }
        }
      }
    }
  }

  if ((v65 & 1) == 0)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  if (v64 <= 1)
  {
    __break(0xC471u);
    goto LABEL_56;
  }

  *v63 = 3197;
  v43 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v45 = *(a1 + 72);
  v44 = *(a1 + 80);
  if (v43 + 16 >= v45)
  {
    v43 = 0;
  }

  v46 = v43 + 16;
  if (v45 <= v46)
  {
    v46 = 0;
  }

  *(a1 + 88) = v46;
  if (*(v44 + 8) <= 0xFFuLL)
  {
    goto LABEL_56;
  }

  atomic_exchange((*(v44 + 16) + 128), v46);
  *(a1 + 124) = 0;
  v47 = *(a1 + 8);
  v48 = IPC::Encoder::operator new(0x238, v9);
  *v48 = 1207;
  *(v48 + 2) = 0;
  *(v48 + 3) = 0;
  *(v48 + 1) = a3;
  *(v48 + 68) = 0;
  *(v48 + 70) = 0;
  *(v48 + 69) = 0;
  IPC::Encoder::encodeHeader(v48);
  v66 = v48;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v48, *a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v48, a2[1]);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v48, a2[2]);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v48, a2[3]);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v48, a2[4]);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v48, a2[5]);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v48, a2[6]);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v48, a2[7]);
  v42 = IPC::Connection::sendMessageImpl(v47, &v66, 1, 0);
  v50 = v66;
  v66 = 0;
  if (v50)
  {
    IPC::Encoder::~Encoder(v50, v49);
    bmalloc::api::tzoneFree(v51, v52);
  }

  return v42;
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::CreateBuffer,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
{
  v6 = *(a1 + 128);
  v7 = INFINITY;
  if (fabs(v6) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v7 = v6 + v8;
  }

  if (*(a1 + 64) != a3)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v38, v7);
    if (v40 != 1)
    {
      return 16;
    }

    v18 = v39;
    if (v39 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E1F247CLL);
    }

    v19 = v38;
    *v38 = 3198;
    v20 = v19 + 1;
    if (v18 - 2 < (-v20 & 7 | 8uLL))
    {
      return 18;
    }

    v21 = -v20 & 7;
    *(v20 + v21) = a3;
    if (v21 != 7)
    {
      v21 = 6;
    }

    v22 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v24 = *(a1 + 72);
    v23 = *(a1 + 80);
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

    *(a1 + 88) = v26;
    if (*(v23 + 8) <= 0xFFuLL)
    {
      goto LABEL_44;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v23 + 16) + 128), v26) == 0x80000000);
    *(a1 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v38, v7);
  if (v40 != 1)
  {
    return 16;
  }

  v10 = v39;
  if (v39 <= 1)
  {
    __break(0xC471u);
    goto LABEL_45;
  }

  v11 = v38;
  *v38 = 1209;
  v12 = v11 + 1;
  if (v10 - 2 >= (-v12 & 3 | 4uLL))
  {
    *(v12 + (-v12 & 3)) = *a2;
    v13 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v15 = *(a1 + 72);
    v14 = *(a1 + 80);
    if (v13 + 16 >= v15)
    {
      v13 = 0;
    }

    v16 = v13 + 16;
    if (v15 <= v16)
    {
      v16 = 0;
    }

    *(a1 + 88) = v16;
    if (*(v14 + 8) > 0xFFuLL)
    {
      if (atomic_exchange((*(v14 + 16) + 128), v16) != 0x80000000 && !*(a1 + 124))
      {
        return 0;
      }

      if (*(a1 + 112) == 1)
      {
        MEMORY[0x19EB16320](*(a1 + 100));
      }

      v17 = 0;
      *(a1 + 124) = 0;
      return v17;
    }

    goto LABEL_44;
  }

  if ((v40 & 1) == 0)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    JUMPOUT(0x19E1F245CLL);
  }

  if (v39 <= 1)
  {
    __break(0xC471u);
    goto LABEL_44;
  }

  *v38 = 3197;
  v28 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v30 = *(a1 + 72);
  v29 = *(a1 + 80);
  if (v28 + 16 >= v30)
  {
    v28 = 0;
  }

  v31 = v28 + 16;
  if (v30 <= v31)
  {
    v31 = 0;
  }

  *(a1 + 88) = v31;
  if (*(v29 + 8) <= 0xFFuLL)
  {
    goto LABEL_44;
  }

  atomic_exchange((*(v29 + 16) + 128), v31);
  *(a1 + 124) = 0;
  v32 = *(a1 + 8);
  v33 = IPC::Encoder::operator new(0x238, v9);
  *v33 = 1209;
  *(v33 + 2) = 0;
  *(v33 + 3) = 0;
  *(v33 + 1) = a3;
  *(v33 + 68) = 0;
  *(v33 + 70) = 0;
  *(v33 + 69) = 0;
  IPC::Encoder::encodeHeader(v33);
  v41 = v33;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v33, *a2);
  v17 = IPC::Connection::sendMessageImpl(v32, &v41, 1, 0);
  v35 = v41;
  v41 = 0;
  if (v35)
  {
    IPC::Encoder::~Encoder(v35, v34);
    bmalloc::api::tzoneFree(v36, v37);
  }

  return v17;
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::CreateFramebuffer,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
{
  v6 = *(a1 + 128);
  v7 = INFINITY;
  if (fabs(v6) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v7 = v6 + v8;
  }

  if (*(a1 + 64) != a3)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v38, v7);
    if (v40 != 1)
    {
      return 16;
    }

    v18 = v39;
    if (v39 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E1F27CCLL);
    }

    v19 = v38;
    *v38 = 3198;
    v20 = v19 + 1;
    if (v18 - 2 < (-v20 & 7 | 8uLL))
    {
      return 18;
    }

    v21 = -v20 & 7;
    *(v20 + v21) = a3;
    if (v21 != 7)
    {
      v21 = 6;
    }

    v22 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v24 = *(a1 + 72);
    v23 = *(a1 + 80);
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

    *(a1 + 88) = v26;
    if (*(v23 + 8) <= 0xFFuLL)
    {
      goto LABEL_44;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v23 + 16) + 128), v26) == 0x80000000);
    *(a1 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v38, v7);
  if (v40 != 1)
  {
    return 16;
  }

  v10 = v39;
  if (v39 <= 1)
  {
    __break(0xC471u);
    goto LABEL_45;
  }

  v11 = v38;
  *v38 = 1210;
  v12 = v11 + 1;
  if (v10 - 2 >= (-v12 & 3 | 4uLL))
  {
    *(v12 + (-v12 & 3)) = *a2;
    v13 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v15 = *(a1 + 72);
    v14 = *(a1 + 80);
    if (v13 + 16 >= v15)
    {
      v13 = 0;
    }

    v16 = v13 + 16;
    if (v15 <= v16)
    {
      v16 = 0;
    }

    *(a1 + 88) = v16;
    if (*(v14 + 8) > 0xFFuLL)
    {
      if (atomic_exchange((*(v14 + 16) + 128), v16) != 0x80000000 && !*(a1 + 124))
      {
        return 0;
      }

      if (*(a1 + 112) == 1)
      {
        MEMORY[0x19EB16320](*(a1 + 100));
      }

      v17 = 0;
      *(a1 + 124) = 0;
      return v17;
    }

    goto LABEL_44;
  }

  if ((v40 & 1) == 0)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    JUMPOUT(0x19E1F27ACLL);
  }

  if (v39 <= 1)
  {
    __break(0xC471u);
    goto LABEL_44;
  }

  *v38 = 3197;
  v28 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v30 = *(a1 + 72);
  v29 = *(a1 + 80);
  if (v28 + 16 >= v30)
  {
    v28 = 0;
  }

  v31 = v28 + 16;
  if (v30 <= v31)
  {
    v31 = 0;
  }

  *(a1 + 88) = v31;
  if (*(v29 + 8) <= 0xFFuLL)
  {
    goto LABEL_44;
  }

  atomic_exchange((*(v29 + 16) + 128), v31);
  *(a1 + 124) = 0;
  v32 = *(a1 + 8);
  v33 = IPC::Encoder::operator new(0x238, v9);
  *v33 = 1210;
  *(v33 + 2) = 0;
  *(v33 + 3) = 0;
  *(v33 + 1) = a3;
  *(v33 + 68) = 0;
  *(v33 + 70) = 0;
  *(v33 + 69) = 0;
  IPC::Encoder::encodeHeader(v33);
  v41 = v33;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v33, *a2);
  v17 = IPC::Connection::sendMessageImpl(v32, &v41, 1, 0);
  v35 = v41;
  v41 = 0;
  if (v35)
  {
    IPC::Encoder::~Encoder(v35, v34);
    bmalloc::api::tzoneFree(v36, v37);
  }

  return v17;
}