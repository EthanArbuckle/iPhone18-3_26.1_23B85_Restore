uint64_t WebKit::WebGPU::RemoteXRSubImageProxy::depthStencilTexture@<X0>(WebKit::WebGPU::RemoteXRSubImageProxy *this@<X0>, void *a2@<X8>)
{
  result = *(this + 7);
  if (!result)
  {
    if (WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
    {
      __break(0xC471u);
      goto LABEL_69;
    }

    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v6 = IdentifierInternal;
    v7 = *(*(this + 5) + 80);
    atomic_fetch_add(v7, 1u);
    v8 = *(this + 3);
    v9 = *(v7 + 128);
    v10 = INFINITY;
    if (fabs(v9) != INFINITY)
    {
      WTF::ApproximateTime::now(IdentifierInternal);
      v10 = v9 + v11;
    }

    if (*(v7 + 64) != v8)
    {
      IPC::StreamClientConnectionBuffer::tryAcquire(v7 + 72, &v53, v10);
      if (v55 != 1)
      {
        goto LABEL_38;
      }

      v24 = v54;
      if (v54 <= 1)
      {
        __break(0xC471u);
        JUMPOUT(0x19E27B05CLL);
      }

      v25 = v53;
      *v53 = 3198;
      v26 = v25 + 1;
      if (v24 - 2 < (-v26 & 7 | 8uLL))
      {
        goto LABEL_38;
      }

      v27 = -v26 & 7;
      *(v26 + v27) = v8;
      v28 = 6;
      if (v27 > 6)
      {
        v28 = v27;
      }

      v29 = v28 + 10;
      v30 = (*(v7 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v31 = *(v7 + 72);
      if (v30 + 16 >= v31)
      {
        v30 = 0;
      }

      v32 = v29 + v30;
      if (v31 <= v32)
      {
        v32 = 0;
      }

      *(v7 + 88) = v32;
      v33 = *(v7 + 80);
      if (*(v33 + 8) <= 0xFFuLL)
      {
LABEL_68:
        __break(1u);
LABEL_69:
        JUMPOUT(0x19E27B014);
      }

      v34 = atomic_exchange((*(v33 + 16) + 128), v32);
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
    }

    IPC::StreamClientConnectionBuffer::tryAcquire(v7 + 72, &v53, v10);
    if (v55 == 1)
    {
      v13 = v54;
      if (v54 <= 1)
      {
        __break(0xC471u);
        JUMPOUT(0x19E27B034);
      }

      v14 = v53;
      *v53 = 1712;
      v15 = v14 + 1;
      if (v13 - 2 < (-v15 & 7 | 8uLL))
      {
        v52 = v8;
        if (v55)
        {
          if (v54 <= 1)
          {
            __break(0xC471u);
          }

          else
          {
            *v53 = 3197;
            v41 = (*(v7 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
            v42 = *(v7 + 72);
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

            *(v7 + 88) = v44;
            v45 = *(v7 + 80);
            if (*(v45 + 8) > 0xFFuLL)
            {
              atomic_exchange((*(v45 + 16) + 128), v44);
              *(v7 + 124) = 0;
              v46 = *(v7 + 8);
              v47 = IPC::Encoder::operator new(0x238, v12);
              *v47 = 1712;
              *(v47 + 2) = 0;
              *(v47 + 3) = 0;
              *(v47 + 1) = v52;
              *(v47 + 68) = 0;
              *(v47 + 70) = 0;
              *(v47 + 69) = 0;
              IPC::Encoder::encodeHeader(v47);
              v56 = v47;
              IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v47, v6);
              v48 = IPC::Connection::sendMessageImpl(v46, &v56, 1, 0);
              v49 = v56;
              v56 = 0;
              if (v49)
              {
                IPC::Encoder::~Encoder(v49, v12);
                bmalloc::api::tzoneFree(v50, v51);
              }

              v23 = v48 == 0;
LABEL_39:
              if (atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
              {
                atomic_store(1u, v7);
                IPC::StreamClientConnection::operator delete(v7);
                if (v23)
                {
LABEL_41:
                  v38 = *(this + 5);
                  atomic_fetch_add((v38 + 28), 1u);
                  v39 = *(this + 4);
                  result = WebKit::WebGPU::RemoteTextureProxy::operator new(0x78, v12);
                  *(result + 16) = 1;
                  *(result + 24) = 0;
                  *(result + 32) = v6;
                  *result = &unk_1F11268C0;
                  *(result + 8) = 0;
                  ++*(v39 + 8);
                  *(result + 40) = v39;
                  *(result + 48) = v38;
                  *(result + 56) = 0;
                  *(result + 64) = 0;
                  *(result + 104) = 0;
                  *(result + 112) = 0;
                  v40 = *(this + 7);
                  *(this + 7) = result;
                  if (v40)
                  {
                    if (v40[4] == 1)
                    {
                      (*(*v40 + 8))(v40);
                      result = *(this + 7);
                      if (!result)
                      {
                        goto LABEL_45;
                      }
                    }

                    else
                    {
                      --v40[4];
                    }
                  }

                  goto LABEL_44;
                }
              }

              else if (v23)
              {
                goto LABEL_41;
              }

              result = 0;
              goto LABEL_45;
            }
          }
        }
      }

      else
      {
        v16 = -v15 & 7;
        *(v15 + v16) = v6;
        v17 = 6;
        if (v16 > 6)
        {
          v17 = v16;
        }

        v18 = v17 + 10;
        v19 = (*(v7 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
        v20 = *(v7 + 72);
        if (v19 + 16 >= v20)
        {
          v19 = 0;
        }

        v21 = v18 + v19;
        if (v20 <= v21)
        {
          v21 = 0;
        }

        *(v7 + 88) = v21;
        v22 = *(v7 + 80);
        if (*(v22 + 8) > 0xFFuLL)
        {
          if (atomic_exchange((*(v22 + 16) + 128), v21) == 0x80000000 || *(v7 + 124))
          {
            if (*(v7 + 112) == 1)
            {
              MEMORY[0x19EB16320](*(v7 + 100));
            }

            *(v7 + 124) = 0;
          }

          v23 = 1;
          goto LABEL_39;
        }
      }

      goto LABEL_68;
    }

LABEL_38:
    v23 = 0;
    goto LABEL_39;
  }

LABEL_44:
  ++*(result + 16);
LABEL_45:
  *a2 = result;
  return result;
}

uint64_t WebKit::WebGPU::DowncastConvertToBackingContext::convertToBacking(uint64_t a1, uint64_t a2)
{
  return *(a2 + 24);
}

{
  return *(a2 + 24);
}

{
  return *(a2 + 32);
}

{
  return *(a2 + 32);
}

{
  return *(a2 + 24);
}

{
  return *(a2 + 24);
}

{
  return *(a2 + 24);
}

{
  return *(a2 + 24);
}

uint64_t WebKit::ImageBufferRemoteIOSurfaceBackend::create@<X0>(_BYTE *a1@<X1>, uint64_t *a2@<X8>)
{
  if (a1[80] == 1)
  {
    v3 = WebKit::ImageBufferRemoteIOSurfaceBackend::operator new(0x38, a1);
    v4 = WebCore::ImageBufferBackend::ImageBufferBackend();
    *v4 = &unk_1F1126B20;
    v4[5] = &unk_1F1126C28;
    result = WTF::MachSendRight::MachSendRight();
    *(v3 + 52) = 0;
    *a2 = v3;
  }

  else
  {
    result = 57;
    __break(0xC471u);
  }

  return result;
}

void WebKit::ImageBufferRemoteIOSurfaceBackend::createBackendHandle(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  WTF::MachSendRight::MachSendRight(v3, (a1 + 48));
  WTF::MachSendRight::MachSendRight();
  *(a2 + 80) = 1;
  *(a2 + 88) = 1;
  WTF::MachSendRight::~MachSendRight(v3);
}

void WebKit::ImageBufferRemoteIOSurfaceBackend::takeBackendHandle(uint64_t a1@<X8>)
{
  v2 = 0;
  WTF::MachSendRight::MachSendRight();
  WTF::MachSendRight::operator=();
  WTF::MachSendRight::MachSendRight();
  *(a1 + 80) = 1;
  *(a1 + 88) = 1;
  WTF::MachSendRight::~MachSendRight(v3);
  WTF::MachSendRight::~MachSendRight(&v2);
}

uint64_t WebKit::ImageBufferRemoteIOSurfaceBackend::setBackendHandle(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 80) == 1)
  {
    return WTF::MachSendRight::operator=();
  }

  result = 77;
  __break(0xC471u);
  return result;
}

uint64_t non-virtual thunk toWebKit::ImageBufferRemoteIOSurfaceBackend::setBackendHandle(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 80) == 1)
  {
    return WTF::MachSendRight::operator=();
  }

  result = 77;
  __break(0xC471u);
  return result;
}

void WebKit::ImageBufferRemoteIOSurfaceBackend::clearBackendHandle(WebKit::ImageBufferRemoteIOSurfaceBackend *this)
{
  v1 = 0;
  WTF::MachSendRight::operator=();
  WTF::MachSendRight::~MachSendRight(&v1);
}

void non-virtual thunk toWebKit::ImageBufferRemoteIOSurfaceBackend::clearBackendHandle(WebKit::ImageBufferRemoteIOSurfaceBackend *this)
{
  v1 = 0;
  WTF::MachSendRight::operator=();
  WTF::MachSendRight::~MachSendRight(&v1);
}

WTF::StringImpl *WebKit::ImageBufferRemoteIOSurfaceBackend::debugDescription@<X0>(uint64_t *a1@<X8>)
{
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 1;
  v10 = 0;
  v11 = 256;
  v12 = 0;
  WTF::TextStream::operator<<();
  WTF::TextStream::operator<<();
  WTF::TextStream::operator<<();
  WTF::TextStream::operator<<();
  WTF::TextStream::operator<<();
  WebCore::operator<<();
  WTF::TextStream::release(a1, &v6);
  v4 = v7;
  v7 = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, v3);
  }

  result = v6;
  v6 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v3);
    }
  }

  return result;
}

void WebKit::WebGPU::DowncastConvertToBackingContext::~DowncastConvertToBackingContext(WebKit::WebGPU::DowncastConvertToBackingContext *this)
{
  if (*(this + 2) != 1)
  {
    __break(0xC471u);
  }
}

void WebKit::WebGPU::DowncastConvertToBackingContext::~DowncastConvertToBackingContext(WebKit::WebGPU::DowncastConvertToBackingContext *this, void *a2)
{
  if (*(this + 2) == 1)
  {
    bmalloc::api::tzoneFree(this, a2);
  }

  else
  {
    __break(0xC471u);
  }
}

void WebKit::ImageBufferRemoteIOSurfaceBackend::~ImageBufferRemoteIOSurfaceBackend(WebKit::ImageBufferRemoteIOSurfaceBackend *this)
{
  WTF::MachSendRight::~MachSendRight((this + 48));

  WebCore::ImageBufferBackend::~ImageBufferBackend(this);
}

{
  WTF::MachSendRight::~MachSendRight((this + 48));
  WebCore::ImageBufferBackend::~ImageBufferBackend(this);

  bmalloc::api::tzoneFree(v2, v3);
}

void non-virtual thunk toWebKit::ImageBufferRemoteIOSurfaceBackend::~ImageBufferRemoteIOSurfaceBackend(WebKit::ImageBufferRemoteIOSurfaceBackend *this)
{
  v1 = (this - 40);
  WTF::MachSendRight::~MachSendRight((this + 8));

  WebCore::ImageBufferBackend::~ImageBufferBackend(v1);
}

{
  v1 = (this - 40);
  WTF::MachSendRight::~MachSendRight((this + 8));
  WebCore::ImageBufferBackend::~ImageBufferBackend(v1);

  bmalloc::api::tzoneFree(v2, v3);
}

uint64_t WebKit::ImageBufferRemoteIOSurfaceBackend::operator new(WebKit::ImageBufferRemoteIOSurfaceBackend *this, void *a2)
{
  if (this == 56 && WebKit::ImageBufferRemoteIOSurfaceBackend::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::ImageBufferRemoteIOSurfaceBackend::s_heapRef, a2);
  }

  else
  {
    return WebKit::ImageBufferRemoteIOSurfaceBackend::operatorNewSlow(this);
  }
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteTexture::Undestroy,WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 128);
  v6 = INFINITY;
  if (fabs(v5) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v6 = v5 + v7;
  }

  if (*(a1 + 64) != a3)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v26, v6);
    if (v28 != 1)
    {
      return 16;
    }

    v13 = v27;
    if (v27 <= 1)
    {
LABEL_40:
      result = 1067;
      __break(0xC471u);
      return result;
    }

    v14 = v26;
    *v26 = 3198;
    v15 = v14 + 1;
    if (v13 - 2 < (-v15 & 7 | 8uLL))
    {
      return 18;
    }

    v16 = -v15 & 7;
    *(v15 + v16) = a3;
    if (v16 != 7)
    {
      v16 = 6;
    }

    v17 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v19 = *(a1 + 72);
    v18 = *(a1 + 80);
    v20 = v16 + 10;
    if (v17 + 16 >= v19)
    {
      v17 = 0;
    }

    v21 = v20 + v17;
    if (v19 <= v21)
    {
      v21 = 0;
    }

    *(a1 + 88) = v21;
    if (*(v18 + 8) <= 0xFFuLL)
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v22 = atomic_exchange((*(v18 + 16) + 128), v21);
    v23 = *(a1 + 124);
    if (v22 == 0x80000000 || v23 != 0)
    {
      v25 = v23 + 1;
      *(a1 + 124) = v25;
      if (v25 >= *(a1 + 120))
      {
        if (*(a1 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(a1 + 100));
        }

        *(a1 + 124) = 0;
      }
    }

    *(a1 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v26, v6);
  if (v28 != 1)
  {
    return 16;
  }

  if (v27 <= 1)
  {
    __break(0xC471u);
    goto LABEL_39;
  }

  *v26 = 1671;
  v8 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v10 = *(a1 + 72);
  v9 = *(a1 + 80);
  if (v8 + 16 >= v10)
  {
    v8 = 0;
  }

  v11 = v8 + 16;
  if (v10 <= v11)
  {
    v11 = 0;
  }

  *(a1 + 88) = v11;
  if (*(v9 + 8) <= 0xFFuLL)
  {
    goto LABEL_39;
  }

  if (atomic_exchange((*(v9 + 16) + 128), v11) != 0x80000000 && !*(a1 + 124))
  {
    return 0;
  }

  if (*(a1 + 112) == 1)
  {
    MEMORY[0x19EB16320](*(a1 + 100));
  }

  result = 0;
  *(a1 + 124) = 0;
  return result;
}

uint64_t WebKit::ImageBufferShareableMappedIOSurfaceBackend::create@<X0>(uint64_t a1@<X0>, atomic_uint **a2@<X1>, void *a3@<X8>)
{
  result = WebCore::ImageBufferIOSurfaceBackend::calculateSafeBackendSize();
  if (result < 1 || result <= 0)
  {
    goto LABEL_15;
  }

  v7 = *a2;
  if (*a2)
  {
    atomic_fetch_add(v7, 1u);
  }

  WebCore::IOSurface::nameForRenderingPurpose();
  WebCore::convertToIOSurfaceFormat(*(a1 + 24));
  result = WebCore::IOSurface::create();
  if (v7)
  {
    result = WTF::ThreadSafeRefCounted<WebCore::IOSurfacePool,(WTF::DestructionThread)0>::deref(v7);
  }

  if (v17)
  {
    if (WebCore::ProcessIdentity::operator BOOL())
    {
      WebCore::IOSurface::setOwnershipIdentity();
    }

    WebCore::IOSurface::createPlatformContext();
    if (cf)
    {
      WebCore::FloatRect::operator CGRect();
      CGContextClearRect(cf, v18);
      WebKit::ImageBufferShareableMappedIOSurfaceBackend::operator new(0x60, v8);
      v9 = v17;
      v17 = 0;
      v15 = v9;
      v10 = WebCore::ImageBufferIOSurfaceBackend::ImageBufferIOSurfaceBackend();
      *v10 = &unk_1F1127970;
      v10[11] = &unk_1F1127A60;
      *a3 = v10;
      CFRelease(cf);
      WebCore::IOSurface::~IOSurface(v15);
      bmalloc::api::tzoneFree(v13, v14);
    }

    else
    {
      *a3 = 0;
    }

    result = v17;
    if (v17)
    {
      WebCore::IOSurface::~IOSurface(v17);
      return bmalloc::api::tzoneFree(v11, v12);
    }
  }

  else
  {
LABEL_15:
    *a3 = 0;
  }

  return result;
}

uint64_t WebCore::convertToIOSurfaceFormat(unsigned int a1)
{
  if (a1 < 5)
  {
    return dword_19E704740[a1];
  }

  result = 123;
  __break(0xC471u);
  return result;
}

uint64_t WebKit::ImageBufferShareableMappedIOSurfaceBackend::operator new(WebKit::ImageBufferShareableMappedIOSurfaceBackend *this, void *a2)
{
  if (WebKit::ImageBufferShareableMappedIOSurfaceBackend::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::ImageBufferShareableMappedIOSurfaceBackend::s_heapRef, a2);
  }

  else
  {
    return WebKit::ImageBufferShareableMappedIOSurfaceBackend::operatorNewSlow(0x60);
  }
}

void WebKit::ImageBufferShareableMappedIOSurfaceBackend::create(uint64_t a1@<X1>, void *a2@<X8>)
{
  if (*(a1 + 80) == 1 && (WebCore::IOSurface::createFromSendRight(), v12))
  {
    WebCore::IOSurface::createPlatformContext();
    if (cf)
    {
      WebKit::ImageBufferShareableMappedIOSurfaceBackend::operator new(0x60, v3);
      v4 = v12;
      v12 = 0;
      v10 = v4;
      v5 = WebCore::ImageBufferIOSurfaceBackend::ImageBufferIOSurfaceBackend();
      *v5 = &unk_1F1127970;
      v5[11] = &unk_1F1127A60;
      *a2 = v5;
      CFRelease(cf);
      WebCore::IOSurface::~IOSurface(v10);
      bmalloc::api::tzoneFree(v8, v9);
    }

    else
    {
      *a2 = 0;
    }

    if (v12)
    {
      WebCore::IOSurface::~IOSurface(v12);
      bmalloc::api::tzoneFree(v6, v7);
    }
  }

  else
  {
    *a2 = 0;
  }
}

void WebKit::ImageBufferShareableMappedIOSurfaceBackend::createBackendHandle(uint64_t a1@<X0>, WTF::MachSendRight *a2@<X8>)
{
  WebCore::IOSurface::createSendRight(v3, *(a1 + 48));
  WTF::MachSendRight::MachSendRight();
  v4 = 1;
  *a2 = 0;
  *(a2 + 80) = -1;
  mpark::detail::constructor<mpark::detail::traits<WebCore::ShareableBitmapHandle,WTF::MachSendRight>>::generic_construct<mpark::detail::move_constructor<mpark::detail::traits<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,(mpark::detail::Trait)1>>(a2, v3 + 4);
  *(a2 + 88) = 1;
  mpark::detail::move_constructor<mpark::detail::traits<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,(mpark::detail::Trait)1>::~move_constructor((v3 + 4));
  WTF::MachSendRight::~MachSendRight(v3);
}

WTF::StringImpl *WebKit::ImageBufferShareableMappedIOSurfaceBackend::debugDescription@<X0>(WebKit::ImageBufferShareableMappedIOSurfaceBackend *this@<X0>, uint64_t *a2@<X8>)
{
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 1;
  v11 = 0;
  v12 = 256;
  v13 = 0;
  WTF::TextStream::operator<<();
  WTF::TextStream::operator<<();
  WTF::TextStream::operator<<();
  if (*(this + 6))
  {
    WebCore::operator<<();
  }

  else
  {
    WTF::TextStream::operator<<();
  }

  WTF::TextStream::release(a2, &v7);
  v5 = v8;
  v8 = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v4);
  }

  result = v7;
  v7 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v4);
    }
  }

  return result;
}

WebCore::IOSurface *WebKit::ImageBufferShareableMappedIOSurfaceBitmapBackend::create@<X0>(uint64_t a1@<X0>, atomic_uint **a2@<X1>, uint64_t *a3@<X8>)
{
  result = WebCore::ImageBufferIOSurfaceBackend::calculateSafeBackendSize();
  if (result >= 1 && result > 0)
  {
    v7 = *a2;
    if (!*a2)
    {
      goto LABEL_27;
    }

    atomic_fetch_add(v7, 1u);
    WebCore::convertToIOSurfaceFormat(*(a1 + 24));
    WebCore::IOSurface::create();
    for (result = WTF::ThreadSafeRefCounted<WebCore::IOSurfacePool,(WTF::DestructionThread)0>::deref(v7); ; result = WebCore::IOSurface::create())
    {
      if (!v23)
      {
        goto LABEL_20;
      }

      if (WebCore::ProcessIdentity::operator BOOL())
      {
        WebCore::IOSurface::setOwnershipIdentity();
      }

      WebCore::IOSurface::createBitmapPlatformContext(&v20, v23);
      if (v22 != 1)
      {
        break;
      }

      v8 = cf;
      WebCore::FloatRect::operator CGRect();
      CGContextClearRect(v8, v24);
      if (v22)
      {
        v10 = *a2;
        if (WebKit::ImageBufferShareableMappedIOSurfaceBitmapBackend::s_heapRef)
        {
          NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::ImageBufferShareableMappedIOSurfaceBitmapBackend::s_heapRef, v9);
        }

        else
        {
          NonCompact = WebKit::ImageBufferShareableMappedIOSurfaceBitmapBackend::operatorNewSlow(0);
        }

        v12 = NonCompact;
        v13 = v23;
        v23 = 0;
        WebCore::ImageBufferCGBackend::ImageBufferCGBackend();
        *v12 = &unk_1F1126CE0;
        *(v12 + 48) = &unk_1F1126DD0;
        *(v12 + 56) = v13;
        *(v12 + 64) = v20;
        v20 = 0;
        *(v12 + 72) = 1;
        *(v12 + 80) = 0;
        if (v10)
        {
          atomic_fetch_add(v10, 1u);
        }

        *(v12 + 88) = v10;
        v15 = WebCore::GraphicsContextCG::operator new(0, v14);
        WebCore::GraphicsContextCG::GraphicsContextCG();
        v16 = *(v12 + 40);
        *(v12 + 40) = v15;
        if (v16)
        {
          (*(*v16 + 8))(v16);
          v15 = *(v12 + 40);
        }

        WebCore::ImageBufferCGBackend::applyBaseTransform(v12, v15);
        *a3 = v12;
        if (v22)
        {
          v17 = cf;
          cf = 0;
          if (v17)
          {
            CFRelease(v17);
          }

          WebCore::IOSurface::Locker<(WebCore::IOSurface::AccessMode)0>::~Locker(&v20);
        }

        goto LABEL_22;
      }

      __break(1u);
LABEL_27:
      WebCore::convertToIOSurfaceFormat(*(a1 + 24));
    }

    *a3 = 0;
LABEL_22:
    result = v23;
    v23 = 0;
    if (result)
    {
      WebCore::IOSurface::~IOSurface(result);
      return bmalloc::api::tzoneFree(v18, v19);
    }

    return result;
  }

LABEL_20:
  *a3 = 0;
  return result;
}

void WebKit::ImageBufferShareableMappedIOSurfaceBitmapBackend::~ImageBufferShareableMappedIOSurfaceBitmapBackend(WebCore::IOSurface **this)
{
  WebKit::ImageBufferShareableMappedIOSurfaceBitmapBackend::releaseGraphicsContext(this);
  WebCore::IOSurface::moveToPool();
  v2 = this[11];
  this[11] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WebCore::IOSurfacePool,(WTF::DestructionThread)0>::deref(v2);
  }

  if (*(this + 72) == 1)
  {
    WebCore::IOSurface::Locker<(WebCore::IOSurface::AccessMode)0>::~Locker(this + 8);
  }

  std::unique_ptr<WebCore::IOSurface>::reset[abi:sn200100](this + 7, 0);

  MEMORY[0x1EEE578C0](this);
}

{
  WebKit::ImageBufferShareableMappedIOSurfaceBitmapBackend::~ImageBufferShareableMappedIOSurfaceBitmapBackend(this);

  bmalloc::api::tzoneFree(v1, v2);
}

__IOSurface **WebKit::ImageBufferShareableMappedIOSurfaceBitmapBackend::releaseGraphicsContext(WebKit::ImageBufferShareableMappedIOSurfaceBitmapBackend *this)
{
  result = *(this + 5);
  *(this + 5) = 0;
  if (result)
  {
    result = (*(*result + 1))(result);
  }

  if (*(this + 72) == 1)
  {
    result = WebCore::IOSurface::Locker<(WebCore::IOSurface::AccessMode)0>::~Locker(this + 8);
    *(this + 72) = 0;
  }

  return result;
}

void non-virtual thunk toWebKit::ImageBufferShareableMappedIOSurfaceBitmapBackend::~ImageBufferShareableMappedIOSurfaceBitmapBackend(WebCore::IOSurface **this)
{
  WebKit::ImageBufferShareableMappedIOSurfaceBitmapBackend::~ImageBufferShareableMappedIOSurfaceBitmapBackend(this - 6);
}

{
  WebKit::ImageBufferShareableMappedIOSurfaceBitmapBackend::~ImageBufferShareableMappedIOSurfaceBitmapBackend(this - 6);

  bmalloc::api::tzoneFree(v1, v2);
}

void WebKit::ImageBufferShareableMappedIOSurfaceBitmapBackend::createBackendHandle(uint64_t a1@<X0>, WTF::MachSendRight *a2@<X8>)
{
  WebCore::IOSurface::createSendRight(v3, *(a1 + 56));
  WTF::MachSendRight::MachSendRight();
  v4 = 1;
  *a2 = 0;
  *(a2 + 80) = -1;
  mpark::detail::constructor<mpark::detail::traits<WebCore::ShareableBitmapHandle,WTF::MachSendRight>>::generic_construct<mpark::detail::move_constructor<mpark::detail::traits<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,(mpark::detail::Trait)1>>(a2, v3 + 4);
  *(a2 + 88) = 1;
  mpark::detail::move_constructor<mpark::detail::traits<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,(mpark::detail::Trait)1>::~move_constructor((v3 + 4));
  WTF::MachSendRight::~MachSendRight(v3);
}

uint64_t WebKit::ImageBufferShareableMappedIOSurfaceBitmapBackend::context(WebKit::ImageBufferShareableMappedIOSurfaceBitmapBackend *this)
{
  v3 = *(this + 5);
  if (v3)
  {
    *(v3 + 688) |= 0x10u;
    v1 = *(v3 + 656);
    if (!v1)
    {
      return *(this + 5);
    }

    CFRetain(*(v3 + 656));
    if (*(this + 72) == 1)
    {
      v4 = *(this + 5);
LABEL_5:
      CFRelease(v1);
      return v4;
    }

    goto LABEL_11;
  }

  BitmapPlatformContext = WebCore::IOSurface::createBitmapPlatformContext(&buffer, *(this + 7));
  if (v25 != 1)
  {
LABEL_19:
    v13 = qword_1ED6410D0;
    v14 = os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT);
    if (v14)
    {
      LOWORD(buffer) = 0;
      _os_log_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEFAULT, "ImageBufferShareableMappedIOSurfaceBitmapBackend::context() - failed to create or update the context", &buffer, 2u);
    }

    v16 = WebCore::GraphicsContextCG::operator new(v14, v15);
    WebCore::GraphicsContextCG::GraphicsContextCG();
    v17 = *(this + 5);
    *(this + 5) = v16;
    if (v17)
    {
      (*(*v17 + 8))(v17);
      v16 = *(this + 5);
    }

    WebCore::ImageBufferCGBackend::applyBaseTransform(this, v16);
    return *(this + 5);
  }

  if (*(this + 72) == 1)
  {
    v7 = buffer;
    buffer = 0;
    BitmapPlatformContext = *(this + 8);
    *(this + 8) = v7;
    if (BitmapPlatformContext)
    {
      CFRelease(BitmapPlatformContext);
      if ((v25 & 1) == 0)
      {
        __break(1u);
LABEL_11:
        v8 = *(this + 7);
        if (!IOSurfaceLock(*(v8 + 64), 0, 0))
        {
          v9 = *(v8 + 64);
          if (v9)
          {
            CFRetain(v9);
          }

          buffer = v9;
          v26 = 0;
          LOBYTE(cf) = 1;
          WebCore::IOSurface::Locker<(WebCore::IOSurface::AccessMode)0>::~Locker(&v26);
          v10 = buffer;
          BaseAddress = IOSurfaceGetBaseAddress(buffer);
          if (BaseAddress == CGBitmapContextGetData(v1))
          {
            if (*(this + 72))
            {
              buffer = 0;
              v22 = *(this + 8);
              *(this + 8) = v10;
              if (v22)
              {
                CFRelease(v22);
              }
            }

            else
            {
              *(this + 8) = v10;
              buffer = 0;
              *(this + 72) = 1;
            }

            v4 = *(this + 5);
            WebCore::IOSurface::Locker<(WebCore::IOSurface::AccessMode)0>::~Locker(&buffer);
            goto LABEL_5;
          }

          WebCore::IOSurface::Locker<(WebCore::IOSurface::AccessMode)0>::~Locker(&buffer);
        }

        v12 = *(this + 5);
        *(this + 5) = 0;
        if (v12)
        {
          (*(*v12 + 8))(v12);
        }

        CFRelease(v1);
        goto LABEL_19;
      }
    }
  }

  else
  {
    *(this + 8) = buffer;
    buffer = 0;
    *(this + 72) = 1;
  }

  v19 = WebCore::GraphicsContextCG::operator new(BitmapPlatformContext, v6);
  WebCore::GraphicsContextCG::GraphicsContextCG();
  v20 = *(this + 5);
  *(this + 5) = v19;
  if (v20)
  {
    (*(*v20 + 8))(v20);
    v19 = *(this + 5);
  }

  WebCore::ImageBufferCGBackend::applyBaseTransform(this, v19);
  v4 = *(this + 5);
  if (v25)
  {
    v21 = cf;
    cf = 0;
    if (v21)
    {
      CFRelease(v21);
    }

    WebCore::IOSurface::Locker<(WebCore::IOSurface::AccessMode)0>::~Locker(&buffer);
  }

  return v4;
}

uint64_t WebKit::ImageBufferShareableMappedIOSurfaceBitmapBackend::setVolatile(WebCore::IOSurface **this)
{
  v2 = WebCore::IOSurface::isInUse(this[7]);
  if ((v2 & 1) == 0)
  {
    *(this + 80) = 1;
    WebCore::IOSurface::setVolatile(this[7]);
  }

  return v2 ^ 1u;
}

__IOSurface **WebKit::ImageBufferShareableMappedIOSurfaceBitmapBackend::flushContext(__IOSurface **this)
{
  if (*(this + 72) == 1)
  {
    v1 = this;
    this = WebCore::IOSurface::Locker<(WebCore::IOSurface::AccessMode)0>::~Locker(this + 8);
    *(v1 + 72) = 0;
  }

  return this;
}

_BYTE *WebKit::AudioTrackPrivateRemote::updateConfiguration(uint64_t a1, uint64_t *a2, const WTF::StringImpl *a3)
{
  v5 = *a2;
  if (*a2 != *(a1 + 120))
  {
    *(a1 + 120) = v5;
    v6 = WTF::fastMalloc(0x10);
    *v6 = &unk_1F1127BF8;
    v6[1] = v5;
    v21 = v6;
    WebCore::TrackPrivateBase::notifyClients();
    if (v21)
    {
      (*(*v21 + 8))(v21);
    }
  }

  v7 = a1 + 128;
  if ((WTF::equal(a2[1], *(a1 + 128), a3) & 1) == 0)
  {
    if (*v7)
    {
      v9 = *(*v7 + 4);
      WTF::String::operator=((a1 + 128), a2 + 1);
      if (v9)
      {
        WTF::String::isolatedCopy();
        v10 = WTF::fastMalloc(0x10);
        *v10 = &unk_1F1127C20;
        v10[1] = v25;
        v22 = v10;
        WebCore::TrackPrivateBase::notifyClients();
        if (v22)
        {
          (*(*v22 + 8))(v22);
        }

        v25 = 0;
      }
    }

    else
    {
      WTF::String::operator=((a1 + 128), a2 + 1);
    }
  }

  v11 = a1 + 136;
  if ((WTF::equal(a2[2], *(a1 + 136), v8) & 1) == 0)
  {
    if (*v11)
    {
      v13 = *(*v11 + 4);
      WTF::String::operator=((a1 + 136), a2 + 2);
      if (v13)
      {
        WTF::String::isolatedCopy();
        v14 = WTF::fastMalloc(0x10);
        *v14 = &unk_1F1127C48;
        v14[1] = v25;
        v23 = v14;
        WebCore::TrackPrivateBase::notifyClients();
        if (v23)
        {
          (*(*v23 + 8))(v23);
        }
      }
    }

    else
    {
      WTF::String::operator=((a1 + 136), a2 + 2);
    }
  }

  *(a1 + 144) = *(a2 + 10);
  v15 = a2[3];
  *(a1 + 157) = *(a2 + 29);
  *(a1 + 152) = v15;
  *(a1 + 112) = *(a2 + 45);
  if ((WebCore::operator==((a2 + 6), a1 + 64, v12) & 1) == 0)
  {
    v17 = a2[6];
    a2[6] = 0;
    v18 = *(a1 + 64);
    *(a1 + 64) = v17;
    if (v18)
    {
      if (atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v18, v16);
      }

      v17 = *(a1 + 64);
    }

    *(a1 + 72) = *(a2 + 7);
    if (v17)
    {
      atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed);
    }

    v24 = *(a1 + 72);
    v19 = WTF::fastMalloc(0x20);
    *v19 = &unk_1F1127B80;
    *(v19 + 8) = v17;
    *(v19 + 16) = v24;
    v26 = v19;
    WebCore::TrackPrivateBase::notifyClients();
    if (v26)
    {
      (*(*v26 + 8))(v26);
    }
  }

  return WebCore::AudioTrackPrivate::setEnabled(a1, *(a2 + 44));
}

atomic_uchar *WebKit::AudioTrackPrivateRemote::setEnabled(WebKit::AudioTrackPrivateRemote *this, int a2)
{
  result = *(this + 13);
  if (result)
  {
    result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(result, *(this + 12), &v17);
    if (v17)
    {
      if (*(this + 56) != a2)
      {
        v6 = *(v17 + 32);
        v7 = *(this + 15);
        v16[0] = a2;
        v8 = *(this + 21);
        v9 = IPC::Encoder::operator new(0x238, v5);
        *v9 = 1401;
        *(v9 + 2) = 0;
        *(v9 + 3) = 0;
        *(v9 + 1) = v8;
        *(v9 + 68) = 0;
        *(v9 + 70) = 0;
        *(v9 + 69) = 0;
        IPC::Encoder::encodeHeader(v9);
        v18 = v9;
        IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v9, v7);
        IPC::Encoder::operator<<<BOOL &>(v9, v16);
        IPC::Connection::sendMessageImpl(v6, &v18, 0, 0);
        v11 = v18;
        v18 = 0;
        if (v11)
        {
          IPC::Encoder::~Encoder(v11, v10);
          bmalloc::api::tzoneFree(v14, v15);
        }
      }

      result = WebCore::AudioTrackPrivate::setEnabled(this, a2);
      v13 = v17;
      v17 = 0;
      if (v13)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref((v13 + 24), v12);
      }
    }
  }

  return result;
}

_BYTE *WebCore::AudioTrackPrivate::setEnabled(_BYTE *this, int a2)
{
  if (this[56] != a2)
  {
    v2 = a2;
    v3 = this;
    this[56] = a2;
    v4 = WTF::fastMalloc(0x10);
    *v4 = &unk_1F1127B58;
    *(v4 + 8) = v2;
    v5 = v4;
    WebCore::TrackPrivateBase::notifyClients();
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    this = *(v3 + 11);
    if (this)
    {
      return (*(*this + 16))(this, v3, v3[56]);
    }
  }

  return this;
}

uint64_t WebKit::MediaPlayerPrivateRemote::TimeProgressEstimator::currentTimeWithLockHeld(WebKit::MediaPlayerPrivateRemote::TimeProgressEstimator *this)
{
  v2 = atomic_load(this + 1);
  if ((v2 & 1) != 0 && *(this + 64) != 1)
  {
    v4 = *(this + 4);
    v5 = WTF::MonotonicTime::now(this);
    v29 = WTF::MediaTime::createWithDouble(v5, v4 * (v6 - *(this + 3)));
    v30 = v7;
    v31 = v8;
    *&v32 = WTF::MediaTime::operator+();
    DWORD2(v32) = v9;
    BYTE12(v32) = v10;
    v11 = WTF::MediaTime::zeroTime(v32);
    if ((WTF::operator<=>() & 0x80u) == 0)
    {
      v11 = &v32;
    }

    v12 = *(this + 10);
    if (v12)
    {
      v13 = 0;
      v14 = *(this + 9);
      atomic_compare_exchange_strong_explicit(v12, &v13, 1u, memory_order_acquire, memory_order_acquire);
      if (v13)
      {
        v28 = v12;
        MEMORY[0x19EB01E30]();
        v12 = v28;
      }

      if (*(v12 + 24))
      {
        ++*(v12 + 8);
      }

      else
      {
        v14 = 0;
      }

      v15 = 1;
      atomic_compare_exchange_strong_explicit(v12, &v15, 0, memory_order_release, memory_order_relaxed);
      if (v15 != 1)
      {
        WTF::Lock::unlockSlow(v12);
      }
    }

    else
    {
      v14 = 0;
    }

    v29 = WebKit::MediaPlayerPrivateRemote::duration(v14);
    v30 = v16;
    v31 = v17;
    if ((WTF::operator<=>() & 0x80u) == 0)
    {
      v18 = v11;
    }

    else
    {
      v18 = &v29;
    }

    v19 = *(v18 + 5);
    *&v32 = *v18;
    *(&v32 + 5) = v19;
    if (v14)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>::deref(v14 + 6);
    }

    v20 = &v32 + 8;
    v21 = (this + 40);
    if (*(this + 4) >= 0.0)
    {
      if (*(this + 56))
      {
        v24 = (this + 40);
      }

      else
      {
        v24 = &v32;
      }

      if (*(this + 56))
      {
        v20 = this + 48;
      }

      v25 = *v20;
      v29 = *v24;
      v30 = v25;
      v31 = BYTE4(v25);
    }

    else
    {
      if (*(this + 56))
      {
        v22 = (this + 40);
      }

      else
      {
        v22 = &v32;
      }

      if (*(this + 56))
      {
        v20 = this + 48;
      }

      v23 = *v20;
      v29 = *v22;
      v30 = v23;
      v31 = BYTE4(v23);
    }

    if ((WTF::operator<=>() & 0x80u) == 0)
    {
      v26 = &v29;
    }

    else
    {
      v26 = &v32;
    }

    v27 = *(v26 + 5);
    *&v32 = *v26;
    *(&v32 + 5) = v27;
    if (*(this + 56) == 1)
    {
      *v21 = v32;
      *(this + 45) = *(&v32 + 5);
    }

    else
    {
      *v21 = v32;
      *(this + 56) = 1;
    }
  }

  else
  {
    return *(this + 8);
  }

  return v32;
}

uint64_t WebKit::MediaPlayerPrivateRemote::duration(WebKit::MediaPlayerPrivateRemote *this)
{
  v1 = *(this + 63);
  if (!v1)
  {
    return *(this + 31);
  }

  v2 = (v1 + 8);
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
      goto LABEL_7;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v2);
LABEL_7:
  v5 = WebCore::MediaSourcePrivate::duration(v1);
  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaSourcePrivate,(WTF::DestructionThread)0>::deref(v2, v6);
  return v5;
}

atomic_uchar *WebKit::MediaPlayerPrivateRemote::TimeProgressEstimator::setTime(atomic_uchar *this, uint64_t *a2)
{
  v3 = this;
  v4 = 0;
  atomic_compare_exchange_strong_explicit(this, &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    this = MEMORY[0x19EB01E30](this);
  }

  v5 = *a2;
  *(v3 + 13) = *(a2 + 5);
  *(v3 + 1) = v5;
  *(v3 + 3) = a2[3];
  atomic_store(*(a2 + 16), v3 + 1);
  LOBYTE(v5) = atomic_load(v3 + 1);
  if ((v5 & 1) == 0 && v3[56] == 1)
  {
    v3[56] = 0;
  }

  v3[64] = 0;
  v6 = 1;
  atomic_compare_exchange_strong_explicit(v3, &v6, 0, memory_order_release, memory_order_relaxed);
  if (v6 != 1)
  {

    return WTF::Lock::unlockSlow(v3);
  }

  return this;
}

uint64_t WebKit::MediaPlayerPrivateRemote::MediaPlayerPrivateRemote(uint64_t a1, WebCore::MediaPlayer *a2, char a3, uint64_t a4, uint64_t a5)
{
  v10 = WebCore::MediaPlayerPrivateInterface::MediaPlayerPrivateInterface(a1);
  *(v10 + 48) = 3;
  *a1 = &unk_1F1126EC8;
  *(a1 + 56) = &unk_1F1127428;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 10000000;
  *(a1 + 84) = 1;
  *(a1 + 88) = xmmword_19E702FF0;
  *(a1 + 104) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = a1;
  v11 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>::controlBlock((v10 + 48));
  *(a1 + 144) = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v11);
  v12 = WebCore::MediaPlayer::mediaPlayerLogger(a2);
  atomic_fetch_add((v12 + 8), 1u);
  *(a1 + 152) = v12;
  *(a1 + 160) = WebCore::MediaPlayer::mediaPlayerLogIdentifier(a2);
  *(a1 + 168) = a2;
  v13 = *a2;
  if (*a2)
  {
    v13 = WTF::fastMalloc(0x20);
    *v13 = 0;
    *(v13 + 8) = xmmword_19E7014F0;
    *(v13 + 24) = a2;
    while (1)
    {
      v27 = *a2;
      if ((*a2 & 1) == 0)
      {
        break;
      }

      *(v13 + 8) = v27 >> 1;
      v28 = v27;
      atomic_compare_exchange_strong_explicit(a2, &v28, v13, memory_order_release, memory_order_relaxed);
      if (v28 == v27)
      {
        goto LABEL_2;
      }
    }

    WTF::fastFree(v13, v26);
    v13 = *a2;
  }

LABEL_2:
  *(a1 + 176) = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v13);
  v15 = *(a1 + 152);
  if (*MEMORY[0x1E69E2670])
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(*MEMORY[0x1E69E2670], v14);
  }

  else
  {
    NonCompact = WebCore::VideoLayerManagerObjC::operatorNewSlow(0x50);
  }

  *(a1 + 184) = WebCore::VideoLayerManagerObjC::VideoLayerManagerObjC(NonCompact, v15);
  *(a1 + 192) = 0;
  *(a1 + 200) = a5;
  v17 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::RemoteMediaPlayerManager,(WTF::DestructionThread)0>::controlBlock((a5 + 8));
  *(a1 + 208) = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v17);
  *(a1 + 216) = a3;
  *(a1 + 224) = a4;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 10000000;
  *(a1 + 260) = 1;
  *(a1 + 264) = 0;
  *(a1 + 272) = 10000000;
  *(a1 + 276) = 1;
  *(a1 + 280) = 0;
  *(a1 + 288) = 10000000;
  *(a1 + 292) = 1;
  *(a1 + 296) = 0;
  *(a1 + 304) = 10000000;
  *(a1 + 308) = 1;
  *(a1 + 312) = 0;
  *(a1 + 320) = 10000000;
  *(a1 + 324) = 1;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 370) = 0;
  *(a1 + 372) = 0;
  *(a1 + 456) = 0;
  *(a1 + 344) = 0;
  *(a1 + 328) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 409) = 0u;
  *(a1 + 464) = 257;
  *(a1 + 466) = 1;
  *(a1 + 467) = 0;
  *(a1 + 470) = 0;
  WebCore::PlatformTimeRanges::PlatformTimeRanges((a1 + 480));
  *(a1 + 512) = 0;
  *(a1 + 496) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 536) = 0u;
  *(a1 + 552) = 0;
  *(a1 + 560) = 1065353216;
  *(a1 + 568) = 0u;
  *(a1 + 584) = 0u;
  *(a1 + 600) = 1065353216;
  *(a1 + 608) = 0u;
  *(a1 + 624) = 0u;
  *(a1 + 640) = 1065353216;
  WebCore::MediaPlayer::documentSecurityOrigin(a2);
  *(a1 + 680) = 0;
  *(a1 + 688) = 1;
  *(a1 + 696) = 0u;
  *(a1 + 712) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(a1 + 792) = 0;
  *(a1 + 800) = 0;
  *(a1 + 808) = 0;
  *(a1 + 904) = 0;
  *(a1 + 912) = 0;
  *(a1 + 720) = _Q0;
  *(a1 + 736) = 0u;
  *(a1 + 752) = 0u;
  *(a1 + 768) = 0u;
  *(a1 + 784) = 0;
  *(a1 + 920) = 0;
  *(a1 + 936) = 0;
  *(a1 + 928) = 0;
  v23 = *(a1 + 152);
  atomic_fetch_add(v23 + 2, 1u);
  v24 = *(a1 + 160);
  v29[0] = "MediaPlayerPrivateRemote";
  v29[1] = 25;
  v29[2] = "MediaPlayerPrivateRemote";
  v29[3] = v24;
  if (WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier>(v23, &WebKit2LogMedia, 0, v29))
  {
    WTF::Logger::log<WTF::Logger::LogSiteIdentifier>(&WebKit2LogMedia, 0, v29);
  }

  if (v23 && atomic_fetch_add(v23 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v23 + 2);
    (*(*v23 + 8))(v23);
  }

  return a1;
}

uint64_t WebCore::MediaPlayer::mediaPlayerLogIdentifier(WebCore::MediaPlayer *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      return (*(*v2 + 672))();
    }
  }

  result = 133;
  __break(0xC471u);
  return result;
}

void WebKit::MediaPlayerPrivateRemote::~MediaPlayerPrivateRemote(WebKit::MediaPlayerPrivateRemote *this)
{
  v2 = *(this + 19);
  atomic_fetch_add(v2 + 2, 1u);
  v3 = *(this + 20);
  v64 = "MediaPlayerPrivateRemote";
  v65 = 25;
  v66 = "~MediaPlayerPrivateRemote";
  v67 = v3;
  if (WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier>(v2, &WebKit2LogMedia, 0, &v64))
  {
    WTF::Logger::log<WTF::Logger::LogSiteIdentifier>(&WebKit2LogMedia, 0, &v64);
  }

  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  (*(**(this + 23) + 32))(*(this + 23));
  v4 = *(this + 26);
  if (v4)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(v4, *(this + 25), &v64);
    v5 = v64;
    WebKit::RemoteMediaPlayerManager::deleteRemoteMediaPlayer(v64, *(this + 28));
    if (v5)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::RemoteMediaPlayerManager,(WTF::DestructionThread)0>::deref(v5 + 1, v6);
    }
  }

  else
  {
    WebKit::RemoteMediaPlayerManager::deleteRemoteMediaPlayer(0, *(this + 28));
  }

  v8 = *(this + 62);
  if (v8)
  {
    v9 = v8 + 2;
    atomic_fetch_add(v8 + 2, 1u);
    WebKit::RemoteAudioSourceProvider::close(v8);
    WTF::ThreadSafeRefCounted<WebCore::WebAudioSourceProvider,(WTF::DestructionThread)1>::deref(v9);
  }

  *&v7 = 0;
  v10 = *(this + 96);
  v64 = v10;
  v11 = *(this + 195);
  LODWORD(v65) = *(this + 194);
  HIDWORD(v65) = v11;
  v63 = v7;
  *(this + 96) = 0;
  *(this + 97) = 0;
  if (v11)
  {
    v12 = 8 * v11;
    do
    {
      v60 = 0;
      v61 = 0;
      v62 = 0;
      WTF::CompletionHandler<void ()(WebCore::HostingContext)>::operator()(v10, &v60);
      v14 = v62;
      v62 = 0;
      if (v14)
      {
        WTF::fastFree(v14, v13);
      }

      WTF::MachSendRight::~MachSendRight(&v61);
      ++v10;
      v12 -= 8;
    }

    while (v12);
  }

  WTF::Vector<WTF::CompletionHandler<void ()(WebCore::HostingContext)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v64, v6);
  WTF::Vector<WTF::CompletionHandler<void ()(WebCore::HostingContext)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v63, v15);
  v16 = *(this + 65);
  *(this + 65) = 0;
  v17 = WTF::fastMalloc(0x10);
  *v17 = &unk_1F1127C70;
  v17[1] = v16;
  v64 = v17;
  WTF::ensureOnMainThread();
  v19 = v64;
  v64 = 0;
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  v20 = *(this + 117);
  *(this + 117) = 0;
  if (v20 && atomic_fetch_add(v20, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v20);
    WTF::fastFree(v20, v18);
  }

  v21 = *(this + 116);
  *(this + 116) = 0;
  if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v21, v18);
  }

  v22 = *(this + 115);
  *(this + 115) = 0;
  if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v22, v18);
  }

  v23 = *(this + 100);
  *(this + 100) = 0;
  if (v23)
  {
    WTF::fastFree(v23, v18);
  }

  WTF::MachSendRight::~MachSendRight((this + 792));
  WTF::Vector<WTF::CompletionHandler<void ()(WebCore::HostingContext)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 768, v24);
  v26 = *(this + 95);
  *(this + 95) = 0;
  if (v26 && atomic_fetch_add(v26 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v26 + 2);
    (*(*v26 + 8))(v26);
  }

  v27 = *(this + 94);
  *(this + 94) = 0;
  if (v27 && atomic_fetch_add(v27 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v27 + 2);
    v27 = (*(*v27 + 8))(v27);
  }

  v28 = *(this + 85);
  if (v28)
  {
    v29 = *(v28 - 4);
    if (v29)
    {
      v30 = *(this + 85);
      while (!*(v30 + 24))
      {
        if (*v30 != -1)
        {
          v31 = *(v30 + 8);
          *(v30 + 8) = 0;
          if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v31, v25);
          }

          v27 = *v30;
          *v30 = 0;
          if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            v27 = WTF::StringImpl::destroy(v27, v25);
          }

LABEL_47:
          *(v30 + 24) = -1;
        }

        v30 += 40;
        if (!--v29)
        {
          goto LABEL_52;
        }
      }

      if (*(v30 + 24) != 1)
      {
        mpark::throw_bad_variant_access(v27);
      }

      goto LABEL_47;
    }

LABEL_52:
    WTF::fastFree((v28 - 16), v25);
  }

  if (!*(this + 672))
  {
    v32 = *(this + 82);
    *(this + 82) = 0;
    if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v32, v25);
    }

    v33 = *(this + 81);
    *(this + 81) = 0;
    if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v33, v25);
    }
  }

  *(this + 672) = -1;
  v34 = *(this + 78);
  if (v34)
  {
    do
    {
      v35 = *v34;
      v36 = *(v34 + 3);
      *(v34 + 3) = 0;
      if (v36)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::TrackPrivateBase,(WTF::DestructionThread)0>::deref((v36 + 8), v25);
      }

      WTF::fastFree(v34, v25);
      v34 = v35;
    }

    while (v35);
  }

  v37 = *(this + 76);
  *(this + 76) = 0;
  if (v37)
  {
    WTF::fastFree(v37, v25);
  }

  v38 = *(this + 73);
  if (v38)
  {
    do
    {
      v39 = *v38;
      v40 = *(v38 + 3);
      *(v38 + 3) = 0;
      if (v40)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::TrackPrivateBase,(WTF::DestructionThread)0>::deref((v40 + 8), v25);
      }

      WTF::fastFree(v38, v25);
      v38 = v39;
    }

    while (v39);
  }

  v41 = *(this + 71);
  *(this + 71) = 0;
  if (v41)
  {
    WTF::fastFree(v41, v25);
  }

  v42 = *(this + 68);
  if (v42)
  {
    do
    {
      v43 = *v42;
      v44 = *(v42 + 3);
      *(v42 + 3) = 0;
      if (v44)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::TrackPrivateBase,(WTF::DestructionThread)0>::deref((v44 + 8), v25);
      }

      WTF::fastFree(v42, v25);
      v42 = v43;
    }

    while (v43);
  }

  v45 = *(this + 66);
  *(this + 66) = 0;
  if (v45)
  {
    WTF::fastFree(v45, v25);
  }

  v46 = *(this + 65);
  if (v46)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::PlatformMediaResource,WTF::RawPtrTraits<WebCore::PlatformMediaResource>,WTF::DefaultRefDerefTraits<WebCore::PlatformMediaResource>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::PlatformMediaResource,WTF::RawPtrTraits<WebCore::PlatformMediaResource>,WTF::DefaultRefDerefTraits<WebCore::PlatformMediaResource>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::PlatformMediaResource,WTF::RawPtrTraits<WebCore::PlatformMediaResource>,WTF::DefaultRefDerefTraits<WebCore::PlatformMediaResource>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebCore::PlatformMediaResource,WTF::RawPtrTraits<WebCore::PlatformMediaResource>,WTF::DefaultRefDerefTraits<WebCore::PlatformMediaResource>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v46, v25);
  }

  v47 = *(this + 63);
  *(this + 63) = 0;
  if (v47)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaSourcePrivate,(WTF::DestructionThread)0>::deref((v47 + 8), v25);
  }

  v48 = *(this + 62);
  *(this + 62) = 0;
  if (v48)
  {
    WTF::ThreadSafeRefCounted<WebCore::WebAudioSourceProvider,(WTF::DestructionThread)1>::deref((v48 + 8));
  }

  v49 = *(this + 60);
  if (v49)
  {
    *(this + 60) = 0;
    *(this + 122) = 0;
    WTF::fastFree(v49, v25);
  }

  if (*(this + 360) == 1)
  {
    v50 = *(this + 43);
    if (v50)
    {
      *(this + 43) = 0;
      *(this + 88) = 0;
      WTF::fastFree(v50, v25);
    }
  }

  v51 = *(this + 42);
  *(this + 42) = 0;
  if (v51 && atomic_fetch_add_explicit(v51, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v51, v25);
  }

  v52 = *(this + 41);
  *(this + 41) = 0;
  if (v52 && atomic_fetch_add_explicit(v52, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v52, v25);
  }

  v53 = *(this + 29);
  *(this + 29) = 0;
  if (v53 && atomic_fetch_add_explicit(v53, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v53, v25);
  }

  v54 = *(this + 26);
  *(this + 26) = 0;
  if (v54)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v54, v25);
  }

  v55 = *(this + 24);
  *(this + 24) = 0;
  if (v55)
  {
    CFRelease(v55);
  }

  v56 = *(this + 23);
  *(this + 23) = 0;
  if (v56)
  {
    (*(*v56 + 8))(v56);
  }

  v57 = *(this + 22);
  *(this + 22) = 0;
  if (v57)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v57, v25);
  }

  v58 = *(this + 19);
  *(this + 19) = 0;
  if (v58 && atomic_fetch_add(v58 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v58 + 2);
    (*(*v58 + 8))(v58);
  }

  v59 = *(this + 18);
  *(this + 18) = 0;
  if (v59)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v59, v25);
  }

  WebCore::MediaPlayerPrivateInterface::~MediaPlayerPrivateInterface(this);
}

{
  WebKit::MediaPlayerPrivateRemote::~MediaPlayerPrivateRemote(this);

  WTF::fastFree(v1, v2);
}

void non-virtual thunk toWebKit::MediaPlayerPrivateRemote::~MediaPlayerPrivateRemote(WebKit::MediaPlayerPrivateRemote *this)
{
  WebKit::MediaPlayerPrivateRemote::~MediaPlayerPrivateRemote((this - 56));
}

{
  WebKit::MediaPlayerPrivateRemote::~MediaPlayerPrivateRemote((this - 56));

  WTF::fastFree(v1, v2);
}

uint64_t WebKit::MediaPlayerPrivateRemote::prepareForPlayback(uint64_t *a1, char a2, char a3, char a4, char a5, char a6)
{
  result = a1[22];
  if (result)
  {
    result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(result, a1[21], &v41);
    if (v41)
    {
      v13 = *(v41 + 1);
      if (v13 && (v14 = *(v13 + 8)) != 0)
      {
        v15 = (*(*v14 + 280))(v14);
        v16 = *(v41 + 233);
        v40 = *(v41 + 59);
        v39 = *(v41 + 25);
        v17 = *(v41 + 240);
        v18 = WebCore::MediaPlayer::isInFullscreenOrPictureInPicture(v41);
        v20 = WebKit::MediaPlayerPrivateRemote::connection(a1, v19);
        v28 = a2;
        v29 = a3;
        v30 = a4;
        v31 = v17;
        v32 = a5;
        v33[0] = a6;
        v34 = &v39;
        v35 = v15;
        v36 = v18;
        v37 = v16;
        v38 = &v40;
        v21 = a1[28];
        v23 = IPC::Encoder::operator new(0x238, v22);
        *v23 = 1421;
        *(v23 + 2) = 0;
        *(v23 + 3) = 0;
        *(v23 + 1) = v21;
        *(v23 + 68) = 0;
        *(v23 + 70) = 0;
        *(v23 + 69) = 0;
        IPC::Encoder::encodeHeader(v23);
        v42 = v23;
        IPC::Encoder::operator<<<BOOL &>(v23, &v28);
        IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v23, v29);
        IPC::Encoder::operator<<<BOOL &>(v23, &v30);
        IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v23, v31);
        IPC::Encoder::operator<<<BOOL &>(v23, &v32);
        IPC::Encoder::operator<<<BOOL &>(v23, v33);
        IPC::ArgumentCoder<WebCore::IntPoint,void>::encode(v23, v34);
        IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(v23, v35);
        IPC::Encoder::operator<<<BOOL &>(v23, &v36);
        IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v23, v37);
        IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(v23, *v38);
        IPC::Connection::sendMessageImpl(v20, &v42, 0, 0);
        v25 = v42;
        v42 = 0;
        if (v25)
        {
          IPC::Encoder::~Encoder(v25, v24);
          bmalloc::api::tzoneFree(v26, v27);
        }

        result = v41;
        v41 = 0;
        if (result)
        {
          return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(result);
        }
      }

      else
      {
        result = 133;
        __break(0xC471u);
      }
    }
  }

  return result;
}

atomic_uchar *WebKit::MediaPlayerPrivateRemote::connection(WebKit::MediaPlayerPrivateRemote *this, void *a2)
{
  v3 = *(this + 26);
  if (!v3)
  {
    return WebKit::RemoteMediaPlayerManager::gpuProcessConnection(0, a2)[4];
  }

  WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(v3, *(this + 25), &v9);
  v4 = v9;
  v7 = WebKit::RemoteMediaPlayerManager::gpuProcessConnection(v9, v5)[4];
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::RemoteMediaPlayerManager,(WTF::DestructionThread)0>::deref(v4 + 1, v6);
  }

  return v7;
}

void WebKit::MediaPlayerPrivateRemote::load(uint64_t a1, WTF::URL *a2, uint64_t a3)
{
  v54 = *MEMORY[0x1E69E9840];
  LOBYTE(v48) = 0;
  v49 = 0;
  if (WTF::URL::protocolIs())
  {
    v47 = 0;
    WTF::URL::fileSystemPath(&v46, a2);
    v8 = *(a1 + 208);
    if (v8)
    {
      WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(v8, *(a1 + 200), v50);
      v9 = *v50;
    }

    else
    {
      v9 = 0;
    }

    WebKit::RemoteMediaPlayerManager::protectedGPUProcessConnection(v9, v7, v50);
    v10 = *v50;
    if (WebKit::GPUProcessConnection::waitForDidInitialize(*v50))
    {
      v12 = *(v10 + 80);
      v53[0] = *(v10 + 81);
      *(v53 + 15) = *(v10 + 96);
      *v50 = 0;
      v13 = *(v10 + 112);
    }

    else
    {
      v13 = 0;
      v12 = 0;
      v14 = 0;
      v15 = 0;
      *v50 = 0;
      if (!v10)
      {
        goto LABEL_9;
      }
    }

    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref((v10 + 24), v11);
    v14 = v13;
    v15 = v12;
LABEL_9:
    if (v9)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::RemoteMediaPlayerManager,(WTF::DestructionThread)0>::deref(v9 + 1, v11);
    }

    if (v14)
    {
      if (v46)
      {
        v16 = *(v46 + 1);
        v17 = *(v46 + 1) | (((*(v46 + 4) >> 2) & 1) << 32);
      }

      else
      {
        v16 = 0;
        v17 = 0x100000000;
      }

      v50[0] = v15;
      *&v50[1] = v53[0];
      *&v50[16] = *(v53 + 15);
      WebKit::SandboxExtension::createHandleForReadByAuditToken(v16, v17, v50, &v51);
      if (v52 == 1)
      {
        v18 = v51;
        v51 = 0;
        if (v47)
        {
          WebKit::SandboxExtensionImpl::~SandboxExtensionImpl(v47);
          bmalloc::api::tzoneFree(v40, v41);
          if ((v52 & 1) == 0)
          {
LABEL_22:
            v47 = 0;
            if (v49 == 1)
            {
              v21 = v48;
              v48 = v18;
              if (v21)
              {
                WebKit::SandboxExtensionImpl::~SandboxExtensionImpl(v21);
                bmalloc::api::tzoneFree(v44, v45);
              }

              v22 = 1;
            }

            else
            {
              v48 = v18;
              v22 = 1;
              v49 = 1;
            }

            goto LABEL_32;
          }
        }

        v19 = &v51;
LABEL_21:
        WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(v19);
        goto LABEL_22;
      }
    }

    else
    {
      WebKit::SandboxExtension::createHandle(0, v50);
      if (v50[8] == 1)
      {
        v18 = *v50;
        *v50 = 0;
        if (v47)
        {
          WebKit::SandboxExtensionImpl::~SandboxExtensionImpl(v47);
          bmalloc::api::tzoneFree(v42, v43);
        }

        v19 = v50;
        goto LABEL_21;
      }
    }

    WTFLogAlways();
    *(a1 + 368) = 4;
    v23 = *(a1 + 176);
    if (v23)
    {
      WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(v23, *(a1 + 168), v50);
      if (*v50)
      {
        WebCore::MediaPlayer::networkStateChanged(*v50);
        v24 = *v50;
        *v50 = 0;
        if (v24)
        {
          WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(v24);
        }
      }
    }

    v22 = 0;
LABEL_32:
    v25 = v46;
    v46 = 0;
    if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v25, v20);
    }

    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v47);
    if (!v22)
    {
      goto LABEL_41;
    }
  }

  v26 = WebKit::MediaPlayerPrivateRemote::connection(a1, v6);
  v27 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>::controlBlock((a1 + 48));
  v28 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v27);
  v29 = *(a1 + 224);
  v30 = WTF::fastMalloc(0x18);
  *v30 = &unk_1F1127C98;
  v30[1] = a1;
  v30[2] = v28;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    __break(0xC471u);
    return;
  }

  v31 = v30;
  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  v34 = IPC::Encoder::operator new(0x238, v33);
  *v34 = 1411;
  *(v34 + 2) = 0;
  *(v34 + 3) = 0;
  *(v34 + 1) = v29;
  *(v34 + 68) = 0;
  *(v34 + 70) = 0;
  *(v34 + 69) = 0;
  IPC::Encoder::encodeHeader(v34);
  *&v53[0] = v34;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v34, a2);
  IPC::ArgumentCoder<std::optional<WebKit::SandboxExtensionHandle>,void>::encode<IPC::Encoder,std::optional<WebKit::SandboxExtensionHandle>>(v34, &v48);
  IPC::ArgumentCoder<WebCore::MediaPlayerLoadOptions,void>::encode(v34, a3);
  *v50 = v31;
  *&v50[8] = IdentifierInternal;
  IPC::Connection::sendMessageWithAsyncReply(v26, v53, v50, 0, 0);
  v36 = *v50;
  *v50 = 0;
  if (v36)
  {
    (*(*v36 + 8))(v36);
  }

  v37 = *&v53[0];
  *&v53[0] = 0;
  if (v37)
  {
    IPC::Encoder::~Encoder(v37, v35);
    bmalloc::api::tzoneFree(v38, v39);
  }

LABEL_41:
  if (v49 == 1)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v48);
  }
}

IPC::Encoder *WebKit::MediaPlayerPrivateRemote::cancelLoad(WebKit::MediaPlayerPrivateRemote *this, void *a2)
{
  v3 = WebKit::MediaPlayerPrivateRemote::connection(this, a2);
  v4 = *(this + 28);
  v6 = IPC::Encoder::operator new(0x238, v5);
  *v6 = 1403;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = v4;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v11 = v6;
  IPC::Connection::sendMessageImpl(v3, &v11, 0, 0);
  result = v11;
  v11 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v7);
    return bmalloc::api::tzoneFree(v9, v10);
  }

  return result;
}

IPC::Encoder *WebKit::MediaPlayerPrivateRemote::prepareToPlay(WebKit::MediaPlayerPrivateRemote *this, void *a2)
{
  v3 = WebKit::MediaPlayerPrivateRemote::connection(this, a2);
  v4 = *(this + 28);
  v6 = IPC::Encoder::operator new(0x238, v5);
  *v6 = 1423;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = v4;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v11 = v6;
  IPC::Connection::sendMessageImpl(v3, &v11, 0, 0);
  result = v11;
  v11 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v7);
    return bmalloc::api::tzoneFree(v9, v10);
  }

  return result;
}

IPC::Encoder *WebKit::MediaPlayerPrivateRemote::play(WebKit::MediaPlayerPrivateRemote *this, void *a2)
{
  *(this + 466) = 0;
  v3 = WebKit::MediaPlayerPrivateRemote::connection(this, a2);
  v4 = *(this + 28);
  v6 = IPC::Encoder::operator new(0x238, v5);
  *v6 = 1418;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = v4;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v11 = v6;
  IPC::Connection::sendMessageImpl(v3, &v11, 0, 0);
  result = v11;
  v11 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v7);
    return bmalloc::api::tzoneFree(v9, v10);
  }

  return result;
}

IPC::Encoder *WebKit::MediaPlayerPrivateRemote::pause(atomic_uchar *this, void *a2)
{
  v2 = this;
  v3 = 0;
  this[466] = 1;
  v4 = this + 64;
  atomic_compare_exchange_strong_explicit(this + 64, &v3, 1u, memory_order_acquire, memory_order_acquire);
  if (v3)
  {
    this = MEMORY[0x19EB01E30](this + 64);
  }

  v5 = atomic_load(v2 + 65);
  if (v5)
  {
    v6 = WTF::MonotonicTime::now(this);
    v8 = v7;
    v20 = WTF::MediaTime::createWithDouble(v6, *(v2 + 12) * (v7 - *(v2 + 11)));
    v21 = v9;
    v22 = v10;
    *(v2 + 9) = WTF::MediaTime::operator+();
    *(v2 + 20) = a2;
    *(v2 + 84) = BYTE4(a2);
    *(v2 + 11) = v8;
    atomic_store(0, v2 + 65);
  }

  v11 = 1;
  atomic_compare_exchange_strong_explicit(v4, &v11, 0, memory_order_release, memory_order_relaxed);
  if (v11 != 1)
  {
    WTF::Lock::unlockSlow(v4);
  }

  v12 = WebKit::MediaPlayerPrivateRemote::connection(v2, a2);
  v13 = *(v2 + 28);
  v15 = IPC::Encoder::operator new(0x238, v14);
  *v15 = 1415;
  *(v15 + 2) = 0;
  *(v15 + 3) = 0;
  *(v15 + 1) = v13;
  *(v15 + 68) = 0;
  *(v15 + 70) = 0;
  *(v15 + 69) = 0;
  IPC::Encoder::encodeHeader(v15);
  v20 = v15;
  IPC::Connection::sendMessageImpl(v12, &v20, 0, 0);
  result = v20;
  v20 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v16);
    return bmalloc::api::tzoneFree(v18, v19);
  }

  return result;
}

IPC::Encoder *WebKit::MediaPlayerPrivateRemote::setPreservesPitch(WebKit::MediaPlayerPrivateRemote *this, void *a2)
{
  v2 = a2;
  v4 = WebKit::MediaPlayerPrivateRemote::connection(this, a2);
  v12 = v2;
  v5 = *(this + 28);
  v7 = IPC::Encoder::operator new(0x238, v6);
  *v7 = 1436;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = v5;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  IPC::Encoder::encodeHeader(v7);
  v13 = v7;
  IPC::Encoder::operator<<<BOOL &>(v7, &v12);
  IPC::Connection::sendMessageImpl(v4, &v13, 0, 0);
  result = v13;
  v13 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v8);
    return bmalloc::api::tzoneFree(v10, v11);
  }

  return result;
}

IPC::Encoder *WebKit::MediaPlayerPrivateRemote::setPitchCorrectionAlgorithm(WebKit::MediaPlayerPrivateRemote *a1, void *a2)
{
  v2 = a2;
  v4 = WebKit::MediaPlayerPrivateRemote::connection(a1, a2);
  v5 = *(a1 + 28);
  v7 = IPC::Encoder::operator new(0x238, v6);
  *v7 = 1431;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = v5;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  IPC::Encoder::encodeHeader(v7);
  v12 = v7;
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v7, v2);
  IPC::Connection::sendMessageImpl(v4, &v12, 0, 0);
  result = v12;
  v12 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v8);
    return bmalloc::api::tzoneFree(v10, v11);
  }

  return result;
}

IPC::Encoder *WebKit::MediaPlayerPrivateRemote::setVolumeLocked(WebKit::MediaPlayerPrivateRemote *this, void *a2)
{
  v2 = a2;
  v4 = WebKit::MediaPlayerPrivateRemote::connection(this, a2);
  v12 = v2;
  v5 = *(this + 28);
  v7 = IPC::Encoder::operator new(0x238, v6);
  *v7 = 1453;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = v5;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  IPC::Encoder::encodeHeader(v7);
  v13 = v7;
  IPC::Encoder::operator<<<BOOL &>(v7, &v12);
  IPC::Connection::sendMessageImpl(v4, &v13, 0, 0);
  result = v13;
  v13 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v8);
    return bmalloc::api::tzoneFree(v10, v11);
  }

  return result;
}

IPC::Encoder *WebKit::MediaPlayerPrivateRemote::setVolumeDouble(WebKit::MediaPlayerPrivateRemote *this, double a2, void *a3)
{
  v5 = WebKit::MediaPlayerPrivateRemote::connection(this, a3);
  v6 = *(this + 28);
  v8 = IPC::Encoder::operator new(0x238, v7);
  *v8 = 1452;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = v6;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v13 = v8;
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(v8, a2);
  IPC::Connection::sendMessageImpl(v5, &v13, 0, 0);
  result = v13;
  v13 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v9);
    return bmalloc::api::tzoneFree(v11, v12);
  }

  return result;
}

IPC::Encoder *WebKit::MediaPlayerPrivateRemote::setMuted(WebKit::MediaPlayerPrivateRemote *this, void *a2)
{
  v2 = a2;
  v4 = WebKit::MediaPlayerPrivateRemote::connection(this, a2);
  v12 = v2;
  v5 = *(this + 28);
  v7 = IPC::Encoder::operator new(0x238, v6);
  *v7 = 1429;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = v5;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  IPC::Encoder::encodeHeader(v7);
  v13 = v7;
  IPC::Encoder::operator<<<BOOL &>(v7, &v12);
  IPC::Connection::sendMessageImpl(v4, &v13, 0, 0);
  result = v13;
  v13 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v8);
    return bmalloc::api::tzoneFree(v10, v11);
  }

  return result;
}

IPC::Encoder *WebKit::MediaPlayerPrivateRemote::setPreload(WebKit::MediaPlayerPrivateRemote *a1, void *a2)
{
  v2 = a2;
  v4 = WebKit::MediaPlayerPrivateRemote::connection(a1, a2);
  v5 = *(a1 + 28);
  v7 = IPC::Encoder::operator new(0x238, v6);
  *v7 = 1434;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = v5;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  IPC::Encoder::encodeHeader(v7);
  v12 = v7;
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v7, v2);
  IPC::Connection::sendMessageImpl(v4, &v12, 0, 0);
  result = v12;
  v12 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v8);
    return bmalloc::api::tzoneFree(v10, v11);
  }

  return result;
}

IPC::Encoder *WebKit::MediaPlayerPrivateRemote::setPrivateBrowsingMode(WebKit::MediaPlayerPrivateRemote *this, void *a2)
{
  v2 = a2;
  v4 = WebKit::MediaPlayerPrivateRemote::connection(this, a2);
  v12 = v2;
  v5 = *(this + 28);
  v7 = IPC::Encoder::operator new(0x238, v6);
  *v7 = 1437;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = v5;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  IPC::Encoder::encodeHeader(v7);
  v13 = v7;
  IPC::Encoder::operator<<<BOOL &>(v7, &v12);
  IPC::Connection::sendMessageImpl(v4, &v13, 0, 0);
  result = v13;
  v13 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v8);
    return bmalloc::api::tzoneFree(v10, v11);
  }

  return result;
}

uint64_t WebKit::MediaPlayerPrivateRemote::currentTime(atomic_uchar *this, void *a2)
{
  v3 = 0;
  v4 = this + 64;
  v5 = 1;
  atomic_compare_exchange_strong_explicit(this + 64, &v3, 1u, memory_order_acquire, memory_order_acquire);
  if (v3)
  {
    MEMORY[0x19EB01E30](this + 64);
  }

  v6 = WebKit::MediaPlayerPrivateRemote::currentTimeWithLockHeld(this, a2);
  atomic_compare_exchange_strong_explicit(v4, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != 1)
  {
    WTF::Lock::unlockSlow(v4);
  }

  return v6;
}

uint64_t WebKit::MediaPlayerPrivateRemote::currentTimeWithLockHeld(WebKit::MediaPlayerPrivateRemote *this, void *a2)
{
  v3 = *(this + 63);
  if (v3)
  {
    v4 = (v3 + 1);
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
    v7 = atomic_load(this + 65);
    if (v7)
    {
      if (!WebCore::MediaSourcePrivate::hasBufferedData(v3))
      {
        v13 = *(this + 9);
        goto LABEL_34;
      }

      v29 = WebKit::MediaPlayerPrivateRemote::TimeProgressEstimator::currentTimeWithLockHeld((this + 64));
      v30 = v9;
      v31 = v10;
      v26 = WebKit::MediaPlayerPrivateRemote::duration(this);
      v27 = v11;
      LOBYTE(v28) = v12;
      if ((WTF::operator<=>() & 0x80) == 0)
      {
        v13 = WebKit::MediaPlayerPrivateRemote::duration(this);
LABEL_34:
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaSourcePrivate,(WTF::DestructionThread)0>::deref(v4, v8);
        return v13;
      }

      WebCore::MediaSourcePrivate::buffered(&v26, v3);
      WebCore::PlatformTimeRanges::start(&v26);
      if (WTF::operator<=>() < 1)
      {
        WebCore::PlatformTimeRanges::maximumBufferedTime(&v26);
        if (WTF::operator<=>() <= 0)
        {
LABEL_30:
          v20 = v29;
          goto LABEL_31;
        }

        v16 = WebCore::PlatformTimeRanges::maximumBufferedTime(&v26);
      }

      else
      {
        if (v28)
        {
          v14 = 1;
          while (1)
          {
            WebCore::PlatformTimeRanges::start(&v26);
            if (WTF::operator<=>() <= 0)
            {
              WebCore::PlatformTimeRanges::end(&v26);
              if (WTF::operator<=>() <= 0)
              {
                goto LABEL_30;
              }
            }

            if (v14 - 1 < v28 - 1)
            {
              WebCore::PlatformTimeRanges::start(&v26);
              WebCore::PlatformTimeRanges::end(&v26);
              WTF::MediaTime::operator-();
              if (WTF::operator<=>() <= 0)
              {
                WebCore::PlatformTimeRanges::start(&v26);
                if ((WTF::operator<=>() & 0x80) == 0)
                {
                  goto LABEL_30;
                }
              }
            }

            WebCore::PlatformTimeRanges::start(&v26);
            if (WTF::operator<=>() <= 0 && v14++ < v28)
            {
              continue;
            }

            break;
          }
        }

        v16 = WebCore::PlatformTimeRanges::end(&v26);
      }

      v25.i64[0] = v16;
      v25.i32[2] = v17;
      v25.i8[12] = BYTE4(v17);
      v24.i64[0] = *(this + 9);
      v24.i32[2] = *(this + 10);
      v24.i8[12] = BYTE4(*(this + 10));
      v18 = vdup_n_s32((WTF::operator<=>() & 0x80u) != 0);
      v19.i64[0] = v18.u32[0];
      v19.i64[1] = v18.u32[1];
      v20 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v19, 0x3FuLL)), v24, v25).u64[0];
LABEL_31:
      v21 = v26;
      if (v26)
      {
        v26 = 0;
        v27 = 0;
        v23 = v20;
        WTF::fastFree(v21, v8);
        v20 = v23;
      }

      v13 = v20;
      goto LABEL_34;
    }

    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaSourcePrivate,(WTF::DestructionThread)0>::deref(v3 + 1, a2);
  }

  return WebKit::MediaPlayerPrivateRemote::TimeProgressEstimator::currentTimeWithLockHeld((this + 64));
}

uint64_t WebKit::MediaPlayerPrivateRemote::willSeekToTarget(uint64_t this, const WTF::MediaTime *a2)
{
  v3 = this;
  v4 = 0;
  v5 = (this + 64);
  v6 = 1;
  atomic_compare_exchange_strong_explicit((this + 64), &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    this = MEMORY[0x19EB01E30](this + 64);
  }

  v7 = *a2;
  *(v3 + 37) = *(a2 + 5);
  *(v3 + 32) = v7;
  atomic_compare_exchange_strong_explicit(v5, &v6, 0, memory_order_release, memory_order_relaxed);
  if (v6 != 1)
  {

    return WTF::Lock::unlockSlow(v5);
  }

  return this;
}

uint64_t WebKit::MediaPlayerPrivateRemote::currentOrPendingSeekTime(atomic_uchar *this)
{
  v2 = 0;
  v3 = this + 64;
  atomic_compare_exchange_strong_explicit(this + 64, &v2, 1u, memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    MEMORY[0x19EB01E30](this + 64);
  }

  v4 = *(this + 5);
  if ((v4 & 0x100000000) != 0)
  {
    result = *(this + 4);
  }

  else
  {
    result = WebKit::MediaPlayerPrivateRemote::currentTimeWithLockHeld(this, v4);
  }

  v6 = 1;
  atomic_compare_exchange_strong_explicit(v3, &v6, 0, memory_order_release, memory_order_relaxed);
  if (v6 != 1)
  {
    v7 = result;
    WTF::Lock::unlockSlow(v3);
    return v7;
  }

  return result;
}

IPC::Encoder *WebKit::MediaPlayerPrivateRemote::seekToTarget(WebKit::MediaPlayerPrivateRemote *this, const WebCore::SeekTarget *a2)
{
  v4 = *(this + 19);
  atomic_fetch_add(v4 + 2, 1u);
  v5 = *(this + 20);
  *&v17 = "MediaPlayerPrivateRemote";
  *(&v17 + 1) = 25;
  v18 = "seekToTarget";
  v19 = v5;
  v6 = WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier,WebCore::SeekTarget>(v4, &WebKit2LogMedia, 0, &v17, a2);
  if (v6)
  {
    v6 = WTF::Logger::log<WTF::Logger::LogSiteIdentifier,WebCore::SeekTarget>(&WebKit2LogMedia, 0, &v17, a2);
  }

  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 2);
    v6 = (*(*v4 + 8))(v4);
  }

  atomic_store(1u, this + 745);
  *&v17 = *a2;
  *(&v17 + 5) = *(a2 + 5);
  LOBYTE(v18) = 0;
  WTF::MonotonicTime::now(v6);
  v19 = v7;
  WebKit::MediaPlayerPrivateRemote::TimeProgressEstimator::setTime(this + 64, &v17);
  v9 = WebKit::MediaPlayerPrivateRemote::connection(this, v8);
  v10 = *(this + 28);
  v12 = IPC::Encoder::operator new(0x238, v11);
  *v12 = 1425;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = v10;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  *&v17 = v12;
  IPC::ArgumentCoder<WebCore::SeekTarget,void>::encode(v12, a2);
  IPC::Connection::sendMessageImpl(v9, &v17, 0, 0);
  result = v17;
  *&v17 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v13);
    return bmalloc::api::tzoneFree(v15, v16);
  }

  return result;
}

uint64_t WebKit::MediaPlayerPrivateRemote::didLoadingProgressAsync(WebKit::MediaPlayerPrivateRemote *a1, uint64_t *a2)
{
  v4 = WebKit::MediaPlayerPrivateRemote::connection(a1, a2);
  v5 = *(a1 + 28);
  v6 = *a2;
  *a2 = 0;
  v7 = WTF::fastMalloc(0x10);
  *v7 = &unk_1F1127CC0;
  v7[1] = v6;
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
    *v11 = 1407;
    *(v11 + 2) = 0;
    *(v11 + 3) = 0;
    *(v11 + 1) = v5;
    *(v11 + 68) = 0;
    *(v11 + 70) = 0;
    *(v11 + 69) = 0;
    IPC::Encoder::encodeHeader(v11);
    v17[1] = IdentifierInternal;
    v18 = v11;
    v17[0] = v8;
    IPC::Connection::sendMessageWithAsyncReply(v4, &v18, v17, 0, 0);
    v13 = v17[0];
    v17[0] = 0;
    if (v13)
    {
      (*(*v13 + 8))(v13);
    }

    result = v18;
    v18 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v12);
      return bmalloc::api::tzoneFree(v15, v16);
    }
  }

  return result;
}

WebCore::MediaPlayer *WebKit::MediaPlayerPrivateRemote::networkStateChanged(uint64_t a1, uint64_t *a2)
{
  WebKit::MediaPlayerPrivateRemote::updateCachedState(a1, a2);
  result = *(a1 + 176);
  if (result)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(result, *(a1 + 168), &v4);
    result = v4;
    if (v4)
    {
      WebCore::MediaPlayer::networkStateChanged(v4);
      result = v4;
      v4 = 0;
      if (result)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(result);
      }
    }
  }

  return result;
}

WTF::MonotonicTime *WebKit::MediaPlayerPrivateRemote::updateCachedState(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *(a1 + 253) = *(a2 + 5);
  *(a1 + 248) = v4;
  v5 = a2[2];
  *(a1 + 269) = *(a2 + 21);
  *(a1 + 264) = v5;
  v6 = a2[4];
  *(a1 + 285) = *(a2 + 37);
  *(a1 + 280) = v6;
  *(a1 + 368) = *(a2 + 120);
  *(a1 + 466) = *(a2 + 218);
  v7 = *(a2 + 31);
  v8 = *(a2 + 32);
  if (*(a1 + 372) != v7 || *(a1 + 376) != v8)
  {
    WebKit::MediaPlayerPrivateRemote::sizeChanged(a1, v7, v8);
  }

  *(a1 + 369) = *(a2 + 121);
  WTF::String::operator=((a1 + 336), a2 + 11);
  v9 = a2[6];
  *(a1 + 301) = *(a2 + 53);
  *(a1 + 296) = v9;
  v10 = *(a2 + 69);
  *(a1 + 312) = a2[8];
  *(a1 + 317) = v10;
  result = WTF::String::operator=((a1 + 328), a2 + 10);
  *(a1 + 384) = *(a2 + 17);
  *(a1 + 400) = *(a2 + 19);
  *(a1 + 467) = *(a2 + 219);
  *(a1 + 468) = *(a2 + 110);
  if (*(a2 + 208) == 1)
  {
    v12 = *(a2 + 11);
    v13 = *(a2 + 12);
    *(a1 + 456) = *(a2 + 208);
    *(a1 + 424) = v12;
    *(a1 + 440) = v13;
  }

  if (*(a1 + 704) != 0.0)
  {
    result = WTF::MonotonicTime::now(result);
    if (v14 - *(a1 + 696) > 30.0)
    {
      result = WebKit::MediaPlayerPrivateRemote::updateVideoPlaybackMetricsUpdateInterval(a1, 0);
    }
  }

  *(a1 + 470) = *(a2 + 222);
  *(a1 + 464) = *(a2 + 108);
  if (*(a2 + 112) == 1)
  {

    return WTF::Vector<WebCore::PlatformTimeRanges::Range,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(a1 + 480, (a2 + 12));
  }

  return result;
}

uint64_t WebKit::MediaPlayerPrivateRemote::readyStateChanged(atomic_ullong *a1, uint64_t *a2, char a3)
{
  v5 = a1[19];
  atomic_fetch_add(v5 + 2, 1u);
  v6 = a1[20];
  v15 = "MediaPlayerPrivateRemote";
  v16 = 25;
  v17 = "readyStateChanged";
  v18 = v6;
  if (WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier,WebCore::MediaPlayerReadyState>(v5, &WebKit2LogMedia, 0, &v15))
  {
    WTF::Logger::log<WTF::Logger::LogSiteIdentifier,WebCore::MediaPlayerReadyState>(&WebKit2LogMedia, 0, &v15);
  }

  if (v5 && atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5 + 2);
    (*(*v5 + 8))(v5);
  }

  WebKit::MediaPlayerPrivateRemote::updateCachedState(a1, a2);
  v19 = a3;
  v7 = a1[19];
  atomic_fetch_add(v7 + 2, 1u);
  v8 = a1[20];
  v15 = "MediaPlayerPrivateRemote";
  v16 = 25;
  v17 = "setReadyState";
  v18 = v8;
  if (WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier,WebCore::MediaPlayerReadyState>(v7, &WebKit2LogMedia, 0, &v15))
  {
    WTF::Logger::log<WTF::Logger::LogSiteIdentifier,WebCore::MediaPlayerReadyState>(&WebKit2LogMedia, 0, &v15);
  }

  if (v7 && atomic_fetch_add(v7 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v7 + 2);
    (*(*v7 + 8))(v7);
  }

  while (1)
  {
    v9 = a1[6];
    if ((v9 & 1) == 0)
    {
      break;
    }

    v10 = a1[6];
    atomic_compare_exchange_strong_explicit(a1 + 6, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v10 == v9)
    {
      goto LABEL_15;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(a1[6]);
LABEL_15:
  v11 = v19;
  v12 = WTF::fastMalloc(0x20);
  *v12 = &unk_1F1127CE8;
  *(v12 + 8) = a1;
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  v15 = v12;
  WTF::ensureOnMainRunLoop();
  result = v15;
  v15 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

WebCore::MediaPlayer *WebKit::MediaPlayerPrivateRemote::volumeChanged(WebKit::MediaPlayerPrivateRemote *this, double a2)
{
  *(this + 90) = a2;
  result = *(this + 22);
  if (result)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(result, *(this + 21), &v5);
    result = v5;
    if (v5)
    {
      WebCore::MediaPlayer::volumeChanged(v5, a2);
      result = v5;
      v5 = 0;
      if (result)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(result);
      }
    }
  }

  return result;
}

WebCore::MediaPlayer *WebKit::MediaPlayerPrivateRemote::muteChanged(WebKit::MediaPlayerPrivateRemote *this, char a2)
{
  *(this + 744) = a2;
  result = *(this + 22);
  if (result)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(result, *(this + 21), &v4);
    result = v4;
    if (v4)
    {
      WebCore::MediaPlayer::muteChanged(v4);
      result = v4;
      v4 = 0;
      if (result)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(result);
      }
    }
  }

  return result;
}

atomic_uchar *WebKit::MediaPlayerPrivateRemote::seeked(uint64_t a1, WTF::MediaTime *a2)
{
  v4 = *(a1 + 152);
  atomic_fetch_add(v4 + 2, 1u);
  v5 = *(a1 + 160);
  v7[0] = "MediaPlayerPrivateRemote";
  v7[1] = 25;
  v7[2] = "seeked";
  v7[3] = v5;
  if (WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier,char [13],WTF::MediaTime,char [20],BOOL>(v4, &WebKit2LogMedia, 0, v7, "currentTime:", a2, " timeIsProgressing:"))
  {
    WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [13],WTF::MediaTime,char [20],BOOL>(&WebKit2LogMedia, 0, v7, "currentTime:", a2, " timeIsProgressing:");
  }

  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 2);
    (*(*v4 + 8))(v4);
  }

  atomic_store(0, (a1 + 745));
  WebKit::MediaPlayerPrivateRemote::TimeProgressEstimator::setTime((a1 + 64), a2);
  result = *(a1 + 176);
  if (result)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(result, *(a1 + 168), v7);
    result = v7[0];
    if (v7[0])
    {
      WebCore::MediaPlayer::seeked(v7[0], a2);
      result = v7[0];
      v7[0] = 0;
      if (result)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(result);
      }
    }
  }

  return result;
}

atomic_uchar *WebKit::MediaPlayerPrivateRemote::timeChanged(uint64_t a1, uint64_t *a2, WTF::MediaTime *a3)
{
  v6 = *(a1 + 152);
  atomic_fetch_add(v6 + 2, 1u);
  v7 = *(a1 + 160);
  v9[0] = "MediaPlayerPrivateRemote";
  v9[1] = 25;
  v9[2] = "timeChanged";
  v9[3] = v7;
  if (WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier,char [13],WTF::MediaTime,char [20],BOOL>(v6, &WebKit2LogMedia, 0, v9, "currentTime:", a3, " timeIsProgressing:"))
  {
    WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [13],WTF::MediaTime,char [20],BOOL>(&WebKit2LogMedia, 0, v9, "currentTime:", a3, " timeIsProgressing:");
  }

  if (v6 && atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v6 + 2);
    (*(*v6 + 8))(v6);
  }

  WebKit::MediaPlayerPrivateRemote::updateCachedState(a1, a2);
  WebKit::MediaPlayerPrivateRemote::TimeProgressEstimator::setTime((a1 + 64), a3);
  result = *(a1 + 176);
  if (result)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(result, *(a1 + 168), v9);
    result = v9[0];
    if (v9[0])
    {
      WebCore::MediaPlayer::timeChanged(v9[0]);
      result = v9[0];
      v9[0] = 0;
      if (result)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(result);
      }
    }
  }

  return result;
}

WebCore::MediaPlayer *WebKit::MediaPlayerPrivateRemote::durationChanged(uint64_t a1, uint64_t *a2)
{
  WebKit::MediaPlayerPrivateRemote::updateCachedState(a1, a2);
  result = *(a1 + 176);
  if (result)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(result, *(a1 + 168), &v4);
    result = v4;
    if (v4)
    {
      WebCore::MediaPlayer::durationChanged(v4);
      result = v4;
      v4 = 0;
      if (result)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(result);
      }
    }
  }

  return result;
}

atomic_uchar *WebKit::MediaPlayerPrivateRemote::rateChanged(WTF::Logger *a1, WTF::MediaTime *a2, double a3)
{
  v4 = a1;
  v84 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 19);
  atomic_fetch_add(v5 + 2, 1u);
  v6 = *(a1 + 20);
  v57[0] = "MediaPlayerPrivateRemote";
  v57[1] = 25;
  v57[2] = "rateChanged";
  v57[3] = v6;
  v7 = MEMORY[0x1E696EBD0];
  while (1)
  {
    v8 = *v7;
    if (v8)
    {
      break;
    }

    v9 = *v7;
    atomic_compare_exchange_strong_explicit(v7, &v9, v8 | 1, memory_order_acquire, memory_order_acquire);
    if (v9 == v8)
    {
      v55 = v5;
      v10 = WTF::Logger::messageHandlerObservers(a1);
      v11 = *(v10 + 12);
      if (v11)
      {
        v12 = *v10;
        v13 = *v10 + 8 * v11;
        do
        {
          v14 = *v12;
          *buf = 0;
          WTF::Logger::LogSiteIdentifier::toString(&buf[8], v57);
          v73 = 0;
          v15 = WTF::String::String(&v74, "rate:");
          v75 = 0;
          WTF::String::number(&v76, v15, a3);
          v77 = 0;
          WTF::String::String(&v78, " currentTime:");
          v79 = 1;
          WTF::MediaTime::toJSONString(&v80, a2);
          v81 = 0;
          WTF::String::String(&v82, " timeIsProgressing:");
          v83 = 0;
          WTF::StringImpl::createWithoutCopyingNonEmpty();
          WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v58, buf, 7uLL);
          (*(*v14 + 16))(v14, &WebKit2LogMedia, 3, v58);
          WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v58, v16);
          for (i = 104; i != -8; i -= 16)
          {
            v19 = *&buf[i];
            *&buf[i] = 0;
            if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v19, v17);
            }
          }

          ++v12;
        }

        while (v12 != v13);
      }

      v20 = 1;
      atomic_compare_exchange_strong_explicit(v7, &v20, 0, memory_order_release, memory_order_relaxed);
      if (v20 != 1)
      {
        WTF::Lock::unlockSlow(MEMORY[0x1E696EBD0]);
      }

      v5 = v55;
      if ((v55[3] & 1) == 0 || !WebKit2LogMedia || byte_1ED640D28 <= 2u)
      {
        v4 = a1;
        goto LABEL_68;
      }

      WTF::Logger::LogSiteIdentifier::toString(&v65, v57);
      v21 = WTF::String::String(&v64, "rate:");
      WTF::String::number(&v63, v21, a3);
      WTF::String::String(&v62, " currentTime:");
      WTF::MediaTime::toJSONString(&v61, a2);
      WTF::String::String(&v60, " timeIsProgressing:");
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      v58[0] = v64;
      v71 = v63;
      *buf = v65;
      v69 = v61;
      v70 = v62;
      v67 = v59;
      v68 = v60;
      result = WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(buf, v58, &v71, &v70, &v69, &v68, &v67, &v66);
      if (!v66)
      {
        __break(0xC471u);
        return result;
      }

      v24 = v59;
      v59 = 0;
      if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v24, v23);
      }

      v25 = v60;
      v60 = 0;
      if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v25, v23);
      }

      v26 = v61;
      v61 = 0;
      if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v26, v23);
      }

      v27 = v62;
      v62 = 0;
      if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v27, v23);
      }

      v28 = v63;
      v63 = 0;
      if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v28, v23);
      }

      v29 = v64;
      v64 = 0;
      if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v29, v23);
      }

      v30 = v65;
      v65 = 0;
      if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v30, v23);
      }

      v31 = qword_1ED640D38;
      v32 = os_log_type_enabled(qword_1ED640D38, OS_LOG_TYPE_DEFAULT);
      if (v32)
      {
        WTF::String::utf8();
        v34 = v58[0] ? v58[0] + 16 : 0;
        *buf = 136446210;
        *&buf[4] = v34;
        _os_log_impl(&dword_19D52D000, v31, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
        v32 = v58[0];
        v58[0] = 0;
        if (v32)
        {
          if (*v32 == 1)
          {
            v32 = WTF::fastFree(v32, v33);
          }

          else
          {
            --*v32;
          }
        }
      }

      if (WebKit2LogMedia && byte_1ED640D28 >= 3u)
      {
        v35 = MEMORY[0x1E696EBC0];
        while (1)
        {
          v36 = *v35;
          if (v36)
          {
            break;
          }

          v37 = *v35;
          atomic_compare_exchange_strong_explicit(v35, &v37, v36 | 1, memory_order_acquire, memory_order_acquire);
          if (v37 == v36)
          {
            v38 = WTF::Logger::observers(v32);
            v39 = *(v38 + 12);
            if (v39)
            {
              v40 = *v38;
              v41 = *v38 + 8 * v39;
              do
              {
                v42 = *v40;
                *buf = 0;
                WTF::Logger::LogSiteIdentifier::toString(&buf[8], v57);
                v73 = 0;
                v43 = WTF::String::String(&v74, "rate:");
                v75 = 0;
                WTF::String::number(&v76, v43, a3);
                v77 = 0;
                WTF::String::String(&v78, " currentTime:");
                v79 = 1;
                WTF::MediaTime::toJSONString(&v80, a2);
                v81 = 0;
                WTF::String::String(&v82, " timeIsProgressing:");
                v83 = 0;
                WTF::StringImpl::createWithoutCopyingNonEmpty();
                WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v58, buf, 7uLL);
                (*(*v42 + 16))(v42, &WebKit2LogMedia, 3, v58);
                WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v58, v44);
                for (j = 104; j != -8; j -= 16)
                {
                  v46 = *&buf[j];
                  *&buf[j] = 0;
                  if (v46 && atomic_fetch_add_explicit(v46, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v46, v33);
                  }
                }

                ++v40;
              }

              while (v40 != v41);
            }

            v47 = 1;
            atomic_compare_exchange_strong_explicit(v35, &v47, 0, memory_order_release, memory_order_relaxed);
            v5 = v55;
            if (v47 != 1)
            {
              WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
            }

            break;
          }
        }
      }

      v48 = v66;
      v66 = 0;
      if (v48 && atomic_fetch_add_explicit(v48, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v48, v33);
      }

      v4 = a1;
      break;
    }
  }

  if (!v5)
  {
    goto LABEL_70;
  }

LABEL_68:
  if (atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5 + 2);
    (*(*v5 + 8))(v5);
  }

LABEL_70:
  v49 = 0;
  *(v4 + 91) = a3;
  v50 = v4 + 64;
  v51 = 1;
  atomic_compare_exchange_strong_explicit(v4 + 64, &v49, 1u, memory_order_acquire, memory_order_acquire);
  if (v49)
  {
    MEMORY[0x19EB01E30](v4 + 64);
  }

  *(v4 + 12) = a3;
  atomic_compare_exchange_strong_explicit(v50, &v51, 0, memory_order_release, memory_order_relaxed);
  if (v51 != 1)
  {
    WTF::Lock::unlockSlow((v4 + 64));
  }

  WebKit::MediaPlayerPrivateRemote::TimeProgressEstimator::setTime(v4 + 64, a2);
  v52 = 0;
  v53 = 1;
  atomic_compare_exchange_strong_explicit(v50, &v52, 1u, memory_order_acquire, memory_order_acquire);
  if (v52)
  {
    MEMORY[0x19EB01E30](v4 + 64);
  }

  *(v4 + 128) = 1;
  atomic_compare_exchange_strong_explicit(v4 + 64, &v53, 0, memory_order_release, memory_order_relaxed);
  if (v53 != 1)
  {
    WTF::Lock::unlockSlow((v4 + 64));
  }

  result = *(v4 + 22);
  if (result)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(result, *(v4 + 21), buf);
    result = *buf;
    if (*buf)
    {
      WebCore::MediaPlayer::rateChanged(*buf);
      result = *buf;
      *buf = 0;
      if (result)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(result);
      }
    }
  }

  return result;
}

atomic_uchar *WebKit::MediaPlayerPrivateRemote::playbackStateChanged(uint64_t a1, char a2, WTF::MediaTime *a3)
{
  v6 = *(a1 + 152);
  atomic_fetch_add(v6 + 2, 1u);
  v7 = *(a1 + 160);
  v9[0] = "MediaPlayerPrivateRemote";
  v9[1] = 25;
  v9[2] = "playbackStateChanged";
  v9[3] = v7;
  if (WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier,char [13],WTF::MediaTime,char [20],BOOL>(v6, &WebKit2LogMedia, 3, v9, "currentTime:", a3, " timeIsProgressing:"))
  {
    WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [13],WTF::MediaTime,char [20],BOOL>(&WebKit2LogMedia, 3u, v9, "currentTime:", a3, " timeIsProgressing:");
  }

  if (v6 && atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v6 + 2);
    (*(*v6 + 8))(v6);
  }

  *(a1 + 466) = a2;
  WebKit::MediaPlayerPrivateRemote::TimeProgressEstimator::setTime((a1 + 64), a3);
  result = *(a1 + 176);
  if (result)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(result, *(a1 + 168), v9);
    result = v9[0];
    if (v9[0])
    {
      WebCore::MediaPlayer::playbackStateChanged(v9[0]);
      result = v9[0];
      v9[0] = 0;
      if (result)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(result);
      }
    }
  }

  return result;
}

WebCore::MediaPlayer *WebKit::MediaPlayerPrivateRemote::engineFailedToLoad(WebKit::MediaPlayerPrivateRemote *this, uint64_t a2)
{
  *(this + 92) = a2;
  result = *(this + 22);
  if (result)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(result, *(this + 21), &v4);
    result = v4;
    if (v4)
    {
      WebCore::MediaPlayer::remoteEngineFailedToLoad(v4);
      result = v4;
      v4 = 0;
      if (result)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(result);
      }
    }
  }

  return result;
}

WebCore::MediaPlayer *WebKit::MediaPlayerPrivateRemote::characteristicChanged(uint64_t a1, uint64_t *a2)
{
  WebKit::MediaPlayerPrivateRemote::updateCachedState(a1, a2);
  result = *(a1 + 176);
  if (result)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(result, *(a1 + 168), &v4);
    result = v4;
    if (v4)
    {
      WebCore::MediaPlayer::characteristicChanged(v4);
      result = v4;
      v4 = 0;
      if (result)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(result);
      }
    }
  }

  return result;
}

WebCore::MediaPlayer *WebKit::MediaPlayerPrivateRemote::sizeChanged(uint64_t a1, float a2, float a3)
{
  *(a1 + 372) = a2;
  *(a1 + 376) = a3;
  result = *(a1 + 176);
  if (result)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(result, *(a1 + 168), &v5);
    result = v5;
    if (v5)
    {
      WebCore::MediaPlayer::sizeChanged(v5);
      result = v5;
      v5 = 0;
      if (result)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(result);
      }
    }
  }

  return result;
}

atomic_ullong *WebKit::MediaPlayerPrivateRemote::currentTimeChanged(atomic_ullong *result, WTF::MediaTime *a2)
{
  v2 = a2;
  v3 = result;
  v123 = *MEMORY[0x1E69E9840];
  v4 = result[19];
  atomic_fetch_add(v4 + 2, 1u);
  v5 = result[20];
  v94 = "MediaPlayerPrivateRemote";
  v95 = 25;
  v96 = "currentTimeChanged";
  v97 = v5;
  atomic_load(result + 745);
  v6 = MEMORY[0x1E696EBD0];
  do
  {
    v7 = *v6;
    if (v7)
    {
      goto LABEL_65;
    }

    v8 = *v6;
    atomic_compare_exchange_strong_explicit(v6, &v8, v7 | 1, memory_order_acquire, memory_order_acquire);
  }

  while (v8 != v7);
  v87 = v4;
  v89 = result;
  result = WTF::Logger::messageHandlerObservers(result);
  v9 = *(result + 3);
  if (v9)
  {
    v10 = *result;
    v11 = *result + 8 * v9;
    do
    {
      v12 = *v10;
      *buf = 0;
      WTF::Logger::LogSiteIdentifier::toString(&buf[8], &v94);
      v112 = 0;
      WTF::String::String(&v113, "currentTime:");
      v114 = 1;
      WTF::MediaTime::toJSONString(&v115, a2);
      v116 = 0;
      WTF::String::String(&v117, " timeIsProgressing:");
      v118 = 0;
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      v120 = 0;
      WTF::String::String(&v121, " seeking:");
      v122 = 0;
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v101, buf, 7uLL);
      (*(*v12 + 16))(v12, &WebKit2LogMedia, 3, v101);
      WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v101, v13);
      for (i = 104; i != -8; i -= 16)
      {
        result = *&buf[i];
        *&buf[i] = 0;
        if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, v14);
        }
      }

      ++v10;
    }

    while (v10 != v11);
  }

  v16 = 1;
  v6 = MEMORY[0x1E696EBD0];
  atomic_compare_exchange_strong_explicit(MEMORY[0x1E696EBD0], &v16, 0, memory_order_release, memory_order_relaxed);
  if (v16 != 1)
  {
    result = WTF::Lock::unlockSlow(MEMORY[0x1E696EBD0]);
  }

  v4 = v87;
  v2 = a2;
  if ((v87[3] & 1) != 0 && WebKit2LogMedia && byte_1ED640D28 > 2u)
  {
    WTF::Logger::LogSiteIdentifier::toString(&v105, &v94);
    WTF::String::String(&v104, "currentTime:");
    WTF::MediaTime::toJSONString(&v103, a2);
    WTF::String::String(&v102, " timeIsProgressing:");
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    WTF::String::String(&v99, " seeking:");
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v101[0] = v104;
    v91 = v103;
    v110 = v102;
    *buf = v105;
    v108 = v99;
    v109 = v100;
    v107 = v98;
    WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(buf, v101, &v91, &v110, &v109, &v108, &v107, &v106);
    if (!v106)
    {
      goto LABEL_145;
    }

    v18 = v98;
    v98 = 0;
    if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v18, v17);
    }

    v19 = v99;
    v99 = 0;
    if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v19, v17);
    }

    v20 = v100;
    v100 = 0;
    if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v20, v17);
    }

    v21 = v102;
    v102 = 0;
    if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v21, v17);
    }

    v22 = v103;
    v103 = 0;
    if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v22, v17);
    }

    v23 = v104;
    v104 = 0;
    if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v23, v17);
    }

    v24 = v105;
    v105 = 0;
    if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v24, v17);
    }

    v25 = qword_1ED640D38;
    v26 = os_log_type_enabled(qword_1ED640D38, OS_LOG_TYPE_DEFAULT);
    if (v26)
    {
      WTF::String::utf8();
      v28 = v101[0] ? v101[0] + 16 : 0;
      *buf = 136446210;
      *&buf[4] = v28;
      _os_log_impl(&dword_19D52D000, v25, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
      v26 = v101[0];
      v101[0] = 0;
      if (v26)
      {
        if (*v26 == 1)
        {
          v26 = WTF::fastFree(v26, v27);
        }

        else
        {
          --*v26;
        }
      }
    }

    if (WebKit2LogMedia && byte_1ED640D28 >= 3u)
    {
      v29 = MEMORY[0x1E696EBC0];
      while (1)
      {
        v30 = *v29;
        if (v30)
        {
          break;
        }

        v31 = *v29;
        atomic_compare_exchange_strong_explicit(v29, &v31, v30 | 1, memory_order_acquire, memory_order_acquire);
        if (v31 == v30)
        {
          v32 = WTF::Logger::observers(v26);
          v33 = *(v32 + 12);
          if (v33)
          {
            v34 = *v32;
            v35 = *v32 + 8 * v33;
            do
            {
              v36 = *v34;
              *buf = 0;
              WTF::Logger::LogSiteIdentifier::toString(&buf[8], &v94);
              v112 = 0;
              WTF::String::String(&v113, "currentTime:");
              v114 = 1;
              WTF::MediaTime::toJSONString(&v115, a2);
              v116 = 0;
              WTF::String::String(&v117, " timeIsProgressing:");
              v118 = 0;
              WTF::StringImpl::createWithoutCopyingNonEmpty();
              v120 = 0;
              WTF::String::String(&v121, " seeking:");
              v122 = 0;
              WTF::StringImpl::createWithoutCopyingNonEmpty();
              WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v101, buf, 7uLL);
              (*(*v36 + 16))(v36, &WebKit2LogMedia, 3, v101);
              WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v101, v37);
              for (j = 104; j != -8; j -= 16)
              {
                v39 = *&buf[j];
                *&buf[j] = 0;
                if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v39, v27);
                }
              }

              ++v34;
            }

            while (v34 != v35);
          }

          v40 = 1;
          atomic_compare_exchange_strong_explicit(v29, &v40, 0, memory_order_release, memory_order_relaxed);
          v2 = a2;
          v6 = MEMORY[0x1E696EBD0];
          v4 = v87;
          if (v40 != 1)
          {
            WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
          }

          break;
        }
      }
    }

    result = v106;
    v106 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v27);
    }

    v3 = v89;
LABEL_65:
    if (!v4)
    {
      goto LABEL_70;
    }
  }

  else
  {
    v3 = v89;
  }

  if (atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 2);
    result = (*(*v4 + 8))(v4);
  }

LABEL_70:
  v41 = atomic_load(v3 + 745);
  if (v41)
  {
    return result;
  }

  v42 = 0;
  v43 = (v3 + 8);
  v44 = 1;
  atomic_compare_exchange_strong_explicit(v3 + 64, &v42, 1u, memory_order_acquire, memory_order_acquire);
  if (v42)
  {
    MEMORY[0x19EB01E30](v3 + 8);
  }

  v46 = v3[9];
  v45 = v3[10];
  atomic_compare_exchange_strong_explicit(v43, &v44, 0, memory_order_release, memory_order_relaxed);
  if (v44 != 1)
  {
    WTF::Lock::unlockSlow((v3 + 8));
  }

  v91 = v46;
  v92 = v45;
  v93 = BYTE4(v45);
  v47 = atomic_load(v3 + 65);
  v48 = WTF::operator<=>();
  if ((v48 & 0x80) == 0)
  {
    result = WebKit::MediaPlayerPrivateRemote::TimeProgressEstimator::setTime(v3 + 64, v2);
    if (*(v2 + 16) == (v47 & 1))
    {
      return result;
    }

    result = WTF::operator<=>();
    if (!result || (*(v3 + 466) & 1) != 0)
    {
      return result;
    }

    goto LABEL_138;
  }

  v49 = v3[19];
  atomic_fetch_add(v49 + 2, 1u);
  v50 = v3[20];
  v94 = "MediaPlayerPrivateRemote";
  v95 = 25;
  v96 = "currentTimeChanged";
  v97 = v50;
  do
  {
    v51 = *v6;
    if (v51)
    {
      goto LABEL_134;
    }

    v52 = *v6;
    atomic_compare_exchange_strong_explicit(v6, &v52, v51 | 1, memory_order_acquire, memory_order_acquire);
  }

  while (v52 != v51);
  v88 = v49;
  v53 = v2;
  v54 = WTF::Logger::messageHandlerObservers(v48);
  v55 = *(v54 + 12);
  if (v55)
  {
    v56 = *v54;
    v57 = *v54 + 8 * v55;
    do
    {
      v58 = *v56;
      *buf = 0;
      WTF::Logger::LogSiteIdentifier::toString(&buf[8], &v94);
      v112 = 0;
      WTF::String::String(&v113, "time jumped backwards, was ");
      v114 = 1;
      WTF::MediaTime::toJSONString(&v115, &v91);
      v116 = 0;
      WTF::String::String(&v117, ", is now ");
      v118 = 1;
      WTF::MediaTime::toJSONString(&v119, v53);
      WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v101, buf, 5uLL);
      (*(*v58 + 16))(v58, &WebKit2LogMedia, 0, v101);
      WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v101, v59);
      for (k = 72; k != -8; k -= 16)
      {
        v62 = *&buf[k];
        *&buf[k] = 0;
        if (v62 && atomic_fetch_add_explicit(v62, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v62, v60);
        }
      }

      ++v56;
    }

    while (v56 != v57);
  }

  v63 = 1;
  atomic_compare_exchange_strong_explicit(MEMORY[0x1E696EBD0], &v63, 0, memory_order_release, memory_order_relaxed);
  if (v63 != 1)
  {
    WTF::Lock::unlockSlow(MEMORY[0x1E696EBD0]);
  }

  v49 = v88;
  v2 = v53;
  v43 = (v3 + 8);
  if (v88[3])
  {
    WTF::Logger::LogSiteIdentifier::toString(&v106, &v94);
    WTF::String::String(&v105, "time jumped backwards, was ");
    WTF::MediaTime::toJSONString(&v104, &v91);
    WTF::String::String(&v103, ", is now ");
    WTF::MediaTime::toJSONString(&v102, v53);
    v101[0] = v105;
    v110 = v104;
    *buf = v106;
    v108 = v102;
    v109 = v103;
    WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(buf, v101, &v110, &v109, &v108, &v107);
    if (v107)
    {
      v65 = v102;
      v102 = 0;
      if (v65 && atomic_fetch_add_explicit(v65, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v65, v64);
      }

      v66 = v103;
      v103 = 0;
      if (v66 && atomic_fetch_add_explicit(v66, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v66, v64);
      }

      v67 = v104;
      v104 = 0;
      if (v67 && atomic_fetch_add_explicit(v67, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v67, v64);
      }

      v68 = v105;
      v105 = 0;
      if (v68 && atomic_fetch_add_explicit(v68, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v68, v64);
      }

      v69 = v106;
      v106 = 0;
      if (v69 && atomic_fetch_add_explicit(v69, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v69, v64);
      }

      v70 = qword_1ED640D38;
      v71 = os_log_type_enabled(qword_1ED640D38, OS_LOG_TYPE_DEFAULT);
      if (v71)
      {
        WTF::String::utf8();
        v73 = v101[0] ? v101[0] + 16 : 0;
        *buf = 136446210;
        *&buf[4] = v73;
        _os_log_impl(&dword_19D52D000, v70, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
        v71 = v101[0];
        v101[0] = 0;
        if (v71)
        {
          if (*v71 == 1)
          {
            v71 = WTF::fastFree(v71, v72);
          }

          else
          {
            --*v71;
          }
        }
      }

      if (WebKit2LogMedia)
      {
        v74 = MEMORY[0x1E696EBC0];
        while (1)
        {
          v75 = *v74;
          if (v75)
          {
            break;
          }

          v76 = *v74;
          atomic_compare_exchange_strong_explicit(v74, &v76, v75 | 1, memory_order_acquire, memory_order_acquire);
          if (v76 == v75)
          {
            v77 = WTF::Logger::observers(v71);
            v78 = *(v77 + 12);
            if (v78)
            {
              v79 = *v77;
              v80 = *v77 + 8 * v78;
              do
              {
                v81 = *v79;
                *buf = 0;
                WTF::Logger::LogSiteIdentifier::toString(&buf[8], &v94);
                v112 = 0;
                WTF::String::String(&v113, "time jumped backwards, was ");
                v114 = 1;
                WTF::MediaTime::toJSONString(&v115, &v91);
                v116 = 0;
                WTF::String::String(&v117, ", is now ");
                v118 = 1;
                WTF::MediaTime::toJSONString(&v119, v53);
                WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v101, buf, 5uLL);
                (*(*v81 + 16))(v81, &WebKit2LogMedia, 0, v101);
                WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v101, v82);
                for (m = 72; m != -8; m -= 16)
                {
                  v84 = *&buf[m];
                  *&buf[m] = 0;
                  if (v84 && atomic_fetch_add_explicit(v84, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v84, v72);
                  }
                }

                ++v79;
              }

              while (v79 != v80);
            }

            v85 = 1;
            atomic_compare_exchange_strong_explicit(v74, &v85, 0, memory_order_release, memory_order_relaxed);
            v43 = (v3 + 8);
            v2 = v53;
            v49 = v88;
            if (v85 != 1)
            {
              WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
            }

            break;
          }
        }
      }

      v86 = v107;
      v107 = 0;
      if (v86 && atomic_fetch_add_explicit(v86, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v86, v72);
      }

LABEL_134:
      if (!v49)
      {
        goto LABEL_137;
      }

      goto LABEL_135;
    }

LABEL_145:
    __break(0xC471u);
    JUMPOUT(0x19E281124);
  }

LABEL_135:
  if (atomic_fetch_add(v49 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v49 + 2);
    (*(*v49 + 8))(v49);
  }

LABEL_137:
  WebKit::MediaPlayerPrivateRemote::TimeProgressEstimator::setTime(v43, v2);
LABEL_138:
  result = v3[22];
  if (result)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(result, v3[21], buf);
    result = *buf;
    if (*buf)
    {
      WebCore::MediaPlayer::timeChanged(*buf);
      result = *buf;
      *buf = 0;
      if (result)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(result);
      }
    }
  }

  return result;
}

atomic_uchar *WebKit::MediaPlayerPrivateRemote::firstVideoFrameAvailable(WebKit::MediaPlayerPrivateRemote *this)
{
  v2 = *(this + 19);
  atomic_fetch_add(v2 + 2, 1u);
  v3 = *(this + 20);
  v5[0] = "MediaPlayerPrivateRemote";
  v5[1] = 25;
  v5[2] = "firstVideoFrameAvailable";
  v5[3] = v3;
  if (WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier>(v2, &WebKit2LogMedia, 0, v5))
  {
    WTF::Logger::log<WTF::Logger::LogSiteIdentifier>(&WebKit2LogMedia, 0, v5);
  }

  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  result = *(this + 22);
  if (result)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(result, *(this + 21), v5);
    result = v5[0];
    if (v5[0])
    {
      WebCore::MediaPlayer::firstVideoFrameAvailable(v5[0]);
      result = v5[0];
      v5[0] = 0;
      if (result)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(result);
      }
    }
  }

  return result;
}

atomic_uchar *WebKit::MediaPlayerPrivateRemote::renderingModeChanged(WebKit::MediaPlayerPrivateRemote *this)
{
  v2 = *(this + 19);
  atomic_fetch_add(v2 + 2, 1u);
  v3 = *(this + 20);
  v5[0] = "MediaPlayerPrivateRemote";
  v5[1] = 25;
  v5[2] = "renderingModeChanged";
  v5[3] = v3;
  if (WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier>(v2, &WebKit2LogMedia, 0, v5))
  {
    WTF::Logger::log<WTF::Logger::LogSiteIdentifier>(&WebKit2LogMedia, 0, v5);
  }

  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  result = *(this + 22);
  if (result)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(result, *(this + 21), v5);
    result = v5[0];
    if (v5[0])
    {
      WebCore::MediaPlayer::renderingModeChanged(v5[0]);
      result = v5[0];
      v5[0] = 0;
      if (result)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(result);
      }
    }
  }

  return result;
}

uint64_t WebCore::MediaPlayer::renderingModeChanged(WebCore::MediaPlayer *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      return (*(*v2 + 144))();
    }
  }

  result = 133;
  __break(0xC471u);
  return result;
}

uint64_t WebKit::MediaPlayerPrivateRemote::engineDescription@<X0>(uint64_t this@<X0>, atomic_uint **a2@<X8>)
{
  v2 = *(this + 232);
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
  }

  *a2 = v2;
  return this;
}

atomic_uchar *WebKit::MediaPlayerPrivateRemote::acceleratedRenderingStateChanged(WebKit::MediaPlayerPrivateRemote *this)
{
  result = *(this + 22);
  if (result)
  {
    result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(result, *(this + 21), &v13);
    if (v13)
    {
      v4 = WebKit::MediaPlayerPrivateRemote::connection(this, v3);
      CanBeAccelerated = WebCore::MediaPlayer::renderingCanBeAccelerated(v13);
      v5 = *(this + 28);
      v7 = IPC::Encoder::operator new(0x238, v6);
      *v7 = 1396;
      *(v7 + 2) = 0;
      *(v7 + 3) = 0;
      *(v7 + 1) = v5;
      *(v7 + 68) = 0;
      *(v7 + 70) = 0;
      *(v7 + 69) = 0;
      IPC::Encoder::encodeHeader(v7);
      v14 = v7;
      IPC::Encoder::operator<<<BOOL &>(v7, &CanBeAccelerated);
      IPC::Connection::sendMessageImpl(v4, &v14, 0, 0);
      v9 = v14;
      v14 = 0;
      if (v9)
      {
        IPC::Encoder::~Encoder(v9, v8);
        bmalloc::api::tzoneFree(v10, v11);
      }

      result = v13;
      v13 = 0;
      if (result)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(result);
      }
    }
  }

  return result;
}

uint64_t WebCore::MediaPlayer::renderingCanBeAccelerated(WebCore::MediaPlayer *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      return (*(*v2 + 136))();
    }
  }

  result = 133;
  __break(0xC471u);
  return result;
}

IPC::Encoder *WebKit::MediaPlayerPrivateRemote::updateVideoPlaybackMetricsUpdateInterval(WebKit::MediaPlayerPrivateRemote *this, const WTF::Seconds *a2)
{
  *(this + 88) = a2;
  v3 = WebKit::MediaPlayerPrivateRemote::connection(this, a2);
  v4 = *(this + 88);
  v5 = *(this + 28);
  v7 = IPC::Encoder::operator new(0x238, v6);
  *v7 = 1451;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = v5;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  IPC::Encoder::encodeHeader(v7);
  v12 = v7;
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(v7, v4);
  IPC::Connection::sendMessageImpl(v3, &v12, 0, 0);
  result = v12;
  v12 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v8);
    return bmalloc::api::tzoneFree(v10, v11);
  }

  return result;
}

__n128 WebKit::MediaPlayerPrivateRemote::updatePlaybackQualityMetrics(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 424);
  result = *a2;
  if (*(a1 + 456) == 1)
  {
    *(a1 + 436) = *(a2 + 12);
    *v2 = result;
  }

  else
  {
    v4 = *(a2 + 16);
    *v2 = *a2;
    *(a1 + 440) = v4;
    *(a1 + 456) = 1;
  }

  return result;
}

IPC::Encoder *WebKit::MediaPlayerPrivateRemote::prepareForRendering(WebKit::MediaPlayerPrivateRemote *this, void *a2)
{
  v3 = WebKit::MediaPlayerPrivateRemote::connection(this, a2);
  v4 = *(this + 28);
  v6 = IPC::Encoder::operator new(0x238, v5);
  *v6 = 1422;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = v4;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v11 = v6;
  IPC::Connection::sendMessageImpl(v3, &v11, 0, 0);
  result = v11;
  v11 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v7);
    return bmalloc::api::tzoneFree(v9, v10);
  }

  return result;
}

IPC::Encoder *WebKit::MediaPlayerPrivateRemote::setPageIsVisible(IPC::Encoder *this, int a2)
{
  v16 = a2;
  if (*(this + 751) != 1 || *(this + 750) != a2)
  {
    v3 = this;
    v4 = *(this + 19);
    atomic_fetch_add(v4 + 2, 1u);
    v5 = *(this + 20);
    v15[0] = "MediaPlayerPrivateRemote";
    v15[1] = 25;
    v15[2] = "setPageIsVisible";
    v15[3] = v5;
    if (WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier,BOOL>(v4, &WebKit2LogMedia, 0, v15))
    {
      WTF::Logger::log<WTF::Logger::LogSiteIdentifier,BOOL>(&WebKit2LogMedia, 0, v15);
    }

    if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v4 + 2);
      (*(*v4 + 8))(v4);
    }

    *(v3 + 375) = v16 | 0x100;
    v7 = WebKit::MediaPlayerPrivateRemote::connection(v3, v6);
    v14 = v16;
    v8 = *(v3 + 28);
    v10 = IPC::Encoder::operator new(0x238, v9);
    *v10 = 1430;
    *(v10 + 2) = 0;
    *(v10 + 3) = 0;
    *(v10 + 1) = v8;
    *(v10 + 68) = 0;
    *(v10 + 70) = 0;
    *(v10 + 69) = 0;
    IPC::Encoder::encodeHeader(v10);
    v15[0] = v10;
    IPC::Encoder::operator<<<BOOL &>(v10, &v14);
    IPC::Connection::sendMessageImpl(v7, v15, 0, 0);
    this = v15[0];
    v15[0] = 0;
    if (this)
    {
      IPC::Encoder::~Encoder(this, v11);
      return bmalloc::api::tzoneFree(v12, v13);
    }
  }

  return this;
}

IPC::Encoder *WebKit::MediaPlayerPrivateRemote::setShouldMaintainAspectRatio(IPC::Encoder *this, void *a2)
{
  if (*(this + 749) != 1 || *(this + 748) != a2)
  {
    v15[5] = v2;
    v15[6] = v3;
    v5 = a2;
    v6 = this;
    *(this + 374) = a2 | 0x100;
    v7 = WebKit::MediaPlayerPrivateRemote::connection(this, a2);
    v14 = v5;
    v8 = *(v6 + 28);
    v10 = IPC::Encoder::operator new(0x238, v9);
    *v10 = 1445;
    *(v10 + 2) = 0;
    *(v10 + 3) = 0;
    *(v10 + 1) = v8;
    *(v10 + 68) = 0;
    *(v10 + 70) = 0;
    *(v10 + 69) = 0;
    IPC::Encoder::encodeHeader(v10);
    v15[0] = v10;
    IPC::Encoder::operator<<<BOOL &>(v10, &v14);
    IPC::Connection::sendMessageImpl(v7, v15, 0, 0);
    this = v15[0];
    v15[0] = 0;
    if (this)
    {
      IPC::Encoder::~Encoder(this, v11);
      return bmalloc::api::tzoneFree(v12, v13);
    }
  }

  return this;
}

IPC::Encoder *WebKit::MediaPlayerPrivateRemote::setShouldDisableSleep(WebKit::MediaPlayerPrivateRemote *this, void *a2)
{
  v2 = a2;
  v4 = WebKit::MediaPlayerPrivateRemote::connection(this, a2);
  v12 = v2;
  v5 = *(this + 28);
  v7 = IPC::Encoder::operator new(0x238, v6);
  *v7 = 1443;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = v5;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  IPC::Encoder::encodeHeader(v7);
  v13 = v7;
  IPC::Encoder::operator<<<BOOL &>(v7, &v12);
  IPC::Connection::sendMessageImpl(v4, &v13, 0, 0);
  result = v13;
  v13 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v8);
    return bmalloc::api::tzoneFree(v10, v11);
  }

  return result;
}

uint64_t WebKit::MediaPlayerPrivateRemote::addRemoteAudioTrack(uint64_t a1, unint64_t *a2)
{
  v4 = 0;
  v5 = (a1 + 512);
  atomic_compare_exchange_strong_explicit((a1 + 512), &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    MEMORY[0x19EB01E30](a1 + 512);
  }

  v6 = (a1 + 528);
  std::__hash_table<std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,WTF::FastAllocator<std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>>>::__erase_unique<unsigned long long>((a1 + 528), a2);
  v8 = *(a1 + 208);
  v41 = v5;
  if (v8)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(v8, *(a1 + 200), &v42);
    v9 = v42;
  }

  else
  {
    v9 = 0;
  }

  WebKit::RemoteMediaPlayerManager::protectedGPUProcessConnection(v9, v7, &v42);
  v11 = v42;
  v12 = *(a1 + 224);
  if (WebKit::AudioTrackPrivateRemote::s_heapRef)
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::AudioTrackPrivateRemote::s_heapRef, v10);
  }

  else
  {
    NonCompact = WebKit::AudioTrackPrivateRemote::operatorNewSlow(0);
  }

  v14 = NonCompact;
  *(NonCompact + 8) = 3;
  v15 = (NonCompact + 8);
  *(NonCompact + 16) = 0;
  *(NonCompact + 64) = 0u;
  *(NonCompact + 80) = 0u;
  *(NonCompact + 24) = 0u;
  *(NonCompact + 40) = 0u;
  *(NonCompact + 56) = 0;
  *NonCompact = &unk_1F1126E20;
  *(NonCompact + 96) = v11;
  v16 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::controlBlock(v11 + 3);
  v17 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v16);
  *(v14 + 104) = v17;
  *(v14 + 112) = 6;
  *(v14 + 120) = *a2;
  *(v14 + 128) = 0;
  *(v14 + 136) = 0;
  *(v14 + 144) = -1;
  *(v14 + 152) = *WTF::MediaTime::zeroTime(v17);
  *(v14 + 168) = v12;
  WebKit::AudioTrackPrivateRemote::updateConfiguration(v14, a2, v18);
  v20 = *a2;
  v21 = *(a1 + 536);
  v40 = v9;
  if (v21)
  {
    v22 = vcnt_s8(v21);
    v22.i16[0] = vaddlv_u8(v22);
    if (v22.u32[0] > 1uLL)
    {
      v9 = *a2;
      if (v21 <= v20)
      {
        v9 = v20 % v21;
      }
    }

    else
    {
      v9 = (v21 - 1) & v20;
    }

    v23 = *(*v6 + 8 * v9);
    if (v23)
    {
      for (i = *v23; i; i = *i)
      {
        v25 = *(i + 8);
        if (v25 == v20)
        {
          if (*(i + 16) == v20)
          {
            result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::TrackPrivateBase,(WTF::DestructionThread)0>::deref(v15, v19);
            v38 = v41;
            v11 = v42;
            v39 = v40;
            goto LABEL_47;
          }
        }

        else
        {
          if (v22.u32[0] > 1uLL)
          {
            if (v25 >= v21)
            {
              v25 %= v21;
            }
          }

          else
          {
            v25 &= v21 - 1;
          }

          if (v25 != v9)
          {
            break;
          }
        }
      }
    }
  }

  result = WTF::fastMalloc(0x20);
  i = result;
  *result = 0;
  *(result + 8) = v20;
  *(result + 16) = *a2;
  *(result + 24) = v14;
  v26 = (*(a1 + 552) + 1);
  v27 = *(a1 + 560);
  if (!v21 || (v27 * v21) < v26)
  {
    v28 = 1;
    if (v21 >= 3)
    {
      v28 = (v21 & (v21 - 1)) != 0;
    }

    v29 = v28 | (2 * v21);
    v30 = vcvtps_u32_f32(v26 / v27);
    if (v29 <= v30)
    {
      v31 = v30;
    }

    else
    {
      v31 = v29;
    }

    result = std::__hash_table<std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,WTF::FastAllocator<std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>>>::__rehash<true>((a1 + 528), v31);
    v21 = *(a1 + 536);
    if ((v21 & (v21 - 1)) != 0)
    {
      if (v21 <= v20)
      {
        v9 = v20 % v21;
      }

      else
      {
        v9 = v20;
      }
    }

    else
    {
      v9 = (v21 - 1) & v20;
    }
  }

  v32 = *v6;
  v33 = *(*v6 + 8 * v9);
  if (v33)
  {
    *i = *v33;
    v39 = v40;
    v38 = v41;
LABEL_45:
    *v33 = i;
    goto LABEL_46;
  }

  *i = *(a1 + 544);
  *(a1 + 544) = i;
  *(v32 + 8 * v9) = a1 + 544;
  v39 = v40;
  v38 = v41;
  if (*i)
  {
    v34 = *(*i + 8);
    if ((v21 & (v21 - 1)) != 0)
    {
      if (v34 >= v21)
      {
        v34 %= v21;
      }
    }

    else
    {
      v34 &= v21 - 1;
    }

    v33 = (*v6 + 8 * v34);
    goto LABEL_45;
  }

LABEL_46:
  ++*(a1 + 552);
LABEL_47:
  v42 = 0;
  if (v11)
  {
    result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref(v11 + 3, v37);
  }

  if (v39)
  {
    result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::RemoteMediaPlayerManager,(WTF::DestructionThread)0>::deref((v39 + 8), v37);
  }

  if (!*(a1 + 504))
  {
    result = *(a1 + 176);
    if (result)
    {
      WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(result, *(a1 + 168), &v42);
      result = v42;
      if (v42)
      {
        WebCore::MediaPlayer::addAudioTrack(v42, *(i + 24));
        result = v42;
        v42 = 0;
        if (result)
        {
          result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(result);
        }
      }
    }
  }

  v35 = 1;
  atomic_compare_exchange_strong_explicit(v38, &v35, 0, memory_order_release, memory_order_relaxed);
  if (v35 != 1)
  {
    return WTF::Lock::unlockSlow(v38);
  }

  return result;
}

void *WebKit::MediaPlayerPrivateRemote::removeRemoteAudioTrack(WebKit::MediaPlayerPrivateRemote *this, unint64_t a2)
{
  v3 = 0;
  v11 = a2;
  v4 = this + 512;
  atomic_compare_exchange_strong_explicit(this + 512, &v3, 1u, memory_order_acquire, memory_order_acquire);
  if (v3)
  {
    MEMORY[0x19EB01E30](this + 512);
  }

  result = std::__hash_table<std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,WTF::FastAllocator<std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>>>::find<unsigned long long>(this + 66, &v11);
  if (result)
  {
    v6 = result;
    v7 = *(this + 22);
    if (v7)
    {
      WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(v7, *(this + 21), &v10);
      if (v10)
      {
        WebCore::MediaPlayer::removeAudioTrack(v10, *(v6 + 24));
        v8 = v10;
        v10 = 0;
        if (v8)
        {
          WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(v8);
        }
      }
    }

    result = std::__hash_table<std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,WTF::FastAllocator<std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>>>::__erase_unique<unsigned long long>(this + 66, &v11);
  }

  v9 = 1;
  atomic_compare_exchange_strong_explicit(v4, &v9, 0, memory_order_release, memory_order_relaxed);
  if (v9 != 1)
  {
    return WTF::Lock::unlockSlow(v4);
  }

  return result;
}

void *WebKit::MediaPlayerPrivateRemote::remoteAudioTrackConfigurationChanged(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v5 = 0;
  v38 = a2;
  v6 = (a1 + 512);
  atomic_compare_exchange_strong_explicit((a1 + 512), &v5, 1u, memory_order_acquire, memory_order_acquire);
  if (v5)
  {
    MEMORY[0x19EB01E30](a1 + 512);
  }

  v7 = (a1 + 528);
  result = std::__hash_table<std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,WTF::FastAllocator<std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>>>::find<unsigned long long>((a1 + 528), &v38);
  if (!result)
  {
    goto LABEL_50;
  }

  v10 = result;
  v11 = result[3];
  v12 = (v11 + 8);
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
      goto LABEL_9;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v12);
LABEL_9:
  v15 = *(v11 + 120);
  v16 = *a3;
  WebKit::AudioTrackPrivateRemote::updateConfiguration(v11, a3, v9);
  if (v15 == v16)
  {
    goto LABEL_49;
  }

  std::__hash_table<std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,WTF::FastAllocator<std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>>>::remove((a1 + 528), v10, &v39);
  v18 = v39;
  v19 = *(v11 + 120);
  *(v39 + 1) = v19;
  *(v18 + 2) = v19;
  v20 = *(a1 + 536);
  if (v20)
  {
    v21 = vcnt_s8(v20);
    v21.i16[0] = vaddlv_u8(v21);
    if (v21.u32[0] > 1uLL)
    {
      v22 = v19;
      if (v20 <= v19)
      {
        v22 = v19 % v20;
      }
    }

    else
    {
      v22 = (v20 - 1) & v19;
    }

    v23 = *(*v7 + 8 * v22);
    if (v23)
    {
      for (i = *v23; i; i = *i)
      {
        v25 = i[1];
        if (v25 == v19)
        {
          if (i[2] == v19)
          {
            v39 = &v41;
            v40 = 1;
            std::__hash_node_destructor<WTF::FastAllocator<std::__hash_node<std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,void *>>>::operator()[abi:sn200100](&v39, v18);
            goto LABEL_49;
          }
        }

        else
        {
          if (v21.u32[0] > 1uLL)
          {
            if (v25 >= v20)
            {
              v25 %= v20;
            }
          }

          else
          {
            v25 &= v20 - 1;
          }

          if (v25 != v22)
          {
            break;
          }
        }
      }
    }
  }

  v26 = (*(a1 + 552) + 1);
  v27 = *(a1 + 560);
  if (!v20 || (v27 * v20) < v26)
  {
    v28 = 2 * v20;
    v29 = v20 < 3 || (v20 & (v20 - 1)) != 0;
    v30 = v29 | v28;
    v31 = vcvtps_u32_f32(v26 / v27);
    if (v30 <= v31)
    {
      v32 = v31;
    }

    else
    {
      v32 = v30;
    }

    std::__hash_table<std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,WTF::FastAllocator<std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>>>::__rehash<true>((a1 + 528), v32);
    v20 = *(a1 + 536);
    v19 = *(v18 + 1);
  }

  v33 = vcnt_s8(v20);
  v33.i16[0] = vaddlv_u8(v33);
  if (v33.u32[0] > 1uLL)
  {
    if (v19 >= v20)
    {
      v19 %= v20;
    }
  }

  else
  {
    v19 &= v20 - 1;
  }

  v34 = *v7;
  v35 = *(*v7 + 8 * v19);
  if (v35)
  {
    *v18 = *v35;
  }

  else
  {
    *v18 = *(a1 + 544);
    *(a1 + 544) = v18;
    *(v34 + 8 * v19) = a1 + 544;
    if (!*v18)
    {
      goto LABEL_48;
    }

    v36 = *(*v18 + 8);
    if (v33.u32[0] > 1uLL)
    {
      if (v36 >= v20)
      {
        v36 %= v20;
      }
    }

    else
    {
      v36 &= v20 - 1;
    }

    v35 = (*v7 + 8 * v36);
  }

  *v35 = v18;
LABEL_48:
  ++*(a1 + 552);
LABEL_49:
  result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::TrackPrivateBase,(WTF::DestructionThread)0>::deref((v11 + 8), v17);
LABEL_50:
  v37 = 1;
  atomic_compare_exchange_strong_explicit(v6, &v37, 0, memory_order_release, memory_order_relaxed);
  if (v37 != 1)
  {
    return WTF::Lock::unlockSlow(v6);
  }

  return result;
}

uint64_t WebKit::MediaPlayerPrivateRemote::addRemoteTextTrack(uint64_t a1, unint64_t *a2)
{
  v4 = 0;
  v5 = a1 + 512;
  atomic_compare_exchange_strong_explicit((a1 + 512), &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    MEMORY[0x19EB01E30](a1 + 512);
  }

  v6 = (a1 + 608);
  std::__hash_table<std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,WTF::FastAllocator<std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>>>::__erase_unique<unsigned long long>((a1 + 608), a2);
  v8 = *(a1 + 208);
  if (v8)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(v8, *(a1 + 200), &v35);
    v9 = v35;
  }

  else
  {
    v9 = 0;
  }

  WebKit::RemoteMediaPlayerManager::protectedGPUProcessConnection(v9, v7, &v35);
  v11 = v35;
  v12 = *(a1 + 224);
  if (WebKit::TextTrackPrivateRemote::s_heapRef)
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::TextTrackPrivateRemote::s_heapRef, v10);
  }

  else
  {
    NonCompact = WebKit::TextTrackPrivateRemote::operatorNewSlow(0x98);
  }

  v14 = NonCompact;
  result = WebKit::TextTrackPrivateRemote::TextTrackPrivateRemote(NonCompact, v11, v12, a2);
  v17 = *a2;
  v18 = *(a1 + 616);
  v34 = v5;
  if (!v18)
  {
    goto LABEL_25;
  }

  v19 = vcnt_s8(v18);
  v19.i16[0] = vaddlv_u8(v19);
  if (v19.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v18 <= v17)
    {
      v5 = v17 % v18;
    }
  }

  else
  {
    v5 = (v18 - 1) & v17;
  }

  v20 = *(*v6 + 8 * v5);
  if (!v20 || (v21 = *v20) == 0)
  {
LABEL_25:
    result = WTF::fastMalloc(0x20);
    v21 = result;
    *result = 0;
    *(result + 8) = v17;
    *(result + 16) = *a2;
    *(result + 24) = v14;
    v23 = (*(a1 + 632) + 1);
    v24 = *(a1 + 640);
    if (!v18 || (v24 * v18) < v23)
    {
      v25 = 1;
      if (v18 >= 3)
      {
        v25 = (v18 & (v18 - 1)) != 0;
      }

      v26 = v25 | (2 * v18);
      v27 = vcvtps_u32_f32(v23 / v24);
      if (v26 <= v27)
      {
        v28 = v27;
      }

      else
      {
        v28 = v26;
      }

      result = std::__hash_table<std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,WTF::FastAllocator<std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>>>::__rehash<true>((a1 + 608), v28);
      v18 = *(a1 + 616);
      if ((v18 & (v18 - 1)) != 0)
      {
        if (v18 <= v17)
        {
          v5 = v17 % v18;
        }

        else
        {
          v5 = v17;
        }
      }

      else
      {
        v5 = (v18 - 1) & v17;
      }
    }

    v29 = *v6;
    v30 = *(*v6 + 8 * v5);
    if (v30)
    {
      *v21 = *v30;
      v31 = v34;
    }

    else
    {
      *v21 = *(a1 + 624);
      *(a1 + 624) = v21;
      *(v29 + 8 * v5) = a1 + 624;
      v31 = v34;
      if (!*v21)
      {
LABEL_46:
        ++*(a1 + 632);
        goto LABEL_47;
      }

      v32 = *(*v21 + 8);
      if ((v18 & (v18 - 1)) != 0)
      {
        if (v32 >= v18)
        {
          v32 %= v18;
        }
      }

      else
      {
        v32 &= v18 - 1;
      }

      v30 = (*v6 + 8 * v32);
    }

    *v30 = v21;
    goto LABEL_46;
  }

  while (1)
  {
    v22 = *(v21 + 8);
    if (v22 == v17)
    {
      break;
    }

    if (v19.u32[0] > 1uLL)
    {
      if (v22 >= v18)
      {
        v22 %= v18;
      }
    }

    else
    {
      v22 &= v18 - 1;
    }

    if (v22 != v5)
    {
      goto LABEL_25;
    }

LABEL_24:
    v21 = *v21;
    if (!v21)
    {
      goto LABEL_25;
    }
  }

  if (*(v21 + 16) != v17)
  {
    goto LABEL_24;
  }

  if (v14)
  {
    result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::TrackPrivateBase,(WTF::DestructionThread)0>::deref((v14 + 8), v16);
    v11 = v35;
  }

  v31 = v34;
LABEL_47:
  v35 = 0;
  if (v11)
  {
    result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref(v11 + 3, v16);
  }

  if (v9)
  {
    result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::RemoteMediaPlayerManager,(WTF::DestructionThread)0>::deref(v9 + 1, v16);
  }

  if (!*(a1 + 504))
  {
    result = *(a1 + 176);
    if (result)
    {
      WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(result, *(a1 + 168), &v35);
      result = v35;
      if (v35)
      {
        WebCore::MediaPlayer::addTextTrack(v35, *(v21 + 24));
        result = v35;
        v35 = 0;
        if (result)
        {
          result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(result);
        }
      }
    }
  }

  v33 = 1;
  atomic_compare_exchange_strong_explicit(v31, &v33, 0, memory_order_release, memory_order_relaxed);
  if (v33 != 1)
  {
    return WTF::Lock::unlockSlow(v31);
  }

  return result;
}

void *WebKit::MediaPlayerPrivateRemote::removeRemoteTextTrack(WebKit::MediaPlayerPrivateRemote *this, unint64_t a2)
{
  v3 = 0;
  v11 = a2;
  v4 = this + 512;
  atomic_compare_exchange_strong_explicit(this + 512, &v3, 1u, memory_order_acquire, memory_order_acquire);
  if (v3)
  {
    MEMORY[0x19EB01E30](this + 512);
  }

  result = std::__hash_table<std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,WTF::FastAllocator<std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>>>::find<unsigned long long>(this + 76, &v11);
  if (result)
  {
    v6 = result;
    v7 = *(this + 22);
    if (v7)
    {
      WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(v7, *(this + 21), &v10);
      if (v10)
      {
        WebCore::MediaPlayer::removeTextTrack(v10, *(v6 + 24));
        v8 = v10;
        v10 = 0;
        if (v8)
        {
          WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(v8);
        }
      }
    }

    result = std::__hash_table<std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,WTF::FastAllocator<std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>>>::__erase_unique<unsigned long long>(this + 76, &v11);
  }

  v9 = 1;
  atomic_compare_exchange_strong_explicit(v4, &v9, 0, memory_order_release, memory_order_relaxed);
  if (v9 != 1)
  {
    return WTF::Lock::unlockSlow(v4);
  }

  return result;
}

void *WebKit::MediaPlayerPrivateRemote::remoteTextTrackConfigurationChanged(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v5 = 0;
  v38 = a2;
  v6 = (a1 + 512);
  atomic_compare_exchange_strong_explicit((a1 + 512), &v5, 1u, memory_order_acquire, memory_order_acquire);
  if (v5)
  {
    MEMORY[0x19EB01E30](a1 + 512);
  }

  v7 = (a1 + 608);
  result = std::__hash_table<std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,WTF::FastAllocator<std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>>>::find<unsigned long long>((a1 + 608), &v38);
  if (!result)
  {
    goto LABEL_50;
  }

  v10 = result;
  v11 = result[3];
  v12 = (v11 + 8);
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
      goto LABEL_9;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v12);
LABEL_9:
  v15 = *(v11 + 128);
  v16 = *a3;
  WebKit::TextTrackPrivateRemote::updateConfiguration(v11, a3, v9);
  if (v15 == v16)
  {
    goto LABEL_49;
  }

  std::__hash_table<std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,WTF::FastAllocator<std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>>>::remove((a1 + 608), v10, &v39);
  v18 = v39;
  v19 = *(v11 + 128);
  *(v39 + 1) = v19;
  *(v18 + 2) = v19;
  v20 = *(a1 + 616);
  if (v20)
  {
    v21 = vcnt_s8(v20);
    v21.i16[0] = vaddlv_u8(v21);
    if (v21.u32[0] > 1uLL)
    {
      v22 = v19;
      if (v20 <= v19)
      {
        v22 = v19 % v20;
      }
    }

    else
    {
      v22 = (v20 - 1) & v19;
    }

    v23 = *(*v7 + 8 * v22);
    if (v23)
    {
      for (i = *v23; i; i = *i)
      {
        v25 = i[1];
        if (v25 == v19)
        {
          if (i[2] == v19)
          {
            v39 = &v41;
            v40 = 1;
            std::__hash_node_destructor<WTF::FastAllocator<std::__hash_node<std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,void *>>>::operator()[abi:sn200100](&v39, v18);
            goto LABEL_49;
          }
        }

        else
        {
          if (v21.u32[0] > 1uLL)
          {
            if (v25 >= v20)
            {
              v25 %= v20;
            }
          }

          else
          {
            v25 &= v20 - 1;
          }

          if (v25 != v22)
          {
            break;
          }
        }
      }
    }
  }

  v26 = (*(a1 + 632) + 1);
  v27 = *(a1 + 640);
  if (!v20 || (v27 * v20) < v26)
  {
    v28 = 2 * v20;
    v29 = v20 < 3 || (v20 & (v20 - 1)) != 0;
    v30 = v29 | v28;
    v31 = vcvtps_u32_f32(v26 / v27);
    if (v30 <= v31)
    {
      v32 = v31;
    }

    else
    {
      v32 = v30;
    }

    std::__hash_table<std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,WTF::FastAllocator<std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>>>::__rehash<true>((a1 + 608), v32);
    v20 = *(a1 + 616);
    v19 = *(v18 + 1);
  }

  v33 = vcnt_s8(v20);
  v33.i16[0] = vaddlv_u8(v33);
  if (v33.u32[0] > 1uLL)
  {
    if (v19 >= v20)
    {
      v19 %= v20;
    }
  }

  else
  {
    v19 &= v20 - 1;
  }

  v34 = *v7;
  v35 = *(*v7 + 8 * v19);
  if (v35)
  {
    *v18 = *v35;
  }

  else
  {
    *v18 = *(a1 + 624);
    *(a1 + 624) = v18;
    *(v34 + 8 * v19) = a1 + 624;
    if (!*v18)
    {
      goto LABEL_48;
    }

    v36 = *(*v18 + 8);
    if (v33.u32[0] > 1uLL)
    {
      if (v36 >= v20)
      {
        v36 %= v20;
      }
    }

    else
    {
      v36 &= v20 - 1;
    }

    v35 = (*v7 + 8 * v36);
  }

  *v35 = v18;
LABEL_48:
  ++*(a1 + 632);
LABEL_49:
  result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::TrackPrivateBase,(WTF::DestructionThread)0>::deref((v11 + 8), v17);
LABEL_50:
  v37 = 1;
  atomic_compare_exchange_strong_explicit(v6, &v37, 0, memory_order_release, memory_order_relaxed);
  if (v37 != 1)
  {
    return WTF::Lock::unlockSlow(v6);
  }

  return result;
}

void *WebKit::MediaPlayerPrivateRemote::parseWebVTTFileHeader(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = 0;
  v14 = a2;
  v6 = (a1 + 512);
  atomic_compare_exchange_strong_explicit((a1 + 512), &v5, 1u, memory_order_acquire, memory_order_acquire);
  if (v5)
  {
    MEMORY[0x19EB01E30](a1 + 512);
  }

  result = std::__hash_table<std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,WTF::FastAllocator<std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>>>::find<unsigned long long>((a1 + 608), &v14);
  if (result)
  {
    v8 = result[3];
    v9 = (v8 + 8);
    while (1)
    {
      v10 = *v9;
      if ((*v9 & 1) == 0)
      {
        break;
      }

      v11 = *v9;
      atomic_compare_exchange_strong_explicit(v9, &v11, v10 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v11 == v10)
      {
        goto LABEL_9;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v9);
LABEL_9:
    WebKit::TextTrackPrivateRemote::parseWebVTTFileHeader(v8, a3);
    result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::TrackPrivateBase,(WTF::DestructionThread)0>::deref((v8 + 8), v12);
  }

  v13 = 1;
  atomic_compare_exchange_strong_explicit(v6, &v13, 0, memory_order_release, memory_order_relaxed);
  if (v13 != 1)
  {
    return WTF::Lock::unlockSlow(v6);
  }

  return result;
}

void *WebKit::MediaPlayerPrivateRemote::parseWebVTTCueData(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v16 = a2;
  v8 = (a1 + 512);
  atomic_compare_exchange_strong_explicit((a1 + 512), &v7, 1u, memory_order_acquire, memory_order_acquire);
  if (v7)
  {
    MEMORY[0x19EB01E30](a1 + 512);
  }

  result = std::__hash_table<std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,WTF::FastAllocator<std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>>>::find<unsigned long long>((a1 + 608), &v16);
  if (result)
  {
    v10 = result[3];
    v11 = (v10 + 8);
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
        goto LABEL_9;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v11);
LABEL_9:
    WebKit::TextTrackPrivateRemote::parseWebVTTCueData(v10, a3, a4);
    result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::TrackPrivateBase,(WTF::DestructionThread)0>::deref((v10 + 8), v14);
  }

  v15 = 1;
  atomic_compare_exchange_strong_explicit(v8, &v15, 0, memory_order_release, memory_order_relaxed);
  if (v15 != 1)
  {
    return WTF::Lock::unlockSlow(v8);
  }

  return result;
}

void *WebKit::MediaPlayerPrivateRemote::parseWebVTTCueDataStruct(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = 0;
  v14 = a2;
  v6 = (a1 + 512);
  atomic_compare_exchange_strong_explicit((a1 + 512), &v5, 1u, memory_order_acquire, memory_order_acquire);
  if (v5)
  {
    MEMORY[0x19EB01E30](a1 + 512);
  }

  result = std::__hash_table<std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,WTF::FastAllocator<std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>>>::find<unsigned long long>((a1 + 608), &v14);
  if (result)
  {
    v8 = result[3];
    v9 = (v8 + 8);
    while (1)
    {
      v10 = *v9;
      if ((*v9 & 1) == 0)
      {
        break;
      }

      v11 = *v9;
      atomic_compare_exchange_strong_explicit(v9, &v11, v10 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v11 == v10)
      {
        goto LABEL_9;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v9);
LABEL_9:
    WebKit::TextTrackPrivateRemote::parseWebVTTCueDataStruct(v8, a3);
    result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::TrackPrivateBase,(WTF::DestructionThread)0>::deref((v8 + 8), v12);
  }

  v13 = 1;
  atomic_compare_exchange_strong_explicit(v6, &v13, 0, memory_order_release, memory_order_relaxed);
  if (v13 != 1)
  {
    return WTF::Lock::unlockSlow(v6);
  }

  return result;
}

void *WebKit::MediaPlayerPrivateRemote::addDataCue(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = 0;
  v20 = a2;
  v12 = (a1 + 512);
  atomic_compare_exchange_strong_explicit((a1 + 512), &v11, 1u, memory_order_acquire, memory_order_acquire);
  if (v11)
  {
    MEMORY[0x19EB01E30](a1 + 512);
  }

  result = std::__hash_table<std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,WTF::FastAllocator<std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>>>::find<unsigned long long>((a1 + 608), &v20);
  if (result)
  {
    v14 = result[3];
    v15 = (v14 + 8);
    while (1)
    {
      v16 = *v15;
      if ((*v15 & 1) == 0)
      {
        break;
      }

      v17 = *v15;
      atomic_compare_exchange_strong_explicit(v15, &v17, v16 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v17 == v16)
      {
        goto LABEL_9;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v15);
LABEL_9:
    WebKit::TextTrackPrivateRemote::addDataCue(v14, a3, a4, a5, a6);
    result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::TrackPrivateBase,(WTF::DestructionThread)0>::deref((v14 + 8), v18);
  }

  v19 = 1;
  atomic_compare_exchange_strong_explicit(v12, &v19, 0, memory_order_release, memory_order_relaxed);
  if (v19 != 1)
  {
    return WTF::Lock::unlockSlow(v12);
  }

  return result;
}

void *WebKit::MediaPlayerPrivateRemote::addDataCueWithType(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = 0;
  v20 = a2;
  v12 = (a1 + 512);
  atomic_compare_exchange_strong_explicit((a1 + 512), &v11, 1u, memory_order_acquire, memory_order_acquire);
  if (v11)
  {
    MEMORY[0x19EB01E30](a1 + 512);
  }

  result = std::__hash_table<std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,WTF::FastAllocator<std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>>>::find<unsigned long long>((a1 + 608), &v20);
  if (result)
  {
    v14 = result[3];
    v15 = (v14 + 8);
    while (1)
    {
      v16 = *v15;
      if ((*v15 & 1) == 0)
      {
        break;
      }

      v17 = *v15;
      atomic_compare_exchange_strong_explicit(v15, &v17, v16 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v17 == v16)
      {
        goto LABEL_9;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v15);
LABEL_9:
    WebKit::TextTrackPrivateRemote::addDataCueWithType(v14, a3, a4, a5, a6);
    result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::TrackPrivateBase,(WTF::DestructionThread)0>::deref((v14 + 8), v18);
  }

  v19 = 1;
  atomic_compare_exchange_strong_explicit(v12, &v19, 0, memory_order_release, memory_order_relaxed);
  if (v19 != 1)
  {
    return WTF::Lock::unlockSlow(v12);
  }

  return result;
}

void *WebKit::MediaPlayerPrivateRemote::updateDataCue(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = 0;
  v18 = a2;
  v10 = (a1 + 512);
  atomic_compare_exchange_strong_explicit((a1 + 512), &v9, 1u, memory_order_acquire, memory_order_acquire);
  if (v9)
  {
    MEMORY[0x19EB01E30](a1 + 512);
  }

  result = std::__hash_table<std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,WTF::FastAllocator<std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>>>::find<unsigned long long>((a1 + 608), &v18);
  if (result)
  {
    v12 = result[3];
    v13 = (v12 + 8);
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
        goto LABEL_9;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v13);
LABEL_9:
    WebKit::TextTrackPrivateRemote::updateDataCue(v12, a3, a4, a5);
    result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::TrackPrivateBase,(WTF::DestructionThread)0>::deref((v12 + 8), v16);
  }

  v17 = 1;
  atomic_compare_exchange_strong_explicit(v10, &v17, 0, memory_order_release, memory_order_relaxed);
  if (v17 != 1)
  {
    return WTF::Lock::unlockSlow(v10);
  }

  return result;
}

void *WebKit::MediaPlayerPrivateRemote::removeDataCue(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = 0;
  v18 = a2;
  v10 = (a1 + 512);
  atomic_compare_exchange_strong_explicit((a1 + 512), &v9, 1u, memory_order_acquire, memory_order_acquire);
  if (v9)
  {
    MEMORY[0x19EB01E30](a1 + 512);
  }

  result = std::__hash_table<std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,WTF::FastAllocator<std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>>>::find<unsigned long long>((a1 + 608), &v18);
  if (result)
  {
    v12 = result[3];
    v13 = (v12 + 8);
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
        goto LABEL_9;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v13);
LABEL_9:
    WebKit::TextTrackPrivateRemote::removeDataCue(v12, a3, a4, a5);
    result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::TrackPrivateBase,(WTF::DestructionThread)0>::deref((v12 + 8), v16);
  }

  v17 = 1;
  atomic_compare_exchange_strong_explicit(v10, &v17, 0, memory_order_release, memory_order_relaxed);
  if (v17 != 1)
  {
    return WTF::Lock::unlockSlow(v10);
  }

  return result;
}

void *WebKit::MediaPlayerPrivateRemote::addGenericCue(uint64_t a1, unint64_t a2, __int128 *a3)
{
  v5 = 0;
  v16 = a2;
  v6 = (a1 + 512);
  atomic_compare_exchange_strong_explicit((a1 + 512), &v5, 1u, memory_order_acquire, memory_order_acquire);
  if (v5)
  {
    MEMORY[0x19EB01E30](a1 + 512);
  }

  result = std::__hash_table<std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,WTF::FastAllocator<std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>>>::find<unsigned long long>((a1 + 608), &v16);
  if (result)
  {
    v8 = result[3];
    v9 = (v8 + 8);
    while (1)
    {
      v10 = *v9;
      if ((*v9 & 1) == 0)
      {
        break;
      }

      v11 = *v9;
      atomic_compare_exchange_strong_explicit(v9, &v11, v10 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v11 == v10)
      {
        goto LABEL_9;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v9);
LABEL_9:
    WebCore::InbandGenericCue::create(&v15, a3);
    WebKit::TextTrackPrivateRemote::addGenericCue(v8, &v15);
    v13 = v15;
    v15 = 0;
    if (v13)
    {
      WTF::RefCounted<WebCore::InbandGenericCue>::deref(v13, v12);
    }

    result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::TrackPrivateBase,(WTF::DestructionThread)0>::deref((v8 + 8), v12);
  }

  v14 = 1;
  atomic_compare_exchange_strong_explicit(v6, &v14, 0, memory_order_release, memory_order_relaxed);
  if (v14 != 1)
  {
    return WTF::Lock::unlockSlow(v6);
  }

  return result;
}

uint64_t WebCore::InbandGenericCue::create(uint64_t *a1, __int128 *a2)
{
  result = WTF::fastMalloc(0x90);
  *result = 1;
  v5 = *a2;
  v6 = a2[1];
  *(result + 37) = *(a2 + 29);
  *(result + 24) = v6;
  *(result + 8) = v5;
  v7 = *(a2 + 5);
  *(a2 + 5) = 0;
  *(result + 48) = v7;
  v8 = *(a2 + 6);
  *(a2 + 6) = 0;
  *(result + 56) = v8;
  v9 = *(a2 + 7);
  *(a2 + 7) = 0;
  *(result + 64) = v9;
  v10 = a2[5];
  v11 = *(a2 + 12);
  *(result + 72) = a2[4];
  *(result + 88) = v10;
  *(result + 104) = v11;
  *(result + 112) = 0;
  if ((result + 8) == a2)
  {
    *(result + 120) = 0;
    *(result + 128) = 0;
  }

  else
  {
    v12 = *(a2 + 13);
    *(a2 + 13) = 0;
    *(result + 112) = v12;
    *(result + 120) = 0;
    v13 = *(a2 + 14);
    *(a2 + 14) = 0;
    *(result + 120) = v13;
    *(result + 128) = 0;
    v14 = *(a2 + 15);
    *(a2 + 15) = 0;
    *(result + 128) = v14;
  }

  v15 = *(a2 + 64);
  *(result + 138) = *(a2 + 130);
  *(result + 136) = v15;
  *a1 = result;
  return result;
}

void *WebKit::MediaPlayerPrivateRemote::updateGenericCue(uint64_t a1, unint64_t a2, __int128 *a3)
{
  v5 = 0;
  v16 = a2;
  v6 = (a1 + 512);
  atomic_compare_exchange_strong_explicit((a1 + 512), &v5, 1u, memory_order_acquire, memory_order_acquire);
  if (v5)
  {
    MEMORY[0x19EB01E30](a1 + 512);
  }

  result = std::__hash_table<std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,WTF::FastAllocator<std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>>>::find<unsigned long long>((a1 + 608), &v16);
  if (result)
  {
    v8 = result[3];
    v9 = (v8 + 8);
    while (1)
    {
      v10 = *v9;
      if ((*v9 & 1) == 0)
      {
        break;
      }

      v11 = *v9;
      atomic_compare_exchange_strong_explicit(v9, &v11, v10 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v11 == v10)
      {
        goto LABEL_9;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v9);
LABEL_9:
    WebCore::InbandGenericCue::create(&v15, a3);
    WebKit::TextTrackPrivateRemote::updateGenericCue(v8, &v15);
    v13 = v15;
    v15 = 0;
    if (v13)
    {
      WTF::RefCounted<WebCore::InbandGenericCue>::deref(v13, v12);
    }

    result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::TrackPrivateBase,(WTF::DestructionThread)0>::deref((v8 + 8), v12);
  }

  v14 = 1;
  atomic_compare_exchange_strong_explicit(v6, &v14, 0, memory_order_release, memory_order_relaxed);
  if (v14 != 1)
  {
    return WTF::Lock::unlockSlow(v6);
  }

  return result;
}

void *WebKit::MediaPlayerPrivateRemote::removeGenericCue(uint64_t a1, unint64_t a2, __int128 *a3)
{
  v5 = 0;
  v16 = a2;
  v6 = (a1 + 512);
  atomic_compare_exchange_strong_explicit((a1 + 512), &v5, 1u, memory_order_acquire, memory_order_acquire);
  if (v5)
  {
    MEMORY[0x19EB01E30](a1 + 512);
  }

  result = std::__hash_table<std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,WTF::FastAllocator<std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>>>::find<unsigned long long>((a1 + 608), &v16);
  if (result)
  {
    v8 = result[3];
    v9 = (v8 + 8);
    while (1)
    {
      v10 = *v9;
      if ((*v9 & 1) == 0)
      {
        break;
      }

      v11 = *v9;
      atomic_compare_exchange_strong_explicit(v9, &v11, v10 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v11 == v10)
      {
        goto LABEL_9;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v9);
LABEL_9:
    WebCore::InbandGenericCue::create(&v15, a3);
    WebKit::TextTrackPrivateRemote::removeGenericCue(v8, &v15);
    v13 = v15;
    v15 = 0;
    if (v13)
    {
      WTF::RefCounted<WebCore::InbandGenericCue>::deref(v13, v12);
    }

    result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::TrackPrivateBase,(WTF::DestructionThread)0>::deref((v8 + 8), v12);
  }

  v14 = 1;
  atomic_compare_exchange_strong_explicit(v6, &v14, 0, memory_order_release, memory_order_relaxed);
  if (v14 != 1)
  {
    return WTF::Lock::unlockSlow(v6);
  }

  return result;
}

uint64_t WebKit::MediaPlayerPrivateRemote::addRemoteVideoTrack(uint64_t a1, unint64_t *a2)
{
  v4 = 0;
  v5 = a1 + 512;
  atomic_compare_exchange_strong_explicit((a1 + 512), &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    MEMORY[0x19EB01E30](a1 + 512);
  }

  v6 = (a1 + 568);
  std::__hash_table<std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,WTF::FastAllocator<std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>>>::__erase_unique<unsigned long long>((a1 + 568), a2);
  v8 = *(a1 + 208);
  if (v8)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(v8, *(a1 + 200), &v35);
    v9 = v35;
  }

  else
  {
    v9 = 0;
  }

  WebKit::RemoteMediaPlayerManager::protectedGPUProcessConnection(v9, v7, &v35);
  v11 = v35;
  v12 = *(a1 + 224);
  if (WebKit::VideoTrackPrivateRemote::s_heapRef)
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::VideoTrackPrivateRemote::s_heapRef, v10);
  }

  else
  {
    NonCompact = WebKit::VideoTrackPrivateRemote::operatorNewSlow(0xF0);
  }

  v14 = NonCompact;
  result = WebKit::VideoTrackPrivateRemote::VideoTrackPrivateRemote(NonCompact, v11, v12, a2);
  v17 = *a2;
  v18 = *(a1 + 576);
  v34 = v5;
  if (!v18)
  {
    goto LABEL_25;
  }

  v19 = vcnt_s8(v18);
  v19.i16[0] = vaddlv_u8(v19);
  if (v19.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v18 <= v17)
    {
      v5 = v17 % v18;
    }
  }

  else
  {
    v5 = (v18 - 1) & v17;
  }

  v20 = *(*v6 + 8 * v5);
  if (!v20 || (v21 = *v20) == 0)
  {
LABEL_25:
    result = WTF::fastMalloc(0x20);
    v21 = result;
    *result = 0;
    *(result + 8) = v17;
    *(result + 16) = *a2;
    *(result + 24) = v14;
    v23 = (*(a1 + 592) + 1);
    v24 = *(a1 + 600);
    if (!v18 || (v24 * v18) < v23)
    {
      v25 = 1;
      if (v18 >= 3)
      {
        v25 = (v18 & (v18 - 1)) != 0;
      }

      v26 = v25 | (2 * v18);
      v27 = vcvtps_u32_f32(v23 / v24);
      if (v26 <= v27)
      {
        v28 = v27;
      }

      else
      {
        v28 = v26;
      }

      result = std::__hash_table<std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,WTF::FastAllocator<std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>>>::__rehash<true>((a1 + 568), v28);
      v18 = *(a1 + 576);
      if ((v18 & (v18 - 1)) != 0)
      {
        if (v18 <= v17)
        {
          v5 = v17 % v18;
        }

        else
        {
          v5 = v17;
        }
      }

      else
      {
        v5 = (v18 - 1) & v17;
      }
    }

    v29 = *v6;
    v30 = *(*v6 + 8 * v5);
    if (v30)
    {
      *v21 = *v30;
      v31 = v34;
    }

    else
    {
      *v21 = *(a1 + 584);
      *(a1 + 584) = v21;
      *(v29 + 8 * v5) = a1 + 584;
      v31 = v34;
      if (!*v21)
      {
LABEL_46:
        ++*(a1 + 592);
        goto LABEL_47;
      }

      v32 = *(*v21 + 8);
      if ((v18 & (v18 - 1)) != 0)
      {
        if (v32 >= v18)
        {
          v32 %= v18;
        }
      }

      else
      {
        v32 &= v18 - 1;
      }

      v30 = (*v6 + 8 * v32);
    }

    *v30 = v21;
    goto LABEL_46;
  }

  while (1)
  {
    v22 = *(v21 + 8);
    if (v22 == v17)
    {
      break;
    }

    if (v19.u32[0] > 1uLL)
    {
      if (v22 >= v18)
      {
        v22 %= v18;
      }
    }

    else
    {
      v22 &= v18 - 1;
    }

    if (v22 != v5)
    {
      goto LABEL_25;
    }

LABEL_24:
    v21 = *v21;
    if (!v21)
    {
      goto LABEL_25;
    }
  }

  if (*(v21 + 16) != v17)
  {
    goto LABEL_24;
  }

  if (v14)
  {
    result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::TrackPrivateBase,(WTF::DestructionThread)0>::deref((v14 + 8), v16);
    v11 = v35;
  }

  v31 = v34;
LABEL_47:
  v35 = 0;
  if (v11)
  {
    result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref(v11 + 3, v16);
  }

  if (v9)
  {
    result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::RemoteMediaPlayerManager,(WTF::DestructionThread)0>::deref(v9 + 1, v16);
  }

  if (!*(a1 + 504))
  {
    result = *(a1 + 176);
    if (result)
    {
      WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(result, *(a1 + 168), &v35);
      result = v35;
      if (v35)
      {
        WebCore::MediaPlayer::addVideoTrack(v35, *(v21 + 24));
        result = v35;
        v35 = 0;
        if (result)
        {
          result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(result);
        }
      }
    }
  }

  v33 = 1;
  atomic_compare_exchange_strong_explicit(v31, &v33, 0, memory_order_release, memory_order_relaxed);
  if (v33 != 1)
  {
    return WTF::Lock::unlockSlow(v31);
  }

  return result;
}

void *WebKit::MediaPlayerPrivateRemote::removeRemoteVideoTrack(WebKit::MediaPlayerPrivateRemote *this, unint64_t a2)
{
  v3 = 0;
  v11 = a2;
  v4 = this + 512;
  atomic_compare_exchange_strong_explicit(this + 512, &v3, 1u, memory_order_acquire, memory_order_acquire);
  if (v3)
  {
    MEMORY[0x19EB01E30](this + 512);
  }

  result = std::__hash_table<std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,WTF::FastAllocator<std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>>>::find<unsigned long long>(this + 71, &v11);
  if (result)
  {
    v6 = result;
    v7 = *(this + 22);
    if (v7)
    {
      WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(v7, *(this + 21), &v10);
      if (v10)
      {
        WebCore::MediaPlayer::removeVideoTrack(v10, *(v6 + 24));
        v8 = v10;
        v10 = 0;
        if (v8)
        {
          WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(v8);
        }
      }
    }

    result = std::__hash_table<std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,WTF::FastAllocator<std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>>>::__erase_unique<unsigned long long>(this + 71, &v11);
  }

  v9 = 1;
  atomic_compare_exchange_strong_explicit(v4, &v9, 0, memory_order_release, memory_order_relaxed);
  if (v9 != 1)
  {
    return WTF::Lock::unlockSlow(v4);
  }

  return result;
}

void *WebKit::MediaPlayerPrivateRemote::remoteVideoTrackConfigurationChanged(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v5 = 0;
  v38 = a2;
  v6 = (a1 + 512);
  atomic_compare_exchange_strong_explicit((a1 + 512), &v5, 1u, memory_order_acquire, memory_order_acquire);
  if (v5)
  {
    MEMORY[0x19EB01E30](a1 + 512);
  }

  v7 = (a1 + 568);
  result = std::__hash_table<std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,WTF::FastAllocator<std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>>>::find<unsigned long long>((a1 + 568), &v38);
  if (!result)
  {
    goto LABEL_50;
  }

  v10 = result;
  v11 = result[3];
  v12 = (v11 + 8);
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
      goto LABEL_9;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v12);
LABEL_9:
  v15 = *(v11 + 224);
  v16 = *a3;
  WebKit::VideoTrackPrivateRemote::updateConfiguration(v11, a3, v9);
  if (v15 == v16)
  {
    goto LABEL_49;
  }

  std::__hash_table<std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,WTF::FastAllocator<std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>>>::remove((a1 + 568), v10, &v39);
  v18 = v39;
  v19 = *(v11 + 224);
  *(v39 + 1) = v19;
  *(v18 + 2) = v19;
  v20 = *(a1 + 576);
  if (v20)
  {
    v21 = vcnt_s8(v20);
    v21.i16[0] = vaddlv_u8(v21);
    if (v21.u32[0] > 1uLL)
    {
      v22 = v19;
      if (v20 <= v19)
      {
        v22 = v19 % v20;
      }
    }

    else
    {
      v22 = (v20 - 1) & v19;
    }

    v23 = *(*v7 + 8 * v22);
    if (v23)
    {
      for (i = *v23; i; i = *i)
      {
        v25 = i[1];
        if (v25 == v19)
        {
          if (i[2] == v19)
          {
            v39 = &v41;
            v40 = 1;
            std::__hash_node_destructor<WTF::FastAllocator<std::__hash_node<std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,void *>>>::operator()[abi:sn200100](&v39, v18);
            goto LABEL_49;
          }
        }

        else
        {
          if (v21.u32[0] > 1uLL)
          {
            if (v25 >= v20)
            {
              v25 %= v20;
            }
          }

          else
          {
            v25 &= v20 - 1;
          }

          if (v25 != v22)
          {
            break;
          }
        }
      }
    }
  }

  v26 = (*(a1 + 592) + 1);
  v27 = *(a1 + 600);
  if (!v20 || (v27 * v20) < v26)
  {
    v28 = 2 * v20;
    v29 = v20 < 3 || (v20 & (v20 - 1)) != 0;
    v30 = v29 | v28;
    v31 = vcvtps_u32_f32(v26 / v27);
    if (v30 <= v31)
    {
      v32 = v31;
    }

    else
    {
      v32 = v30;
    }

    std::__hash_table<std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,WTF::FastAllocator<std::__hash_value_type<unsigned long long,WTF::Ref<WebKit::AudioTrackPrivateRemote,WTF::RawPtrTraits<WebKit::AudioTrackPrivateRemote>,WTF::DefaultRefDerefTraits<WebKit::AudioTrackPrivateRemote>>>>>::__rehash<true>((a1 + 568), v32);
    v20 = *(a1 + 576);
    v19 = *(v18 + 1);
  }

  v33 = vcnt_s8(v20);
  v33.i16[0] = vaddlv_u8(v33);
  if (v33.u32[0] > 1uLL)
  {
    if (v19 >= v20)
    {
      v19 %= v20;
    }
  }

  else
  {
    v19 &= v20 - 1;
  }

  v34 = *v7;
  v35 = *(*v7 + 8 * v19);
  if (v35)
  {
    *v18 = *v35;
  }

  else
  {
    *v18 = *(a1 + 584);
    *(a1 + 584) = v18;
    *(v34 + 8 * v19) = a1 + 584;
    if (!*v18)
    {
      goto LABEL_48;
    }

    v36 = *(*v18 + 8);
    if (v33.u32[0] > 1uLL)
    {
      if (v36 >= v20)
      {
        v36 %= v20;
      }
    }

    else
    {
      v36 &= v20 - 1;
    }

    v35 = (*v7 + 8 * v36);
  }

  *v35 = v18;
LABEL_48:
  ++*(a1 + 592);
LABEL_49:
  result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::TrackPrivateBase,(WTF::DestructionThread)0>::deref((v11 + 8), v17);
LABEL_50:
  v37 = 1;
  atomic_compare_exchange_strong_explicit(v6, &v37, 0, memory_order_release, memory_order_relaxed);
  if (v37 != 1)
  {
    return WTF::Lock::unlockSlow(v6);
  }

  return result;
}

atomic_uchar **WebKit::MediaPlayerPrivateRemote::load(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 216) != 1)
  {
    v11 = WebCore::platformStrategies(a1);
    v12 = WebCore::PlatformStrategies::mediaStrategy(v11);
    if (!WebCore::MediaStrategy::mockMediaSourceEnabled(v12) || *(a1 + 216) != 8)
    {
      v13 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>::controlBlock((a1 + 48));
      v14 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v13);
      v15 = WTF::fastMalloc(0x18);
      *v15 = &unk_1F1127D38;
      *(v15 + 1) = a1;
      *(v15 + 2) = v14;
      v61 = v15;
      WTF::callOnMainRunLoop();
      result = v61;
      v61 = 0;
      if (result)
      {
        return (*(*result + 1))(result);
      }

      return result;
    }
  }

  (*(*a4 + 48))(&v59, a4);
  v58 = a2;
  if (!v59)
  {
    goto LABEL_10;
  }

  if ((*(*v59 + 40))(v59) != 3)
  {
LABEL_56:
    __break(0xC471u);
    JUMPOUT(0x19E283F20);
  }

  v8 = v59;
  v59 = 0;
  if (v8)
  {
    WebKit::MediaSourcePrivateRemote::setPlayer(v8, a1);
    IdentifierInternal = *(v8 + 24);
  }

  else
  {
LABEL_10:
    IdentifierInternal = WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>::generateIdentifierInternal();
    v8 = 0;
  }

  v17 = WebKit::MediaPlayerPrivateRemote::connection(a1, v9);
  v18 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>::controlBlock((a1 + 48));
  v19 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v18);
  v20 = *(a1 + 224);
  v21 = WTF::fastMalloc(0x18);
  *v21 = &unk_1F1127D10;
  *(v21 + 1) = a1;
  *(v21 + 2) = v19;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    goto LABEL_56;
  }

  v22 = v21;
  v23 = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  v25 = IPC::Encoder::operator new(0x238, v24);
  *v25 = 1412;
  *(v25 + 2) = 0;
  *(v25 + 3) = 0;
  *(v25 + 1) = v20;
  *(v25 + 68) = 0;
  *(v25 + 70) = 0;
  *(v25 + 69) = 0;
  IPC::Encoder::encodeHeader(v25);
  v60 = v25;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v25, v58);
  IPC::ArgumentCoder<WebCore::MediaPlayerLoadOptions,void>::encode(v25, a3);
  v26 = IdentifierInternal;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v25, IdentifierInternal);
  v61 = v22;
  v62 = v23;
  IPC::Connection::sendMessageWithAsyncReply(v17, &v60, &v61, 0, 0);
  v28 = v61;
  v61 = 0;
  if (v28)
  {
    (*(*v28 + 8))(v28);
  }

  v29 = v60;
  v60 = 0;
  if (v29)
  {
    IPC::Encoder::~Encoder(v29, v27);
    bmalloc::api::tzoneFree(v31, v32);
    if (v8)
    {
      goto LABEL_16;
    }
  }

  else if (v8)
  {
LABEL_16:
    v30 = *(a1 + 504);
    *(a1 + 504) = v8;
    if (v30)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaSourcePrivate,(WTF::DestructionThread)0>::deref((v30 + 8), v27);
    }

    return (*(*a4 + 24))(a4);
  }

  v33 = *(a1 + 208);
  if (v33)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(v33, *(a1 + 200), &v61);
    v34 = v61;
  }

  else
  {
    v34 = 0;
  }

  WebKit::RemoteMediaPlayerManager::protectedGPUProcessConnection(v34, v27, &v60);
  v35 = v60;
  v36 = *(a1 + 208);
  if (v36)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(v36, *(a1 + 200), &v61);
    v37 = v61;
  }

  else
  {
    v37 = 0;
  }

  v38 = WebKit::RemoteMediaPlayerManager::typeCache(v37, *(a1 + 216));
  v39 = WTF::fastMalloc(0x100);
  WebKit::MediaSourcePrivateRemote::queueSingleton(v39);
  WebCore::MediaSourcePrivate::MediaSourcePrivate();
  *v39 = &unk_1F1127468;
  *(v39 + 160) = &unk_1F1127530;
  *(v39 + 168) = v35;
  v40 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::controlBlock(v35 + 3);
  *(v39 + 176) = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v40);
  v41 = WTF::fastMalloc(0x20);
  *v41 = &unk_1F10EF098;
  v41[1] = 3;
  v41[2] = v39;
  v42 = *(v39 + 8);
  if (v42)
  {
    v42 = WTF::fastMalloc(0x20);
    *v42 = 0;
    *(v42 + 8) = xmmword_19E7014F0;
    *(v42 + 24) = v39;
    while (1)
    {
      v56 = *(v39 + 8);
      if ((v56 & 1) == 0)
      {
        break;
      }

      *(v42 + 8) = v56 >> 1;
      v57 = v56;
      atomic_compare_exchange_strong_explicit((v39 + 8), &v57, v42, memory_order_release, memory_order_relaxed);
      if (v57 == v56)
      {
        goto LABEL_27;
      }
    }

    WTF::fastFree(v42, v55);
    v42 = *(v39 + 8);
  }

LABEL_27:
  v41[3] = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v42);
  *(v39 + 184) = v41;
  *(v39 + 192) = v26;
  *(v39 + 200) = v38;
  atomic_fetch_add(v38, 1u);
  *(v39 + 208) = a1;
  v43 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>::controlBlock((a1 + 48));
  *(v39 + 216) = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v43);
  *(v39 + 224) = 0;
  if ((*(*a4 + 64))(a4))
  {
    v44 = (*(*a4 + 64))(a4);
  }

  else
  {
    v44 = *(a1 + 152);
  }

  atomic_fetch_add(v44 + 2, 1u);
  *(v39 + 232) = v44;
  *(v39 + 240) = *(a1 + 160);
  *(v39 + 248) = 0;
  atomic_fetch_add(v44 + 2, 1u);
  v45 = *(v39 + 240);
  v61 = "MediaSourcePrivateRemote";
  v62 = 25;
  v63 = "MediaSourcePrivateRemote";
  v64 = v45;
  v46 = WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier>(v44, &WebKit2LogMedia, 0, &v61);
  if (v46)
  {
    v46 = WTF::Logger::log<WTF::Logger::LogSiteIdentifier>(&WebKit2LogMedia, 0, &v61);
  }

  if (v44 && atomic_fetch_add(v44 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v44 + 2);
    v46 = (*(*v44 + 8))(v44);
  }

  v47 = *(v35 + 4);
  v48 = WebKit::MediaSourcePrivateRemote::queueSingleton(v46);
  IPC::Connection::addWorkQueueMessageReceiver(v47, 0x19, v48, *(v39 + 184), *(v39 + 192));
  (*(*a4 + 56))(a4, *(v39 + 240));
  while (1)
  {
    v49 = *(v39 + 8);
    if ((v49 & 1) == 0)
    {
      break;
    }

    v50 = *(v39 + 8);
    atomic_compare_exchange_strong_explicit((v39 + 8), &v50, v49 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v50 == v49)
    {
      goto LABEL_40;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v39 + 8));
LABEL_40:
  v61 = v39;
  result = (*(*a4 + 16))(a4, &v61);
  v52 = v61;
  v61 = 0;
  if (v52)
  {
    result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaSourcePrivate,(WTF::DestructionThread)0>::deref(v52 + 1, v51);
  }

  v53 = *(a1 + 504);
  *(a1 + 504) = v39;
  if (v53)
  {
    result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaSourcePrivate,(WTF::DestructionThread)0>::deref((v53 + 8), v51);
  }

  if (v37)
  {
    result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::RemoteMediaPlayerManager,(WTF::DestructionThread)0>::deref(v37 + 1, v51);
  }

  v54 = v60;
  v60 = 0;
  if (v54)
  {
    result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref(v54 + 3, v51);
  }

  if (v34)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::RemoteMediaPlayerManager,(WTF::DestructionThread)0>::deref(v34 + 1, v51);
  }

  return result;
}

uint64_t WebCore::PlatformStrategies::mediaStrategy(WebCore::PlatformStrategies *this)
{
  v2 = (this + 24);
  v4 = this;
  if (atomic_load_explicit(v2, memory_order_acquire) != -1)
  {
    v6 = &v4;
    v5 = &v6;
    std::__call_once(v2, &v5, std::__call_once_proxy[abi:sn200100]<std::tuple<WebCore::PlatformStrategies::mediaStrategy(void)::{lambda(void)#1} &&>>);
  }

  return *(this + 4);
}

uint64_t WebKit::MediaPlayerPrivateRemote::load(uint64_t a1)
{
  v2 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>::controlBlock((a1 + 48));
  v3 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v2);
  v4 = WTF::fastMalloc(0x18);
  *v4 = &unk_1F1127D60;
  v4[1] = a1;
  v4[2] = v3;
  v6 = v4;
  WTF::callOnMainRunLoop();
  result = v6;
  if (v6)
  {
    return (*(*v6 + 8))(v6);
  }

  return result;
}

uint64_t WebKit::MediaPlayerPrivateRemote::platformLayer(WebKit::MediaPlayerPrivateRemote *this)
{
  if (!*(this + 24) && *(this + 196))
  {
    v2 = ceilf(WebKit::MediaPlayerPrivateRemote::videoLayerSize(this));
    if (v2 >= 2147500000.0)
    {
      v4 = 0x7FFFFFFFLL;
    }

    else if (v2 <= -2147500000.0)
    {
      v4 = 0x80000000;
    }

    else
    {
      v4 = v2;
    }

    v5 = ceilf(v3);
    if (v5 >= 2147500000.0)
    {
      v6 = 0x7FFFFFFF00000000;
    }

    else if (v5 <= -2147500000.0)
    {
      v6 = 0x8000000000000000;
    }

    else
    {
      v6 = v5 << 32;
    }

    v7 = HIDWORD(v6);
    WebKit::createVideoLayerRemote(this, *(this + 196), *(this + 688), v6 | v4, &cf);
    v8 = cf;
    cf = 0;
    v9 = *(this + 24);
    *(this + 24) = v8;
    if (v9)
    {
      CFRelease(v9);
      v10 = cf;
      cf = 0;
      if (v10)
      {
        CFRelease(v10);
      }
    }

    (*(**(this + 23) + 24))(*(this + 23), *(this + 24), v4, v7);
  }

  return (*(**(this + 23) + 16))(*(this + 23));
}

void WebKit::MediaPlayerPrivateRemote::setVideoFullscreenLayer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 184);
  cf = 0;
  (*(*v3 + 48))(v3, a2, a3, &cf);
  v4 = cf;
  cf = 0;
  if (v4)
  {
    CFRelease(v4);
  }
}

IPC::Encoder *WebKit::MediaPlayerPrivateRemote::updateVideoFullscreenInlineImage(WebKit::MediaPlayerPrivateRemote *this, void *a2)
{
  v3 = WebKit::MediaPlayerPrivateRemote::connection(this, a2);
  v4 = *(this + 28);
  v6 = IPC::Encoder::operator new(0x238, v5);
  *v6 = 1460;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = v4;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v11 = v6;
  IPC::Connection::sendMessageImpl(v3, &v11, 0, 0);
  result = v11;
  v11 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v7);
    return bmalloc::api::tzoneFree(v9, v10);
  }

  return result;
}

uint64_t WebKit::MediaPlayerPrivateRemote::setVideoFullscreenFrame(WTF::Logger *a1, float a2, float a3, float a4, float a5)
{
  v9 = a1;
  v75[1] = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 19);
  atomic_fetch_add((v10 + 8), 1u);
  v11 = *(a1 + 20);
  v56[0] = "MediaPlayerPrivateRemote";
  v56[1] = 25;
  v56[2] = "setVideoFullscreenFrame";
  v56[3] = v11;
  v12 = MEMORY[0x1E696EBD0];
  do
  {
    v13 = *v12;
    if (v13)
    {
      goto LABEL_55;
    }

    v14 = *v12;
    atomic_compare_exchange_strong_explicit(v12, &v14, v13 | 1, memory_order_acquire, memory_order_acquire);
  }

  while (v14 != v13);
  v15 = WTF::Logger::messageHandlerObservers(a1);
  v16 = *(v15 + 12);
  if (v16)
  {
    v17 = *v15;
    v18 = *v15 + 8 * v16;
    do
    {
      v19 = *v17;
      *buf = 0;
      WTF::Logger::LogSiteIdentifier::toString(&buf[8], v56);
      v68 = 0;
      v20 = WTF::String::String(&v69, "width = ");
      v70 = 0;
      WTF::String::number(&v71, v20, a4);
      v72 = 0;
      v21 = WTF::String::String(&v73, ", height = ");
      v74 = 0;
      WTF::String::number(v75, v21, a5);
      WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v57, buf, 5uLL);
      (*(*v19 + 16))(v19, &WebKit2LogMedia, 0, v57);
      WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v57, v22);
      for (i = 72; i != -8; i -= 16)
      {
        v25 = *&buf[i];
        *&buf[i] = 0;
        if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v25, v23);
        }
      }

      ++v17;
    }

    while (v17 != v18);
  }

  v26 = 1;
  atomic_compare_exchange_strong_explicit(v12, &v26, 0, memory_order_release, memory_order_relaxed);
  if (v26 != 1)
  {
    WTF::Lock::unlockSlow(MEMORY[0x1E696EBD0]);
  }

  v9 = a1;
  if ((*(v10 + 12) & 1) == 0)
  {
    goto LABEL_56;
  }

  WTF::Logger::LogSiteIdentifier::toString(&v62, v56);
  v27 = WTF::String::String(&v61, "width = ");
  WTF::String::number(&v60, v27, a4);
  v28 = WTF::String::String(&v59, ", height = ");
  WTF::String::number(&v58, v28, a5);
  v57[0] = v61;
  v66 = v60;
  *buf = v62;
  v64 = v58;
  v65 = v59;
  result = WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(buf, v57, &v66, &v65, &v64, &v63);
  if (v63)
  {
    v31 = v58;
    v58 = 0;
    if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v31, v30);
    }

    v32 = v59;
    v59 = 0;
    if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v32, v30);
    }

    v33 = v60;
    v60 = 0;
    if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v33, v30);
    }

    v34 = v61;
    v61 = 0;
    if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v34, v30);
    }

    v35 = v62;
    v62 = 0;
    if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v35, v30);
    }

    v36 = qword_1ED640D38;
    v37 = os_log_type_enabled(qword_1ED640D38, OS_LOG_TYPE_DEFAULT);
    if (v37)
    {
      WTF::String::utf8();
      v39 = v57[0] ? v57[0] + 16 : 0;
      *buf = 136446210;
      *&buf[4] = v39;
      _os_log_impl(&dword_19D52D000, v36, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
      v37 = v57[0];
      v57[0] = 0;
      if (v37)
      {
        if (*v37 == 1)
        {
          v37 = WTF::fastFree(v37, v38);
        }

        else
        {
          --*v37;
        }
      }
    }

    if (WebKit2LogMedia)
    {
      v40 = MEMORY[0x1E696EBC0];
      while (1)
      {
        v41 = *v40;
        if (v41)
        {
          break;
        }

        v42 = *v40;
        atomic_compare_exchange_strong_explicit(v40, &v42, v41 | 1, memory_order_acquire, memory_order_acquire);
        if (v42 == v41)
        {
          v43 = WTF::Logger::observers(v37);
          v44 = *(v43 + 12);
          if (v44)
          {
            v45 = *v43;
            v46 = *v43 + 8 * v44;
            do
            {
              v47 = *v45;
              *buf = 0;
              WTF::Logger::LogSiteIdentifier::toString(&buf[8], v56);
              v68 = 0;
              v48 = WTF::String::String(&v69, "width = ");
              v70 = 0;
              WTF::String::number(&v71, v48, a4);
              v72 = 0;
              v49 = WTF::String::String(&v73, ", height = ");
              v74 = 0;
              WTF::String::number(v75, v49, a5);
              WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v57, buf, 5uLL);
              (*(*v47 + 16))(v47, &WebKit2LogMedia, 0, v57);
              WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v57, v50);
              for (j = 72; j != -8; j -= 16)
              {
                v52 = *&buf[j];
                *&buf[j] = 0;
                if (v52 && atomic_fetch_add_explicit(v52, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v52, v38);
                }
              }

              ++v45;
            }

            while (v45 != v46);
          }

          v53 = 1;
          atomic_compare_exchange_strong_explicit(v40, &v53, 0, memory_order_release, memory_order_relaxed);
          v9 = a1;
          if (v53 != 1)
          {
            WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
          }

          break;
        }
      }
    }

    v54 = v63;
    v63 = 0;
    if (v54 && atomic_fetch_add_explicit(v54, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v54, v38);
    }

LABEL_55:
    if (!v10)
    {
      return (*(**(v9 + 23) + 64))(*(v9 + 23), a2, a3, a4, a5);
    }

LABEL_56:
    if (atomic_fetch_add((v10 + 8), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, (v10 + 8));
      (*(*v10 + 8))(v10);
    }

    return (*(**(v9 + 23) + 64))(*(v9 + 23), a2, a3, a4, a5);
  }

  __break(0xC471u);
  return result;
}

IPC::Encoder *WebKit::MediaPlayerPrivateRemote::setVideoFullscreenGravity(uint64_t a1, void *a2)
{
  v2 = a2;
  *(a1 + 688) = a2;
  v4 = WebKit::MediaPlayerPrivateRemote::connection(a1, a2);
  v5 = *(a1 + 224);
  v7 = IPC::Encoder::operator new(0x238, v6);
  *v7 = 1448;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = v5;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  IPC::Encoder::encodeHeader(v7);
  v12 = v7;
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v7, v2);
  IPC::Connection::sendMessageImpl(v4, &v12, 0, 0);
  result = v12;
  v12 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v8);
    return bmalloc::api::tzoneFree(v10, v11);
  }

  return result;
}

IPC::Encoder *WebKit::MediaPlayerPrivateRemote::setVideoFullscreenMode(WebKit::MediaPlayerPrivateRemote *this, void *a2)
{
  v2 = a2;
  v4 = WebKit::MediaPlayerPrivateRemote::connection(this, a2);
  v5 = *(this + 28);
  v7 = IPC::Encoder::operator new(0x238, v6);
  *v7 = 1449;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = v5;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  IPC::Encoder::encodeHeader(v7);
  v12 = v7;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v7, v2);
  IPC::Connection::sendMessageImpl(v4, &v12, 0, 0);
  result = v12;
  v12 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v8);
    return bmalloc::api::tzoneFree(v10, v11);
  }

  return result;
}

atomic_uchar *WebKit::MediaPlayerPrivateRemote::videoFullscreenStandbyChanged(WebKit::MediaPlayerPrivateRemote *this)
{
  result = *(this + 22);
  if (result)
  {
    result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(result, *(this + 21), &v13);
    if (v13)
    {
      v4 = WebKit::MediaPlayerPrivateRemote::connection(this, v3);
      isVideoFullscreenStandby = WebCore::MediaPlayer::isVideoFullscreenStandby(v13);
      v5 = *(this + 28);
      v7 = IPC::Encoder::operator new(0x238, v6);
      *v7 = 1461;
      *(v7 + 2) = 0;
      *(v7 + 3) = 0;
      *(v7 + 1) = v5;
      *(v7 + 68) = 0;
      *(v7 + 70) = 0;
      *(v7 + 69) = 0;
      IPC::Encoder::encodeHeader(v7);
      v14 = v7;
      IPC::Encoder::operator<<<BOOL &>(v7, &isVideoFullscreenStandby);
      IPC::Connection::sendMessageImpl(v4, &v14, 0, 0);
      v9 = v14;
      v14 = 0;
      if (v9)
      {
        IPC::Encoder::~Encoder(v9, v8);
        bmalloc::api::tzoneFree(v10, v11);
      }

      result = v13;
      v13 = 0;
      if (result)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(result);
      }
    }
  }

  return result;
}

IPC::Encoder *WebKit::MediaPlayerPrivateRemote::accessLog@<X0>(WebKit::MediaPlayerPrivateRemote *this@<X0>, void *a2@<X1>, unsigned __int8 **a3@<X8>)
{
  v5 = WebKit::MediaPlayerPrivateRemote::connection(this, a2);
  IPC::Connection::createSyncMessageEncoder(0x1014, *(this + 28), v27);
  v6 = IPC::Connection::sendSyncMessage(v5, v27[1], v27, 0, &v25, INFINITY);
  if (v26)
  {
    if (v26 != 1)
    {
      mpark::throw_bad_variant_access(v6);
    }

    v8 = v25;
    v9 = 1;
    goto LABEL_13;
  }

  v8 = v25;
  v25 = 0;
  if (*(v8 + 50) == 3194)
  {
    v10 = 11;
LABEL_9:
    IPC::Decoder::~Decoder(v8);
    bmalloc::api::tzoneFree(v11, v12);
    v9 = 1;
    v8 = v10;
    goto LABEL_10;
  }

  LOBYTE(v23) = 0;
  v24 = 0;
  IPC::Decoder::operator>><std::tuple<WTF::String>>(v8, &v23);
  if (v24 != 1)
  {
    v10 = 14;
    goto LABEL_9;
  }

  v9 = 0;
  v5 = v23;
LABEL_10:
  if (!v26)
  {
    v13 = v25;
    v25 = 0;
    if (v13)
    {
      IPC::Decoder::~Decoder(v13);
      bmalloc::api::tzoneFree(v19, v20);
    }
  }

LABEL_13:
  result = v27[0];
  v27[0] = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v7);
    result = bmalloc::api::tzoneFree(v17, v18);
    if (v9)
    {
      goto LABEL_15;
    }
  }

  else if (v9)
  {
LABEL_15:
    v15 = *MEMORY[0x1E696EBA8];
    if (*MEMORY[0x1E696EBA8])
    {
      atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed);
      v16 = v5;
      v5 = v15;
      goto LABEL_20;
    }

    result = v5;
    goto LABEL_24;
  }

  result = 0;
  v16 = 0;
  if (v5)
  {
LABEL_20:
    atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
    *a3 = v5;
    if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(v5, v7);
    }

    if (v9)
    {
      return result;
    }

    goto LABEL_25;
  }

LABEL_24:
  *a3 = 0;
  v16 = result;
  if (v9)
  {
    return result;
  }

LABEL_25:
  if (!v16 || atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) != 2)
  {
    if (!v8)
    {
      return result;
    }

LABEL_30:
    IPC::Decoder::~Decoder(v8);
    return bmalloc::api::tzoneFree(v21, v22);
  }

  result = WTF::StringImpl::destroy(v16, v7);
  if (v8)
  {
    goto LABEL_30;
  }

  return result;
}

IPC::Encoder *WebKit::MediaPlayerPrivateRemote::errorLog@<X0>(WebKit::MediaPlayerPrivateRemote *this@<X0>, void *a2@<X1>, unsigned __int8 **a3@<X8>)
{
  v5 = WebKit::MediaPlayerPrivateRemote::connection(this, a2);
  IPC::Connection::createSyncMessageEncoder(0x1016, *(this + 28), v27);
  v6 = IPC::Connection::sendSyncMessage(v5, v27[1], v27, 0, &v25, INFINITY);
  if (v26)
  {
    if (v26 != 1)
    {
      mpark::throw_bad_variant_access(v6);
    }

    v8 = v25;
    v9 = 1;
    goto LABEL_13;
  }

  v8 = v25;
  v25 = 0;
  if (*(v8 + 50) == 3194)
  {
    v10 = 11;
LABEL_9:
    IPC::Decoder::~Decoder(v8);
    bmalloc::api::tzoneFree(v11, v12);
    v9 = 1;
    v8 = v10;
    goto LABEL_10;
  }

  LOBYTE(v23) = 0;
  v24 = 0;
  IPC::Decoder::operator>><std::tuple<WTF::String>>(v8, &v23);
  if (v24 != 1)
  {
    v10 = 14;
    goto LABEL_9;
  }

  v9 = 0;
  v5 = v23;
LABEL_10:
  if (!v26)
  {
    v13 = v25;
    v25 = 0;
    if (v13)
    {
      IPC::Decoder::~Decoder(v13);
      bmalloc::api::tzoneFree(v19, v20);
    }
  }

LABEL_13:
  result = v27[0];
  v27[0] = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v7);
    result = bmalloc::api::tzoneFree(v17, v18);
    if (v9)
    {
      goto LABEL_15;
    }
  }

  else if (v9)
  {
LABEL_15:
    v15 = *MEMORY[0x1E696EBA8];
    if (*MEMORY[0x1E696EBA8])
    {
      atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed);
      v16 = v5;
      v5 = v15;
      goto LABEL_20;
    }

    result = v5;
    goto LABEL_24;
  }

  result = 0;
  v16 = 0;
  if (v5)
  {
LABEL_20:
    atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
    *a3 = v5;
    if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(v5, v7);
    }

    if (v9)
    {
      return result;
    }

    goto LABEL_25;
  }

LABEL_24:
  *a3 = 0;
  v16 = result;
  if (v9)
  {
    return result;
  }

LABEL_25:
  if (!v16 || atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) != 2)
  {
    if (!v8)
    {
      return result;
    }

LABEL_30:
    IPC::Decoder::~Decoder(v8);
    return bmalloc::api::tzoneFree(v21, v22);
  }

  result = WTF::StringImpl::destroy(v16, v7);
  if (v8)
  {
    goto LABEL_30;
  }

  return result;
}

IPC::Encoder *WebKit::MediaPlayerPrivateRemote::setBufferingPolicy(WebKit::MediaPlayerPrivateRemote *a1, void *a2)
{
  v2 = a2;
  v4 = WebKit::MediaPlayerPrivateRemote::connection(a1, a2);
  v5 = *(a1 + 28);
  v7 = IPC::Encoder::operator new(0x238, v6);
  *v7 = 1426;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = v5;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  IPC::Encoder::encodeHeader(v7);
  v12 = v7;
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v7, v2);
  IPC::Connection::sendMessageImpl(v4, &v12, 0, 0);
  result = v12;
  v12 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v8);
    return bmalloc::api::tzoneFree(v10, v11);
  }

  return result;
}

IPC::Encoder *WebKit::MediaPlayerPrivateRemote::setRateDouble(WebKit::MediaPlayerPrivateRemote *this, double a2, void *a3)
{
  v5 = WebKit::MediaPlayerPrivateRemote::connection(this, a3);
  v6 = *(this + 28);
  v8 = IPC::Encoder::operator new(0x238, v7);
  *v8 = 1438;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = v6;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v13 = v8;
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(v8, a2);
  IPC::Connection::sendMessageImpl(v5, &v13, 0, 0);
  result = v13;
  v13 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v9);
    return bmalloc::api::tzoneFree(v11, v12);
  }

  return result;
}

IPC::Encoder *WebKit::MediaPlayerPrivateRemote::setPresentationSize(WebKit::MediaPlayerPrivateRemote *this, const WebCore::IntSize *a2)
{
  v4 = WebKit::MediaPlayerPrivateRemote::connection(this, a2);
  v5 = *(this + 28);
  v7 = IPC::Encoder::operator new(0x238, v6);
  *v7 = 1435;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = v5;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  IPC::Encoder::encodeHeader(v7);
  v12 = v7;
  IPC::ArgumentCoder<WebCore::IntPoint,void>::encode(v7, a2);
  IPC::Connection::sendMessageImpl(v4, &v12, 0, 0);
  result = v12;
  v12 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v8);
    return bmalloc::api::tzoneFree(v10, v11);
  }

  return result;
}

uint64_t WebKit::MediaPlayerPrivateRemote::paintCurrentFrameInContext(WebKit::MediaPlayerPrivateRemote *this, WebCore::GraphicsContext *a2, const WebCore::FloatRect *a3)
{
  result = (*(*a2 + 40))(a2);
  if ((result & 1) == 0)
  {
    result = WebKit::MediaPlayerPrivateRemote::videoFrameForCurrentTime(this, v7, &v9);
    v8 = v9;
    if (v9)
    {
      result = (*(*a2 + 472))(a2, v9, a3, 1, 0);
      v9 = 0;
      if (atomic_fetch_add(v8 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v8 + 2);
        return (*(*v8 + 8))(v8);
      }
    }
  }

  return result;
}

unsigned int *WebKit::MediaPlayerPrivateRemote::videoFrameForCurrentTime@<X0>(unsigned int *this@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v53 = *MEMORY[0x1E69E9840];
  if (*(this + 712) <= 1u)
  {
    goto LABEL_2;
  }

  v6 = this;
  v7 = *(this + 95);
  if (v7)
  {
    atomic_fetch_add((v7 + 8), 1u);
    *a3 = v7;
    return this;
  }

  v8 = WebKit::MediaPlayerPrivateRemote::connection(this, a2);
  IPC::Connection::createSyncMessageEncoder(0x1019, v6[28], v44);
  v9 = IPC::Connection::sendSyncMessage(v8, v44[1], v44, 0, &v42, INFINITY);
  if (v43)
  {
    if (v43 != 1)
    {
      mpark::throw_bad_variant_access(v9);
    }

    v11 = v42;
    v12 = 1;
    goto LABEL_20;
  }

  v11 = v42;
  v42 = 0;
  if (*(v11 + 50) != 3194)
  {
    IPC::ArgumentCoder<std::optional<WebKit::RemoteVideoFrameProxyProperties>,void>::decode<IPC::Decoder>(v11, &v45);
    if ((v49 & 1) == 0)
    {
      v33 = *v11;
      v34 = *(v11 + 8);
      *v11 = 0;
      *(v11 + 8) = 0;
      v35 = *(v11 + 24);
      if (!v35 || !v34 || ((*(*v35 + 16))(v35, v33), (v49 & 1) == 0))
      {
LABEL_39:
        v36 = *v11;
        v37 = *(v11 + 8);
        *v11 = 0;
        *(v11 + 8) = 0;
        v38 = *(v11 + 24);
        if (v38 && v37)
        {
          (*(*v38 + 16))(v38, v36);
        }

        v13 = 14;
        goto LABEL_11;
      }
    }

    v16 = *(v11 + 8);
    v17 = *(v11 + 16);
    v10 = *v11;
    if (v16 <= &v17[-*v11])
    {
      *v11 = 0;
      *(v11 + 8) = 0;
      v39 = *(v11 + 24);
      if (v39)
      {
        if (v16)
        {
          (*(*v39 + 16))(v39);
          v16 = *(v11 + 8);
        }
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      *(v11 + 16) = v17 + 1;
      if (v17)
      {
        v3 = *v17;
        if (v3 < 2)
        {
          v12 = 0;
          v4 = v45;
          v50 = v46;
          v51 = v47;
          v52[0] = *v48;
          *(v52 + 15) = *&v48[15];
          goto LABEL_17;
        }

        goto LABEL_53;
      }
    }

    *v11 = 0;
    *(v11 + 8) = 0;
    v40 = *(v11 + 24);
    if (v40)
    {
      if (v16)
      {
        (*(*v40 + 16))(v40);
        v10 = *v11;
        v16 = *(v11 + 8);
        goto LABEL_53;
      }
    }

    else
    {
      v16 = 0;
    }

    v10 = 0;
LABEL_53:
    *v11 = 0;
    *(v11 + 8) = 0;
    v41 = *(v11 + 24);
    if (v41 && v16)
    {
      (*(*v41 + 16))(v41, v10);
    }

    goto LABEL_39;
  }

  v13 = 11;
LABEL_11:
  IPC::Decoder::~Decoder(v11);
  bmalloc::api::tzoneFree(v14, v15);
  v12 = 1;
  v11 = v13;
LABEL_17:
  if (!v43)
  {
    v18 = v42;
    v42 = 0;
    if (v18)
    {
      IPC::Decoder::~Decoder(v18);
      bmalloc::api::tzoneFree(v31, v32);
    }
  }

LABEL_20:
  this = v44[0];
  v44[0] = 0;
  if (this)
  {
    IPC::Encoder::~Encoder(this, v10);
    this = bmalloc::api::tzoneFree(v26, v27);
    if (!v12)
    {
      goto LABEL_22;
    }

LABEL_2:
    *a3 = 0;
    return this;
  }

  if (v12)
  {
    goto LABEL_2;
  }

LABEL_22:
  v45 = v4;
  v46 = v50;
  v47 = v51;
  *v48 = v52[0];
  *&v48[15] = *(v52 + 15);
  v49 = v3;
  if (v3)
  {
    if (v48[23] == 1)
    {
      v19 = WebKit::MediaPlayerPrivateRemote::connection(v6, v10);
      v21 = WebKit::MediaPlayerPrivateRemote::videoFrameObjectHeapProxy(v6, v20);
      atomic_fetch_add(v21, 1u);
      if ((v48[23] & 1) == 0)
      {
        __break(1u);
      }

      v23 = v21;
      v24 = WebKit::RemoteVideoFrameProxy::operator new(0x88, v22);
      WebKit::RemoteVideoFrameProxy::RemoteVideoFrameProxy(v24, v19, v23, &v45);
      v25 = v6[94];
      v6[94] = v24;
      if (v25 && atomic_fetch_add(v25 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v25 + 2);
        (*(*v25 + 8))(v25);
      }

      this = WTF::ThreadSafeRefCounted<WebKit::RemoteVideoFrameObjectHeapProxy,(WTF::DestructionThread)2>::deref(v23);
    }

    else
    {
      this = v6[94];
      v6[94] = 0;
      if (this && atomic_fetch_add(this + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, this + 2);
        this = (*(*this + 8))(this);
      }
    }
  }

  v28 = v6[94];
  if (v28)
  {
    atomic_fetch_add((v28 + 8), 1u);
  }

  *a3 = v28;
  if (v11)
  {
    IPC::Decoder::~Decoder(v11);
    return bmalloc::api::tzoneFree(v29, v30);
  }

  return this;
}

uint64_t WebKit::MediaPlayerPrivateRemote::wirelessPlaybackTargetName@<X0>(uint64_t this@<X0>, atomic_uint **a2@<X8>)
{
  v2 = *(this + 336);
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
  }

  *a2 = v2;
  return this;
}

IPC::Encoder *WebKit::MediaPlayerPrivateRemote::setWirelessVideoPlaybackDisabled(WebKit::MediaPlayerPrivateRemote *this, void *a2)
{
  v2 = a2;
  *(this + 472) = a2;
  v4 = WebKit::MediaPlayerPrivateRemote::connection(this, a2);
  v12 = v2;
  v5 = *(this + 28);
  v7 = IPC::Encoder::operator new(0x238, v6);
  *v7 = 1455;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = v5;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  IPC::Encoder::encodeHeader(v7);
  v13 = v7;
  IPC::Encoder::operator<<<BOOL &>(v7, &v12);
  IPC::Connection::sendMessageImpl(v4, &v13, 0, 0);
  result = v13;
  v13 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v8);
    return bmalloc::api::tzoneFree(v10, v11);
  }

  return result;
}

WebCore::MediaPlayer *WebKit::MediaPlayerPrivateRemote::currentPlaybackTargetIsWirelessChanged(WebKit::MediaPlayerPrivateRemote *this, char a2)
{
  *(this + 746) = a2;
  result = *(this + 22);
  if (result)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(result, *(this + 21), &v4);
    result = v4;
    if (v4)
    {
      WebCore::MediaPlayer::currentPlaybackTargetIsWirelessChanged(v4);
      result = v4;
      v4 = 0;
      if (result)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(result);
      }
    }
  }

  return result;
}

WTF::StringImpl *WebKit::MediaPlayerPrivateRemote::setWirelessPlaybackTarget(WebKit::MediaPlayerPrivateRemote *a1, void *a2)
{
  v4 = WebKit::MediaPlayerPrivateRemote::connection(a1, a2);
  v5 = (*(**a2 + 24))();
  WebKit::MediaPlaybackTargetContextSerialized::MediaPlaybackTargetContextSerialized(v16, v5);
  v6 = *(a1 + 28);
  v8 = IPC::Encoder::operator new(0x238, v7);
  *v8 = 1454;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = v6;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v20 = v8;
  IPC::ArgumentCoder<WebKit::MediaPlaybackTargetContextSerialized,void>::encode(v8, v16);
  IPC::Connection::sendMessageImpl(v4, &v20, 0, 0);
  v10 = v20;
  v20 = 0;
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
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v9);
    }
  }

  return result;
}

IPC::Encoder *WebKit::MediaPlayerPrivateRemote::setShouldPlayToPlaybackTarget(WebKit::MediaPlayerPrivateRemote *this, void *a2)
{
  v2 = a2;
  v4 = WebKit::MediaPlayerPrivateRemote::connection(this, a2);
  v12 = v2;
  v5 = *(this + 28);
  v7 = IPC::Encoder::operator new(0x238, v6);
  *v7 = 1446;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = v5;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  IPC::Encoder::encodeHeader(v7);
  v13 = v7;
  IPC::Encoder::operator<<<BOOL &>(v7, &v12);
  IPC::Connection::sendMessageImpl(v4, &v13, 0, 0);
  result = v13;
  v13 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v8);
    return bmalloc::api::tzoneFree(v10, v11);
  }

  return result;
}

uint64_t WebKit::MediaPlayerPrivateRemote::isCrossOrigin(WebKit::MediaPlayerPrivateRemote *this, const WebCore::SecurityOrigin *a2)
{
  if (WebCore::operator==())
  {
    LODWORD(v4) = *(this + 232);
    v5 = v4 >> 8;
    return v4 | (v5 << 8);
  }

  isNull = WebCore::SecurityOriginData::isNull((a2 + 8));
  if (isNull)
  {
    __break(0xC471u);
    goto LABEL_80;
  }

  if (*(a2 + 32))
  {
    if (*(a2 + 32) != 1)
    {
      goto LABEL_55;
    }
  }

  else if (*(a2 + 1) == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E285DC8);
  }

  v43 = (this + 680);
  v8 = *(this + 85);
  if (!v8)
  {
    goto LABEL_8;
  }

  v9 = *(v8 - 8);
  LODWORD(v46[0]) = -1640531527;
  WORD2(v46[0]) = 0;
  BYTE6(v46[0]) = 0;
  WTF::add<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(v46, a2 + 8);
  v10 = WTF::SuperFastHash::hash(v46) & v9;
  v4 = (v8 + 40 * v10);
  isNull = WebCore::SecurityOriginData::isNull(v4);
  if (isNull)
  {
    goto LABEL_8;
  }

  v15 = 1;
  while (!v4[24])
  {
    if (*v4 != -1)
    {
      goto LABEL_16;
    }

LABEL_17:
    v10 = (v10 + v15) & v9;
    v4 = (v8 + 40 * v10);
    isNull = WebCore::SecurityOriginData::isNull(v4);
    ++v15;
    if (isNull)
    {
      goto LABEL_8;
    }
  }

  if (v4[24] != 1)
  {
    goto LABEL_55;
  }

LABEL_16:
  if ((WebCore::operator==() & 1) == 0)
  {
    goto LABEL_17;
  }

  LODWORD(v4) = *(v4 + 16);
  v5 = v4 >> 8;
  if ((v4 >> 8))
  {
    return v4 | (v5 << 8);
  }

LABEL_8:
  v4 = WebKit::MediaPlayerPrivateRemote::connection(this, v7);
  IPC::Connection::createSyncMessageEncoder(0x1017, *(this + 28), v46);
  IPC::ArgumentCoder<WebCore::SecurityOriginData,void>::encode(v46[0], a2 + 8);
  isNull = IPC::Connection::sendSyncMessage(v4, v46[1], v46, 0, &v44, INFINITY);
  if (v45)
  {
    if (v45 == 1)
    {
      v5 = 0;
      v12 = v44;
      v13 = 1;
      goto LABEL_30;
    }

LABEL_55:
    mpark::throw_bad_variant_access(isNull);
  }

  v12 = v44;
  v44 = 0;
  if (*(v12 + 50) == 3194)
  {
    v14 = 11;
    goto LABEL_26;
  }

  v16 = IPC::Decoder::decode<std::tuple<std::optional<BOOL>>>(v12);
  if ((v16 & 0xFF0000) != 0)
  {
    LOBYTE(v4) = v16;
    v13 = 0;
    v5 = v16 >> 8;
  }

  else
  {
    v14 = 14;
LABEL_26:
    IPC::Decoder::~Decoder(v12);
    bmalloc::api::tzoneFree(v17, v18);
    v5 = 0;
    v13 = 1;
    v12 = v14;
  }

  if (!v45)
  {
    v19 = v44;
    v44 = 0;
    if (v19)
    {
      IPC::Decoder::~Decoder(v19);
      bmalloc::api::tzoneFree(v36, v37);
    }
  }

LABEL_30:
  v40 = v12;
  v20 = v46[0];
  v46[0] = 0;
  if (v20)
  {
    IPC::Encoder::~Encoder(v20, v11);
    bmalloc::api::tzoneFree(v34, v35);
  }

  if (v13)
  {
    v21 = 0;
  }

  else
  {
    v21 = v5;
  }

  if (v13)
  {
    v22 = 0;
  }

  else
  {
    v22 = v4;
  }

  v42 = v22;
  v41 = v21;
  if (v21)
  {
    isNull = WebCore::SecurityOriginData::isNull((a2 + 8));
    if (isNull)
    {
      __break(0xC471u);
      JUMPOUT(0x19E285DE8);
    }

    if (!*(a2 + 32))
    {
      if (*(a2 + 1) != -1)
      {
        goto LABEL_42;
      }

      __break(0xC471u);
LABEL_80:
      JUMPOUT(0x19E285DA8);
    }

    if (*(a2 + 32) != 1)
    {
      goto LABEL_55;
    }

LABEL_42:
    v23 = *v43;
    if (*v43 || (WTF::HashTable<WebCore::SecurityOriginData,WTF::KeyValuePair<WebCore::SecurityOriginData,std::optional<BOOL>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::SecurityOriginData,std::optional<BOOL>>>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashMap<WebCore::SecurityOriginData,std::optional<BOOL>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<std::optional<BOOL>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::expand(v43, 0), (v23 = *v43) != 0))
    {
      v24 = *(v23 - 8);
    }

    else
    {
      v24 = 0;
    }

    LODWORD(v46[0]) = -1640531527;
    WORD2(v46[0]) = 0;
    BYTE6(v46[0]) = 0;
    WTF::add<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(v46, a2 + 8);
    v25 = WTF::SuperFastHash::hash(v46) & v24;
    v26 = v23 + 40 * v25;
    isNull = WebCore::SecurityOriginData::isNull(v26);
    if ((isNull & 1) == 0)
    {
      v27 = 0;
      v28 = 1;
      while (!*(v26 + 24))
      {
        if (*v26 != -1)
        {
          goto LABEL_49;
        }

        v27 = v26;
LABEL_52:
        v25 = (v25 + v28) & v24;
        v26 = v23 + 40 * v25;
        isNull = WebCore::SecurityOriginData::isNull(v26);
        ++v28;
        if (isNull)
        {
          if (v27)
          {
            *(v27 + 32) = 0;
            *v27 = 0u;
            *(v27 + 16) = 0u;
            --*(*v43 - 16);
            v26 = v27;
          }

          goto LABEL_58;
        }
      }

      if (*(v26 + 24) != 1)
      {
        goto LABEL_55;
      }

LABEL_49:
      if (WebCore::operator==())
      {
        goto LABEL_64;
      }

      goto LABEL_52;
    }

LABEL_58:
    mpark::detail::assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>>::generic_assign<mpark::detail::copy_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1> const&>(v26, (a2 + 8));
    *(v26 + 32) = v42 | (v41 << 8);
    v29 = *v43;
    if (*v43)
    {
      v30 = *(v29 - 12) + 1;
    }

    else
    {
      v30 = 1;
    }

    *(v29 - 12) = v30;
    v31 = (*(v29 - 16) + v30);
    v32 = *(v29 - 4);
    if (v32 <= 0x400)
    {
      if (3 * v32 > 4 * v31)
      {
        goto LABEL_64;
      }

      goto LABEL_63;
    }

    if (v32 <= 2 * v31)
    {
LABEL_63:
      WTF::HashTable<WebCore::SecurityOriginData,WTF::KeyValuePair<WebCore::SecurityOriginData,std::optional<BOOL>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::SecurityOriginData,std::optional<BOOL>>>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashMap<WebCore::SecurityOriginData,std::optional<BOOL>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<std::optional<BOOL>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::expand(v43, v26);
    }
  }

LABEL_64:
  if (v13)
  {
    LOBYTE(v4) = 0;
    v5 = 0;
  }

  else if (v40)
  {
    IPC::Decoder::~Decoder(v40);
    bmalloc::api::tzoneFree(v38, v39);
  }

  return v4 | (v5 << 8);
}

uint64_t WebKit::MediaPlayerPrivateRemote::audioSourceProvider(WebKit::MediaPlayerPrivateRemote *this)
{
  result = *(this + 62);
  if (!result)
  {
    WebKit::RemoteAudioSourceProvider::create(*(this + 28), this + 56, &v4);
    result = v4;
    v3 = *(this + 62);
    *(this + 62) = v4;
    if (v3)
    {
      WTF::ThreadSafeRefCounted<WebCore::WebAudioSourceProvider,(WTF::DestructionThread)1>::deref((v3 + 8));
      return *(this + 62);
    }
  }

  return result;
}

uint64_t WebKit::MediaPlayerPrivateRemote::setCDM(uint64_t this, WebCore::LegacyCDM *a2)
{
  if (a2)
  {
    v3 = this;
    {
      v4 = WebKit::WebProcess::singleton(void)::process;
    }

    else
    {
      v8 = WebKit::WebProcess::operator new(0x370, a2);
      v4 = WebKit::WebProcess::WebProcess(v8);
      WebKit::WebProcess::singleton(void)::process = v4;
    }

    v5 = WebKit::WebProcess::supplement<WebKit::RemoteLegacyCDMFactory>(v4);
    WebKit::RemoteLegacyCDMFactory::ref(v5);
    WebCore::LegacyCDM::protectedCDMPrivate(&v9, a2);
    CDM = WebKit::RemoteLegacyCDMFactory::findCDM(v5, v9);
    v7 = CDM;
    if (CDM)
    {
      WebKit::RemoteLegacyCDM::ref(CDM);
    }

    this = v9;
    v9 = 0;
    if (this)
    {
      this = (*(*this + 8))(this);
    }

    if (*(*(v5 + 16) + 8))
    {
      if (v7)
      {
        WebKit::RemoteLegacyCDM::setPlayerId(v7, *(v3 + 224), 1);
        return WebKit::RemoteLegacyCDM::deref(v7);
      }
    }

    else
    {
      this = 92;
      __break(0xC471u);
    }
  }

  return this;
}

uint64_t WebKit::MediaPlayerPrivateRemote::setCDMSession(WebKit::MediaPlayerPrivateRemote *this, void *a2)
{
  if (!a2 || (*(*a2 + 40))(a2) != 4)
  {
    v5 = WebKit::MediaPlayerPrivateRemote::connection(this, a2);
    LOBYTE(v7) = 0;
    v8 = 0;
    goto LABEL_6;
  }

  if ((*(*a2 + 88))(a2))
  {
    v5 = WebKit::MediaPlayerPrivateRemote::connection(this, v4);
    v7 = a2[5];
    v8 = 1;
LABEL_6:
    v9 = &v7;
    return IPC::Connection::send<Messages::RemoteMediaPlayerProxy::SetLegacyCDMSession>(v5, &v9, *(this + 28));
  }

  result = 105;
  __break(0xC471u);
  return result;
}

IPC::Encoder *WebKit::MediaPlayerPrivateRemote::keyAdded(WebKit::MediaPlayerPrivateRemote *this, void *a2)
{
  v3 = WebKit::MediaPlayerPrivateRemote::connection(this, a2);
  v4 = *(this + 28);
  v6 = IPC::Encoder::operator new(0x238, v5);
  *v6 = 1410;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = v4;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v11 = v6;
  IPC::Connection::sendMessageImpl(v3, &v11, 0, 0);
  result = v11;
  v11 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v7);
    return bmalloc::api::tzoneFree(v9, v10);
  }

  return result;
}

atomic_uchar *WebKit::MediaPlayerPrivateRemote::mediaPlayerKeyNeeded(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[1] = a2;
  v7[2] = a3;
  result = *(a1 + 176);
  if (result)
  {
    result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(result, *(a1 + 168), v7);
    if (v7[0])
    {
      WebCore::SharedBuffer::create<std::span<unsigned char const,18446744073709551615ul> &>(&v6);
      WebCore::MediaPlayer::keyNeeded();
      v5 = v6;
      v6 = 0;
      if (v5 && atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v5 + 2);
        (*(*v5 + 8))(v5);
      }

      result = v7[0];
      v7[0] = 0;
      if (result)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(result);
      }
    }
  }

  return result;
}

IPC::Encoder *WebKit::MediaPlayerPrivateRemote::cdmInstanceAttached(WebKit::MediaPlayerPrivateRemote *this, WebCore::CDMInstance *a2)
{
  result = (*(*a2 + 40))(a2);
  if (result == 3)
  {
    v6 = WebKit::MediaPlayerPrivateRemote::connection(this, v5);
    v7 = *(this + 28);
    v9 = IPC::Encoder::operator new(0x238, v8);
    *v9 = 1404;
    *(v9 + 2) = 0;
    *(v9 + 3) = 0;
    *(v9 + 1) = v7;
    *(v9 + 68) = 0;
    *(v9 + 70) = 0;
    *(v9 + 69) = 0;
    IPC::Encoder::encodeHeader(v9);
    v13 = v9;
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v9, *(a2 + 5));
    IPC::Connection::sendMessageImpl(v6, &v13, 0, 0);
    result = v13;
    v13 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v10);
      return bmalloc::api::tzoneFree(v11, v12);
    }
  }

  return result;
}

IPC::Encoder *WebKit::MediaPlayerPrivateRemote::cdmInstanceDetached(WebKit::MediaPlayerPrivateRemote *this, WebCore::CDMInstance *a2)
{
  result = (*(*a2 + 40))(a2);
  if (result == 3)
  {
    v6 = WebKit::MediaPlayerPrivateRemote::connection(this, v5);
    v7 = *(this + 28);
    v9 = IPC::Encoder::operator new(0x238, v8);
    *v9 = 1405;
    *(v9 + 2) = 0;
    *(v9 + 3) = 0;
    *(v9 + 1) = v7;
    *(v9 + 68) = 0;
    *(v9 + 70) = 0;
    *(v9 + 69) = 0;
    IPC::Encoder::encodeHeader(v9);
    v13 = v9;
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v9, *(a2 + 5));
    IPC::Connection::sendMessageImpl(v6, &v13, 0, 0);
    result = v13;
    v13 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v10);
      return bmalloc::api::tzoneFree(v11, v12);
    }
  }

  return result;
}

IPC::Encoder *WebKit::MediaPlayerPrivateRemote::attemptToDecryptWithInstance(WebKit::MediaPlayerPrivateRemote *this, WebCore::CDMInstance *a2)
{
  result = (*(*a2 + 40))(a2);
  if (result == 3)
  {
    v6 = WebKit::MediaPlayerPrivateRemote::connection(this, v5);
    v7 = *(this + 28);
    v9 = IPC::Encoder::operator new(0x238, v8);
    *v9 = 1399;
    *(v9 + 2) = 0;
    *(v9 + 3) = 0;
    *(v9 + 1) = v7;
    *(v9 + 68) = 0;
    *(v9 + 70) = 0;
    *(v9 + 69) = 0;
    IPC::Encoder::encodeHeader(v9);
    v13 = v9;
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v9, *(a2 + 5));
    IPC::Connection::sendMessageImpl(v6, &v13, 0, 0);
    result = v13;
    v13 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v10);
      return bmalloc::api::tzoneFree(v11, v12);
    }
  }

  return result;
}

WebCore::MediaPlayer *WebKit::MediaPlayerPrivateRemote::waitingForKeyChanged(WebKit::MediaPlayerPrivateRemote *this, char a2)
{
  *(this + 747) = a2;
  result = *(this + 22);
  if (result)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(result, *(this + 21), &v4);
    result = v4;
    if (v4)
    {
      WebCore::MediaPlayer::waitingForKeyChanged(v4);
      result = v4;
      v4 = 0;
      if (result)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(result);
      }
    }
  }

  return result;
}

WTF::DeferrableRefCountedBase *WebKit::MediaPlayerPrivateRemote::initializationDataEncountered(uint64_t a1)
{
  JSC::ArrayBuffer::create();
  v2 = *(a1 + 176);
  if (v2)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(v2, *(a1 + 168), &v7);
    if (v7)
    {
      v3 = v8;
      v8 = 0;
      v6 = v3;
      WebCore::MediaPlayer::initializationDataEncountered();
      if (v6)
      {
        WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v6);
      }

      v4 = v7;
      v7 = 0;
      if (v4)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(v4);
      }
    }
  }

  result = v8;
  v8 = 0;
  if (result)
  {
    return WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(result);
  }

  return result;
}

IPC::Encoder *WebKit::MediaPlayerPrivateRemote::setShouldContinueAfterKeyNeeded(WebKit::MediaPlayerPrivateRemote *this, void *a2)
{
  v2 = a2;
  v4 = WebKit::MediaPlayerPrivateRemote::connection(this, a2);
  v12 = v2;
  v5 = *(this + 28);
  v7 = IPC::Encoder::operator new(0x238, v6);
  *v7 = 1441;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = v5;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  IPC::Encoder::encodeHeader(v7);
  v13 = v7;
  IPC::Encoder::operator<<<BOOL &>(v7, &v12);
  IPC::Connection::sendMessageImpl(v4, &v13, 0, 0);
  result = v13;
  v13 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v8);
    return bmalloc::api::tzoneFree(v10, v11);
  }

  return result;
}

uint64_t WebKit::MediaPlayerPrivateRemote::setTextTrackRepresentation(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    (*(*a2 + 24))(a2);
  }

  v3 = *(**(a1 + 184) + 80);

  return v3();
}

IPC::Encoder *WebKit::MediaPlayerPrivateRemote::tracksChanged(WebKit::MediaPlayerPrivateRemote *this, void *a2)
{
  v3 = WebKit::MediaPlayerPrivateRemote::connection(this, a2);
  v4 = *(this + 28);
  v6 = IPC::Encoder::operator new(0x238, v5);
  *v6 = 1459;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = v4;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v11 = v6;
  IPC::Connection::sendMessageImpl(v3, &v11, 0, 0);
  result = v11;
  v11 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v7);
    return bmalloc::api::tzoneFree(v9, v10);
  }

  return result;
}

IPC::Encoder *WebKit::MediaPlayerPrivateRemote::beginSimulatedHDCPError(WebKit::MediaPlayerPrivateRemote *this, void *a2)
{
  v3 = WebKit::MediaPlayerPrivateRemote::connection(this, a2);
  v4 = *(this + 28);
  v6 = IPC::Encoder::operator new(0x238, v5);
  *v6 = 1402;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = v4;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v11 = v6;
  IPC::Connection::sendMessageImpl(v3, &v11, 0, 0);
  result = v11;
  v11 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v7);
    return bmalloc::api::tzoneFree(v9, v10);
  }

  return result;
}

IPC::Encoder *WebKit::MediaPlayerPrivateRemote::endSimulatedHDCPError(WebKit::MediaPlayerPrivateRemote *this, void *a2)
{
  v3 = WebKit::MediaPlayerPrivateRemote::connection(this, a2);
  v4 = *(this + 28);
  v6 = IPC::Encoder::operator new(0x238, v5);
  *v6 = 1408;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = v4;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v11 = v6;
  IPC::Connection::sendMessageImpl(v3, &v11, 0, 0);
  result = v11;
  v11 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v7);
    return bmalloc::api::tzoneFree(v9, v10);
  }

  return result;
}

uint64_t WebKit::MediaPlayerPrivateRemote::languageOfPrimaryAudioTrack@<X0>(uint64_t this@<X0>, atomic_uint **a2@<X8>)
{
  v2 = *(this + 328);
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
  }

  *a2 = v2;
  return this;
}

WebCore::MediaPlayer *WebKit::MediaPlayerPrivateRemote::reportGPUMemoryFootprint(WebKit::MediaPlayerPrivateRemote *this)
{
  result = *(this + 22);
  if (result)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(result, *(this + 21), &v3);
    result = v3;
    if (v3)
    {
      WebCore::MediaPlayer::reportGPUMemoryFootprint(v3);
      result = v3;
      v3 = 0;
      if (result)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(result);
      }
    }
  }

  return result;
}

__n128 WebKit::MediaPlayerPrivateRemote::videoPlaybackQualityMetrics@<Q0>(WebKit::MediaPlayerPrivateRemote *this@<X0>, uint64_t a2@<X8>)
{
  WTF::MonotonicTime::now(this);
  v5 = v4;
  v6 = *(this + 88);
  if (v6 == 0.0)
  {
    v7 = 1.0;
    goto LABEL_5;
  }

  if (vabdd_f64(v4 - *(this + 87), v6) > 0.25)
  {
    v7 = v4 - *(this + 87);
LABEL_5:
    WebKit::MediaPlayerPrivateRemote::updateVideoPlaybackMetricsUpdateInterval(this, *&v7);
  }

  *(this + 87) = v5;
  *(a2 + 32) = *(this + 57);
  result = *(this + 424);
  v9 = *(this + 440);
  *a2 = result;
  *(a2 + 16) = v9;
  return result;
}

IPC::Encoder *WebKit::MediaPlayerPrivateRemote::notifyTrackModeChanged(WebKit::MediaPlayerPrivateRemote *this, void *a2)
{
  v3 = WebKit::MediaPlayerPrivateRemote::connection(this, a2);
  v4 = *(this + 28);
  v6 = IPC::Encoder::operator new(0x238, v5);
  *v6 = 1414;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = v4;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v11 = v6;
  IPC::Connection::sendMessageImpl(v3, &v11, 0, 0);
  result = v11;
  v11 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v7);
    return bmalloc::api::tzoneFree(v9, v10);
  }

  return result;
}

IPC::Encoder *WebKit::MediaPlayerPrivateRemote::notifyActiveSourceBuffersChanged(WebKit::MediaPlayerPrivateRemote *this, void *a2)
{
  v3 = WebKit::MediaPlayerPrivateRemote::connection(this, a2);
  v4 = *(this + 28);
  v6 = IPC::Encoder::operator new(0x238, v5);
  *v6 = 1413;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = v4;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v11 = v6;
  IPC::Connection::sendMessageImpl(v3, &v11, 0, 0);
  result = v11;
  v11 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v7);
    return bmalloc::api::tzoneFree(v9, v10);
  }

  return result;
}

IPC::Encoder *WebKit::MediaPlayerPrivateRemote::applicationWillResignActive(WebKit::MediaPlayerPrivateRemote *this, void *a2)
{
  v3 = WebKit::MediaPlayerPrivateRemote::connection(this, a2);
  v4 = *(this + 28);
  v6 = IPC::Encoder::operator new(0x238, v5);
  *v6 = 1398;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = v4;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v11 = v6;
  IPC::Connection::sendMessageImpl(v3, &v11, 0, 0);
  result = v11;
  v11 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v7);
    return bmalloc::api::tzoneFree(v9, v10);
  }

  return result;
}

IPC::Encoder *WebKit::MediaPlayerPrivateRemote::applicationDidBecomeActive(WebKit::MediaPlayerPrivateRemote *this, void *a2)
{
  v3 = WebKit::MediaPlayerPrivateRemote::connection(this, a2);
  v4 = *(this + 28);
  v6 = IPC::Encoder::operator new(0x238, v5);
  *v6 = 1397;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = v4;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v11 = v6;
  IPC::Connection::sendMessageImpl(v3, &v11, 0, 0);
  result = v11;
  v11 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v7);
    return bmalloc::api::tzoneFree(v9, v10);
  }

  return result;
}

IPC::Encoder *WebKit::MediaPlayerPrivateRemote::setPreferredDynamicRangeMode(WebKit::MediaPlayerPrivateRemote *a1, void *a2)
{
  v2 = a2;
  v4 = WebKit::MediaPlayerPrivateRemote::connection(a1, a2);
  v5 = *(a1 + 28);
  v7 = IPC::Encoder::operator new(0x238, v6);
  *v7 = 1433;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = v5;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  IPC::Encoder::encodeHeader(v7);
  v12 = v7;
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v7, v2);
  IPC::Connection::sendMessageImpl(v4, &v12, 0, 0);
  result = v12;
  v12 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v8);
    return bmalloc::api::tzoneFree(v10, v11);
  }

  return result;
}

IPC::Encoder *WebKit::MediaPlayerPrivateRemote::setPlatformDynamicRangeLimit(WebKit::MediaPlayerPrivateRemote *a1, void *a2, float a3)
{
  v5 = WebKit::MediaPlayerPrivateRemote::connection(a1, a2);
  v6 = *(a1 + 28);
  v8 = IPC::Encoder::operator new(0x238, v7);
  *v8 = 1432;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = v6;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v13 = v8;
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(v8, a3);
  IPC::Connection::sendMessageImpl(v5, &v13, 0, 0);
  result = v13;
  v13 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v9);
    return bmalloc::api::tzoneFree(v11, v12);
  }

  return result;
}

uint64_t WebKit::MediaPlayerPrivateRemote::performTaskAtTime(atomic_ullong *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>::controlBlock(a1 + 6);
  v7 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v6);
  v8 = *a2;
  *a2 = 0;
  v10 = WebKit::MediaPlayerPrivateRemote::connection(a1, v9);
  v11 = a1[28];
  v12 = WTF::fastMalloc(0x20);
  *v12 = &unk_1F1127D88;
  v12[1] = a1;
  v12[2] = v7;
  v12[3] = v8;
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
    *v16 = 1417;
    *(v16 + 2) = 0;
    *(v16 + 3) = 0;
    *(v16 + 1) = v11;
    *(v16 + 68) = 0;
    *(v16 + 70) = 0;
    *(v16 + 69) = 0;
    IPC::Encoder::encodeHeader(v16);
    v24 = v16;
    IPC::ArgumentCoder<WTF::MediaTime,void>::encode(v16, a3);
    v23[0] = v13;
    v23[1] = IdentifierInternal;
    IPC::Connection::sendMessageWithAsyncReply(v10, &v24, v23, 0, 0);
    v18 = v23[0];
    v23[0] = 0;
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }

    v19 = v24;
    v24 = 0;
    if (v19)
    {
      IPC::Encoder::~Encoder(v19, v17);
      bmalloc::api::tzoneFree(v21, v22);
    }

    return 1;
  }

  return result;
}

uint64_t WebKit::MediaPlayerPrivateRemote::playAtHostTime(WebKit::MediaPlayerPrivateRemote *this, const WTF::MonotonicTime *a2)
{
  v2 = *(this + 244);
  if (v2 == 1)
  {
    v5 = WebKit::MediaPlayerPrivateRemote::connection(this, a2);
    v6 = *(this + 28);
    v8 = IPC::Encoder::operator new(0x238, v7);
    *v8 = 1419;
    *(v8 + 2) = 0;
    *(v8 + 3) = 0;
    *(v8 + 1) = v6;
    *(v8 + 68) = 0;
    *(v8 + 70) = 0;
    *(v8 + 69) = 0;
    IPC::Encoder::encodeHeader(v8);
    v14 = v8;
    IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(v8, *a2);
    IPC::Connection::sendMessageImpl(v5, &v14, 0, 0);
    v10 = v14;
    v14 = 0;
    if (v10)
    {
      IPC::Encoder::~Encoder(v10, v9);
      bmalloc::api::tzoneFree(v12, v13);
    }
  }

  return v2;
}

uint64_t WebKit::MediaPlayerPrivateRemote::pauseAtHostTime(WebKit::MediaPlayerPrivateRemote *this, const WTF::MonotonicTime *a2)
{
  v2 = *(this + 245);
  if (v2 == 1)
  {
    v5 = WebKit::MediaPlayerPrivateRemote::connection(this, a2);
    v6 = *(this + 28);
    v8 = IPC::Encoder::operator new(0x238, v7);
    *v8 = 1416;
    *(v8 + 2) = 0;
    *(v8 + 3) = 0;
    *(v8 + 1) = v6;
    *(v8 + 68) = 0;
    *(v8 + 70) = 0;
    *(v8 + 69) = 0;
    IPC::Encoder::encodeHeader(v8);
    v14 = v8;
    IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(v8, *a2);
    IPC::Connection::sendMessageImpl(v5, &v14, 0, 0);
    v10 = v14;
    v14 = 0;
    if (v10)
    {
      IPC::Encoder::~Encoder(v10, v9);
      bmalloc::api::tzoneFree(v12, v13);
    }
  }

  return v2;
}

__n128 WebKit::MediaPlayerPrivateRemote::videoFrameMetadata@<Q0>(WebKit::MediaPlayerPrivateRemote *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 96) = *(this + 113);
  v2 = *(this + 888);
  *(a2 + 64) = *(this + 872);
  *(a2 + 80) = v2;
  v3 = *(this + 824);
  *a2 = *(this + 808);
  *(a2 + 16) = v3;
  result = *(this + 856);
  *(a2 + 32) = *(this + 840);
  *(a2 + 48) = result;
  *(this + 808) = 0;
  *(this + 904) = 0;
  return result;
}

IPC::Encoder *WebKit::MediaPlayerPrivateRemote::startVideoFrameMetadataGathering(WebKit::MediaPlayerPrivateRemote *this, void *a2)
{
  *(this + 912) = 1;
  v3 = WebKit::MediaPlayerPrivateRemote::connection(this, a2);
  v4 = *(this + 28);
  v6 = IPC::Encoder::operator new(0x238, v5);
  *v6 = 1456;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = v4;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v11 = v6;
  IPC::Connection::sendMessageImpl(v3, &v11, 0, 0);
  result = v11;
  v11 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v7);
    return bmalloc::api::tzoneFree(v9, v10);
  }

  return result;
}

IPC::Encoder *WebKit::MediaPlayerPrivateRemote::stopVideoFrameMetadataGathering(WebKit::MediaPlayerPrivateRemote *this, void *a2)
{
  *(this + 912) = 0;
  v3 = *(this + 95);
  *(this + 95) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  v4 = WebKit::MediaPlayerPrivateRemote::connection(this, a2);
  v5 = *(this + 28);
  v7 = IPC::Encoder::operator new(0x238, v6);
  *v7 = 1457;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = v5;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  IPC::Encoder::encodeHeader(v7);
  v12 = v7;
  IPC::Connection::sendMessageImpl(v4, &v12, 0, 0);
  result = v12;
  v12 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v8);
    return bmalloc::api::tzoneFree(v10, v11);
  }

  return result;
}

IPC::Encoder *WebKit::MediaPlayerPrivateRemote::playerContentBoxRectChanged(WebKit::MediaPlayerPrivateRemote *this, const WebCore::LayoutRect *a2)
{
  v4 = WebKit::MediaPlayerPrivateRemote::connection(this, a2);
  v5 = *(this + 28);
  v7 = IPC::Encoder::operator new(0x238, v6);
  *v7 = 1420;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = v5;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  IPC::Encoder::encodeHeader(v7);
  v12 = v7;
  IPC::ArgumentCoder<WebCore::LayoutRect,void>::encode(v7, a2);
  IPC::Connection::sendMessageImpl(v4, &v12, 0, 0);
  result = v12;
  v12 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v8);
    return bmalloc::api::tzoneFree(v10, v11);
  }

  return result;
}

IPC::Encoder *WebKit::MediaPlayerPrivateRemote::setShouldDisableHDR(WebKit::MediaPlayerPrivateRemote *this, void *a2)
{
  v2 = a2;
  v4 = WebKit::MediaPlayerPrivateRemote::connection(this, a2);
  v12 = v2;
  v5 = *(this + 28);
  v7 = IPC::Encoder::operator new(0x238, v6);
  *v7 = 1442;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = v5;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  IPC::Encoder::encodeHeader(v7);
  v13 = v7;
  IPC::Encoder::operator<<<BOOL &>(v7, &v12);
  IPC::Connection::sendMessageImpl(v4, &v13, 0, 0);
  result = v13;
  v13 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v8);
    return bmalloc::api::tzoneFree(v10, v11);
  }

  return result;
}

atomic_ullong *WebKit::MediaPlayerPrivateRemote::requestResource(uint64_t *a1, void *a2)
{
  v53 = a2;
  v3 = a1[22];
  if (!v3)
  {
    v52 = 0;
    goto LABEL_13;
  }

  WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(v3, a1[21], &v52);
  if (!v52)
  {
LABEL_13:
    v51 = 0;
LABEL_14:
    v14 = WebKit::MediaPlayerPrivateRemote::connection(a1, a2);
    v43 = 0;
    v44 = 0;
    WTF::URL::invalidate(&v44);
    v45 = 0;
    v46 = 0;
    v47 = 3;
    cf = 0;
    v49 = 1;
    v50[0] = &v53;
    v50[1] = &v43;
    IPC::Connection::send<Messages::RemoteMediaResourceManager::LoadFailed>(v14, v50, 0, 0, 0);
    v16 = cf;
    cf = 0;
    if (v16)
    {
      CFRelease(v16);
    }

    v17 = v45;
    v45 = 0;
    if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, v15);
    }

    v18 = v44;
    v44 = 0;
    if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v18, v15);
    }

    v19 = v43;
    v43 = 0;
    if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v19, v15);
    }

    goto LABEL_49;
  }

  WebCore::MediaPlayer::mediaResourceLoader(&v43, v52);
  (*(*v43 + 32))(&v51);
  v5 = v43;
  v43 = 0;
  if (v5)
  {
    WTF::ThreadSafeRefCounted<WebCore::PlatformMediaResourceLoader,(WTF::DestructionThread)1>::deref(v5 + 2);
  }

  v6 = v51;
  if (!v51)
  {
    goto LABEL_14;
  }

  if (WebKit::RemoteMediaResourceProxy::s_heapRef)
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::RemoteMediaResourceProxy::s_heapRef, a2);
  }

  else
  {
    NonCompact = WebKit::RemoteMediaResourceProxy::operatorNewSlow(0x30);
  }

  v9 = NonCompact;
  v10 = WebKit::MediaPlayerPrivateRemote::connection(a1, v8);
  v11 = v10;
  while (1)
  {
    v12 = *v10;
    if ((*v10 & 1) == 0)
    {
      break;
    }

    v13 = *v10;
    atomic_compare_exchange_strong_explicit(v10, &v13, v12 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v13 == v12)
    {
      goto LABEL_26;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v10);
LABEL_26:
  v20 = v51;
  *(v9 + 8) = 1;
  *v9 = &unk_1F11287C0;
  *(v9 + 16) = v11;
  *(v9 + 24) = v20;
  v21 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::controlBlock((v20 + 8));
  *(v9 + 32) = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v21);
  *(v9 + 40) = a2;
  v43 = v9;
  WebCore::PlatformMediaResource::setClient(v6, &v43);
  v22 = v43;
  v43 = 0;
  if (v22 && atomic_fetch_add(v22 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v22 + 2);
    (*(*v22 + 8))(v22);
  }

  v23 = v53;
  if (v53 == -1 || !v53)
  {
    __break(0xC471u);
    JUMPOUT(0x19E287768);
  }

  v24 = a1 + 65;
  v25 = *v24;
  if (!*v24)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::PlatformMediaResource,WTF::RawPtrTraits<WebCore::PlatformMediaResource>,WTF::DefaultRefDerefTraits<WebCore::PlatformMediaResource>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::PlatformMediaResource,WTF::RawPtrTraits<WebCore::PlatformMediaResource>,WTF::DefaultRefDerefTraits<WebCore::PlatformMediaResource>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::PlatformMediaResource,WTF::RawPtrTraits<WebCore::PlatformMediaResource>,WTF::DefaultRefDerefTraits<WebCore::PlatformMediaResource>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebCore::PlatformMediaResource,WTF::RawPtrTraits<WebCore::PlatformMediaResource>,WTF::DefaultRefDerefTraits<WebCore::PlatformMediaResource>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(v24, 0);
    v25 = *v24;
  }

  v26 = *(v25 - 8);
  v27 = (v23 + ~(v23 << 32)) ^ ((v23 + ~(v23 << 32)) >> 22);
  v28 = 9 * ((v27 + ~(v27 << 13)) ^ ((v27 + ~(v27 << 13)) >> 8));
  v29 = (v28 ^ (v28 >> 15)) + ~((v28 ^ (v28 >> 15)) << 27);
  v30 = v26 & ((v29 >> 31) ^ v29);
  v31 = (v25 + 16 * v30);
  v32 = *v31;
  if (!*v31)
  {
LABEL_41:
    *v31 = v23;
    v35 = v51;
    v51 = 0;
    v36 = v31[1];
    v31[1] = v35;
    if (v36)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::PlatformMediaResource,(WTF::DestructionThread)0>::deref((v36 + 8), v15);
    }

    v37 = *v24;
    if (*v24)
    {
      v38 = *(v37 - 12) + 1;
    }

    else
    {
      v38 = 1;
    }

    *(v37 - 12) = v38;
    v39 = (*(v37 - 16) + v38);
    v40 = *(v37 - 4);
    if (v40 > 0x400)
    {
      if (v40 > 2 * v39)
      {
        goto LABEL_49;
      }
    }

    else if (3 * v40 > 4 * v39)
    {
      goto LABEL_49;
    }

    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::PlatformMediaResource,WTF::RawPtrTraits<WebCore::PlatformMediaResource>,WTF::DefaultRefDerefTraits<WebCore::PlatformMediaResource>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::PlatformMediaResource,WTF::RawPtrTraits<WebCore::PlatformMediaResource>,WTF::DefaultRefDerefTraits<WebCore::PlatformMediaResource>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::PlatformMediaResource,WTF::RawPtrTraits<WebCore::PlatformMediaResource>,WTF::DefaultRefDerefTraits<WebCore::PlatformMediaResource>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebCore::PlatformMediaResource,WTF::RawPtrTraits<WebCore::PlatformMediaResource>,WTF::DefaultRefDerefTraits<WebCore::PlatformMediaResource>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(v24, v31);
    goto LABEL_49;
  }

  v33 = 0;
  v34 = 1;
  while (v32 != v23)
  {
    if (v32 == -1)
    {
      v33 = v31;
    }

    v30 = (v30 + v34) & v26;
    v31 = (v25 + 16 * v30);
    v32 = *v31;
    ++v34;
    if (!*v31)
    {
      if (v33)
      {
        *v33 = 0;
        v33[1] = 0;
        --*(*v24 - 16);
        v31 = v33;
      }

      goto LABEL_41;
    }
  }

LABEL_49:
  v41 = v51;
  v51 = 0;
  if (v41)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::PlatformMediaResource,(WTF::DestructionThread)0>::deref((v41 + 8), v15);
  }

  result = v52;
  v52 = 0;
  if (result)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(result);
  }

  return result;
}