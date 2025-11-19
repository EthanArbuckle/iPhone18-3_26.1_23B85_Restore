void IPC::ArgumentCoder<std::tuple<WTF::String,WTF::String,WebCore::DiagnosticLoggingDictionary,WebCore::ShouldSample>,void>::decode<IPC::Decoder,WTF::String,WTF::String,WebCore::DiagnosticLoggingDictionary>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, _BYTE *a5@<X8>)
{
  v9 = IPC::Decoder::decode<WebKit::UseDownloadPlaceholder>(a1);
  if ((v9 & 0x100) != 0)
  {
    IPC::ArgumentCoder<std::tuple<WTF::String,WTF::String,WebCore::DiagnosticLoggingDictionary,WebCore::ShouldSample>,void>::decode<IPC::Decoder,WTF::String,WTF::String,WebCore::DiagnosticLoggingDictionary,WebCore::ShouldSample>(a2, a3, a4, &v9, a5);
  }

  else
  {
    *a5 = 0;
    a5[32] = 0;
  }
}

void IPC::ArgumentCoder<std::tuple<WTF::String,WTF::String,WebCore::DiagnosticLoggingDictionary,WebCore::ShouldSample>,void>::decode<IPC::Decoder,WTF::String,WTF::String,WebCore::DiagnosticLoggingDictionary,WebCore::ShouldSample>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, _BYTE *a4@<X4>, uint64_t a5@<X8>)
{
  if (a1[1] & 1) != 0 && (a2[1] & 1) != 0 && (a3[1] & 1) != 0 && (a4[1])
  {
    v5 = *a1;
    *a1 = 0;
    v6 = *a2;
    *a2 = 0;
    *a5 = v5;
    *(a5 + 8) = v6;
    v7 = *a3;
    *a3 = 0;
    *(a5 + 16) = v7;
    *(a5 + 24) = *a4;
    *(a5 + 32) = 1;
  }

  else
  {
    __break(1u);
  }
}

uint64_t WebKit::EditorState::EditorState(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 15) = *(a2 + 15);
  *a1 = v4;
  *(a1 + 32) = 0;
  *(a1 + 256) = 0;
  if (*(a2 + 256) == 1)
  {
    v5 = a2[2];
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v5;
    *(a1 + 56) = 0;
    if (a1 != a2)
    {
      v6 = *(a2 + 7);
      *(a2 + 7) = 0;
      *(a1 + 56) = v6;
    }

    *(a1 + 64) = *(a2 + 16);
    v7 = *(a2 + 9);
    *(a2 + 9) = 0;
    *(a1 + 72) = v7;
    v8 = *(a2 + 10);
    *(a2 + 10) = 0;
    *(a1 + 80) = v8;
    v9 = *(a2 + 11);
    *(a1 + 96) = *(a2 + 24);
    *(a1 + 88) = v9;
    *(a1 + 112) = 0;
    *(a1 + 104) = 0;
    WTF::VectorBuffer<unsigned short,0ul,WTF::FastMalloc>::adopt(a1 + 104, a2 + 26);
    v10 = *(a2 + 30);
    *(a1 + 124) = *(a2 + 124);
    *(a1 + 120) = v10;
    *(a1 + 128) = 0;
    if (a1 != a2)
    {
      v11 = *(a2 + 16);
      *(a2 + 16) = 0;
      *(a1 + 128) = v11;
    }

    v12 = *(a2 + 136);
    v13 = *(a2 + 152);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 152) = v13;
    *(a1 + 136) = v12;
    v14 = *(a2 + 184);
    v15 = *(a2 + 200);
    v16 = *(a2 + 216);
    *(a1 + 227) = *(a2 + 227);
    *(a1 + 216) = v16;
    *(a1 + 200) = v15;
    *(a1 + 184) = v14;
    *(a1 + 256) = 1;
  }

  *(a1 + 272) = 0;
  *(a1 + 528) = 0;
  if (*(a2 + 528) == 1)
  {
    v17 = a2[17];
    v18 = a2[18];
    v19 = a2[20];
    *(a1 + 304) = a2[19];
    *(a1 + 320) = v19;
    *(a1 + 272) = v17;
    *(a1 + 288) = v18;
    *(a1 + 336) = 0;
    *(a1 + 344) = 0;
    WTF::VectorBuffer<unsigned short,0ul,WTF::FastMalloc>::adopt(a1 + 336, a2 + 84);
    *(a1 + 352) = 0;
    *(a1 + 360) = 0;
    WTF::VectorBuffer<unsigned short,0ul,WTF::FastMalloc>::adopt(a1 + 352, a2 + 88);
    v20 = a2[23];
    v21 = a2[24];
    v22 = a2[25];
    *(a1 + 416) = *(a2 + 416);
    *(a1 + 384) = v21;
    *(a1 + 400) = v22;
    *(a1 + 368) = v20;
    *(a1 + 424) = 0;
    *(a1 + 432) = 0;
    WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 424, a2 + 106);
    v23 = *(a2 + 456);
    *(a1 + 440) = *(a2 + 440);
    *(a1 + 456) = v23;
    v24 = *(a2 + 472);
    v25 = *(a2 + 488);
    v26 = *(a2 + 504);
    *(a1 + 520) = *(a2 + 520);
    *(a1 + 488) = v25;
    *(a1 + 504) = v26;
    *(a1 + 472) = v24;
    *(a1 + 528) = 1;
  }

  return a1;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy22RequestTextRecognitionENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvRKNS_3URLEON7WebCore21ShareableBitmapHandleERKNS_6StringESI_ONS_17CompletionHandlerIFvONSD_21TextRecognitionResultEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSL_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F69D8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy22RequestTextRecognitionENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvRKNS_3URLEON7WebCore21ShareableBitmapHandleERKNS_6StringESI_ONS_17CompletionHandlerIFvONSD_21TextRecognitionResultEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSL_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F69D8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy22RequestTextRecognitionENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvRKNS_3URLEON7WebCore21ShareableBitmapHandleERKNS_6StringESI_ONS_17CompletionHandlerIFvONSD_21TextRecognitionResultEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSL_EE4callESL_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3728;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<WebCore::TextRecognitionResult,void>::encode(v5, a2);
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

WTF *IPC::Decoder::decode<std::tuple<WTF::UUID,WebCore::TextAnimationData,WTF::RefPtr<WebCore::TextIndicator,WTF::RawPtrTraits<WebCore::TextIndicator>,WTF::DefaultRefDerefTraits<WebCore::TextIndicator>>>>(uint64_t a1, IPC::Decoder *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  IPC::ArgumentCoder<WTF::UUID,void>::decode(a2, &v21);
  if ((v22 & 1) == 0)
  {
    v9 = *a2;
    v15 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v11 = *(a2 + 3);
    if (v11)
    {
      v16 = v15 == 0;
    }

    else
    {
      v16 = 1;
    }

    if (v16)
    {
      goto LABEL_18;
    }

LABEL_23:
    (*(*v11 + 16))(v11, v9);
    goto LABEL_18;
  }

  IPC::ArgumentCoder<WebCore::TextAnimationData,void>::decode(a2, v23);
  if ((v24 & 1) == 0)
  {
    v9 = *a2;
    v10 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v11 = *(a2 + 3);
    if (!v11 || !v10)
    {
      goto LABEL_18;
    }

    goto LABEL_23;
  }

  result = IPC::ArgumentCoder<WTF::RefPtr<WebCore::TextIndicator,WTF::RawPtrTraits<WebCore::TextIndicator>,WTF::DefaultRefDerefTraits<WebCore::TextIndicator>>,void>::decode<IPC::Decoder,WebCore::TextIndicator>(a2, &v19);
  if (v20 & 1) != 0 || (v12 = *a2, v13 = *(a2 + 1), *a2 = 0, *(a2 + 1) = 0, (v14 = *(a2 + 3)) != 0) && v13 && (result = (*(*v14 + 16))(v14, v12), (v20))
  {
    v5 = v23[0];
    v6 = v23[1];
    *a1 = v21;
    *(a1 + 16) = v5;
    v7 = v23[2];
    v8 = v23[3];
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
    *(a1 + 64) = v8;
    *(a1 + 80) = v19;
    *(a1 + 96) = 1;
    return result;
  }

LABEL_18:
  *a1 = 0;
  *(a1 + 96) = 0;
  v17 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result && v17)
  {
    v18 = *(*result + 16);

    return v18();
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy51AddTextAnimationForAnimationIDWithCompletionHandlerENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvRS7_RKNS_4UUIDERKN7WebCore17TextAnimationDataENS_6RefPtrINSE_13TextIndicatorENS_12RawPtrTraitsISJ_EENS_21DefaultRefDerefTraitsISJ_EEEEONS_17CompletionHandlerIFvNSE_20TextAnimationRunModeEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSQ_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F6A00;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy51AddTextAnimationForAnimationIDWithCompletionHandlerENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvRS7_RKNS_4UUIDERKN7WebCore17TextAnimationDataENS_6RefPtrINSE_13TextIndicatorENS_12RawPtrTraitsISJ_EENS_21DefaultRefDerefTraitsISJ_EEEEONS_17CompletionHandlerIFvNSE_20TextAnimationRunModeEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSQ_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F6A00;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy51AddTextAnimationForAnimationIDWithCompletionHandlerENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvRS7_RKNS_4UUIDERKN7WebCore17TextAnimationDataENS_6RefPtrINSE_13TextIndicatorENS_12RawPtrTraitsISJ_EENS_21DefaultRefDerefTraitsISJ_EEEEONS_17CompletionHandlerIFvNSE_20TextAnimationRunModeEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSQ_EE4callESQ_(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3702;
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy28ShowMediaControlsContextMenuENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvON7WebCore9FloatRectEONS_6VectorINSA_28MediaControlsContextMenuItemELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvyEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJyEED1Ev(void *a1)
{
  *a1 = &unk_1F10F6A28;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy28ShowMediaControlsContextMenuENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvON7WebCore9FloatRectEONS_6VectorINSA_28MediaControlsContextMenuItemELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvyEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJyEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F6A28;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy28ShowMediaControlsContextMenuENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvON7WebCore9FloatRectEONS_6VectorINSA_28MediaControlsContextMenuItemELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvyEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJyEE4callEy(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3734;
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

uint64_t std::__tuple_leaf<1ul,WebCore::TextIndicatorData,false>::__tuple_leaf[abi:sn200100]<WebCore::TextIndicatorData,0>(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v5;
  *a1 = v4;
  *(a1 + 56) = 0;
  *(a1 + 48) = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 48, a2 + 12);
  *(a1 + 64) = *(a2 + 16);
  v6 = *(a2 + 9);
  *(a2 + 9) = 0;
  *(a1 + 72) = v6;
  v7 = *(a2 + 10);
  *(a2 + 10) = 0;
  *(a1 + 80) = v7;
  v8 = *(a2 + 11);
  *(a2 + 11) = 0;
  *(a1 + 88) = v8;
  *(a1 + 96) = 0;
  if (a1 != a2)
  {
    v9 = *(a2 + 12);
    *(a2 + 12) = 0;
    *(a1 + 96) = v9;
  }

  v10 = *(a2 + 104);
  *(a1 + 113) = *(a2 + 113);
  *(a1 + 104) = v10;
  return a1;
}

WTF::StringImpl *IPC::Decoder::decode<WebKit::WebPopupItem>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<WebKit::WebPopupItem,void>::decode(a2, a1);
  if ((*(a1 + 56) & 1) == 0)
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

unint64_t WTF::Vector<WebKit::WebPopupItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::WebPopupItem>(unsigned int *a1, unint64_t a2)
{
  result = WTF::Vector<WebKit::WebPopupItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, a1[3] + 1, a2);
  v4 = *a1 + 56 * a1[3];
  *v4 = *result;
  v5 = *(result + 8);
  *(result + 8) = 0;
  *(v4 + 8) = v5;
  v6 = *(result + 16);
  *(result + 16) = 0;
  *(v4 + 16) = v6;
  *(v4 + 24) = *(result + 24);
  v7 = *(result + 32);
  *(result + 32) = 0;
  *(v4 + 32) = v7;
  v8 = *(result + 40);
  *(result + 40) = 0;
  *(v4 + 40) = v8;
  LOWORD(v8) = *(result + 48);
  *(v4 + 50) = *(result + 50);
  *(v4 + 48) = v8;
  ++a1[3];
  return result;
}

unint64_t WTF::Vector<WebKit::WebPopupItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(unsigned int *a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 56 * a1[3] <= a3)
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

    WTF::Vector<WebKit::WebPopupItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebKit::WebPopupItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

WTF::StringImpl *WTF::Vector<WebKit::WebPopupItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(WTF::StringImpl *result, unint64_t a2)
{
  if (*(result + 2) < a2)
  {
    if (a2 >= 0x4924925)
    {
      __break(0xC471u);
      JUMPOUT(0x19DACD604);
    }

    v2 = result;
    v3 = *result;
    v4 = (*result + 56 * *(result + 3));
    v5 = 56 * a2;
    v6 = WTF::fastMalloc((56 * a2));
    *(v2 + 2) = v5 / 0x38;
    *v2 = v6;
    result = WTF::VectorMover<false,WebKit::WebPopupItem>::move(v3, v4, v6);
    if (v3)
    {
      if (*v2 == v3)
      {
        *v2 = 0;
        *(v2 + 2) = 0;
      }

      return WTF::fastFree(v3, v7);
    }
  }

  return result;
}

WTF::StringImpl *WTF::VectorMover<false,WebKit::WebPopupItem>::move(WTF::StringImpl *result, WTF::StringImpl *a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    do
    {
      *a3 = *v5;
      v6 = *(v5 + 1);
      *(v5 + 1) = 0;
      *(a3 + 8) = v6;
      v7 = *(v5 + 2);
      *(v5 + 2) = 0;
      *(a3 + 16) = v7;
      *(a3 + 24) = *(v5 + 12);
      v8 = *(v5 + 4);
      *(v5 + 4) = 0;
      *(a3 + 32) = v8;
      v9 = *(v5 + 5);
      *(v5 + 5) = 0;
      *(a3 + 40) = v9;
      LOWORD(v9) = *(v5 + 24);
      *(a3 + 50) = *(v5 + 50);
      *(a3 + 48) = v9;
      v10 = *(v5 + 5);
      *(v5 + 5) = 0;
      if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v10, a2);
      }

      v11 = *(v5 + 4);
      *(v5 + 4) = 0;
      if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v11, a2);
      }

      v12 = *(v5 + 2);
      *(v5 + 2) = 0;
      if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v12, a2);
      }

      result = *(v5 + 1);
      *(v5 + 1) = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, a2);
        }
      }

      a3 += 56;
      v5 = (v5 + 56);
    }

    while (v5 != a2);
  }

  return result;
}

WTF::StringImpl *WTF::VectorTypeOperations<WebKit::WebPopupItem>::destruct(WTF::StringImpl *result, WTF::StringImpl *a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      v4 = *(v3 + 5);
      *(v3 + 5) = 0;
      if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v4, a2);
      }

      v5 = *(v3 + 4);
      *(v3 + 4) = 0;
      if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, a2);
      }

      v6 = *(v3 + 2);
      *(v3 + 2) = 0;
      if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, a2);
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

      v3 = (v3 + 56);
    }

    while (v3 != a2);
  }

  return result;
}

uint64_t WTF::Vector<WebKit::WebPopupItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorTypeOperations<WebKit::WebPopupItem>::destruct(*a1, (*a1 + 56 * v3));
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy29EnumerateMediaDevicesForFrameENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvRS7_NS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEERKNSC_18SecurityOriginDataESJ_ONS_17CompletionHandlerIFvRKNS_6VectorINSC_29CaptureDeviceWithCapabilitiesELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONSC_20MediaDeviceHashSaltsEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSR_ST_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F6A50;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy29EnumerateMediaDevicesForFrameENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvRS7_NS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEERKNSC_18SecurityOriginDataESJ_ONS_17CompletionHandlerIFvRKNS_6VectorINSC_29CaptureDeviceWithCapabilitiesELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONSC_20MediaDeviceHashSaltsEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSR_ST_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F6A50;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy29EnumerateMediaDevicesForFrameENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvRS7_NS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEERKNSC_18SecurityOriginDataESJ_ONS_17CompletionHandlerIFvRKNS_6VectorINSC_29CaptureDeviceWithCapabilitiesELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONSC_20MediaDeviceHashSaltsEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSR_ST_EE4callESR_ST_(uint64_t a1, unsigned int *a2, uint64_t *a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = IPC::Encoder::operator new(0x238, a2);
  *v7 = 3709;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = v6;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  IPC::Encoder::encodeHeader(v7);
  v15 = v7;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v7, a2[3]);
  v8 = a2[3];
  if (v8)
  {
    v9 = *a2;
    v10 = v9 + 232 * v8;
    do
    {
      IPC::ArgumentCoder<WebCore::CaptureDevice,void>::encode(v7, v9);
      IPC::ArgumentCoder<WebCore::RealtimeMediaSourceCapabilities,void>::encode(v7, v9 + 40);
      v9 += 232;
    }

    while (v9 != v10);
  }

  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v7, a3);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v7, a3 + 1);
  IPC::Connection::sendMessageImpl(v5, &v15, 0, 0);
  result = v15;
  v15 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v11);
    return bmalloc::api::tzoneFree(v13, v14);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy26ValidateCaptureStateUpdateENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvNS_23ObjectIdentifierGenericIN7WebCore30UserMediaRequestIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONSB_12ClientOriginEONS8_13FrameInfoDataEbNSB_29MediaProducerMediaCaptureKindEONS_17CompletionHandlerIFvONSt3__18optionalINSB_9ExceptionEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSQ_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F6A78;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy26ValidateCaptureStateUpdateENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvNS_23ObjectIdentifierGenericIN7WebCore30UserMediaRequestIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONSB_12ClientOriginEONS8_13FrameInfoDataEbNSB_29MediaProducerMediaCaptureKindEONS_17CompletionHandlerIFvONSt3__18optionalINSB_9ExceptionEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSQ_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F6A78;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy26ValidateCaptureStateUpdateENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvNS_23ObjectIdentifierGenericIN7WebCore30UserMediaRequestIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONSB_12ClientOriginEONS8_13FrameInfoDataEbNSB_29MediaProducerMediaCaptureKindEONS_17CompletionHandlerIFvONSt3__18optionalINSB_9ExceptionEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSQ_EE4callESQ_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3741;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::optional<WebCore::Exception>,void>::encode<IPC::Encoder,std::optional<WebCore::Exception>>(v5, a2);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy29RequestNotificationPermissionENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvRKNS_6StringEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED1Ev(void *a1)
{
  *a1 = &unk_1F10F6AA0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy29RequestNotificationPermissionENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvRKNS_6StringEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F6AA0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy29RequestNotificationPermissionENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvRKNS_6StringEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEE4callEb(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3726;
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

WTF *IPC::ArgumentCoder<std::tuple<std::optional<WebCore::TextIndicatorData>>,void>::decode<IPC::Decoder>@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  IPC::ArgumentCoder<std::optional<WebCore::TextIndicatorData>,void>::decode<IPC::Decoder>(a1, v14);
  if (v22 & 1) != 0 || ((v10 = *a1, v11 = a1[1], *a1 = 0, a1[1] = 0, (result = a1[3]) != 0) ? (v12 = v11 == 0) : (v12 = 1), !v12 && (result = (*(*result + 16))(result, v10), (v22)))
  {
    result = std::optional<WebCore::TextIndicatorData>::optional[abi:sn200100](a2, v14);
    v6 = v22;
    a2[144] = 1;
    if ((v6 & 1) != 0 && v21 == 1)
    {
      if ((v20 & 0x8000000000000) != 0)
      {
        v13 = (v20 & 0xFFFFFFFFFFFFLL);
        if (atomic_fetch_add((v20 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v13);
          WTF::fastFree(v13, v5);
        }
      }

      v7 = v19;
      v19 = 0;
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

      v8 = v18;
      v18 = 0;
      if (v8)
      {
        if (v8[4] == 1)
        {
          (*(*v8 + 8))(v8);
        }

        else
        {
          --v8[4];
        }
      }

      v9 = v17;
      v17 = 0;
      if (v9)
      {
        if (v9[4] == 1)
        {
          (*(*v9 + 8))(v9);
        }

        else
        {
          --v9[4];
        }
      }

      result = v15;
      if (v15)
      {
        v15 = 0;
        v16 = 0;
        return WTF::fastFree(result, v5);
      }
    }
  }

  else
  {
    *a2 = 0;
    a2[144] = 0;
  }

  return result;
}

WTF *IPC::ArgumentCoder<std::optional<WebCore::TextIndicatorData>,void>::decode<IPC::Decoder>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a1;
  if (v3 <= &v4[-*a1])
  {
    *a1 = 0;
    a1[1] = 0;
    v20 = a1;
    v18 = a1[3];
    if (v18)
    {
      if (v3)
      {
        (*(*v18 + 16))(v18);
        v5 = *v20;
        v3 = v20[1];
        goto LABEL_30;
      }
    }

    else
    {
      v3 = 0;
    }

    v5 = 0;
LABEL_30:
    *v20 = 0;
    v20[1] = 0;
    v19 = v20[3];
    if (v19)
    {
      if (v3)
      {
        (*(*v19 + 16))(v19, v5);
        v5 = *v20;
        v3 = v20[1];
        goto LABEL_34;
      }
    }

    else
    {
      v3 = 0;
    }

    v5 = 0;
LABEL_34:
    *v20 = 0;
    v20[1] = 0;
    result = v20[3];
    if (result && v3)
    {
      result = (*(*result + 16))(result, v5);
    }

    goto LABEL_35;
  }

  a1[2] = (v4 + 1);
  if (!v4)
  {
    v20 = a1;
    goto LABEL_30;
  }

  v6 = *v4;
  if (v6 >= 2)
  {
    v20 = a1;
    goto LABEL_34;
  }

  if (!v6)
  {
    LOBYTE(v21[0]) = 0;
    v29 = 0;
    result = std::optional<WebCore::TextIndicatorData>::optional[abi:sn200100](a2, v21);
    *(a2 + 144) = 1;
    if (v29 != 1)
    {
      return result;
    }

    v12 = v27;
    if ((v27 & 0x8000000000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

  result = IPC::Decoder::decode<WebCore::TextIndicatorData>(a1, v21);
  if (v29 != 1)
  {
LABEL_35:
    *a2 = 0;
    *(a2 + 144) = 0;
    return result;
  }

  v9 = v21[1];
  *a2 = v21[0];
  *(a2 + 16) = v9;
  *(a2 + 32) = v21[2];
  *(a2 + 48) = v22;
  v10 = v23;
  v22 = 0;
  v23 = 0;
  *(a2 + 56) = v10;
  *(a2 + 64) = v24;
  v11 = v25;
  v25 = 0uLL;
  *(a2 + 72) = v11;
  v13 = v26;
  v12 = v27;
  v26 = 0;
  *(a2 + 88) = v13;
  *(a2 + 96) = 0;
  if (v21 == a2)
  {
    *(a2 + 104) = v28[0];
    *(a2 + 113) = *(v28 + 9);
    *(a2 + 136) = 1;
    *(a2 + 144) = 1;
    if ((v12 & 0x8000000000000) == 0)
    {
      goto LABEL_10;
    }

LABEL_25:
    v17 = (v12 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v12 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v17);
      WTF::fastFree(v17, v8);
    }

    goto LABEL_10;
  }

  v27 = 0;
  *(a2 + 96) = v12;
  *(a2 + 104) = v28[0];
  *(a2 + 113) = *(v28 + 9);
  *(a2 + 136) = 1;
  *(a2 + 144) = 1;
LABEL_10:
  v14 = v26;
  v26 = 0;
  if (v14)
  {
    if (v14[4] == 1)
    {
      (*(*v14 + 8))(v14);
    }

    else
    {
      --v14[4];
    }
  }

  v15 = *(&v25 + 1);
  *(&v25 + 1) = 0;
  if (v15)
  {
    if (v15[4] == 1)
    {
      (*(*v15 + 8))(v15);
    }

    else
    {
      --v15[4];
    }
  }

  v16 = v25;
  *&v25 = 0;
  if (v16)
  {
    if (v16[4] == 1)
    {
      (*(*v16 + 8))(v16);
    }

    else
    {
      --v16[4];
    }
  }

  result = v22;
  if (v22)
  {
    v22 = 0;
    LODWORD(v23) = 0;
    return WTF::fastFree(result, v8);
  }

  return result;
}

uint64_t std::optional<WebCore::TextIndicatorData>::optional[abi:sn200100](uint64_t a1, __int128 *a2)
{
  *a1 = 0;
  *(a1 + 136) = 0;
  if (*(a2 + 136) == 1)
  {
    v4 = *a2;
    v5 = a2[2];
    *(a1 + 16) = a2[1];
    *(a1 + 32) = v5;
    *a1 = v4;
    *(a1 + 56) = 0;
    *(a1 + 48) = 0;
    WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 48, a2 + 12);
    *(a1 + 64) = *(a2 + 16);
    v6 = *(a2 + 9);
    *(a2 + 9) = 0;
    *(a1 + 72) = v6;
    v7 = *(a2 + 10);
    *(a2 + 10) = 0;
    *(a1 + 80) = v7;
    v8 = *(a2 + 11);
    *(a2 + 11) = 0;
    *(a1 + 88) = v8;
    *(a1 + 96) = 0;
    if (a1 != a2)
    {
      v9 = *(a2 + 12);
      *(a2 + 12) = 0;
      *(a1 + 96) = v9;
    }

    v10 = *(a2 + 104);
    *(a1 + 113) = *(a2 + 113);
    *(a1 + 104) = v10;
    *(a1 + 136) = 1;
  }

  return a1;
}

void IPC::Decoder::decode<WebKit::FocusedElementInformation>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  IPC::ArgumentCoder<WebKit::FocusedElementInformation,void>::decode(a1, a2);
  if ((a2[784] & 1) == 0)
  {
    v4 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v5 = *(a1 + 3);
    if (v5 && v4 != 0)
    {
      v7 = *(*v5 + 16);

      v7();
    }
  }
}

uint64_t std::__tuple_leaf<0ul,WebKit::FocusedElementInformation,false>::__tuple_leaf[abi:sn200100]<WebKit::FocusedElementInformation,0>(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v6;
  *a1 = v4;
  *(a1 + 16) = v5;
  v7 = a2[4];
  v8 = a2[5];
  v9 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v9;
  *(a1 + 64) = v7;
  *(a1 + 80) = v8;
  v10 = a2[8];
  v11 = a2[9];
  v12 = a2[10];
  *(a1 + 172) = *(a2 + 172);
  *(a1 + 144) = v11;
  *(a1 + 160) = v12;
  *(a1 + 128) = v10;
  v13 = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a1 + 192) = v13;
  *(a1 + 208) = 0;
  *(a1 + 200) = 0;
  WTF::VectorBuffer<unsigned short,0ul,WTF::FastMalloc>::adopt(a1 + 200, a2 + 50);
  *(a1 + 216) = *(a2 + 54);
  v14 = *(a2 + 28);
  *(a2 + 28) = 0;
  *(a1 + 224) = v14;
  *(a1 + 232) = *(a2 + 29);
  v15 = *(a2 + 30);
  *(a2 + 30) = 0;
  *(a1 + 240) = v15;
  *(a1 + 248) = *(a2 + 124);
  WTF::URL::URL(a1 + 256, a2 + 32);
  *(a1 + 296) = *(a2 + 148);
  v16 = *(a2 + 38);
  *(a2 + 38) = 0;
  *(a1 + 304) = v16;
  v17 = *(a2 + 39);
  *(a2 + 39) = 0;
  *(a1 + 312) = v17;
  v18 = *(a2 + 40);
  *(a2 + 40) = 0;
  *(a1 + 320) = v18;
  *(a1 + 328) = *(a2 + 164);
  *(a1 + 336) = 0;
  if (a1 != a2)
  {
    v19 = *(a2 + 42);
    *(a2 + 42) = 0;
    *(a1 + 336) = v19;
  }

  *(a1 + 344) = *(a2 + 344);
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  WTF::VectorBuffer<unsigned short,0ul,WTF::FastMalloc>::adopt(a1 + 352, a2 + 88);
  v20 = a2[23];
  v21 = a2[24];
  *(a1 + 400) = *(a2 + 50);
  *(a1 + 368) = v20;
  *(a1 + 384) = v21;
  std::optional<WebKit::FrameInfoData>::optional[abi:sn200100](a1 + 416, (a2 + 26));
  return a1;
}

uint64_t *IPC::Decoder::decode<std::tuple<std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>>(uint64_t a1, uint64_t *a2)
{
  result = IPC::ArgumentCoder<std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::decode<IPC::Decoder>(a2, &v8);
  if (v10)
  {
    goto LABEL_2;
  }

  v5 = *a2;
  v6 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  result = a2[3];
  if (result)
  {
    if (v6)
    {
      result = (*(*result + 16))(result, v5);
      if (v10)
      {
LABEL_2:
        *a1 = v8;
        *(a1 + 16) = v9;
        *(a1 + 24) = 1;
        return result;
      }

      v6 = a2[1];
      result = a2[3];
    }
  }

  else
  {
    v6 = 0;
  }

  *a1 = 0;
  *(a1 + 24) = 0;
  *a2 = 0;
  a2[1] = 0;
  if (result && v6)
  {
    v7 = *(*result + 16);

    return v7();
  }

  return result;
}

uint64_t IPC::VectorArgumentCoder<false,WebCore::RecentSearch,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>@<X0>(WTF::StringImpl **a1@<X0>, char *a2@<X8>, __n128 a3@<Q1>)
{
  v5 = a1[1];
  v6 = ((a1[2] + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *a1;
  v8 = (v6 - *a1);
  v9 = v5 >= v8;
  v10 = v5 - v8;
  if (!v9 || v10 <= 7)
  {
    *a1 = 0;
    a1[1] = 0;
    v33 = a1[3];
    if (v33)
    {
      if (v5)
      {
        (*(*v33 + 16))(v33);
        v5 = a1[1];
      }
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_41;
  }

  a1[2] = (v6 + 1);
  if (v6)
  {
    v12 = *v6;
    v37 = 0uLL;
    if (v12 >= 0x10000)
    {
      v13 = *a2;
      v14 = a2[16];
      while (1)
      {
        IPC::Decoder::decode<WebCore::RecentSearch>(a1, &v34);
        v24 = v36;
        if (v36 != 1)
        {
          break;
        }

        if (v37.n128_u32[3] == v37.n128_u32[2])
        {
          v25 = WTF::Vector<WTF::KeyValuePair<WTF::String,WebKit::WebGPU::ShaderModuleCompilationHint>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v37, v37.n128_u32[3] + 1, &v34);
          v26 = (v37.n128_u64[0] + 16 * v37.n128_u32[3]);
          v27 = *v25;
          *v25 = 0;
          v28 = v25 + 1;
          *v26 = v27;
        }

        else
        {
          v29 = v34;
          v26 = (v37.n128_u64[0] + 16 * v37.n128_u32[3]);
          v34 = 0;
          *v26 = v29;
          v28 = &v35;
        }

        v26[1] = *v28;
        ++v37.n128_u32[3];
        if (v36)
        {
          v30 = v34;
          v34 = 0;
          if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v30, v7);
          }

          if ((v24 & 1) == 0)
          {
            goto LABEL_37;
          }
        }

        if (!--v12)
        {
          WTF::Vector<WebCore::RecentSearch,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v37, v37.n128_u32[3]);
          *a2 = v37.n128_u64[0];
          v31 = v37.n128_u64[1];
          v37 = 0uLL;
          *(a2 + 1) = v31;
          goto LABEL_23;
        }
      }
    }

    else
    {
      if (!v12)
      {
        v22 = 0;
        v23 = 0;
LABEL_22:
        a3.n128_u64[0] = 0;
        v37 = a3;
        *a2 = v22;
        *(a2 + 1) = v23;
LABEL_23:
        a2[16] = 1;
        return WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v37, v7);
      }

      v37.n128_u32[2] = v12;
      v37.n128_u64[0] = WTF::fastMalloc((16 * v12));
      v13 = *a2;
      v14 = a2[16];
      while (1)
      {
        IPC::Decoder::decode<WebCore::RecentSearch>(a1, &v34);
        v15 = v36;
        if (v36 != 1)
        {
          break;
        }

        if (v37.n128_u32[3] == v37.n128_u32[2])
        {
          v16 = WTF::Vector<WTF::KeyValuePair<WTF::String,WebKit::WebGPU::ShaderModuleCompilationHint>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v37, v37.n128_u32[3] + 1, &v34);
          v17 = (v37.n128_u64[0] + 16 * v37.n128_u32[3]);
          v18 = *v16;
          *v16 = 0;
          v19 = v16 + 1;
          *v17 = v18;
        }

        else
        {
          v20 = v34;
          v17 = (v37.n128_u64[0] + 16 * v37.n128_u32[3]);
          v34 = 0;
          *v17 = v20;
          v19 = &v35;
        }

        v17[1] = *v19;
        ++v37.n128_u32[3];
        if (v36)
        {
          v21 = v34;
          v34 = 0;
          if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v21, v7);
          }

          if ((v15 & 1) == 0)
          {
            goto LABEL_37;
          }
        }

        if (!--v12)
        {
          v23 = v37.n128_u64[1];
          v22 = v37.n128_u64[0];
          goto LABEL_22;
        }
      }
    }

    v14 = 0;
    v13 = 0;
LABEL_37:
    a2[16] = v14;
    *a2 = v13;
    return WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v37, v7);
  }

LABEL_41:
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

WTF::StringImpl *IPC::Decoder::decode<WebCore::RecentSearch>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<WebCore::RecentSearch,void>::decode(a1, a2);
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

uint64_t WTF::Vector<WebCore::RecentSearch,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(uint64_t result, unint64_t a2)
{
  if (*(result + 8) > a2)
  {
    v3 = result;
    v4 = *(result + 12);
    if (v4 > a2)
    {
      result = WTF::VectorDestructor<true,WebCore::SpeechRecognitionAlternativeData>::destruct((*result + 16 * a2), (*result + 16 * v4));
      *(v3 + 12) = a2;
      LODWORD(v4) = a2;
    }

    v5 = *v3;
    if (a2)
    {
      if (a2 >> 28)
      {
        __break(0xC471u);
        return result;
      }

      result = WTF::fastMalloc((16 * a2));
      *(v3 + 8) = a2;
      *v3 = result;
      if (result != v5)
      {
        result = WTF::VectorTypeOperations<WebKit::OptionItem>::move(v5, (v5 + 16 * v4), result);
      }
    }

    if (v5)
    {
      if (*v3 == v5)
      {
        *v3 = 0;
        *(v3 + 8) = 0;
      }

      return WTF::fastFree(v5, a2);
    }
  }

  return result;
}

void IPC::ArgumentCoder<std::tuple<WebCore::ShareableResourceHandle>,void>::decode<IPC::Decoder>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::ArgumentCoder<WebCore::ShareableResourceHandle,void>::decode(a1, v5);
  if (v6 & 1) != 0 || (IPC::Decoder::markInvalid(a1), (v6))
  {
    WTF::MachSendRight::MachSendRight();
    *(a2 + 8) = *&v5[8];
    v4 = v6;
    *(a2 + 24) = 1;
    if (v4)
    {
      WTF::MachSendRight::~MachSendRight(v5);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 24) = 0;
  }
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy46RequestPasswordForQuickLookDocumentInMainFrameENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvRKNS_6StringEONS_17CompletionHandlerIFvSC_EEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSC_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F6AC8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy46RequestPasswordForQuickLookDocumentInMainFrameENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvRKNS_6StringEONS_17CompletionHandlerIFvSC_EEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSC_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F6AC8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *IPC::Connection::sendAsyncReply<Messages::WebPageProxy::RequestPasswordForQuickLookDocumentInMainFrame,WTF::String const&>(uint64_t *a1, void *a2, uint64_t *a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 3727;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a2;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v11 = v6;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v6, a3);
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

void IPC::ArgumentCoder<std::tuple<WebCore::ContentFilterUnblockHandler,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  v11 = *MEMORY[0x1E69E9840];
  IPC::ArgumentCoder<WebCore::ContentFilterUnblockHandler,void>::decode(a1, v9);
  if (v10 & 1) != 0 || ((v5 = *a1, v6 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (v7 = *(a1 + 3)) != 0) ? (v8 = v6 == 0) : (v8 = 1), !v8 && ((*(*v7 + 16))(v7, v5), (v10)))
  {
    IPC::ArgumentCoder<std::tuple<WebCore::ContentFilterUnblockHandler,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder,WebCore::ContentFilterUnblockHandler>(a1, v9, a2);
    if (v10)
    {
      WebCore::ContentFilterUnblockHandler::~ContentFilterUnblockHandler(v9, v4);
    }
  }

  else
  {
    *a2 = 0;
    a2[168] = 0;
  }
}

uint64_t IPC::ArgumentCoder<std::tuple<WebCore::ContentFilterUnblockHandler,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder,WebCore::ContentFilterUnblockHandler>@<X0>(IPC::Decoder *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if ((v6 & 1) == 0)
  {
    v10 = 0;
    *a3 = 0;
LABEL_7:
    *(a3 + 168) = v10;
    return result;
  }

  if (a2[20])
  {
    v7 = result;
    v8 = *a2;
    *a2 = 0;
    *a3 = v8;
    WTF::URL::URL(a3 + 8, a2 + 1);
    std::__function::__value_func<void ()(std::function<void ()(BOOL)>)>::__value_func[abi:sn200100](a3 + 48, (a2 + 6));
    *(a3 + 80) = 0;
    *(a3 + 120) = 0;
    if (*(a2 + 120) == 1)
    {
      WTF::URL::URL(a3 + 80, a2 + 10);
      *(a3 + 120) = 1;
    }

    *(a3 + 128) = 0;
    *(a3 + 136) = 0;
    result = WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a3 + 128, a2 + 16);
    v9 = a2[18];
    a2[18] = 0;
    *(a3 + 144) = v9;
    *(a3 + 152) = *(a2 + 152);
    *(a3 + 160) = v7;
    v10 = 1;
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t IPC::Decoder::decode<std::tuple<WTF::OptionSet<WebCore::MediaProducerMediaState>>>(uint64_t *a1)
{
  v2 = IPC::Decoder::decode<WTF::OptionSet<WebCore::MediaProducerMediaState>>(a1);
  v3 = v2 & 0x100000000;
  if ((v2 & 0x100000000) == 0)
  {
    v6 = *a1;
    v7 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v8 = a1[3];
    if (v8 && v7 != 0)
    {
      v10 = v2;
      (*(*v8 + 16))(v8, v6);
      v3 = 0;
      LODWORD(v2) = v10;
    }
  }

  v4 = v2;
  if (!v3)
  {
    v4 = 0;
  }

  return v4 | v3;
}

uint64_t IPC::Decoder::decode<WTF::OptionSet<WebCore::MediaProducerMediaState>>(uint64_t *a1)
{
  v2 = IPC::ArgumentCoder<WTF::OptionSet<WebCore::MediaProducerMediaState>,void>::decode<IPC::Decoder>(a1);
  if ((v2 & 0x100000000) == 0)
  {
    v4 = *a1;
    v5 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v6 = a1[3];
    if (v6)
    {
      v7 = v5 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      v8 = v2;
      (*(*v6 + 16))(v6, v4);
      v2 = v8;
    }
  }

  return v2 & 0xFFFFFFFFFFLL;
}

uint64_t IPC::ArgumentCoder<WTF::OptionSet<WebCore::MediaProducerMediaState>,void>::decode<IPC::Decoder>(uint64_t *a1)
{
  v1 = a1[1];
  v2 = ((a1[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v3 = *a1;
  v4 = v2 - *a1;
  v5 = v1 >= v4;
  v6 = v1 - v4;
  if (!v5 || v6 <= 3)
  {
    *a1 = 0;
    a1[1] = 0;
    v15 = a1;
    v12 = a1[3];
    if (v12)
    {
      if (v1)
      {
        (*(*v12 + 16))(v12);
        v3 = *v15;
        v1 = v15[1];
        goto LABEL_12;
      }
    }

    else
    {
      v1 = 0;
    }

    v3 = 0;
LABEL_12:
    *v15 = 0;
    v15[1] = 0;
    v13 = v15[3];
    if (v13 && v1)
    {
      (*(*v13 + 16))(v13, v3);
    }

    goto LABEL_13;
  }

  a1[2] = (v2 + 1);
  if (!v2)
  {
    v15 = a1;
    goto LABEL_12;
  }

  v8 = *v2;
  if (v8 >> 28)
  {
LABEL_13:
    v11 = 0;
    v10 = 0;
    v9 = 0;
    return v11 | v9 | v10;
  }

  v9 = v8 & 0xFFFFF00;
  v10 = v8;
  v11 = 0x100000000;
  return v11 | v9 | v10;
}

void IPC::Decoder::decode<std::tuple<WTF::String,WebKit::UserData>>(_BYTE *a1, IPC::Decoder *a2)
{
  IPC::ArgumentCoder<std::tuple<WTF::String,WebKit::UserData>,void>::decode<IPC::Decoder>(a2, a1);
  if ((a1[16] & 1) == 0)
  {
    v4 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v5 = *(a2 + 3);
    if (v5 && v4 != 0)
    {
      v7 = *(*v5 + 16);

      v7();
    }
  }
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy27HandleMessageWithAsyncReplyENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvRKNS_6StringERKNS8_8UserDataEONS_17CompletionHandlerIFvOSD_EEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSH_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F6AF0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy27HandleMessageWithAsyncReplyENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvRKNS_6StringERKNS8_8UserDataEONS_17CompletionHandlerIFvOSD_EEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSH_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F6AF0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy27HandleMessageWithAsyncReplyENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvRKNS_6StringERKNS8_8UserDataEONS_17CompletionHandlerIFvOSD_EEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSH_EE4callESH_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3711;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<WebKit::UserData,void>::encode(v5, a2);
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

void IPC::Decoder::decode<std::tuple<WebKit::UserData>>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  IPC::ArgumentCoder<std::tuple<WebKit::UserData>,void>::decode<IPC::Decoder>(a1, a2, a3);
  if ((*(a2 + 8) & 1) == 0)
  {
    v5 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v6 = *(a1 + 3);
    if (v6 && v5 != 0)
    {
      v8 = *(*v6 + 16);

      v8();
    }
  }
}

void IPC::ArgumentCoder<std::tuple<WebKit::UserData>,void>::decode<IPC::Decoder>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  IPC::ArgumentCoder<WebKit::UserData,void>::decode(a1, &v11, a3);
  if (v12)
  {
    v5 = v11;
    if (v11)
    {
      CFRetain(*(v11 + 8));
      *a2 = v5;
      *(a2 + 8) = 1;
      v10 = *(v5 + 8);

      CFRelease(v10);
    }

    else
    {
      *a2 = 0;
      *(a2 + 8) = 1;
    }
  }

  else
  {
    v6 = *a1;
    v7 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v8 = *(a1 + 3);
    if (v8)
    {
      v9 = v7 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      (*(*v8 + 16))(v8, v6);
    }

    *a2 = 0;
    *(a2 + 8) = 0;
  }
}

void IPC::Decoder::decode<std::tuple<WebKit::URLSchemeTaskParameters>>(_BYTE *a1, IPC::Decoder *a2)
{
  IPC::ArgumentCoder<std::tuple<WebKit::URLSchemeTaskParameters>,void>::decode<IPC::Decoder>(a2, a1);
  if ((a1[576] & 1) == 0)
  {
    v4 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v5 = *(a2 + 3);
    if (v5 && v4 != 0)
    {
      v7 = *(*v5 + 16);

      v7();
    }
  }
}

uint64_t std::optional<std::tuple<WebKit::URLSchemeTaskParameters>>::~optional(uint64_t a1, WTF::StringImpl *a2)
{
  if (*(a1 + 576) == 1)
  {
    v3 = *(a1 + 528);
    *(a1 + 528) = 0;
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = *(a1 + 464);
    *(a1 + 464) = 0;
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }

    if (!*(a1 + 456))
    {
      v5 = *(a1 + 440);
      *(a1 + 440) = 0;
      if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, a2);
      }

      v6 = *(a1 + 432);
      *(a1 + 432) = 0;
      if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, a2);
      }
    }

    *(a1 + 456) = -1;
    WebCore::ResourceRequest::~ResourceRequest((a1 + 232));
    WebCore::ResourceRequest::~ResourceRequest((a1 + 16));
  }

  return a1;
}

void IPC::ArgumentCoder<std::tuple<WebKit::URLSchemeTaskParameters>,void>::decode<IPC::Decoder>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  v23 = *MEMORY[0x1E69E9840];
  IPC::ArgumentCoder<WebKit::URLSchemeTaskParameters,void>::decode(a1, v14);
  if (v22 & 1) != 0 || ((v10 = *a1, v11 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (v12 = *(a1 + 3)) != 0) ? (v13 = v11 == 0) : (v13 = 1), !v13 && ((*(*v12 + 16))(v12, v10), (v22)))
  {
    WebKit::URLSchemeTaskParameters::URLSchemeTaskParameters(a2, v14);
    v5 = v22;
    a2[576] = 1;
    if (v5)
    {
      v6 = cf;
      cf = 0;
      if (v6)
      {
        CFRelease(v6);
      }

      v7 = v20;
      v20 = 0;
      if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, v4);
      }

      if (!v19)
      {
        v8 = v18;
        v18 = 0;
        if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v8, v4);
        }

        v9 = v17;
        v17 = 0;
        if (v9)
        {
          if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v9, v4);
          }
        }
      }

      v19 = -1;
      WebCore::ResourceRequest::~ResourceRequest(&v16);
      WebCore::ResourceRequest::~ResourceRequest(&v15);
    }
  }

  else
  {
    *a2 = 0;
    a2[576] = 0;
  }
}

uint64_t WebKit::URLSchemeTaskParameters::URLSchemeTaskParameters(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  WTF::URL::URL(a1 + 16, (a2 + 16));
  WTF::URL::URL(a1 + 56, (a2 + 56));
  *(a1 + 96) = *(a2 + 96);
  v4 = *(a2 + 104);
  *(a2 + 104) = 0;
  *(a1 + 104) = v4;
  *(a1 + 120) = 0;
  *(a1 + 112) = 0;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1 + 112, (a2 + 112));
  *(a1 + 136) = 0;
  *(a1 + 128) = 0;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1 + 128, (a2 + 128));
  *(a1 + 152) = 0;
  *(a1 + 144) = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 144, (a2 + 144));
  v5 = *(a2 + 160);
  *(a1 + 164) = *(a2 + 164);
  *(a1 + 160) = v5;
  v6 = *(a2 + 168);
  *(a2 + 168) = 0;
  *(a1 + 168) = v6;
  v7 = *(a2 + 176);
  *(a2 + 176) = 0;
  *(a1 + 176) = v7;
  v8 = *(a2 + 184);
  *(a2 + 184) = 0;
  *(a1 + 184) = v8;
  v9 = *(a2 + 192);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 192) = v9;
  v10 = *(a2 + 208);
  *(a2 + 208) = 0;
  *(a1 + 208) = v10;
  *(a1 + 224) = *(a2 + 224);
  WTF::URL::URL(a1 + 232, (a2 + 232));
  WTF::URL::URL(a1 + 272, (a2 + 272));
  *(a1 + 312) = *(a2 + 312);
  v11 = *(a2 + 320);
  *(a2 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 320) = v11;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1 + 328, (a2 + 328));
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1 + 344, (a2 + 344));
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 360, (a2 + 360));
  v12 = *(a2 + 376);
  *(a1 + 380) = *(a2 + 380);
  *(a1 + 376) = v12;
  v13 = *(a2 + 384);
  *(a2 + 384) = 0;
  *(a1 + 384) = v13;
  v14 = *(a2 + 392);
  *(a2 + 392) = 0;
  *(a1 + 392) = v14;
  v15 = *(a2 + 400);
  *(a2 + 400) = 0;
  *(a1 + 400) = v15;
  v16 = *(a2 + 408);
  *(a1 + 416) = *(a2 + 416);
  *(a1 + 408) = v16;
  v17 = *(a2 + 424);
  *(a2 + 424) = 0;
  *(a1 + 424) = v17;
  mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment((a1 + 432));
  v18 = *(a2 + 464);
  *(a2 + 464) = 0;
  *(a1 + 464) = v18;
  v19 = *(a2 + 472);
  v20 = *(a2 + 488);
  v21 = *(a2 + 504);
  *(a1 + 520) = *(a2 + 520);
  *(a1 + 488) = v20;
  *(a1 + 504) = v21;
  *(a1 + 472) = v19;
  v22 = *(a2 + 528);
  *(a2 + 528) = 0;
  *(a1 + 528) = v22;
  v23 = *(a2 + 536);
  v24 = *(a2 + 552);
  *(a1 + 568) = *(a2 + 568);
  *(a1 + 536) = v23;
  *(a1 + 552) = v24;
  return a1;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy43ShouldAllowDeviceOrientationAndMotionAccessENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvRS7_NS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS8_13FrameInfoDataEbONS_17CompletionHandlerIFvNSC_40DeviceOrientationOrMotionPermissionStateEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSK_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F6B18;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy43ShouldAllowDeviceOrientationAndMotionAccessENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvRS7_NS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS8_13FrameInfoDataEbONS_17CompletionHandlerIFvNSC_40DeviceOrientationOrMotionPermissionStateEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSK_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F6B18;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy43ShouldAllowDeviceOrientationAndMotionAccessENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvRS7_NS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS8_13FrameInfoDataEbONS_17CompletionHandlerIFvNSC_40DeviceOrientationOrMotionPermissionStateEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSK_EE4callESK_(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3730;
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

uint64_t IPC::ArgumentCoder<std::tuple<WTF::Vector<WebCore::SerializedAttachmentData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q1>)
{
  IPC::VectorArgumentCoder<false,WebCore::SerializedAttachmentData,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a1, &v11, a3);
  if (v13 & 1) != 0 || ((v8 = *a1, v9 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (result = *(a1 + 3)) != 0) ? (v10 = v9 == 0) : (v10 = 1), !v10 && (result = (*(*result + 16))(result, v8), (v13)))
  {
    *a2 = v11;
    v6 = v12;
    v11 = 0;
    v12 = 0;
    *(a2 + 8) = v6;
    *(a2 + 16) = 1;
    return WTF::Vector<WebCore::SerializedAttachmentData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v11, v5);
  }

  else
  {
    *a2 = 0;
    *(a2 + 16) = 0;
  }

  return result;
}

uint64_t IPC::VectorArgumentCoder<false,WebCore::SerializedAttachmentData,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q1>)
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
    v33 = *(a1 + 3);
    if (v33)
    {
      if (v5)
      {
        (*(*v33 + 16))(v33);
        v5 = *(a1 + 1);
      }
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_49;
  }

  *(a1 + 2) = v6 + 1;
  if (!v6)
  {
LABEL_49:
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
    *(a2 + 16) = 0;
    return result;
  }

  v12 = *v6;
  v38[0] = 0;
  v38[1] = 0;
  if (v12 >= 0xAAAA)
  {
    while (1)
    {
      IPC::Decoder::decode<WebCore::SerializedAttachmentData>(a1, &v34);
      if (v37 != 1)
      {
LABEL_45:
        *a2 = 0;
        *(a2 + 16) = 0;
        return WTF::Vector<WebCore::SerializedAttachmentData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v38, v7);
      }

      if (HIDWORD(v38[1]) != LODWORD(v38[1]))
      {
        break;
      }

      WTF::Vector<WebCore::SerializedAttachmentData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::SerializedAttachmentData>(v38, &v34);
      if (v37)
      {
        goto LABEL_34;
      }

LABEL_43:
      if (!--v12)
      {
        WTF::Vector<WebCore::SerializedAttachmentData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(v38, HIDWORD(v38[1]));
        *a2 = v38[0];
        v32 = v38[1];
        v38[0] = 0;
        v38[1] = 0;
        *(a2 + 8) = v32;
        goto LABEL_28;
      }
    }

    v23 = HIDWORD(v38[1]) + 1;
    v24 = (v38[0] + 24 * HIDWORD(v38[1]));
    v25 = v34;
    v34 = 0;
    *v24 = v25;
    v26 = v35;
    v35 = 0;
    v24[1] = v26;
    v27 = v36;
    v36 = 0;
    v24[2] = v27;
    HIDWORD(v38[1]) = v23;
LABEL_34:
    v28 = v36;
    v36 = 0;
    if (v28 && atomic_fetch_add(v28 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v28 + 2);
      (*(*v28 + 8))(v28);
    }

    v29 = v35;
    v35 = 0;
    if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v29, v7);
    }

    v30 = v34;
    v34 = 0;
    if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v30, v7);
    }

    goto LABEL_43;
  }

  if (v12)
  {
    LODWORD(v38[1]) = 24 * v12 / 0x18u;
    v38[0] = WTF::fastMalloc((24 * v12));
    while (1)
    {
      IPC::Decoder::decode<WebCore::SerializedAttachmentData>(a1, &v34);
      if (v37 != 1)
      {
        goto LABEL_45;
      }

      if (HIDWORD(v38[1]) != LODWORD(v38[1]))
      {
        break;
      }

      WTF::Vector<WebCore::SerializedAttachmentData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::SerializedAttachmentData>(v38, &v34);
      if (v37)
      {
        goto LABEL_15;
      }

LABEL_24:
      if (!--v12)
      {
        v21 = v38[0];
        v22 = v38[1];
        goto LABEL_27;
      }
    }

    v13 = HIDWORD(v38[1]) + 1;
    v14 = (v38[0] + 24 * HIDWORD(v38[1]));
    v15 = v34;
    v34 = 0;
    *v14 = v15;
    v16 = v35;
    v35 = 0;
    v14[1] = v16;
    v17 = v36;
    v36 = 0;
    v14[2] = v17;
    HIDWORD(v38[1]) = v13;
LABEL_15:
    v18 = v36;
    v36 = 0;
    if (v18 && atomic_fetch_add(v18 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v18 + 2);
      (*(*v18 + 8))(v18);
    }

    v19 = v35;
    v35 = 0;
    if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v19, v7);
    }

    v20 = v34;
    v34 = 0;
    if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v20, v7);
    }

    goto LABEL_24;
  }

  v21 = 0;
  v22 = 0;
LABEL_27:
  a3.n128_u64[0] = 0;
  *v38 = a3;
  *a2 = v21;
  *(a2 + 8) = v22;
LABEL_28:
  *(a2 + 16) = 1;
  return WTF::Vector<WebCore::SerializedAttachmentData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v38, v7);
}

void IPC::Decoder::decode<WebCore::SerializedAttachmentData>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::ArgumentCoder<WebCore::SerializedAttachmentData,void>::decode(a1, a2);
  if ((*(a2 + 24) & 1) == 0)
  {
    v4 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v5 = *(a1 + 3);
    if (v5 && v4 != 0)
    {
      v7 = *(*v5 + 16);

      v7();
    }
  }
}

uint64_t WTF::Vector<WebCore::SerializedAttachmentData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::SerializedAttachmentData>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<WebCore::SerializedAttachmentData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  v4 = *(a1 + 12);
  v5 = v4 + 1;
  v6 = (*a1 + 24 * v4);
  v7 = *v3;
  *v3 = 0;
  *v6 = v7;
  v8 = v3[1];
  v3[1] = 0;
  v6[1] = v8;
  v9 = v3[2];
  v3[2] = 0;
  v6[2] = v9;
  *(a1 + 12) = v5;
  return 1;
}

unint64_t WTF::Vector<WebCore::SerializedAttachmentData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 24 * *(a1 + 12) <= a3)
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

    WTF::Vector<WebCore::SerializedAttachmentData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebCore::SerializedAttachmentData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WebCore::SerializedAttachmentData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    if (a2 >= 0xAAAAAAB)
    {
      __break(0xC471u);
      JUMPOUT(0x19DACFED8);
    }

    v3 = *a1;
    v4 = (*a1 + 24 * *(a1 + 12));
    v5 = 24 * a2;
    v6 = WTF::fastMalloc((24 * a2));
    *(a1 + 8) = v5 / 0x18;
    *a1 = v6;
    WTF::VectorMover<false,WebCore::SerializedAttachmentData>::move(v3, v4, v6);
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

WTF::StringImpl *WTF::VectorMover<false,WebCore::SerializedAttachmentData>::move(WTF::StringImpl *result, WTF::StringImpl *a2, WTF::StringImpl **a3)
{
  if (result != a2)
  {
    v5 = result;
    do
    {
      v6 = *v5;
      *v5 = 0;
      *a3 = v6;
      v7 = v5[1];
      v5[1] = 0;
      a3[1] = v7;
      v8 = v5[2];
      v5[2] = 0;
      a3[2] = v8;
      v9 = v5[2];
      v5[2] = 0;
      if (v9 && atomic_fetch_add(v9 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v9 + 2);
        (*(*v9 + 8))(v9);
      }

      v10 = v5[1];
      v5[1] = 0;
      if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v10, a2);
      }

      result = *v5;
      *v5 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, a2);
        }
      }

      a3 += 3;
      v5 += 3;
    }

    while (v5 != a2);
  }

  return result;
}

uint64_t WTF::Vector<WebCore::SerializedAttachmentData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(uint64_t result, unint64_t this)
{
  if (*(result + 8) > this)
  {
    v3 = result;
    v4 = *(result + 12);
    if (v4 > this)
    {
      result = WTF::VectorTypeOperations<WebCore::SerializedAttachmentData>::destruct((*result + 24 * this), (*result + 24 * v4));
      *(v3 + 12) = this;
      LODWORD(v4) = this;
    }

    v5 = *v3;
    if (this)
    {
      if (this >= 0xAAAAAAB)
      {
        __break(0xC471u);
        JUMPOUT(0x19DAD00E4);
      }

      v6 = (24 * this);
      result = WTF::fastMalloc(v6);
      *(v3 + 8) = v6 / 0x18;
      *v3 = result;
      if (result != v5)
      {
        result = WTF::VectorMover<false,WebCore::SerializedAttachmentData>::move(v5, (v5 + 24 * v4), result);
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

WTF::StringImpl *WTF::VectorTypeOperations<WebCore::SerializedAttachmentData>::destruct(WTF::StringImpl *result, WTF::StringImpl *a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      v4 = *(v3 + 2);
      *(v3 + 2) = 0;
      if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v4 + 2);
        (*(*v4 + 8))(v4);
      }

      v5 = *(v3 + 1);
      *(v3 + 1) = 0;
      if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, a2);
      }

      result = *v3;
      *v3 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, a2);
        }
      }

      v3 = (v3 + 24);
    }

    while (v3 != a2);
  }

  return result;
}

uint64_t WTF::Vector<WebCore::SerializedAttachmentData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorTypeOperations<WebCore::SerializedAttachmentData>::destruct(*a1, (*a1 + 24 * v3));
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy20SpeechSynthesisSpeakENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvRKNS_6StringESC_fffNS_13MonotonicTimeESC_SC_SC_bbONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10F6B40;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy20SpeechSynthesisSpeakENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvRKNS_6StringESC_fffNS_13MonotonicTimeESC_SC_SC_bbONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F6B40;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy20SpeechSynthesisSpeakENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvRKNS_6StringESC_fffNS_13MonotonicTimeESC_SC_SC_bbONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3739;
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy34SpeechSynthesisSetFinishedCallbackENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10F6B68;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy34SpeechSynthesisSetFinishedCallbackENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F6B68;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy34SpeechSynthesisSetFinishedCallbackENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3738;
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy20SpeechSynthesisPauseENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10F6B90;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy20SpeechSynthesisPauseENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F6B90;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy20SpeechSynthesisPauseENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3736;
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy21SpeechSynthesisResumeENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10F6BB8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy21SpeechSynthesisResumeENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F6BB8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy21SpeechSynthesisResumeENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3737;
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

uint64_t std::__optional_copy_assign_base<WebCore::MockWebAuthenticationConfiguration::NfcConfiguration,false>::__optional_copy_assign_base[abi:sn200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 32) = 0;
  if (*(a2 + 32) == 1)
  {
    *a1 = *a2;
    *(a1 + 16) = 0;
    *(a1 + 8) = 0;
    WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 8, (a2 + 8));
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 32) = 1;
  }

  return a1;
}

uint64_t IPC::Decoder::decode<std::tuple<WebKit::ModelIdentifier>>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::Decoder::decode<WebKit::ModelIdentifier>(&v9, a2);
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
    v6 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
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
      v8 = *(*result + 16);

      return v8();
    }
  }

  return result;
}

uint64_t IPC::Decoder::decode<WebKit::ModelIdentifier>(_BYTE *a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<WebKit::ModelIdentifier,void>::decode(a2, a1);
  if ((a1[16] & 1) == 0)
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

uint64_t IPC::Decoder::decode<std::tuple<WebKit::ModelIdentifier,BOOL>>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::Decoder::decode<WebKit::ModelIdentifier>(&v15, a2);
  if (v16 == 1)
  {
    v5 = *(a2 + 1);
    v6 = *(a2 + 2);
    v7 = *a2;
    if (v5 <= &v6[-*a2])
    {
      *a2 = 0;
      *(a2 + 1) = 0;
      v9 = *(a2 + 3);
      if (v9)
      {
        if (v5)
        {
          (*(*v9 + 16))(v9);
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
          *a1 = v15;
          *(a1 + 16) = v8;
          *(a1 + 24) = 1;
          return result;
        }

        goto LABEL_11;
      }
    }

    *a2 = 0;
    *(a2 + 1) = 0;
    v10 = *(a2 + 3);
    if (v10)
    {
      if (v5)
      {
        (*(*v10 + 16))(v10);
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
    v11 = *(a2 + 3);
    if (v11 && v5)
    {
      (*(*v11 + 16))(v11, v7);
    }
  }

  *a1 = 0;
  *(a1 + 24) = 0;
  v12 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy21ModelElementGetCameraENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvNS8_15ModelIdentifierEONS_17CompletionHandlerIFvNSt12experimental15fundamentals_v38expectedIN7WebCore22HTMLModelElementCameraENSF_13ResourceErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSI_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F6BE0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy21ModelElementGetCameraENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvNS8_15ModelIdentifierEONS_17CompletionHandlerIFvNSt12experimental15fundamentals_v38expectedIN7WebCore22HTMLModelElementCameraENSF_13ResourceErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSI_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F6BE0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy21ModelElementGetCameraENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvNS8_15ModelIdentifierEONS_17CompletionHandlerIFvNSt12experimental15fundamentals_v38expectedIN7WebCore22HTMLModelElementCameraENSF_13ResourceErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSI_EE4callESI_(uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3715;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v11 = v5;
  if (a2[80])
  {
    v13 = 0;
    v6 = IPC::Encoder::operator<<<BOOL>(v5, &v13);
    if (a2[80] == 1)
    {
      IPC::ArgumentCoder<WebCore::ResourceError,void>::encode(v5, a2);
      goto LABEL_6;
    }

LABEL_9:
    mpark::throw_bad_variant_access(v6);
  }

  v12 = 1;
  v6 = IPC::Encoder::operator<<<BOOL>(v5, &v12);
  if (a2[80])
  {
    goto LABEL_9;
  }

  IPC::ArgumentCoder<WebCore::HTMLModelElementCamera,void>::encode(v5, a2);
LABEL_6:
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy21ModelElementSetCameraENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvNS8_15ModelIdentifierEN7WebCore22HTMLModelElementCameraEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED1Ev(void *a1)
{
  *a1 = &unk_1F10F6C08;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy21ModelElementSetCameraENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvNS8_15ModelIdentifierEN7WebCore22HTMLModelElementCameraEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F6C08;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy21ModelElementSetCameraENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvNS8_15ModelIdentifierEN7WebCore22HTMLModelElementCameraEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEE4callEb(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3722;
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy30ModelElementIsPlayingAnimationENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvNS8_15ModelIdentifierEONS_17CompletionHandlerIFvNSt12experimental15fundamentals_v38expectedIbN7WebCore13ResourceErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSH_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F6C30;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy30ModelElementIsPlayingAnimationENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvNS8_15ModelIdentifierEONS_17CompletionHandlerIFvNSt12experimental15fundamentals_v38expectedIbN7WebCore13ResourceErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSH_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F6C30;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy30ModelElementIsPlayingAnimationENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvNS8_15ModelIdentifierEONS_17CompletionHandlerIFvNSt12experimental15fundamentals_v38expectedIbN7WebCore13ResourceErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSH_EE4callESH_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3719;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<BOOL,WebCore::ResourceError>,void>::encode<IPC::Encoder>(v5, a2);
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

void IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<BOOL,WebCore::ResourceError>,void>::encode<IPC::Encoder>(IPC::Encoder *a1, WebCore::ResourceError *a2)
{
  if (*(a2 + 80))
  {
    v6 = 0;
    v4 = IPC::Encoder::operator<<<BOOL>(a1, &v6);
    if (*(a2 + 80) == 1)
    {
      IPC::ArgumentCoder<WebCore::ResourceError,void>::encode(a1, a2);
      return;
    }

LABEL_7:
    mpark::throw_bad_variant_access(v4);
  }

  v5 = 1;
  v4 = IPC::Encoder::operator<<<BOOL>(a1, &v5);
  if (*(a2 + 80))
  {
    goto LABEL_7;
  }

  IPC::Encoder::operator<<<BOOL>(a1, a2);
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy33ModelElementSetAnimationIsPlayingENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvNS8_15ModelIdentifierEbONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED1Ev(void *a1)
{
  *a1 = &unk_1F10F6C58;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy33ModelElementSetAnimationIsPlayingENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvNS8_15ModelIdentifierEbONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F6C58;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy33ModelElementSetAnimationIsPlayingENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvNS8_15ModelIdentifierEbONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEE4callEb(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3721;
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy30ModelElementIsLoopingAnimationENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvNS8_15ModelIdentifierEONS_17CompletionHandlerIFvNSt12experimental15fundamentals_v38expectedIbN7WebCore13ResourceErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSH_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F6C80;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy30ModelElementIsLoopingAnimationENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvNS8_15ModelIdentifierEONS_17CompletionHandlerIFvNSt12experimental15fundamentals_v38expectedIbN7WebCore13ResourceErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSH_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F6C80;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy30ModelElementIsLoopingAnimationENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvNS8_15ModelIdentifierEONS_17CompletionHandlerIFvNSt12experimental15fundamentals_v38expectedIbN7WebCore13ResourceErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSH_EE4callESH_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3717;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<BOOL,WebCore::ResourceError>,void>::encode<IPC::Encoder>(v5, a2);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy33ModelElementSetIsLoopingAnimationENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvNS8_15ModelIdentifierEbONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED1Ev(void *a1)
{
  *a1 = &unk_1F10F6CA8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy33ModelElementSetIsLoopingAnimationENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvNS8_15ModelIdentifierEbONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F6CA8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy33ModelElementSetIsLoopingAnimationENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvNS8_15ModelIdentifierEbONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEE4callEb(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3723;
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy29ModelElementAnimationDurationENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvNS8_15ModelIdentifierEONS_17CompletionHandlerIFvNSt12experimental15fundamentals_v38expectedINS_7SecondsEN7WebCore13ResourceErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSI_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F6CD0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy29ModelElementAnimationDurationENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvNS8_15ModelIdentifierEONS_17CompletionHandlerIFvNSt12experimental15fundamentals_v38expectedINS_7SecondsEN7WebCore13ResourceErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSI_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F6CD0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy29ModelElementAnimationDurationENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvNS8_15ModelIdentifierEONS_17CompletionHandlerIFvNSt12experimental15fundamentals_v38expectedINS_7SecondsEN7WebCore13ResourceErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSI_EE4callESI_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3714;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError>,void>::encode<IPC::Encoder>(v5, a2);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy32ModelElementAnimationCurrentTimeENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvNS8_15ModelIdentifierEONS_17CompletionHandlerIFvNSt12experimental15fundamentals_v38expectedINS_7SecondsEN7WebCore13ResourceErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSI_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F6CF8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy32ModelElementAnimationCurrentTimeENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvNS8_15ModelIdentifierEONS_17CompletionHandlerIFvNSt12experimental15fundamentals_v38expectedINS_7SecondsEN7WebCore13ResourceErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSI_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F6CF8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy32ModelElementAnimationCurrentTimeENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvNS8_15ModelIdentifierEONS_17CompletionHandlerIFvNSt12experimental15fundamentals_v38expectedINS_7SecondsEN7WebCore13ResourceErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSI_EE4callESI_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3713;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError>,void>::encode<IPC::Encoder>(v5, a2);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy35ModelElementSetAnimationCurrentTimeENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvNS8_15ModelIdentifierENS_7SecondsEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED1Ev(void *a1)
{
  *a1 = &unk_1F10F6D20;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy35ModelElementSetAnimationCurrentTimeENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvNS8_15ModelIdentifierENS_7SecondsEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F6D20;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy35ModelElementSetAnimationCurrentTimeENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvNS8_15ModelIdentifierENS_7SecondsEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEE4callEb(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3720;
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy20ModelElementHasAudioENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvNS8_15ModelIdentifierEONS_17CompletionHandlerIFvNSt12experimental15fundamentals_v38expectedIbN7WebCore13ResourceErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSH_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F6D48;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy20ModelElementHasAudioENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvNS8_15ModelIdentifierEONS_17CompletionHandlerIFvNSt12experimental15fundamentals_v38expectedIbN7WebCore13ResourceErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSH_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F6D48;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy20ModelElementHasAudioENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvNS8_15ModelIdentifierEONS_17CompletionHandlerIFvNSt12experimental15fundamentals_v38expectedIbN7WebCore13ResourceErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSH_EE4callESH_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3716;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<BOOL,WebCore::ResourceError>,void>::encode<IPC::Encoder>(v5, a2);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy19ModelElementIsMutedENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvNS8_15ModelIdentifierEONS_17CompletionHandlerIFvNSt12experimental15fundamentals_v38expectedIbN7WebCore13ResourceErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSH_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F6D70;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy19ModelElementIsMutedENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvNS8_15ModelIdentifierEONS_17CompletionHandlerIFvNSt12experimental15fundamentals_v38expectedIbN7WebCore13ResourceErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSH_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F6D70;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy19ModelElementIsMutedENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvNS8_15ModelIdentifierEONS_17CompletionHandlerIFvNSt12experimental15fundamentals_v38expectedIbN7WebCore13ResourceErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSH_EE4callESH_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3718;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<BOOL,WebCore::ResourceError>,void>::encode<IPC::Encoder>(v5, a2);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy22ModelElementSetIsMutedENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvNS8_15ModelIdentifierEbONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED1Ev(void *a1)
{
  *a1 = &unk_1F10F6D98;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy22ModelElementSetIsMutedENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvNS8_15ModelIdentifierEbONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F6D98;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy22ModelElementSetIsMutedENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvNS8_15ModelIdentifierEbONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEE4callEb(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3724;
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy25StartApplePayAMSUISessionENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvONS_3URLEON7WebCore20ApplePayAMSUIRequestEONS_17CompletionHandlerIFvONSt3__18optionalIbEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSJ_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F6DC0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy25StartApplePayAMSUISessionENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvONS_3URLEON7WebCore20ApplePayAMSUIRequestEONS_17CompletionHandlerIFvONSt3__18optionalIbEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSJ_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F6DC0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy25StartApplePayAMSUISessionENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvONS_3URLEON7WebCore20ApplePayAMSUIRequestEONS_17CompletionHandlerIFvONSt3__18optionalIbEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSJ_EE4callESJ_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3740;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::optional<BOOL>,void>::encode<IPC::Encoder,std::optional<BOOL>>(v5, a2);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy18BeginSystemPreviewENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvRKNS_3URLERKN7WebCore18SecurityOriginDataERKNSD_17SystemPreviewInfoEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10F6DE8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy18BeginSystemPreviewENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvRKNS_3URLERKN7WebCore18SecurityOriginDataERKNSD_17SystemPreviewInfoEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F6DE8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy18BeginSystemPreviewENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvRKNS_3URLERKN7WebCore18SecurityOriginDataERKNSD_17SystemPreviewInfoEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3703;
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy20RequestCookieConsentENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvONS_17CompletionHandlerIFvN7WebCore27CookieConsentDecisionResultEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSC_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F6E10;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy20RequestCookieConsentENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvONS_17CompletionHandlerIFvN7WebCore27CookieConsentDecisionResultEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSC_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F6E10;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy20RequestCookieConsentENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvONS_17CompletionHandlerIFvN7WebCore27CookieConsentDecisionResultEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSC_EE4callESC_(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3725;
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy24DocumentURLForConsoleLogENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_17CompletionHandlerIFvRKNS_3URLEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSJ_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F6E38;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy24DocumentURLForConsoleLogENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_17CompletionHandlerIFvRKNS_3URLEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSJ_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F6E38;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12WebPageProxy24DocumentURLForConsoleLogENS2_10ConnectionEN6WebKit12WebPageProxyES9_FvNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_17CompletionHandlerIFvRKNS_3URLEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSJ_EE4callESJ_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3708;
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

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy13CreateNewPageEN6WebKit12WebPageProxyES8_FvRNS2_10ConnectionEON7WebCore14WindowFeaturesEONS7_20NavigationActionDataEONS_17CompletionHandlerIFvNSt3__18optionalINS_23ObjectIdentifierGenericINSB_18PageIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEENSI_INS7_25WebPageCreationParametersEEEEEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSO_SQ_EED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F6E60;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy13CreateNewPageEN6WebKit12WebPageProxyES8_FvRNS2_10ConnectionEON7WebCore14WindowFeaturesEONS7_20NavigationActionDataEONS_17CompletionHandlerIFvNSt3__18optionalINS_23ObjectIdentifierGenericINSB_18PageIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEENSI_INS7_25WebPageCreationParametersEEEEEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSO_SQ_EED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F6E60;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

void _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy13CreateNewPageEN6WebKit12WebPageProxyES8_FvRNS2_10ConnectionEON7WebCore14WindowFeaturesEONS7_20NavigationActionDataEONS_17CompletionHandlerIFvNSt3__18optionalINS_23ObjectIdentifierGenericINSB_18PageIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEENSI_INS7_25WebPageCreationParametersEEEEEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSO_SQ_EE4callESO_SQ_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[0] = a2;
  v10[1] = a3;
  v6 = (a1 + 8);
  v7 = *(a1 + 8);
  IPC::ArgumentCoder<std::optional<unsigned long long>,void>::encode<IPC::Encoder,std::optional<unsigned long long>>(v7, v10);
  if ((*(a4 + 1680) & 1) == 0)
  {
    v11 = 0;
    IPC::Encoder::operator<<<BOOL>(v7, &v11);
    goto LABEL_5;
  }

  v11 = 1;
  IPC::Encoder::operator<<<BOOL>(v7, &v11);
  if (*(a4 + 1680))
  {
    IPC::ArgumentCoder<WebKit::WebPageCreationParameters,void>::encode(v7, a4);
LABEL_5:
    IPC::Connection::sendMessageImpl(*(a1 + 16), v6, 0, 0);
    return;
  }

  v8 = std::__throw_bad_optional_access[abi:sn200100]();
  IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::FrameInfoData,WTF::String>>(v8, v9);
}

void IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::FrameInfoData,WTF::String>>(uint64_t a1, IPC::Decoder *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if (v5)
  {
    v6 = v4;
    IPC::ArgumentCoder<WebKit::FrameInfoData,void>::decode(a2, v24);
    if (v31 & 1) != 0 || (v13 = *a2, v14 = *(a2 + 1), *a2 = 0, *(a2 + 1) = 0, (v15 = *(a2 + 3)) != 0) && v14 && ((*(*v15 + 16))(v15, v13), (v31))
    {
      v7 = IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a2, &v22);
      if (v23 & 1) != 0 || (v8 = *a2, v20 = *(a2 + 1), *a2 = 0, *(a2 + 1) = 0, (v21 = *(a2 + 3)) != 0) && v20 && (v7 = (*(*v21 + 16))(v21, v8), (v23))
      {
        if ((v31 & 1) == 0)
        {
          __break(1u);
          goto LABEL_31;
        }

        *a1 = v6;
        std::__tuple_leaf<1ul,WebKit::FrameInfoData,false>::__tuple_leaf[abi:sn200100]<WebKit::FrameInfoData,0>(a1 + 16, v24);
        *(a1 + 368) = v22;
        v9 = 1;
      }

      else
      {
        v9 = 0;
        *a1 = 0;
      }

      *(a1 + 384) = v9;
      if ((v31 & 1) == 0)
      {
        goto LABEL_19;
      }

      v7 = cf;
      cf = 0;
      if (!v7)
      {
LABEL_8:
        v10 = v29;
        v29 = 0;
        if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v10, v8);
        }

        if (!v28)
        {
          v11 = v27;
          v27 = 0;
          if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v11, v8);
          }

          v12 = v26;
          v26 = 0;
          if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v12, v8);
          }
        }

        v28 = -1;
        WebCore::ResourceRequest::~ResourceRequest(&v25);
        v9 = *(a1 + 384);
LABEL_19:
        if (v9)
        {
          return;
        }

        goto LABEL_23;
      }

LABEL_31:
      CFRelease(v7);
      goto LABEL_8;
    }
  }

  *a1 = 0;
  *(a1 + 384) = 0;
LABEL_23:
  v16 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  v17 = *(a2 + 3);
  if (v17)
  {
    v18 = v16 == 0;
  }

  else
  {
    v18 = 1;
  }

  if (!v18)
  {
    v19 = *(*v17 + 16);

    v19();
  }
}

uint64_t std::optional<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::FrameInfoData,WTF::String>>::~optional(uint64_t a1, WTF::StringImpl *a2)
{
  if (*(a1 + 384) == 1)
  {
    v3 = *(a1 + 368);
    *(a1 + 368) = 0;
    if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, a2);
    }

    v4 = *(a1 + 320);
    *(a1 + 320) = 0;
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = *(a1 + 256);
    *(a1 + 256) = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, a2);
    }

    if (!*(a1 + 248))
    {
      v6 = *(a1 + 232);
      *(a1 + 232) = 0;
      if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, a2);
      }

      v7 = *(a1 + 224);
      *(a1 + 224) = 0;
      if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, a2);
      }
    }

    *(a1 + 248) = -1;
    WebCore::ResourceRequest::~ResourceRequest((a1 + 24));
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy18RunJavaScriptAlertEN6WebKit12WebPageProxyES8_FvRNS2_10ConnectionENS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS7_13FrameInfoDataEONS_6StringEONS_17CompletionHandlerIFvvEEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJEED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F6E88;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy18RunJavaScriptAlertEN6WebKit12WebPageProxyES8_FvRNS2_10ConnectionENS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS7_13FrameInfoDataEONS_6StringEONS_17CompletionHandlerIFvvEEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJEED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F6E88;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy20RunJavaScriptConfirmEN6WebKit12WebPageProxyES8_FvRNS2_10ConnectionENS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS7_13FrameInfoDataEONS_6StringEONS_17CompletionHandlerIFvbEEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJbEED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F6EB0;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy20RunJavaScriptConfirmEN6WebKit12WebPageProxyES8_FvRNS2_10ConnectionENS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS7_13FrameInfoDataEONS_6StringEONS_17CompletionHandlerIFvbEEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJbEED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F6EB0;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy20RunJavaScriptConfirmEN6WebKit12WebPageProxyES8_FvRNS2_10ConnectionENS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS7_13FrameInfoDataEONS_6StringEONS_17CompletionHandlerIFvbEEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJbEE4callEb(uint64_t a1, char a2)
{
  v4 = a2;
  v2 = a1 + 8;
  IPC::Encoder::operator<<<BOOL>(*(a1 + 8), &v4);
  return IPC::Connection::sendMessageImpl(*(v2 + 8), v2, 0, 0);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy19RunJavaScriptPromptEN6WebKit12WebPageProxyES8_FvRNS2_10ConnectionENS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS7_13FrameInfoDataEONS_6StringESK_ONS_17CompletionHandlerIFvRKSJ_EEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSN_EED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F6ED8;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy19RunJavaScriptPromptEN6WebKit12WebPageProxyES8_FvRNS2_10ConnectionENS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS7_13FrameInfoDataEONS_6StringESK_ONS_17CompletionHandlerIFvRKSJ_EEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSN_EED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F6ED8;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy19RunJavaScriptPromptEN6WebKit12WebPageProxyES8_FvRNS2_10ConnectionENS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS7_13FrameInfoDataEONS_6StringESK_ONS_17CompletionHandlerIFvRKSJ_EEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSN_EE4callESN_(uint64_t a1, uint64_t *a2)
{
  v2 = (a1 + 8);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(*(a1 + 8), a2);
  v3 = v2[1];

  return IPC::Connection::sendMessageImpl(v3, v2, 0, 0);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy21GetToolbarsAreVisibleEN6WebKit12WebPageProxyES8_FvONS_17CompletionHandlerIFvbEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJbEED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F6F00;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy21GetToolbarsAreVisibleEN6WebKit12WebPageProxyES8_FvONS_17CompletionHandlerIFvbEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJbEED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F6F00;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy21GetToolbarsAreVisibleEN6WebKit12WebPageProxyES8_FvONS_17CompletionHandlerIFvbEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJbEE4callEb(uint64_t a1, char a2)
{
  v4 = a2;
  v2 = a1 + 8;
  IPC::Encoder::operator<<<BOOL>(*(a1 + 8), &v4);
  return IPC::Connection::sendMessageImpl(*(v2 + 8), v2, 0, 0);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy19GetMenuBarIsVisibleEN6WebKit12WebPageProxyES8_FvONS_17CompletionHandlerIFvbEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJbEED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F6F28;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy19GetMenuBarIsVisibleEN6WebKit12WebPageProxyES8_FvONS_17CompletionHandlerIFvbEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJbEED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F6F28;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy19GetMenuBarIsVisibleEN6WebKit12WebPageProxyES8_FvONS_17CompletionHandlerIFvbEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJbEE4callEb(uint64_t a1, char a2)
{
  v4 = a2;
  v2 = a1 + 8;
  IPC::Encoder::operator<<<BOOL>(*(a1 + 8), &v4);
  return IPC::Connection::sendMessageImpl(*(v2 + 8), v2, 0, 0);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy21GetStatusBarIsVisibleEN6WebKit12WebPageProxyES8_FvONS_17CompletionHandlerIFvbEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJbEED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F6F50;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy21GetStatusBarIsVisibleEN6WebKit12WebPageProxyES8_FvONS_17CompletionHandlerIFvbEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJbEED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F6F50;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy21GetStatusBarIsVisibleEN6WebKit12WebPageProxyES8_FvONS_17CompletionHandlerIFvbEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJbEE4callEb(uint64_t a1, char a2)
{
  v4 = a2;
  v2 = a1 + 8;
  IPC::Encoder::operator<<<BOOL>(*(a1 + 8), &v4);
  return IPC::Connection::sendMessageImpl(*(v2 + 8), v2, 0, 0);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy14GetWindowFrameEN6WebKit12WebPageProxyES8_FvONS_17CompletionHandlerIFvRKN7WebCore9FloatRectEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSD_EED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F6F78;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy14GetWindowFrameEN6WebKit12WebPageProxyES8_FvONS_17CompletionHandlerIFvRKN7WebCore9FloatRectEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSD_EED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F6F78;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy14GetWindowFrameEN6WebKit12WebPageProxyES8_FvONS_17CompletionHandlerIFvRKN7WebCore9FloatRectEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSD_EE4callESD_(uint64_t a1, float *a2)
{
  v2 = (a1 + 8);
  IPC::ArgumentCoder<WebCore::FloatRect,void>::encode(*(a1 + 8), a2);
  v3 = v2[1];

  return IPC::Connection::sendMessageImpl(v3, v2, 0, 0);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy16ScreenToRootViewEN6WebKit12WebPageProxyES8_FvRKN7WebCore8IntPointEONS_17CompletionHandlerIFvSC_EEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSC_EED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F6FA0;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy16ScreenToRootViewEN6WebKit12WebPageProxyES8_FvRKN7WebCore8IntPointEONS_17CompletionHandlerIFvSC_EEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSC_EED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F6FA0;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy16ScreenToRootViewEN6WebKit12WebPageProxyES8_FvRKN7WebCore8IntPointEONS_17CompletionHandlerIFvSC_EEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSC_EE4callESC_(uint64_t a1, int *a2)
{
  v2 = (a1 + 8);
  IPC::ArgumentCoder<WebCore::IntPoint,void>::encode(*(a1 + 8), a2);
  v3 = v2[1];

  return IPC::Connection::sendMessageImpl(v3, v2, 0, 0);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy21RootViewPointToScreenEN6WebKit12WebPageProxyES8_FvRKN7WebCore8IntPointEONS_17CompletionHandlerIFvSC_EEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSC_EED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F6FC8;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy21RootViewPointToScreenEN6WebKit12WebPageProxyES8_FvRKN7WebCore8IntPointEONS_17CompletionHandlerIFvSC_EEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSC_EED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F6FC8;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy21RootViewPointToScreenEN6WebKit12WebPageProxyES8_FvRKN7WebCore8IntPointEONS_17CompletionHandlerIFvSC_EEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSC_EE4callESC_(uint64_t a1, int *a2)
{
  v2 = (a1 + 8);
  IPC::ArgumentCoder<WebCore::IntPoint,void>::encode(*(a1 + 8), a2);
  v3 = v2[1];

  return IPC::Connection::sendMessageImpl(v3, v2, 0, 0);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy20RootViewRectToScreenEN6WebKit12WebPageProxyES8_FvRKN7WebCore7IntRectEONS_17CompletionHandlerIFvSC_EEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSC_EED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F6FF0;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy20RootViewRectToScreenEN6WebKit12WebPageProxyES8_FvRKN7WebCore7IntRectEONS_17CompletionHandlerIFvSC_EEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSC_EED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F6FF0;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy20RootViewRectToScreenEN6WebKit12WebPageProxyES8_FvRKN7WebCore7IntRectEONS_17CompletionHandlerIFvSC_EEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSC_EE4callESC_(uint64_t a1, int *a2)
{
  v2 = (a1 + 8);
  IPC::ArgumentCoder<WebCore::IntRect,void>::encode(*(a1 + 8), a2);
  v3 = v2[1];

  return IPC::Connection::sendMessageImpl(v3, v2, 0, 0);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy29AccessibilityScreenToRootViewEN6WebKit12WebPageProxyES8_FvRKN7WebCore8IntPointEONS_17CompletionHandlerIFvSA_EEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSA_EED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F7018;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy29AccessibilityScreenToRootViewEN6WebKit12WebPageProxyES8_FvRKN7WebCore8IntPointEONS_17CompletionHandlerIFvSA_EEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSA_EED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F7018;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy29AccessibilityScreenToRootViewEN6WebKit12WebPageProxyES8_FvRKN7WebCore8IntPointEONS_17CompletionHandlerIFvSA_EEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSA_EE4callESA_(uint64_t a1, unint64_t a2)
{
  v2 = HIDWORD(a2);
  v3 = (a1 + 8);
  v4 = *(a1 + 8);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v4, a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v4, v2);
  v5 = v3[1];

  return IPC::Connection::sendMessageImpl(v5, v3, 0, 0);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy29RootViewToAccessibilityScreenEN6WebKit12WebPageProxyES8_FvRKN7WebCore7IntRectEONS_17CompletionHandlerIFvSA_EEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSA_EED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F7040;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy29RootViewToAccessibilityScreenEN6WebKit12WebPageProxyES8_FvRKN7WebCore7IntRectEONS_17CompletionHandlerIFvSA_EEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSA_EED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F7040;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy29RootViewToAccessibilityScreenEN6WebKit12WebPageProxyES8_FvRKN7WebCore7IntRectEONS_17CompletionHandlerIFvSA_EEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSA_EE4callESA_(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[0] = a2;
  v6[1] = a3;
  v3 = (a1 + 8);
  IPC::ArgumentCoder<WebCore::IntRect,void>::encode(*(a1 + 8), v6);
  v4 = v3[1];

  return IPC::Connection::sendMessageImpl(v4, v3, 0, 0);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy27RunBeforeUnloadConfirmPanelEN6WebKit12WebPageProxyES8_FvRNS2_10ConnectionENS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS7_13FrameInfoDataEONS_6StringEONS_17CompletionHandlerIFvbEEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJbEED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F7068;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy27RunBeforeUnloadConfirmPanelEN6WebKit12WebPageProxyES8_FvRNS2_10ConnectionENS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS7_13FrameInfoDataEONS_6StringEONS_17CompletionHandlerIFvbEEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJbEED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F7068;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy27RunBeforeUnloadConfirmPanelEN6WebKit12WebPageProxyES8_FvRNS2_10ConnectionENS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS7_13FrameInfoDataEONS_6StringEONS_17CompletionHandlerIFvbEEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJbEE4callEb(uint64_t a1, char a2)
{
  v4 = a2;
  v2 = a1 + 8;
  IPC::Encoder::operator<<<BOOL>(*(a1 + 8), &v4);
  return IPC::Connection::sendMessageImpl(*(v2 + 8), v2, 0, 0);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy10PrintFrameEN6WebKit12WebPageProxyES8_FvRNS2_10ConnectionENS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_6StringERKNSC_9FloatSizeEONS_17CompletionHandlerIFvvEEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJEED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F7090;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy10PrintFrameEN6WebKit12WebPageProxyES8_FvRNS2_10ConnectionENS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_6StringERKNSC_9FloatSizeEONS_17CompletionHandlerIFvvEEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJEED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F7090;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy35DecidePolicyForNavigationActionSyncEN6WebKit12WebPageProxyES8_FvRNS2_10ConnectionEONS7_20NavigationActionDataEONS_17CompletionHandlerIFvONS7_14PolicyDecisionEEEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSF_EED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F70B8;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy35DecidePolicyForNavigationActionSyncEN6WebKit12WebPageProxyES8_FvRNS2_10ConnectionEONS7_20NavigationActionDataEONS_17CompletionHandlerIFvONS7_14PolicyDecisionEEEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSF_EED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F70B8;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy35DecidePolicyForNavigationActionSyncEN6WebKit12WebPageProxyES8_FvRNS2_10ConnectionEONS7_20NavigationActionDataEONS_17CompletionHandlerIFvONS7_14PolicyDecisionEEEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSF_EE4callESF_(uint64_t a1, char *a2)
{
  v2 = (a1 + 8);
  IPC::ArgumentCoder<WebKit::PolicyDecision,void>::encode(*(a1 + 8), a2);
  v3 = v2[1];

  return IPC::Connection::sendMessageImpl(v3, v2, 0, 0);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy17InterpretKeyEventEN6WebKit12WebPageProxyES8_FvONS7_11EditorStateEONS7_29KeyEventInterpretationContextEONS_17CompletionHandlerIFvbEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJbEED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F70E0;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy17InterpretKeyEventEN6WebKit12WebPageProxyES8_FvONS7_11EditorStateEONS7_29KeyEventInterpretationContextEONS_17CompletionHandlerIFvbEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJbEED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F70E0;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy17InterpretKeyEventEN6WebKit12WebPageProxyES8_FvONS7_11EditorStateEONS7_29KeyEventInterpretationContextEONS_17CompletionHandlerIFvbEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJbEE4callEb(uint64_t a1, char a2)
{
  v4 = a2;
  v2 = a1 + 8;
  IPC::Encoder::operator<<<BOOL>(*(a1 + 8), &v4);
  return IPC::Connection::sendMessageImpl(*(v2 + 8), v2, 0, 0);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy19BackForwardGoToItemEN6WebKit12WebPageProxyES8_FvN7WebCore16ProcessQualifiedINS_23ObjectIdentifierGenericINS9_29BackForwardItemIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvRKNS7_24WebBackForwardListCountsEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSK_EED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F7108;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy19BackForwardGoToItemEN6WebKit12WebPageProxyES8_FvN7WebCore16ProcessQualifiedINS_23ObjectIdentifierGenericINS9_29BackForwardItemIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvRKNS7_24WebBackForwardListCountsEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSK_EED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F7108;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy19BackForwardGoToItemEN6WebKit12WebPageProxyES8_FvN7WebCore16ProcessQualifiedINS_23ObjectIdentifierGenericINS9_29BackForwardItemIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvRKNS7_24WebBackForwardListCountsEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSK_EE4callESK_(uint64_t a1, int *a2)
{
  v3 = (a1 + 8);
  v4 = *(a1 + 8);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v4, *a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v4, a2[1]);
  v5 = v3[1];

  return IPC::Connection::sendMessageImpl(v5, v3, 0, 0);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy22BackForwardItemAtIndexEN6WebKit12WebPageProxyES8_FviNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_17CompletionHandlerIFvONS_6RefPtrINS7_10FrameStateENS_12RawPtrTraitsISH_EENS_21DefaultRefDerefTraitsISH_EEEEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSN_EED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F7130;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy22BackForwardItemAtIndexEN6WebKit12WebPageProxyES8_FviNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_17CompletionHandlerIFvONS_6RefPtrINS7_10FrameStateENS_12RawPtrTraitsISH_EENS_21DefaultRefDerefTraitsISH_EEEEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSN_EED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F7130;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy22BackForwardItemAtIndexEN6WebKit12WebPageProxyES8_FviNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_17CompletionHandlerIFvONS_6RefPtrINS7_10FrameStateENS_12RawPtrTraitsISH_EENS_21DefaultRefDerefTraitsISH_EEEEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSN_EE4callESN_(uint64_t a1, uint64_t *a2)
{
  v4 = (a1 + 8);
  v3 = *(a1 + 8);
  if (*a2)
  {
    v10 = 1;
    v6 = IPC::Encoder::operator<<<BOOL>(v3, &v10);
    IPC::ArgumentCoder<WebKit::FrameState,void>::encode(v6, *a2);
  }

  else
  {
    v9 = 0;
    IPC::Encoder::operator<<<BOOL>(v3, &v9);
  }

  v7 = *(a1 + 16);

  return IPC::Connection::sendMessageImpl(v7, v4, 0, 0);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy27BackForwardListContainsItemEN6WebKit12WebPageProxyES8_FvN7WebCore16ProcessQualifiedINS_23ObjectIdentifierGenericINS9_29BackForwardItemIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvbEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJbEED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F7158;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy27BackForwardListContainsItemEN6WebKit12WebPageProxyES8_FvN7WebCore16ProcessQualifiedINS_23ObjectIdentifierGenericINS9_29BackForwardItemIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvbEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJbEED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F7158;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy27BackForwardListContainsItemEN6WebKit12WebPageProxyES8_FvN7WebCore16ProcessQualifiedINS_23ObjectIdentifierGenericINS9_29BackForwardItemIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvbEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJbEE4callEb(uint64_t a1, char a2)
{
  v4 = a2;
  v2 = a1 + 8;
  IPC::Encoder::operator<<<BOOL>(*(a1 + 8), &v4);
  return IPC::Connection::sendMessageImpl(*(v2 + 8), v2, 0, 0);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy21BackForwardListCountsEN6WebKit12WebPageProxyES8_FvONS_17CompletionHandlerIFvONS7_24WebBackForwardListCountsEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSB_EED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F7180;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy21BackForwardListCountsEN6WebKit12WebPageProxyES8_FvONS_17CompletionHandlerIFvONS7_24WebBackForwardListCountsEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSB_EED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F7180;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy21BackForwardListCountsEN6WebKit12WebPageProxyES8_FvONS_17CompletionHandlerIFvONS7_24WebBackForwardListCountsEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSB_EE4callESB_(uint64_t a1, int *a2)
{
  v3 = (a1 + 8);
  v4 = *(a1 + 8);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v4, *a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v4, a2[1]);
  v5 = v3[1];

  return IPC::Connection::sendMessageImpl(v5, v3, 0, 0);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy33ShouldGoToBackForwardListItemSyncEN6WebKit12WebPageProxyES8_FvN7WebCore16ProcessQualifiedINS_23ObjectIdentifierGenericINS9_29BackForwardItemIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvNS9_21ShouldGoToHistoryItemEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSI_EED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F71A8;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy33ShouldGoToBackForwardListItemSyncEN6WebKit12WebPageProxyES8_FvN7WebCore16ProcessQualifiedINS_23ObjectIdentifierGenericINS9_29BackForwardItemIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvNS9_21ShouldGoToHistoryItemEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSI_EED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F71A8;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy33ShouldGoToBackForwardListItemSyncEN6WebKit12WebPageProxyES8_FvN7WebCore16ProcessQualifiedINS_23ObjectIdentifierGenericINS9_29BackForwardItemIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvNS9_21ShouldGoToHistoryItemEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSI_EE4callESI_(uint64_t a1, char a2)
{
  v2 = (a1 + 8);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(*(a1 + 8), a2);
  v3 = v2[1];

  return IPC::Connection::sendMessageImpl(v3, v2, 0, 0);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy11CanUndoRedoEN6WebKit12WebPageProxyES8_FvNS7_10UndoOrRedoEONS_17CompletionHandlerIFvbEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJbEED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F71D0;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy11CanUndoRedoEN6WebKit12WebPageProxyES8_FvNS7_10UndoOrRedoEONS_17CompletionHandlerIFvbEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJbEED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F71D0;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy11CanUndoRedoEN6WebKit12WebPageProxyES8_FvNS7_10UndoOrRedoEONS_17CompletionHandlerIFvbEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJbEE4callEb(uint64_t a1, char a2)
{
  v4 = a2;
  v2 = a1 + 8;
  IPC::Encoder::operator<<<BOOL>(*(a1 + 8), &v4);
  return IPC::Connection::sendMessageImpl(*(v2 + 8), v2, 0, 0);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy15ExecuteUndoRedoEN6WebKit12WebPageProxyES8_FvNS7_10UndoOrRedoEONS_17CompletionHandlerIFvvEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJEED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F71F8;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy15ExecuteUndoRedoEN6WebKit12WebPageProxyES8_FvNS7_10UndoOrRedoEONS_17CompletionHandlerIFvvEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJEED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F71F8;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy21RequestDOMPasteAccessEN6WebKit12WebPageProxyES8_FvRNS2_10ConnectionEN7WebCore22DOMPasteAccessCategoryENS_23ObjectIdentifierGenericINSB_19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEERKNSB_7IntRectERKNS_6StringEONS_17CompletionHandlerIFvNSB_22DOMPasteAccessResponseEEEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSP_EED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F7220;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy21RequestDOMPasteAccessEN6WebKit12WebPageProxyES8_FvRNS2_10ConnectionEN7WebCore22DOMPasteAccessCategoryENS_23ObjectIdentifierGenericINSB_19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEERKNSB_7IntRectERKNS_6StringEONS_17CompletionHandlerIFvNSB_22DOMPasteAccessResponseEEEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSP_EED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F7220;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy21RequestDOMPasteAccessEN6WebKit12WebPageProxyES8_FvRNS2_10ConnectionEN7WebCore22DOMPasteAccessCategoryENS_23ObjectIdentifierGenericINSB_19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEERKNSB_7IntRectERKNS_6StringEONS_17CompletionHandlerIFvNSB_22DOMPasteAccessResponseEEEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSP_EE4callESP_(uint64_t a1, char a2)
{
  v2 = (a1 + 8);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(*(a1 + 8), a2);
  v3 = v2[1];

  return IPC::Connection::sendMessageImpl(v3, v2, 0, 0);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy21ExceededDatabaseQuotaEN6WebKit12WebPageProxyES8_FvNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEERKNS_6StringESH_SH_yyyyONS_17CompletionHandlerIFvyEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJyEED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F7248;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy21ExceededDatabaseQuotaEN6WebKit12WebPageProxyES8_FvNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEERKNS_6StringESH_SH_yyyyONS_17CompletionHandlerIFvyEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJyEED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F7248;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy21ExceededDatabaseQuotaEN6WebKit12WebPageProxyES8_FvNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEERKNS_6StringESH_SH_yyyyONS_17CompletionHandlerIFvyEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJyEE4callEy(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 8);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(*(a1 + 8), a2);
  v3 = v2[1];

  return IPC::Connection::sendMessageImpl(v3, v2, 0, 0);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy20CheckTextOfParagraphEN6WebKit12WebPageProxyES8_FvRKNS_6StringENS_9OptionSetIN7WebCore16TextCheckingTypeEEEiONS_17CompletionHandlerIFvONS_6VectorINSD_18TextCheckingResultELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSM_EED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F7270;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy20CheckTextOfParagraphEN6WebKit12WebPageProxyES8_FvRKNS_6StringENS_9OptionSetIN7WebCore16TextCheckingTypeEEEiONS_17CompletionHandlerIFvONS_6VectorINSD_18TextCheckingResultELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSM_EED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F7270;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy20CheckTextOfParagraphEN6WebKit12WebPageProxyES8_FvRKNS_6StringENS_9OptionSetIN7WebCore16TextCheckingTypeEEEiONS_17CompletionHandlerIFvONS_6VectorINSD_18TextCheckingResultELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSM_EE4callESM_(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 8);
  v5 = *(a1 + 8);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v5, *(a2 + 12));
  v6 = *(a2 + 12);
  if (v6)
  {
    v7 = *a2;
    v8 = 48 * v6;
    do
    {
      IPC::ArgumentCoder<WebCore::TextCheckingResult,void>::encode(v5, v7);
      v7 += 48;
      v8 -= 48;
    }

    while (v8);
  }

  v9 = *(a1 + 16);

  return IPC::Connection::sendMessageImpl(v9, v4, 0, 0);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy21CheckSpellingOfStringEN6WebKit12WebPageProxyES8_FvRKNS_6StringEONS_17CompletionHandlerIFviiEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJiiEED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F7298;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy21CheckSpellingOfStringEN6WebKit12WebPageProxyES8_FvRKNS_6StringEONS_17CompletionHandlerIFviiEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJiiEED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F7298;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy21CheckSpellingOfStringEN6WebKit12WebPageProxyES8_FvRKNS_6StringEONS_17CompletionHandlerIFviiEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJiiEE4callEii(uint64_t a1, int a2, int a3)
{
  v4 = (a1 + 8);
  v5 = *(a1 + 8);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v5, a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v5, a3);
  v6 = v4[1];

  return IPC::Connection::sendMessageImpl(v6, v4, 0, 0);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy20CheckGrammarOfStringEN6WebKit12WebPageProxyES8_FvRKNS_6StringEONS_17CompletionHandlerIFvONS_6VectorIN7WebCore13GrammarDetailELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEiiEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSJ_iiEED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F72C0;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy20CheckGrammarOfStringEN6WebKit12WebPageProxyES8_FvRKNS_6StringEONS_17CompletionHandlerIFvONS_6VectorIN7WebCore13GrammarDetailELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEiiEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSJ_iiEED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F72C0;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy20CheckGrammarOfStringEN6WebKit12WebPageProxyES8_FvRKNS_6StringEONS_17CompletionHandlerIFvONS_6VectorIN7WebCore13GrammarDetailELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEiiEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSJ_iiEE4callESJ_ii(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v8 = (a1 + 8);
  v9 = *(a1 + 8);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v9, *(a2 + 12));
  v10 = *(a2 + 12);
  if (v10)
  {
    v11 = *a2;
    v12 = 40 * v10;
    do
    {
      IPC::ArgumentCoder<WebCore::GrammarDetail,void>::encode(v9, v11);
      v11 += 5;
      v12 -= 40;
    }

    while (v12);
  }

  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v9, a3);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v9, a4);
  v13 = *(a1 + 16);

  return IPC::Connection::sendMessageImpl(v13, v8, 0, 0);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy19SpellingUIIsShowingEN6WebKit12WebPageProxyES8_FvONS_17CompletionHandlerIFvbEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJbEED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F72E8;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy19SpellingUIIsShowingEN6WebKit12WebPageProxyES8_FvONS_17CompletionHandlerIFvbEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJbEED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F72E8;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy19SpellingUIIsShowingEN6WebKit12WebPageProxyES8_FvONS_17CompletionHandlerIFvbEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJbEE4callEb(uint64_t a1, char a2)
{
  v4 = a2;
  v2 = a1 + 8;
  IPC::Encoder::operator<<<BOOL>(*(a1 + 8), &v4);
  return IPC::Connection::sendMessageImpl(*(v2 + 8), v2, 0, 0);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy17GetGuessesForWordEN6WebKit12WebPageProxyES8_FvRKNS_6StringESB_iONS_17CompletionHandlerIFvONS_6VectorIS9_Lm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSH_EED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F7310;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy17GetGuessesForWordEN6WebKit12WebPageProxyES8_FvRKNS_6StringESB_iONS_17CompletionHandlerIFvONS_6VectorIS9_Lm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSH_EED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F7310;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy17GetGuessesForWordEN6WebKit12WebPageProxyES8_FvRKNS_6StringESB_iONS_17CompletionHandlerIFvONS_6VectorIS9_Lm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSH_EE4callESH_(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 8);
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(*(a1 + 8), a2);
  v3 = v2[1];

  return IPC::Connection::sendMessageImpl(v3, v2, 0, 0);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy29ExecuteSavedCommandBySelectorEN6WebKit12WebPageProxyES8_FvRNS2_10ConnectionERKNS_6StringEONS_17CompletionHandlerIFvbEEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJbEED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F7338;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy29ExecuteSavedCommandBySelectorEN6WebKit12WebPageProxyES8_FvRNS2_10ConnectionERKNS_6StringEONS_17CompletionHandlerIFvbEEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJbEED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F7338;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy29ExecuteSavedCommandBySelectorEN6WebKit12WebPageProxyES8_FvRNS2_10ConnectionERKNS_6StringEONS_17CompletionHandlerIFvbEEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJbEE4callEb(uint64_t a1, char a2)
{
  v4 = a2;
  v2 = a1 + 8;
  IPC::Encoder::operator<<<BOOL>(*(a1 + 8), &v4);
  return IPC::Connection::sendMessageImpl(*(v2 + 8), v2, 0, 0);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy13GetIsSpeakingEN6WebKit12WebPageProxyES8_FvONS_17CompletionHandlerIFvbEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJbEED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F7360;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy13GetIsSpeakingEN6WebKit12WebPageProxyES8_FvONS_17CompletionHandlerIFvbEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJbEED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F7360;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy13GetIsSpeakingEN6WebKit12WebPageProxyES8_FvONS_17CompletionHandlerIFvbEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJbEE4callEb(uint64_t a1, char a2)
{
  v4 = a2;
  v2 = a1 + 8;
  IPC::Encoder::operator<<<BOOL>(*(a1 + 8), &v4);
  return IPC::Connection::sendMessageImpl(*(v2 + 8), v2, 0, 0);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy21DictationAlternativesEN6WebKit12WebPageProxyES8_FvNS_23ObjectIdentifierGenericIN7WebCore20DictationContextTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_17CompletionHandlerIFvONS_6VectorINS_6StringELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSL_EED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F7388;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy21DictationAlternativesEN6WebKit12WebPageProxyES8_FvNS_23ObjectIdentifierGenericIN7WebCore20DictationContextTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_17CompletionHandlerIFvONS_6VectorINS_6StringELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSL_EED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F7388;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy21DictationAlternativesEN6WebKit12WebPageProxyES8_FvNS_23ObjectIdentifierGenericIN7WebCore20DictationContextTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_17CompletionHandlerIFvONS_6VectorINS_6StringELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSL_EE4callESL_(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 8);
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(*(a1 + 8), a2);
  v3 = v2[1];

  return IPC::Connection::sendMessageImpl(v3, v2, 0, 0);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy18LoadRecentSearchesEN6WebKit12WebPageProxyES8_FvRNS2_10ConnectionERKNS_6StringEONS_17CompletionHandlerIFvONS_6VectorIN7WebCore12RecentSearchELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSL_EED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F73B0;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy18LoadRecentSearchesEN6WebKit12WebPageProxyES8_FvRNS2_10ConnectionERKNS_6StringEONS_17CompletionHandlerIFvONS_6VectorIN7WebCore12RecentSearchELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSL_EED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F73B0;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy18LoadRecentSearchesEN6WebKit12WebPageProxyES8_FvRNS2_10ConnectionERKNS_6StringEONS_17CompletionHandlerIFvONS_6VectorIN7WebCore12RecentSearchELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSL_EE4callESL_(uint64_t a1, uint64_t *a2)
{
  v4 = (a1 + 8);
  v5 = *(a1 + 8);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v5, *(a2 + 3));
  v6 = *(a2 + 3);
  if (v6)
  {
    v7 = *a2;
    v8 = v7 + 16 * v6;
    do
    {
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v5, v7);
      IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(v5, *(v7 + 8));
      v7 += 16;
    }

    while (v7 != v8);
  }

  v9 = *(a1 + 16);

  return IPC::Connection::sendMessageImpl(v9, v4, 0, 0);
}

void IPC::Decoder::decode<std::tuple<WebCore::CryptoKeyData>>(uint64_t a1, IPC::Decoder *a2)
{
  IPC::ArgumentCoder<WebCore::CryptoKeyData,void>::decode(a2, &v14);
  if ((v25 & 1) == 0)
  {
    v7 = *a2;
    v8 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v9 = *(a2 + 3);
    v10 = !v9 || v8 == 0;
    if (v10 || ((*(*v9 + 16))(v9, v7), (v25 & 1) == 0))
    {
      *a1 = 0;
      *(a1 + 272) = 0;
      goto LABEL_14;
    }
  }

  *a1 = v14;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  if (v17 == 1)
  {
    *(a1 + 8) = v15;
    v5 = v16;
    v15 = 0;
    v16 = 0;
    *(a1 + 16) = v5;
    *(a1 + 24) = 1;
  }

  *(a1 + 32) = 0;
  *(a1 + 216) = 0;
  if (v19 == 1)
  {
    WebCore::JsonWebKey::JsonWebKey(a1 + 32, v18);
    *(a1 + 216) = 1;
  }

  *(a1 + 224) = v20;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  if (v22 == 1)
  {
    *(a1 + 232) = v21;
    *(a1 + 240) = 1;
    *(a1 + 248) = v23;
    *(a1 + 264) = v24;
    *(a1 + 272) = 1;
    if ((v25 & 1) == 0)
    {
      goto LABEL_14;
    }

    v21 = 0;
  }

  else
  {
    *(a1 + 248) = v23;
    *(a1 + 264) = v24;
    *(a1 + 272) = 1;
    if ((v25 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  if (v19 == 1)
  {
    WebCore::JsonWebKey::~JsonWebKey(v18, v4);
  }

  if (v17 == 1)
  {
    v6 = v15;
    if (v15)
    {
      v15 = 0;
      LODWORD(v16) = 0;
      WTF::fastFree(v6, v4);
    }
  }

LABEL_14:
  if ((*(a1 + 272) & 1) == 0)
  {
    v11 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v12 = *(a2 + 3);
    if (v12)
    {
      if (v11)
      {
        v13 = *(*v12 + 16);

        v13();
      }
    }
  }
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy25SerializeAndWrapCryptoKeyEN6WebKit12WebPageProxyES8_FvRNS2_10ConnectionEON7WebCore13CryptoKeyDataEONS_17CompletionHandlerIFvONSt3__18optionalINS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSM_EED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F73D8;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy25SerializeAndWrapCryptoKeyEN6WebKit12WebPageProxyES8_FvRNS2_10ConnectionEON7WebCore13CryptoKeyDataEONS_17CompletionHandlerIFvONSt3__18optionalINS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSM_EED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F73D8;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy25SerializeAndWrapCryptoKeyEN6WebKit12WebPageProxyES8_FvRNS2_10ConnectionEON7WebCore13CryptoKeyDataEONS_17CompletionHandlerIFvONSt3__18optionalINS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSM_EE4callESM_(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 8);
  IPC::ArgumentCoder<std::optional<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::Encoder,std::optional<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(*(a1 + 8), a2);
  v3 = v2[1];

  return IPC::Connection::sendMessageImpl(v3, v2, 0, 0);
}

uint64_t IPC::Decoder::decode<std::tuple<WebCore::WrappedCryptoKey>>(uint64_t a1, IPC::Decoder *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = *MEMORY[0x1E69E9840];
  result = IPC::ArgumentCoder<WebCore::WrappedCryptoKey,void>::decode(a2, a4, a5, a6, a7, a8, &v15);
  if (v20)
  {
    goto LABEL_2;
  }

  v12 = *a2;
  v13 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result)
  {
    if (v13)
    {
      result = (*(*result + 16))(result, v12);
      if (v20)
      {
LABEL_2:
        *a1 = v15;
        v11 = v17;
        *(a1 + 16) = v16;
        *(a1 + 24) = v11;
        *(a1 + 32) = v18;
        *(a1 + 40) = v19;
        *(a1 + 56) = 1;
        return result;
      }

      v13 = *(a2 + 1);
      result = *(a2 + 3);
    }
  }

  else
  {
    v13 = 0;
  }

  *a1 = 0;
  *(a1 + 56) = 0;
  *a2 = 0;
  *(a2 + 1) = 0;
  if (result && v13)
  {
    v14 = *(*result + 16);

    return v14();
  }

  return result;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy15UnwrapCryptoKeyEN6WebKit12WebPageProxyES8_FvON7WebCore16WrappedCryptoKeyEONS_17CompletionHandlerIFvONSt3__18optionalINS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSK_EED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F7400;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy15UnwrapCryptoKeyEN6WebKit12WebPageProxyES8_FvON7WebCore16WrappedCryptoKeyEONS_17CompletionHandlerIFvONSt3__18optionalINS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSK_EED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F7400;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy15UnwrapCryptoKeyEN6WebKit12WebPageProxyES8_FvON7WebCore16WrappedCryptoKeyEONS_17CompletionHandlerIFvONSt3__18optionalINS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSK_EE4callESK_(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 8);
  IPC::ArgumentCoder<std::optional<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::Encoder,std::optional<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(*(a1 + 8), a2);
  v3 = v2[1];

  return IPC::Connection::sendMessageImpl(v3, v2, 0, 0);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy24HandleSynchronousMessageEN6WebKit12WebPageProxyES8_FvRNS2_10ConnectionERKNS_6StringERKNS7_8UserDataEONS_17CompletionHandlerIFvOSE_EEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSI_EED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F7428;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy24HandleSynchronousMessageEN6WebKit12WebPageProxyES8_FvRNS2_10ConnectionERKNS_6StringERKNS7_8UserDataEONS_17CompletionHandlerIFvOSE_EEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSI_EED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F7428;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy24HandleSynchronousMessageEN6WebKit12WebPageProxyES8_FvRNS2_10ConnectionERKNS_6StringERKNS7_8UserDataEONS_17CompletionHandlerIFvOSE_EEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSI_EE4callESI_(uint64_t a1, uint64_t *a2)
{
  v2 = (a1 + 8);
  IPC::ArgumentCoder<WebKit::UserData,void>::encode(*(a1 + 8), a2);
  v3 = v2[1];

  return IPC::Connection::sendMessageImpl(v3, v2, 0, 0);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy28LoadSynchronousURLSchemeTaskEN6WebKit12WebPageProxyES8_FvRNS2_10ConnectionEONS7_23URLSchemeTaskParametersEONS_17CompletionHandlerIFvRKN7WebCore16ResourceResponseERKNSE_13ResourceErrorEONS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSH_SK_SP_EED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F7450;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy28LoadSynchronousURLSchemeTaskEN6WebKit12WebPageProxyES8_FvRNS2_10ConnectionEONS7_23URLSchemeTaskParametersEONS_17CompletionHandlerIFvRKN7WebCore16ResourceResponseERKNSE_13ResourceErrorEONS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSH_SK_SP_EED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F7450;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy28LoadSynchronousURLSchemeTaskEN6WebKit12WebPageProxyES8_FvRNS2_10ConnectionEONS7_23URLSchemeTaskParametersEONS_17CompletionHandlerIFvRKN7WebCore16ResourceResponseERKNSE_13ResourceErrorEONS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSH_SK_SP_EE4callESH_SK_SP_(uint64_t a1, WebCore::ResourceResponseBase *a2, WebCore::ResourceError *a3, uint64_t a4)
{
  v6 = (a1 + 8);
  v7 = *(a1 + 8);
  IPC::ArgumentCoder<WebCore::ResourceResponse,void>::encode(v7, a2);
  IPC::ArgumentCoder<WebCore::ResourceError,void>::encode(v7, a3);
  IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(v7, *a4, *(a4 + 12));
  v8 = v6[1];

  return IPC::Connection::sendMessageImpl(v8, v6, 0, 0);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy38SerializedAttachmentDataForIdentifiersEN6WebKit12WebPageProxyES8_FvRKNS_6VectorINS_6StringELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvONS9_IN7WebCore24SerializedAttachmentDataELm0ESB_Lm16ESC_EEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSK_EED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F7478;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy38SerializedAttachmentDataForIdentifiersEN6WebKit12WebPageProxyES8_FvRKNS_6VectorINS_6StringELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvONS9_IN7WebCore24SerializedAttachmentDataELm0ESB_Lm16ESC_EEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSK_EED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F7478;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy38SerializedAttachmentDataForIdentifiersEN6WebKit12WebPageProxyES8_FvRKNS_6VectorINS_6StringELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvONS9_IN7WebCore24SerializedAttachmentDataELm0ESB_Lm16ESC_EEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSK_EE4callESK_(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 8);
  v5 = *(a1 + 8);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v5, *(a2 + 12));
  v6 = *(a2 + 12);
  if (v6)
  {
    v7 = *a2;
    v8 = 24 * v6;
    do
    {
      IPC::ArgumentCoder<WebCore::SerializedAttachmentData,void>::encode(v5, v7);
      v7 += 3;
      v8 -= 24;
    }

    while (v8);
  }

  v9 = *(a1 + 16);

  return IPC::Connection::sendMessageImpl(v9, v4, 0, 0);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy24SpeechSynthesisVoiceListEN6WebKit12WebPageProxyES8_FvONS_17CompletionHandlerIFvONS_6VectorINS7_23WebSpeechSynthesisVoiceELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSF_EED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F74A0;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy24SpeechSynthesisVoiceListEN6WebKit12WebPageProxyES8_FvONS_17CompletionHandlerIFvONS_6VectorINS7_23WebSpeechSynthesisVoiceELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSF_EED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F74A0;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy24SpeechSynthesisVoiceListEN6WebKit12WebPageProxyES8_FvONS_17CompletionHandlerIFvONS_6VectorINS7_23WebSpeechSynthesisVoiceELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSF_EE4callESF_(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 8);
  v5 = *(a1 + 8);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v5, *(a2 + 12));
  v6 = *(a2 + 12);
  if (v6)
  {
    v7 = *a2;
    v8 = 32 * v6;
    do
    {
      IPC::ArgumentCoder<WebKit::WebSpeechSynthesisVoice,void>::encode(v5, v7);
      v7 += 32;
      v8 -= 32;
    }

    while (v8);
  }

  v9 = *(a1 + 16);

  return IPC::Connection::sendMessageImpl(v9, v4, 0, 0);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy26RenderTreeAsTextForTestingEN6WebKit12WebPageProxyES8_FvNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEyNS_9OptionSetINSA_16RenderAsTextFlagEEEONS_17CompletionHandlerIFvONS_6StringEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSK_EED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F74C8;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy26RenderTreeAsTextForTestingEN6WebKit12WebPageProxyES8_FvNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEyNS_9OptionSetINSA_16RenderAsTextFlagEEEONS_17CompletionHandlerIFvONS_6StringEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSK_EED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F74C8;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy26RenderTreeAsTextForTestingEN6WebKit12WebPageProxyES8_FvNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEyNS_9OptionSetINSA_16RenderAsTextFlagEEEONS_17CompletionHandlerIFvONS_6StringEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSK_EE4callESK_(uint64_t a1, uint64_t *a2)
{
  v2 = (a1 + 8);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(*(a1 + 8), a2);
  v3 = v2[1];

  return IPC::Connection::sendMessageImpl(v3, v2, 0, 0);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy19FrameTextForTestingEN6WebKit12WebPageProxyES8_FvNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_17CompletionHandlerIFvONS_6StringEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSH_EED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F74F0;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy19FrameTextForTestingEN6WebKit12WebPageProxyES8_FvNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_17CompletionHandlerIFvONS_6StringEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSH_EED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F74F0;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy19FrameTextForTestingEN6WebKit12WebPageProxyES8_FvNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_17CompletionHandlerIFvONS_6StringEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSH_EE4callESH_(uint64_t a1, uint64_t *a2)
{
  v2 = (a1 + 8);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(*(a1 + 8), a2);
  v3 = v2[1];

  return IPC::Connection::sendMessageImpl(v3, v2, 0, 0);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy25LayerTreeAsTextForTestingEN6WebKit12WebPageProxyES8_FvNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEyNS_9OptionSetINSA_22LayerTreeAsTextOptionsEEEONS_17CompletionHandlerIFvONS_6StringEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSK_EED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F7518;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy25LayerTreeAsTextForTestingEN6WebKit12WebPageProxyES8_FvNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEyNS_9OptionSetINSA_22LayerTreeAsTextOptionsEEEONS_17CompletionHandlerIFvONS_6StringEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSK_EED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F7518;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy25LayerTreeAsTextForTestingEN6WebKit12WebPageProxyES8_FvNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEyNS_9OptionSetINSA_22LayerTreeAsTextOptionsEEEONS_17CompletionHandlerIFvONS_6StringEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSK_EE4callESK_(uint64_t a1, uint64_t *a2)
{
  v2 = (a1 + 8);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(*(a1 + 8), a2);
  v3 = v2[1];

  return IPC::Connection::sendMessageImpl(v3, v2, 0, 0);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy29BindRemoteAccessibilityFramesEN6WebKit12WebPageProxyES8_FviNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvSI_iEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSI_iEED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F7540;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy29BindRemoteAccessibilityFramesEN6WebKit12WebPageProxyES8_FviNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvSI_iEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSI_iEED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F7540;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages12WebPageProxy29BindRemoteAccessibilityFramesEN6WebKit12WebPageProxyES8_FviNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvSI_iEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSI_iEE4callESI_i(uint64_t a1, uint64_t a2, int a3)
{
  v4 = (a1 + 8);
  v5 = *(a1 + 8);
  IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(v5, *a2, *(a2 + 12));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v5, a3);
  v6 = v4[1];

  return IPC::Connection::sendMessageImpl(v6, v4, 0, 0);
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages14WebPageTesting17IsLayerTreeFrozenENS2_10ConnectionEN6WebKit14WebPageTestingES9_FvONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED1Ev(void *a1)
{
  *a1 = &unk_1F10F7568;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages14WebPageTesting17IsLayerTreeFrozenENS2_10ConnectionEN6WebKit14WebPageTestingES9_FvONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F7568;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages14WebPageTesting17IsLayerTreeFrozenENS2_10ConnectionEN6WebKit14WebPageTestingES9_FvONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEE4callEb(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3745;
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

WTF::StringImpl *IPC::Decoder::decode<std::tuple<WTF::String,BOOL>>(_BYTE *a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<std::tuple<WTF::String,BOOL>,void>::decode<IPC::Decoder>(a2, a1);
  if ((a1[16] & 1) == 0)
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages14WebPageTesting24SetObscuredContentInsetsENS2_10ConnectionEN6WebKit14WebPageTestingES9_FvffffONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10F7590;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages14WebPageTesting24SetObscuredContentInsetsENS2_10ConnectionEN6WebKit14WebPageTestingES9_FvffffONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F7590;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages14WebPageTesting24SetObscuredContentInsetsENS2_10ConnectionEN6WebKit14WebPageTestingES9_FvffffONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3746;
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages14WebPageTesting32ClearCachedBackForwardListCountsENS2_10ConnectionEN6WebKit14WebPageTestingES9_FvONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10F75B8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages14WebPageTesting32ClearCachedBackForwardListCountsENS2_10ConnectionEN6WebKit14WebPageTestingES9_FvONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F75B8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages14WebPageTesting32ClearCachedBackForwardListCountsENS2_10ConnectionEN6WebKit14WebPageTestingES9_FvONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3743;
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages14WebPageTesting17SetTracksRepaintsENS2_10ConnectionEN6WebKit14WebPageTestingES9_FvbONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10F75E0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages14WebPageTesting17SetTracksRepaintsENS2_10ConnectionEN6WebKit14WebPageTestingES9_FvbONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F75E0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages14WebPageTesting17SetTracksRepaintsENS2_10ConnectionEN6WebKit14WebPageTestingES9_FvbONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3747;
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages14WebPageTesting23DisplayAndTrackRepaintsENS2_10ConnectionEN6WebKit14WebPageTestingES9_FvONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10F7608;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages14WebPageTesting23DisplayAndTrackRepaintsENS2_10ConnectionEN6WebKit14WebPageTestingES9_FvONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F7608;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages14WebPageTesting23DisplayAndTrackRepaintsENS2_10ConnectionEN6WebKit14WebPageTestingES9_FvONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3744;
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

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages14WebPageTesting23IsEditingCommandEnabledEN6WebKit14WebPageTestingES8_FvRKNS_6StringEONS_17CompletionHandlerIFvbEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJbEED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F7630;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages14WebPageTesting23IsEditingCommandEnabledEN6WebKit14WebPageTestingES8_FvRKNS_6StringEONS_17CompletionHandlerIFvbEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJbEED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F7630;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages14WebPageTesting23IsEditingCommandEnabledEN6WebKit14WebPageTestingES8_FvRKNS_6StringEONS_17CompletionHandlerIFvbEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJbEE4callEb(uint64_t a1, char a2)
{
  v4 = a2;
  v2 = a1 + 8;
  IPC::Encoder::operator<<<BOOL>(*(a1 + 8), &v4);
  return IPC::Connection::sendMessageImpl(*(v2 + 8), v2, 0, 0);
}

void IPC::Decoder::decode<std::tuple<WebCore::PasteboardURL,WTF::String,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(uint64_t a1, IPC::Decoder *a2)
{
  IPC::ArgumentCoder<WebCore::PasteboardURL,void>::decode(a2, v22);
  if ((v24 & 1) == 0)
  {
    goto LABEL_23;
  }

  while (1)
  {
    IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a2, &v25);
    if ((v26 & 1) == 0)
    {
      v4 = *a2;
      v20 = *(a2 + 1);
      *a2 = 0;
      *(a2 + 1) = 0;
      v21 = *(a2 + 3);
      if (!v21 || !v20 || ((*(*v21 + 16))(v21, v4), (v26 & 1) == 0))
      {
        *a1 = 0;
        *(a1 + 72) = 0;
        goto LABEL_11;
      }
    }

    IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(a2, &v27);
    if ((v28 & 1) == 0)
    {
      v4 = *a2;
      v11 = *(a2 + 1);
      *a2 = 0;
      *(a2 + 1) = 0;
      v12 = *(a2 + 3);
      if (!v12)
      {
        break;
      }

      if (!v11)
      {
        break;
      }

      (*(*v12 + 16))(v12, v4);
      if ((v28 & 1) == 0)
      {
        break;
      }
    }

    if (v24 & 1) != 0 && (v26)
    {
      WTF::URL::URL(a1, v22);
      v5 = v23;
      v23 = 0;
      v6 = v25;
      v25 = 0;
      *(a1 + 40) = v5;
      *(a1 + 48) = v6;
      *(a1 + 56) = v27;
      v7 = 1;
      goto LABEL_7;
    }

    __break(1u);
LABEL_23:
    v13 = *a2;
    v14 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v15 = *(a2 + 3);
    if (v15)
    {
      v16 = v14 == 0;
    }

    else
    {
      v16 = 1;
    }

    if (!v16)
    {
      (*(*v15 + 16))(v15, v13);
      if (v24)
      {
        continue;
      }
    }

    *a1 = 0;
    *(a1 + 72) = 0;
    goto LABEL_18;
  }

  v7 = 0;
  *a1 = 0;
LABEL_7:
  *(a1 + 72) = v7;
  if (v26)
  {
    v8 = v25;
    v25 = 0;
    if (v8)
    {
      if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v4);
      }
    }
  }

LABEL_11:
  if (v24)
  {
    v9 = v23;
    v23 = 0;
    if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, v4);
    }

    v10 = v22[0];
    v22[0] = 0;
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v4);
    }
  }

LABEL_18:
  if ((*(a1 + 72) & 1) == 0)
  {
    v17 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v18 = *(a2 + 3);
    if (v18)
    {
      if (v17)
      {
        v19 = *(*v18 + 16);

        v19();
      }
    }
  }
}

WTF::StringImpl *IPC::Decoder::decode<std::tuple<WTF::String,WTF::String,WTF::String,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(uint64_t a1, IPC::Decoder *a2)
{
  IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a2, &v19);
  if (v20 & 1) != 0 || ((v13 = *a2, v14 = *(a2 + 1), *a2 = 0, *(a2 + 1) = 0, (v15 = *(a2 + 3)) != 0) ? (v16 = v14 == 0) : (v16 = 1), !v16 && ((*(*v15 + 16))(v15, v13), (v20)))
  {
    IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a2, &v21);
    if (v22 & 1) != 0 || (v5 = *a2, v17 = *(a2 + 1), *a2 = 0, *(a2 + 1) = 0, (result = *(a2 + 3)) != 0) && v17 && (result = (*(*result + 16))(result, v5), (v22))
    {
      IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a2, &v23);
      if (v24 & 1) != 0 || (v5 = *a2, v18 = *(a2 + 1), *a2 = 0, *(a2 + 1) = 0, (result = *(a2 + 3)) != 0) && v18 && (result = (*(*result + 16))(result, v5), (v24))
      {
        result = IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(a2, &v25);
        if (v26)
        {
          while ((v20 & 1) == 0 || (v22 & 1) == 0 || (v24 & 1) == 0)
          {
            __break(1u);
LABEL_31:
            if (v6)
            {
              result = (*(*result + 16))(result, v5);
              if (v26)
              {
                continue;
              }
            }

            goto LABEL_25;
          }

          v7 = v19;
          v19 = 0;
          v8 = v21;
          v21 = 0;
          *a1 = v7;
          *(a1 + 8) = v8;
          *(a1 + 16) = v23;
          *(a1 + 24) = v25;
          v9 = 1;
          *(a1 + 40) = 1;
        }

        else
        {
          v5 = *a2;
          v6 = *(a2 + 1);
          *a2 = 0;
          *(a2 + 1) = 0;
          result = *(a2 + 3);
          if (result)
          {
            goto LABEL_31;
          }

LABEL_25:
          *a1 = 0;
          v12 = v24;
          *(a1 + 40) = 0;
          if (v12)
          {
            result = v23;
            v23 = 0;
            if (result)
            {
              if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                result = WTF::StringImpl::destroy(result, v5);
              }
            }
          }

          v9 = 0;
        }
      }

      else
      {
        v9 = 0;
        *a1 = 0;
        *(a1 + 40) = 0;
      }

      if (v22)
      {
        result = v21;
        v21 = 0;
        if (result)
        {
          if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            result = WTF::StringImpl::destroy(result, v5);
          }
        }
      }
    }

    else
    {
      v9 = 0;
      *a1 = 0;
      *(a1 + 40) = 0;
    }

    if ((v20 & 1) != 0 && (result = v19, v19 = 0, result) && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v5);
      if (v9)
      {
        return result;
      }
    }

    else if (v9)
    {
      return result;
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 40) = 0;
  }

  v10 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result && v10)
  {
    v11 = *(*result + 16);

    return v11();
  }

  return result;
}

void IPC::Decoder::decode<WebCore::PasteboardCustomData>(_BYTE *a1, IPC::Decoder *a2)
{
  IPC::ArgumentCoder<WebCore::PasteboardCustomData,void>::decode(a2, a1);
  if ((a1[24] & 1) == 0)
  {
    v4 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v5 = *(a2 + 3);
    if (v5 && v4 != 0)
    {
      v7 = *(*v5 + 16);

      v7();
    }
  }
}

uint64_t WTF::Vector<WebCore::PasteboardCustomData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::PasteboardCustomData>(uint64_t a1, unint64_t a2)
{
  WTF::Vector<WebCore::PasteboardCustomData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  result = WebCore::PasteboardCustomData::PasteboardCustomData();
  ++*(a1 + 12);
  return result;
}

unint64_t WTF::Vector<WebCore::PasteboardCustomData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 24 * *(a1 + 12) <= a3)
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

    WTF::Vector<WebCore::PasteboardCustomData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebCore::PasteboardCustomData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

void WTF::Vector<WebCore::PasteboardCustomData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    if (a2 >= 0xAAAAAAB)
    {
      __break(0xC471u);
      JUMPOUT(0x19DAD68C8);
    }

    v3 = *a1;
    v4 = (*a1 + 24 * *(a1 + 12));
    v5 = 24 * a2;
    v6 = WTF::fastMalloc((24 * a2));
    *(a1 + 8) = v5 / 0x18;
    *a1 = v6;
    WTF::VectorMover<false,WebCore::PasteboardCustomData>::move(v3, v4, v6);
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
}

void WTF::VectorMover<false,WebCore::PasteboardCustomData>::move(WebCore::PasteboardCustomData *a1, WebCore::PasteboardCustomData *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      WebCore::PasteboardCustomData::PasteboardCustomData();
      WebCore::PasteboardCustomData::~PasteboardCustomData(v5);
      a3 += 24;
      v5 = (v5 + 24);
    }

    while (v5 != a2);
  }
}

uint64_t WTF::Vector<WebCore::PasteboardCustomData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = *a1;
    v5 = 24 * v3;
    do
    {
      WebCore::PasteboardCustomData::~PasteboardCustomData(v4);
      v4 = (v6 + 24);
      v5 -= 24;
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

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages18WebPasteboardProxy15WriteCustomDataEN6WebKit18WebPasteboardProxyES8_FvRNS2_10ConnectionERKNS_6VectorIN7WebCore20PasteboardCustomDataELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEERKNS_6StringENSt3__18optionalINS_23ObjectIdentifierGenericINS7_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvxEEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJxEED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F7658;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages18WebPasteboardProxy15WriteCustomDataEN6WebKit18WebPasteboardProxyES8_FvRNS2_10ConnectionERKNS_6VectorIN7WebCore20PasteboardCustomDataELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEERKNS_6StringENSt3__18optionalINS_23ObjectIdentifierGenericINS7_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvxEEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJxEED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F7658;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages18WebPasteboardProxy15WriteCustomDataEN6WebKit18WebPasteboardProxyES8_FvRNS2_10ConnectionERKNS_6VectorIN7WebCore20PasteboardCustomDataELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEERKNS_6StringENSt3__18optionalINS_23ObjectIdentifierGenericINS7_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvxEEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJxEE4callEx(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 8);
  v5 = IPC::Encoder::grow(*(a1 + 8), 8uLL, 8);
  if (v6 <= 7)
  {
    result = 1067;
    __break(0xC471u);
  }

  else
  {
    *v5 = a2;
    v7 = *(a1 + 16);

    return IPC::Connection::sendMessageImpl(v7, v4, 0, 0);
  }

  return result;
}

WTF::StringImpl *IPC::Decoder::decode<std::tuple<WTF::String,WTF::String,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(uint64_t a1, IPC::Decoder *a2)
{
  IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a2, &v18);
  if (v19 & 1) != 0 || ((v13 = *a2, v14 = *(a2 + 1), *a2 = 0, *(a2 + 1) = 0, (v15 = *(a2 + 3)) != 0) ? (v16 = v14 == 0) : (v16 = 1), !v16 && ((*(*v15 + 16))(v15, v13), (v19)))
  {
    IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a2, &v20);
    if (v21 & 1) != 0 || (v5 = *a2, v17 = *(a2 + 1), *a2 = 0, *(a2 + 1) = 0, (result = *(a2 + 3)) != 0) && v17 && (result = (*(*result + 16))(result, v5), (v21))
    {
      result = IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(a2, &v22);
      if (v23)
      {
        while ((v19 & 1) == 0 || (v21 & 1) == 0)
        {
          __break(1u);
LABEL_25:
          if (v6)
          {
            result = (*(*result + 16))(result, v5);
            if (v23)
            {
              continue;
            }
          }

          goto LABEL_19;
        }

        v7 = v18;
        v18 = 0;
        v8 = v20;
        *a1 = v7;
        *(a1 + 8) = v8;
        *(a1 + 16) = v22;
        v9 = 1;
        *(a1 + 32) = 1;
      }

      else
      {
        v5 = *a2;
        v6 = *(a2 + 1);
        *a2 = 0;
        *(a2 + 1) = 0;
        result = *(a2 + 3);
        if (result)
        {
          goto LABEL_25;
        }

LABEL_19:
        *a1 = 0;
        v12 = v21;
        *(a1 + 32) = 0;
        if (v12)
        {
          result = v20;
          v20 = 0;
          if (result)
          {
            if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              result = WTF::StringImpl::destroy(result, v5);
            }
          }
        }

        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
      *a1 = 0;
      *(a1 + 32) = 0;
    }

    if ((v19 & 1) != 0 && (result = v18, v18 = 0, result) && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v5);
      if (v9)
      {
        return result;
      }
    }

    else if (v9)
    {
      return result;
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 32) = 0;
  }

  v10 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result && v10)
  {
    v11 = *(*result + 16);

    return v11();
  }

  return result;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages18WebPasteboardProxy29TypesSafeForDOMToReadAndWriteEN6WebKit18WebPasteboardProxyES8_FvRNS2_10ConnectionERKNS_6StringESD_NSt3__18optionalINS_23ObjectIdentifierGenericINS7_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvONS_6VectorISB_Lm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSR_EED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F7680;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages18WebPasteboardProxy29TypesSafeForDOMToReadAndWriteEN6WebKit18WebPasteboardProxyES8_FvRNS2_10ConnectionERKNS_6StringESD_NSt3__18optionalINS_23ObjectIdentifierGenericINS7_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvONS_6VectorISB_Lm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSR_EED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F7680;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages18WebPasteboardProxy29TypesSafeForDOMToReadAndWriteEN6WebKit18WebPasteboardProxyES8_FvRNS2_10ConnectionERKNS_6StringESD_NSt3__18optionalINS_23ObjectIdentifierGenericINS7_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvONS_6VectorISB_Lm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSR_EE4callESR_(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 8);
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(*(a1 + 8), a2);
  v3 = v2[1];

  return IPC::Connection::sendMessageImpl(v3, v2, 0, 0);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages18WebPasteboardProxy21AllPasteboardItemInfoEN6WebKit18WebPasteboardProxyES8_FvRNS2_10ConnectionERKNS_6StringExNSt3__18optionalINS_23ObjectIdentifierGenericINS7_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvONSF_INS_6VectorIN7WebCore18PasteboardItemInfoELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSU_EED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F76A8;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages18WebPasteboardProxy21AllPasteboardItemInfoEN6WebKit18WebPasteboardProxyES8_FvRNS2_10ConnectionERKNS_6StringExNSt3__18optionalINS_23ObjectIdentifierGenericINS7_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvONSF_INS_6VectorIN7WebCore18PasteboardItemInfoELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSU_EED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F76A8;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages18WebPasteboardProxy21AllPasteboardItemInfoEN6WebKit18WebPasteboardProxyES8_FvRNS2_10ConnectionERKNS_6StringExNSt3__18optionalINS_23ObjectIdentifierGenericINS7_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvONSF_INS_6VectorIN7WebCore18PasteboardItemInfoELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSU_EE4callESU_(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 8);
  v4 = *(a1 + 8);
  if (*(a2 + 16))
  {
    v12 = 1;
    IPC::Encoder::operator<<<BOOL>(v4, &v12);
    if ((*(a2 + 16) & 1) == 0)
    {
      v11 = std::__throw_bad_optional_access[abi:sn200100]();
      return _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages18WebPasteboardProxy25InformationForItemAtIndexEN6WebKit18WebPasteboardProxyES8_FvRNS2_10ConnectionEyRKNS_6StringExNSt3__18optionalINS_23ObjectIdentifierGenericINS7_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvONSF_IN7WebCore18PasteboardItemInfoEEEEEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSQ_EED1Ev(v11);
    }

    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v4, *(a2 + 12));
    v6 = *(a2 + 12);
    if (v6)
    {
      v7 = *a2;
      v8 = 120 * v6;
      do
      {
        IPC::ArgumentCoder<WebCore::PasteboardItemInfo,void>::encode(v4, v7);
        v7 += 120;
        v8 -= 120;
      }

      while (v8);
    }
  }

  else
  {
    v13 = 0;
    IPC::Encoder::operator<<<BOOL>(v4, &v13);
  }

  v9 = *(a1 + 16);

  return IPC::Connection::sendMessageImpl(v9, v3, 0, 0);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages18WebPasteboardProxy25InformationForItemAtIndexEN6WebKit18WebPasteboardProxyES8_FvRNS2_10ConnectionEyRKNS_6StringExNSt3__18optionalINS_23ObjectIdentifierGenericINS7_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvONSF_IN7WebCore18PasteboardItemInfoEEEEEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSQ_EED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F76D0;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages18WebPasteboardProxy25InformationForItemAtIndexEN6WebKit18WebPasteboardProxyES8_FvRNS2_10ConnectionEyRKNS_6StringExNSt3__18optionalINS_23ObjectIdentifierGenericINS7_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvONSF_IN7WebCore18PasteboardItemInfoEEEEEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSQ_EED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F76D0;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

IPC::Decoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages18WebPasteboardProxy25InformationForItemAtIndexEN6WebKit18WebPasteboardProxyES8_FvRNS2_10ConnectionEyRKNS_6StringExNSt3__18optionalINS_23ObjectIdentifierGenericINS7_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvONSF_IN7WebCore18PasteboardItemInfoEEEEEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSQ_EE4callESQ_(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 8);
  v4 = *(a1 + 8);
  if (*(a2 + 120))
  {
    v10 = 1;
    IPC::Encoder::operator<<<BOOL>(v4, &v10);
    if ((*(a2 + 120) & 1) == 0)
    {
      v8 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::Decoder::decode<std::tuple<WTF::String,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(v8, v9);
    }

    IPC::ArgumentCoder<WebCore::PasteboardItemInfo,void>::encode(v4, a2);
  }

  else
  {
    v11 = 0;
    IPC::Encoder::operator<<<BOOL>(v4, &v11);
  }

  v6 = *(a1 + 16);

  return IPC::Connection::sendMessageImpl(v6, v3, 0, 0);
}

IPC::Decoder *IPC::Decoder::decode<std::tuple<WTF::String,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(uint64_t a1, IPC::Decoder *a2)
{
  IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a2, &v15);
  if ((v16 & 1) == 0)
  {
    v11 = *a2;
    v12 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v13 = *(a2 + 3);
    v14 = !v13 || v12 == 0;
    if (v14 || ((*(*v13 + 16))(v13, v11), (v16 & 1) == 0))
    {
      *a1 = 0;
      *(a1 + 24) = 0;
LABEL_11:
      v9 = *(a2 + 1);
      *a2 = 0;
      *(a2 + 1) = 0;
      result = *(a2 + 3);
      if (result && v9)
      {
        v10 = *(*result + 16);

        return v10();
      }

      return result;
    }
  }

  result = IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(a2, &v17);
  if ((v18 & 1) == 0)
  {
    v5 = *a2;
    v6 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result)
    {
      goto LABEL_17;
    }

LABEL_7:
    *a1 = 0;
    v7 = v16;
    *(a1 + 24) = 0;
    if (v7)
    {
      v8 = v15;
      v15 = 0;
      if (v8)
      {
        if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v8, v5);
        }
      }
    }

    goto LABEL_11;
  }

  while ((v16 & 1) == 0)
  {
    __break(1u);
LABEL_17:
    if (v6)
    {
      result = (*(*result + 16))(result, v5);
      if (v18)
      {
        continue;
      }
    }

    goto LABEL_7;
  }

  *a1 = v15;
  *(a1 + 8) = v17;
  *(a1 + 24) = 1;
  return result;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages18WebPasteboardProxy23GetPasteboardItemsCountEN6WebKit18WebPasteboardProxyES8_FvRNS2_10ConnectionERKNS_6StringENSt3__18optionalINS_23ObjectIdentifierGenericINS7_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvyEEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJyEED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F76F8;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages18WebPasteboardProxy23GetPasteboardItemsCountEN6WebKit18WebPasteboardProxyES8_FvRNS2_10ConnectionERKNS_6StringENSt3__18optionalINS_23ObjectIdentifierGenericINS7_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvyEEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJyEED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F76F8;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages18WebPasteboardProxy23GetPasteboardItemsCountEN6WebKit18WebPasteboardProxyES8_FvRNS2_10ConnectionERKNS_6StringENSt3__18optionalINS_23ObjectIdentifierGenericINS7_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvyEEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJyEE4callEy(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 8);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(*(a1 + 8), a2);
  v3 = v2[1];

  return IPC::Connection::sendMessageImpl(v3, v2, 0, 0);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages18WebPasteboardProxy24ReadStringFromPasteboardEN6WebKit18WebPasteboardProxyES8_FvRNS2_10ConnectionEyRKNS_6StringESD_NSt3__18optionalINS_23ObjectIdentifierGenericINS7_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvOSB_EEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSN_EED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F7720;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages18WebPasteboardProxy24ReadStringFromPasteboardEN6WebKit18WebPasteboardProxyES8_FvRNS2_10ConnectionEyRKNS_6StringESD_NSt3__18optionalINS_23ObjectIdentifierGenericINS7_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvOSB_EEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSN_EED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F7720;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages18WebPasteboardProxy24ReadStringFromPasteboardEN6WebKit18WebPasteboardProxyES8_FvRNS2_10ConnectionEyRKNS_6StringESD_NSt3__18optionalINS_23ObjectIdentifierGenericINS7_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvOSB_EEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSN_EE4callESN_(uint64_t a1, uint64_t *a2)
{
  v2 = (a1 + 8);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(*(a1 + 8), a2);
  v3 = v2[1];

  return IPC::Connection::sendMessageImpl(v3, v2, 0, 0);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages18WebPasteboardProxy21ReadURLFromPasteboardEN6WebKit18WebPasteboardProxyES8_FvRNS2_10ConnectionEyRKNS_6StringENSt3__18optionalINS_23ObjectIdentifierGenericINS7_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvOSB_SN_EEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSN_SN_EED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F7748;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages18WebPasteboardProxy21ReadURLFromPasteboardEN6WebKit18WebPasteboardProxyES8_FvRNS2_10ConnectionEyRKNS_6StringENSt3__18optionalINS_23ObjectIdentifierGenericINS7_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvOSB_SN_EEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSN_SN_EED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F7748;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages18WebPasteboardProxy21ReadURLFromPasteboardEN6WebKit18WebPasteboardProxyES8_FvRNS2_10ConnectionEyRKNS_6StringENSt3__18optionalINS_23ObjectIdentifierGenericINS7_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvOSB_SN_EEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSN_SN_EE4callESN_SN_(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = (a1 + 8);
  v5 = *(a1 + 8);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v5, a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v5, a3);
  v6 = v4[1];

  return IPC::Connection::sendMessageImpl(v6, v4, 0, 0);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages18WebPasteboardProxy24ReadBufferFromPasteboardEN6WebKit18WebPasteboardProxyES8_FvRNS2_10ConnectionENSt3__18optionalIyEERKNS_6StringESG_NSC_INS_23ObjectIdentifierGenericINS7_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvONS_6RefPtrIN7WebCore12SharedBufferENS_12RawPtrTraitsISQ_EENS_21DefaultRefDerefTraitsISQ_EEEEEEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSW_EED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F7770;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages18WebPasteboardProxy24ReadBufferFromPasteboardEN6WebKit18WebPasteboardProxyES8_FvRNS2_10ConnectionENSt3__18optionalIyEERKNS_6StringESG_NSC_INS_23ObjectIdentifierGenericINS7_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvONS_6RefPtrIN7WebCore12SharedBufferENS_12RawPtrTraitsISQ_EENS_21DefaultRefDerefTraitsISQ_EEEEEEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSW_EED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F7770;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages18WebPasteboardProxy24ReadBufferFromPasteboardEN6WebKit18WebPasteboardProxyES8_FvRNS2_10ConnectionENSt3__18optionalIyEERKNS_6StringESG_NSC_INS_23ObjectIdentifierGenericINS7_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvONS_6RefPtrIN7WebCore12SharedBufferENS_12RawPtrTraitsISQ_EENS_21DefaultRefDerefTraitsISQ_EEEEEEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSW_EE4callESW_(uint64_t a1, atomic_uint **a2)
{
  v2 = (a1 + 8);
  IPC::ArgumentCoder<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,void>::encode<IPC::Encoder,WebCore::SharedBuffer>(*(a1 + 8), a2);
  v3 = v2[1];

  return IPC::Connection::sendMessageImpl(v3, v2, 0, 0);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages18WebPasteboardProxy37ContainsStringSafeForDOMToReadForTypeEN6WebKit18WebPasteboardProxyES8_FvRNS2_10ConnectionERKNS_6StringESD_NSt3__18optionalINS_23ObjectIdentifierGenericINS7_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvbEEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJbEED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F7798;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages18WebPasteboardProxy37ContainsStringSafeForDOMToReadForTypeEN6WebKit18WebPasteboardProxyES8_FvRNS2_10ConnectionERKNS_6StringESD_NSt3__18optionalINS_23ObjectIdentifierGenericINS7_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvbEEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJbEED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F7798;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages18WebPasteboardProxy37ContainsStringSafeForDOMToReadForTypeEN6WebKit18WebPasteboardProxyES8_FvRNS2_10ConnectionERKNS_6StringESD_NSt3__18optionalINS_23ObjectIdentifierGenericINS7_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvbEEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJbEE4callEb(uint64_t a1, char a2)
{
  v4 = a2;
  v2 = a1 + 8;
  IPC::Encoder::operator<<<BOOL>(*(a1 + 8), &v4);
  return IPC::Connection::sendMessageImpl(*(v2 + 8), v2, 0, 0);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages18WebPasteboardProxy16GetNumberOfFilesEN6WebKit18WebPasteboardProxyES8_FvRNS2_10ConnectionERKNS_6StringENSt3__18optionalINS_23ObjectIdentifierGenericINS7_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvyEEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJyEED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F77C0;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages18WebPasteboardProxy16GetNumberOfFilesEN6WebKit18WebPasteboardProxyES8_FvRNS2_10ConnectionERKNS_6StringENSt3__18optionalINS_23ObjectIdentifierGenericINS7_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvyEEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJyEED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F77C0;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages18WebPasteboardProxy16GetNumberOfFilesEN6WebKit18WebPasteboardProxyES8_FvRNS2_10ConnectionERKNS_6StringENSt3__18optionalINS_23ObjectIdentifierGenericINS7_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvyEEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJyEE4callEy(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 8);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(*(a1 + 8), a2);
  v3 = v2[1];

  return IPC::Connection::sendMessageImpl(v3, v2, 0, 0);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages18WebPasteboardProxy18GetPasteboardTypesEN6WebKit18WebPasteboardProxyES8_FvRNS2_10ConnectionERKNS_6StringENSt3__18optionalINS_23ObjectIdentifierGenericINS7_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvONS_6VectorISB_Lm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSR_EED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F77E8;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages18WebPasteboardProxy18GetPasteboardTypesEN6WebKit18WebPasteboardProxyES8_FvRNS2_10ConnectionERKNS_6StringENSt3__18optionalINS_23ObjectIdentifierGenericINS7_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvONS_6VectorISB_Lm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSR_EED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F77E8;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages18WebPasteboardProxy18GetPasteboardTypesEN6WebKit18WebPasteboardProxyES8_FvRNS2_10ConnectionERKNS_6StringENSt3__18optionalINS_23ObjectIdentifierGenericINS7_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvONS_6VectorISB_Lm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSR_EE4callESR_(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 8);
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(*(a1 + 8), a2);
  v3 = v2[1];

  return IPC::Connection::sendMessageImpl(v3, v2, 0, 0);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages18WebPasteboardProxy29GetPasteboardPathnamesForTypeEN6WebKit18WebPasteboardProxyES8_FvRNS2_10ConnectionERKNS_6StringESD_NSt3__18optionalINS_23ObjectIdentifierGenericINS7_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvONS_6VectorISB_Lm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONSN_INS7_22SandboxExtensionHandleELm0ESO_Lm16ESP_EEEEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSR_SU_EED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F7810;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages18WebPasteboardProxy29GetPasteboardPathnamesForTypeEN6WebKit18WebPasteboardProxyES8_FvRNS2_10ConnectionERKNS_6StringESD_NSt3__18optionalINS_23ObjectIdentifierGenericINS7_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvONS_6VectorISB_Lm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONSN_INS7_22SandboxExtensionHandleELm0ESO_Lm16ESP_EEEEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSR_SU_EED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F7810;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages18WebPasteboardProxy29GetPasteboardPathnamesForTypeEN6WebKit18WebPasteboardProxyES8_FvRNS2_10ConnectionERKNS_6StringESD_NSt3__18optionalINS_23ObjectIdentifierGenericINS7_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvONS_6VectorISB_Lm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONSN_INS7_22SandboxExtensionHandleELm0ESO_Lm16ESP_EEEEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSR_SU_EE4callESR_SU_(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (a1 + 8);
  v5 = *(a1 + 8);
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v5, a2);
  IPC::VectorArgumentCoder<false,WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v5, a3);
  v6 = v4[1];

  return IPC::Connection::sendMessageImpl(v6, v4, 0, 0);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages18WebPasteboardProxy26GetPasteboardStringForTypeEN6WebKit18WebPasteboardProxyES8_FvRNS2_10ConnectionERKNS_6StringESD_NSt3__18optionalINS_23ObjectIdentifierGenericINS7_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvOSB_EEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSN_EED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F7838;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages18WebPasteboardProxy26GetPasteboardStringForTypeEN6WebKit18WebPasteboardProxyES8_FvRNS2_10ConnectionERKNS_6StringESD_NSt3__18optionalINS_23ObjectIdentifierGenericINS7_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvOSB_EEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSN_EED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F7838;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages18WebPasteboardProxy26GetPasteboardStringForTypeEN6WebKit18WebPasteboardProxyES8_FvRNS2_10ConnectionERKNS_6StringESD_NSt3__18optionalINS_23ObjectIdentifierGenericINS7_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvOSB_EEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSN_EE4callESN_(uint64_t a1, uint64_t *a2)
{
  v2 = (a1 + 8);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(*(a1 + 8), a2);
  v3 = v2[1];

  return IPC::Connection::sendMessageImpl(v3, v2, 0, 0);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages18WebPasteboardProxy27GetPasteboardStringsForTypeEN6WebKit18WebPasteboardProxyES8_FvRNS2_10ConnectionERKNS_6StringESD_NSt3__18optionalINS_23ObjectIdentifierGenericINS7_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvONS_6VectorISB_Lm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSR_EED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F7860;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages18WebPasteboardProxy27GetPasteboardStringsForTypeEN6WebKit18WebPasteboardProxyES8_FvRNS2_10ConnectionERKNS_6StringESD_NSt3__18optionalINS_23ObjectIdentifierGenericINS7_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvONS_6VectorISB_Lm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSR_EED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F7860;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages18WebPasteboardProxy27GetPasteboardStringsForTypeEN6WebKit18WebPasteboardProxyES8_FvRNS2_10ConnectionERKNS_6StringESD_NSt3__18optionalINS_23ObjectIdentifierGenericINS7_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvONS_6VectorISB_Lm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSR_EE4callESR_(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 8);
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(*(a1 + 8), a2);
  v3 = v2[1];

  return IPC::Connection::sendMessageImpl(v3, v2, 0, 0);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages18WebPasteboardProxy26GetPasteboardBufferForTypeEN6WebKit18WebPasteboardProxyES8_FvRNS2_10ConnectionERKNS_6StringESD_NSt3__18optionalINS_23ObjectIdentifierGenericINS7_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvON7WebCore16PasteboardBufferEEEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSP_EED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F7888;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages18WebPasteboardProxy26GetPasteboardBufferForTypeEN6WebKit18WebPasteboardProxyES8_FvRNS2_10ConnectionERKNS_6StringESD_NSt3__18optionalINS_23ObjectIdentifierGenericINS7_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvON7WebCore16PasteboardBufferEEEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSP_EED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F7888;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages18WebPasteboardProxy26GetPasteboardBufferForTypeEN6WebKit18WebPasteboardProxyES8_FvRNS2_10ConnectionERKNS_6StringESD_NSt3__18optionalINS_23ObjectIdentifierGenericINS7_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvON7WebCore16PasteboardBufferEEEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSP_EE4callESP_(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 8);
  IPC::ArgumentCoder<WebCore::PasteboardBuffer,void>::encode(*(a1 + 8), a2);
  v3 = v2[1];

  return IPC::Connection::sendMessageImpl(v3, v2, 0, 0);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages18WebPasteboardProxy24GetPasteboardChangeCountEN6WebKit18WebPasteboardProxyES8_FvRNS2_10ConnectionERKNS_6StringENSt3__18optionalINS_23ObjectIdentifierGenericINS7_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvxEEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJxEED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F78B0;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages18WebPasteboardProxy24GetPasteboardChangeCountEN6WebKit18WebPasteboardProxyES8_FvRNS2_10ConnectionERKNS_6StringENSt3__18optionalINS_23ObjectIdentifierGenericINS7_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvxEEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJxEED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F78B0;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages18WebPasteboardProxy24GetPasteboardChangeCountEN6WebKit18WebPasteboardProxyES8_FvRNS2_10ConnectionERKNS_6StringENSt3__18optionalINS_23ObjectIdentifierGenericINS7_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvxEEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJxEE4callEx(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 8);
  v5 = IPC::Encoder::grow(*(a1 + 8), 8uLL, 8);
  if (v6 <= 7)
  {
    result = 1067;
    __break(0xC471u);
  }

  else
  {
    *v5 = a2;
    v7 = *(a1 + 16);

    return IPC::Connection::sendMessageImpl(v7, v4, 0, 0);
  }

  return result;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages18WebPasteboardProxy18GetPasteboardColorEN6WebKit18WebPasteboardProxyES8_FvRNS2_10ConnectionERKNS_6StringENSt3__18optionalINS_23ObjectIdentifierGenericINS7_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvON7WebCore5ColorEEEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSP_EED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F78D8;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages18WebPasteboardProxy18GetPasteboardColorEN6WebKit18WebPasteboardProxyES8_FvRNS2_10ConnectionERKNS_6StringENSt3__18optionalINS_23ObjectIdentifierGenericINS7_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvON7WebCore5ColorEEEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSP_EED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F78D8;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages18WebPasteboardProxy18GetPasteboardColorEN6WebKit18WebPasteboardProxyES8_FvRNS2_10ConnectionERKNS_6StringENSt3__18optionalINS_23ObjectIdentifierGenericINS7_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvON7WebCore5ColorEEEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSP_EE4callESP_(uint64_t a1, WebCore::Color *a2)
{
  v2 = (a1 + 8);
  IPC::ArgumentCoder<WebCore::Color,void>::encode(*(a1 + 8), a2);
  v3 = v2[1];

  return IPC::Connection::sendMessageImpl(v3, v2, 0, 0);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages18WebPasteboardProxy16GetPasteboardURLEN6WebKit18WebPasteboardProxyES8_FvRNS2_10ConnectionERKNS_6StringENSt3__18optionalINS_23ObjectIdentifierGenericINS7_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvSD_EEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSD_EED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F7900;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages18WebPasteboardProxy16GetPasteboardURLEN6WebKit18WebPasteboardProxyES8_FvRNS2_10ConnectionERKNS_6StringENSt3__18optionalINS_23ObjectIdentifierGenericINS7_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvSD_EEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSD_EED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F7900;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages18WebPasteboardProxy16GetPasteboardURLEN6WebKit18WebPasteboardProxyES8_FvRNS2_10ConnectionERKNS_6StringENSt3__18optionalINS_23ObjectIdentifierGenericINS7_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvSD_EEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSD_EE4callESD_(uint64_t a1, uint64_t *a2)
{
  v2 = (a1 + 8);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(*(a1 + 8), a2);
  v3 = v2[1];

  return IPC::Connection::sendMessageImpl(v3, v2, 0, 0);
}

WTF::StringImpl *IPC::Decoder::decode<std::tuple<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(uint64_t a1, IPC::Decoder *a2)
{
  IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a2, &v20);
  if ((v21 & 1) == 0)
  {
    v16 = *a2;
    v17 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v18 = *(a2 + 3);
    v19 = !v18 || v17 == 0;
    if (v19 || ((*(*v18 + 16))(v18, v16), (v21 & 1) == 0))
    {
      *a1 = 0;
      *(a1 + 40) = 0;
      goto LABEL_14;
    }
  }

  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a2, &v22);
  if ((v24 & 1) == 0)
  {
    goto LABEL_23;
  }

  do
  {
    IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(a2, &v25);
    if ((v26 & 1) == 0)
    {
      v4 = *a2;
      v13 = *(a2 + 1);
      *a2 = 0;
      *(a2 + 1) = 0;
      result = *(a2 + 3);
      if (!result || !v13 || (result = (*(*result + 16))(result, v4), (v26 & 1) == 0))
      {
        v8 = 0;
        v10 = 0;
        *a1 = 0;
        v14 = v24;
        *(a1 + 40) = 0;
        if ((v14 & 1) == 0)
        {
          goto LABEL_8;
        }

LABEL_7:
        result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v22, v4);
        v10 = v8;
        goto LABEL_8;
      }
    }

    if (v21 & 1) != 0 && (v24)
    {
      v5 = v20;
      v20 = 0;
      v6 = v22;
      *a1 = v5;
      *(a1 + 8) = v6;
      v7 = v23;
      v22 = 0;
      v23 = 0;
      *(a1 + 16) = v7;
      *(a1 + 24) = v25;
      v8 = 1;
      *(a1 + 40) = 1;
      goto LABEL_7;
    }

    __break(1u);
LABEL_23:
    v4 = *a2;
    v15 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (!result)
    {
      break;
    }

    if (!v15)
    {
      break;
    }

    result = (*(*result + 16))(result, v4);
  }

  while ((v24 & 1) != 0);
  v10 = 0;
  *a1 = 0;
  *(a1 + 40) = 0;
LABEL_8:
  if ((v21 & 1) != 0 && (result = v20, v20 = 0, result) && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v4);
    if ((v10 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v10)
    {
      return result;
    }

LABEL_14:
    v11 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result && v11)
    {
      v12 = *(*result + 16);

      return v12();
    }
  }

  return result;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages18WebPasteboardProxy18AddPasteboardTypesEN6WebKit18WebPasteboardProxyES8_FvRNS2_10ConnectionERKNS_6StringERKNS_6VectorISB_Lm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEENSt3__18optionalINS_23ObjectIdentifierGenericINS7_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvxEEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJxEED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F7928;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages18WebPasteboardProxy18AddPasteboardTypesEN6WebKit18WebPasteboardProxyES8_FvRNS2_10ConnectionERKNS_6StringERKNS_6VectorISB_Lm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEENSt3__18optionalINS_23ObjectIdentifierGenericINS7_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvxEEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJxEED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F7928;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages18WebPasteboardProxy18AddPasteboardTypesEN6WebKit18WebPasteboardProxyES8_FvRNS2_10ConnectionERKNS_6StringERKNS_6VectorISB_Lm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEENSt3__18optionalINS_23ObjectIdentifierGenericINS7_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvxEEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJxEE4callEx(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 8);
  v5 = IPC::Encoder::grow(*(a1 + 8), 8uLL, 8);
  if (v6 <= 7)
  {
    result = 1067;
    __break(0xC471u);
  }

  else
  {
    *v5 = a2;
    v7 = *(a1 + 16);

    return IPC::Connection::sendMessageImpl(v7, v4, 0, 0);
  }

  return result;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages18WebPasteboardProxy18SetPasteboardTypesEN6WebKit18WebPasteboardProxyES8_FvRNS2_10ConnectionERKNS_6StringERKNS_6VectorISB_Lm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEENSt3__18optionalINS_23ObjectIdentifierGenericINS7_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvxEEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJxEED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F7950;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages18WebPasteboardProxy18SetPasteboardTypesEN6WebKit18WebPasteboardProxyES8_FvRNS2_10ConnectionERKNS_6StringERKNS_6VectorISB_Lm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEENSt3__18optionalINS_23ObjectIdentifierGenericINS7_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvxEEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJxEED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F7950;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages18WebPasteboardProxy18SetPasteboardTypesEN6WebKit18WebPasteboardProxyES8_FvRNS2_10ConnectionERKNS_6StringERKNS_6VectorISB_Lm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEENSt3__18optionalINS_23ObjectIdentifierGenericINS7_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvxEEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJxEE4callEx(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 8);
  v5 = IPC::Encoder::grow(*(a1 + 8), 8uLL, 8);
  if (v6 <= 7)
  {
    result = 1067;
    __break(0xC471u);
  }

  else
  {
    *v5 = a2;
    v7 = *(a1 + 16);

    return IPC::Connection::sendMessageImpl(v7, v4, 0, 0);
  }

  return result;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages18WebPasteboardProxy16SetPasteboardURLEN6WebKit18WebPasteboardProxyES8_FvRNS2_10ConnectionERKN7WebCore13PasteboardURLERKNS_6StringENSt3__18optionalINS_23ObjectIdentifierGenericINS7_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvxEEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJxEED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F7978;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages18WebPasteboardProxy16SetPasteboardURLEN6WebKit18WebPasteboardProxyES8_FvRNS2_10ConnectionERKN7WebCore13PasteboardURLERKNS_6StringENSt3__18optionalINS_23ObjectIdentifierGenericINS7_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvxEEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJxEED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F7978;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages18WebPasteboardProxy16SetPasteboardURLEN6WebKit18WebPasteboardProxyES8_FvRNS2_10ConnectionERKN7WebCore13PasteboardURLERKNS_6StringENSt3__18optionalINS_23ObjectIdentifierGenericINS7_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvxEEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJxEE4callEx(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 8);
  v5 = IPC::Encoder::grow(*(a1 + 8), 8uLL, 8);
  if (v6 <= 7)
  {
    result = 1067;
    __break(0xC471u);
  }

  else
  {
    *v5 = a2;
    v7 = *(a1 + 16);

    return IPC::Connection::sendMessageImpl(v7, v4, 0, 0);
  }

  return result;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages18WebPasteboardProxy18SetPasteboardColorEN6WebKit18WebPasteboardProxyES8_FvRNS2_10ConnectionERKNS_6StringERKN7WebCore5ColorENSt3__18optionalINS_23ObjectIdentifierGenericINS7_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvxEEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJxEED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F79A0;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages18WebPasteboardProxy18SetPasteboardColorEN6WebKit18WebPasteboardProxyES8_FvRNS2_10ConnectionERKNS_6StringERKN7WebCore5ColorENSt3__18optionalINS_23ObjectIdentifierGenericINS7_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvxEEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJxEED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F79A0;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages18WebPasteboardProxy18SetPasteboardColorEN6WebKit18WebPasteboardProxyES8_FvRNS2_10ConnectionERKNS_6StringERKN7WebCore5ColorENSt3__18optionalINS_23ObjectIdentifierGenericINS7_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvxEEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJxEE4callEx(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 8);
  v5 = IPC::Encoder::grow(*(a1 + 8), 8uLL, 8);
  if (v6 <= 7)
  {
    result = 1067;
    __break(0xC471u);
  }

  else
  {
    *v5 = a2;
    v7 = *(a1 + 16);

    return IPC::Connection::sendMessageImpl(v7, v4, 0, 0);
  }

  return result;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages18WebPasteboardProxy26SetPasteboardStringForTypeEN6WebKit18WebPasteboardProxyES8_FvRNS2_10ConnectionERKNS_6StringESD_SD_NSt3__18optionalINS_23ObjectIdentifierGenericINS7_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvxEEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJxEED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F79C8;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages18WebPasteboardProxy26SetPasteboardStringForTypeEN6WebKit18WebPasteboardProxyES8_FvRNS2_10ConnectionERKNS_6StringESD_SD_NSt3__18optionalINS_23ObjectIdentifierGenericINS7_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvxEEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJxEED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F79C8;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages18WebPasteboardProxy26SetPasteboardStringForTypeEN6WebKit18WebPasteboardProxyES8_FvRNS2_10ConnectionERKNS_6StringESD_SD_NSt3__18optionalINS_23ObjectIdentifierGenericINS7_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvxEEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJxEE4callEx(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 8);
  v5 = IPC::Encoder::grow(*(a1 + 8), 8uLL, 8);
  if (v6 <= 7)
  {
    result = 1067;
    __break(0xC471u);
  }

  else
  {
    *v5 = a2;
    v7 = *(a1 + 16);

    return IPC::Connection::sendMessageImpl(v7, v4, 0, 0);
  }

  return result;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages18WebPasteboardProxy26SetPasteboardBufferForTypeEN6WebKit18WebPasteboardProxyES8_FvRNS2_10ConnectionERKNS_6StringESD_ONS_6RefPtrIN7WebCore12SharedBufferENS_12RawPtrTraitsISG_EENS_21DefaultRefDerefTraitsISG_EEEENSt3__18optionalINS_23ObjectIdentifierGenericINS7_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvxEEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJxEED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F79F0;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages18WebPasteboardProxy26SetPasteboardBufferForTypeEN6WebKit18WebPasteboardProxyES8_FvRNS2_10ConnectionERKNS_6StringESD_ONS_6RefPtrIN7WebCore12SharedBufferENS_12RawPtrTraitsISG_EENS_21DefaultRefDerefTraitsISG_EEEENSt3__18optionalINS_23ObjectIdentifierGenericINS7_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvxEEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJxEED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F79F0;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages18WebPasteboardProxy26SetPasteboardBufferForTypeEN6WebKit18WebPasteboardProxyES8_FvRNS2_10ConnectionERKNS_6StringESD_ONS_6RefPtrIN7WebCore12SharedBufferENS_12RawPtrTraitsISG_EENS_21DefaultRefDerefTraitsISG_EEEENSt3__18optionalINS_23ObjectIdentifierGenericINS7_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvxEEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJxEE4callEx(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 8);
  v5 = IPC::Encoder::grow(*(a1 + 8), 8uLL, 8);
  if (v6 <= 7)
  {
    result = 1067;
    __break(0xC471u);
  }

  else
  {
    *v5 = a2;
    v7 = *(a1 + 16);

    return IPC::Connection::sendMessageImpl(v7, v4, 0, 0);
  }

  return result;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages18WebPasteboardProxy35ContainsURLStringSuitableForLoadingEN6WebKit18WebPasteboardProxyES8_FvRNS2_10ConnectionERKNS_6StringENSt3__18optionalINS_23ObjectIdentifierGenericINS7_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvbEEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJbEED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F7A18;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages18WebPasteboardProxy35ContainsURLStringSuitableForLoadingEN6WebKit18WebPasteboardProxyES8_FvRNS2_10ConnectionERKNS_6StringENSt3__18optionalINS_23ObjectIdentifierGenericINS7_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvbEEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJbEED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F7A18;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages18WebPasteboardProxy35ContainsURLStringSuitableForLoadingEN6WebKit18WebPasteboardProxyES8_FvRNS2_10ConnectionERKNS_6StringENSt3__18optionalINS_23ObjectIdentifierGenericINS7_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvbEEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJbEE4callEb(uint64_t a1, char a2)
{
  v4 = a2;
  v2 = a1 + 8;
  IPC::Encoder::operator<<<BOOL>(*(a1 + 8), &v4);
  return IPC::Connection::sendMessageImpl(*(v2 + 8), v2, 0, 0);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages18WebPasteboardProxy27URLStringSuitableForLoadingEN6WebKit18WebPasteboardProxyES8_FvRNS2_10ConnectionERKNS_6StringENSt3__18optionalINS_23ObjectIdentifierGenericINS7_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvOSB_SN_EEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSN_SN_EED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F7A40;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages18WebPasteboardProxy27URLStringSuitableForLoadingEN6WebKit18WebPasteboardProxyES8_FvRNS2_10ConnectionERKNS_6StringENSt3__18optionalINS_23ObjectIdentifierGenericINS7_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvOSB_SN_EEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSN_SN_EED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F7A40;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages18WebPasteboardProxy27URLStringSuitableForLoadingEN6WebKit18WebPasteboardProxyES8_FvRNS2_10ConnectionERKNS_6StringENSt3__18optionalINS_23ObjectIdentifierGenericINS7_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvOSB_SN_EEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSN_SN_EE4callESN_SN_(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = (a1 + 8);
  v5 = *(a1 + 8);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v5, a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v5, a3);
  v6 = v4[1];

  return IPC::Connection::sendMessageImpl(v6, v4, 0, 0);
}

_DWORD *WTF::RefCounted<WebKit::WebPaymentCoordinator>::deref(_DWORD *result)
{
  if (*result == 1)
  {
    WebKit::WebPaymentCoordinator::~WebPaymentCoordinator((result - 2));

    return bmalloc::api::tzoneFree(v2, v3);
  }

  else
  {
    --*result;
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages26WebPaymentCoordinatorProxy29CanMakePaymentsWithActiveCardENS2_10ConnectionEN6WebKit26WebPaymentCoordinatorProxyES9_FvRKNS_6StringESC_ONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED1Ev(void *a1)
{
  *a1 = &unk_1F10F7A68;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages26WebPaymentCoordinatorProxy29CanMakePaymentsWithActiveCardENS2_10ConnectionEN6WebKit26WebPaymentCoordinatorProxyES9_FvRKNS_6StringESC_ONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F7A68;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages26WebPaymentCoordinatorProxy29CanMakePaymentsWithActiveCardENS2_10ConnectionEN6WebKit26WebPaymentCoordinatorProxyES9_FvRKNS_6StringESC_ONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEE4callEb(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3908;
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages26WebPaymentCoordinatorProxy16OpenPaymentSetupENS2_10ConnectionEN6WebKit26WebPaymentCoordinatorProxyES9_FvRKNS_6StringESC_ONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED1Ev(void *a1)
{
  *a1 = &unk_1F10F7A90;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages26WebPaymentCoordinatorProxy16OpenPaymentSetupENS2_10ConnectionEN6WebKit26WebPaymentCoordinatorProxyES9_FvRKNS_6StringESC_ONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F7A90;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages26WebPaymentCoordinatorProxy16OpenPaymentSetupENS2_10ConnectionEN6WebKit26WebPaymentCoordinatorProxyES9_FvRKNS_6StringESC_ONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEE4callEb(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3910;
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

uint64_t std::optional<WebCore::ApplePayShippingMethodUpdate>::optional[abi:sn200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 632) = 0;
  if (*(a2 + 632) == 1)
  {
    WebCore::ApplePayDetailsUpdateBase::ApplePayDetailsUpdateBase(a1, a2);
    *(a1 + 616) = 0u;
    WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1 + 616, (a2 + 616));
    *(a1 + 632) = 1;
  }

  return a1;
}

uint64_t std::optional<WebCore::ApplePayShippingContactUpdate>::optional[abi:sn200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 648) = 0;
  if (*(a2 + 648) == 1)
  {
    WebCore::ApplePayDetailsUpdateBase::ApplePayDetailsUpdateBase(a1, a2);
    *(a1 + 616) = 0u;
    WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1 + 616, (a2 + 616));
    *(a1 + 632) = 0u;
    WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1 + 632, (a2 + 632));
    *(a1 + 648) = 1;
  }

  return a1;
}

uint64_t std::optional<WebCore::ApplePayPaymentMethodUpdate>::optional[abi:sn200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 656) = 0;
  if (*(a2 + 656) == 1)
  {
    WebCore::ApplePayDetailsUpdateBase::ApplePayDetailsUpdateBase(a1, a2);
    *(a1 + 616) = 0u;
    WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1 + 616, (a2 + 616));
    *(a1 + 632) = 0u;
    WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1 + 632, (a2 + 632));
    v4 = *(a2 + 648);
    *(a2 + 648) = 0;
    *(a1 + 648) = v4;
    *(a1 + 656) = 1;
  }

  return a1;
}

WTF::StringImpl *IPC::Decoder::decode<WebKit::PaymentSetupConfiguration>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<WebKit::PaymentSetupConfiguration,void>::decode(a2, a1);
  if ((*(a1 + 80) & 1) == 0)
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

void *std::__tuple_leaf<0ul,WebKit::PaymentSetupConfiguration,false>::__tuple_leaf[abi:sn200100]<WebKit::PaymentSetupConfiguration,0>(void *a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  *a1 = v4;
  v5 = a2[1];
  a2[1] = 0;
  a1[1] = v5;
  v6 = a2[2];
  a2[2] = 0;
  a1[2] = v6;
  a1[4] = 0;
  a1[3] = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt((a1 + 3), a2 + 6);
  WTF::URL::URL((a1 + 5), a2 + 5);
  return a1;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages26WebPaymentCoordinatorProxy16GetSetupFeaturesENS2_10ConnectionEN6WebKit26WebPaymentCoordinatorProxyES9_FvRKNS8_25PaymentSetupConfigurationEONS_17CompletionHandlerIFvONS8_20PaymentSetupFeaturesEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSF_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F7AB8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages26WebPaymentCoordinatorProxy16GetSetupFeaturesENS2_10ConnectionEN6WebKit26WebPaymentCoordinatorProxyES9_FvRKNS8_25PaymentSetupConfigurationEONS_17CompletionHandlerIFvONS8_20PaymentSetupFeaturesEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSF_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F7AB8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages26WebPaymentCoordinatorProxy16GetSetupFeaturesENS2_10ConnectionEN6WebKit26WebPaymentCoordinatorProxyES9_FvRKNS8_25PaymentSetupConfigurationEONS_17CompletionHandlerIFvONS8_20PaymentSetupFeaturesEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSF_EE4callESF_(uint64_t a1, NSArray **a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3909;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::encodeObjectDirectly<NSArray>(v5, *a2);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages26WebPaymentCoordinatorProxy18BeginApplePaySetupENS2_10ConnectionEN6WebKit26WebPaymentCoordinatorProxyES9_FvRKNS8_25PaymentSetupConfigurationERKNS8_20PaymentSetupFeaturesEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED1Ev(void *a1)
{
  *a1 = &unk_1F10F7AE0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages26WebPaymentCoordinatorProxy18BeginApplePaySetupENS2_10ConnectionEN6WebKit26WebPaymentCoordinatorProxyES9_FvRKNS8_25PaymentSetupConfigurationERKNS8_20PaymentSetupFeaturesEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F7AE0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages26WebPaymentCoordinatorProxy18BeginApplePaySetupENS2_10ConnectionEN6WebKit26WebPaymentCoordinatorProxyES9_FvRKNS8_25PaymentSetupConfigurationERKNS8_20PaymentSetupFeaturesEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEE4callEb(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3907;
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

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages26WebPaymentCoordinatorProxy15CanMakePaymentsEN6WebKit26WebPaymentCoordinatorProxyES8_FvONS_17CompletionHandlerIFvbEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJbEED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F7B08;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages26WebPaymentCoordinatorProxy15CanMakePaymentsEN6WebKit26WebPaymentCoordinatorProxyES8_FvONS_17CompletionHandlerIFvbEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJbEED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F7B08;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages26WebPaymentCoordinatorProxy15CanMakePaymentsEN6WebKit26WebPaymentCoordinatorProxyES8_FvONS_17CompletionHandlerIFvbEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJbEE4callEb(uint64_t a1, char a2)
{
  v4 = a2;
  v2 = a1 + 8;
  IPC::Encoder::operator<<<BOOL>(*(a1 + 8), &v4);
  return IPC::Connection::sendMessageImpl(*(v2 + 8), v2, 0, 0);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages26WebPaymentCoordinatorProxy13ShowPaymentUIEN6WebKit26WebPaymentCoordinatorProxyES8_FvNS_23ObjectIdentifierGenericIN7WebCore18PageIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENS9_INS7_26WebPageProxyIdentifierTypeESD_yEERKNS_3URLERKNS_6VectorISH_Lm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEERKNSA_29ApplePaySessionPaymentRequestEONS_17CompletionHandlerIFvbEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJbEED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F7B30;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages26WebPaymentCoordinatorProxy13ShowPaymentUIEN6WebKit26WebPaymentCoordinatorProxyES8_FvNS_23ObjectIdentifierGenericIN7WebCore18PageIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENS9_INS7_26WebPageProxyIdentifierTypeESD_yEERKNS_3URLERKNS_6VectorISH_Lm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEERKNSA_29ApplePaySessionPaymentRequestEONS_17CompletionHandlerIFvbEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJbEED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F7B30;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages26WebPaymentCoordinatorProxy13ShowPaymentUIEN6WebKit26WebPaymentCoordinatorProxyES8_FvNS_23ObjectIdentifierGenericIN7WebCore18PageIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENS9_INS7_26WebPageProxyIdentifierTypeESD_yEERKNS_3URLERKNS_6VectorISH_Lm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEERKNSA_29ApplePaySessionPaymentRequestEONS_17CompletionHandlerIFvbEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJbEE4callEb(uint64_t a1, char a2)
{
  v4 = a2;
  v2 = a1 + 8;
  IPC::Encoder::operator<<<BOOL>(*(a1 + 8), &v4);
  return IPC::Connection::sendMessageImpl(*(v2 + 8), v2, 0, 0);
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages10WebProcess20InitializeWebProcessENS2_10ConnectionEN6WebKit10WebProcessES9_FvONS8_28WebProcessCreationParametersEONS_17CompletionHandlerIFvN7WebCore15ProcessIdentityEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSE_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F7B58;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

void IPC::Decoder::decode<std::tuple<WebKit::WebProcessDataStoreParameters>>(uint64_t a1, IPC::Decoder *a2)
{
  IPC::ArgumentCoder<std::tuple<WebKit::WebProcessDataStoreParameters>,void>::decode<IPC::Decoder>(a1, a2);
  if ((*(a1 + 96) & 1) == 0)
  {

    IPC::Decoder::markInvalid(a2);
  }
}

void IPC::ArgumentCoder<std::tuple<WebKit::WebProcessDataStoreParameters>,void>::decode<IPC::Decoder>(uint64_t a1, IPC::Decoder *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  IPC::Decoder::decode<WebKit::WebProcessDataStoreParameters>(a2, &v10);
  if (v19)
  {
    *a1 = v10;
    v3 = v11;
    v11 = 0u;
    *(a1 + 8) = v3;
    v4 = v12;
    v5 = v13;
    v12 = 0;
    *(a1 + 24) = v4;
    *(a1 + 32) = v5;
    v6 = v14;
    v14 = 0u;
    *(a1 + 40) = v6;
    *(a1 + 56) = v15;
    v7 = v16;
    v16 = 0u;
    *(a1 + 64) = v7;
    v8 = v17;
    v17 = 0;
    *(a1 + 80) = v8;
    *(a1 + 88) = v18;
    WebKit::WebProcessDataStoreParameters::~WebProcessDataStoreParameters(&v10);
    v9 = 1;
  }

  else
  {
    v9 = 0;
    *a1 = 0;
  }

  *(a1 + 96) = v9;
}

uint64_t IPC::Decoder::decode<WebCore::PrewarmInformation>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<WebCore::PrewarmInformation,void>::decode(a2, a1);
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

WTF::StringImpl **IPC::Decoder::decode<std::tuple<WTF::HashMap<WebCore::RegistrableDomain,WTF::String,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>(uint64_t a1, WTF::StringImpl **a2)
{
  result = IPC::Decoder::decode<WTF::HashMap<WebCore::RegistrableDomain,WTF::String,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>(a2, &v6);
  if (v7 == 1)
  {
    *a1 = v6;
    v5 = 1;
  }

  else
  {
    *a1 = 0;
    result = IPC::Decoder::markInvalid(a2);
    v5 = 0;
  }

  *(a1 + 8) = v5;
  return result;
}

uint64_t IPC::Decoder::decode<std::tuple<WTF::OptionSet<WebKit::TextCheckerState>>>(IPC::Decoder *a1)
{
  v2 = IPC::Decoder::decode<WTF::OptionSet<WebKit::TextCheckerState>>(a1);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages10WebProcess16FetchWebsiteDataENS2_10ConnectionEN6WebKit10WebProcessES9_FvNS_9OptionSetINS8_15WebsiteDataTypeEEEONS_17CompletionHandlerIFvONS8_11WebsiteDataEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSF_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F7B80;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages10WebProcess16FetchWebsiteDataENS2_10ConnectionEN6WebKit10WebProcessES9_FvNS_9OptionSetINS8_15WebsiteDataTypeEEEONS_17CompletionHandlerIFvONS8_11WebsiteDataEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSF_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F7B80;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages10WebProcess16FetchWebsiteDataENS2_10ConnectionEN6WebKit10WebProcessES9_FvNS_9OptionSetINS8_15WebsiteDataTypeEEEONS_17CompletionHandlerIFvONS8_11WebsiteDataEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSF_EE4callESF_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3924;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<WebKit::WebsiteData,void>::encode(v5, a2);
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

uint64_t IPC::Decoder::decode<std::tuple<WTF::OptionSet<WebKit::WebsiteDataType>,WTF::WallTime>>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<std::tuple<WTF::OptionSet<WebKit::WebsiteDataType>,WTF::WallTime>,void>::decode<IPC::Decoder>(a1, a2);
  if ((*(a1 + 16) & 1) == 0)
  {

    return IPC::Decoder::markInvalid(a2);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::tuple<WTF::OptionSet<WebKit::WebsiteDataType>,WTF::WallTime>,void>::decode<IPC::Decoder>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::Decoder::decode<WTF::OptionSet<WebKit::WebsiteDataType>>(a2);
  if (result & 0x100000000) != 0 && (v5 = result, result = IPC::Decoder::decode<WTF::Seconds>(a2), (v6))
  {
    *a1 = v5;
    *(a1 + 8) = result;
    v7 = 1;
  }

  else
  {
    v7 = 0;
    *a1 = 0;
  }

  *(a1 + 16) = v7;
  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages10WebProcess17DeleteWebsiteDataENS2_10ConnectionEN6WebKit10WebProcessES9_FvNS_9OptionSetINS8_15WebsiteDataTypeEEENS_8WallTimeEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10F7BA8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages10WebProcess17DeleteWebsiteDataENS2_10ConnectionEN6WebKit10WebProcessES9_FvNS_9OptionSetINS8_15WebsiteDataTypeEEENS_8WallTimeEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F7BA8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *IPC::Connection::sendAsyncReply<Messages::WebProcess::DeleteWebsiteData>(uint64_t *a1, void *a2)
{
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3922;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = a2;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::Connection::sendMessageImpl(a1, &v9, 0, 0);
  result = v9;
  v9 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

uint64_t IPC::callMemberFunction<WebKit::WebProcess,WebKit::WebProcess,void ()(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::WallTime,WTF::CompletionHandler<void ()(void)> &&),std::tuple<WTF::OptionSet<WebKit::WebsiteDataType>,WTF::WallTime>,void ()(void)>(WebKit::WebProcess *,void ()(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::WallTime,WTF::CompletionHandler<void ()(void)> &&) WebKit::WebProcess::*,std::tuple<WTF::OptionSet<WebKit::WebsiteDataType>,WTF::WallTime> &&,WTF::CompletionHandler<void ()(void)> &&)::{lambda(WebKit::WebProcess &&)#1}::operator()<WTF::OptionSet<WebKit::WebsiteDataType>,WTF::WallTime>(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 8);
  v3 = *v2;
  v4 = *(v2 + 8);
  v5 = (**a1 + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  return v3(v5, a2, *(a1 + 16));
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages10WebProcess27DeleteWebsiteDataForOriginsENS2_10ConnectionEN6WebKit10WebProcessES9_FvNS_9OptionSetINS8_15WebsiteDataTypeEEERKNS_6VectorIN7WebCore18SecurityOriginDataELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10F7BD0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages10WebProcess27DeleteWebsiteDataForOriginsENS2_10ConnectionEN6WebKit10WebProcessES9_FvNS_9OptionSetINS8_15WebsiteDataTypeEEERKNS_6VectorIN7WebCore18SecurityOriginDataELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F7BD0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages10WebProcess27DeleteWebsiteDataForOriginsENS2_10ConnectionEN6WebKit10WebProcessES9_FvNS_9OptionSetINS8_15WebsiteDataTypeEEERKNS_6VectorIN7WebCore18SecurityOriginDataELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3921;
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages10WebProcess26DeleteWebsiteDataForOriginENS2_10ConnectionEN6WebKit10WebProcessES9_FvNS_9OptionSetINS8_15WebsiteDataTypeEEERKN7WebCore12ClientOriginEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10F7BF8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages10WebProcess26DeleteWebsiteDataForOriginENS2_10ConnectionEN6WebKit10WebProcessES9_FvNS_9OptionSetINS8_15WebsiteDataTypeEEERKN7WebCore12ClientOriginEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F7BF8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages10WebProcess26DeleteWebsiteDataForOriginENS2_10ConnectionEN6WebKit10WebProcessES9_FvNS_9OptionSetINS8_15WebsiteDataTypeEEERKN7WebCore12ClientOriginEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3920;
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages10WebProcess32ReloadExecutionContextsForOriginENS2_10ConnectionEN6WebKit10WebProcessES9_FvRKN7WebCore12ClientOriginENSt3__18optionalINS_23ObjectIdentifierGenericINSA_19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10F7C20;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages10WebProcess32ReloadExecutionContextsForOriginENS2_10ConnectionEN6WebKit10WebProcessES9_FvRKN7WebCore12ClientOriginENSt3__18optionalINS_23ObjectIdentifierGenericINSA_19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F7C20;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages10WebProcess32ReloadExecutionContextsForOriginENS2_10ConnectionEN6WebKit10WebProcessES9_FvRKN7WebCore12ClientOriginENSt3__18optionalINS_23ObjectIdentifierGenericINSA_19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3932;
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages10WebProcess16DeleteAllCookiesENS2_10ConnectionEN6WebKit10WebProcessES9_FvONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10F7C48;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages10WebProcess16DeleteAllCookiesENS2_10ConnectionEN6WebKit10WebProcessES9_FvONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F7C48;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages10WebProcess16DeleteAllCookiesENS2_10ConnectionEN6WebKit10WebProcessES9_FvONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3919;
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages10WebProcess16PrepareToSuspendENS2_10ConnectionEN6WebKit10WebProcessES9_FvbNS_13MonotonicTimeEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10F7C70;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages10WebProcess16PrepareToSuspendENS2_10ConnectionEN6WebKit10WebProcessES9_FvbNS_13MonotonicTimeEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F7C70;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *IPC::Connection::sendAsyncReply<Messages::WebProcess::PrepareToSuspend>(uint64_t *a1, void *a2)
{
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3929;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = a2;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::Connection::sendMessageImpl(a1, &v9, 0, 0);
  result = v9;
  v9 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

uint64_t IPC::callMemberFunction<WebKit::WebProcess,WebKit::WebProcess,void ()(BOOL,WTF::MonotonicTime,WTF::CompletionHandler<void ()(void)> &&),std::tuple<BOOL,WTF::MonotonicTime>,void ()(void)>(WebKit::WebProcess *,void ()(BOOL,WTF::MonotonicTime,WTF::CompletionHandler<void ()(void)> &&) WebKit::WebProcess::*,std::tuple<BOOL,WTF::MonotonicTime> &&,WTF::CompletionHandler<void ()(void)> &&)::{lambda(WebKit::WebProcess &&)#1}::operator()<BOOL,WTF::MonotonicTime>(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *v2;
  v4 = *(v2 + 8);
  v5 = (**a1 + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  return v3(v5, a2 & 1, *(a1 + 16));
}

uint64_t IPC::Decoder::decode<WebKit::GamepadData>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<WebKit::GamepadData,void>::decode(a2, a1);
  if ((*(a1 + 72) & 1) == 0)
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages10WebProcess54EstablishRemoteWorkerContextConnectionToNetworkProcessENS2_10ConnectionEN6WebKit10WebProcessES9_FvNS8_16RemoteWorkerTypeENS_23ObjectIdentifierGenericINS8_23PageGroupIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSB_INS8_26WebPageProxyIdentifierTypeESE_yEENSB_IN7WebCore18PageIdentifierTypeESE_yEERKNS8_19WebPreferencesStoreEONSI_4SiteENSt3__18optionalINSI_16ProcessQualifiedINS_4UUIDEEEEEONS8_30RemoteWorkerInitializationDataEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10F7C98;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages10WebProcess54EstablishRemoteWorkerContextConnectionToNetworkProcessENS2_10ConnectionEN6WebKit10WebProcessES9_FvNS8_16RemoteWorkerTypeENS_23ObjectIdentifierGenericINS8_23PageGroupIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSB_INS8_26WebPageProxyIdentifierTypeESE_yEENSB_IN7WebCore18PageIdentifierTypeESE_yEERKNS8_19WebPreferencesStoreEONSI_4SiteENSt3__18optionalINSI_16ProcessQualifiedINS_4UUIDEEEEEONS8_30RemoteWorkerInitializationDataEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F7C98;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages10WebProcess54EstablishRemoteWorkerContextConnectionToNetworkProcessENS2_10ConnectionEN6WebKit10WebProcessES9_FvNS8_16RemoteWorkerTypeENS_23ObjectIdentifierGenericINS8_23PageGroupIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSB_INS8_26WebPageProxyIdentifierTypeESE_yEENSB_IN7WebCore18PageIdentifierTypeESE_yEERKNS8_19WebPreferencesStoreEONSI_4SiteENSt3__18optionalINSI_16ProcessQualifiedINS_4UUIDEEEEEONS8_30RemoteWorkerInitializationDataEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3923;
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages10WebProcess28RegisterServiceWorkerClientsENS2_10ConnectionEN6WebKit10WebProcessES9_FvONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED1Ev(void *a1)
{
  *a1 = &unk_1F10F7CC0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages10WebProcess28RegisterServiceWorkerClientsENS2_10ConnectionEN6WebKit10WebProcessES9_FvONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F7CC0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages10WebProcess28RegisterServiceWorkerClientsENS2_10ConnectionEN6WebKit10WebProcessES9_FvONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEE4callEb(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3930;
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages10WebProcess19SetIsInProcessCacheENS2_10ConnectionEN6WebKit10WebProcessES9_FvbONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10F7CE8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages10WebProcess19SetIsInProcessCacheENS2_10ConnectionEN6WebKit10WebProcessES9_FvbONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F7CE8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *IPC::Connection::sendAsyncReply<Messages::WebProcess::SetIsInProcessCache>(uint64_t *a1, void *a2)
{
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3936;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = a2;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::Connection::sendMessageImpl(a1, &v9, 0, 0);
  result = v9;
  v9 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages10WebProcess31GetActivePagesOriginsForTestingENS2_10ConnectionEN6WebKit10WebProcessES9_FvONS_17CompletionHandlerIFvONS_6VectorINS_6StringELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSG_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F7D10;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages10WebProcess31GetActivePagesOriginsForTestingENS2_10ConnectionEN6WebKit10WebProcessES9_FvONS_17CompletionHandlerIFvONS_6VectorINS_6StringELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSG_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F7D10;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages10WebProcess31GetActivePagesOriginsForTestingENS2_10ConnectionEN6WebKit10WebProcessES9_FvONS_17CompletionHandlerIFvONS_6VectorINS_6StringELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSG_EE4callESG_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3925;
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

uint64_t IPC::Decoder::decode<std::tuple<WebCore::ScreenProperties>>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<std::tuple<WebCore::ScreenProperties>,void>::decode<IPC::Decoder>(a1, a2);
  if ((*(a1 + 24) & 1) == 0)
  {

    return IPC::Decoder::markInvalid(a2);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::tuple<WebCore::ScreenProperties>,void>::decode<IPC::Decoder>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::Decoder::decode<WebCore::ScreenProperties>(a2, &v5);
  if (v8)
  {
    *a1 = v5;
    *(a1 + 8) = v6;
    *(a1 + 16) = v7;
    v4 = 1;
  }

  else
  {
    v4 = 0;
    *a1 = 0;
  }

  *(a1 + 24) = v4;
  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages10WebProcess12IsJITEnabledENS2_10ConnectionEN6WebKit10WebProcessES9_FvONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED1Ev(void *a1)
{
  *a1 = &unk_1F10F7D38;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages10WebProcess12IsJITEnabledENS2_10ConnectionEN6WebKit10WebProcessES9_FvONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F7D38;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages10WebProcess12IsJITEnabledENS2_10ConnectionEN6WebKit10WebProcessES9_FvONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEE4callEb(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3928;
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages10WebProcess15ClearCachedPageENS2_10ConnectionEN6WebKit10WebProcessES9_FvN7WebCore16ProcessQualifiedINS_23ObjectIdentifierGenericINSA_29BackForwardItemIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10F7D60;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages10WebProcess15ClearCachedPageENS2_10ConnectionEN6WebKit10WebProcessES9_FvN7WebCore16ProcessQualifiedINS_23ObjectIdentifierGenericINSA_29BackForwardItemIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F7D60;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages10WebProcess15ClearCachedPageENS2_10ConnectionEN6WebKit10WebProcessES9_FvN7WebCore16ProcessQualifiedINS_23ObjectIdentifierGenericINSA_29BackForwardItemIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3918;
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages10WebProcess36SeedResourceLoadStatisticsForTestingENS2_10ConnectionEN6WebKit10WebProcessES9_FvRKN7WebCore17RegistrableDomainESD_bONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10F7D88;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages10WebProcess36SeedResourceLoadStatisticsForTestingENS2_10ConnectionEN6WebKit10WebProcessES9_FvRKN7WebCore17RegistrableDomainESD_bONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F7D88;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages10WebProcess36SeedResourceLoadStatisticsForTestingENS2_10ConnectionEN6WebKit10WebProcessES9_FvRKN7WebCore17RegistrableDomainESD_bONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3933;
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages10WebProcess31SetThirdPartyCookieBlockingModeENS2_10ConnectionEN6WebKit10WebProcessES9_FvN7WebCore28ThirdPartyCookieBlockingModeEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10F7DB0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages10WebProcess31SetThirdPartyCookieBlockingModeENS2_10ConnectionEN6WebKit10WebProcessES9_FvN7WebCore28ThirdPartyCookieBlockingModeEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F7DB0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages10WebProcess31SetThirdPartyCookieBlockingModeENS2_10ConnectionEN6WebKit10WebProcessES9_FvN7WebCore28ThirdPartyCookieBlockingModeEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3938;
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages10WebProcess36SetDomainsWithCrossPageStorageAccessENS2_10ConnectionEN6WebKit10WebProcessES9_FvONS_7HashMapIN7WebCore17RegistrableDomainENS_6VectorISC_Lm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEENS_11DefaultHashISC_EENS_10HashTraitsISC_EENSJ_ISG_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1ESF_EEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10F7DD8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}