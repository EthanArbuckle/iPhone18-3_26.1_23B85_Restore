uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL17PrepareForDisplayEN6WebKit23RemoteGraphicsContextGLES8_FvONS2_9SemaphoreEONS_17CompletionHandlerIFvONS_13MachSendRightEEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJSD_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EC5A8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL17PrepareForDisplayEN6WebKit23RemoteGraphicsContextGLES8_FvONS2_9SemaphoreEONS_17CompletionHandlerIFvONS_13MachSendRightEEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJSD_EE4callESD_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3199;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::Encoder::addAttachment(v5, a2);
  if (*(v3 + 120) == 1)
  {

    return std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((v3 + 128), v5);
  }

  else
  {
    IPC::Connection::sendMessageImpl(*(v3 + 40), &v10, 0, 0);
    result = v10;
    v10 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v7);
      return bmalloc::api::tzoneFree(v8, v9);
    }
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL9GetErrorsEN6WebKit23RemoteGraphicsContextGLES8_FvONS_17CompletionHandlerIFvNS_9OptionSetI13GCGLErrorCodeEEEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJSC_EED1Ev(void *a1)
{
  *a1 = &unk_1F10EC5D0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL9GetErrorsEN6WebKit23RemoteGraphicsContextGLES8_FvONS_17CompletionHandlerIFvNS_9OptionSetI13GCGLErrorCodeEEEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJSC_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EC5D0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL9GetErrorsEN6WebKit23RemoteGraphicsContextGLES8_FvONS_17CompletionHandlerIFvNS_9OptionSetI13GCGLErrorCodeEEEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJSC_EE4callESC_(uint64_t result, void *a2)
{
  v2 = a2;
  v4 = *(result + 8);
  v3 = *(result + 16);
  if (*(v3 + 120) != 1)
  {
    goto LABEL_14;
  }

  v6 = *(v3 + 56);
  v5 = *(v3 + 64);
  v7 = *(v5 + 8);
  if (v6 != 1)
  {
    v8 = v7 >= 0x100;
    v9 = v7 - 256;
    if (!v8)
    {
      goto LABEL_12;
    }

    v5 = *(v5 + 16);
    if (v6)
    {
      v8 = v9 >= v6 - 1;
      v9 = v6 - 1;
      if (!v8)
      {
        goto LABEL_12;
      }
    }

    if (v9 > 1)
    {
      *(v5 + 256) = 3199;
      if (v9 != 2)
      {
        *(v5 + 258) = a2;
        return result;
      }

      goto LABEL_13;
    }

LABEL_19:
    result = 1067;
    __break(0xC471u);
    return result;
  }

  if (v7 > 0xFF)
  {
    goto LABEL_19;
  }

LABEL_12:
  __break(1u);
LABEL_13:
  *(v5 + 256) = 3197;
LABEL_14:
  v10 = IPC::Encoder::operator new(0x238, a2);
  *v10 = 3199;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 1) = v4;
  *(v10 + 68) = 0;
  *(v10 + 70) = 0;
  *(v10 + 69) = 0;
  IPC::Encoder::encodeHeader(v10);
  v14 = v10;
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v10, v2);
  if (*(v3 + 120) == 1)
  {
    return std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((v3 + 128), v10);
  }

  IPC::Connection::sendMessageImpl(*(v3 + 40), &v14, 0, 0);
  result = v14;
  v14 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v11);
    return bmalloc::api::tzoneFree(v12, v13);
  }

  return result;
}

uint64_t IPC::Decoder::decode<WebCore::GraphicsContextGLSurfaceBuffer>(uint64_t *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = *a1;
  if (v1 <= &v2[-*a1])
  {
    *a1 = 0;
    a1[1] = 0;
    v13 = a1;
    v7 = a1[3];
    if (v7)
    {
      if (v1)
      {
        (*(*v7 + 16))(v7);
        v3 = *v13;
        v1 = v13[1];
LABEL_9:
        *v13 = 0;
        v13[1] = 0;
        v8 = v13[3];
        if (v8)
        {
          if (v1)
          {
            (*(*v8 + 16))(v8, v3);
            v3 = *v13;
            v1 = v13[1];
            goto LABEL_13;
          }
        }

        else
        {
          v1 = 0;
        }

        v3 = 0;
        goto LABEL_13;
      }
    }

    else
    {
      v1 = 0;
    }

    v3 = 0;
    goto LABEL_9;
  }

  a1[2] = (v2 + 1);
  if (!v2)
  {
    v13 = a1;
    goto LABEL_9;
  }

  v4 = *v2;
  if (v4 < 2)
  {
    v5 = 1;
    return v4 | (v5 << 8);
  }

  v13 = a1;
LABEL_13:
  *v13 = 0;
  v13[1] = 0;
  v9 = v13[3];
  if (v9 && v1)
  {
    (*(*v9 + 16))(v9, v3);
  }

  v10 = *v13;
  v11 = v13[1];
  *v13 = 0;
  v13[1] = 0;
  v12 = v13[3];
  if (v12 && v11)
  {
    (*(*v12 + 16))(v12, v10);
  }

  v5 = 0;
  v4 = 0;
  return v4 | (v5 << 8);
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL30DrawSurfaceBufferToImageBufferEN6WebKit23RemoteGraphicsContextGLES8_FvN7WebCore30GraphicsContextGLSurfaceBufferENS_23ObjectIdentifierGenericINS9_31RenderingResourceIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_17CompletionHandlerIFvvEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10EC5F8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL30DrawSurfaceBufferToImageBufferEN6WebKit23RemoteGraphicsContextGLES8_FvN7WebCore30GraphicsContextGLSurfaceBufferENS_23ObjectIdentifierGenericINS9_31RenderingResourceIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_17CompletionHandlerIFvvEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EC5F8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL30DrawSurfaceBufferToImageBufferEN6WebKit23RemoteGraphicsContextGLES8_FvN7WebCore30GraphicsContextGLSurfaceBufferENS_23ObjectIdentifierGenericINS9_31RenderingResourceIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_17CompletionHandlerIFvvEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJEE4callEv(uint64_t result, void *a2)
{
  v2 = *(result + 16);
  if (*(v2 + 120) == 1)
  {
    v4 = *(v2 + 56);
    v3 = *(v2 + 64);
    v5 = *(v3 + 8);
    if (v4 == 1)
    {
      if (v5 > 0xFF)
      {
LABEL_17:
        result = 1067;
        __break(0xC471u);
        return result;
      }
    }

    else
    {
      v6 = v5 >= 0x100;
      v7 = v5 - 256;
      if (v6)
      {
        v8 = *(v3 + 16);
        if (!v4 || (v6 = v7 >= v4 - 1, v7 = v4 - 1, v6))
        {
          if (v7 > 1)
          {
            *(v8 + 256) = 3199;
            return result;
          }

          goto LABEL_17;
        }
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  v9 = *(result + 8);
  v10 = IPC::Encoder::operator new(0x238, a2);
  *v10 = 3199;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 1) = v9;
  *(v10 + 68) = 0;
  *(v10 + 70) = 0;
  *(v10 + 69) = 0;
  IPC::Encoder::encodeHeader(v10);
  v14 = v10;
  if (*(v2 + 120) == 1)
  {
    return std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((v2 + 128), v10);
  }

  IPC::Connection::sendMessageImpl(*(v2 + 40), &v14, 0, 0);
  result = v14;
  v14 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v11);
    return bmalloc::api::tzoneFree(v12, v13);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL25SurfaceBufferToVideoFrameEN6WebKit23RemoteGraphicsContextGLES8_FvN7WebCore30GraphicsContextGLSurfaceBufferEONS_17CompletionHandlerIFvONSt3__18optionalINS7_31RemoteVideoFrameProxyPropertiesEEEEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJSG_EED1Ev(void *a1)
{
  *a1 = &unk_1F10EC620;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL25SurfaceBufferToVideoFrameEN6WebKit23RemoteGraphicsContextGLES8_FvN7WebCore30GraphicsContextGLSurfaceBufferEONS_17CompletionHandlerIFvONSt3__18optionalINS7_31RemoteVideoFrameProxyPropertiesEEEEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJSG_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EC620;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL25SurfaceBufferToVideoFrameEN6WebKit23RemoteGraphicsContextGLES8_FvN7WebCore30GraphicsContextGLSurfaceBufferEONS_17CompletionHandlerIFvONSt3__18optionalINS7_31RemoteVideoFrameProxyPropertiesEEEEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJSG_EE4callESG_(uint64_t result, _BYTE *a2)
{
  v5 = *(result + 8);
  v4 = *(result + 16);
  if (*(v4 + 120) != 1)
  {
    goto LABEL_12;
  }

  v6 = *(v4 + 56);
  v7 = *(v4 + 64);
  v8 = *(v7 + 8);
  if (v6 != 1)
  {
    v9 = v8 >= 0x100;
    v10 = v8 - 256;
    if (!v9)
    {
      goto LABEL_22;
    }

    v2 = *(v7 + 16);
    if (v6)
    {
      v9 = v10 >= v6 - 1;
      v10 = v6 - 1;
      if (!v9)
      {
        goto LABEL_22;
      }
    }

    v17 = v10;
    if (v10 > 1)
    {
      *(v2 + 256) = 3199;
      if ((a2[56] & 1) == 0)
      {
        if (v10 != 2)
        {
          *(v2 + 258) = 0;
          return result;
        }

        goto LABEL_11;
      }

      if (v10 == 2)
      {
        goto LABEL_23;
      }

      *(v2 + 258) = 1;
      v15 = (v2 + 259);
      v16 = v10 - 3;
      if (a2[56])
      {
        goto LABEL_10;
      }

      std::__throw_bad_optional_access[abi:sn200100]();
    }

LABEL_25:
    result = 1067;
    __break(0xC471u);
    return result;
  }

  if (v8 >= 0x100)
  {
    goto LABEL_25;
  }

LABEL_22:
  __break(1u);
LABEL_23:
  v15 = 0;
  v16 = 0;
LABEL_10:
  result = IPC::ArgumentCoder<WebKit::RemoteVideoFrameProxyProperties,void>::encode(&v15, a2);
  if (v15)
  {
    return result;
  }

LABEL_11:
  *(v2 + 256) = 3197;
LABEL_12:
  v11 = IPC::Encoder::operator new(0x238, a2);
  *v11 = 3199;
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *(v11 + 1) = v5;
  *(v11 + 68) = 0;
  *(v11 + 70) = 0;
  *(v11 + 69) = 0;
  IPC::Encoder::encodeHeader(v11);
  v15 = v11;
  IPC::ArgumentCoder<std::optional<WebKit::RemoteVideoFrameProxyProperties>,void>::encode<IPC::Encoder,std::optional<WebKit::RemoteVideoFrameProxyProperties>>(v11, a2);
  if (*(v4 + 120) == 1)
  {
    return std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((v4 + 128), v11);
  }

  IPC::Connection::sendMessageImpl(*(v4 + 40), &v15, 0, 0);
  result = v15;
  v15 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v12);
    return bmalloc::api::tzoneFree(v13, v14);
  }

  return result;
}

void *IPC::ArgumentCoder<std::optional<WebKit::RemoteVideoFrameProxyProperties>,void>::encode<IPC::Encoder,std::optional<WebKit::RemoteVideoFrameProxyProperties>>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 56))
  {
    v6 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v6);
    if (*(a2 + 56))
    {
      return IPC::ArgumentCoder<WebKit::RemoteVideoFrameProxyProperties,void>::encode(a1, a2);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL25CopyTextureFromVideoFrameEN6WebKit23RemoteGraphicsContextGLES8_FvONS7_16SharedVideoFrameEjjijjjbbONS_17CompletionHandlerIFvbEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJbEED1Ev(v5);
    }
  }

  else
  {
    v7 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v7);
  }
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL25CopyTextureFromVideoFrameEN6WebKit23RemoteGraphicsContextGLES8_FvONS7_16SharedVideoFrameEjjijjjbbONS_17CompletionHandlerIFvbEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJbEED1Ev(void *a1)
{
  *a1 = &unk_1F10EC648;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL25CopyTextureFromVideoFrameEN6WebKit23RemoteGraphicsContextGLES8_FvONS7_16SharedVideoFrameEjjijjjbbONS_17CompletionHandlerIFvbEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJbEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EC648;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL25CopyTextureFromVideoFrameEN6WebKit23RemoteGraphicsContextGLES8_FvONS7_16SharedVideoFrameEjjijjjbbONS_17CompletionHandlerIFvbEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJbEE4callEb(uint64_t result, void *a2)
{
  v13 = a2;
  v3 = *(result + 8);
  v2 = *(result + 16);
  if (*(v2 + 120) != 1)
  {
    goto LABEL_14;
  }

  v5 = *(v2 + 56);
  v4 = *(v2 + 64);
  v6 = *(v4 + 8);
  if (v5 != 1)
  {
    v7 = v6 >= 0x100;
    v8 = v6 - 256;
    if (!v7)
    {
      goto LABEL_12;
    }

    v4 = *(v4 + 16);
    if (v5)
    {
      v7 = v8 >= v5 - 1;
      v8 = v5 - 1;
      if (!v7)
      {
        goto LABEL_12;
      }
    }

    if (v8 > 1)
    {
      *(v4 + 256) = 3199;
      if (v8 != 2)
      {
        *(v4 + 258) = a2;
        return result;
      }

      goto LABEL_13;
    }

LABEL_19:
    result = 1067;
    __break(0xC471u);
    return result;
  }

  if (v6 > 0xFF)
  {
    goto LABEL_19;
  }

LABEL_12:
  __break(1u);
LABEL_13:
  *(v4 + 256) = 3197;
LABEL_14:
  v9 = IPC::Encoder::operator new(0x238, a2);
  *v9 = 3199;
  *(v9 + 2) = 0;
  *(v9 + 3) = 0;
  *(v9 + 1) = v3;
  *(v9 + 68) = 0;
  *(v9 + 70) = 0;
  *(v9 + 69) = 0;
  IPC::Encoder::encodeHeader(v9);
  v14 = v9;
  IPC::Encoder::operator<<<BOOL>(v9, &v13);
  if (*(v2 + 120) == 1)
  {
    return std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((v2 + 128), v9);
  }

  IPC::Connection::sendMessageImpl(*(v2 + 40), &v14, 0, 0);
  result = v14;
  v14 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v10);
    return bmalloc::api::tzoneFree(v11, v12);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL22GetBufferSubDataInlineEN6WebKit23RemoteGraphicsContextGLES8_FvjyyONS_17CompletionHandlerIFvNSt3__14spanIKhLm18446744073709551615EEEEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJSD_EED1Ev(void *a1)
{
  *a1 = &unk_1F10EC670;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL22GetBufferSubDataInlineEN6WebKit23RemoteGraphicsContextGLES8_FvjyyONS_17CompletionHandlerIFvNSt3__14spanIKhLm18446744073709551615EEEEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJSD_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EC670;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL22GetBufferSubDataInlineEN6WebKit23RemoteGraphicsContextGLES8_FvjyyONS_17CompletionHandlerIFvNSt3__14spanIKhLm18446744073709551615EEEEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJSD_EE4callESD_(uint64_t a1, void *a2, size_t __n)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (*(v5 + 120) != 1)
  {
    goto LABEL_9;
  }

  v7 = *(v5 + 56);
  v8 = *(v5 + 64);
  v9 = *(v8 + 8);
  if (v7 == 1)
  {
    if (v9 < 0x100)
    {
LABEL_17:
      __break(1u);
    }

LABEL_18:
    result = 1067;
    __break(0xC471u);
    return result;
  }

  v10 = v9 >= 0x100;
  v11 = (v9 - 256);
  if (!v10)
  {
    goto LABEL_17;
  }

  v12 = *(v8 + 16);
  if (v7)
  {
    v10 = v11 >= v7 - 1;
    v11 = (v7 - 1);
    if (!v10)
    {
      goto LABEL_17;
    }
  }

  v18[2] = v11;
  if (v11 <= 1)
  {
    goto LABEL_18;
  }

  *(v12 + 256) = 3199;
  v18[0] = (v12 + 258);
  v18[1] = (v11 - 2);
  result = IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::StreamConnectionEncoder>(v18, a2, __n);
  if (v18[0])
  {
    return result;
  }

  *(v12 + 256) = 3197;
LABEL_9:
  v14 = IPC::Encoder::operator new(0x238, a2);
  *v14 = 3199;
  *(v14 + 2) = 0;
  *(v14 + 3) = 0;
  *(v14 + 1) = v6;
  *(v14 + 68) = 0;
  *(v14 + 70) = 0;
  *(v14 + 69) = 0;
  IPC::Encoder::encodeHeader(v14);
  v18[0] = v14;
  IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(v14, a2, __n);
  if (*(v5 + 120) == 1)
  {
    return std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((v5 + 128), v14);
  }

  IPC::Connection::sendMessageImpl(*(v5 + 40), v18, 0, 0);
  result = v18[0];
  v18[0] = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v15);
    return bmalloc::api::tzoneFree(v16, v17);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL28GetBufferSubDataSharedMemoryEN6WebKit23RemoteGraphicsContextGLES8_FvjyyN7WebCore18SharedMemoryHandleEONS_17CompletionHandlerIFvbEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJbEED1Ev(void *a1)
{
  *a1 = &unk_1F10EC698;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL28GetBufferSubDataSharedMemoryEN6WebKit23RemoteGraphicsContextGLES8_FvjyyN7WebCore18SharedMemoryHandleEONS_17CompletionHandlerIFvbEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJbEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EC698;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL28GetBufferSubDataSharedMemoryEN6WebKit23RemoteGraphicsContextGLES8_FvjyyN7WebCore18SharedMemoryHandleEONS_17CompletionHandlerIFvbEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJbEE4callEb(uint64_t result, void *a2)
{
  v13 = a2;
  v3 = *(result + 8);
  v2 = *(result + 16);
  if (*(v2 + 120) != 1)
  {
    goto LABEL_14;
  }

  v5 = *(v2 + 56);
  v4 = *(v2 + 64);
  v6 = *(v4 + 8);
  if (v5 != 1)
  {
    v7 = v6 >= 0x100;
    v8 = v6 - 256;
    if (!v7)
    {
      goto LABEL_12;
    }

    v4 = *(v4 + 16);
    if (v5)
    {
      v7 = v8 >= v5 - 1;
      v8 = v5 - 1;
      if (!v7)
      {
        goto LABEL_12;
      }
    }

    if (v8 > 1)
    {
      *(v4 + 256) = 3199;
      if (v8 != 2)
      {
        *(v4 + 258) = a2;
        return result;
      }

      goto LABEL_13;
    }

LABEL_19:
    result = 1067;
    __break(0xC471u);
    return result;
  }

  if (v6 > 0xFF)
  {
    goto LABEL_19;
  }

LABEL_12:
  __break(1u);
LABEL_13:
  *(v4 + 256) = 3197;
LABEL_14:
  v9 = IPC::Encoder::operator new(0x238, a2);
  *v9 = 3199;
  *(v9 + 2) = 0;
  *(v9 + 3) = 0;
  *(v9 + 1) = v3;
  *(v9 + 68) = 0;
  *(v9 + 70) = 0;
  *(v9 + 69) = 0;
  IPC::Encoder::encodeHeader(v9);
  v14 = v9;
  IPC::Encoder::operator<<<BOOL>(v9, &v13);
  if (*(v2 + 120) == 1)
  {
    return std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((v2 + 128), v9);
  }

  IPC::Connection::sendMessageImpl(*(v2 + 40), &v14, 0, 0);
  result = v14;
  v14 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v10);
    return bmalloc::api::tzoneFree(v11, v12);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL16ReadPixelsInlineEN6WebKit23RemoteGraphicsContextGLES8_FvN7WebCore7IntRectEjjbONS_17CompletionHandlerIFvNSt3__18optionalINS9_7IntSizeEEENSC_4spanIKhLm18446744073709551615EEEEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJSF_SI_EED1Ev(void *a1)
{
  *a1 = &unk_1F10EC6C0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL16ReadPixelsInlineEN6WebKit23RemoteGraphicsContextGLES8_FvN7WebCore7IntRectEjjbONS_17CompletionHandlerIFvNSt3__18optionalINS9_7IntSizeEEENSC_4spanIKhLm18446744073709551615EEEEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJSF_SI_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EC6C0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL16ReadPixelsInlineEN6WebKit23RemoteGraphicsContextGLES8_FvN7WebCore7IntRectEjjbONS_17CompletionHandlerIFvNSt3__18optionalINS9_7IntSizeEEENSC_4spanIKhLm18446744073709551615EEEEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJSF_SI_EE4callESF_SI_(uint64_t a1, void *a2, int a3, const void *a4, size_t a5)
{
  v20 = a2;
  v21 = a3;
  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (*(v7 + 120) != 1)
  {
    goto LABEL_9;
  }

  v9 = *(v7 + 56);
  v10 = *(v7 + 64);
  v11 = *(v10 + 8);
  if (v9 == 1)
  {
    if (v11 < 0x100)
    {
LABEL_17:
      __break(1u);
    }

LABEL_18:
    result = 1067;
    __break(0xC471u);
    return result;
  }

  v12 = v11 >= 0x100;
  v13 = (v11 - 256);
  if (!v12)
  {
    goto LABEL_17;
  }

  v14 = *(v10 + 16);
  if (v9)
  {
    v12 = v13 >= v9 - 1;
    v13 = (v9 - 1);
    if (!v12)
    {
      goto LABEL_17;
    }
  }

  v22[2] = v13;
  if (v13 <= 1)
  {
    goto LABEL_18;
  }

  *(v14 + 256) = 3199;
  v22[0] = (v14 + 258);
  v22[1] = (v13 - 2);
  IPC::ArgumentCoder<std::optional<WebCore::IntSize>,void>::encode<IPC::StreamConnectionEncoder,std::optional<WebCore::IntSize>&>(v22, &v20);
  result = IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::StreamConnectionEncoder>(v22, a4, a5);
  if (v22[0])
  {
    return result;
  }

  *(v14 + 256) = 3197;
LABEL_9:
  v16 = IPC::Encoder::operator new(0x238, a2);
  *v16 = 3199;
  *(v16 + 2) = 0;
  *(v16 + 3) = 0;
  *(v16 + 1) = v8;
  *(v16 + 68) = 0;
  *(v16 + 70) = 0;
  *(v16 + 69) = 0;
  IPC::Encoder::encodeHeader(v16);
  v22[0] = v16;
  IPC::ArgumentCoder<std::optional<WebCore::IntSize>,void>::encode<IPC::Encoder,std::optional<WebCore::IntSize>>(v16, &v20);
  IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(v16, a4, a5);
  if (*(v7 + 120) == 1)
  {
    return std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((v7 + 128), v16);
  }

  IPC::Connection::sendMessageImpl(*(v7 + 40), v22, 0, 0);
  result = v22[0];
  v22[0] = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v17);
    return bmalloc::api::tzoneFree(v18, v19);
  }

  return result;
}

void *IPC::ArgumentCoder<std::optional<WebCore::IntSize>,void>::encode<IPC::StreamConnectionEncoder,std::optional<WebCore::IntSize>&>(void *result, uint64_t a2)
{
  v3 = result[1];
  if ((*(a2 + 8) & 1) == 0)
  {
    if (!v3)
    {
      *result = 0;
      result[1] = 0;
      return result;
    }

    **result = 0;
    v5 = result[1];
    if (v5)
    {
      ++*result;
      result[1] = v5 - 1;
      return result;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v3)
  {
    **result = 1;
    v4 = result[1];
    if (v4)
    {
      ++*result;
      result[1] = v4 - 1;
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_13:
  *result = 0;
  result[1] = 0;
LABEL_5:
  if (*(a2 + 8))
  {

    return IPC::ArgumentCoder<WebCore::IntPoint,void>::encode(result, a2);
  }

  else
  {
    v6 = std::__throw_bad_optional_access[abi:sn200100]();
    return IPC::ArgumentCoder<std::optional<WebCore::IntSize>,void>::encode<IPC::Encoder,std::optional<WebCore::IntSize>>(v6);
  }
}

void *IPC::ArgumentCoder<std::optional<WebCore::IntSize>,void>::encode<IPC::Encoder,std::optional<WebCore::IntSize>>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    v6 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v6);
    if (*(a2 + 8))
    {
      return IPC::ArgumentCoder<WebCore::IntPoint,void>::encode(a1, a2);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL22ReadPixelsSharedMemoryEN6WebKit23RemoteGraphicsContextGLES8_FvN7WebCore7IntRectEjjbNS9_18SharedMemoryHandleEONS_17CompletionHandlerIFvNSt3__18optionalINS9_7IntSizeEEEEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJSG_EED1Ev(v5);
    }
  }

  else
  {
    v7 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v7);
  }
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL22ReadPixelsSharedMemoryEN6WebKit23RemoteGraphicsContextGLES8_FvN7WebCore7IntRectEjjbNS9_18SharedMemoryHandleEONS_17CompletionHandlerIFvNSt3__18optionalINS9_7IntSizeEEEEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJSG_EED1Ev(void *a1)
{
  *a1 = &unk_1F10EC6E8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL22ReadPixelsSharedMemoryEN6WebKit23RemoteGraphicsContextGLES8_FvN7WebCore7IntRectEjjbNS9_18SharedMemoryHandleEONS_17CompletionHandlerIFvNSt3__18optionalINS9_7IntSizeEEEEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJSG_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EC6E8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL22ReadPixelsSharedMemoryEN6WebKit23RemoteGraphicsContextGLES8_FvN7WebCore7IntRectEjjbNS9_18SharedMemoryHandleEONS_17CompletionHandlerIFvNSt3__18optionalINS9_7IntSizeEEEEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJSG_EE4callESG_(uint64_t a1, void *a2, int a3)
{
  v16 = a2;
  v17 = a3;
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (*(v3 + 120) != 1)
  {
    goto LABEL_9;
  }

  v5 = *(v3 + 56);
  v6 = *(v3 + 64);
  v7 = *(v6 + 8);
  if (v5 == 1)
  {
    if (v7 < 0x100)
    {
LABEL_17:
      __break(1u);
    }

LABEL_18:
    result = 1067;
    __break(0xC471u);
    return result;
  }

  v8 = v7 >= 0x100;
  v9 = (v7 - 256);
  if (!v8)
  {
    goto LABEL_17;
  }

  v10 = *(v6 + 16);
  if (v5)
  {
    v8 = v9 >= v5 - 1;
    v9 = (v5 - 1);
    if (!v8)
    {
      goto LABEL_17;
    }
  }

  v18[2] = v9;
  if (v9 <= 1)
  {
    goto LABEL_18;
  }

  *(v10 + 256) = 3199;
  v18[0] = (v10 + 258);
  v18[1] = (v9 - 2);
  result = IPC::ArgumentCoder<std::optional<WebCore::IntSize>,void>::encode<IPC::StreamConnectionEncoder,std::optional<WebCore::IntSize>&>(v18, &v16);
  if (v18[0])
  {
    return result;
  }

  *(v10 + 256) = 3197;
LABEL_9:
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 3199;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = v4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v18[0] = v12;
  IPC::ArgumentCoder<std::optional<WebCore::IntSize>,void>::encode<IPC::Encoder,std::optional<WebCore::IntSize>>(v12, &v16);
  if (*(v3 + 120) == 1)
  {
    return std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((v3 + 128), v12);
  }

  IPC::Connection::sendMessageImpl(*(v3 + 40), v18, 0, 0);
  result = v18[0];
  v18[0] = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v13);
    return bmalloc::api::tzoneFree(v14, v15);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL22CheckFramebufferStatusEN6WebKit23RemoteGraphicsContextGLES8_FvjONS_17CompletionHandlerIFvjEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJjEED1Ev(void *a1)
{
  *a1 = &unk_1F10EC710;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL22CheckFramebufferStatusEN6WebKit23RemoteGraphicsContextGLES8_FvjONS_17CompletionHandlerIFvjEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJjEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EC710;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL22CheckFramebufferStatusEN6WebKit23RemoteGraphicsContextGLES8_FvjONS_17CompletionHandlerIFvjEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJjEE4callEj(uint64_t result, void *a2)
{
  v2 = a2;
  v4 = *(result + 8);
  v3 = *(result + 16);
  if (*(v3 + 120) != 1)
  {
    goto LABEL_14;
  }

  v6 = *(v3 + 56);
  v5 = *(v3 + 64);
  v7 = *(v5 + 8);
  if (v6 != 1)
  {
    v8 = v7 >= 0x100;
    v9 = v7 - 256;
    if (!v8)
    {
      goto LABEL_12;
    }

    v5 = *(v5 + 16);
    if (v6)
    {
      v8 = v9 >= v6 - 1;
      v9 = v6 - 1;
      if (!v8)
      {
        goto LABEL_12;
      }
    }

    if (v9 > 1)
    {
      *(v5 + 256) = 3199;
      v10 = -(v5 + 258);
      if (v9 - 2 >= (v10 & 3 | 4uLL))
      {
        *(v5 + 258 + (v10 & 3)) = a2;
        return result;
      }

      goto LABEL_13;
    }

LABEL_19:
    result = 1067;
    __break(0xC471u);
    return result;
  }

  if (v7 > 0xFF)
  {
    goto LABEL_19;
  }

LABEL_12:
  __break(1u);
LABEL_13:
  *(v5 + 256) = 3197;
LABEL_14:
  v11 = IPC::Encoder::operator new(0x238, a2);
  *v11 = 3199;
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *(v11 + 1) = v4;
  *(v11 + 68) = 0;
  *(v11 + 70) = 0;
  *(v11 + 69) = 0;
  IPC::Encoder::encodeHeader(v11);
  v15 = v11;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v11, v2);
  if (*(v3 + 120) == 1)
  {
    return std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((v3 + 128), v11);
  }

  IPC::Connection::sendMessageImpl(*(v3 + 40), &v15, 0, 0);
  result = v15;
  v15 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v12);
    return bmalloc::api::tzoneFree(v13, v14);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL15GetActiveAttribEN6WebKit23RemoteGraphicsContextGLES8_FvjjONS_17CompletionHandlerIFvbON7WebCore27GraphicsContextGLActiveInfoEEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJbSC_EED1Ev(void *a1)
{
  *a1 = &unk_1F10EC738;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL15GetActiveAttribEN6WebKit23RemoteGraphicsContextGLES8_FvjjONS_17CompletionHandlerIFvbON7WebCore27GraphicsContextGLActiveInfoEEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJbSC_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EC738;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL15GetActiveAttribEN6WebKit23RemoteGraphicsContextGLES8_FvjjONS_17CompletionHandlerIFvbON7WebCore27GraphicsContextGLActiveInfoEEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJbSC_EE4callEbSC_(uint64_t a1, void *a2, uint64_t a3)
{
  v18 = a2;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (*(v5 + 120) != 1)
  {
    goto LABEL_11;
  }

  v7 = *(v5 + 56);
  v8 = *(v5 + 64);
  v9 = *(v8 + 8);
  if (v7 == 1)
  {
    if (v9 < 0x100)
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

LABEL_21:
    result = 1067;
    __break(0xC471u);
    return result;
  }

  v10 = v9 >= 0x100;
  v11 = v9 - 256;
  if (!v10)
  {
    goto LABEL_19;
  }

  v3 = *(v8 + 16);
  if (v7)
  {
    v10 = v11 >= v7 - 1;
    v11 = v7 - 1;
    if (!v10)
    {
      goto LABEL_19;
    }
  }

  v21 = v11;
  if (v11 <= 1)
  {
    goto LABEL_21;
  }

  *(v3 + 256) = 3199;
  if (v11 == 2)
  {
LABEL_20:
    v19 = 0;
    v20 = 0;
    goto LABEL_9;
  }

  *(v3 + 258) = a2;
  v19 = (v3 + 259);
  v20 = v11 - 3;
LABEL_9:
  result = IPC::ArgumentCoder<WebCore::GraphicsContextGLActiveInfo,void>::encode(&v19, a3);
  if (v19)
  {
    return result;
  }

  *(v3 + 256) = 3197;
LABEL_11:
  v13 = IPC::Encoder::operator new(0x238, a2);
  *v13 = 3199;
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  *(v13 + 1) = v6;
  *(v13 + 68) = 0;
  *(v13 + 70) = 0;
  *(v13 + 69) = 0;
  IPC::Encoder::encodeHeader(v13);
  v19 = v13;
  v14 = IPC::Encoder::operator<<<BOOL>(v13, &v18);
  IPC::ArgumentCoder<WebCore::GraphicsContextGLActiveInfo,void>::encode(v14, a3);
  if (*(v5 + 120) == 1)
  {
    return std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((v5 + 128), v13);
  }

  IPC::Connection::sendMessageImpl(*(v5 + 40), &v19, 0, 0);
  result = v19;
  v19 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v15);
    return bmalloc::api::tzoneFree(v16, v17);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL16GetActiveUniformEN6WebKit23RemoteGraphicsContextGLES8_FvjjONS_17CompletionHandlerIFvbON7WebCore27GraphicsContextGLActiveInfoEEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJbSC_EED1Ev(void *a1)
{
  *a1 = &unk_1F10EC760;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL16GetActiveUniformEN6WebKit23RemoteGraphicsContextGLES8_FvjjONS_17CompletionHandlerIFvbON7WebCore27GraphicsContextGLActiveInfoEEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJbSC_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EC760;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL16GetActiveUniformEN6WebKit23RemoteGraphicsContextGLES8_FvjjONS_17CompletionHandlerIFvbON7WebCore27GraphicsContextGLActiveInfoEEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJbSC_EE4callEbSC_(uint64_t a1, void *a2, uint64_t a3)
{
  v18 = a2;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (*(v5 + 120) != 1)
  {
    goto LABEL_11;
  }

  v7 = *(v5 + 56);
  v8 = *(v5 + 64);
  v9 = *(v8 + 8);
  if (v7 == 1)
  {
    if (v9 < 0x100)
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

LABEL_21:
    result = 1067;
    __break(0xC471u);
    return result;
  }

  v10 = v9 >= 0x100;
  v11 = v9 - 256;
  if (!v10)
  {
    goto LABEL_19;
  }

  v3 = *(v8 + 16);
  if (v7)
  {
    v10 = v11 >= v7 - 1;
    v11 = v7 - 1;
    if (!v10)
    {
      goto LABEL_19;
    }
  }

  v21 = v11;
  if (v11 <= 1)
  {
    goto LABEL_21;
  }

  *(v3 + 256) = 3199;
  if (v11 == 2)
  {
LABEL_20:
    v19 = 0;
    v20 = 0;
    goto LABEL_9;
  }

  *(v3 + 258) = a2;
  v19 = (v3 + 259);
  v20 = v11 - 3;
LABEL_9:
  result = IPC::ArgumentCoder<WebCore::GraphicsContextGLActiveInfo,void>::encode(&v19, a3);
  if (v19)
  {
    return result;
  }

  *(v3 + 256) = 3197;
LABEL_11:
  v13 = IPC::Encoder::operator new(0x238, a2);
  *v13 = 3199;
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  *(v13 + 1) = v6;
  *(v13 + 68) = 0;
  *(v13 + 70) = 0;
  *(v13 + 69) = 0;
  IPC::Encoder::encodeHeader(v13);
  v19 = v13;
  v14 = IPC::Encoder::operator<<<BOOL>(v13, &v18);
  IPC::ArgumentCoder<WebCore::GraphicsContextGLActiveInfo,void>::encode(v14, a3);
  if (*(v5 + 120) == 1)
  {
    return std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((v5 + 128), v13);
  }

  IPC::Connection::sendMessageImpl(*(v5 + 40), &v19, 0, 0);
  result = v19;
  v19 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v15);
    return bmalloc::api::tzoneFree(v16, v17);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL17GetAttribLocationEN6WebKit23RemoteGraphicsContextGLES8_FvjONS_6StringEONS_17CompletionHandlerIFviEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJiEED1Ev(void *a1)
{
  *a1 = &unk_1F10EC788;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL17GetAttribLocationEN6WebKit23RemoteGraphicsContextGLES8_FvjONS_6StringEONS_17CompletionHandlerIFviEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJiEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EC788;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL17GetAttribLocationEN6WebKit23RemoteGraphicsContextGLES8_FvjONS_6StringEONS_17CompletionHandlerIFviEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJiEE4callEi(uint64_t result, void *a2)
{
  v2 = a2;
  v4 = *(result + 8);
  v3 = *(result + 16);
  if (*(v3 + 120) != 1)
  {
    goto LABEL_14;
  }

  v6 = *(v3 + 56);
  v5 = *(v3 + 64);
  v7 = *(v5 + 8);
  if (v6 != 1)
  {
    v8 = v7 >= 0x100;
    v9 = v7 - 256;
    if (!v8)
    {
      goto LABEL_12;
    }

    v5 = *(v5 + 16);
    if (v6)
    {
      v8 = v9 >= v6 - 1;
      v9 = v6 - 1;
      if (!v8)
      {
        goto LABEL_12;
      }
    }

    if (v9 > 1)
    {
      *(v5 + 256) = 3199;
      v10 = -(v5 + 258);
      if (v9 - 2 >= (v10 & 3 | 4uLL))
      {
        *(v5 + 258 + (v10 & 3)) = a2;
        return result;
      }

      goto LABEL_13;
    }

LABEL_19:
    result = 1067;
    __break(0xC471u);
    return result;
  }

  if (v7 > 0xFF)
  {
    goto LABEL_19;
  }

LABEL_12:
  __break(1u);
LABEL_13:
  *(v5 + 256) = 3197;
LABEL_14:
  v11 = IPC::Encoder::operator new(0x238, a2);
  *v11 = 3199;
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *(v11 + 1) = v4;
  *(v11 + 68) = 0;
  *(v11 + 70) = 0;
  *(v11 + 69) = 0;
  IPC::Encoder::encodeHeader(v11);
  v15 = v11;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v11, v2);
  if (*(v3 + 120) == 1)
  {
    return std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((v3 + 128), v11);
  }

  IPC::Connection::sendMessageImpl(*(v3 + 40), &v15, 0, 0);
  result = v15;
  v15 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v12);
    return bmalloc::api::tzoneFree(v13, v14);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL19GetBufferParameteriEN6WebKit23RemoteGraphicsContextGLES8_FvjjONS_17CompletionHandlerIFviEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJiEED1Ev(void *a1)
{
  *a1 = &unk_1F10EC7B0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL19GetBufferParameteriEN6WebKit23RemoteGraphicsContextGLES8_FvjjONS_17CompletionHandlerIFviEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJiEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EC7B0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL19GetBufferParameteriEN6WebKit23RemoteGraphicsContextGLES8_FvjjONS_17CompletionHandlerIFviEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJiEE4callEi(uint64_t result, void *a2)
{
  v2 = a2;
  v4 = *(result + 8);
  v3 = *(result + 16);
  if (*(v3 + 120) != 1)
  {
    goto LABEL_14;
  }

  v6 = *(v3 + 56);
  v5 = *(v3 + 64);
  v7 = *(v5 + 8);
  if (v6 != 1)
  {
    v8 = v7 >= 0x100;
    v9 = v7 - 256;
    if (!v8)
    {
      goto LABEL_12;
    }

    v5 = *(v5 + 16);
    if (v6)
    {
      v8 = v9 >= v6 - 1;
      v9 = v6 - 1;
      if (!v8)
      {
        goto LABEL_12;
      }
    }

    if (v9 > 1)
    {
      *(v5 + 256) = 3199;
      v10 = -(v5 + 258);
      if (v9 - 2 >= (v10 & 3 | 4uLL))
      {
        *(v5 + 258 + (v10 & 3)) = a2;
        return result;
      }

      goto LABEL_13;
    }

LABEL_19:
    result = 1067;
    __break(0xC471u);
    return result;
  }

  if (v7 > 0xFF)
  {
    goto LABEL_19;
  }

LABEL_12:
  __break(1u);
LABEL_13:
  *(v5 + 256) = 3197;
LABEL_14:
  v11 = IPC::Encoder::operator new(0x238, a2);
  *v11 = 3199;
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *(v11 + 1) = v4;
  *(v11 + 68) = 0;
  *(v11 + 70) = 0;
  *(v11 + 69) = 0;
  IPC::Encoder::encodeHeader(v11);
  v15 = v11;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v11, v2);
  if (*(v3 + 120) == 1)
  {
    return std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((v3 + 128), v11);
  }

  IPC::Connection::sendMessageImpl(*(v3 + 40), &v15, 0, 0);
  result = v15;
  v15 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v12);
    return bmalloc::api::tzoneFree(v13, v14);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL9GetStringEN6WebKit23RemoteGraphicsContextGLES8_FvjONS_17CompletionHandlerIFvONS_6StringEEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJSB_EED1Ev(void *a1)
{
  *a1 = &unk_1F10EC7D8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL9GetStringEN6WebKit23RemoteGraphicsContextGLES8_FvjONS_17CompletionHandlerIFvONS_6StringEEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJSB_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EC7D8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL9GetStringEN6WebKit23RemoteGraphicsContextGLES8_FvjONS_17CompletionHandlerIFvONS_6StringEEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJSB_EE4callESB_(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (*(v3 + 120) != 1)
  {
    goto LABEL_9;
  }

  v5 = *(v3 + 56);
  v6 = *(v3 + 64);
  v7 = *(v6 + 8);
  if (v5 == 1)
  {
    if (v7 < 0x100)
    {
LABEL_17:
      __break(1u);
    }

LABEL_18:
    result = 1067;
    __break(0xC471u);
    return result;
  }

  v8 = v7 >= 0x100;
  v9 = (v7 - 256);
  if (!v8)
  {
    goto LABEL_17;
  }

  v10 = *(v6 + 16);
  if (v5)
  {
    v8 = v9 >= v5 - 1;
    v9 = (v5 - 1);
    if (!v8)
    {
      goto LABEL_17;
    }
  }

  v16[2] = v9;
  if (v9 <= 1)
  {
    goto LABEL_18;
  }

  *(v10 + 256) = 3199;
  v16[0] = (v10 + 258);
  v16[1] = (v9 - 2);
  result = IPC::ArgumentCoder<WTF::String,void>::encode<IPC::StreamConnectionEncoder>(v16, a2);
  if (v16[0])
  {
    return result;
  }

  *(v10 + 256) = 3197;
LABEL_9:
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 3199;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = v4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v16[0] = v12;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v12, a2);
  if (*(v3 + 120) == 1)
  {
    return std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((v3 + 128), v12);
  }

  IPC::Connection::sendMessageImpl(*(v3 + 40), v16, 0, 0);
  result = v16[0];
  v16[0] = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v13);
    return bmalloc::api::tzoneFree(v14, v15);
  }

  return result;
}

uint64_t IPC::Decoder::decode<std::tuple<unsigned int,unsigned long long>>(uint64_t result, uint64_t *a2)
{
  v3 = ((a2[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v4 = *a2;
  v5 = a2[1];
  if (v5 >= v3 - v4 && v5 - (v3 - v4) > 3)
  {
    a2[2] = (v3 + 1);
    if (v3)
    {
      v7 = *v3;
      v8 = ((v3 + 11) & 0xFFFFFFFFFFFFFFF8);
      if (v5 < v8 - v4 || v5 - (v8 - v4) <= 7)
      {
        goto LABEL_15;
      }

      a2[2] = (v8 + 1);
      if (v8)
      {
        v10 = *v8;
        *result = v7;
        *(result + 8) = v10;
        *(result + 16) = 1;
        return result;
      }
    }

    v15 = result;
    v16 = a2;
    goto LABEL_18;
  }

LABEL_15:
  v15 = result;
  v16 = a2;
  *a2 = 0;
  a2[1] = 0;
  v11 = a2[3];
  if (!v11)
  {
    v5 = 0;
LABEL_17:
    v4 = 0;
    goto LABEL_18;
  }

  if (!v5)
  {
    goto LABEL_17;
  }

  (*(*v11 + 16))(v11);
  v4 = *v16;
  v5 = v16[1];
LABEL_18:
  *v16 = 0;
  v16[1] = 0;
  v12 = v16[3];
  if (v12 && v5)
  {
    (*(*v12 + 16))(v12, v4);
  }

  *v15 = 0;
  v15[16] = 0;
  v13 = v16[1];
  *v16 = 0;
  v16[1] = 0;
  result = v16[3];
  if (result && v13)
  {
    v14 = *(*result + 16);

    return v14();
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL9GetFloatvEN6WebKit23RemoteGraphicsContextGLES8_FvjyONS_17CompletionHandlerIFvNSt3__14spanIKfLm18446744073709551615EEEEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJSD_EED1Ev(void *a1)
{
  *a1 = &unk_1F10EC800;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL9GetFloatvEN6WebKit23RemoteGraphicsContextGLES8_FvjyONS_17CompletionHandlerIFvNSt3__14spanIKfLm18446744073709551615EEEEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJSD_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EC800;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL9GetFloatvEN6WebKit23RemoteGraphicsContextGLES8_FvjyONS_17CompletionHandlerIFvNSt3__14spanIKfLm18446744073709551615EEEEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJSD_EE4callESD_(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (*(v5 + 120) != 1)
  {
    goto LABEL_9;
  }

  v7 = *(v5 + 56);
  v8 = *(v5 + 64);
  v9 = *(v8 + 8);
  if (v7 == 1)
  {
    if (v9 < 0x100)
    {
LABEL_17:
      __break(1u);
    }

LABEL_18:
    result = 1067;
    __break(0xC471u);
    return result;
  }

  v10 = v9 >= 0x100;
  v11 = (v9 - 256);
  if (!v10)
  {
    goto LABEL_17;
  }

  v12 = *(v8 + 16);
  if (v7)
  {
    v10 = v11 >= v7 - 1;
    v11 = (v7 - 1);
    if (!v10)
    {
      goto LABEL_17;
    }
  }

  v18[2] = v11;
  if (v11 <= 1)
  {
    goto LABEL_18;
  }

  *(v12 + 256) = 3199;
  v18[0] = (v12 + 258);
  v18[1] = (v11 - 2);
  result = IPC::ArgumentCoder<std::span<float const,18446744073709551615ul>,void>::encode<IPC::StreamConnectionEncoder>(v18, a2, a3);
  if (v18[0])
  {
    return result;
  }

  *(v12 + 256) = 3197;
LABEL_9:
  v14 = IPC::Encoder::operator new(0x238, a2);
  *v14 = 3199;
  *(v14 + 2) = 0;
  *(v14 + 3) = 0;
  *(v14 + 1) = v6;
  *(v14 + 68) = 0;
  *(v14 + 70) = 0;
  *(v14 + 69) = 0;
  IPC::Encoder::encodeHeader(v14);
  v18[0] = v14;
  IPC::ArgumentCoder<std::span<float const,18446744073709551615ul>,void>::encode<IPC::Encoder>(v14, a2, a3);
  if (*(v5 + 120) == 1)
  {
    return std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((v5 + 128), v14);
  }

  IPC::Connection::sendMessageImpl(*(v5 + 40), v18, 0, 0);
  result = v18[0];
  v18[0] = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v15);
    return bmalloc::api::tzoneFree(v16, v17);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL11GetIntegervEN6WebKit23RemoteGraphicsContextGLES8_FvjyONS_17CompletionHandlerIFvNSt3__14spanIKiLm18446744073709551615EEEEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJSD_EED1Ev(void *a1)
{
  *a1 = &unk_1F10EC828;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL11GetIntegervEN6WebKit23RemoteGraphicsContextGLES8_FvjyONS_17CompletionHandlerIFvNSt3__14spanIKiLm18446744073709551615EEEEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJSD_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EC828;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL11GetIntegervEN6WebKit23RemoteGraphicsContextGLES8_FvjyONS_17CompletionHandlerIFvNSt3__14spanIKiLm18446744073709551615EEEEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJSD_EE4callESD_(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (*(v5 + 120) != 1)
  {
    goto LABEL_9;
  }

  v7 = *(v5 + 56);
  v8 = *(v5 + 64);
  v9 = *(v8 + 8);
  if (v7 == 1)
  {
    if (v9 < 0x100)
    {
LABEL_17:
      __break(1u);
    }

LABEL_18:
    result = 1067;
    __break(0xC471u);
    return result;
  }

  v10 = v9 >= 0x100;
  v11 = (v9 - 256);
  if (!v10)
  {
    goto LABEL_17;
  }

  v12 = *(v8 + 16);
  if (v7)
  {
    v10 = v11 >= v7 - 1;
    v11 = (v7 - 1);
    if (!v10)
    {
      goto LABEL_17;
    }
  }

  v18[2] = v11;
  if (v11 <= 1)
  {
    goto LABEL_18;
  }

  *(v12 + 256) = 3199;
  v18[0] = (v12 + 258);
  v18[1] = (v11 - 2);
  result = IPC::ArgumentCoder<std::span<int const,18446744073709551615ul>,void>::encode<IPC::StreamConnectionEncoder>(v18, a2, a3);
  if (v18[0])
  {
    return result;
  }

  *(v12 + 256) = 3197;
LABEL_9:
  v14 = IPC::Encoder::operator new(0x238, a2);
  *v14 = 3199;
  *(v14 + 2) = 0;
  *(v14 + 3) = 0;
  *(v14 + 1) = v6;
  *(v14 + 68) = 0;
  *(v14 + 70) = 0;
  *(v14 + 69) = 0;
  IPC::Encoder::encodeHeader(v14);
  v18[0] = v14;
  IPC::ArgumentCoder<std::span<int const,18446744073709551615ul>,void>::encode<IPC::Encoder>(v14, a2, a3);
  if (*(v5 + 120) == 1)
  {
    return std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((v5 + 128), v14);
  }

  IPC::Connection::sendMessageImpl(*(v5 + 40), v18, 0, 0);
  result = v18[0];
  v18[0] = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v15);
    return bmalloc::api::tzoneFree(v16, v17);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL13GetIntegeri_vEN6WebKit23RemoteGraphicsContextGLES8_FvjjONS_17CompletionHandlerIFvNSt3__14spanIKiLm4EEEEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJSD_EED1Ev(void *a1)
{
  *a1 = &unk_1F10EC850;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL13GetIntegeri_vEN6WebKit23RemoteGraphicsContextGLES8_FvjjONS_17CompletionHandlerIFvNSt3__14spanIKiLm4EEEEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJSD_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EC850;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL13GetIntegeri_vEN6WebKit23RemoteGraphicsContextGLES8_FvjjONS_17CompletionHandlerIFvNSt3__14spanIKiLm4EEEEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJSD_EE4callESD_(uint64_t result, _OWORD *a2)
{
  v4 = *(result + 8);
  v3 = *(result + 16);
  if (*(v3 + 120) != 1)
  {
    goto LABEL_9;
  }

  v6 = *(v3 + 56);
  v5 = *(v3 + 64);
  v7 = *(v5 + 8);
  if (v6 == 1)
  {
    if (v7 <= 0xFF)
    {
LABEL_20:
      __break(1u);
    }

LABEL_21:
    result = 1067;
    __break(0xC471u);
    return result;
  }

  v8 = v7 >= 0x100;
  v9 = v7 - 256;
  if (!v8)
  {
    goto LABEL_20;
  }

  v10 = *(v5 + 16);
  if (v6)
  {
    v8 = v9 >= v6 - 1;
    v9 = v6 - 1;
    if (!v8)
    {
      goto LABEL_20;
    }
  }

  if (v9 <= 1)
  {
    goto LABEL_21;
  }

  *(v10 + 256) = 3199;
  v11 = -(v10 + 258);
  if (v9 - 2 >= (v11 & 3 | 0x10uLL))
  {
    *(v10 + 258 + (v11 & 3)) = *a2;
    return result;
  }

  *(v10 + 256) = 3197;
LABEL_9:
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 3199;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = v4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v16 = v12;
  IPC::ArgumentCoder<std::span<int const,4ul>,void>::encode<IPC::Encoder>(v12, a2);
  if (*(v3 + 120) == 1)
  {

    return std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((v3 + 128), v12);
  }

  else
  {
    IPC::Connection::sendMessageImpl(*(v3 + 40), &v16, 0, 0);
    result = v16;
    v16 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v13);
      return bmalloc::api::tzoneFree(v14, v15);
    }
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::span<int const,4ul>,void>::encode<IPC::Encoder>(IPC::Encoder *a1, _OWORD *a2)
{
  result = IPC::Encoder::grow(a1, 4uLL, 16);
  if (v4 <= 0xF)
  {
    result = 1067;
    __break(0xC471u);
  }

  else
  {
    *result = *a2;
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL12GetInteger64EN6WebKit23RemoteGraphicsContextGLES8_FvjONS_17CompletionHandlerIFvxEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJxEED1Ev(void *a1)
{
  *a1 = &unk_1F10EC878;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL12GetInteger64EN6WebKit23RemoteGraphicsContextGLES8_FvjONS_17CompletionHandlerIFvxEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJxEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EC878;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL12GetInteger64EN6WebKit23RemoteGraphicsContextGLES8_FvjONS_17CompletionHandlerIFvxEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJxEE4callEx(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (*(v3 + 120) != 1)
  {
    goto LABEL_9;
  }

  v5 = *(v3 + 56);
  v6 = *(v3 + 64);
  v7 = *(v6 + 8);
  if (v5 == 1)
  {
    if (v7 < 0x100)
    {
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

LABEL_20:
    __break(0xC471u);
LABEL_21:
    JUMPOUT(0x19D923818);
  }

  v8 = v7 >= 0x100;
  v9 = (v7 - 256);
  if (!v8)
  {
    goto LABEL_18;
  }

  v10 = *(v6 + 16);
  if (v5)
  {
    v8 = v9 >= v5 - 1;
    v9 = (v5 - 1);
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  v18[2] = v9;
  if (v9 <= 1)
  {
    goto LABEL_20;
  }

  *(v10 + 256) = 3199;
  v18[0] = (v10 + 258);
  v18[1] = (v9 - 2);
  v19 = a2;
  result = IPC::StreamConnectionEncoder::encodeSpan<long long const,18446744073709551615ul>(v18, &v19, 1);
  if (v18[0])
  {
    return result;
  }

  *(v10 + 256) = 3197;
LABEL_9:
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 3199;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = v4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v18[0] = v12;
  v13 = IPC::Encoder::grow(v12, 8uLL, 8);
  if (v14 <= 7)
  {
LABEL_19:
    __break(0xC471u);
    goto LABEL_21;
  }

  *v13 = a2;
  if (*(v3 + 120) == 1)
  {
    return std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((v3 + 128), v12);
  }

  IPC::Connection::sendMessageImpl(*(v3 + 40), v18, 0, 0);
  result = v18[0];
  v18[0] = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v15);
    return bmalloc::api::tzoneFree(v16, v17);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL13GetInteger64iEN6WebKit23RemoteGraphicsContextGLES8_FvjjONS_17CompletionHandlerIFvxEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJxEED1Ev(void *a1)
{
  *a1 = &unk_1F10EC8A0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL13GetInteger64iEN6WebKit23RemoteGraphicsContextGLES8_FvjjONS_17CompletionHandlerIFvxEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJxEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EC8A0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL13GetInteger64iEN6WebKit23RemoteGraphicsContextGLES8_FvjjONS_17CompletionHandlerIFvxEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJxEE4callEx(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (*(v3 + 120) != 1)
  {
    goto LABEL_9;
  }

  v5 = *(v3 + 56);
  v6 = *(v3 + 64);
  v7 = *(v6 + 8);
  if (v5 == 1)
  {
    if (v7 < 0x100)
    {
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

LABEL_20:
    __break(0xC471u);
LABEL_21:
    JUMPOUT(0x19D923AD0);
  }

  v8 = v7 >= 0x100;
  v9 = (v7 - 256);
  if (!v8)
  {
    goto LABEL_18;
  }

  v10 = *(v6 + 16);
  if (v5)
  {
    v8 = v9 >= v5 - 1;
    v9 = (v5 - 1);
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  v18[2] = v9;
  if (v9 <= 1)
  {
    goto LABEL_20;
  }

  *(v10 + 256) = 3199;
  v18[0] = (v10 + 258);
  v18[1] = (v9 - 2);
  v19 = a2;
  result = IPC::StreamConnectionEncoder::encodeSpan<long long const,18446744073709551615ul>(v18, &v19, 1);
  if (v18[0])
  {
    return result;
  }

  *(v10 + 256) = 3197;
LABEL_9:
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 3199;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = v4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v18[0] = v12;
  v13 = IPC::Encoder::grow(v12, 8uLL, 8);
  if (v14 <= 7)
  {
LABEL_19:
    __break(0xC471u);
    goto LABEL_21;
  }

  *v13 = a2;
  if (*(v3 + 120) == 1)
  {
    return std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((v3 + 128), v12);
  }

  IPC::Connection::sendMessageImpl(*(v3 + 40), v18, 0, 0);
  result = v18[0];
  v18[0] = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v15);
    return bmalloc::api::tzoneFree(v16, v17);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL11GetProgramiEN6WebKit23RemoteGraphicsContextGLES8_FvjjONS_17CompletionHandlerIFviEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJiEED1Ev(void *a1)
{
  *a1 = &unk_1F10EC8C8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL11GetProgramiEN6WebKit23RemoteGraphicsContextGLES8_FvjjONS_17CompletionHandlerIFviEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJiEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EC8C8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL11GetProgramiEN6WebKit23RemoteGraphicsContextGLES8_FvjjONS_17CompletionHandlerIFviEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJiEE4callEi(uint64_t result, void *a2)
{
  v2 = a2;
  v4 = *(result + 8);
  v3 = *(result + 16);
  if (*(v3 + 120) != 1)
  {
    goto LABEL_14;
  }

  v6 = *(v3 + 56);
  v5 = *(v3 + 64);
  v7 = *(v5 + 8);
  if (v6 != 1)
  {
    v8 = v7 >= 0x100;
    v9 = v7 - 256;
    if (!v8)
    {
      goto LABEL_12;
    }

    v5 = *(v5 + 16);
    if (v6)
    {
      v8 = v9 >= v6 - 1;
      v9 = v6 - 1;
      if (!v8)
      {
        goto LABEL_12;
      }
    }

    if (v9 > 1)
    {
      *(v5 + 256) = 3199;
      v10 = -(v5 + 258);
      if (v9 - 2 >= (v10 & 3 | 4uLL))
      {
        *(v5 + 258 + (v10 & 3)) = a2;
        return result;
      }

      goto LABEL_13;
    }

LABEL_19:
    result = 1067;
    __break(0xC471u);
    return result;
  }

  if (v7 > 0xFF)
  {
    goto LABEL_19;
  }

LABEL_12:
  __break(1u);
LABEL_13:
  *(v5 + 256) = 3197;
LABEL_14:
  v11 = IPC::Encoder::operator new(0x238, a2);
  *v11 = 3199;
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *(v11 + 1) = v4;
  *(v11 + 68) = 0;
  *(v11 + 70) = 0;
  *(v11 + 69) = 0;
  IPC::Encoder::encodeHeader(v11);
  v15 = v11;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v11, v2);
  if (*(v3 + 120) == 1)
  {
    return std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((v3 + 128), v11);
  }

  IPC::Connection::sendMessageImpl(*(v3 + 40), &v15, 0, 0);
  result = v15;
  v15 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v12);
    return bmalloc::api::tzoneFree(v13, v14);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL11GetBooleanvEN6WebKit23RemoteGraphicsContextGLES8_FvjyONS_17CompletionHandlerIFvNSt3__14spanIKbLm18446744073709551615EEEEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJSD_EED1Ev(void *a1)
{
  *a1 = &unk_1F10EC8F0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL11GetBooleanvEN6WebKit23RemoteGraphicsContextGLES8_FvjyONS_17CompletionHandlerIFvNSt3__14spanIKbLm18446744073709551615EEEEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJSD_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EC8F0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL11GetBooleanvEN6WebKit23RemoteGraphicsContextGLES8_FvjyONS_17CompletionHandlerIFvNSt3__14spanIKbLm18446744073709551615EEEEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJSD_EE4callESD_(IPC::Encoder *result, void *__src, size_t __n)
{
  v7 = *(result + 1);
  v6 = *(result + 2);
  if (*(v6 + 120) == 1)
  {
    v8 = *(v6 + 56);
    v9 = *(v6 + 64);
    v10 = *(v9 + 8);
    if (v8 == 1)
    {
      if (v10 > 0xFF)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v11 = v10 >= 0x100;
      v12 = v10 - 256;
      if (v11)
      {
        v3 = *(v9 + 16);
        if (!v8 || (v11 = v12 >= v8 - 1, v12 = v8 - 1, v11))
        {
          if (v12 <= 1)
          {
            goto LABEL_28;
          }

          *(v3 + 256) = 3199;
          v13 = v12 - 2;
          v14 = v3 + 258;
          v15 = -(v3 + 258);
          v16 = v15 & 7 | 8;
          v11 = v13 >= v16;
          v17 = v13 - v16;
          if (v11)
          {
            *(v14 + (v15 & 7)) = __n;
            v18 = (v14 + v16);
            if (!__n)
            {
              goto LABEL_12;
            }

LABEL_10:
            if (v17 < __n)
            {
LABEL_13:
              *(v3 + 256) = 3197;
              goto LABEL_14;
            }

            result = memcpy(v18, __src, __n);
            v18 += __n;
LABEL_12:
            if (v18)
            {
              return result;
            }

            goto LABEL_13;
          }

LABEL_26:
          v18 = 0;
          v17 = 0;
          if (!__n)
          {
            goto LABEL_12;
          }

          goto LABEL_10;
        }
      }
    }

    __break(1u);
    goto LABEL_26;
  }

LABEL_14:
  v19 = IPC::Encoder::operator new(0x238, __src);
  *v19 = 3199;
  *(v19 + 2) = 0;
  *(v19 + 3) = 0;
  *(v19 + 1) = v7;
  *(v19 + 68) = 0;
  *(v19 + 70) = 0;
  *(v19 + 69) = 0;
  IPC::Encoder::encodeHeader(v19);
  v25 = v19;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v19, __n);
  if (!__n)
  {
    goto LABEL_17;
  }

  v20 = IPC::Encoder::grow(v19, 1uLL, __n);
  if (v21 < __n)
  {
LABEL_28:
    __break(0xC471u);
    JUMPOUT(0x19D924060);
  }

  memcpy(v20, __src, __n);
LABEL_17:
  if (*(v6 + 120) == 1)
  {
    return std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((v6 + 128), v19);
  }

  IPC::Connection::sendMessageImpl(*(v6 + 40), &v25, 0, 0);
  result = v25;
  v25 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v22);
    return bmalloc::api::tzoneFree(v23, v24);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL34GetFramebufferAttachmentParameteriEN6WebKit23RemoteGraphicsContextGLES8_FvjjjONS_17CompletionHandlerIFviEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJiEED1Ev(void *a1)
{
  *a1 = &unk_1F10EC918;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL34GetFramebufferAttachmentParameteriEN6WebKit23RemoteGraphicsContextGLES8_FvjjjONS_17CompletionHandlerIFviEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJiEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EC918;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL34GetFramebufferAttachmentParameteriEN6WebKit23RemoteGraphicsContextGLES8_FvjjjONS_17CompletionHandlerIFviEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJiEE4callEi(uint64_t result, void *a2)
{
  v2 = a2;
  v4 = *(result + 8);
  v3 = *(result + 16);
  if (*(v3 + 120) != 1)
  {
    goto LABEL_14;
  }

  v6 = *(v3 + 56);
  v5 = *(v3 + 64);
  v7 = *(v5 + 8);
  if (v6 != 1)
  {
    v8 = v7 >= 0x100;
    v9 = v7 - 256;
    if (!v8)
    {
      goto LABEL_12;
    }

    v5 = *(v5 + 16);
    if (v6)
    {
      v8 = v9 >= v6 - 1;
      v9 = v6 - 1;
      if (!v8)
      {
        goto LABEL_12;
      }
    }

    if (v9 > 1)
    {
      *(v5 + 256) = 3199;
      v10 = -(v5 + 258);
      if (v9 - 2 >= (v10 & 3 | 4uLL))
      {
        *(v5 + 258 + (v10 & 3)) = a2;
        return result;
      }

      goto LABEL_13;
    }

LABEL_19:
    result = 1067;
    __break(0xC471u);
    return result;
  }

  if (v7 > 0xFF)
  {
    goto LABEL_19;
  }

LABEL_12:
  __break(1u);
LABEL_13:
  *(v5 + 256) = 3197;
LABEL_14:
  v11 = IPC::Encoder::operator new(0x238, a2);
  *v11 = 3199;
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *(v11 + 1) = v4;
  *(v11 + 68) = 0;
  *(v11 + 70) = 0;
  *(v11 + 69) = 0;
  IPC::Encoder::encodeHeader(v11);
  v15 = v11;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v11, v2);
  if (*(v3 + 120) == 1)
  {
    return std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((v3 + 128), v11);
  }

  IPC::Connection::sendMessageImpl(*(v3 + 40), &v15, 0, 0);
  result = v15;
  v15 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v12);
    return bmalloc::api::tzoneFree(v13, v14);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL17GetProgramInfoLogEN6WebKit23RemoteGraphicsContextGLES8_FvjONS_17CompletionHandlerIFvONS_6StringEEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJSB_EED1Ev(void *a1)
{
  *a1 = &unk_1F10EC940;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL17GetProgramInfoLogEN6WebKit23RemoteGraphicsContextGLES8_FvjONS_17CompletionHandlerIFvONS_6StringEEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJSB_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EC940;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL17GetProgramInfoLogEN6WebKit23RemoteGraphicsContextGLES8_FvjONS_17CompletionHandlerIFvONS_6StringEEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJSB_EE4callESB_(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (*(v3 + 120) != 1)
  {
    goto LABEL_9;
  }

  v5 = *(v3 + 56);
  v6 = *(v3 + 64);
  v7 = *(v6 + 8);
  if (v5 == 1)
  {
    if (v7 < 0x100)
    {
LABEL_17:
      __break(1u);
    }

LABEL_18:
    result = 1067;
    __break(0xC471u);
    return result;
  }

  v8 = v7 >= 0x100;
  v9 = (v7 - 256);
  if (!v8)
  {
    goto LABEL_17;
  }

  v10 = *(v6 + 16);
  if (v5)
  {
    v8 = v9 >= v5 - 1;
    v9 = (v5 - 1);
    if (!v8)
    {
      goto LABEL_17;
    }
  }

  v16[2] = v9;
  if (v9 <= 1)
  {
    goto LABEL_18;
  }

  *(v10 + 256) = 3199;
  v16[0] = (v10 + 258);
  v16[1] = (v9 - 2);
  result = IPC::ArgumentCoder<WTF::String,void>::encode<IPC::StreamConnectionEncoder>(v16, a2);
  if (v16[0])
  {
    return result;
  }

  *(v10 + 256) = 3197;
LABEL_9:
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 3199;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = v4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v16[0] = v12;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v12, a2);
  if (*(v3 + 120) == 1)
  {
    return std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((v3 + 128), v12);
  }

  IPC::Connection::sendMessageImpl(*(v3 + 40), v16, 0, 0);
  result = v16[0];
  v16[0] = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v13);
    return bmalloc::api::tzoneFree(v14, v15);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL25GetRenderbufferParameteriEN6WebKit23RemoteGraphicsContextGLES8_FvjjONS_17CompletionHandlerIFviEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJiEED1Ev(void *a1)
{
  *a1 = &unk_1F10EC968;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL25GetRenderbufferParameteriEN6WebKit23RemoteGraphicsContextGLES8_FvjjONS_17CompletionHandlerIFviEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJiEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EC968;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL25GetRenderbufferParameteriEN6WebKit23RemoteGraphicsContextGLES8_FvjjONS_17CompletionHandlerIFviEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJiEE4callEi(uint64_t result, void *a2)
{
  v2 = a2;
  v4 = *(result + 8);
  v3 = *(result + 16);
  if (*(v3 + 120) != 1)
  {
    goto LABEL_14;
  }

  v6 = *(v3 + 56);
  v5 = *(v3 + 64);
  v7 = *(v5 + 8);
  if (v6 != 1)
  {
    v8 = v7 >= 0x100;
    v9 = v7 - 256;
    if (!v8)
    {
      goto LABEL_12;
    }

    v5 = *(v5 + 16);
    if (v6)
    {
      v8 = v9 >= v6 - 1;
      v9 = v6 - 1;
      if (!v8)
      {
        goto LABEL_12;
      }
    }

    if (v9 > 1)
    {
      *(v5 + 256) = 3199;
      v10 = -(v5 + 258);
      if (v9 - 2 >= (v10 & 3 | 4uLL))
      {
        *(v5 + 258 + (v10 & 3)) = a2;
        return result;
      }

      goto LABEL_13;
    }

LABEL_19:
    result = 1067;
    __break(0xC471u);
    return result;
  }

  if (v7 > 0xFF)
  {
    goto LABEL_19;
  }

LABEL_12:
  __break(1u);
LABEL_13:
  *(v5 + 256) = 3197;
LABEL_14:
  v11 = IPC::Encoder::operator new(0x238, a2);
  *v11 = 3199;
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *(v11 + 1) = v4;
  *(v11 + 68) = 0;
  *(v11 + 70) = 0;
  *(v11 + 69) = 0;
  IPC::Encoder::encodeHeader(v11);
  v15 = v11;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v11, v2);
  if (*(v3 + 120) == 1)
  {
    return std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((v3 + 128), v11);
  }

  IPC::Connection::sendMessageImpl(*(v3 + 40), &v15, 0, 0);
  result = v15;
  v15 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v12);
    return bmalloc::api::tzoneFree(v13, v14);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL10GetShaderiEN6WebKit23RemoteGraphicsContextGLES8_FvjjONS_17CompletionHandlerIFviEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJiEED1Ev(void *a1)
{
  *a1 = &unk_1F10EC990;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL10GetShaderiEN6WebKit23RemoteGraphicsContextGLES8_FvjjONS_17CompletionHandlerIFviEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJiEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EC990;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL10GetShaderiEN6WebKit23RemoteGraphicsContextGLES8_FvjjONS_17CompletionHandlerIFviEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJiEE4callEi(uint64_t result, void *a2)
{
  v2 = a2;
  v4 = *(result + 8);
  v3 = *(result + 16);
  if (*(v3 + 120) != 1)
  {
    goto LABEL_14;
  }

  v6 = *(v3 + 56);
  v5 = *(v3 + 64);
  v7 = *(v5 + 8);
  if (v6 != 1)
  {
    v8 = v7 >= 0x100;
    v9 = v7 - 256;
    if (!v8)
    {
      goto LABEL_12;
    }

    v5 = *(v5 + 16);
    if (v6)
    {
      v8 = v9 >= v6 - 1;
      v9 = v6 - 1;
      if (!v8)
      {
        goto LABEL_12;
      }
    }

    if (v9 > 1)
    {
      *(v5 + 256) = 3199;
      v10 = -(v5 + 258);
      if (v9 - 2 >= (v10 & 3 | 4uLL))
      {
        *(v5 + 258 + (v10 & 3)) = a2;
        return result;
      }

      goto LABEL_13;
    }

LABEL_19:
    result = 1067;
    __break(0xC471u);
    return result;
  }

  if (v7 > 0xFF)
  {
    goto LABEL_19;
  }

LABEL_12:
  __break(1u);
LABEL_13:
  *(v5 + 256) = 3197;
LABEL_14:
  v11 = IPC::Encoder::operator new(0x238, a2);
  *v11 = 3199;
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *(v11 + 1) = v4;
  *(v11 + 68) = 0;
  *(v11 + 70) = 0;
  *(v11 + 69) = 0;
  IPC::Encoder::encodeHeader(v11);
  v15 = v11;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v11, v2);
  if (*(v3 + 120) == 1)
  {
    return std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((v3 + 128), v11);
  }

  IPC::Connection::sendMessageImpl(*(v3 + 40), &v15, 0, 0);
  result = v15;
  v15 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v12);
    return bmalloc::api::tzoneFree(v13, v14);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL16GetShaderInfoLogEN6WebKit23RemoteGraphicsContextGLES8_FvjONS_17CompletionHandlerIFvONS_6StringEEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJSB_EED1Ev(void *a1)
{
  *a1 = &unk_1F10EC9B8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL16GetShaderInfoLogEN6WebKit23RemoteGraphicsContextGLES8_FvjONS_17CompletionHandlerIFvONS_6StringEEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJSB_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EC9B8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL16GetShaderInfoLogEN6WebKit23RemoteGraphicsContextGLES8_FvjONS_17CompletionHandlerIFvONS_6StringEEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJSB_EE4callESB_(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (*(v3 + 120) != 1)
  {
    goto LABEL_9;
  }

  v5 = *(v3 + 56);
  v6 = *(v3 + 64);
  v7 = *(v6 + 8);
  if (v5 == 1)
  {
    if (v7 < 0x100)
    {
LABEL_17:
      __break(1u);
    }

LABEL_18:
    result = 1067;
    __break(0xC471u);
    return result;
  }

  v8 = v7 >= 0x100;
  v9 = (v7 - 256);
  if (!v8)
  {
    goto LABEL_17;
  }

  v10 = *(v6 + 16);
  if (v5)
  {
    v8 = v9 >= v5 - 1;
    v9 = (v5 - 1);
    if (!v8)
    {
      goto LABEL_17;
    }
  }

  v16[2] = v9;
  if (v9 <= 1)
  {
    goto LABEL_18;
  }

  *(v10 + 256) = 3199;
  v16[0] = (v10 + 258);
  v16[1] = (v9 - 2);
  result = IPC::ArgumentCoder<WTF::String,void>::encode<IPC::StreamConnectionEncoder>(v16, a2);
  if (v16[0])
  {
    return result;
  }

  *(v10 + 256) = 3197;
LABEL_9:
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 3199;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = v4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v16[0] = v12;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v12, a2);
  if (*(v3 + 120) == 1)
  {
    return std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((v3 + 128), v12);
  }

  IPC::Connection::sendMessageImpl(*(v3 + 40), v16, 0, 0);
  result = v16[0];
  v16[0] = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v13);
    return bmalloc::api::tzoneFree(v14, v15);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL24GetShaderPrecisionFormatEN6WebKit23RemoteGraphicsContextGLES8_FvjjONS_17CompletionHandlerIFvNSt3__14spanIKiLm2EEEiEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJSD_iEED1Ev(void *a1)
{
  *a1 = &unk_1F10EC9E0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL24GetShaderPrecisionFormatEN6WebKit23RemoteGraphicsContextGLES8_FvjjONS_17CompletionHandlerIFvNSt3__14spanIKiLm2EEEiEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJSD_iEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EC9E0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL24GetShaderPrecisionFormatEN6WebKit23RemoteGraphicsContextGLES8_FvjjONS_17CompletionHandlerIFvNSt3__14spanIKiLm2EEEiEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJSD_iEE4callESD_i(IPC::Encoder *result, void *a2, int a3)
{
  v6 = *(result + 1);
  v5 = *(result + 2);
  if (*(v5 + 120) != 1)
  {
    goto LABEL_9;
  }

  v8 = *(v5 + 56);
  v7 = *(v5 + 64);
  v9 = *(v7 + 8);
  if (v8 == 1)
  {
    if (v9 <= 0xFF)
    {
LABEL_20:
      __break(1u);
    }

LABEL_21:
    __break(0xC471u);
    JUMPOUT(0x19D924FE0);
  }

  v10 = v9 >= 0x100;
  v11 = v9 - 256;
  if (!v10)
  {
    goto LABEL_20;
  }

  v12 = *(v7 + 16);
  if (v8)
  {
    v10 = v11 >= v8 - 1;
    v11 = v8 - 1;
    if (!v10)
    {
      goto LABEL_20;
    }
  }

  if (v11 <= 1)
  {
    goto LABEL_21;
  }

  *(v12 + 256) = 3199;
  v13 = v11 - 2;
  v14 = v12 + 258;
  v15 = -(v12 + 258);
  v16 = v15 & 3 | 8;
  v10 = v13 >= v16;
  v17 = v13 - v16;
  if (v10)
  {
    *(v14 + (v15 & 3)) = *a2;
    v24 = v14 + v16;
    if (v17 >= (-v24 & 3 | 4uLL))
    {
      *(v24 + (-v24 & 3)) = a3;
      return result;
    }
  }

  *(v12 + 256) = 3197;
LABEL_9:
  v18 = IPC::Encoder::operator new(0x238, a2);
  *v18 = 3199;
  *(v18 + 2) = 0;
  *(v18 + 3) = 0;
  *(v18 + 1) = v6;
  *(v18 + 68) = 0;
  *(v18 + 70) = 0;
  *(v18 + 69) = 0;
  IPC::Encoder::encodeHeader(v18);
  v25 = v18;
  v19 = IPC::Encoder::grow(v18, 4uLL, 8);
  if (v20 <= 7)
  {
    goto LABEL_21;
  }

  *v19 = *a2;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v18, a3);
  if (*(v5 + 120) == 1)
  {
    return std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((v5 + 128), v18);
  }

  IPC::Connection::sendMessageImpl(*(v5 + 40), &v25, 0, 0);
  result = v25;
  v25 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v21);
    return bmalloc::api::tzoneFree(v22, v23);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL15GetShaderSourceEN6WebKit23RemoteGraphicsContextGLES8_FvjONS_17CompletionHandlerIFvONS_6StringEEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJSB_EED1Ev(void *a1)
{
  *a1 = &unk_1F10ECA08;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL15GetShaderSourceEN6WebKit23RemoteGraphicsContextGLES8_FvjONS_17CompletionHandlerIFvONS_6StringEEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJSB_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10ECA08;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL15GetShaderSourceEN6WebKit23RemoteGraphicsContextGLES8_FvjONS_17CompletionHandlerIFvONS_6StringEEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJSB_EE4callESB_(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (*(v3 + 120) != 1)
  {
    goto LABEL_9;
  }

  v5 = *(v3 + 56);
  v6 = *(v3 + 64);
  v7 = *(v6 + 8);
  if (v5 == 1)
  {
    if (v7 < 0x100)
    {
LABEL_17:
      __break(1u);
    }

LABEL_18:
    result = 1067;
    __break(0xC471u);
    return result;
  }

  v8 = v7 >= 0x100;
  v9 = (v7 - 256);
  if (!v8)
  {
    goto LABEL_17;
  }

  v10 = *(v6 + 16);
  if (v5)
  {
    v8 = v9 >= v5 - 1;
    v9 = (v5 - 1);
    if (!v8)
    {
      goto LABEL_17;
    }
  }

  v16[2] = v9;
  if (v9 <= 1)
  {
    goto LABEL_18;
  }

  *(v10 + 256) = 3199;
  v16[0] = (v10 + 258);
  v16[1] = (v9 - 2);
  result = IPC::ArgumentCoder<WTF::String,void>::encode<IPC::StreamConnectionEncoder>(v16, a2);
  if (v16[0])
  {
    return result;
  }

  *(v10 + 256) = 3197;
LABEL_9:
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 3199;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = v4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v16[0] = v12;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v12, a2);
  if (*(v3 + 120) == 1)
  {
    return std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((v3 + 128), v12);
  }

  IPC::Connection::sendMessageImpl(*(v3 + 40), v16, 0, 0);
  result = v16[0];
  v16[0] = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v13);
    return bmalloc::api::tzoneFree(v14, v15);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL16GetTexParameterfEN6WebKit23RemoteGraphicsContextGLES8_FvjjONS_17CompletionHandlerIFvfEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJfEED1Ev(void *a1)
{
  *a1 = &unk_1F10ECA30;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL16GetTexParameterfEN6WebKit23RemoteGraphicsContextGLES8_FvjjONS_17CompletionHandlerIFvfEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJfEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10ECA30;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL16GetTexParameterfEN6WebKit23RemoteGraphicsContextGLES8_FvjjONS_17CompletionHandlerIFvfEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJfEE4callEf(uint64_t result, void *a2, float a3)
{
  v5 = *(result + 8);
  v4 = *(result + 16);
  if (*(v4 + 120) != 1)
  {
    goto LABEL_14;
  }

  v7 = *(v4 + 56);
  v6 = *(v4 + 64);
  v8 = *(v6 + 8);
  if (v7 != 1)
  {
    v9 = v8 >= 0x100;
    v10 = v8 - 256;
    if (!v9)
    {
      goto LABEL_12;
    }

    v6 = *(v6 + 16);
    if (v7)
    {
      v9 = v10 >= v7 - 1;
      v10 = v7 - 1;
      if (!v9)
      {
        goto LABEL_12;
      }
    }

    if (v10 > 1)
    {
      *(v6 + 256) = 3199;
      v11 = -(v6 + 258);
      if (v10 - 2 >= (v11 & 3 | 4uLL))
      {
        *(v6 + 258 + (v11 & 3)) = a3;
        return result;
      }

      goto LABEL_13;
    }

LABEL_19:
    result = 1067;
    __break(0xC471u);
    return result;
  }

  if (v8 > 0xFF)
  {
    goto LABEL_19;
  }

LABEL_12:
  __break(1u);
LABEL_13:
  *(v6 + 256) = 3197;
LABEL_14:
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 3199;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = v5;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v16 = v12;
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(v12, a3);
  if (*(v4 + 120) == 1)
  {
    return std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((v4 + 128), v12);
  }

  IPC::Connection::sendMessageImpl(*(v4 + 40), &v16, 0, 0);
  result = v16;
  v16 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v13);
    return bmalloc::api::tzoneFree(v14, v15);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL16GetTexParameteriEN6WebKit23RemoteGraphicsContextGLES8_FvjjONS_17CompletionHandlerIFviEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJiEED1Ev(void *a1)
{
  *a1 = &unk_1F10ECA58;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL16GetTexParameteriEN6WebKit23RemoteGraphicsContextGLES8_FvjjONS_17CompletionHandlerIFviEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJiEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10ECA58;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL16GetTexParameteriEN6WebKit23RemoteGraphicsContextGLES8_FvjjONS_17CompletionHandlerIFviEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJiEE4callEi(uint64_t result, void *a2)
{
  v2 = a2;
  v4 = *(result + 8);
  v3 = *(result + 16);
  if (*(v3 + 120) != 1)
  {
    goto LABEL_14;
  }

  v6 = *(v3 + 56);
  v5 = *(v3 + 64);
  v7 = *(v5 + 8);
  if (v6 != 1)
  {
    v8 = v7 >= 0x100;
    v9 = v7 - 256;
    if (!v8)
    {
      goto LABEL_12;
    }

    v5 = *(v5 + 16);
    if (v6)
    {
      v8 = v9 >= v6 - 1;
      v9 = v6 - 1;
      if (!v8)
      {
        goto LABEL_12;
      }
    }

    if (v9 > 1)
    {
      *(v5 + 256) = 3199;
      v10 = -(v5 + 258);
      if (v9 - 2 >= (v10 & 3 | 4uLL))
      {
        *(v5 + 258 + (v10 & 3)) = a2;
        return result;
      }

      goto LABEL_13;
    }

LABEL_19:
    result = 1067;
    __break(0xC471u);
    return result;
  }

  if (v7 > 0xFF)
  {
    goto LABEL_19;
  }

LABEL_12:
  __break(1u);
LABEL_13:
  *(v5 + 256) = 3197;
LABEL_14:
  v11 = IPC::Encoder::operator new(0x238, a2);
  *v11 = 3199;
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *(v11 + 1) = v4;
  *(v11 + 68) = 0;
  *(v11 + 70) = 0;
  *(v11 + 69) = 0;
  IPC::Encoder::encodeHeader(v11);
  v15 = v11;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v11, v2);
  if (*(v3 + 120) == 1)
  {
    return std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((v3 + 128), v11);
  }

  IPC::Connection::sendMessageImpl(*(v3 + 40), &v15, 0, 0);
  result = v15;
  v15 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v12);
    return bmalloc::api::tzoneFree(v13, v14);
  }

  return result;
}

uint64_t IPC::Decoder::decode<std::tuple<unsigned int,int,unsigned long long>>(uint64_t result, uint64_t *a2)
{
  v3 = ((a2[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v4 = *a2;
  v5 = a2[1];
  if (v5 >= v3 - v4 && v5 - (v3 - v4) > 3)
  {
    a2[2] = (v3 + 1);
    if (v3)
    {
      v7 = *v3;
      v8 = ((v3 + 7) & 0xFFFFFFFFFFFFFFFCLL);
      if (v5 < v8 - v4 || v5 - (v8 - v4) <= 3)
      {
        goto LABEL_21;
      }

      a2[2] = (v8 + 1);
      if (v8)
      {
        v10 = *v8;
        v11 = ((v8 + 11) & 0xFFFFFFFFFFFFFFF8);
        if (v5 < v11 - v4 || v5 - (v11 - v4) <= 7)
        {
          goto LABEL_21;
        }

        a2[2] = (v11 + 1);
        if (v11)
        {
          v13 = *v11;
          *result = v7;
          *(result + 4) = v10;
          *(result + 8) = v13;
          *(result + 16) = 1;
          return result;
        }
      }
    }

    v18 = result;
    v19 = a2;
    goto LABEL_24;
  }

LABEL_21:
  v18 = result;
  v19 = a2;
  *a2 = 0;
  a2[1] = 0;
  v14 = a2[3];
  if (!v14)
  {
    v5 = 0;
LABEL_23:
    v4 = 0;
    goto LABEL_24;
  }

  if (!v5)
  {
    goto LABEL_23;
  }

  (*(*v14 + 16))(v14);
  v4 = *v19;
  v5 = v19[1];
LABEL_24:
  *v19 = 0;
  v19[1] = 0;
  v15 = v19[3];
  if (v15 && v5)
  {
    (*(*v15 + 16))(v15, v4);
  }

  *v18 = 0;
  v18[16] = 0;
  v16 = v19[1];
  *v19 = 0;
  v19[1] = 0;
  result = v19[3];
  if (result && v16)
  {
    v17 = *(*result + 16);

    return v17();
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL12GetUniformfvEN6WebKit23RemoteGraphicsContextGLES8_FvjiyONS_17CompletionHandlerIFvNSt3__14spanIKfLm18446744073709551615EEEEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJSD_EED1Ev(void *a1)
{
  *a1 = &unk_1F10ECA80;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL12GetUniformfvEN6WebKit23RemoteGraphicsContextGLES8_FvjiyONS_17CompletionHandlerIFvNSt3__14spanIKfLm18446744073709551615EEEEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJSD_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10ECA80;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL12GetUniformfvEN6WebKit23RemoteGraphicsContextGLES8_FvjiyONS_17CompletionHandlerIFvNSt3__14spanIKfLm18446744073709551615EEEEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJSD_EE4callESD_(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (*(v5 + 120) != 1)
  {
    goto LABEL_9;
  }

  v7 = *(v5 + 56);
  v8 = *(v5 + 64);
  v9 = *(v8 + 8);
  if (v7 == 1)
  {
    if (v9 < 0x100)
    {
LABEL_17:
      __break(1u);
    }

LABEL_18:
    result = 1067;
    __break(0xC471u);
    return result;
  }

  v10 = v9 >= 0x100;
  v11 = (v9 - 256);
  if (!v10)
  {
    goto LABEL_17;
  }

  v12 = *(v8 + 16);
  if (v7)
  {
    v10 = v11 >= v7 - 1;
    v11 = (v7 - 1);
    if (!v10)
    {
      goto LABEL_17;
    }
  }

  v18[2] = v11;
  if (v11 <= 1)
  {
    goto LABEL_18;
  }

  *(v12 + 256) = 3199;
  v18[0] = (v12 + 258);
  v18[1] = (v11 - 2);
  result = IPC::ArgumentCoder<std::span<float const,18446744073709551615ul>,void>::encode<IPC::StreamConnectionEncoder>(v18, a2, a3);
  if (v18[0])
  {
    return result;
  }

  *(v12 + 256) = 3197;
LABEL_9:
  v14 = IPC::Encoder::operator new(0x238, a2);
  *v14 = 3199;
  *(v14 + 2) = 0;
  *(v14 + 3) = 0;
  *(v14 + 1) = v6;
  *(v14 + 68) = 0;
  *(v14 + 70) = 0;
  *(v14 + 69) = 0;
  IPC::Encoder::encodeHeader(v14);
  v18[0] = v14;
  IPC::ArgumentCoder<std::span<float const,18446744073709551615ul>,void>::encode<IPC::Encoder>(v14, a2, a3);
  if (*(v5 + 120) == 1)
  {
    return std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((v5 + 128), v14);
  }

  IPC::Connection::sendMessageImpl(*(v5 + 40), v18, 0, 0);
  result = v18[0];
  v18[0] = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v15);
    return bmalloc::api::tzoneFree(v16, v17);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL12GetUniformivEN6WebKit23RemoteGraphicsContextGLES8_FvjiyONS_17CompletionHandlerIFvNSt3__14spanIKiLm18446744073709551615EEEEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJSD_EED1Ev(void *a1)
{
  *a1 = &unk_1F10ECAA8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL12GetUniformivEN6WebKit23RemoteGraphicsContextGLES8_FvjiyONS_17CompletionHandlerIFvNSt3__14spanIKiLm18446744073709551615EEEEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJSD_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10ECAA8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL12GetUniformivEN6WebKit23RemoteGraphicsContextGLES8_FvjiyONS_17CompletionHandlerIFvNSt3__14spanIKiLm18446744073709551615EEEEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJSD_EE4callESD_(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (*(v5 + 120) != 1)
  {
    goto LABEL_9;
  }

  v7 = *(v5 + 56);
  v8 = *(v5 + 64);
  v9 = *(v8 + 8);
  if (v7 == 1)
  {
    if (v9 < 0x100)
    {
LABEL_17:
      __break(1u);
    }

LABEL_18:
    result = 1067;
    __break(0xC471u);
    return result;
  }

  v10 = v9 >= 0x100;
  v11 = (v9 - 256);
  if (!v10)
  {
    goto LABEL_17;
  }

  v12 = *(v8 + 16);
  if (v7)
  {
    v10 = v11 >= v7 - 1;
    v11 = (v7 - 1);
    if (!v10)
    {
      goto LABEL_17;
    }
  }

  v18[2] = v11;
  if (v11 <= 1)
  {
    goto LABEL_18;
  }

  *(v12 + 256) = 3199;
  v18[0] = (v12 + 258);
  v18[1] = (v11 - 2);
  result = IPC::ArgumentCoder<std::span<int const,18446744073709551615ul>,void>::encode<IPC::StreamConnectionEncoder>(v18, a2, a3);
  if (v18[0])
  {
    return result;
  }

  *(v12 + 256) = 3197;
LABEL_9:
  v14 = IPC::Encoder::operator new(0x238, a2);
  *v14 = 3199;
  *(v14 + 2) = 0;
  *(v14 + 3) = 0;
  *(v14 + 1) = v6;
  *(v14 + 68) = 0;
  *(v14 + 70) = 0;
  *(v14 + 69) = 0;
  IPC::Encoder::encodeHeader(v14);
  v18[0] = v14;
  IPC::ArgumentCoder<std::span<int const,18446744073709551615ul>,void>::encode<IPC::Encoder>(v14, a2, a3);
  if (*(v5 + 120) == 1)
  {
    return std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((v5 + 128), v14);
  }

  IPC::Connection::sendMessageImpl(*(v5 + 40), v18, 0, 0);
  result = v18[0];
  v18[0] = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v15);
    return bmalloc::api::tzoneFree(v16, v17);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL13GetUniformuivEN6WebKit23RemoteGraphicsContextGLES8_FvjiyONS_17CompletionHandlerIFvNSt3__14spanIKjLm18446744073709551615EEEEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJSD_EED1Ev(void *a1)
{
  *a1 = &unk_1F10ECAD0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL13GetUniformuivEN6WebKit23RemoteGraphicsContextGLES8_FvjiyONS_17CompletionHandlerIFvNSt3__14spanIKjLm18446744073709551615EEEEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJSD_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10ECAD0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL13GetUniformuivEN6WebKit23RemoteGraphicsContextGLES8_FvjiyONS_17CompletionHandlerIFvNSt3__14spanIKjLm18446744073709551615EEEEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJSD_EE4callESD_(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (*(v5 + 120) != 1)
  {
    goto LABEL_9;
  }

  v7 = *(v5 + 56);
  v8 = *(v5 + 64);
  v9 = *(v8 + 8);
  if (v7 == 1)
  {
    if (v9 < 0x100)
    {
LABEL_17:
      __break(1u);
    }

LABEL_18:
    result = 1067;
    __break(0xC471u);
    return result;
  }

  v10 = v9 >= 0x100;
  v11 = (v9 - 256);
  if (!v10)
  {
    goto LABEL_17;
  }

  v12 = *(v8 + 16);
  if (v7)
  {
    v10 = v11 >= v7 - 1;
    v11 = (v7 - 1);
    if (!v10)
    {
      goto LABEL_17;
    }
  }

  v18[2] = v11;
  if (v11 <= 1)
  {
    goto LABEL_18;
  }

  *(v12 + 256) = 3199;
  v18[0] = (v12 + 258);
  v18[1] = (v11 - 2);
  result = IPC::ArgumentCoder<std::span<unsigned int const,18446744073709551615ul>,void>::encode<IPC::StreamConnectionEncoder>(v18, a2, a3);
  if (v18[0])
  {
    return result;
  }

  *(v12 + 256) = 3197;
LABEL_9:
  v14 = IPC::Encoder::operator new(0x238, a2);
  *v14 = 3199;
  *(v14 + 2) = 0;
  *(v14 + 3) = 0;
  *(v14 + 1) = v6;
  *(v14 + 68) = 0;
  *(v14 + 70) = 0;
  *(v14 + 69) = 0;
  IPC::Encoder::encodeHeader(v14);
  v18[0] = v14;
  IPC::ArgumentCoder<std::span<float const,18446744073709551615ul>,void>::encode<IPC::Encoder>(v14, a2, a3);
  if (*(v5 + 120) == 1)
  {
    return std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((v5 + 128), v14);
  }

  IPC::Connection::sendMessageImpl(*(v5 + 40), v18, 0, 0);
  result = v18[0];
  v18[0] = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v15);
    return bmalloc::api::tzoneFree(v16, v17);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL18GetUniformLocationEN6WebKit23RemoteGraphicsContextGLES8_FvjONS_6StringEONS_17CompletionHandlerIFviEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJiEED1Ev(void *a1)
{
  *a1 = &unk_1F10ECAF8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL18GetUniformLocationEN6WebKit23RemoteGraphicsContextGLES8_FvjONS_6StringEONS_17CompletionHandlerIFviEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJiEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10ECAF8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL18GetUniformLocationEN6WebKit23RemoteGraphicsContextGLES8_FvjONS_6StringEONS_17CompletionHandlerIFviEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJiEE4callEi(uint64_t result, void *a2)
{
  v2 = a2;
  v4 = *(result + 8);
  v3 = *(result + 16);
  if (*(v3 + 120) != 1)
  {
    goto LABEL_14;
  }

  v6 = *(v3 + 56);
  v5 = *(v3 + 64);
  v7 = *(v5 + 8);
  if (v6 != 1)
  {
    v8 = v7 >= 0x100;
    v9 = v7 - 256;
    if (!v8)
    {
      goto LABEL_12;
    }

    v5 = *(v5 + 16);
    if (v6)
    {
      v8 = v9 >= v6 - 1;
      v9 = v6 - 1;
      if (!v8)
      {
        goto LABEL_12;
      }
    }

    if (v9 > 1)
    {
      *(v5 + 256) = 3199;
      v10 = -(v5 + 258);
      if (v9 - 2 >= (v10 & 3 | 4uLL))
      {
        *(v5 + 258 + (v10 & 3)) = a2;
        return result;
      }

      goto LABEL_13;
    }

LABEL_19:
    result = 1067;
    __break(0xC471u);
    return result;
  }

  if (v7 > 0xFF)
  {
    goto LABEL_19;
  }

LABEL_12:
  __break(1u);
LABEL_13:
  *(v5 + 256) = 3197;
LABEL_14:
  v11 = IPC::Encoder::operator new(0x238, a2);
  *v11 = 3199;
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *(v11 + 1) = v4;
  *(v11 + 68) = 0;
  *(v11 + 70) = 0;
  *(v11 + 69) = 0;
  IPC::Encoder::encodeHeader(v11);
  v15 = v11;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v11, v2);
  if (*(v3 + 120) == 1)
  {
    return std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((v3 + 128), v11);
  }

  IPC::Connection::sendMessageImpl(*(v3 + 40), &v15, 0, 0);
  result = v15;
  v15 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v12);
    return bmalloc::api::tzoneFree(v13, v14);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL21GetVertexAttribOffsetEN6WebKit23RemoteGraphicsContextGLES8_FvjjONS_17CompletionHandlerIFvyEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJyEED1Ev(void *a1)
{
  *a1 = &unk_1F10ECB20;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL21GetVertexAttribOffsetEN6WebKit23RemoteGraphicsContextGLES8_FvjjONS_17CompletionHandlerIFvyEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJyEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10ECB20;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL21GetVertexAttribOffsetEN6WebKit23RemoteGraphicsContextGLES8_FvjjONS_17CompletionHandlerIFvyEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJyEE4callEy(uint64_t result, void *a2)
{
  v4 = *(result + 8);
  v3 = *(result + 16);
  if (*(v3 + 120) != 1)
  {
    goto LABEL_14;
  }

  v6 = *(v3 + 56);
  v5 = *(v3 + 64);
  v7 = *(v5 + 8);
  if (v6 != 1)
  {
    v8 = v7 >= 0x100;
    v9 = v7 - 256;
    if (!v8)
    {
      goto LABEL_12;
    }

    v5 = *(v5 + 16);
    if (v6)
    {
      v8 = v9 >= v6 - 1;
      v9 = v6 - 1;
      if (!v8)
      {
        goto LABEL_12;
      }
    }

    if (v9 > 1)
    {
      *(v5 + 256) = 3199;
      v10 = -(v5 + 258);
      if (v9 - 2 >= (v10 & 7 | 8uLL))
      {
        *(v5 + 258 + (v10 & 7)) = a2;
        return result;
      }

      goto LABEL_13;
    }

LABEL_19:
    result = 1067;
    __break(0xC471u);
    return result;
  }

  if (v7 > 0xFF)
  {
    goto LABEL_19;
  }

LABEL_12:
  __break(1u);
LABEL_13:
  *(v5 + 256) = 3197;
LABEL_14:
  v11 = IPC::Encoder::operator new(0x238, a2);
  *v11 = 3199;
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *(v11 + 1) = v4;
  *(v11 + 68) = 0;
  *(v11 + 70) = 0;
  *(v11 + 69) = 0;
  IPC::Encoder::encodeHeader(v11);
  v15 = v11;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v11, a2);
  if (*(v3 + 120) == 1)
  {
    return std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((v3 + 128), v11);
  }

  IPC::Connection::sendMessageImpl(*(v3 + 40), &v15, 0, 0);
  result = v15;
  v15 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v12);
    return bmalloc::api::tzoneFree(v13, v14);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL8IsBufferEN6WebKit23RemoteGraphicsContextGLES8_FvjONS_17CompletionHandlerIFvbEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJbEED1Ev(void *a1)
{
  *a1 = &unk_1F10ECB48;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL8IsBufferEN6WebKit23RemoteGraphicsContextGLES8_FvjONS_17CompletionHandlerIFvbEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJbEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10ECB48;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL8IsBufferEN6WebKit23RemoteGraphicsContextGLES8_FvjONS_17CompletionHandlerIFvbEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJbEE4callEb(uint64_t result, void *a2)
{
  v13 = a2;
  v3 = *(result + 8);
  v2 = *(result + 16);
  if (*(v2 + 120) != 1)
  {
    goto LABEL_14;
  }

  v5 = *(v2 + 56);
  v4 = *(v2 + 64);
  v6 = *(v4 + 8);
  if (v5 != 1)
  {
    v7 = v6 >= 0x100;
    v8 = v6 - 256;
    if (!v7)
    {
      goto LABEL_12;
    }

    v4 = *(v4 + 16);
    if (v5)
    {
      v7 = v8 >= v5 - 1;
      v8 = v5 - 1;
      if (!v7)
      {
        goto LABEL_12;
      }
    }

    if (v8 > 1)
    {
      *(v4 + 256) = 3199;
      if (v8 != 2)
      {
        *(v4 + 258) = a2;
        return result;
      }

      goto LABEL_13;
    }

LABEL_19:
    result = 1067;
    __break(0xC471u);
    return result;
  }

  if (v6 > 0xFF)
  {
    goto LABEL_19;
  }

LABEL_12:
  __break(1u);
LABEL_13:
  *(v4 + 256) = 3197;
LABEL_14:
  v9 = IPC::Encoder::operator new(0x238, a2);
  *v9 = 3199;
  *(v9 + 2) = 0;
  *(v9 + 3) = 0;
  *(v9 + 1) = v3;
  *(v9 + 68) = 0;
  *(v9 + 70) = 0;
  *(v9 + 69) = 0;
  IPC::Encoder::encodeHeader(v9);
  v14 = v9;
  IPC::Encoder::operator<<<BOOL>(v9, &v13);
  if (*(v2 + 120) == 1)
  {
    return std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((v2 + 128), v9);
  }

  IPC::Connection::sendMessageImpl(*(v2 + 40), &v14, 0, 0);
  result = v14;
  v14 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v10);
    return bmalloc::api::tzoneFree(v11, v12);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL9IsEnabledEN6WebKit23RemoteGraphicsContextGLES8_FvjONS_17CompletionHandlerIFvbEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJbEED1Ev(void *a1)
{
  *a1 = &unk_1F10ECB70;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL9IsEnabledEN6WebKit23RemoteGraphicsContextGLES8_FvjONS_17CompletionHandlerIFvbEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJbEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10ECB70;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL9IsEnabledEN6WebKit23RemoteGraphicsContextGLES8_FvjONS_17CompletionHandlerIFvbEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJbEE4callEb(uint64_t result, void *a2)
{
  v13 = a2;
  v3 = *(result + 8);
  v2 = *(result + 16);
  if (*(v2 + 120) != 1)
  {
    goto LABEL_14;
  }

  v5 = *(v2 + 56);
  v4 = *(v2 + 64);
  v6 = *(v4 + 8);
  if (v5 != 1)
  {
    v7 = v6 >= 0x100;
    v8 = v6 - 256;
    if (!v7)
    {
      goto LABEL_12;
    }

    v4 = *(v4 + 16);
    if (v5)
    {
      v7 = v8 >= v5 - 1;
      v8 = v5 - 1;
      if (!v7)
      {
        goto LABEL_12;
      }
    }

    if (v8 > 1)
    {
      *(v4 + 256) = 3199;
      if (v8 != 2)
      {
        *(v4 + 258) = a2;
        return result;
      }

      goto LABEL_13;
    }

LABEL_19:
    result = 1067;
    __break(0xC471u);
    return result;
  }

  if (v6 > 0xFF)
  {
    goto LABEL_19;
  }

LABEL_12:
  __break(1u);
LABEL_13:
  *(v4 + 256) = 3197;
LABEL_14:
  v9 = IPC::Encoder::operator new(0x238, a2);
  *v9 = 3199;
  *(v9 + 2) = 0;
  *(v9 + 3) = 0;
  *(v9 + 1) = v3;
  *(v9 + 68) = 0;
  *(v9 + 70) = 0;
  *(v9 + 69) = 0;
  IPC::Encoder::encodeHeader(v9);
  v14 = v9;
  IPC::Encoder::operator<<<BOOL>(v9, &v13);
  if (*(v2 + 120) == 1)
  {
    return std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((v2 + 128), v9);
  }

  IPC::Connection::sendMessageImpl(*(v2 + 40), &v14, 0, 0);
  result = v14;
  v14 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v10);
    return bmalloc::api::tzoneFree(v11, v12);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL13IsFramebufferEN6WebKit23RemoteGraphicsContextGLES8_FvjONS_17CompletionHandlerIFvbEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJbEED1Ev(void *a1)
{
  *a1 = &unk_1F10ECB98;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL13IsFramebufferEN6WebKit23RemoteGraphicsContextGLES8_FvjONS_17CompletionHandlerIFvbEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJbEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10ECB98;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL13IsFramebufferEN6WebKit23RemoteGraphicsContextGLES8_FvjONS_17CompletionHandlerIFvbEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJbEE4callEb(uint64_t result, void *a2)
{
  v13 = a2;
  v3 = *(result + 8);
  v2 = *(result + 16);
  if (*(v2 + 120) != 1)
  {
    goto LABEL_14;
  }

  v5 = *(v2 + 56);
  v4 = *(v2 + 64);
  v6 = *(v4 + 8);
  if (v5 != 1)
  {
    v7 = v6 >= 0x100;
    v8 = v6 - 256;
    if (!v7)
    {
      goto LABEL_12;
    }

    v4 = *(v4 + 16);
    if (v5)
    {
      v7 = v8 >= v5 - 1;
      v8 = v5 - 1;
      if (!v7)
      {
        goto LABEL_12;
      }
    }

    if (v8 > 1)
    {
      *(v4 + 256) = 3199;
      if (v8 != 2)
      {
        *(v4 + 258) = a2;
        return result;
      }

      goto LABEL_13;
    }

LABEL_19:
    result = 1067;
    __break(0xC471u);
    return result;
  }

  if (v6 > 0xFF)
  {
    goto LABEL_19;
  }

LABEL_12:
  __break(1u);
LABEL_13:
  *(v4 + 256) = 3197;
LABEL_14:
  v9 = IPC::Encoder::operator new(0x238, a2);
  *v9 = 3199;
  *(v9 + 2) = 0;
  *(v9 + 3) = 0;
  *(v9 + 1) = v3;
  *(v9 + 68) = 0;
  *(v9 + 70) = 0;
  *(v9 + 69) = 0;
  IPC::Encoder::encodeHeader(v9);
  v14 = v9;
  IPC::Encoder::operator<<<BOOL>(v9, &v13);
  if (*(v2 + 120) == 1)
  {
    return std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((v2 + 128), v9);
  }

  IPC::Connection::sendMessageImpl(*(v2 + 40), &v14, 0, 0);
  result = v14;
  v14 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v10);
    return bmalloc::api::tzoneFree(v11, v12);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL9IsProgramEN6WebKit23RemoteGraphicsContextGLES8_FvjONS_17CompletionHandlerIFvbEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJbEED1Ev(void *a1)
{
  *a1 = &unk_1F10ECBC0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL9IsProgramEN6WebKit23RemoteGraphicsContextGLES8_FvjONS_17CompletionHandlerIFvbEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJbEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10ECBC0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL9IsProgramEN6WebKit23RemoteGraphicsContextGLES8_FvjONS_17CompletionHandlerIFvbEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJbEE4callEb(uint64_t result, void *a2)
{
  v13 = a2;
  v3 = *(result + 8);
  v2 = *(result + 16);
  if (*(v2 + 120) != 1)
  {
    goto LABEL_14;
  }

  v5 = *(v2 + 56);
  v4 = *(v2 + 64);
  v6 = *(v4 + 8);
  if (v5 != 1)
  {
    v7 = v6 >= 0x100;
    v8 = v6 - 256;
    if (!v7)
    {
      goto LABEL_12;
    }

    v4 = *(v4 + 16);
    if (v5)
    {
      v7 = v8 >= v5 - 1;
      v8 = v5 - 1;
      if (!v7)
      {
        goto LABEL_12;
      }
    }

    if (v8 > 1)
    {
      *(v4 + 256) = 3199;
      if (v8 != 2)
      {
        *(v4 + 258) = a2;
        return result;
      }

      goto LABEL_13;
    }

LABEL_19:
    result = 1067;
    __break(0xC471u);
    return result;
  }

  if (v6 > 0xFF)
  {
    goto LABEL_19;
  }

LABEL_12:
  __break(1u);
LABEL_13:
  *(v4 + 256) = 3197;
LABEL_14:
  v9 = IPC::Encoder::operator new(0x238, a2);
  *v9 = 3199;
  *(v9 + 2) = 0;
  *(v9 + 3) = 0;
  *(v9 + 1) = v3;
  *(v9 + 68) = 0;
  *(v9 + 70) = 0;
  *(v9 + 69) = 0;
  IPC::Encoder::encodeHeader(v9);
  v14 = v9;
  IPC::Encoder::operator<<<BOOL>(v9, &v13);
  if (*(v2 + 120) == 1)
  {
    return std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((v2 + 128), v9);
  }

  IPC::Connection::sendMessageImpl(*(v2 + 40), &v14, 0, 0);
  result = v14;
  v14 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v10);
    return bmalloc::api::tzoneFree(v11, v12);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL14IsRenderbufferEN6WebKit23RemoteGraphicsContextGLES8_FvjONS_17CompletionHandlerIFvbEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJbEED1Ev(void *a1)
{
  *a1 = &unk_1F10ECBE8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL14IsRenderbufferEN6WebKit23RemoteGraphicsContextGLES8_FvjONS_17CompletionHandlerIFvbEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJbEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10ECBE8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL14IsRenderbufferEN6WebKit23RemoteGraphicsContextGLES8_FvjONS_17CompletionHandlerIFvbEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJbEE4callEb(uint64_t result, void *a2)
{
  v13 = a2;
  v3 = *(result + 8);
  v2 = *(result + 16);
  if (*(v2 + 120) != 1)
  {
    goto LABEL_14;
  }

  v5 = *(v2 + 56);
  v4 = *(v2 + 64);
  v6 = *(v4 + 8);
  if (v5 != 1)
  {
    v7 = v6 >= 0x100;
    v8 = v6 - 256;
    if (!v7)
    {
      goto LABEL_12;
    }

    v4 = *(v4 + 16);
    if (v5)
    {
      v7 = v8 >= v5 - 1;
      v8 = v5 - 1;
      if (!v7)
      {
        goto LABEL_12;
      }
    }

    if (v8 > 1)
    {
      *(v4 + 256) = 3199;
      if (v8 != 2)
      {
        *(v4 + 258) = a2;
        return result;
      }

      goto LABEL_13;
    }

LABEL_19:
    result = 1067;
    __break(0xC471u);
    return result;
  }

  if (v6 > 0xFF)
  {
    goto LABEL_19;
  }

LABEL_12:
  __break(1u);
LABEL_13:
  *(v4 + 256) = 3197;
LABEL_14:
  v9 = IPC::Encoder::operator new(0x238, a2);
  *v9 = 3199;
  *(v9 + 2) = 0;
  *(v9 + 3) = 0;
  *(v9 + 1) = v3;
  *(v9 + 68) = 0;
  *(v9 + 70) = 0;
  *(v9 + 69) = 0;
  IPC::Encoder::encodeHeader(v9);
  v14 = v9;
  IPC::Encoder::operator<<<BOOL>(v9, &v13);
  if (*(v2 + 120) == 1)
  {
    return std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((v2 + 128), v9);
  }

  IPC::Connection::sendMessageImpl(*(v2 + 40), &v14, 0, 0);
  result = v14;
  v14 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v10);
    return bmalloc::api::tzoneFree(v11, v12);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL8IsShaderEN6WebKit23RemoteGraphicsContextGLES8_FvjONS_17CompletionHandlerIFvbEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJbEED1Ev(void *a1)
{
  *a1 = &unk_1F10ECC10;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL8IsShaderEN6WebKit23RemoteGraphicsContextGLES8_FvjONS_17CompletionHandlerIFvbEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJbEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10ECC10;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL8IsShaderEN6WebKit23RemoteGraphicsContextGLES8_FvjONS_17CompletionHandlerIFvbEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJbEE4callEb(uint64_t result, void *a2)
{
  v13 = a2;
  v3 = *(result + 8);
  v2 = *(result + 16);
  if (*(v2 + 120) != 1)
  {
    goto LABEL_14;
  }

  v5 = *(v2 + 56);
  v4 = *(v2 + 64);
  v6 = *(v4 + 8);
  if (v5 != 1)
  {
    v7 = v6 >= 0x100;
    v8 = v6 - 256;
    if (!v7)
    {
      goto LABEL_12;
    }

    v4 = *(v4 + 16);
    if (v5)
    {
      v7 = v8 >= v5 - 1;
      v8 = v5 - 1;
      if (!v7)
      {
        goto LABEL_12;
      }
    }

    if (v8 > 1)
    {
      *(v4 + 256) = 3199;
      if (v8 != 2)
      {
        *(v4 + 258) = a2;
        return result;
      }

      goto LABEL_13;
    }

LABEL_19:
    result = 1067;
    __break(0xC471u);
    return result;
  }

  if (v6 > 0xFF)
  {
    goto LABEL_19;
  }

LABEL_12:
  __break(1u);
LABEL_13:
  *(v4 + 256) = 3197;
LABEL_14:
  v9 = IPC::Encoder::operator new(0x238, a2);
  *v9 = 3199;
  *(v9 + 2) = 0;
  *(v9 + 3) = 0;
  *(v9 + 1) = v3;
  *(v9 + 68) = 0;
  *(v9 + 70) = 0;
  *(v9 + 69) = 0;
  IPC::Encoder::encodeHeader(v9);
  v14 = v9;
  IPC::Encoder::operator<<<BOOL>(v9, &v13);
  if (*(v2 + 120) == 1)
  {
    return std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((v2 + 128), v9);
  }

  IPC::Connection::sendMessageImpl(*(v2 + 40), &v14, 0, 0);
  result = v14;
  v14 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v10);
    return bmalloc::api::tzoneFree(v11, v12);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL9IsTextureEN6WebKit23RemoteGraphicsContextGLES8_FvjONS_17CompletionHandlerIFvbEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJbEED1Ev(void *a1)
{
  *a1 = &unk_1F10ECC38;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL9IsTextureEN6WebKit23RemoteGraphicsContextGLES8_FvjONS_17CompletionHandlerIFvbEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJbEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10ECC38;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL9IsTextureEN6WebKit23RemoteGraphicsContextGLES8_FvjONS_17CompletionHandlerIFvbEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJbEE4callEb(uint64_t result, void *a2)
{
  v13 = a2;
  v3 = *(result + 8);
  v2 = *(result + 16);
  if (*(v2 + 120) != 1)
  {
    goto LABEL_14;
  }

  v5 = *(v2 + 56);
  v4 = *(v2 + 64);
  v6 = *(v4 + 8);
  if (v5 != 1)
  {
    v7 = v6 >= 0x100;
    v8 = v6 - 256;
    if (!v7)
    {
      goto LABEL_12;
    }

    v4 = *(v4 + 16);
    if (v5)
    {
      v7 = v8 >= v5 - 1;
      v8 = v5 - 1;
      if (!v7)
      {
        goto LABEL_12;
      }
    }

    if (v8 > 1)
    {
      *(v4 + 256) = 3199;
      if (v8 != 2)
      {
        *(v4 + 258) = a2;
        return result;
      }

      goto LABEL_13;
    }

LABEL_19:
    result = 1067;
    __break(0xC471u);
    return result;
  }

  if (v6 > 0xFF)
  {
    goto LABEL_19;
  }

LABEL_12:
  __break(1u);
LABEL_13:
  *(v4 + 256) = 3197;
LABEL_14:
  v9 = IPC::Encoder::operator new(0x238, a2);
  *v9 = 3199;
  *(v9 + 2) = 0;
  *(v9 + 3) = 0;
  *(v9 + 1) = v3;
  *(v9 + 68) = 0;
  *(v9 + 70) = 0;
  *(v9 + 69) = 0;
  IPC::Encoder::encodeHeader(v9);
  v14 = v9;
  IPC::Encoder::operator<<<BOOL>(v9, &v13);
  if (*(v2 + 120) == 1)
  {
    return std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((v2 + 128), v9);
  }

  IPC::Connection::sendMessageImpl(*(v2 + 40), &v14, 0, 0);
  result = v14;
  v14 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v10);
    return bmalloc::api::tzoneFree(v11, v12);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL13IsVertexArrayEN6WebKit23RemoteGraphicsContextGLES8_FvjONS_17CompletionHandlerIFvbEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJbEED1Ev(void *a1)
{
  *a1 = &unk_1F10ECC60;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL13IsVertexArrayEN6WebKit23RemoteGraphicsContextGLES8_FvjONS_17CompletionHandlerIFvbEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJbEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10ECC60;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL13IsVertexArrayEN6WebKit23RemoteGraphicsContextGLES8_FvjONS_17CompletionHandlerIFvbEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJbEE4callEb(uint64_t result, void *a2)
{
  v13 = a2;
  v3 = *(result + 8);
  v2 = *(result + 16);
  if (*(v2 + 120) != 1)
  {
    goto LABEL_14;
  }

  v5 = *(v2 + 56);
  v4 = *(v2 + 64);
  v6 = *(v4 + 8);
  if (v5 != 1)
  {
    v7 = v6 >= 0x100;
    v8 = v6 - 256;
    if (!v7)
    {
      goto LABEL_12;
    }

    v4 = *(v4 + 16);
    if (v5)
    {
      v7 = v8 >= v5 - 1;
      v8 = v5 - 1;
      if (!v7)
      {
        goto LABEL_12;
      }
    }

    if (v8 > 1)
    {
      *(v4 + 256) = 3199;
      if (v8 != 2)
      {
        *(v4 + 258) = a2;
        return result;
      }

      goto LABEL_13;
    }

LABEL_19:
    result = 1067;
    __break(0xC471u);
    return result;
  }

  if (v6 > 0xFF)
  {
    goto LABEL_19;
  }

LABEL_12:
  __break(1u);
LABEL_13:
  *(v4 + 256) = 3197;
LABEL_14:
  v9 = IPC::Encoder::operator new(0x238, a2);
  *v9 = 3199;
  *(v9 + 2) = 0;
  *(v9 + 3) = 0;
  *(v9 + 1) = v3;
  *(v9 + 68) = 0;
  *(v9 + 70) = 0;
  *(v9 + 69) = 0;
  IPC::Encoder::encodeHeader(v9);
  v14 = v9;
  IPC::Encoder::operator<<<BOOL>(v9, &v13);
  if (*(v2 + 120) == 1)
  {
    return std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((v2 + 128), v9);
  }

  IPC::Connection::sendMessageImpl(*(v2 + 40), &v14, 0, 0);
  result = v14;
  v14 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v10);
    return bmalloc::api::tzoneFree(v11, v12);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL19GetFragDataLocationEN6WebKit23RemoteGraphicsContextGLES8_FvjONS_6StringEONS_17CompletionHandlerIFviEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJiEED1Ev(void *a1)
{
  *a1 = &unk_1F10ECC88;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL19GetFragDataLocationEN6WebKit23RemoteGraphicsContextGLES8_FvjONS_6StringEONS_17CompletionHandlerIFviEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJiEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10ECC88;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL19GetFragDataLocationEN6WebKit23RemoteGraphicsContextGLES8_FvjONS_6StringEONS_17CompletionHandlerIFviEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJiEE4callEi(uint64_t result, void *a2)
{
  v2 = a2;
  v4 = *(result + 8);
  v3 = *(result + 16);
  if (*(v3 + 120) != 1)
  {
    goto LABEL_14;
  }

  v6 = *(v3 + 56);
  v5 = *(v3 + 64);
  v7 = *(v5 + 8);
  if (v6 != 1)
  {
    v8 = v7 >= 0x100;
    v9 = v7 - 256;
    if (!v8)
    {
      goto LABEL_12;
    }

    v5 = *(v5 + 16);
    if (v6)
    {
      v8 = v9 >= v6 - 1;
      v9 = v6 - 1;
      if (!v8)
      {
        goto LABEL_12;
      }
    }

    if (v9 > 1)
    {
      *(v5 + 256) = 3199;
      v10 = -(v5 + 258);
      if (v9 - 2 >= (v10 & 3 | 4uLL))
      {
        *(v5 + 258 + (v10 & 3)) = a2;
        return result;
      }

      goto LABEL_13;
    }

LABEL_19:
    result = 1067;
    __break(0xC471u);
    return result;
  }

  if (v7 > 0xFF)
  {
    goto LABEL_19;
  }

LABEL_12:
  __break(1u);
LABEL_13:
  *(v5 + 256) = 3197;
LABEL_14:
  v11 = IPC::Encoder::operator new(0x238, a2);
  *v11 = 3199;
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *(v11 + 1) = v4;
  *(v11 + 68) = 0;
  *(v11 + 70) = 0;
  *(v11 + 69) = 0;
  IPC::Encoder::encodeHeader(v11);
  v15 = v11;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v11, v2);
  if (*(v3 + 120) == 1)
  {
    return std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((v3 + 128), v11);
  }

  IPC::Connection::sendMessageImpl(*(v3 + 40), &v15, 0, 0);
  result = v15;
  v15 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v12);
    return bmalloc::api::tzoneFree(v13, v14);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL7IsQueryEN6WebKit23RemoteGraphicsContextGLES8_FvjONS_17CompletionHandlerIFvbEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJbEED1Ev(void *a1)
{
  *a1 = &unk_1F10ECCB0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL7IsQueryEN6WebKit23RemoteGraphicsContextGLES8_FvjONS_17CompletionHandlerIFvbEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJbEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10ECCB0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL7IsQueryEN6WebKit23RemoteGraphicsContextGLES8_FvjONS_17CompletionHandlerIFvbEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJbEE4callEb(uint64_t result, void *a2)
{
  v13 = a2;
  v3 = *(result + 8);
  v2 = *(result + 16);
  if (*(v2 + 120) != 1)
  {
    goto LABEL_14;
  }

  v5 = *(v2 + 56);
  v4 = *(v2 + 64);
  v6 = *(v4 + 8);
  if (v5 != 1)
  {
    v7 = v6 >= 0x100;
    v8 = v6 - 256;
    if (!v7)
    {
      goto LABEL_12;
    }

    v4 = *(v4 + 16);
    if (v5)
    {
      v7 = v8 >= v5 - 1;
      v8 = v5 - 1;
      if (!v7)
      {
        goto LABEL_12;
      }
    }

    if (v8 > 1)
    {
      *(v4 + 256) = 3199;
      if (v8 != 2)
      {
        *(v4 + 258) = a2;
        return result;
      }

      goto LABEL_13;
    }

LABEL_19:
    result = 1067;
    __break(0xC471u);
    return result;
  }

  if (v6 > 0xFF)
  {
    goto LABEL_19;
  }

LABEL_12:
  __break(1u);
LABEL_13:
  *(v4 + 256) = 3197;
LABEL_14:
  v9 = IPC::Encoder::operator new(0x238, a2);
  *v9 = 3199;
  *(v9 + 2) = 0;
  *(v9 + 3) = 0;
  *(v9 + 1) = v3;
  *(v9 + 68) = 0;
  *(v9 + 70) = 0;
  *(v9 + 69) = 0;
  IPC::Encoder::encodeHeader(v9);
  v14 = v9;
  IPC::Encoder::operator<<<BOOL>(v9, &v13);
  if (*(v2 + 120) == 1)
  {
    return std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((v2 + 128), v9);
  }

  IPC::Connection::sendMessageImpl(*(v2 + 40), &v14, 0, 0);
  result = v14;
  v14 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v10);
    return bmalloc::api::tzoneFree(v11, v12);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL8GetQueryEN6WebKit23RemoteGraphicsContextGLES8_FvjjONS_17CompletionHandlerIFviEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJiEED1Ev(void *a1)
{
  *a1 = &unk_1F10ECCD8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL8GetQueryEN6WebKit23RemoteGraphicsContextGLES8_FvjjONS_17CompletionHandlerIFviEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJiEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10ECCD8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL8GetQueryEN6WebKit23RemoteGraphicsContextGLES8_FvjjONS_17CompletionHandlerIFviEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJiEE4callEi(uint64_t result, void *a2)
{
  v2 = a2;
  v4 = *(result + 8);
  v3 = *(result + 16);
  if (*(v3 + 120) != 1)
  {
    goto LABEL_14;
  }

  v6 = *(v3 + 56);
  v5 = *(v3 + 64);
  v7 = *(v5 + 8);
  if (v6 != 1)
  {
    v8 = v7 >= 0x100;
    v9 = v7 - 256;
    if (!v8)
    {
      goto LABEL_12;
    }

    v5 = *(v5 + 16);
    if (v6)
    {
      v8 = v9 >= v6 - 1;
      v9 = v6 - 1;
      if (!v8)
      {
        goto LABEL_12;
      }
    }

    if (v9 > 1)
    {
      *(v5 + 256) = 3199;
      v10 = -(v5 + 258);
      if (v9 - 2 >= (v10 & 3 | 4uLL))
      {
        *(v5 + 258 + (v10 & 3)) = a2;
        return result;
      }

      goto LABEL_13;
    }

LABEL_19:
    result = 1067;
    __break(0xC471u);
    return result;
  }

  if (v7 > 0xFF)
  {
    goto LABEL_19;
  }

LABEL_12:
  __break(1u);
LABEL_13:
  *(v5 + 256) = 3197;
LABEL_14:
  v11 = IPC::Encoder::operator new(0x238, a2);
  *v11 = 3199;
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *(v11 + 1) = v4;
  *(v11 + 68) = 0;
  *(v11 + 70) = 0;
  *(v11 + 69) = 0;
  IPC::Encoder::encodeHeader(v11);
  v15 = v11;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v11, v2);
  if (*(v3 + 120) == 1)
  {
    return std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((v3 + 128), v11);
  }

  IPC::Connection::sendMessageImpl(*(v3 + 40), &v15, 0, 0);
  result = v15;
  v15 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v12);
    return bmalloc::api::tzoneFree(v13, v14);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL16GetQueryObjectuiEN6WebKit23RemoteGraphicsContextGLES8_FvjjONS_17CompletionHandlerIFvjEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJjEED1Ev(void *a1)
{
  *a1 = &unk_1F10ECD00;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL16GetQueryObjectuiEN6WebKit23RemoteGraphicsContextGLES8_FvjjONS_17CompletionHandlerIFvjEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJjEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10ECD00;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL16GetQueryObjectuiEN6WebKit23RemoteGraphicsContextGLES8_FvjjONS_17CompletionHandlerIFvjEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJjEE4callEj(uint64_t result, void *a2)
{
  v2 = a2;
  v4 = *(result + 8);
  v3 = *(result + 16);
  if (*(v3 + 120) != 1)
  {
    goto LABEL_14;
  }

  v6 = *(v3 + 56);
  v5 = *(v3 + 64);
  v7 = *(v5 + 8);
  if (v6 != 1)
  {
    v8 = v7 >= 0x100;
    v9 = v7 - 256;
    if (!v8)
    {
      goto LABEL_12;
    }

    v5 = *(v5 + 16);
    if (v6)
    {
      v8 = v9 >= v6 - 1;
      v9 = v6 - 1;
      if (!v8)
      {
        goto LABEL_12;
      }
    }

    if (v9 > 1)
    {
      *(v5 + 256) = 3199;
      v10 = -(v5 + 258);
      if (v9 - 2 >= (v10 & 3 | 4uLL))
      {
        *(v5 + 258 + (v10 & 3)) = a2;
        return result;
      }

      goto LABEL_13;
    }

LABEL_19:
    result = 1067;
    __break(0xC471u);
    return result;
  }

  if (v7 > 0xFF)
  {
    goto LABEL_19;
  }

LABEL_12:
  __break(1u);
LABEL_13:
  *(v5 + 256) = 3197;
LABEL_14:
  v11 = IPC::Encoder::operator new(0x238, a2);
  *v11 = 3199;
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *(v11 + 1) = v4;
  *(v11 + 68) = 0;
  *(v11 + 70) = 0;
  *(v11 + 69) = 0;
  IPC::Encoder::encodeHeader(v11);
  v15 = v11;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v11, v2);
  if (*(v3 + 120) == 1)
  {
    return std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((v3 + 128), v11);
  }

  IPC::Connection::sendMessageImpl(*(v3 + 40), &v15, 0, 0);
  result = v15;
  v15 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v12);
    return bmalloc::api::tzoneFree(v13, v14);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL9IsSamplerEN6WebKit23RemoteGraphicsContextGLES8_FvjONS_17CompletionHandlerIFvbEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJbEED1Ev(void *a1)
{
  *a1 = &unk_1F10ECD28;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL9IsSamplerEN6WebKit23RemoteGraphicsContextGLES8_FvjONS_17CompletionHandlerIFvbEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJbEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10ECD28;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL9IsSamplerEN6WebKit23RemoteGraphicsContextGLES8_FvjONS_17CompletionHandlerIFvbEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJbEE4callEb(uint64_t result, void *a2)
{
  v13 = a2;
  v3 = *(result + 8);
  v2 = *(result + 16);
  if (*(v2 + 120) != 1)
  {
    goto LABEL_14;
  }

  v5 = *(v2 + 56);
  v4 = *(v2 + 64);
  v6 = *(v4 + 8);
  if (v5 != 1)
  {
    v7 = v6 >= 0x100;
    v8 = v6 - 256;
    if (!v7)
    {
      goto LABEL_12;
    }

    v4 = *(v4 + 16);
    if (v5)
    {
      v7 = v8 >= v5 - 1;
      v8 = v5 - 1;
      if (!v7)
      {
        goto LABEL_12;
      }
    }

    if (v8 > 1)
    {
      *(v4 + 256) = 3199;
      if (v8 != 2)
      {
        *(v4 + 258) = a2;
        return result;
      }

      goto LABEL_13;
    }

LABEL_19:
    result = 1067;
    __break(0xC471u);
    return result;
  }

  if (v6 > 0xFF)
  {
    goto LABEL_19;
  }

LABEL_12:
  __break(1u);
LABEL_13:
  *(v4 + 256) = 3197;
LABEL_14:
  v9 = IPC::Encoder::operator new(0x238, a2);
  *v9 = 3199;
  *(v9 + 2) = 0;
  *(v9 + 3) = 0;
  *(v9 + 1) = v3;
  *(v9 + 68) = 0;
  *(v9 + 70) = 0;
  *(v9 + 69) = 0;
  IPC::Encoder::encodeHeader(v9);
  v14 = v9;
  IPC::Encoder::operator<<<BOOL>(v9, &v13);
  if (*(v2 + 120) == 1)
  {
    return std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((v2 + 128), v9);
  }

  IPC::Connection::sendMessageImpl(*(v2 + 40), &v14, 0, 0);
  result = v14;
  v14 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v10);
    return bmalloc::api::tzoneFree(v11, v12);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL20GetSamplerParameterfEN6WebKit23RemoteGraphicsContextGLES8_FvjjONS_17CompletionHandlerIFvfEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJfEED1Ev(void *a1)
{
  *a1 = &unk_1F10ECD50;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL20GetSamplerParameterfEN6WebKit23RemoteGraphicsContextGLES8_FvjjONS_17CompletionHandlerIFvfEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJfEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10ECD50;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL20GetSamplerParameterfEN6WebKit23RemoteGraphicsContextGLES8_FvjjONS_17CompletionHandlerIFvfEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJfEE4callEf(uint64_t result, void *a2, float a3)
{
  v5 = *(result + 8);
  v4 = *(result + 16);
  if (*(v4 + 120) != 1)
  {
    goto LABEL_14;
  }

  v7 = *(v4 + 56);
  v6 = *(v4 + 64);
  v8 = *(v6 + 8);
  if (v7 != 1)
  {
    v9 = v8 >= 0x100;
    v10 = v8 - 256;
    if (!v9)
    {
      goto LABEL_12;
    }

    v6 = *(v6 + 16);
    if (v7)
    {
      v9 = v10 >= v7 - 1;
      v10 = v7 - 1;
      if (!v9)
      {
        goto LABEL_12;
      }
    }

    if (v10 > 1)
    {
      *(v6 + 256) = 3199;
      v11 = -(v6 + 258);
      if (v10 - 2 >= (v11 & 3 | 4uLL))
      {
        *(v6 + 258 + (v11 & 3)) = a3;
        return result;
      }

      goto LABEL_13;
    }

LABEL_19:
    result = 1067;
    __break(0xC471u);
    return result;
  }

  if (v8 > 0xFF)
  {
    goto LABEL_19;
  }

LABEL_12:
  __break(1u);
LABEL_13:
  *(v6 + 256) = 3197;
LABEL_14:
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 3199;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = v5;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v16 = v12;
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(v12, a3);
  if (*(v4 + 120) == 1)
  {
    return std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((v4 + 128), v12);
  }

  IPC::Connection::sendMessageImpl(*(v4 + 40), &v16, 0, 0);
  result = v16;
  v16 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v13);
    return bmalloc::api::tzoneFree(v14, v15);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL20GetSamplerParameteriEN6WebKit23RemoteGraphicsContextGLES8_FvjjONS_17CompletionHandlerIFviEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJiEED1Ev(void *a1)
{
  *a1 = &unk_1F10ECD78;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL20GetSamplerParameteriEN6WebKit23RemoteGraphicsContextGLES8_FvjjONS_17CompletionHandlerIFviEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJiEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10ECD78;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL20GetSamplerParameteriEN6WebKit23RemoteGraphicsContextGLES8_FvjjONS_17CompletionHandlerIFviEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJiEE4callEi(uint64_t result, void *a2)
{
  v2 = a2;
  v4 = *(result + 8);
  v3 = *(result + 16);
  if (*(v3 + 120) != 1)
  {
    goto LABEL_14;
  }

  v6 = *(v3 + 56);
  v5 = *(v3 + 64);
  v7 = *(v5 + 8);
  if (v6 != 1)
  {
    v8 = v7 >= 0x100;
    v9 = v7 - 256;
    if (!v8)
    {
      goto LABEL_12;
    }

    v5 = *(v5 + 16);
    if (v6)
    {
      v8 = v9 >= v6 - 1;
      v9 = v6 - 1;
      if (!v8)
      {
        goto LABEL_12;
      }
    }

    if (v9 > 1)
    {
      *(v5 + 256) = 3199;
      v10 = -(v5 + 258);
      if (v9 - 2 >= (v10 & 3 | 4uLL))
      {
        *(v5 + 258 + (v10 & 3)) = a2;
        return result;
      }

      goto LABEL_13;
    }

LABEL_19:
    result = 1067;
    __break(0xC471u);
    return result;
  }

  if (v7 > 0xFF)
  {
    goto LABEL_19;
  }

LABEL_12:
  __break(1u);
LABEL_13:
  *(v5 + 256) = 3197;
LABEL_14:
  v11 = IPC::Encoder::operator new(0x238, a2);
  *v11 = 3199;
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *(v11 + 1) = v4;
  *(v11 + 68) = 0;
  *(v11 + 70) = 0;
  *(v11 + 69) = 0;
  IPC::Encoder::encodeHeader(v11);
  v15 = v11;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v11, v2);
  if (*(v3 + 120) == 1)
  {
    return std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((v3 + 128), v11);
  }

  IPC::Connection::sendMessageImpl(*(v3 + 40), &v15, 0, 0);
  result = v15;
  v15 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v12);
    return bmalloc::api::tzoneFree(v13, v14);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL9FenceSyncEN6WebKit23RemoteGraphicsContextGLES8_FvjjONS_17CompletionHandlerIFvyEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJyEED1Ev(void *a1)
{
  *a1 = &unk_1F10ECDA0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL9FenceSyncEN6WebKit23RemoteGraphicsContextGLES8_FvjjONS_17CompletionHandlerIFvyEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJyEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10ECDA0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL9FenceSyncEN6WebKit23RemoteGraphicsContextGLES8_FvjjONS_17CompletionHandlerIFvyEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJyEE4callEy(uint64_t result, void *a2)
{
  v4 = *(result + 8);
  v3 = *(result + 16);
  if (*(v3 + 120) != 1)
  {
    goto LABEL_14;
  }

  v6 = *(v3 + 56);
  v5 = *(v3 + 64);
  v7 = *(v5 + 8);
  if (v6 != 1)
  {
    v8 = v7 >= 0x100;
    v9 = v7 - 256;
    if (!v8)
    {
      goto LABEL_12;
    }

    v5 = *(v5 + 16);
    if (v6)
    {
      v8 = v9 >= v6 - 1;
      v9 = v6 - 1;
      if (!v8)
      {
        goto LABEL_12;
      }
    }

    if (v9 > 1)
    {
      *(v5 + 256) = 3199;
      v10 = -(v5 + 258);
      if (v9 - 2 >= (v10 & 7 | 8uLL))
      {
        *(v5 + 258 + (v10 & 7)) = a2;
        return result;
      }

      goto LABEL_13;
    }

LABEL_19:
    result = 1067;
    __break(0xC471u);
    return result;
  }

  if (v7 > 0xFF)
  {
    goto LABEL_19;
  }

LABEL_12:
  __break(1u);
LABEL_13:
  *(v5 + 256) = 3197;
LABEL_14:
  v11 = IPC::Encoder::operator new(0x238, a2);
  *v11 = 3199;
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *(v11 + 1) = v4;
  *(v11 + 68) = 0;
  *(v11 + 70) = 0;
  *(v11 + 69) = 0;
  IPC::Encoder::encodeHeader(v11);
  v15 = v11;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v11, a2);
  if (*(v3 + 120) == 1)
  {
    return std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((v3 + 128), v11);
  }

  IPC::Connection::sendMessageImpl(*(v3 + 40), &v15, 0, 0);
  result = v15;
  v15 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v12);
    return bmalloc::api::tzoneFree(v13, v14);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL6IsSyncEN6WebKit23RemoteGraphicsContextGLES8_FvyONS_17CompletionHandlerIFvbEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJbEED1Ev(void *a1)
{
  *a1 = &unk_1F10ECDC8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL6IsSyncEN6WebKit23RemoteGraphicsContextGLES8_FvyONS_17CompletionHandlerIFvbEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJbEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10ECDC8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL6IsSyncEN6WebKit23RemoteGraphicsContextGLES8_FvyONS_17CompletionHandlerIFvbEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJbEE4callEb(uint64_t result, void *a2)
{
  v13 = a2;
  v3 = *(result + 8);
  v2 = *(result + 16);
  if (*(v2 + 120) != 1)
  {
    goto LABEL_14;
  }

  v5 = *(v2 + 56);
  v4 = *(v2 + 64);
  v6 = *(v4 + 8);
  if (v5 != 1)
  {
    v7 = v6 >= 0x100;
    v8 = v6 - 256;
    if (!v7)
    {
      goto LABEL_12;
    }

    v4 = *(v4 + 16);
    if (v5)
    {
      v7 = v8 >= v5 - 1;
      v8 = v5 - 1;
      if (!v7)
      {
        goto LABEL_12;
      }
    }

    if (v8 > 1)
    {
      *(v4 + 256) = 3199;
      if (v8 != 2)
      {
        *(v4 + 258) = a2;
        return result;
      }

      goto LABEL_13;
    }

LABEL_19:
    result = 1067;
    __break(0xC471u);
    return result;
  }

  if (v6 > 0xFF)
  {
    goto LABEL_19;
  }

LABEL_12:
  __break(1u);
LABEL_13:
  *(v4 + 256) = 3197;
LABEL_14:
  v9 = IPC::Encoder::operator new(0x238, a2);
  *v9 = 3199;
  *(v9 + 2) = 0;
  *(v9 + 3) = 0;
  *(v9 + 1) = v3;
  *(v9 + 68) = 0;
  *(v9 + 70) = 0;
  *(v9 + 69) = 0;
  IPC::Encoder::encodeHeader(v9);
  v14 = v9;
  IPC::Encoder::operator<<<BOOL>(v9, &v13);
  if (*(v2 + 120) == 1)
  {
    return std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((v2 + 128), v9);
  }

  IPC::Connection::sendMessageImpl(*(v2 + 40), &v14, 0, 0);
  result = v14;
  v14 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v10);
    return bmalloc::api::tzoneFree(v11, v12);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL14ClientWaitSyncEN6WebKit23RemoteGraphicsContextGLES8_FvyjyONS_17CompletionHandlerIFvjEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJjEED1Ev(void *a1)
{
  *a1 = &unk_1F10ECDF0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL14ClientWaitSyncEN6WebKit23RemoteGraphicsContextGLES8_FvyjyONS_17CompletionHandlerIFvjEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJjEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10ECDF0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL14ClientWaitSyncEN6WebKit23RemoteGraphicsContextGLES8_FvyjyONS_17CompletionHandlerIFvjEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJjEE4callEj(uint64_t result, void *a2)
{
  v2 = a2;
  v4 = *(result + 8);
  v3 = *(result + 16);
  if (*(v3 + 120) != 1)
  {
    goto LABEL_14;
  }

  v6 = *(v3 + 56);
  v5 = *(v3 + 64);
  v7 = *(v5 + 8);
  if (v6 != 1)
  {
    v8 = v7 >= 0x100;
    v9 = v7 - 256;
    if (!v8)
    {
      goto LABEL_12;
    }

    v5 = *(v5 + 16);
    if (v6)
    {
      v8 = v9 >= v6 - 1;
      v9 = v6 - 1;
      if (!v8)
      {
        goto LABEL_12;
      }
    }

    if (v9 > 1)
    {
      *(v5 + 256) = 3199;
      v10 = -(v5 + 258);
      if (v9 - 2 >= (v10 & 3 | 4uLL))
      {
        *(v5 + 258 + (v10 & 3)) = a2;
        return result;
      }

      goto LABEL_13;
    }

LABEL_19:
    result = 1067;
    __break(0xC471u);
    return result;
  }

  if (v7 > 0xFF)
  {
    goto LABEL_19;
  }

LABEL_12:
  __break(1u);
LABEL_13:
  *(v5 + 256) = 3197;
LABEL_14:
  v11 = IPC::Encoder::operator new(0x238, a2);
  *v11 = 3199;
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *(v11 + 1) = v4;
  *(v11 + 68) = 0;
  *(v11 + 70) = 0;
  *(v11 + 69) = 0;
  IPC::Encoder::encodeHeader(v11);
  v15 = v11;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v11, v2);
  if (*(v3 + 120) == 1)
  {
    return std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((v3 + 128), v11);
  }

  IPC::Connection::sendMessageImpl(*(v3 + 40), &v15, 0, 0);
  result = v15;
  v15 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v12);
    return bmalloc::api::tzoneFree(v13, v14);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL8GetSynciEN6WebKit23RemoteGraphicsContextGLES8_FvyjONS_17CompletionHandlerIFviEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJiEED1Ev(void *a1)
{
  *a1 = &unk_1F10ECE18;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL8GetSynciEN6WebKit23RemoteGraphicsContextGLES8_FvyjONS_17CompletionHandlerIFviEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJiEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10ECE18;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL8GetSynciEN6WebKit23RemoteGraphicsContextGLES8_FvyjONS_17CompletionHandlerIFviEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJiEE4callEi(uint64_t result, void *a2)
{
  v2 = a2;
  v4 = *(result + 8);
  v3 = *(result + 16);
  if (*(v3 + 120) != 1)
  {
    goto LABEL_14;
  }

  v6 = *(v3 + 56);
  v5 = *(v3 + 64);
  v7 = *(v5 + 8);
  if (v6 != 1)
  {
    v8 = v7 >= 0x100;
    v9 = v7 - 256;
    if (!v8)
    {
      goto LABEL_12;
    }

    v5 = *(v5 + 16);
    if (v6)
    {
      v8 = v9 >= v6 - 1;
      v9 = v6 - 1;
      if (!v8)
      {
        goto LABEL_12;
      }
    }

    if (v9 > 1)
    {
      *(v5 + 256) = 3199;
      v10 = -(v5 + 258);
      if (v9 - 2 >= (v10 & 3 | 4uLL))
      {
        *(v5 + 258 + (v10 & 3)) = a2;
        return result;
      }

      goto LABEL_13;
    }

LABEL_19:
    result = 1067;
    __break(0xC471u);
    return result;
  }

  if (v7 > 0xFF)
  {
    goto LABEL_19;
  }

LABEL_12:
  __break(1u);
LABEL_13:
  *(v5 + 256) = 3197;
LABEL_14:
  v11 = IPC::Encoder::operator new(0x238, a2);
  *v11 = 3199;
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *(v11 + 1) = v4;
  *(v11 + 68) = 0;
  *(v11 + 70) = 0;
  *(v11 + 69) = 0;
  IPC::Encoder::encodeHeader(v11);
  v15 = v11;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v11, v2);
  if (*(v3 + 120) == 1)
  {
    return std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((v3 + 128), v11);
  }

  IPC::Connection::sendMessageImpl(*(v3 + 40), &v15, 0, 0);
  result = v15;
  v15 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v12);
    return bmalloc::api::tzoneFree(v13, v14);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL19IsTransformFeedbackEN6WebKit23RemoteGraphicsContextGLES8_FvjONS_17CompletionHandlerIFvbEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJbEED1Ev(void *a1)
{
  *a1 = &unk_1F10ECE40;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL19IsTransformFeedbackEN6WebKit23RemoteGraphicsContextGLES8_FvjONS_17CompletionHandlerIFvbEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJbEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10ECE40;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL19IsTransformFeedbackEN6WebKit23RemoteGraphicsContextGLES8_FvjONS_17CompletionHandlerIFvbEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJbEE4callEb(uint64_t result, void *a2)
{
  v13 = a2;
  v3 = *(result + 8);
  v2 = *(result + 16);
  if (*(v2 + 120) != 1)
  {
    goto LABEL_14;
  }

  v5 = *(v2 + 56);
  v4 = *(v2 + 64);
  v6 = *(v4 + 8);
  if (v5 != 1)
  {
    v7 = v6 >= 0x100;
    v8 = v6 - 256;
    if (!v7)
    {
      goto LABEL_12;
    }

    v4 = *(v4 + 16);
    if (v5)
    {
      v7 = v8 >= v5 - 1;
      v8 = v5 - 1;
      if (!v7)
      {
        goto LABEL_12;
      }
    }

    if (v8 > 1)
    {
      *(v4 + 256) = 3199;
      if (v8 != 2)
      {
        *(v4 + 258) = a2;
        return result;
      }

      goto LABEL_13;
    }

LABEL_19:
    result = 1067;
    __break(0xC471u);
    return result;
  }

  if (v6 > 0xFF)
  {
    goto LABEL_19;
  }

LABEL_12:
  __break(1u);
LABEL_13:
  *(v4 + 256) = 3197;
LABEL_14:
  v9 = IPC::Encoder::operator new(0x238, a2);
  *v9 = 3199;
  *(v9 + 2) = 0;
  *(v9 + 3) = 0;
  *(v9 + 1) = v3;
  *(v9 + 68) = 0;
  *(v9 + 70) = 0;
  *(v9 + 69) = 0;
  IPC::Encoder::encodeHeader(v9);
  v14 = v9;
  IPC::Encoder::operator<<<BOOL>(v9, &v13);
  if (*(v2 + 120) == 1)
  {
    return std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((v2 + 128), v9);
  }

  IPC::Connection::sendMessageImpl(*(v2 + 40), &v14, 0, 0);
  result = v14;
  v14 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v10);
    return bmalloc::api::tzoneFree(v11, v12);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL27GetTransformFeedbackVaryingEN6WebKit23RemoteGraphicsContextGLES8_FvjjONS_17CompletionHandlerIFvON7WebCore27GraphicsContextGLActiveInfoEEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJSC_EED1Ev(void *a1)
{
  *a1 = &unk_1F10ECE68;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL27GetTransformFeedbackVaryingEN6WebKit23RemoteGraphicsContextGLES8_FvjjONS_17CompletionHandlerIFvON7WebCore27GraphicsContextGLActiveInfoEEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJSC_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10ECE68;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL27GetTransformFeedbackVaryingEN6WebKit23RemoteGraphicsContextGLES8_FvjjONS_17CompletionHandlerIFvON7WebCore27GraphicsContextGLActiveInfoEEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJSC_EE4callESC_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (*(v3 + 120) != 1)
  {
    goto LABEL_9;
  }

  v5 = *(v3 + 56);
  v6 = *(v3 + 64);
  v7 = *(v6 + 8);
  if (v5 == 1)
  {
    if (v7 < 0x100)
    {
LABEL_17:
      __break(1u);
    }

LABEL_18:
    result = 1067;
    __break(0xC471u);
    return result;
  }

  v8 = v7 >= 0x100;
  v9 = (v7 - 256);
  if (!v8)
  {
    goto LABEL_17;
  }

  v10 = *(v6 + 16);
  if (v5)
  {
    v8 = v9 >= v5 - 1;
    v9 = (v5 - 1);
    if (!v8)
    {
      goto LABEL_17;
    }
  }

  v16[2] = v9;
  if (v9 <= 1)
  {
    goto LABEL_18;
  }

  *(v10 + 256) = 3199;
  v16[0] = (v10 + 258);
  v16[1] = (v9 - 2);
  result = IPC::ArgumentCoder<WebCore::GraphicsContextGLActiveInfo,void>::encode(v16, a2);
  if (v16[0])
  {
    return result;
  }

  *(v10 + 256) = 3197;
LABEL_9:
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 3199;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = v4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v16[0] = v12;
  IPC::ArgumentCoder<WebCore::GraphicsContextGLActiveInfo,void>::encode(v12, a2);
  if (*(v3 + 120) == 1)
  {
    return std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((v3 + 128), v12);
  }

  IPC::Connection::sendMessageImpl(*(v3 + 40), v16, 0, 0);
  result = v16[0];
  v16[0] = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v13);
    return bmalloc::api::tzoneFree(v14, v15);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL17GetUniformIndicesEN6WebKit23RemoteGraphicsContextGLES8_FvjONS_6VectorINS_6StringELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvONS9_IjLm0ESB_Lm16ESC_EEEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJSH_EED1Ev(void *a1)
{
  *a1 = &unk_1F10ECE90;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL17GetUniformIndicesEN6WebKit23RemoteGraphicsContextGLES8_FvjONS_6VectorINS_6StringELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvONS9_IjLm0ESB_Lm16ESC_EEEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJSH_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10ECE90;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL17GetUniformIndicesEN6WebKit23RemoteGraphicsContextGLES8_FvjONS_6VectorINS_6StringELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvONS9_IjLm0ESB_Lm16ESC_EEEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJSH_EE4callESH_(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (*(v3 + 120) != 1)
  {
    goto LABEL_9;
  }

  v5 = *(v3 + 56);
  v6 = *(v3 + 64);
  v7 = *(v6 + 8);
  if (v5 == 1)
  {
    if (v7 < 0x100)
    {
LABEL_17:
      __break(1u);
    }

LABEL_18:
    result = 1067;
    __break(0xC471u);
    return result;
  }

  v8 = v7 >= 0x100;
  v9 = (v7 - 256);
  if (!v8)
  {
    goto LABEL_17;
  }

  v10 = *(v6 + 16);
  if (v5)
  {
    v8 = v9 >= v5 - 1;
    v9 = (v5 - 1);
    if (!v8)
    {
      goto LABEL_17;
    }
  }

  v16[2] = v9;
  if (v9 <= 1)
  {
    goto LABEL_18;
  }

  *(v10 + 256) = 3199;
  v16[0] = (v10 + 258);
  v16[1] = (v9 - 2);
  result = IPC::ArgumentCoder<std::span<unsigned int const,18446744073709551615ul>,void>::encode<IPC::StreamConnectionEncoder>(v16, *a2, *(a2 + 12));
  if (v16[0])
  {
    return result;
  }

  *(v10 + 256) = 3197;
LABEL_9:
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 3199;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = v4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v16[0] = v12;
  IPC::ArgumentCoder<std::span<float const,18446744073709551615ul>,void>::encode<IPC::Encoder>(v12, *a2, *(a2 + 12));
  if (*(v3 + 120) == 1)
  {
    return std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((v3 + 128), v12);
  }

  IPC::Connection::sendMessageImpl(*(v3 + 40), v16, 0, 0);
  result = v16[0];
  v16[0] = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v13);
    return bmalloc::api::tzoneFree(v14, v15);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL17GetActiveUniformsEN6WebKit23RemoteGraphicsContextGLES8_FvjONS_6VectorIjLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEjONS_17CompletionHandlerIFvONS9_IiLm0ESA_Lm16ESB_EEEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJSG_EED1Ev(void *a1)
{
  *a1 = &unk_1F10ECEB8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL17GetActiveUniformsEN6WebKit23RemoteGraphicsContextGLES8_FvjONS_6VectorIjLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEjONS_17CompletionHandlerIFvONS9_IiLm0ESA_Lm16ESB_EEEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJSG_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10ECEB8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL17GetActiveUniformsEN6WebKit23RemoteGraphicsContextGLES8_FvjONS_6VectorIjLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEjONS_17CompletionHandlerIFvONS9_IiLm0ESA_Lm16ESB_EEEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJSG_EE4callESG_(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (*(v3 + 120) != 1)
  {
    goto LABEL_9;
  }

  v5 = *(v3 + 56);
  v6 = *(v3 + 64);
  v7 = *(v6 + 8);
  if (v5 == 1)
  {
    if (v7 < 0x100)
    {
LABEL_17:
      __break(1u);
    }

LABEL_18:
    result = 1067;
    __break(0xC471u);
    return result;
  }

  v8 = v7 >= 0x100;
  v9 = (v7 - 256);
  if (!v8)
  {
    goto LABEL_17;
  }

  v10 = *(v6 + 16);
  if (v5)
  {
    v8 = v9 >= v5 - 1;
    v9 = (v5 - 1);
    if (!v8)
    {
      goto LABEL_17;
    }
  }

  v16[2] = v9;
  if (v9 <= 1)
  {
    goto LABEL_18;
  }

  *(v10 + 256) = 3199;
  v16[0] = (v10 + 258);
  v16[1] = (v9 - 2);
  result = IPC::ArgumentCoder<std::span<int const,18446744073709551615ul>,void>::encode<IPC::StreamConnectionEncoder>(v16, *a2, *(a2 + 12));
  if (v16[0])
  {
    return result;
  }

  *(v10 + 256) = 3197;
LABEL_9:
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 3199;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = v4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v16[0] = v12;
  IPC::ArgumentCoder<std::span<int const,18446744073709551615ul>,void>::encode<IPC::Encoder>(v12, *a2, *(a2 + 12));
  if (*(v3 + 120) == 1)
  {
    return std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((v3 + 128), v12);
  }

  IPC::Connection::sendMessageImpl(*(v3 + 40), v16, 0, 0);
  result = v16[0];
  v16[0] = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v13);
    return bmalloc::api::tzoneFree(v14, v15);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL20GetUniformBlockIndexEN6WebKit23RemoteGraphicsContextGLES8_FvjONS_6StringEONS_17CompletionHandlerIFvjEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJjEED1Ev(void *a1)
{
  *a1 = &unk_1F10ECEE0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL20GetUniformBlockIndexEN6WebKit23RemoteGraphicsContextGLES8_FvjONS_6StringEONS_17CompletionHandlerIFvjEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJjEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10ECEE0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL20GetUniformBlockIndexEN6WebKit23RemoteGraphicsContextGLES8_FvjONS_6StringEONS_17CompletionHandlerIFvjEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJjEE4callEj(uint64_t result, void *a2)
{
  v2 = a2;
  v4 = *(result + 8);
  v3 = *(result + 16);
  if (*(v3 + 120) != 1)
  {
    goto LABEL_14;
  }

  v6 = *(v3 + 56);
  v5 = *(v3 + 64);
  v7 = *(v5 + 8);
  if (v6 != 1)
  {
    v8 = v7 >= 0x100;
    v9 = v7 - 256;
    if (!v8)
    {
      goto LABEL_12;
    }

    v5 = *(v5 + 16);
    if (v6)
    {
      v8 = v9 >= v6 - 1;
      v9 = v6 - 1;
      if (!v8)
      {
        goto LABEL_12;
      }
    }

    if (v9 > 1)
    {
      *(v5 + 256) = 3199;
      v10 = -(v5 + 258);
      if (v9 - 2 >= (v10 & 3 | 4uLL))
      {
        *(v5 + 258 + (v10 & 3)) = a2;
        return result;
      }

      goto LABEL_13;
    }

LABEL_19:
    result = 1067;
    __break(0xC471u);
    return result;
  }

  if (v7 > 0xFF)
  {
    goto LABEL_19;
  }

LABEL_12:
  __break(1u);
LABEL_13:
  *(v5 + 256) = 3197;
LABEL_14:
  v11 = IPC::Encoder::operator new(0x238, a2);
  *v11 = 3199;
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *(v11 + 1) = v4;
  *(v11 + 68) = 0;
  *(v11 + 70) = 0;
  *(v11 + 69) = 0;
  IPC::Encoder::encodeHeader(v11);
  v15 = v11;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v11, v2);
  if (*(v3 + 120) == 1)
  {
    return std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((v3 + 128), v11);
  }

  IPC::Connection::sendMessageImpl(*(v3 + 40), &v15, 0, 0);
  result = v15;
  v15 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v12);
    return bmalloc::api::tzoneFree(v13, v14);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL25GetActiveUniformBlockNameEN6WebKit23RemoteGraphicsContextGLES8_FvjjONS_17CompletionHandlerIFvONS_6StringEEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJSB_EED1Ev(void *a1)
{
  *a1 = &unk_1F10ECF08;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL25GetActiveUniformBlockNameEN6WebKit23RemoteGraphicsContextGLES8_FvjjONS_17CompletionHandlerIFvONS_6StringEEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJSB_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10ECF08;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL25GetActiveUniformBlockNameEN6WebKit23RemoteGraphicsContextGLES8_FvjjONS_17CompletionHandlerIFvONS_6StringEEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJSB_EE4callESB_(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (*(v3 + 120) != 1)
  {
    goto LABEL_9;
  }

  v5 = *(v3 + 56);
  v6 = *(v3 + 64);
  v7 = *(v6 + 8);
  if (v5 == 1)
  {
    if (v7 < 0x100)
    {
LABEL_17:
      __break(1u);
    }

LABEL_18:
    result = 1067;
    __break(0xC471u);
    return result;
  }

  v8 = v7 >= 0x100;
  v9 = (v7 - 256);
  if (!v8)
  {
    goto LABEL_17;
  }

  v10 = *(v6 + 16);
  if (v5)
  {
    v8 = v9 >= v5 - 1;
    v9 = (v5 - 1);
    if (!v8)
    {
      goto LABEL_17;
    }
  }

  v16[2] = v9;
  if (v9 <= 1)
  {
    goto LABEL_18;
  }

  *(v10 + 256) = 3199;
  v16[0] = (v10 + 258);
  v16[1] = (v9 - 2);
  result = IPC::ArgumentCoder<WTF::String,void>::encode<IPC::StreamConnectionEncoder>(v16, a2);
  if (v16[0])
  {
    return result;
  }

  *(v10 + 256) = 3197;
LABEL_9:
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 3199;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = v4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v16[0] = v12;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v12, a2);
  if (*(v3 + 120) == 1)
  {
    return std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((v3 + 128), v12);
  }

  IPC::Connection::sendMessageImpl(*(v3 + 40), v16, 0, 0);
  result = v16[0];
  v16[0] = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v13);
    return bmalloc::api::tzoneFree(v14, v15);
  }

  return result;
}

uint64_t IPC::Decoder::decode<std::tuple<unsigned int,unsigned int,unsigned int,unsigned long long>>(uint64_t result, uint64_t *a2)
{
  v3 = ((a2[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v4 = *a2;
  v5 = a2[1];
  if (v5 >= v3 - v4 && v5 - (v3 - v4) > 3)
  {
    a2[2] = (v3 + 1);
    if (v3)
    {
      v7 = *v3;
      v8 = ((v3 + 7) & 0xFFFFFFFFFFFFFFFCLL);
      if (v5 < v8 - v4 || v5 - (v8 - v4) <= 3)
      {
        goto LABEL_27;
      }

      a2[2] = (v8 + 1);
      if (v8)
      {
        v10 = *v8;
        v11 = ((v8 + 7) & 0xFFFFFFFFFFFFFFFCLL);
        if (v5 < v11 - v4 || v5 - (v11 - v4) <= 3)
        {
          goto LABEL_27;
        }

        a2[2] = (v11 + 1);
        if (v11)
        {
          v13 = *v11;
          v14 = ((v11 + 11) & 0xFFFFFFFFFFFFFFF8);
          if (v5 < v14 - v4 || v5 - (v14 - v4) <= 7)
          {
            goto LABEL_27;
          }

          a2[2] = (v14 + 1);
          if (v14)
          {
            v16 = *v14;
            *result = v7;
            *(result + 4) = v10;
            *(result + 8) = v13;
            *(result + 16) = v16;
            *(result + 24) = 1;
            return result;
          }
        }
      }
    }

    v21 = result;
    v22 = a2;
    goto LABEL_30;
  }

LABEL_27:
  v21 = result;
  v22 = a2;
  *a2 = 0;
  a2[1] = 0;
  v17 = a2[3];
  if (!v17)
  {
    v5 = 0;
LABEL_29:
    v4 = 0;
    goto LABEL_30;
  }

  if (!v5)
  {
    goto LABEL_29;
  }

  (*(*v17 + 16))(v17);
  v4 = *v22;
  v5 = v22[1];
LABEL_30:
  *v22 = 0;
  v22[1] = 0;
  v18 = v22[3];
  if (v18 && v5)
  {
    (*(*v18 + 16))(v18, v4);
  }

  *v21 = 0;
  v21[24] = 0;
  v19 = v22[1];
  *v22 = 0;
  v22[1] = 0;
  result = v22[3];
  if (result && v19)
  {
    v20 = *(*result + 16);

    return v20();
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL23GetActiveUniformBlockivEN6WebKit23RemoteGraphicsContextGLES8_FvjjjyONS_17CompletionHandlerIFvNSt3__14spanIKiLm18446744073709551615EEEEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJSD_EED1Ev(void *a1)
{
  *a1 = &unk_1F10ECF30;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL23GetActiveUniformBlockivEN6WebKit23RemoteGraphicsContextGLES8_FvjjjyONS_17CompletionHandlerIFvNSt3__14spanIKiLm18446744073709551615EEEEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJSD_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10ECF30;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL23GetActiveUniformBlockivEN6WebKit23RemoteGraphicsContextGLES8_FvjjjyONS_17CompletionHandlerIFvNSt3__14spanIKiLm18446744073709551615EEEEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJSD_EE4callESD_(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (*(v5 + 120) != 1)
  {
    goto LABEL_9;
  }

  v7 = *(v5 + 56);
  v8 = *(v5 + 64);
  v9 = *(v8 + 8);
  if (v7 == 1)
  {
    if (v9 < 0x100)
    {
LABEL_17:
      __break(1u);
    }

LABEL_18:
    result = 1067;
    __break(0xC471u);
    return result;
  }

  v10 = v9 >= 0x100;
  v11 = (v9 - 256);
  if (!v10)
  {
    goto LABEL_17;
  }

  v12 = *(v8 + 16);
  if (v7)
  {
    v10 = v11 >= v7 - 1;
    v11 = (v7 - 1);
    if (!v10)
    {
      goto LABEL_17;
    }
  }

  v18[2] = v11;
  if (v11 <= 1)
  {
    goto LABEL_18;
  }

  *(v12 + 256) = 3199;
  v18[0] = (v12 + 258);
  v18[1] = (v11 - 2);
  result = IPC::ArgumentCoder<std::span<int const,18446744073709551615ul>,void>::encode<IPC::StreamConnectionEncoder>(v18, a2, a3);
  if (v18[0])
  {
    return result;
  }

  *(v12 + 256) = 3197;
LABEL_9:
  v14 = IPC::Encoder::operator new(0x238, a2);
  *v14 = 3199;
  *(v14 + 2) = 0;
  *(v14 + 3) = 0;
  *(v14 + 1) = v6;
  *(v14 + 68) = 0;
  *(v14 + 70) = 0;
  *(v14 + 69) = 0;
  IPC::Encoder::encodeHeader(v14);
  v18[0] = v14;
  IPC::ArgumentCoder<std::span<int const,18446744073709551615ul>,void>::encode<IPC::Encoder>(v14, a2, a3);
  if (*(v5 + 120) == 1)
  {
    return std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((v5 + 128), v14);
  }

  IPC::Connection::sendMessageImpl(*(v5 + 40), v18, 0, 0);
  result = v18[0];
  v18[0] = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v15);
    return bmalloc::api::tzoneFree(v16, v17);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL30GetTranslatedShaderSourceANGLEEN6WebKit23RemoteGraphicsContextGLES8_FvjONS_17CompletionHandlerIFvONS_6StringEEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJSB_EED1Ev(void *a1)
{
  *a1 = &unk_1F10ECF58;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL30GetTranslatedShaderSourceANGLEEN6WebKit23RemoteGraphicsContextGLES8_FvjONS_17CompletionHandlerIFvONS_6StringEEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJSB_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10ECF58;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL30GetTranslatedShaderSourceANGLEEN6WebKit23RemoteGraphicsContextGLES8_FvjONS_17CompletionHandlerIFvONS_6StringEEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJSB_EE4callESB_(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (*(v3 + 120) != 1)
  {
    goto LABEL_9;
  }

  v5 = *(v3 + 56);
  v6 = *(v3 + 64);
  v7 = *(v6 + 8);
  if (v5 == 1)
  {
    if (v7 < 0x100)
    {
LABEL_17:
      __break(1u);
    }

LABEL_18:
    result = 1067;
    __break(0xC471u);
    return result;
  }

  v8 = v7 >= 0x100;
  v9 = (v7 - 256);
  if (!v8)
  {
    goto LABEL_17;
  }

  v10 = *(v6 + 16);
  if (v5)
  {
    v8 = v9 >= v5 - 1;
    v9 = (v5 - 1);
    if (!v8)
    {
      goto LABEL_17;
    }
  }

  v16[2] = v9;
  if (v9 <= 1)
  {
    goto LABEL_18;
  }

  *(v10 + 256) = 3199;
  v16[0] = (v10 + 258);
  v16[1] = (v9 - 2);
  result = IPC::ArgumentCoder<WTF::String,void>::encode<IPC::StreamConnectionEncoder>(v16, a2);
  if (v16[0])
  {
    return result;
  }

  *(v10 + 256) = 3197;
LABEL_9:
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 3199;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = v4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v16[0] = v12;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v12, a2);
  if (*(v3 + 120) == 1)
  {
    return std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((v3 + 128), v12);
  }

  IPC::Connection::sendMessageImpl(*(v3 + 40), v16, 0, 0);
  result = v16[0];
  v16[0] = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v13);
    return bmalloc::api::tzoneFree(v14, v15);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL10IsQueryEXTEN6WebKit23RemoteGraphicsContextGLES8_FvjONS_17CompletionHandlerIFvbEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJbEED1Ev(void *a1)
{
  *a1 = &unk_1F10ECF80;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL10IsQueryEXTEN6WebKit23RemoteGraphicsContextGLES8_FvjONS_17CompletionHandlerIFvbEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJbEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10ECF80;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL10IsQueryEXTEN6WebKit23RemoteGraphicsContextGLES8_FvjONS_17CompletionHandlerIFvbEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJbEE4callEb(uint64_t result, void *a2)
{
  v13 = a2;
  v3 = *(result + 8);
  v2 = *(result + 16);
  if (*(v2 + 120) != 1)
  {
    goto LABEL_14;
  }

  v5 = *(v2 + 56);
  v4 = *(v2 + 64);
  v6 = *(v4 + 8);
  if (v5 != 1)
  {
    v7 = v6 >= 0x100;
    v8 = v6 - 256;
    if (!v7)
    {
      goto LABEL_12;
    }

    v4 = *(v4 + 16);
    if (v5)
    {
      v7 = v8 >= v5 - 1;
      v8 = v5 - 1;
      if (!v7)
      {
        goto LABEL_12;
      }
    }

    if (v8 > 1)
    {
      *(v4 + 256) = 3199;
      if (v8 != 2)
      {
        *(v4 + 258) = a2;
        return result;
      }

      goto LABEL_13;
    }

LABEL_19:
    result = 1067;
    __break(0xC471u);
    return result;
  }

  if (v6 > 0xFF)
  {
    goto LABEL_19;
  }

LABEL_12:
  __break(1u);
LABEL_13:
  *(v4 + 256) = 3197;
LABEL_14:
  v9 = IPC::Encoder::operator new(0x238, a2);
  *v9 = 3199;
  *(v9 + 2) = 0;
  *(v9 + 3) = 0;
  *(v9 + 1) = v3;
  *(v9 + 68) = 0;
  *(v9 + 70) = 0;
  *(v9 + 69) = 0;
  IPC::Encoder::encodeHeader(v9);
  v14 = v9;
  IPC::Encoder::operator<<<BOOL>(v9, &v13);
  if (*(v2 + 120) == 1)
  {
    return std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((v2 + 128), v9);
  }

  IPC::Connection::sendMessageImpl(*(v2 + 40), &v14, 0, 0);
  result = v14;
  v14 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v10);
    return bmalloc::api::tzoneFree(v11, v12);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL12GetQueryiEXTEN6WebKit23RemoteGraphicsContextGLES8_FvjjONS_17CompletionHandlerIFviEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJiEED1Ev(void *a1)
{
  *a1 = &unk_1F10ECFA8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL12GetQueryiEXTEN6WebKit23RemoteGraphicsContextGLES8_FvjjONS_17CompletionHandlerIFviEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJiEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10ECFA8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL12GetQueryiEXTEN6WebKit23RemoteGraphicsContextGLES8_FvjjONS_17CompletionHandlerIFviEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJiEE4callEi(uint64_t result, void *a2)
{
  v2 = a2;
  v4 = *(result + 8);
  v3 = *(result + 16);
  if (*(v3 + 120) != 1)
  {
    goto LABEL_14;
  }

  v6 = *(v3 + 56);
  v5 = *(v3 + 64);
  v7 = *(v5 + 8);
  if (v6 != 1)
  {
    v8 = v7 >= 0x100;
    v9 = v7 - 256;
    if (!v8)
    {
      goto LABEL_12;
    }

    v5 = *(v5 + 16);
    if (v6)
    {
      v8 = v9 >= v6 - 1;
      v9 = v6 - 1;
      if (!v8)
      {
        goto LABEL_12;
      }
    }

    if (v9 > 1)
    {
      *(v5 + 256) = 3199;
      v10 = -(v5 + 258);
      if (v9 - 2 >= (v10 & 3 | 4uLL))
      {
        *(v5 + 258 + (v10 & 3)) = a2;
        return result;
      }

      goto LABEL_13;
    }

LABEL_19:
    result = 1067;
    __break(0xC471u);
    return result;
  }

  if (v7 > 0xFF)
  {
    goto LABEL_19;
  }

LABEL_12:
  __break(1u);
LABEL_13:
  *(v5 + 256) = 3197;
LABEL_14:
  v11 = IPC::Encoder::operator new(0x238, a2);
  *v11 = 3199;
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *(v11 + 1) = v4;
  *(v11 + 68) = 0;
  *(v11 + 70) = 0;
  *(v11 + 69) = 0;
  IPC::Encoder::encodeHeader(v11);
  v15 = v11;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v11, v2);
  if (*(v3 + 120) == 1)
  {
    return std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((v3 + 128), v11);
  }

  IPC::Connection::sendMessageImpl(*(v3 + 40), &v15, 0, 0);
  result = v15;
  v15 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v12);
    return bmalloc::api::tzoneFree(v13, v14);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL18GetQueryObjectiEXTEN6WebKit23RemoteGraphicsContextGLES8_FvjjONS_17CompletionHandlerIFviEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJiEED1Ev(void *a1)
{
  *a1 = &unk_1F10ECFD0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL18GetQueryObjectiEXTEN6WebKit23RemoteGraphicsContextGLES8_FvjjONS_17CompletionHandlerIFviEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJiEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10ECFD0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL18GetQueryObjectiEXTEN6WebKit23RemoteGraphicsContextGLES8_FvjjONS_17CompletionHandlerIFviEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJiEE4callEi(uint64_t result, void *a2)
{
  v2 = a2;
  v4 = *(result + 8);
  v3 = *(result + 16);
  if (*(v3 + 120) != 1)
  {
    goto LABEL_14;
  }

  v6 = *(v3 + 56);
  v5 = *(v3 + 64);
  v7 = *(v5 + 8);
  if (v6 != 1)
  {
    v8 = v7 >= 0x100;
    v9 = v7 - 256;
    if (!v8)
    {
      goto LABEL_12;
    }

    v5 = *(v5 + 16);
    if (v6)
    {
      v8 = v9 >= v6 - 1;
      v9 = v6 - 1;
      if (!v8)
      {
        goto LABEL_12;
      }
    }

    if (v9 > 1)
    {
      *(v5 + 256) = 3199;
      v10 = -(v5 + 258);
      if (v9 - 2 >= (v10 & 3 | 4uLL))
      {
        *(v5 + 258 + (v10 & 3)) = a2;
        return result;
      }

      goto LABEL_13;
    }

LABEL_19:
    result = 1067;
    __break(0xC471u);
    return result;
  }

  if (v7 > 0xFF)
  {
    goto LABEL_19;
  }

LABEL_12:
  __break(1u);
LABEL_13:
  *(v5 + 256) = 3197;
LABEL_14:
  v11 = IPC::Encoder::operator new(0x238, a2);
  *v11 = 3199;
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *(v11 + 1) = v4;
  *(v11 + 68) = 0;
  *(v11 + 70) = 0;
  *(v11 + 69) = 0;
  IPC::Encoder::encodeHeader(v11);
  v15 = v11;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v11, v2);
  if (*(v3 + 120) == 1)
  {
    return std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((v3 + 128), v11);
  }

  IPC::Connection::sendMessageImpl(*(v3 + 40), &v15, 0, 0);
  result = v15;
  v15 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v12);
    return bmalloc::api::tzoneFree(v13, v14);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL21GetQueryObjectui64EXTEN6WebKit23RemoteGraphicsContextGLES8_FvjjONS_17CompletionHandlerIFvyEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJyEED1Ev(void *a1)
{
  *a1 = &unk_1F10ECFF8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL21GetQueryObjectui64EXTEN6WebKit23RemoteGraphicsContextGLES8_FvjjONS_17CompletionHandlerIFvyEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJyEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10ECFF8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL21GetQueryObjectui64EXTEN6WebKit23RemoteGraphicsContextGLES8_FvjjONS_17CompletionHandlerIFvyEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJyEE4callEy(uint64_t result, void *a2)
{
  v4 = *(result + 8);
  v3 = *(result + 16);
  if (*(v3 + 120) != 1)
  {
    goto LABEL_14;
  }

  v6 = *(v3 + 56);
  v5 = *(v3 + 64);
  v7 = *(v5 + 8);
  if (v6 != 1)
  {
    v8 = v7 >= 0x100;
    v9 = v7 - 256;
    if (!v8)
    {
      goto LABEL_12;
    }

    v5 = *(v5 + 16);
    if (v6)
    {
      v8 = v9 >= v6 - 1;
      v9 = v6 - 1;
      if (!v8)
      {
        goto LABEL_12;
      }
    }

    if (v9 > 1)
    {
      *(v5 + 256) = 3199;
      v10 = -(v5 + 258);
      if (v9 - 2 >= (v10 & 7 | 8uLL))
      {
        *(v5 + 258 + (v10 & 7)) = a2;
        return result;
      }

      goto LABEL_13;
    }

LABEL_19:
    result = 1067;
    __break(0xC471u);
    return result;
  }

  if (v7 > 0xFF)
  {
    goto LABEL_19;
  }

LABEL_12:
  __break(1u);
LABEL_13:
  *(v5 + 256) = 3197;
LABEL_14:
  v11 = IPC::Encoder::operator new(0x238, a2);
  *v11 = 3199;
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *(v11 + 1) = v4;
  *(v11 + 68) = 0;
  *(v11 + 70) = 0;
  *(v11 + 69) = 0;
  IPC::Encoder::encodeHeader(v11);
  v15 = v11;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v11, a2);
  if (*(v3 + 120) == 1)
  {
    return std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((v3 + 128), v11);
  }

  IPC::Connection::sendMessageImpl(*(v3 + 40), &v15, 0, 0);
  result = v15;
  v15 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v12);
    return bmalloc::api::tzoneFree(v13, v14);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL15GetInteger64EXTEN6WebKit23RemoteGraphicsContextGLES8_FvjONS_17CompletionHandlerIFvxEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJxEED1Ev(void *a1)
{
  *a1 = &unk_1F10ED020;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL15GetInteger64EXTEN6WebKit23RemoteGraphicsContextGLES8_FvjONS_17CompletionHandlerIFvxEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJxEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10ED020;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL15GetInteger64EXTEN6WebKit23RemoteGraphicsContextGLES8_FvjONS_17CompletionHandlerIFvxEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJxEE4callEx(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (*(v3 + 120) != 1)
  {
    goto LABEL_9;
  }

  v5 = *(v3 + 56);
  v6 = *(v3 + 64);
  v7 = *(v6 + 8);
  if (v5 == 1)
  {
    if (v7 < 0x100)
    {
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

LABEL_20:
    __break(0xC471u);
LABEL_21:
    JUMPOUT(0x19D92B71CLL);
  }

  v8 = v7 >= 0x100;
  v9 = (v7 - 256);
  if (!v8)
  {
    goto LABEL_18;
  }

  v10 = *(v6 + 16);
  if (v5)
  {
    v8 = v9 >= v5 - 1;
    v9 = (v5 - 1);
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  v18[2] = v9;
  if (v9 <= 1)
  {
    goto LABEL_20;
  }

  *(v10 + 256) = 3199;
  v18[0] = (v10 + 258);
  v18[1] = (v9 - 2);
  v19 = a2;
  result = IPC::StreamConnectionEncoder::encodeSpan<long long const,18446744073709551615ul>(v18, &v19, 1);
  if (v18[0])
  {
    return result;
  }

  *(v10 + 256) = 3197;
LABEL_9:
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 3199;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = v4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v18[0] = v12;
  v13 = IPC::Encoder::grow(v12, 8uLL, 8);
  if (v14 <= 7)
  {
LABEL_19:
    __break(0xC471u);
    goto LABEL_21;
  }

  *v13 = a2;
  if (*(v3 + 120) == 1)
  {
    return std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((v3 + 128), v12);
  }

  IPC::Connection::sendMessageImpl(*(v3 + 40), v18, 0, 0);
  result = v18[0];
  v18[0] = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v15);
    return bmalloc::api::tzoneFree(v16, v17);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL19GetInternalformativEN6WebKit23RemoteGraphicsContextGLES8_FvjjjyONS_17CompletionHandlerIFvNSt3__14spanIKiLm18446744073709551615EEEEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJSD_EED1Ev(void *a1)
{
  *a1 = &unk_1F10ED048;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL19GetInternalformativEN6WebKit23RemoteGraphicsContextGLES8_FvjjjyONS_17CompletionHandlerIFvNSt3__14spanIKiLm18446744073709551615EEEEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJSD_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10ED048;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL19GetInternalformativEN6WebKit23RemoteGraphicsContextGLES8_FvjjjyONS_17CompletionHandlerIFvNSt3__14spanIKiLm18446744073709551615EEEEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJSD_EE4callESD_(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (*(v5 + 120) != 1)
  {
    goto LABEL_9;
  }

  v7 = *(v5 + 56);
  v8 = *(v5 + 64);
  v9 = *(v8 + 8);
  if (v7 == 1)
  {
    if (v9 < 0x100)
    {
LABEL_17:
      __break(1u);
    }

LABEL_18:
    result = 1067;
    __break(0xC471u);
    return result;
  }

  v10 = v9 >= 0x100;
  v11 = (v9 - 256);
  if (!v10)
  {
    goto LABEL_17;
  }

  v12 = *(v8 + 16);
  if (v7)
  {
    v10 = v11 >= v7 - 1;
    v11 = (v7 - 1);
    if (!v10)
    {
      goto LABEL_17;
    }
  }

  v18[2] = v11;
  if (v11 <= 1)
  {
    goto LABEL_18;
  }

  *(v12 + 256) = 3199;
  v18[0] = (v12 + 258);
  v18[1] = (v11 - 2);
  result = IPC::ArgumentCoder<std::span<int const,18446744073709551615ul>,void>::encode<IPC::StreamConnectionEncoder>(v18, a2, a3);
  if (v18[0])
  {
    return result;
  }

  *(v12 + 256) = 3197;
LABEL_9:
  v14 = IPC::Encoder::operator new(0x238, a2);
  *v14 = 3199;
  *(v14 + 2) = 0;
  *(v14 + 3) = 0;
  *(v14 + 1) = v6;
  *(v14 + 68) = 0;
  *(v14 + 70) = 0;
  *(v14 + 69) = 0;
  IPC::Encoder::encodeHeader(v14);
  v18[0] = v14;
  IPC::ArgumentCoder<std::span<int const,18446744073709551615ul>,void>::encode<IPC::Encoder>(v14, a2, a3);
  if (*(v5 + 120) == 1)
  {
    return std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((v5 + 128), v14);
  }

  IPC::Connection::sendMessageImpl(*(v5 + 40), v18, 0, 0);
  result = v18[0];
  v18[0] = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v15);
    return bmalloc::api::tzoneFree(v16, v17);
  }

  return result;
}

void sub_19D92BA64(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PCM::NetworkLoader::allowTLSCertificateChainForLocalPCMTesting(CFTypeRef *this, const CertificateInfo *a2)
{
  {
    allowedLocalTestServerTrust(void)::serverTrust = 0;
  }

  v2 = *this;
  if (*this)
  {
    CFRetain(*this);
  }

  v3 = allowedLocalTestServerTrust(void)::serverTrust;
  allowedLocalTestServerTrust(void)::serverTrust = v2;
  if (v3)
  {

    CFRelease(v3);
  }
}

void WebKit::PCM::NetworkLoader::start(WTF::URL *this, WTF::JSONImpl::Value **a2, int a3, uint64_t *a4)
{
  {
    allowedLocalTestServerTrust(void)::serverTrust = 0;
    goto LABEL_9;
  }

  if (!allowedLocalTestServerTrust(void)::serverTrust)
  {
    goto LABEL_9;
  }

  v8 = WTF::URL::host(this);
  if (v8 == "127.0.0.1" || v9 != 9)
  {
    if (v8 != "127.0.0.1" || v9 != 9)
    {
      goto LABEL_87;
    }
  }

  else
  {
    if ((v9 & 0x100000000) != 0)
    {
      if (*v8 == 49 && *(v8 + 1) == 808335154 && *(v8 + 5) == 825110574)
      {
        goto LABEL_9;
      }

LABEL_87:
      WTF::CompletionHandler<void ()(WTF::String const&,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> const&)>::operator()(a4);
      v64 = 0;
      v65 = 0;
      return;
    }

    if (*v8 != 49)
    {
      goto LABEL_87;
    }

    v58 = vceqq_s16(*(v8 + 2), xmmword_19E703280);
    v58.i16[0] = vminvq_u16(v58);
    if (!v58.i32[0])
    {
      goto LABEL_87;
    }
  }

LABEL_9:
  v10 = objc_alloc(MEMORY[0x1E695AC18]);
  WTF::URL::createCFURL(&v65, this);
  v11 = [v10 initWithURL:v65];
  v12 = v11;
  v13 = v65;
  v65 = 0;
  if (v13)
  {
  }

  v14 = *WebCore::HTTPHeaderValues::maxAge0(v11);
  if (v14)
  {
    atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v65, v14);
    if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v15);
    }
  }

  else
  {
    v65 = &stru_1F1147748;
    v16 = &stru_1F1147748;
  }

  [(WebCore::HTTPHeaderValues *)v12 setValue:v65 forHTTPHeaderField:@"Cache-Control"];
  v17 = v65;
  v65 = 0;
  if (v17)
  {
  }

  WebCore::standardUserAgentWithApplicationName();
  if (v64)
  {
    atomic_fetch_add_explicit(v64, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v65, v64);
    if (atomic_fetch_add_explicit(v64, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v64, v18);
    }
  }

  else
  {
    v65 = &stru_1F1147748;
    v19 = &stru_1F1147748;
  }

  [(WebCore::HTTPHeaderValues *)v12 setValue:v65 forHTTPHeaderField:@"User-Agent"];
  v21 = v65;
  v65 = 0;
  if (v21)
  {
  }

  v22 = v64;
  v64 = 0;
  if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v22, v20);
  }

  if (*a2)
  {
    v23 = *WebCore::HTTPHeaderValues::applicationJSONContentType([(WebCore::HTTPHeaderValues *)v12 setHTTPMethod:@"POST"]);
    if (v23)
    {
      atomic_fetch_add_explicit(v23, 2u, memory_order_relaxed);
      MEMORY[0x19EB00B70](&v65, v23);
      if (atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v23, v24);
      }
    }

    else
    {
      v65 = &stru_1F1147748;
      v25 = &stru_1F1147748;
    }

    [(WebCore::HTTPHeaderValues *)v12 setValue:v65 forHTTPHeaderField:@"Content-Type"];
    v26 = v65;
    v65 = 0;
    if (v26)
    {
    }

    WTF::JSONImpl::Value::toJSONString(&v64, *a2);
    WTF::String::utf8();
    v28 = v64;
    v64 = 0;
    if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v28, v27);
    }

    if (v65)
    {
      v29 = v65 + 16;
      v30 = *(v65 + 1);
    }

    else
    {
      v29 = 0;
      v30 = 0;
    }

    v31 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v29 length:v30];
    [(WebCore::HTTPHeaderValues *)v12 setHTTPBody:v31];
    if (v31)
    {
    }

    v33 = v65;
    v65 = 0;
    if (v33)
    {
      if (*v33 == 1)
      {
        WTF::fastFree(v33, v32);
      }

      else
      {
        --*v33;
      }
    }
  }

  if ((([(WebCore::HTTPHeaderValues *)v12 _needsNetworkTrackingPrevention]| a3) & 1) == 0)
  {
    [(WebCore::HTTPHeaderValues *)v12 _setNeedsNetworkTrackingPrevention:1];
  }

  IdentifierInternal = WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>::generateIdentifierInternal();
  if ((_MergedGlobals_181 & 1) == 0)
  {
    qword_1EB01D1D0 = objc_opt_new();
    _MergedGlobals_181 = 1;
  }

  v35 = &unk_1EB01D000;
  if ((byte_1EB01D1B9 & 1) == 0)
  {
    v59 = [MEMORY[0x1E695AC80] ephemeralSessionConfiguration];
    v60 = v59;
    if (v59)
    {
      v61 = v59;
    }

    [v60 setHTTPCookieAcceptPolicy:1];
    [v60 setURLCredentialStorage:0];
    [v60 setURLCache:0];
    [v60 setHTTPCookieStorage:0];
    [v60 set_shouldSkipPreferredClientCertificateLookup:1];
    v62 = [MEMORY[0x1E695AC78] sessionWithConfiguration:v60 delegate:qword_1EB01D1D0 delegateQueue:{objc_msgSend(MEMORY[0x1E696ADC8], "mainQueue")}];
    if (v60)
    {
    }

    qword_1EB01D1D8 = v62;
    if (v62)
    {
      v63 = v62;
    }

    byte_1EB01D1B9 = 1;
    v35 = &unk_1EB01D000;
  }

  v36 = v35[59];
  v37 = *a4;
  *a4 = 0;
  v38 = malloc_type_malloc(0x30uLL, 0x10E0040AA5B57ACuLL);
  *v38 = MEMORY[0x1E69E9818];
  v38[1] = 50331650;
  v38[2] = WTF::BlockPtr<void ()(NSData *,NSURLResponse *,NSError *)>::fromCallable<WebKit::PCM::NetworkLoader::start(WTF::URL &&,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl>,WTF::DefaultRefDerefTraits<WTF::JSONImpl>> &&,WebCore::PrivateClickMeasurement::PcmDataCarried,WTF::CompletionHandler<void ()(WTF::String const&,WTF::DefaultRefDerefTraits<WTF::JSONImpl> const&)> &&)::$_0>(WebKit::PCM::NetworkLoader::start(WTF::URL &&,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl>,WTF::DefaultRefDerefTraits<WTF::JSONImpl>> &&,WebCore::PrivateClickMeasurement::PcmDataCarried,WTF::CompletionHandler<void ()(WTF::String const&,WTF::DefaultRefDerefTraits<WTF::JSONImpl> const&)> &&)::$_0)::{lambda(void *,NSData *,NSURLResponse *,NSError *)#1}::__invoke;
  v38[3] = &WTF::BlockPtr<void ()(NSData *,NSURLResponse *,NSError *)>::fromCallable<WebKit::PCM::NetworkLoader::start(WTF::URL &&,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl>,WTF::DefaultRefDerefTraits<WTF::JSONImpl>> &&,WebCore::PrivateClickMeasurement::PcmDataCarried,WTF::CompletionHandler<void ()(WTF::String const&,WTF::DefaultRefDerefTraits<WTF::JSONImpl> const&)> &&)::$_0>(WebKit::PCM::NetworkLoader::start(WTF::URL &&,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl>,WTF::DefaultRefDerefTraits<WTF::JSONImpl>> &&,WebCore::PrivateClickMeasurement::PcmDataCarried,WTF::CompletionHandler<void ()(WTF::String const&,WTF::DefaultRefDerefTraits<WTF::JSONImpl> const&)> &&)::$_0)::descriptor;
  v38[4] = v37;
  v38[5] = IdentifierInternal;
  v39 = [v36 dataTaskWithRequest:v12 completionHandler:v38];
  v40 = v39;
  if (v39)
  {
    v41 = v39;
  }

  _Block_release(v38);
  [v40 resume];
  if ((byte_1EB01D1BA & 1) == 0)
  {
    qword_1EB01D1E0 = 0;
    byte_1EB01D1BA = 1;
  }

  if (IdentifierInternal == -1 || !IdentifierInternal)
  {
    __break(0xC471u);
    JUMPOUT(0x19D92C338);
  }

  v42 = qword_1EB01D1E0;
  if (!qword_1EB01D1E0)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::PCM::LoadTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::PCM::LoadTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::PCM::LoadTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PCM::LoadTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::PCM::LoadTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PCM::LoadTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PCM::LoadTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RetainPtr<NSURLSessionDataTask>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PCM::LoadTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand();
    v42 = qword_1EB01D1E0;
  }

  v43 = *(v42 - 8);
  v44 = (IdentifierInternal + ~(IdentifierInternal << 32)) ^ ((IdentifierInternal + ~(IdentifierInternal << 32)) >> 22);
  v45 = 9 * ((v44 + ~(v44 << 13)) ^ ((v44 + ~(v44 << 13)) >> 8));
  v46 = (v45 ^ (v45 >> 15)) + ~((v45 ^ (v45 >> 15)) << 27);
  v47 = v43 & ((v46 >> 31) ^ v46);
  v48 = (v42 + 16 * v47);
  v49 = *v48;
  if (*v48)
  {
    v50 = 0;
    v51 = 1;
    while (v49 != IdentifierInternal)
    {
      if (v49 == -1)
      {
        v50 = v48;
      }

      v47 = (v47 + v51) & v43;
      v48 = (v42 + 16 * v47);
      v49 = *v48;
      ++v51;
      if (!*v48)
      {
        if (v50)
        {
          *v50 = 0;
          v50[1] = 0;
          --*(v42 - 16);
          v48 = v50;
        }

        goto LABEL_64;
      }
    }

    goto LABEL_74;
  }

LABEL_64:
  *v48 = IdentifierInternal;
  if (v40)
  {
    v52 = v40;
  }

  v53 = v48[1];
  v48[1] = v40;
  if (v53)
  {
  }

  v54 = qword_1EB01D1E0;
  if (qword_1EB01D1E0)
  {
    v55 = *(qword_1EB01D1E0 - 12) + 1;
  }

  else
  {
    v55 = 1;
  }

  *(qword_1EB01D1E0 - 12) = v55;
  v56 = (*(v54 - 16) + v55);
  v57 = *(v54 - 4);
  if (v57 > 0x400)
  {
    if (v57 > 2 * v56)
    {
      goto LABEL_74;
    }

    goto LABEL_73;
  }

  if (3 * v57 <= 4 * v56)
  {
LABEL_73:
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::PCM::LoadTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::PCM::LoadTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::PCM::LoadTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PCM::LoadTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::PCM::LoadTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PCM::LoadTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PCM::LoadTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RetainPtr<NSURLSessionDataTask>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PCM::LoadTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand();
  }

LABEL_74:
  if (v40)
  {
  }

  if (v12)
  {
  }
}

void sub_19D92C35C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WTF::StringImpl *a11, WTF::StringImpl *a12)
{
  if (v12)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::operator==(unsigned __int8 *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  if (a4)
  {
    v5 = (a4 - 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = a2 == v5 && a1 == a3;
  if (a1 == a3 || a2 != v5)
  {
    return v6;
  }

  if (!a2)
  {
    return 1;
  }

  v7 = v5;
  if ((a2 & 0x100000000) == 0)
  {
    if (v5)
    {
      if (*a1 != *a3)
      {
        return 0;
      }

      v17 = (a1 + 2);
      v18 = v7 - 1;
      v19 = (a3 + 1);
      if (v7 - 1 < 8)
      {
        if (v18 >= 4)
        {
          v28 = (v19->u32[0] | (v19->u32[0] << 16)) & 0xFFFF0000FFFFLL;
          v29 = (*(v19->u32 + (v18 & 3)) | (*(v19->u32 + (v18 & 3)) << 16)) & 0xFFFF0000FFFFLL;
          v30 = (v29 | (v29 << 8)) & 0xFF00FF00FF00FFLL;
          return ((v28 | (v28 << 8)) & 0xFF00FF00FF00FFLL) == v17->i64[0] && v30 == *(v17->i64 + 2 * (v18 & 3));
        }

        if (v18 >= 2)
        {
          v12 = ((v19->u16[0] | (v19->u16[0] << 8)) & 0xFF00FF) == v17->i32[0];
          v31 = (*(v19->u16 + (v18 & 1)) | (*(v19->u16 + (v18 & 1)) << 8)) & 0xFF00FF;
          return v12 && v31 == *(v17->i32 + 2 * (v18 & 1));
        }

        if (v7 == 2)
        {
          v11 = v19->u8[0];
          v10 = v17->u16[0];
          return v10 == v11;
        }

        return 1;
      }

      v20 = vceqq_s16(*v17, vmovl_u8(*v19));
      v20.i16[0] = vminvq_u16(v20);
      v6 = v20.u32[0];
      if (v20.i32[0])
      {
        v21 = v18 & 7;
        do
        {
          v22 = vceqq_s16(*(v17 + 2 * v21), vmovl_u8(*(v19 + v21)));
          v22.i16[0] = vminvq_u16(v22);
          v6 = v22.i32[0] != 0;
          v21 += 8;
          if (v22.i32[0])
          {
            v23 = v21 >= v18;
          }

          else
          {
            v23 = 1;
          }
        }

        while (!v23);
      }

      return v6;
    }

    goto LABEL_46;
  }

  if (!v5)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (*a1 != *a3)
  {
    return 0;
  }

  v8 = v5 - 1;
  if (v5 == 1)
  {
    return 1;
  }

  v4 = (a1 + 1);
  v5 = (a3 + 1);
  if (v8 == 1)
  {
    if (v8)
    {
      v15 = v4->u8[0];
      v16 = v5->u8[0];
      return v15 == v16;
    }

    goto LABEL_46;
  }

  v9 = __clz(v8 - 1);
  if (v9 == 29)
  {
    if (v4->i32[0] == v5->i32[0])
    {
      v10 = *&a1[v7 - 4];
      v11 = *&a3[v7 - 4];
      return v10 == v11;
    }

    return 0;
  }

  if (v9 <= 27)
  {
    if (v9 == 27)
    {
      v14 = vandq_s8(vceqq_s8(*&a1[v7 - 16], *&a3[v7 - 16]), vceqq_s8(*(a1 + 1), *(a3 + 1)));
      v14.i8[0] = vminvq_u8(v14);
      return v14.i32[0] != 0;
    }

    goto LABEL_49;
  }

  switch(v9)
  {
    case 28:
      if (v4->i64[0] != v5->i64[0])
      {
        return 0;
      }

      return *&a1[v7 - 8] == *&a3[v7 - 8];
    case 30:
LABEL_47:
      if (v4->u16[0] == v5->u16[0])
      {
        v10 = *&a1[v7 - 2];
        v11 = *&a3[v7 - 2];
        return v10 == v11;
      }

      return 0;
    case 31:
      v15 = v4->u16[0];
      v16 = v5->u16[0];
      return v15 == v16;
  }

LABEL_49:
  v24 = vceqq_s8(*v4, *v5);
  v24.i8[0] = vminvq_u8(v24);
  if (!v24.i32[0])
  {
    return 0;
  }

  if (v7 < 0x11)
  {
    return 1;
  }

  v25 = v8 & 0xF;
  do
  {
    v26 = vceqq_s8(*(v4 + v25), *(v5 + v25));
    v26.i8[0] = vminvq_u8(v26);
    v6 = v26.i32[0] != 0;
    v25 += 16;
    if (v26.i32[0])
    {
      v27 = v25 >= v8;
    }

    else
    {
      v27 = 1;
    }
  }

  while (!v27);
  return v6;
}

uint64_t WTF::CompletionHandler<void ()(WTF::String const&,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> const&)>::operator()(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void WebKit::PCM::addVersionAndEncodedMessageToDictionary(uint64_t a1, xpc_object_t xdict)
{
  xpc_dictionary_set_uint64(xdict, "version", 1uLL);
  WebKit::vectorToXPCData(a1, &value);
  v4 = value;
  xpc_dictionary_set_value(xdict, "encoded message", value);
  if (v4)
  {
  }
}

void sub_19D92C97C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9)
{
  if (a9)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::makeDispatchData<unsigned char>@<X0>(uint64_t a1@<X0>, dispatch_data_t *a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 12);
  *a1 = 0;
  *(a1 + 8) = 0;
  v5 = malloc_type_malloc(0x30uLL, 0x10F0040064ACA9BuLL);
  *v5 = MEMORY[0x1E69E9818];
  v5[1] = 50331650;
  v5[2] = WTF::BlockPtr<void ()(void)>::fromCallable<WTF::RetainPtr<NSObject  {objcproto16OS_dispatch_data}*> WTF::makeDispatchData<unsigned char>(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::{lambda(void)#1}>(unsigned char)::{lambda(void *)#1}::__invoke;
  v5[3] = &WTF::BlockPtr<void ()(void)>::fromCallable<WTF::RetainPtr<NSObject  {objcproto16OS_dispatch_data}*> WTF::makeDispatchData<unsigned char>(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::{lambda(void)#1}>(unsigned char)::descriptor;
  v5[4] = v3;
  v5[5] = v4;
  WTF::fastFree(0, v6);
  *a2 = dispatch_data_create(v3, v4, MEMORY[0x1E69E96A0], v5);
  _Block_release(v5);
  WTF::fastFree(0, v7);

  return WTF::fastFree(0, v8);
}

void sub_19D92CA74(_Unwind_Exception *a1, void *a2)
{
  WTF::fastFree(v2, a2);
  WTF::fastFree(0, v4);
  WTF::fastFree(0, v5);
  _Unwind_Resume(a1);
}

uint64_t WebKit::NetworkCache::Data::Data(uint64_t a1, uint64_t a2)
{
  WTF::makeDispatchData<unsigned char>(a2, &v7);
  v3 = v7;
  if (v7)
  {
    v4 = v7;
    v5 = v7;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = v3;
    *(a1 + 24) = 0;
    v7 = 0;
    if (v5)
    {
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 24) = 0;
    *(a1 + 16) = 0;
  }

  return a1;
}

void sub_19D92CB08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

id WebKit::NetworkCache::Data::empty@<X0>(uint64_t a1@<X8>)
{
  v3 = MEMORY[0x1E69E9668];
  result = MEMORY[0x1E69E9668];
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = v3;
  *(a1 + 24) = 0;
  return result;
}

size_t WebKit::NetworkCache::Data::apply(uint64_t a1)
{
  if (*(a1 + 8) || (v2 = *a1) == 0)
  {
    result = *(a1 + 16);
  }

  else
  {
    result = dispatch_data_get_size(v2);
  }

  if (result)
  {

    return dispatch_data_apply_span();
  }

  return result;
}

__n128 WebKit::NetworkCache::concatenate@<Q0>(WebKit::NetworkCache *this@<X0>, const WebKit::NetworkCache::Data *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *this;
  v8 = *a2;
  if (v7)
  {
    if (v8)
    {
      concat = dispatch_data_create_concat(v7, v8);
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *a3 = concat;
      *(a3 + 24) = 0;
    }

    else
    {
      *a3 = v7;
      v11 = v7;
      result = *(this + 8);
      *(a3 + 8) = result;
      *(a3 + 24) = *(this + 24);
    }
  }

  else
  {
    *a3 = v8;
    if (v8)
    {
      v12 = v8;
    }

    result = *(a2 + 8);
    *(a3 + 8) = result;
    *(a3 + 24) = *(a2 + 24);
  }

  return result;
}

uint64_t WebKit::NetworkCache::IOChannel::IOChannel(uint64_t a1, WTF::FileSystemImpl *this, int a3, uint64_t a4)
{
  *a1 = 1;
  *(a1 + 4) = 0;
  *(a1 + 8) = 0;
  WTF::FileSystemImpl::fileSystemRepresentation(&v23, this, this);
  if (a3)
  {
    if (a3 == 1)
    {
      if ((a4 & 0x100000000) != 0)
      {
        v8 = a4;
      }

      else
      {
        v8 = 4;
      }

      v9 = 384;
      v10 = 5;
    }

    else if (a3 == 2)
    {
      if (v23)
      {
        v7 = v23 + 16;
      }

      else
      {
        v7 = 0;
      }

      unlink(v7);
      if ((a4 & 0x100000000) != 0)
      {
        v8 = a4;
      }

      else
      {
        v8 = 4;
      }

      v9 = 384;
      v10 = 518;
    }

    else
    {
      v10 = 0;
      v9 = 0;
      v8 = 0;
    }
  }

  else
  {
    v9 = 0;
    if ((a4 & 0x100000000) != 0)
    {
      v8 = a4;
    }

    else
    {
      v8 = 2;
    }

    v10 = 4;
  }

  if (v23)
  {
    v11 = v23 + 16;
  }

  else
  {
    v11 = 0;
  }

  v12 = open(v11, v10, v9);
  v13 = -2;
  if (v8 != 3)
  {
    v13 = 0;
  }

  if (v8 == 4)
  {
    v14 = -32768;
  }

  else
  {
    v14 = v13;
  }

  global_queue = dispatch_get_global_queue(v14, 0);
  cleanup_handler[0] = MEMORY[0x1E69E9820];
  cleanup_handler[1] = 3321888768;
  cleanup_handler[2] = ___ZN6WebKit12NetworkCache9IOChannelC2ERKN3WTF6StringENS1_4TypeENSt3__18optionalINS2_6Thread3QOSEEE_block_invoke;
  cleanup_handler[3] = &__block_descriptor_36_e8_32c106_ZTSKZN6WebKit12NetworkCache9IOChannelC1ERKN3WTF6StringENS1_4TypeENSt3__18optionalINS2_6Thread3QOSEEEE3__0_e8_v12__0i8l;
  v22 = v12;
  v16 = dispatch_io_create(1uLL, v12, global_queue, cleanup_handler);
  v17 = *(a1 + 8);
  *(a1 + 8) = v16;
  if (v17)
  {

    v16 = *(a1 + 8);
  }

  dispatch_io_set_low_water(v16, 0xFFFFFFFFFFFFFFFFLL);
  v19 = v23;
  v23 = 0;
  if (v19)
  {
    if (*v19 == 1)
    {
      WTF::fastFree(v19, v18);
    }

    else
    {
      --*v19;
    }
  }

  return a1;
}

void sub_19D92CE18(_Unwind_Exception *exception_object, void *a2)
{
  v5 = *(v3 - 40);
  *(v3 - 40) = 0;
  if (v5)
  {
    if (*v5 == 1)
    {
      WTF::fastFree(v5, a2);
    }

    else
    {
      --*v5;
    }
  }

  v6 = *(v2 + 8);
  if (v6)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::NetworkCache::IOChannel::~IOChannel(WebKit::NetworkCache::IOChannel *this)
{
  if (atomic_exchange(this + 4, 1u))
  {
    __break(0xC471u);
  }

  else
  {
    v1 = *(this + 1);
    if (v1)
    {
    }
  }
}

void WebKit::NetworkCache::IOChannel::read(uint64_t a1, off_t a2, size_t a3, void *a4, uint64_t *a5)
{
  v9 = *(a1 + 8);
  v10 = *(*a4 + 8);
  atomic_fetch_add(a1, 1u);
  v11 = *a4;
  (*(**a4 + 32))(*a4);
  v12 = *a5;
  *a5 = 0;
  v13 = malloc_type_malloc(0x40uLL, 0x10E0040C2989C1AuLL);
  *v13 = MEMORY[0x1E69E9818];
  v13[1] = 50331650;
  v13[2] = WTF::BlockPtr<void ()(BOOL,NSObject  {objcproto16OS_dispatch_data}*,int)>::fromCallable<WebKit::NetworkCache::IOChannel::read(unsigned long,unsigned long,WTF::Ref<WTF::WorkQueueBase,WTF::RawPtrTraits<WTF::WorkQueueBase>,WTF::DefaultRefDerefTraits<WTF::WorkQueueBase>> &&,WTF::Function<void ()(WebKit::NetworkCache::Data &&,int)> &&)::$_0>(WebKit::NetworkCache::IOChannel::read(unsigned long,unsigned long,WTF::Ref<WTF::WorkQueueBase,WTF::RawPtrTraits<WTF::WorkQueueBase>,WTF::DefaultRefDerefTraits<WTF::WorkQueueBase>> &&,WTF::Function<void ()(WebKit::NetworkCache::Data &&,int)> &&)::$_0)::{lambda(void *,BOOL,NSObject  {objcproto16OS_dispatch_data}*,int)#1}::__invoke;
  v13[3] = &WTF::BlockPtr<void ()(BOOL,NSObject  {objcproto16OS_dispatch_data}*,int)>::fromCallable<WebKit::NetworkCache::IOChannel::read(unsigned long,unsigned long,WTF::Ref<WTF::WorkQueueBase,WTF::RawPtrTraits<WTF::WorkQueueBase>,WTF::DefaultRefDerefTraits<WTF::WorkQueueBase>> &&,WTF::Function<void ()(WebKit::NetworkCache::Data &&,int)> &&)::$_0>(WebKit::NetworkCache::IOChannel::read(unsigned long,unsigned long,WTF::Ref<WTF::WorkQueueBase,WTF::RawPtrTraits<WTF::WorkQueueBase>,WTF::DefaultRefDerefTraits<WTF::WorkQueueBase>> &&,WTF::Function<void ()(WebKit::NetworkCache::Data &&,int)> &&)::$_0)::descriptor;
  v13[4] = a1;
  v13[5] = v11;
  v13[6] = v12;
  *(v13 + 56) = 0;
  dispatch_io_read(v9, a2, a3, v10, v13);

  _Block_release(v13);
}

void sub_19D92CFF0(_Unwind_Exception *a1)
{
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  (*(*v2 + 40))(v2);
  WTF::ThreadSafeRefCounted<WebKit::NetworkCache::IOChannel,(WTF::DestructionThread)0>::deref(v1);
  _Unwind_Resume(a1);
}

void WebKit::NetworkActivityTracker::complete(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    *(a1 + 8) = 1;
    nw_activity_complete_with_reason();
    v2 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v2)
    {
    }
  }
}

WebKit *WebKit::enableAdvancedPrivacyProtections(WebKit *this, NSURLRequest *a2)
{
  v2 = this;
  v3 = a2;
  if ((a2 & 0x80) != 0)
  {
    this = [(WebKit *)this _setUseEnhancedPrivacyMode:1];
  }

  if (v3)
  {
    this = WebKit::shouldBlockTrackersForThirdPartyCloaking(v2, a2);
    if (this)
    {

      return [(WebKit *)v2 _setBlockTrackers:1];
    }
  }

  return this;
}

uint64_t WebKit::shouldBlockTrackersForThirdPartyCloaking(WebKit *this, NSURLRequest *a2)
{
  v3 = [(WebKit *)this URL];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  v6 = [(WebKit *)this mainDocumentURL];
  v7 = v6;
  if (!v6)
  {
    v16 = 0;
    if (!v4)
    {
      return v16;
    }

    goto LABEL_18;
  }

  v8 = v6;
  if (v4)
  {
    MEMORY[0x19EB01DE0](v19, v4);
    MEMORY[0x19EB01DE0](v18, v7);
    WebCore::RegistrableDomain::RegistrableDomain(&v20, v19);
    v9 = WTF::URL::host(v18);
    v12 = WebCore::RegistrableDomain::matches(&v20, v9, v10 & 0xFFFFFFFFFFLL);
    v13 = v20;
    v20 = 0;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v11);
    }

    v14 = v18[0];
    v18[0] = 0;
    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v11);
    }

    v15 = v19[0];
    v19[0] = 0;
    if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v11);
      if (v12)
      {
        goto LABEL_14;
      }
    }

    else if (v12)
    {
LABEL_14:
      v16 = [objc_msgSend(v4 "host")] ^ 1;
      goto LABEL_17;
    }
  }

  v16 = 0;
LABEL_17:

  if (v4)
  {
LABEL_18:
  }

  return v16;
}

void sub_19D92D290(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, WTF::StringImpl *a15)
{
  if (a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, a2);
  }

  if (a15)
  {
    if (atomic_fetch_add_explicit(a15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a15, a2);
    }
  }

  _Unwind_Resume(a1);
}

WTF::StringImpl *WebKit::NetworkDataTaskCocoa::updateFirstPartyInfoForSession(WebKit::NetworkDataTaskCocoa *this, const WTF::URL *a2)
{
  result = WebKit::NetworkTaskCocoa::shouldApplyCookiePolicyForThirdPartyCloaking((this + 552));
  if (!result)
  {
    return result;
  }

  result = WTF::URL::host(a2);
  if (!v5)
  {
    return result;
  }

  v6 = *(this + 2);
  if (v6)
  {
    v7 = *(v6 + 8);
    if (v7)
    {
      v8 = 0;
      ++*(v7 + 4);
      goto LABEL_6;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = 1;
LABEL_6:
  WebKit::NetworkDataTaskCocoa::updateFirstPartyInfoForSession(WTF::URL const&)::$_0::operator()(&v27, *(this + 76));
  if (v27 && *(v27 + 1) && (MEMORY[0x19EB01EF0]() & 1) == 0)
  {
    if (v8)
    {
      __break(0xC471u);
      goto LABEL_37;
    }

    v23 = WTF::URL::host(a2);
    v24 = v18;
    v25 = v19;
    WTF::StringView::toString(&v26, &v23);
    WebKit::NetworkSession::setFirstPartyHostCNAMEDomain(v7, &v26, &v27);
    v21 = v26;
    v26 = 0;
    if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v21, v20);
    }
  }

  v9 = [objc_msgSend(objc_msgSend(objc_msgSend(*(this + 76) "_incompleteTaskMetrics")];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  if ([v10 length])
  {
    if (v8)
    {
      __break(0xC471u);
      JUMPOUT(0x19D92D564);
    }

    v23 = WTF::URL::host(a2);
    v24 = v13;
    v25 = v14;
    WTF::StringView::toString(&v26, &v23);
    MEMORY[0x19EB02040](&v22, v10);
    WebKit::NetworkSession::setFirstPartyHostIPAddress(v7, &v26, &v22);
    v15 = v22;
    v22 = 0;
    if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v12);
    }

    v16 = v26;
    v26 = 0;
    if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v12);
    }
  }

  if (v10)
  {
  }

  result = v27;
  v27 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v12);
    }
  }

  if ((v8 & 1) == 0)
  {
    v17 = *(v7 + 4);
    if (v17)
    {
      *(v7 + 4) = v17 - 1;
      return result;
    }

    __break(0xC471u);
LABEL_37:
    JUMPOUT(0x19D92D544);
  }

  return result;
}