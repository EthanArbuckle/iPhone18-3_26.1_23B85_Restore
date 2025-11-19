uint64_t IPC::ArgumentCoder<std::tuple<unsigned int>,void>::decode<IPC::Decoder>(uint64_t *a1)
{
  v1 = a1[1];
  v2 = ((a1[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v3 = *a1;
  v4 = v2 - *a1;
  v5 = v1 >= v4;
  v6 = v1 - v4;
  if (v5 && v6 > 3)
  {
    a1[2] = (v2 + 1);
    if (v2)
    {
      LODWORD(v9) = *v2;
      v8 = v9 & 0xFFFFFF00;
      v9 = v9;
      v10 = 0x100000000;
      return v10 | v9 | v8;
    }

    v14 = a1;
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
    v14 = a1;
    v12 = a1[3];
    if (!v12)
    {
      v1 = 0;
LABEL_11:
      v3 = 0;
      goto LABEL_12;
    }

    if (!v1)
    {
      goto LABEL_11;
    }

    (*(*v12 + 16))(v12);
    v3 = *v14;
    v1 = v14[1];
  }

LABEL_12:
  *v14 = 0;
  v14[1] = 0;
  v13 = v14[3];
  if (v13 && v1)
  {
    (*(*v13 + 16))(v13, v3);
  }

  v9 = 0;
  v10 = 0;
  v8 = 0;
  return v10 | v9 | v8;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC43handleMessageAsyncWithoutUsingIPCConnectionIN8Messages20PushClientConnection28SetProtocolVersionForTestingEN8WebPushD20PushClientConnectionES8_FvjONS_17CompletionHandlerIFvvEEEEEEvRNS2_7DecoderEONS_8FunctionIFvONS_9UniqueRefINS2_7EncoderEEEEEEPT0_MT1_T2_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10EBD38;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
    if (v2[4] == 1)
    {
      (*(*v2 + 24))(v2);
    }

    else
    {
      --v2[4];
    }
  }

  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC43handleMessageAsyncWithoutUsingIPCConnectionIN8Messages20PushClientConnection28SetProtocolVersionForTestingEN8WebPushD20PushClientConnectionES8_FvjONS_17CompletionHandlerIFvvEEEEEEvRNS2_7DecoderEONS_8FunctionIFvONS_9UniqueRefINS2_7EncoderEEEEEEPT0_MT1_T2_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EBD38;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    if (v3[4] == 1)
    {
      (*(*v3 + 24))(v3);
    }

    else
    {
      --v3[4];
    }
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC43handleMessageAsyncWithoutUsingIPCConnectionIN8Messages20PushClientConnection28SetProtocolVersionForTestingEN8WebPushD20PushClientConnectionES8_FvjONS_17CompletionHandlerIFvvEEEEEEvRNS2_7DecoderEONS_8FunctionIFvONS_9UniqueRefINS2_7EncoderEEEEEEPT0_MT1_T2_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = IPC::Encoder::operator new(0x238, a2);
  v4 = *(a1 + 8);
  *v3 = 3477;
  *(v3 + 1) = v4;
  *(v3 + 2) = 0;
  *(v3 + 3) = 0;
  *(v3 + 69) = 0;
  *(v3 + 70) = 0;
  *(v3 + 68) = 0;
  IPC::Encoder::encodeHeader(v3);
  v9 = v3;
  (*(**(a1 + 16) + 16))(*(a1 + 16), &v9);
  result = v9;
  v9 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

IPC::Decoder *IPC::Decoder::decode<std::tuple<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,BOOL,std::span<unsigned char const,18446744073709551615ul>>>(uint64_t a1, uint64_t *a2)
{
  IPC::Decoder::decode<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(a2, &v18);
  if (v19 != 1)
  {
LABEL_11:
    *a1 = 0;
    *(a1 + 40) = 0;
    v12 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    result = a2[3];
    if (result)
    {
      v13 = v12 == 0;
    }

    else
    {
      v13 = 1;
    }

    if (!v13)
    {
      v14 = *(*result + 16);

      return v14();
    }

    return result;
  }

  v4 = a2[1];
  v5 = a2[2];
  v6 = *a2;
  if (v4 <= &v5[-*a2])
  {
    *a2 = 0;
    a2[1] = 0;
    v15 = a2[3];
    if (v15)
    {
      if (v4)
      {
        (*(*v15 + 16))(v15);
        v4 = a2[1];
      }
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_20;
  }

  a2[2] = (v5 + 1);
  if (!v5)
  {
LABEL_20:
    *a2 = 0;
    a2[1] = 0;
    v16 = a2[3];
    if (v16)
    {
      if (v4)
      {
        (*(*v16 + 16))(v16);
        v6 = *a2;
        v4 = a2[1];
        goto LABEL_23;
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = 0;
LABEL_23:
    *a2 = 0;
    a2[1] = 0;
    v17 = a2[3];
    if (v17 && v4)
    {
      (*(*v17 + 16))(v17, v6);
    }

    goto LABEL_11;
  }

  v7 = *v5;
  if (v7 >= 2)
  {
    goto LABEL_23;
  }

  result = IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::decode<IPC::Decoder>(a2, &v20);
  if ((v21 & 1) == 0)
  {
    goto LABEL_10;
  }

  while ((v19 & 1) == 0)
  {
    __break(1u);
LABEL_10:
    v9 = *a2;
    v10 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    v11 = a2[3];
    if (v11)
    {
      if (v10)
      {
        result = (*(*v11 + 16))(v11, v9);
        if (v21)
        {
          continue;
        }
      }
    }

    goto LABEL_11;
  }

  *a1 = v18;
  *(a1 + 16) = v7;
  *(a1 + 24) = v20;
  *(a1 + 40) = 1;
  return result;
}

uint64_t IPC::Decoder::decode<std::tuple<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>>(uint64_t a1, uint64_t *a2)
{
  result = IPC::Decoder::decode<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(a2, &v9);
  v5 = v10;
  if (v10 == 1)
  {
    *a1 = v9;
    *(a1 + 16) = v5;
  }

  else
  {
    *a1 = 0;
    *(a1 + 16) = 0;
    v6 = *a2;
    v7 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    result = a2[3];
    if (result)
    {
      v8 = v7 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      return (*(*result + 16))(result, v6);
    }
  }

  return result;
}

uint64_t IPC::Decoder::decode<std::tuple<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebCore::RTCDataChannelState>>(uint64_t a1, uint64_t *a2)
{
  IPC::Decoder::decode<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(a2, &v8);
  if (v9 == 1 && (result = IPC::Decoder::decode<WebKit::WebExtensionContentWorldType>(a2), (result & 0x100) != 0))
  {
    if (v9)
    {
      *a1 = v8;
      *(a1 + 16) = result;
      *(a1 + 24) = 1;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 24) = 0;
    v5 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    result = a2[3];
    if (result)
    {
      v6 = v5 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (!v6)
    {
      v7 = *(*result + 16);

      return v7();
    }
  }

  return result;
}

IPC::Decoder *IPC::Decoder::decode<std::tuple<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebCore::RTCErrorDetailType,WTF::String>>(uint64_t a1, uint64_t *a2)
{
  IPC::Decoder::decode<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(a2, &v18);
  if (v19 != 1)
  {
LABEL_19:
    *a1 = 0;
    *(a1 + 32) = 0;
    v15 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    result = a2[3];
    if (result)
    {
      v16 = v15 == 0;
    }

    else
    {
      v16 = 1;
    }

    if (!v16)
    {
      v17 = *(*result + 16);

      return v17();
    }

    return result;
  }

  v4 = a2[1];
  v5 = a2[2];
  v6 = *a2;
  if (v4 <= &v5[-*a2])
  {
    *a2 = 0;
    a2[1] = 0;
    v12 = a2[3];
    if (v12)
    {
      if (v4)
      {
        (*(*v12 + 16))(v12);
        v4 = a2[1];
      }
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_15;
  }

  a2[2] = (v5 + 1);
  if (!v5)
  {
LABEL_15:
    *a2 = 0;
    a2[1] = 0;
    v13 = a2[3];
    if (v13)
    {
      if (v4)
      {
        (*(*v13 + 16))(v13);
        v6 = *a2;
        v4 = a2[1];
        goto LABEL_18;
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = 0;
LABEL_18:
    *a2 = 0;
    a2[1] = 0;
    v14 = a2[3];
    if (v14 && v4)
    {
      (*(*v14 + 16))(v14, v6);
    }

    goto LABEL_19;
  }

  v7 = *v5;
  if (v7 >= 5)
  {
    goto LABEL_18;
  }

  result = IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a2, &v20);
  if ((v21 & 1) == 0)
  {
    goto LABEL_9;
  }

  while ((v19 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    v9 = *a2;
    v10 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    v11 = a2[3];
    if (v11)
    {
      if (v10)
      {
        result = (*(*v11 + 16))(v11, v9);
        if (v21)
        {
          continue;
        }
      }
    }

    goto LABEL_19;
  }

  *a1 = v18;
  *(a1 + 16) = v7;
  *(a1 + 24) = v20;
  *(a1 + 32) = 1;
  return result;
}

uint64_t IPC::Decoder::decode<std::tuple<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,unsigned long long>>(uint64_t a1, uint64_t *a2)
{
  result = IPC::Decoder::decode<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(a2, &v17);
  if (v18 == 1)
  {
    v5 = a2[1];
    v6 = ((a2[2] + 7) & 0xFFFFFFFFFFFFFFF8);
    v7 = v6 - *a2;
    v8 = v5 >= v7;
    v9 = v5 - v7;
    if (v8 && v9 > 7)
    {
      a2[2] = (v6 + 1);
      if (v6)
      {
        v11 = *v6;
        *a1 = v17;
        *(a1 + 16) = v11;
        *(a1 + 24) = 1;
        return result;
      }
    }

    else
    {
      *a2 = 0;
      a2[1] = 0;
      v12 = a2[3];
      if (v12)
      {
        if (v5)
        {
          (*(*v12 + 16))(v12);
          v5 = a2[1];
        }
      }

      else
      {
        v5 = 0;
      }
    }

    *a2 = 0;
    a2[1] = 0;
    v13 = a2[3];
    if (v13 && v5)
    {
      (*(*v13 + 16))(v13);
    }
  }

  *a1 = 0;
  *(a1 + 24) = 0;
  v14 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  result = a2[3];
  if (result)
  {
    v15 = v14 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (!v15)
  {
    v16 = *(*result + 16);

    return v16();
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages13RemoteAdapter13RequestDeviceEN6WebKit13RemoteAdapterES8_FvRKNS7_6WebGPU16DeviceDescriptorENS_23ObjectIdentifierGenericINS7_20WebGPUIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEESH_ONS_17CompletionHandlerIFvONS9_17SupportedFeaturesEONS9_15SupportedLimitsEEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJSK_SM_EED1Ev(void *a1)
{
  *a1 = &unk_1F10EBD60;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages13RemoteAdapter13RequestDeviceEN6WebKit13RemoteAdapterES8_FvRKNS7_6WebGPU16DeviceDescriptorENS_23ObjectIdentifierGenericINS7_20WebGPUIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEESH_ONS_17CompletionHandlerIFvONS9_17SupportedFeaturesEONS9_15SupportedLimitsEEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJSK_SM_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EBD60;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages13RemoteAdapter13RequestDeviceEN6WebKit13RemoteAdapterES8_FvRKNS7_6WebGPU16DeviceDescriptorENS_23ObjectIdentifierGenericINS7_20WebGPUIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEESH_ONS_17CompletionHandlerIFvONS9_17SupportedFeaturesEONS9_15SupportedLimitsEEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJSK_SM_EE4callESK_SM_(uint64_t a1, void *a2, uint64_t a3)
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
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::StreamConnectionEncoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(v18, a2);
  result = IPC::ArgumentCoder<WebKit::WebGPU::SupportedLimits,void>::encode(v18, a3);
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
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v14, a2);
  IPC::ArgumentCoder<WebKit::WebGPU::SupportedLimits,void>::encode(v14, a3);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages54RemoteAudioMediaStreamTrackRendererInternalUnitManager10CreateUnitENS2_10ConnectionEN6WebKit54RemoteAudioMediaStreamTrackRendererInternalUnitManagerES9_FvNS_23ObjectIdentifierGenericINS8_55AudioMediaStreamTrackRendererInternalUnitIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEERKNS_6StringEONS_17CompletionHandlerIFvNSt3__18optionalIN7WebCore24CAAudioStreamDescriptionEEEyEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_yEED1Ev(void *a1)
{
  *a1 = &unk_1F10EBD88;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages54RemoteAudioMediaStreamTrackRendererInternalUnitManager10CreateUnitENS2_10ConnectionEN6WebKit54RemoteAudioMediaStreamTrackRendererInternalUnitManagerES9_FvNS_23ObjectIdentifierGenericINS8_55AudioMediaStreamTrackRendererInternalUnitIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEERKNS_6StringEONS_17CompletionHandlerIFvNSt3__18optionalIN7WebCore24CAAudioStreamDescriptionEEEyEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_yEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EBD88;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages54RemoteAudioMediaStreamTrackRendererInternalUnitManager10CreateUnitENS2_10ConnectionEN6WebKit54RemoteAudioMediaStreamTrackRendererInternalUnitManagerES9_FvNS_23ObjectIdentifierGenericINS8_55AudioMediaStreamTrackRendererInternalUnitIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEERKNS_6StringEONS_17CompletionHandlerIFvNSt3__18optionalIN7WebCore24CAAudioStreamDescriptionEEEyEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_yEE4callESN_y(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = IPC::Encoder::operator new(0x238, a2);
  *v7 = 3487;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = v6;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  IPC::Encoder::encodeHeader(v7);
  v14 = v7;
  if (a2[80])
  {
    v15 = 1;
    IPC::Encoder::operator<<<BOOL>(v7, &v15);
    if ((a2[80] & 1) == 0)
    {
      v13 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(v13);
    }

    v8 = WebCore::CAAudioStreamDescription::streamDescription(a2);
    IPC::ArgumentCoder<AudioStreamBasicDescription,void>::encode(v7, v8);
  }

  else
  {
    v16 = 0;
    IPC::Encoder::operator<<<BOOL>(v7, &v16);
  }

  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v7, a3);
  IPC::Connection::sendMessageImpl(v5, &v14, 0, 0);
  result = v14;
  v14 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v9);
    return bmalloc::api::tzoneFree(v11, v12);
  }

  return result;
}

unint64_t IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(uint64_t *a1)
{
  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if ((v3 & 1) == 0)
  {
    v5 = *a1;
    v4 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v6 = a1[3];
    if (v6 && v4 != 0)
    {
      v9 = result;
      v8 = v3;
      (*(*v6 + 16))(v6, v5);
      result = v9;
      v3 = v8;
    }
  }

  if ((v3 & 1) == 0)
  {
    return 0;
  }

  return result;
}

uint64_t ModelServiceInitializer()
{
  v0 = WTF::fastMalloc(0x10);
  *v0 = &unk_1F10EBE90;
  v3 = v0;
  WebKit::disableJSC(&v3);
  result = v3;
  if (v3)
  {
    v2 = *(*v3 + 8);

    return v2();
  }

  return result;
}

void sub_19D8F320C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::RemoteBarcodeDetector::didReceiveStreamMessage(atomic_uint *this, atomic_uint *a2, IPC::Decoder *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  WebKit::RemoteBarcodeDetector::sharedPreferencesForWebProcess(this, v22);
  if (v22[24] == 1 && (v22[15] & 0x10) != 0)
  {
    atomic_fetch_add(this + 2, 1u);
    v10 = *(a3 + 25);
    if (v10 == 954)
    {
      result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(a3);
      if (v11)
      {
        v13 = result;
        result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
        if (v11)
        {
          v14 = result;
          atomic_fetch_add(a2 + 2, 1u);
          v15 = WTF::fastMalloc(0x18);
          *v15 = &unk_1F10EBEB8;
          v15[1] = v14;
          v15[2] = a2;
          *buf = v15;
          WebKit::RemoteBarcodeDetector::detect(this, v13, buf);
          result = *buf;
          *buf = 0;
          if (result)
          {
            result = (*(*result + 8))(result);
          }
        }
      }
    }

    else
    {
      v16 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        if (v10 >= 0x107F)
        {
          v19 = 4223;
        }

        else
        {
          v19 = v10;
        }

        v20 = (&IPC::Detail::messageDescriptions)[3 * v19];
        v21 = *(a3 + 7);
        *buf = 136315394;
        *&buf[4] = v20;
        v24 = 2048;
        v25 = v21;
        _os_log_error_impl(&dword_19D52D000, v16, OS_LOG_TYPE_ERROR, "Unhandled stream message %s to %llu", buf, 0x16u);
      }

      v11 = *a3;
      v12 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      result = *(a3 + 3);
      if (result && v12)
      {
        result = (*(*result + 16))(result, v11);
      }
    }

    if (this && atomic_fetch_add(this + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, this + 2);
      return (*(*this + 8))(this, v11, v12);
    }
  }

  else
  {
    v6 = qword_1ED6416C8;
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
      _os_log_error_impl(&dword_19D52D000, v6, OS_LOG_TYPE_ERROR, "Message %s received by a disabled message receiver RemoteBarcodeDetector", buf, 0xCu);
    }

    v7 = *a3;
    v8 = *(a3 + 1);
    *a3 = 0;
    *(a3 + 1) = 0;
    result = *(a3 + 3);
    if (result)
    {
      if (v8)
      {
        return (*(*result + 16))(result, v7);
      }
    }
  }

  return result;
}

uint64_t WebKit::RemoteBindGroupLayout::didReceiveStreamMessage(WebKit::RemoteBindGroupLayout *this, IPC::StreamServerConnection *a2, IPC::Decoder *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = *(*(this + 5) + 8);
  if (v3)
  {
    if ((*(v3 + 56) & 0x4000) != 0)
    {
      atomic_fetch_add(this + 2, 1u);
      v10 = *(a3 + 25);
      if (v10 == 956)
      {
        IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a3, v19);
        if (v19[8] & 1) != 0 || (v11 = *a3, v12 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (result = *(a3 + 3)) != 0) && v12 && (result = (*(*result + 16))(result, v11), (v19[8]))
        {
          result = WebKit::RemoteBindGroupLayout::setLabel(this, v19);
          if (v19[8])
          {
            result = *v19;
            *v19 = 0;
            if (result)
            {
              if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                result = WTF::StringImpl::destroy(result, v11);
              }
            }
          }
        }
      }

      else if (v10 == 955)
      {
        result = WebKit::RemoteBindGroup::destruct(this);
      }

      else
      {
        v13 = qword_1ED6416C8;
        if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          if (v10 >= 0x107F)
          {
            v16 = 4223;
          }

          else
          {
            v16 = v10;
          }

          v17 = (&IPC::Detail::messageDescriptions)[3 * v16];
          v18 = *(a3 + 7);
          *v19 = 136315394;
          *&v19[4] = v17;
          v20 = 2048;
          v21 = v18;
          _os_log_error_impl(&dword_19D52D000, v13, OS_LOG_TYPE_ERROR, "Unhandled stream message %s to %llu", v19, 0x16u);
        }

        v11 = *a3;
        v12 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        result = *(a3 + 3);
        if (result && v12)
        {
          result = (*(*result + 16))(result, v11);
        }
      }

      if (atomic_fetch_add(this + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, this + 2);
        return (*(*this + 8))(this, v11, v12);
      }
    }

    else
    {
      v5 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        v14 = *(a3 + 25);
        if (v14 >= 0x107F)
        {
          v14 = 4223;
        }

        v15 = (&IPC::Detail::messageDescriptions)[3 * v14];
        *v19 = 136315138;
        *&v19[4] = v15;
        _os_log_error_impl(&dword_19D52D000, v5, OS_LOG_TYPE_ERROR, "Message %s received by a disabled message receiver RemoteBindGroupLayout", v19, 0xCu);
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
    }
  }

  else
  {
    result = 92;
    __break(0xC471u);
  }

  return result;
}

WTF::StringImpl *WebKit::RemoteBindGroup::didReceiveStreamMessage(WebKit::RemoteBindGroup *this, atomic_uint *a2, IPC::Decoder *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = *(*(this + 5) + 8);
  if (!v3)
  {
    goto LABEL_38;
  }

  if ((*(v3 + 56) & 0x4000) == 0)
  {
    v5 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
    {
      v18 = *(a3 + 25);
      if (v18 >= 0x107F)
      {
        v18 = 4223;
      }

      v19 = (&IPC::Detail::messageDescriptions)[3 * v18];
      *v23 = 136315138;
      *&v23[4] = v19;
      _os_log_error_impl(&dword_19D52D000, v5, OS_LOG_TYPE_ERROR, "Message %s received by a disabled message receiver RemoteBindGroup", v23, 0xCu);
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

  atomic_fetch_add(this + 2, 1u);
  v10 = *(a3 + 25);
  if (v10 != 4018)
  {
    if (v10 == 958)
    {
      IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a3, v23);
      if (v23[8] & 1) != 0 || (v11 = *a3, v12 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (result = *(a3 + 3)) != 0) && v12 && (result = (*(*result + 16))(result, v11), (v23[8]))
      {
        result = WebKit::RemoteBindGroup::setLabel(this, v23);
        if (v23[8])
        {
          result = *v23;
          *v23 = 0;
          if (result)
          {
            if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              result = WTF::StringImpl::destroy(result, v11);
            }
          }
        }
      }
    }

    else if (v10 == 957)
    {
      result = WebKit::RemoteBindGroup::destruct(this);
    }

    else
    {
      v17 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        if (v10 >= 0x107F)
        {
          v20 = 4223;
        }

        else
        {
          v20 = v10;
        }

        v21 = (&IPC::Detail::messageDescriptions)[3 * v20];
        v22 = *(a3 + 7);
        *v23 = 136315394;
        *&v23[4] = v21;
        v24 = 2048;
        v25 = v22;
        _os_log_error_impl(&dword_19D52D000, v17, OS_LOG_TYPE_ERROR, "Unhandled stream message %s to %llu", v23, 0x16u);
      }

      v11 = *a3;
      v12 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      result = *(a3 + 3);
      if (result && v12)
      {
        result = (*(*result + 16))(result, v11);
      }
    }

    goto LABEL_22;
  }

  result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
  if (v11)
  {
    v14 = *(a3 + 8);
    if (v14)
    {
      v15 = result;
      atomic_fetch_add(a2 + 2, 1u);
      v16 = WTF::fastMalloc(0x18);
      *v16 = &unk_1F10EBEE0;
      v16[1] = v14;
      v16[2] = a2;
      *v23 = v16;
      WebKit::RemoteBindGroup::updateExternalTextures(this, v15, v23);
      result = *v23;
      *v23 = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }

      goto LABEL_22;
    }

LABEL_38:
    __break(0xC471u);
    JUMPOUT(0x19D8F3BD8);
  }

LABEL_22:
  if (atomic_fetch_add(this + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, this + 2);
    return (*(*this + 8))(this, v11, v12);
  }

  return result;
}

void WebKit::RemoteBuffer::didReceiveStreamMessage(WebKit::RemoteBuffer *this, atomic_uint *a2, const char **a3, uint64_t a4)
{
  v89 = *MEMORY[0x1E69E9840];
  v6 = *(*(this + 5) + 8);
  if (!v6)
  {
    v43 = "/AppleInternal/Library/BuildRoots/4~CAtBugAdX2ypK3woS13W0YBGfMX4uuy1xhucdh4/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/wtf/WeakRef.h";
    v24 = "T *WTF::WeakRef<WebKit::RemoteGPU>::ptr() const [T = WebKit::RemoteGPU, WeakPtrImpl = WTF::DefaultWeakPtrImpl]";
    a4 = 50;
    __break(0xC471u);
LABEL_121:
    __break(1u);
LABEL_122:
    *v5 = 0;
    *(v5 + 1) = 0;
    v79 = *(v5 + 3);
    if (v79)
    {
      if (v24)
      {
        (*(*v79 + 16))(v79, v43, v24, a4);
        v24 = *(v5 + 1);
      }
    }

    else
    {
      v24 = 0;
    }

    goto LABEL_124;
  }

  v5 = a3;
  if ((*(v6 + 56) & 0x4000) == 0)
  {
    v7 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
    {
      v57 = *(v5 + 25);
      if (v57 >= 0x107F)
      {
        v57 = 4223;
      }

      v58 = (&IPC::Detail::messageDescriptions)[3 * v57];
      *buf = 136315138;
      *&buf[4] = v58;
      _os_log_error_impl(&dword_19D52D000, v7, OS_LOG_TYPE_ERROR, "Message %s received by a disabled message receiver RemoteBuffer", buf, 0xCu);
    }

    v8 = *v5;
    v9 = *(v5 + 1);
    *v5 = 0;
    *(v5 + 1) = 0;
    v10 = *(v5 + 3);
    if (v10)
    {
      if (v9)
      {
        (*(*v10 + 16))(v10, v8);
      }
    }

    return;
  }

  v4 = this;
  atomic_fetch_add(this + 2, 1u);
  v12 = *(a3 + 25);
  if (v12 > 0x3C2)
  {
    if (*(a3 + 25) > 0x3C4u)
    {
      if (v12 == 965)
      {
        WebKit::RemoteBuffer::unmap(this);
        goto LABEL_75;
      }

      if (v12 != 4019)
      {
        goto LABEL_73;
      }

      v24 = a3[1];
      v25 = ((*(v5 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
      v26 = v25 - *v5;
      v17 = v24 >= v26;
      v27 = &v24[-v26];
      if (!v17 || v27 <= 7)
      {
        goto LABEL_124;
      }

      *(v5 + 2) = v25 + 1;
      if (v25)
      {
        v29 = *v25;
        IPC::Decoder::decode<std::optional<unsigned long long>>(v5, buf);
        if ((buf[16] & 1) == 0)
        {
          goto LABEL_74;
        }

        v30 = *(v5 + 8);
        if (!v30)
        {
          __break(0xC471u);
          JUMPOUT(0x19D8F4558);
        }

        v31 = *buf;
        v32 = *&buf[8];
        atomic_fetch_add(a2 + 2, 1u);
        v33 = WTF::fastMalloc(0x18);
        *v33 = &unk_1F10EBF58;
        v33[1] = v30;
        v33[2] = a2;
        *buf = v33;
        WebKit::RemoteBuffer::getMappedRange(v4, v29, v31, v32, buf);
        v34 = *buf;
        *buf = 0;
        if (!v34)
        {
          goto LABEL_75;
        }

        goto LABEL_41;
      }
    }

    else
    {
      if (v12 != 963)
      {
        if (v12 == 964)
        {
          IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a3, buf);
          if (buf[8] & 1) != 0 || (v20 = *v5, v21 = *(v5 + 1), *v5 = 0, *(v5 + 1) = 0, (v65 = *(v5 + 3)) != 0) && v21 && ((*(*v65 + 16))(v65, v20), (buf[8]))
          {
            WebKit::RemoteBuffer::setLabel(v4, buf);
            if (buf[8])
            {
              v23 = *buf;
              *buf = 0;
              if (v23)
              {
                if (atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v23, v20);
                }
              }
            }
          }

          goto LABEL_75;
        }

        goto LABEL_73;
      }

      v24 = a3[1];
      v45 = *(v5 + 2);
      v43 = *v5;
      if (v24 <= v45 - *v5)
      {
        goto LABEL_122;
      }

      *(v5 + 2) = v45 + 1;
      if (!v45)
      {
LABEL_124:
        *v5 = 0;
        *(v5 + 1) = 0;
        v80 = *(v5 + 3);
        if (v80)
        {
          if (v24)
          {
            (*(*v80 + 16))(v80);
            v24 = *(v5 + 1);
          }
        }

        else
        {
          v24 = 0;
        }

        goto LABEL_126;
      }

      v46 = *v45;
      if (v46 < 4)
      {
        v47 = v45 & 0xFFFFFFFFFFFFFFF8;
        v48 = ((v45 & 0xFFFFFFFFFFFFFFF8) + 8);
        if (v24 < v48 - v43 || &v24[-(v48 - v43)] <= 7)
        {
          v72 = 0;
          v73 = 0;
          *v5 = 0;
          *(v5 + 1) = 0;
          v74 = *(v5 + 3);
          if (v74)
          {
            (*(*v74 + 16))(v74);
            v73 = *v5;
            v72 = *(v5 + 1);
          }
        }

        else
        {
          *(v5 + 2) = v47 + 16;
          if (v48)
          {
            v49 = *v48;
            IPC::Decoder::decode<std::optional<unsigned long long>>(v5, buf);
            if ((buf[16] & 1) == 0)
            {
              goto LABEL_74;
            }

            v50 = *buf;
            v51 = *&buf[8];
            v52 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v5);
            if ((v20 & 1) == 0)
            {
              goto LABEL_75;
            }

            v53 = v52;
            atomic_fetch_add(a2 + 2, 1u);
            v54 = WTF::fastMalloc(0x18);
            *v54 = &unk_1F10EBF08;
            v54[1] = v53;
            v54[2] = a2;
            *buf = v54;
            WebKit::RemoteBuffer::mapAsync(v4, v46, v49, v50, v51, buf);
            v34 = *buf;
            *buf = 0;
            if (!v34)
            {
              goto LABEL_75;
            }

LABEL_41:
            (*(*v34 + 8))(v34);
            goto LABEL_75;
          }

          v72 = v24;
          v73 = v43;
        }

        *v5 = 0;
        *(v5 + 1) = 0;
        v75 = *(v5 + 3);
        if (v75 && v72)
        {
          (*(*v75 + 16))(v75, v73, v72);
        }

        goto LABEL_74;
      }
    }

LABEL_126:
    *v5 = 0;
    *(v5 + 1) = 0;
    v81 = *(v5 + 3);
    if (v81 && v24)
    {
      (*(*v81 + 16))(v81);
    }

    goto LABEL_74;
  }

  if (*(a3 + 25) <= 0x3C0u)
  {
    if (v12 != 959)
    {
      if (v12 == 960)
      {
        IPC::VectorArgumentCoder<true,unsigned char,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a3, &v82);
        if ((v84 & 1) == 0)
        {
          v62 = *v5;
          v63 = *(v5 + 1);
          *v5 = 0;
          *(v5 + 1) = 0;
          v64 = *(v5 + 3);
          if (!v64 || !v63 || ((*(*v64 + 16))(v64, v62), (v84 & 1) == 0))
          {
LABEL_74:
            v20 = *v5;
            v21 = *(v5 + 1);
            *v5 = 0;
            *(v5 + 1) = 0;
            v56 = *(v5 + 3);
            if (v56 && v21)
            {
              (*(*v56 + 16))(v56, v20);
            }

            goto LABEL_75;
          }
        }

        v13 = *(v5 + 1);
        v14 = ((*(v5 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
        v15 = *v5;
        v16 = v14 - *v5;
        v17 = v13 >= v16;
        v18 = v13 - v16;
        if (v17 && v18 > 7)
        {
          *(v5 + 2) = v14 + 1;
          if (v14)
          {
            v19 = *v14;
            *buf = v82;
            *&buf[8] = v83;
            *&buf[16] = v19;
            LOBYTE(v87) = 1;
            WebKit::RemoteBuffer::copyWithCopy(v4, buf, v19);
            if (v87)
            {
              v22 = *buf;
              if (*buf)
              {
                *buf = 0;
                *&buf[8] = 0;
                WTF::fastFree(v22, v20);
              }
            }

            goto LABEL_75;
          }

          goto LABEL_116;
        }

        *v5 = 0;
        *(v5 + 1) = 0;
        v76 = *(v5 + 3);
        if (v76)
        {
          if (v13)
          {
            (*(*v76 + 16))(v76);
            v15 = *v5;
            v13 = *(v5 + 1);
LABEL_116:
            *v5 = 0;
            *(v5 + 1) = 0;
            v77 = *(v5 + 3);
            if (v77 && v13)
            {
              (*(*v77 + 16))(v77);
            }

            if (v84)
            {
              v78 = v82;
              if (v82)
              {
                v82 = 0;
                LODWORD(v83) = 0;
                WTF::fastFree(v78, v15);
              }
            }

            goto LABEL_74;
          }
        }

        else
        {
          v13 = 0;
        }

        v15 = 0;
        goto LABEL_116;
      }

LABEL_73:
      v55 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        if (v12 >= 0x107F)
        {
          v59 = 4223;
        }

        else
        {
          v59 = v12;
        }

        v60 = (&IPC::Detail::messageDescriptions)[3 * v59];
        v61 = *(v5 + 7);
        *buf = 136315394;
        *&buf[4] = v60;
        *&buf[12] = 2048;
        *&buf[14] = v61;
        _os_log_error_impl(&dword_19D52D000, v55, OS_LOG_TYPE_ERROR, "Unhandled stream message %s to %llu", buf, 0x16u);
      }

      goto LABEL_74;
    }

    IPC::ArgumentCoder<std::optional<WebCore::SharedMemoryHandle>,void>::decode<IPC::Decoder>(a3, &v82);
    if ((v85 & 1) == 0)
    {
      v66 = *v5;
      v67 = *(v5 + 1);
      *v5 = 0;
      *(v5 + 1) = 0;
      v68 = *(v5 + 3);
      if (!v68 || !v67 || ((*(*v68 + 16))(v68, v66), (v85 & 1) == 0))
      {
        buf[0] = 0;
        v88 = 0;
        goto LABEL_97;
      }
    }

    v35 = *(v5 + 1);
    v36 = ((*(v5 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
    v37 = v36 - *v5;
    v17 = v35 >= v37;
    v38 = v35 - v37;
    if (v17 && v38 > 7)
    {
      *(v5 + 2) = v36 + 1;
      if (v36)
      {
        v39 = *v36;
        buf[0] = 0;
        buf[16] = 0;
        if (v84 == 1)
        {
          WTF::MachSendRight::MachSendRight();
          *&buf[8] = v83;
          buf[16] = 1;
        }

        v87 = v39;
        v40 = 1;
        goto LABEL_50;
      }
    }

    else
    {
      *v5 = 0;
      *(v5 + 1) = 0;
      v70 = *(v5 + 3);
      if (v70)
      {
        if (v35)
        {
          (*(*v70 + 16))(v70);
          v35 = *(v5 + 1);
        }
      }

      else
      {
        v35 = 0;
      }
    }

    *v5 = 0;
    *(v5 + 1) = 0;
    v71 = *(v5 + 3);
    if (v71 && v35)
    {
      (*(*v71 + 16))(v71);
    }

    v40 = 0;
    buf[0] = 0;
LABEL_50:
    v88 = v40;
    if ((v85 & 1) != 0 && v84 == 1)
    {
      WTF::MachSendRight::~MachSendRight(&v82);
      v40 = v88;
    }

    if (v40)
    {
LABEL_54:
      v41 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v5);
      if ((v20 & 1) == 0)
      {
        goto LABEL_58;
      }

      v5 = v41;
      atomic_fetch_add(a2 + 2, 1u);
      v42 = WTF::fastMalloc(0x18);
      *v42 = &unk_1F10EBF30;
      *(v42 + 1) = v5;
      *(v42 + 2) = a2;
      v82 = v42;
      if (v88)
      {
        WebKit::RemoteBuffer::copy(v4, buf, v87, &v82);
        v44 = v82;
        v82 = 0;
        if (v44)
        {
          (*(*v44 + 8))(v44);
        }

        goto LABEL_58;
      }

      goto LABEL_121;
    }

LABEL_97:
    v20 = *v5;
    v21 = *(v5 + 1);
    *v5 = 0;
    *(v5 + 1) = 0;
    v69 = *(v5 + 3);
    if (!v69 || !v21 || ((*(*v69 + 16))(v69, v20), (v88 & 1) == 0))
    {
LABEL_58:
      if (v88 == 1 && buf[16] == 1)
      {
        WTF::MachSendRight::~MachSendRight(buf);
      }

      goto LABEL_75;
    }

    goto LABEL_54;
  }

  if (v12 == 961)
  {
    WebKit::RemoteBuffer::destroy(this);
  }

  else
  {
    if (v12 != 962)
    {
      goto LABEL_73;
    }

    WebKit::RemoteBindGroup::destruct(this);
  }

LABEL_75:
  if (atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 2);
    (*(*v4 + 8))(v4, v20, v21);
  }
}

uint64_t WebKit::RemoteCommandBuffer::didReceiveStreamMessage(WebKit::RemoteCommandBuffer *this, IPC::StreamServerConnection *a2, IPC::Decoder *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = *(*(this + 5) + 8);
  if (v3)
  {
    if ((*(v3 + 56) & 0x4000) != 0)
    {
      atomic_fetch_add(this + 2, 1u);
      v10 = *(a3 + 25);
      if (v10 == 989)
      {
        IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a3, v19);
        if (v19[8] & 1) != 0 || (v11 = *a3, v12 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (result = *(a3 + 3)) != 0) && v12 && (result = (*(*result + 16))(result, v11), (v19[8]))
        {
          result = WebKit::RemoteCommandBuffer::setLabel(this, v19);
          if (v19[8])
          {
            result = *v19;
            *v19 = 0;
            if (result)
            {
              if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                result = WTF::StringImpl::destroy(result, v11);
              }
            }
          }
        }
      }

      else if (v10 == 988)
      {
        result = WebKit::RemoteBindGroup::destruct(this);
      }

      else
      {
        v13 = qword_1ED6416C8;
        if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          if (v10 >= 0x107F)
          {
            v16 = 4223;
          }

          else
          {
            v16 = v10;
          }

          v17 = (&IPC::Detail::messageDescriptions)[3 * v16];
          v18 = *(a3 + 7);
          *v19 = 136315394;
          *&v19[4] = v17;
          v20 = 2048;
          v21 = v18;
          _os_log_error_impl(&dword_19D52D000, v13, OS_LOG_TYPE_ERROR, "Unhandled stream message %s to %llu", v19, 0x16u);
        }

        v11 = *a3;
        v12 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        result = *(a3 + 3);
        if (result && v12)
        {
          result = (*(*result + 16))(result, v11);
        }
      }

      if (atomic_fetch_add(this + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, this + 2);
        return (*(*this + 8))(this, v11, v12);
      }
    }

    else
    {
      v5 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        v14 = *(a3 + 25);
        if (v14 >= 0x107F)
        {
          v14 = 4223;
        }

        v15 = (&IPC::Detail::messageDescriptions)[3 * v14];
        *v19 = 136315138;
        *&v19[4] = v15;
        _os_log_error_impl(&dword_19D52D000, v5, OS_LOG_TYPE_ERROR, "Message %s received by a disabled message receiver RemoteCommandBuffer", v19, 0xCu);
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
    }
  }

  else
  {
    result = 92;
    __break(0xC471u);
  }

  return result;
}

WTF *WebKit::RemoteCommandEncoder::didReceiveStreamMessage(WebKit::RemoteCommandEncoder *this, IPC::StreamServerConnection *a2, const char **a3, uint64_t a4)
{
  v120 = *MEMORY[0x1E69E9840];
  v6 = *(*(this + 8) + 8);
  if (!v6)
  {
    v14 = "/AppleInternal/Library/BuildRoots/4~CAtBugAdX2ypK3woS13W0YBGfMX4uuy1xhucdh4/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/wtf/WeakRef.h";
    v12 = "T *WTF::WeakRef<WebKit::RemoteGPU>::ptr() const [T = WebKit::RemoteGPU, WeakPtrImpl = WTF::DefaultWeakPtrImpl]";
    a4 = 50;
    __break(0xC471u);
LABEL_242:
    __break(1u);
LABEL_243:
    *v5 = 0;
    *(v5 + 1) = 0;
    v91 = *(v5 + 3);
    if (v91)
    {
      if (v12)
      {
        (*(*v91 + 16))(v91, v14, v12, a4);
        v12 = *(v5 + 1);
      }
    }

    else
    {
      v12 = 0;
    }

LABEL_245:
    *v5 = 0;
    *(v5 + 1) = 0;
    v92 = *(v5 + 3);
    if (v92)
    {
      if (v12)
      {
        (*(*v92 + 16))(v92);
LABEL_252:
        v12 = *(v5 + 1);
      }
    }

    else
    {
      v12 = 0;
    }

LABEL_253:
    *v5 = 0;
    *(v5 + 1) = 0;
    v90 = *(v5 + 3);
    if (v90 && v12)
    {
LABEL_259:
      (*(*v90 + 16))(v90);
    }

LABEL_254:
    v25 = *(v5 + 1);
LABEL_255:
    *v5 = 0;
    *(v5 + 1) = 0;
    v93 = *(v5 + 3);
    if (v93 && v25)
    {
      (*(*v93 + 16))(v93);
    }

LABEL_158:
    v20 = *v5;
    v21 = *(v5 + 1);
    *v5 = 0;
    *(v5 + 1) = 0;
    result = *(v5 + 3);
    if (result && v21)
    {
      result = (*(*result + 16))(result, v20);
    }

    goto LABEL_159;
  }

  v5 = a3;
  if ((*(v6 + 56) & 0x4000) == 0)
  {
    v7 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
    {
      v76 = *(v5 + 25);
      if (v76 >= 0x107F)
      {
        v76 = 4223;
      }

      v77 = (&IPC::Detail::messageDescriptions)[3 * v76];
      *buf = 136315138;
      *&buf[4] = v77;
      _os_log_error_impl(&dword_19D52D000, v7, OS_LOG_TYPE_ERROR, "Message %s received by a disabled message receiver RemoteCommandEncoder", buf, 0xCu);
    }

    v8 = *v5;
    v9 = *(v5 + 1);
    *v5 = 0;
    *(v5 + 1) = 0;
    result = *(v5 + 3);
    if (result)
    {
      if (v9)
      {
        return (*(*result + 16))(result, v8);
      }
    }

    return result;
  }

  v4 = this;
  atomic_fetch_add(this + 2, 1u);
  v11 = *(a3 + 25);
  switch(*(a3 + 25))
  {
    case 0x3DE:
      v12 = a3[1];
      v13 = *(v5 + 2);
      v14 = *v5;
      if (v12 <= &v13[-*v5])
      {
        goto LABEL_243;
      }

      *(v5 + 2) = v13 + 1;
      if (!v13)
      {
        goto LABEL_245;
      }

      v15 = *v13;
      if (v15 >= 2)
      {
        goto LABEL_253;
      }

      if (v15)
      {
        IPC::ArgumentCoder<WebKit::WebGPU::ComputePassDescriptor,void>::decode(v5, buf);
        if ((buf[32] & 1) == 0)
        {
          goto LABEL_252;
        }

        *v94 = *&buf[8];
        v16 = *buf;
        v95 = *&buf[24];
        v17 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(v5);
        if ((v18 & 1) == 0)
        {
          if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            v80 = v16;
            goto LABEL_157;
          }

          goto LABEL_158;
        }

        v19 = v17;
        *&buf[8] = *v94;
        *buf = v16;
        *&buf[24] = v95;
        buf[32] = 1;
      }

      else
      {
        v82 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(v5);
        buf[0] = 0;
        if ((v83 & 1) == 0)
        {
          goto LABEL_158;
        }

        v19 = v82;
        buf[32] = 0;
      }

      *&v113 = v19;
      BYTE8(v113) = 1;
      result = WebKit::RemoteCommandEncoder::beginComputePass(v4, buf, v19);
      if ((BYTE8(v113) & 1) != 0 && buf[32] == 1)
      {
        goto LABEL_100;
      }

      goto LABEL_159;
    case 0x3DF:
      IPC::ArgumentCoder<WebKit::WebGPU::RenderPassDescriptor,void>::decode(a3, v94);
      if ((v101 & 1) == 0)
      {
        v87 = *v5;
        v88 = *(v5 + 1);
        *v5 = 0;
        *(v5 + 1) = 0;
        v89 = *(v5 + 3);
        if (!v89)
        {
          goto LABEL_158;
        }

        if (!v88)
        {
          goto LABEL_158;
        }

        (*(*v89 + 16))(v89, v87);
        if ((v101 & 1) == 0)
        {
          goto LABEL_158;
        }
      }

      v69 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(v5);
      v70 = v69;
      v71 = v14;
      if (v14)
      {
        if ((v101 & 1) == 0)
        {
          goto LABEL_242;
        }

        v72 = *v94;
        v94[0] = 0;
        v94[1] = 0;
        *buf = v72;
        *&v72 = v95;
        v95 = 0;
        *&buf[16] = v72;
        v114 = v98;
        v115 = v99;
        *v116 = v100[0];
        *&v116[9] = *(v100 + 9);
        *&buf[24] = v96;
        v113 = v97;
        v117 = v69;
        v118 = 1;
      }

      else
      {
        buf[0] = 0;
        v118 = 0;
        if ((v101 & 1) == 0)
        {
          goto LABEL_158;
        }
      }

      WTF::Vector<std::optional<WebKit::WebGPU::RenderPassColorAttachment>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v94[1], v14);
      v79 = v94[0];
      v94[0] = 0;
      if (v79 && atomic_fetch_add_explicit(v79, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v79, v78);
      }

      if ((v71 & 1) == 0)
      {
        goto LABEL_158;
      }

      result = WebKit::RemoteCommandEncoder::beginRenderPass(v4, buf, v70);
      if ((v118 & 1) == 0)
      {
        goto LABEL_159;
      }

      WTF::Vector<std::optional<WebKit::WebGPU::RenderPassColorAttachment>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&buf[8], v20);
      goto LABEL_100;
    case 0x3E0:
      v42 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v43 & 1) == 0)
      {
        goto LABEL_158;
      }

      v25 = *(v5 + 1);
      v44 = ((*(v5 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
      v45 = v44 - *v5;
      v29 = v25 >= v45;
      v46 = v25 - v45;
      if (!v29 || v46 <= 7)
      {
        goto LABEL_239;
      }

      *(v5 + 2) = v44 + 1;
      if (!v44)
      {
        goto LABEL_255;
      }

      v48 = v42;
      v49 = *v44;
      IPC::Decoder::decode<std::optional<unsigned long long>>(v5, buf);
      if ((buf[16] & 1) == 0)
      {
        goto LABEL_158;
      }

      result = WebKit::RemoteCommandEncoder::clearBuffer(v4, v48, v49, *buf, *&buf[8]);
      goto LABEL_159;
    case 0x3E1:
      v54 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v55 & 1) == 0)
      {
        goto LABEL_158;
      }

      v25 = *(v5 + 1);
      v56 = ((*(v5 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
      v57 = v56 - *v5;
      v29 = v25 >= v57;
      v58 = v25 - v57;
      if (!v29 || v58 <= 7)
      {
        goto LABEL_239;
      }

      *(v5 + 2) = v56 + 1;
      if (!v56)
      {
        goto LABEL_255;
      }

      v60 = v54;
      v61 = *v56;
      v62 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(v5);
      if ((v63 & 1) == 0)
      {
        goto LABEL_158;
      }

      v25 = *(v5 + 1);
      v64 = (*(v5 + 2) + 7) & 0xFFFFFFFFFFFFFFF8;
      v65 = *v5;
      v66 = v64 - *v5;
      v29 = v25 >= v66;
      v67 = v25 - v66;
      if (!v29 || v67 <= 7)
      {
        goto LABEL_239;
      }

      *(v5 + 2) = v64 + 8;
      if (!v64)
      {
        goto LABEL_255;
      }

      v68 = (v64 + 15) & 0xFFFFFFFFFFFFFFF8;
      if (v25 < v68 - v65 || v25 - (v68 - v65) <= 7)
      {
        goto LABEL_239;
      }

      *(v5 + 2) = v68 + 8;
      if (!v68)
      {
        goto LABEL_255;
      }

      result = WebKit::RemoteCommandEncoder::copyBufferToBuffer(v4, v60, v61, v62);
      goto LABEL_159;
    case 0x3E2:
      IPC::Decoder::decode<WebKit::WebGPU::ImageCopyBuffer>(&v102, a3);
      if ((v104 & 1) == 0)
      {
        buf[0] = 0;
        v116[24] = 0;
LABEL_223:
        v20 = *v5;
        v21 = *(v5 + 1);
        *v5 = 0;
        *(v5 + 1) = 0;
        result = *(v5 + 3);
        if (!result)
        {
          goto LABEL_159;
        }

        if (!v21)
        {
          goto LABEL_159;
        }

        result = (*(*result + 16))(result, v20);
        if ((v116[24] & 1) == 0)
        {
          goto LABEL_159;
        }

        goto LABEL_170;
      }

      IPC::Decoder::decode<WebKit::WebGPU::ImageCopyTexture>(v5, v94);
      if (v98 == 1)
      {
        IPC::Decoder::decode<mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Extent3DDict>>(v5, &v108);
        if (v111 == 1)
        {
          if ((v104 & 1) == 0 || (v98 & 1) == 0)
          {
            goto LABEL_242;
          }

          *buf = v102;
          *&buf[16] = *v103;
          *&buf[32] = v94[0];
          LODWORD(v113) = v94[1];
          BYTE8(v113) = 0;
          LOBYTE(v115) = 0;
          if (v97 == 1)
          {
            mpark::detail::move_assignment<mpark::detail::traits<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin3DDict>,(mpark::detail::Trait)1>::move_assignment(&v113 + 8, &v95);
            LOBYTE(v115) = 1;
          }

          BYTE8(v115) = BYTE8(v97);
          mpark::detail::move_assignment<mpark::detail::traits<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin3DDict>,(mpark::detail::Trait)1>::move_assignment(v116, &v108);
          v116[24] = 1;
          if ((v111 & 1) != 0 && !v110)
          {
            v22 = v108;
            if (v108)
            {
              v108 = 0;
              v109 = 0;
              WTF::fastFree(v22, v14);
            }
          }
        }

        else
        {
          buf[0] = 0;
          v116[24] = 0;
        }

        if ((v98 & 1) != 0 && v97 == 1 && !BYTE8(v96))
        {
          v84 = v95;
          if (v95)
          {
            v95 = 0;
            LODWORD(v96) = 0;
            WTF::fastFree(v84, v14);
          }
        }
      }

      else
      {
        buf[0] = 0;
        v116[24] = 0;
      }

      if ((v116[24] & 1) == 0)
      {
        goto LABEL_223;
      }

LABEL_170:
      result = WebKit::RemoteCommandEncoder::copyBufferToTexture(v4, buf, &buf[32], v116);
      if (v116[24])
      {
        if (!v116[16])
        {
          result = *v116;
          if (*v116)
          {
            *v116 = 0;
            *&v116[8] = 0;
            result = WTF::fastFree(result, v20);
          }
        }

        v116[16] = -1;
        if (v115 == 1 && !BYTE8(v114))
        {
          result = *(&v113 + 1);
          if (*(&v113 + 1))
          {
            *(&v113 + 1) = 0;
            LODWORD(v114) = 0;
            goto LABEL_203;
          }
        }
      }

LABEL_159:
      if (atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v4 + 2);
        return (*(*v4 + 8))(v4, v20, v21);
      }

      return result;
    case 0x3E3:
      IPC::Decoder::decode<WebKit::WebGPU::ImageCopyTexture>(a3, v94);
      if (v98 == 1)
      {
        IPC::Decoder::decode<WebKit::WebGPU::ImageCopyBuffer>(&v102, v5);
        if ((v104 & 1) != 0 && (IPC::Decoder::decode<mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Extent3DDict>>(v5, &v108), v111 == 1))
        {
          if ((v98 & 1) == 0 || (v104 & 1) == 0)
          {
            goto LABEL_242;
          }

          *buf = v94[0];
          *&buf[8] = v94[1];
          buf[16] = 0;
          LOBYTE(v113) = 0;
          if (v97 == 1)
          {
            mpark::detail::move_assignment<mpark::detail::traits<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin3DDict>,(mpark::detail::Trait)1>::move_assignment(&buf[16], &v95);
            LOBYTE(v113) = 1;
          }

          BYTE8(v113) = BYTE8(v97);
          v114 = v102;
          v115 = *v103;
          mpark::detail::move_assignment<mpark::detail::traits<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin3DDict>,(mpark::detail::Trait)1>::move_assignment(v116, &v108);
          v116[24] = 1;
          if ((v111 & 1) != 0 && !v110)
          {
            v73 = v108;
            if (v108)
            {
              v108 = 0;
              v109 = 0;
              WTF::fastFree(v73, v14);
            }
          }
        }

        else
        {
          buf[0] = 0;
          v116[24] = 0;
        }

        if ((v98 & 1) != 0 && v97 == 1 && !BYTE8(v96))
        {
          v81 = v95;
          if (v95)
          {
            v95 = 0;
            LODWORD(v96) = 0;
            WTF::fastFree(v81, v14);
          }
        }
      }

      else
      {
        buf[0] = 0;
        v116[24] = 0;
      }

      if ((v116[24] & 1) == 0)
      {
        v20 = *v5;
        v21 = *(v5 + 1);
        *v5 = 0;
        *(v5 + 1) = 0;
        result = *(v5 + 3);
        if (!result)
        {
          goto LABEL_159;
        }

        if (!v21)
        {
          goto LABEL_159;
        }

        result = (*(*result + 16))(result, v20);
        if ((v116[24] & 1) == 0)
        {
          goto LABEL_159;
        }
      }

      result = WebKit::RemoteCommandEncoder::copyTextureToBuffer(v4, buf, &v114, v116);
      if ((v116[24] & 1) == 0)
      {
        goto LABEL_159;
      }

      if (!v116[16])
      {
        result = *v116;
        if (*v116)
        {
          *v116 = 0;
          *&v116[8] = 0;
          result = WTF::fastFree(result, v20);
        }
      }

      v116[16] = -1;
      goto LABEL_199;
    case 0x3E4:
      IPC::Decoder::decode<WebKit::WebGPU::ImageCopyTexture>(a3, &v102);
      if (v107 == 1)
      {
        IPC::Decoder::decode<WebKit::WebGPU::ImageCopyTexture>(v5, v94);
        if (v98 == 1)
        {
          IPC::Decoder::decode<mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Extent3DDict>>(v5, &v108);
          if (v111 == 1)
          {
            if ((v107 & 1) == 0 || (v98 & 1) == 0)
            {
              goto LABEL_242;
            }

            *buf = v102;
            *&buf[8] = DWORD2(v102);
            buf[16] = 0;
            LOBYTE(v113) = 0;
            if (v105 == 1)
            {
              mpark::detail::move_assignment<mpark::detail::traits<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin3DDict>,(mpark::detail::Trait)1>::move_assignment(&buf[16], v103);
              LOBYTE(v113) = 1;
            }

            BYTE8(v113) = v106;
            *&v114 = v94[0];
            DWORD2(v114) = v94[1];
            LOBYTE(v115) = 0;
            v116[8] = 0;
            if (v97 == 1)
            {
              mpark::detail::move_assignment<mpark::detail::traits<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin3DDict>,(mpark::detail::Trait)1>::move_assignment(&v115, &v95);
              v116[8] = 1;
            }

            v116[16] = BYTE8(v97);
            mpark::detail::move_assignment<mpark::detail::traits<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin3DDict>,(mpark::detail::Trait)1>::move_assignment(&v116[24], &v108);
            v119 = 1;
            if ((v111 & 1) != 0 && !v110)
            {
              v74 = v108;
              if (v108)
              {
                v108 = 0;
                v109 = 0;
                WTF::fastFree(v74, v14);
              }
            }
          }

          else
          {
            buf[0] = 0;
            v119 = 0;
          }

          if ((v98 & 1) != 0 && v97 == 1 && !BYTE8(v96))
          {
            v85 = v95;
            if (v95)
            {
              v95 = 0;
              LODWORD(v96) = 0;
              WTF::fastFree(v85, v14);
            }
          }
        }

        else
        {
          buf[0] = 0;
          v119 = 0;
        }

        if ((v107 & 1) != 0 && v105 == 1 && !v104)
        {
          v86 = v103[0];
          if (v103[0])
          {
            v103[0] = 0;
            LODWORD(v103[1]) = 0;
            WTF::fastFree(v86, v14);
          }
        }
      }

      else
      {
        buf[0] = 0;
        v119 = 0;
      }

      if (v119 & 1) != 0 || (v20 = *v5, v21 = *(v5 + 1), *v5 = 0, *(v5 + 1) = 0, (result = *(v5 + 3)) != 0) && v21 && (result = (*(*result + 16))(result, v20), (v119))
      {
        result = WebKit::RemoteCommandEncoder::copyTextureToTexture(v4, buf, &v114, &v116[24]);
        if (v119)
        {
          if (!v118)
          {
            result = *&v116[24];
            if (*&v116[24])
            {
              *&v116[24] = 0;
              LODWORD(v117) = 0;
              result = WTF::fastFree(result, v20);
            }
          }

          v118 = -1;
          if (v116[8] == 1)
          {
            if (!v116[0])
            {
              result = v115;
              if (v115)
              {
                *&v115 = 0;
                DWORD2(v115) = 0;
                result = WTF::fastFree(result, v20);
              }
            }

            v116[0] = -1;
          }

LABEL_199:
          if (v113 == 1 && !buf[32])
          {
            result = *&buf[16];
            if (*&buf[16])
            {
              *&buf[16] = 0;
              *&buf[24] = 0;
LABEL_203:
              result = WTF::fastFree(result, v20);
            }
          }
        }
      }

      goto LABEL_159;
    case 0x3E5:
      result = WebKit::RemoteCommandEncoder::destruct(this);
      goto LABEL_159;
    case 0x3E6:
      IPC::ArgumentCoder<WebCore::ApplePayAMSUIRequest,void>::decode(a3, v94);
      if ((v94[1] & 1) == 0)
      {
        goto LABEL_254;
      }

      v75 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(v5);
      if ((v18 & 1) == 0)
      {
        v80 = v94[0];
        if (v94[0] && atomic_fetch_add_explicit(v94[0], 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
LABEL_157:
          WTF::StringImpl::destroy(v80, v18);
        }

        goto LABEL_158;
      }

      *buf = v94[0];
      *&buf[8] = v75;
      buf[16] = 1;
      result = WebKit::RemoteCommandEncoder::finish(v4, buf, v75);
      if (buf[16])
      {
LABEL_100:
        result = *buf;
        *buf = 0;
        if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, v20);
        }
      }

      goto LABEL_159;
    case 0x3E7:
      IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a3, buf);
      if ((buf[8] & 1) == 0)
      {
        v20 = *v5;
        v21 = *(v5 + 1);
        *v5 = 0;
        *(v5 + 1) = 0;
        result = *(v5 + 3);
        if (!result)
        {
          goto LABEL_159;
        }

        if (!v21)
        {
          goto LABEL_159;
        }

        result = (*(*result + 16))(result, v20);
        if ((buf[8] & 1) == 0)
        {
          goto LABEL_159;
        }
      }

      result = WebKit::RemoteCommandEncoder::insertDebugMarker(v4);
      goto LABEL_99;
    case 0x3E8:
      result = WebKit::RemoteCommandEncoder::popDebugGroup(this);
      goto LABEL_159;
    case 0x3E9:
      IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a3, buf);
      if ((buf[8] & 1) == 0)
      {
        v20 = *v5;
        v21 = *(v5 + 1);
        *v5 = 0;
        *(v5 + 1) = 0;
        result = *(v5 + 3);
        if (!result)
        {
          goto LABEL_159;
        }

        if (!v21)
        {
          goto LABEL_159;
        }

        result = (*(*result + 16))(result, v20);
        if ((buf[8] & 1) == 0)
        {
          goto LABEL_159;
        }
      }

      result = WebKit::RemoteCommandEncoder::pushDebugGroup(v4);
      goto LABEL_99;
    case 0x3EA:
      v23 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v24 & 1) == 0)
      {
        goto LABEL_158;
      }

      v25 = *(v5 + 1);
      v26 = ((*(v5 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
      v27 = *v5;
      v28 = v26 - *v5;
      v29 = v25 >= v28;
      v30 = v25 - v28;
      if (!v29 || v30 <= 3)
      {
        goto LABEL_239;
      }

      *(v5 + 2) = v26 + 1;
      if (!v26)
      {
        goto LABEL_255;
      }

      v32 = *v26;
      v33 = ((v26 + 7) & 0xFFFFFFFFFFFFFFFCLL);
      if (v25 < v33 - v27 || v25 - (v33 - v27) <= 3)
      {
        goto LABEL_239;
      }

      *(v5 + 2) = v33 + 4;
      if (!v33)
      {
        goto LABEL_255;
      }

      v35 = v23;
      v36 = *v33;
      v37 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(v5);
      if ((v38 & 1) == 0)
      {
        goto LABEL_158;
      }

      v25 = *(v5 + 1);
      v39 = (*(v5 + 2) + 7) & 0xFFFFFFFFFFFFFFF8;
      v40 = v39 - *v5;
      v29 = v25 >= v40;
      v41 = v25 - v40;
      if (v29 && v41 > 7)
      {
        *(v5 + 2) = v39 + 8;
        if (!v39)
        {
          goto LABEL_255;
        }

        result = WebKit::RemoteCommandEncoder::resolveQuerySet(v4, v35, v32, v36, v37);
        goto LABEL_159;
      }

LABEL_239:
      *v5 = 0;
      *(v5 + 1) = 0;
      v90 = *(v5 + 3);
      if (!v90)
      {
        v25 = 0;
        goto LABEL_255;
      }

      if (!v25)
      {
        goto LABEL_255;
      }

      goto LABEL_259;
    case 0x3EB:
      IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a3, buf);
      if ((buf[8] & 1) == 0)
      {
        v20 = *v5;
        v21 = *(v5 + 1);
        *v5 = 0;
        *(v5 + 1) = 0;
        result = *(v5 + 3);
        if (!result)
        {
          goto LABEL_159;
        }

        if (!v21)
        {
          goto LABEL_159;
        }

        result = (*(*result + 16))(result, v20);
        if ((buf[8] & 1) == 0)
        {
          goto LABEL_159;
        }
      }

      result = WebKit::RemoteCommandEncoder::setLabel(v4, buf);
LABEL_99:
      if (buf[8])
      {
        goto LABEL_100;
      }

      goto LABEL_159;
    case 0x3EC:
      IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,unsigned int>,void>::decode<IPC::Decoder>(a3, buf);
      if (buf[16] & 1) != 0 || (v20 = *v5, v21 = *(v5 + 1), *v5 = 0, *(v5 + 1) = 0, (result = *(v5 + 3)) != 0) && v21 && (result = (*(*result + 16))(result, v20), (buf[16]))
      {
        result = WebKit::RemoteCommandEncoder::writeTimestamp(v4, *buf, *&buf[8]);
      }

      goto LABEL_159;
    default:
      v50 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        if (v11 >= 0x107F)
        {
          v51 = 4223;
        }

        else
        {
          v51 = v11;
        }

        v52 = (&IPC::Detail::messageDescriptions)[3 * v51];
        v53 = *(v5 + 7);
        *buf = 136315394;
        *&buf[4] = v52;
        *&buf[12] = 2048;
        *&buf[14] = v53;
        _os_log_error_impl(&dword_19D52D000, v50, OS_LOG_TYPE_ERROR, "Unhandled stream message %s to %llu", buf, 0x16u);
      }

      goto LABEL_158;
  }
}

void WebKit::RemoteCompositorIntegration::didReceiveStreamMessage(WebKit::RemoteCompositorIntegration *this, atomic_uint *a2, IPC::Decoder *a3)
{
  v75 = *MEMORY[0x1E69E9840];
  v3 = *(*(this + 5) + 8);
  if (!v3)
  {
    __break(0xC471u);
    JUMPOUT(0x19D8F6040);
  }

  if ((*(v3 + 56) & 0x4000) == 0)
  {
    v5 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
    {
      v59 = *(a3 + 25);
      if (v59 >= 0x107F)
      {
        v59 = 4223;
      }

      v60 = (&IPC::Detail::messageDescriptions)[3 * v59];
      *buf = 136315138;
      *&buf[4] = v60;
      _os_log_error_impl(&dword_19D52D000, v5, OS_LOG_TYPE_ERROR, "Message %s received by a disabled message receiver RemoteCompositorIntegration", buf, 0xCu);
    }

    v6 = *a3;
    v7 = *(a3 + 1);
    *a3 = 0;
    *(a3 + 1) = 0;
    v8 = *(a3 + 3);
    if (v8)
    {
      if (v7)
      {
        (*(*v8 + 16))(v8, v6);
      }
    }

    return;
  }

  atomic_fetch_add(this + 2, 1u);
  v10 = *(a3 + 25);
  if (v10 > 0xFB7)
  {
    switch(v10)
    {
      case 0xFB8u:
        v12 = *(a3 + 1);
        v37 = ((*(a3 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
        v38 = *a3;
        v39 = v37 - *a3;
        v16 = v12 >= v39;
        v40 = v12 - v39;
        if (v16 && v40 > 7)
        {
          *(a3 + 2) = v37 + 1;
          if (v37)
          {
            if (!v38)
            {
              goto LABEL_107;
            }

            v42 = *v37;
            if ((*v37 - 1) >= 0xFFFFFFFFFFFFFFFELL)
            {
              goto LABEL_107;
            }

            v43 = (v37 + 11) & 0xFFFFFFFFFFFFFFF8;
            if (v12 < v43 - v38 || v12 - (v43 - v38) <= 3)
            {
              goto LABEL_83;
            }

            *(a3 + 2) = v43 | 4;
            if (!v43)
            {
              goto LABEL_107;
            }

            v45 = *(a3 + 8);
            if (!v45)
            {
              __break(0xC471u);
              JUMPOUT(0x19D8F60BCLL);
            }

            v46 = *v43;
            atomic_fetch_add(a2 + 2, 1u);
            v47 = WTF::fastMalloc(0x18);
            *v47 = &unk_1F10EBFD0;
            v47[1] = v45;
            v47[2] = a2;
            *buf = v47;
            WebKit::RemoteCompositorIntegration::paintCompositedResultsToCanvas(this, v42, v46, buf);
            v48 = *buf;
            *buf = 0;
            if (!v48)
            {
              goto LABEL_73;
            }

LABEL_53:
            (*(*v48 + 8))(v48);
            goto LABEL_73;
          }
        }

        else
        {
          *a3 = 0;
          *(a3 + 1) = 0;
          v65 = *(a3 + 3);
          if (v65)
          {
            if (v12)
            {
              (*(*v65 + 16))(v65);
              v12 = *(a3 + 1);
            }
          }

          else
          {
            v12 = 0;
          }
        }

        *a3 = 0;
        *(a3 + 1) = 0;
        v66 = *(a3 + 3);
        if (!v66)
        {
          goto LABEL_84;
        }

        if (!v12)
        {
          goto LABEL_107;
        }

        (*(*v66 + 16))(v66);
        if (!*a3)
        {
          goto LABEL_106;
        }

        break;
      case 0xFB9u:
        v49 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
        if ((v49 & 0x100000000) == 0)
        {
          goto LABEL_73;
        }

        v50 = *(a3 + 8);
        if (v50)
        {
          v51 = v49;
          atomic_fetch_add(a2 + 2, 1u);
          v52 = WTF::fastMalloc(0x18);
          *v52 = &unk_1F10EBFA8;
          v52[1] = v50;
          v52[2] = a2;
          *buf = v52;
          WebKit::RemoteCompositorIntegration::prepareForDisplay(this, v51, buf);
          v48 = *buf;
          *buf = 0;
          if (!v48)
          {
            goto LABEL_73;
          }

          goto LABEL_53;
        }

        __break(0xC471u);
        break;
      case 0xFBAu:
        v12 = *(a3 + 1);
        v13 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
        v14 = *a3;
        v15 = v13 - *a3;
        v16 = v12 >= v15;
        v17 = v12 - v15;
        if (!v16 || v17 <= 3)
        {
          goto LABEL_83;
        }

        *(a3 + 2) = v13 + 1;
        if (v13)
        {
          v19 = *v13;
          v20 = ((v13 + 7) & 0xFFFFFFFFFFFFFFFCLL);
          if (v12 < v20 - v14 || v12 - (v20 - v14) <= 3)
          {
LABEL_83:
            *a3 = 0;
            *(a3 + 1) = 0;
            v64 = *(a3 + 3);
            if (!v64)
            {
LABEL_84:
              v12 = 0;
              goto LABEL_107;
            }

            if (!v12)
            {
              goto LABEL_107;
            }

            (*(*v64 + 16))(v64);
            goto LABEL_106;
          }

          *(a3 + 2) = v20 + 1;
          if (v20)
          {
            v22 = *v20;
            IPC::ArgumentCoder<WebCore::DestinationColorSpace,void>::decode(a3, &cf);
            if (v71)
            {
              v23 = IPC::Decoder::decode<WebCore::PathRoundedRect::Strategy>(a3);
              if (v23 & 0x100) != 0 && (v24 = v23, v25 = IPC::Decoder::decode<WebCore::WebGPU::TextureFormat>(a3), (v25 & 0x100) != 0) && (v26 = v25, v27 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3), (v28))
              {
                *buf = v19;
                *&buf[4] = v22;
                v29 = cf;
                cf = 0;
                *&buf[8] = v29;
                buf[16] = v24;
                buf[17] = v26;
                v73 = v27;
                v30 = 1;
              }

              else
              {
                v30 = 0;
                buf[0] = 0;
              }

              v74 = v30;
              if (cf)
              {
                CFRelease(cf);
              }

              if (v30)
              {
                v55 = *(a3 + 8);
                if (v55)
                {
                  atomic_fetch_add(a2 + 2, 1u);
                  v56 = WTF::fastMalloc(0x18);
                  *v56 = &unk_1F10EBF80;
                  v56[1] = v55;
                  v56[2] = a2;
                  cf = v56;
                  WebKit::RemoteCompositorIntegration::recreateRenderBuffers(this, *buf, *&buf[4], &buf[8], buf[16], buf[17], v73, &cf);
                  v57 = cf;
                  cf = 0;
                  if (v57)
                  {
                    (*(*v57 + 8))(v57);
                  }

                  if (v74)
                  {
                    v58 = *&buf[8];
                    *&buf[8] = 0;
                    if (v58)
                    {
                      CFRelease(v58);
                    }
                  }

                  goto LABEL_73;
                }

LABEL_103:
                __break(0xC471u);
                JUMPOUT(0x19D8F60FCLL);
              }

LABEL_60:
              v33 = *a3;
              v31 = *(a3 + 1);
              *a3 = 0;
              *(a3 + 1) = 0;
              v54 = *(a3 + 3);
              if (v54)
              {
                goto LABEL_61;
              }

              goto LABEL_73;
            }

LABEL_106:
            v12 = *(a3 + 1);
          }
        }

LABEL_107:
        *a3 = 0;
        *(a3 + 1) = 0;
        v69 = *(a3 + 3);
        if (v69 && v12)
        {
          (*(*v69 + 16))(v69);
        }

        goto LABEL_60;
      default:
LABEL_59:
        v53 = qword_1ED6416C8;
        if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          if (v10 >= 0x107F)
          {
            v61 = 4223;
          }

          else
          {
            v61 = v10;
          }

          v62 = (&IPC::Detail::messageDescriptions)[3 * v61];
          v63 = *(a3 + 7);
          *buf = 136315394;
          *&buf[4] = v62;
          *&buf[12] = 2048;
          *&buf[14] = v63;
          _os_log_error_impl(&dword_19D52D000, v53, OS_LOG_TYPE_ERROR, "Unhandled stream message %s to %llu", buf, 0x16u);
        }

        goto LABEL_60;
    }

    __break(1u);
    goto LABEL_103;
  }

  if (v10 == 1005)
  {
    WebKit::RemoteCompositorIntegration::destruct(this);
    goto LABEL_73;
  }

  if (v10 != 1006)
  {
    goto LABEL_59;
  }

  v31 = *(a3 + 1);
  v32 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v33 = *a3;
  v34 = v32 - *a3;
  v16 = v31 >= v34;
  v35 = v31 - v34;
  if (v16 && v35 > 3)
  {
    *(a3 + 2) = v32 + 1;
    if (v32)
    {
      WebKit::RemoteCompositorIntegration::updateContentsHeadroom(this, *v32);
      goto LABEL_73;
    }

    goto LABEL_96;
  }

  *a3 = 0;
  *(a3 + 1) = 0;
  v67 = *(a3 + 3);
  if (v67)
  {
    if (v31)
    {
      (*(*v67 + 16))(v67);
      v33 = *a3;
      v31 = *(a3 + 1);
      goto LABEL_96;
    }
  }

  else
  {
    v31 = 0;
  }

  v33 = 0;
LABEL_96:
  *a3 = 0;
  *(a3 + 1) = 0;
  v68 = *(a3 + 3);
  if (v68)
  {
    if (v31)
    {
      (*(*v68 + 16))(v68);
      v54 = *(a3 + 3);
      v33 = *a3;
      v31 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      if (v54)
      {
LABEL_61:
        if (v31)
        {
          (*(*v54 + 16))(v54, v33);
        }
      }
    }
  }

LABEL_73:
  if (atomic_fetch_add(this + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, this + 2);
    (*(*this + 8))(this, v33, v31);
  }
}

uint64_t WebKit::RemoteComputePassEncoder::didReceiveStreamMessage(WebKit::RemoteComputePassEncoder *this, IPC::StreamServerConnection *a2, IPC::Decoder *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = *(*(this + 5) + 8);
  if (!v3)
  {
    result = 92;
    __break(0xC471u);
    return result;
  }

  if ((*(v3 + 56) & 0x4000) == 0)
  {
    v5 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a3 + 25);
      if (v14 >= 0x107F)
      {
        v14 = 4223;
      }

      v15 = (&IPC::Detail::messageDescriptions)[3 * v14];
      *v19 = 136315138;
      *&v19[4] = v15;
      _os_log_error_impl(&dword_19D52D000, v5, OS_LOG_TYPE_ERROR, "Message %s received by a disabled message receiver RemoteComputePassEncoder", v19, 0xCu);
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

  atomic_fetch_add(this + 2, 1u);
  v10 = *(a3 + 25);
  if (v10 <= 0x3F3)
  {
    if (*(a3 + 25) <= 0x3F0u)
    {
      if (v10 == 1007)
      {
        result = WebKit::RemoteCompositorIntegration::destruct(this);
        goto LABEL_46;
      }

      if (v10 == 1008)
      {
        result = IPC::Decoder::decode<std::tuple<unsigned int,unsigned int,unsigned int>>(a3);
        if ((v11 & 0x100000000) != 0)
        {
          result = WebKit::RemoteComputePassEncoder::dispatch(this);
        }

        goto LABEL_46;
      }
    }

    else
    {
      switch(v10)
      {
        case 0x3F1u:
          IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,unsigned long long>,void>::decode<IPC::Decoder>(a3, v19);
          if (v19[16] & 1) != 0 || (v11 = *a3, v12 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (result = *(a3 + 3)) != 0) && v12 && (result = (*(*result + 16))(result, v11), (v19[16]))
          {
            result = WebKit::RemoteComputePassEncoder::dispatchIndirect(this, *v19, *&v19[8]);
          }

          goto LABEL_46;
        case 0x3F2u:
          result = WebKit::RemoteComputePassEncoder::end(this);
          goto LABEL_46;
        case 0x3F3u:
          IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a3, v19);
          if ((v19[8] & 1) == 0)
          {
            v11 = *a3;
            v12 = *(a3 + 1);
            *a3 = 0;
            *(a3 + 1) = 0;
            result = *(a3 + 3);
            if (!result)
            {
              goto LABEL_46;
            }

            if (!v12)
            {
              goto LABEL_46;
            }

            result = (*(*result + 16))(result, v11);
            if ((v19[8] & 1) == 0)
            {
              goto LABEL_46;
            }
          }

          result = WebKit::RemoteComputePassEncoder::insertDebugMarker(this);
LABEL_40:
          if (v19[8])
          {
            result = *v19;
            *v19 = 0;
            if (result)
            {
              if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                result = WTF::StringImpl::destroy(result, v11);
              }
            }
          }

          goto LABEL_46;
      }
    }

LABEL_44:
    v13 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
    {
      if (v10 >= 0x107F)
      {
        v16 = 4223;
      }

      else
      {
        v16 = v10;
      }

      v17 = (&IPC::Detail::messageDescriptions)[3 * v16];
      v18 = *(a3 + 7);
      *v19 = 136315394;
      *&v19[4] = v17;
      *&v19[12] = 2048;
      *&v19[14] = v18;
      _os_log_error_impl(&dword_19D52D000, v13, OS_LOG_TYPE_ERROR, "Unhandled stream message %s to %llu", v19, 0x16u);
    }

    v11 = *a3;
    v12 = *(a3 + 1);
    *a3 = 0;
    *(a3 + 1) = 0;
    result = *(a3 + 3);
    if (result && v12)
    {
      result = (*(*result + 16))(result, v11);
    }

    goto LABEL_46;
  }

  if (*(a3 + 25) <= 0x3F5u)
  {
    if (v10 == 1012)
    {
      result = WebKit::RemoteComputePassEncoder::popDebugGroup(this);
      goto LABEL_46;
    }

    if (v10 != 1013)
    {
      goto LABEL_44;
    }

    IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a3, v19);
    if (v19[8] & 1) != 0 || (v11 = *a3, v12 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (result = *(a3 + 3)) != 0) && v12 && (result = (*(*result + 16))(result, v11), (v19[8]))
    {
      result = WebKit::RemoteComputePassEncoder::pushDebugGroup(this);
      goto LABEL_40;
    }
  }

  else
  {
    if (v10 == 1014)
    {
      IPC::ArgumentCoder<std::tuple<unsigned int,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,void>::decode<IPC::Decoder>(a3, v19);
      if (v23 & 1) != 0 || (v11 = *a3, v12 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (result = *(a3 + 3)) != 0) && v12 && (result = (*(*result + 16))(result, v11), (v23))
      {
        result = WebKit::RemoteComputePassEncoder::setBindGroup(this, *v19, *&v19[8], v19[16], &v20);
        if ((v23 & 1) != 0 && v22 == 1)
        {
          result = v20;
          if (v20)
          {
            v20 = 0;
            v21 = 0;
            result = WTF::fastFree(result, v11);
          }
        }
      }

      goto LABEL_46;
    }

    if (v10 != 1015)
    {
      if (v10 == 1016)
      {
        result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
        if (v11)
        {
          result = WebKit::RemoteComputePassEncoder::setPipeline(this, result);
        }

        goto LABEL_46;
      }

      goto LABEL_44;
    }

    IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a3, v19);
    if (v19[8] & 1) != 0 || (v11 = *a3, v12 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (result = *(a3 + 3)) != 0) && v12 && (result = (*(*result + 16))(result, v11), (v19[8]))
    {
      result = WebKit::RemoteComputePassEncoder::setLabel(this, v19);
      goto LABEL_40;
    }
  }

LABEL_46:
  if (atomic_fetch_add(this + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, this + 2);
    return (*(*this + 8))(this, v11, v12);
  }

  return result;
}

uint64_t IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(IPC::Decoder *a1)
{
  result = IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(a1);
  if ((v3 & 1) == 0)
  {
    v4 = result;
    IPC::Decoder::markInvalid(a1);
    return v4;
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(IPC::Decoder *a1)
{
  v1 = *(a1 + 1);
  v2 = ((*(a1 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v3 = *a1;
  v4 = v2 - *a1;
  v5 = v1 >= v4;
  v6 = v1 - v4;
  if (!v5 || v6 <= 7)
  {
    v10 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v10;
    goto LABEL_10;
  }

  *(a1 + 2) = v2 + 1;
  if (!v2)
  {
LABEL_10:
    v11 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v11;
    if (*v11)
    {
      __break(1u);
    }

    goto LABEL_12;
  }

  if (!v3 || (v8 = *v2, (v8 - 1) >= 0xFFFFFFFFFFFFFFFELL))
  {
LABEL_12:
    IPC::Decoder::markInvalid(a1);
    return 0;
  }

  return v8;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21RemoteBarcodeDetector6DetectENS2_22StreamServerConnectionEN6WebKit21RemoteBarcodeDetectorES9_FvNS_23ObjectIdentifierGenericIN7WebCore31RenderingResourceIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_17CompletionHandlerIFvONS_6VectorINSB_14ShapeDetection15DetectedBarcodeELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_EED1Ev(void *a1)
{
  *a1 = &unk_1F10EBEB8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21RemoteBarcodeDetector6DetectENS2_22StreamServerConnectionEN6WebKit21RemoteBarcodeDetectorES9_FvNS_23ObjectIdentifierGenericIN7WebCore31RenderingResourceIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_17CompletionHandlerIFvONS_6VectorINSB_14ShapeDetection15DetectedBarcodeELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EBEB8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21RemoteBarcodeDetector6DetectENS2_22StreamServerConnectionEN6WebKit21RemoteBarcodeDetectorES9_FvNS_23ObjectIdentifierGenericIN7WebCore31RenderingResourceIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_17CompletionHandlerIFvONS_6VectorINSB_14ShapeDetection15DetectedBarcodeELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_EE4callESN_(uint64_t a1, unsigned int *a2)
{
  v3 = *(a1 + 8);
  v4 = *(*(a1 + 16) + 40);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3488;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v3;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v13 = v5;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v5, a2[3]);
  v6 = a2[3];
  if (v6)
  {
    v7 = *a2;
    v8 = 48 * v6;
    do
    {
      IPC::ArgumentCoder<WebCore::ShapeDetection::DetectedBarcode,void>::encode(v5, v7);
      v7 += 48;
      v8 -= 48;
    }

    while (v8);
  }

  IPC::Connection::sendMessageImpl(v4, &v13, 0, 0);
  result = v13;
  v13 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v9);
    return bmalloc::api::tzoneFree(v11, v12);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages15RemoteBindGroup22UpdateExternalTexturesEN6WebKit15RemoteBindGroupES8_FvNS_23ObjectIdentifierGenericINS7_20WebGPUIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_17CompletionHandlerIFvbEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJbEED1Ev(void *a1)
{
  *a1 = &unk_1F10EBEE0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages15RemoteBindGroup22UpdateExternalTexturesEN6WebKit15RemoteBindGroupES8_FvNS_23ObjectIdentifierGenericINS7_20WebGPUIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_17CompletionHandlerIFvbEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJbEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EBEE0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages15RemoteBindGroup22UpdateExternalTexturesEN6WebKit15RemoteBindGroupES8_FvNS_23ObjectIdentifierGenericINS7_20WebGPUIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_17CompletionHandlerIFvbEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJbEE4callEb(uint64_t result, void *a2)
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12RemoteBuffer8MapAsyncENS2_22StreamServerConnectionEN6WebKit12RemoteBufferES9_FvNS_9OptionSetIN7WebCore6WebGPU7MapModeEEEyNSt3__18optionalIyEEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED1Ev(void *a1)
{
  *a1 = &unk_1F10EBF08;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12RemoteBuffer8MapAsyncENS2_22StreamServerConnectionEN6WebKit12RemoteBufferES9_FvNS_9OptionSetIN7WebCore6WebGPU7MapModeEEEyNSt3__18optionalIyEEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EBF08;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12RemoteBuffer8MapAsyncENS2_22StreamServerConnectionEN6WebKit12RemoteBufferES9_FvNS_9OptionSetIN7WebCore6WebGPU7MapModeEEEyNSt3__18optionalIyEEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEE4callEb(uint64_t a1, void *a2)
{
  v9 = a2;
  v2 = *(a1 + 8);
  v3 = *(*(a1 + 16) + 40);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3490;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = v2;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v10 = v4;
  IPC::Encoder::operator<<<BOOL>(v4, &v9);
  IPC::Connection::sendMessageImpl(v3, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12RemoteBuffer4CopyENS2_22StreamServerConnectionEN6WebKit12RemoteBufferES9_FvONSt3__18optionalIN7WebCore18SharedMemoryHandleEEEyONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED1Ev(void *a1)
{
  *a1 = &unk_1F10EBF30;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12RemoteBuffer4CopyENS2_22StreamServerConnectionEN6WebKit12RemoteBufferES9_FvONSt3__18optionalIN7WebCore18SharedMemoryHandleEEEyONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EBF30;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12RemoteBuffer4CopyENS2_22StreamServerConnectionEN6WebKit12RemoteBufferES9_FvONSt3__18optionalIN7WebCore18SharedMemoryHandleEEEyONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEE4callEb(uint64_t a1, void *a2)
{
  v9 = a2;
  v2 = *(a1 + 8);
  v3 = *(*(a1 + 16) + 40);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3489;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = v2;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v10 = v4;
  IPC::Encoder::operator<<<BOOL>(v4, &v9);
  IPC::Connection::sendMessageImpl(v3, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12RemoteBuffer14GetMappedRangeEN6WebKit12RemoteBufferES8_FvyNSt3__18optionalIyEEONS_17CompletionHandlerIFvONSA_INS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJSI_EED1Ev(void *a1)
{
  *a1 = &unk_1F10EBF58;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12RemoteBuffer14GetMappedRangeEN6WebKit12RemoteBufferES8_FvyNSt3__18optionalIyEEONS_17CompletionHandlerIFvONSA_INS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJSI_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EBF58;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12RemoteBuffer14GetMappedRangeEN6WebKit12RemoteBufferES8_FvyNSt3__18optionalIyEEONS_17CompletionHandlerIFvONSA_INS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJSI_EE4callESI_(uint64_t result, uint64_t a2)
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
      if ((*(a2 + 16) & 1) == 0)
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
      if (*(a2 + 16))
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
  result = IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::StreamConnectionEncoder>(&v15, *a2, *(a2 + 12));
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
  IPC::ArgumentCoder<std::optional<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::Encoder,std::optional<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(v11, a2);
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

unint64_t IPC::ArgumentCoder<std::optional<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::Encoder,std::optional<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v7 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v7);
    if (*(a2 + 16))
    {
      return IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(a1, *a2, *(a2 + 12));
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::Decoder::decode<WebKit::WebGPU::ImageCopyBuffer>(v5, v6);
    }
  }

  else
  {
    v8 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v8);
  }
}

unint64_t IPC::Decoder::decode<WebKit::WebGPU::ImageCopyBuffer>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<WebKit::WebGPU::ImageCopyBuffer,void>::decode(a2, a1);
  if ((*(a1 + 32) & 1) == 0)
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

WTF *IPC::Decoder::decode<WebKit::WebGPU::ImageCopyTexture>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<WebKit::WebGPU::ImageCopyTexture,void>::decode(a1, a2);
  if ((*(a2 + 56) & 1) == 0)
  {
    v5 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    result = a1[3];
    if (result && v5 != 0)
    {
      v7 = *(*result + 16);

      return v7();
    }
  }

  return result;
}

uint64_t mpark::detail::move_assignment<mpark::detail::traits<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin3DDict>,(mpark::detail::Trait)1>::move_assignment(uint64_t a1, uint64_t *a2)
{
  *a1 = 0;
  *(a1 + 16) = -1;
  if (*(a2 + 16) != 255)
  {
    if (*(a2 + 16))
    {
      v4 = *a2;
      *(a1 + 8) = *(a2 + 2);
      *a1 = v4;
    }

    else
    {
      *a1 = 0;
      *(a1 + 8) = 0;
      WTF::VectorBuffer<unsigned short,0ul,WTF::FastMalloc>::adopt(a1, a2);
    }

    *(a1 + 16) = *(a2 + 16);
  }

  return a1;
}

uint64_t *IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,unsigned int>,void>::decode<IPC::Decoder>@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1);
  v6 = result;
  v7 = v5;
  if (v5)
  {
    return IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,unsigned int>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1, &v6, a2);
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

uint64_t *IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,unsigned int>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = result[1];
  v5 = ((result[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v6 = *result;
  v7 = v5 - *result;
  v8 = v4 >= v7;
  v9 = v4 - v7;
  if (v8 && v9 > 3)
  {
    result[2] = (v5 + 1);
    if (!v5)
    {
      v14 = a3;
      v15 = result;
      goto LABEL_14;
    }

    if (*(a2 + 8))
    {
      v11 = *v5;
      *a3 = *a2;
      *(a3 + 2) = v11;
      v12 = 1;
      goto LABEL_9;
    }

    __break(1u);
  }

  v14 = a3;
  v15 = result;
  *result = 0;
  result[1] = 0;
  v13 = result[3];
  if (!v13)
  {
    v4 = 0;
LABEL_13:
    v6 = 0;
    goto LABEL_14;
  }

  if (!v4)
  {
    goto LABEL_13;
  }

  (*(*v13 + 16))(v13);
  v6 = *v15;
  v4 = v15[1];
LABEL_14:
  *v15 = 0;
  v15[1] = 0;
  result = v15[3];
  if (result && v4)
  {
    result = (*(*result + 16))(result, v6);
  }

  v12 = 0;
  a3 = v14;
  *v14 = 0;
LABEL_9:
  a3[16] = v12;
  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages27RemoteCompositorIntegration21RecreateRenderBuffersEN6WebKit27RemoteCompositorIntegrationES8_FviiON7WebCore21DestinationColorSpaceENS9_22AlphaPremultiplicationENS9_6WebGPU13TextureFormatENS_23ObjectIdentifierGenericINS7_20WebGPUIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_17CompletionHandlerIFvONS_6VectorINS_13MachSendRightELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJSQ_EED1Ev(void *a1)
{
  *a1 = &unk_1F10EBF80;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages27RemoteCompositorIntegration21RecreateRenderBuffersEN6WebKit27RemoteCompositorIntegrationES8_FviiON7WebCore21DestinationColorSpaceENS9_22AlphaPremultiplicationENS9_6WebGPU13TextureFormatENS_23ObjectIdentifierGenericINS7_20WebGPUIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_17CompletionHandlerIFvONS_6VectorINS_13MachSendRightELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJSQ_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EBF80;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages27RemoteCompositorIntegration21RecreateRenderBuffersEN6WebKit27RemoteCompositorIntegrationES8_FviiON7WebCore21DestinationColorSpaceENS9_22AlphaPremultiplicationENS9_6WebGPU13TextureFormatENS_23ObjectIdentifierGenericINS7_20WebGPUIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_17CompletionHandlerIFvONS_6VectorINS_13MachSendRightELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJSQ_EE4callESQ_(uint64_t a1, unsigned int *a2)
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
  v13 = v5;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v5, a2[3]);
  v6 = a2[3];
  if (v6)
  {
    v7 = *a2;
    v8 = 4 * v6;
    do
    {
      IPC::Encoder::addAttachment(v5, v7);
      v7 += 4;
      v8 -= 4;
    }

    while (v8);
  }

  if (*(v3 + 120) == 1)
  {

    return std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((v3 + 128), v5);
  }

  else
  {
    IPC::Connection::sendMessageImpl(*(v3 + 40), &v13, 0, 0);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages27RemoteCompositorIntegration17PrepareForDisplayEN6WebKit27RemoteCompositorIntegrationES8_FvjONS_17CompletionHandlerIFvbEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJbEED1Ev(void *a1)
{
  *a1 = &unk_1F10EBFA8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages27RemoteCompositorIntegration17PrepareForDisplayEN6WebKit27RemoteCompositorIntegrationES8_FvjONS_17CompletionHandlerIFvbEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJbEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EBFA8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages27RemoteCompositorIntegration17PrepareForDisplayEN6WebKit27RemoteCompositorIntegrationES8_FvjONS_17CompletionHandlerIFvbEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJbEE4callEb(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3199;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = v3;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v10 = v4;
  IPC::Encoder::operator<<<BOOL>(v4, &v9);
  if (*(v2 + 120) == 1)
  {
    return std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((v2 + 128), v4);
  }

  IPC::Connection::sendMessageImpl(*(v2 + 40), &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v6);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages27RemoteCompositorIntegration30PaintCompositedResultsToCanvasEN6WebKit27RemoteCompositorIntegrationES8_FvNS_23ObjectIdentifierGenericIN7WebCore31RenderingResourceIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEjONS_17CompletionHandlerIFvvEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10EBFD0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages27RemoteCompositorIntegration30PaintCompositedResultsToCanvasEN6WebKit27RemoteCompositorIntegrationES8_FvNS_23ObjectIdentifierGenericIN7WebCore31RenderingResourceIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEjONS_17CompletionHandlerIFvvEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EBFD0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages27RemoteCompositorIntegration30PaintCompositedResultsToCanvasEN6WebKit27RemoteCompositorIntegrationES8_FvNS_23ObjectIdentifierGenericIN7WebCore31RenderingResourceIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEjONS_17CompletionHandlerIFvvEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJEE4callEv(uint64_t result, void *a2)
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

unint64_t IPC::Decoder::decode<std::tuple<unsigned int,unsigned int,unsigned int>>(uint64_t *a1)
{
  result = IPC::ArgumentCoder<std::tuple<unsigned int,unsigned int,unsigned int>,void>::decode<IPC::Decoder>(a1);
  if ((v3 & 0x100000000) == 0)
  {
    v5 = *a1;
    v4 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v6 = a1[3];
    if (v6)
    {
      v7 = v4 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      v8 = result;
      (*(*v6 + 16))(v6, v5);
      return v8;
    }
  }

  return result;
}

unint64_t IPC::ArgumentCoder<std::tuple<unsigned int,unsigned int,unsigned int>,void>::decode<IPC::Decoder>(uint64_t *a1)
{
  v1 = a1[1];
  v2 = ((a1[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v3 = *a1;
  v4 = v2 - *a1;
  v5 = v1 >= v4;
  v6 = v1 - v4;
  if (v5 && v6 > 3)
  {
    a1[2] = (v2 + 1);
    if (v2)
    {
      v8 = *v2;
      v13 = 1;
      v12 = v8;
      return IPC::ArgumentCoder<std::tuple<unsigned int,unsigned int,unsigned int>,void>::decode<IPC::Decoder,unsigned int>(a1, &v12);
    }

    v11 = a1;
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
    v11 = a1;
    v10 = a1[3];
    if (!v10)
    {
      v1 = 0;
LABEL_10:
      v3 = 0;
      goto LABEL_11;
    }

    if (!v1)
    {
      goto LABEL_10;
    }

    (*(*v10 + 16))(v10);
    v3 = *v11;
    v1 = v11[1];
  }

LABEL_11:
  *v11 = 0;
  v11[1] = 0;
  result = v11[3];
  if (result)
  {
    if (v1)
    {
      (*(*result + 16))(result, v3);
    }

    return 0;
  }

  return result;
}

unint64_t IPC::ArgumentCoder<std::tuple<unsigned int,unsigned int,unsigned int>,void>::decode<IPC::Decoder,unsigned int>(uint64_t *a1, int *a2)
{
  v3 = a1[1];
  v4 = ((a1[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = *a1;
  v6 = v4 - *a1;
  v7 = v3 >= v6;
  v8 = v3 - v6;
  if (v7 && v8 > 3)
  {
    a1[2] = (v4 + 1);
    if (v4)
    {
      v10 = *v4;
      v15 = 1;
      v14 = v10;
      return IPC::ArgumentCoder<std::tuple<unsigned int,unsigned int,unsigned int>,void>::decode<IPC::Decoder,unsigned int,unsigned int>(a1, a2, &v14);
    }

    v13 = a1;
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
    v13 = a1;
    v12 = a1[3];
    if (!v12)
    {
      v3 = 0;
LABEL_10:
      v5 = 0;
      goto LABEL_11;
    }

    if (!v3)
    {
      goto LABEL_10;
    }

    (*(*v12 + 16))(v12);
    v5 = *v13;
    v3 = v13[1];
  }

LABEL_11:
  *v13 = 0;
  v13[1] = 0;
  result = v13[3];
  if (result)
  {
    if (v3)
    {
      (*(*result + 16))(result, v5);
    }

    return 0;
  }

  return result;
}

unint64_t IPC::ArgumentCoder<std::tuple<unsigned int,unsigned int,unsigned int>,void>::decode<IPC::Decoder,unsigned int,unsigned int>(uint64_t *a1, int *a2, unsigned int *a3)
{
  v5 = a1[1];
  v6 = (a1[2] + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v7 = *a1;
  v8 = v6 - *a1;
  v9 = v5 >= v8;
  v10 = v5 - v8;
  if (v9 && v10 > 3)
  {
    a1[2] = v6 + 4;
    if (!v6)
    {
      v18 = a1;
      goto LABEL_15;
    }

    if (a2[1] & 1) != 0 && (a3[1])
    {
      v12 = *a2;
      v13 = v12 & 0xFFFFFF00 | (*a3 << 32);
      v14 = v12;
      return v13 | v14;
    }

    __break(1u);
  }

  *a1 = 0;
  a1[1] = 0;
  v18 = a1;
  v16 = a1[3];
  if (!v16)
  {
    v5 = 0;
LABEL_14:
    v7 = 0;
    goto LABEL_15;
  }

  if (!v5)
  {
    goto LABEL_14;
  }

  (*(*v16 + 16))(v16);
  v7 = *v18;
  v5 = v18[1];
LABEL_15:
  *v18 = 0;
  v18[1] = 0;
  v17 = v18[3];
  if (v17 && v5)
  {
    (*(*v17 + 16))(v17, v7);
  }

  v14 = 0;
  v13 = 0;
  return v13 | v14;
}

uint64_t *IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,unsigned long long>,void>::decode<IPC::Decoder>@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1);
  v6 = result;
  v7 = v5;
  if (v5)
  {
    return IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,unsigned long long>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1, &v6, a2);
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

uint64_t *IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,unsigned long long>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = result[1];
  v5 = ((result[2] + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *result;
  v7 = v5 - *result;
  v8 = v4 >= v7;
  v9 = v4 - v7;
  if (v8 && v9 > 7)
  {
    result[2] = (v5 + 1);
    if (!v5)
    {
      v14 = a3;
      v15 = result;
      goto LABEL_14;
    }

    if (*(a2 + 8))
    {
      v11 = *v5;
      *a3 = *a2;
      *(a3 + 1) = v11;
      v12 = 1;
      goto LABEL_9;
    }

    __break(1u);
  }

  v14 = a3;
  v15 = result;
  *result = 0;
  result[1] = 0;
  v13 = result[3];
  if (!v13)
  {
    v4 = 0;
LABEL_13:
    v6 = 0;
    goto LABEL_14;
  }

  if (!v4)
  {
    goto LABEL_13;
  }

  (*(*v13 + 16))(v13);
  v6 = *v15;
  v4 = v15[1];
LABEL_14:
  *v15 = 0;
  v15[1] = 0;
  result = v15[3];
  if (result && v4)
  {
    result = (*(*result + 16))(result, v6);
  }

  v12 = 0;
  a3 = v14;
  *v14 = 0;
LABEL_9:
  a3[16] = v12;
  return result;
}

void IPC::ArgumentCoder<std::tuple<unsigned int,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,void>::decode<IPC::Decoder>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v2 = a1[1];
  v3 = ((a1[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v4 = *a1;
  v5 = v3 - *a1;
  v6 = v2 >= v5;
  v7 = v2 - v5;
  if (v6 && v7 > 3)
  {
    a1[2] = (v3 + 1);
    if (v3)
    {
      v9 = *v3;
      v15 = 1;
      v14 = v9;
      IPC::ArgumentCoder<std::tuple<unsigned int,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,void>::decode<IPC::Decoder,unsigned int>(a1, &v14, a2);
      return;
    }

    v12 = a2;
    v13 = a1;
  }

  else
  {
    v12 = a2;
    v13 = a1;
    *a1 = 0;
    a1[1] = 0;
    v10 = a1[3];
    if (v10)
    {
      if (v2)
      {
        (*(*v10 + 16))(v10);
        v4 = *v13;
        v2 = v13[1];
        goto LABEL_12;
      }
    }

    else
    {
      v2 = 0;
    }

    v4 = 0;
  }

LABEL_12:
  *v13 = 0;
  v13[1] = 0;
  v11 = v13[3];
  if (v11)
  {
    if (v2)
    {
      (*(*v11 + 16))(v11, v4);
    }
  }

  *v12 = 0;
  v12[48] = 0;
}

void IPC::ArgumentCoder<std::tuple<unsigned int,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,void>::decode<IPC::Decoder,unsigned int>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(a1, v10);
  if (v11 & 1) != 0 || ((v6 = *a1, v7 = a1[1], *a1 = 0, a1[1] = 0, (v8 = a1[3]) != 0) ? (v9 = v7 == 0) : (v9 = 1), !v9 && ((*(*v8 + 16))(v8, v6), (v11)))
  {
    IPC::ArgumentCoder<std::tuple<unsigned int,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,void>::decode<IPC::Decoder,unsigned int,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(a1, a2, v10, a3);
  }

  else
  {
    *a3 = 0;
    a3[48] = 0;
  }
}

void IPC::ArgumentCoder<std::tuple<unsigned int,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,void>::decode<IPC::Decoder,unsigned int,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  IPC::ArgumentCoder<std::optional<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder>(a1, &v14);
  if (v17 & 1) != 0 || ((v10 = *a1, v11 = a1[1], *a1 = 0, a1[1] = 0, (v12 = a1[3]) != 0) ? (v13 = v11 == 0) : (v13 = 1), !v13 && ((*(*v12 + 16))(v12, v10), (v17)))
  {
    IPC::ArgumentCoder<std::tuple<unsigned int,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,void>::decode<IPC::Decoder,unsigned int,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(a2, a3, &v14, a4);
    if ((v17 & 1) != 0 && v16 == 1)
    {
      v9 = v14;
      if (v14)
      {
        v14 = 0;
        v15 = 0;
        WTF::fastFree(v9, v8);
      }
    }
  }

  else
  {
    *a4 = 0;
    a4[48] = 0;
  }
}

void IPC::ArgumentCoder<std::tuple<unsigned int,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,void>::decode<IPC::Decoder,unsigned int,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (*(a1 + 4) & 1) != 0 && (*(a2 + 16) & 1) != 0 && (*(a3 + 24))
  {
    *a4 = *a1;
    *(a4 + 8) = *a2;
    *(a4 + 24) = 0;
    v5 = (a4 + 24);
    *(a4 + 40) = 0;
    if (*(a3 + 16) == 1)
    {
      *v5 = 0;
      *(a4 + 32) = 0;
      WTF::VectorBuffer<unsigned short,0ul,WTF::FastMalloc>::adopt(v5, a3);
      *(a4 + 40) = 1;
    }

    *(a4 + 48) = 1;
  }

  else
  {
    __break(1u);
  }
}

uint64_t *IPC::ArgumentCoder<std::optional<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder>@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result;
  v4 = result[1];
  v5 = result[2];
  v6 = *result;
  if (v4 <= &v5[-*result])
  {
    *result = 0;
    result[1] = 0;
    v11 = result[3];
    if (v11)
    {
      if (v4)
      {
        (*(*v11 + 16))(v11);
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
    v12 = v2[3];
    if (v12)
    {
      if (v4)
      {
        (*(*v12 + 16))(v12);
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
      result = IPC::VectorArgumentCoder<true,unsigned int,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(result, v13);
      if (v14 & 1) != 0 || (v9 = *v2, v10 = v2[1], *v2 = 0, v2[1] = 0, (result = v2[3]) != 0) && v10 && (result = (*(*result + 16))(result, v9), (v14))
      {
        *a2 = v13[0];
        *(a2 + 8) = v13[1];
        v8 = 1;
        *(a2 + 16) = 1;
      }

      else
      {
        v8 = 0;
        *a2 = 0;
      }
    }

    else
    {
      *a2 = 0;
      *(a2 + 16) = 0;
      v8 = 1;
    }

    *(a2 + 24) = v8;
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
  *(a2 + 24) = 0;
  return result;
}

uint64_t ___ZN6WebKit21AuthenticationManager20initializeConnectionEPN3IPC10ConnectionE_block_invoke(uint64_t a1, void *a2)
{
  v10[0] = a2;
  if (a2)
  {
    v3 = a2;
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    atomic_fetch_add(v4, 1u);
  }

  v5 = WTF::fastMalloc(0x18);
  v6 = v10[0];
  *v5 = &unk_1F10EC270;
  v5[1] = v6;
  v10[0] = 0;
  v10[1] = 0;
  v5[2] = v4;
  v11 = v5;
  WTF::callOnMainRunLoop();
  v8 = v11;
  v11 = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  return _ZZZN6WebKit21AuthenticationManager20initializeConnectionEPN3IPC10ConnectionEEUb_EN3__0D1Ev(v10, v7);
}

void sub_19D8F8744(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12)
{
  v13 = a12;
  a12 = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  _ZZZN6WebKit21AuthenticationManager20initializeConnectionEPN3IPC10ConnectionEEUb_EN3__0D1Ev(&a10, a2);
  _Unwind_Resume(a1);
}

uint64_t _ZZZN6WebKit21AuthenticationManager20initializeConnectionEPN3IPC10ConnectionEEUb_EN3__0D1Ev(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  if (*a1)
  {
  }

  return a1;
}

unsigned int *__destroy_helper_block_e8_32c99_ZTSN3WTF7WeakPtrIN6WebKit21AuthenticationManagerENS_18DefaultWeakPtrImplENS_12RawPtrTraitsIS3_EEEE(uint64_t a1, void *a2)
{
  result = *(a1 + 32);
  *(a1 + 32) = 0;
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

void WebKit::WebCookieManager::platformSetHTTPCookieAcceptPolicy(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v4 = *(*(a1 + 24) + 8);
  if (!v4)
  {
    __break(0xC471u);
    goto LABEL_18;
  }

  atomic_fetch_add((v4 + 144), 1u);
  v10 = a2;
  v6 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v4 + 248), &v10);
  v7 = v6;
  if (v6)
  {
    ++*(v6 + 8);
  }

  if (atomic_fetch_add((v4 + 144), 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, (v4 + 144));
    (*(*v4 + 24))(v4);
    if (v7)
    {
      goto LABEL_6;
    }
  }

  else if (v6)
  {
LABEL_6:
    WebCore::NetworkStorageSession::nsCookieStorage(&v10, v7);
    if (v10)
    {
      [v10 _cookieStorage];
      CFHTTPCookieStorageSetCookieAcceptPolicy();
      WebKit::saveCookies(v10, a4);
    }

    else
    {
      WTF::CompletionHandler<void ()(void)>::operator()(a4);
    }

    v8 = v10;
    v10 = 0;
    if (v8)
    {
    }

    v9 = *(v7 + 2);
    if (v9)
    {
      *(v7 + 2) = v9 - 1;
      return;
    }

    __break(0xC471u);
LABEL_18:
    JUMPOUT(0x19D8F8964);
  }

  WTF::CompletionHandler<void ()(void)>::operator()(a4);
}

void sub_19D8F8988(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v11 = *(v10 + 8);
  if (v11)
  {
    *(v10 + 8) = v11 - 1;
    _Unwind_Resume(exception_object);
  }

  __break(0xC471u);
}

uint64_t WebKit::LegacyCustomProtocolManager::networkProcessCreated(WebKit::NetworkProcess &)::$_0::operator()<WebKit::LegacyCustomProtocolManager>(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = 0;
    v3 = (a1 + 56);
    atomic_compare_exchange_strong_explicit((v1 + 56), &v2, 1u, memory_order_acquire, memory_order_acquire);
    if (v2)
    {
      v6 = v1;
      v7 = (v1 + 56);
      MEMORY[0x19EB01E30]();
      v1 = v6;
      v3 = v7;
    }

    v1 = *(v1 + 48);
    if (v1)
    {
      v1 = *(v1 - 12) != 0;
    }

    v4 = 1;
    atomic_compare_exchange_strong_explicit(v3, &v4, 0, memory_order_release, memory_order_relaxed);
    if (v4 != 1)
    {
      v8 = v1;
      WTF::Lock::unlockSlow(v3);
      return v8;
    }
  }

  return v1;
}

uint64_t WebKit::NetworkProcess::supplement<WebKit::LegacyCustomProtocolManager>(uint64_t a1)
{
  if ("LegacyCustomProtocolManager" == -1)
  {
    result = 372;
    __break(0xC471u);
  }

  else
  {
    v21 = v1;
    v22 = v2;
    v3 = *(a1 + 224);
    if (v3 && (v4 = *(v3 - 8), v18 = -1640531527, v19 = 0, v20 = 0, WTF::SuperFastHash::addCharacters<char,WTF::StringHasher::DefaultConverter>(&v18, "LegacyCustomProtocolManager", 0x1Bu), v5 = WTF::SuperFastHash::hash(&v18) & v4, v6 = (v3 + 24 * v5), (v7 = v6[1]) != 0))
    {
      for (i = 1; ; ++i)
      {
        if (v7 == 28)
        {
          v9 = *v6;
          if (*v6 != -1)
          {
            v10 = *v9;
            v11 = v9[1];
            v12 = v9[2];
            v13 = *(v9 + 6);
            v14 = v10 == *"LegacyCustomProtocolManager" && v11 == *"stomProtocolManager";
            v15 = v14 && v12 == *"ocolManager";
            if (v15 && v13 == *"ger")
            {
              break;
            }
          }
        }

        v5 = (v5 + i) & v4;
        v6 = (v3 + 24 * v5);
        v7 = v6[1];
        if (!v7)
        {
          return 0;
        }
      }

      return v6[2];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_19D8F8CA4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
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

uint64_t WebKit::LegacyCustomProtocolManager::supportsScheme(atomic_uchar *this, WTF::ASCIICaseInsensitiveHash **a2)
{
  if (!*a2)
  {
    return 0;
  }

  v4 = 0;
  v5 = this + 56;
  atomic_compare_exchange_strong_explicit(this + 56, &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    MEMORY[0x19EB01E30](this + 56);
  }

  v6 = *(this + 6);
  if (v6)
  {
    v7 = *a2;
    if (*a2 == -1 || !v7)
    {
      __break(0xC471u);
      JUMPOUT(0x19D8F8E20);
    }

    v8 = *(v6 - 8);
    v9 = WTF::ASCIICaseInsensitiveHash::hash(v7, a2);
    for (i = 0; ; v9 = i + v11)
    {
      v11 = v9 & v8;
      v12 = *(v6 + 8 * (v9 & v8));
      if (!v12)
      {
        break;
      }

      if (v12 != -1 && WTF::equalIgnoringASCIICaseCommon<WTF::StringImpl,WTF::StringImpl>(v12, *a2))
      {
        v13 = 1;
        goto LABEL_13;
      }

      ++i;
    }
  }

  v13 = 0;
LABEL_13:
  v14 = 1;
  atomic_compare_exchange_strong_explicit(v5, &v14, 0, memory_order_release, memory_order_relaxed);
  if (v14 != 1)
  {
    WTF::Lock::unlockSlow(v5);
  }

  return v13;
}

void sub_19D8F8E44(_Unwind_Exception *exception_object)
{
  v3 = 1;
  atomic_compare_exchange_strong_explicit(v1, &v3, 0, memory_order_release, memory_order_relaxed);
  if (v3 != 1)
  {
    WTF::Lock::unlockSlow(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D8F9150(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D8F9254(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::LegacyCustomProtocolManager::registerProtocolClass(WebKit::LegacyCustomProtocolManager *this, NSURLSessionConfiguration *a2)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = objc_opt_class();
  return -[NSURLSessionConfiguration setProtocolClasses:](a2, "setProtocolClasses:", [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1]);
}

WTF::StringImpl *WebKit::LegacyCustomProtocolManager::registerScheme(WebKit::LegacyCustomProtocolManager *this, WTF::ASCIICaseInsensitiveHash **a2)
{
  v4 = 0;
  v5 = this + 56;
  atomic_compare_exchange_strong_explicit(this + 56, &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    MEMORY[0x19EB01E30](this + 56);
  }

  result = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::ASCIICaseInsensitiveHash,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(this + 6, a2, v8);
  v7 = 1;
  atomic_compare_exchange_strong_explicit(v5, &v7, 0, memory_order_release, memory_order_relaxed);
  if (v7 != 1)
  {
    return WTF::Lock::unlockSlow(v5);
  }

  return result;
}

void sub_19D8F93E8(_Unwind_Exception *exception_object)
{
  v3 = 1;
  atomic_compare_exchange_strong_explicit(v1, &v3, 0, memory_order_release, memory_order_relaxed);
  if (v3 != 1)
  {
    WTF::Lock::unlockSlow(v1);
  }

  _Unwind_Resume(exception_object);
}

WTF::StringImpl *WebKit::LegacyCustomProtocolManager::unregisterScheme(WebKit::LegacyCustomProtocolManager *this, const WTF::String *a2)
{
  v4 = 0;
  v5 = this + 56;
  atomic_compare_exchange_strong_explicit(this + 56, &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    MEMORY[0x19EB01E30](this + 56);
  }

  result = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::ASCIICaseInsensitiveHash,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashTraits<WTF::String>,WTF::ASCIICaseInsensitiveHash>,(WTF::ShouldValidateKey)1,WTF::String>(this + 6, a2);
  v7 = *(this + 6);
  if (v7)
  {
    v8 = (v7 + 8 * *(v7 - 4));
    if (v8 == result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (!result)
    {
      goto LABEL_10;
    }

    v8 = 0;
  }

  if (v8 != result)
  {
    result = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::ASCIICaseInsensitiveHash,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::remove(this + 6, result);
  }

LABEL_10:
  v9 = 1;
  atomic_compare_exchange_strong_explicit(v5, &v9, 0, memory_order_release, memory_order_relaxed);
  if (v9 != 1)
  {

    return WTF::Lock::unlockSlow(v5);
  }

  return result;
}

void sub_19D8F94D8(_Unwind_Exception *exception_object)
{
  v3 = 1;
  atomic_compare_exchange_strong_explicit(v1, &v3, 0, memory_order_release, memory_order_relaxed);
  if (v3 != 1)
  {
    WTF::Lock::unlockSlow(v1);
  }

  _Unwind_Resume(exception_object);
}

void WebKit::LegacyCustomProtocolManager::didFailWithError(uint64_t a1, uint64_t a2, WebCore::ResourceError *a3)
{
  WebKit::LegacyCustomProtocolManager::protocolForID(&v19, a1, a2);
  v6 = v19;
  if (v19)
  {
    v7 = WebCore::ResourceError::nsError(a3);
    v8 = v7;
    if (v7)
    {
      v15 = v7;
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3321888768;
    block[2] = ___ZN6WebKit27LegacyCustomProtocolManager16didFailWithErrorEN3WTF23ObjectIdentifierGenericINS_26LegacyCustomProtocolIDTypeENS1_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEERKN7WebCore13ResourceErrorE_block_invoke;
    block[3] = &__block_descriptor_48_e8_32c40_ZTSN3WTF9RetainPtrI16WKCustomProtocolEE40c30_ZTSN3WTF9RetainPtrI7NSErrorEE_e5_v8__0l;
    v17 = v6;
    v9 = v6;
    v18 = v8;
    if (v8)
    {
      v10 = v8;
    }

    v11 = [v6 initializationRunLoop];
    v12 = v11;
    if (v11)
    {
      CFRetain(v11);
    }

    CFRunLoopPerformBlock(v12, *MEMORY[0x1E695E8E0], block);
    CFRunLoopWakeUp(v12);
    if (v12)
    {
      CFRelease(v12);
    }

    WebKit::LegacyCustomProtocolManager::removeCustomProtocol(a1, a2);
    v13 = v18;
    v18 = 0;
    if (v13)
    {
    }

    v14 = v17;
    v17 = 0;
    if (v14)
    {
    }

    if (v8)
    {
    }
  }
}

void sub_19D8F964C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  if (a14)
  {
  }

  if (v15)
  {
  }

  _Unwind_Resume(a1);
}

char *WebKit::LegacyCustomProtocolManager::protocolForID(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v11 = a3;
  v6 = (a2 + 40);
  atomic_compare_exchange_strong_explicit((a2 + 40), &v5, 1u, memory_order_acquire, memory_order_acquire);
  if (v5)
  {
    MEMORY[0x19EB01E30](a2 + 40);
  }

  result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<WKCustomProtocol>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<WKCustomProtocol>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<WKCustomProtocol>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RetainPtr<WKCustomProtocol>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<WKCustomProtocol>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RetainPtr<WKCustomProtocol>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>((a2 + 32), &v11);
  v8 = *(a2 + 32);
  if (v8)
  {
    v8 += 16 * *(v8 - 1);
  }

  if (v8 == result)
  {
    *a1 = 0;
  }

  else
  {
    v9 = *(result + 1);
    *a1 = v9;
    if (v9)
    {
      result = v9;
    }
  }

  v10 = 1;
  atomic_compare_exchange_strong_explicit(v6, &v10, 0, memory_order_release, memory_order_relaxed);
  if (v10 != 1)
  {
    return WTF::Lock::unlockSlow(v6);
  }

  return result;
}

void sub_19D8F976C(_Unwind_Exception *exception_object)
{
  v3 = 1;
  atomic_compare_exchange_strong_explicit(v1, &v3, 0, memory_order_release, memory_order_relaxed);
  if (v3 != 1)
  {
    WTF::Lock::unlockSlow(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN6WebKit27LegacyCustomProtocolManager16didFailWithErrorEN3WTF23ObjectIdentifierGenericINS_26LegacyCustomProtocolIDTypeENS1_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEERKN7WebCore13ResourceErrorE_block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) client];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v2 URLProtocol:v3 didFailWithError:v4];
}

void *__copy_helper_block_e8_32c40_ZTSN3WTF9RetainPtrI16WKCustomProtocolEE40c30_ZTSN3WTF9RetainPtrI7NSErrorEE(void *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 32);
  result[4] = v4;
  if (v4)
  {
    result = v4;
  }

  v5 = *(a2 + 40);
  v3[5] = v5;
  if (v5)
  {
    return v5;
  }

  return result;
}

void sub_19D8F9818(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 32);
  *(v1 + 32) = 0;
  if (v3)
  {
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_32c40_ZTSN3WTF9RetainPtrI16WKCustomProtocolEE40c30_ZTSN3WTF9RetainPtrI7NSErrorEE(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v2)
  {
  }

  v3 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v3)
  {
  }
}

void WebKit::LegacyCustomProtocolManager::didLoadData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WebKit::LegacyCustomProtocolManager::protocolForID(&v17, a1, a2);
  v6 = v17;
  if (v17)
  {
    v7 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:a3 length:a4];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3321888768;
    block[2] = ___ZN6WebKit27LegacyCustomProtocolManager11didLoadDataEN3WTF23ObjectIdentifierGenericINS_26LegacyCustomProtocolIDTypeENS1_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEENSt3__14spanIKhLm18446744073709551615EEE_block_invoke;
    block[3] = &__block_descriptor_48_e8_32c40_ZTSN3WTF9RetainPtrI16WKCustomProtocolEE40c29_ZTSN3WTF9RetainPtrI6NSDataEE_e5_v8__0l;
    v15 = v6;
    v8 = v6;
    v16 = v7;
    if (v7)
    {
      v9 = v7;
    }

    v10 = [v6 initializationRunLoop];
    v11 = v10;
    if (v10)
    {
      CFRetain(v10);
    }

    CFRunLoopPerformBlock(v11, *MEMORY[0x1E695E8E0], block);
    CFRunLoopWakeUp(v11);
    if (v11)
    {
      CFRelease(v11);
    }

    v12 = v16;
    v16 = 0;
    if (v12)
    {
    }

    v13 = v15;
    v15 = 0;
    if (v13)
    {
    }

    if (v7)
    {
    }
  }
}

void sub_19D8F99C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  if (a14)
  {
  }

  if (v15)
  {
  }

  _Unwind_Resume(a1);
}

uint64_t ___ZN6WebKit27LegacyCustomProtocolManager11didLoadDataEN3WTF23ObjectIdentifierGenericINS_26LegacyCustomProtocolIDTypeENS1_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEENSt3__14spanIKhLm18446744073709551615EEE_block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) client];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v2 URLProtocol:v3 didLoadData:v4];
}

void *__copy_helper_block_e8_32c40_ZTSN3WTF9RetainPtrI16WKCustomProtocolEE40c29_ZTSN3WTF9RetainPtrI6NSDataEE(void *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 32);
  result[4] = v4;
  if (v4)
  {
    result = v4;
  }

  v5 = *(a2 + 40);
  v3[5] = v5;
  if (v5)
  {
    return v5;
  }

  return result;
}

void sub_19D8F9AA8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 32);
  *(v1 + 32) = 0;
  if (v3)
  {
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_32c40_ZTSN3WTF9RetainPtrI16WKCustomProtocolEE40c29_ZTSN3WTF9RetainPtrI6NSDataEE(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v2)
  {
  }

  v3 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v3)
  {
  }
}

void WebKit::LegacyCustomProtocolManager::didReceiveResponse(uint64_t a1, uint64_t a2, WebCore::ResourceResponse *a3, char a4)
{
  WebKit::LegacyCustomProtocolManager::protocolForID(&v23, a1, a2);
  v6 = v23;
  if (v23)
  {
    v7 = WebCore::ResourceResponse::nsURLResponse(a3);
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    v16 = MEMORY[0x1E69E9820];
    v17 = 3321888768;
    v18 = ___ZN6WebKit27LegacyCustomProtocolManager18didReceiveResponseEN3WTF23ObjectIdentifierGenericINS_26LegacyCustomProtocolIDTypeENS1_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEERKN7WebCore16ResourceResponseENS_18CacheStoragePolicyE_block_invoke;
    v19 = &__block_descriptor_49_e8_32c40_ZTSN3WTF9RetainPtrI16WKCustomProtocolEE40c37_ZTSN3WTF9RetainPtrI13NSURLResponseEE_e5_v8__0l;
    v20 = v6;
    v10 = v6;
    v21 = v8;
    if (v8)
    {
      v15 = v8;
    }

    v22 = a4;
    v11 = [v6 initializationRunLoop];
    v12 = v11;
    if (v11)
    {
      CFRetain(v11);
    }

    CFRunLoopPerformBlock(v12, *MEMORY[0x1E695E8E0], &v16);
    CFRunLoopWakeUp(v12);
    if (v12)
    {
      CFRelease(v12);
    }

    v13 = v21;
    v21 = 0;
    if (v13)
    {
    }

    v14 = v20;
    v20 = 0;
    if (v14)
    {
    }

    if (v8)
    {
    }
  }
}

void sub_19D8F9C54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  if (a13)
  {
  }

  if (v14)
  {
  }

  _Unwind_Resume(a1);
}

uint64_t ___ZN6WebKit27LegacyCustomProtocolManager18didReceiveResponseEN3WTF23ObjectIdentifierGenericINS_26LegacyCustomProtocolIDTypeENS1_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEERKN7WebCore16ResourceResponseENS_18CacheStoragePolicyE_block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) client];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (*(a1 + 48) >= 2u)
  {
    v5 = 2;
  }

  else
  {
    v5 = *(a1 + 48);
  }

  return [v2 URLProtocol:v3 didReceiveResponse:v4 cacheStoragePolicy:v5];
}

void *__copy_helper_block_e8_32c40_ZTSN3WTF9RetainPtrI16WKCustomProtocolEE40c37_ZTSN3WTF9RetainPtrI13NSURLResponseEE(void *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 32);
  result[4] = v4;
  if (v4)
  {
    result = v4;
  }

  v5 = *(a2 + 40);
  v3[5] = v5;
  if (v5)
  {
    return v5;
  }

  return result;
}

void sub_19D8F9D58(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 32);
  *(v1 + 32) = 0;
  if (v3)
  {
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_32c40_ZTSN3WTF9RetainPtrI16WKCustomProtocolEE40c37_ZTSN3WTF9RetainPtrI13NSURLResponseEE(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v2)
  {
  }

  v3 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v3)
  {
  }
}

void WebKit::LegacyCustomProtocolManager::didFinishLoading(uint64_t a1, uint64_t a2)
{
  WebKit::LegacyCustomProtocolManager::protocolForID(&v11, a1, a2);
  v4 = v11;
  if (v11)
  {
    v9 = MEMORY[0x1E69E9820];
    v10 = v11;
    v5 = v11;
    v6 = [v4 initializationRunLoop];
    v7 = v6;
    if (v6)
    {
      CFRetain(v6);
    }

    CFRunLoopPerformBlock(v7, *MEMORY[0x1E695E8E0], &v9);
    CFRunLoopWakeUp(v7);
    if (v7)
    {
      CFRelease(v7);
    }

    WebKit::LegacyCustomProtocolManager::removeCustomProtocol(a1, a2);
    v8 = v10;
    v10 = 0;
    if (v8)
    {
    }
  }
}

uint64_t ___ZN6WebKit27LegacyCustomProtocolManager16didFinishLoadingEN3WTF23ObjectIdentifierGenericINS_26LegacyCustomProtocolIDTypeENS1_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEE_block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) client];
  v3 = *(a1 + 32);

  return [v2 URLProtocolDidFinishLoading:v3];
}

void *__copy_helper_block_e8_32c40_ZTSN3WTF9RetainPtrI16WKCustomProtocolEE(void *result, uint64_t a2)
{
  v2 = *(a2 + 32);
  result[4] = v2;
  if (v2)
  {
    return v2;
  }

  return result;
}

void __destroy_helper_block_e8_32c40_ZTSN3WTF9RetainPtrI16WKCustomProtocolEE(uint64_t a1)
{
  v1 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v1)
  {
  }
}

void WebKit::LegacyCustomProtocolManager::wasRedirectedToRequest(uint64_t a1, uint64_t a2, uint64_t a3, WebCore::ResourceResponse *a4)
{
  WebKit::LegacyCustomProtocolManager::protocolForID(&v30, a1, a2);
  v5 = v30;
  if (v30)
  {
    v6 = WebCore::ResourceRequest::nsURLRequest();
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    v9 = WebCore::ResourceResponse::nsURLResponse(a4);
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    v23 = MEMORY[0x1E69E9820];
    v24 = 3321888768;
    v25 = ___ZN6WebKit27LegacyCustomProtocolManager22wasRedirectedToRequestEN3WTF23ObjectIdentifierGenericINS_26LegacyCustomProtocolIDTypeENS1_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEERKN7WebCore15ResourceRequestERKNS7_16ResourceResponseE_block_invoke;
    v26 = &__block_descriptor_56_e8_32c241_ZTSKZN6WebKit27LegacyCustomProtocolManager22wasRedirectedToRequestEN3WTF23ObjectIdentifierGenericINS_26LegacyCustomProtocolIDTypeENS1_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEERKN7WebCore15ResourceRequestERKNS7_16ResourceResponseEE3__0_e5_v8__0l;
    v12 = v5;
    if (v7)
    {
      v13 = v7;
    }

    if (v10)
    {
      v21 = v10;
    }

    v27 = v5;
    v14 = v5;
    v28 = v7;
    if (v7)
    {
      v15 = v7;
    }

    v29 = v10;
    if (v10)
    {
      v22 = v10;
    }

    v16 = [v5 initializationRunLoop];
    v17 = v16;
    if (v16)
    {
      CFRetain(v16);
    }

    CFRunLoopPerformBlock(v17, *MEMORY[0x1E695E8E0], &v23);
    CFRunLoopWakeUp(v17);
    if (v17)
    {
      CFRelease(v17);
    }

    if (v10)
    {

      if (!v7)
      {
        goto LABEL_20;
      }
    }

    else if (!v7)
    {
      goto LABEL_20;
    }

LABEL_20:
    v18 = v29;
    v29 = 0;
    if (v18)
    {
    }

    v19 = v28;
    v28 = 0;
    if (v19)
    {
    }

    v20 = v27;
    v27 = 0;
    if (v20)
    {
    }

    if (v10)
    {

      if (!v7)
      {
        goto LABEL_28;
      }
    }

    else if (!v7)
    {
LABEL_28:

      return;
    }

    goto LABEL_28;
  }
}

void sub_19D8FA114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14)
{
  if (a14)
  {
  }

  if (a13)
  {

    if (!v16)
    {
LABEL_5:
      if (!v15)
      {
        goto LABEL_6;
      }

LABEL_11:

LABEL_6:
      if (v16)
      {

        if (!v15)
        {
          goto LABEL_8;
        }
      }

      else if (!v15)
      {
        goto LABEL_8;
      }

LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_5;
  }

  if (!v15)
  {
    goto LABEL_6;
  }

  goto LABEL_11;
}

uint64_t ___ZN6WebKit27LegacyCustomProtocolManager22wasRedirectedToRequestEN3WTF23ObjectIdentifierGenericINS_26LegacyCustomProtocolIDTypeENS1_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEERKN7WebCore15ResourceRequestERKNS7_16ResourceResponseE_block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) client];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);

  return [v2 URLProtocol:v3 wasRedirectedToRequest:v4 redirectResponse:v5];
}

void *__copy_helper_block_e8_32c241_ZTSKZN6WebKit27LegacyCustomProtocolManager22wasRedirectedToRequestEN3WTF23ObjectIdentifierGenericINS_26LegacyCustomProtocolIDTypeENS1_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEERKN7WebCore15ResourceRequestERKNS7_16ResourceResponseEE3__0(void *result, void *a2)
{
  v3 = result;
  v4 = a2[4];
  result[4] = v4;
  if (v4)
  {
    result = v4;
  }

  v5 = a2[5];
  v3[5] = v5;
  if (v5)
  {
    result = v5;
  }

  v6 = a2[6];
  v3[6] = v6;
  if (v6)
  {
    return v6;
  }

  return result;
}

void sub_19D8FA28C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 40);
  *(v1 + 40) = 0;
  if (v3)
  {
  }

  v4 = *(v1 + 32);
  *(v1 + 32) = 0;
  if (v4)
  {
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_32c241_ZTSKZN6WebKit27LegacyCustomProtocolManager22wasRedirectedToRequestEN3WTF23ObjectIdentifierGenericINS_26LegacyCustomProtocolIDTypeENS1_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEERKN7WebCore15ResourceRequestERKNS7_16ResourceResponseEE3__0(void *a1)
{
  v2 = a1[6];
  a1[6] = 0;
  if (v2)
  {
  }

  v3 = a1[5];
  a1[5] = 0;
  if (v3)
  {
  }

  v4 = a1[4];
  a1[4] = 0;
  if (v4)
  {
  }
}

void WebKit::Download::resume(uint64_t a1, uint64_t a2, uint64_t a3, WTF::FileSystemImpl *a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v76 = *MEMORY[0x1E69E9840];
  if (*a5)
  {
    v14 = WTF::fastMalloc(0x18);
    *v14 = 1;
    v15 = *a5;
    *a5 = 0;
    *(v14 + 8) = v15;
    *(v14 + 16) = 0;
  }

  else
  {
    v14 = 0;
  }

  v16 = *(a1 + 64);
  *(a1 + 64) = v14;
  if (v16)
  {
    WTF::RefCounted<WebKit::SandboxExtension>::deref(v16);
    v14 = *(a1 + 64);
    if (!v14)
    {
      goto LABEL_6;
    }
  }

  else if (!v14)
  {
    goto LABEL_6;
  }

  ++*v14;
  v66 = *(v14 + 16);
  *(v14 + 16) = v66 + 1;
  if (!v66)
  {
    WebKit::SandboxExtensionImpl::consume(*(v14 + 8));
  }

  WTF::RefCounted<WebKit::SandboxExtension>::deref(v14);
LABEL_6:
  v17 = *(a1 + 24);
  if (!v17)
  {
    __break(0xC471u);
    goto LABEL_89;
  }

  v18 = *(v17 + 8);
  if (!v18)
  {
    __break(0xC471u);
    JUMPOUT(0x19D8FAA2CLL);
  }

  (**v18)(v18);
  v19 = (*(*v18 + 104))(v18, *(a1 + 160));
  v20 = v19;
  if (v19)
  {
    ++*(v19 + 16);
    (*(*v18 + 8))(v18);
    if (((*(*v20 + 288))(v20) & 1) == 0)
    {
      __break(0xC471u);
      JUMPOUT(0x19D8FAA4CLL);
    }

    ++*(v20 + 16);
    v21 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:a2 length:a3];
    v22 = [MEMORY[0x1E696AE40] propertyListWithData:v21 options:2 format:0 error:0];
    v23 = v22;
    if (v22)
    {
      v24 = v22;
    }

    v25 = *a4;
    if (*a4)
    {
      atomic_fetch_add_explicit(v25, 2u, memory_order_relaxed);
      MEMORY[0x19EB00B70](buf, v25);
      if (atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v25, v26);
      }
    }

    else
    {
      *buf = &stru_1F1147748;
      v27 = &stru_1F1147748;
    }

    [v23 setObject:*buf forKey:@"NSURLSessionResumeInfoLocalPath"];
    v28 = *buf;
    *buf = 0;
    if (v28)
    {
    }

    v29 = [MEMORY[0x1E696AE40] dataWithPropertyList:v23 format:100 options:0 error:0];
    v30 = v29;
    if (v29)
    {
      v31 = v29;
    }

    v32 = [*(*(v20 + 1136) + 48) downloadTaskWithResumeData:v30];
    v33 = v32;
    if (v32)
    {
      v34 = v32;
    }

    v35 = *(a1 + 80);
    *(a1 + 80) = v33;
    if (v35)
    {

      v33 = *(a1 + 80);
    }

    if (v33)
    {
      v36 = [v33 taskIdentifier];
      if (v36)
      {
        v37 = *(v20 + 1136);
        v72 = v36;
        WTF::HashMap<unsigned long long,WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>&>((v37 + 72), &v72, (a1 + 32), buf);
        v38 = *a4;
        if (*a4)
        {
          atomic_fetch_add_explicit(v38, 2u, memory_order_relaxed);
          MEMORY[0x19EB00B70](buf, v38);
          if (atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v38, v39);
          }
        }

        else
        {
          *buf = &stru_1F1147748;
          v44 = &stru_1F1147748;
        }

        [*(a1 + 80) set_pathToDownloadTaskFile:*buf];
        v45 = *buf;
        *buf = 0;
        if (v45)
        {
        }

        [*(a1 + 80) resume];
        v46 = [v23 objectForKey:@"ResumePlaceholderURLBookmarkData"];
        v47 = v46;
        if (!v46)
        {
          goto LABEL_62;
        }

        v48 = v46;
        v68 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:a6 length:a7];
        v49 = objc_alloc(MEMORY[0x1E696AEC0]);
        WTF::FileSystemImpl::fileSystemRepresentation(buf, a4, v50);
        if (*buf)
        {
          v51 = *buf + 16;
        }

        else
        {
          v51 = 0;
        }

        v53 = [v49 initWithUTF8String:{v51, v68}];
        v54 = *buf;
        *buf = 0;
        if (v54)
        {
          if (*v54 == 1)
          {
            WTF::fastFree(v54, v52);
          }

          else
          {
            --*v54;
          }
        }

        v70 = v53;
        v55 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:v53 isDirectory:0];
        v71 = 0;
        v72 = 0;
        v56 = [objc_alloc(MEMORY[0x1E695DFF8]) initByResolvingBookmarkData:v47 options:0 relativeToURL:0 bookmarkDataIsStale:&v71 error:&v72];
        v57 = [v56 startAccessingSecurityScopedResource];
        if (v56)
        {
          v58 = [[WKModernDownloadProgress alloc] initWithDownloadTask:*(a1 + 80) download:a1 URL:v55 useDownloadPlaceholder:1 resumePlaceholderURL:v56 liveActivityAccessToken:v69];
          v59 = *(a1 + 88);
          *(a1 + 88) = v58;
          if (v59)
          {
          }

          WebKit::Download::startUpdatingProgress(a1);
        }

        else
        {
          v60 = qword_1ED6416F0;
          if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_ERROR))
          {
            v67 = *(a1 + 32);
            *buf = 134218242;
            *&buf[4] = v67;
            v74 = 2112;
            v75 = v72;
            _os_log_error_impl(&dword_19D52D000, v60, OS_LOG_TYPE_ERROR, "[downloadID=%llu] Download::resume: unable to create resume placeholder URL, error = %@", buf, 0x16u);
            if (!v57)
            {
LABEL_51:
              if (v56)
              {
                v61 = v56;
              }

              v62 = *(a1 + 96);
              *(a1 + 96) = v56;
              if (v62)
              {
              }

              if (v56)
              {

                if (!v55)
                {
LABEL_57:
                  if (!v70)
                  {
LABEL_59:
                    if (v69)
                    {
                    }

                    goto LABEL_62;
                  }

LABEL_58:

                  goto LABEL_59;
                }
              }

              else if (!v55)
              {
                goto LABEL_57;
              }

              if (!v70)
              {
                goto LABEL_59;
              }

              goto LABEL_58;
            }

LABEL_50:
            [v56 stopAccessingSecurityScopedResource];
            goto LABEL_51;
          }
        }

        if (!v57)
        {
          goto LABEL_51;
        }

        goto LABEL_50;
      }

      v40 = qword_1ED6416F0;
      if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_ERROR))
      {
        v43 = *(a1 + 32);
        *buf = 134217984;
        *&buf[4] = v43;
        v42 = "[downloadID=%llu] Download::resume: Could not resume download, since task identifier is 0";
        goto LABEL_33;
      }
    }

    else
    {
      v40 = qword_1ED6416F0;
      if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_ERROR))
      {
        v41 = *(a1 + 32);
        *buf = 134217984;
        *&buf[4] = v41;
        v42 = "[downloadID=%llu] Download::resume: Could not create download task from resume data";
LABEL_33:
        _os_log_error_impl(&dword_19D52D000, v40, OS_LOG_TYPE_ERROR, v42, buf, 0xCu);
      }
    }

LABEL_62:
    if (v30)
    {
    }

    if (v23)
    {
    }

    if (v21)
    {
    }

    v63 = *(v20 + 16);
    if (!v63)
    {
      __break(0xC471u);
      JUMPOUT(0x19D8FAA6CLL);
    }

    *(v20 + 16) = v63 - 1;
    if (v63 != 1)
    {
      *(v20 + 16) = v63 - 2;
      return;
    }

    __break(0xC471u);
LABEL_89:
    JUMPOUT(0x19D8FAA0CLL);
  }

  (*(*v18 + 8))(v18);
  v64 = qword_1ED6416F0;
  if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
  {
    v65 = *(a1 + 32);
    *buf = 134217984;
    *&buf[4] = v65;
    _os_log_impl(&dword_19D52D000, v64, OS_LOG_TYPE_DEFAULT, "[downloadID=%llu] Download::resume: Could not find network session with given session ID", buf, 0xCu);
  }
}

uint64_t *WTF::HashMap<unsigned long long,WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>&>@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a2;
  if (*a2 == -1 || !v5)
  {
    __break(0xC471u);
    JUMPOUT(0x19D8FAE3CLL);
  }

  v8 = result;
  v9 = *result;
  if (!*result)
  {
    result = WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned long long>,WTF::FastMalloc>::expand(result, 0);
    v9 = *v8;
    v5 = *a2;
  }

  v10 = *(v9 - 8);
  v11 = (v5 + ~(v5 << 32)) ^ ((v5 + ~(v5 << 32)) >> 22);
  v12 = 9 * ((v11 + ~(v11 << 13)) ^ ((v11 + ~(v11 << 13)) >> 8));
  v13 = (v12 ^ (v12 >> 15)) + ~((v12 ^ (v12 >> 15)) << 27);
  v14 = v10 & ((v13 >> 31) ^ v13);
  v15 = (v9 + 16 * v14);
  v16 = *v15;
  if (*v15)
  {
    v17 = 0;
    v18 = 1;
    do
    {
      if (v16 == v5)
      {
        v21 = 0;
        v22 = v9 + 16 * *(v9 - 4);
        goto LABEL_23;
      }

      if (v16 == -1)
      {
        v17 = v15;
      }

      v14 = (v14 + v18) & v10;
      v15 = (v9 + 16 * v14);
      v16 = *v15;
      ++v18;
    }

    while (*v15);
    if (v17)
    {
      *v17 = 0;
      v17[1] = 0;
      --*(*v8 - 16);
      v5 = *a2;
      v15 = v17;
    }
  }

  *v15 = v5;
  v15[1] = *a3;
  v19 = *v8;
  if (*v8)
  {
    v20 = *(v19 - 12) + 1;
  }

  else
  {
    v20 = 1;
  }

  *(v19 - 12) = v20;
  v23 = (*(v19 - 16) + v20);
  v24 = *(v19 - 4);
  if (v24 > 0x400)
  {
    if (v24 <= 2 * v23)
    {
LABEL_19:
      result = WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned long long>,WTF::FastMalloc>::expand(v8, v15);
      v15 = result;
      v19 = *v8;
      if (*v8)
      {
        v24 = *(v19 - 4);
      }

      else
      {
        v24 = 0;
      }
    }
  }

  else if (3 * v24 <= 4 * v23)
  {
    goto LABEL_19;
  }

  v22 = v19 + 16 * v24;
  v21 = 1;
LABEL_23:
  *a4 = v15;
  *(a4 + 8) = v22;
  *(a4 + 16) = v21;
  return result;
}

uint64_t WebKit::Download::startUpdatingProgress(WebKit::Download *this)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED6416F0;
  if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(this + 4);
    *v16 = 134217984;
    *&v16[4] = v3;
    _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "[downloadID=%llu] Download::startUpdatingProgress", v16, 0xCu);
  }

  *(this + 120) = 1;
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {
    v5 = *(this + 11);
    [v5 startUpdatingDownloadProgress];
    v6 = (*(*this + 56))(this);
    v8 = IPC::Encoder::operator new(0x238, v7);
    *v8 = 17;
    *(v8 + 2) = 0;
    *(v8 + 3) = 0;
    *(v8 + 1) = v6;
    *(v8 + 68) = 0;
    *(v8 + 70) = 0;
    *(v8 + 69) = 0;
    IPC::Encoder::encodeHeader(v8);
    *v16 = v8;
    (*(*this + 32))(this, v16, 0);
    result = *v16;
    *v16 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v9);
      result = bmalloc::api::tzoneFree(v14, v15);
    }

    if (!*(this + 10) && *(this + 136) == 1 && *(this + 152) == 1)
    {
      v10 = qword_1ED6416F0;
      if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT) && (v11 = *(this + 4), v12 = *(this + 16), v13 = *(this + 18), *v16 = 134218496, *&v16[4] = v11, v17 = 2048, v18 = v12, v19 = 2048, v20 = v13, _os_log_impl(&dword_19D52D000, v10, OS_LOG_TYPE_DEFAULT, "[downloadID=%llu] Download::startUpdatingProgress: m_totalBytesWritten=%llu, m_totalBytesExpectedToWrite=%llu", v16, 0x20u), (*(this + 152) & 1) == 0) || ([v5 setTotalUnitCount:{*(this + 18), *v16}], (*(this + 136) & 1) == 0))
      {
        __break(1u);
      }

      return [v5 setCompletedUnitCount:*(this + 16)];
    }
  }

  return result;
}

void sub_19D8FB0A0(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, IPC::Encoder *a9)
{
  if (a9)
  {
    IPC::Encoder::~Encoder(a9, a2);
    bmalloc::api::tzoneFree(v10, v11);
  }

  _Unwind_Resume(exception_object);
}

void WebKit::Download::platformCancelNetworkLoad(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 80);
  v3 = *a2;
  *a2 = 0;
  v4 = *(a1 + 96);
  if (v4)
  {
    v5 = v4;
  }

  v6 = malloc_type_malloc(0x30uLL, 0x10E0040331879E5uLL);
  *v6 = MEMORY[0x1E69E9818];
  v6[1] = 50331650;
  v6[2] = WTF::BlockPtr<void ()(NSData *)>::fromCallable<WebKit::Download::platformCancelNetworkLoad(WTF::CompletionHandler<void ()(std::span<unsigned char const,18446744073709551615ul>)> &&)::$_0>(WebKit::Download::platformCancelNetworkLoad(WTF::CompletionHandler<void ()(std::span<unsigned char const,18446744073709551615ul>)> &&)::$_0)::{lambda(void *,NSData *)#1}::__invoke;
  v6[3] = &WTF::BlockPtr<void ()(NSData *)>::fromCallable<WebKit::Download::platformCancelNetworkLoad(WTF::CompletionHandler<void ()(std::span<unsigned char const,18446744073709551615ul>)> &&)::$_0>(WebKit::Download::platformCancelNetworkLoad(WTF::CompletionHandler<void ()(std::span<unsigned char const,18446744073709551615ul>)> &&)::$_0)::descriptor;
  v6[4] = v3;
  v6[5] = v4;
  [v2 cancelByProducingResumeData:v6];

  _Block_release(v6);
}

void sub_19D8FB184(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void WebKit::Download::publishProgress(WebKit::Download *a1, WTF::URL *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v42 = *MEMORY[0x1E69E9840];
  v14 = qword_1ED6416F0;
  if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a1 + 4);
    *buf = 134218240;
    v39 = v15;
    v40 = 1024;
    LODWORD(v41) = a5;
    _os_log_impl(&dword_19D52D000, v14, OS_LOG_TYPE_DEFAULT, "[downloadID=%llu] Download::publishProgress: isUsingPlaceholder=%d", buf, 0x12u);
  }

  if (*(a1 + 11))
  {
    v16 = qword_1ED6416F0;
    if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 4);
      *buf = 134217984;
      v39 = v17;
      _os_log_impl(&dword_19D52D000, v16, OS_LOG_TYPE_DEFAULT, "[downloadID=%llu] Download::publishProgress: Progress is already being published for download.", buf, 0xCu);
    }

    return;
  }

  v18 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:a3 length:a4];
  v19 = v18;
  if (v18)
  {
    v20 = v18;
  }

  v21 = *(a1 + 13);
  *(a1 + 13) = v19;
  if (v21)
  {
  }

  v22 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:a6 length:a7];
  v37 = 0;
  v36 = 0;
  v23 = [MEMORY[0x1E695DFF8] URLByResolvingBookmarkData:*(a1 + 13) options:256 relativeToURL:0 bookmarkDataIsStale:&v37 error:&v36];
  v24 = v23;
  if (v23)
  {
    v25 = v23;
  }

  v26 = *(a1 + 14);
  *(a1 + 14) = v24;
  if (v26)
  {

    if (*(a1 + 14))
    {
      goto LABEL_18;
    }
  }

  else if (v24)
  {
    goto LABEL_18;
  }

  v27 = qword_1ED6416F0;
  if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
  {
    v28 = *(a1 + 4);
    *buf = 134218242;
    v39 = v28;
    v40 = 2112;
    v41 = v36;
    _os_log_impl(&dword_19D52D000, v27, OS_LOG_TYPE_DEFAULT, "[downloadID=%llu] Download::publishProgress: Unable to create bookmark URL, error = %@", buf, 0x16u);
  }

LABEL_18:
  WTF::URL::createCFURL(&v35, a2);
  if (v35)
  {
    v29 = [WKModernDownloadProgress alloc];
    v30 = [(WKModernDownloadProgress *)v29 initWithDownloadTask:*(a1 + 10) download:a1 URL:v35 useDownloadPlaceholder:a5 resumePlaceholderURL:0 liveActivityAccessToken:v22];
    v31 = *(a1 + 11);
    *(a1 + 11) = v30;
    if (v31)
    {
    }

    if ((a5 & 1) == 0)
    {
      WebKit::Download::startUpdatingProgress(a1);
    }

    goto LABEL_25;
  }

  v32 = qword_1ED6416F0;
  if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
  {
    v33 = *(a1 + 4);
    *buf = 134217984;
    v39 = v33;
    _os_log_impl(&dword_19D52D000, v32, OS_LOG_TYPE_DEFAULT, "[downloadID=%llu] Download::publishProgress: Invalid publish URL", buf, 0xCu);
LABEL_25:
    v34 = v35;
    v35 = 0;
    if (v34)
    {
    }
  }

  if (v22)
  {
  }

  if (v19)
  {
  }
}

void sub_19D8FB4E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  if (v11)
  {
  }

  if (v10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::Download::setPlaceholderURL(WebKit::Download *this, NSURL *a2, NSData *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = qword_1ED6416F0;
  if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(this + 4);
    *buf = 134217984;
    *&buf[4] = v7;
    _os_log_impl(&dword_19D52D000, v6, OS_LOG_TYPE_DEFAULT, "[downloadID=%llu] Download::setPlaceholderURL", buf, 0xCu);
  }

  if (a2)
  {
    v8 = a2;
    v9 = *(this + 12);
    *(this + 12) = a2;
    if (v9)
    {
    }

    v10 = [(NSURL *)a2 startAccessingSecurityScopedResource];
    v32 = 0;
    v11 = [(NSURL *)a2 fileSystemRepresentation];
    WTF::String::fromUTF8(v33, v11, v12);
    if (v33[0])
    {
      v13 = *(v33[0] + 1);
      v14 = *(v33[0] + 1) | (((*(v33[0] + 4) >> 2) & 1) << 32);
    }

    else
    {
      v13 = 0;
      v14 = 0x100000000;
    }

    WebKit::SandboxExtension::createHandleWithoutResolvingPath(v13, v14, 0, buf);
    v16 = v33[0];
    v33[0] = 0;
    if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v15);
    }

    if (buf[8] == 1)
    {
      v17 = *buf;
      *buf = 0;
      v32 = v17;
      WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(buf);
    }

    if (v10)
    {
      [(NSURL *)a2 stopAccessingSecurityScopedResource];
    }

    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(this + 2, this);
    v18 = *(this + 1);
    atomic_fetch_add(v18, 1u);
    v19 = WTF::fastMalloc(0x18);
    *v19 = &unk_1F10EC2E8;
    v19[1] = v18;
    v19[2] = this;
    MEMORY[0x19EB01DE0](buf, a2);
    if (a3)
    {
      v20 = [(NSData *)a3 bytes];
      a3 = [(NSData *)a3 length];
    }

    else
    {
      v20 = 0;
    }

    v21 = (*(*this + 56))(this);
    v23 = IPC::Encoder::operator new(0x238, v22);
    *v23 = 15;
    *(v23 + 2) = 0;
    *(v23 + 3) = 0;
    *(v23 + 1) = v21;
    *(v23 + 68) = 0;
    *(v23 + 70) = 0;
    *(v23 + 69) = 0;
    IPC::Encoder::encodeHeader(v23);
    v34 = v23;
    IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v23, buf);
    IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(v23, v20, a3);
    IPC::ArgumentCoder<WebKit::SandboxExtensionHandle,void>::encode(v23, &v32);
    v24 = WTF::fastMalloc(0x10);
    *v24 = &unk_1F10EC310;
    *(v24 + 1) = v19;
    if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
    {
      __break(0xC471u);
    }

    else
    {
      IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
      v33[0] = v24;
      v33[1] = IdentifierInternal;
      (*(*this + 40))(this, &v34, v33, 0);
      v27 = v33[0];
      v33[0] = 0;
      if (v27)
      {
        (*(*v27 + 8))(v27);
      }

      v28 = v34;
      v34 = 0;
      if (v28)
      {
        IPC::Encoder::~Encoder(v28, v26);
        bmalloc::api::tzoneFree(v30, v31);
      }

      v29 = *buf;
      *buf = 0;
      if (v29)
      {
        if (atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v29, v26);
        }
      }

      WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v32);
    }
  }
}

void WebKit::Download::setFinalURL(WebKit::Download *this, NSURL *a2, NSData *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = qword_1ED6416F0;
  if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(this + 4);
    *buf = 134217984;
    *&buf[4] = v7;
    _os_log_impl(&dword_19D52D000, v6, OS_LOG_TYPE_DEFAULT, "[downloadID=%llu] Download::setFinalURL", buf, 0xCu);
  }

  if (a2)
  {
    v8 = [(NSURL *)a2 startAccessingSecurityScopedResource];
    v25 = 0;
    v9 = [(NSURL *)a2 fileSystemRepresentation];
    WTF::String::fromUTF8(&v26, v9, v10);
    if (v26)
    {
      v11 = *(v26 + 1);
      v12 = *(v26 + 1) | (((*(v26 + 4) >> 2) & 1) << 32);
    }

    else
    {
      v11 = 0;
      v12 = 0x100000000;
    }

    WebKit::SandboxExtension::createHandleWithoutResolvingPath(v11, v12, 0, buf);
    v14 = v26;
    v26 = 0;
    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v13);
    }

    if (buf[8] == 1)
    {
      v15 = *buf;
      *buf = 0;
      v25 = v15;
      WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(buf);
    }

    if (v8)
    {
      [(NSURL *)a2 stopAccessingSecurityScopedResource];
    }

    MEMORY[0x19EB01DE0](buf, a2);
    if (a3)
    {
      v16 = [(NSData *)a3 bytes];
      a3 = [(NSData *)a3 length];
    }

    else
    {
      v16 = 0;
    }

    v17 = (*(*this + 56))(this);
    v19 = IPC::Encoder::operator new(0x238, v18);
    *v19 = 14;
    *(v19 + 2) = 0;
    *(v19 + 3) = 0;
    *(v19 + 1) = v17;
    *(v19 + 68) = 0;
    *(v19 + 70) = 0;
    *(v19 + 69) = 0;
    IPC::Encoder::encodeHeader(v19);
    v26 = v19;
    IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v19, buf);
    IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(v19, v16, a3);
    IPC::ArgumentCoder<WebKit::SandboxExtensionHandle,void>::encode(v19, &v25);
    (*(*this + 32))(this, &v26, 0);
    v21 = v26;
    v26 = 0;
    if (v21)
    {
      IPC::Encoder::~Encoder(v21, v20);
      bmalloc::api::tzoneFree(v23, v24);
    }

    v22 = *buf;
    *buf = 0;
    if (v22)
    {
      if (atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v22, v20);
      }
    }

    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v25);
  }
}

uint64_t WebKit::Download::updateProgress(uint64_t this, uint64_t a2, uint64_t a3)
{
  *(this + 128) = a2;
  *(this + 136) = 1;
  *(this + 144) = a3;
  *(this + 152) = 1;
  if (*(this + 120) == 1)
  {
    v5 = this;
    objc_opt_class();
    this = objc_opt_isKindOfClass();
    if ((this & 1) != 0 && !*(v5 + 80))
    {
      v6 = *(v5 + 88);
      [v6 setTotalUnitCount:a3];

      return [v6 setCompletedUnitCount:a2];
    }
  }

  return this;
}

void WebKit::Download::updateResumeDataWithPlaceholderURL(void *a1@<X0>, char *a2@<X1>, WTF *a3@<X2>, uint64_t a4@<X8>)
{
  if (!a1)
  {
    v21 = qword_1ED6416F0;
    if (!os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_ERROR))
    {
LABEL_21:
      WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector<unsigned char const,18446744073709551615ul>(a4, a2, a3);
      return;
    }

    LOWORD(v25[0]) = 0;
    v22 = "Download::updateResumeDataWithPlaceholderURL: placeholderURL equals nil.";
    v23 = v25;
LABEL_24:
    _os_log_error_impl(&dword_19D52D000, v21, OS_LOG_TYPE_ERROR, v22, v23, 2u);
    goto LABEL_21;
  }

  v8 = [a1 startAccessingSecurityScopedResource];
  v25[0] = 0;
  v9 = [a1 bookmarkDataWithOptions:0 includingResourceValuesForKeys:0 relativeToURL:0 error:v25];
  if (!v9)
  {
    v21 = qword_1ED6416F0;
    if (!os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    LOWORD(v24[0]) = 0;
    v22 = "Download::updateResumeDataWithPlaceholderURL: could not create bookmark data from placeholderURL.";
    v23 = v24;
    goto LABEL_24;
  }

  v10 = v9;
  v11 = v9;
  v12 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:a2 length:a3];
  v13 = [MEMORY[0x1E696AE40] propertyListWithData:v12 options:2 format:0 error:0];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  [v14 setObject:v10 forKey:@"ResumePlaceholderURLBookmarkData"];
  v24[0] = 0;
  v16 = [MEMORY[0x1E696AE40] dataWithPropertyList:v14 format:100 options:0 error:v24];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  if (v8)
  {
    [a1 stopAccessingSecurityScopedResource];
  }

  if (v17)
  {
    v19 = [v17 bytes];
    v20 = [v17 length];
  }

  else
  {
    v19 = 0;
    v20 = 0;
  }

  WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector<unsigned char const,18446744073709551615ul>(a4, v19, v20);
  if (v17)
  {
  }

  if (v14)
  {
  }

  if (v12)
  {
  }
}

void sub_19D8FC004(_Unwind_Exception *a1)
{
  if (v3)
  {
  }

  if (v2)
  {
  }

  _Unwind_Resume(a1);
}

void WebKit::Download::platformDidFinish(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 88) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = *(a1 + 88);
    v5 = *a2;
    *a2 = 0;
    v6 = malloc_type_malloc(0x28uLL, 0x10E004053C0834CuLL);
    *v6 = MEMORY[0x1E69E9818];
    v6[1] = 50331650;
    v6[2] = WTF::BlockPtr<void ()(void)>::fromCallable<WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)>)::{lambda(void *)#1}::__invoke;
    v6[3] = &WTF::BlockPtr<void ()(void)>::fromCallable<WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)>)::descriptor;
    v6[4] = v5;
    [v4 didFinish:v6];

    _Block_release(v6);
  }

  else
  {

    WTF::CompletionHandler<void ()(void)>::operator()(a2);
  }
}

uint64_t IPC::MessageSender::sendWithoutUsingIPCConnection<Messages::PushClientConnection::InitializeConnection>(uint64_t a1, uint64_t *a2)
{
  v4 = (*(*a1 + 56))(a1);
  v6 = IPC::Encoder::operator new(0x238, v5);
  *v6 = 899;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = v4;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v13 = v6;
  IPC::ArgumentCoder<WebKit::WebPushD::WebPushDaemonConnectionConfiguration,void>::encode(v6, *a2);
  v8 = (*(*a1 + 16))(a1, &v13);
  v9 = v13;
  v13 = 0;
  if (v9)
  {
    IPC::Encoder::~Encoder(v9, v7);
    bmalloc::api::tzoneFree(v11, v12);
  }

  return v8;
}

void sub_19D8FC2B0(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, IPC::Encoder *a10)
{
  if (a10)
  {
    IPC::Encoder::~Encoder(a10, a2);
    bmalloc::api::tzoneFree(v11, v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::WebPushD::Connection::performSendWithoutUsingIPCConnection(xpc_connection_t *a1, void **a2)
{
  WebKit::WebPushD::messageDictionaryFromEncoder(&v5, a2);
  v3 = v5;
  (*(*a1 + 2))(a1);
  xpc_connection_send_message(a1[3], v3);
  if (v3)
  {
  }

  return 1;
}

void sub_19D8FC348(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::WebPushD::messageDictionaryFromEncoder(void *a1, void **a2)
{
  WebKit::encoderToXPCData(a2, &value);
  v3 = xpc_dictionary_create(0, 0, 0);
  *a1 = v3;
  xpc_dictionary_set_uint64(v3, "protocol version", 5uLL);
  xpc_dictionary_set_value(v3, "encoded message", value);
  if (value)
  {
  }
}

void sub_19D8FC3D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::WebPushD::Connection::performSendWithAsyncReplyWithoutUsingIPCConnection(void *a1, void **a2, uint64_t *a3)
{
  WebKit::WebPushD::messageDictionaryFromEncoder(&v10, a2);
  v5 = v10;
  v6 = *a3;
  *a3 = 0;
  v7 = WTF::fastMalloc(0x10);
  *v7 = &unk_1F10EC398;
  v7[1] = v6;
  v9 = v7;
  WebKit::Daemon::Connection::sendWithReply(a1, v5, &v9);
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  if (v5)
  {
  }

  return 1;
}

void sub_19D8FC4D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    (*(*a9 + 8))(a9);
  }

  if (v9)
  {
  }

  _Unwind_Resume(exception_object);
}

WTF *WebKit::PCM::Connection::newConnectionWasInitialized(WTF *this)
{
  v1 = *(this + 5);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      if (*(v2 + 24) >= -1 && *(v2 + 168) == 1)
      {
        v3 = this;
        v8 = 0;
        v9 = 0;
        LOBYTE(v6) = 1;
        WebKit::Daemon::Encoder::encodeFixedLengthData(&v8, &v6, 1uLL);
        WebKit::Daemon::Encoder::takeBuffer(&v8, &v6);
        WebKit::Daemon::ConnectionToMachService<WebKit::PCM::ConnectionTraits>::send(v3, 5, &v6);
        v5 = v6;
        if (v6)
        {
          v6 = 0;
          v7 = 0;
          WTF::fastFree(v5, v4);
        }

        this = v8;
        if (v8)
        {
          v8 = 0;
          LODWORD(v9) = 0;
          return WTF::fastFree(this, v4);
        }
      }
    }
  }

  return this;
}

void sub_19D8FC61C(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF *a9, int a10, WTF *a11, int a12)
{
  if (a9)
  {
    WTF::fastFree(a9, a2);
  }

  if (a11)
  {
    WTF::fastFree(a11, a2);
  }

  _Unwind_Resume(exception_object);
}

WTF *WebKit::Daemon::Encoder::takeBuffer@<X0>(WebKit::Daemon::Encoder *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a2, this);
  result = *this;
  if (*this)
  {
    *this = 0;
    *(this + 2) = 0;
    result = WTF::fastFree(result, v3);
  }

  *this = 0;
  *(this + 1) = 0;
  return result;
}

void sub_19D8FC6A4(_Unwind_Exception *exception_object, void *a2)
{
  v4 = *v2;
  if (*v2)
  {
    *v2 = 0;
    *(v2 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::PCM::Connection::connectionReceivedEvent(uint64_t a1, id a2)
{
  result = object_getClass(a2);
  if (result == MEMORY[0x1E69E9E80])
  {
    result = xpc_dictionary_get_string(a2, "debug message");
    if (result)
    {
      strlen(result);
      result = WTF::String::fromUTF8();
      if (v10)
      {
        uint64 = xpc_dictionary_get_uint64(a2, "debug message level");
        v7 = *(a1 + 40);
        if (v7)
        {
          v8 = *(v7 + 8);
          if (v8)
          {
            ++*(v8 + 16);
            WebKit::NetworkProcess::broadcastConsoleMessage(*(v8 + 32), *(v8 + 24), 14, uint64, &v10);
            v9 = *(v8 + 16);
            if (!v9)
            {
              result = 290;
              __break(0xC471u);
              return result;
            }

            *(v8 + 16) = v9 - 1;
          }
        }

        result = v10;
        v10 = 0;
        if (result)
        {
          if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            return WTF::StringImpl::destroy(result, v6);
          }
        }
      }
    }
  }

  return result;
}

void sub_19D8FC7DC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
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

void WebKit::PCM::Connection::dictionaryFromMessage(unsigned int a1@<W1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  *a3 = v6;
  WebKit::PCM::addVersionAndEncodedMessageToDictionary(a2, v6);
  xpc_dictionary_set_uint64(v6, "message type", a1);
}

void sub_19D8FC870(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::WebPushD::Connection::~Connection(WebKit::WebPushD::Connection *this, WTF::StringImpl *a2)
{
  v3 = *(this + 9);
  *(this + 9) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *(this + 8);
  *(this + 8) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *(this + 6);
  if (v5)
  {
    *(this + 6) = 0;
    *(this + 14) = 0;
    WTF::fastFree(v5, a2);
  }

  WebKit::Daemon::ConnectionToMachService<WebKit::WebPushD::ConnectionTraits>::~ConnectionToMachService(this, a2);
}

{
  v3 = *(this + 9);
  *(this + 9) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *(this + 8);
  *(this + 8) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *(this + 6);
  if (v5)
  {
    *(this + 6) = 0;
    *(this + 14) = 0;
    WTF::fastFree(v5, a2);
  }

  WebKit::Daemon::ConnectionToMachService<WebKit::WebPushD::ConnectionTraits>::~ConnectionToMachService(this, a2);

  bmalloc::api::tzoneFree(v6, v7);
}

void non-virtual thunk toWebKit::WebPushD::Connection::~Connection(WebKit::WebPushD::Connection *this, WTF::StringImpl *a2)
{
  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *(this + 3);
  *(this + 3) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *(this + 1);
  if (v5)
  {
    *(this + 1) = 0;
    *(this + 4) = 0;
    WTF::fastFree(v5, a2);
  }

  WebKit::Daemon::ConnectionToMachService<WebKit::WebPushD::ConnectionTraits>::~ConnectionToMachService((this - 40), a2);
}

{
  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *(this + 3);
  *(this + 3) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *(this + 1);
  if (v5)
  {
    *(this + 1) = 0;
    *(this + 4) = 0;
    WTF::fastFree(v5, a2);
  }

  WebKit::Daemon::ConnectionToMachService<WebKit::WebPushD::ConnectionTraits>::~ConnectionToMachService((this - 40), a2);

  bmalloc::api::tzoneFree(v6, v7);
}

void WebKit::PCM::Connection::~Connection(WebKit::PCM::Connection *this, void *a2)
{
  v3 = *(this + 5);
  *(this + 5) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  WebKit::Daemon::ConnectionToMachService<WebKit::PCM::ConnectionTraits>::~ConnectionToMachService(this, a2);
}

{
  v3 = *(this + 5);
  *(this + 5) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  WebKit::Daemon::ConnectionToMachService<WebKit::PCM::ConnectionTraits>::~ConnectionToMachService(this, a2);

  WTF::fastFree(v4, v5);
}

uint64_t WTF::BlockPtr<void ()(NSData *)>::fromCallable<WebKit::Download::platformCancelNetworkLoad(WTF::CompletionHandler<void ()(std::span<unsigned char const,18446744073709551615ul>)> &&)::$_0>(WebKit::Download::platformCancelNetworkLoad(WTF::CompletionHandler<void ()(std::span<unsigned char const,18446744073709551615ul>)> &&)::$_0)::{lambda(void const*)#1}::__invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v2)
  {
  }

  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result)
  {
    v4 = *(*result + 8);

    return v4();
  }

  return result;
}

uint64_t WTF::BlockPtr<void ()(NSData *)>::fromCallable<WebKit::Download::platformCancelNetworkLoad(WTF::CompletionHandler<void ()(std::span<unsigned char const,18446744073709551615ul>)> &&)::$_0>(WebKit::Download::platformCancelNetworkLoad(WTF::CompletionHandler<void ()(std::span<unsigned char const,18446744073709551615ul>)> &&)::$_0)::{lambda(void *,NSData *)#1}::__invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v4 = a2;
  }

  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v7 = WTF::fastMalloc(0x20);
  *v7 = &unk_1F10EC228;
  v7[1] = a2;
  v7[2] = v5;
  v7[3] = v6;
  v9 = v7;
  WTF::ensureOnMainRunLoop();
  result = v9;
  if (v9)
  {
    return (*(*v9 + 8))(v9);
  }

  return result;
}

void sub_19D8FCCB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

void *WTF::Detail::CallableWrapper<WebKit::Download::platformCancelNetworkLoad(WTF::CompletionHandler<void ()(std::span<unsigned char const,18446744073709551615ul>)> &&)::$_0::operator()(NSData *)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F10EC228;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
  }

  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4)
  {
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::Download::platformCancelNetworkLoad(WTF::CompletionHandler<void ()(std::span<unsigned char const,18446744073709551615ul>)> &&)::$_0::operator()(NSData *)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F10EC228;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 1);
  *(this + 1) = 0;
  if (v5)
  {
  }

  return WTF::fastFree(this, a2);
}

WTF *WTF::Detail::CallableWrapper<WebKit::Download::platformCancelNetworkLoad(WTF::CompletionHandler<void ()(std::span<unsigned char const,18446744073709551615ul>)> &&)::$_0::operator()(NSData *)::{lambda(void)#1},void>::call(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = [*(a1 + 8) bytes];
    v5 = [v3 length];
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  WebKit::Download::updateResumeDataWithPlaceholderURL(v2, v4, v5, &v8);
  WTF::CompletionHandler<void ()(std::span<unsigned char const,18446744073709551615ul>)>::operator()((a1 + 16));
  result = v8;
  if (v8)
  {
    v8 = 0;
    v9 = 0;
    return WTF::fastFree(result, v6);
  }

  return result;
}

void sub_19D8FCF0C(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF *a9, int a10)
{
  if (a9)
  {
    WTF::fastFree(a9, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::CompletionHandler<void ()(std::span<unsigned char const,18446744073709551615ul>)>::operator()(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

uint64_t WTF::BlockPtr<void ()(void)>::fromCallable<WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)>)::{lambda(void const*)#1}::__invoke(uint64_t a1)
{
  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void WebKit::Daemon::ConnectionToMachService<WebKit::WebPushD::ConnectionTraits>::~ConnectionToMachService(WebKit::Daemon::Connection *this, void *a2)
{
  *this = &unk_1F10EC400;
  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3)
  {
    if (*v3 == 1)
    {
      WTF::fastFree(v3, a2);
    }

    else
    {
      --*v3;
    }
  }

  WebKit::Daemon::Connection::~Connection(this, a2);
}

void WebKit::Daemon::Connection::~Connection(WebKit::Daemon::Connection *this, void *a2)
{
  *this = &unk_1F10EC440;
  v3 = *(this + 3);
  if (v3)
  {
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
  WebKit::Daemon::Connection::~Connection(this, a2);

  WTF::fastFree(v2, v3);
}

void WebKit::Daemon::ConnectionToMachService<WebKit::PCM::ConnectionTraits>::~ConnectionToMachService(WebKit::Daemon::Connection *this, void *a2)
{
  *this = &unk_1F10EC3C0;
  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3)
  {
    if (*v3 == 1)
    {
      WTF::fastFree(v3, a2);
    }

    else
    {
      --*v3;
    }
  }

  WebKit::Daemon::Connection::~Connection(this, a2);
}

void *_ZN3WTF6Detail15CallableWrapperIZZN6WebKit21AuthenticationManager20initializeConnectionEPN3IPC10ConnectionEEUb_E3__0vJEED1Ev(void *a1, void *a2)
{
  *a1 = &unk_1F10EC270;
  v3 = a1[2];
  a1[2] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  v4 = a1[1];
  if (v4)
  {
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit21AuthenticationManager20initializeConnectionEPN3IPC10ConnectionEEUb_E3__0vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EC270;
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
  }

  return WTF::fastFree(this, a2);
}

void _ZZZN6WebKit21AuthenticationManager20initializeConnectionEPN3IPC10ConnectionEEUb_ENK3__0clEv(WTF *a1)
{
  if ((WTF::isMainRunLoop(a1) & 1) == 0)
  {
    __break(0xC471u);
    goto LABEL_49;
  }

  Class = object_getClass(*a1);
  if (Class != MEMORY[0x1E69E9E98])
  {
    v3 = *(a1 + 1);
    if (v3)
    {
      v4 = *(v3 + 8);
      if (Class == MEMORY[0x1E69E9E80] && v4 != 0)
      {
        WTF::xpcDictionaryGetString(*a1, "message-name", v35);
        v7 = MEMORY[0x19EB01EF0](v35[0], "client-certificate-credential", 29);
        v8 = v35[0];
        v35[0] = 0;
        if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v8, v6);
        }

        if (v7)
        {
          uint64 = xpc_dictionary_get_uint64(*a1, "challenge-id");
          if (uint64)
          {
            v10 = uint64;
            value = xpc_dictionary_get_value(*a1, "sec-key-proxy-endpoint");
            if (value)
            {
              v12 = value;
              v13 = value;
              if (object_getClass(v12) != MEMORY[0x1E69E9E90])
              {
LABEL_14:

                return;
              }

              v14 = objc_alloc_init(MEMORY[0x1E696B0E0]);
              [v14 _setEndpoint:v12];
              v37 = 0;
              v15 = [MEMORY[0x1E697AAB0] createIdentityFromEndpoint:v14 error:&v37];
              if (!v15 || v37)
              {
LABEL_38:
                if (!v15)
                {
                  goto LABEL_40;
                }

                goto LABEL_39;
              }

              v34 = v15;
              array = xpc_dictionary_get_array(*a1, "certificates");
              v17 = array;
              if (!array)
              {
LABEL_39:
                CFRelease(v15);
LABEL_40:
                if (v14)
                {
                }

                goto LABEL_14;
              }

              v18 = array;
              v36 = 0;
              count = xpc_array_get_count(v17);
              if (count)
              {
                WTF::OSObjectPtr<NSObject  {objcproto13OS_xpc_object}*>::operator=(&v36, [MEMORY[0x1E695DF70] arrayWithCapacity:count]);
                v20 = 0;
                while (1)
                {
                  v21 = xpc_array_get_value(v17, v20);
                  v22 = v21;
                  if (v21)
                  {
                    v23 = v21;
                  }

                  bytes_ptr = xpc_data_get_bytes_ptr(v22);
                  length = xpc_data_get_length(v22);
                  v26 = CFDataCreate(0, bytes_ptr, length);
                  v27 = SecCertificateCreateWithData(0, v26);
                  if (!v27)
                  {
                    break;
                  }

                  [v36 addObject:v27];
                  CFRelease(v27);
                  if (v26)
                  {
                    CFRelease(v26);
                  }

                  if (v22)
                  {
                  }

                  if (count == ++v20)
                  {
                    goto LABEL_30;
                  }
                }

                if (v26)
                {
                  CFRelease(v26);
                }

                v15 = v34;
                if (!v22)
                {
                  goto LABEL_35;
                }

                goto LABEL_45;
              }

LABEL_30:
              v28 = xpc_dictionary_get_uint64(*a1, "persistence");
              v15 = v34;
              if (v28 > 3)
              {
LABEL_35:
                v33 = v36;
                v36 = 0;
                if (v33)
                {
                }

                goto LABEL_38;
              }

              v29 = *(a1 + 1);
              if (!v29 || (v30 = *(v29 + 8)) == 0)
              {
                __break(0xC471u);
                JUMPOUT(0x19D8FD620);
              }

              if (v10 != -1)
              {
                v31 = objc_alloc(MEMORY[0x1E695AC48]);
                v22 = [v31 initWithIdentity:v34 certificates:v36 persistence:v28];
                MEMORY[0x19EB02B50](v35, v22);
                WebKit::AuthenticationManager::completeAuthenticationChallenge(v30 - 8, v10, 0, v35);
                WebCore::Credential::~Credential(v35, v32);
                if (v22)
                {
LABEL_45:

                  goto LABEL_35;
                }

                goto LABEL_35;
              }

              __break(0xC471u);
LABEL_49:
              JUMPOUT(0x19D8FD600);
            }
          }
        }
      }
    }
  }
}

void sub_19D8FD644(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf, WTF::StringImpl *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  WebCore::Credential::~Credential(&a11, a2);
  if (v18)
  {
  }

  v20 = a15;
  a15 = 0;
  if (v20)
  {
  }

  CFRelease(cf);
  if (v16)
  {
  }

  _Unwind_Resume(a1);
}

void WebCore::Credential::~Credential(WebCore::Credential *this, WTF::StringImpl *a2)
{
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *this;
  *this = 0;
  if (v5)
  {
    if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, a2);
    }
  }
}

void sub_19D8FDB0C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    if (atomic_fetch_add(v1 + 36, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v1 + 36);
      (*(*v1 + 24))(v1);
    }
  }

  _Unwind_Resume(exception_object);
}

WTF::StringImpl *WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::ASCIICaseInsensitiveHash,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>@<X0>(uint64_t *a1@<X0>, WTF::ASCIICaseInsensitiveHash **a2@<X1>, uint64_t a3@<X8>)
{
  if (*a2 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19D8FDD30);
  }

  if (!*a2)
  {
    __break(0xC471u);
    JUMPOUT(0x19D8FDD50);
  }

  v6 = *a1;
  if (*a1 || (WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::ASCIICaseInsensitiveHash,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(a1, 0), (v6 = *a1) != 0))
  {
    v7 = *(v6 - 8);
  }

  else
  {
    v7 = 0;
  }

  v8 = WTF::ASCIICaseInsensitiveHash::hash(*a2, a2);
  v10 = 0;
  for (i = 1; ; ++i)
  {
    v12 = v8 & v7;
    v13 = (v6 + 8 * (v8 & v7));
    result = *v13;
    if (!*v13)
    {
      if (v10)
      {
        result = 0;
        *v10 = 0;
        --*(*a1 - 16);
        v13 = v10;
      }

      v15 = *a2;
      if (*a2)
      {
        atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed);
        result = *v13;
      }

      *v13 = v15;
      if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v9);
      }

      v16 = *a1;
      if (*a1)
      {
        v17 = *(v16 - 12) + 1;
      }

      else
      {
        v17 = 1;
      }

      *(v16 - 12) = v17;
      v18 = (*(v16 - 16) + v17);
      v19 = *(v16 - 4);
      if (v19 > 0x400)
      {
        if (v19 > 2 * v18)
        {
          goto LABEL_16;
        }
      }

      else if (3 * v19 > 4 * v18)
      {
LABEL_16:
        v20 = v16 + 8 * v19;
        v21 = 1;
        goto LABEL_17;
      }

      result = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::ASCIICaseInsensitiveHash,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(a1, v13);
      v13 = result;
      v16 = *a1;
      if (*a1)
      {
        v19 = *(v16 - 4);
      }

      else
      {
        v19 = 0;
      }

      goto LABEL_16;
    }

    if (result != -1)
    {
      break;
    }

    v10 = (v6 + 8 * v12);
LABEL_25:
    v8 = i + v12;
  }

  result = WTF::equalIgnoringASCIICaseCommon<WTF::StringImpl,WTF::StringImpl>(result, *a2);
  if (!result)
  {
    goto LABEL_25;
  }

  v22 = *a1;
  if (*a1)
  {
    v23 = *(v22 - 4);
  }

  else
  {
    v23 = 0;
  }

  v21 = 0;
  v20 = v22 + 8 * v23;
LABEL_17:
  *a3 = v13;
  *(a3 + 8) = v20;
  *(a3 + 16) = v21;
  return result;
}

WTF::StringImpl **WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::ASCIICaseInsensitiveHash,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(uint64_t *a1, WTF::ASCIICaseInsensitiveHash **a2)
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

  return WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::ASCIICaseInsensitiveHash,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

WTF::StringImpl **WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::ASCIICaseInsensitiveHash,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, WTF::ASCIICaseInsensitiveHash **a3)
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
  v11 = 0;
  if (v7)
  {
    v13 = v6;
    v14 = v7;
    do
    {
      if (*v13 != -1)
      {
        if (*v13)
        {
          v15 = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::ASCIICaseInsensitiveHash,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::reinsert(a1, v13);
          v16 = *v13;
          *v13 = 0;
          if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v16, v10);
          }

          if (v13 == a3)
          {
            v11 = v15;
          }
        }

        else
        {
          *v13 = 0;
        }
      }

      ++v13;
      --v14;
    }

    while (v14);
    goto LABEL_15;
  }

  result = 0;
  if (v6)
  {
LABEL_15:
    WTF::fastFree((v6 - 16), v10);
    return v11;
  }

  return result;
}

WTF::StringImpl **WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::ASCIICaseInsensitiveHash,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::reinsert(uint64_t *a1, WTF::ASCIICaseInsensitiveHash **a2)
{
  v4 = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::ASCIICaseInsensitiveHash,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::lookupForReinsert(a1, a2);
  v5 = *v4;
  *v4 = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v3);
  }

  v6 = *a2;
  *a2 = 0;
  *v4 = v6;
  return v4;
}

uint64_t WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::ASCIICaseInsensitiveHash,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::lookupForReinsert(uint64_t *a1, WTF::ASCIICaseInsensitiveHash **a2)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = *(v2 - 8);
  }

  else
  {
    v3 = 0;
  }

  v4 = WTF::ASCIICaseInsensitiveHash::hash(*a2, a2);
  v5 = 0;
  do
  {
    v6 = v4 & v3;
    v4 = ++v5 + v6;
  }

  while (*(v2 + 8 * v6));
  return v2 + 8 * v6;
}

BOOL WTF::equalIgnoringASCIICaseWithLength<unsigned char,unsigned char>(_BOOL8 result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a5)
  {
    v5 = 0;
    v6 = 0;
    while (a2 != v6 && a4 != v6)
    {
      if (*(MEMORY[0x1E696EBB8] + *(result + v6)) == *(MEMORY[0x1E696EBB8] + *(a3 + v6)))
      {
        v5 = ++v6 >= a5;
        if (a5 != v6)
        {
          continue;
        }
      }

      return v5;
    }

    __break(1u);
  }

  else
  {
    return 1;
  }

  return result;
}

BOOL WTF::equalIgnoringASCIICaseWithLength<unsigned char,char16_t>(_BOOL8 result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a5)
  {
    v5 = 0;
    v6 = 0;
    while (a2 != v6 && a4 != v6)
    {
      if ((*(a3 + 2 * v6) | (32 * (*(a3 + 2 * v6) - 65 < 0x1A))) == *(MEMORY[0x1E696EBB8] + *(result + v6)))
      {
        v5 = ++v6 >= a5;
        if (a5 != v6)
        {
          continue;
        }
      }

      return v5;
    }

    __break(1u);
  }

  else
  {
    return 1;
  }

  return result;
}

BOOL WTF::equalIgnoringASCIICaseWithLength<char16_t,unsigned char>(_BOOL8 result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a5)
  {
    v5 = 0;
    v6 = 0;
    while (a2 != v6 && a4 != v6)
    {
      if ((*(result + 2 * v6) | (32 * (*(result + 2 * v6) - 65 < 0x1A))) == *(MEMORY[0x1E696EBB8] + *(a3 + v6)))
      {
        v5 = ++v6 >= a5;
        if (a5 != v6)
        {
          continue;
        }
      }

      return v5;
    }

    __break(1u);
  }

  else
  {
    return 1;
  }

  return result;
}

BOOL WTF::equalIgnoringASCIICaseWithLength<char16_t,char16_t>(_BOOL8 result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a5)
  {
    v5 = 0;
    v6 = 0;
    while (a2 != v6 && a4 != v6)
    {
      if ((*(result + 2 * v6) | (32 * (*(result + 2 * v6) - 65 < 0x1A))) == (*(a3 + 2 * v6) | (32 * (*(a3 + 2 * v6) - 65 < 0x1A))))
      {
        v5 = ++v6 >= a5;
        if (a5 != v6)
        {
          continue;
        }
      }

      return v5;
    }

    __break(1u);
  }

  else
  {
    return 1;
  }

  return result;
}

WTF::StringImpl **WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::ASCIICaseInsensitiveHash,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::remove(uint64_t *a1, WTF::StringImpl *a2)
{
  result = *a2;
  *a2 = -1;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, a2);
  }

  v4 = *a1;
  v5 = vadd_s32(*(*a1 - 16), 0xFFFFFFFF00000001);
  *(v4 - 16) = v5;
  v6 = *(v4 - 4);
  if (6 * v5.i32[1] < v6 && v6 >= 9)
  {

    return WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::ASCIICaseInsensitiveHash,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(a1, v6 >> 1, 0);
  }

  return result;
}

uint64_t WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::ASCIICaseInsensitiveHash,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashTraits<WTF::String>,WTF::ASCIICaseInsensitiveHash>,(WTF::ShouldValidateKey)1,WTF::String>(uint64_t *a1, const WTF::StringImpl *a2)
{
  if (!*a1)
  {
    return 0;
  }

  result = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::ASCIICaseInsensitiveHash,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashTraits<WTF::String>,WTF::ASCIICaseInsensitiveHash>,(WTF::ShouldValidateKey)1,WTF::String>(a1, a2);
  v4 = *a1;
  if (!result)
  {
    if (v4)
    {
      return v4 + 8 * *(v4 - 4);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::ASCIICaseInsensitiveHash,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashTraits<WTF::String>,WTF::ASCIICaseInsensitiveHash>,(WTF::ShouldValidateKey)1,WTF::String>(uint64_t *a1, const WTF::StringImpl *a2)
{
  v3 = *a2;
  if (*a2 == -1 || !v3)
  {
    __break(0xC471u);
    JUMPOUT(0x19D8FE2B4);
  }

  v4 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v6 = *(v4 - 8);
  v7 = WTF::ASCIICaseInsensitiveHash::hash(v3, a2);
  for (i = 0; ; v7 = i + v9)
  {
    v9 = v7 & v6;
    result = *(v4 + 8 * v9);
    if (!result)
    {
      break;
    }

    if (result != -1 && WTF::equalIgnoringASCIICaseCommon<WTF::StringImpl,WTF::StringImpl>(result, *a2))
    {
      return v4 + 8 * v9;
    }

    ++i;
  }

  return result;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<WKCustomProtocol>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<WKCustomProtocol>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<WKCustomProtocol>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RetainPtr<WKCustomProtocol>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<WKCustomProtocol>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RetainPtr<WKCustomProtocol>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t *a2)
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
    JUMPOUT(0x19D8FE3A8);
  }

  v4 = *(v2 - 8);
  v5 = (v3 + ~(v3 << 32)) ^ ((v3 + ~(v3 << 32)) >> 22);
  v6 = 9 * ((v5 + ~(v5 << 13)) ^ ((v5 + ~(v5 << 13)) >> 8));
  v7 = (v6 ^ (v6 >> 15)) + ~((v6 ^ (v6 >> 15)) << 27);
  v8 = v4 & ((v7 >> 31) ^ v7);
  v9 = *(v2 + 16 * v8);
  if (v9 == v3)
  {
    return v2 + 16 * v8;
  }

  v10 = 1;
  while (v9)
  {
    v8 = (v8 + v10) & v4;
    v9 = *(v2 + 16 * v8);
    ++v10;
    if (v9 == v3)
    {
      return v2 + 16 * v8;
    }
  }

  return v2 + 16 * *(v2 - 4);
}

_OWORD *WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned long long>,WTF::FastMalloc>::expand(uint64_t *a1, void *a2)
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

  return WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned long long>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

_OWORD *WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned long long>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, void *a3)
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

void *WTF::Detail::CallableWrapper<WebKit::Download::setPlaceholderURL(NSURL *,NSData *)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F10EC2E8;
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::Download::setPlaceholderURL(NSURL *,NSData *)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10EC2E8;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::Download::setPlaceholderURL(NSURL *,NSData *)::$_0,void>::call(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    if (*(v1 + 8))
    {
      return WebKit::Download::startUpdatingProgress(*(result + 16));
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::DownloadProxy::DidReceivePlaceholderURL,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F10EC310;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::DownloadProxy::DidReceivePlaceholderURL,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10EC310;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

void WebKit::NetworkServiceInitializerDelegate::~NetworkServiceInitializerDelegate(WebKit::NetworkServiceInitializerDelegate *this)
{
  *this = &unk_1F10F20B8;
  v1 = *(this + 1);
  if (v1)
  {
  }
}

{
  *this = &unk_1F10F20B8;
  v1 = *(this + 1);
  if (v1)
  {
  }

  JUMPOUT(0x19EB14CF0);
}

void *WTF::Detail::CallableWrapper<WebKit::WebPushD::Connection::performSendWithAsyncReplyWithoutUsingIPCConnection(WTF::UniqueRef<IPC::Encoder> &&,WTF::CompletionHandler<void ()(IPC::Decoder *)> &&)::$_0,void,NSObject  {objcproto13OS_xpc_object}*>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F10EC398;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebPushD::Connection::performSendWithAsyncReplyWithoutUsingIPCConnection(WTF::UniqueRef<IPC::Encoder> &&,WTF::CompletionHandler<void ()(IPC::Decoder *)> &&)::$_0,void,NSObject  {objcproto13OS_xpc_object}*>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10EC398;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Decoder *WTF::Detail::CallableWrapper<WebKit::WebPushD::Connection::performSendWithAsyncReplyWithoutUsingIPCConnection(WTF::UniqueRef<IPC::Encoder> &&,WTF::CompletionHandler<void ()(IPC::Decoder *)> &&)::$_0,void,NSObject  {objcproto13OS_xpc_object}*>::call(uint64_t a1, id a2)
{
  if (object_getClass(a2) == MEMORY[0x1E69E9E80] && xpc_dictionary_get_uint64(a2, "protocol version") == 5)
  {
    length[0] = 0;
    data = xpc_dictionary_get_data(a2, "encoded message", length);
    v5 = length[0];
    length[0] = 0;
    length[1] = 0;
    IPC::Decoder::create(v5, data, length, &v11);
    WTF::Vector<WTF::MachSendRight,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(length, v6);
    WTF::CompletionHandler<void ()(IPC::Decoder *)>::operator()((a1 + 8));
    result = v11;
    v11 = 0;
    if (result)
    {
      IPC::Decoder::~Decoder(result);
      return bmalloc::api::tzoneFree(v8, v9);
    }
  }

  else
  {

    return WTF::CompletionHandler<void ()(IPC::Decoder *)>::operator()((a1 + 8));
  }

  return result;
}

void sub_19D8FE9B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, IPC::Decoder *a12)
{
  if (a12)
  {
    IPC::Decoder::~Decoder(a12);
    bmalloc::api::tzoneFree(v13, v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::CompletionHandler<void ()(IPC::Decoder *)>::operator()(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

uint64_t WTF::Vector<WTF::MachSendRight,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v6 = *a1;
    v7 = 4 * v3;
    do
    {
      WTF::MachSendRight::~MachSendRight(v6);
      v6 = (v8 + 4);
      v7 -= 4;
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

uint64_t WebKit::RemoteComputePipeline::didReceiveStreamMessage(WebKit::RemoteComputePipeline *this, IPC::StreamServerConnection *a2, IPC::Decoder *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = *(*(this + 5) + 8);
  if (v3)
  {
    if ((*(v3 + 56) & 0x4000) != 0)
    {
      atomic_fetch_add(this + 2, 1u);
      v10 = *(a3 + 25);
      switch(v10)
      {
        case 0x3FBu:
          IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a3, v19);
          if (v19[8] & 1) != 0 || (v11 = *a3, v12 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (result = *(a3 + 3)) != 0) && v12 && (result = (*(*result + 16))(result, v11), (v19[8]))
          {
            result = WebKit::RemoteComputePipeline::setLabel(this, v19);
            if (v19[8])
            {
              result = *v19;
              *v19 = 0;
              if (result)
              {
                if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  result = WTF::StringImpl::destroy(result, v11);
                }
              }
            }
          }

          break;
        case 0x3FAu:
          IPC::ArgumentCoder<std::tuple<unsigned int,WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(a3, v19);
          if (v19[16] & 1) != 0 || (v11 = *a3, v12 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (result = *(a3 + 3)) != 0) && v12 && (result = (*(*result + 16))(result, v11), (v19[16]))
          {
            result = WebKit::RemoteComputePipeline::getBindGroupLayout(this, *v19, *&v19[8]);
          }

          break;
        case 0x3F9u:
          result = WebKit::RemoteCompositorIntegration::destruct(this);
          break;
        default:
          v13 = qword_1ED6416C8;
          if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
          {
            if (v10 >= 0x107F)
            {
              v16 = 4223;
            }

            else
            {
              v16 = v10;
            }

            v17 = (&IPC::Detail::messageDescriptions)[3 * v16];
            v18 = *(a3 + 7);
            *v19 = 136315394;
            *&v19[4] = v17;
            *&v19[12] = 2048;
            *&v19[14] = v18;
            _os_log_error_impl(&dword_19D52D000, v13, OS_LOG_TYPE_ERROR, "Unhandled stream message %s to %llu", v19, 0x16u);
          }

          v11 = *a3;
          v12 = *(a3 + 1);
          *a3 = 0;
          *(a3 + 1) = 0;
          result = *(a3 + 3);
          if (result && v12)
          {
            result = (*(*result + 16))(result, v11);
          }

          break;
      }

      if (atomic_fetch_add(this + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, this + 2);
        return (*(*this + 8))(this, v11, v12);
      }
    }

    else
    {
      v5 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        v14 = *(a3 + 25);
        if (v14 >= 0x107F)
        {
          v14 = 4223;
        }

        v15 = (&IPC::Detail::messageDescriptions)[3 * v14];
        *v19 = 136315138;
        *&v19[4] = v15;
        _os_log_error_impl(&dword_19D52D000, v5, OS_LOG_TYPE_ERROR, "Message %s received by a disabled message receiver RemoteComputePipeline", v19, 0xCu);
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
    }
  }

  else
  {
    result = 92;
    __break(0xC471u);
  }

  return result;
}

void WebKit::RemoteDevice::didReceiveStreamMessage(WebKit::RemoteDevice *this, atomic_uint *a2, IPC::Decoder *a3)
{
  v175 = *MEMORY[0x1E69E9840];
  v3 = *(*(this + 20) + 8);
  if (!v3)
  {
    __break(0xC471u);
    JUMPOUT(0x19D900290);
  }

  v4 = a3;
  if ((*(v3 + 56) & 0x4000) == 0)
  {
    v5 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
    {
      v17 = *(v4 + 25);
      if (v17 >= 0x107F)
      {
        v17 = 4223;
      }

      v18 = (&IPC::Detail::messageDescriptions)[3 * v17];
      *buf = 136315138;
      *&buf[4] = v18;
      _os_log_error_impl(&dword_19D52D000, v5, OS_LOG_TYPE_ERROR, "Message %s received by a disabled message receiver RemoteDevice", buf, 0xCu);
    }

    v6 = *v4;
    v7 = *(v4 + 1);
    *v4 = 0;
    *(v4 + 1) = 0;
    v8 = *(v4 + 3);
    if (v8)
    {
      if (v7)
      {
        (*(*v8 + 16))(v8, v6);
      }
    }

    return;
  }

  atomic_fetch_add(this + 2, 1u);
  v10 = *(a3 + 25);
  switch(*(a3 + 25))
  {
    case 0x3FC:
      IPC::ArgumentCoder<WebKit::WebGPU::BindGroupDescriptor,void>::decode(a3, v156);
      if ((v158 & 1) == 0)
      {
        v130 = *v4;
        v131 = *(v4 + 1);
        *v4 = 0;
        *(v4 + 1) = 0;
        v132 = *(v4 + 3);
        if (!v132)
        {
          goto LABEL_201;
        }

        if (!v131)
        {
          goto LABEL_201;
        }

        (*(*v132 + 16))(v132, v130);
        if ((v158 & 1) == 0)
        {
          goto LABEL_201;
        }
      }

      v12 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(v4);
      v14 = v12;
      v15 = v13;
      if (v13)
      {
        if ((v158 & 1) == 0)
        {
          goto LABEL_242;
        }

        *buf = *v156;
        v156[0] = 0;
        *&buf[16] = v156[2];
        v16 = v157;
        v156[2] = 0;
        v157 = 0;
        v165 = v16;
        *&v166 = v12;
        BYTE8(v166) = 1;
      }

      else
      {
        buf[0] = 0;
        BYTE8(v166) = 0;
        if ((v158 & 1) == 0)
        {
          goto LABEL_201;
        }

        v98 = v156[2];
        if (v156[2])
        {
          v156[2] = 0;
          LODWORD(v157) = 0;
          WTF::fastFree(v98, v13);
        }
      }

      v99 = v156[0];
      v156[0] = 0;
      if (v99 && atomic_fetch_add_explicit(v99, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v99, v13);
      }

      if ((v15 & 1) == 0)
      {
        goto LABEL_201;
      }

      WebKit::RemoteDevice::createBindGroup(this, buf, v14);
      if (BYTE8(v166))
      {
        v100 = *&buf[16];
        if (!*&buf[16])
        {
          goto LABEL_235;
        }

        *&buf[16] = 0;
        LODWORD(v165) = 0;
        goto LABEL_213;
      }

      goto LABEL_301;
    case 0x3FD:
      IPC::ArgumentCoder<WebKit::WebGPU::BindGroupLayoutDescriptor,void>::decode(a3, v156);
      if ((v157 & 1) == 0)
      {
        goto LABEL_311;
      }

      v38 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(v4);
      v40 = v39;
      if (v39)
      {
        v10 = v38;
        v41 = *v156;
        v156[0] = 0;
        *buf = v41;
        *&buf[16] = v156[2];
        v165 = v38;
        LOBYTE(v166) = 1;
      }

      else
      {
        buf[0] = 0;
        LOBYTE(v166) = 0;
        if (v156[1])
        {
          WTF::fastFree(v156[1], v39);
        }
      }

      v110 = v156[0];
      if (v156[0] && atomic_fetch_add_explicit(v156[0], 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v110, v39);
      }

      if ((v40 & 1) == 0)
      {
        goto LABEL_201;
      }

      WebKit::RemoteDevice::createBindGroupLayout(this, buf, v10);
      if (v166)
      {
        goto LABEL_211;
      }

      goto LABEL_301;
    case 0x3FE:
      IPC::ArgumentCoder<WebKit::WebGPU::BufferDescriptor,void>::decode(a3, v156);
      if ((v157 & 1) == 0)
      {
        v124 = *v4;
        v125 = *(v4 + 1);
        *v4 = 0;
        *(v4 + 1) = 0;
        v126 = *(v4 + 3);
        if (!v126)
        {
          goto LABEL_201;
        }

        if (!v125)
        {
          goto LABEL_201;
        }

        (*(*v126 + 16))(v126, v124);
        if ((v157 & 1) == 0)
        {
          goto LABEL_201;
        }
      }

      v29 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(v4);
      if ((v23 & 1) == 0)
      {
        if (v157)
        {
          goto LABEL_139;
        }

        goto LABEL_201;
      }

      if ((v157 & 1) == 0)
      {
        goto LABEL_242;
      }

      *buf = v156[0];
      *&buf[8] = v156[1];
      *&buf[15] = *(&v156[1] + 7);
      v165 = v29;
      LOBYTE(v166) = 1;
      WebKit::RemoteDevice::createBuffer(this, buf, v29);
      if (v166)
      {
        goto LABEL_235;
      }

      goto LABEL_301;
    case 0x3FF:
      v30 = *(a3 + 1);
      v31 = *(v4 + 2);
      v32 = *v4;
      if (v30 <= &v31[-*v4])
      {
        *v4 = 0;
        *(v4 + 1) = 0;
        v147 = *(v4 + 3);
        if (v147)
        {
          if (v30)
          {
            (*(*v147 + 16))(v147);
            v30 = *(v4 + 1);
          }
        }

        else
        {
          v30 = 0;
        }
      }

      else
      {
        *(v4 + 2) = v31 + 1;
        if (v31)
        {
          v33 = *v31;
          if (v33 >= 2)
          {
            goto LABEL_310;
          }

          if (!v33)
          {
            v111 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(v4);
            buf[0] = 0;
            if ((v112 & 1) == 0)
            {
              goto LABEL_201;
            }

            v36 = v111;
            buf[8] = 0;
LABEL_194:
            *&buf[16] = v36;
            LOBYTE(v165) = 1;
            WebKit::RemoteDevice::createCommandEncoder(this, buf, v36);
            if ((v165 & 1) != 0 && buf[8] == 1)
            {
              goto LABEL_235;
            }

            goto LABEL_301;
          }

          IPC::ArgumentCoder<WebCore::ApplePayAMSUIRequest,void>::decode(v4, buf);
          if (buf[8])
          {
            v34 = *buf;
            v35 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(v4);
            if (v23)
            {
              v36 = v35;
              *buf = v34;
              buf[8] = 1;
              goto LABEL_194;
            }

            if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              v97 = v34;
              goto LABEL_200;
            }

LABEL_201:
            v19 = *v4;
            v20 = *(v4 + 1);
            *v4 = 0;
            *(v4 + 1) = 0;
            v113 = *(v4 + 3);
            if (v113)
            {
              goto LABEL_202;
            }

            goto LABEL_301;
          }

          goto LABEL_309;
        }
      }

      *v4 = 0;
      *(v4 + 1) = 0;
      v148 = *(v4 + 3);
      if (v148)
      {
        if (v30)
        {
          (*(*v148 + 16))(v148);
LABEL_309:
          v32 = *v4;
          v30 = *(v4 + 1);
LABEL_310:
          *v4 = 0;
          *(v4 + 1) = 0;
          v152 = *(v4 + 3);
          if (v152 && v30)
          {
            (*(*v152 + 16))(v152, v32);
          }

LABEL_311:
          v153 = *v4;
          v154 = *(v4 + 1);
          *v4 = 0;
          *(v4 + 1) = 0;
          v155 = *(v4 + 3);
          if (v155 && v154)
          {
            (*(*v155 + 16))(v155, v153);
          }

          goto LABEL_201;
        }
      }

      else
      {
        v30 = 0;
      }

      v32 = 0;
      goto LABEL_310;
    case 0x400:
      IPC::Decoder::decode<std::tuple<WebKit::WebGPU::ComputePipelineDescriptor,WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(buf, a3);
      if (BYTE8(v168) == 1)
      {
        WebKit::RemoteDevice::createComputePipeline(this, buf, v168);
        if (BYTE8(v168))
        {
          goto LABEL_77;
        }
      }

      goto LABEL_301;
    case 0x401:
      IPC::Decoder::decode<std::tuple<WebKit::WebGPU::ComputePipelineDescriptor,WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(buf, a3);
      if (BYTE8(v168) != 1)
      {
        goto LABEL_301;
      }

      v49 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v4);
      if ((v19 & 1) == 0)
      {
        goto LABEL_77;
      }

      v4 = v49;
      atomic_fetch_add(a2 + 2, 1u);
      v50 = WTF::fastMalloc(0x18);
      *v50 = &unk_1F10EC468;
      *(v50 + 1) = v4;
      *(v50 + 2) = a2;
      v156[0] = v50;
      if ((BYTE8(v168) & 1) == 0)
      {
        goto LABEL_242;
      }

      WebKit::RemoteDevice::createComputePipelineAsync(this, buf, v168, v156);
      v51 = v156[0];
      v156[0] = 0;
      if (v51)
      {
        (*(*v51 + 8))(v51);
      }

      if ((BYTE8(v168) & 1) == 0)
      {
        goto LABEL_301;
      }

LABEL_77:
      WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v166 + 8, v19);
      if (v166 == 1)
      {
        v52 = v165;
        v165 = 0;
        if (v52)
        {
          goto LABEL_134;
        }
      }

      goto LABEL_235;
    case 0x402:
      IPC::ArgumentCoder<WebKit::WebGPU::PipelineLayoutDescriptor,void>::decode(a3, v156);
      if ((v158 & 1) == 0)
      {
        v139 = *v4;
        v140 = *(v4 + 1);
        *v4 = 0;
        *(v4 + 1) = 0;
        v141 = *(v4 + 3);
        if (!v141)
        {
          goto LABEL_201;
        }

        if (!v140)
        {
          goto LABEL_201;
        }

        (*(*v141 + 16))(v141, v139);
        if ((v158 & 1) == 0)
        {
          goto LABEL_201;
        }
      }

      v63 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(v4);
      v66 = v63;
      v67 = v64;
      if (v64)
      {
        if ((v158 & 1) == 0)
        {
          goto LABEL_242;
        }

        v68 = v156[0];
        v156[0] = 0;
        *buf = v68;
        buf[8] = 0;
        LOBYTE(v165) = 0;
        if (v157 == 1)
        {
          *&buf[8] = v156[1];
          v65.n128_u64[0] = v156[2];
          v156[1] = 0;
          v156[2] = 0;
          *&buf[16] = v65.n128_u64[0];
          LOBYTE(v165) = 1;
        }

        *&v166 = v63;
        BYTE8(v166) = 1;
      }

      else
      {
        buf[0] = 0;
        BYTE8(v166) = 0;
        if ((v158 & 1) == 0)
        {
          goto LABEL_201;
        }

        if (v157)
        {
          v107 = v156[1];
          if (v156[1])
          {
            v156[1] = 0;
            LODWORD(v156[2]) = 0;
            WTF::fastFree(v107, v64);
          }
        }
      }

      v114 = v156[0];
      v156[0] = 0;
      if (v114 && atomic_fetch_add_explicit(v114, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v114, v64);
      }

      if ((v67 & 1) == 0)
      {
        goto LABEL_201;
      }

      WebKit::RemoteDevice::createPipelineLayout(this, buf, v66, v65);
      if ((BYTE8(v166) & 1) == 0)
      {
        goto LABEL_301;
      }

      if (v165 == 1)
      {
        goto LABEL_211;
      }

      goto LABEL_235;
    case 0x403:
      IPC::ArgumentCoder<WebKit::WebGPU::QuerySetDescriptor,void>::decode(a3, v156);
      if ((v156[2] & 1) == 0)
      {
        v127 = *v4;
        v128 = *(v4 + 1);
        *v4 = 0;
        *(v4 + 1) = 0;
        v129 = *(v4 + 3);
        if (!v129)
        {
          goto LABEL_201;
        }

        if (!v128)
        {
          goto LABEL_201;
        }

        (*(*v129 + 16))(v129, v127);
        if ((v156[2] & 1) == 0)
        {
          goto LABEL_201;
        }
      }

      v37 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(v4);
      if ((v23 & 1) == 0)
      {
        if ((v156[2] & 1) == 0)
        {
          goto LABEL_201;
        }

        goto LABEL_139;
      }

      if ((v156[2] & 1) == 0)
      {
        goto LABEL_242;
      }

      *buf = v156[0];
      *&buf[8] = v156[1];
      *&buf[16] = v37;
      LOBYTE(v165) = 1;
      WebKit::RemoteDevice::createQuerySet(this, buf, v37);
      if (v165)
      {
        goto LABEL_235;
      }

      goto LABEL_301;
    case 0x404:
      IPC::ArgumentCoder<WebKit::WebGPU::RenderBundleEncoderDescriptor,void>::decode(a3, v156);
      if ((BYTE8(v158) & 1) == 0)
      {
        v142 = *v4;
        v143 = *(v4 + 1);
        *v4 = 0;
        *(v4 + 1) = 0;
        v144 = *(v4 + 3);
        if (!v144)
        {
          goto LABEL_201;
        }

        if (!v143)
        {
          goto LABEL_201;
        }

        (*(*v144 + 16))(v144, v142);
        if ((BYTE8(v158) & 1) == 0)
        {
          goto LABEL_201;
        }
      }

      v73 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(v4);
      v75 = v73;
      v76 = v74;
      if (v74)
      {
        if ((BYTE8(v158) & 1) == 0)
        {
          goto LABEL_242;
        }

        v77 = *v156;
        memset(v156, 0, sizeof(v156));
        *buf = v77;
        *&buf[16] = v156[2];
        v165 = v157;
        LOWORD(v166) = v158;
        *(&v166 + 1) = v73;
        LOBYTE(v167) = 1;
      }

      else
      {
        buf[0] = 0;
        LOBYTE(v167) = 0;
        if ((BYTE8(v158) & 1) == 0)
        {
          goto LABEL_201;
        }

        v108 = v156[1];
        if (v156[1])
        {
          v156[1] = 0;
          LODWORD(v156[2]) = 0;
          WTF::fastFree(v108, v74);
        }
      }

      v109 = v156[0];
      v156[0] = 0;
      if (v109 && atomic_fetch_add_explicit(v109, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v109, v74);
      }

      if ((v76 & 1) == 0)
      {
        goto LABEL_201;
      }

      WebKit::RemoteDevice::createRenderBundleEncoder(this, buf, v75);
      if ((v167 & 1) == 0)
      {
        goto LABEL_301;
      }

LABEL_211:
      v100 = *&buf[8];
      if (*&buf[8])
      {
        *&buf[8] = 0;
        *&buf[16] = 0;
LABEL_213:
        WTF::fastFree(v100, v19);
      }

      goto LABEL_235;
    case 0x405:
      IPC::Decoder::decode<std::tuple<WebKit::WebGPU::RenderPipelineDescriptor,WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(buf, a3);
      if (v174 != 1)
      {
        goto LABEL_301;
      }

      WebKit::RemoteDevice::createRenderPipeline(this, buf, v173);
      goto LABEL_99;
    case 0x406:
      IPC::Decoder::decode<std::tuple<WebKit::WebGPU::RenderPipelineDescriptor,WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(buf, a3);
      if (v174 != 1)
      {
        goto LABEL_301;
      }

      v70 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v4);
      if ((v19 & 1) == 0)
      {
        goto LABEL_100;
      }

      v4 = v70;
      atomic_fetch_add(a2 + 2, 1u);
      v71 = WTF::fastMalloc(0x18);
      *v71 = &unk_1F10EC490;
      *(v71 + 1) = v4;
      *(v71 + 2) = a2;
      v156[0] = v71;
      if ((v174 & 1) == 0)
      {
        goto LABEL_242;
      }

      WebKit::RemoteDevice::createRenderPipelineAsync(this, buf, v173, v156);
      v72 = v156[0];
      v156[0] = 0;
      if (v72)
      {
        (*(*v72 + 8))(v72);
      }

LABEL_99:
      if (v174)
      {
LABEL_100:
        WebKit::WebGPU::RenderPipelineDescriptor::~RenderPipelineDescriptor(buf, v19);
      }

      goto LABEL_301;
    case 0x407:
      IPC::ArgumentCoder<WebKit::WebGPU::SamplerDescriptor,void>::decode(a3, v156);
      if (v158)
      {
        goto LABEL_19;
      }

      goto LABEL_243;
    case 0x408:
      IPC::ArgumentCoder<WebKit::WebGPU::ShaderModuleDescriptor,void>::decode(a3, v156);
      if ((v158 & 1) == 0)
      {
        v121 = *v4;
        v122 = *(v4 + 1);
        *v4 = 0;
        *(v4 + 1) = 0;
        v123 = *(v4 + 3);
        if (!v123)
        {
          goto LABEL_201;
        }

        if (!v122)
        {
          goto LABEL_201;
        }

        (*(*v123 + 16))(v123, v121);
        if ((v158 & 1) == 0)
        {
          goto LABEL_201;
        }
      }

      v24 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(v4);
      v26 = v24;
      v27 = v25;
      if (v25)
      {
        if ((v158 & 1) == 0)
        {
          goto LABEL_242;
        }

        v28 = *v156;
        memset(v156, 0, sizeof(v156));
        *buf = v28;
        *&buf[16] = v156[2];
        *&v28 = v157;
        v157 = 0;
        v165 = v28;
        *&v166 = v24;
        BYTE8(v166) = 1;
      }

      else
      {
        buf[0] = 0;
        BYTE8(v166) = 0;
        if ((v158 & 1) == 0)
        {
          goto LABEL_201;
        }
      }

      WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v156[2], v25);
      v95 = v156[1];
      v156[1] = 0;
      if (v95 && atomic_fetch_add_explicit(v95, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v95, v93);
      }

      v96 = v156[0];
      v156[0] = 0;
      if (v96 && atomic_fetch_add_explicit(v96, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v96, v93);
      }

      if ((v27 & 1) == 0)
      {
        goto LABEL_201;
      }

      WebKit::RemoteDevice::createShaderModule(this, buf, v26, v94);
      if ((BYTE8(v166) & 1) == 0)
      {
        goto LABEL_301;
      }

      WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&buf[16], v19);
      v52 = *&buf[8];
      *&buf[8] = 0;
      if (v52)
      {
LABEL_134:
        if (atomic_fetch_add_explicit(v52, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v52, v19);
        }
      }

      goto LABEL_235;
    case 0x409:
      IPC::ArgumentCoder<WebKit::WebGPU::TextureDescriptor,void>::decode(a3, v156);
      if (BYTE8(v160) & 1) != 0 || (v136 = *v4, v137 = *(v4 + 1), *v4 = 0, *(v4 + 1) = 0, (v138 = *(v4 + 3)) != 0) && v137 && ((*(*v138 + 16))(v138, v136), (BYTE8(v160)))
      {
        v57 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(v4);
        if (v58)
        {
          if ((BYTE8(v160) & 1) == 0)
          {
            goto LABEL_242;
          }

          v59 = v57;
          v60 = v156[0];
          v156[0] = 0;
          *buf = v60;
          mpark::detail::move_assignment<mpark::detail::traits<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin3DDict>,(mpark::detail::Trait)1>::move_assignment(&buf[8], &v156[1]);
          *&v166 = v158;
          *(&v166 + 7) = *(&v158 + 7);
          v167 = v159;
          v61 = v160;
          v159 = 0;
          *&v160 = 0;
          *&v168 = v61;
          v62 = 1;
          *(&v168 + 1) = v59;
        }

        else
        {
          v62 = 0;
          buf[0] = 0;
        }

        v169 = v62;
        if (BYTE8(v160))
        {
          v102 = v159;
          if (v159)
          {
            v159 = 0;
            LODWORD(v160) = 0;
            WTF::fastFree(v102, v58);
          }

          if (!v157)
          {
            v103 = v156[1];
            if (v156[1])
            {
              v156[1] = 0;
              LODWORD(v156[2]) = 0;
              WTF::fastFree(v103, v58);
            }
          }

          LOBYTE(v157) = -1;
          v104 = v156[0];
          v156[0] = 0;
          if (v104 && atomic_fetch_add_explicit(v104, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v104, v58);
          }
        }
      }

      else
      {
        buf[0] = 0;
        v169 = 0;
      }

      if ((v169 & 1) == 0)
      {
        v19 = *v4;
        v20 = *(v4 + 1);
        *v4 = 0;
        *(v4 + 1) = 0;
        v146 = *(v4 + 3);
        if (!v146)
        {
          goto LABEL_301;
        }

        if (!v20)
        {
          goto LABEL_301;
        }

        (*(*v146 + 16))(v146, v19);
        if ((v169 & 1) == 0)
        {
          goto LABEL_301;
        }
      }

      WebKit::RemoteDevice::createTexture(this, buf, *(&v168 + 1));
      if ((v169 & 1) == 0)
      {
        goto LABEL_301;
      }

      v105 = v167;
      if (v167)
      {
        v167 = 0;
        LODWORD(v168) = 0;
        WTF::fastFree(v105, v19);
      }

      if (!v165)
      {
        v106 = *&buf[8];
        if (*&buf[8])
        {
          *&buf[8] = 0;
          *&buf[16] = 0;
          WTF::fastFree(v106, v19);
        }
      }

      LOBYTE(v165) = -1;
      goto LABEL_235;
    case 0x40A:
      v21 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
      if (v19)
      {
        WebKit::RemoteDevice::createXRBinding(this, v21);
      }

      goto LABEL_301;
    case 0x40B:
      (*(**(this + 2) + 24))(*(this + 2));
      goto LABEL_301;
    case 0x40C:
      WebKit::RemoteCommandEncoder::destruct(this);
      goto LABEL_301;
    case 0x40D:
      IPC::ArgumentCoder<WebKit::WebGPU::ExternalTextureDescriptor,void>::decode(a3, v156);
      if ((v163 & 1) == 0)
      {
        v133 = *v4;
        v134 = *(v4 + 1);
        *v4 = 0;
        *(v4 + 1) = 0;
        v135 = *(v4 + 3);
        if (!v135 || !v134 || ((*(*v135 + 16))(v135, v133), (v163 & 1) == 0))
        {
          buf[0] = 0;
          v172 = 0;
LABEL_229:
          if ((v172 & 1) == 0)
          {
            v19 = *v4;
            v20 = *(v4 + 1);
            *v4 = 0;
            *(v4 + 1) = 0;
            v145 = *(v4 + 3);
            if (!v145)
            {
              goto LABEL_301;
            }

            if (!v20)
            {
              goto LABEL_301;
            }

            (*(*v145 + 16))(v145, v19);
            if ((v172 & 1) == 0)
            {
              goto LABEL_301;
            }
          }

          WebKit::RemoteDevice::importExternalTextureFromVideoFrame(this, buf, v171);
          if ((v172 & 1) == 0)
          {
            goto LABEL_301;
          }

          if (v170 == 1)
          {
            if (v169 == 2)
            {
              WTF::MachSendRight::~MachSendRight(&v168);
            }

            v169 = -1;
          }

          goto LABEL_235;
        }
      }

      v42 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(v4);
      if ((v43 & 1) == 0)
      {
        v101 = 0;
        buf[0] = 0;
        goto LABEL_221;
      }

      if ((v163 & 1) == 0)
      {
        while (1)
        {
LABEL_242:
          __break(1u);
LABEL_243:
          v118 = *v4;
          v119 = *(v4 + 1);
          *v4 = 0;
          *(v4 + 1) = 0;
          v120 = *(v4 + 3);
          if (!v120)
          {
            goto LABEL_201;
          }

          if (!v119)
          {
            goto LABEL_201;
          }

          (*(*v120 + 16))(v120, v118);
          if ((v158 & 1) == 0)
          {
            goto LABEL_201;
          }

LABEL_19:
          v22 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(v4);
          if ((v23 & 1) == 0)
          {
            break;
          }

          if (v158)
          {
            *buf = v156[0];
            *&buf[8] = *&v156[1];
            LODWORD(v165) = v157;
            *&v166 = v22;
            BYTE8(v166) = 1;
            WebKit::RemoteDevice::createSampler(this, buf, v22);
            if ((BYTE8(v166) & 1) == 0)
            {
              goto LABEL_301;
            }

LABEL_235:
            v116 = *buf;
            *buf = 0;
            if (v116 && atomic_fetch_add_explicit(v116, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v116, v19);
            }

            goto LABEL_301;
          }
        }

        if (v158)
        {
LABEL_139:
          v97 = v156[0];
          v156[0] = 0;
          if (v97 && atomic_fetch_add_explicit(v97, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
LABEL_200:
            WTF::StringImpl::destroy(v97, v23);
          }
        }

        goto LABEL_201;
      }

      v44 = v42;
      v45 = v156[0];
      v156[0] = 0;
      *buf = v45;
      *&buf[8] = *&v156[1];
      LOBYTE(v165) = v157;
      LOBYTE(v166) = 0;
      v170 = 0;
      if (v162 != 1)
      {
        goto LABEL_220;
      }

      v166 = v158;
      LODWORD(v167) = v159;
      LOBYTE(v168) = 0;
      v169 = -1;
      if (v161 <= 1u)
      {
        if (v161)
        {
          v168 = v160;
          v46 = 1;
        }

        else
        {
          v46 = 0;
          *&v168 = 0;
        }
      }

      else if (v161 == 2)
      {
        WTF::MachSendRight::MachSendRight();
        v46 = v161;
      }

      else
      {
        if (v161 != 3)
        {
LABEL_219:
          v170 = 1;
LABEL_220:
          v171 = v44;
          v101 = 1;
LABEL_221:
          v172 = v101;
          if (v163)
          {
            if (v162 == 1)
            {
              if (v161 == 2)
              {
                WTF::MachSendRight::~MachSendRight(&v160);
              }

              v161 = -1;
            }

            v115 = v156[0];
            v156[0] = 0;
            if (v115 && atomic_fetch_add_explicit(v115, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v115, v43);
            }
          }

          goto LABEL_229;
        }

        *&v168 = v160;
        v46 = 3;
      }

      v169 = v46;
      goto LABEL_219;
    case 0x40E:
      v69 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
      if ((v69 & 0x100) != 0)
      {
        (*(**(this + 2) + 232))(*(this + 2), v69 & 1);
      }

      goto LABEL_301;
    case 0x40F:
      v81 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v19 & 1) == 0)
      {
        goto LABEL_301;
      }

      v82 = v81;
      atomic_fetch_add(a2 + 2, 1u);
      v83 = WTF::fastMalloc(0x18);
      *v83 = &unk_1F10EC4B8;
      v83[1] = v82;
      v83[2] = a2;
      *buf = v83;
      WebKit::RemoteDevice::popErrorScope(this, buf);
      goto LABEL_109;
    case 0x410:
      v20 = *(a3 + 1);
      v47 = *(v4 + 2);
      v19 = *v4;
      if (v20 <= &v47[-*v4])
      {
        *v4 = 0;
        *(v4 + 1) = 0;
        v149 = *(v4 + 3);
        if (v149)
        {
          if (v20)
          {
            (*(*v149 + 16))(v149);
            v20 = *(v4 + 1);
          }
        }

        else
        {
          v20 = 0;
        }

LABEL_297:
        *v4 = 0;
        *(v4 + 1) = 0;
        v150 = *(v4 + 3);
        if (v150)
        {
          if (v20)
          {
            (*(*v150 + 16))(v150);
            v19 = *v4;
            v20 = *(v4 + 1);
            goto LABEL_300;
          }
        }

        else
        {
          v20 = 0;
        }

        v19 = 0;
        goto LABEL_300;
      }

      *(v4 + 2) = v47 + 1;
      if (!v47)
      {
        goto LABEL_297;
      }

      v48 = *v47;
      if (v48 < 3)
      {
        (*(**(this + 2) + 168))(*(this + 2), v48);
        goto LABEL_301;
      }

LABEL_300:
      *v4 = 0;
      *(v4 + 1) = 0;
      v151 = *(v4 + 3);
      if (v151)
      {
        if (v20)
        {
          (*(*v151 + 16))(v151, v19);
          v19 = *v4;
          v20 = *(v4 + 1);
          v113 = *(v4 + 3);
          *v4 = 0;
          *(v4 + 1) = 0;
          if (v113)
          {
LABEL_202:
            if (v20)
            {
              (*(*v113 + 16))(v113, v19);
            }
          }
        }
      }

LABEL_301:
      if (atomic_fetch_add(this + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, this + 2);
        (*(*this + 8))(this, v19, v20);
      }

      return;
    case 0x411:
      v53 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if (v19)
      {
        v54 = v53;
        atomic_fetch_add(a2 + 2, 1u);
        v55 = WTF::fastMalloc(0x18);
        *v55 = &unk_1F10EC508;
        v55[1] = v54;
        v55[2] = a2;
        *buf = v55;
        WebKit::RemoteDevice::resolveDeviceLostPromise(this, buf);
        v56 = *buf;
        *buf = 0;
        if (v56)
        {
          goto LABEL_82;
        }
      }

      goto LABEL_301;
    case 0x412:
      v78 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v19 & 1) == 0)
      {
        goto LABEL_301;
      }

      v79 = v78;
      atomic_fetch_add(a2 + 2, 1u);
      v80 = WTF::fastMalloc(0x18);
      *v80 = &unk_1F10EC4E0;
      v80[1] = v79;
      v80[2] = a2;
      *buf = v80;
      WebKit::RemoteDevice::resolveUncapturedErrorEvent(this, buf);
LABEL_109:
      v56 = *buf;
      *buf = 0;
      if (v56)
      {
LABEL_82:
        (*(*v56 + 8))(v56);
      }

      goto LABEL_301;
    case 0x413:
      IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a3, buf);
      if ((buf[8] & 1) == 0)
      {
        v19 = *v4;
        v20 = *(v4 + 1);
        *v4 = 0;
        *(v4 + 1) = 0;
        v117 = *(v4 + 3);
        if (!v117)
        {
          goto LABEL_301;
        }

        if (!v20)
        {
          goto LABEL_301;
        }

        (*(*v117 + 16))(v117, v19);
        if ((buf[8] & 1) == 0)
        {
          goto LABEL_301;
        }
      }

      WebKit::RemoteDevice::setLabel(this, buf);
      if ((buf[8] & 1) == 0)
      {
        goto LABEL_301;
      }

      goto LABEL_235;
    case 0x414:
      IPC::Decoder::decode<std::tuple<WebCore::SharedMemoryHandle>>(a3, buf);
      if (buf[16] == 1)
      {
        WebKit::RemoteDevice::setSharedVideoFrameMemory(this);
        if (buf[16])
        {
          goto LABEL_37;
        }
      }

      goto LABEL_301;
    case 0x415:
      IPC::Decoder::decode<std::tuple<IPC::Semaphore>>(a3, buf);
      if (buf[8] != 1)
      {
        goto LABEL_301;
      }

      WebKit::RemoteDevice::setSharedVideoFrameSemaphore(this, buf);
      if ((buf[8] & 1) == 0)
      {
        goto LABEL_301;
      }

      IPC::Semaphore::destroy(buf);
LABEL_37:
      WTF::MachSendRight::~MachSendRight(buf);
      goto LABEL_301;
    case 0x416:
      v84 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v85 & 1) == 0)
      {
        goto LABEL_201;
      }

      v86 = v84;
      v87 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(v4);
      if ((v88 & 1) == 0)
      {
        goto LABEL_201;
      }

      *buf = v86;
      *&buf[8] = v87;
      buf[16] = 1;
      WebKit::RemoteDevice::updateExternalTexture(this, v86, &buf[8]);
      goto LABEL_301;
    default:
      v89 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        if (v10 >= 0x107F)
        {
          v90 = 4223;
        }

        else
        {
          v90 = v10;
        }

        v91 = (&IPC::Detail::messageDescriptions)[3 * v90];
        v92 = *(v4 + 7);
        *buf = 136315394;
        *&buf[4] = v91;
        *&buf[12] = 2048;
        *&buf[14] = v92;
        _os_log_error_impl(&dword_19D52D000, v89, OS_LOG_TYPE_ERROR, "Unhandled stream message %s to %llu", buf, 0x16u);
      }

      goto LABEL_201;
  }
}