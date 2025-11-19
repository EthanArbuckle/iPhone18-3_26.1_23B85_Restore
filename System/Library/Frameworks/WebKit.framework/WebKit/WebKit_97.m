IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage28RequestRectForFoundTextRangeENS2_10ConnectionEN6WebKit7WebPageES9_FvRKNS8_17WebFoundTextRangeEONS_17CompletionHandlerIFvN7WebCore9FloatRectEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSF_EE4callESF_(uint64_t a1, void *a2, float a3, float a4, float a5, float a6)
{
  v13[0] = a3;
  v13[1] = a4;
  v13[2] = a5;
  v13[3] = a6;
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 3862;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = v7;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v14 = v8;
  IPC::ArgumentCoder<WebCore::FloatRect,void>::encode(v8, v13);
  IPC::Connection::sendMessageImpl(v6, &v14, 0, 0);
  result = v14;
  v14 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v9);
    return bmalloc::api::tzoneFree(v11, v12);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage22AddLayerForFindOverlayENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvNSt3__18optionalIN7WebCore16ProcessQualifiedINS_23ObjectIdentifierGenericINSD_27PlatformLayerIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSL_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F55E0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage22AddLayerForFindOverlayENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvNSt3__18optionalIN7WebCore16ProcessQualifiedINS_23ObjectIdentifierGenericINSD_27PlatformLayerIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSL_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F55E0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage22AddLayerForFindOverlayENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvNSt3__18optionalIN7WebCore16ProcessQualifiedINS_23ObjectIdentifierGenericINSD_27PlatformLayerIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSL_EE4callESL_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3749;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>> const&>(v5, a2);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage25RemoveLayerForFindOverlayENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10F5608;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage25RemoveLayerForFindOverlayENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F5608;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage25RemoveLayerForFindOverlayENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3846;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = v3;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::Connection::sendMessageImpl(v2, &v9, 0, 0);
  result = v9;
  v9 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

WTF::StringImpl *IPC::Decoder::decode<WebCore::DragData>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<WebCore::DragData,void>::decode(a2, a1);
  if ((*(a1 + 88) & 1) == 0)
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage27PerformDragControllerActionENS2_10ConnectionEN6WebKit7WebPageES9_FvNSt3__18optionalINS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEENS8_20DragControllerActionEONSD_8DragDataEONS_17CompletionHandlerIFvNSB_INSD_13DragOperationEEENSD_18DragHandlingMethodEbjNSD_7IntRectESQ_NSB_INSD_24RemoteUserInputEventDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSO_SP_bjSQ_SQ_SS_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F5630;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage27PerformDragControllerActionENS2_10ConnectionEN6WebKit7WebPageES9_FvNSt3__18optionalINS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEENS8_20DragControllerActionEONSD_8DragDataEONS_17CompletionHandlerIFvNSB_INSD_13DragOperationEEENSD_18DragHandlingMethodEbjNSD_7IntRectESQ_NSB_INSD_24RemoteUserInputEventDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSO_SP_bjSQ_SQ_SS_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F5630;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage27PerformDragControllerActionENS2_10ConnectionEN6WebKit7WebPageES9_FvNSt3__18optionalINS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEENS8_20DragControllerActionEONSD_8DragDataEONS_17CompletionHandlerIFvNSB_INSD_13DragOperationEEENSD_18DragHandlingMethodEbjNSD_7IntRectESQ_NSB_INSD_24RemoteUserInputEventDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSO_SP_bjSQ_SQ_SS_EE4callESO_SP_bjSQ_SQ_SS_(uint64_t a1, void *a2, char a3, char a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13 = a2;
  v24[0] = a6;
  v24[1] = a7;
  v23[0] = a9;
  v23[1] = a10;
  v22 = a4;
  v15 = *(a1 + 8);
  v14 = *(a1 + 16);
  v16 = IPC::Encoder::operator new(0x238, a2);
  *v16 = 3836;
  *(v16 + 2) = 0;
  *(v16 + 3) = 0;
  *(v16 + 1) = v15;
  *(v16 + 68) = 0;
  *(v16 + 70) = 0;
  *(v16 + 69) = 0;
  IPC::Encoder::encodeHeader(v16);
  v25 = v16;
  if ((v13 & 0x100) != 0)
  {
    v26 = 1;
    IPC::Encoder::operator<<<BOOL>(v16, &v26);
    IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v16, v13);
  }

  else
  {
    v26 = 0;
    IPC::Encoder::operator<<<BOOL>(v16, &v26);
  }

  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v16, a3);
  v17 = IPC::Encoder::operator<<<BOOL>(v16, &v22);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v17, a5);
  IPC::ArgumentCoder<WebCore::IntRect,void>::encode(v17, v24);
  IPC::ArgumentCoder<WebCore::IntRect,void>::encode(v17, v23);
  IPC::ArgumentCoder<std::optional<WebCore::RemoteUserInputEventData>,void>::encode<IPC::Encoder,std::optional<WebCore::RemoteUserInputEventData> const&>(v17, a11);
  IPC::Connection::sendMessageImpl(v14, &v25, 0, 0);
  result = v25;
  v25 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v18);
    return bmalloc::api::tzoneFree(v20, v21);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage20PerformDragOperationENS2_10ConnectionEN6WebKit7WebPageES9_FvON7WebCore8DragDataEONS8_22SandboxExtensionHandleEONS_6VectorISD_Lm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED1Ev(void *a1)
{
  *a1 = &unk_1F10F5658;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage20PerformDragOperationENS2_10ConnectionEN6WebKit7WebPageES9_FvON7WebCore8DragDataEONS8_22SandboxExtensionHandleEONS_6VectorISD_Lm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F5658;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage20PerformDragOperationENS2_10ConnectionEN6WebKit7WebPageES9_FvON7WebCore8DragDataEONS8_22SandboxExtensionHandleEONS_6VectorISD_Lm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEE4callEb(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3837;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = v3;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v10 = v4;
  IPC::Encoder::operator<<<BOOL>(v4, &v9);
  IPC::Connection::sendMessageImpl(v2, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage9DragEndedENS2_10ConnectionEN6WebKit7WebPageES9_FvNSt3__18optionalINS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEENSD_8IntPointESJ_NS_9OptionSetINSD_13DragOperationEEEONS_17CompletionHandlerIFvNSB_INSD_24RemoteUserInputEventDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSP_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F5680;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage9DragEndedENS2_10ConnectionEN6WebKit7WebPageES9_FvNSt3__18optionalINS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEENSD_8IntPointESJ_NS_9OptionSetINSD_13DragOperationEEEONS_17CompletionHandlerIFvNSB_INSD_24RemoteUserInputEventDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSP_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F5680;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage9DragEndedENS2_10ConnectionEN6WebKit7WebPageES9_FvNSt3__18optionalINS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEENSD_8IntPointESJ_NS_9OptionSetINSD_13DragOperationEEEONS_17CompletionHandlerIFvNSB_INSD_24RemoteUserInputEventDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSP_EE4callESP_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3774;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::optional<WebCore::RemoteUserInputEventData>,void>::encode<IPC::Encoder,std::optional<WebCore::RemoteUserInputEventData> const&>(v5, a2);
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

unint64_t IPC::Decoder::decode<std::tuple<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::IntPoint,WebCore::IntPoint,WTF::OptionSet<WebCore::DragSourceAction>>>(uint64_t a1, IPC::Decoder *a2)
{
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(a2, &v21);
  if (v22 & 1) != 0 || ((v12 = *a2, v13 = *(a2 + 1), *a2 = 0, *(a2 + 1) = 0, (v14 = *(a2 + 3)) != 0) ? (v15 = v13 == 0) : (v15 = 1), !v15 && ((*(*v14 + 16))(v14, v12), (v22)))
  {
    v4 = IPC::Decoder::decode<WebCore::IntPoint>(a2);
    if (v5)
    {
      v6 = v4;
      result = IPC::Decoder::decode<WebCore::IntPoint>(a2);
      if (v8)
      {
        v9 = *(a2 + 1);
        v10 = *(a2 + 2);
        if (v9 > &v10[-*a2])
        {
          *(a2 + 2) = v10 + 1;
          if (!v10)
          {
LABEL_18:
            *a2 = 0;
            *(a2 + 1) = 0;
            v17 = *(a2 + 3);
            if (v17)
            {
              if (v9)
              {
                (*(*v17 + 16))(v17);
                v9 = *(a2 + 1);
              }
            }

            else
            {
              v9 = 0;
            }

            goto LABEL_20;
          }

          v11 = *v10;
          if (v11 < 0)
          {
LABEL_20:
            *a2 = 0;
            *(a2 + 1) = 0;
            v18 = *(a2 + 3);
            if (v18 && v9)
            {
              (*(*v18 + 16))(v18);
            }

            goto LABEL_21;
          }

          if (v22)
          {
            *a1 = v21;
            *(a1 + 16) = v6;
            *(a1 + 24) = result;
            *(a1 + 32) = v11;
            *(a1 + 40) = 1;
            return result;
          }

          __break(1u);
        }

        *a2 = 0;
        *(a2 + 1) = 0;
        v16 = *(a2 + 3);
        if (v16)
        {
          if (v9)
          {
            (*(*v16 + 16))(v16);
            v9 = *(a2 + 1);
          }
        }

        else
        {
          v9 = 0;
        }

        goto LABEL_18;
      }
    }
  }

LABEL_21:
  *a1 = 0;
  *(a1 + 40) = 0;
  v19 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result && v19)
  {
    v20 = *(*result + 16);

    return v20();
  }

  return result;
}

uint64_t IPC::callMemberFunctionCoroutine<WebKit::WebPage,WebKit::WebPage,WTF::Awaitable<WebKit::DragInitiationResult> ()(std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::IntPoint,WebCore::IntPoint,WTF::OptionSet<WebCore::DragSourceAction>),std::tuple<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::IntPoint,WebCore::IntPoint,WTF::OptionSet<WebCore::DragSourceAction>>,void ()(WebKit::DragInitiationResult&&)>(uint64_t a1, uint64_t (*a2)(void *, void, void, void, void, void), uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v9 = *a5;
  *a5 = 0;
  v10 = WTF::fastMalloc(0x58);
  *v10 = IPC::callMemberFunctionCoroutine<WebKit::WebPage,WebKit::WebPage,WTF::Awaitable<WebKit::DragInitiationResult> ()(std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::IntPoint,WebCore::IntPoint,WTF::OptionSet<WebCore::DragSourceAction>),std::tuple<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::IntPoint,WebCore::IntPoint,WTF::OptionSet<WebCore::DragSourceAction>>,void ()(WebKit::DragInitiationResult&&)>(WebKit::WebPage *,WTF::Awaitable<WebKit::DragInitiationResult> ()(std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::IntPoint,WebCore::IntPoint,WTF::OptionSet<WebCore::DragSourceAction>) WebKit::WebPage::*,std::tuple<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::IntPoint,WebCore::IntPoint,WTF::OptionSet<WebCore::DragSourceAction>> &&,WTF::CompletionHandler<void ()(WebKit::DragInitiationResult&&)> &&)::{lambda(void ()(WebKit::DragInitiationResult&&))#1}::operator()<std::tuple<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::IntPoint,WebCore::IntPoint,WTF::OptionSet<WebCore::DragSourceAction>> &<WebKit::DragInitiationResult&&>>;
  *(v10 + 8) = IPC::callMemberFunctionCoroutine<WebKit::WebPage,WebKit::WebPage,WTF::Awaitable<WebKit::DragInitiationResult> ()(std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::IntPoint,WebCore::IntPoint,WTF::OptionSet<WebCore::DragSourceAction>),std::tuple<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::IntPoint,WebCore::IntPoint,WTF::OptionSet<WebCore::DragSourceAction>>,void ()(WebKit::DragInitiationResult&&)>(WebKit::WebPage *,WTF::Awaitable<WebKit::DragInitiationResult> ()(std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::IntPoint,WebCore::IntPoint,WTF::OptionSet<WebCore::DragSourceAction>) WebKit::WebPage::*,std::tuple<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::IntPoint,WebCore::IntPoint,WTF::OptionSet<WebCore::DragSourceAction>> &&,WTF::CompletionHandler<void ()(WebKit::DragInitiationResult&&)> &&)::{lambda(void ()(WebKit::DragInitiationResult&&))#1}::operator()<std::tuple<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::IntPoint,WebCore::IntPoint,WTF::OptionSet<WebCore::DragSourceAction>> &<WebKit::DragInitiationResult&&>>;
  *(v10 + 72) = v9;
  *(v10 + 80) = a1;
  CFRetain(*(a1 + 8));
  v11 = (a1 + (a3 >> 1));
  if (a3)
  {
    a2 = *(*v11 + a2);
  }

  result = a2(v11, *a4, *(a4 + 8), *(a4 + 16), *(a4 + 24), *(a4 + 32));
  v13 = *(v10 + 64);
  *(v10 + 56) = v13;
  if (v13)
  {
    if (*v13)
    {
      *(v10 + 17) = 0;
      *(v13 + 16) = v10;
      v14 = **(v10 + 56);

      return v14();
    }

    else
    {
      v15 = *(v10 + 72);
      v16 = *(v13 + 40);
      *(v10 + 24) = *(v13 + 24);
      *(v10 + 40) = v16;
      *(v13 + 24) = 0;
      *(v13 + 48) = 0;
      (*(*v15 + 16))(v15, v10 + 24);
      (*(*v15 + 8))(v15);
      v18 = *(v10 + 64);
      if (v18)
      {
        (*(v18 + 8))();
      }

      v19 = *(v10 + 80);
      if (v19)
      {
        CFRelease(*(v19 + 8));
      }

      return WTF::fastFree(v10, v17);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage16RequestDragStartENS2_10ConnectionEN6WebKit7WebPageES9_FNS_9AwaitableINS8_20DragInitiationResultEEENSt3__18optionalINS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEENSG_8IntPointESM_NS_9OptionSetINSG_16DragSourceActionEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJOSB_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F56A8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage16RequestDragStartENS2_10ConnectionEN6WebKit7WebPageES9_FNS_9AwaitableINS8_20DragInitiationResultEEENSt3__18optionalINS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEENSG_8IntPointESM_NS_9OptionSetINSG_16DragSourceActionEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJOSB_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F56A8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage16RequestDragStartENS2_10ConnectionEN6WebKit7WebPageES9_FNS_9AwaitableINS8_20DragInitiationResultEEENSt3__18optionalINS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEENSG_8IntPointESM_NS_9OptionSetINSG_16DragSourceActionEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJOSB_EE4callES14_(uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3855;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  v11 = a2[24];
  IPC::Encoder::operator<<<BOOL>(v5, &v11);
  IPC::ArgumentCoder<mpark::variant<BOOL,WebKit::DragInitiationResult::RemoteFrameData>,void>::encode<IPC::Encoder,mpark::variant<BOOL,WebKit::DragInitiationResult::RemoteFrameData> const&>(v5, a2, v11);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage36RequestAdditionalItemsForDragSessionENS2_10ConnectionEN6WebKit7WebPageES9_FNS_9AwaitableINS8_20DragInitiationResultEEENSt3__18optionalINS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEENSG_8IntPointESM_NS_9OptionSetINSG_16DragSourceActionEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJOSB_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F56D0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage36RequestAdditionalItemsForDragSessionENS2_10ConnectionEN6WebKit7WebPageES9_FNS_9AwaitableINS8_20DragInitiationResultEEENSt3__18optionalINS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEENSG_8IntPointESM_NS_9OptionSetINSG_16DragSourceActionEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJOSB_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F56D0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage36RequestAdditionalItemsForDragSessionENS2_10ConnectionEN6WebKit7WebPageES9_FNS_9AwaitableINS8_20DragInitiationResultEEENSt3__18optionalINS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEENSG_8IntPointESM_NS_9OptionSetINSG_16DragSourceActionEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJOSB_EE4callES14_(uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3850;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  v11 = a2[24];
  IPC::Encoder::operator<<<BOOL>(v5, &v11);
  IPC::ArgumentCoder<mpark::variant<BOOL,WebKit::DragInitiationResult::RemoteFrameData>,void>::encode<IPC::Encoder,mpark::variant<BOOL,WebKit::DragInitiationResult::RemoteFrameData> const&>(v5, a2, v11);
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

WTF *IPC::VectorArgumentCoder<false,WebCore::IntSize,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 1);
  v5 = ((*(a1 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *a1;
  v7 = v5 - *a1;
  v8 = v4 >= v7;
  v9 = v4 - v7;
  if (!v8 || v9 <= 7)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v23 = *(a1 + 3);
    if (v23)
    {
      if (v4)
      {
        (*(*v23 + 16))(v23);
        v4 = *(a1 + 1);
      }
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_31;
  }

  *(a1 + 2) = v5 + 1;
  if (!v5)
  {
LABEL_31:
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result)
    {
      if (v4)
      {
        result = (*(*result + 16))(result);
      }
    }

    *a2 = 0;
    *(a2 + 16) = 0;
    return result;
  }

  v11 = *v5;
  v26 = 0;
  v27 = 0;
  if (v11 >= 0x20000)
  {
    while (1)
    {
      v19 = IPC::Decoder::decode<WebCore::IntSize>(a1);
      v24 = v19;
      v25 = v6;
      if ((v6 & 1) == 0)
      {
        break;
      }

      if (HIDWORD(v27) == v27)
      {
        v17 = WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionFrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v26, HIDWORD(v27) + 1, &v24);
        *(v26 + HIDWORD(v27)) = *v17;
      }

      else
      {
        *(v26 + HIDWORD(v27)) = v19;
      }

      v18 = ++HIDWORD(v27);
      if (!--v11)
      {
        WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v26, v18);
        v21 = v26;
        v26 = 0;
        *a2 = v21;
        v22 = v27;
        HIDWORD(v27) = 0;
        *(a2 + 8) = v22;
        goto LABEL_18;
      }
    }
  }

  else
  {
    if (!v11)
    {
      v14 = 0;
      v16 = 0;
      v15 = 0;
LABEL_17:
      v26 = 0;
      *a2 = v15;
      HIDWORD(v27) = 0;
      *(a2 + 8) = v16;
      *(a2 + 12) = v14;
LABEL_18:
      *(a2 + 16) = 1;
      goto LABEL_25;
    }

    LODWORD(v27) = v11;
    v26 = WTF::fastMalloc((8 * v11));
    while (1)
    {
      v12 = IPC::Decoder::decode<WebCore::IntSize>(a1);
      v24 = v12;
      v25 = v6;
      if ((v6 & 1) == 0)
      {
        break;
      }

      if (HIDWORD(v27) == v27)
      {
        v13 = WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionFrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v26, HIDWORD(v27) + 1, &v24);
        *(v26 + HIDWORD(v27)) = *v13;
      }

      else
      {
        *(v26 + HIDWORD(v27)) = v12;
      }

      v14 = ++HIDWORD(v27);
      if (!--v11)
      {
        v15 = v26;
        v16 = v27;
        goto LABEL_17;
      }
    }
  }

  *a2 = 0;
  *(a2 + 16) = 0;
LABEL_25:
  result = v26;
  if (v26)
  {
    v26 = 0;
    LODWORD(v27) = 0;
    return WTF::fastFree(result, v6);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage30InsertDroppedImagePlaceholdersENS2_10ConnectionEN6WebKit7WebPageES9_FvRKNS_6VectorIN7WebCore7IntSizeELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvRKNSA_INSB_7IntRectELm0ESD_Lm16ESE_EENSt3__18optionalINSB_17TextIndicatorDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSM_SQ_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F56F8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage30InsertDroppedImagePlaceholdersENS2_10ConnectionEN6WebKit7WebPageES9_FvRKNS_6VectorIN7WebCore7IntSizeELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvRKNSA_INSB_7IntRectELm0ESD_Lm16ESE_EENSt3__18optionalINSB_17TextIndicatorDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSM_SQ_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F56F8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage30InsertDroppedImagePlaceholdersENS2_10ConnectionEN6WebKit7WebPageES9_FvRKNS_6VectorIN7WebCore7IntSizeELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvRKNSA_INSB_7IntRectELm0ESD_Lm16ESE_EENSt3__18optionalINSB_17TextIndicatorDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSM_SQ_EE4callESM_SQ_(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = IPC::Encoder::operator new(0x238, a2);
  *v7 = 3825;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = v6;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  IPC::Encoder::encodeHeader(v7);
  v12 = v7;
  IPC::VectorArgumentCoder<false,WebCore::IntRect,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::IntRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v7, a2);
  IPC::ArgumentCoder<std::optional<WebCore::TextIndicatorData>,void>::encode<IPC::Encoder,std::optional<WebCore::TextIndicatorData>>(v7, a3);
  IPC::Connection::sendMessageImpl(v5, &v12, 0, 0);
  result = v12;
  v12 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v8);
    return bmalloc::api::tzoneFree(v10, v11);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::optional<WebCore::TextIndicatorData>,void>::encode<IPC::Encoder,std::optional<WebCore::TextIndicatorData>>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 136))
  {
    v6 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v6);
    if (*(a2 + 136))
    {
      return IPC::ArgumentCoder<WebCore::TextIndicatorData,void>::encode(a1, a2);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage21InsertTextPlaceholderENS2_10ConnectionEN6WebKit7WebPageES9_FvRKN7WebCore7IntSizeEONS_17CompletionHandlerIFvRKNSt3__18optionalINSA_14ElementContextEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSK_EED1Ev(v5);
    }
  }

  else
  {
    v7 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v7);
  }
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage21InsertTextPlaceholderENS2_10ConnectionEN6WebKit7WebPageES9_FvRKN7WebCore7IntSizeEONS_17CompletionHandlerIFvRKNSt3__18optionalINSA_14ElementContextEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSK_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F5720;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage21InsertTextPlaceholderENS2_10ConnectionEN6WebKit7WebPageES9_FvRKN7WebCore7IntSizeEONS_17CompletionHandlerIFvRKNSt3__18optionalINSA_14ElementContextEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSK_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F5720;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage21InsertTextPlaceholderENS2_10ConnectionEN6WebKit7WebPageES9_FvRKN7WebCore7IntSizeEONS_17CompletionHandlerIFvRKNSt3__18optionalINSA_14ElementContextEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSK_EE4callESK_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3826;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::optional<WebCore::ElementContext>,void>::encode<IPC::Encoder,std::optional<WebCore::ElementContext> const&>(v5, a2);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage21RemoveTextPlaceholderENS2_10ConnectionEN6WebKit7WebPageES9_FvRKN7WebCore14ElementContextEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10F5748;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage21RemoveTextPlaceholderENS2_10ConnectionEN6WebKit7WebPageES9_FvRKN7WebCore14ElementContextEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F5748;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage21RemoveTextPlaceholderENS2_10ConnectionEN6WebKit7WebPageES9_FvRKN7WebCore14ElementContextEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3847;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = v3;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::Connection::sendMessageImpl(v2, &v9, 0, 0);
  result = v9;
  v9 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

uint64_t IPC::VectorArgumentCoder<false,WebCore::TextCheckingResult,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>@<X0>(uint64_t *a1@<X0>, char *a2@<X8>, __n128 a3@<Q1>)
{
  v5 = a1[1];
  v6 = ((a1[2] + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *a1;
  v8 = v6 - *a1;
  v9 = v5 >= v8;
  v10 = v5 - v8;
  if (!v9 || v10 <= 7)
  {
    *a1 = 0;
    a1[1] = 0;
    v31 = a1[3];
    if (v31)
    {
      if (v5)
      {
        (*(*v31 + 16))(v31);
        v5 = a1[1];
      }
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_44;
  }

  a1[2] = (v6 + 1);
  if (v6)
  {
    v12 = *v6;
    v39[0] = 0;
    v39[1] = 0;
    if (v12 >= 0x5555)
    {
      v13 = *a2;
      v14 = a2[16];
      while (1)
      {
        IPC::Decoder::decode<WebCore::TextCheckingResult>(a1, &v32);
        v23 = v38;
        if (v38 == 1)
        {
          if (HIDWORD(v39[1]) == LODWORD(v39[1]))
          {
            WTF::Vector<WebCore::TextCheckingResult,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::TextCheckingResult>(v39, &v32);
          }

          else
          {
            v24 = v39[0] + 48 * HIDWORD(v39[1]);
            v25 = v33;
            *v24 = v32;
            *(v24 + 3) = 0;
            *(v24 + 4) = 0;
            *(v24 + 2) = v25;
            v26 = v34;
            v34 = 0;
            *(v24 + 3) = v26;
            LODWORD(v26) = v35;
            v35 = 0;
            *(v24 + 8) = v26;
            LODWORD(v26) = v36;
            v36 = 0;
            *(v24 + 9) = v26;
            v27 = v37;
            v37 = 0;
            *(v24 + 5) = v27;
            ++HIDWORD(v39[1]);
          }
        }

        else
        {
          v14 = 0;
          v13 = 0;
        }

        if (v38 == 1)
        {
          v28 = v37;
          v37 = 0;
          if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v28, v7);
          }

          WTF::Vector<WebCore::GrammarDetail,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v34, v7);
        }

        if ((v23 & 1) == 0)
        {
          break;
        }

        if (!--v12)
        {
          WTF::Vector<WebCore::TextCheckingResult,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(v39, HIDWORD(v39[1]));
          *a2 = v39[0];
          v29 = v39[1];
          v39[0] = 0;
          v39[1] = 0;
          *(a2 + 1) = v29;
          goto LABEL_25;
        }
      }
    }

    else
    {
      if (!v12)
      {
        v21 = 0;
        v22 = 0;
LABEL_24:
        a3.n128_u64[0] = 0;
        *v39 = a3;
        *a2 = v21;
        *(a2 + 1) = v22;
LABEL_25:
        a2[16] = 1;
        return WTF::Vector<WebCore::TextCheckingResult,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v39, v7);
      }

      LODWORD(v39[1]) = 48 * v12 / 0x30u;
      v39[0] = WTF::fastMalloc((48 * v12));
      v13 = *a2;
      v14 = a2[16];
      while (1)
      {
        IPC::Decoder::decode<WebCore::TextCheckingResult>(a1, &v32);
        v15 = v38;
        if (v38 == 1)
        {
          if (HIDWORD(v39[1]) == LODWORD(v39[1]))
          {
            WTF::Vector<WebCore::TextCheckingResult,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::TextCheckingResult>(v39, &v32);
          }

          else
          {
            v16 = v39[0] + 48 * HIDWORD(v39[1]);
            v17 = v33;
            *v16 = v32;
            *(v16 + 3) = 0;
            *(v16 + 4) = 0;
            *(v16 + 2) = v17;
            v18 = v34;
            v34 = 0;
            *(v16 + 3) = v18;
            LODWORD(v18) = v35;
            v35 = 0;
            *(v16 + 8) = v18;
            LODWORD(v18) = v36;
            v36 = 0;
            *(v16 + 9) = v18;
            v19 = v37;
            v37 = 0;
            *(v16 + 5) = v19;
            ++HIDWORD(v39[1]);
          }
        }

        else
        {
          v14 = 0;
          v13 = 0;
        }

        if (v38 == 1)
        {
          v20 = v37;
          v37 = 0;
          if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v20, v7);
          }

          WTF::Vector<WebCore::GrammarDetail,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v34, v7);
        }

        if ((v15 & 1) == 0)
        {
          break;
        }

        if (!--v12)
        {
          v21 = v39[0];
          v22 = v39[1];
          goto LABEL_24;
        }
      }
    }

    a2[16] = v14;
    *a2 = v13;
    return WTF::Vector<WebCore::TextCheckingResult,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v39, v7);
  }

LABEL_44:
  *a1 = 0;
  a1[1] = 0;
  result = a1[3];
  if (result)
  {
    if (v5)
    {
      result = (*(*result + 16))(result);
    }
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

WTF::StringImpl *IPC::Decoder::decode<WebCore::TextCheckingResult>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<WebCore::TextCheckingResult,void>::decode(a1, a2);
  if ((*(a2 + 48) & 1) == 0)
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

uint64_t WTF::Vector<WebCore::TextCheckingResult,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::TextCheckingResult>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<WebCore::TextCheckingResult,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  v4 = *a1 + 48 * *(a1 + 12);
  v5 = *v3;
  *(v4 + 16) = *(v3 + 16);
  *v4 = v5;
  *(v4 + 32) = 0;
  *(v4 + 24) = 0;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(v4 + 24, (v3 + 24));
  v6 = *(v3 + 40);
  *(v3 + 40) = 0;
  *(v4 + 40) = v6;
  ++*(a1 + 12);
  return 1;
}

unint64_t WTF::Vector<WebCore::TextCheckingResult,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 48 * *(a1 + 12) <= a3)
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

    WTF::Vector<WebCore::TextCheckingResult,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebCore::TextCheckingResult,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WebCore::TextCheckingResult,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    if (a2 >= 0x5555556)
    {
      __break(0xC471u);
      JUMPOUT(0x19DA957A0);
    }

    v3 = *a1;
    v4 = *a1 + 48 * *(a1 + 12);
    v5 = 48 * a2;
    v6 = WTF::fastMalloc((48 * a2));
    *(a1 + 8) = v5 / 0x30;
    *a1 = v6;
    WTF::VectorMover<false,WebCore::TextCheckingResult>::move(v3, v4, v6);
    if (v3)
    {
      if (*a1 == v3)
      {
        *a1 = 0;
        *(a1 + 8) = 0;
      }

      WTF::fastFree(v3, v7);
    }
  }

  return 1;
}

uint64_t WTF::VectorMover<false,WebCore::TextCheckingResult>::move(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result + 24;
    do
    {
      v6 = *(v5 - 24);
      *(a3 + 16) = *(v5 - 8);
      *a3 = v6;
      *(a3 + 24) = 0;
      *(a3 + 32) = 0;
      WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a3 + 24, v5);
      v8 = *(v5 + 16);
      *(v5 + 16) = 0;
      *(a3 + 40) = v8;
      v9 = *(v5 + 16);
      *(v5 + 16) = 0;
      if (v9)
      {
        if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v9, v7);
        }
      }

      result = WTF::Vector<WebCore::GrammarDetail,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v5, v7);
      v10 = v5 + 24;
      v5 += 48;
      a3 += 48;
    }

    while (v10 != a2);
  }

  return result;
}

unsigned int *WTF::Vector<WebCore::TextCheckingResult,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(unsigned int *result, unint64_t this)
{
  if (result[2] > this)
  {
    v3 = result;
    v4 = result[3];
    if (v4 > this)
    {
      result = WTF::VectorTypeOperations<WebCore::TextCheckingResult>::destruct(*result + 48 * this, (*result + 48 * v4));
      *(v3 + 12) = this;
      LODWORD(v4) = this;
    }

    v5 = *v3;
    if (this)
    {
      if (this >= 0x5555556)
      {
        __break(0xC471u);
        JUMPOUT(0x19DA95958);
      }

      v6 = (48 * this);
      result = WTF::fastMalloc(v6);
      *(v3 + 8) = v6 / 0x30;
      *v3 = result;
      if (result != v5)
      {
        result = WTF::VectorMover<false,WebCore::TextCheckingResult>::move(v5, v5 + 48 * v4, result);
      }
    }

    if (v5)
    {
      if (*v3 == v5)
      {
        *v3 = 0;
        *(v3 + 8) = 0;
      }

      return WTF::fastFree(v5, this);
    }
  }

  return result;
}

uint64_t WTF::VectorTypeOperations<WebCore::TextCheckingResult>::destruct(uint64_t result, WTF::StringImpl *a2)
{
  if (result != a2)
  {
    v3 = result + 24;
    do
    {
      v4 = *(v3 + 16);
      *(v3 + 16) = 0;
      if (v4)
      {
        if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v4, a2);
        }
      }

      result = WTF::Vector<WebCore::GrammarDetail,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v3, a2);
      v5 = (v3 + 24);
      v3 += 48;
    }

    while (v5 != a2);
  }

  return result;
}

uint64_t WTF::Vector<WebCore::TextCheckingResult,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorTypeOperations<WebCore::TextCheckingResult>::destruct(*a1, (*a1 + 48 * v3));
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage25UserMediaAccessWasGrantedENS2_10ConnectionEN6WebKit7WebPageES9_FvNS_23ObjectIdentifierGenericIN7WebCore30UserMediaRequestIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONSB_13CaptureDeviceESH_ONSB_20MediaDeviceHashSaltsEONS_6VectorINS8_22SandboxExtensionHandleELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10F5770;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage25UserMediaAccessWasGrantedENS2_10ConnectionEN6WebKit7WebPageES9_FvNS_23ObjectIdentifierGenericIN7WebCore30UserMediaRequestIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONSB_13CaptureDeviceESH_ONSB_20MediaDeviceHashSaltsEONS_6VectorINS8_22SandboxExtensionHandleELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F5770;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage25UserMediaAccessWasGrantedENS2_10ConnectionEN6WebKit7WebPageES9_FvNS_23ObjectIdentifierGenericIN7WebCore30UserMediaRequestIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONSB_13CaptureDeviceESH_ONSB_20MediaDeviceHashSaltsEONS_6VectorINS8_22SandboxExtensionHandleELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3903;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = v3;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::Connection::sendMessageImpl(v2, &v9, 0, 0);
  result = v9;
  v9 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

IPC::Decoder *IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::MediaKeySystemRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String>>(uint64_t a1, uint64_t *a2)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if (v5 & 1) != 0 && ((v6 = v4, result = IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a2, &v15), (v16) || (v9 = *a2, v10 = a2[1], *a2 = 0, a2[1] = 0, (v11 = a2[3]) != 0) && v10 && (result = (*(*v11 + 16))(v11, v9), (v16)))
  {
    v8 = v15;
    *a1 = v6;
    *(a1 + 8) = v8;
    *(a1 + 16) = 1;
  }

  else
  {
    *a1 = 0;
    *(a1 + 16) = 0;
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
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage25RequestMediaPlaybackStateENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvNS8_18MediaPlaybackStateEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSB_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F5798;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage25RequestMediaPlaybackStateENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvNS8_18MediaPlaybackStateEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSB_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F5798;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage25RequestMediaPlaybackStateENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvNS8_18MediaPlaybackStateEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSB_EE4callESB_(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3860;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v5, v2);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage21PauseAllMediaPlaybackENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10F57C0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage21PauseAllMediaPlaybackENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F57C0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage21PauseAllMediaPlaybackENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3834;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = v3;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::Connection::sendMessageImpl(v2, &v9, 0, 0);
  result = v9;
  v9 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage23SuspendAllMediaPlaybackENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10F57E8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage23SuspendAllMediaPlaybackENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F57E8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage23SuspendAllMediaPlaybackENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3886;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = v3;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::Connection::sendMessageImpl(v2, &v9, 0, 0);
  result = v9;
  v9 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage22ResumeAllMediaPlaybackENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10F5810;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage22ResumeAllMediaPlaybackENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F5810;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage22ResumeAllMediaPlaybackENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3867;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = v3;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::Connection::sendMessageImpl(v2, &v9, 0, 0);
  result = v9;
  v9 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

IPC::Decoder *IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::PrintInfo>>(uint64_t a1, IPC::Decoder *a2)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v5 & 1) != 0 && (v6 = v4, result = IPC::Decoder::decode<WebKit::PrintInfo>(v13, a2), v8 = v14, v14 == 1))
  {
    *a1 = v6;
    v9 = v13[1];
    *(a1 + 8) = v13[0];
    *(a1 + 24) = v9;
    *(a1 + 40) = v8;
  }

  else
  {
    *a1 = 0;
    *(a1 + 40) = 0;
    v10 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result)
    {
      v11 = v10 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {
      v12 = *(*result + 16);

      return v12();
    }
  }

  return result;
}

IPC::Decoder *IPC::Decoder::decode<WebKit::PrintInfo>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<WebKit::PrintInfo,void>::decode(a2, a1);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage11EndPrintingENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10F5838;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage11EndPrintingENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F5838;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage11EndPrintingENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3783;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = v3;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::Connection::sendMessageImpl(v2, &v9, 0, 0);
  result = v9;
  v9 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage34EndPrintingDuringDOMPrintOperationENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10F5860;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage34EndPrintingDuringDOMPrintOperationENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F5860;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage34EndPrintingDuringDOMPrintOperationENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3782;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = v3;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::Connection::sendMessageImpl(v2, &v9, 0, 0);
  result = v9;
  v9 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage23ComputePagesForPrintingENS2_10ConnectionEN6WebKit7WebPageES9_FvNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEERKNS8_9PrintInfoEONS_17CompletionHandlerIFvRKNS_6VectorINSB_7IntRectELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEdRKNSB_9RectEdgesIfEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSQ_dSU_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F5888;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage23ComputePagesForPrintingENS2_10ConnectionEN6WebKit7WebPageES9_FvNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEERKNS8_9PrintInfoEONS_17CompletionHandlerIFvRKNS_6VectorINSB_7IntRectELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEdRKNSB_9RectEdgesIfEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSQ_dSU_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F5888;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage23ComputePagesForPrintingENS2_10ConnectionEN6WebKit7WebPageES9_FvNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEERKNS8_9PrintInfoEONS_17CompletionHandlerIFvRKNS_6VectorINSB_7IntRectELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEdRKNSB_9RectEdgesIfEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSQ_dSU_EE4callESQ_dSU_(uint64_t a1, void *a2, float *a3, double a4)
{
  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  v9 = IPC::Encoder::operator new(0x238, a2);
  *v9 = 3759;
  *(v9 + 2) = 0;
  *(v9 + 3) = 0;
  *(v9 + 1) = v8;
  *(v9 + 68) = 0;
  *(v9 + 70) = 0;
  *(v9 + 69) = 0;
  IPC::Encoder::encodeHeader(v9);
  v14 = v9;
  IPC::VectorArgumentCoder<false,WebCore::IntRect,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::IntRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v9, a2);
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(v9, a4);
  IPC::ArgumentCoder<WebCore::PathQuadCurveTo,void>::encode(v9, a3);
  IPC::Connection::sendMessageImpl(v7, &v14, 0, 0);
  result = v14;
  v14 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v10);
    return bmalloc::api::tzoneFree(v12, v13);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage46ComputePagesForPrintingDuringDOMPrintOperationENS2_10ConnectionEN6WebKit7WebPageES9_FvNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEERKNS8_9PrintInfoEONS_17CompletionHandlerIFvRKNS_6VectorINSB_7IntRectELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEdRKNSB_9RectEdgesIfEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSQ_dSU_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F58B0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage46ComputePagesForPrintingDuringDOMPrintOperationENS2_10ConnectionEN6WebKit7WebPageES9_FvNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEERKNS8_9PrintInfoEONS_17CompletionHandlerIFvRKNS_6VectorINSB_7IntRectELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEdRKNSB_9RectEdgesIfEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSQ_dSU_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F58B0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage46ComputePagesForPrintingDuringDOMPrintOperationENS2_10ConnectionEN6WebKit7WebPageES9_FvNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEERKNS8_9PrintInfoEONS_17CompletionHandlerIFvRKNS_6VectorINSB_7IntRectELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEdRKNSB_9RectEdgesIfEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSQ_dSU_EE4callESQ_dSU_(uint64_t a1, void *a2, float *a3, double a4)
{
  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  v9 = IPC::Encoder::operator new(0x238, a2);
  *v9 = 3758;
  *(v9 + 2) = 0;
  *(v9 + 3) = 0;
  *(v9 + 1) = v8;
  *(v9 + 68) = 0;
  *(v9 + 70) = 0;
  *(v9 + 69) = 0;
  IPC::Encoder::encodeHeader(v9);
  v14 = v9;
  IPC::VectorArgumentCoder<false,WebCore::IntRect,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::IntRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v9, a2);
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(v9, a4);
  IPC::ArgumentCoder<WebCore::PathQuadCurveTo,void>::encode(v9, a3);
  IPC::Connection::sendMessageImpl(v7, &v14, 0, 0);
  result = v14;
  v14 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v10);
    return bmalloc::api::tzoneFree(v12, v13);
  }

  return result;
}

unint64_t IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::PrintInfo,WebCore::IntRect,WebCore::IntSize>>(uint64_t a1, IPC::Decoder *a2)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if (v5 & 1) != 0 && (v6 = v4, IPC::Decoder::decode<WebKit::PrintInfo>(v13, a2), (v14) && (IPC::Decoder::decode<WebCore::IntRect>(a2, &v15), v16 == 1) && (result = IPC::Decoder::decode<WebCore::IntSize>(a2), (v8))
  {
    if (v14 & 1) != 0 && (v16)
    {
      *a1 = v6;
      v9 = v13[1];
      *(a1 + 8) = v13[0];
      *(a1 + 24) = v9;
      *(a1 + 40) = v15;
      *(a1 + 56) = result;
      *(a1 + 64) = 1;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 64) = 0;
    v10 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result)
    {
      v11 = v10 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {
      v12 = *(*result + 16);

      return v12();
    }
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage15DrawRectToImageENS2_10ConnectionEN6WebKit7WebPageES9_FvNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEERKNS8_9PrintInfoERKNSB_7IntRectERKNSB_7IntSizeEONS_17CompletionHandlerIFvONSt3__18optionalINSB_21ShareableBitmapHandleEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSU_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F58D8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage15DrawRectToImageENS2_10ConnectionEN6WebKit7WebPageES9_FvNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEERKNS8_9PrintInfoERKNSB_7IntRectERKNSB_7IntSizeEONS_17CompletionHandlerIFvONSt3__18optionalINSB_21ShareableBitmapHandleEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSU_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F58D8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage15DrawRectToImageENS2_10ConnectionEN6WebKit7WebPageES9_FvNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEERKNS8_9PrintInfoERKNSB_7IntRectERKNSB_7IntSizeEONS_17CompletionHandlerIFvONSt3__18optionalINSB_21ShareableBitmapHandleEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSU_EE4callESU_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3778;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::optional<WebCore::ShareableBitmapHandle>,void>::encode<IPC::Encoder,std::optional<WebCore::ShareableBitmapHandle>>(v5, a2);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage38DrawRectToImageDuringDOMPrintOperationENS2_10ConnectionEN6WebKit7WebPageES9_FvNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEERKNS8_9PrintInfoERKNSB_7IntRectERKNSB_7IntSizeEONS_17CompletionHandlerIFvONSt3__18optionalINSB_21ShareableBitmapHandleEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSU_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F5900;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage38DrawRectToImageDuringDOMPrintOperationENS2_10ConnectionEN6WebKit7WebPageES9_FvNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEERKNS8_9PrintInfoERKNSB_7IntRectERKNSB_7IntSizeEONS_17CompletionHandlerIFvONSt3__18optionalINSB_21ShareableBitmapHandleEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSU_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F5900;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage38DrawRectToImageDuringDOMPrintOperationENS2_10ConnectionEN6WebKit7WebPageES9_FvNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEERKNS8_9PrintInfoERKNSB_7IntRectERKNSB_7IntSizeEONS_17CompletionHandlerIFvONSt3__18optionalINSB_21ShareableBitmapHandleEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSU_EE4callESU_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3777;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::optional<WebCore::ShareableBitmapHandle>,void>::encode<IPC::Encoder,std::optional<WebCore::ShareableBitmapHandle>>(v5, a2);
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

IPC::Decoder *IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::PrintInfo,unsigned int,unsigned int>>(uint64_t a1, IPC::Decoder *a2)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if (v5)
  {
    v6 = v4;
    result = IPC::Decoder::decode<WebKit::PrintInfo>(v25, a2);
    if (v26 == 1)
    {
      v8 = *(a2 + 1);
      v9 = ((*(a2 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
      v10 = *a2;
      v11 = v9 - *a2;
      v12 = v8 >= v11;
      v13 = v8 - v11;
      if (v12 && v13 > 3)
      {
        *(a2 + 2) = v9 + 1;
        if (!v9)
        {
LABEL_18:
          *a2 = 0;
          *(a2 + 1) = 0;
          v21 = *(a2 + 3);
          if (v21 && v8)
          {
            (*(*v21 + 16))(v21);
          }

          goto LABEL_19;
        }

        v15 = *v9;
        v16 = ((v9 + 7) & 0xFFFFFFFFFFFFFFFCLL);
        if (v8 >= v16 - v10 && v8 - (v16 - v10) > 3)
        {
          *(a2 + 2) = v16 + 1;
          if (v16)
          {
            v18 = *v16;
            *a1 = v6;
            v19 = v25[1];
            *(a1 + 8) = v25[0];
            *(a1 + 24) = v19;
            *(a1 + 40) = v15;
            *(a1 + 44) = v18;
            *(a1 + 48) = 1;
            return result;
          }

          goto LABEL_18;
        }
      }

      *a2 = 0;
      *(a2 + 1) = 0;
      v20 = *(a2 + 3);
      if (v20)
      {
        if (v8)
        {
          (*(*v20 + 16))(v20);
          v8 = *(a2 + 1);
        }
      }

      else
      {
        v8 = 0;
      }

      goto LABEL_18;
    }
  }

LABEL_19:
  *a1 = 0;
  *(a1 + 48) = 0;
  v22 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result)
  {
    v23 = v22 == 0;
  }

  else
  {
    v23 = 1;
  }

  if (!v23)
  {
    v24 = *(*result + 16);

    return v24();
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage14DrawPagesToPDFENS2_10ConnectionEN6WebKit7WebPageES9_FvNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEERKNS8_9PrintInfoEjjONS_17CompletionHandlerIFvONS_6RefPtrINSB_12SharedBufferENS_12RawPtrTraitsISL_EENS_21DefaultRefDerefTraitsISL_EEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSR_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F5928;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage14DrawPagesToPDFENS2_10ConnectionEN6WebKit7WebPageES9_FvNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEERKNS8_9PrintInfoEjjONS_17CompletionHandlerIFvONS_6RefPtrINSB_12SharedBufferENS_12RawPtrTraitsISL_EENS_21DefaultRefDerefTraitsISL_EEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSR_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F5928;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage14DrawPagesToPDFENS2_10ConnectionEN6WebKit7WebPageES9_FvNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEERKNS8_9PrintInfoEjjONS_17CompletionHandlerIFvONS_6RefPtrINSB_12SharedBufferENS_12RawPtrTraitsISL_EENS_21DefaultRefDerefTraitsISL_EEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSR_EE4callESR_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3776;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,void>::encode<IPC::Encoder,WebCore::SharedBuffer>(v5, a2);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage37DrawPagesToPDFDuringDOMPrintOperationENS2_10ConnectionEN6WebKit7WebPageES9_FvNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEERKNS8_9PrintInfoEjjONS_17CompletionHandlerIFvONS_6RefPtrINSB_12SharedBufferENS_12RawPtrTraitsISL_EENS_21DefaultRefDerefTraitsISL_EEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSR_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F5950;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage37DrawPagesToPDFDuringDOMPrintOperationENS2_10ConnectionEN6WebKit7WebPageES9_FvNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEERKNS8_9PrintInfoEjjONS_17CompletionHandlerIFvONS_6RefPtrINSB_12SharedBufferENS_12RawPtrTraitsISL_EENS_21DefaultRefDerefTraitsISL_EEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSR_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F5950;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage37DrawPagesToPDFDuringDOMPrintOperationENS2_10ConnectionEN6WebKit7WebPageES9_FvNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEERKNS8_9PrintInfoEjjONS_17CompletionHandlerIFvONS_6RefPtrINSB_12SharedBufferENS_12RawPtrTraitsISL_EENS_21DefaultRefDerefTraitsISL_EEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSR_EE4callESR_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3775;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,void>::encode<IPC::Encoder,WebCore::SharedBuffer>(v5, a2);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage12DrawToPDFiOSENS2_10ConnectionEN6WebKit7WebPageES9_FvNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEERKNS8_9PrintInfoEyONS_17CompletionHandlerIFvONS_6RefPtrINSB_12SharedBufferENS_12RawPtrTraitsISL_EENS_21DefaultRefDerefTraitsISL_EEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSR_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F5978;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage12DrawToPDFiOSENS2_10ConnectionEN6WebKit7WebPageES9_FvNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEERKNS8_9PrintInfoEyONS_17CompletionHandlerIFvONS_6RefPtrINSB_12SharedBufferENS_12RawPtrTraitsISL_EENS_21DefaultRefDerefTraitsISL_EEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSR_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F5978;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage12DrawToPDFiOSENS2_10ConnectionEN6WebKit7WebPageES9_FvNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEERKNS8_9PrintInfoEyONS_17CompletionHandlerIFvONS_6RefPtrINSB_12SharedBufferENS_12RawPtrTraitsISL_EENS_21DefaultRefDerefTraitsISL_EEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSR_EE4callESR_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3781;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,void>::encode<IPC::Encoder,WebCore::SharedBuffer>(v5, a2);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage11DrawToImageENS2_10ConnectionEN6WebKit7WebPageES9_FvNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEERKNS8_9PrintInfoEONS_17CompletionHandlerIFvONSt3__18optionalINSB_21ShareableBitmapHandleEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSO_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F59A0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage11DrawToImageENS2_10ConnectionEN6WebKit7WebPageES9_FvNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEERKNS8_9PrintInfoEONS_17CompletionHandlerIFvONSt3__18optionalINSB_21ShareableBitmapHandleEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSO_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F59A0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage11DrawToImageENS2_10ConnectionEN6WebKit7WebPageES9_FvNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEERKNS8_9PrintInfoEONS_17CompletionHandlerIFvONSt3__18optionalINSB_21ShareableBitmapHandleEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSO_EE4callESO_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3779;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::optional<WebCore::ShareableBitmapHandle>,void>::encode<IPC::Encoder,std::optional<WebCore::ShareableBitmapHandle>>(v5, a2);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage9DrawToPDFENS2_10ConnectionEN6WebKit7WebPageES9_FvNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEERKNSt3__18optionalINSB_9FloatRectEEEbONS_17CompletionHandlerIFvONS_6RefPtrINSB_12SharedBufferENS_12RawPtrTraitsISO_EENS_21DefaultRefDerefTraitsISO_EEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSU_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F59C8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage9DrawToPDFENS2_10ConnectionEN6WebKit7WebPageES9_FvNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEERKNSt3__18optionalINSB_9FloatRectEEEbONS_17CompletionHandlerIFvONS_6RefPtrINSB_12SharedBufferENS_12RawPtrTraitsISO_EENS_21DefaultRefDerefTraitsISO_EEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSU_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F59C8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage9DrawToPDFENS2_10ConnectionEN6WebKit7WebPageES9_FvNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEERKNSt3__18optionalINSB_9FloatRectEEEbONS_17CompletionHandlerIFvONS_6RefPtrINSB_12SharedBufferENS_12RawPtrTraitsISO_EENS_21DefaultRefDerefTraitsISO_EEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSU_EE4callESU_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3780;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,void>::encode<IPC::Encoder,WebCore::SharedBuffer>(v5, a2);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage8SetMutedENS2_10ConnectionEN6WebKit7WebPageES9_FvNS_9OptionSetIN7WebCore23MediaProducerMutedStateEEEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10F59F0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage8SetMutedENS2_10ConnectionEN6WebKit7WebPageES9_FvNS_9OptionSetIN7WebCore23MediaProducerMutedStateEEEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F59F0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage8SetMutedENS2_10ConnectionEN6WebKit7WebPageES9_FvNS_9OptionSetIN7WebCore23MediaProducerMutedStateEEEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3878;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = v3;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::Connection::sendMessageImpl(v2, &v9, 0, 0);
  result = v9;
  v9 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

uint64_t IPC::Decoder::decode<WebCore::MediaProducerMediaCaptureKind>(uint64_t *a1)
{
  result = IPC::ArgumentCoder<WebCore::MediaProducerMediaCaptureKind,void>::decode<IPC::Decoder>(a1);
  if ((result & 0x100) == 0)
  {
    v3 = *a1;
    v4 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v5 = a1[3];
    if (v5)
    {
      v6 = v4 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (!v6)
    {
      v7 = result;
      (*(*v5 + 16))(v5, v3);
      return v7;
    }
  }

  return result;
}

uint64_t IPC::ArgumentCoder<WebCore::MediaProducerMediaCaptureKind,void>::decode<IPC::Decoder>(uint64_t *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = *a1;
  if (v1 <= &v2[-*a1])
  {
    *a1 = 0;
    a1[1] = 0;
    v10 = a1;
    v8 = a1[3];
    if (v8)
    {
      if (v1)
      {
        (*(*v8 + 16))(v8);
        v3 = *v10;
        v1 = v10[1];
        goto LABEL_12;
      }
    }

    else
    {
      v1 = 0;
    }

    v3 = 0;
LABEL_12:
    *v10 = 0;
    v10[1] = 0;
    v9 = v10[3];
    if (v9 && v1)
    {
      (*(*v9 + 16))(v9, v3);
    }

    goto LABEL_13;
  }

  a1[2] = (v2 + 1);
  if (!v2)
  {
    v10 = a1;
    goto LABEL_12;
  }

  v4 = *v2;
  if (v4 > 0x10 || ((1 << v4) & 0x10116) == 0)
  {
LABEL_13:
    v4 = 0;
    v6 = 0;
    return v4 | (v6 << 8);
  }

  v6 = 1;
  return v4 | (v6 << 8);
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage16StopMediaCaptureENS2_10ConnectionEN6WebKit7WebPageES9_FvN7WebCore29MediaProducerMediaCaptureKindEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10F5A18;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage16StopMediaCaptureENS2_10ConnectionEN6WebKit7WebPageES9_FvN7WebCore29MediaProducerMediaCaptureKindEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F5A18;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage16StopMediaCaptureENS2_10ConnectionEN6WebKit7WebPageES9_FvN7WebCore29MediaProducerMediaCaptureKindEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3885;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = v3;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::Connection::sendMessageImpl(v2, &v9, 0, 0);
  result = v9;
  v9 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

unint64_t IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::IntPoint>>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::IntPoint>,void>::decode<IPC::Decoder>(a1, a2);
  if ((*(a2 + 16) & 1) == 0)
  {
    v5 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result && v5 != 0)
    {
      v7 = *(*result + 16);

      return v7();
    }
  }

  return result;
}

unint64_t IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::IntPoint>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if (v5 & 1) != 0 && (v6 = result, result = IPC::Decoder::decode<WebCore::IntPoint>(a1), (v7))
  {
    *a2 = v6;
    *(a2 + 8) = result;
    v8 = 1;
  }

  else
  {
    v8 = 0;
    *a2 = 0;
  }

  *(a2 + 16) = v8;
  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage37ResolveAccessibilityHitTestForTestingENS2_10ConnectionEN6WebKit7WebPageES9_FvNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEERKNSB_8IntPointEONS_17CompletionHandlerIFvNS_6StringEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSK_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F5A40;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage37ResolveAccessibilityHitTestForTestingENS2_10ConnectionEN6WebKit7WebPageES9_FvNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEERKNSB_8IntPointEONS_17CompletionHandlerIFvNS_6StringEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSK_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F5A40;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage37ResolveAccessibilityHitTestForTestingENS2_10ConnectionEN6WebKit7WebPageES9_FvNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEERKNSB_8IntPointEONS_17CompletionHandlerIFvNS_6StringEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSK_EE4callESK_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3866;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v5, a2);
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

void *IPC::Decoder::decode<WebKit::EditingRange>@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<WebKit::EditingRange,void>::decode(a1, a2);
  if ((*(a2 + 16) & 1) == 0)
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

unint64_t IPC::Decoder::decode<WebKit::InsertTextOptions>(uint64_t *a1)
{
  result = IPC::ArgumentCoder<WebKit::InsertTextOptions,void>::decode(a1);
  if ((result & 0x100000000000000) == 0)
  {
    v3 = *a1;
    v4 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v5 = a1[3];
    if (v5)
    {
      v6 = v4 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (!v6)
    {
      v7 = result;
      (*(*v5 + 16))(v5, v3);
      return v7;
    }
  }

  return result;
}

unint64_t IPC::Decoder::decode<WebCore::DictationAlternative>(uint64_t a1, uint64_t *a2)
{
  result = IPC::ArgumentCoder<WebCore::DictationAlternative,void>::decode(a2, a1);
  if ((*(a1 + 24) & 1) == 0)
  {
    v5 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    result = a2[3];
    if (result && v5 != 0)
    {
      v7 = *(*result + 16);

      return v7();
    }
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage23AddDictationAlternativeENS2_10ConnectionEN6WebKit7WebPageES9_FvRKNS_6StringENS_23ObjectIdentifierGenericIN7WebCore20DictationContextTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED1Ev(void *a1)
{
  *a1 = &unk_1F10F5A68;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage23AddDictationAlternativeENS2_10ConnectionEN6WebKit7WebPageES9_FvRKNS_6StringENS_23ObjectIdentifierGenericIN7WebCore20DictationContextTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F5A68;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage23AddDictationAlternativeENS2_10ConnectionEN6WebKit7WebPageES9_FvRKNS_6StringENS_23ObjectIdentifierGenericIN7WebCore20DictationContextTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEE4callEb(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3748;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = v3;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v10 = v4;
  IPC::Encoder::operator<<<BOOL>(v4, &v9);
  IPC::Connection::sendMessageImpl(v2, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage32DictationAlternativesAtSelectionENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvONS_6VectorINS_23ObjectIdentifierGenericIN7WebCore20DictationContextTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSL_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F5A90;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage32DictationAlternativesAtSelectionENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvONS_6VectorINS_23ObjectIdentifierGenericIN7WebCore20DictationContextTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSL_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F5A90;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage32DictationAlternativesAtSelectionENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvONS_6VectorINS_23ObjectIdentifierGenericIN7WebCore20DictationContextTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSL_EE4callESL_(uint64_t a1, unsigned int *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3771;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v14 = v5;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v5, a2[3]);
  v6 = a2[3];
  if (v6)
  {
    v7 = *a2;
    v8 = 8 * v6;
    do
    {
      v9 = *v7++;
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v5, v9);
      v8 -= 8;
    }

    while (v8);
  }

  IPC::Connection::sendMessageImpl(v3, &v14, 0, 0);
  result = v14;
  v14 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v10);
    return bmalloc::api::tzoneFree(v12, v13);
  }

  return result;
}

WTF *IPC::ArgumentCoder<std::tuple<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::DictationContextType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::VectorArgumentCoder<false,WTF::ObjectIdentifierGeneric<WebCore::DictationContextType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a1, v9);
  if (v10 & 1) != 0 || ((v6 = *a1, v7 = a1[1], *a1 = 0, a1[1] = 0, (result = a1[3]) != 0) ? (v8 = v7 == 0) : (v8 = 1), !v8 && (result = (*(*result + 16))(result, v6), (v10)))
  {
    *a2 = v9[0];
    *(a2 + 8) = v9[1];
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage13HasMarkedTextENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED1Ev(void *a1)
{
  *a1 = &unk_1F10F5AB8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage13HasMarkedTextENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F5AB8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage13HasMarkedTextENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEE4callEb(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3823;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = v3;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v10 = v4;
  IPC::Encoder::operator<<<BOOL>(v4, &v9);
  IPC::Connection::sendMessageImpl(v2, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage19GetMarkedRangeAsyncENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvRKNS8_12EditingRangeEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSD_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F5AE0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage19GetMarkedRangeAsyncENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvRKNS8_12EditingRangeEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSD_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F5AE0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage19GetMarkedRangeAsyncENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvRKNS8_12EditingRangeEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSD_EE4callESD_(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3804;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v5, *a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v5, a2[1]);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage21GetSelectedRangeAsyncENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvRKNS8_12EditingRangeESD_EEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSD_SD_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F5B08;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage21GetSelectedRangeAsyncENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvRKNS8_12EditingRangeESD_EEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSD_SD_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F5B08;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage21GetSelectedRangeAsyncENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvRKNS8_12EditingRangeESD_EEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSD_SD_EE4callESD_SD_(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = IPC::Encoder::operator new(0x238, a2);
  *v7 = 3812;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = v6;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  IPC::Encoder::encodeHeader(v7);
  v12 = v7;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v7, *a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v7, a2[1]);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v7, *a3);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v7, a3[1]);
  IPC::Connection::sendMessageImpl(v5, &v12, 0, 0);
  result = v12;
  v12 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v8);
    return bmalloc::api::tzoneFree(v10, v11);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage27CharacterIndexForPointAsyncENS2_10ConnectionEN6WebKit7WebPageES9_FvRKN7WebCore8IntPointEONS_17CompletionHandlerIFvyEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJyEED1Ev(void *a1)
{
  *a1 = &unk_1F10F5B30;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage27CharacterIndexForPointAsyncENS2_10ConnectionEN6WebKit7WebPageES9_FvRKN7WebCore8IntPointEONS_17CompletionHandlerIFvyEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJyEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F5B30;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage27CharacterIndexForPointAsyncENS2_10ConnectionEN6WebKit7WebPageES9_FvRKN7WebCore8IntPointEONS_17CompletionHandlerIFvyEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJyEE4callEy(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3753;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v5, a2);
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

void *IPC::Decoder::decode<std::tuple<WebKit::EditingRange>>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::Decoder::decode<WebKit::EditingRange>(a1, &v9);
  v5 = v10;
  if (v10 == 1)
  {
    *a2 = v9;
    *(a2 + 16) = v5;
  }

  else
  {
    *a2 = 0;
    *(a2 + 16) = 0;
    v6 = *a1;
    v7 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    result = a1[3];
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage31FirstRectForCharacterRangeAsyncENS2_10ConnectionEN6WebKit7WebPageES9_FvRKNS8_12EditingRangeEONS_17CompletionHandlerIFvRKN7WebCore7IntRectESC_EEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSH_SC_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F5B58;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage31FirstRectForCharacterRangeAsyncENS2_10ConnectionEN6WebKit7WebPageES9_FvRKNS8_12EditingRangeEONS_17CompletionHandlerIFvRKN7WebCore7IntRectESC_EEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSH_SC_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F5B58;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage31FirstRectForCharacterRangeAsyncENS2_10ConnectionEN6WebKit7WebPageES9_FvRKNS8_12EditingRangeEONS_17CompletionHandlerIFvRKN7WebCore7IntRectESC_EEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSH_SC_EE4callESH_SC_(uint64_t a1, void *a2, uint64_t *a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = IPC::Encoder::operator new(0x238, a2);
  *v7 = 3792;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = v6;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  IPC::Encoder::encodeHeader(v7);
  v12 = v7;
  IPC::ArgumentCoder<WebCore::IntRect,void>::encode(v7, a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v7, *a3);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v7, a3[1]);
  IPC::Connection::sendMessageImpl(v5, &v12, 0, 0);
  result = v12;
  v12 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v8);
    return bmalloc::api::tzoneFree(v10, v11);
  }

  return result;
}

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WebCore::CharacterRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WebCore::CharacterRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WebCore::CharacterRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WebCore::CharacterRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t a2)
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

  return WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WebCore::CharacterRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WebCore::CharacterRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WebCore::CharacterRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WebCore::CharacterRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WebCore::CharacterRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WebCore::CharacterRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WebCore::CharacterRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WebCore::CharacterRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t a3)
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

  v9 = WTF::fastZeroedMalloc((24 * a2 + 16));
  *a1 = (v9 + 4);
  v9[2] = a2 - 1;
  v9[3] = a2;
  *v9 = 0;
  v9[1] = v8;
  v11 = 0;
  if (v7)
  {
    v12 = v6;
    v13 = v7;
    do
    {
      v14 = *v12;
      if (*v12 != -1)
      {
        if (v14)
        {
          v17 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,WTF::Ref<API::Data,WTF::RawPtrTraits<API::Data>,WTF::DefaultRefDerefTraits<API::Data>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,WTF::Ref<API::Data,WTF::RawPtrTraits<API::Data>,WTF::DefaultRefDerefTraits<API::Data>>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,WTF::Ref<API::Data,WTF::RawPtrTraits<API::Data>,WTF::DefaultRefDerefTraits<API::Data>>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,WTF::Ref<API::Data,WTF::RawPtrTraits<API::Data>,WTF::DefaultRefDerefTraits<API::Data>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::lookupForReinsert(a1, v12);
          v19 = (v17 + 8);
          v18 = *(v17 + 8);
          if (v18)
          {
            *(v17 + 8) = 0;
            *(v17 + 16) = 0;
            WTF::fastFree(v18, v16);
          }

          v20 = *v17;
          *v17 = 0;
          if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v20, v16);
          }

          v21 = *v12;
          *v12 = 0;
          *v17 = v21;
          *v19 = 0;
          *(v17 + 16) = 0;
          WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(v19, (v12 + 8));
          v22 = *(v12 + 8);
          if (v22)
          {
            *(v12 + 8) = 0;
            *(v12 + 16) = 0;
            WTF::fastFree(v22, v10);
          }

          v23 = *v12;
          *v12 = 0;
          if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v23, v10);
          }

          if (v12 == a3)
          {
            v11 = v17;
          }
        }

        else
        {
          v15 = *(v12 + 8);
          if (v15)
          {
            *(v12 + 8) = 0;
            *(v12 + 16) = 0;
            WTF::fastFree(v15, v10);
            v14 = *v12;
          }

          *v12 = 0;
          if (v14)
          {
            if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v14, v10);
            }
          }
        }
      }

      v12 += 24;
      --v13;
    }

    while (v13);
  }

  else
  {
    result = 0;
    if (!v6)
    {
      return result;
    }
  }

  WTF::fastFree((v6 - 16), v10);
  return v11;
}

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WebCore::CharacterRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WebCore::CharacterRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WebCore::CharacterRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WebCore::CharacterRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = a1;
    do
    {
      v5 = *v4;
      if (*v4 != -1)
      {
        v6 = *(v4 + 8);
        if (v6)
        {
          *(v4 + 8) = 0;
          *(v4 + 16) = 0;
          WTF::fastFree(v6, a2);
          v5 = *v4;
        }

        *v4 = 0;
        if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v5, a2);
        }
      }

      v4 += 24;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage27ShouldAllowRemoveBackgroundENS2_10ConnectionEN6WebKit7WebPageES9_KFvRKN7WebCore14ElementContextEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED1Ev(void *a1)
{
  *a1 = &unk_1F10F5B80;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage27ShouldAllowRemoveBackgroundENS2_10ConnectionEN6WebKit7WebPageES9_KFvRKN7WebCore14ElementContextEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F5B80;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage27ShouldAllowRemoveBackgroundENS2_10ConnectionEN6WebKit7WebPageES9_KFvRKN7WebCore14ElementContextEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEE4callEb(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3880;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = v3;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v10 = v4;
  IPC::Encoder::operator<<<BOOL>(v4, &v9);
  IPC::Connection::sendMessageImpl(v2, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

unint64_t IPC::Decoder::decode<std::tuple<std::optional<WebCore::FloatSize>>>(IPC::Decoder *a1)
{
  result = IPC::Decoder::decode<std::optional<WebCore::FloatSize>>(a1);
  v4 = v3 & 0x100000000;
  if ((v3 & 0x100000000) == 0)
  {
    v6 = *a1;
    v5 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v7 = *(a1 + 3);
    if (v7 && v5 != 0)
    {
      v9 = result;
      (*(*v7 + 16))(v7, v6);
      v4 = 0;
      result = v9;
    }
  }

  if (!v4)
  {
    return 0;
  }

  return result;
}

uint64_t IPC::Decoder::decode<std::tuple<std::optional<WebCore::ScrollbarOverlayStyle>>>(IPC::Decoder *a1)
{
  v2 = IPC::Decoder::decode<std::optional<WebCore::ScrollbarOverlayStyle>>(a1);
  v3 = v2 & 0x10000;
  if ((v2 & 0x10000) == 0)
  {
    v6 = *a1;
    v7 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v8 = *(a1 + 3);
    if (v8 && v7 != 0)
    {
      v11 = v2;
      v10 = v2 & 0x10000;
      (*(*v8 + 16))(v8, v6);
      v3 = v10;
      LOWORD(v2) = v11;
    }
  }

  v4 = v2;
  if (!v3)
  {
    v4 = 0;
  }

  return v4 | v3;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage18GetBytecodeProfileENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvRKNS_6StringEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSD_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F5BA8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage18GetBytecodeProfileENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvRKNS_6StringEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSD_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F5BA8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage18GetBytecodeProfileENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvRKNS_6StringEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSD_EE4callESD_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3797;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v5, a2);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage25GetSamplingProfilerOutputENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvRKNS_6StringEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSD_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F5BD0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage25GetSamplingProfilerOutputENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvRKNS_6StringEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSD_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F5BD0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage25GetSamplingProfilerOutputENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvRKNS_6StringEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSD_EE4callESD_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3811;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v5, a2);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage12TakeSnapshotENS2_10ConnectionEN6WebKit7WebPageES9_FvN7WebCore7IntRectENSA_7IntSizeENS_9OptionSetINS8_14SnapshotOptionEEEONS_17CompletionHandlerIFvONSt3__18optionalIN5mpark7variantIJNSA_21ShareableBitmapHandleENS_13MachSendRightEEEEEENSA_8HeadroomEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSP_SQ_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F5BF8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage12TakeSnapshotENS2_10ConnectionEN6WebKit7WebPageES9_FvN7WebCore7IntRectENSA_7IntSizeENS_9OptionSetINS8_14SnapshotOptionEEEONS_17CompletionHandlerIFvONSt3__18optionalIN5mpark7variantIJNSA_21ShareableBitmapHandleENS_13MachSendRightEEEEEENSA_8HeadroomEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSP_SQ_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F5BF8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage12TakeSnapshotENS2_10ConnectionEN6WebKit7WebPageES9_FvN7WebCore7IntRectENSA_7IntSizeENS_9OptionSetINS8_14SnapshotOptionEEEONS_17CompletionHandlerIFvONSt3__18optionalIN5mpark7variantIJNSA_21ShareableBitmapHandleENS_13MachSendRightEEEEEENSA_8HeadroomEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSP_SQ_EE4callESP_SQ_(uint64_t a1, void *a2, float a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = IPC::Encoder::operator new(0x238, a2);
  *v7 = 3889;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = v6;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  IPC::Encoder::encodeHeader(v7);
  v12 = v7;
  IPC::ArgumentCoder<std::optional<mpark::variant<WebCore::ShareableBitmapHandle,WTF::MachSendRight>>,void>::encode<IPC::Encoder,std::optional<mpark::variant<WebCore::ShareableBitmapHandle,WTF::MachSendRight>>>(v7, a2);
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(v7, a3);
  IPC::Connection::sendMessageImpl(v5, &v12, 0, 0);
  result = v12;
  v12 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v8);
    return bmalloc::api::tzoneFree(v10, v11);
  }

  return result;
}

WTF::StringImpl *IPC::Decoder::decode<std::tuple<WebKit::WebMouseEvent>>(uint64_t a1, uint64_t *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  result = IPC::Decoder::decode<WebKit::WebMouseEvent>(a2, &v15);
  if (v27)
  {
    *(a1 + 8) = 0;
    *(a1 + 12) = v16;
    *(a1 + 28) = v17;
    *(a1 + 44) = v18;
    *a1 = &unk_1F10E8378;
    v6 = v20;
    *(a1 + 48) = v19;
    *(a1 + 64) = v6;
    v7 = v22;
    *(a1 + 80) = v21;
    *(a1 + 96) = v7;
    v8 = v23;
    v23 = 0;
    *(a1 + 112) = v8;
    *(a1 + 120) = v24;
    v9 = *(&v25 + 1);
    *(a1 + 128) = v25;
    *(a1 + 136) = v9;
    v10 = v26;
    v25 = 0u;
    v26 = 0u;
    *(a1 + 144) = v10;
    *(a1 + 160) = 1;
    v15 = &unk_1F10E8378;
    WTF::Vector<WebKit::WebMouseEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v26, v5);
    WTF::Vector<WebKit::WebMouseEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v25, v11);
    result = v23;
    v23 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v12);
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 160) = 0;
  }

  if ((*(a1 + 160) & 1) == 0)
  {
    v13 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    result = a2[3];
    if (result)
    {
      if (v13)
      {
        v14 = *(*result + 16);

        return v14();
      }
    }
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage27PerformHitTestForMouseEventENS2_10ConnectionEN6WebKit7WebPageES9_FvRKNS8_13WebMouseEventEONS_17CompletionHandlerIFvONS8_20WebHitTestResultDataENS_9OptionSetINS8_16WebEventModifierEEEONS8_8UserDataEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSF_SI_SK_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F5C20;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage27PerformHitTestForMouseEventENS2_10ConnectionEN6WebKit7WebPageES9_FvRKNS8_13WebMouseEventEONS_17CompletionHandlerIFvONS8_20WebHitTestResultDataENS_9OptionSetINS8_16WebEventModifierEEEONS8_8UserDataEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSF_SI_SK_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F5C20;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage27PerformHitTestForMouseEventENS2_10ConnectionEN6WebKit7WebPageES9_FvRKNS8_13WebMouseEventEONS_17CompletionHandlerIFvONS8_20WebHitTestResultDataENS_9OptionSetINS8_16WebEventModifierEEEONS8_8UserDataEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSF_SI_SK_EE4callESF_SI_SK_(uint64_t a1, void *a2, char a3, uint64_t *a4)
{
  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  v9 = IPC::Encoder::operator new(0x238, a2);
  *v9 = 3838;
  *(v9 + 2) = 0;
  *(v9 + 3) = 0;
  *(v9 + 1) = v8;
  *(v9 + 68) = 0;
  *(v9 + 70) = 0;
  *(v9 + 69) = 0;
  IPC::Encoder::encodeHeader(v9);
  v14 = v9;
  IPC::ArgumentCoder<WebKit::WebHitTestResultData,void>::encode(v9, a2);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v9, a3);
  IPC::ArgumentCoder<WebKit::UserData,void>::encode(v9, a4);
  IPC::Connection::sendMessageImpl(v7, &v14, 0, 0);
  result = v14;
  v14 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v10);
    return bmalloc::api::tzoneFree(v12, v13);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage34RequestActiveNowPlayingSessionInfoENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvbON7WebCore14NowPlayingInfoEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbSD_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F5C48;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage34RequestActiveNowPlayingSessionInfoENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvbON7WebCore14NowPlayingInfoEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbSD_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F5C48;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage34RequestActiveNowPlayingSessionInfoENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvbON7WebCore14NowPlayingInfoEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbSD_EE4callEbSD_(uint64_t a1, void *a2, uint64_t a3)
{
  v12 = a2;
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 3849;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = v5;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v13 = v6;
  v7 = IPC::Encoder::operator<<<BOOL>(v6, &v12);
  IPC::ArgumentCoder<WebCore::NowPlayingInfo,void>::encode(v7, a3);
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

uint64_t IPC::Decoder::decode<std::tuple<BOOL,WebKit::CallbackID>>(_BYTE *a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<std::tuple<BOOL,WebKit::CallbackID>,void>::decode<IPC::Decoder>(a1, a2);
  if ((a1[16] & 1) == 0)
  {

    return IPC::Decoder::markInvalid(a2);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::tuple<BOOL,WebKit::CallbackID>,void>::decode<IPC::Decoder>(_BYTE *a1, IPC::Decoder *a2)
{
  result = IPC::Decoder::decode<BOOL>(a2);
  v5 = result;
  if ((result & 0x100) != 0)
  {
    return IPC::ArgumentCoder<std::tuple<BOOL,WebKit::CallbackID>,void>::decode<IPC::Decoder,BOOL>(a1, a2, &v5);
  }

  *a1 = 0;
  a1[16] = 0;
  return result;
}

uint64_t IPC::ArgumentCoder<std::tuple<BOOL,WebKit::CallbackID>,void>::decode<IPC::Decoder,BOOL>(uint64_t a1, IPC::Decoder *a2, _BYTE *a3)
{
  result = IPC::Decoder::decode<WebKit::CallbackID>(a2, &v7);
  if ((v8 & 1) == 0)
  {
    v6 = 0;
    *a1 = 0;
    goto LABEL_4;
  }

  if (a3[1])
  {
    *a1 = *a3;
    *(a1 + 8) = v7;
    v6 = 1;
LABEL_4:
    *(a1 + 16) = v6;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t IPC::Decoder::decode<WebKit::CallbackID>@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  result = IPC::ArgumentCoder<WebKit::CallbackID,void>::decode(a1, a2);
  if ((a2[8] & 1) == 0)
  {

    return IPC::Decoder::markInvalid(a1);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage25DidGetLoadDecisionForIconENS2_10ConnectionEN6WebKit7WebPageES9_FvbNS8_10CallbackIDEONS_17CompletionHandlerIFvRKNS2_21SharedBufferReferenceEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSE_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F5C70;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage25DidGetLoadDecisionForIconENS2_10ConnectionEN6WebKit7WebPageES9_FvbNS8_10CallbackIDEONS_17CompletionHandlerIFvRKNS2_21SharedBufferReferenceEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSE_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F5C70;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *IPC::Connection::sendAsyncReply<Messages::WebPage::DidGetLoadDecisionForIcon,IPC::SharedBufferReference const&>(uint64_t *a1, void *a2, IPC::SharedBufferReference *a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 3772;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a2;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v11 = v6;
  IPC::ArgumentCoder<IPC::SharedBufferReference,void>::encode(v6, a3);
  IPC::Connection::sendMessageImpl(a1, &v11, 0, 0);
  result = v11;
  v11 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v7);
    return bmalloc::api::tzoneFree(v9, v10);
  }

  return result;
}

uint64_t IPC::callMemberFunction<WebKit::WebPage,WebKit::WebPage,void ()(BOOL,WebKit::CallbackID,WTF::CompletionHandler<void ()(IPC::SharedBufferReference const&)> &&),std::tuple<BOOL,WebKit::CallbackID>,void ()(IPC::SharedBufferReference const&)>(WebKit::WebPage *,void ()(BOOL,WebKit::CallbackID,WTF::CompletionHandler<void ()(IPC::SharedBufferReference const&)> &&) WebKit::WebPage::*,std::tuple<BOOL,WebKit::CallbackID> &&,WTF::CompletionHandler<void ()(IPC::SharedBufferReference const&)> &&)::{lambda(WebKit::WebPage &&)#1}::operator()<BOOL,WebKit::CallbackID>(uint64_t a1, char a2, uint64_t a3)
{
  v5 = *(a1 + 8);
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = (**a1 + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  v10[1] = v3;
  v10[2] = v4;
  v10[0] = a3;
  return v6(v8, a2 & 1, v10, *(a1 + 16));
}

uint64_t IPC::VectorArgumentCoder<false,std::optional<WebKit::GamepadData>,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, char *a2@<X8>, __n128 a3@<Q1>)
{
  v5 = *(a1 + 1);
  v6 = ((*(a1 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *a1;
  v8 = v6 - *a1;
  v9 = v5 >= v8;
  v10 = v5 - v8;
  if (!v9 || v10 <= 7)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v29 = *(a1 + 3);
    if (v29)
    {
      if (v5)
      {
        (*(*v29 + 16))(v29);
        v5 = *(a1 + 1);
      }
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_62;
  }

  *(a1 + 2) = v6 + 1;
  if (v6)
  {
    v12 = *v6;
    v40 = 0uLL;
    if (v12 >= 0x3333)
    {
      v13 = *a2;
      v14 = a2[16];
      while (1)
      {
        IPC::Decoder::decode<std::optional<WebKit::GamepadData>>(a1, v30);
        v22 = v39;
        if (v39 == 1)
        {
          if (v40.n128_u32[3] == v40.n128_u32[2])
          {
            WTF::Vector<std::optional<WebKit::GamepadData>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,std::optional<WebKit::GamepadData>>(&v40, v30);
          }

          else
          {
            std::optional<WebKit::GamepadData>::optional[abi:sn200100](v40.n128_u64[0] + 80 * v40.n128_u32[3]++, v30);
          }
        }

        else
        {
          v14 = 0;
          v13 = 0;
        }

        if (v39 == 1 && v38 == 1)
        {
          if (v37)
          {
            WTF::fastFree((v37 - 16), v7);
          }

          v23 = v35;
          if (v35)
          {
            v35 = 0;
            v36 = 0;
            WTF::fastFree(v23, v7);
          }

          v24 = v33;
          if (v33)
          {
            v33 = 0;
            v34 = 0;
            WTF::fastFree(v24, v7);
          }

          v25 = v32;
          v32 = 0;
          if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v25, v7);
          }

          v26 = v31;
          v31 = 0;
          if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v26, v7);
          }
        }

        if ((v22 & 1) == 0)
        {
          break;
        }

        if (!--v12)
        {
          WTF::Vector<std::optional<WebKit::GamepadData>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v40, v40.n128_u32[3]);
          *a2 = v40.n128_u64[0];
          v27 = v40.n128_u64[1];
          v40 = 0uLL;
          *(a2 + 1) = v27;
          goto LABEL_34;
        }
      }
    }

    else
    {
      if (!v12)
      {
        v20 = 0;
        v21 = 0;
LABEL_33:
        a3.n128_u64[0] = 0;
        v40 = a3;
        *a2 = v20;
        *(a2 + 1) = v21;
LABEL_34:
        a2[16] = 1;
        return WTF::Vector<std::optional<WebKit::GamepadData>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v40, v7);
      }

      v40.n128_u32[2] = 80 * v12 / 0x50u;
      v40.n128_u64[0] = WTF::fastMalloc((80 * v12));
      v13 = *a2;
      v14 = a2[16];
      while (1)
      {
        IPC::Decoder::decode<std::optional<WebKit::GamepadData>>(a1, v30);
        v15 = v39;
        if (v39 == 1)
        {
          if (v40.n128_u32[3] == v40.n128_u32[2])
          {
            WTF::Vector<std::optional<WebKit::GamepadData>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,std::optional<WebKit::GamepadData>>(&v40, v30);
          }

          else
          {
            std::optional<WebKit::GamepadData>::optional[abi:sn200100](v40.n128_u64[0] + 80 * v40.n128_u32[3]++, v30);
          }
        }

        else
        {
          v14 = 0;
          v13 = 0;
        }

        if (v39 == 1 && v38 == 1)
        {
          if (v37)
          {
            WTF::fastFree((v37 - 16), v7);
          }

          v16 = v35;
          if (v35)
          {
            v35 = 0;
            v36 = 0;
            WTF::fastFree(v16, v7);
          }

          v17 = v33;
          if (v33)
          {
            v33 = 0;
            v34 = 0;
            WTF::fastFree(v17, v7);
          }

          v18 = v32;
          v32 = 0;
          if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v18, v7);
          }

          v19 = v31;
          v31 = 0;
          if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v19, v7);
          }
        }

        if ((v15 & 1) == 0)
        {
          break;
        }

        if (!--v12)
        {
          v21 = v40.n128_u64[1];
          v20 = v40.n128_u64[0];
          goto LABEL_33;
        }
      }
    }

    a2[16] = v14;
    *a2 = v13;
    return WTF::Vector<std::optional<WebKit::GamepadData>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v40, v7);
  }

LABEL_62:
  *a1 = 0;
  *(a1 + 1) = 0;
  result = *(a1 + 3);
  if (result)
  {
    if (v5)
    {
      result = (*(*result + 16))(result);
    }
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

WTF::StringImpl *IPC::Decoder::decode<std::optional<WebKit::GamepadData>>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<std::optional<WebKit::GamepadData>,void>::decode<IPC::Decoder>(a1, a2);
  if ((*(a2 + 80) & 1) == 0)
  {
    v5 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result && v5 != 0)
    {
      v7 = *(*result + 16);

      return v7();
    }
  }

  return result;
}

WTF::StringImpl *IPC::ArgumentCoder<std::optional<WebKit::GamepadData>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 1);
  v5 = *(a1 + 2);
  v6 = *a1;
  if (v4 <= &v5[-*a1])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v17 = *(a1 + 3);
    if (v17)
    {
      if (v4)
      {
        (*(*v17 + 16))(v17);
        v4 = *(a1 + 1);
      }
    }

    else
    {
      v4 = 0;
    }

LABEL_29:
    *a1 = 0;
    *(a1 + 1) = 0;
    v18 = *(a1 + 3);
    if (v18)
    {
      if (v4)
      {
        (*(*v18 + 16))(v18);
        v6 = *a1;
        v4 = *(a1 + 1);
        goto LABEL_32;
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = 0;
    goto LABEL_32;
  }

  *(a1 + 2) = v5 + 1;
  if (!v5)
  {
    goto LABEL_29;
  }

  v7 = *v5;
  if (v7 < 2)
  {
    if (v7)
    {
      result = IPC::ArgumentCoder<WebKit::GamepadData,void>::decode(a1, &v19);
      if (v27 & 1) != 0 || (v15 = *a1, v16 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (result = *(a1 + 3)) != 0) && v16 && (result = (*(*result + 16))(result, v15), (v27))
      {
        *a2 = v19;
        *(a2 + 8) = *v20;
        *(a2 + 24) = v21;
        *(a2 + 32) = v22;
        *(a2 + 40) = v23;
        *(a2 + 48) = v24;
        v9 = v26;
        *(a2 + 56) = v25;
        *(a2 + 64) = v9;
        v10 = 1;
        *(a2 + 72) = 1;
      }

      else
      {
        v10 = 0;
        *a2 = 0;
      }

      *(a2 + 80) = v10;
    }

    else
    {
      LOBYTE(v19) = 0;
      v27 = 0;
      result = std::optional<WebKit::GamepadData>::optional[abi:sn200100](a2, &v19);
      *(a2 + 80) = 1;
      if (v27 == 1)
      {
        if (v26)
        {
          WTF::fastFree((v26 - 16), v11);
        }

        v12 = v23;
        if (v23)
        {
          v23 = 0;
          LODWORD(v24) = 0;
          WTF::fastFree(v12, v11);
        }

        v13 = v21;
        if (v21)
        {
          v21 = 0;
          LODWORD(v22) = 0;
          WTF::fastFree(v13, v11);
        }

        v14 = v20[1];
        v20[1] = 0;
        if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v14, v11);
        }

        result = v20[0];
        v20[0] = 0;
        if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v11);
        }
      }
    }

    return result;
  }

LABEL_32:
  *a1 = 0;
  *(a1 + 1) = 0;
  result = *(a1 + 3);
  if (result && v4)
  {
    result = (*(*result + 16))(result, v6);
  }

  *a2 = 0;
  *(a2 + 80) = 0;
  return result;
}

uint64_t std::optional<WebKit::GamepadData>::optional[abi:sn200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 72) = 0;
  if (*(a2 + 72) == 1)
  {
    *a1 = *a2;
    v4 = *(a2 + 8);
    *(a2 + 8) = 0;
    *(a1 + 8) = v4;
    v5 = *(a2 + 16);
    *(a2 + 16) = 0;
    *(a1 + 16) = v5;
    *(a1 + 32) = 0;
    *(a1 + 24) = 0;
    WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1 + 24, (a2 + 24));
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1 + 40, (a2 + 40));
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 64) = 0;
    v6 = *(a2 + 64);
    *(a2 + 64) = 0;
    *(a1 + 64) = v6;
    *(a1 + 72) = 1;
  }

  return a1;
}

uint64_t WTF::Vector<std::optional<WebKit::GamepadData>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,std::optional<WebKit::GamepadData>>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<std::optional<WebKit::GamepadData>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  std::optional<WebKit::GamepadData>::optional[abi:sn200100](*a1 + 80 * *(a1 + 12), v3);
  ++*(a1 + 12);
  return 1;
}

unint64_t WTF::Vector<std::optional<WebKit::GamepadData>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 80 * *(a1 + 12) <= a3)
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

    WTF::Vector<std::optional<WebKit::GamepadData>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<std::optional<WebKit::GamepadData>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<std::optional<WebKit::GamepadData>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    if (a2 >= 0x3333334)
    {
      __break(0xC471u);
      JUMPOUT(0x19DA9A088);
    }

    v3 = *a1;
    v4 = (*a1 + 80 * *(a1 + 12));
    v5 = 80 * a2;
    v6 = WTF::fastMalloc((80 * a2));
    *(a1 + 8) = v5 / 0x50;
    *a1 = v6;
    WTF::VectorMover<false,std::optional<WebKit::GamepadData>>::move(v3, v4, v6);
    if (v3)
    {
      if (*a1 == v3)
      {
        *a1 = 0;
        *(a1 + 8) = 0;
      }

      WTF::fastFree(v3, v7);
    }
  }

  return 1;
}

WTF::StringImpl *WTF::VectorMover<false,std::optional<WebKit::GamepadData>>::move(WTF::StringImpl *result, WTF::StringImpl *a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    do
    {
      result = std::optional<WebKit::GamepadData>::optional[abi:sn200100](a3, v5);
      if (*(v5 + 72) == 1)
      {
        v7 = *(v5 + 64);
        if (v7)
        {
          WTF::fastFree((v7 - 16), v6);
        }

        v8 = *(v5 + 40);
        if (v8)
        {
          *(v5 + 40) = 0;
          *(v5 + 48) = 0;
          WTF::fastFree(v8, v6);
        }

        v9 = *(v5 + 24);
        if (v9)
        {
          *(v5 + 24) = 0;
          *(v5 + 32) = 0;
          WTF::fastFree(v9, v6);
        }

        v10 = *(v5 + 16);
        *(v5 + 16) = 0;
        if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v10, v6);
        }

        result = *(v5 + 8);
        *(v5 + 8) = 0;
        if (result)
        {
          if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            result = WTF::StringImpl::destroy(result, v6);
          }
        }
      }

      a3 += 80;
      v5 += 80;
    }

    while (v5 != a2);
  }

  return result;
}

unsigned int *WTF::Vector<std::optional<WebKit::GamepadData>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(unsigned int *result, unint64_t this)
{
  if (result[2] > this)
  {
    v3 = result;
    v4 = result[3];
    if (v4 > this)
    {
      result = WTF::VectorTypeOperations<std::optional<WebKit::GamepadData>>::destruct((*result + 80 * this), (*result + 80 * v4));
      *(v3 + 12) = this;
      LODWORD(v4) = this;
    }

    v5 = *v3;
    if (this)
    {
      if (this >= 0x3333334)
      {
        __break(0xC471u);
        JUMPOUT(0x19DA9A264);
      }

      v6 = (80 * this);
      result = WTF::fastMalloc(v6);
      *(v3 + 8) = v6 / 0x50;
      *v3 = result;
      if (result != v5)
      {
        result = WTF::VectorMover<false,std::optional<WebKit::GamepadData>>::move(v5, (v5 + 80 * v4), result);
      }
    }

    if (v5)
    {
      if (*v3 == v5)
      {
        *v3 = 0;
        *(v3 + 8) = 0;
      }

      return WTF::fastFree(v5, this);
    }
  }

  return result;
}

WTF::StringImpl *WTF::VectorTypeOperations<std::optional<WebKit::GamepadData>>::destruct(WTF::StringImpl *result, WTF::StringImpl *a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      if (*(v3 + 72) == 1)
      {
        v4 = *(v3 + 8);
        if (v4)
        {
          WTF::fastFree((v4 - 16), a2);
        }

        v5 = *(v3 + 5);
        if (v5)
        {
          *(v3 + 5) = 0;
          *(v3 + 12) = 0;
          WTF::fastFree(v5, a2);
        }

        v6 = *(v3 + 3);
        if (v6)
        {
          *(v3 + 3) = 0;
          *(v3 + 8) = 0;
          WTF::fastFree(v6, a2);
        }

        v7 = *(v3 + 2);
        *(v3 + 2) = 0;
        if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v7, a2);
        }

        result = *(v3 + 1);
        *(v3 + 1) = 0;
        if (result)
        {
          if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            result = WTF::StringImpl::destroy(result, a2);
          }
        }
      }

      v3 = (v3 + 80);
    }

    while (v3 != a2);
  }

  return result;
}

uint64_t WTF::Vector<std::optional<WebKit::GamepadData>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorTypeOperations<std::optional<WebKit::GamepadData>>::destruct(*a1, (*a1 + 80 * v3));
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

void IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ResourceResponse,WebCore::ResourceRequest>>(uint64_t a1, IPC::Decoder *a2)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v5 & 1) == 0 || (v6 = v4, v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2), (v8 & 1) == 0))
  {
    *a1 = 0;
    *(a1 + 480) = 0;
LABEL_17:
    v28 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v29 = *(a2 + 3);
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
      v31 = *(*v29 + 16);

      v31();
    }

    return;
  }

  v9 = v7;
  IPC::ArgumentCoder<WebCore::ResourceResponse,void>::decode(a2, v37);
  if ((v57 & 1) == 0)
  {
    goto LABEL_25;
  }

  while (1)
  {
    IPC::ArgumentCoder<WebCore::ResourceRequest,void>::decode(a2, v58);
    if ((v71 & 1) == 0)
    {
      v17 = *a2;
      v35 = *(a2 + 1);
      *a2 = 0;
      *(a2 + 1) = 0;
      v36 = *(a2 + 3);
      if (!v36 || !v35 || ((*(*v36 + 16))(v36, v17), (v71 & 1) == 0))
      {
        *a1 = 0;
        *(a1 + 480) = 0;
        goto LABEL_10;
      }
    }

    if (v57)
    {
      break;
    }

    __break(1u);
LABEL_25:
    v32 = *a2;
    v33 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v34 = *(a2 + 3);
    if (v34)
    {
      if (v33)
      {
        (*(*v34 + 16))(v34, v32);
        if (v57)
        {
          continue;
        }
      }
    }

    *a1 = 0;
    *(a1 + 480) = 0;
    goto LABEL_14;
  }

  *a1 = v6;
  *(a1 + 8) = v9;
  WTF::URL::URL(a1 + 16, v37);
  v10 = v38;
  v11 = v39;
  v38 = 0;
  *(a1 + 56) = v10;
  *(a1 + 64) = v11;
  v12 = v40;
  v40 = 0u;
  *(a1 + 72) = v12;
  v13 = v41;
  v41 = 0u;
  *(a1 + 88) = v13;
  *&v13 = v42;
  v42 = 0;
  *(a1 + 104) = v13;
  v14 = v43;
  v43 = 0u;
  *(a1 + 112) = v14;
  v15 = v44;
  v44 = 0;
  *(a1 + 128) = v15;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  if (v46 == 1)
  {
    v27 = v45;
    v45 = 0;
    *(a1 + 136) = v27;
    *(a1 + 144) = 1;
  }

  *(a1 + 152) = v47;
  *(a1 + 154) = v48;
  v16 = cf;
  *(a1 + 160) = v49;
  *(a1 + 200) = v52;
  *(a1 + 216) = v53;
  *(a1 + 232) = v54[0];
  *(a1 + 243) = *(v54 + 11);
  *(a1 + 168) = v50;
  *(a1 + 184) = v51;
  v49 = 0;
  cf = 0;
  *(a1 + 264) = v16;
  *(a1 + 272) = v56;
  WTF::URL::URL(a1 + 280, v58);
  WTF::URL::URL(a1 + 320, v59);
  v18 = v61;
  *(a1 + 360) = v59[5];
  v19 = v60;
  v60 = 0u;
  *(a1 + 368) = v19;
  v61 = 0;
  *(a1 + 384) = v18;
  *&v19 = *(&v62 + 1);
  *(a1 + 392) = v62;
  *(a1 + 400) = v19;
  v20 = v63;
  v62 = 0u;
  v63 = 0u;
  *(a1 + 408) = v20;
  v21 = v64;
  *(a1 + 428) = v65;
  *(a1 + 424) = v21;
  v22 = v66;
  v66 = 0u;
  *(a1 + 432) = v22;
  v23 = v67;
  v24 = v68;
  *(a1 + 464) = v69;
  *(a1 + 448) = v23;
  *(a1 + 456) = v24;
  v25 = v70;
  v67 = 0;
  v70 = 0;
  *(a1 + 472) = v25;
  *(a1 + 480) = 1;
  if (v71)
  {
    WebCore::ResourceRequest::~ResourceRequest(v58);
  }

LABEL_10:
  if (v57)
  {
    v26 = cf;
    cf = 0;
    if (v26)
    {
      CFRelease(v26);
    }

    WebCore::ResourceResponseBase::~ResourceResponseBase(v37, v17);
  }

LABEL_14:
  if ((*(a1 + 480) & 1) == 0)
  {
    goto LABEL_17;
  }
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage35URLSchemeTaskWillPerformRedirectionENS2_10ConnectionEN6WebKit7WebPageES9_FvNS_23ObjectIdentifierGenericINS8_33WebURLSchemeHandlerIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSA_IN7WebCore28ResourceLoaderIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONSF_16ResourceResponseEONSF_15ResourceRequestEONS_17CompletionHandlerIFvSN_EEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F5C98;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage35URLSchemeTaskWillPerformRedirectionENS2_10ConnectionEN6WebKit7WebPageES9_FvNS_23ObjectIdentifierGenericINS8_33WebURLSchemeHandlerIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSA_IN7WebCore28ResourceLoaderIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONSF_16ResourceResponseEONSF_15ResourceRequestEONS_17CompletionHandlerIFvSN_EEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F5C98;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage35URLSchemeTaskWillPerformRedirectionENS2_10ConnectionEN6WebKit7WebPageES9_FvNS_23ObjectIdentifierGenericINS8_33WebURLSchemeHandlerIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSA_IN7WebCore28ResourceLoaderIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONSF_16ResourceResponseEONSF_15ResourceRequestEONS_17CompletionHandlerIFvSN_EEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_EE4callESN_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3893;
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage14SetIsSuspendedENS2_10ConnectionEN6WebKit7WebPageES9_FvbONS_17CompletionHandlerIFvNSt3__18optionalIbEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSD_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F5CC0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage14SetIsSuspendedENS2_10ConnectionEN6WebKit7WebPageES9_FvbONS_17CompletionHandlerIFvNSt3__18optionalIbEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSD_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F5CC0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage14SetIsSuspendedENS2_10ConnectionEN6WebKit7WebPageES9_FvbONS_17CompletionHandlerIFvNSt3__18optionalIbEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSD_EE4callESD_(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3877;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = v3;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v10 = v4;
  IPC::ArgumentCoder<std::optional<BOOL>,void>::encode<IPC::Encoder,std::optional<BOOL>>(v4, &v9);
  IPC::Connection::sendMessageImpl(v2, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage16InsertAttachmentENS2_10ConnectionEN6WebKit7WebPageES9_FvRKNS_6StringEONSt3__18optionalIyEESC_SC_ONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10F5CE8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage16InsertAttachmentENS2_10ConnectionEN6WebKit7WebPageES9_FvRKNS_6StringEONSt3__18optionalIyEESC_SC_ONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F5CE8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage16InsertAttachmentENS2_10ConnectionEN6WebKit7WebPageES9_FvRKNS_6StringEONSt3__18optionalIyEESC_SC_ONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3824;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = v3;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::Connection::sendMessageImpl(v2, &v9, 0, 0);
  result = v9;
  v9 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage26UpdateAttachmentAttributesENS2_10ConnectionEN6WebKit7WebPageES9_FvRKNS_6StringEONSt3__18optionalIyEESC_SC_RKNS2_21SharedBufferReferenceEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10F5D10;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage26UpdateAttachmentAttributesENS2_10ConnectionEN6WebKit7WebPageES9_FvRKNS_6StringEONSt3__18optionalIyEESC_SC_RKNS2_21SharedBufferReferenceEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F5D10;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage26UpdateAttachmentAttributesENS2_10ConnectionEN6WebKit7WebPageES9_FvRKNS_6StringEONSt3__18optionalIyEESC_SC_RKNS2_21SharedBufferReferenceEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3894;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = v3;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::Connection::sendMessageImpl(v2, &v9, 0, 0);
  result = v9;
  v9 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage22GetApplicationManifestENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvRKNSt3__18optionalIN7WebCore19ApplicationManifestEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSH_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F5D38;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage22GetApplicationManifestENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvRKNSt3__18optionalIN7WebCore19ApplicationManifestEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSH_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F5D38;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage22GetApplicationManifestENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvRKNSt3__18optionalIN7WebCore19ApplicationManifestEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSH_EE4callESH_(uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3796;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v11 = v5;
  if (a2[272])
  {
    v12 = 1;
    IPC::Encoder::operator<<<BOOL>(v5, &v12);
    if ((a2[272] & 1) == 0)
    {
      v10 = std::__throw_bad_optional_access[abi:sn200100]();
      return _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage20GetTextFragmentMatchENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvRKNS_6StringEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSD_EED1Ev(v10);
    }

    IPC::ArgumentCoder<WebCore::ApplicationManifest,void>::encode(v5, a2);
  }

  else
  {
    v13 = 0;
    IPC::Encoder::operator<<<BOOL>(v5, &v13);
  }

  IPC::Connection::sendMessageImpl(v3, &v11, 0, 0);
  result = v11;
  v11 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v6);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage20GetTextFragmentMatchENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvRKNS_6StringEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSD_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F5D60;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage20GetTextFragmentMatchENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvRKNS_6StringEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSD_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F5D60;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage20GetTextFragmentMatchENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvRKNS_6StringEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSD_EE4callESD_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3817;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v5, a2);
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

uint64_t IPC::Decoder::decode<std::tuple<WTF::OptionSet<WebCore::PlatformEventModifier>>>(IPC::Decoder *a1)
{
  v2 = IPC::Decoder::decode<WTF::OptionSet<WebCore::PlatformEventModifier>>(a1);
  v3 = v2;
  v4 = v2 & 0x100;
  if ((v2 & 0x100) == 0)
  {
    IPC::Decoder::markInvalid(a1);
  }

  v5 = v3;
  if (!v4)
  {
    v5 = 0;
  }

  return v5 | v4;
}

uint64_t IPC::Decoder::decode<WTF::OptionSet<WebCore::PlatformEventModifier>>(IPC::Decoder *a1)
{
  v2 = IPC::ArgumentCoder<WTF::OptionSet<WebCore::PlatformEventModifier>,void>::decode<IPC::Decoder>(a1);
  if (v2 <= 0xFFu)
  {
    IPC::Decoder::markInvalid(a1);
  }

  return v2;
}

uint64_t IPC::ArgumentCoder<WTF::OptionSet<WebCore::PlatformEventModifier>,void>::decode<IPC::Decoder>(IPC::Decoder *a1)
{
  v1 = IPC::Decoder::decode<unsigned char>(a1);
  if ((v1 & 0x100) != 0)
  {
    v2 = v1;
    v3 = WTF::isValidOptionSet<WebCore::PlatformEventModifier>(v1);
    if (v3)
    {
      v4 = v2;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  return v4 | (v3 << 8);
}

unint64_t IPC::Decoder::decode<std::tuple<BOOL,unsigned int,unsigned int>>(uint64_t *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = *a1;
  if (v1 <= v2 - *a1)
  {
    *a1 = 0;
    a1[1] = 0;
    v23 = a1;
    v18 = a1[3];
    if (v18)
    {
      if (v1)
      {
        (*(*v18 + 16))(v18);
        v3 = *v23;
        v1 = v23[1];
        goto LABEL_25;
      }
    }

    else
    {
      v1 = 0;
    }

    v3 = 0;
LABEL_25:
    *v23 = 0;
    v23[1] = 0;
    v19 = v23[3];
    if (v19)
    {
      if (v1)
      {
        (*(*v19 + 16))(v19, v3);
        v3 = *v23;
        v1 = v23[1];
        goto LABEL_29;
      }
    }

    else
    {
      v1 = 0;
    }

    v3 = 0;
LABEL_29:
    *v23 = 0;
    v23[1] = 0;
    v20 = v23[3];
    if (v20 && v1)
    {
      (*(*v20 + 16))(v20, v3);
    }

    goto LABEL_30;
  }

  a1[2] = v2 + 1;
  if (!v2)
  {
    v23 = a1;
    goto LABEL_25;
  }

  v4 = *v2;
  if (v4 >= 2)
  {
    v23 = a1;
    goto LABEL_29;
  }

  v5 = v2 & 0xFFFFFFFFFFFFFFFCLL;
  v6 = v5 + 4 - v3;
  v7 = v1 >= v6;
  v8 = v1 - v6;
  if (!v7 || v8 <= 3)
  {
LABEL_17:
    v14 = 0;
    v15 = 0;
    *a1 = 0;
    a1[1] = 0;
    v23 = a1;
    v16 = a1[3];
    if (v16)
    {
      (*(*v16 + 16))(v16);
      v15 = *v23;
      v14 = v23[1];
    }

    goto LABEL_19;
  }

  a1[2] = v5 + 8;
  if (v5 != -4)
  {
    v10 = (v5 + 11) & 0xFFFFFFFFFFFFFFFCLL;
    if (v1 < v10 - v3 || v1 - (v10 - v3) <= 3)
    {
      goto LABEL_17;
    }

    v12 = *(v5 + 4);
    a1[2] = v10 + 4;
    if (v10)
    {
      return v4 | (v12 << 32);
    }
  }

  v23 = a1;
  v14 = v1;
  v15 = v3;
LABEL_19:
  *v23 = 0;
  v23[1] = 0;
  v17 = v23[3];
  if (v17 && v14)
  {
    (*(*v17 + 16))(v17, v15, v14);
  }

LABEL_30:
  v21 = *v23;
  v22 = v23[1];
  *v23 = 0;
  v23[1] = 0;
  result = v23[3];
  if (result)
  {
    if (v22)
    {
      (*(*result + 16))(result, v21);
    }

    return 0;
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage27GetLoadedSubresourceDomainsENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvNS_6VectorIN7WebCore17RegistrableDomainELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSG_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F5D88;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage27GetLoadedSubresourceDomainsENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvNS_6VectorIN7WebCore17RegistrableDomainELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSG_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F5D88;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage27GetLoadedSubresourceDomainsENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvNS_6VectorIN7WebCore17RegistrableDomainELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSG_EE4callESG_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3802;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v5, a2);
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

uint64_t IPC::Decoder::decode<WebCore::TextManipulationControllerExclusionRule>(uint64_t a1, uint64_t *a2)
{
  result = IPC::ArgumentCoder<WebCore::TextManipulationControllerExclusionRule,void>::decode(a2, a1);
  if ((*(a1 + 32) & 1) == 0)
  {
    v5 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    result = a2[3];
    if (result && v5 != 0)
    {
      v7 = *(*result + 16);

      return v7();
    }
  }

  return result;
}

uint64_t WTF::Vector<WebCore::TextManipulationControllerExclusionRule,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::TextManipulationControllerExclusionRule>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<WebCore::TextManipulationControllerExclusionRule,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  v4 = *a1 + 32 * *(a1 + 12);
  *v4 = *v3;
  *(v4 + 8) = 0;
  *(v4 + 24) = -1;
  v5 = *(v3 + 24);
  if (v5 != 255)
  {
    v6 = *(v3 + 8);
    *(v3 + 8) = 0;
    *(v4 + 8) = v6;
    if (v5 == 1)
    {
      v7 = *(v3 + 16);
      *(v3 + 16) = 0;
      *(v4 + 16) = v7;
    }

    *(v4 + 24) = v5;
  }

  ++*(a1 + 12);
  return 1;
}

unint64_t WTF::Vector<WebCore::TextManipulationControllerExclusionRule,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
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

    WTF::Vector<WebCore::TextManipulationControllerExclusionRule,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebCore::TextManipulationControllerExclusionRule,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WebCore::TextManipulationControllerExclusionRule,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    v2 = a2;
    if (a2 >> 27)
    {
      __break(0xC471u);
      JUMPOUT(0x19DA9B5FCLL);
    }

    v4 = *a1;
    v5 = (*a1 + 32 * *(a1 + 12));
    v6 = WTF::fastMalloc((32 * a2));
    *(a1 + 8) = v2;
    *a1 = v6;
    WTF::VectorMover<false,WebCore::TextManipulationControllerExclusionRule>::move(v4, v5, v6);
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

  return 1;
}

WTF::StringImpl *WTF::VectorMover<false,WebCore::TextManipulationControllerExclusionRule>::move(WTF::StringImpl *result, WTF::StringImpl *a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = result;
    v5 = (a3 + 24);
    do
    {
      *(v5 - 24) = *v4;
      *(v5 - 16) = 0;
      *v5 = -1;
      v6 = *(v4 + 24);
      if (v6 != 255)
      {
        v7 = *(v4 + 1);
        *(v4 + 1) = 0;
        *(v5 - 2) = v7;
        if (v6 == 1)
        {
          v8 = *(v4 + 2);
          *(v4 + 2) = 0;
          *(v5 - 1) = v8;
        }

        *v5 = v6;
        if (*(v4 + 24) <= 1u)
        {
          if (*(v4 + 24))
          {
            v9 = *(v4 + 2);
            *(v4 + 2) = 0;
            if (v9)
            {
              if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v9, a2);
              }
            }
          }

LABEL_12:
          result = *(v4 + 1);
          *(v4 + 1) = 0;
          if (result)
          {
            if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              result = WTF::StringImpl::destroy(result, a2);
            }
          }

          goto LABEL_15;
        }

        if (*(v4 + 24) == 2)
        {
          goto LABEL_12;
        }
      }

LABEL_15:
      *(v4 + 24) = -1;
      v4 = (v4 + 32);
      v5 += 32;
    }

    while (v4 != a2);
  }

  return result;
}

WTF::StringImpl *WTF::VectorTypeOperations<WebCore::TextManipulationControllerExclusionRule>::destruct(WTF::StringImpl *result, WTF::StringImpl *a2)
{
  if (result != a2)
  {
    v3 = result;
    while (*(v3 + 24) > 1u)
    {
      if (*(v3 + 24) == 2)
      {
        goto LABEL_9;
      }

LABEL_12:
      *(v3 + 24) = -1;
      v3 = (v3 + 32);
      if (v3 == a2)
      {
        return result;
      }
    }

    if (*(v3 + 24))
    {
      v4 = *(v3 + 2);
      *(v3 + 2) = 0;
      if (v4)
      {
        if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v4, a2);
        }
      }
    }

LABEL_9:
    result = *(v3 + 1);
    *(v3 + 1) = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, a2);
      }
    }

    goto LABEL_12;
  }

  return result;
}

uint64_t WTF::Vector<WebCore::TextManipulationControllerExclusionRule,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorTypeOperations<WebCore::TextManipulationControllerExclusionRule>::destruct(*a1, (*a1 + 32 * v3));
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage22StartTextManipulationsENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_6VectorIN7WebCore39TextManipulationControllerExclusionRuleELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEbONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10F5DB0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage22StartTextManipulationsENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_6VectorIN7WebCore39TextManipulationControllerExclusionRuleELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEbONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F5DB0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage22StartTextManipulationsENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_6VectorIN7WebCore39TextManipulationControllerExclusionRuleELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEbONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3884;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = v3;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::Connection::sendMessageImpl(v2, &v9, 0, 0);
  result = v9;
  v9 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::tuple<WTF::Vector<WebCore::TextManipulationItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q1>)
{
  IPC::VectorArgumentCoder<false,WebCore::TextManipulationItem,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a1, &v11, a3);
  if (v13 & 1) != 0 || ((v8 = *a1, v9 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (result = *(a1 + 3)) != 0) ? (v10 = v9 == 0) : (v10 = 1), !v10 && (result = (*(*result + 16))(result, v8), (v13)))
  {
    *a2 = v11;
    v6 = v12;
    v11 = 0;
    v12 = 0;
    *(a2 + 8) = v6;
    *(a2 + 16) = 1;
    return WTF::Vector<WebCore::TextManipulationItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v11, v5);
  }

  else
  {
    *a2 = 0;
    *(a2 + 16) = 0;
  }

  return result;
}

uint64_t IPC::VectorArgumentCoder<false,WebCore::TextManipulationItem,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, char *a2@<X8>, __n128 a3@<Q1>)
{
  v5 = *(a1 + 1);
  v6 = ((*(a1 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *a1;
  v8 = v6 - *a1;
  v9 = v5 >= v8;
  v10 = v5 - v8;
  if (!v9 || v10 <= 7)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v27 = *(a1 + 3);
    if (v27)
    {
      if (v5)
      {
        (*(*v27 + 16))(v27);
        v5 = *(a1 + 1);
      }
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_38;
  }

  *(a1 + 2) = v6 + 1;
  if (v6)
  {
    v12 = *v6;
    v34[0] = 0;
    v34[1] = 0;
    if (v12 >= 0x6666)
    {
      v13 = *a2;
      v14 = a2[16];
      while (1)
      {
        IPC::Decoder::decode<WebCore::TextManipulationItem>(a1, &v28);
        v21 = v33;
        if (v33 == 1)
        {
          if (HIDWORD(v34[1]) == LODWORD(v34[1]))
          {
            WTF::Vector<WebCore::TextManipulationItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::TextManipulationItem>(v34, &v28);
          }

          else
          {
            v22 = v34[0] + 40 * HIDWORD(v34[1]);
            v23 = v29;
            *v22 = v28;
            *(v22 + 3) = 0;
            *(v22 + 4) = 0;
            *(v22 + 2) = v23;
            v24 = v30;
            v30 = 0;
            *(v22 + 3) = v24;
            LODWORD(v24) = v31;
            v31 = 0;
            *(v22 + 8) = v24;
            LODWORD(v24) = v32;
            v32 = 0;
            *(v22 + 9) = v24;
            ++HIDWORD(v34[1]);
          }
        }

        else
        {
          v14 = 0;
          v13 = 0;
        }

        if (v33 == 1)
        {
          WTF::Vector<WebCore::TextManipulationToken,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v30, v7);
        }

        if ((v21 & 1) == 0)
        {
          break;
        }

        if (!--v12)
        {
          WTF::Vector<WebCore::TextManipulationItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(v34, HIDWORD(v34[1]));
          *a2 = v34[0];
          v25 = v34[1];
          v34[0] = 0;
          v34[1] = 0;
          *(a2 + 1) = v25;
          goto LABEL_22;
        }
      }
    }

    else
    {
      if (!v12)
      {
        v19 = 0;
        v20 = 0;
LABEL_21:
        a3.n128_u64[0] = 0;
        *v34 = a3;
        *a2 = v19;
        *(a2 + 1) = v20;
LABEL_22:
        a2[16] = 1;
        return WTF::Vector<WebCore::TextManipulationItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v34, v7);
      }

      LODWORD(v34[1]) = 40 * v12 / 0x28u;
      v34[0] = WTF::fastMalloc((40 * v12));
      v13 = *a2;
      v14 = a2[16];
      while (1)
      {
        IPC::Decoder::decode<WebCore::TextManipulationItem>(a1, &v28);
        v15 = v33;
        if (v33 == 1)
        {
          if (HIDWORD(v34[1]) == LODWORD(v34[1]))
          {
            WTF::Vector<WebCore::TextManipulationItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::TextManipulationItem>(v34, &v28);
          }

          else
          {
            v16 = v34[0] + 40 * HIDWORD(v34[1]);
            v17 = v29;
            *v16 = v28;
            *(v16 + 3) = 0;
            *(v16 + 4) = 0;
            *(v16 + 2) = v17;
            v18 = v30;
            v30 = 0;
            *(v16 + 3) = v18;
            LODWORD(v18) = v31;
            v31 = 0;
            *(v16 + 8) = v18;
            LODWORD(v18) = v32;
            v32 = 0;
            *(v16 + 9) = v18;
            ++HIDWORD(v34[1]);
          }
        }

        else
        {
          v14 = 0;
          v13 = 0;
        }

        if (v33 == 1)
        {
          WTF::Vector<WebCore::TextManipulationToken,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v30, v7);
        }

        if ((v15 & 1) == 0)
        {
          break;
        }

        if (!--v12)
        {
          v19 = v34[0];
          v20 = v34[1];
          goto LABEL_21;
        }
      }
    }

    a2[16] = v14;
    *a2 = v13;
    return WTF::Vector<WebCore::TextManipulationItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v34, v7);
  }

LABEL_38:
  *a1 = 0;
  *(a1 + 1) = 0;
  result = *(a1 + 3);
  if (result)
  {
    if (v5)
    {
      result = (*(*result + 16))(result);
    }
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

WTF::StringImpl *IPC::Decoder::decode<WebCore::TextManipulationItem>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<WebCore::TextManipulationItem,void>::decode(a1, a2);
  if ((*(a2 + 40) & 1) == 0)
  {
    v5 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result && v5 != 0)
    {
      v7 = *(*result + 16);

      return v7();
    }
  }

  return result;
}

uint64_t WTF::Vector<WebCore::TextManipulationItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::TextManipulationItem>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<WebCore::TextManipulationItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  v4 = *a1 + 40 * *(a1 + 12);
  v5 = *v3;
  *(v4 + 16) = *(v3 + 16);
  *v4 = v5;
  *(v4 + 32) = 0;
  *(v4 + 24) = 0;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(v4 + 24, (v3 + 24));
  ++*(a1 + 12);
  return 1;
}

unint64_t WTF::Vector<WebCore::TextManipulationItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 40 * *(a1 + 12) <= a3)
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

    WTF::Vector<WebCore::TextManipulationItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebCore::TextManipulationItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WebCore::TextManipulationItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    if (a2 >= 0x6666667)
    {
      __break(0xC471u);
      JUMPOUT(0x19DA9BF58);
    }

    v3 = *a1;
    v4 = (*a1 + 40 * *(a1 + 12));
    v5 = 40 * a2;
    v6 = WTF::fastMalloc((40 * a2));
    *(a1 + 8) = v5 / 0x28;
    *a1 = v6;
    WTF::VectorMover<false,WebCore::TextManipulationItem>::move(v3, v4, v6);
    if (v3)
    {
      if (*a1 == v3)
      {
        *a1 = 0;
        *(a1 + 8) = 0;
      }

      WTF::fastFree(v3, v7);
    }
  }

  return 1;
}

uint64_t WTF::VectorMover<false,WebCore::TextManipulationItem>::move(uint64_t result, _DWORD *a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = (result + 24);
    do
    {
      v6 = *(v5 - 6);
      *(a3 + 16) = *(v5 - 1);
      *a3 = v6;
      *(a3 + 32) = 0;
      *(a3 + 24) = 0;
      WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a3 + 24, v5);
      result = WTF::Vector<WebCore::TextManipulationToken,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v5, v7);
      v8 = v5 + 4;
      v5 += 10;
      a3 += 40;
    }

    while (v8 != a2);
  }

  return result;
}

unsigned int *WTF::Vector<WebCore::TextManipulationItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(unsigned int *result, unint64_t this)
{
  if (result[2] > this)
  {
    v3 = result;
    if (result[3] > this)
    {
      result = WTF::Vector<WebCore::TextManipulationItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrink(result, this);
    }

    v4 = *v3;
    if (this)
    {
      if (this >= 0x6666667)
      {
        __break(0xC471u);
        return result;
      }

      v5 = *(v3 + 12);
      v6 = (40 * this);
      result = WTF::fastMalloc(v6);
      *(v3 + 8) = v6 / 0x28;
      *v3 = result;
      if (result != v4)
      {
        result = WTF::VectorMover<false,WebCore::TextManipulationItem>::move(v4, v4 + 10 * v5, result);
      }
    }

    if (v4)
    {
      if (*v3 == v4)
      {
        *v3 = 0;
        *(v3 + 8) = 0;
      }

      return WTF::fastFree(v4, this);
    }
  }

  return result;
}

uint64_t WTF::Vector<WebCore::TextManipulationItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrink(uint64_t result, unint64_t a2)
{
  v2 = *(result + 12);
  if (v2 < a2)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v4 = result;
    if (v2 != a2)
    {
      v5 = 40 * v2 - 40 * a2;
      result = *result + 40 * a2 + 24;
      do
      {
        result = WTF::Vector<WebCore::TextManipulationToken,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(result, a2) + 40;
        v5 -= 40;
      }

      while (v5);
    }

    *(v4 + 12) = v3;
  }

  return result;
}

uint64_t WTF::Vector<WebCore::TextManipulationItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = 40 * v3;
    v5 = *a1 + 24;
    do
    {
      v5 = WTF::Vector<WebCore::TextManipulationToken,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v5, a2) + 40;
      v4 -= 40;
    }

    while (v4);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage24CompleteTextManipulationENS2_10ConnectionEN6WebKit7WebPageES9_FvRKNS_6VectorIN7WebCore20TextManipulationItemELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvRKNSB_44TextManipulationControllerManipulationResultEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSL_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F5DD8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage24CompleteTextManipulationENS2_10ConnectionEN6WebKit7WebPageES9_FvRKNS_6VectorIN7WebCore20TextManipulationItemELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvRKNSB_44TextManipulationControllerManipulationResultEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSL_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F5DD8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage24CompleteTextManipulationENS2_10ConnectionEN6WebKit7WebPageES9_FvRKNS_6VectorIN7WebCore20TextManipulationItemELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvRKNSB_44TextManipulationControllerManipulationResultEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSL_EE4callESL_(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3756;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::VectorArgumentCoder<false,WebCore::TextManipulationControllerManipulationFailure,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::TextManipulationControllerManipulationFailure,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(v5, a2);
  IPC::ArgumentCoder<std::span<double const,18446744073709551615ul>,void>::encode<IPC::Encoder>(v5, *(a2 + 16), *(a2 + 28));
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage21GetProcessDisplayNameENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvONS_6StringEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSC_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F5E00;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage21GetProcessDisplayNameENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvONS_6StringEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSC_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F5E00;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage21GetProcessDisplayNameENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvONS_6StringEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSC_EE4callESC_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3806;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v5, a2);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage33CreateAppHighlightInSelectedRangeENS2_10ConnectionEN6WebKit7WebPageES9_FvN7WebCore26CreateNewGroupForHighlightENSA_31HighlightRequestOriginatedInAppEONS_17CompletionHandlerIFvONSA_12AppHighlightEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSF_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F5E28;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage33CreateAppHighlightInSelectedRangeENS2_10ConnectionEN6WebKit7WebPageES9_FvN7WebCore26CreateNewGroupForHighlightENSA_31HighlightRequestOriginatedInAppEONS_17CompletionHandlerIFvONSA_12AppHighlightEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSF_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F5E28;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage33CreateAppHighlightInSelectedRangeENS2_10ConnectionEN6WebKit7WebPageES9_FvN7WebCore26CreateNewGroupForHighlightENSA_31HighlightRequestOriginatedInAppEONS_17CompletionHandlerIFvONSA_12AppHighlightEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSF_EE4callESF_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3763;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<WebCore::AppHighlight,void>::encode(v5, a2);
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

uint64_t WTF::Vector<WebCore::SharedMemoryHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::SharedMemoryHandle>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<WebCore::SharedMemoryHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  *(WTF::MachSendRight::MachSendRight() + 8) = *(v3 + 8);
  ++*(a1 + 12);
  return 1;
}

unint64_t WTF::Vector<WebCore::SharedMemoryHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 16 * *(a1 + 12) <= a3)
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

    WTF::Vector<WebCore::SharedMemoryHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebCore::SharedMemoryHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WebCore::SharedMemoryHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    v2 = a2;
    if (a2 >> 28)
    {
      __break(0xC471u);
      JUMPOUT(0x19DA9C73CLL);
    }

    v4 = *a1;
    v5 = (*a1 + 16 * *(a1 + 12));
    v6 = WTF::fastMalloc((16 * a2));
    *(a1 + 8) = v2;
    *a1 = v6;
    WTF::VectorMover<false,WebCore::SharedMemoryHandle>::move(v4, v5, v6);
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

  return 1;
}

void WTF::VectorMover<false,WebCore::SharedMemoryHandle>::move(WTF::MachSendRight *a1, WTF::MachSendRight *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      WTF::MachSendRight::MachSendRight();
      *(a3 + 8) = *(v5 + 1);
      WTF::MachSendRight::~MachSendRight(v5);
      a3 += 16;
      v5 = (v5 + 16);
    }

    while (v5 != a2);
  }
}

void WTF::Vector<WebCore::SharedMemoryHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) > a2)
  {
    v4 = *(a1 + 12);
    if (v4 > a2)
    {
      v5 = (*a1 + 16 * a2);
      v6 = 16 * v4 - 16 * a2;
      do
      {
        WTF::MachSendRight::~MachSendRight(v5);
        v5 = (v7 + 16);
        v6 -= 16;
      }

      while (v6);
      *(a1 + 12) = a2;
      LODWORD(v4) = a2;
    }

    v8 = *a1;
    if (a2)
    {
      if (a2 >> 28)
      {
        __break(0xC471u);
        return;
      }

      v9 = WTF::fastMalloc((16 * a2));
      *(a1 + 8) = a2;
      *a1 = v9;
      if (v9 != v8)
      {
        WTF::VectorMover<false,WebCore::SharedMemoryHandle>::move(v8, (v8 + 16 * v4), v9);
      }
    }

    if (v8)
    {
      if (*a1 == v8)
      {
        *a1 = 0;
        *(a1 + 8) = 0;
      }

      WTF::fastFree(v8, a2);
    }
  }
}

uint64_t WTF::Vector<WebCore::SharedMemoryHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = *a1;
    v5 = 16 * v3;
    do
    {
      WTF::MachSendRight::~MachSendRight(v4);
      v4 = (v6 + 16);
      v5 -= 16;
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

uint64_t IPC::Decoder::decode<std::tuple<WebCore::HighlightVisibility>>(IPC::Decoder *a1)
{
  v2 = IPC::Decoder::decode<WebCore::HighlightVisibility>(a1);
  v3 = v2 & 0x100;
  if ((v2 & 0x100) == 0)
  {
    v6 = *a1;
    v7 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v8 = *(a1 + 3);
    if (v8 && v7 != 0)
    {
      v11 = v2;
      v10 = v2 & 0x100;
      (*(*v8 + 16))(v8, v6);
      v3 = v10;
      LOBYTE(v2) = v11;
    }
  }

  v4 = v2;
  if (!v3)
  {
    v4 = 0;
  }

  return v4 | v3;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage40CreateTextFragmentDirectiveFromSelectionENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvONS_3URLEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSC_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F5E50;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage40CreateTextFragmentDirectiveFromSelectionENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvONS_3URLEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSC_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F5E50;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage40CreateTextFragmentDirectiveFromSelectionENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvONS_3URLEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSC_EE4callESC_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3765;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v5, a2);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage21GetTextFragmentRangesENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvOKNS_6VectorINS8_12EditingRangeELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSH_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F5E78;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage21GetTextFragmentRangesENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvOKNS_6VectorINS8_12EditingRangeELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSH_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F5E78;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage21GetTextFragmentRangesENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvOKNS_6VectorINS8_12EditingRangeELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSH_EE4callESH_(uint64_t a1, unsigned int *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3818;
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
    v8 = &v7[2 * v6];
    do
    {
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v5, *v7);
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v5, v7[1]);
      v7 += 2;
    }

    while (v7 != v8);
  }

  IPC::Connection::sendMessageImpl(v3, &v13, 0, 0);
  result = v13;
  v13 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v9);
    return bmalloc::api::tzoneFree(v11, v12);
  }

  return result;
}

unint64_t IPC::Decoder::decode<WebKit::WebWheelEvent>(uint64_t a1, uint64_t *a2)
{
  result = IPC::ArgumentCoder<WebKit::WebWheelEvent,void>::decode(a2, a1);
  if ((*(a1 + 128) & 1) == 0)
  {
    v5 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    result = a2[3];
    if (result && v5 != 0)
    {
      v7 = *(*result + 16);

      return v7();
    }
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage16HandleWheelEventENS2_10ConnectionEN6WebKit7WebPageES9_FvNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEERKNS8_13WebWheelEventERKNS_9OptionSetINSB_25WheelEventProcessingStepsEEENSt3__18optionalIbEEONS_17CompletionHandlerIFvNSP_INSB_16ProcessQualifiedINSA_INSB_19ScrollingNodeIDTypeESE_yEEEEEENSP_INSB_23WheelScrollGestureStateEEEbNSP_INSB_24RemoteUserInputEventDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSW_SY_bS10_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F5EA0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage16HandleWheelEventENS2_10ConnectionEN6WebKit7WebPageES9_FvNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEERKNS8_13WebWheelEventERKNS_9OptionSetINSB_25WheelEventProcessingStepsEEENSt3__18optionalIbEEONS_17CompletionHandlerIFvNSP_INSB_16ProcessQualifiedINSA_INSB_19ScrollingNodeIDTypeESE_yEEEEEENSP_INSB_23WheelScrollGestureStateEEEbNSP_INSB_24RemoteUserInputEventDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSW_SY_bS10_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F5EA0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage16HandleWheelEventENS2_10ConnectionEN6WebKit7WebPageES9_FvNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEERKNS8_13WebWheelEventERKNS_9OptionSetINSB_25WheelEventProcessingStepsEEENSt3__18optionalIbEEONS_17CompletionHandlerIFvNSP_INSB_16ProcessQualifiedINSA_INSB_19ScrollingNodeIDTypeESE_yEEEEEENSP_INSB_23WheelScrollGestureStateEEEbNSP_INSB_24RemoteUserInputEventDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSW_SY_bS10_EE4callESW_SY_bS10_(uint64_t a1, void *a2, __int16 a3, char a4, uint64_t a5)
{
  v16 = a4;
  v9 = *(a1 + 8);
  v8 = *(a1 + 16);
  v10 = IPC::Encoder::operator new(0x238, a2);
  *v10 = 3822;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 1) = v9;
  *(v10 + 68) = 0;
  *(v10 + 70) = 0;
  *(v10 + 69) = 0;
  IPC::Encoder::encodeHeader(v10);
  v17 = v10;
  IPC::ArgumentCoder<std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>> const&>(v10, a2);
  if ((a3 & 0x100) != 0)
  {
    v18 = 1;
    IPC::Encoder::operator<<<BOOL>(v10, &v18);
    IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v10, a3);
  }

  else
  {
    v19 = 0;
    IPC::Encoder::operator<<<BOOL>(v10, &v19);
  }

  v11 = IPC::Encoder::operator<<<BOOL>(v10, &v16);
  IPC::ArgumentCoder<std::optional<WebCore::RemoteUserInputEventData>,void>::encode<IPC::Encoder,std::optional<WebCore::RemoteUserInputEventData> const&>(v11, a5);
  IPC::Connection::sendMessageImpl(v8, &v17, 0, 0);
  result = v17;
  v17 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v12);
    return bmalloc::api::tzoneFree(v14, v15);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage34DispatchWheelEventWithoutScrollingENS2_10ConnectionEN6WebKit7WebPageES9_FvNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEERKNS8_13WebWheelEventEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED1Ev(void *a1)
{
  *a1 = &unk_1F10F5EC8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage34DispatchWheelEventWithoutScrollingENS2_10ConnectionEN6WebKit7WebPageES9_FvNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEERKNS8_13WebWheelEventEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F5EC8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage34DispatchWheelEventWithoutScrollingENS2_10ConnectionEN6WebKit7WebPageES9_FvNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEERKNS8_13WebWheelEventEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEE4callEb(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3773;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = v3;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v10 = v4;
  IPC::Encoder::operator<<<BOOL>(v4, &v9);
  IPC::Connection::sendMessageImpl(v2, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage29LastNavigationWasAppInitiatedENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED1Ev(void *a1)
{
  *a1 = &unk_1F10F5EF0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage29LastNavigationWasAppInitiatedENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F5EF0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage29LastNavigationWasAppInitiatedENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEE4callEb(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3827;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = v3;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v10 = v4;
  IPC::Encoder::operator<<<BOOL>(v4, &v9);
  IPC::Connection::sendMessageImpl(v2, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage31UpdateWithTextRecognitionResultENS2_10ConnectionEN6WebKit7WebPageES9_FvRKN7WebCore21TextRecognitionResultERKNSA_14ElementContextERKNSA_10FloatPointEONS_17CompletionHandlerIFvNS8_27TextRecognitionUpdateResultEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSL_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F5F18;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage31UpdateWithTextRecognitionResultENS2_10ConnectionEN6WebKit7WebPageES9_FvRKN7WebCore21TextRecognitionResultERKNSA_14ElementContextERKNSA_10FloatPointEONS_17CompletionHandlerIFvNS8_27TextRecognitionUpdateResultEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSL_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F5F18;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage31UpdateWithTextRecognitionResultENS2_10ConnectionEN6WebKit7WebPageES9_FvRKN7WebCore21TextRecognitionResultERKNSA_14ElementContextERKNSA_10FloatPointEONS_17CompletionHandlerIFvNS8_27TextRecognitionUpdateResultEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSL_EE4callESL_(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3902;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v5, v2);
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

uint64_t IPC::ArgumentCoder<std::tuple<WebCore::FloatRect,WebCore::FloatPoint>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  IPC::ArgumentCoder<WebCore::FloatRect,void>::decode(a1, v8);
  if (v8[16])
  {
    return IPC::ArgumentCoder<std::tuple<WebCore::FloatRect,WebCore::FloatPoint>,void>::decode<IPC::Decoder,WebCore::FloatRect>(a1, v8, a2);
  }

  v5 = *a1;
  v6 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  result = *(a1 + 3);
  if (result)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    result = (*(*result + 16))(result, v5);
  }

  *a2 = 0;
  a2[24] = 0;
  return result;
}

uint64_t IPC::ArgumentCoder<std::tuple<WebCore::FloatRect,WebCore::FloatPoint>,void>::decode<IPC::Decoder,WebCore::FloatRect>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a1);
  if (v7)
  {
    if (*(a2 + 16))
    {
      *a3 = *a2;
      *(a3 + 16) = result;
      v8 = 1;
      goto LABEL_4;
    }

    __break(1u);
  }

  v9 = *a1;
  v10 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  result = *(a1 + 3);
  if (result)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    result = (*(*result + 16))(result, v9);
  }

  v8 = 0;
  *a3 = 0;
LABEL_4:
  *(a3 + 24) = v8;
  return result;
}

unint64_t IPC::Decoder::decode<std::tuple<WebCore::RectEdges<BOOL>,WebCore::ScrollIsAnimated>>(uint64_t *a1)
{
  v2 = IPC::Decoder::decode<WebCore::RectEdges<BOOL>>(a1);
  if ((v2 & 0x100000000) != 0 && (v4 = v2, v5 = IPC::Decoder::decode<WebKit::ColorControlSupportsAlpha>(a1), (v5 & 0x100) != 0))
  {
    v3 = (v4 & 0xFFFFFF00 | (v5 << 32)) >> 8;
    v6 = 1;
  }

  else
  {
    v8 = *a1;
    v9 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v10 = a1[3];
    if (v10 && v9)
    {
      (*(*v10 + 16))(v10, v8);
    }

    LOBYTE(v4) = 0;
    v6 = 0;
  }

  return v4 | (v3 << 8) | (v6 << 40);
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage27NavigateServiceWorkerClientENS2_10ConnectionEN6WebKit7WebPageES9_FvN7WebCore16ProcessQualifiedINS_4UUIDEEERKNS_3URLEONS_17CompletionHandlerIFvNSA_28ScheduleLocationChangeResultEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSI_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F5F40;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage27NavigateServiceWorkerClientENS2_10ConnectionEN6WebKit7WebPageES9_FvN7WebCore16ProcessQualifiedINS_4UUIDEEERKNS_3URLEONS_17CompletionHandlerIFvNSA_28ScheduleLocationChangeResultEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSI_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F5F40;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage27NavigateServiceWorkerClientENS2_10ConnectionEN6WebKit7WebPageES9_FvN7WebCore16ProcessQualifiedINS_4UUIDEEERKNS_3URLEONS_17CompletionHandlerIFvNSA_28ScheduleLocationChangeResultEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSI_EE4callESI_(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3831;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v5, v2);
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

uint64_t IPC::Decoder::decode<std::tuple<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::Decoder::decode<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a2, &v9);
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
    v7 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
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

uint64_t IPC::Decoder::decode<std::tuple<WTF::Vector<WebCore::LinkDecorationFilteringData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<std::tuple<WTF::Vector<WebCore::LinkDecorationFilteringData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder>(a1, a2);
  if ((*(a1 + 16) & 1) == 0)
  {

    return IPC::Decoder::markInvalid(a2);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::tuple<WTF::Vector<WebCore::LinkDecorationFilteringData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::Decoder::decode<WTF::Vector<WebCore::LinkDecorationFilteringData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a2, a2, &v7);
  if (v9)
  {
    *a1 = v7;
    v5 = v8;
    v7 = 0;
    v8 = 0;
    *(a1 + 8) = v5;
    result = WTF::Vector<WebCore::LinkDecorationFilteringData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v7, v4);
    v6 = 1;
  }

  else
  {
    v6 = 0;
    *a1 = 0;
  }

  *(a1 + 16) = v6;
  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage18PauseAllAnimationsENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10F5F68;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage18PauseAllAnimationsENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F5F68;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage18PauseAllAnimationsENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3833;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = v3;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::Connection::sendMessageImpl(v2, &v9, 0, 0);
  result = v9;
  v9 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage17PlayAllAnimationsENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10F5F90;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage17PlayAllAnimationsENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F5F90;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage17PlayAllAnimationsENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3839;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = v3;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::Connection::sendMessageImpl(v2, &v9, 0, 0);
  result = v9;
  v9 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ScrollbarMode>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if ((v5 & 1) != 0 && (v6 = result, result = IPC::Decoder::decode<WebCore::WritingDirection>(a1), (result & 0x100) != 0))
  {
    *a2 = v6;
    *(a2 + 8) = result;
    v7 = 1;
  }

  else
  {
    v7 = 0;
    *a2 = 0;
  }

  *(a2 + 16) = v7;
  return result;
}

WTF::StringImpl *IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WebCore::SecurityOriginData>,WebCore::MessageWithMessagePorts>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
  v6 = result;
  v7 = v5;
  if (v5)
  {
    return IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WebCore::SecurityOriginData>,WebCore::MessageWithMessagePorts>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1, &v6, a2);
  }

  *a2 = 0;
  a2[88] = 0;
  return result;
}

WTF::StringImpl *IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WebCore::SecurityOriginData>,WebCore::MessageWithMessagePorts>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a1, &v11);
  if (v12 & 1) != 0 || ((v8 = *a1, v9 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (result = *(a1 + 3)) != 0) ? (v10 = v9 == 0) : (v10 = 1), !v10 && (result = (*(*result + 16))(result, v8), (v12)))
  {
    result = IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WebCore::SecurityOriginData>,WebCore::MessageWithMessagePorts>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String>(a1, a2, &v11, a3);
    if (v12)
    {
      result = v11;
      v11 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v7);
        }
      }
    }
  }

  else
  {
    *a3 = 0;
    a3[88] = 0;
  }

  return result;
}

WTF::StringImpl *IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WebCore::SecurityOriginData>,WebCore::MessageWithMessagePorts>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
  v10 = result;
  v11 = v9;
  if (v9)
  {
    return IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WebCore::SecurityOriginData>,WebCore::MessageWithMessagePorts>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1, a2, a3, &v10, a4);
  }

  *a4 = 0;
  a4[88] = 0;
  return result;
}

WTF::StringImpl *IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WebCore::SecurityOriginData>,WebCore::MessageWithMessagePorts>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v19 = *MEMORY[0x1E69E9840];
  result = IPC::Decoder::decode<std::optional<WebCore::SecurityOriginData>>(a1, &v14);
  if (v18 == 1)
  {
    result = IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WebCore::SecurityOriginData>,WebCore::MessageWithMessagePorts>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WebCore::SecurityOriginData>>(a1, a2, a3, a4, &v14, a5);
    if ((v18 & 1) != 0 && v17 == 1 && v16 == 0)
    {
      v13 = v15;
      v15 = 0;
      if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v11);
      }

      result = v14;
      v14 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v11);
        }
      }
    }
  }

  else
  {
    *a5 = 0;
    a5[88] = 0;
  }

  return result;
}

atomic_uint *IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WebCore::SecurityOriginData>,WebCore::MessageWithMessagePorts>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WebCore::SecurityOriginData>>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  IPC::ArgumentCoder<WebCore::MessageWithMessagePorts,void>::decode(a1, &v18);
  if (v21)
  {
    result = IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WebCore::SecurityOriginData>,WebCore::MessageWithMessagePorts>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WebCore::SecurityOriginData>,WebCore::MessageWithMessagePorts>(a2, a3, a4, a5, &v18, a6);
    if (v21)
    {
      v14 = v19;
      if (v19)
      {
        v19 = 0;
        v20 = 0;
        WTF::fastFree(v14, v13);
      }

      result = v18;
      v18 = 0;
      if (result)
      {
        return WTF::ThreadSafeRefCounted<WebCore::SerializedScriptValue,(WTF::DestructionThread)0>::deref(result);
      }
    }
  }

  else
  {
    v15 = *a1;
    v16 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result)
    {
      v17 = v16 == 0;
    }

    else
    {
      v17 = 1;
    }

    if (!v17)
    {
      result = (*(*result + 16))(result, v15);
    }

    *a6 = 0;
    a6[88] = 0;
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WebCore::SecurityOriginData>,WebCore::MessageWithMessagePorts>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WebCore::SecurityOriginData>,WebCore::MessageWithMessagePorts>@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  result = a6;
  if (*(a1 + 8) & 1) != 0 && (*(a2 + 8) & 1) != 0 && (*(a3 + 8) & 1) != 0 && (*(a4 + 40) & 1) != 0 && (*(a5 + 24))
  {
    result = _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3ELm4EEEEJN3WTF23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS3_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENS3_6StringES9_NS_8optionalINS5_18SecurityOriginDataEEENS5_23MessageWithMessagePortsEEEC2B8sn200100IJLm0ELm1ELm2ELm3ELm4EEJS9_SA_S9_SD_SE_EJEJEJS9_SA_S9_SD_SE_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSI_IJDpT2_EEEDpOT3_(a6, a1, a2, a3, a4, a5);
    *(result + 88) = 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3ELm4EEEEJN3WTF23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS3_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENS3_6StringES9_NS_8optionalINS5_18SecurityOriginDataEEENS5_23MessageWithMessagePortsEEEC2B8sn200100IJLm0ELm1ELm2ELm3ELm4EEJS9_SA_S9_SD_SE_EJEJEJS9_SA_S9_SD_SE_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSI_IJDpT2_EEEDpOT3_(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t *a6)
{
  *a1 = *a2;
  v8 = *a3;
  *a3 = 0;
  *(a1 + 8) = v8;
  v9 = *a4;
  *(a1 + 24) = 0;
  v10 = (a1 + 24);
  *(v10 - 1) = v9;
  v10[32] = 0;
  if (*(a5 + 32) == 1)
  {
    mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment(v10);
    *(a1 + 56) = 1;
  }

  v11 = *a6;
  *a6 = 0;
  *(a1 + 64) = v11;
  *(a1 + 80) = 0;
  *(a1 + 72) = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 72, a6 + 2);
  return a1;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage22RequestAllTextAndRectsENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvONS_6VectorINSt3__14pairINS_6StringEN7WebCore9FloatRectEEELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSL_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F5FB8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage22RequestAllTextAndRectsENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvONS_6VectorINSt3__14pairINS_6StringEN7WebCore9FloatRectEEELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSL_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F5FB8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage22RequestAllTextAndRectsENS2_10ConnectionEN6WebKit7WebPageES9_FvONS_17CompletionHandlerIFvONS_6VectorINSt3__14pairINS_6StringEN7WebCore9FloatRectEEELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSL_EE4callESL_(uint64_t a1, unsigned int *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3852;
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
    v8 = v7 + 24 * v6;
    do
    {
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v5, v7);
      IPC::ArgumentCoder<WebCore::FloatRect,void>::encode(v5, (v7 + 8));
      v7 += 24;
    }

    while (v7 != v8);
  }

  IPC::Connection::sendMessageImpl(v3, &v13, 0, 0);
  result = v13;
  v13 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v9);
    return bmalloc::api::tzoneFree(v11, v12);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage22RequestTargetedElementENS2_10ConnectionEN6WebKit7WebPageES9_FvON7WebCore22TargetedElementRequestEONS_17CompletionHandlerIFvONS_6VectorINSA_19TargetedElementInfoELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSJ_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F5FE0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage22RequestTargetedElementENS2_10ConnectionEN6WebKit7WebPageES9_FvON7WebCore22TargetedElementRequestEONS_17CompletionHandlerIFvONS_6VectorINSA_19TargetedElementInfoELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSJ_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F5FE0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage22RequestTargetedElementENS2_10ConnectionEN6WebKit7WebPageES9_FvON7WebCore22TargetedElementRequestEONS_17CompletionHandlerIFvONS_6VectorINSA_19TargetedElementInfoELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSJ_EE4callESJ_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3863;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::VectorArgumentCoder<false,WebCore::TargetedElementInfo,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::TargetedElementInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v5, a2);
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

uint64_t IPC::VectorArgumentCoder<false,WebCore::TargetedElementInfo,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::TargetedElementInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = 176 * v5;
    do
    {
      result = IPC::ArgumentCoder<WebCore::TargetedElementInfo,void>::encode(a1, v6);
      v6 += 176;
      v7 -= 176;
    }

    while (v7);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage28RequestAllTargetableElementsENS2_10ConnectionEN6WebKit7WebPageES9_FvfONS_17CompletionHandlerIFvONS_6VectorINSB_IN7WebCore19TargetedElementInfoELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEELm0ESE_Lm16ESF_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSI_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F6008;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage28RequestAllTargetableElementsENS2_10ConnectionEN6WebKit7WebPageES9_FvfONS_17CompletionHandlerIFvONS_6VectorINSB_IN7WebCore19TargetedElementInfoELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEELm0ESE_Lm16ESF_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSI_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F6008;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage28RequestAllTargetableElementsENS2_10ConnectionEN6WebKit7WebPageES9_FvfONS_17CompletionHandlerIFvONS_6VectorINSB_IN7WebCore19TargetedElementInfoELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEELm0ESE_Lm16ESF_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSI_EE4callESI_(uint64_t a1, unsigned int *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3851;
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
    v8 = 16 * v6;
    do
    {
      IPC::VectorArgumentCoder<false,WebCore::TargetedElementInfo,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::TargetedElementInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v5, v7);
      v7 += 16;
      v8 -= 16;
    }

    while (v8);
  }

  IPC::Connection::sendMessageImpl(v3, &v13, 0, 0);
  result = v13;
  v13 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v9);
    return bmalloc::api::tzoneFree(v11, v12);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage21RequestTextExtractionENS2_10ConnectionEN6WebKit7WebPageES9_FvONSt3__18optionalIN7WebCore9FloatRectEEEONS_17CompletionHandlerIFvONSC_14TextExtraction4ItemEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSJ_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F6030;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage21RequestTextExtractionENS2_10ConnectionEN6WebKit7WebPageES9_FvONSt3__18optionalIN7WebCore9FloatRectEEEONS_17CompletionHandlerIFvONSC_14TextExtraction4ItemEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSJ_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F6030;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage21RequestTextExtractionENS2_10ConnectionEN6WebKit7WebPageES9_FvONSt3__18optionalIN7WebCore9FloatRectEEEONS_17CompletionHandlerIFvONSC_14TextExtraction4ItemEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSJ_EE4callESJ_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3864;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<WebCore::TextExtraction::Item,void>::encode(v5, a2);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage36ShouldDismissKeyboardAfterTapAtPointENS2_10ConnectionEN6WebKit7WebPageES9_FvN7WebCore10FloatPointEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED1Ev(void *a1)
{
  *a1 = &unk_1F10F6058;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage36ShouldDismissKeyboardAfterTapAtPointENS2_10ConnectionEN6WebKit7WebPageES9_FvN7WebCore10FloatPointEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F6058;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage36ShouldDismissKeyboardAfterTapAtPointENS2_10ConnectionEN6WebKit7WebPageES9_FvN7WebCore10FloatPointEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEE4callEb(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3881;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = v3;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v10 = v4;
  IPC::Encoder::operator<<<BOOL>(v4, &v9);
  IPC::Connection::sendMessageImpl(v2, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

uint64_t IPC::Decoder::decode<WebCore::WritingTools::Session>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<WebCore::WritingTools::Session,void>::decode(a2, a1);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage28WillBeginWritingToolsSessionENS2_10ConnectionEN6WebKit7WebPageES9_FvRKNSt3__18optionalIN7WebCore12WritingTools7SessionEEEONS_17CompletionHandlerIFvRKNS_6VectorINSD_7ContextELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSP_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F6080;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage28WillBeginWritingToolsSessionENS2_10ConnectionEN6WebKit7WebPageES9_FvRKNSt3__18optionalIN7WebCore12WritingTools7SessionEEEONS_17CompletionHandlerIFvRKNS_6VectorINSD_7ContextELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSP_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F6080;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage28WillBeginWritingToolsSessionENS2_10ConnectionEN6WebKit7WebPageES9_FvRKNSt3__18optionalIN7WebCore12WritingTools7SessionEEEONS_17CompletionHandlerIFvRKNS_6VectorINSD_7ContextELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSP_EE4callESP_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3905;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::VectorArgumentCoder<false,WebCore::WritingTools::Context,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::WritingTools::Context,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(v5, a2);
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

uint64_t IPC::VectorArgumentCoder<false,WebCore::WritingTools::Context,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::WritingTools::Context,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = 80 * v5;
    do
    {
      result = IPC::ArgumentCoder<WebCore::WritingTools::Context,void>::encode(a1, v6);
      v6 += 10;
      v7 -= 80;
    }

    while (v7);
  }

  return result;
}

uint64_t IPC::VectorArgumentCoder<false,WebCore::WritingTools::Context,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, char *a2@<X8>, __n128 a3@<Q1>)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 1);
  v6 = ((*(a1 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *a1;
  v8 = v6 - *a1;
  v9 = v5 >= v8;
  v10 = v5 - v8;
  if (!v9 || v10 <= 7)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v23 = *(a1 + 3);
    if (v23)
    {
      if (v5)
      {
        (*(*v23 + 16))(v23);
        v5 = *(a1 + 1);
      }
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_38;
  }

  *(a1 + 2) = v6 + 1;
  if (v6)
  {
    v12 = *v6;
    v24[0] = 0;
    v24[1] = 0;
    if (v12 >= 0x3333)
    {
      v13 = *a2;
      v14 = a2[16];
      while (1)
      {
        IPC::Decoder::decode<WebCore::WritingTools::Context>(a1, &v25);
        v19 = v28;
        if (v28 == 1)
        {
          if (HIDWORD(v24[1]) == LODWORD(v24[1]))
          {
            WTF::Vector<WebCore::WritingTools::Context,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::WritingTools::Context>(v24, &v25);
          }

          else
          {
            v20 = (v24[0] + 80 * HIDWORD(v24[1]));
            *v20 = v25;
            WebCore::AttributedString::AttributedString();
            *(v20 + 56) = v27;
            ++HIDWORD(v24[1]);
          }
        }

        else
        {
          v14 = 0;
          v13 = 0;
        }

        if (v28 == 1)
        {
          MEMORY[0x19EB065D0](v26);
        }

        if ((v19 & 1) == 0)
        {
          break;
        }

        if (!--v12)
        {
          WTF::Vector<WebCore::WritingTools::Context,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(v24, HIDWORD(v24[1]));
          *a2 = v24[0];
          v21 = v24[1];
          v24[0] = 0;
          v24[1] = 0;
          *(a2 + 1) = v21;
          goto LABEL_22;
        }
      }
    }

    else
    {
      if (!v12)
      {
        v17 = 0;
        v18 = 0;
LABEL_21:
        a3.n128_u64[0] = 0;
        *v24 = a3;
        *a2 = v17;
        *(a2 + 1) = v18;
LABEL_22:
        a2[16] = 1;
        return WTF::Vector<WebCore::WritingTools::Context,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v24, v7);
      }

      LODWORD(v24[1]) = 80 * v12 / 0x50u;
      v24[0] = WTF::fastMalloc((80 * v12));
      v13 = *a2;
      v14 = a2[16];
      while (1)
      {
        IPC::Decoder::decode<WebCore::WritingTools::Context>(a1, &v25);
        v15 = v28;
        if (v28 == 1)
        {
          if (HIDWORD(v24[1]) == LODWORD(v24[1]))
          {
            WTF::Vector<WebCore::WritingTools::Context,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::WritingTools::Context>(v24, &v25);
          }

          else
          {
            v16 = (v24[0] + 80 * HIDWORD(v24[1]));
            *v16 = v25;
            WebCore::AttributedString::AttributedString();
            *(v16 + 56) = v27;
            ++HIDWORD(v24[1]);
          }
        }

        else
        {
          v14 = 0;
          v13 = 0;
        }

        if (v28 == 1)
        {
          MEMORY[0x19EB065D0](v26);
        }

        if ((v15 & 1) == 0)
        {
          break;
        }

        if (!--v12)
        {
          v17 = v24[0];
          v18 = v24[1];
          goto LABEL_21;
        }
      }
    }

    a2[16] = v14;
    *a2 = v13;
    return WTF::Vector<WebCore::WritingTools::Context,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v24, v7);
  }

LABEL_38:
  *a1 = 0;
  *(a1 + 1) = 0;
  result = *(a1 + 3);
  if (result)
  {
    if (v5)
    {
      result = (*(*result + 16))(result);
    }
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

uint64_t IPC::Decoder::decode<WebCore::WritingTools::Context>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<WebCore::WritingTools::Context,void>::decode(a1, a2);
  if ((*(a2 + 80) & 1) == 0)
  {
    v5 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result && v5 != 0)
    {
      v7 = *(*result + 16);

      return v7();
    }
  }

  return result;
}

uint64_t WTF::Vector<WebCore::WritingTools::Context,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::WritingTools::Context>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<WebCore::WritingTools::Context,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  v4 = (*a1 + 80 * *(a1 + 12));
  *v4 = *v3;
  WebCore::AttributedString::AttributedString();
  *(v4 + 56) = *(v3 + 56);
  ++*(a1 + 12);
  return 1;
}

unint64_t WTF::Vector<WebCore::WritingTools::Context,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 80 * *(a1 + 12) <= a3)
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

    WTF::Vector<WebCore::WritingTools::Context,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebCore::WritingTools::Context,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WebCore::WritingTools::Context,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    if (a2 >= 0x3333334)
    {
      __break(0xC471u);
      JUMPOUT(0x19DA9ED3CLL);
    }

    v3 = *a1;
    v4 = *a1 + 80 * *(a1 + 12);
    v5 = 80 * a2;
    v6 = WTF::fastMalloc((80 * a2));
    *(a1 + 8) = v5 / 0x50;
    *a1 = v6;
    WTF::VectorMover<false,WebCore::WritingTools::Context>::move(v3, v4, v6);
    if (v3)
    {
      if (*a1 == v3)
      {
        *a1 = 0;
        *(a1 + 8) = 0;
      }

      WTF::fastFree(v3, v7);
    }
  }

  return 1;
}

uint64_t WTF::VectorMover<false,WebCore::WritingTools::Context>::move(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = a3 + 16;
    v5 = result + 16;
    do
    {
      *(v4 - 16) = *(v5 - 16);
      WebCore::AttributedString::AttributedString();
      *(v4 + 40) = *(v5 + 40);
      result = MEMORY[0x19EB065D0](v5);
      v4 += 80;
      v6 = v5 + 64;
      v5 += 80;
    }

    while (v6 != a2);
  }

  return result;
}

unsigned int *WTF::Vector<WebCore::WritingTools::Context,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(unsigned int *result, unint64_t this)
{
  if (result[2] > this)
  {
    v3 = result;
    if (result[3] > this)
    {
      result = WTF::Vector<WebCore::WritingTools::Context,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrink(result, this);
    }

    v4 = *v3;
    if (this)
    {
      if (this >= 0x3333334)
      {
        __break(0xC471u);
        return result;
      }

      v5 = *(v3 + 12);
      v6 = (80 * this);
      result = WTF::fastMalloc(v6);
      *(v3 + 8) = v6 / 0x50;
      *v3 = result;
      if (result != v4)
      {
        result = WTF::VectorMover<false,WebCore::WritingTools::Context>::move(v4, v4 + 80 * v5, result);
      }
    }

    if (v4)
    {
      if (*v3 == v4)
      {
        *v3 = 0;
        *(v3 + 8) = 0;
      }

      return WTF::fastFree(v4, this);
    }
  }

  return result;
}

uint64_t WTF::Vector<WebCore::WritingTools::Context,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrink(uint64_t result, unint64_t a2)
{
  v2 = *(result + 12);
  if (v2 < a2)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v4 = result;
    if (v2 != a2)
    {
      v5 = 80 * v2 - 80 * a2;
      result = *result + 80 * a2 + 16;
      do
      {
        result = MEMORY[0x19EB065D0](result) + 80;
        v5 -= 80;
      }

      while (v5);
    }

    *(v4 + 12) = v3;
  }

  return result;
}

uint64_t WTF::Vector<WebCore::WritingTools::Context,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = 80 * v3;
    v5 = *a1 + 16;
    do
    {
      v5 = MEMORY[0x19EB065D0](v5) + 80;
      v4 -= 80;
    }

    while (v4);
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

uint64_t IPC::Decoder::decode<WebCore::WritingTools::TextSuggestion>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<WebCore::WritingTools::TextSuggestion,void>::decode(a2, a1);
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

__n128 WTF::Vector<WebCore::WritingTools::TextSuggestion,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::WritingTools::TextSuggestion>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<WebCore::WritingTools::TextSuggestion,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  v4 = *a1 + 48 * *(a1 + 12);
  result = *v3;
  v6 = *(v3 + 16);
  *v4 = *v3;
  *(v4 + 16) = v6;
  v7 = *(v3 + 32);
  *(v3 + 32) = 0;
  *(v4 + 32) = v7;
  *(v4 + 40) = *(v3 + 40);
  ++*(a1 + 12);
  return result;
}

unint64_t WTF::Vector<WebCore::WritingTools::TextSuggestion,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 48 * *(a1 + 12) <= a3)
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

    WTF::Vector<WebCore::WritingTools::TextSuggestion,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebCore::WritingTools::TextSuggestion,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WebCore::WritingTools::TextSuggestion,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    if (a2 >= 0x5555556)
    {
      __break(0xC471u);
      JUMPOUT(0x19DA9F1E0);
    }

    v3 = *a1;
    v4 = (*a1 + 48 * *(a1 + 12));
    v5 = 48 * a2;
    v6 = WTF::fastMalloc((48 * a2));
    *(a1 + 8) = v5 / 0x30;
    *a1 = v6;
    WTF::VectorTypeOperations<WebCore::WritingTools::TextSuggestion>::move(v3, v4, v6);
    if (v3)
    {
      if (*a1 == v3)
      {
        *a1 = 0;
        *(a1 + 8) = 0;
      }

      WTF::fastFree(v3, v7);
    }
  }

  return 1;
}

WTF::StringImpl *WTF::VectorTypeOperations<WebCore::WritingTools::TextSuggestion>::move(WTF::StringImpl *result, WTF::StringImpl *a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    do
    {
      v6 = *(v5 + 1);
      *a3 = *v5;
      *(a3 + 16) = v6;
      v7 = *(v5 + 4);
      *(v5 + 4) = 0;
      *(a3 + 32) = v7;
      *(a3 + 40) = *(v5 + 40);
      result = *(v5 + 4);
      *(v5 + 4) = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, a2);
        }
      }

      a3 += 48;
      v5 = (v5 + 48);
    }

    while (v5 != a2);
  }

  return result;
}

WTF::StringImpl *WTF::VectorDestructor<true,WebCore::WritingTools::TextSuggestion>::destruct(WTF::StringImpl *result, WTF::StringImpl *a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      result = v3[4];
      v3[4] = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, a2);
        }
      }

      v3 += 6;
    }

    while (v3 != a2);
  }

  return result;
}

uint64_t WTF::Vector<WebCore::WritingTools::TextSuggestion,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorDestructor<true,WebCore::WritingTools::TextSuggestion>::destruct(*a1, (*a1 + 48 * v3));
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage40ProofreadingSessionDidReceiveSuggestionsENS2_10ConnectionEN6WebKit7WebPageES9_FvRKN7WebCore12WritingTools7SessionERKNS_6VectorINSB_14TextSuggestionELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEERKNSA_14CharacterRangeERKNSB_7ContextEbONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10F60A8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage40ProofreadingSessionDidReceiveSuggestionsENS2_10ConnectionEN6WebKit7WebPageES9_FvRKN7WebCore12WritingTools7SessionERKNS_6VectorINSB_14TextSuggestionELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEERKNSA_14CharacterRangeERKNSB_7ContextEbONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F60A8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage40ProofreadingSessionDidReceiveSuggestionsENS2_10ConnectionEN6WebKit7WebPageES9_FvRKN7WebCore12WritingTools7SessionERKNS_6VectorINSB_14TextSuggestionELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEERKNSA_14CharacterRangeERKNSB_7ContextEbONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3842;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = v3;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::Connection::sendMessageImpl(v2, &v9, 0, 0);
  result = v9;
  v9 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

uint64_t IPC::Decoder::decode<std::tuple<WebCore::WritingTools::Session,BOOL>>(uint64_t a1, IPC::Decoder *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  result = IPC::Decoder::decode<WebCore::WritingTools::Session>(v15, a2);
  if (v16 == 1)
  {
    v5 = *(a2 + 1);
    v6 = *(a2 + 2);
    v7 = *a2;
    if (v5 <= &v6[-*a2])
    {
      *a2 = 0;
      *(a2 + 1) = 0;
      v10 = *(a2 + 3);
      if (v10)
      {
        if (v5)
        {
          (*(*v10 + 16))(v10);
          v5 = *(a2 + 1);
        }
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      *(a2 + 2) = v6 + 1;
      if (v6)
      {
        v8 = *v6;
        if (v8 < 2)
        {
          v9 = v15[1];
          *a1 = v15[0];
          *(a1 + 16) = v9;
          *(a1 + 32) = v8;
          *(a1 + 48) = 1;
          return result;
        }

        goto LABEL_11;
      }
    }

    *a2 = 0;
    *(a2 + 1) = 0;
    v11 = *(a2 + 3);
    if (v11)
    {
      if (v5)
      {
        (*(*v11 + 16))(v11);
        v7 = *a2;
        v5 = *(a2 + 1);
        goto LABEL_11;
      }
    }

    else
    {
      v5 = 0;
    }

    v7 = 0;
LABEL_11:
    *a2 = 0;
    *(a2 + 1) = 0;
    v12 = *(a2 + 3);
    if (v12 && v5)
    {
      (*(*v12 + 16))(v12, v7);
    }
  }

  *a1 = 0;
  *(a1 + 48) = 0;
  v13 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result && v13)
  {
    v14 = *(*result + 16);

    return v14();
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage26WillEndWritingToolsSessionENS2_10ConnectionEN6WebKit7WebPageES9_FvRKN7WebCore12WritingTools7SessionEbONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10F60D0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage26WillEndWritingToolsSessionENS2_10ConnectionEN6WebKit7WebPageES9_FvRKN7WebCore12WritingTools7SessionEbONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F60D0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage26WillEndWritingToolsSessionENS2_10ConnectionEN6WebKit7WebPageES9_FvRKN7WebCore12WritingTools7SessionEbONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3906;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = v3;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::Connection::sendMessageImpl(v2, &v9, 0, 0);
  result = v9;
  v9 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage52CompositionSessionDidReceiveTextWithReplacementRangeENS2_10ConnectionEN6WebKit7WebPageES9_FvRKN7WebCore12WritingTools7SessionERKNSA_16AttributedStringERKNSA_14CharacterRangeERKNSB_7ContextEbONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10F60F8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage52CompositionSessionDidReceiveTextWithReplacementRangeENS2_10ConnectionEN6WebKit7WebPageES9_FvRKN7WebCore12WritingTools7SessionERKNSA_16AttributedStringERKNSA_14CharacterRangeERKNSB_7ContextEbONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F60F8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage52CompositionSessionDidReceiveTextWithReplacementRangeENS2_10ConnectionEN6WebKit7WebPageES9_FvRKN7WebCore12WritingTools7SessionERKNSA_16AttributedStringERKNSA_14CharacterRangeERKNSB_7ContextEbONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3757;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = v3;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::Connection::sendMessageImpl(v2, &v9, 0, 0);
  result = v9;
  v9 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

void *IPC::Decoder::decode<std::tuple<WebCore::CharacterRange>>(uint64_t a1, uint64_t *a2)
{
  result = IPC::Decoder::decode<WebCore::CharacterRange>(a2, &v9);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage59ProofreadingSessionSuggestionTextRectsInRootViewCoordinatesENS2_10ConnectionEN6WebKit7WebPageES9_KFvRKN7WebCore14CharacterRangeEONS_17CompletionHandlerIFvONS_6VectorINSA_9FloatRectELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSK_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F6120;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage59ProofreadingSessionSuggestionTextRectsInRootViewCoordinatesENS2_10ConnectionEN6WebKit7WebPageES9_KFvRKN7WebCore14CharacterRangeEONS_17CompletionHandlerIFvONS_6VectorINSA_9FloatRectELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSK_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F6120;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage59ProofreadingSessionSuggestionTextRectsInRootViewCoordinatesENS2_10ConnectionEN6WebKit7WebPageES9_KFvRKN7WebCore14CharacterRangeEONS_17CompletionHandlerIFvONS_6VectorINSA_9FloatRectELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSK_EE4callESK_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3843;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::VectorArgumentCoder<false,WebCore::FloatRect,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::FloatRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v5, a2);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage48UpdateTextVisibilityForActiveWritingToolsSessionENS2_10ConnectionEN6WebKit7WebPageES9_FvRKN7WebCore14CharacterRangeEbRKNS_4UUIDEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10F6148;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage48UpdateTextVisibilityForActiveWritingToolsSessionENS2_10ConnectionEN6WebKit7WebPageES9_FvRKN7WebCore14CharacterRangeEbRKNS_4UUIDEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F6148;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage48UpdateTextVisibilityForActiveWritingToolsSessionENS2_10ConnectionEN6WebKit7WebPageES9_FvRKN7WebCore14CharacterRangeEbRKNS_4UUIDEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3900;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = v3;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::Connection::sendMessageImpl(v2, &v9, 0, 0);
  result = v9;
  v9 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage43TextPreviewDataForActiveWritingToolsSessionENS2_10ConnectionEN6WebKit7WebPageES9_FvRKN7WebCore14CharacterRangeEONS_17CompletionHandlerIFvONS_6RefPtrINSA_13TextIndicatorENS_12RawPtrTraitsISG_EENS_21DefaultRefDerefTraitsISG_EEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSM_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F6170;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage43TextPreviewDataForActiveWritingToolsSessionENS2_10ConnectionEN6WebKit7WebPageES9_FvRKN7WebCore14CharacterRangeEONS_17CompletionHandlerIFvONS_6RefPtrINSA_13TextIndicatorENS_12RawPtrTraitsISG_EENS_21DefaultRefDerefTraitsISG_EEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSM_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F6170;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage43TextPreviewDataForActiveWritingToolsSessionENS2_10ConnectionEN6WebKit7WebPageES9_FvRKN7WebCore14CharacterRangeEONS_17CompletionHandlerIFvONS_6RefPtrINSA_13TextIndicatorENS_12RawPtrTraitsISG_EENS_21DefaultRefDerefTraitsISG_EEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSM_EE4callESM_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3891;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<WTF::RefPtr<WebCore::TextIndicator,WTF::RawPtrTraits<WebCore::TextIndicator>,WTF::DefaultRefDerefTraits<WebCore::TextIndicator>>,void>::encode<IPC::Encoder,WebCore::TextIndicator>(v5, a2);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage40SetSelectionForActiveWritingToolsSessionENS2_10ConnectionEN6WebKit7WebPageES9_FvRKN7WebCore14CharacterRangeEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10F6198;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage40SetSelectionForActiveWritingToolsSessionENS2_10ConnectionEN6WebKit7WebPageES9_FvRKN7WebCore14CharacterRangeEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F6198;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage40SetSelectionForActiveWritingToolsSessionENS2_10ConnectionEN6WebKit7WebPageES9_FvRKN7WebCore14CharacterRangeEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3879;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = v3;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::Connection::sendMessageImpl(v2, &v9, 0, 0);
  result = v9;
  v9 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage52DecorateTextReplacementsForActiveWritingToolsSessionENS2_10ConnectionEN6WebKit7WebPageES9_FvRKN7WebCore14CharacterRangeEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10F61C0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage52DecorateTextReplacementsForActiveWritingToolsSessionENS2_10ConnectionEN6WebKit7WebPageES9_FvRKN7WebCore14CharacterRangeEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F61C0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage52DecorateTextReplacementsForActiveWritingToolsSessionENS2_10ConnectionEN6WebKit7WebPageES9_FvRKN7WebCore14CharacterRangeEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3769;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = v3;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::Connection::sendMessageImpl(v2, &v9, 0, 0);
  result = v9;
  v9 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage37CreateTextIndicatorForTextAnimationIDENS2_10ConnectionEN6WebKit7WebPageES9_FvRKNS_4UUIDEONS_17CompletionHandlerIFvONS_6RefPtrIN7WebCore13TextIndicatorENS_12RawPtrTraitsISG_EENS_21DefaultRefDerefTraitsISG_EEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSM_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F61E8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage37CreateTextIndicatorForTextAnimationIDENS2_10ConnectionEN6WebKit7WebPageES9_FvRKNS_4UUIDEONS_17CompletionHandlerIFvONS_6RefPtrIN7WebCore13TextIndicatorENS_12RawPtrTraitsISG_EENS_21DefaultRefDerefTraitsISG_EEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSM_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F61E8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage37CreateTextIndicatorForTextAnimationIDENS2_10ConnectionEN6WebKit7WebPageES9_FvRKNS_4UUIDEONS_17CompletionHandlerIFvONS_6RefPtrIN7WebCore13TextIndicatorENS_12RawPtrTraitsISG_EENS_21DefaultRefDerefTraitsISG_EEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSM_EE4callESM_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3767;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<WTF::RefPtr<WebCore::TextIndicator,WTF::RawPtrTraits<WebCore::TextIndicator>,WTF::DefaultRefDerefTraits<WebCore::TextIndicator>>,void>::encode<IPC::Encoder,WebCore::TextIndicator>(v5, a2);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage48UpdateUnderlyingTextVisibilityForTextAnimationIDENS2_10ConnectionEN6WebKit7WebPageES9_FvRKNS_4UUIDEbONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10F6210;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage48UpdateUnderlyingTextVisibilityForTextAnimationIDENS2_10ConnectionEN6WebKit7WebPageES9_FvRKNS_4UUIDEbONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F6210;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage48UpdateUnderlyingTextVisibilityForTextAnimationIDENS2_10ConnectionEN6WebKit7WebPageES9_FvRKNS_4UUIDEbONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3901;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = v3;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::Connection::sendMessageImpl(v2, &v9, 0, 0);
  result = v9;
  v9 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage35CreateTextIndicatorForElementWithIDENS2_10ConnectionEN6WebKit7WebPageES9_FvRKNS_6StringEONS_17CompletionHandlerIFvONSt3__18optionalIN7WebCore17TextIndicatorDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSJ_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F6238;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage35CreateTextIndicatorForElementWithIDENS2_10ConnectionEN6WebKit7WebPageES9_FvRKNS_6StringEONS_17CompletionHandlerIFvONSt3__18optionalIN7WebCore17TextIndicatorDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSJ_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F6238;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage35CreateTextIndicatorForElementWithIDENS2_10ConnectionEN6WebKit7WebPageES9_FvRKNS_6StringEONS_17CompletionHandlerIFvONSt3__18optionalIN7WebCore17TextIndicatorDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSJ_EE4callESJ_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3766;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::optional<WebCore::TextIndicatorData>,void>::encode<IPC::Encoder,std::optional<WebCore::TextIndicatorData>>(v5, a2);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage30TakeSnapshotForTargetedElementENS2_10ConnectionEN6WebKit7WebPageES9_FvNS_23ObjectIdentifierGenericIN7WebCore21ElementIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSB_16ProcessQualifiedINS_4UUIDEEEONS_17CompletionHandlerIFvONSt3__18optionalINSB_21ShareableBitmapHandleEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSO_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F6260;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage30TakeSnapshotForTargetedElementENS2_10ConnectionEN6WebKit7WebPageES9_FvNS_23ObjectIdentifierGenericIN7WebCore21ElementIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSB_16ProcessQualifiedINS_4UUIDEEEONS_17CompletionHandlerIFvONSt3__18optionalINSB_21ShareableBitmapHandleEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSO_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F6260;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage30TakeSnapshotForTargetedElementENS2_10ConnectionEN6WebKit7WebPageES9_FvNS_23ObjectIdentifierGenericIN7WebCore21ElementIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSB_16ProcessQualifiedINS_4UUIDEEEONS_17CompletionHandlerIFvONSt3__18optionalINSB_21ShareableBitmapHandleEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSO_EE4callESO_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3888;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::optional<WebCore::ShareableBitmapHandle>,void>::encode<IPC::Encoder,std::optional<WebCore::ShareableBitmapHandle>>(v5, a2);
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

uint64_t IPC::Decoder::decode<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ElementIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::UUID>>>(uint64_t a1, uint64_t *a2)
{
  result = IPC::ArgumentCoder<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ElementIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::UUID>>,void>::decode<IPC::Decoder>(a2, a1);
  if ((*(a1 + 48) & 1) == 0)
  {
    v5 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    result = a2[3];
    if (result && v5 != 0)
    {
      v7 = *(*result + 16);

      return v7();
    }
  }

  return result;
}

unint64_t WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ElementIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::UUID>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 48 * *(a1 + 12) <= a3)
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

    WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ElementIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::UUID>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ElementIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::UUID>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ElementIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::UUID>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t result, unint64_t a2)
{
  if (*(result + 8) < a2)
  {
    if (a2 >= 0x5555556)
    {
      __break(0xC471u);
    }

    else
    {
      v2 = result;
      v3 = *result;
      v4 = *(result + 12);
      v5 = 48 * a2;
      result = WTF::fastMalloc((48 * a2));
      *(v2 + 8) = v5 / 0x30;
      *v2 = result;
      if (v4)
      {
        v7 = 48 * v4;
        v8 = v3;
        do
        {
          v9 = *v8;
          v10 = *(v8 + 2);
          *(result + 16) = *(v8 + 1);
          *(result + 32) = v10;
          *result = v9;
          result += 48;
          v8 = (v8 + 48);
          v7 -= 48;
        }

        while (v7);
      }

      if (v3)
      {
        if (*v2 == v3)
        {
          *v2 = 0;
          *(v2 + 8) = 0;
        }

        return WTF::fastFree(v3, v6);
      }
    }
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage45ResetVisibilityAdjustmentsForTargetedElementsENS2_10ConnectionEN6WebKit7WebPageES9_FvRKNS_6VectorINSt3__14pairINS_23ObjectIdentifierGenericIN7WebCore21ElementIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSE_16ProcessQualifiedINS_4UUIDEEEEELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED1Ev(void *a1)
{
  *a1 = &unk_1F10F6288;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage45ResetVisibilityAdjustmentsForTargetedElementsENS2_10ConnectionEN6WebKit7WebPageES9_FvRKNS_6VectorINSt3__14pairINS_23ObjectIdentifierGenericIN7WebCore21ElementIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSE_16ProcessQualifiedINS_4UUIDEEEEELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F6288;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages7WebPage45ResetVisibilityAdjustmentsForTargetedElementsENS2_10ConnectionEN6WebKit7WebPageES9_FvRKNS_6VectorINSt3__14pairINS_23ObjectIdentifierGenericIN7WebCore21ElementIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSE_16ProcessQualifiedINS_4UUIDEEEEELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEE4callEb(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3865;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = v3;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v10 = v4;
  IPC::Encoder::operator<<<BOOL>(v4, &v9);
  IPC::Connection::sendMessageImpl(v2, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

uint64_t IPC::Decoder::decode<WebCore::TargetedElementAdjustment>(uint64_t a1, uint64_t *a2)
{
  result = IPC::ArgumentCoder<WebCore::TargetedElementAdjustment,void>::decode(a2, a1);
  if ((*(a1 + 64) & 1) == 0)
  {
    v5 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    result = a2[3];
    if (result && v5 != 0)
    {
      v7 = *(*result + 16);

      return v7();
    }
  }

  return result;
}

WTF *WTF::Vector<WebCore::TargetedElementAdjustment,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::TargetedElementAdjustment>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<WebCore::TargetedElementAdjustment,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  v4 = *a1 + (*(a1 + 12) << 6);
  v6 = *(v3 + 16);
  v5 = *(v3 + 32);
  *v4 = *v3;
  *(v4 + 16) = v6;
  *(v4 + 32) = v5;
  *(v4 + 56) = 0;
  *(v4 + 48) = 0;
  result = WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(v4 + 48, (v3 + 48));
  ++*(a1 + 12);
  return result;
}

unint64_t WTF::Vector<WebCore::TargetedElementAdjustment,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + (*(a1 + 12) << 6) <= a3)
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

    WTF::Vector<WebCore::TargetedElementAdjustment,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebCore::TargetedElementAdjustment,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}