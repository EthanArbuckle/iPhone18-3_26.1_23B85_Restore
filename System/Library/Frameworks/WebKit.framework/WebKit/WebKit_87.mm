uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages22RemoteMediaPlayerProxy4LoadENS2_10ConnectionEN6WebKit22RemoteMediaPlayerProxyES9_FvONS_3URLEONSt3__18optionalINS8_22SandboxExtensionHandleEEERKN7WebCore22MediaPlayerLoadOptionsEONS_17CompletionHandlerIFvONS8_30RemoteMediaPlayerConfigurationEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F22E8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages22RemoteMediaPlayerProxy4LoadENS2_10ConnectionEN6WebKit22RemoteMediaPlayerProxyES9_FvONS_3URLEONSt3__18optionalINS8_22SandboxExtensionHandleEEERKN7WebCore22MediaPlayerLoadOptionsEONS_17CompletionHandlerIFvONS8_30RemoteMediaPlayerConfigurationEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_EE4callESN_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3510;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<WebKit::RemoteMediaPlayerConfiguration,void>::encode(v5, a2);
  IPC::Connection::sendMessageImpl(v3, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v6);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages22RemoteMediaPlayerProxy15LoadMediaSourceENS2_10ConnectionEN6WebKit22RemoteMediaPlayerProxyES9_FvONS_3URLERKN7WebCore22MediaPlayerLoadOptionsENS_23ObjectIdentifierGenericINS8_31RemoteMediaSourceIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_17CompletionHandlerIFvONS8_30RemoteMediaPlayerConfigurationEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F2310;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages22RemoteMediaPlayerProxy15LoadMediaSourceENS2_10ConnectionEN6WebKit22RemoteMediaPlayerProxyES9_FvONS_3URLERKN7WebCore22MediaPlayerLoadOptionsENS_23ObjectIdentifierGenericINS8_31RemoteMediaSourceIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_17CompletionHandlerIFvONS8_30RemoteMediaPlayerConfigurationEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F2310;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages22RemoteMediaPlayerProxy15LoadMediaSourceENS2_10ConnectionEN6WebKit22RemoteMediaPlayerProxyES9_FvONS_3URLERKN7WebCore22MediaPlayerLoadOptionsENS_23ObjectIdentifierGenericINS8_31RemoteMediaSourceIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_17CompletionHandlerIFvONS8_30RemoteMediaPlayerConfigurationEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_EE4callESN_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3509;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<WebKit::RemoteMediaPlayerConfiguration,void>::encode(v5, a2);
  IPC::Connection::sendMessageImpl(v3, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v6);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages22RemoteMediaPlayerProxy18DidLoadingProgressENS2_10ConnectionEN6WebKit22RemoteMediaPlayerProxyES9_FvONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED1Ev(void *a1)
{
  *a1 = &unk_1F10F2338;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages22RemoteMediaPlayerProxy18DidLoadingProgressENS2_10ConnectionEN6WebKit22RemoteMediaPlayerProxyES9_FvONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F2338;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages22RemoteMediaPlayerProxy18DidLoadingProgressENS2_10ConnectionEN6WebKit22RemoteMediaPlayerProxyES9_FvONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEE4callEb(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3508;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v12 = v5;
  v6 = IPC::Encoder::grow(v5, 1uLL, 1);
  if (v7)
  {
    *v6 = v2;
    IPC::Connection::sendMessageImpl(v3, &v12, 0, 0);
    result = v12;
    v12 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v8);
      return bmalloc::api::tzoneFree(v10, v11);
    }
  }

  else
  {
    result = 1067;
    __break(0xC471u);
  }

  return result;
}

WTF::StringImpl *IPC::Decoder::decode<WebKit::MediaPlaybackTargetContextSerialized>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<WebKit::MediaPlaybackTargetContextSerialized,void>::decode(a2, a1);
  if ((*(a1 + 48) & 1) == 0)
  {
    v5 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result && v5 != 0)
    {
      v7 = *(*result + 16);

      return v7();
    }
  }

  return result;
}

uint64_t *IPC::ArgumentCoder<std::tuple<std::optional<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::decode<IPC::Decoder>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(a1, &v9);
  if (v10 & 1) != 0 || ((v6 = *a1, v7 = a1[1], *a1 = 0, a1[1] = 0, (result = a1[3]) != 0) ? (v8 = v7 == 0) : (v8 = 1), !v8 && (result = (*(*result + 16))(result, v6), (v10)))
  {
    *a2 = v9;
    v5 = 1;
  }

  else
  {
    v5 = 0;
    *a2 = 0;
  }

  *(a2 + 16) = v5;
  return result;
}

_BYTE *IPC::Decoder::decode<std::tuple<unsigned long long,BOOL>>(_BYTE *result, void *a2)
{
  v2 = a2;
  v3 = ((a2[2] + 7) & 0xFFFFFFFFFFFFFFF8);
  v4 = *a2;
  v5 = v2[1];
  if (v5 >= v3 - v4 && v5 - (v3 - v4) > 7)
  {
    v7 = (v3 + 1);
    v2[2] = v3 + 1;
    if (v3)
    {
      if (v5 <= &v7[-v4])
      {
        v15 = result;
        v16 = v2;
        *v2 = 0;
        v2[1] = 0;
        v14 = v2[3];
        if (v14)
        {
          if (v5)
          {
            (*(*v14 + 16))(v14);
            v5 = v16[1];
          }
        }

        else
        {
          v5 = 0;
        }
      }

      else
      {
        v8 = *v3;
        v2[2] = v3 + 9;
        if (v3 != -8)
        {
          v9 = *v7;
          if (v9 < 2)
          {
            *result = v8;
            result[8] = v9;
            result[16] = 1;
            return result;
          }

          goto LABEL_24;
        }

        v15 = result;
        v16 = v2;
      }

      v2 = v16;
      *v16 = 0;
      v16[1] = 0;
      goto LABEL_12;
    }

LABEL_24:
    v15 = result;
    v16 = v2;
    goto LABEL_15;
  }

  v15 = result;
  v16 = v2;
  *v2 = 0;
  v2[1] = 0;
LABEL_12:
  v10 = v2[3];
  if (!v10)
  {
    v5 = 0;
LABEL_14:
    v4 = 0;
    goto LABEL_15;
  }

  if (!v5)
  {
    goto LABEL_14;
  }

  (*(*v10 + 16))(v10);
  v4 = *v16;
  v5 = v16[1];
LABEL_15:
  *v16 = 0;
  v16[1] = 0;
  v11 = v16[3];
  if (v11 && v5)
  {
    (*(*v11 + 16))(v11, v4);
  }

  *v15 = 0;
  v15[16] = 0;
  v12 = v16[1];
  *v16 = 0;
  v16[1] = 0;
  result = v16[3];
  if (result && v12)
  {
    v13 = *(*result + 16);

    return v13();
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::tuple<WTF::MediaTime>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<WTF::MediaTime,void>::decode(a1, &v9);
  if (v10 & 1) != 0 || ((v6 = *a1, v7 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (result = *(a1 + 3)) != 0) ? (v8 = v7 == 0) : (v8 = 1), !v8 && (result = (*(*result + 16))(result, v6), (v10)))
  {
    *a2 = v9;
    v5 = 1;
  }

  else
  {
    v5 = 0;
    *a2 = 0;
  }

  *(a2 + 16) = v5;
  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages22RemoteMediaPlayerProxy17PerformTaskAtTimeENS2_10ConnectionEN6WebKit22RemoteMediaPlayerProxyES9_FvRKNS_9MediaTimeEONS_17CompletionHandlerIFvNSt3__18optionalISA_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSG_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F2360;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages22RemoteMediaPlayerProxy17PerformTaskAtTimeENS2_10ConnectionEN6WebKit22RemoteMediaPlayerProxyES9_FvRKNS_9MediaTimeEONS_17CompletionHandlerIFvNSt3__18optionalISA_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSG_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F2360;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages22RemoteMediaPlayerProxy17PerformTaskAtTimeENS2_10ConnectionEN6WebKit22RemoteMediaPlayerProxyES9_FvRKNS_9MediaTimeEONS_17CompletionHandlerIFvNSt3__18optionalISA_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSG_EE4callESG_(uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3511;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v12 = v5;
  LOBYTE(v4) = a2[16];
  v6 = IPC::Encoder::grow(v5, 1uLL, 1);
  if (v4)
  {
    if (v7)
    {
      *v6 = 1;
      if (a2[16])
      {
        IPC::ArgumentCoder<WTF::MediaTime,void>::encode(v5, a2);
        goto LABEL_7;
      }

      std::__throw_bad_optional_access[abi:sn200100]();
    }

LABEL_11:
    __break(0xC471u);
    JUMPOUT(0x19DA12578);
  }

  if (!v7)
  {
    goto LABEL_11;
  }

  *v6 = 0;
LABEL_7:
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

uint64_t IPC::Decoder::decode<std::tuple<WTF::MonotonicTime>>(IPC::Decoder *a1)
{
  v2 = IPC::Decoder::decode<WTF::MonotonicTime>(a1);
  v4 = v3;
  if ((v3 & 1) == 0)
  {
    IPC::Decoder::markInvalid(a1);
  }

  if (v4)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages22RemoteMediaPlayerProxy21RequestHostingContextENS2_10ConnectionEN6WebKit22RemoteMediaPlayerProxyES9_FvONS_17CompletionHandlerIFvN7WebCore14HostingContextEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSC_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F2388;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages22RemoteMediaPlayerProxy21RequestHostingContextENS2_10ConnectionEN6WebKit22RemoteMediaPlayerProxyES9_FvONS_17CompletionHandlerIFvN7WebCore14HostingContextEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSC_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F2388;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages22RemoteMediaPlayerProxy21RequestHostingContextENS2_10ConnectionEN6WebKit22RemoteMediaPlayerProxyES9_FvONS_17CompletionHandlerIFvN7WebCore14HostingContextEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSC_EE4callESC_(uint64_t a1, unsigned int *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3512;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v5, *a2);
  IPC::ArgumentCoder<WTF::MachSendRightAnnotated,void>::encode(v5, a2 + 2);
  IPC::Connection::sendMessageImpl(v3, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v6);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages22RemoteMediaPlayerProxy13IsCrossOriginEN6WebKit22RemoteMediaPlayerProxyES8_FvN7WebCore18SecurityOriginDataEONS_17CompletionHandlerIFvNSt3__18optionalIbEEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSE_EED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F23B0;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages22RemoteMediaPlayerProxy13IsCrossOriginEN6WebKit22RemoteMediaPlayerProxyES8_FvN7WebCore18SecurityOriginDataEONS_17CompletionHandlerIFvNSt3__18optionalIbEEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSE_EED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F23B0;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages22RemoteMediaPlayerProxy13IsCrossOriginEN6WebKit22RemoteMediaPlayerProxyES8_FvN7WebCore18SecurityOriginDataEONS_17CompletionHandlerIFvNSt3__18optionalIbEEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSE_EE4callESE_(uint64_t a1, __int16 a2)
{
  v4 = a2;
  v2 = a1 + 8;
  IPC::ArgumentCoder<std::optional<BOOL>,void>::encode<IPC::Encoder,std::optional<BOOL>>(*(a1 + 8), &v4);
  return IPC::Connection::sendMessageImpl(*(v2 + 8), v2, 0, 0);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages22RemoteMediaPlayerProxy8ErrorLogEN6WebKit22RemoteMediaPlayerProxyES8_FvONS_17CompletionHandlerIFvNS_6StringEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSA_EED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F23D8;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages22RemoteMediaPlayerProxy8ErrorLogEN6WebKit22RemoteMediaPlayerProxyES8_FvONS_17CompletionHandlerIFvNS_6StringEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSA_EED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F23D8;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages22RemoteMediaPlayerProxy8ErrorLogEN6WebKit22RemoteMediaPlayerProxyES8_FvONS_17CompletionHandlerIFvNS_6StringEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSA_EE4callESA_(uint64_t a1, uint64_t *a2)
{
  v2 = (a1 + 8);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(*(a1 + 8), a2);
  v3 = v2[1];

  return IPC::Connection::sendMessageImpl(v3, v2, 0, 0);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages22RemoteMediaPlayerProxy9AccessLogEN6WebKit22RemoteMediaPlayerProxyES8_FvONS_17CompletionHandlerIFvNS_6StringEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSA_EED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F2400;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages22RemoteMediaPlayerProxy9AccessLogEN6WebKit22RemoteMediaPlayerProxyES8_FvONS_17CompletionHandlerIFvNS_6StringEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSA_EED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F2400;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages22RemoteMediaPlayerProxy9AccessLogEN6WebKit22RemoteMediaPlayerProxyES8_FvONS_17CompletionHandlerIFvNS_6StringEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSA_EE4callESA_(uint64_t a1, uint64_t *a2)
{
  v2 = (a1 + 8);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(*(a1 + 8), a2);
  v3 = v2[1];

  return IPC::Connection::sendMessageImpl(v3, v2, 0, 0);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages22RemoteMediaPlayerProxy25NativeImageForCurrentTimeEN6WebKit22RemoteMediaPlayerProxyES8_FvONS_17CompletionHandlerIFvONSt3__18optionalINS_13MachSendRightEEEN7WebCore21DestinationColorSpaceEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSE_SG_EED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F2428;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages22RemoteMediaPlayerProxy25NativeImageForCurrentTimeEN6WebKit22RemoteMediaPlayerProxyES8_FvONS_17CompletionHandlerIFvONSt3__18optionalINS_13MachSendRightEEEN7WebCore21DestinationColorSpaceEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSE_SG_EED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F2428;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages22RemoteMediaPlayerProxy25NativeImageForCurrentTimeEN6WebKit22RemoteMediaPlayerProxyES8_FvONS_17CompletionHandlerIFvONSt3__18optionalINS_13MachSendRightEEEN7WebCore21DestinationColorSpaceEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSE_SG_EE4callESE_SG_(uint64_t a1, unint64_t a2, CFTypeRef *a3)
{
  v6 = (a1 + 8);
  v7 = *(a1 + 8);
  v8 = *(a2 + 4);
  v9 = IPC::Encoder::grow(v7, 1uLL, 1);
  if (v8)
  {
    if (v10)
    {
      *v9 = 1;
      if (*(a2 + 4))
      {
        IPC::Encoder::addAttachment(v7, a2);
        goto LABEL_7;
      }

      std::__throw_bad_optional_access[abi:sn200100]();
    }

LABEL_11:
    __break(0xC471u);
    JUMPOUT(0x19DA12C0CLL);
  }

  if (!v10)
  {
    goto LABEL_11;
  }

  *v9 = 0;
LABEL_7:
  IPC::ArgumentCoder<WebCore::DestinationColorSpace,void>::encode(v7, a3);
  v11 = *(a1 + 16);

  return IPC::Connection::sendMessageImpl(v11, v6, 0, 0);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages22RemoteMediaPlayerProxy10ColorSpaceEN6WebKit22RemoteMediaPlayerProxyES8_FvONS_17CompletionHandlerIFvN7WebCore21DestinationColorSpaceEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSB_EED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F2450;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages22RemoteMediaPlayerProxy10ColorSpaceEN6WebKit22RemoteMediaPlayerProxyES8_FvONS_17CompletionHandlerIFvN7WebCore21DestinationColorSpaceEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSB_EED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F2450;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages22RemoteMediaPlayerProxy10ColorSpaceEN6WebKit22RemoteMediaPlayerProxyES8_FvONS_17CompletionHandlerIFvN7WebCore21DestinationColorSpaceEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSB_EE4callESB_(uint64_t a1, CFTypeRef *a2)
{
  v2 = (a1 + 8);
  IPC::ArgumentCoder<WebCore::DestinationColorSpace,void>::encode(*(a1 + 8), a2);
  v3 = v2[1];

  return IPC::Connection::sendMessageImpl(v3, v2, 0, 0);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages22RemoteMediaPlayerProxy33VideoFrameForCurrentTimeIfChangedEN6WebKit22RemoteMediaPlayerProxyES8_FvONS_17CompletionHandlerIFvONSt3__18optionalINS7_31RemoteVideoFrameProxyPropertiesEEEbEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSE_bEED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F2478;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages22RemoteMediaPlayerProxy33VideoFrameForCurrentTimeIfChangedEN6WebKit22RemoteMediaPlayerProxyES8_FvONS_17CompletionHandlerIFvONSt3__18optionalINS7_31RemoteVideoFrameProxyPropertiesEEEbEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSE_bEED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F2478;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages22RemoteMediaPlayerProxy33VideoFrameForCurrentTimeIfChangedEN6WebKit22RemoteMediaPlayerProxyES8_FvONS_17CompletionHandlerIFvONSt3__18optionalINS7_31RemoteVideoFrameProxyPropertiesEEEbEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSE_bEE4callESE_b(uint64_t a1, uint64_t a2, char a3)
{
  v5 = (a1 + 8);
  v6 = *(a1 + 8);
  IPC::ArgumentCoder<std::optional<WebKit::RemoteVideoFrameProxyProperties>,void>::encode<IPC::Encoder,std::optional<WebKit::RemoteVideoFrameProxyProperties>>(v6, a2);
  v7 = IPC::Encoder::grow(v6, 1uLL, 1);
  if (v8)
  {
    *v7 = a3;
    v9 = *(a1 + 16);

    return IPC::Connection::sendMessageImpl(v9, v5, 0, 0);
  }

  else
  {
    result = 1067;
    __break(0xC471u);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages26RemoteMediaResourceManager16ResponseReceivedENS2_10ConnectionEN6WebKit26RemoteMediaResourceManagerES9_FvNS_23ObjectIdentifierGenericINS8_33RemoteMediaResourceIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEERKN7WebCore16ResourceResponseEbONS_17CompletionHandlerIFvNSF_25ShouldContinuePolicyCheckEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSK_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F24A0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages26RemoteMediaResourceManager16ResponseReceivedENS2_10ConnectionEN6WebKit26RemoteMediaResourceManagerES9_FvNS_23ObjectIdentifierGenericINS8_33RemoteMediaResourceIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEERKN7WebCore16ResourceResponseEbONS_17CompletionHandlerIFvNSF_25ShouldContinuePolicyCheckEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSK_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F24A0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages26RemoteMediaResourceManager16ResponseReceivedENS2_10ConnectionEN6WebKit26RemoteMediaResourceManagerES9_FvNS_23ObjectIdentifierGenericINS8_33RemoteMediaResourceIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEERKN7WebCore16ResourceResponseEbONS_17CompletionHandlerIFvNSF_25ShouldContinuePolicyCheckEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSK_EE4callESK_(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3515;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v12 = v5;
  v6 = IPC::Encoder::grow(v5, 1uLL, 1);
  if (v7)
  {
    *v6 = v2;
    IPC::Connection::sendMessageImpl(v3, &v12, 0, 0);
    result = v12;
    v12 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v8);
      return bmalloc::api::tzoneFree(v10, v11);
    }
  }

  else
  {
    result = 1067;
    __break(0xC471u);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages26RemoteMediaResourceManager16RedirectReceivedENS2_10ConnectionEN6WebKit26RemoteMediaResourceManagerES9_FvNS_23ObjectIdentifierGenericINS8_33RemoteMediaResourceIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEON7WebCore15ResourceRequestERKNSF_16ResourceResponseEONS_17CompletionHandlerIFvSH_EEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSH_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F24C8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages26RemoteMediaResourceManager16RedirectReceivedENS2_10ConnectionEN6WebKit26RemoteMediaResourceManagerES9_FvNS_23ObjectIdentifierGenericINS8_33RemoteMediaResourceIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEON7WebCore15ResourceRequestERKNSF_16ResourceResponseEONS_17CompletionHandlerIFvSH_EEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSH_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F24C8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages26RemoteMediaResourceManager16RedirectReceivedENS2_10ConnectionEN6WebKit26RemoteMediaResourceManagerES9_FvNS_23ObjectIdentifierGenericINS8_33RemoteMediaResourceIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEON7WebCore15ResourceRequestERKNSF_16ResourceResponseEONS_17CompletionHandlerIFvSH_EEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSH_EE4callESH_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3514;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<WebCore::ResourceRequest,void>::encode(v5, a2);
  IPC::Connection::sendMessageImpl(v3, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v6);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages26RemoteMediaResourceManager12DataReceivedENS2_10ConnectionEN6WebKit26RemoteMediaResourceManagerES9_FvNS_23ObjectIdentifierGenericINS8_33RemoteMediaResourceIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS2_21SharedBufferReferenceEONS_17CompletionHandlerIFvONSt3__18optionalIN7WebCore18SharedMemoryHandleEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F24F0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages26RemoteMediaResourceManager12DataReceivedENS2_10ConnectionEN6WebKit26RemoteMediaResourceManagerES9_FvNS_23ObjectIdentifierGenericINS8_33RemoteMediaResourceIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS2_21SharedBufferReferenceEONS_17CompletionHandlerIFvONSt3__18optionalIN7WebCore18SharedMemoryHandleEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F24F0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages26RemoteMediaResourceManager12DataReceivedENS2_10ConnectionEN6WebKit26RemoteMediaResourceManagerES9_FvNS_23ObjectIdentifierGenericINS8_33RemoteMediaResourceIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS2_21SharedBufferReferenceEONS_17CompletionHandlerIFvONSt3__18optionalIN7WebCore18SharedMemoryHandleEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_EE4callESN_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3513;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::optional<WebCore::SharedMemoryHandle>,void>::encode<IPC::Encoder,std::optional<WebCore::SharedMemoryHandle>>(v5, a2);
  IPC::Connection::sendMessageImpl(v3, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v6);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

void IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ResourceError>>(uint64_t a1, uint64_t *a2)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v6 & 1) == 0)
  {
    *a1 = 0;
    *(a1 + 88) = 0;
LABEL_14:
    v12 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    v13 = a2[3];
    if (v13)
    {
      v14 = v12 == 0;
    }

    else
    {
      v14 = 1;
    }

    if (!v14)
    {
      v15 = *(*v13 + 16);

      v15(v5);
    }

    return;
  }

  v7 = v4;
  IPC::Decoder::decode<WebCore::ResourceError>(a2, &v16);
  if (v23 == 1)
  {
    v8 = v16;
    v16 = 0;
    *a1 = v7;
    *(a1 + 8) = v8;
    v5.n128_f64[0] = WTF::URL::URL(a1 + 16, &v17);
    *(a1 + 56) = v18;
    *(a1 + 64) = v19;
    *(a1 + 68) = v20;
    *(a1 + 72) = v21;
    *(a1 + 80) = v22;
    *(a1 + 88) = 1;
    if (v23)
    {
      v21 = 0;
      v10 = v17;
      v18 = 0;
      v17 = 0;
      if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v10, v9);
      }

      v11 = v16;
      v16 = 0;
      if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v11, v9);
      }
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 88) = 0;
  }

  if ((*(a1 + 88) & 1) == 0)
  {
    goto LABEL_14;
  }
}

uint64_t ___ZN6WebKit22XPCServiceEventHandlerEPU24objcproto13OS_xpc_object8NSObject_block_invoke_9(int a1, const char *a2, xpc_object_t xstring)
{
  string_ptr = xpc_string_get_string_ptr(xstring);
  setenv(a2, string_ptr, 1);
  return 1;
}

uint64_t _ZZZN6WebKit22XPCServiceEventHandlerEPU24objcproto13OS_xpc_object8NSObjectEUb_EN3__1D1Ev(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
  }

  v3 = *(a1 + 8);
  if (v3)
  {
  }

  return a1;
}

void sub_19DA134EC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

WebKit::RemoteLayerWithRemoteRenderingBackingStore *WebKit::RemoteLayerBackingStore::createForLayer@<X0>(WebKit::RemoteLayerBackingStore *this@<X0>, WebKit::PlatformCALayerRemote *a2@<X1>, WebKit::RemoteLayerBackingStore **a3@<X8>)
{
  if (WebKit::RemoteLayerBackingStore::processModelForLayer(this, a2))
  {
    v6 = WebKit::RemoteLayerWithRemoteRenderingBackingStore::operator new(0x208, v5);
    result = WebKit::RemoteLayerWithRemoteRenderingBackingStore::RemoteLayerWithRemoteRenderingBackingStore(v6, this);
    *a3 = v6;
  }

  else
  {

    return std::make_unique[abi:sn200100]<WebKit::RemoteLayerWithInProcessRenderingBackingStore,WebKit::PlatformCALayerRemote &,0>(this, v5, a3);
  }

  return result;
}

BOOL WebKit::RemoteLayerBackingStore::processModelForLayer(WebKit::RemoteLayerBackingStore *this, WebKit::PlatformCALayerRemote *a2)
{
  {
    v2 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v5 = this;
    v4 = WebKit::WebProcess::operator new(0x370, a2);
    v2 = WebKit::WebProcess::WebProcess(v4);
    this = v5;
    WebKit::WebProcess::singleton(void)::process = v2;
  }

  return *(v2 + 802) == 1 && !WebCore::PlatformCALayer::needsPlatformContext(this);
}

uint64_t WebKit::RemoteLayerBackingStore::RemoteLayerBackingStore(WebKit::RemoteLayerBackingStore *this, WebKit::PlatformCALayerRemote *a2)
{
  *(this + 1) = 0;
  *(this + 4) = 0;
  *this = &unk_1F10F26A8;
  v4 = WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2 + 16, a2);
  v5 = *(a2 + 8);
  atomic_fetch_add(v5, 1u);
  *(this + 3) = v5;
  *(this + 32) = 1;
  *(this + 9) = 0;
  *(this + 10) = 0;
  v6 = *WebCore::DestinationColorSpace::SRGB(v4);
  *(this + 6) = v6;
  if (v6)
  {
    CFRetain(v6);
  }

  *(this + 56) = 1;
  *(this + 15) = 1065353216;
  *(this + 64) = 0;
  WebCore::Region::Region((this + 72));
  *(this + 96) = 0;
  *(this + 112) = 0;
  *(this + 120) = 0;
  *(this + 208) = 0;
  *(this + 216) = 0;
  *(this + 224) = 0;
  *(this + 29) = 0;
  *(this + 30) = 0;
  *(this + 31) = this + 264;
  *(this + 32) = 5;
  *(this + 43) = 0xFFF0000000000000;
  __asm { FMOV            V0.2S, #1.0 }

  *(this + 44) = _D0;
  v12 = WebKit::RemoteLayerBackingStore::backingStoreCollection(this);
  v13 = v12;
  if (!v12)
  {
    return this;
  }

  v14 = *(*(v12 + 2) + 8);
  if (v14)
  {
    ++*(v14 + 16);
    (*(*v12 + 16))(v12, this);
    WebKit::RemoteLayerBackingStoreCollection::deref(v13);
    return this;
  }

  result = 92;
  __break(0xC471u);
  return result;
}

void sub_19DA13788(_Unwind_Exception *a1)
{
  v7 = v3;
  WebKit::RemoteLayerBackingStoreCollection::deref(v7);
  v10 = *(v2 + 248);
  if (v6 != v10 && v10)
  {
    *(v2 + 248) = 0;
    *(v2 + 256) = 0;
    WTF::fastFree(v10, v9);
  }

  WTF::Vector<std::unique_ptr<WebKit::ThreadSafeImageBufferSetFlusher>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v5, v9);
  if (*(v2 + 208) == 1)
  {
    mpark::detail::move_constructor<mpark::detail::traits<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,(mpark::detail::Trait)1>::~move_constructor(v4);
  }

  WebCore::Region::~Region((v2 + 72));
  v12 = *(v2 + 48);
  *(v2 + 48) = 0;
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = *(v2 + 24);
  *(v2 + 24) = 0;
  if (v13)
  {
    if (atomic_fetch_add(v13, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v13);
      WTF::fastFree(v13, v11);
    }
  }

  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(v1, v11);
  _Unwind_Resume(a1);
}

uint64_t WebKit::RemoteLayerBackingStore::backingStoreCollection(WebKit::RemoteLayerBackingStore *this)
{
  v1 = *(*(this + 3) + 8);
  if (v1)
  {
    v2 = *(v1 + 896);
    if (v2 && (v3 = *(v2 + 8)) != 0)
    {
      return *(v3 + 88);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    result = 92;
    __break(0xC471u);
  }

  return result;
}

void WebKit::RemoteLayerBackingStore::~RemoteLayerBackingStore(unsigned int **this)
{
  *this = &unk_1F10F26A8;
  v2 = WebKit::RemoteLayerBackingStore::backingStoreCollection(this);
  v4 = v2;
  if (v2)
  {
    v5 = *(*(v2 + 2) + 8);
    if (!v5)
    {
      __break(0xC471u);
      return;
    }

    ++*(v5 + 16);
    (*(*v2 + 24))(v2, this);
    WebKit::RemoteLayerBackingStoreCollection::deref(v4);
  }

  v6 = this[31];
  if (this + 33 != v6 && v6 != 0)
  {
    this[31] = 0;
    *(this + 64) = 0;
    WTF::fastFree(v6, v3);
  }

  WTF::Vector<std::unique_ptr<WebKit::ThreadSafeImageBufferSetFlusher>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((this + 29), v3);
  if (*(this + 208) == 1)
  {
    mpark::detail::move_constructor<mpark::detail::traits<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,(mpark::detail::Trait)1>::~move_constructor((this + 15));
  }

  WebCore::Region::~Region((this + 9));
  v9 = this[6];
  this[6] = 0;
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = this[3];
  this[3] = 0;
  if (v10)
  {
    if (atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v10);
      WTF::fastFree(v10, v8);
    }
  }

  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, v8);
}

void sub_19DA139D0(_Unwind_Exception *a1)
{
  v3 = v2;
  WebKit::RemoteLayerBackingStoreCollection::deref(v3);
  v6 = *(v1 + 248);
  if ((v1 + 264) != v6 && v6 != 0)
  {
    *(v1 + 248) = 0;
    *(v1 + 256) = 0;
    WTF::fastFree(v6, v5);
  }

  WTF::Vector<std::unique_ptr<WebKit::ThreadSafeImageBufferSetFlusher>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v1 + 232, v5);
  if (*(v1 + 208) == 1)
  {
    mpark::detail::move_constructor<mpark::detail::traits<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,(mpark::detail::Trait)1>::~move_constructor((v1 + 120));
  }

  WebCore::Region::~Region((v1 + 72));
  v9 = *(v1 + 48);
  *(v1 + 48) = 0;
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = *(v1 + 24);
  *(v1 + 24) = 0;
  if (v10)
  {
    if (atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v10);
      WTF::fastFree(v10, v8);
    }
  }

  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory((v1 + 8), v8);
  _Unwind_Resume(a1);
}

double WebKit::RemoteLayerBackingStore::clearBackingStore(WebKit::RemoteLayerBackingStore *this)
{
  if (*(this + 208) == 1)
  {
    v3 = this;
    mpark::detail::move_constructor<mpark::detail::traits<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,(mpark::detail::Trait)1>::~move_constructor((this + 120));
    this = v3;
    *(v3 + 208) = 0;
  }

  return WebKit::RemoteLayerBackingStore::setNeedsDisplay(this);
}

double WebKit::RemoteLayerBackingStore::setNeedsDisplay(WebKit::RemoteLayerBackingStore *this)
{
  v8.m_location = WebKit::RemoteLayerBackingStore::layerBounds(this);
  v8.m_size = v2;
  WebCore::Region::Region(v9, &v8);
  WebCore::Region::unite();
  WebCore::Region::~Region(v9);
  __asm { FMOV            V0.2S, #1.0 }

  *(this + 44) = result;
  return result;
}

void sub_19DA13B34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  WebCore::Region::~Region(va);
  _Unwind_Resume(a1);
}

uint64_t WebKit::RemoteLayerBackingStore::ensureBackingStore(uint64_t a1, unsigned __int8 *a2)
{
  v4 = a1 + 32;
  if (*(a1 + 32) != *a2 || (*(a1 + 36) == *(a2 + 1) ? (v5 = *(a1 + 40) == *(a2 + 2)) : (v5 = 0), !v5 || (result = WebCore::operator==(), !result) || *(a1 + 56) != a2[24] || *(a1 + 60) != *(a2 + 7) || *(a1 + 64) != a2[32]))
  {
    v7 = *a2;
    *(v4 + 8) = *(a2 + 2);
    *v4 = v7;
    v8 = *(a2 + 2);
    if (v8)
    {
      CFRetain(*(a2 + 2));
    }

    v9 = *(a1 + 48);
    *(a1 + 48) = v8;
    if (v9)
    {
      CFRelease(v9);
    }

    v10 = *(a2 + 3);
    *(a1 + 64) = a2[32];
    *(a1 + 56) = v10;
    v11 = *(*a1 + 96);

    return v11(a1);
  }

  return result;
}

WTF::MachSendRight *WebKit::RemoteLayerBackingStore::encode(WebKit::RemoteLayerBackingStore *this, IPC::Encoder *a2)
{
  v10[0] = 0;
  v11 = 0;
  if (*(this + 208) == 1)
  {
    mpark::detail::copy_constructor<mpark::detail::traits<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,(mpark::detail::Trait)1>::copy_constructor(&v7, (this + 120));
    std::optional<mpark::variant<WebCore::ShareableBitmapHandle,WTF::MachSendRight>>::operator=[abi:sn200100]<mpark::variant<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,void>(v10, &v7);
  }

  else
  {
    (*(*this + 104))(&v7, this);
    std::__optional_storage_base<mpark::variant<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<mpark::variant<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,false>>(v10, &v7);
    if (v9 != 1)
    {
      goto LABEL_4;
    }
  }

  mpark::detail::move_constructor<mpark::detail::traits<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,(mpark::detail::Trait)1>::~move_constructor(&v7);
LABEL_4:
  IPC::ArgumentCoder<std::optional<mpark::variant<WebCore::ShareableBitmapHandle,WTF::MachSendRight>>,void>::encode<IPC::Encoder,std::optional<mpark::variant<WebCore::ShareableBitmapHandle,WTF::MachSendRight>>>(a2, v10);
  v7 = (*(*this + 112))(this);
  v8 = v4;
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a2, &v7);
  (*(*this + 88))(this, a2);
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a2, this + 216);
  if (*(this + 112))
  {
    LOBYTE(v7) = 1;
    IPC::Encoder::operator<<<BOOL>(a2, &v7);
    if ((*(this + 112) & 1) == 0)
    {
      v6 = std::__throw_bad_optional_access[abi:sn200100]();
      mpark::detail::move_constructor<mpark::detail::traits<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,(mpark::detail::Trait)1>::~move_constructor(&v7);
      if (v11 == 1)
      {
        mpark::detail::move_constructor<mpark::detail::traits<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,(mpark::detail::Trait)1>::~move_constructor(v10);
      }

      _Unwind_Resume(v6);
    }

    IPC::ArgumentCoder<WebCore::IntRect,void>::encode(a2, this + 24);
  }

  else
  {
    LOBYTE(v7) = 0;
    IPC::Encoder::operator<<<BOOL>(a2, &v7);
  }

  IPC::Encoder::operator<<<BOOL>(a2, this + 64);
  LOBYTE(v7) = *(this + 32);
  IPC::Encoder::operator<<<BOOL>(a2, &v7);
  LOBYTE(v7) = *(this + 56) == 4;
  IPC::Encoder::operator<<<BOOL>(a2, &v7);
  result = IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a2, *(this + 89));
  if (v11 == 1)
  {
    return mpark::detail::move_constructor<mpark::detail::traits<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,(mpark::detail::Trait)1>::~move_constructor(v10);
  }

  return result;
}

WTF::MachSendRight *std::optional<mpark::variant<WebCore::ShareableBitmapHandle,WTF::MachSendRight>>::operator=[abi:sn200100]<mpark::variant<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,void>(WTF::MachSendRight *a1, uint64_t a2)
{
  if (*(a1 + 88) == 1)
  {
    return mpark::variant<WebCore::ShareableBitmapHandle,WTF::MachSendRight>::operator=(a1, a2);
  }

  result = mpark::detail::move_constructor<mpark::detail::traits<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,(mpark::detail::Trait)1>::move_constructor(a1, a2);
  *(result + 88) = 1;
  return result;
}

uint64_t WTF::TextStream::dumpProperty<BOOL>(WTF::TextStream *a1)
{
  WTF::TextStream::startGroup(a1);
  WTF::TextStream::operator<<();
  WTF::TextStream::operator<<();
  WTF::TextStream::operator<<();

  return WTF::TextStream::endGroup(a1);
}

uint64_t WTF::TextStream::dumpProperty<float>(WTF::TextStream *a1)
{
  WTF::TextStream::startGroup(a1);
  WTF::TextStream::operator<<();
  WTF::TextStream::operator<<();
  WTF::TextStream::operator<<();

  return WTF::TextStream::endGroup(a1);
}

uint64_t WebKit::RemoteLayerBackingStore::layerWillBeDisplayed(WebKit::RemoteLayerBackingStore *this)
{
  v2 = WebKit::RemoteLayerBackingStore::backingStoreCollection(this);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = *(*(v2 + 16) + 8);
  if (v4)
  {
    ++*(v4 + 16);
    WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::add<WebKit::RemoteLayerBackingStore>(&v19, (v2 + 56), this);
    WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::find<WebKit::RemoteLayerBackingStore>(&v19, v3 + 40, *(this + 1));
    v5 = *(v3 + 40);
    if (v5)
    {
      v6 = *(v5 - 4);
      v7 = (v5 + 8 * v6);
    }

    else
    {
      v7 = 0;
      v6 = 0;
    }

    v14 = v3 + 40;
    v15 = v7;
    v16 = v7;
    v17 = v7;
    v18 = v5 + 8 * v6;
    WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v14);
    v8 = v20;
    v9 = v15;
    v10 = v20 != v15;
    v11 = WebKit::RemoteLayerBackingStore::needsDisplay(this);
    if (v8 == v9)
    {
      v12 = v11;
    }

    else
    {
      v12 = 1;
    }

    if (v12 == 1)
    {
      WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::add<WebKit::RemoteLayerBackingStore>(&v14, (v3 + 72), this);
    }

    if (v8 != v9)
    {
      WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::add<WebKit::RemoteLayerBackingStore>(&v14, (v3 + 24), this);
      WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::remove(v3 + 40, v8);
    }

    WebKit::RemoteLayerBackingStoreCollection::deref(v3);
    return v10;
  }

  result = 92;
  __break(0xC471u);
  return result;
}

uint64_t WebKit::RemoteLayerBackingStore::layerWillBeDisplayedWithRenderingSuppression(WebKit::RemoteLayerBackingStore *this)
{
  v2 = WebKit::RemoteLayerBackingStore::backingStoreCollection(this);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = *(*(v2 + 16) + 8);
  if (v4)
  {
    ++*(v4 + 16);
    WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::add<WebKit::RemoteLayerBackingStore>(v10, (v2 + 56), this);
    WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::find<WebKit::RemoteLayerBackingStore>(v10, v3 + 40, *(this + 1));
    v5 = *(v3 + 5);
    if (v5)
    {
      v6 = *(v5 - 4);
      v7 = v5 + 8 * v6;
    }

    else
    {
      v7 = 0;
      v6 = 0;
    }

    v9[0] = v3 + 40;
    v9[1] = v7;
    v9[2] = v7;
    v9[3] = v7;
    v9[4] = v5 + 8 * v6;
    WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(v9);
    WebKit::RemoteLayerBackingStoreCollection::deref(v3);
    return 0;
  }

  result = 92;
  __break(0xC471u);
  return result;
}

void WebKit::RemoteLayerBackingStore::setNeedsDisplay(WebKit::RemoteLayerBackingStore *a1, IntPoint a2, IntSize a3)
{
  v6.m_location = a2;
  v6.m_size = a3;
  v7.m_location = WebKit::RemoteLayerBackingStore::layerBounds(a1);
  v7.m_size = v3;
  WebCore::IntRect::intersect(&v7, &v6);
  v4 = v7;
  WebCore::Region::Region(v5, &v4);
  WebCore::Region::unite();
  WebCore::Region::~Region(v5);
}

void sub_19DA1424C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  WebCore::Region::~Region(va);
  _Unwind_Resume(a1);
}

BOOL WebKit::RemoteLayerBackingStore::supportsPartialRepaint(WebKit::RemoteLayerBackingStore *this)
{
  v1 = WebCore::ImageBuffer::calculateBackendSize();
  v2 = HIDWORD(v1);
  if (v1 >= 0)
  {
    v3 = v1;
  }

  else
  {
    v3 = -v1;
  }

  if (v1 < 0)
  {
    LODWORD(v2) = -HIDWORD(v1);
  }

  v4 = v3 * v2;
  return (v4 & 0xFFFFFFFF00000000) != 0 || v4 > 0x1000;
}

uint64_t WebKit::RemoteLayerBackingStore::drawingRequiresClearedPixels(WebKit::RemoteLayerBackingStore *this)
{
  if (*(this + 64))
  {
    return 0;
  }

  v2 = *(*(this + 3) + 8);
  if (v2)
  {
    return (*(**(v2 + 56) + 240))(*(v2 + 56)) ^ 1;
  }

  result = 92;
  __break(0xC471u);
  return result;
}

double WebKit::RemoteLayerBackingStore::setDelegatedContents(uint64_t a1, uint64_t a2)
{
  mpark::detail::copy_constructor<mpark::detail::traits<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,(mpark::detail::Trait)1>::copy_constructor(v21, a2);
  std::optional<mpark::variant<WebCore::ShareableBitmapHandle,WTF::MachSendRight>>::operator=[abi:sn200100]<mpark::variant<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,void>((a1 + 120), v21);
  mpark::detail::move_constructor<mpark::detail::traits<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,(mpark::detail::Trait)1>::~move_constructor(v21);
  v5 = *(a2 + 88);
  if (v5)
  {
    atomic_fetch_add((v5 + 8), 1u);
    {
    }

    else
    {
    }

    *NonCompact = &unk_1F10F27B8;
    *(NonCompact + 1) = v5;
    v21[0] = NonCompact;
    v8 = *(a1 + 244);
    if (v8 == *(a1 + 240))
    {
      if (v8 + (v8 >> 1) <= v8 + 1)
      {
        v9 = v8 + 1;
      }

      else
      {
        v9 = v8 + (v8 >> 1);
      }

      if (v9 <= 0x10)
      {
        v10 = 16;
      }

      else
      {
        v10 = v9;
      }

      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1 + 232, v10);
      v8 = *(a1 + 244);
      v11 = *(a1 + 232);
      v12 = v21[0];
      v21[0] = 0;
      *(v11 + 8 * v8) = v12;
    }

    else
    {
      v13 = *(a1 + 232);
      v21[0] = 0;
      *(v13 + 8 * v8) = NonCompact;
    }

    *(a1 + 244) = v8 + 1;
  }

  if (*(a2 + 104) == 1)
  {
    v14 = *(a2 + 96);
    if ((*(a1 + 224) & 1) == 0)
    {
      *(a1 + 224) = 1;
    }

    *(a1 + 216) = v14;
  }

  else if (*(a1 + 224) == 1)
  {
    *(a1 + 224) = 0;
  }

  WebCore::Region::Region(v21);
  WebCore::Region::operator=();
  WebCore::Region::~Region(v21);
  WTF::Vector<WebCore::FloatRect,5ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity((a1 + 248), v15);
  __asm { FMOV            V0.2S, #1.0 }

  *(a1 + 352) = result;
  return result;
}

void sub_19DA144F8(_Unwind_Exception *a1, void *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Unwind_Resume(a1);
}

bmalloc::api **std::unique_ptr<WebKit::anonymous namespace::DelegatedContentsFenceFlusher>::~unique_ptr[abi:sn200100](bmalloc::api **a1, void *a2)
{
  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    v4 = *(v3 + 1);
    *(v3 + 1) = 0;
    if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v4 + 2);
      (*(*v4 + 8))(v4);
    }

    bmalloc::api::tzoneFree(v3, a2);
  }

  return a1;
}

uint64_t WebKit::RemoteLayerBackingStore::needsDisplay(WebKit::RemoteLayerBackingStore *this)
{
  v2 = WebKit::RemoteLayerBackingStore::backingStoreCollection(this);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = *(*(v2 + 16) + 8);
  if (!v4 || (++*(v4 + 16), (v5 = *(*(this + 3) + 8)) == 0))
  {
    __break(0xC471u);
    JUMPOUT(0x19DA14794);
  }

  v6 = (v5 + 8);
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
      goto LABEL_7;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v6);
LABEL_7:
  if ((*(**(v5 + 56) + 112))(*(v5 + 56), v5))
  {
    goto LABEL_16;
  }

  v9 = 0;
  if (*(this + 9) <= 0.0 || *(this + 10) <= 0.0)
  {
    goto LABEL_18;
  }

  if (!(*(*this + 72))(this) || ((*(*this + 80))(this) & 1) != 0 || *(this + 20) >= 1 && *(this + 21) >= 1 && *(this + 9) > 0.0 && *(this + 10) > 0.0)
  {
LABEL_16:
    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

LABEL_18:
  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::PlatformCALayer,(WTF::DestructionThread)1>::deref(v6);
  WebKit::RemoteLayerBackingStoreCollection::deref(v3);
  return v9;
}

uint64_t WebKit::RemoteLayerBackingStore::dirtyRepaintCounterIfNecessary(WebKit::RemoteLayerBackingStore *this)
{
  v1 = *(*(this + 3) + 8);
  if (v1)
  {
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
        goto LABEL_5;
      }
    }

    v6 = v1;
    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v2);
    v1 = v6;
LABEL_5:
    if ((*(**(v1 + 56) + 72))(*(v1 + 56)))
    {
      v8 = xmmword_19E7033C0;
      WebCore::Region::Region(v7, &v8);
      WebCore::Region::unite();
      WebCore::Region::~Region(v7);
    }

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::PlatformCALayer,(WTF::DestructionThread)1>::deref(v2);
  }

  else
  {
    result = 103;
    __break(0xC471u);
  }

  return result;
}

void sub_19DA148CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WebCore::Region::~Region(va);
  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::PlatformCALayer,(WTF::DestructionThread)1>::deref(v2);
  _Unwind_Resume(a1);
}

uint64_t WebKit::RemoteLayerBackingStore::drawInContext(WebKit::RemoteLayerBackingStore *this, WebCore::GraphicsContext *a2)
{
  (*(*a2 + 104))(a2, 1);
  v27 = *(this + 72);
  (*(*a2 + 360))(a2);
  v4 = *(*(this + 3) + 8);
  if (v4)
  {
    v5 = *(v4 + 896);
    if (v5 && (v6 = *(v5 + 8)) != 0)
    {
      if (*(v6 + 208) == 1)
      {
        v7 = 6;
      }

      else
      {
        v7 = 4;
      }
    }

    else
    {
      v7 = 4;
    }

    v8 = (v4 + 8);
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
    v11 = *(v4 + 16);
    if (v11 <= 0xB)
    {
      v12 = 1 << v11;
      if ((v12 & 0x44) != 0)
      {
        v13 = *(v4 + 56);
        WebCore::FloatRect::FloatRect(v26, &v27);
        (*(*v13 + 56))(v13, v4, a2, v26, v7);
      }

      else if ((v12 & 0xC02) != 0)
      {
        WebCore::PlatformCALayer::drawLayerContents();
      }
    }

    (*(*a2 + 112))(a2, 1);
    WebCore::Region::Region(v26);
    WebCore::Region::operator=();
    WebCore::Region::~Region(v26);
    WTF::Vector<WebCore::FloatRect,5ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(this + 31, v14);
    v15 = (*(*a2 + 344))(a2);
    if (*(this + 88) >= v15)
    {
      v15 = *(this + 88);
    }

    *(this + 88) = v15;
    v16 = (*(*a2 + 352))(a2);
    if (*(this + 89) >= v16)
    {
      v16 = *(this + 89);
    }

    *(this + 89) = v16;
    (*(**(v4 + 56) + 128))(*(v4 + 56), v4);
    v17 = *(this + 112);
    *(this + 6) = v27;
    if ((v17 & 1) == 0)
    {
      *(this + 112) = 1;
    }

    (*(*this + 64))(v26, this, 1);
    v18 = v26[0];
    if (v26[0])
    {
      v19 = *(this + 61);
      if (v19 == *(this + 60))
      {
        v20 = WTF::Vector<std::unique_ptr<WebKit::ThreadSafeImageBufferSetFlusher>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(this + 232, v19 + 1, v26);
        v19 = *(this + 61);
        v21 = *(this + 29);
        v22 = *v20;
        *v20 = 0;
        *(v21 + 8 * v19) = v22;
      }

      else
      {
        v25 = *(this + 29);
        v26[0] = 0;
        *(v25 + 8 * v19) = v18;
      }

      *(this + 61) = v19 + 1;
      v23 = v26[0];
      v26[0] = 0;
      if (v23)
      {
        (*(*v23 + 8))(v23);
      }
    }

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::PlatformCALayer,(WTF::DestructionThread)1>::deref((v4 + 8));
  }

  else
  {
    result = 92;
    __break(0xC471u);
  }

  return result;
}

CGAffineTransform *WebKit::RemoteLayerBackingStore::enumerateRectsBeingDrawn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  memset(&v11, 0, sizeof(v11));
  (*(*a2 + 696))(&v9, a2, 1);
  WebCore::AffineTransform::operator CGAffineTransform();
  CGAffineTransformInvert(&v11, &v10);
  v9 = v11;
  CGAffineTransformScale(&v10, &v9, *(a1 + 60), -*(a1 + 60));
  v11 = v10;
  v9 = v10;
  result = CGAffineTransformTranslate(&v10, &v9, 0.0, -*(a1 + 40));
  v11 = v10;
  v6 = *(a1 + 260);
  if (v6)
  {
    v7 = *(a1 + 248);
    v8 = 16 * v6;
    do
    {
      memset(&v9, 0, 32);
      WebCore::FloatRect::operator CGRect();
      v10 = v11;
      v13 = CGRectApplyAffineTransform(v12, &v10);
      v9.a = v13.origin.x;
      v9.b = v13.origin.y;
      v9.c = v13.size.width;
      v9.d = v13.size.height;
      WebCore::FloatRect::FloatRect(&v10, &v9);
      result = (*(a3 + 16))(a3, *&v10.a, *(&v10.a + 1), *&v10.b, *(&v10.b + 1));
      v7 += 16;
      v8 -= 16;
    }

    while (v8);
  }

  return result;
}

_BYTE *WebKit::RemoteLayerBackingStoreProperties::RemoteLayerBackingStoreProperties(_BYTE *a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  result = mpark::detail::move_constructor<mpark::detail::traits<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,(mpark::detail::Trait)1>::move_constructor(a1, a2);
  result[88] = 1;
  *(result + 12) = 0;
  result[104] = 0;
  result[112] = 0;
  result[120] = 0;
  result[136] = 0;
  result[144] = 0;
  result[160] = 0;
  result[168] = 0;
  result[184] = 0;
  *(result + 24) = a3;
  result[200] = 1;
  result[208] = 0;
  result[224] = 0;
  result[228] = a4;
  result[229] = 0;
  result[230] = a5;
  *(result + 58) = 1065353216;
  return result;
}

void WebKit::RemoteLayerBackingStoreProperties::applyBackingStoreToLayer(uint64_t a1, void *a2, int a3)
{
  v6 = *(a1 + 136);
  [a2 setContentsOpaque:*(a1 + 228)];
  if (*(a1 + 230) == 1)
  {
    [a2 setWantsExtendedDynamicRangeContent:1];
    v7 = 0.0;
    if (v6)
    {
      v7 = *(a1 + 232);
    }
  }

  else
  {
    [a2 setWantsExtendedDynamicRangeContent:0];
    v7 = 0.0;
  }

  v8 = [a2 setContentsHeadroom:v7];
  v9 = *(a1 + 96);
  if (v9)
  {
    v10 = v9;
    goto LABEL_7;
  }

  if (*(a1 + 88) == 1)
  {
    if (!*(a1 + 80))
    {
      WebCore::ShareableBitmap::create();
      if (v32[0])
      {
        WebCore::ShareableBitmap::makeCGImageCopy(&v33, v32[0]);
        v9 = v33;
        v21 = v32[0];
        v32[0] = 0;
        WTF::ThreadSafeRefCounted<WebCore::ShareableBitmap,(WTF::DestructionThread)0>::deref(v21, v20);
LABEL_37:
        if (v9)
        {
LABEL_7:
          [a2 setContents:v9];
          if ([MEMORY[0x1E6979398] instancesRespondToSelector:sel_contentsDirtyRect] && *(a1 + 224) == 1)
          {
            WebCore::FloatRect::FloatRect(v32, (a1 + 208));
            [a2 contentsScale];
            *&v11 = v11;
            WebCore::FloatRect::scale(v32, *&v11, *&v11);
            [a2 contentsDirtyRect];
            x = v35.origin.x;
            y = v35.origin.y;
            width = v35.size.width;
            height = v35.size.height;
            if (CGRectIsNull(v35))
            {
              WebCore::FloatRect::operator CGRect();
            }

            else
            {
              WebCore::FloatRect::operator CGRect();
              v37.origin.x = v24;
              v37.origin.y = v25;
              v37.size.width = v26;
              v37.size.height = v27;
              v36.origin.x = x;
              v36.origin.y = y;
              v36.size.width = width;
              v36.size.height = height;
              *&v16 = CGRectUnion(v36, v37);
            }

            [a2 setContentsDirtyRect:{v16, v17, v18, v19}];
          }

          return;
        }

        goto LABEL_38;
      }

LABEL_36:
      v9 = 0;
      goto LABEL_37;
    }

    if (*(a1 + 80) != 1)
    {
      mpark::throw_bad_variant_access(v8);
    }

    if (a3 == 2)
    {
      WebCore::IOSurface::createFromSendRight();
      v28 = v32[0];
      if (!v32[0])
      {
        goto LABEL_36;
      }

      if ((v6 & 1) == 0 && *(v32[0] + 8) == 1 && *v32[0] == 7)
      {
        v29 = WebCore::IOSurface::contentEDRHeadroom(v32[0]);
        v28 = v32[0];
        if ((v29 & 0x100000000) == 0)
        {
          WebCore::IOSurface::loadContentEDRHeadroom(v32[0]);
          v28 = v32[0];
        }
      }

      WebCore::IOSurface::asCAIOSurfaceLayerContents(&v33, v28);
      v9 = v33;
    }

    else
    {
      if (a3 == 1)
      {
        WTF::MachSendRight::leakSendRight(a1);
        v9 = CAMachPortCreate();
        goto LABEL_37;
      }

      if (a3)
      {
        goto LABEL_38;
      }

      WebCore::IOSurface::createFromSendRight();
      v22 = v32[0];
      if (!v32[0])
      {
        goto LABEL_36;
      }

      v9 = *(v32[0] + 8);
      if (!v9)
      {
        v32[0] = 0;
        goto LABEL_35;
      }

      v23 = v9;
    }

    v22 = v32[0];
    v32[0] = 0;
LABEL_35:
    WebCore::IOSurface::~IOSurface(v22);
    bmalloc::api::tzoneFree(v30, v31);
    goto LABEL_37;
  }

LABEL_38:

  [a2 _web_clearContents];
}

void sub_19DA151F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WebCore::IOSurface *a10)
{
  if (a10)
  {
    WebCore::IOSurface::~IOSurface(a10);
    bmalloc::api::tzoneFree(v11, v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::RemoteLayerBackingStoreProperties::updateCachedBuffers(uint64_t a1, uint64_t a2, int a3, __n128 a4)
{
  a4.n128_u64[0] = 0;
  v50 = *(a2 + 216);
  v51 = *(a2 + 224);
  v44 = a4;
  *(a2 + 216) = a4;
  v7 = WTF::Vector<WebKit::RemoteLayerTreeNode::CachedContentsBuffer,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v44, a2);
  if (a3 != 2 || *(a1 + 136) != 1 || *(a1 + 88) != 1 || *(a1 + 80) != 1)
  {
    return WTF::Vector<WebKit::RemoteLayerTreeNode::CachedContentsBuffer,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v50, v8);
  }

  v9 = v50;
  v10 = HIDWORD(v51);
  v11 = &v50[2 * HIDWORD(v51)];
  v12 = 0;
  if (HIDWORD(v51))
  {
    v13 = v50;
    v14 = &v50[2 * HIDWORD(v51)];
    v15 = v14;
    do
    {
      if ((*(a1 + 136) != 1 || *(a1 + 120) != *v9 || *(a1 + 128) != *(v9 + 8)) && (*(a1 + 160) != 1 || *(a1 + 144) != *v9 || *(a1 + 152) != *(v9 + 8)) && (*(a1 + 184) != 1 || *(a1 + 168) != *v9 || *(a1 + 176) != *(v9 + 8)))
      {
        v16 = v9;
        if (v14 != &v50[2 * HIDWORD(v51)])
        {
          if (v9 == v15)
          {
            v16 = v14;
          }

          else
          {
            WTF::VectorMover<false,WebKit::RemoteLayerTreeNode::CachedContentsBuffer>::moveOverlapping(v15, v9, v14);
            v16 = (v13 + v14 - v15);
          }
        }

        v7 = std::unique_ptr<WebCore::IOSurface>::reset[abi:sn200100]((v9 + 24), 0);
        v17 = *(v9 + 16);
        *(v9 + 16) = 0;
        if (v17)
        {
        }

        v15 = v9 + 32;
        ++v12;
        v14 = v16;
      }

      v9 += 32;
      v13 += 2;
    }

    while (v9 < v11);
    v9 = v50;
    v10 = HIDWORD(v51);
    v11 = v15;
  }

  else
  {
    v14 = v50;
  }

  v8 = (v9 + 32 * v10);
  if (v11 != v8)
  {
    WTF::VectorMover<false,WebKit::RemoteLayerTreeNode::CachedContentsBuffer>::moveOverlapping(v11, v8, v14);
    v10 = HIDWORD(v51);
    v9 = v50;
  }

  v18 = v10 - v12;
  HIDWORD(v51) = v10 - v12;
  if (v10 != v12)
  {
    if (*(a1 + 136) != 1)
    {
      goto LABEL_65;
    }

    v19 = (v9 + 16);
    v20 = 32 * v18;
    while (*(a1 + 120) != *(v19 - 2))
    {
      v19 += 4;
      v20 -= 32;
      if (!v20)
      {
        goto LABEL_38;
      }
    }

    v21 = *v19;
    if (*v19)
    {
      v22 = v21;
    }

    v23 = *(a1 + 96);
    *(a1 + 96) = v21;
    if (v23)
    {
    }
  }

LABEL_38:
  if (!*(a1 + 96))
  {
    v7 = std::__optional_move_base<mpark::variant<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,false>::__optional_move_base[abi:sn200100](&v44, a1);
    if (*(a1 + 88) == 1)
    {
      v7 = mpark::detail::move_constructor<mpark::detail::traits<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,(mpark::detail::Trait)1>::~move_constructor(a1);
      *(a1 + 88) = 0;
    }

    if (v48)
    {
      if (v47 != 1)
      {
        mpark::throw_bad_variant_access(v7);
      }

      WebCore::IOSurface::createFromSendRight();
      if (v48 == 1)
      {
        mpark::detail::move_constructor<mpark::detail::traits<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,(mpark::detail::Trait)1>::~move_constructor(&v44);
      }

      if (!v49)
      {
        goto LABEL_59;
      }

      v7 = WebCore::IOSurface::asCAIOSurfaceLayerContents(&v44, v49);
      v24 = v44.n128_u64[0];
      v44.n128_u64[0] = 0;
      v25 = *(a1 + 96);
      *(a1 + 96) = v24;
      if (v25)
      {

        v26 = v44.n128_u64[0];
        v44.n128_u64[0] = 0;
        if (v26)
        {
        }
      }

      if (*(a1 + 136))
      {
        v44.n128_u64[0] = *(a1 + 120);
        v44.n128_u32[2] = *(a1 + 128);
        v27 = *(a1 + 96);
        v45 = v27;
        if (v27)
        {
          v28 = v27;
        }

        v29 = v49;
        v49 = 0;
        v46 = v29;
        if (HIDWORD(v51) == v51)
        {
          v30 = WTF::Vector<WebKit::RemoteLayerTreeNode::CachedContentsBuffer,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v50, HIDWORD(v51) + 1, &v44);
          v31 = &v50[2 * HIDWORD(v51)];
          *v31 = *v30;
          v32 = *(v30 + 16);
          *(v30 + 16) = 0;
          *(v30 + 24) = 0;
          v31[1] = v32;
          ++HIDWORD(v51);
          v33 = v46;
          v46 = 0;
          if (v33)
          {
            WebCore::IOSurface::~IOSurface(v33);
            bmalloc::api::tzoneFree(v34, v35);
          }
        }

        else
        {
          v36 = &v50[2 * HIDWORD(v51)];
          *v36 = v44;
          v45 = 0;
          v36[1].n128_u64[0] = v27;
          v36[1].n128_u64[1] = v29;
          ++HIDWORD(v51);
          v46 = 0;
        }

        v37 = v45;
        v45 = 0;
        if (v37)
        {
        }

        v7 = v49;
        v49 = 0;
        if (!v7)
        {
          goto LABEL_59;
        }

        goto LABEL_66;
      }
    }

LABEL_65:
    __break(1u);
LABEL_66:
    WebCore::IOSurface::~IOSurface(v7);
    bmalloc::api::tzoneFree(v42, v43);
  }

LABEL_59:
  v38 = *(a2 + 228);
  if (v38)
  {
    WTF::VectorTypeOperations<WebKit::RemoteLayerTreeNode::CachedContentsBuffer>::destruct(*(a2 + 216), (*(a2 + 216) + 32 * v38));
  }

  v39 = *(a2 + 216);
  if (v39)
  {
    *(a2 + 216) = 0;
    *(a2 + 224) = 0;
    WTF::fastFree(v39, v8);
  }

  *(a2 + 216) = v50;
  v40 = v51;
  v50 = 0;
  v51 = 0;
  *(a2 + 224) = v40;
  return WTF::Vector<WebKit::RemoteLayerTreeNode::CachedContentsBuffer,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v50, v8);
}

void sub_19DA1566C(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *a12, WebCore::IOSurface *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, WebCore::IOSurface *a22)
{
  if (a13)
  {
    WebCore::IOSurface::~IOSurface(a13);
    bmalloc::api::tzoneFree(v24, v25);
  }

  if (a12)
  {
  }

  if (a22)
  {
    WebCore::IOSurface::~IOSurface(a22);
    bmalloc::api::tzoneFree(v26, v27);
  }

  WTF::Vector<WebKit::RemoteLayerTreeNode::CachedContentsBuffer,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v22 - 96, a2);
  _Unwind_Resume(a1);
}

__n128 WebKit::RemoteLayerBackingStoreProperties::setBackendHandle(uint64_t a1, uint64_t a2)
{
  std::__optional_move_base<mpark::variant<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,false>::__optional_move_base[abi:sn200100](v7, a2);
  if (*(a2 + 88) == 1)
  {
    mpark::detail::move_constructor<mpark::detail::traits<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,(mpark::detail::Trait)1>::~move_constructor(a2);
    *(a2 + 88) = 0;
  }

  std::__optional_storage_base<mpark::variant<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<mpark::variant<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,false>>(a1, v7);
  if (v7[88] == 1)
  {
    mpark::detail::move_constructor<mpark::detail::traits<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,(mpark::detail::Trait)1>::~move_constructor(v7);
  }

  v4 = *(a2 + 96);
  *(a1 + 136) = *(a2 + 112);
  *(a1 + 120) = v4;
  v5 = *(a2 + 120);
  *(a1 + 160) = *(a2 + 136);
  *(a1 + 144) = v5;
  result = *(a2 + 144);
  *(a1 + 184) = *(a2 + 160);
  *(a1 + 168) = result;
  return result;
}

void sub_19DA15794(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (a20 == 1)
  {
    mpark::detail::move_constructor<mpark::detail::traits<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,(mpark::detail::Trait)1>::~move_constructor(&a9);
  }

  _Unwind_Resume(exception_object);
}

WebKit::RemoteLayerBackingStoreCollection *WebKit::RemoteLayerBackingStore::purgeFrontBufferForTesting(WebCore::ImageBuffer **this)
{
  result = WebKit::RemoteLayerBackingStore::backingStoreCollection(this);
  if (result)
  {
    v3 = result;
    v4 = *(*(result + 2) + 8);
    if (!v4)
    {
      __break(0xC471u);
      JUMPOUT(0x19DA15A80);
    }

    ++*(v4 + 16);
    if ((*(*this + 2))(this))
    {
      v5 = (this + 2);
      v6 = *(this + 4) + 1;
      *(this + 4) = v6;
      v7 = this[45];
      if (v7)
      {
        (**v7)(v7);
        v17 = 0;
        v18 = 0;
        (**v7)(v7);
        v15 = v7;
        v16 = 1;
        v8 = WTF::Vector<std::pair<WTF::Ref<WebKit::RemoteImageBufferSetProxy,WTF::RawPtrTraits<WebKit::RemoteImageBufferSetProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBufferSetProxy>>,WTF::OptionSet<WebKit::BufferInSetType>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v17, 1uLL, &v15);
        v9 = v17 + 16 * HIDWORD(v18);
        v10 = *v8;
        *v8 = 0;
        *v9 = v10;
        *(v9 + 8) = *(v8 + 8);
        v11 = v15;
        ++HIDWORD(v18);
        v15 = 0;
        if (v11)
        {
          (*(*v11 + 8))(v11);
        }

        v12 = WTF::fastMalloc(0x10);
        *v12 = &unk_1F10F2830;
        v15 = v12;
        WebKit::RemoteLayerBackingStoreCollection::sendMarkBuffersVolatile(*(*(v3 + 2) + 8), &v17, &v15, 1);
        if (v15)
        {
          (*(*v15 + 8))(v15);
        }

        WTF::Vector<std::pair<WTF::Ref<WebKit::RemoteImageBufferSetProxy,WTF::RawPtrTraits<WebKit::RemoteImageBufferSetProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBufferSetProxy>>,WTF::OptionSet<WebKit::BufferInSetType>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v17, v13);
        (*(*v7 + 8))(v7);
        v6 = *v5;
      }

      if (!v6)
      {
        __break(0xC471u);
        JUMPOUT(0x19DA15AA0);
      }
    }

    else
    {
      v14 = (*(*this + 3))(this);
      if ((v14 & 1) == 0)
      {
        goto LABEL_22;
      }

      v5 = (this + 2);
      v6 = *(this + 4) + 1;
      *(this + 4) = v6;
      if ((this[4] & 1) == 0)
      {
        WebKit::RemoteLayerWithInProcessRenderingBackingStore::setBufferVolatile(v14, this + 45, 1);
        v6 = *v5;
      }

      if (!v6)
      {
LABEL_22:
        __break(0xC471u);
        JUMPOUT(0x19DA15A60);
      }
    }

    *v5 = v6 - 1;

    return WebKit::RemoteLayerBackingStoreCollection::deref(v3);
  }

  return result;
}

void sub_19DA15AC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (*v12)
  {
    --*v12;
    WebKit::RemoteLayerBackingStoreCollection::deref(v11);
    _Unwind_Resume(a1);
  }

  __break(0xC471u);
  JUMPOUT(0x19DA15AF0);
}

WebKit::RemoteLayerBackingStoreCollection *WebKit::RemoteLayerBackingStore::purgeBackBufferForTesting(WebCore::ImageBuffer **this)
{
  result = WebKit::RemoteLayerBackingStore::backingStoreCollection(this);
  if (result)
  {
    v3 = result;
    v4 = *(*(result + 2) + 8);
    if (!v4)
    {
      __break(0xC471u);
      JUMPOUT(0x19DA15EC8);
    }

    ++*(v4 + 16);
    if ((*(*this + 2))(this))
    {
      v5 = (this + 2);
      v6 = *(this + 4) + 1;
      *(this + 4) = v6;
      v7 = this[45];
      if (v7)
      {
        (**v7)(v7);
        v18 = 0;
        v19 = 0;
        (**v7)(v7);
        v16 = v7;
        v17 = 6;
        v8 = WTF::Vector<std::pair<WTF::Ref<WebKit::RemoteImageBufferSetProxy,WTF::RawPtrTraits<WebKit::RemoteImageBufferSetProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBufferSetProxy>>,WTF::OptionSet<WebKit::BufferInSetType>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v18, 1uLL, &v16);
        v9 = v18 + 16 * HIDWORD(v19);
        v10 = *v8;
        *v8 = 0;
        *v9 = v10;
        *(v9 + 8) = *(v8 + 8);
        v11 = v16;
        ++HIDWORD(v19);
        v16 = 0;
        if (v11)
        {
          (*(*v11 + 8))(v11);
        }

        v12 = WTF::fastMalloc(0x10);
        *v12 = &unk_1F10F2858;
        v16 = v12;
        WebKit::RemoteLayerBackingStoreCollection::sendMarkBuffersVolatile(*(*(v3 + 2) + 8), &v18, &v16, 1);
        if (v16)
        {
          (*(*v16 + 8))(v16);
        }

        WTF::Vector<std::pair<WTF::Ref<WebKit::RemoteImageBufferSetProxy,WTF::RawPtrTraits<WebKit::RemoteImageBufferSetProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBufferSetProxy>>,WTF::OptionSet<WebKit::BufferInSetType>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v18, v13);
        (*(*v7 + 8))(v7);
        v6 = *v5;
      }

      if (!v6)
      {
        __break(0xC471u);
        JUMPOUT(0x19DA15EE8);
      }
    }

    else
    {
      v14 = (*(*this + 3))(this);
      if ((v14 & 1) == 0)
      {
        goto LABEL_24;
      }

      v5 = (this + 2);
      v6 = *(this + 4) + 1;
      *(this + 4) = v6;
      if ((this[4] & 1) == 0)
      {
        v15 = WebKit::RemoteLayerWithInProcessRenderingBackingStore::setBufferVolatile(v14, this + 46, 1);
        if ((this[4] & 1) == 0)
        {
          WebKit::RemoteLayerWithInProcessRenderingBackingStore::setBufferVolatile(v15, this + 47, 1);
        }

        v6 = *v5;
      }

      if (!v6)
      {
LABEL_24:
        __break(0xC471u);
        JUMPOUT(0x19DA15EA8);
      }
    }

    *v5 = v6 - 1;

    return WebKit::RemoteLayerBackingStoreCollection::deref(v3);
  }

  return result;
}

void sub_19DA15F0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (*v12)
  {
    --*v12;
    WebKit::RemoteLayerBackingStoreCollection::deref(v11);
    _Unwind_Resume(a1);
  }

  __break(0xC471u);
  JUMPOUT(0x19DA15F38);
}

WebKit::RemoteLayerBackingStoreCollection *WebKit::RemoteLayerBackingStore::markFrontBufferVolatileForTesting(WebCore::ImageBuffer **this)
{
  result = WebKit::RemoteLayerBackingStore::backingStoreCollection(this);
  if (result)
  {
    v3 = result;
    v4 = *(*(result + 2) + 8);
    if (!v4)
    {
      __break(0xC471u);
      JUMPOUT(0x19DA162FCLL);
    }

    ++*(v4 + 16);
    if ((*(*this + 2))(this))
    {
      v5 = (this + 2);
      v6 = *(this + 4) + 1;
      *(this + 4) = v6;
      v7 = this[45];
      if (v7)
      {
        (**v7)(v7);
        v17 = 0;
        v18 = 0;
        (**v7)(v7);
        v15 = v7;
        v16 = 1;
        v8 = WTF::Vector<std::pair<WTF::Ref<WebKit::RemoteImageBufferSetProxy,WTF::RawPtrTraits<WebKit::RemoteImageBufferSetProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBufferSetProxy>>,WTF::OptionSet<WebKit::BufferInSetType>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v17, 1uLL, &v15);
        v9 = v17 + 16 * HIDWORD(v18);
        v10 = *v8;
        *v8 = 0;
        *v9 = v10;
        *(v9 + 8) = *(v8 + 8);
        v11 = v15;
        ++HIDWORD(v18);
        v15 = 0;
        if (v11)
        {
          (*(*v11 + 8))(v11);
        }

        v12 = WTF::fastMalloc(0x10);
        *v12 = &unk_1F10F2880;
        v15 = v12;
        WebKit::RemoteLayerBackingStoreCollection::sendMarkBuffersVolatile(*(*(v3 + 2) + 8), &v17, &v15, 0);
        if (v15)
        {
          (*(*v15 + 8))(v15);
        }

        WTF::Vector<std::pair<WTF::Ref<WebKit::RemoteImageBufferSetProxy,WTF::RawPtrTraits<WebKit::RemoteImageBufferSetProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBufferSetProxy>>,WTF::OptionSet<WebKit::BufferInSetType>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v17, v13);
        (*(*v7 + 8))(v7);
        v6 = *v5;
      }

      if (!v6)
      {
        __break(0xC471u);
        JUMPOUT(0x19DA1631CLL);
      }
    }

    else
    {
      v14 = (*(*this + 3))(this);
      if ((v14 & 1) == 0)
      {
        goto LABEL_22;
      }

      v5 = (this + 2);
      v6 = *(this + 4) + 1;
      *(this + 4) = v6;
      if ((this[4] & 1) == 0)
      {
        WebKit::RemoteLayerWithInProcessRenderingBackingStore::setBufferVolatile(v14, this + 45, 0);
        v6 = *v5;
      }

      if (!v6)
      {
LABEL_22:
        __break(0xC471u);
        JUMPOUT(0x19DA162DCLL);
      }
    }

    *v5 = v6 - 1;

    return WebKit::RemoteLayerBackingStoreCollection::deref(v3);
  }

  return result;
}

void sub_19DA16340(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (*v12)
  {
    --*v12;
    WebKit::RemoteLayerBackingStoreCollection::deref(v11);
    _Unwind_Resume(a1);
  }

  __break(0xC471u);
  JUMPOUT(0x19DA1636CLL);
}

WebKit::RemoteLayerBackingStoreCollection *WebKit::RemoteLayerBackingStoreCollection::RemoteLayerBackingStoreCollection(WebKit::RemoteLayerBackingStoreCollection *this, WebKit::RemoteLayerTreeContext *a2)
{
  *(this + 1) = 0;
  *this = &unk_1F10F2738;
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2 + 2, a2);
  v4 = *(a2 + 1);
  atomic_fetch_add(v4, 1u);
  *(this + 24) = 0u;
  *(this + 2) = v4;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  WebCore::TimerBase::TimerBase((this + 88));
  *(this + 11) = &unk_1F10EB388;
  v5 = WTF::fastMalloc(0x20);
  *v5 = &unk_1F10F2808;
  v5[1] = this;
  v5[2] = WebKit::RemoteLayerBackingStoreCollection::volatilityTimerFired;
  v5[3] = 0;
  *(this + 17) = v5;
  *(this + 144) = 0;
  return this;
}

void sub_19DA16558(_Unwind_Exception *a1)
{
  v5 = v3;
  WebCore::TimerBase::~TimerBase(v5);
  v8 = v2[9];
  if (v8)
  {
    WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::deallocateTable(v8, v7);
  }

  v9 = v2[7];
  if (v9)
  {
    WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::deallocateTable(v9, v7);
  }

  v10 = v2[5];
  if (v10)
  {
    WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::deallocateTable(v10, v7);
  }

  if (*v4)
  {
    WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::deallocateTable(*v4, v7);
  }

  v11 = v2[2];
  v2[2] = 0;
  if (v11)
  {
    if (atomic_fetch_add(v11, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v11);
      WTF::fastFree(v11, v7);
    }
  }

  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(v1, v7);
  _Unwind_Resume(a1);
}

void WebKit::RemoteLayerBackingStoreCollection::~RemoteLayerBackingStoreCollection(WebKit::RemoteLayerBackingStoreCollection *this)
{
  *this = &unk_1F10F2738;
  WebCore::Timer::~Timer((this + 88));
  v3 = *(this + 9);
  if (v3)
  {
    WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::deallocateTable(v3, v2);
  }

  v4 = *(this + 7);
  if (v4)
  {
    WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::deallocateTable(v4, v2);
  }

  v5 = *(this + 5);
  if (v5)
  {
    WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::deallocateTable(v5, v2);
  }

  v6 = *(this + 3);
  if (v6)
  {
    WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::deallocateTable(v6, v2);
  }

  v7 = *(this + 2);
  *(this + 2) = 0;
  if (v7 && atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v7);
    WTF::fastFree(v7, v2);
  }

  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, v2);
}

{
  WebKit::RemoteLayerBackingStoreCollection::~RemoteLayerBackingStoreCollection(this);

  bmalloc::api::tzoneFree(v1, v2);
}

uint64_t WebKit::RemoteLayerBackingStoreCollection::ref(uint64_t this)
{
  v1 = *(*(this + 16) + 8);
  if (v1)
  {
    ++*(v1 + 16);
  }

  else
  {
    this = 92;
    __break(0xC471u);
  }

  return this;
}

uint64_t WebKit::RemoteLayerBackingStoreCollection::deref(WebKit::RemoteLayerBackingStoreCollection *this)
{
  result = *(*(this + 2) + 8);
  if (result)
  {
    if (*(result + 16) == 1)
    {
      return (*(*result + 8))();
    }

    else
    {
      --*(result + 16);
    }
  }

  else
  {
    result = 92;
    __break(0xC471u);
  }

  return result;
}

unsigned int *WebKit::RemoteLayerBackingStoreCollection::prepareBackingStoresForDisplay(WebKit::RemoteLayerBackingStoreCollection *this, WebKit::RemoteLayerTreeTransaction *a2)
{
  v63 = 0;
  v64 = 0;
  v4 = (this + 72);
  v5 = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::computeSize(this + 72, a2);
  if (v5)
  {
    if (v5 >= 0x6666667)
    {
      __break(0xC471u);
      JUMPOUT(0x19DA16E94);
    }

    LODWORD(v64) = 40 * v5 / 0x28;
    v63 = WTF::fastMalloc((40 * v5));
  }

  v61 = 0;
  v62 = 0;
  v7 = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::computeSize(v4, v6);
  if (v7)
  {
    if (v7 >> 29)
    {
      __break(0xC471u);
      JUMPOUT(0x19DA16E9CLL);
    }

    LODWORD(v62) = v7;
    v61 = WTF::fastMalloc((8 * v7));
  }

  v8 = *(*(this + 2) + 8);
  if (!v8)
  {
    __break(0xC471u);
    JUMPOUT(0x19DA16E0CLL);
  }

  ++*(v8 + 4);
  v9 = WebKit::RemoteLayerTreeContext::ensureRemoteRenderingBackendProxy(v8);
  ++v9[5];
  if (*(v8 + 4) == 1)
  {
    (*(*v8 + 8))(v8);
  }

  else
  {
    --*(v8 + 4);
  }

  WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::begin(&v59, v4);
  v10 = *v4;
  if (*v4)
  {
    v11 = *(v10 - 1);
    v12 = &v10[v11];
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  v54 = v4;
  v55 = v12;
  v56 = v12;
  v57 = v12;
  v58 = &v10[v11];
  WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v54);
  v14 = v60;
  if (v60 != v55)
  {
    v49 = vdupq_n_s64(0x400uLL);
    do
    {
      v15 = *(*v14 + 8);
      ++v15[4];
      v16 = *(*(v15 + 3) + 8);
      if (!v16)
      {
        __break(0xC471u);
        JUMPOUT(0x19DA16E4CLL);
      }

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
          goto LABEL_18;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v17);
LABEL_18:
      *(v16 + 72) = vorrq_s8(*(v16 + 72), v49);
      WebKit::RemoteLayerTreeTransaction::layerPropertiesChanged(a2, v16);
      v20 = *(*(v15 + 3) + 8);
      if (!v20)
      {
        __break(0xC471u);
        JUMPOUT(0x19DA16E6CLL);
      }

      v21 = (v20 + 8);
      while (1)
      {
        v22 = *v21;
        if ((*v21 & 1) == 0)
        {
          break;
        }

        v23 = *v21;
        atomic_compare_exchange_strong_explicit(v21, &v23, v22 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v23 == v22)
        {
          goto LABEL_22;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v21);
LABEL_22:
      v24 = *(v20 + 56);
      if ((*(*v24 + 112))(v24, v20))
      {
        (*(*v24 + 120))(v24, v20);
        (*(*v24 + 128))(v24, v20);
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::PlatformCALayer,(WTF::DestructionThread)1>::deref((v20 + 8));
      }

      else
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::PlatformCALayer,(WTF::DestructionThread)1>::deref((v20 + 8));
        (*(*v15 + 48))(v15);
        if ((*(*v15 + 16))(v15))
        {
          v25 = v15[4] + 1;
          v15[4] = v25;
          v26 = *(v15 + 45);
          if (v26)
          {
            (**v26)(*(v15 + 45));
            (**v26)(v26);
            v50 = v26;
            WebCore::Region::Region(v51, (v15 + 18));
            v27 = WebCore::ImageBuffer::calculateBackendSize();
            v28 = HIDWORD(v27);
            if (v27 >= 0)
            {
              v29 = v27;
            }

            else
            {
              v29 = -v27;
            }

            if (v27 < 0)
            {
              LODWORD(v28) = -HIDWORD(v27);
            }

            v30 = v29 * v28;
            v32 = (v30 & 0xFFFFFFFF00000000) != 0 || v30 > 0x1000;
            LOBYTE(v52) = v32;
            v33 = v15[20] < 1 || v15[21] < 1 || *(v15 + 9) <= 0.0 || *(v15 + 10) <= 0.0;
            HIBYTE(v52) = v33;
            v53 = WebKit::RemoteLayerBackingStore::drawingRequiresClearedPixels(v15);
            if (HIDWORD(v64) == v64)
            {
              WTF::Vector<WebKit::RemoteRenderingBackendProxy::LayerPrepareBuffersData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::RemoteRenderingBackendProxy::LayerPrepareBuffersData>(&v63, &v50);
            }

            else
            {
              v34 = v63 + 40 * HIDWORD(v64);
              v35 = v50;
              v50 = 0;
              *v34 = v35;
              WebCore::Region::Region();
              v36 = v52;
              *(v34 + 34) = v53;
              *(v34 + 32) = v36;
              ++HIDWORD(v64);
            }

            WebCore::Region::~Region(v51);
            v37 = v50;
            v50 = 0;
            if (v37)
            {
              (*(*v37 + 8))(v37);
            }

            v38 = HIDWORD(v62);
            if (HIDWORD(v62) == v62)
            {
              WTF::Vector<WTF::WeakPtr<WebKit::RemoteLayerWithRemoteRenderingBackingStore,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::RemoteLayerWithRemoteRenderingBackingStore&>(&v61, v15);
            }

            else
            {
              v39 = v61;
              WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(v15 + 2, v15);
              v40 = *(v15 + 1);
              atomic_fetch_add(v40, 1u);
              *(v39 + 8 * v38) = v40;
              ++HIDWORD(v62);
            }

            (*(*v26 + 8))(v26);
            v25 = v15[4];
          }

          if (!v25)
          {
            __break(0xC471u);
            JUMPOUT(0x19DA16E2CLL);
          }

          v15[4] = v25 - 1;
        }
      }

      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::PlatformCALayer,(WTF::DestructionThread)1>::deref(v17);
      v41 = v15[4];
      if (!v41)
      {
        __break(0xC471u);
        JUMPOUT(0x19DA16E8CLL);
      }

      v15[4] = v41 - 1;
      WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::operator++(&v59);
      v14 = v60;
    }

    while (v60 != v55);
  }

  if (HIDWORD(v64))
  {
    WebKit::RemoteRenderingBackendProxy::prepareImageBufferSetsForDisplay(v9, &v63, &v59);
    v42 = HIDWORD(v60);
    if (HIDWORD(v60) == HIDWORD(v62))
    {
      if (HIDWORD(v60))
      {
        for (i = 0; i < v42; ++i)
        {
          if (i >= HIDWORD(v62))
          {
            __break(0xC471u);
            JUMPOUT(0x19DA16EA4);
          }

          if (!*(v59 + i))
          {
            v47 = *(v61 + 8 * i);
            if (!v47)
            {
              goto LABEL_86;
            }

            v48 = *(v47 + 8);
            if (!v48)
            {
              goto LABEL_86;
            }

            WebKit::RemoteLayerBackingStore::setNeedsDisplay(v48);
            v42 = HIDWORD(v60);
          }
        }
      }
    }

    else if (HIDWORD(v60))
    {
LABEL_86:
      __break(0xC471u);
      JUMPOUT(0x19DA16DCCLL);
    }

    v44 = v59;
    if (v59)
    {
      v59 = 0;
      LODWORD(v60) = 0;
      WTF::fastFree(v44, v13);
    }
  }

  if (v9[5] == 1)
  {
    (*(*v9 + 24))(v9);
  }

  else
  {
    --v9[5];
  }

  WTF::Vector<WTF::WeakPtr<WebKit::RemoteLayerWithRemoteRenderingBackingStore,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v61, v13);
  return WTF::Vector<WebKit::RemoteRenderingBackendProxy::LayerPrepareBuffersData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v63, v45);
}

void sub_19DA16EC8(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, WTF *a21, int a22)
{
  if (a21)
  {
    WTF::fastFree(a21, a2);
  }

  if (v22[5] == 1)
  {
    (*(*v22 + 24))(v22);
  }

  else
  {
    --v22[5];
  }

  WTF::Vector<WTF::WeakPtr<WebKit::RemoteLayerWithRemoteRenderingBackingStore,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v23 - 120, a2);
  WTF::Vector<WebKit::RemoteRenderingBackendProxy::LayerPrepareBuffersData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((v23 - 104), v25);
  _Unwind_Resume(a1);
}

uint64_t WebKit::RemoteLayerBackingStoreCollection::protectedLayerTreeContext@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(*(this + 16) + 8);
  if (v2)
  {
    ++*(v2 + 16);
    *a2 = v2;
  }

  else
  {
    this = 103;
    __break(0xC471u);
  }

  return this;
}

uint64_t *WebKit::RemoteLayerTreeTransaction::layerPropertiesChanged(WebKit::RemoteLayerTreeTransaction *this, WebKit::PlatformCALayerRemote *a2)
{
  while (1)
  {
    v2 = *(a2 + 1);
    if ((v2 & 1) == 0)
    {
      break;
    }

    v3 = *(a2 + 1);
    atomic_compare_exchange_strong_explicit(a2 + 1, &v3, v2 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v3 == v2)
    {
      goto LABEL_3;
    }
  }

  v7 = this;
  v6 = a2;
  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(a2 + 1));
  a2 = v6;
  this = v7;
LABEL_3:
  v9 = a2;
  result = WTF::HashTable<WTF::Ref<WebKit::PlatformCALayerRemote,WTF::RawPtrTraits<WebKit::PlatformCALayerRemote>,WTF::DefaultRefDerefTraits<WebKit::PlatformCALayerRemote>>,WTF::Ref<WebKit::PlatformCALayerRemote,WTF::RawPtrTraits<WebKit::PlatformCALayerRemote>,WTF::DefaultRefDerefTraits<WebKit::PlatformCALayerRemote>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::PlatformCALayerRemote,WTF::RawPtrTraits<WebKit::PlatformCALayerRemote>,WTF::DefaultRefDerefTraits<WebKit::PlatformCALayerRemote>>>,WTF::HashTraits<WTF::Ref<WebKit::PlatformCALayerRemote,WTF::RawPtrTraits<WebKit::PlatformCALayerRemote>,WTF::DefaultRefDerefTraits<WebKit::PlatformCALayerRemote>>>,WTF::HashTraits<WTF::Ref<WebKit::PlatformCALayerRemote,WTF::RawPtrTraits<WebKit::PlatformCALayerRemote>,WTF::DefaultRefDerefTraits<WebKit::PlatformCALayerRemote>>>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(this + 3, &v9, v8);
  v5 = v9;
  v9 = 0;
  if (v5)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::PlatformCALayer,(WTF::DestructionThread)1>::deref((v5 + 8));
  }

  return result;
}

void sub_19DA171B8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 24);
  *(v1 - 24) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::PlatformCALayer,(WTF::DestructionThread)1>::deref((v3 + 8));
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::RemoteLayerBackingStoreCollection::paintReachableBackingStoreContents(WebKit::RemoteLayerBackingStoreCollection *this)
{
  v2 = this + 72;
  WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::begin(&v32, this + 9);
  v3 = *(this + 9);
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

  v27 = v2;
  v28 = v5;
  v29 = v5;
  v30 = v5;
  v31 = v3 + 8 * v4;
  WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v27);
  v6 = v33;
  v7 = v28;
  if (v33 == v28)
  {
    v8 = 0;
  }

  else
  {
    v8 = 0;
    do
    {
      v9 = *(*v6 + 8);
      ++*(v9 + 16);
      if (*(v9 + 80) >= 1 && *(v9 + 84) >= 1 && *(v9 + 36) > 0.0 && *(v9 + 40) > 0.0)
      {
        v8 = 1;
      }

      v10 = *(*(v9 + 24) + 8);
      if (!v10)
      {
        goto LABEL_42;
      }

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
          goto LABEL_14;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v11);
LABEL_14:
      v14 = (*(**(v10 + 56) + 112))(*(v10 + 56), v10);
      if ((v14 & 1) == 0)
      {
        if (*(v9 + 80) < 1 || *(v9 + 84) < 1 || *(v9 + 36) <= 0.0 || *(v9 + 40) <= 0.0)
        {
          (*(*v9 + 64))(&v34, v9, 0);
          v22 = v34;
          if (v34)
          {
            v23 = *(v9 + 244);
            if (v23 == *(v9 + 240))
            {
              WTF::Vector<std::unique_ptr<WebKit::ThreadSafeImageBufferSetFlusher>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,std::unique_ptr<WebKit::ThreadSafeImageBufferSetFlusher>>(v9 + 232, &v34);
            }

            else
            {
              v26 = *(v9 + 232);
              v34 = 0;
              *(v26 + 8 * v23) = v22;
              *(v9 + 244) = v23 + 1;
            }

            v24 = v34;
            v34 = 0;
            if (v24)
            {
              (*(*v24 + 8))(v24);
            }
          }
        }

        else
        {
          WTF::MonotonicTime::now(v14);
          *(v9 + 344) = v15;
          WebKit::ImageBufferSet::computePaintingRects((v9 + 72), *(v9 + 60), &v34);
          v17 = *(v9 + 248);
          if (v17 != (v9 + 264))
          {
            if (v17)
            {
              *(v9 + 248) = 0;
              *(v9 + 256) = 0;
              WTF::fastFree(v17, v16);
            }

            *(v9 + 248) = v9 + 264;
          }

          v18 = v34;
          if (v34 == v37)
          {
            v19 = v36;
            if (v36)
            {
              memcpy((v9 + 264), v37, 16 * v36);
            }

            v20 = v35;
          }

          else
          {
            v34 = v37;
            *(v9 + 248) = v18;
            v20 = v35;
            v19 = v36;
            v35 = 5;
          }

          *(v9 + 256) = v20;
          *(v9 + 260) = v19;
          (*(*v9 + 56))(v9);
        }
      }

      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::PlatformCALayer,(WTF::DestructionThread)1>::deref(v11);
      v21 = *(v9 + 16);
      if (!v21)
      {
LABEL_42:
        __break(0xC471u);
        JUMPOUT(0x19DA17504);
      }

      *(v9 + 16) = v21 - 1;
      WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::operator++(&v32);
      v6 = v33;
    }

    while (v33 != v7);
  }

  return v8 & 1;
}

void sub_19DA17528(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, WTF *a19, int a20)
{
  if (v22 != a19 && a19)
  {
    WTF::fastFree(a19, a2);
  }

  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::PlatformCALayer,(WTF::DestructionThread)1>::deref(v21);
  v24 = *(v20 + 16);
  if (v24)
  {
    *(v20 + 16) = v24 - 1;
    _Unwind_Resume(a1);
  }

  __break(0xC471u);
}

unsigned int **WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::clear(uint64_t a1, void *a2)
{
  result = *a1;
  if (result)
  {
    *a1 = 0;
    result = WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::deallocateTable(result, a2);
    v4 = *a1;
    *(a1 + 8) = 0;
    if (v4)
    {
      LODWORD(v4) = *(v4 - 3);
      if (v4 > 0x7FFFFFFE)
      {
        v5 = -2;
        goto LABEL_5;
      }
    }
  }

  else
  {
    LODWORD(v4) = 0;
    *(a1 + 8) = 0;
  }

  v5 = 2 * v4;
LABEL_5:
  *(a1 + 12) = v5;
  return result;
}

WTF *WebKit::RemoteLayerBackingStoreCollection::willCommitLayerTree(WebKit::RemoteLayerBackingStoreCollection *this, WebKit::RemoteLayerTreeTransaction *a2)
{
  v26 = 0;
  v27 = 0;
  v4 = (this + 24);
  WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::begin(&v24, this + 3);
  v5 = *v4;
  if (*v4)
  {
    v6 = *(v5 - 4);
    v7 = v5 + 8 * v6;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v19 = v4;
  v20 = v7;
  v21 = v7;
  v22 = v7;
  v23 = v5 + 8 * v6;
  WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v19);
  v8 = v20;
  while (v25 != v8)
  {
    v9 = *(*v25 + 8);
    ++*(v9 + 16);
    if ((WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::contains<WebKit::RemoteLayerBackingStore>(this + 7, *(v9 + 8)) & 1) == 0)
    {
      v15 = *(*(v9 + 24) + 8);
      if (!v15)
      {
LABEL_18:
        __break(0xC471u);
        JUMPOUT(0x19DA177C8);
      }

      v18 = *(v15 + 24);
      if (HIDWORD(v27) == v27)
      {
        WTF::Vector<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(&v26, &v18);
      }

      else
      {
        *(v26 + HIDWORD(v27)) = v18;
        ++HIDWORD(v27);
      }
    }

    v10 = *(v9 + 16);
    if (!v10)
    {
      goto LABEL_18;
    }

    *(v9 + 16) = v10 - 1;
    WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::operator++(&v24);
  }

  WTF::Vector<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v16, &v26);
  v12 = *(a2 + 12);
  if (v12)
  {
    *(a2 + 12) = 0;
    *(a2 + 26) = 0;
    WTF::fastFree(v12, v11);
  }

  *(a2 + 12) = v16;
  v13 = v17;
  v16 = 0;
  v17 = 0;
  *(a2 + 13) = v13;
  result = v26;
  if (v26)
  {
    v26 = 0;
    LODWORD(v27) = 0;
    return WTF::fastFree(result, v11);
  }

  return result;
}

void sub_19DA177EC(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF *a9, int a10)
{
  v12 = *(v10 + 16);
  if (v12)
  {
    *(v10 + 16) = v12 - 1;
    v14 = *(v11 - 48);
    if (v14)
    {
      *(v11 - 48) = 0;
      *(v11 - 40) = 0;
      WTF::fastFree(v14, a2);
    }

    _Unwind_Resume(exception_object);
  }

  __break(0xC471u);
  JUMPOUT(0x19DA17820);
}

uint64_t WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::contains<WebKit::RemoteLayerBackingStore>(uint64_t *a1, uint64_t a2)
{
  ++*(a1 + 2);
  if (a2)
  {
    if (*(a2 + 8))
    {
      v2 = *a1;
      if (*a1)
      {
        v3 = *(v2 - 8);
        v4 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
        v5 = 9 * ((v4 + ~(v4 << 13)) ^ ((v4 + ~(v4 << 13)) >> 8));
        v6 = (v5 ^ (v5 >> 15)) + ~((v5 ^ (v5 >> 15)) << 27);
        v7 = v3 & ((v6 >> 31) ^ v6);
        for (i = 1; ; ++i)
        {
          v9 = *(v2 + 8 * v7);
          if (!v9)
          {
            break;
          }

          if (v9 != -1 && v9 == a2)
          {
            return 1;
          }

          v7 = (v7 + i) & v3;
        }
      }
    }
  }

  return 0;
}

double WebKit::RemoteLayerBackingStoreCollection::didFlushLayers@<D0>(WebKit::RemoteLayerBackingStoreCollection *this@<X0>, WebKit::RemoteLayerTreeTransaction *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  v6 = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(a2 + 3);
  v9 = v6;
  v10 = v7;
  v11 = *(a2 + 3);
  if (v11)
  {
    v12 = (v11 + 8 * *(v11 - 4));
  }

  else
  {
    v12 = 0;
  }

  if (v12 == v6)
  {
    v13 = 0;
  }

  else
  {
    v13 = 0;
    do
    {
      v14 = *v9;
      if ((*(*v9 + 73) & 4) != 0)
      {
        v15 = *(v14 + 60);
        if (v15)
        {
          *&v8 = 0;
          v44 = *(v15 + 232);
          v45 = *(v15 + 240);
          v49[0] = v8;
          *(v15 + 232) = v8;
          WTF::Vector<std::unique_ptr<WebKit::ThreadSafeImageBufferSetFlusher>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v49, v7);
          v17 = HIDWORD(v45);
          v18 = *(a3 + 8);
          v19 = HIDWORD(v45) + *(a3 + 12);
          if (v19 > v18)
          {
            if (v18 + (v18 >> 1) <= v18 + 1)
            {
              v20 = v18 + 1;
            }

            else
            {
              v20 = v18 + (v18 >> 1);
            }

            if (v20 > v19)
            {
              v19 = v20;
            }

            if (v19 <= 0x10)
            {
              v21 = 16;
            }

            else
            {
              v21 = v19;
            }

            WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a3, v21);
            v17 = HIDWORD(v45);
          }

          if (v17)
          {
            v22 = v44;
            v23 = *a3;
            v24 = 8 * v17;
            v25 = *(a3 + 12);
            do
            {
              v26 = *v22;
              *v22++ = 0;
              *(v23 + 8 * v25++) = v26;
              v24 -= 8;
            }

            while (v24);
            *(a3 + 12) = v25;
          }

          WTF::Vector<std::unique_ptr<WebKit::ThreadSafeImageBufferSetFlusher>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v44, v16);
          v14 = *v9;
        }

        v13 = 1;
      }

      WebKit::PlatformCALayerRemote::didCommit(v14);
      do
      {
        ++v9;
      }

      while (v9 != v10 && *v9 + 1 <= 1);
    }

    while (v9 != v12);
  }

  *(this + 144) = 0;
  v50 = 0;
  v51 = 0;
  WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::begin(v49, this + 3);
  v27 = *(this + 3);
  if (v27)
  {
    v28 = *(v27 - 4);
    v29 = v27 + 8 * v28;
  }

  else
  {
    v29 = 0;
    v28 = 0;
  }

  v44 = this + 24;
  v45 = v29;
  v46 = v29;
  v47 = v29;
  v48 = v27 + 8 * v28;
  WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v44);
  v31 = *(&v49[0] + 1);
  if (*(&v49[0] + 1) == v45)
  {
    goto LABEL_34;
  }

  do
  {
    v32 = *(*v31 + 8);
    ++*(v32 + 16);
    v33 = (v32 + 8);
    if ((WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::contains<WebKit::RemoteLayerBackingStore>(this + 7, *(v32 + 8)) & 1) == 0)
    {
      v41 = HIDWORD(v51);
      if (HIDWORD(v51) == v51)
      {
        WTF::Vector<WTF::WeakPtr<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::RemoteLayerBackingStore&>(&v50, v32);
      }

      else
      {
        v42 = v50;
        WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v32 + 8), v32);
        v43 = *v33;
        atomic_fetch_add(*v33, 1u);
        *(v42 + 8 * v41) = v43;
        ++HIDWORD(v51);
      }
    }

    v34 = *(v32 + 16);
    if (!v34)
    {
LABEL_52:
      __break(0xC471u);
      JUMPOUT(0x19DA17C10);
    }

    *(v32 + 16) = v34 - 1;
    WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::operator++(v49);
    v31 = *(&v49[0] + 1);
  }

  while (*(&v49[0] + 1) != v45);
  if (!HIDWORD(v51))
  {
LABEL_34:
    WTF::Vector<WTF::WeakPtr<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v50, v30);
    if ((v13 & 1) == 0)
    {
      return result;
    }

    goto LABEL_35;
  }

  v36 = v50;
  v37 = 8 * HIDWORD(v51);
  do
  {
    if (!*v36)
    {
      goto LABEL_52;
    }

    v38 = *(*v36 + 8);
    if (!v38)
    {
      goto LABEL_52;
    }

    WebKit::RemoteLayerBackingStoreCollection::backingStoreBecameUnreachable(this, v38);
    v36 += 8;
    v37 -= 8;
  }

  while (v37);
  v40 = (HIDWORD(v51) != 0) | v13;
  WTF::Vector<WTF::WeakPtr<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v50, v39);
  if (v40)
  {
LABEL_35:
    if ((*(this + 15) & 0xFFFFFFFFFFFFLL) == 0 || (result = *((*(this + 15) & 0xFFFFFFFFFFFFLL) + 8), result == 0.0))
    {
      WebCore::TimerBase::start();
    }
  }

  return result;
}

void sub_19DA17C34(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  WTF::Vector<WTF::WeakPtr<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va, a2);
  WTF::Vector<std::unique_ptr<WebKit::ThreadSafeImageBufferSetFlusher>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v12, v14);
  _Unwind_Resume(a1);
}

double WebKit::RemoteLayerBackingStoreCollection::scheduleVolatilityTimer(WebKit::RemoteLayerBackingStoreCollection *this)
{
  if ((*(this + 15) & 0xFFFFFFFFFFFFLL) == 0 || (result = *((*(this + 15) & 0xFFFFFFFFFFFFLL) + 8), result == 0.0))
  {
    WebCore::TimerBase::start();
  }

  return result;
}

void *WebKit::RemoteLayerBackingStoreCollection::backingStoreBecameUnreachable(WebKit::RemoteLayerBackingStoreCollection *this, WebKit::RemoteLayerBackingStore *a2)
{
  v4 = this + 24;
  WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::find<WebKit::RemoteLayerBackingStore>(&v15, this + 24, *(a2 + 1));
  v5 = *(this + 3);
  if (v5)
  {
    v6 = *(v5 - 4);
    v7 = (v5 + 8 * v6);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v10 = v4;
  v11 = v7;
  v12 = v7;
  v13 = v7;
  v14 = v5 + 8 * v6;
  result = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v10);
  v9 = v16;
  if (v16 != v11)
  {
    WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::add<WebKit::RemoteLayerBackingStore>(&v10, this + 10, a2);
    WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::remove(v4, v9);
    return (*(*this + 64))(this, a2);
  }

  return result;
}

unsigned int *WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::add<WebKit::RemoteLayerBackingStore>(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v6 = a2[3];
  v7 = a2[2] + 1;
  a2[2] = v7;
  if (v7 > v6)
  {
    v8 = *a2;
    if (*a2)
    {
      v9 = *(v8 - 4);
      if (!v9)
      {
        goto LABEL_10;
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
      v8 = *a2;
      if (v10)
      {
        v20 = *(v8 - 12) - v10;
        *(v8 - 16) += v10;
        *(v8 - 12) = v20;
        goto LABEL_10;
      }

      if (v8)
      {
LABEL_10:
        v14 = *(v8 - 4);
        if (6 * *(v8 - 12) < v14 && v14 > 8)
        {
          WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::shrinkToBestSize(a2);
          v8 = *a2;
          a2[2] = 0;
          if (!v8)
          {
            goto LABEL_18;
          }
        }

        else
        {
          a2[2] = 0;
        }

        LODWORD(v8) = *(v8 - 12);
        if (v8 > 0x7FFFFFFE)
        {
          v16 = -2;
LABEL_19:
          a2[3] = v16;
          goto LABEL_20;
        }

LABEL_18:
        v16 = 2 * v8;
        goto LABEL_19;
      }
    }

    LODWORD(v8) = 0;
    a2[2] = 0;
    goto LABEL_18;
  }

LABEL_20:
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a3 + 8), a3);
  v17 = *(a3 + 8);
  atomic_fetch_add(v17, 1u);
  v21 = v17;
  WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(a2, &v21, a1);
  result = v21;
  v21 = 0;
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

void sub_19DA17F80(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF *a10)
{
  if (a10)
  {
    if (atomic_fetch_add(a10, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, a10);
      WTF::fastFree(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

unsigned int *WebKit::RemoteLayerBackingStoreCollection::backingStoreWillBeDestroyed(WebKit::RemoteLayerBackingStoreCollection *this, WebKit::RemoteLayerBackingStore *a2)
{
  WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::remove<WebKit::RemoteLayerBackingStore>(this + 6, a2);

  return WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::remove<WebKit::RemoteLayerBackingStore>(this + 10, a2);
}

unsigned int *WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::remove<WebKit::RemoteLayerBackingStore>(unsigned int *result, void *a2)
{
  v3 = result;
  v4 = result[3];
  v5 = result[2] + 1;
  result[2] = v5;
  if (v5 > v4)
  {
    v6 = *result;
    if (*result)
    {
      v7 = *(v6 - 4);
      if (!v7)
      {
        goto LABEL_10;
      }

      v8 = 0;
      v9 = 8 * v7;
      v10 = v6 - 8;
      do
      {
        result = *(v10 + v9);
        if (result + 1 >= 2 && !*(result + 1))
        {
          *(v10 + v9) = 0;
          if (atomic_fetch_add(result, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, result);
            result = WTF::fastFree(result, a2);
          }

          *(v10 + v9) = -1;
          ++v8;
        }

        v9 -= 8;
      }

      while (v9);
      v6 = *v3;
      if (v8)
      {
        v16 = *(v6 - 12) - v8;
        *(v6 - 16) += v8;
        *(v6 - 12) = v16;
        goto LABEL_10;
      }

      if (v6)
      {
LABEL_10:
        v11 = *(v6 - 4);
        if (6 * *(v6 - 12) < v11 && v11 > 8)
        {
          result = WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::shrinkToBestSize(v3);
          v6 = *v3;
          v3[2] = 0;
          if (!v6)
          {
            goto LABEL_18;
          }
        }

        else
        {
          v3[2] = 0;
        }

        LODWORD(v6) = *(v6 - 12);
        if (v6 > 0x7FFFFFFE)
        {
          v13 = -2;
LABEL_19:
          v3[3] = v13;
          goto LABEL_20;
        }

LABEL_18:
        v13 = 2 * v6;
        goto LABEL_19;
      }
    }

    LODWORD(v6) = 0;
    v3[2] = 0;
    goto LABEL_18;
  }

LABEL_20:
  v14 = a2[1];
  if (v14 && *(v14 + 8))
  {
    v17 = a2[1];
    result = WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::find<WTF::HashSetTranslator<WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>>,(WTF::ShouldValidateKey)1,WTF::DefaultWeakPtrImpl const*>(v3, &v17);
    if (*v3)
    {
      v15 = *v3 + 8 * *(*v3 - 4);
      if (v15 == result)
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

      v15 = 0;
    }

    if (v15 != result)
    {
      return WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::remove(v3, result);
    }
  }

  return result;
}

void *WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::find<WebKit::RemoteLayerBackingStore>(void *a1, uint64_t a2, uint64_t a3)
{
  ++*(a2 + 8);
  if (a3 && *(a3 + 8))
  {
    v14 = a3;
    v5 = WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::find<WTF::HashSetTranslator<WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>>,(WTF::ShouldValidateKey)1,WTF::DefaultWeakPtrImpl const*>(a2, &v14);
    *a1 = a2;
    a1[1] = v5;
    a1[2] = v6;
    v7 = *a2;
    if (*a2)
    {
      v8 = *(v7 - 4);
      v9 = v7 + 8 * v8;
    }

    else
    {
      v9 = 0;
      v8 = 0;
    }

    a1[3] = v9;
    a1[4] = v7 + 8 * v8;
    return WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(a1);
  }

  else
  {
    v11 = *a2;
    if (*a2)
    {
      v12 = *(v11 - 4);
      v13 = v11 + 8 * v12;
    }

    else
    {
      v13 = 0;
      v12 = 0;
    }

    *a1 = a2;
    a1[1] = v13;
    a1[2] = v13;
    a1[3] = v13;
    a1[4] = v11 + 8 * v12;

    return WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(a1);
  }
}

uint64_t *WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::remove(uint64_t a1, unsigned int **a2)
{
  result = WTF::HashSet<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::remove(a1, a2);
  v5 = *(a1 + 12);
  v6 = *(a1 + 8) + 1;
  *(a1 + 8) = v6;
  if (v6 > v5)
  {
    result = _ZN3WTF9HashTableINS_3RefINS_18DefaultWeakPtrImplENS_12RawPtrTraitsIS2_EENS_21DefaultRefDerefTraitsIS2_EEEES7_NS_17IdentityExtractorENS_11DefaultHashIS7_EENS_10HashTraitsIS7_EESC_NS_10FastMallocEE8removeIfIZNS_11WeakHashSetIN6WebKit23RemoteLayerBackingStoreES2_LNS_32EnableWeakPtrThreadingAssertionsE1EE20removeNullReferencesEvEUlRT_E_EEbRKSL_(a1, v4);
    v7 = 0;
    *(a1 + 8) = 0;
    if (*a1 && (v7 = *(*a1 - 12), v7 > 0x7FFFFFFE))
    {
      v8 = -2;
    }

    else
    {
      v8 = 2 * v7;
    }

    *(a1 + 12) = v8;
  }

  return result;
}

uint64_t WebKit::RemoteLayerBackingStoreCollection::sendMarkBuffersVolatile(WebKit::RemoteLayerTreeContext *a1, uint64_t a2, uint64_t *a3, char a4)
{
  if (a1)
  {
    ++*(a1 + 4);
    v8 = WebKit::RemoteLayerTreeContext::ensureRemoteRenderingBackendProxy(a1);
    ++*(v8 + 20);
    if (*(a1 + 4) == 1)
    {
      (*(*a1 + 8))(a1);
    }

    else
    {
      --*(a1 + 4);
    }

    v9 = *a3;
    *a3 = 0;
    v10 = WTF::fastMalloc(0x10);
    *v10 = &unk_1F10F2920;
    v10[1] = v9;
    v12 = v10;
    WebKit::RemoteRenderingBackendProxy::markSurfacesVolatile(v8, a2, &v12, a4);
    result = v12;
    v12 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    if (*(v8 + 20) == 1)
    {
      return (*(*v8 + 24))(v8);
    }

    else
    {
      --*(v8 + 20);
    }
  }

  else
  {
    result = 103;
    __break(0xC471u);
  }

  return result;
}

void sub_19DA18454(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  if (v10[5] == 1)
  {
    (*(*v10 + 24))(v10);
  }

  else
  {
    --v10[5];
  }

  _Unwind_Resume(exception_object);
}

void sub_19DA184DC()
{
  if (v0[4] == 1)
  {
    (*(*v0 + 8))(v0);
  }

  else
  {
    --v0[4];
  }

  JUMPOUT(0x19DA18474);
}

uint64_t WebKit::RemoteLayerBackingStoreCollection::markInProcessBackingStoreVolatile(uint64_t a1, uint64_t a2, char a3, double a4)
{
  v6 = a1;
  if ((a3 & 2) != 0 && (v7 = a4 - *(a2 + 344), v7 < 1.0))
  {
    if (v7 >= 0.2 && (*(a2 + 32) & 1) == 0)
    {
      WebKit::RemoteLayerWithInProcessRenderingBackingStore::setBufferVolatile(a1, (a2 + 376), 0);
    }

    return 0;
  }

  else
  {
    if (*(a2 + 32))
    {
      v8 = 1;
    }

    else
    {
      a1 = WebKit::RemoteLayerWithInProcessRenderingBackingStore::setBufferVolatile(a1, (a2 + 376), 0);
      v8 = a1;
      if ((*(a2 + 32) & 1) == 0)
      {
        a1 = WebKit::RemoteLayerWithInProcessRenderingBackingStore::setBufferVolatile(a1, (a2 + 368), 0);
        v8 = a1 & v8;
      }
    }

    v9 = *(a2 + 8);
    ++*(v6 + 64);
    if (v9)
    {
      if (*(v9 + 8))
      {
        v10 = *(v6 + 56);
        if (v10)
        {
          v11 = *(v10 - 8);
          v12 = (~(v9 << 32) + v9) ^ ((~(v9 << 32) + v9) >> 22);
          v13 = 9 * ((v12 + ~(v12 << 13)) ^ ((v12 + ~(v12 << 13)) >> 8));
          v14 = (v13 ^ (v13 >> 15)) + ~((v13 ^ (v13 >> 15)) << 27);
          v15 = v11 & ((v14 >> 31) ^ v14);
          for (i = 1; ; ++i)
          {
            v17 = *(v10 + 8 * v15);
            if (!v17)
            {
              break;
            }

            if (v17 != -1 && v17 == v9)
            {
              if ((a3 & 1) == 0)
              {
                return v8;
              }

              break;
            }

            v15 = (v15 + i) & v11;
          }
        }
      }
    }

    if ((*(a2 + 32) & 1) == 0)
    {
      return WebKit::RemoteLayerWithInProcessRenderingBackingStore::setBufferVolatile(a1, (a2 + 360), 0) & v8;
    }
  }

  return v8;
}

uint64_t WebKit::RemoteLayerBackingStoreCollection::markBackingStoreVolatileAfterReachabilityChange(WebKit::RemoteLayerBackingStoreCollection *this, WebKit::RemoteLayerBackingStore *a2)
{
  if ((*(*a2 + 16))(a2))
  {
    v4 = (a2 + 16);
    ++*(a2 + 4);
    v11 = 0;
    v12 = 0;
    WebKit::RemoteLayerBackingStoreCollection::collectRemoteRenderingBackingStoreBufferIdentifiersToMarkVolatile(this, a2, 0, &v11, 0.0);
    if (HIDWORD(v12))
    {
      WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(this + 2, this);
      v6 = *(this + 1);
      atomic_fetch_add(v6, 1u);
      v7 = WTF::fastMalloc(0x10);
      *v7 = &unk_1F10F28A8;
      v7[1] = v6;
      v10 = v7;
      WebKit::RemoteLayerBackingStoreCollection::sendMarkBuffersVolatile(*(*(this + 2) + 8), &v11, &v10, 0);
      if (v10)
      {
        (*(*v10 + 8))(v10);
      }
    }

    result = WTF::Vector<std::pair<WTF::Ref<WebKit::RemoteImageBufferSetProxy,WTF::RawPtrTraits<WebKit::RemoteImageBufferSetProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBufferSetProxy>>,WTF::OptionSet<WebKit::BufferInSetType>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v11, v5);
    v9 = *v4;
    if (!*v4)
    {
      __break(0xC471u);
      JUMPOUT(0x19DA18840);
    }
  }

  else if (((*(*a2 + 24))(a2) & 1) == 0 || (v4 = (a2 + 16), ++*(a2 + 4), result = WebKit::RemoteLayerBackingStoreCollection::markInProcessBackingStoreVolatile(this, a2, 0, 0.0), (v9 = *(a2 + 4)) == 0))
  {
    __break(0xC471u);
    JUMPOUT(0x19DA18820);
  }

  *v4 = v9 - 1;
  return result;
}

void sub_19DA18864(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (*v11)
  {
    --*v11;
    _Unwind_Resume(exception_object);
  }

  __break(0xC471u);
  JUMPOUT(0x19DA18890);
}

uint64_t WebKit::RemoteLayerBackingStoreCollection::collectRemoteRenderingBackingStoreBufferIdentifiersToMarkVolatile(uint64_t a1, uint64_t a2, unsigned __int8 a3, unsigned int *a4, double a5)
{
  v5 = *(a2 + 360);
  if (!v5)
  {
    return 1;
  }

  (**v5)(*(a2 + 360));
  if ((a3 & 2) != 0 && (v11 = a5 - *(a2 + 344), v11 < 1.0))
  {
    if (v11 < 0.2 || (v5[3641] & 4) != 0)
    {
      v12 = 0;
    }

    else
    {
      (**v5)(v5);
      v32 = a4[3];
      if (v32 == a4[2])
      {
        if (v32 + (v32 >> 1) <= v32 + 1)
        {
          v35 = v32 + 1;
        }

        else
        {
          v35 = v32 + (v32 >> 1);
        }

        if (v35 <= 0x10)
        {
          v36 = 16;
        }

        else
        {
          v36 = v35;
        }

        WTF::Vector<std::pair<WTF::Ref<WebKit::RemoteImageBufferSetProxy,WTF::RawPtrTraits<WebKit::RemoteImageBufferSetProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBufferSetProxy>>,WTF::OptionSet<WebKit::BufferInSetType>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a4, v36);
        v12 = 0;
        v32 = a4[3];
      }

      else
      {
        v12 = 0;
      }

      v33 = v32 + 1;
      v34 = *a4 + 16 * v32;
      *v34 = v5;
      *(v34 + 8) = 4;
      a4[3] = v33;
    }
  }

  else
  {
    v14 = *(a2 + 8);
    ++*(a1 + 64);
    if (v14)
    {
      if (*(v14 + 8))
      {
        v15 = *(a1 + 56);
        if (v15)
        {
          v16 = *(v15 - 8);
          v17 = (~(v14 << 32) + v14) ^ ((~(v14 << 32) + v14) >> 22);
          v18 = 9 * ((v17 + ~(v17 << 13)) ^ ((v17 + ~(v17 << 13)) >> 8));
          v19 = (v18 ^ (v18 >> 15)) + ~((v18 ^ (v18 >> 15)) << 27);
          v20 = v16 & ((v19 >> 31) ^ v19);
          for (i = 1; ; ++i)
          {
            v22 = *(v15 + 8 * v20);
            if (!v22)
            {
              break;
            }

            if (v22 != -1 && v22 == v14)
            {
              v24 = 0;
              goto LABEL_19;
            }

            v20 = (v20 + i) & v16;
          }
        }
      }
    }

    v24 = 1;
LABEL_19:
    v25 = (v24 | a3) & 1 | 6;
    if ((v25 & ~v5[3641]) != 0)
    {
      (**v5)(v5);
      v37 = v5;
      v38 = v25;
      v26 = a4[3];
      if (v26 == a4[2])
      {
        v28 = WTF::Vector<std::pair<WTF::Ref<WebKit::RemoteImageBufferSetProxy,WTF::RawPtrTraits<WebKit::RemoteImageBufferSetProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBufferSetProxy>>,WTF::OptionSet<WebKit::BufferInSetType>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a4, v26 + 1, &v37);
        v29 = *a4 + 16 * a4[3];
        v30 = *v28;
        *v28 = 0;
        *v29 = v30;
        *(v29 + 8) = *(v28 + 8);
        v31 = v37;
        ++a4[3];
        v37 = 0;
        if (v31)
        {
          (*(*v31 + 8))(v31);
        }
      }

      else
      {
        v27 = *a4 + 16 * v26;
        *v27 = v5;
        *(v27 + 8) = v25;
        ++a4[3];
      }
    }

    v12 = 1;
  }

  (*(*v5 + 8))(v5);
  return v12;
}

void sub_19DA18C24(_Unwind_Exception *a1)
{
  (*(*v1 + 8))(v1);
  (*(*v1 + 8))(v1);
  _Unwind_Resume(a1);
}

uint64_t WebKit::RemoteLayerBackingStoreCollection::markAllBackingStoreVolatile(WTF::MonotonicTime *a1, char a2, char a3)
{
  WTF::MonotonicTime::now(a1);
  v7 = v6;
  WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::begin(&v35, a1 + 3);
  v8 = *(a1 + 3);
  if (v8)
  {
    v9 = *(v8 - 1);
    v10 = &v8[v9];
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  v30 = (a1 + 24);
  v31 = v10;
  v32 = v10;
  v33 = v10;
  v34 = &v8[v9];
  WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v30);
  v11 = v36;
  v12 = v31;
  v13 = 1;
  while (v11 != v12)
  {
    v14 = *(*v11 + 8);
    ++v14[4];
    v15 = (*(*v14 + 24))(v14);
    v16 = v14[4];
    if (v15)
    {
      v14[4] = v16 + 1;
      v26 = WebKit::RemoteLayerBackingStoreCollection::markInProcessBackingStoreVolatile(a1, v14, a2, v7);
      v27 = v14[4];
      if (!v27)
      {
        __break(0xC471u);
        JUMPOUT(0x19DA18F3CLL);
      }

      v13 &= v26;
      v16 = v27 - 1;
      v14[4] = v16;
    }

    if (!v16)
    {
LABEL_25:
      __break(0xC471u);
      JUMPOUT(0x19DA18EFCLL);
    }

    v14[4] = v16 - 1;
    WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::operator++(&v35);
    v11 = v36;
  }

  WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::begin(&v35, a1 + 5);
  v17 = *(a1 + 5);
  if (v17)
  {
    v18 = *(v17 - 1);
    v19 = &v17[v18];
  }

  else
  {
    v19 = 0;
    v18 = 0;
  }

  v30 = (a1 + 40);
  v31 = v19;
  v32 = v19;
  v33 = v19;
  v34 = &v17[v18];
  WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v30);
  v20 = v36;
  v21 = v31;
  while (v20 != v21)
  {
    v23 = *(*v20 + 8);
    ++v23[4];
    v24 = (*(*v23 + 24))(v23);
    v25 = v23[4];
    if (v24)
    {
      v23[4] = v25 + 1;
      v28 = WebKit::RemoteLayerBackingStoreCollection::markInProcessBackingStoreVolatile(a1, v23, a3, v7);
      v29 = v23[4];
      if (!v29)
      {
        goto LABEL_25;
      }

      v13 &= v28;
      v25 = v29 - 1;
      v23[4] = v25;
    }

    if (!v25)
    {
      __break(0xC471u);
      JUMPOUT(0x19DA18F1CLL);
    }

    v23[4] = v25 - 1;
    WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::operator++(&v35);
    v20 = v36;
  }

  return v13 & 1;
}

void sub_19DA18F60(_Unwind_Exception *a1)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v2 - 1;
    *(v1 + 16) = v3;
    if (v3)
    {
      *(v1 + 16) = v3 - 1;
      _Unwind_Resume(a1);
    }
  }

  __break(0xC471u);
  JUMPOUT(0x19DA18F90);
}

uint64_t WebKit::RemoteLayerBackingStoreCollection::tryMarkAllBackingStoreVolatile(WTF::MonotonicTime *a1, WTF::RefCountedBase *a2)
{
  v4 = WebKit::RemoteLayerBackingStoreCollection::markAllBackingStoreVolatile(a1, 1, 1);
  v13 = 0;
  v14 = 0;
  v5 = WebKit::RemoteLayerBackingStoreCollection::collectAllRemoteRenderingBufferIdentifiersToMarkVolatile(a1, 1u, 1u, &v13);
  if (HIDWORD(v14))
  {
    v8 = v5;
    v9 = *a2;
    *a2 = 0;
    v10 = WTF::fastMalloc(0x18);
    if (v8)
    {
      v11 = 256;
    }

    else
    {
      v11 = 0;
    }

    *v10 = &unk_1F10F28D0;
    *(v10 + 8) = v11 | v4;
    *(v10 + 16) = v9;
    v12 = v10;
    WebKit::RemoteLayerBackingStoreCollection::sendMarkBuffersVolatile(*(*(a1 + 2) + 8), &v13, &v12, 0);
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }
  }

  else
  {
    WTF::CompletionHandler<void ()(BOOL)>::operator()(a2, v4);
  }

  return WTF::Vector<std::pair<WTF::Ref<WebKit::RemoteImageBufferSetProxy,WTF::RawPtrTraits<WebKit::RemoteImageBufferSetProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBufferSetProxy>>,WTF::OptionSet<WebKit::BufferInSetType>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v13, v6);
}

void sub_19DA19144(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  if (a4)
  {
    (*(*a4 + 8))(a4);
  }

  WTF::Vector<std::pair<WTF::Ref<WebKit::RemoteImageBufferSetProxy,WTF::RawPtrTraits<WebKit::RemoteImageBufferSetProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBufferSetProxy>>,WTF::OptionSet<WebKit::BufferInSetType>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va, a2);
  _Unwind_Resume(a1);
}

uint64_t WebKit::RemoteLayerBackingStoreCollection::collectAllRemoteRenderingBufferIdentifiersToMarkVolatile(WTF::MonotonicTime *a1, unsigned __int8 a2, unsigned __int8 a3, unsigned int *a4)
{
  WTF::MonotonicTime::now(a1);
  v9 = v8;
  WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::begin(&v37, a1 + 3);
  v10 = *(a1 + 3);
  if (v10)
  {
    v11 = *(v10 - 1);
    v12 = &v10[v11];
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  v32 = (a1 + 24);
  v33 = v12;
  v34 = v12;
  v35 = v12;
  v36 = &v10[v11];
  WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v32);
  v13 = v38;
  v14 = v33;
  v15 = 1;
  while (v13 != v14)
  {
    v16 = *(*v13 + 8);
    ++v16[4];
    v17 = (*(*v16 + 16))(v16);
    v18 = v16[4];
    if (v17)
    {
      v16[4] = v18 + 1;
      v19 = WebKit::RemoteLayerBackingStoreCollection::collectRemoteRenderingBackingStoreBufferIdentifiersToMarkVolatile(a1, v16, a2, a4, v9);
      v20 = v16[4];
      if (!v20)
      {
LABEL_25:
        __break(0xC471u);
        JUMPOUT(0x19DA193ECLL);
      }

      v15 &= v19;
      v18 = v20 - 1;
      v16[4] = v18;
    }

    if (!v18)
    {
      __break(0xC471u);
      JUMPOUT(0x19DA1940CLL);
    }

    v16[4] = v18 - 1;
    WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::operator++(&v37);
    v13 = v38;
  }

  WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::begin(&v37, a1 + 5);
  v21 = *(a1 + 5);
  if (v21)
  {
    v22 = *(v21 - 1);
    v23 = &v21[v22];
  }

  else
  {
    v23 = 0;
    v22 = 0;
  }

  v32 = (a1 + 40);
  v33 = v23;
  v34 = v23;
  v35 = v23;
  v36 = &v21[v22];
  WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v32);
  v24 = v38;
  v25 = v33;
  while (v24 != v25)
  {
    v27 = *(*v24 + 8);
    ++v27[4];
    v28 = (*(*v27 + 16))(v27);
    v29 = v27[4];
    if (v28)
    {
      v27[4] = v29 + 1;
      v30 = WebKit::RemoteLayerBackingStoreCollection::collectRemoteRenderingBackingStoreBufferIdentifiersToMarkVolatile(a1, v27, a3, a4, v9);
      v31 = v27[4];
      if (!v31)
      {
        __break(0xC471u);
        JUMPOUT(0x19DA1942CLL);
      }

      v15 &= v30;
      v29 = v31 - 1;
      v27[4] = v29;
    }

    if (!v29)
    {
      goto LABEL_25;
    }

    v27[4] = v29 - 1;
    WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::operator++(&v37);
    v24 = v38;
  }

  return v15 & 1;
}

void sub_19DA19450(_Unwind_Exception *a1)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v2 - 1;
    *(v1 + 16) = v3;
    if (v3)
    {
      *(v1 + 16) = v3 - 1;
      _Unwind_Resume(a1);
    }
  }

  __break(0xC471u);
  JUMPOUT(0x19DA19480);
}

void sub_19DA194B8(_Unwind_Exception *a1)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v2 - 1;
    *(v1 + 16) = v3;
    if (v3)
    {
      *(v1 + 16) = v3 - 1;
      _Unwind_Resume(a1);
    }
  }

  __break(0xC471u);
  JUMPOUT(0x19DA194E8);
}

uint64_t WebKit::RemoteLayerBackingStoreCollection::markAllBackingStoreVolatileFromTimer(WebKit::RemoteLayerBackingStoreCollection *this)
{
  v2 = WebKit::RemoteLayerBackingStoreCollection::markAllBackingStoreVolatile(this, 2, 0);
  v10 = 0;
  v11 = 0;
  v3 = WebKit::RemoteLayerBackingStoreCollection::collectAllRemoteRenderingBufferIdentifiersToMarkVolatile(this, 2u, 0, &v10);
  if (HIDWORD(v11))
  {
    if (v3)
    {
      v6 = 256;
    }

    else
    {
      v6 = 0;
    }

    WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(this + 2, this);
    v7 = *(this + 1);
    atomic_fetch_add(v7, 1u);
    v8 = WTF::fastMalloc(0x18);
    *v8 = &unk_1F10F28F8;
    *(v8 + 8) = v6 | v2;
    *(v8 + 16) = v7;
    v9 = v8;
    WebKit::RemoteLayerBackingStoreCollection::sendMarkBuffersVolatile(*(*(this + 2) + 8), &v10, &v9, 0);
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }
  }

  else if ((v2 & v3) == 1 && (*(this + 15) & 0xFFFFFFFFFFFFLL) != 0)
  {
    WebCore::TimerBase::stopSlowCase((this + 88));
  }

  return WTF::Vector<std::pair<WTF::Ref<WebKit::RemoteImageBufferSetProxy,WTF::RawPtrTraits<WebKit::RemoteImageBufferSetProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBufferSetProxy>>,WTF::OptionSet<WebKit::BufferInSetType>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v10, v4);
}

void sub_19DA1964C(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  if (a4)
  {
    (*(*a4 + 8))(a4);
  }

  WTF::Vector<std::pair<WTF::Ref<WebKit::RemoteImageBufferSetProxy,WTF::RawPtrTraits<WebKit::RemoteImageBufferSetProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBufferSetProxy>>,WTF::OptionSet<WebKit::BufferInSetType>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va, a2);
  _Unwind_Resume(a1);
}

void *WebKit::RemoteLayerBackingStoreCollection::gpuProcessConnectionWasDestroyed(WebKit::RemoteLayerBackingStoreCollection *this)
{
  v2 = this + 24;
  WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::begin(&v23, this + 3);
  v3 = *(this + 3);
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

  v18 = v2;
  v19 = v5;
  v20 = v5;
  v21 = v5;
  v22 = v3 + 8 * v4;
  WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v18);
  v6 = v24;
  v7 = v19;
  while (v6 != v7)
  {
    v8 = *(*v6 + 8);
    ++*(v8 + 4);
    if ((*(*v8 + 16))(v8))
    {
      WebKit::RemoteLayerBackingStore::setNeedsDisplay(v8);
    }

    v9 = *(v8 + 4);
    if (!v9)
    {
LABEL_20:
      __break(0xC471u);
      JUMPOUT(0x19DA19884);
    }

    *(v8 + 4) = v9 - 1;
    WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::operator++(&v23);
    v6 = v24;
  }

  WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::begin(&v23, this + 5);
  v10 = *(this + 5);
  if (v10)
  {
    v11 = *(v10 - 4);
    v12 = v10 + 8 * v11;
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  v18 = this + 40;
  v19 = v12;
  v20 = v12;
  v21 = v12;
  v22 = v10 + 8 * v11;
  result = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v18);
  v14 = v24;
  v15 = v19;
  while (v14 != v15)
  {
    v16 = *(*v14 + 8);
    ++*(v16 + 4);
    if ((*(*v16 + 16))(v16))
    {
      WebKit::RemoteLayerBackingStore::setNeedsDisplay(v16);
    }

    v17 = *(v16 + 4);
    if (!v17)
    {
      goto LABEL_20;
    }

    *(v16 + 4) = v17 - 1;
    result = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::operator++(&v23);
    v14 = v24;
  }

  return result;
}

void sub_19DA198A8(_Unwind_Exception *a1)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    *(v1 + 16) = v2 - 1;
    _Unwind_Resume(a1);
  }

  __break(0xC471u);
}

void sub_19DA198DC(_Unwind_Exception *a1)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    *(v1 + 16) = v2 - 1;
    _Unwind_Resume(a1);
  }

  __break(0xC471u);
}

void sub_19DA19A74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::RemoteLayerTreePropertyApplier::applyPropertiesToLayer(uint64_t isKindOfClass, uint64_t a2, WebKit::RemoteLayerTreeHost *this, float *a4, int a5, __n128 a6)
{
  v10 = isKindOfClass;
  v113 = *MEMORY[0x1E69E9840];
  v11 = *a4;
  if ((*a4 & 0x40) != 0)
  {
    [isKindOfClass setPosition:{a4[88], a4[89]}];
    isKindOfClass = [v10 setZPosition:a4[90]];
    v11 = *a4;
    if ((*a4 & 0x80) == 0)
    {
LABEL_3:
      if ((v11 & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((v11 & 0x80) == 0)
  {
    goto LABEL_3;
  }

  [v10 setAnchorPoint:{a4[91], a4[92]}];
  isKindOfClass = [v10 setAnchorPointZ:a4[93]];
  v11 = *a4;
  if ((*a4 & 0x100) == 0)
  {
LABEL_4:
    if ((v11 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  WebCore::FloatRect::operator CGRect();
  isKindOfClass = [v10 setBounds:?];
  v11 = *a4;
  if ((*a4 & 2) == 0)
  {
LABEL_5:
    if ((v11 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_22:
  if (*(a4 + 3))
  {
    WebCore::TransformationMatrix::operator CATransform3D();
  }

  else
  {
    v101 = *(MEMORY[0x1E69792E8] + 64);
    v102 = *(MEMORY[0x1E69792E8] + 80);
    v103 = *(MEMORY[0x1E69792E8] + 96);
    v104 = *(MEMORY[0x1E69792E8] + 112);
    v97 = *MEMORY[0x1E69792E8];
    v98 = *(MEMORY[0x1E69792E8] + 16);
    v99 = *(MEMORY[0x1E69792E8] + 32);
    v100 = *(MEMORY[0x1E69792E8] + 48);
  }

  v109 = v101;
  v110 = v102;
  v111 = v103;
  v112 = v104;
  *cf = v97;
  v106 = v98;
  v107 = v99;
  v108 = v100;
  isKindOfClass = [v10 setTransform:cf];
  v11 = *a4;
  if ((*a4 & 4) == 0)
  {
LABEL_6:
    if ((v11 & 0x40000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_30;
  }

LABEL_26:
  if (*(a4 + 4))
  {
    WebCore::TransformationMatrix::operator CATransform3D();
  }

  else
  {
    v93 = *(MEMORY[0x1E69792E8] + 64);
    v94 = *(MEMORY[0x1E69792E8] + 80);
    v95 = *(MEMORY[0x1E69792E8] + 96);
    v96 = *(MEMORY[0x1E69792E8] + 112);
    v89 = *MEMORY[0x1E69792E8];
    v90 = *(MEMORY[0x1E69792E8] + 16);
    v91 = *(MEMORY[0x1E69792E8] + 32);
    v92 = *(MEMORY[0x1E69792E8] + 48);
  }

  v109 = v93;
  v110 = v94;
  v111 = v95;
  v112 = v96;
  *cf = v89;
  v106 = v90;
  v107 = v91;
  v108 = v92;
  isKindOfClass = [v10 setSublayerTransform:{cf, v89, v90, v91, v92, v93, v94, v95, v96}];
  v11 = *a4;
  if ((*a4 & 0x40000000) == 0)
  {
LABEL_7:
    if ((v11 & 0x100000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_31;
  }

LABEL_30:
  isKindOfClass = [v10 setHidden:*(a4 + 583)];
  v11 = *a4;
  if ((*a4 & 0x100000000) == 0)
  {
LABEL_8:
    if ((v11 & 0x20000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_32;
  }

LABEL_31:
  isKindOfClass = [v10 setGeometryFlipped:*(a4 + 585)];
  v11 = *a4;
  if ((*a4 & 0x20000) == 0)
  {
LABEL_9:
    if ((v11 & 0x100000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_33;
  }

LABEL_32:
  [v10 setContentsScale:a4[135]];
  isKindOfClass = [v10 setRasterizationScale:a4[135]];
  v11 = *a4;
  if ((*a4 & 0x100000) == 0)
  {
LABEL_10:
    if ((v11 & 0x400000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_34;
  }

LABEL_33:
  a6.n128_f32[0] = a4[138];
  isKindOfClass = [v10 setOpacity:a6.n128_f64[0]];
  v11 = *a4;
  if ((*a4 & 0x400000000) == 0)
  {
LABEL_11:
    if ((v11 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_35;
  }

LABEL_34:
  isKindOfClass = [v10 setMasksToBounds:*(a4 + 587)];
  v11 = *a4;
  if ((*a4 & 1) == 0)
  {
LABEL_12:
    if ((v11 & 0x200000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_42;
  }

LABEL_35:
  v12 = *(a4 + 2);
  if (v12)
  {
    atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](cf, v12);
    if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v13);
    }
  }

  else
  {
    cf[0] = &stru_1F1147748;
    v14 = &stru_1F1147748;
  }

  isKindOfClass = [v10 setName:cf[0]];
  v15 = cf[0];
  cf[0] = 0;
  if (v15)
  {
  }

  v11 = *a4;
  if ((*a4 & 0x200000) == 0)
  {
LABEL_13:
    if ((v11 & 0x400000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_48;
  }

LABEL_42:
  if ((*(a4 + 566) & 4) != 0)
  {
    WebCore::cachedCGColor(cf, (a4 + 140), a2);
    v16 = cf[0];
  }

  else
  {
    v16 = 0;
    cf[0] = 0;
  }

  [v10 setBackgroundColor:v16];
  isKindOfClass = cf[0];
  cf[0] = 0;
  if (isKindOfClass)
  {
    CFRelease(isKindOfClass);
  }

  v11 = *a4;
  if ((*a4 & 0x400000) == 0)
  {
LABEL_14:
    if ((v11 & 0x80000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_54;
  }

LABEL_48:
  if ((*(a4 + 574) & 4) != 0)
  {
    WebCore::cachedCGColor(cf, (a4 + 142), a2);
    v17 = cf[0];
  }

  else
  {
    v17 = 0;
    cf[0] = 0;
  }

  [v10 setBorderColor:v17];
  isKindOfClass = cf[0];
  cf[0] = 0;
  if (isKindOfClass)
  {
    CFRelease(isKindOfClass);
  }

  v11 = *a4;
  if ((*a4 & 0x80000) == 0)
  {
LABEL_15:
    if ((v11 & 0x200000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_55;
  }

LABEL_54:
  isKindOfClass = [v10 setBorderWidth:a4[137]];
  v11 = *a4;
  if ((*a4 & 0x200000000) == 0)
  {
LABEL_16:
    if ((v11 & 0x200) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_56;
  }

LABEL_55:
  isKindOfClass = [v10 setDoubleSided:*(a4 + 586)];
  v11 = *a4;
  if ((*a4 & 0x200) == 0)
  {
LABEL_17:
    if ((v11 & 0x40000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_57;
  }

LABEL_56:
  WebCore::FloatRect::operator CGRect();
  isKindOfClass = [v10 setContentsRect:?];
  if ((*a4 & 0x40000) == 0)
  {
    goto LABEL_59;
  }

LABEL_57:
  isKindOfClass = [v10 setCornerRadius:a4[136]];
  a6.n128_f32[0] = a4[136];
  if (a6.n128_f32[0] != 0.0)
  {
    isKindOfClass = [v10 setCornerCurve:*MEMORY[0x1E69796E0]];
  }

LABEL_59:
  v18 = *a4;
  if ((*a4 & 8) != 0)
  {
    BYTE8(v108) = 0;
    if (*(a4 + 5))
    {
      WebCore::Path::addRoundedRect();
    }

    v19 = WebCore::Path::platformPath(cf);
    isKindOfClass = [WTF::dynamic_objc_cast<CAShapeLayer>(v10) setPath:v19];
    if (BYTE8(v108) >= 2u && BYTE8(v108) != 255)
    {
      isKindOfClass = cf[0];
      cf[0] = 0;
      if (isKindOfClass)
      {
        if (atomic_fetch_add((isKindOfClass + 8), 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, (isKindOfClass + 8));
          isKindOfClass = (*(*isKindOfClass + 8))(isKindOfClass);
        }
      }
    }

    v18 = *a4;
  }

  if ((v18 & 0x1000) != 0)
  {
    v20 = WebCore::Path::platformPath((a4 + 108));
    isKindOfClass = [WTF::dynamic_objc_cast<CAShapeLayer>(v10) setPath:v20];
    v18 = *a4;
  }

  if ((v18 & 0x1000000) != 0)
  {
    v21 = *(a4 + 577);
    if (v21 == 2)
    {
      v22 = MEMORY[0x1E6979D68];
    }

    else if (v21 == 1)
    {
      v22 = MEMORY[0x1E6979CB8];
    }

    else
    {
      if (*(a4 + 577))
      {
        v23 = 0;
        goto LABEL_79;
      }

      v22 = MEMORY[0x1E6979C48];
    }

    v23 = *v22;
LABEL_79:
    isKindOfClass = [v10 setMinificationFilter:v23];
    v18 = *a4;
  }

  if ((v18 & 0x2000000) == 0)
  {
    goto LABEL_90;
  }

  v24 = *(a4 + 578);
  if (v24 == 2)
  {
    v25 = MEMORY[0x1E6979D68];
  }

  else if (v24 == 1)
  {
    v25 = MEMORY[0x1E6979CB8];
  }

  else
  {
    if (*(a4 + 578))
    {
      v26 = 0;
      goto LABEL_89;
    }

    v25 = MEMORY[0x1E6979C48];
  }

  v26 = *v25;
LABEL_89:
  isKindOfClass = [v10 setMagnificationFilter:v26];
  v18 = *a4;
LABEL_90:
  if ((v18 & 0x4000000) != 0)
  {
    isKindOfClass = WebCore::PlatformCAFilters::setBlendingFiltersOnLayer();
    v18 = *a4;
  }

  if ((v18 & 0x8000000) != 0)
  {
    isKindOfClass = WTF::dynamic_objc_cast<CAShapeLayer>(v10);
    if (isKindOfClass)
    {
      v27 = MEMORY[0x1E69797F8];
      if (!*(a4 + 580))
      {
        v27 = MEMORY[0x1E6979800];
      }

      isKindOfClass = [isKindOfClass setFillRule:*v27];
    }
  }

  v28 = *a4;
  if ((*a4 & 0x10000) != 0)
  {
    a6.n128_f32[0] = a4[134];
    isKindOfClass = [v10 setSpeed:a6.n128_f64[0]];
    v28 = *a4;
  }

  if ((v28 & 0x8000) != 0)
  {
    isKindOfClass = [v10 setTimeOffset:*(a4 + 66)];
    v28 = *a4;
  }

  if ((v28 & 0x80000400) != 0)
  {
    v29 = *(a4 + 52);
    if (v29 && *(a4 + 584) == 1)
    {
      if (!a2)
      {
        __break(0xC471u);
        return;
      }

      WebKit::RemoteLayerTreeNode::applyBackingStore(a2, a6, this, a5, v29);
    }

    else
    {
      isKindOfClass = [v10 _web_clearContents];
    }
  }

  v30 = *a4;
  if (a2 && (v30 & 0x4000000000) != 0)
  {
    *(a2 + 256) = *(a4 + 592);
  }

  if ((v30 & 0x800) != 0)
  {
    v31 = *(a4 + 53);
    if (v31)
    {
      WTF::Vector<WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(cf, v31);
    }

    else
    {
      cf[0] = 0;
      cf[1] = 0;
    }

    WebCore::PlatformCAFilters::setFiltersOnLayer();
    isKindOfClass = WTF::Vector<WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(cf, v32);
    v30 = *a4;
  }

  if ((v30 & 0x20) != 0)
  {
    if (WebKit::RemoteLayerTreeHost::threadedAnimationResolutionEnabled(this))
    {
      WebKit::RemoteLayerTreeNode::setAcceleratedEffectsAndBaseValues(a2, (a4 + 22), (a4 + 26), this);
    }

    else
    {
      WebKit::PlatformCAAnimationRemote::updateLayerAnimations(v10, this, (a4 + 16), a4 + 10);
    }
  }

  v33 = *a4;
  if ((*a4 & 0x20000000) != 0)
  {
    if (*(a4 + 582))
    {
      v34 = 15;
    }

    else
    {
      v34 = 0;
    }

    isKindOfClass = [v10 setEdgeAntialiasingMask:v34];
    v33 = *a4;
  }

  if ((v33 & 0x2000000000) != 0)
  {
    isKindOfClass = [v10 setShouldRasterize:*(a4 + 591)];
    v33 = *a4;
  }

  if ((v33 & 0x8000000000) != 0)
  {
    v35 = MEMORY[0x1E69792D8];
    if (!*(a4 + 593))
    {
      v35 = MEMORY[0x1E69792E0];
    }

    isKindOfClass = [v10 setToneMapMode:*v35];
    v33 = *a4;
  }

  if ((v33 & 0x10000000) != 0)
  {
    v36 = v10;
    if (a2)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v36 = v10;
      if (isKindOfClass)
      {
        isKindOfClass = [*(a2 + 56) playerLayer];
        v36 = isKindOfClass;
      }
    }

    if (v36)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        v37 = v36;
        [v36 setVideoGravity:WebCore::convertMediaPlayerToAVLayerVideoGravity()];
      }
    }
  }

  if ((*(a4 + 5) & 2) != 0)
  {
    v38 = *(a4 + 724);
    v39 = *(a4 + 725);
    v40 = *(a4 + 726);
    v41 = a4[186];
    v42 = a4[187];
    v43 = a4[188];
    v44 = a4[189];
    v45 = a4[190];
    v46 = a4[191];
    v47 = a4[192];
    v48 = a4[193];
    v49 = *(a4 + 776);
    if (v10)
    {
      (*MEMORY[0x1E69E22C8])(isKindOfClass);
      if (objc_opt_isKindOfClass())
      {
        v50 = v10;
        v51 = WebKit::materialRecipeForAppleVisualEffect(v38, v40);
        v52 = v51;
        if (v51)
        {
          v67 = v51;
          [v10 setRecipe:v52];

          return;
        }
      }
    }

    if (!WebCore::appleVisualEffectAppliesFilter())
    {
      if (WebCore::appleVisualEffectIsHostedMaterial())
      {
        v56 = 0.0;
        if (v49)
        {
          if (v41 >= v42)
          {
            v57 = v41;
          }

          else
          {
            v57 = v42;
          }

          if (v43 >= v44)
          {
            v58 = v43;
          }

          else
          {
            v58 = v44;
          }

          cf[0] = __PAIR64__(LODWORD(v58), LODWORD(v57));
          if (v45 >= v46)
          {
            v59 = v45;
          }

          else
          {
            v59 = v46;
          }

          if (v47 >= v48)
          {
            v60 = v47;
          }

          else
          {
            v60 = v48;
          }

          cf[1] = __PAIR64__(LODWORD(v60), LODWORD(v59));
          v61 = 4;
          v62 = cf;
          do
          {
            if (v57 < *(cf + v61))
            {
              v57 = *(cf + v61);
              v62 = (cf + v61);
            }

            v61 += 4;
          }

          while (v61 != 16);
          v56 = *v62;
        }

        v63 = v56;
        if (a2)
        {
          v64 = WTF::dynamic_objc_cast<WKMaterialHostingView>(*(a2 + 56));
          v65 = v64;
          if (v64)
          {
            v66 = v64;
            [v65 updateMaterialEffectType:WebKit::hostedMaterialEffectTypeForAppleVisualEffect(v38) colorScheme:v40 != 0 cornerRadius:v63];
          }
        }

        [WKMaterialHostingSupport updateHostingLayer:v10 materialEffectType:WebKit::hostedMaterialEffectTypeForAppleVisualEffect(v38) colorScheme:v40 != 0 cornerRadius:v63];
      }

      return;
    }

    v53 = WebKit::materialRecipeForAppleVisualEffect(v39, v40);
    v54 = v53;
    if (v53)
    {
      v53 = v53;
    }

    CoreMaterial_MTCoreMaterialRecipePlatformContentThickDark = [(PAL *)v54 isEqualToString:PAL::get_CoreMaterial_MTCoreMaterialRecipeNone(v53)];
    if (CoreMaterial_MTCoreMaterialRecipePlatformContentThickDark)
    {
      if (v40 == 1)
      {
        CoreMaterial_MTCoreMaterialRecipePlatformContentThickDark = PAL::get_CoreMaterial_MTCoreMaterialRecipePlatformContentThickDark(CoreMaterial_MTCoreMaterialRecipePlatformContentThickDark);
      }

      else
      {
        CoreMaterial_MTCoreMaterialRecipePlatformContentThickDark = PAL::get_CoreMaterial_MTCoreMaterialRecipePlatformContentThickLight(CoreMaterial_MTCoreMaterialRecipePlatformContentThickDark);
      }

      v68 = CoreMaterial_MTCoreMaterialRecipePlatformContentThickDark;
      if (CoreMaterial_MTCoreMaterialRecipePlatformContentThickDark)
      {
        CoreMaterial_MTCoreMaterialRecipePlatformContentThickDark = CoreMaterial_MTCoreMaterialRecipePlatformContentThickDark;
      }

      if (v54)
      {
      }

      v54 = v68;
    }

    if ((v38 - 14) < 4)
    {
      CoreMaterial_MTCoreMaterialRecipePlatformContentThickDark = PAL::get_CoreMaterial_MTCoreMaterialVisualStyleCategoryFill(CoreMaterial_MTCoreMaterialRecipePlatformContentThickDark);
    }

    else
    {
      if ((v38 - 10) > 3)
      {
        v69 = 0;
LABEL_184:
        v70 = 0;
        if (v38 > 13)
        {
          if (v38 <= 15)
          {
            if (v38 != 14)
            {
LABEL_191:
              CoreMaterial_MTCoreMaterialVisualStyleSecondary = PAL::get_CoreMaterial_MTCoreMaterialVisualStyleSecondary(CoreMaterial_MTCoreMaterialRecipePlatformContentThickDark);
              goto LABEL_199;
            }

LABEL_197:
            CoreMaterial_MTCoreMaterialVisualStyleSecondary = PAL::get_CoreMaterial_MTCoreMaterialVisualStylePrimary(CoreMaterial_MTCoreMaterialRecipePlatformContentThickDark);
            goto LABEL_199;
          }

          if (v38 != 16)
          {
            if (v38 != 17)
            {
LABEL_200:
              v72 = (*MEMORY[0x1E69E2480])(v54, v69, v70, 0);
              v73 = v72;
              if (v72)
              {
                v74 = v72;
              }

              v75 = [v73 objectForKey:@"filters"];
              v76 = v75;
              if (v75)
              {
                v77 = v75;
              }

              v78 = [v76 firstObject];
              v79 = v78;
              if (v78)
              {
                v80 = v78;
                v81 = *MEMORY[0x1E6979AC0];
                v82 = [v79 objectForKey:*MEMORY[0x1E6979AC0]];
                v83 = v82;
                if (v82)
                {
                  v84 = v82;
                }

                v85 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979D78]];
                v86 = v85;
                if (v85)
                {
                  v87 = v85;
                }

                [v86 setValue:v83 forKey:v81];
                cf[0] = v86;
                v88 = [MEMORY[0x1E695DEC8] arrayWithObjects:cf count:1];
                if (v86)
                {
                }

                if (v83)
                {
                }
              }

              else
              {
                v88 = 0;
              }

              [v10 setFilters:v88];
              if (v79)
              {
              }

              if (v76)
              {
              }

              if (v73)
              {
              }

              if (v54)
              {
              }

              return;
            }

            CoreMaterial_MTCoreMaterialVisualStyleSecondary = PAL::get_CoreMaterial_MTCoreMaterialVisualStyleSeparator(CoreMaterial_MTCoreMaterialRecipePlatformContentThickDark);
LABEL_199:
            v70 = CoreMaterial_MTCoreMaterialVisualStyleSecondary;
            goto LABEL_200;
          }
        }

        else
        {
          if (v38 <= 11)
          {
            if (v38 != 10)
            {
              if (v38 != 11)
              {
                goto LABEL_200;
              }

              goto LABEL_191;
            }

            goto LABEL_197;
          }

          if (v38 != 12)
          {
            CoreMaterial_MTCoreMaterialVisualStyleSecondary = PAL::get_CoreMaterial_MTCoreMaterialVisualStyleQuaternary(CoreMaterial_MTCoreMaterialRecipePlatformContentThickDark);
            goto LABEL_199;
          }
        }

        CoreMaterial_MTCoreMaterialVisualStyleSecondary = PAL::get_CoreMaterial_MTCoreMaterialVisualStyleTertiary(CoreMaterial_MTCoreMaterialRecipePlatformContentThickDark);
        goto LABEL_199;
      }

      CoreMaterial_MTCoreMaterialRecipePlatformContentThickDark = PAL::get_CoreMaterial_MTCoreMaterialVisualStyleCategoryStroke(CoreMaterial_MTCoreMaterialRecipePlatformContentThickDark);
    }

    v69 = CoreMaterial_MTCoreMaterialRecipePlatformContentThickDark;
    goto LABEL_184;
  }
}

uint64_t WTF::dynamic_objc_cast<CAShapeLayer>(uint64_t result)
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

void WebKit::RemoteLayerTreePropertyApplier::applyProperties(uint64_t a1, WebKit::RemoteLayerTreeHost *this, uint64_t a3, uint64_t *a4, int a5, __n128 a6)
{
  WebKit::RemoteLayerTreePropertyApplier::applyPropertiesToLayer(*(a1 + 48), a1, this, a3, a5, a6);
  if (*(a3 + 5))
  {
    WebKit::RemoteLayerTreeNode::setEventRegion(a1, (a3 + 600));
  }

  WebKit::RemoteLayerTreePropertyApplier::updateMask(a1, a3, a4);
  WebKit::RemoteLayerTreePropertyApplier::applyPropertiesToUIView(*(a1 + 56), a3);
}

void WebKit::RemoteLayerTreePropertyApplier::updateMask(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if ((*(a2 + 1) & 0x20) != 0)
  {
    v12 = *(a1 + 48);
    if (v12)
    {
      v5 = v12;
    }

    if (*(a2 + 496))
    {
      v6 = WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::lookup<WTF::HashMapTranslatorAdapter<WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IdentityHashTranslator<WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>>,(WTF::ShouldValidateKey)1,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>( a3,  (a2 + 496));
      if (v6)
      {
        v7 = v6[2];
        if (v7)
        {
          v9 = *(v7 + 8);
          v8 = v7 + 8;
          *v8 = v9 + 1;
          v10 = *(v8 + 40);
          if (v10)
          {
            v11 = v10;
          }

          [v10 removeFromSuperlayer];
          [v12 setMask:v10];
          if (v10)
          {
          }

          WTF::RefCounted<WebKit::RemoteLayerTreeNode>::deref(v8);
        }
      }
    }

    else
    {
      [v12 setMask:0];
    }

    if (v12)
    {
    }
  }
}

void sub_19DA1A99C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::RemoteLayerTreePropertyApplier::applyPropertiesToUIView(void *a1, uint64_t *a2)
{
  v4 = *a2;
  if ((*a2 & 0x1800000000) != 0)
  {
    [a1 setUserInteractionEnabled:*(a2 + 590) & ~*(a2 + 589) & 1];
    v4 = *a2;
  }

  if ((v4 & 0x100) != 0)
  {
    v5 = WTF::dynamic_objc_cast<WKMaterialHostingView>(a1);
    if (v5)
    {
      v9 = v5;
      v6 = v5;
      LODWORD(v7) = *(a2 + 96);
      LODWORD(v8) = *(a2 + 97);
      [v9 updateHostingSize:{v7, v8}];
    }
  }
}

void WebKit::RemoteLayerTreePropertyApplier::applyHierarchyUpdates(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if ((*a2 & 0x10) != 0)
  {
    v6 = *(a1 + 56);
    if (v6 && [objc_msgSend(v6 "subviews")]
      || *(a2 + 60)
      && (v13 = WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::lookup<WTF::HashMapTranslatorAdapter<WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IdentityHashTranslator<WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>>,(WTF::ShouldValidateKey)1,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>( a3,  *(a2 + 48))) != 0 && (v14 = v13[2]) != 0 && *(v14 + 56))
    {
      v7 = *(a1 + 56);
      if (v7)
      {
        v8 = v7;
      }

      v9 = WTF::dynamic_objc_cast<WKMaterialHostingView>(v7);
      v10 = v9;
      if (v9)
      {
        v11 = v9;
        v31 = [v10 contentView];
        if (v31)
        {
          v12 = v31;
        }

        if (v7)
        {
        }
      }

      else
      {
        v31 = v7;
      }

      v20 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:*(a2 + 60)];
      v26 = *(a2 + 60);
      if (v26)
      {
        v27 = *(a2 + 48);
        v28 = 16 * v26;
        do
        {
          v29 = WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::lookup<WTF::HashMapTranslatorAdapter<WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IdentityHashTranslator<WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>>,(WTF::ShouldValidateKey)1,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>( a3,  v27);
          if (v29)
          {
            v30 = v29[2];
            if (v30)
            {
              if (*(v30 + 56))
              {
                [v20 addObject:?];
              }
            }
          }

          v27 += 2;
          v28 -= 16;
        }

        while (v28);
      }

      [v31 _web_setSubviews:v20];
    }

    else
    {
      v15 = *(a1 + 48);
      if (v15)
      {
        v16 = v15;
      }

      v17 = [WKMaterialHostingSupport contentLayerForMaterialHostingLayer:v15];
      if (v17)
      {
        v31 = v17;
        v18 = v17;
        v19 = v31;
        if (v15)
        {
        }
      }

      else
      {
        v31 = v15;
      }

      v20 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:*(a2 + 60)];
      v21 = *(a2 + 60);
      if (v21)
      {
        v22 = *(a2 + 48);
        v23 = 16 * v21;
        do
        {
          v24 = WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::lookup<WTF::HashMapTranslatorAdapter<WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IdentityHashTranslator<WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>>,(WTF::ShouldValidateKey)1,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>( a3,  v22);
          if (v24)
          {
            v25 = v24[2];
            if (v25)
            {
              if (*(v25 + 48))
              {
                [v20 addObject:?];
              }
            }
          }

          v22 += 2;
          v23 -= 16;
        }

        while (v23);
      }

      [v31 setSublayers:v20];
    }

    if (v20)
    {
    }

    if (v31)
    {
    }
  }
}

void sub_19DA1ACA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a2 != 1)
  {
    _Unwind_Resume(exception_object);
  }

  v16 = objc_begin_catch(exception_object);
  ReportBlockedObjCException(v16);

  objc_end_catch();
}

uint64_t WTF::dynamic_objc_cast<WKMaterialHostingView>(uint64_t result)
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

uint64_t WebKit::RemoteLayerTreeTransaction::RemoteLayerTreeTransaction(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = 0;
  v4 = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a1 + 24) = v4;
  *(a1 + 32) = 0;
  v5 = *(a2 + 32);
  *(a2 + 32) = 0;
  *(a1 + 32) = v5;
  v6 = *(a2 + 40);
  *(a1 + 48) = 0;
  *(a1 + 40) = v6;
  *(a1 + 56) = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 48, (a2 + 48));
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 64, (a2 + 64));
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 80, (a2 + 80));
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 96, (a2 + 96));
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  WTF::VectorBuffer<unsigned short,0ul,WTF::FastMalloc>::adopt(a1 + 112, (a2 + 112));
  v7 = *(a2 + 128);
  v8 = *(a2 + 144);
  v9 = *(a2 + 160);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 144) = v8;
  *(a1 + 160) = v9;
  *(a1 + 128) = v7;
  *(a1 + 184) = 0;
  if (a1 == a2)
  {
    *(a1 + 192) = 0;
    *(a1 + 200) = 0;
  }

  else
  {
    v10 = *(a2 + 184);
    *(a2 + 184) = 0;
    *(a1 + 184) = v10;
    *(a1 + 192) = 0;
    v11 = *(a2 + 192);
    *(a2 + 192) = 0;
    *(a1 + 192) = v11;
    *(a1 + 200) = 0;
    v12 = *(a2 + 200);
    *(a2 + 200) = 0;
    *(a1 + 200) = v12;
  }

  std::__optional_move_base<WebCore::FixedContainerEdges,false>::__optional_move_base[abi:sn200100]((a1 + 208), a2 + 208);
  *(a1 + 280) = *(a2 + 280);
  v13 = *(a2 + 296);
  v14 = *(a2 + 312);
  v15 = *(a2 + 344);
  *(a1 + 328) = *(a2 + 328);
  *(a1 + 344) = v15;
  *(a1 + 296) = v13;
  *(a1 + 312) = v14;
  std::__optional_move_base<WebKit::EditorState,false>::__optional_move_base[abi:sn200100]((a1 + 368), a2 + 368);
  v16 = *(a2 + 928);
  *(a1 + 944) = *(a2 + 944);
  *(a1 + 928) = v16;
  return a1;
}

void sub_19DA1AF64(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_object, WebKit::ChangedLayers *a10)
{
  if (*(v11 + 272) == 1)
  {
    v19 = v11 + 256;
    v20 = -64;
    do
    {
      v19 = mpark::detail::move_constructor<mpark::detail::traits<WebCore::PredominantColorType,WebCore::Color>,(mpark::detail::Trait)1>::~move_constructor(v19, a2) - 16;
      v20 += 16;
    }

    while (v20);
  }

  WebCore::Color::~Color(v18, a2);
  WebCore::Color::~Color(v10, v21);
  WebCore::Color::~Color(v17, v22);
  v24 = *v16;
  if (*v16)
  {
    *(v11 + 112) = 0;
    *(v11 + 120) = 0;
    WTF::fastFree(v24, v23);
  }

  v25 = *v15;
  if (*v15)
  {
    *(v11 + 96) = 0;
    *(v11 + 104) = 0;
    WTF::fastFree(v25, v23);
  }

  v26 = *v14;
  if (*v14)
  {
    *(v11 + 80) = 0;
    *(v11 + 88) = 0;
    WTF::fastFree(v26, v23);
  }

  v27 = *v13;
  if (*v13)
  {
    *(v11 + 64) = 0;
    *(v11 + 72) = 0;
    WTF::fastFree(v27, v23);
  }

  WTF::Vector<WebKit::RemoteLayerTreeTransaction::LayerCreationProperties,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v12, v23);
  WebKit::ChangedLayers::~ChangedLayers(a10, v28);
  _Unwind_Resume(a1);
}

void sub_19DA1B044(uint64_t a1, void *a2)
{
  v4 = *v3;
  if (*v3)
  {
    *(v2 + 48) = 0;
    *(v2 + 56) = 0;
    WTF::fastFree(v4, a2);
  }

  JUMPOUT(0x19DA1AFD4);
}

void *WebKit::ChangedLayers::ChangedLayers(void *result, uint64_t *a2)
{
  *result = 0;
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  result[1] = 0;
  v3 = a2[1];
  a2[1] = 0;
  result[1] = v3;
  return result;
}

{
  *result = 0;
  result[1] = 0;
  v2 = *a2;
  *a2 = 0;
  result[1] = v2;
  return result;
}

void WebCore::Color::~Color(WebCore::Color *this, void *a2)
{
  if ((*this & 0x8000000000000) != 0)
  {
    v2 = (*this & 0xFFFFFFFFFFFFLL);
    add = atomic_fetch_add(v2, 0xFFFFFFFF);
    if (add == 1)
    {
      atomic_store(1u, v2);
      WTF::fastFree(v2, a2);
    }
  }
}

uint64_t WebKit::ChangedLayers::operator=(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    WTF::HashTable<WTF::Ref<WebKit::PlatformCALayerRemote,WTF::RawPtrTraits<WebKit::PlatformCALayerRemote>,WTF::DefaultRefDerefTraits<WebKit::PlatformCALayerRemote>>,WTF::Ref<WebKit::PlatformCALayerRemote,WTF::RawPtrTraits<WebKit::PlatformCALayerRemote>,WTF::DefaultRefDerefTraits<WebKit::PlatformCALayerRemote>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::PlatformCALayerRemote,WTF::RawPtrTraits<WebKit::PlatformCALayerRemote>,WTF::DefaultRefDerefTraits<WebKit::PlatformCALayerRemote>>>,WTF::HashTraits<WTF::Ref<WebKit::PlatformCALayerRemote,WTF::RawPtrTraits<WebKit::PlatformCALayerRemote>,WTF::DefaultRefDerefTraits<WebKit::PlatformCALayerRemote>>>,WTF::HashTraits<WTF::Ref<WebKit::PlatformCALayerRemote,WTF::RawPtrTraits<WebKit::PlatformCALayerRemote>,WTF::DefaultRefDerefTraits<WebKit::PlatformCALayerRemote>>>,WTF::FastMalloc>::deallocateTable(v5, a2);
  }

  v6 = a2[1];
  a2[1] = 0;
  v7 = *(a1 + 8);
  *(a1 + 8) = v6;
  if (v7)
  {
    WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::UniqueRef<WebKit::LayerProperties>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::UniqueRef<WebKit::LayerProperties>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::UniqueRef<WebKit::LayerProperties>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::UniqueRef<WebKit::LayerProperties>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::deallocateTable(v7, a2);
  }

  return a1;
}

double WebKit::RemoteLayerTreeTransaction::RemoteLayerTreeTransaction(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  *(a1 + 272) = 0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 193) = 0u;
  *(a1 + 280) = 0x3FF0000000000000;
  __asm { FMOV            V0.2D, #1.0 }

  *(a1 + 288) = _Q0;
  *(a1 + 304) = xmmword_19E7033D0;
  *(a1 + 320) = 0;
  *(a1 + 328) = a2;
  *(a1 + 352) = 0;
  *(a1 + 336) = a3;
  *(a1 + 344) = 0;
  *&result = 0x100000001;
  *(a1 + 356) = 1;
  *(a1 + 368) = 0;
  *(a1 + 912) = 0;
  *(a1 + 928) = 0;
  *(a1 + 936) = 0;
  *(a1 + 944) = 0;
  return result;
}

WebKit::RemoteLayerTreeTransaction *WebKit::RemoteLayerTreeTransaction::RemoteLayerTreeTransaction(WebKit::RemoteLayerTreeTransaction *this)
{
  *this = 0;
  *(this + 272) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 193) = 0u;
  *(this + 35) = 0x3FF0000000000000;
  __asm { FMOV            V0.2D, #1.0 }

  *(this + 18) = _Q0;
  *(this + 19) = xmmword_19E7033D0;
  *(this + 40) = 0;
  v7 = WebCore::Process::identifier(this);
  *(this + 41) = 0;
  *(this + 42) = v7;
  *(this + 43) = 0;
  *(this + 88) = 0;
  *(this + 89) = 1;
  *(this + 368) = 0;
  *(this + 912) = 0;
  *(this + 928) = 0;
  *(this + 936) = 0;
  *(this + 118) = 0;
  return this;
}

void sub_19DA1B268(_Unwind_Exception *a1, void *a2)
{
  if (*(v2 + 272) == 1)
  {
    v12 = v2 + 256;
    v13 = -64;
    do
    {
      v12 = mpark::detail::move_constructor<mpark::detail::traits<WebCore::PredominantColorType,WebCore::Color>,(mpark::detail::Trait)1>::~move_constructor(v12, a2) - 16;
      v13 += 16;
    }

    while (v13);
  }

  v4 = *(v2 + 200);
  if ((v4 & 0x8000000000000) != 0)
  {
    v14 = (v4 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v4 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v14);
      WTF::fastFree(v14, a2);
    }
  }

  v5 = *(v2 + 192);
  if ((v5 & 0x8000000000000) != 0)
  {
    v15 = (v5 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v5 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v15);
      WTF::fastFree(v15, a2);
    }
  }

  v6 = *(v2 + 184);
  if ((v6 & 0x8000000000000) != 0)
  {
    v16 = (v6 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v6 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v16);
      WTF::fastFree(v16, a2);
    }
  }

  v7 = *(v2 + 112);
  if (v7)
  {
    *(v2 + 112) = 0;
    *(v2 + 120) = 0;
    WTF::fastFree(v7, a2);
  }

  v8 = *(v2 + 96);
  if (v8)
  {
    *(v2 + 96) = 0;
    *(v2 + 104) = 0;
    WTF::fastFree(v8, a2);
  }

  v9 = *(v2 + 80);
  if (v9)
  {
    *(v2 + 80) = 0;
    *(v2 + 88) = 0;
    WTF::fastFree(v9, a2);
  }

  v10 = *(v2 + 64);
  if (v10)
  {
    *(v2 + 64) = 0;
    *(v2 + 72) = 0;
    WTF::fastFree(v10, a2);
  }

  WTF::Vector<WebKit::RemoteLayerTreeTransaction::LayerCreationProperties,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2 + 48, a2);
  WebKit::ChangedLayers::~ChangedLayers((v2 + 24), v11);
  _Unwind_Resume(a1);
}

void WebKit::RemoteLayerTreeTransaction::~RemoteLayerTreeTransaction(WebKit::RemoteLayerTreeTransaction *this, void *a2)
{
  if (*(this + 912) == 1)
  {
    if (*(this + 896) == 1)
    {
      v11 = *(this + 99);
      if (v11)
      {
        *(this + 99) = 0;
        *(this + 200) = 0;
        WTF::fastFree(v11, a2);
      }

      v12 = *(this + 90);
      if (v12)
      {
        *(this + 90) = 0;
        *(this + 182) = 0;
        WTF::fastFree(v12, a2);
      }

      v13 = *(this + 88);
      if (v13)
      {
        *(this + 88) = 0;
        *(this + 178) = 0;
        WTF::fastFree(v13, a2);
      }
    }

    if (*(this + 624) == 1)
    {
      WebKit::EditorState::PostLayoutData::~PostLayoutData((this + 400), a2);
    }
  }

  if (*(this + 272) == 1)
  {
    v14 = this + 256;
    v15 = -64;
    do
    {
      v14 = (mpark::detail::move_constructor<mpark::detail::traits<WebCore::PredominantColorType,WebCore::Color>,(mpark::detail::Trait)1>::~move_constructor(v14, a2) - 16);
      v15 += 16;
    }

    while (v15);
  }

  v3 = *(this + 25);
  if ((v3 & 0x8000000000000) != 0)
  {
    v16 = (v3 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v3 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v16);
      WTF::fastFree(v16, a2);
    }
  }

  v4 = *(this + 24);
  if ((v4 & 0x8000000000000) != 0)
  {
    v17 = (v4 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v4 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v17);
      WTF::fastFree(v17, a2);
    }
  }

  v5 = *(this + 23);
  if ((v5 & 0x8000000000000) != 0)
  {
    v18 = (v5 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v5 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v18);
      WTF::fastFree(v18, a2);
    }
  }

  v6 = *(this + 14);
  if (v6)
  {
    *(this + 14) = 0;
    *(this + 30) = 0;
    WTF::fastFree(v6, a2);
  }

  v7 = *(this + 12);
  if (v7)
  {
    *(this + 12) = 0;
    *(this + 26) = 0;
    WTF::fastFree(v7, a2);
  }

  v8 = *(this + 10);
  if (v8)
  {
    *(this + 10) = 0;
    *(this + 22) = 0;
    WTF::fastFree(v8, a2);
  }

  v9 = *(this + 8);
  if (v9)
  {
    *(this + 8) = 0;
    *(this + 18) = 0;
    WTF::fastFree(v9, a2);
  }

  WTF::Vector<WebKit::RemoteLayerTreeTransaction::LayerCreationProperties,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 48, a2);
  WebKit::ChangedLayers::~ChangedLayers((this + 24), v10);
}

WTF *WebKit::RemoteLayerTreeTransaction::setCreatedLayers(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 60);
  if (v4)
  {
    v6 = 112 * v4;
    v7 = *(a1 + 48) + 64;
    do
    {
      v7 = mpark::detail::move_constructor<mpark::detail::traits<WebKit::RemoteLayerTreeTransaction::LayerCreationProperties::NoAdditionalData,WebKit::RemoteLayerTreeTransaction::LayerCreationProperties::CustomData,WTF::Ref<WebCore::Model,WTF::RawPtrTraits<WebCore::Model>,WTF::DefaultRefDerefTraits<WebCore::Model>>,WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,(mpark::detail::Trait)1>::~move_constructor(v7, a2) + 112;
      v6 -= 112;
    }

    while (v6);
  }

  return WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 48, a2);
}

BOOL WebKit::RemoteLayerTreeTransaction::hasAnyLayerChanges(WebKit::RemoteLayerTreeTransaction *this)
{
  v1 = *(this + 3);
  if (v1 && *(v1 - 12))
  {
    return 1;
  }

  v2 = *(this + 4);
  if (v2)
  {
    if (*(v2 - 12))
    {
      return 1;
    }
  }

  return *(this + 15) || *(this + 19) || *(this + 27) != 0;
}

void WebKit::ChangedLayers::~ChangedLayers(WebKit::ChangedLayers *this, void *a2)
{
  v3 = *(this + 1);
  if (v3)
  {
    WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::UniqueRef<WebKit::LayerProperties>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::UniqueRef<WebKit::LayerProperties>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::UniqueRef<WebKit::LayerProperties>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::UniqueRef<WebKit::LayerProperties>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  if (*this)
  {
    WTF::HashTable<WTF::Ref<WebKit::PlatformCALayerRemote,WTF::RawPtrTraits<WebKit::PlatformCALayerRemote>,WTF::DefaultRefDerefTraits<WebKit::PlatformCALayerRemote>>,WTF::Ref<WebKit::PlatformCALayerRemote,WTF::RawPtrTraits<WebKit::PlatformCALayerRemote>,WTF::DefaultRefDerefTraits<WebKit::PlatformCALayerRemote>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::PlatformCALayerRemote,WTF::RawPtrTraits<WebKit::PlatformCALayerRemote>,WTF::DefaultRefDerefTraits<WebKit::PlatformCALayerRemote>>>,WTF::HashTraits<WTF::Ref<WebKit::PlatformCALayerRemote,WTF::RawPtrTraits<WebKit::PlatformCALayerRemote>,WTF::DefaultRefDerefTraits<WebKit::PlatformCALayerRemote>>>,WTF::HashTraits<WTF::Ref<WebKit::PlatformCALayerRemote,WTF::RawPtrTraits<WebKit::PlatformCALayerRemote>,WTF::DefaultRefDerefTraits<WebKit::PlatformCALayerRemote>>>,WTF::FastMalloc>::deallocateTable(*this, a2);
  }
}

uint64_t WebKit::RemoteLayerTreeTransaction::LayerCreationProperties::operator=(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *a1 = v3;
  v6 = (a1 + 64);
  v7 = *(a1 + 104);
  v8 = *(a2 + 104);
  if (v7 == 255)
  {
    if (v8 == 255)
    {
      return a1;
    }
  }

  else if (v8 == 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WebKit::RemoteLayerTreeTransaction::LayerCreationProperties::NoAdditionalData,WebKit::RemoteLayerTreeTransaction::LayerCreationProperties::CustomData,WTF::Ref<WebCore::Model,WTF::RawPtrTraits<WebCore::Model>,WTF::DefaultRefDerefTraits<WebCore::Model>>,WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,(mpark::detail::Trait)1> &>(&v12, v6);
    *(a1 + 104) = -1;
    return a1;
  }

  v11 = a1 + 64;
  if (v8)
  {
    v10 = a2 + 4;
    if (v8 == 1)
    {
      _ZN5mpark3lib5cpp176invokeIZNS_6detail10assignmentINS3_6traitsIJN6WebKit26RemoteLayerTreeTransaction23LayerCreationProperties16NoAdditionalDataENS8_10CustomDataEN3WTF3RefIN7WebCore5ModelENSB_12RawPtrTraitsISE_EENSB_21DefaultRefDerefTraitsISE_EEEENSB_23ObjectIdentifierGenericINSD_33LayerHostingContextIdentifierTypeENSB_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEEE14generic_assignINS3_15move_assignmentISP_LNS3_5TraitE1EEEEEvOT_EUlRSV_OT0_E_JRNS3_3altILm1ESA_EES12_EEEDTclsr6detailE6invokeclsr3libE7forwardISV_Efp_Espclsr3libE7forwardIT0_Efp0_EEESW_DpOS14_(&v11, v6, v10);
    }

    else if (v8 == 2)
    {
      _ZN5mpark3lib5cpp176invokeIZNS_6detail10assignmentINS3_6traitsIJN6WebKit26RemoteLayerTreeTransaction23LayerCreationProperties16NoAdditionalDataENS8_10CustomDataEN3WTF3RefIN7WebCore5ModelENSB_12RawPtrTraitsISE_EENSB_21DefaultRefDerefTraitsISE_EEEENSB_23ObjectIdentifierGenericINSD_33LayerHostingContextIdentifierTypeENSB_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEEE14generic_assignINS3_15move_assignmentISP_LNS3_5TraitE1EEEEEvOT_EUlRSV_OT0_E_JRNS3_3altILm2ESJ_EES12_EEEDTclsr6detailE6invokeclsr3libE7forwardISV_Efp_Espclsr3libE7forwardIT0_Efp0_EEESW_DpOS14_(&v11, v6, v10);
    }

    else
    {
      _ZN5mpark3lib5cpp176invokeIZNS_6detail10assignmentINS3_6traitsIJN6WebKit26RemoteLayerTreeTransaction23LayerCreationProperties16NoAdditionalDataENS8_10CustomDataEN3WTF3RefIN7WebCore5ModelENSB_12RawPtrTraitsISE_EENSB_21DefaultRefDerefTraitsISE_EEEENSB_23ObjectIdentifierGenericINSD_33LayerHostingContextIdentifierTypeENSB_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEEE14generic_assignINS3_15move_assignmentISP_LNS3_5TraitE1EEEEEvOT_EUlRSV_OT0_E_JRNS3_3altILm3ESO_EES12_EEEDTclsr6detailE6invokeclsr3libE7forwardISV_Efp_Espclsr3libE7forwardIT0_Efp0_EEESW_DpOS14_(&v11, v6, v10);
    }
  }

  else if (v7)
  {
    mpark::detail::assignment<mpark::detail::traits<WebKit::RemoteLayerTreeTransaction::LayerCreationProperties::NoAdditionalData,WebKit::RemoteLayerTreeTransaction::LayerCreationProperties::CustomData,WTF::Ref<WebCore::Model,WTF::RawPtrTraits<WebCore::Model>,WTF::DefaultRefDerefTraits<WebCore::Model>>,WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>::emplace<0ul,WebKit::RemoteLayerTreeTransaction::LayerCreationProperties::NoAdditionalData>(a1 + 64, a2 + 4);
  }

  return a1;
}

void WebKit::RemoteLayerBackingStoreOrProperties::~RemoteLayerBackingStoreOrProperties(WebKit::RemoteLayerBackingStoreProperties **this)
{
  std::unique_ptr<WebKit::RemoteLayerBackingStoreProperties>::reset[abi:sn200100](this + 1, 0);
  v2 = *this;
  *this = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

uint64_t IPC::ArgumentCoder<WebKit::ChangedLayers,void>::encode(IPC::Encoder *a1, void **a2)
{
  if (*a2)
  {
    v4 = *(*a2 - 3);
  }

  else
  {
    v4 = 0;
  }

  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, v4);
  result = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(a2);
  v6 = result;
  v8 = v7;
  if (*a2)
  {
    v9 = &(*a2)[*(*a2 - 1)];
  }

  else
  {
    v9 = 0;
  }

  if (v9 != result)
  {
    do
    {
      v11 = *(*v6 + 24);
      IPC::ArgumentCoder<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode(a1, &v11);
      v10 = *v6;
      v6 += 8;
      result = IPC::ArgumentCoder<WebKit::LayerProperties,void>::encode(a1, v10 + 72);
      while (v6 != v8 && (*v6 + 1) <= 1)
      {
        v6 += 8;
      }
    }

    while (v6 != v9);
  }

  return result;
}

WTF::MachSendRight *IPC::ArgumentCoder<WebKit::RemoteLayerBackingStoreOrProperties,void>::encode(IPC::Encoder *a1, WebKit::RemoteLayerBackingStore **a2)
{
  if (*a2)
  {
    v4 = (*(**a2 + 72))(*a2);
    result = IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, v4);
    if (v4)
    {
      v6 = *a2;

      return WebKit::RemoteLayerBackingStore::encode(v6, a1);
    }
  }

  else
  {

    return IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, 0);
  }

  return result;
}

void *___ZL20CoreAnalyticsLibraryv_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/CoreAnalytics.framework/CoreAnalytics", 2);
  if (!result)
  {
    __break(0xC471u);
    JUMPOUT(0x19DA1B964);
  }

  return result;
}

uint64_t WebKit::RemoteLayerWithRemoteRenderingBackingStore::operator new(WebKit::RemoteLayerWithRemoteRenderingBackingStore *this, void *a2)
{
  if (this == 520 && WebKit::RemoteLayerWithRemoteRenderingBackingStore::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::RemoteLayerWithRemoteRenderingBackingStore::s_heapRef, a2);
  }

  else
  {
    return WebKit::RemoteLayerWithRemoteRenderingBackingStore::operatorNewSlow(this);
  }
}

uint64_t std::make_unique[abi:sn200100]<WebKit::RemoteLayerWithInProcessRenderingBackingStore,WebKit::PlatformCALayerRemote &,0>@<X0>(WebKit::PlatformCALayerRemote *a1@<X0>, void *a2@<X1>, WebKit::RemoteLayerBackingStore **a3@<X8>)
{
  if (WebKit::RemoteLayerWithInProcessRenderingBackingStore::s_heapRef)
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::RemoteLayerWithInProcessRenderingBackingStore::s_heapRef, a2);
  }

  else
  {
    NonCompact = WebKit::RemoteLayerWithInProcessRenderingBackingStore::operatorNewSlow(0x198);
  }

  v6 = NonCompact;
  result = WebKit::RemoteLayerBackingStore::RemoteLayerBackingStore(NonCompact, a1);
  *v6 = &unk_1F10F2B28;
  *(v6 + 400) = 0;
  *(v6 + 404) = 0;
  *(v6 + 46) = 0;
  *(v6 + 47) = 0;
  *(v6 + 45) = 0;
  *(v6 + 384) = 0;
  *a3 = v6;
  return result;
}

WebCore::ShareableBitmapHandle *mpark::detail::copy_constructor<mpark::detail::traits<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,(mpark::detail::Trait)1>::copy_constructor(WebCore::ShareableBitmapHandle *this, WebCore::ShareableBitmapHandle *a2)
{
  *this = 0;
  *(this + 80) = -1;
  if (*(a2 + 80) != 255)
  {
    if (*(a2 + 80))
    {
      WTF::MachSendRight::MachSendRight(this, a2);
    }

    else
    {
      WebCore::ShareableBitmapHandle::ShareableBitmapHandle(this, a2);
    }

    *(this + 80) = *(a2 + 80);
  }

  return this;
}

WebCore::ShareableBitmapHandle *WebCore::ShareableBitmapHandle::ShareableBitmapHandle(WebCore::ShareableBitmapHandle *this, const WebCore::ShareableBitmapHandle *a2)
{
  v4 = WTF::MachSendRight::MachSendRight(this, a2);
  *(v4 + 8) = *(a2 + 1);
  *(v4 + 16) = *(a2 + 2);
  std::__optional_copy_base<WebCore::DestinationColorSpace,false>::__optional_copy_base[abi:sn200100]((v4 + 24), a2 + 24);
  v5 = *(a2 + 44);
  *(this + 10) = *(a2 + 10);
  *(this + 44) = v5;
  *(this + 48) = 0;
  if (*(a2 + 48))
  {
    *(this + 48) = 1;
  }

  *(this + 13) = *(a2 + 13);
  *(this + 56) = 0;
  if (*(a2 + 56))
  {
    *(this + 56) = 1;
  }

  *(this + 15) = *(a2 + 15);
  *(this + 64) = 0;
  if (*(a2 + 64))
  {
    *(this + 64) = 1;
  }

  *(this + 68) = *(a2 + 68);
  return this;
}

_BYTE *std::__optional_copy_base<WebCore::DestinationColorSpace,false>::__optional_copy_base[abi:sn200100](_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[8] = 0;
  if (*(a2 + 8) == 1)
  {
    v3 = *a2;
    *a1 = *a2;
    if (v3)
    {
      CFRetain(v3);
    }

    a1[8] = 1;
  }

  return a1;
}

void sub_19DA1BBBC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 8) == 1)
  {
    v3 = *v1;
    *v1 = 0;
    if (v3)
    {
      CFRelease(v3);
    }
  }

  _Unwind_Resume(exception_object);
}

WTF::MachSendRight *mpark::variant<WebCore::ShareableBitmapHandle,WTF::MachSendRight>::operator=(WTF::MachSendRight *this, uint64_t a2)
{
  v3 = *(this + 80);
  v4 = *(a2 + 80);
  if (v3 != 255 || v4 != 255)
  {
    if (v4 == 255)
    {
      if (v3 != 255)
      {
        if (!v3 && *(this + 32) == 1)
        {
          v6 = *(this + 3);
          *(this + 3) = 0;
          if (v6)
          {
            CFRelease(v6);
          }
        }

        WTF::MachSendRight::~MachSendRight(this);
      }

      *(this + 80) = -1;
    }

    else
    {
      v7 = this;
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJN7WebCore21ShareableBitmapHandleEN3WTF13MachSendRightEEEEE14generic_assignINS0_15move_assignmentISA_LNS0_5TraitE1EEEEEvOT_EUlRSG_OT0_E_JRSB_SF_EEEDcmSH_DpOT0_(v4, &v7, this, a2);
    }
  }

  return this;
}

void WebKit::anonymous namespace::DelegatedContentsFenceFlusher::~DelegatedContentsFenceFlusher(WebKit::_anonymous_namespace_::DelegatedContentsFenceFlusher *this)
{
  v2 = *(this + 1);
  *(this + 1) = 0;
  if (v2)
  {
    if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2 + 2);
      (*(*v2 + 8))(v2);
    }
  }
}

void WebKit::anonymous namespace::DelegatedContentsFenceFlusher::~DelegatedContentsFenceFlusher(WebKit::_anonymous_namespace_::DelegatedContentsFenceFlusher *this, void *a2)
{
  v3 = *(this + 1);
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  bmalloc::api::tzoneFree(this, a2);
}

void WTF::VectorTypeOperations<WebKit::RemoteLayerTreeNode::CachedContentsBuffer>::destruct(WebCore::IOSurface **a1, WebCore::IOSurface **a2)
{
  if (a1 != a2)
  {
    v3 = a1 + 3;
    do
    {
      std::unique_ptr<WebCore::IOSurface>::reset[abi:sn200100](v3, 0);
      v4 = *(v3 - 1);
      *(v3 - 1) = 0;
      if (v4)
      {
      }

      v5 = v3 + 1;
      v3 += 4;
    }

    while (v5 != a2);
  }
}

WebCore::IOSurface *std::unique_ptr<WebCore::IOSurface>::reset[abi:sn200100](WebCore::IOSurface **a1, WebCore::IOSurface *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    WebCore::IOSurface::~IOSurface(result);

    return bmalloc::api::tzoneFree(v5, v6);
  }

  return result;
}

void WebKit::RemoteRenderingBackendProxy::LayerPrepareBuffersData::~LayerPrepareBuffersData(WebKit::RemoteRenderingBackendProxy::LayerPrepareBuffersData *this)
{
  WebCore::Region::~Region((this + 8));
  v2 = *this;
  *this = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

uint64_t WTF::Vector<WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 12);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 12) = v3;
  if (v3)
  {
    if (v3 >> 29)
    {
      __break(0xC471u);
      JUMPOUT(0x19DA1BFB4);
    }

    v6 = WTF::fastMalloc((8 * v3));
    *(a1 + 8) = v3;
    *a1 = v6;
    v7 = *(a2 + 12);
    if (v7)
    {
      v8 = *a2;
      v9 = 8 * v7;
      do
      {
        v10 = *v8++;
        atomic_fetch_add((v10 + 8), 1u);
        *v6++ = v10;
        v9 -= 8;
      }

      while (v9);
    }
  }

  return a1;
}

uint64_t WebKit::materialRecipeForAppleVisualEffect(PAL *a1, int a2)
{
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        if (a2 == 1)
        {
          return MEMORY[0x1EEE53AF8]();
        }

        else
        {
          return MEMORY[0x1EEE53B08]();
        }

      case 4:
        if (a2 == 1)
        {
          return PAL::get_CoreMaterial_MTCoreMaterialRecipePlatformContentThickDark(a1);
        }

        else
        {
          return PAL::get_CoreMaterial_MTCoreMaterialRecipePlatformContentThickLight(a1);
        }

      case 5:
        if (a2 == 1)
        {
          return MEMORY[0x1EEE53AE8]();
        }

        else
        {
          return MEMORY[0x1EEE53AF0]();
        }

      default:
        return 0;
    }
  }

  else
  {
    if (!a1)
    {
      return PAL::get_CoreMaterial_MTCoreMaterialRecipeNone(a1);
    }

    if (a1 != 1)
    {
      if (a1 == 2)
      {
        if (a2 == 1)
        {
          return MEMORY[0x1EEE53B20]();
        }

        else
        {
          return MEMORY[0x1EEE53B30]();
        }
      }

      return 0;
    }

    if (a2 == 1)
    {
      return MEMORY[0x1EEE53B48]();
    }

    else
    {
      return MEMORY[0x1EEE53B50]();
    }
  }
}

uint64_t WebKit::hostedMaterialEffectTypeForAppleVisualEffect(unsigned int a1)
{
  if (a1 > 0x11)
  {
    return 1;
  }

  else
  {
    return qword_19E7033E0[a1];
  }
}

uint64_t WTF::HashTable<WTF::Ref<WebKit::PlatformCALayerRemote,WTF::RawPtrTraits<WebKit::PlatformCALayerRemote>,WTF::DefaultRefDerefTraits<WebKit::PlatformCALayerRemote>>,WTF::Ref<WebKit::PlatformCALayerRemote,WTF::RawPtrTraits<WebKit::PlatformCALayerRemote>,WTF::DefaultRefDerefTraits<WebKit::PlatformCALayerRemote>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::PlatformCALayerRemote,WTF::RawPtrTraits<WebKit::PlatformCALayerRemote>,WTF::DefaultRefDerefTraits<WebKit::PlatformCALayerRemote>>>,WTF::HashTraits<WTF::Ref<WebKit::PlatformCALayerRemote,WTF::RawPtrTraits<WebKit::PlatformCALayerRemote>,WTF::DefaultRefDerefTraits<WebKit::PlatformCALayerRemote>>>,WTF::HashTraits<WTF::Ref<WebKit::PlatformCALayerRemote,WTF::RawPtrTraits<WebKit::PlatformCALayerRemote>,WTF::DefaultRefDerefTraits<WebKit::PlatformCALayerRemote>>>,WTF::FastMalloc>::deallocateTable(uint64_t *a1, void *a2)
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
        *v4 = 0;
        if (v5)
        {
          WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::PlatformCALayer,(WTF::DestructionThread)1>::deref((v5 + 8));
        }
      }

      ++v4;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 2), a2);
}

_BYTE *mpark::detail::move_constructor<mpark::detail::traits<WebKit::RemoteLayerTreeTransaction::LayerCreationProperties::NoAdditionalData,WebKit::RemoteLayerTreeTransaction::LayerCreationProperties::CustomData,WTF::Ref<WebCore::Model,WTF::RawPtrTraits<WebCore::Model>,WTF::DefaultRefDerefTraits<WebCore::Model>>,WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,(mpark::detail::Trait)1>::move_constructor(_BYTE *result, uint64_t *a2)
{
  *result = 0;
  result[40] = -1;
  v2 = *(a2 + 40);
  if (!*(a2 + 40))
  {
    goto LABEL_2;
  }

  v3 = a2;
  if (*(a2 + 40) <= 2u)
  {
    v6 = result;
    if (v2 == 1)
    {
      *result = *a2;
      std::__optional_move_base<WTF::MachSendRightAnnotated,false>::__optional_move_base[abi:sn200100]((result + 8), (a2 + 1));
      a2 = v3;
      v5 = *(v3 + 8);
      result = v6;
      v6[36] = *(v3 + 36);
      *(v6 + 8) = v5;
      goto LABEL_2;
    }

    v4 = *a2;
    *a2 = 0;
LABEL_9:
    *result = v4;
LABEL_2:
    result[40] = *(a2 + 40);
    return result;
  }

  if (v2 != 255)
  {
    v4 = *a2;
    goto LABEL_9;
  }

  return result;
}

uint64_t mpark::detail::move_constructor<mpark::detail::traits<WebKit::RemoteLayerTreeTransaction::LayerCreationProperties::NoAdditionalData,WebKit::RemoteLayerTreeTransaction::LayerCreationProperties::CustomData,WTF::Ref<WebCore::Model,WTF::RawPtrTraits<WebCore::Model>,WTF::DefaultRefDerefTraits<WebCore::Model>>,WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,(mpark::detail::Trait)1>::~move_constructor(uint64_t result, void *a2)
{
  v2 = *(result + 40);
  if (*(result + 40) && *(result + 40) != 255)
  {
    v5 = result;
    if (v2 == 1)
    {
      if (*(result + 24) == 1)
      {
        v4 = *(result + 16);
        *(result + 16) = 0;
        if (v4)
        {
          WTF::fastFree(v4, a2);
        }

        WTF::MachSendRight::~MachSendRight((v5 + 8));
        result = v5;
      }
    }

    else if (v2 == 2)
    {
      v3 = *result;
      *result = 0;
      if (v3)
      {
        WTF::RefCounted<WebCore::Model>::deref(v3);
        result = v5;
      }
    }
  }

  *(result + 40) = -1;
  return result;
}

void mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WebKit::RemoteLayerTreeTransaction::LayerCreationProperties::NoAdditionalData,WebKit::RemoteLayerTreeTransaction::LayerCreationProperties::CustomData,WTF::Ref<WebCore::Model,WTF::RawPtrTraits<WebCore::Model>,WTF::DefaultRefDerefTraits<WebCore::Model>>,WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,(mpark::detail::Trait)1> &>(uint64_t a1, WebCore::Model **a2)
{
  v2 = *(a2 + 40);
  if (v2 == 255)
  {
    v2 = -1;
  }

  if (v2)
  {
    v3 = v2 == 3;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    if (v2 == 2)
    {
      v4 = *a2;
      *a2 = 0;
      if (v4)
      {
        WTF::RefCounted<WebCore::Model>::deref(v4);
      }
    }

    else
    {
      mpark::lib::cpp17::invoke<mpark::detail::dtor,mpark::detail::alt<1ul,WebKit::RemoteLayerTreeTransaction::LayerCreationProperties::CustomData> &>(a2, a2);
    }
  }
}

void mpark::lib::cpp17::invoke<mpark::detail::dtor,mpark::detail::alt<1ul,WebKit::RemoteLayerTreeTransaction::LayerCreationProperties::CustomData> &>(uint64_t a1, void *a2)
{
  if (*(a1 + 24) == 1)
  {
    v4 = *(a1 + 16);
    v5 = a1;
    *(a1 + 16) = 0;
    if (v4)
    {
      WTF::fastFree(v4, a2);
    }

    WTF::MachSendRight::~MachSendRight((v5 + 8));
  }
}

uint64_t mpark::detail::assignment<mpark::detail::traits<WebKit::RemoteLayerTreeTransaction::LayerCreationProperties::NoAdditionalData,WebKit::RemoteLayerTreeTransaction::LayerCreationProperties::CustomData,WTF::Ref<WebCore::Model,WTF::RawPtrTraits<WebCore::Model>,WTF::DefaultRefDerefTraits<WebCore::Model>>,WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>::emplace<0ul,WebKit::RemoteLayerTreeTransaction::LayerCreationProperties::NoAdditionalData>(uint64_t result, void *a2)
{
  v2 = *(result + 40);
  if (*(result + 40) && *(result + 40) != 255)
  {
    v5 = result;
    if (v2 == 1)
    {
      if (*(result + 24) == 1)
      {
        v4 = *(result + 16);
        *(result + 16) = 0;
        if (v4)
        {
          WTF::fastFree(v4, a2);
        }

        WTF::MachSendRight::~MachSendRight((v5 + 8));
        result = v5;
      }
    }

    else if (v2 == 2)
    {
      v3 = *result;
      *result = 0;
      if (v3)
      {
        WTF::RefCounted<WebCore::Model>::deref(v3);
        result = v5;
      }
    }
  }

  *(result + 40) = 0;
  return result;
}

void _ZN5mpark3lib5cpp176invokeIZNS_6detail10assignmentINS3_6traitsIJN6WebKit26RemoteLayerTreeTransaction23LayerCreationProperties16NoAdditionalDataENS8_10CustomDataEN3WTF3RefIN7WebCore5ModelENSB_12RawPtrTraitsISE_EENSB_21DefaultRefDerefTraitsISE_EEEENSB_23ObjectIdentifierGenericINSD_33LayerHostingContextIdentifierTypeENSB_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEEE14generic_assignINS3_15move_assignmentISP_LNS3_5TraitE1EEEEEvOT_EUlRSV_OT0_E_JRNS3_3altILm1ESA_EES12_EEEDTclsr6detailE6invokeclsr3libE7forwardISV_Efp_Espclsr3libE7forwardIT0_Efp0_EEESW_DpOS14_(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *(*a1 + 40);
  if (v5 > 1)
  {
    if (v5 != 255 && v5 == 2)
    {
      v10 = *v4;
      *v4 = 0;
      if (v10)
      {
        WTF::RefCounted<WebCore::Model>::deref(v10);
      }
    }

    goto LABEL_6;
  }

  if (v5 != 1)
  {
LABEL_6:
    *(v4 + 40) = -1;
    *v4 = *a3;
    std::__optional_move_base<WTF::MachSendRightAnnotated,false>::__optional_move_base[abi:sn200100](v4 + 8, a3 + 8);
    v7 = *(a3 + 32);
    *(v4 + 36) = *(a3 + 36);
    *(v4 + 32) = v7;
    *(v4 + 40) = 1;
    return;
  }

  *a2 = *a3;
  std::__optional_storage_base<WTF::MachSendRightAnnotated,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WTF::MachSendRightAnnotated,false>>((a2 + 8), a3 + 8);
  v9 = *(a3 + 32);
  *(a2 + 36) = *(a3 + 36);
  *(a2 + 32) = v9;
}

void std::__optional_storage_base<WTF::MachSendRightAnnotated,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WTF::MachSendRightAnnotated,false>>(WTF::MachSendRight *this, uint64_t a2)
{
  if (*(this + 16) == *(a2 + 16))
  {
    if (*(this + 16))
    {
      WTF::MachSendRight::operator=();
      v5 = *(a2 + 8);
      *(a2 + 8) = 0;
      v6 = *(this + 1);
      *(this + 1) = v5;
      if (v6)
      {

        WTF::fastFree(v6, v4);
      }
    }
  }

  else if (*(this + 16))
  {
    v7 = *(this + 1);
    *(this + 1) = 0;
    if (v7)
    {
      WTF::fastFree(v7, a2);
    }

    WTF::MachSendRight::~MachSendRight(this);
    *(this + 16) = 0;
  }

  else
  {
    WTF::MachSendRight::MachSendRight();
    v8 = *(a2 + 8);
    *(a2 + 8) = 0;
    *(this + 1) = v8;
    *(this + 16) = 1;
  }
}

void _ZN5mpark3lib5cpp176invokeIZNS_6detail10assignmentINS3_6traitsIJN6WebKit26RemoteLayerTreeTransaction23LayerCreationProperties16NoAdditionalDataENS8_10CustomDataEN3WTF3RefIN7WebCore5ModelENSB_12RawPtrTraitsISE_EENSB_21DefaultRefDerefTraitsISE_EEEENSB_23ObjectIdentifierGenericINSD_33LayerHostingContextIdentifierTypeENSB_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEEE14generic_assignINS3_15move_assignmentISP_LNS3_5TraitE1EEEEEvOT_EUlRSV_OT0_E_JRNS3_3altILm2ESJ_EES12_EEEDTclsr6detailE6invokeclsr3libE7forwardISV_Efp_Espclsr3libE7forwardIT0_Efp0_EEESW_DpOS14_(uint64_t *a1, void *a2, void *a3)
{
  v3 = *a1;
  if (*(*a1 + 40) <= 1u)
  {
    if (*(*a1 + 40) && *(v3 + 24) == 1)
    {
      v8 = *a1;
      v9 = a3;
      v7 = *(v3 + 16);
      *(v3 + 16) = 0;
      if (v7)
      {
        WTF::fastFree(v7, a2);
      }

      WTF::MachSendRight::~MachSendRight((v8 + 8));
      v3 = v8;
      a3 = v9;
    }

    goto LABEL_8;
  }

  if (*(*a1 + 40) != 2)
  {
LABEL_8:
    v6 = *a3;
    *a3 = 0;
    *v3 = v6;
    *(v3 + 40) = 2;
    return;
  }

  v4 = *a3;
  *a3 = 0;
  v5 = *a2;
  *a2 = v4;
  if (v5)
  {

    WTF::RefCounted<WebCore::Model>::deref(v5);
  }
}

void _ZN5mpark3lib5cpp176invokeIZNS_6detail10assignmentINS3_6traitsIJN6WebKit26RemoteLayerTreeTransaction23LayerCreationProperties16NoAdditionalDataENS8_10CustomDataEN3WTF3RefIN7WebCore5ModelENSB_12RawPtrTraitsISE_EENSB_21DefaultRefDerefTraitsISE_EEEENSB_23ObjectIdentifierGenericINSD_33LayerHostingContextIdentifierTypeENSB_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEEE14generic_assignINS3_15move_assignmentISP_LNS3_5TraitE1EEEEEvOT_EUlRSV_OT0_E_JRNS3_3altILm3ESO_EES12_EEEDTclsr6detailE6invokeclsr3libE7forwardISV_Efp_Espclsr3libE7forwardIT0_Efp0_EEESW_DpOS14_(uint64_t *a1, void *a2, void *a3)
{
  v3 = *a1;
  v4 = *(*a1 + 40);
  if (v4 <= 2)
  {
    if (*(*a1 + 40))
    {
      v7 = *a1;
      v8 = a3;
      if (v4 == 1)
      {
        v3 = *a1;
        if (*(v7 + 24) != 1)
        {
          goto LABEL_5;
        }

        v5 = *(v7 + 16);
        *(v7 + 16) = 0;
        if (v5)
        {
          WTF::fastFree(v5, a2);
        }

        WTF::MachSendRight::~MachSendRight((v7 + 8));
        v3 = v7;
      }

      else
      {
        v3 = *a1;
        v6 = *v7;
        *v7 = 0;
        if (!v6)
        {
          goto LABEL_5;
        }

        WTF::RefCounted<WebCore::Model>::deref(v6);
        v3 = v7;
      }

      a3 = v8;
    }
  }

  else if (v4 == 3)
  {
    *a2 = *a3;
    return;
  }

LABEL_5:
  *(v3 + 40) = -1;
  *v3 = *a3;
  *(v3 + 40) = 3;
}

WTF::MachSendRight *std::__optional_copy_base<WTF::MachSendRightAnnotated,false>::__optional_copy_base[abi:sn200100](WTF::MachSendRight *this, uint64_t a2)
{
  *this = 0;
  *(this + 16) = 0;
  if (*(a2 + 16) == 1)
  {
    WTF::MachSendRight::MachSendRight(this, a2);
    v4 = *(a2 + 8);
    if (v4)
    {
      WTF::EmbeddedFixedVector<unsigned char,WTF::FastMalloc>::create<unsigned char const*>(v4 + 4, &v4[*v4 + 4], &v7);
      v5 = v7;
    }

    else
    {
      v5 = 0;
    }

    *(this + 1) = v5;
    *(this + 16) = 1;
  }

  return this;
}

void sub_19DA1C704(_Unwind_Exception *a1)
{
  WTF::MachSendRight::~MachSendRight(v1);
  if (*(v1 + 16) == 1)
  {
    v4 = *(v1 + 8);
    *(v1 + 8) = 0;
    if (v4)
    {
      WTF::fastFree(v4, v3);
    }

    WTF::MachSendRight::~MachSendRight(v1);
  }

  _Unwind_Resume(a1);
}

void *_ZN3WTF6Detail15CallableWrapperIZZN6WebKit22XPCServiceEventHandlerEPU24objcproto13OS_xpc_object8NSObjectEUb_E3__1vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10F27E0;
  v2 = a1[3];
  if (v2)
  {
  }

  v3 = a1[2];
  if (v3)
  {
  }

  return a1;
}

uint64_t WTF::Vector<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 12);
  *result = 0;
  *(result + 8) = 0;
  *(result + 12) = v2;
  if (v2)
  {
    v9 = result;
    if (v2 >> 28)
    {
      __break(0xC471u);
    }

    else
    {
      v3 = v2;
      v4 = WTF::fastMalloc((16 * v2));
      result = v9;
      *(v9 + 8) = v3;
      *v9 = v4;
      v5 = *(a2 + 12);
      if (v5)
      {
        v6 = *a2;
        v7 = 16 * v5;
        do
        {
          v8 = *v6++;
          *v4++ = v8;
          v7 -= 16;
        }

        while (v7);
      }
    }
  }

  return result;
}

uint64_t WTF::Vector<WebKit::RemoteLayerTreeNode::CachedContentsBuffer,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorTypeOperations<WebKit::RemoteLayerTreeNode::CachedContentsBuffer>::destruct(*a1, (*a1 + 32 * v3));
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

WTF **WTF::Vector<WebCore::FloatRect,5ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(WTF **result, void *a2)
{
  if (*(result + 2))
  {
    if (*(result + 3))
    {
      *(result + 3) = 0;
    }

    v3 = (result + 2);
    v2 = *result;
    if (result + 2 != *result)
    {
      if (!v2)
      {
        goto LABEL_8;
      }

      *result = 0;
      *(result + 2) = 0;
      v4 = result + 2;
      v5 = result;
      WTF::fastFree(v2, a2);
      v3 = v4;
      result = v5;
      v2 = *v5;
    }

    if (v2)
    {
      return result;
    }

LABEL_8:
    *result = v3;
    *(result + 2) = 5;
  }

  return result;
}

uint64_t *WTF::Vector<std::unique_ptr<WebKit::ThreadSafeImageBufferSetFlusher>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,std::unique_ptr<WebKit::ThreadSafeImageBufferSetFlusher>>(uint64_t a1, unint64_t a2)
{
  result = WTF::Vector<std::unique_ptr<WebKit::ThreadSafeImageBufferSetFlusher>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  v4 = *(a1 + 12);
  v5 = *a1;
  v6 = *result;
  *result = 0;
  *(v5 + 8 * v4) = v6;
  *(a1 + 12) = v4 + 1;
  return result;
}

unint64_t WTF::Vector<std::unique_ptr<WebKit::ThreadSafeImageBufferSetFlusher>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v4 = *a1;
  if (*a1 <= a3 && v4 + 8 * *(a1 + 12) > a3)
  {
    v9 = a3 - v4;
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

    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
    return *a1 + v9;
  }

  else
  {
    v5 = *(a1 + 8);
    if (v5 + (v5 >> 1) <= v5 + 1)
    {
      v6 = v5 + 1;
    }

    else
    {
      v6 = v5 + (v5 >> 1);
    }

    if (v6 <= a2)
    {
      v6 = a2;
    }

    if (v6 <= 0x10)
    {
      v7 = 16;
    }

    else
    {
      v7 = v6;
    }

    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v7);
  }

  return v3;
}

void WTF::VectorMover<false,WebKit::RemoteLayerTreeNode::CachedContentsBuffer>::moveOverlapping(unint64_t a1, uint64_t a2, _OWORD *a3)
{
  if (a1 <= a3)
  {
    if (a2 != a1)
    {
      v5 = 0;
      v6 = a3 + a2 - a1;
      do
      {
        v7 = &v6[v5];
        *(v7 - 2) = *(a2 + v5 - 32);
        v8 = *(a2 + v5 - 16);
        *(a2 + v5 - 16) = 0;
        *(a2 + v5 - 8) = 0;
        *(v7 - 1) = v8;
        std::unique_ptr<WebCore::IOSurface>::reset[abi:sn200100]((a2 + v5 - 8), 0);
        v9 = *(a2 + v5 - 16);
        *(a2 + v5 - 16) = 0;
        if (v9)
        {
        }

        v5 -= 32;
      }

      while (a2 + v5 != a1);
    }
  }

  else
  {

    WTF::VectorMover<false,WebKit::RemoteLayerTreeNode::CachedContentsBuffer>::move(a1, a2, a3);
  }
}

void WTF::VectorMover<false,WebKit::RemoteLayerTreeNode::CachedContentsBuffer>::move(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      *a3 = *v5;
      v6 = *(v5 + 16);
      *(v5 + 24) = 0;
      v7 = v5 + 24;
      *(v5 + 16) = 0;
      a3[1] = v6;
      std::unique_ptr<WebCore::IOSurface>::reset[abi:sn200100]((v5 + 24), 0);
      v8 = *(v5 + 16);
      *(v5 + 16) = 0;
      if (v8)
      {
      }

      a3 += 2;
      v5 += 32;
    }

    while (v7 + 8 != a2);
  }
}

unint64_t WTF::Vector<WebKit::RemoteLayerTreeNode::CachedContentsBuffer,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 32 * *(a1 + 12) <= a3)
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

    WTF::Vector<WebKit::RemoteLayerTreeNode::CachedContentsBuffer,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebKit::RemoteLayerTreeNode::CachedContentsBuffer,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

void WTF::Vector<WebKit::RemoteLayerTreeNode::CachedContentsBuffer,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    v2 = a2;
    if (a2 >> 27)
    {
      __break(0xC471u);
    }

    else
    {
      v4 = *a1;
      v5 = *a1 + 32 * *(a1 + 12);
      v6 = WTF::fastMalloc((32 * a2));
      *(a1 + 8) = v2;
      *a1 = v6;
      WTF::VectorMover<false,WebKit::RemoteLayerTreeNode::CachedContentsBuffer>::move(v4, v5, v6);
      if (v4)
      {
        if (*a1 == v4)
        {
          *a1 = 0;
          *(a1 + 8) = 0;
        }

        WTF::fastFree(v4, v7);
      }
    }
  }
}

uint64_t WTF::Detail::CallableWrapper<WebCore::Timer::Timer<WebKit::RemoteLayerBackingStoreCollection,WebKit::RemoteLayerBackingStoreCollection>(WebKit::RemoteLayerBackingStoreCollection &,void (WebKit::RemoteLayerBackingStoreCollection::*)(void))::{lambda(void)#1},void>::call(void *a1)
{
  v1 = a1[1];
  v2 = *(*(v1 + 2) + 8);
  if (v2)
  {
    ++*(v2 + 16);
    v3 = a1[2];
    v4 = a1[3];
    v5 = (v1 + (v4 >> 1));
    if (v4)
    {
      v3 = *(*v5 + v3);
    }

    v3(v5);

    return WebKit::RemoteLayerBackingStoreCollection::deref(v1);
  }

  else
  {
    result = 92;
    __break(0xC471u);
  }

  return result;
}

unsigned int *WTF::Vector<WebKit::RemoteRenderingBackendProxy::LayerPrepareBuffersData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(unsigned int *a1, void *a2)
{
  v3 = a1[3];
  if (v3)
  {
    v4 = 40 * v3;
    v5 = (*a1 + 8);
    do
    {
      WebCore::Region::~Region(v5);
      v6 = *(v5 - 1);
      *(v5 - 1) = 0;
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }

      v5 = (v5 + 40);
      v4 -= 40;
    }

    while (v4);
  }

  v7 = *a1;
  if (*a1)
  {
    *a1 = 0;
    a1[2] = 0;
    WTF::fastFree(v7, a2);
  }

  return a1;
}

uint64_t *_ZN3WTF9HashTableINS_3RefINS_18DefaultWeakPtrImplENS_12RawPtrTraitsIS2_EENS_21DefaultRefDerefTraitsIS2_EEEES7_NS_17IdentityExtractorENS_11DefaultHashIS7_EENS_10HashTraitsIS7_EESC_NS_10FastMallocEE8removeIfIZNS_11WeakHashSetIN6WebKit23RemoteLayerBackingStoreES2_LNS_32EnableWeakPtrThreadingAssertionsE1EE20removeNullReferencesEvEUlRT_E_EEbRKSL_(uint64_t *result, void *a2)
{
  v2 = *result;
  if (*result)
  {
    v3 = result;
    v4 = *(v2 - 4);
    if (v4)
    {
      v5 = 0;
      v6 = 8 * v4;
      v7 = v2 - 8;
      do
      {
        result = *(v7 + v6);
        if (result + 1 >= 2 && !result[1])
        {
          *(v7 + v6) = 0;
          if (atomic_fetch_add(result, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, result);
            result = WTF::fastFree(result, a2);
          }

          *(v7 + v6) = -1;
          ++v5;
        }

        v6 -= 8;
      }

      while (v6);
      v2 = *v3;
      if (v5)
      {
        v11 = *(v2 - 12) - v5;
        *(v2 - 16) += v5;
        *(v2 - 12) = v11;
      }

      else if (!v2)
      {
        return result;
      }
    }

    v8 = 6 * *(v2 - 12);
    v9 = *(v2 - 4);
    if (v8 < v9 && v9 >= 9)
    {

      return WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::shrinkToBestSize(v3);
    }
  }

  return result;
}

uint64_t WTF::Vector<WTF::WeakPtr<WebKit::RemoteLayerWithRemoteRenderingBackingStore,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = *a1;
    v5 = 8 * v3;
    do
    {
      v6 = *v4;
      *v4 = 0;
      if (v6 && atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v6);
        WTF::fastFree(v6, a2);
      }

      ++v4;
      v5 -= 8;
    }

    while (v5);
  }

  v7 = *a1;
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v7, a2);
  }

  return a1;
}

uint64_t WTF::Vector<WebKit::RemoteRenderingBackendProxy::LayerPrepareBuffersData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::RemoteRenderingBackendProxy::LayerPrepareBuffersData>(unsigned int *a1, unint64_t a2)
{
  v3 = WTF::Vector<WebKit::RemoteRenderingBackendProxy::LayerPrepareBuffersData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, a1[3] + 1, a2);
  v4 = *a1 + 40 * a1[3];
  v5 = *v3;
  *v3 = 0;
  *v4 = v5;
  result = WebCore::Region::Region();
  v7 = *(v3 + 32);
  *(v4 + 34) = *(v3 + 34);
  *(v4 + 32) = v7;
  ++a1[3];
  return result;
}

void sub_19DA1D00C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  *v1 = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  _Unwind_Resume(exception_object);
}

unint64_t WTF::Vector<WebKit::RemoteRenderingBackendProxy::LayerPrepareBuffersData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(unsigned int *a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 40 * a1[3] <= a3)
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

    WTF::Vector<WebKit::RemoteRenderingBackendProxy::LayerPrepareBuffersData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebKit::RemoteRenderingBackendProxy::LayerPrepareBuffersData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

unsigned int *WTF::Vector<WebKit::RemoteRenderingBackendProxy::LayerPrepareBuffersData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(unsigned int *result, unint64_t a2)
{
  if (result[2] < a2)
  {
    if (a2 >= 0x6666667)
    {
      __break(0xC471u);
    }

    else
    {
      v2 = result;
      v3 = *result;
      v4 = result[3];
      v5 = 40 * a2;
      result = WTF::fastMalloc((40 * a2));
      v2[2] = v5 / 0x28;
      *v2 = result;
      if (v4)
      {
        v7 = result;
        v8 = v3 + 40 * v4;
        v9 = v3 + 8;
        do
        {
          v11 = v9 - 8;
          v10 = *(v9 - 1);
          *(v9 - 1) = 0;
          *v7 = v10;
          WebCore::Region::Region();
          v12 = *(v9 + 12);
          *(v7 + 34) = v9[26];
          *(v7 + 16) = v12;
          WebCore::Region::~Region(v9);
          result = *(v9 - 1);
          *(v9 - 1) = 0;
          if (result)
          {
            result = (*(*result + 8))(result);
          }

          v7 += 10;
          v9 += 40;
        }

        while (v11 + 40 != v8);
      }

      if (v3)
      {
        if (*v2 == v3)
        {
          *v2 = 0;
          v2[2] = 0;
        }

        return WTF::fastFree(v3, v6);
      }
    }
  }

  return result;
}

void sub_19DA1D254(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  *v1 = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  _Unwind_Resume(exception_object);
}

unsigned int *WTF::Vector<WTF::WeakPtr<WebKit::RemoteLayerWithRemoteRenderingBackingStore,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::RemoteLayerWithRemoteRenderingBackingStore&>(unsigned int *result, uint64_t a2)
{
  v2 = result[2];
  v3 = result[3];
  if (v2 + (v2 >> 1) <= v2 + 1)
  {
    v4 = v2 + 1;
  }

  else
  {
    v4 = v2 + (v2 >> 1);
  }

  if (v4 <= v3 + 1)
  {
    v4 = v3 + 1;
  }

  if (v4 >> 29)
  {
    __break(0xC471u);
  }

  else
  {
    v6 = result;
    v7 = *result;
    if (v4 <= 0x10)
    {
      v8 = 16;
    }

    else
    {
      v8 = v4;
    }

    v10 = WTF::fastMalloc((8 * v8));
    v6[2] = v8;
    *v6 = v10;
    if (v3)
    {
      v11 = 8 * v3;
      v12 = v7;
      do
      {
        v13 = *v12;
        *v12 = 0;
        *v10 = v13;
        v14 = *v12;
        *v12 = 0;
        if (v14 && atomic_fetch_add(v14, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v14);
          WTF::fastFree(v14, v9);
        }

        v10 = (v10 + 8);
        ++v12;
        v11 -= 8;
      }

      while (v11);
      v10 = *v6;
    }

    if (v7)
    {
      if (v10 == v7)
      {
        *v6 = 0;
        v6[2] = 0;
      }

      WTF::fastFree(v7, v9);
      v10 = *v6;
    }

    v15 = v6[3];
    result = WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a2 + 8), a2);
    v16 = *(a2 + 8);
    atomic_fetch_add(v16, 1u);
    *(v10 + v15) = v16;
    ++v6[3];
  }

  return result;
}

uint64_t WTF::Vector<WTF::WeakPtr<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorDestructor<true,WTF::WeakPtr<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>::destruct(*a1, (*a1 + 8 * v3));
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

unsigned int *WTF::VectorDestructor<true,WTF::WeakPtr<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>::destruct(unsigned int *result, void *a2)
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
        if (atomic_fetch_add(result, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, result);
          result = WTF::fastFree(result, a2);
        }
      }

      ++v3;
    }

    while (v3 != a2);
  }

  return result;
}

unsigned int *WTF::Vector<WTF::WeakPtr<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::RemoteLayerBackingStore&>(unsigned int *a1, uint64_t a2)
{
  v5 = a1[2];
  v4 = a1[3];
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

  WTF::Vector<WTF::WeakPtr<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v8);
  v9 = a1[3];
  v10 = *a1;
  result = WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a2 + 8), a2);
  v12 = *(a2 + 8);
  atomic_fetch_add(v12, 1u);
  *(v10 + 8 * v9) = v12;
  ++a1[3];
  return result;
}

unsigned int *WTF::Vector<WTF::WeakPtr<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(unsigned int *result, unint64_t a2)
{
  if (result[2] < a2)
  {
    v2 = a2;
    if (a2 >> 29)
    {
      __break(0xC471u);
    }

    else
    {
      v3 = result;
      v4 = *result;
      v5 = result[3];
      result = WTF::fastMalloc((8 * a2));
      v3[2] = v2;
      *v3 = result;
      if (v5)
      {
        v7 = result;
        v8 = 8 * v5;
        v9 = v4;
        do
        {
          v10 = *v9;
          *v9 = 0;
          *v7 = v10;
          result = *v9;
          *v9 = 0;
          if (result && atomic_fetch_add(result, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, result);
            result = WTF::fastFree(result, v6);
          }

          v7 += 2;
          ++v9;
          v8 -= 8;
        }

        while (v8);
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

uint64_t *WTF::HashSet<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::remove(uint64_t *a1, unsigned int **a2)
{
  if (*a1)
  {
    v2 = (*a1 + 8 * *(*a1 - 4));
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
    return WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::remove(a1, a2);
  }

  return a1;
}

uint64_t WTF::Vector<std::pair<WTF::Ref<WebKit::RemoteImageBufferSetProxy,WTF::RawPtrTraits<WebKit::RemoteImageBufferSetProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBufferSetProxy>>,WTF::OptionSet<WebKit::BufferInSetType>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v6 = *a1;
    v7 = 16 * v3;
    do
    {
      v8 = *v6;
      *v6 = 0;
      if (v8)
      {
        (*(*v8 + 8))(v8);
      }

      v6 = (v6 + 16);
      v7 -= 16;
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

unint64_t WTF::Vector<std::pair<WTF::Ref<WebKit::RemoteImageBufferSetProxy,WTF::RawPtrTraits<WebKit::RemoteImageBufferSetProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBufferSetProxy>>,WTF::OptionSet<WebKit::BufferInSetType>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(unsigned int *a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 <= a3 && v5 + 16 * a1[3] > a3)
  {
    v10 = a3 - v5;
    v11 = a1[2];
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

    WTF::Vector<std::pair<WTF::Ref<WebKit::RemoteImageBufferSetProxy,WTF::RawPtrTraits<WebKit::RemoteImageBufferSetProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBufferSetProxy>>,WTF::OptionSet<WebKit::BufferInSetType>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v13);
    return *a1 + v10;
  }

  else
  {
    v6 = a1[2];
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

    WTF::Vector<std::pair<WTF::Ref<WebKit::RemoteImageBufferSetProxy,WTF::RawPtrTraits<WebKit::RemoteImageBufferSetProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBufferSetProxy>>,WTF::OptionSet<WebKit::BufferInSetType>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v8);
  }

  return v3;
}

unsigned int *WTF::Vector<std::pair<WTF::Ref<WebKit::RemoteImageBufferSetProxy,WTF::RawPtrTraits<WebKit::RemoteImageBufferSetProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBufferSetProxy>>,WTF::OptionSet<WebKit::BufferInSetType>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(unsigned int *result, unint64_t a2)
{
  if (result[2] < a2)
  {
    v2 = a2;
    if (a2 >> 28)
    {
      __break(0xC471u);
    }

    else
    {
      v3 = result;
      v4 = *result;
      v5 = result[3];
      result = WTF::fastMalloc((16 * a2));
      v3[2] = v2;
      *v3 = result;
      if (v5)
      {
        v7 = result;
        v8 = (v4 + 16 * v5);
        v9 = v4;
        do
        {
          v10 = *v9;
          *v9 = 0;
          *v7 = v10;
          *(v7 + 8) = *(v9 + 8);
          result = *v9;
          *v9 = 0;
          if (result)
          {
            result = (*(*result + 8))(result);
          }

          v7 += 4;
          v9 = (v9 + 16);
        }

        while (v9 != v8);
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

void *WTF::Detail::CallableWrapper<WebKit::RemoteLayerBackingStoreCollection::markBackingStoreVolatileAfterReachabilityChange(WebKit::RemoteLayerBackingStore &)::$_0,void,BOOL>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F10F28A8;
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteLayerBackingStoreCollection::markBackingStoreVolatileAfterReachabilityChange(WebKit::RemoteLayerBackingStore &)::$_0,void,BOOL>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10F28A8;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

double WTF::Detail::CallableWrapper<WebKit::RemoteLayerBackingStoreCollection::markBackingStoreVolatileAfterReachabilityChange(WebKit::RemoteLayerBackingStore &)::$_0,void,BOOL>::call(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      v3 = *(v2 + 8);
      if (v3)
      {
        return WebKit::RemoteLayerBackingStoreCollection::scheduleVolatilityTimer(v3);
      }
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::RemoteLayerBackingStoreCollection::tryMarkAllBackingStoreVolatile(WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void,BOOL>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F10F28D0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteLayerBackingStoreCollection::tryMarkAllBackingStoreVolatile(WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void,BOOL>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F10F28D0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t *WTF::Detail::CallableWrapper<WebKit::RemoteLayerBackingStoreCollection::tryMarkAllBackingStoreVolatile(WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void,BOOL>::call(_BYTE *a1, char a2)
{
  if (a1[8] == 1)
  {
    v2 = a1[9] & a2;
  }

  else
  {
    v2 = 0;
  }

  return WTF::CompletionHandler<void ()(BOOL)>::operator()((a1 + 16), v2);
}

void *WTF::Detail::CallableWrapper<WebKit::RemoteLayerBackingStoreCollection::markAllBackingStoreVolatileFromTimer(void)::$_0,void,BOOL>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F10F28F8;
  v3 = a1[2];
  a1[2] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteLayerBackingStoreCollection::markAllBackingStoreVolatileFromTimer(void)::$_0,void,BOOL>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F10F28F8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteLayerBackingStoreCollection::markAllBackingStoreVolatileFromTimer(void)::$_0,void,BOOL>::call(uint64_t result, int a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      if (*(result + 8) == 1)
      {
        v4 = *(result + 9) != 1 || a2 == 0;
        if (!v4 && (*(v3 + 120) & 0xFFFFFFFFFFFFLL) != 0)
        {
          return WebCore::TimerBase::stopSlowCase((v3 + 88));
        }
      }
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::RemoteLayerBackingStoreCollection::sendMarkBuffersVolatile(WTF::Vector<std::pair<WTF::Ref<WebKit::RemoteImageBufferSetProxy,WTF::RawPtrTraits<WebKit::RemoteImageBufferSetProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBufferSetProxy>>,WTF::OptionSet<WebKit::BufferInSetType>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(BOOL)> &&,BOOL)::$_0,void,BOOL>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F10F2920;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteLayerBackingStoreCollection::sendMarkBuffersVolatile(WTF::Vector<std::pair<WTF::Ref<WebKit::RemoteImageBufferSetProxy,WTF::RawPtrTraits<WebKit::RemoteImageBufferSetProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBufferSetProxy>>,WTF::OptionSet<WebKit::BufferInSetType>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(BOOL)> &&,BOOL)::$_0,void,BOOL>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10F2920;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t *WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::lookup<WTF::HashMapTranslatorAdapter<WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IdentityHashTranslator<WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>>,(WTF::ShouldValidateKey)1,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(uint64_t *a1, unint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  if (*a2 == 0 || v4 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DA1DE38);
  }

  v25 = v2;
  v26 = v3;
  v6 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v8 = *(v6 - 8);
  v23 = 0;
  v24 = 0;
  v9 = (v5 >> 5) & 0x7FFF800 ^ ((v5 - 1640531527) << 16) ^ (v5 - 1640531527);
  v10 = (v5 >> 37) & 0x7FFF800 ^ ((v9 + WORD2(v5) + (v9 >> 11)) << 16) ^ (v9 + WORD2(v5) + (v9 >> 11));
  v11 = (v4 >> 5) & 0x7FFF800 ^ ((v10 + v4 + (v10 >> 11)) << 16) ^ (v10 + v4 + (v10 >> 11));
  v12 = (v4 >> 37) & 0x7FFF800 ^ ((v11 + WORD2(v4) + (v11 >> 11)) << 16) ^ (v11 + WORD2(v4) + (v11 >> 11));
  v22 = v12 + (v12 >> 11);
  v13 = WTF::SuperFastHash::hash(&v22);
  v14 = a2[1];
  v15 = v13 & v8;
  result = (v6 + 24 * (v13 & v8));
  v17 = *result;
  v18 = result[1];
  if (*result != *a2 || v18 != v14)
  {
    v20 = 1;
    while (v17 | v18)
    {
      v15 = (v15 + v20) & v8;
      result = (v6 + 24 * v15);
      v17 = *result;
      v18 = result[1];
      ++v20;
      if (*result == *a2 && v18 == v14)
      {
        return result;
      }
    }

    return 0;
  }

  return result;
}

uint64_t *WTF::HashTable<WTF::Ref<WebKit::PlatformCALayerRemote,WTF::RawPtrTraits<WebKit::PlatformCALayerRemote>,WTF::DefaultRefDerefTraits<WebKit::PlatformCALayerRemote>>,WTF::Ref<WebKit::PlatformCALayerRemote,WTF::RawPtrTraits<WebKit::PlatformCALayerRemote>,WTF::DefaultRefDerefTraits<WebKit::PlatformCALayerRemote>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::PlatformCALayerRemote,WTF::RawPtrTraits<WebKit::PlatformCALayerRemote>,WTF::DefaultRefDerefTraits<WebKit::PlatformCALayerRemote>>>,WTF::HashTraits<WTF::Ref<WebKit::PlatformCALayerRemote,WTF::RawPtrTraits<WebKit::PlatformCALayerRemote>,WTF::DefaultRefDerefTraits<WebKit::PlatformCALayerRemote>>>,WTF::HashTraits<WTF::Ref<WebKit::PlatformCALayerRemote,WTF::RawPtrTraits<WebKit::PlatformCALayerRemote>,WTF::DefaultRefDerefTraits<WebKit::PlatformCALayerRemote>>>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  if (*a2 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DA1E028);
  }

  if (!*a2)
  {
    __break(0xC471u);
    JUMPOUT(0x19DA1E048);
  }

  v5 = result;
  v6 = *result;
  if (*result || (result = WTF::HashTable<WTF::Ref<WebKit::PlatformCALayerRemote,WTF::RawPtrTraits<WebKit::PlatformCALayerRemote>,WTF::DefaultRefDerefTraits<WebKit::PlatformCALayerRemote>>,WTF::Ref<WebKit::PlatformCALayerRemote,WTF::RawPtrTraits<WebKit::PlatformCALayerRemote>,WTF::DefaultRefDerefTraits<WebKit::PlatformCALayerRemote>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::PlatformCALayerRemote,WTF::RawPtrTraits<WebKit::PlatformCALayerRemote>,WTF::DefaultRefDerefTraits<WebKit::PlatformCALayerRemote>>>,WTF::HashTraits<WTF::Ref<WebKit::PlatformCALayerRemote,WTF::RawPtrTraits<WebKit::PlatformCALayerRemote>,WTF::DefaultRefDerefTraits<WebKit::PlatformCALayerRemote>>>,WTF::HashTraits<WTF::Ref<WebKit::PlatformCALayerRemote,WTF::RawPtrTraits<WebKit::PlatformCALayerRemote>,WTF::DefaultRefDerefTraits<WebKit::PlatformCALayerRemote>>>,WTF::FastMalloc>::expand(result, 0), (v6 = *v5) != 0))
  {
    v7 = 0;
    v8 = *(v6 - 8);
  }

  else
  {
    v8 = 0;
    v7 = 1;
  }

  v9 = 0;
  v10 = *a2;
  v11 = ~(*a2 << 32) + *a2;
  v12 = 9 * (((v11 ^ (v11 >> 22)) + ~((v11 ^ (v11 >> 22)) << 13)) ^ (((v11 ^ (v11 >> 22)) + ~((v11 ^ (v11 >> 22)) << 13)) >> 8));
  v13 = (v12 ^ (v12 >> 15)) + ~((v12 ^ (v12 >> 15)) << 27);
  v14 = (v13 >> 31) ^ v13;
  for (i = 1; ; ++i)
  {
    v16 = v14 & v8;
    v17 = (v6 + 8 * v16);
    v18 = *v17;
    if (!*v17)
    {
      if (v9)
      {
        *v9 = 0;
        --*(*v5 - 16);
        v10 = *a2;
        v17 = v9;
      }

      *a2 = 0;
      v19 = *v17;
      *v17 = v10;
      if (v19)
      {
        result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::PlatformCALayer,(WTF::DestructionThread)1>::deref((v19 + 8));
      }

      v20 = *v5;
      if (*v5)
      {
        v21 = *(v20 - 12) + 1;
      }

      else
      {
        v21 = 1;
      }

      *(v20 - 12) = v21;
      v22 = (*(v20 - 16) + v21);
      v23 = *(v20 - 4);
      if (v23 > 0x400)
      {
        if (v23 > 2 * v22)
        {
          goto LABEL_19;
        }
      }

      else if (3 * v23 > 4 * v22)
      {
LABEL_19:
        v24 = v20 + 8 * v23;
        v25 = 1;
        goto LABEL_20;
      }

      result = WTF::HashTable<WTF::Ref<WebKit::PlatformCALayerRemote,WTF::RawPtrTraits<WebKit::PlatformCALayerRemote>,WTF::DefaultRefDerefTraits<WebKit::PlatformCALayerRemote>>,WTF::Ref<WebKit::PlatformCALayerRemote,WTF::RawPtrTraits<WebKit::PlatformCALayerRemote>,WTF::DefaultRefDerefTraits<WebKit::PlatformCALayerRemote>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::PlatformCALayerRemote,WTF::RawPtrTraits<WebKit::PlatformCALayerRemote>,WTF::DefaultRefDerefTraits<WebKit::PlatformCALayerRemote>>>,WTF::HashTraits<WTF::Ref<WebKit::PlatformCALayerRemote,WTF::RawPtrTraits<WebKit::PlatformCALayerRemote>,WTF::DefaultRefDerefTraits<WebKit::PlatformCALayerRemote>>>,WTF::HashTraits<WTF::Ref<WebKit::PlatformCALayerRemote,WTF::RawPtrTraits<WebKit::PlatformCALayerRemote>,WTF::DefaultRefDerefTraits<WebKit::PlatformCALayerRemote>>>,WTF::FastMalloc>::expand(v5, v17);
      v17 = result;
      v20 = *v5;
      if (*v5)
      {
        v23 = *(v20 - 4);
      }

      else
      {
        v23 = 0;
      }

      goto LABEL_19;
    }

    if (v18 != -1)
    {
      break;
    }

    v9 = (v6 + 8 * v16);
LABEL_10:
    v14 = i + v16;
  }

  if (v18 != v10)
  {
    goto LABEL_10;
  }

  if (v7)
  {
    v26 = 0;
  }

  else
  {
    v26 = *(v6 - 4);
  }

  v25 = 0;
  v24 = v6 + 8 * v26;
LABEL_20:
  *a3 = v17;
  *(a3 + 8) = v24;
  *(a3 + 16) = v25;
  return result;
}

void *WTF::HashTable<WTF::Ref<WebKit::PlatformCALayerRemote,WTF::RawPtrTraits<WebKit::PlatformCALayerRemote>,WTF::DefaultRefDerefTraits<WebKit::PlatformCALayerRemote>>,WTF::Ref<WebKit::PlatformCALayerRemote,WTF::RawPtrTraits<WebKit::PlatformCALayerRemote>,WTF::DefaultRefDerefTraits<WebKit::PlatformCALayerRemote>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::PlatformCALayerRemote,WTF::RawPtrTraits<WebKit::PlatformCALayerRemote>,WTF::DefaultRefDerefTraits<WebKit::PlatformCALayerRemote>>>,WTF::HashTraits<WTF::Ref<WebKit::PlatformCALayerRemote,WTF::RawPtrTraits<WebKit::PlatformCALayerRemote>,WTF::DefaultRefDerefTraits<WebKit::PlatformCALayerRemote>>>,WTF::HashTraits<WTF::Ref<WebKit::PlatformCALayerRemote,WTF::RawPtrTraits<WebKit::PlatformCALayerRemote>,WTF::DefaultRefDerefTraits<WebKit::PlatformCALayerRemote>>>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  if (!*a1)
  {
    v5 = 0;
    v6 = 0;
    goto LABEL_3;
  }

  v5 = *(v4 - 4);
  v6 = *(v4 - 12);
  if (!v5)
  {
LABEL_3:
    v7 = 8;
    goto LABEL_4;
  }

  v7 = v5 << (6 * v6 >= (2 * v5));
LABEL_4:
  v8 = WTF::fastZeroedMalloc((8 * v7 + 16));
  *a1 = (v8 + 4);
  v8[2] = v7 - 1;
  v8[3] = v7;
  *v8 = 0;
  v8[1] = v6;
  if (v5)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = (v4 + 8 * v10);
      v13 = *v12;
      if (*v12)
      {
        if (v13 != -1)
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

          v16 = (~(v13 << 32) + v13) ^ ((~(v13 << 32) + v13) >> 22);
          v17 = 9 * ((v16 + ~(v16 << 13)) ^ ((v16 + ~(v16 << 13)) >> 8));
          v18 = (v17 ^ (v17 >> 15)) + ~((v17 ^ (v17 >> 15)) << 27);
          v19 = v15 & ((v18 >> 31) ^ v18);
          v20 = 1;
          do
          {
            v21 = v19;
            v22 = *(v14 + 8 * v19);
            v19 = (v19 + v20++) & v15;
          }

          while (v22);
          v23 = (v14 + 8 * v21);
          *v12 = 0;
          *v23 = v13;
          v24 = *v12;
          *v12 = 0;
          if (v24)
          {
            WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::PlatformCALayer,(WTF::DestructionThread)1>::deref((v24 + 8));
          }

          if (v12 == a2)
          {
            v11 = v23;
          }
        }
      }

      else
      {
        *v12 = 0;
      }

      ++v10;
    }

    while (v10 != v5);
  }

  else
  {
    v11 = 0;
    result = 0;
    if (!v4)
    {
      return result;
    }
  }

  WTF::fastFree((v4 - 16), v9);
  return v11;
}

atomic_ullong *WebKit::RemoteMediaSessionHelperProxy::didReceiveMessage(WebKit::RemoteMediaSessionHelperProxy *this, IPC::Connection *a2, IPC::Decoder *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  WebKit::RemoteMediaSessionHelperProxy::sharedPreferencesForWebProcess(this, v21);
  if (v21[24] != 1 || (v21[12] & 2) == 0)
  {
    v5 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
    {
      v16 = *(a3 + 25);
      if (v16 >= 0x107F)
      {
        v16 = 4223;
      }

      v17 = (&IPC::Detail::messageDescriptions)[3 * v16];
      *buf = 136315138;
      v23 = v17;
      _os_log_error_impl(&dword_19D52D000, v5, OS_LOG_TYPE_ERROR, "Message %s received by a disabled message receiver RemoteMediaSessionHelperProxy", buf, 0xCu);
    }

    v6 = *a3;
    v7 = *(a3 + 1);
    *a3 = 0;
    *(a3 + 1) = 0;
    result = *(a3 + 3);
    if (result)
    {
      if (v7)
      {
        return (*(*result + 16))(result, v6);
      }
    }

    return result;
  }

  v9 = WebKit::RemoteMediaSessionHelperProxy::ref(this);
  v10 = *(a3 + 25);
  if (v10 == 1486)
  {
    if (*(this + 32) == 1)
    {
      *(this + 32) = 0;
      v12 = WebCore::MediaSessionHelper::sharedHelper(v9);
      WebCore::MediaSessionHelper::stopMonitoringWirelessRoutes(v12);
    }

    return WebKit::RemoteMediaSessionHelperProxy::deref(this);
  }

  if (v10 == 1485)
  {
    if ((*(this + 32) & 1) == 0)
    {
      *(this + 32) = 1;
      v11 = WebCore::MediaSessionHelper::sharedHelper(v9);
      WebCore::MediaSessionHelper::startMonitoringWirelessRoutes(v11);
    }

    return WebKit::RemoteMediaSessionHelperProxy::deref(this);
  }

  v13 = qword_1ED6416C8;
  if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
  {
    if (v10 >= 0x107F)
    {
      v18 = 4223;
    }

    else
    {
      v18 = v10;
    }

    v19 = (&IPC::Detail::messageDescriptions)[3 * v18];
    v20 = *(a3 + 7);
    *buf = 136315394;
    v23 = v19;
    v24 = 2048;
    v25 = v20;
    _os_log_error_impl(&dword_19D52D000, v13, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", buf, 0x16u);
  }

  v14 = *a3;
  v15 = *(a3 + 1);
  *a3 = 0;
  *(a3 + 1) = 0;
  result = *(a3 + 3);
  if (result && v15)
  {
    result = (*(*result + 16))(result, v14);
  }

  if (this)
  {
    return WebKit::RemoteMediaSessionHelperProxy::deref(this);
  }

  return result;
}

atomic_uchar **WebKit::RemoteMediaSourceProxy::didReceiveMessage(atomic_uchar *this, IPC::Connection *a2, IPC::Decoder *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  WebKit::RemoteMediaSourceProxy::sharedPreferencesForWebProcess(this, v32);
  if (v32[24] == 1 && (v32[13] & 0x44) != 0)
  {
    v5 = (this + 8);
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
        goto LABEL_12;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v5);
LABEL_12:
    v12 = *(a3 + 25);
    if (v12 > 0x5DA)
    {
      if (*(a3 + 25) > 0x5DCu)
      {
        if (v12 == 1501)
        {
          WebKit::RemoteMediaSourceProxy::shutdown(this);
          return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaSourcePrivateClient,(WTF::DestructionThread)0>::deref(v5, v13);
        }

        if (v12 == 1502)
        {
          WebKit::RemoteMediaSourceProxy::unmarkEndOfStream(this);
          return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaSourcePrivateClient,(WTF::DestructionThread)0>::deref(v5, v13);
        }
      }

      else
      {
        if (v12 == 1499)
        {
          v23 = IPC::Decoder::decode<WTFLogLevel>(a3);
          if ((v23 & 0x100) != 0)
          {
            WebKit::RemoteMediaSourceProxy::setMediaPlayerReadyState(this, v23);
            return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaSourcePrivateClient,(WTF::DestructionThread)0>::deref(v5, v13);
          }

          goto LABEL_36;
        }

        if (v12 == 1500)
        {
          IPC::Decoder::decode<std::tuple<WTF::MediaTime>>(a3, buf);
          if (buf[16] == 1)
          {
            WebKit::RemoteMediaSourceProxy::setTimeFudgeFactor(this, buf);
          }

          return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaSourcePrivateClient,(WTF::DestructionThread)0>::deref(v5, v13);
        }
      }

LABEL_35:
      v20 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        if (v12 >= 0x107F)
        {
          v24 = 4223;
        }

        else
        {
          v24 = v12;
        }

        v25 = (&IPC::Detail::messageDescriptions)[3 * v24];
        v26 = *(a3 + 7);
        *buf = 136315394;
        *&buf[4] = v25;
        *&buf[12] = 2048;
        *&buf[14] = v26;
        _os_log_error_impl(&dword_19D52D000, v20, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", buf, 0x16u);
      }

LABEL_36:
      v13 = *a3;
      v21 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v22 = *(a3 + 3);
      if (v22)
      {
LABEL_63:
        if (v21)
        {
          (*(*v22 + 16))(v22, v13);
        }
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaSourcePrivateClient,(WTF::DestructionThread)0>::deref(v5, v13);
    }

    if (v12 == 1496)
    {
      IPC::ArgumentCoder<WebCore::PlatformTimeRanges,void>::decode(a3, buf);
      if (buf[16])
      {
        goto LABEL_32;
      }

      v13 = *a3;
      v27 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v28 = *(a3 + 3);
      if (!v28 || !v27)
      {
        *a3 = 0;
        *(a3 + 1) = 0;
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaSourcePrivateClient,(WTF::DestructionThread)0>::deref(v5, v13);
      }

      (*(*v28 + 16))(v28, v13);
      if (buf[16])
      {
LABEL_32:
        v33 = *buf;
        v34 = *&buf[8];
        v35 = 1;
        WebKit::RemoteMediaSourceProxy::bufferedChanged(this, &v33);
        if (v35)
        {
          v19 = v33;
          if (v33)
          {
            v33 = 0;
            LODWORD(v34) = 0;
            WTF::fastFree(v19, v13);
          }
        }

        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaSourcePrivateClient,(WTF::DestructionThread)0>::deref(v5, v13);
      }

      goto LABEL_62;
    }

    if (v12 == 1497)
    {
      IPC::Decoder::decode<std::tuple<WTF::MediaTime>>(a3, buf);
      if (buf[16] == 1)
      {
        WebKit::RemoteMediaSourceProxy::durationChanged(this, buf);
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaSourcePrivateClient,(WTF::DestructionThread)0>::deref(v5, v13);
    }

    if (v12 != 1498)
    {
      goto LABEL_35;
    }

    v14 = *(a3 + 1);
    v15 = *(a3 + 2);
    v13 = *a3;
    if (v14 <= &v15[-*a3])
    {
      *a3 = 0;
      *(a3 + 1) = 0;
      v29 = *(a3 + 3);
      if (v29)
      {
        if (v14)
        {
          (*(*v29 + 16))(v29);
          v14 = *(a3 + 1);
        }
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      *(a3 + 2) = v15 + 1;
      if (v15)
      {
        v16 = *v15;
        if (v16 < 3)
        {
          WebKit::RemoteMediaSourceProxy::markEndOfStream(this, v16);
          return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaSourcePrivateClient,(WTF::DestructionThread)0>::deref(v5, v13);
        }

        goto LABEL_57;
      }
    }

    *a3 = 0;
    *(a3 + 1) = 0;
    v30 = *(a3 + 3);
    if (v30)
    {
      if (v14)
      {
        (*(*v30 + 16))(v30);
        v13 = *a3;
        v14 = *(a3 + 1);
LABEL_57:
        *a3 = 0;
        *(a3 + 1) = 0;
        v31 = *(a3 + 3);
        if (!v31 || !v14)
        {
          return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaSourcePrivateClient,(WTF::DestructionThread)0>::deref(v5, v13);
        }

        (*(*v31 + 16))(v31, v13);
LABEL_62:
        v13 = *a3;
        v21 = *(a3 + 1);
        v22 = *(a3 + 3);
        *a3 = 0;
        *(a3 + 1) = 0;
        if (v22)
        {
          goto LABEL_63;
        }

        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaSourcePrivateClient,(WTF::DestructionThread)0>::deref(v5, v13);
      }
    }

    else
    {
      v14 = 0;
    }

    v13 = 0;
    goto LABEL_57;
  }

  v8 = qword_1ED6416C8;
  if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
  {
    v17 = *(a3 + 25);
    if (v17 >= 0x107F)
    {
      v17 = 4223;
    }

    v18 = (&IPC::Detail::messageDescriptions)[3 * v17];
    *buf = 136315138;
    *&buf[4] = v18;
    _os_log_error_impl(&dword_19D52D000, v8, OS_LOG_TYPE_ERROR, "Message %s received by a disabled message receiver RemoteMediaSourceProxy", buf, 0xCu);
  }

  v9 = *a3;
  v10 = *(a3 + 1);
  *a3 = 0;
  *(a3 + 1) = 0;
  result = *(a3 + 3);
  if (result && v10)
  {
    return (*(*result + 2))(result, v9);
  }

  return result;
}