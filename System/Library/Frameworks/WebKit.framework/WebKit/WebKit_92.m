void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext33ExtensionIsAllowedIncognitoAccessENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED1Ev(void *a1)
{
  *a1 = &unk_1F10F3CA8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext33ExtensionIsAllowedIncognitoAccessENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F3CA8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext33ExtensionIsAllowedIncognitoAccessENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEE4callEb(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3620;
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

void IPC::Decoder::decode<WebKit::WebExtensionMenuItemParameters>(uint64_t a1, IPC::Decoder *a2)
{
  IPC::ArgumentCoder<WebKit::WebExtensionMenuItemParameters,void>::decode(a2, a1);
  if ((*(a1 + 120) & 1) == 0)
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

uint64_t std::__tuple_leaf<0ul,WebKit::WebExtensionMenuItemParameters,false>::__tuple_leaf[abi:sn200100]<WebKit::WebExtensionMenuItemParameters,0>(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (*(a2 + 16) == 1)
  {
    v5 = a2[1];
    a2[1] = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 1;
  }

  *(a1 + 24) = *(a2 + 12);
  v6 = a2[4];
  a2[4] = 0;
  *(a1 + 32) = v6;
  v7 = a2[5];
  a2[5] = 0;
  *(a1 + 40) = v7;
  v8 = a2[6];
  a2[6] = 0;
  *(a1 + 48) = v8;
  LODWORD(v8) = *(a2 + 14);
  v9 = *(a2 + 30);
  *(a1 + 64) = 0;
  v10 = (a1 + 64);
  *(a1 + 60) = v9;
  *(a1 + 56) = v8;
  *(a1 + 80) = 0;
  if (*(a2 + 80) == 1)
  {
    *v10 = 0;
    *(a1 + 72) = 0;
    WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(v10, a2 + 16);
    *(a1 + 80) = 1;
  }

  *(a1 + 88) = 0;
  v11 = (a1 + 88);
  *(a1 + 104) = 0;
  if (*(a2 + 104) == 1)
  {
    *v11 = 0;
    *(a1 + 96) = 0;
    WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(v11, a2 + 22);
    *(a1 + 104) = 1;
  }

  *(a1 + 112) = *(a2 + 28);
  return a1;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext11MenusCreateENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvRKNS8_30WebExtensionMenuItemParametersEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvNS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSJ_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F3CD0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext11MenusCreateENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvRKNS8_30WebExtensionMenuItemParametersEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvNS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSJ_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F3CD0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext11MenusCreateENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvRKNS8_30WebExtensionMenuItemParametersEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvNS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSJ_EE4callESJ_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3621;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<void,WTF::String>,void>::encode<IPC::Encoder>(v5, a2);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext11MenusUpdateENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvRKNS_6StringERKNS8_30WebExtensionMenuItemParametersEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvSA_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSL_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F3CF8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext11MenusUpdateENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvRKNS_6StringERKNS8_30WebExtensionMenuItemParametersEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvSA_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSL_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F3CF8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext11MenusUpdateENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvRKNS_6StringERKNS8_30WebExtensionMenuItemParametersEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvSA_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSL_EE4callESL_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3624;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<void,WTF::String>,void>::encode<IPC::Encoder>(v5, a2);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext11MenusRemoveENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvRKNS_6StringEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvSA_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSI_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F3D20;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext11MenusRemoveENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvRKNS_6StringEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvSA_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSI_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F3D20;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext11MenusRemoveENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvRKNS_6StringEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvSA_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSI_EE4callESI_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3623;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<void,WTF::String>,void>::encode<IPC::Encoder>(v5, a2);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext14MenusRemoveAllENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvNS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSG_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F3D48;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext14MenusRemoveAllENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvNS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSG_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F3D48;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext14MenusRemoveAllENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvNS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSG_EE4callESG_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3622;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<void,WTF::String>,void>::encode<IPC::Encoder>(v5, a2);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext17PermissionsGetAllENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvONS_17CompletionHandlerIFvONS_6VectorINS_6StringELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEESG_EEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSG_SG_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F3D70;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext17PermissionsGetAllENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvONS_17CompletionHandlerIFvONS_6VectorINS_6StringELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEESG_EEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSG_SG_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F3D70;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext17PermissionsGetAllENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvONS_17CompletionHandlerIFvONS_6VectorINS_6StringELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEESG_EEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSG_SG_EE4callESG_SG_(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = IPC::Encoder::operator new(0x238, a2);
  *v7 = 3626;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = v6;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  IPC::Encoder::encodeHeader(v7);
  v12 = v7;
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v7, a2);
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v7, a3);
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

WTF::StringImpl **IPC::Decoder::decode<std::tuple<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>(uint64_t a1, WTF::StringImpl **this)
{
  IPC::ArgumentCoder<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,void>::decode<IPC::Decoder>(this, &v14);
  if (v15)
  {
    while (1)
    {
      result = IPC::ArgumentCoder<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,void>::decode<IPC::Decoder>(this, &v16);
      if ((v17 & 1) == 0)
      {
        v5 = *this;
        v9 = this[1];
        *this = 0;
        this[1] = 0;
        v10 = this[3];
        if (!v10)
        {
          break;
        }

        if (!v9)
        {
          break;
        }

        result = (*(*v10 + 16))(v10, v5);
        if ((v17 & 1) == 0)
        {
          break;
        }
      }

      if (v15)
      {
        v6 = v16;
        *a1 = v14;
        *(a1 + 8) = v6;
        *(a1 + 16) = 1;
        return result;
      }

      __break(1u);
LABEL_22:
      (*(*result + 2))(result, v5);
      if ((v15 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    *a1 = 0;
    v11 = v15;
    *(a1 + 16) = 0;
    if ((v11 & 1) != 0 && v14)
    {
      WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v14, v5);
    }
  }

  else
  {
    v5 = *this;
    v7 = this[1];
    *this = 0;
    this[1] = 0;
    result = this[3];
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
      goto LABEL_22;
    }

LABEL_11:
    *a1 = 0;
    *(a1 + 16) = 0;
  }

  v12 = this[1];
  *this = 0;
  this[1] = 0;
  result = this[3];
  if (result && v12)
  {
    v13 = *(*result + 2);

    return v13();
  }

  return result;
}

WTF::StringImpl **IPC::callMemberFunction<WebKit::WebExtensionContext,WebKit::WebExtensionContext,void ()(WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::CompletionHandler<void ()(BOOL)> &&),std::tuple<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,void ()(BOOL)>(uint64_t a1, void (*a2)(void *, WTF::StringImpl ***, WTF::StringImpl ***, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a2;
  v8 = (a1 + (a3 >> 1));
  if (a3)
  {
    v7 = *(*v8 + a2);
  }

  v13[1] = v5;
  v13[2] = v6;
  v9 = *a4;
  v12 = *(a4 + 8);
  v13[0] = v9;
  *a4 = 0;
  *(a4 + 8) = 0;
  v7(v8, v13, &v12, a5);
  if (v12)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v12, v10);
  }

  result = v13[0];
  if (v13[0])
  {
    return WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v13[0], v10);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext19PermissionsContainsENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_7HashSetINS_6StringENS_11DefaultHashISB_EENS_10HashTraitsISB_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1EEESI_ONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED1Ev(void *a1)
{
  *a1 = &unk_1F10F3D98;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext19PermissionsContainsENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_7HashSetINS_6StringENS_11DefaultHashISB_EENS_10HashTraitsISB_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1EEESI_ONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F3D98;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext19PermissionsContainsENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_7HashSetINS_6StringENS_11DefaultHashISB_EENS_10HashTraitsISB_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1EEESI_ONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEE4callEb(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3625;
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext18PermissionsRequestENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_7HashSetINS_6StringENS_11DefaultHashISB_EENS_10HashTraitsISB_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1EEESI_ONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED1Ev(void *a1)
{
  *a1 = &unk_1F10F3DC0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext18PermissionsRequestENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_7HashSetINS_6StringENS_11DefaultHashISB_EENS_10HashTraitsISB_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1EEESI_ONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F3DC0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext18PermissionsRequestENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_7HashSetINS_6StringENS_11DefaultHashISB_EENS_10HashTraitsISB_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1EEESI_ONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEE4callEb(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3628;
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext17PermissionsRemoveENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_7HashSetINS_6StringENS_11DefaultHashISB_EENS_10HashTraitsISB_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1EEESI_ONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED1Ev(void *a1)
{
  *a1 = &unk_1F10F3DE8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext17PermissionsRemoveENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_7HashSetINS_6StringENS_11DefaultHashISB_EENS_10HashTraitsISB_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1EEESI_ONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F3DE8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext17PermissionsRemoveENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_7HashSetINS_6StringENS_11DefaultHashISB_EENS_10HashTraitsISB_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1EEESI_ONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEE4callEb(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3627;
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext24RuntimeGetBackgroundPageENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINSt3__18optionalINS_23ObjectIdentifierGenericIN7WebCore18PageIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEENS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSP_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F3E10;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext24RuntimeGetBackgroundPageENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINSt3__18optionalINS_23ObjectIdentifierGenericIN7WebCore18PageIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEENS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSP_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F3E10;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext24RuntimeGetBackgroundPageENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINSt3__18optionalINS_23ObjectIdentifierGenericIN7WebCore18PageIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEENS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSP_EE4callESP_(uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3631;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v11 = v5;
  if (a2[16])
  {
    v13 = 0;
    v6 = IPC::Encoder::operator<<<BOOL>(v5, &v13);
    if (a2[16] == 1)
    {
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v5, a2);
      goto LABEL_6;
    }

LABEL_9:
    mpark::throw_bad_variant_access(v6);
  }

  v12 = 1;
  v6 = IPC::Encoder::operator<<<BOOL>(v5, &v12);
  if (a2[16])
  {
    goto LABEL_9;
  }

  IPC::ArgumentCoder<std::optional<unsigned long long>,void>::encode<IPC::Encoder,std::optional<unsigned long long>>(v5, a2);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext22RuntimeOpenOptionsPageENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvNS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSG_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F3E38;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext22RuntimeOpenOptionsPageENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvNS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSG_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F3E38;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext22RuntimeOpenOptionsPageENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvNS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSG_EE4callESG_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3632;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<void,WTF::String>,void>::encode<IPC::Encoder>(v5, a2);
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

void IPC::Decoder::decode<std::tuple<WTF::String,WTF::String,WebKit::WebExtensionMessageSenderParameters>>(uint64_t a1, IPC::Decoder *a2)
{
  v39 = *MEMORY[0x1E69E9840];
  IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a2, &v23);
  if ((v24 & 1) == 0)
  {
    v17 = *a2;
    v18 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v19 = *(a2 + 3);
    v20 = !v19 || v18 == 0;
    if (v20 || ((*(*v19 + 16))(v19, v17), (v24 & 1) == 0))
    {
      *a1 = 0;
      *(a1 + 304) = 0;
      goto LABEL_34;
    }
  }

  IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a2, &v25);
  if ((v26 & 1) == 0)
  {
    v4 = *a2;
    v21 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v22 = *(a2 + 3);
    if (!v22 || !v21 || ((*(*v22 + 16))(v22, v4), (v26 & 1) == 0))
    {
      *a1 = 0;
      *(a1 + 304) = 0;
LABEL_30:
      if (v24)
      {
        v13 = v23;
        v23 = 0;
        if (v13)
        {
          if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v13, v4);
          }
        }
      }

LABEL_34:
      if (*(a1 + 304))
      {
        return;
      }

      goto LABEL_37;
    }
  }

  IPC::Decoder::decode<WebKit::WebExtensionMessageSenderParameters>(&v27, a2);
  if (v38 != 1)
  {
    *a1 = 0;
    *(a1 + 304) = 0;
LABEL_26:
    if (v26)
    {
      v12 = v25;
      v25 = 0;
      if (v12)
      {
        if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v12, v4);
        }
      }
    }

    goto LABEL_30;
  }

  if (v24 & 1) != 0 && (v26)
  {
    v5 = v23;
    v23 = 0;
    v6 = v25;
    v25 = 0;
    *a1 = v5;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    if (v28 == 1)
    {
      v7 = v27;
      v27 = 0;
      *(a1 + 16) = v7;
      *(a1 + 24) = 1;
    }

    std::optional<WebKit::WebExtensionTabParameters>::optional[abi:sn200100](a1 + 32, &v29);
    *(a1 + 216) = v35[0];
    *(a1 + 225) = *(v35 + 9);
    WTF::URL::URL(a1 + 248, &v36);
    *(a1 + 288) = v37;
    *(a1 + 304) = 1;
    if (v38)
    {
      v8 = v36;
      v36 = 0;
      if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v4);
      }

      if (v34 == 1)
      {
        if (v33 == 1)
        {
          v9 = v32;
          v32 = 0;
          if (v9)
          {
            if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v9, v4);
            }
          }
        }

        if (v31 == 1)
        {
          v10 = v30;
          v30 = 0;
          if (v10)
          {
            if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v10, v4);
            }
          }
        }
      }

      if (v28 == 1)
      {
        v11 = v27;
        v27 = 0;
        if (v11)
        {
          if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v11, v4);
          }
        }
      }
    }

    goto LABEL_26;
  }

  __break(1u);
LABEL_37:
  v14 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  v15 = *(a2 + 3);
  if (v15 && v14)
  {
    v16 = *(*v15 + 16);

    v16();
  }
}

WTF::StringImpl *IPC::Decoder::decode<WebKit::WebExtensionMessageSenderParameters>(_BYTE *a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<WebKit::WebExtensionMessageSenderParameters,void>::decode(a2, a1);
  if ((a1[288] & 1) == 0)
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

uint64_t std::optional<WebKit::WebExtensionTabParameters>::optional[abi:sn200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 176) = 0;
  if (*(a2 + 176) == 1)
  {
    *a1 = *a2;
    *(a1 + 16) = 0;
    v4 = a1 + 16;
    *(a1 + 56) = 0;
    if (*(a2 + 56) == 1)
    {
      WTF::URL::URL(v4, (a2 + 16));
      *(a1 + 56) = 1;
    }

    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    if (*(a2 + 72) == 1)
    {
      v5 = *(a2 + 64);
      *(a2 + 64) = 0;
      *(a1 + 64) = v5;
      *(a1 + 72) = 1;
    }

    v6 = *(a2 + 96);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 96) = v6;
    v7 = *(a2 + 112);
    v8 = *(a2 + 128);
    v9 = *(a2 + 144);
    *(a1 + 154) = *(a2 + 154);
    *(a1 + 128) = v8;
    *(a1 + 144) = v9;
    *(a1 + 112) = v7;
    *(a1 + 176) = 1;
  }

  return a1;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext18RuntimeSendMessageENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvRKNS_6StringESC_RKNS8_35WebExtensionMessageSenderParametersEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedISA_SA_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSL_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F3E60;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext18RuntimeSendMessageENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvRKNS_6StringESC_RKNS8_35WebExtensionMessageSenderParametersEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedISA_SA_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSL_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F3E60;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext18RuntimeSendMessageENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvRKNS_6StringESC_RKNS8_35WebExtensionMessageSenderParametersEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedISA_SA_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSL_EE4callESL_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3633;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<WTF::String,WTF::String>,void>::encode<IPC::Encoder>(v5, a2);
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

uint64_t std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul>,WTF::String,WTF::String,WebKit::WebExtensionMessageSenderParameters>::~__tuple_impl(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 + 248);
  *(a1 + 248) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  if (*(a1 + 208) == 1)
  {
    if (*(a1 + 104) == 1)
    {
      v4 = *(a1 + 96);
      *(a1 + 96) = 0;
      if (v4)
      {
        if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v4, a2);
        }
      }
    }

    if (*(a1 + 88) == 1)
    {
      v5 = *(a1 + 48);
      *(a1 + 48) = 0;
      if (v5)
      {
        if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v5, a2);
        }
      }
    }
  }

  if (*(a1 + 24) == 1)
  {
    v6 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v6)
    {
      if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, a2);
      }
    }
  }

  v7 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, a2);
  }

  v8 = *a1;
  *a1 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, a2);
  }

  return a1;
}

WTF::StringImpl *IPC::Decoder::decode<std::tuple<WTF::String,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String,WebKit::WebExtensionMessageSenderParameters>>(uint64_t a1, IPC::Decoder *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a2, &v15);
  if ((v16 & 1) == 0)
  {
    goto LABEL_30;
  }

  while (1)
  {
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if ((v5 & 1) == 0 || (v6 = result, IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a2, &v17), (v18 & 1) == 0) && ((v5 = *a2, v12 = *(a2 + 1), *a2 = 0, *(a2 + 1) = 0, (result = *(a2 + 3)) == 0) || !v12 || (result = (*(*result + 16))(result, v5), (v18 & 1) == 0)))
    {
      *a1 = 0;
      *(a1 + 320) = 0;
      goto LABEL_38;
    }

    result = IPC::Decoder::decode<WebKit::WebExtensionMessageSenderParameters>(&v19, a2);
    if (v27 != 1)
    {
      *a1 = 0;
      *(a1 + 320) = 0;
      goto LABEL_25;
    }

    if (v16 & 1) != 0 && (v18)
    {
      break;
    }

    __break(1u);
LABEL_30:
    v9 = *a2;
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
      result = (*(*result + 16))(result, v9);
      if (v16)
      {
        continue;
      }
    }

    *a1 = 0;
    *(a1 + 320) = 0;
    goto LABEL_42;
  }

  v7 = v15;
  v15 = 0;
  *a1 = v7;
  *(a1 + 8) = v6;
  v8 = v17;
  v17 = 0;
  *(a1 + 16) = v8;
  result = std::__tuple_leaf<3ul,WebKit::WebExtensionMessageSenderParameters,false>::__tuple_leaf[abi:sn200100]<WebKit::WebExtensionMessageSenderParameters,0>(a1 + 32, &v19);
  *(a1 + 320) = 1;
  if (v27)
  {
    result = v26;
    v26 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v5);
    }

    if (v25 == 1)
    {
      if (v24 == 1)
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

      if (v22 == 1)
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

    if (v20 == 1)
    {
      result = v19;
      v19 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, v5);
        }
      }
    }
  }

LABEL_25:
  if (v18)
  {
    result = v17;
    v17 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v5);
      }
    }
  }

LABEL_38:
  if (v16)
  {
    result = v15;
    v15 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v5);
      }
    }
  }

LABEL_42:
  if ((*(a1 + 320) & 1) == 0)
  {
    v13 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
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

uint64_t std::__tuple_leaf<3ul,WebKit::WebExtensionMessageSenderParameters,false>::__tuple_leaf[abi:sn200100]<WebKit::WebExtensionMessageSenderParameters,0>(uint64_t a1, uint64_t *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  if (*(a2 + 8) == 1)
  {
    v4 = *a2;
    *a2 = 0;
    *a1 = v4;
    *(a1 + 8) = 1;
  }

  std::optional<WebKit::WebExtensionTabParameters>::optional[abi:sn200100](a1 + 16, (a2 + 2));
  v5 = *(a2 + 25);
  *(a1 + 209) = *(a2 + 209);
  *(a1 + 200) = v5;
  WTF::URL::URL(a1 + 232, a2 + 29);
  *(a1 + 272) = *(a2 + 17);
  return a1;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext14RuntimeConnectENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvRKNS_6StringENS_23ObjectIdentifierGenericINS8_37WebExtensionPortChannelIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEESC_RKNS8_35WebExtensionMessageSenderParametersEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvSA_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSQ_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F3E88;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext14RuntimeConnectENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvRKNS_6StringENS_23ObjectIdentifierGenericINS8_37WebExtensionPortChannelIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEESC_RKNS8_35WebExtensionMessageSenderParametersEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvSA_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSQ_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F3E88;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext14RuntimeConnectENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvRKNS_6StringENS_23ObjectIdentifierGenericINS8_37WebExtensionPortChannelIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEESC_RKNS8_35WebExtensionMessageSenderParametersEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvSA_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSQ_EE4callESQ_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3630;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<void,WTF::String>,void>::encode<IPC::Encoder>(v5, a2);
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

uint64_t std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul>,WTF::String,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String,WebKit::WebExtensionMessageSenderParameters>::~__tuple_impl(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 + 264);
  *(a1 + 264) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  if (*(a1 + 224) == 1)
  {
    if (*(a1 + 120) == 1)
    {
      v4 = *(a1 + 112);
      *(a1 + 112) = 0;
      if (v4)
      {
        if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v4, a2);
        }
      }
    }

    if (*(a1 + 104) == 1)
    {
      v5 = *(a1 + 64);
      *(a1 + 64) = 0;
      if (v5)
      {
        if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v5, a2);
        }
      }
    }
  }

  if (*(a1 + 40) == 1)
  {
    v6 = *(a1 + 32);
    *(a1 + 32) = 0;
    if (v6)
    {
      if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, a2);
      }
    }
  }

  v7 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, a2);
  }

  v8 = *a1;
  *a1 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, a2);
  }

  return a1;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext24RuntimeSendNativeMessageENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvRKNS_6StringESC_ONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedISA_SA_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSI_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F3EB0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext24RuntimeSendNativeMessageENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvRKNS_6StringESC_ONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedISA_SA_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSI_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F3EB0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext24RuntimeSendNativeMessageENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvRKNS_6StringESC_ONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedISA_SA_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSI_EE4callESI_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3634;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<WTF::String,WTF::String>,void>::encode<IPC::Encoder>(v5, a2);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext20RuntimeConnectNativeENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvRKNS_6StringENS_23ObjectIdentifierGenericINS8_37WebExtensionPortChannelIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSD_INS8_26WebPageProxyIdentifierTypeESG_yEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvSA_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSP_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F3ED8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext20RuntimeConnectNativeENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvRKNS_6StringENS_23ObjectIdentifierGenericINS8_37WebExtensionPortChannelIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSD_INS8_26WebPageProxyIdentifierTypeESG_yEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvSA_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSP_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F3ED8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext20RuntimeConnectNativeENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvRKNS_6StringENS_23ObjectIdentifierGenericINS8_37WebExtensionPortChannelIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSD_INS8_26WebPageProxyIdentifierTypeESG_yEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvSA_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSP_EE4callESP_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3629;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<void,WTF::String>,void>::encode<IPC::Encoder>(v5, a2);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext25RuntimeWebPageSendMessageENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvRKNS_6StringESC_RKNS8_35WebExtensionMessageSenderParametersEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedISA_SA_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSL_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F3F00;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext25RuntimeWebPageSendMessageENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvRKNS_6StringESC_RKNS8_35WebExtensionMessageSenderParametersEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedISA_SA_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSL_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F3F00;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext25RuntimeWebPageSendMessageENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvRKNS_6StringESC_RKNS8_35WebExtensionMessageSenderParametersEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedISA_SA_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSL_EE4callESL_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3636;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<WTF::String,WTF::String>,void>::encode<IPC::Encoder>(v5, a2);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext21RuntimeWebPageConnectENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvRKNS_6StringENS_23ObjectIdentifierGenericINS8_37WebExtensionPortChannelIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEESC_RKNS8_35WebExtensionMessageSenderParametersEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvSA_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSQ_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F3F28;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext21RuntimeWebPageConnectENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvRKNS_6StringENS_23ObjectIdentifierGenericINS8_37WebExtensionPortChannelIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEESC_RKNS8_35WebExtensionMessageSenderParametersEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvSA_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSQ_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F3F28;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext21RuntimeWebPageConnectENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvRKNS_6StringENS_23ObjectIdentifierGenericINS8_37WebExtensionPortChannelIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEESC_RKNS8_35WebExtensionMessageSenderParametersEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvSA_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSQ_EE4callESQ_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3635;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<void,WTF::String>,void>::encode<IPC::Encoder>(v5, a2);
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

void IPC::Decoder::decode<std::tuple<WebKit::WebExtensionScriptInjectionParameters>>(_BYTE *a1, uint64_t *a2)
{
  IPC::Decoder::decode<WebKit::WebExtensionScriptInjectionParameters>(v10, a2);
  if (v11 == 1)
  {
    WebKit::WebExtensionScriptInjectionParameters::WebExtensionScriptInjectionParameters(a1, v10);
    v5 = v11;
    a1[160] = 1;
    if ((v5 & 1) == 0)
    {
      return;
    }

    WebKit::WebExtensionScriptInjectionParameters::~WebExtensionScriptInjectionParameters(v10, v4);
    if (a1[160])
    {
      return;
    }
  }

  else
  {
    *a1 = 0;
    a1[160] = 0;
  }

  v6 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v7 = a2[3];
  if (v7)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v9 = *(*v7 + 16);

    v9();
  }
}

void IPC::Decoder::decode<WebKit::WebExtensionScriptInjectionParameters>(_BYTE *a1, uint64_t *a2)
{
  IPC::ArgumentCoder<WebKit::WebExtensionScriptInjectionParameters,void>::decode(a2, a1);
  if ((a1[160] & 1) == 0)
  {
    v4 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    v5 = a2[3];
    if (v5 && v4 != 0)
    {
      v7 = *(*v5 + 16);

      v7();
    }
  }
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext22ScriptingExecuteScriptENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvRKNS8_37WebExtensionScriptInjectionParametersEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINS_6VectorINS8_43WebExtensionScriptInjectionResultParametersELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEENS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSO_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F3F50;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext22ScriptingExecuteScriptENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvRKNS8_37WebExtensionScriptInjectionParametersEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINS_6VectorINS8_43WebExtensionScriptInjectionResultParametersELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEENS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSO_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F3F50;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext22ScriptingExecuteScriptENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvRKNS8_37WebExtensionScriptInjectionParametersEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINS_6VectorINS8_43WebExtensionScriptInjectionResultParametersELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEENS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSO_EE4callESO_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3637;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<WTF::Vector<WebKit::WebExtensionScriptInjectionResultParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,void>::encode<IPC::Encoder>(v5, a2);
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

void *IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<WTF::Vector<WebKit::WebExtensionScriptInjectionResultParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,void>::encode<IPC::Encoder>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v10 = 0;
    v4 = IPC::Encoder::operator<<<BOOL>(a1, &v10);
    if (*(a2 + 16) == 1)
    {
      return IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
    }

LABEL_9:
    mpark::throw_bad_variant_access(v4);
  }

  v9 = 1;
  v4 = IPC::Encoder::operator<<<BOOL>(a1, &v9);
  if (*(a2 + 16))
  {
    goto LABEL_9;
  }

  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v6 = *(a2 + 12);
  if (v6)
  {
    v7 = *a2;
    v8 = v6 << 6;
    do
    {
      result = IPC::ArgumentCoder<WebKit::WebExtensionScriptInjectionResultParameters,void>::encode(a1, v7);
      v7 += 64;
      v8 -= 64;
    }

    while (v8);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext18ScriptingInsertCSSENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvRKNS8_37WebExtensionScriptInjectionParametersEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvNS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSJ_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F3F78;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext18ScriptingInsertCSSENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvRKNS8_37WebExtensionScriptInjectionParametersEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvNS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSJ_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F3F78;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext18ScriptingInsertCSSENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvRKNS8_37WebExtensionScriptInjectionParametersEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvNS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSJ_EE4callESJ_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3639;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<void,WTF::String>,void>::encode<IPC::Encoder>(v5, a2);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext18ScriptingRemoveCSSENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvRKNS8_37WebExtensionScriptInjectionParametersEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvNS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSJ_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F3FA0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext18ScriptingRemoveCSSENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvRKNS8_37WebExtensionScriptInjectionParametersEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvNS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSJ_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F3FA0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext18ScriptingRemoveCSSENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvRKNS8_37WebExtensionScriptInjectionParametersEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvNS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSJ_EE4callESJ_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3641;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<void,WTF::String>,void>::encode<IPC::Encoder>(v5, a2);
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

uint64_t IPC::Decoder::decode<std::tuple<WTF::Vector<WebKit::WebExtensionRegisteredScriptParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(uint64_t a1, IPC::Decoder *a2, double a3, __n128 a4)
{
  IPC::VectorArgumentCoder<false,WebKit::WebExtensionRegisteredScriptParameters,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a2, &v15, a4);
  if (v17 & 1) != 0 || ((v9 = *a2, v10 = *(a2 + 1), *a2 = 0, *(a2 + 1) = 0, (v11 = *(a2 + 3)) != 0) ? (v12 = v10 == 0) : (v12 = 1), !v12 && ((*(*v11 + 16))(v11, v9), (v17)))
  {
    *a1 = v15;
    v7 = v16;
    v15 = 0;
    v16 = 0;
    *(a1 + 8) = v7;
    *(a1 + 16) = 1;
    return WTF::Vector<WebKit::WebExtensionRegisteredScriptParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v15, v6);
  }

  else
  {
    *a1 = 0;
    *(a1 + 16) = 0;
    v13 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result && v13)
    {
      v14 = *(*result + 16);

      return v14();
    }
  }

  return result;
}

uint64_t IPC::VectorArgumentCoder<false,WebKit::WebExtensionRegisteredScriptParameters,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, char *a2@<X8>, __n128 a3@<Q1>)
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
    v39 = *(a1 + 3);
    if (v39)
    {
      if (v5)
      {
        (*(*v39 + 16))(v39);
        v5 = *(a1 + 1);
      }
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_74;
  }

  *(a1 + 2) = v6 + 1;
  if (v6)
  {
    v12 = *v6;
    v61 = 0uLL;
    if (v12 >= 0x2000)
    {
      v13 = *a2;
      v14 = a2[16];
      while (1)
      {
        IPC::Decoder::decode<WebKit::WebExtensionRegisteredScriptParameters>(a1, &v40);
        v27 = v60;
        if (v60 == 1)
        {
          if (v61.n128_u32[3] == v61.n128_u32[2])
          {
            WTF::Vector<WebKit::WebExtensionRegisteredScriptParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::WebExtensionRegisteredScriptParameters>(&v61, &v40);
          }

          else
          {
            v28 = v61.n128_u64[0] + (v61.n128_u32[3] << 7);
            *v28 = 0;
            *(v28 + 16) = 0;
            if (v43 == 1)
            {
              *v28 = 0;
              *(v28 + 8) = 0;
              v29 = v40;
              v40 = 0;
              *v28 = v29;
              LODWORD(v29) = v41;
              v41 = 0;
              *(v28 + 8) = v29;
              LODWORD(v29) = v42;
              v42 = 0;
              *(v28 + 12) = v29;
              *(v28 + 16) = 1;
            }

            *(v28 + 24) = 0;
            *(v28 + 40) = 0;
            if (v47 == 1)
            {
              *(v28 + 24) = 0;
              *(v28 + 32) = 0;
              v30 = v44;
              v44 = 0;
              *(v28 + 24) = v30;
              LODWORD(v30) = v45;
              v45 = 0;
              *(v28 + 32) = v30;
              LODWORD(v30) = v46;
              v46 = 0;
              *(v28 + 36) = v30;
              *(v28 + 40) = 1;
            }

            v31 = v48;
            v48 = 0;
            *(v28 + 48) = v31;
            v32 = v49;
            *(v28 + 64) = 0;
            *(v28 + 56) = v32;
            *(v28 + 80) = 0;
            if (v53 == 1)
            {
              *(v28 + 64) = 0;
              *(v28 + 72) = 0;
              v33 = v50;
              v50 = 0;
              *(v28 + 64) = v33;
              LODWORD(v33) = v51;
              v51 = 0;
              *(v28 + 72) = v33;
              LODWORD(v33) = v52;
              v52 = 0;
              *(v28 + 76) = v33;
              *(v28 + 80) = 1;
            }

            *(v28 + 88) = 0;
            *(v28 + 104) = 0;
            if (v57 == 1)
            {
              *(v28 + 88) = 0;
              *(v28 + 96) = 0;
              v34 = v54;
              v54 = 0;
              *(v28 + 88) = v34;
              LODWORD(v34) = v55;
              v55 = 0;
              *(v28 + 96) = v34;
              LODWORD(v34) = v56;
              v56 = 0;
              *(v28 + 100) = v34;
              *(v28 + 104) = 1;
            }

            v35 = v58;
            *(v28 + 120) = v59;
            *(v28 + 112) = v35;
            ++v61.n128_u32[3];
          }
        }

        else
        {
          v14 = 0;
          v13 = 0;
        }

        if (v60 == 1)
        {
          if (v57 == 1)
          {
            WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v54, v7);
          }

          if (v53 == 1)
          {
            WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v50, v7);
          }

          v36 = v48;
          v48 = 0;
          if (v36 && atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v36, v7);
          }

          if (v47 == 1)
          {
            WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v44, v7);
          }

          if (v43 == 1)
          {
            WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v40, v7);
          }
        }

        if ((v27 & 1) == 0)
        {
          break;
        }

        if (!--v12)
        {
          WTF::Vector<WebKit::WebExtensionRegisteredScriptParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v61, v61.n128_u32[3]);
          *a2 = v61.n128_u64[0];
          v37 = v61.n128_u64[1];
          v61 = 0uLL;
          *(a2 + 1) = v37;
          goto LABEL_40;
        }
      }
    }

    else
    {
      if (!v12)
      {
        v25 = 0;
        v26 = 0;
LABEL_39:
        a3.n128_u64[0] = 0;
        v61 = a3;
        *a2 = v25;
        *(a2 + 1) = v26;
LABEL_40:
        a2[16] = 1;
        return WTF::Vector<WebKit::WebExtensionRegisteredScriptParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v61, v7);
      }

      v61.n128_u32[2] = v12;
      v61.n128_u64[0] = WTF::fastMalloc((v12 << 7));
      v13 = *a2;
      v14 = a2[16];
      while (1)
      {
        IPC::Decoder::decode<WebKit::WebExtensionRegisteredScriptParameters>(a1, &v40);
        v15 = v60;
        if (v60 == 1)
        {
          if (v61.n128_u32[3] == v61.n128_u32[2])
          {
            WTF::Vector<WebKit::WebExtensionRegisteredScriptParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::WebExtensionRegisteredScriptParameters>(&v61, &v40);
          }

          else
          {
            v16 = v61.n128_u64[0] + (v61.n128_u32[3] << 7);
            *v16 = 0;
            *(v16 + 16) = 0;
            if (v43 == 1)
            {
              *v16 = 0;
              *(v16 + 8) = 0;
              v17 = v40;
              v40 = 0;
              *v16 = v17;
              LODWORD(v17) = v41;
              v41 = 0;
              *(v16 + 8) = v17;
              LODWORD(v17) = v42;
              v42 = 0;
              *(v16 + 12) = v17;
              *(v16 + 16) = 1;
            }

            *(v16 + 24) = 0;
            *(v16 + 40) = 0;
            if (v47 == 1)
            {
              *(v16 + 24) = 0;
              *(v16 + 32) = 0;
              v18 = v44;
              v44 = 0;
              *(v16 + 24) = v18;
              LODWORD(v18) = v45;
              v45 = 0;
              *(v16 + 32) = v18;
              LODWORD(v18) = v46;
              v46 = 0;
              *(v16 + 36) = v18;
              *(v16 + 40) = 1;
            }

            v19 = v48;
            v48 = 0;
            *(v16 + 48) = v19;
            v20 = v49;
            *(v16 + 64) = 0;
            *(v16 + 56) = v20;
            *(v16 + 80) = 0;
            if (v53 == 1)
            {
              *(v16 + 64) = 0;
              *(v16 + 72) = 0;
              v21 = v50;
              v50 = 0;
              *(v16 + 64) = v21;
              LODWORD(v21) = v51;
              v51 = 0;
              *(v16 + 72) = v21;
              LODWORD(v21) = v52;
              v52 = 0;
              *(v16 + 76) = v21;
              *(v16 + 80) = 1;
            }

            *(v16 + 88) = 0;
            *(v16 + 104) = 0;
            if (v57 == 1)
            {
              *(v16 + 88) = 0;
              *(v16 + 96) = 0;
              v22 = v54;
              v54 = 0;
              *(v16 + 88) = v22;
              LODWORD(v22) = v55;
              v55 = 0;
              *(v16 + 96) = v22;
              LODWORD(v22) = v56;
              v56 = 0;
              *(v16 + 100) = v22;
              *(v16 + 104) = 1;
            }

            v23 = v58;
            *(v16 + 120) = v59;
            *(v16 + 112) = v23;
            ++v61.n128_u32[3];
          }
        }

        else
        {
          v14 = 0;
          v13 = 0;
        }

        if (v60 == 1)
        {
          if (v57 == 1)
          {
            WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v54, v7);
          }

          if (v53 == 1)
          {
            WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v50, v7);
          }

          v24 = v48;
          v48 = 0;
          if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v24, v7);
          }

          if (v47 == 1)
          {
            WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v44, v7);
          }

          if (v43 == 1)
          {
            WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v40, v7);
          }
        }

        if ((v15 & 1) == 0)
        {
          break;
        }

        if (!--v12)
        {
          v26 = v61.n128_u64[1];
          v25 = v61.n128_u64[0];
          goto LABEL_39;
        }
      }
    }

    a2[16] = v14;
    *a2 = v13;
    return WTF::Vector<WebKit::WebExtensionRegisteredScriptParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v61, v7);
  }

LABEL_74:
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

uint64_t IPC::Decoder::decode<WebKit::WebExtensionRegisteredScriptParameters>@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  result = IPC::ArgumentCoder<WebKit::WebExtensionRegisteredScriptParameters,void>::decode(a1, a2);
  if ((a2[128] & 1) == 0)
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

uint64_t WTF::Vector<WebKit::WebExtensionRegisteredScriptParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::WebExtensionRegisteredScriptParameters>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<WebKit::WebExtensionRegisteredScriptParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  v4 = *a1 + (*(a1 + 12) << 7);
  *v4 = 0;
  *(v4 + 16) = 0;
  if (*(v3 + 16) == 1)
  {
    *v4 = 0;
    *(v4 + 8) = 0;
    WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(v4, v3);
    *(v4 + 16) = 1;
  }

  *(v4 + 24) = 0;
  v5 = (v4 + 24);
  *(v4 + 40) = 0;
  if (*(v3 + 40) == 1)
  {
    *v5 = 0;
    *(v4 + 32) = 0;
    WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(v5, (v3 + 24));
    *(v4 + 40) = 1;
  }

  v6 = *(v3 + 48);
  *(v3 + 48) = 0;
  *(v4 + 48) = v6;
  LOWORD(v6) = *(v3 + 56);
  *(v4 + 64) = 0;
  v7 = (v4 + 64);
  *(v4 + 56) = v6;
  *(v4 + 80) = 0;
  if (*(v3 + 80) == 1)
  {
    *v7 = 0;
    *(v4 + 72) = 0;
    WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(v7, (v3 + 64));
    *(v4 + 80) = 1;
  }

  *(v4 + 88) = 0;
  v8 = (v4 + 88);
  *(v4 + 104) = 0;
  if (*(v3 + 104) == 1)
  {
    *v8 = 0;
    *(v4 + 96) = 0;
    WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(v8, (v3 + 88));
    *(v4 + 104) = 1;
  }

  v9 = *(v3 + 112);
  *(v4 + 120) = *(v3 + 120);
  *(v4 + 112) = v9;
  ++*(a1 + 12);
  return 1;
}

unint64_t WTF::Vector<WebKit::WebExtensionRegisteredScriptParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + (*(a1 + 12) << 7) <= a3)
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

    WTF::Vector<WebKit::WebExtensionRegisteredScriptParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebKit::WebExtensionRegisteredScriptParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WebKit::WebExtensionRegisteredScriptParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    v2 = a2;
    if (a2 >> 25)
    {
      __break(0xC471u);
      JUMPOUT(0x19DA55C00);
    }

    v4 = *a1;
    v5 = (*a1 + (*(a1 + 12) << 7));
    v6 = WTF::fastMalloc((a2 << 7));
    *(a1 + 8) = v2;
    *a1 = v6;
    WTF::VectorMover<false,WebKit::WebExtensionRegisteredScriptParameters>::move(v4, v5, v6);
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

WTF::StringImpl *WTF::VectorMover<false,WebKit::WebExtensionRegisteredScriptParameters>::move(WTF::StringImpl *result, WTF::StringImpl *a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    v6 = 0;
    do
    {
      v7 = a3 + v6;
      v8 = v5 + v6;
      *v7 = 0;
      *(v7 + 16) = 0;
      if (*(v5 + v6 + 16) == 1)
      {
        *v7 = 0;
        *(v7 + 8) = 0;
        WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a3 + v6, (v5 + v6));
        *(v7 + 16) = 1;
      }

      *(v7 + 24) = 0;
      v9 = (v7 + 24);
      *(v7 + 40) = 0;
      if (v8[40] == 1)
      {
        *v9 = 0;
        *(v7 + 32) = 0;
        WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(v9, (v5 + v6 + 24));
        *(v7 + 40) = 1;
      }

      v10 = a3 + v6;
      v11 = v5 + v6;
      v12 = *(v5 + v6 + 48);
      *(v5 + v6 + 48) = 0;
      *(v10 + 48) = v12;
      *(v10 + 56) = *(v5 + v6 + 56);
      *(a3 + v6 + 64) = 0;
      v13 = (a3 + v6 + 64);
      *(v10 + 80) = 0;
      if (*(v5 + v6 + 80) == 1)
      {
        *v13 = 0;
        *(a3 + v6 + 72) = 0;
        WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(v13, v11 + 16);
        *(v10 + 80) = 1;
      }

      *(v10 + 88) = 0;
      v14 = (v10 + 88);
      *(v10 + 104) = 0;
      if (v11[104] == 1)
      {
        *v14 = 0;
        *(v10 + 96) = 0;
        WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(v14, (v5 + v6 + 88));
        *(v10 + 104) = 1;
      }

      v15 = a3 + v6;
      v16 = *(v5 + v6 + 112);
      *(v15 + 120) = *(v5 + v6 + 120);
      *(v15 + 112) = v16;
      if (v11[104] == 1)
      {
        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v5 + v6 + 88, a2);
      }

      if (v11[80] == 1)
      {
        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v5 + v6 + 64, a2);
      }

      result = *(v11 + 6);
      *(v11 + 6) = 0;
      if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, a2);
      }

      if (v8[40] == 1)
      {
        result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v5 + v6 + 24, a2);
      }

      if (v8[16] == 1)
      {
        result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v5 + v6, a2);
      }

      v6 += 128;
    }

    while ((v5 + v6) != a2);
  }

  return result;
}

uint64_t WTF::Vector<WebKit::WebExtensionRegisteredScriptParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(uint64_t result, unint64_t a2)
{
  if (*(result + 8) > a2)
  {
    v3 = result;
    v4 = *(result + 12);
    if (v4 > a2)
    {
      result = WTF::VectorTypeOperations<WebKit::WebExtensionRegisteredScriptParameters>::destruct((*result + (a2 << 7)), (*result + (v4 << 7)));
      *(v3 + 12) = a2;
      LODWORD(v4) = a2;
    }

    v5 = *v3;
    if (a2)
    {
      if (a2 >> 25)
      {
        __break(0xC471u);
        JUMPOUT(0x19DA55EA4);
      }

      result = WTF::fastMalloc((a2 << 7));
      *(v3 + 8) = a2;
      *v3 = result;
      if (result != v5)
      {
        result = WTF::VectorMover<false,WebKit::WebExtensionRegisteredScriptParameters>::move(v5, (v5 + 128 * v4), result);
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

WTF::StringImpl *WTF::VectorTypeOperations<WebKit::WebExtensionRegisteredScriptParameters>::destruct(WTF::StringImpl *result, WTF::StringImpl *a2)
{
  if (result != a2)
  {
    v3 = result + 64;
    do
    {
      if (*(v3 + 40) == 1)
      {
        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v3 + 24, a2);
      }

      if (*(v3 + 16) == 1)
      {
        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v3, a2);
      }

      result = *(v3 - 16);
      *(v3 - 16) = 0;
      if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, a2);
      }

      if (*(v3 - 24) == 1)
      {
        result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v3 - 40, a2);
      }

      if (*(v3 - 48) == 1)
      {
        result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v3 - 64, a2);
      }

      v4 = (v3 + 64);
      v3 += 128;
    }

    while (v4 != a2);
  }

  return result;
}

uint64_t WTF::Vector<WebKit::WebExtensionRegisteredScriptParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorTypeOperations<WebKit::WebExtensionRegisteredScriptParameters>::destruct(*a1, (*a1 + (v3 << 7)));
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext31ScriptingRegisterContentScriptsENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvRKNS_6VectorINS8_38WebExtensionRegisteredScriptParametersELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvNS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F3FC8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext31ScriptingRegisterContentScriptsENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvRKNS_6VectorINS8_38WebExtensionRegisteredScriptParametersELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvNS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F3FC8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext31ScriptingRegisterContentScriptsENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvRKNS_6VectorINS8_38WebExtensionRegisteredScriptParametersELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvNS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_EE4callESN_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3640;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<void,WTF::String>,void>::encode<IPC::Encoder>(v5, a2);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext32ScriptingUpdateRegisteredScriptsENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvRKNS_6VectorINS8_38WebExtensionRegisteredScriptParametersELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvNS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F3FF0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext32ScriptingUpdateRegisteredScriptsENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvRKNS_6VectorINS8_38WebExtensionRegisteredScriptParametersELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvNS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F3FF0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext32ScriptingUpdateRegisteredScriptsENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvRKNS_6VectorINS8_38WebExtensionRegisteredScriptParametersELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvNS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_EE4callESN_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3643;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<void,WTF::String>,void>::encode<IPC::Encoder>(v5, a2);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext29ScriptingGetRegisteredScriptsENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvRKNS_6VectorINS_6StringELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINSA_INS8_38WebExtensionRegisteredScriptParametersELm0ESC_Lm16ESD_EESB_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSO_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F4018;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext29ScriptingGetRegisteredScriptsENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvRKNS_6VectorINS_6StringELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINSA_INS8_38WebExtensionRegisteredScriptParametersELm0ESC_Lm16ESD_EESB_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSO_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F4018;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext29ScriptingGetRegisteredScriptsENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvRKNS_6VectorINS_6StringELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINSA_INS8_38WebExtensionRegisteredScriptParametersELm0ESC_Lm16ESD_EESB_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSO_EE4callESO_(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3638;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v14 = v5;
  if (*(a2 + 16))
  {
    v16 = 0;
    v6 = IPC::Encoder::operator<<<BOOL>(v5, &v16);
    if (*(a2 + 16) == 1)
    {
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v5, a2);
      goto LABEL_8;
    }

LABEL_11:
    mpark::throw_bad_variant_access(v6);
  }

  v15 = 1;
  v6 = IPC::Encoder::operator<<<BOOL>(v5, &v15);
  if (*(a2 + 16))
  {
    goto LABEL_11;
  }

  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v5, *(a2 + 3));
  v7 = *(a2 + 3);
  if (v7)
  {
    v8 = *a2;
    v9 = v7 << 7;
    do
    {
      IPC::ArgumentCoder<WebKit::WebExtensionRegisteredScriptParameters,void>::encode(v5, v8);
      v8 += 128;
      v9 -= 128;
    }

    while (v9);
  }

LABEL_8:
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext33ScriptingUnregisterContentScriptsENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvRKNS_6VectorINS_6StringELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvSB_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSM_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F4040;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext33ScriptingUnregisterContentScriptsENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvRKNS_6VectorINS_6StringELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvSB_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSM_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F4040;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext33ScriptingUnregisterContentScriptsENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvRKNS_6VectorINS_6StringELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvSB_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSM_EE4callESM_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3642;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<void,WTF::String>,void>::encode<IPC::Encoder>(v5, a2);
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

uint64_t IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::WebExtensionDataType,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(uint64_t a1, IPC::Decoder *a2)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if (v5 & 1) != 0 && (v6 = v4, v7 = IPC::Decoder::decode<WebKit::WebExtensionDataType>(a2), v7 > 0xFFu) && ((v8 = v7, IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a2, &v18), (v20) || (v12 = *a2, v13 = *(a2 + 1), *a2 = 0, *(a2 + 1) = 0, (v14 = *(a2 + 3)) != 0) && v13 && ((*(*v14 + 16))(v14, v12), (v20)))
  {
    *a1 = v6;
    *(a1 + 8) = v8;
    *(a1 + 16) = v18;
    v10 = v19;
    v18 = 0;
    v19 = 0;
    *(a1 + 24) = v10;
    *(a1 + 32) = 1;
    return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v18, v9);
  }

  else
  {
    *a1 = 0;
    *(a1 + 32) = 0;
    v15 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
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
  }

  return result;
}

uint64_t IPC::Decoder::decode<WebKit::WebExtensionDataType>(void *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = *a1;
  if (v1 <= &v2[-*a1])
  {
    *a1 = 0;
    a1[1] = 0;
    v13 = a1;
    v11 = a1[3];
    if (v11)
    {
      if (v1)
      {
        (*(*v11 + 16))(v11);
        v3 = *v13;
        v1 = v13[1];
        goto LABEL_16;
      }
    }

    else
    {
      v1 = 0;
    }

    v3 = 0;
  }

  else
  {
    a1[2] = v2 + 1;
    if (v2)
    {
      v4 = *v2;
      v5 = 1;
      if (v4 <= 4 && ((1 << v4) & 0x16) != 0)
      {
        return v4 | (v5 << 8);
      }

      goto LABEL_8;
    }

    v13 = a1;
  }

LABEL_16:
  a1 = v13;
  *v13 = 0;
  v13[1] = 0;
  v12 = v13[3];
  if (v12 && v1)
  {
    (*(*v12 + 16))(v12, v3);
    a1 = v13;
  }

LABEL_8:
  v7 = *a1;
  v8 = a1[1];
  *a1 = 0;
  a1[1] = 0;
  v9 = a1[3];
  if (v9 && v8)
  {
    (*(*v9 + 16))(v9, v7);
  }

  v5 = 0;
  v4 = 0;
  return v4 | (v5 << 8);
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext10StorageGetENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENS8_20WebExtensionDataTypeERKNS_6VectorINS_6StringELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedISH_SH_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSS_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F4068;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext10StorageGetENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENS8_20WebExtensionDataTypeERKNS_6VectorINS_6StringELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedISH_SH_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSS_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F4068;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext10StorageGetENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENS8_20WebExtensionDataTypeERKNS_6VectorINS_6StringELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedISH_SH_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSS_EE4callESS_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3647;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<WTF::String,WTF::String>,void>::encode<IPC::Encoder>(v5, a2);
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

uint64_t IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::WebExtensionDataType>>(uint64_t a1, IPC::Decoder *a2)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v5 & 1) != 0 && (v6 = v4, result = IPC::Decoder::decode<WebKit::WebExtensionDataType>(a2), result >= 0x100u))
  {
    *a1 = v6;
    *(a1 + 8) = result;
    *(a1 + 16) = 1;
  }

  else
  {
    *a1 = 0;
    *(a1 + 16) = 0;
    v8 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result)
    {
      v9 = v8 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      v10 = *(*result + 16);

      return v10();
    }
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext14StorageGetKeysENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENS8_20WebExtensionDataTypeEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINS_6VectorINS_6StringELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEESL_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSQ_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F4090;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext14StorageGetKeysENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENS8_20WebExtensionDataTypeEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINS_6VectorINS_6StringELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEESL_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSQ_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F4090;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext14StorageGetKeysENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENS8_20WebExtensionDataTypeEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINS_6VectorINS_6StringELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEESL_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSQ_EE4callESQ_(uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3646;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v11 = v5;
  if (a2[16])
  {
    v13 = 0;
    v6 = IPC::Encoder::operator<<<BOOL>(v5, &v13);
    if (a2[16] == 1)
    {
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v5, a2);
      goto LABEL_6;
    }

LABEL_9:
    mpark::throw_bad_variant_access(v6);
  }

  v12 = 1;
  v6 = IPC::Encoder::operator<<<BOOL>(v5, &v12);
  if (a2[16])
  {
    goto LABEL_9;
  }

  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v5, a2);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext20StorageGetBytesInUseENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENS8_20WebExtensionDataTypeERKNS_6VectorINS_6StringELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIySH_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSS_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F40B8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext20StorageGetBytesInUseENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENS8_20WebExtensionDataTypeERKNS_6VectorINS_6StringELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIySH_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSS_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F40B8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext20StorageGetBytesInUseENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENS8_20WebExtensionDataTypeERKNS_6VectorINS_6StringELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIySH_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSS_EE4callESS_(uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3645;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v11 = v5;
  if (a2[8])
  {
    v13 = 0;
    v6 = IPC::Encoder::operator<<<BOOL>(v5, &v13);
    if (a2[8] == 1)
    {
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v5, a2);
      goto LABEL_6;
    }

LABEL_9:
    mpark::throw_bad_variant_access(v6);
  }

  v12 = 1;
  v6 = IPC::Encoder::operator<<<BOOL>(v5, &v12);
  if (a2[8])
  {
    goto LABEL_9;
  }

  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v5, *a2);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext10StorageSetENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENS8_20WebExtensionDataTypeERKNS_6StringEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvSG_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSO_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F40E0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext10StorageSetENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENS8_20WebExtensionDataTypeERKNS_6StringEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvSG_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSO_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F40E0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext10StorageSetENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENS8_20WebExtensionDataTypeERKNS_6StringEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvSG_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSO_EE4callESO_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3650;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<void,WTF::String>,void>::encode<IPC::Encoder>(v5, a2);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext13StorageRemoveENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENS8_20WebExtensionDataTypeERKNS_6VectorINS_6StringELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvSH_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSS_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F4108;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext13StorageRemoveENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENS8_20WebExtensionDataTypeERKNS_6VectorINS_6StringELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvSH_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSS_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F4108;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext13StorageRemoveENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENS8_20WebExtensionDataTypeERKNS_6VectorINS_6StringELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvSH_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSS_EE4callESS_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3648;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<void,WTF::String>,void>::encode<IPC::Encoder>(v5, a2);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext12StorageClearENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENS8_20WebExtensionDataTypeEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvNS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSM_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F4130;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext12StorageClearENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENS8_20WebExtensionDataTypeEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvNS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSM_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F4130;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext12StorageClearENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENS8_20WebExtensionDataTypeEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvNS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSM_EE4callESM_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3644;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<void,WTF::String>,void>::encode<IPC::Encoder>(v5, a2);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext21StorageSetAccessLevelENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENS8_20WebExtensionDataTypeENS8_30WebExtensionStorageAccessLevelEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvNS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F4158;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext21StorageSetAccessLevelENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENS8_20WebExtensionDataTypeENS8_30WebExtensionStorageAccessLevelEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvNS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F4158;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext21StorageSetAccessLevelENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENS8_20WebExtensionDataTypeENS8_30WebExtensionStorageAccessLevelEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvNS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_EE4callESN_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3649;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<void,WTF::String>,void>::encode<IPC::Encoder>(v5, a2);
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

uint64_t std::__tuple_leaf<1ul,WebKit::WebExtensionTabParameters,false>::__tuple_leaf[abi:sn200100]<WebKit::WebExtensionTabParameters,0>(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = 0;
  v4 = a1 + 16;
  *(a1 + 56) = 0;
  if (*(a2 + 56) == 1)
  {
    WTF::URL::URL(v4, (a2 + 16));
    *(a1 + 56) = 1;
  }

  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  if (*(a2 + 72) == 1)
  {
    v5 = *(a2 + 64);
    *(a2 + 64) = 0;
    *(a1 + 64) = v5;
    *(a1 + 72) = 1;
  }

  v6 = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = v6;
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  v9 = *(a2 + 144);
  *(a1 + 154) = *(a2 + 154);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = v7;
  return a1;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext10TabsCreateENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNSt3__18optionalINS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEERKNS8_25WebExtensionTabParametersEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINSB_ISI_EENS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSS_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F4180;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext10TabsCreateENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNSt3__18optionalINS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEERKNS8_25WebExtensionTabParametersEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINSB_ISI_EENS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSS_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F4180;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext10TabsCreateENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNSt3__18optionalINS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEERKNS8_25WebExtensionTabParametersEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINSB_ISI_EENS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSS_EE4callESS_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3653;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<std::optional<WebKit::WebExtensionTabParameters>,WTF::String>,void>::encode<IPC::Encoder>(v5, a2);
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

void *IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<std::optional<WebKit::WebExtensionTabParameters>,WTF::String>,void>::encode<IPC::Encoder>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 184))
  {
    v8 = 0;
    v4 = IPC::Encoder::operator<<<BOOL>(a1, &v8);
    if (*(a2 + 184) == 1)
    {
      return IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
    }

LABEL_10:
    mpark::throw_bad_variant_access(v4);
  }

  v7 = 1;
  v4 = IPC::Encoder::operator<<<BOOL>(a1, &v7);
  if (*(a2 + 184))
  {
    goto LABEL_10;
  }

  if (*(a2 + 176))
  {
    v9 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v9);
    if (*(a2 + 176))
    {
      return IPC::ArgumentCoder<WebKit::WebExtensionTabParameters,void>::encode(a1, a2);
    }

    else
    {
      v6 = std::__throw_bad_optional_access[abi:sn200100]();
      return _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext10TabsUpdateENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSt3__18optionalINSA_INS8_29WebExtensionTabIdentifierTypeESD_yEEEERKNS8_25WebExtensionTabParametersEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINSG_ISK_EENS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSU_EED1Ev(v6);
    }
  }

  else
  {
    v10 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v10);
  }
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext10TabsUpdateENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSt3__18optionalINSA_INS8_29WebExtensionTabIdentifierTypeESD_yEEEERKNS8_25WebExtensionTabParametersEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINSG_ISK_EENS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSU_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F41A8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext10TabsUpdateENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSt3__18optionalINSA_INS8_29WebExtensionTabIdentifierTypeESD_yEEEERKNS8_25WebExtensionTabParametersEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINSG_ISK_EENS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSU_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F41A8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext10TabsUpdateENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSt3__18optionalINSA_INS8_29WebExtensionTabIdentifierTypeESD_yEEEERKNS8_25WebExtensionTabParametersEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINSG_ISK_EENS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSU_EE4callESU_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3670;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<std::optional<WebKit::WebExtensionTabParameters>,WTF::String>,void>::encode<IPC::Encoder>(v5, a2);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext13TabsDuplicateENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_23ObjectIdentifierGenericINS8_29WebExtensionTabIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEERKNS8_25WebExtensionTabParametersEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINSt3__18optionalISF_EENS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSR_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F41D0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext13TabsDuplicateENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_23ObjectIdentifierGenericINS8_29WebExtensionTabIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEERKNS8_25WebExtensionTabParametersEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINSt3__18optionalISF_EENS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSR_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F41D0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext13TabsDuplicateENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_23ObjectIdentifierGenericINS8_29WebExtensionTabIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEERKNS8_25WebExtensionTabParametersEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINSt3__18optionalISF_EENS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSR_EE4callESR_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3655;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<std::optional<WebKit::WebExtensionTabParameters>,WTF::String>,void>::encode<IPC::Encoder>(v5, a2);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext7TabsGetENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_23ObjectIdentifierGenericINS8_29WebExtensionTabIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINSt3__18optionalINS8_25WebExtensionTabParametersEEENS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSP_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F41F8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext7TabsGetENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_23ObjectIdentifierGenericINS8_29WebExtensionTabIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINSt3__18optionalINS8_25WebExtensionTabParametersEEENS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSP_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F41F8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext7TabsGetENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_23ObjectIdentifierGenericINS8_29WebExtensionTabIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINSt3__18optionalINS8_25WebExtensionTabParametersEEENS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSP_EE4callESP_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3658;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<std::optional<WebKit::WebExtensionTabParameters>,WTF::String>,void>::encode<IPC::Encoder>(v5, a2);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext14TabsGetCurrentENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINSt3__18optionalINS8_25WebExtensionTabParametersEEENS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSP_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F4220;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext14TabsGetCurrentENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINSt3__18optionalINS8_25WebExtensionTabParametersEEENS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSP_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F4220;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext14TabsGetCurrentENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINSt3__18optionalINS8_25WebExtensionTabParametersEEENS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSP_EE4callESP_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3657;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<std::optional<WebKit::WebExtensionTabParameters>,WTF::String>,void>::encode<IPC::Encoder>(v5, a2);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext9TabsQueryENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEERKNS8_30WebExtensionTabQueryParametersEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINS_6VectorINS8_25WebExtensionTabParametersELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEENS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJST_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F4248;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext9TabsQueryENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEERKNS8_30WebExtensionTabQueryParametersEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINS_6VectorINS8_25WebExtensionTabParametersELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEENS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJST_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F4248;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext9TabsQueryENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEERKNS8_30WebExtensionTabQueryParametersEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINS_6VectorINS8_25WebExtensionTabParametersELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEENS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJST_EE4callEST_(uint64_t a1, unsigned int *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3663;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v14 = v5;
  if (*(a2 + 16))
  {
    v16 = 0;
    v6 = IPC::Encoder::operator<<<BOOL>(v5, &v16);
    if (*(a2 + 16) == 1)
    {
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v5, a2);
      goto LABEL_8;
    }

LABEL_11:
    mpark::throw_bad_variant_access(v6);
  }

  v15 = 1;
  v6 = IPC::Encoder::operator<<<BOOL>(v5, &v15);
  if (*(a2 + 16))
  {
    goto LABEL_11;
  }

  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v5, a2[3]);
  v7 = a2[3];
  if (v7)
  {
    v8 = *a2;
    v9 = 176 * v7;
    do
    {
      IPC::ArgumentCoder<WebKit::WebExtensionTabParameters,void>::encode(v5, v8);
      v8 += 176;
      v9 -= 176;
    }

    while (v9);
  }

LABEL_8:
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext10TabsReloadENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSt3__18optionalINSA_INS8_29WebExtensionTabIdentifierTypeESD_yEEEENS8_16ReloadFromOriginEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvNS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSR_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F4270;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext10TabsReloadENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSt3__18optionalINSA_INS8_29WebExtensionTabIdentifierTypeESD_yEEEENS8_16ReloadFromOriginEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvNS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSR_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F4270;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext10TabsReloadENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSt3__18optionalINSA_INS8_29WebExtensionTabIdentifierTypeESD_yEEEENS8_16ReloadFromOriginEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvNS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSR_EE4callESR_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3664;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<void,WTF::String>,void>::encode<IPC::Encoder>(v5, a2);
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

uint64_t *IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(uint64_t a1, IPC::Decoder *a2)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v5 & 1) != 0 && (v6 = v4, result = IPC::Decoder::decode<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a2, &v12), v8 = v13, v13 == 1))
  {
    *a1 = v6;
    *(a1 + 8) = v12;
    *(a1 + 24) = v8;
  }

  else
  {
    *a1 = 0;
    *(a1 + 24) = 0;
    v9 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result)
    {
      v10 = v9 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (!v10)
    {
      v11 = *(*result + 16);

      return v11();
    }
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext10TabsGoBackENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSt3__18optionalINSA_INS8_29WebExtensionTabIdentifierTypeESD_yEEEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvNS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSQ_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F4298;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext10TabsGoBackENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSt3__18optionalINSA_INS8_29WebExtensionTabIdentifierTypeESD_yEEEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvNS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSQ_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F4298;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext10TabsGoBackENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSt3__18optionalINSA_INS8_29WebExtensionTabIdentifierTypeESD_yEEEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvNS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSQ_EE4callESQ_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3660;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<void,WTF::String>,void>::encode<IPC::Encoder>(v5, a2);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext13TabsGoForwardENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSt3__18optionalINSA_INS8_29WebExtensionTabIdentifierTypeESD_yEEEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvNS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSQ_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F42C0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext13TabsGoForwardENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSt3__18optionalINSA_INS8_29WebExtensionTabIdentifierTypeESD_yEEEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvNS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSQ_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F42C0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext13TabsGoForwardENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSt3__18optionalINSA_INS8_29WebExtensionTabIdentifierTypeESD_yEEEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvNS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSQ_EE4callESQ_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3661;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<void,WTF::String>,void>::encode<IPC::Encoder>(v5, a2);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext18TabsDetectLanguageENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSt3__18optionalINSA_INS8_29WebExtensionTabIdentifierTypeESD_yEEEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINS_6StringESO_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSQ_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F42E8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext18TabsDetectLanguageENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSt3__18optionalINSA_INS8_29WebExtensionTabIdentifierTypeESD_yEEEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINS_6StringESO_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSQ_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F42E8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext18TabsDetectLanguageENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSt3__18optionalINSA_INS8_29WebExtensionTabIdentifierTypeESD_yEEEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINS_6StringESO_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSQ_EE4callESQ_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3654;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<WTF::String,WTF::String>,void>::encode<IPC::Encoder>(v5, a2);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext20TabsToggleReaderModeENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSt3__18optionalINSA_INS8_29WebExtensionTabIdentifierTypeESD_yEEEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvNS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSQ_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F4310;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext20TabsToggleReaderModeENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSt3__18optionalINSA_INS8_29WebExtensionTabIdentifierTypeESD_yEEEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvNS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSQ_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F4310;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext20TabsToggleReaderModeENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSt3__18optionalINSA_INS8_29WebExtensionTabIdentifierTypeESD_yEEEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvNS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSQ_EE4callESQ_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3669;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<void,WTF::String>,void>::encode<IPC::Encoder>(v5, a2);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext21TabsCaptureVisibleTabENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSt3__18optionalINSA_INS8_32WebExtensionWindowIdentifierTypeESD_yEEEENS8_26WebExtensionTabImageFormatEhONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINS_3URLENS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSS_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F4338;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext21TabsCaptureVisibleTabENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSt3__18optionalINSA_INS8_32WebExtensionWindowIdentifierTypeESD_yEEEENS8_26WebExtensionTabImageFormatEhONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINS_3URLENS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSS_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F4338;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext21TabsCaptureVisibleTabENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSt3__18optionalINSA_INS8_32WebExtensionWindowIdentifierTypeESD_yEEEENS8_26WebExtensionTabImageFormatEhONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINS_3URLENS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSS_EE4callESS_(uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3651;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v11 = v5;
  if (a2[40])
  {
    v13 = 0;
    v6 = IPC::Encoder::operator<<<BOOL>(v5, &v13);
    if (a2[40] == 1)
    {
      goto LABEL_3;
    }

LABEL_7:
    mpark::throw_bad_variant_access(v6);
  }

  v12 = 1;
  v6 = IPC::Encoder::operator<<<BOOL>(v5, &v12);
  if (a2[40])
  {
    goto LABEL_7;
  }

LABEL_3:
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v5, a2);
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

IPC::Decoder *IPC::Decoder::decode<WebKit::WebExtensionMessageTargetParameters>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<WebKit::WebExtensionMessageTargetParameters,void>::decode(a2, a1);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext15TabsSendMessageENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_23ObjectIdentifierGenericINS8_29WebExtensionTabIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEERKNS_6StringERKNS8_35WebExtensionMessageTargetParametersERKNS8_35WebExtensionMessageSenderParametersEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedISF_SF_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJST_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F4360;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext15TabsSendMessageENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_23ObjectIdentifierGenericINS8_29WebExtensionTabIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEERKNS_6StringERKNS8_35WebExtensionMessageTargetParametersERKNS8_35WebExtensionMessageSenderParametersEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedISF_SF_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJST_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F4360;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext15TabsSendMessageENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_23ObjectIdentifierGenericINS8_29WebExtensionTabIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEERKNS_6StringERKNS8_35WebExtensionMessageTargetParametersERKNS8_35WebExtensionMessageSenderParametersEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedISF_SF_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJST_EE4callEST_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3667;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<WTF::String,WTF::String>,void>::encode<IPC::Encoder>(v5, a2);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext11TabsConnectENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_23ObjectIdentifierGenericINS8_29WebExtensionTabIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSA_INS8_37WebExtensionPortChannelIdentifierTypeESD_yEENS_6StringERKNS8_35WebExtensionMessageTargetParametersERKNS8_35WebExtensionMessageSenderParametersEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvSH_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJST_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F4388;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext11TabsConnectENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_23ObjectIdentifierGenericINS8_29WebExtensionTabIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSA_INS8_37WebExtensionPortChannelIdentifierTypeESD_yEENS_6StringERKNS8_35WebExtensionMessageTargetParametersERKNS8_35WebExtensionMessageSenderParametersEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvSH_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJST_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F4388;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext11TabsConnectENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_23ObjectIdentifierGenericINS8_29WebExtensionTabIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSA_INS8_37WebExtensionPortChannelIdentifierTypeESD_yEENS_6StringERKNS8_35WebExtensionMessageTargetParametersERKNS8_35WebExtensionMessageSenderParametersEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvSH_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJST_EE4callEST_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3652;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<void,WTF::String>,void>::encode<IPC::Encoder>(v5, a2);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext11TabsGetZoomENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSt3__18optionalINSA_INS8_29WebExtensionTabIdentifierTypeESD_yEEEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIdNS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSQ_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F43B0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext11TabsGetZoomENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSt3__18optionalINSA_INS8_29WebExtensionTabIdentifierTypeESD_yEEEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIdNS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSQ_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F43B0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext11TabsGetZoomENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSt3__18optionalINSA_INS8_29WebExtensionTabIdentifierTypeESD_yEEEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIdNS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSQ_EE4callESQ_(uint64_t a1, double *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3659;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v11 = v5;
  if (*(a2 + 8))
  {
    v13 = 0;
    v6 = IPC::Encoder::operator<<<BOOL>(v5, &v13);
    if (*(a2 + 8) == 1)
    {
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v5, a2);
      goto LABEL_6;
    }

LABEL_9:
    mpark::throw_bad_variant_access(v6);
  }

  v12 = 1;
  v6 = IPC::Encoder::operator<<<BOOL>(v5, &v12);
  if (*(a2 + 8))
  {
    goto LABEL_9;
  }

  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(v5, *a2);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext11TabsSetZoomENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSt3__18optionalINSA_INS8_29WebExtensionTabIdentifierTypeESD_yEEEEdONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvNS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSQ_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F43D8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext11TabsSetZoomENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSt3__18optionalINSA_INS8_29WebExtensionTabIdentifierTypeESD_yEEEEdONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvNS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSQ_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F43D8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext11TabsSetZoomENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSt3__18optionalINSA_INS8_29WebExtensionTabIdentifierTypeESD_yEEEEdONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvNS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSQ_EE4callESQ_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3668;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<void,WTF::String>,void>::encode<IPC::Encoder>(v5, a2);
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

WTF *IPC::Decoder::decode<WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::VectorArgumentCoder<false,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a1, a2);
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

WTF *IPC::VectorArgumentCoder<false,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v5 = ((a1[2] + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *a1;
  v7 = v5 - *a1;
  v8 = v4 >= v7;
  v9 = v4 - v7;
  if (!v8 || v9 <= 7)
  {
    *a1 = 0;
    a1[1] = 0;
    v23 = a1[3];
    if (v23)
    {
      if (v4)
      {
        (*(*v23 + 16))(v23);
        v4 = a1[1];
      }
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_31;
  }

  a1[2] = (v5 + 1);
  if (!v5)
  {
LABEL_31:
    *a1 = 0;
    a1[1] = 0;
    result = a1[3];
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
      v19 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1);
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
      v12 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext10TabsRemoveENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_6VectorINS_23ObjectIdentifierGenericINS8_29WebExtensionTabIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvNS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSP_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F4400;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext10TabsRemoveENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_6VectorINS_23ObjectIdentifierGenericINS8_29WebExtensionTabIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvNS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSP_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F4400;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext10TabsRemoveENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_6VectorINS_23ObjectIdentifierGenericINS8_29WebExtensionTabIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvNS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSP_EE4callESP_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3666;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<void,WTF::String>,void>::encode<IPC::Encoder>(v5, a2);
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

void IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebKit::WebExtensionScriptInjectionParameters>>(uint64_t a1, IPC::Decoder *a2)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v5 & 1) == 0 || (v6 = v4, IPC::Decoder::decode<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a2, &v12), (v13 & 1) == 0) || (IPC::Decoder::decode<WebKit::WebExtensionScriptInjectionParameters>(v14, a2), v15 != 1))
  {
    *a1 = 0;
    *(a1 + 184) = 0;
LABEL_9:
    v8 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v9 = *(a2 + 3);
    if (v9)
    {
      v10 = v8 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (!v10)
    {
      v11 = *(*v9 + 16);

      v11();
    }

    return;
  }

  if ((v13 & 1) == 0)
  {
    __break(1u);
    return;
  }

  *a1 = v6;
  *(a1 + 8) = v12;
  WebKit::WebExtensionScriptInjectionParameters::WebExtensionScriptInjectionParameters(a1 + 24, v14);
  *(a1 + 184) = 1;
  if (v15)
  {
    WebKit::WebExtensionScriptInjectionParameters::~WebExtensionScriptInjectionParameters(v14, v7);
    if ((*(a1 + 184) & 1) == 0)
    {
      goto LABEL_9;
    }
  }
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext17TabsExecuteScriptENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSt3__18optionalINSA_INS8_29WebExtensionTabIdentifierTypeESD_yEEEERKNS8_37WebExtensionScriptInjectionParametersEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINS_6VectorINS8_43WebExtensionScriptInjectionResultParametersELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEENS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSY_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F4428;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext17TabsExecuteScriptENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSt3__18optionalINSA_INS8_29WebExtensionTabIdentifierTypeESD_yEEEERKNS8_37WebExtensionScriptInjectionParametersEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINS_6VectorINS8_43WebExtensionScriptInjectionResultParametersELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEENS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSY_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F4428;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext17TabsExecuteScriptENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSt3__18optionalINSA_INS8_29WebExtensionTabIdentifierTypeESD_yEEEERKNS8_37WebExtensionScriptInjectionParametersEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINS_6VectorINS8_43WebExtensionScriptInjectionResultParametersELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEENS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSY_EE4callESY_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3656;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<WTF::Vector<WebKit::WebExtensionScriptInjectionResultParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,void>::encode<IPC::Encoder>(v5, a2);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext13TabsInsertCSSENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSt3__18optionalINSA_INS8_29WebExtensionTabIdentifierTypeESD_yEEEERKNS8_37WebExtensionScriptInjectionParametersEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvNS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJST_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F4450;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext13TabsInsertCSSENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSt3__18optionalINSA_INS8_29WebExtensionTabIdentifierTypeESD_yEEEERKNS8_37WebExtensionScriptInjectionParametersEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvNS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJST_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F4450;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext13TabsInsertCSSENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSt3__18optionalINSA_INS8_29WebExtensionTabIdentifierTypeESD_yEEEERKNS8_37WebExtensionScriptInjectionParametersEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvNS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJST_EE4callEST_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3662;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<void,WTF::String>,void>::encode<IPC::Encoder>(v5, a2);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext13TabsRemoveCSSENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSt3__18optionalINSA_INS8_29WebExtensionTabIdentifierTypeESD_yEEEERKNS8_37WebExtensionScriptInjectionParametersEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvNS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJST_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F4478;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext13TabsRemoveCSSENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSt3__18optionalINSA_INS8_29WebExtensionTabIdentifierTypeESD_yEEEERKNS8_37WebExtensionScriptInjectionParametersEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvNS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJST_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F4478;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext13TabsRemoveCSSENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSt3__18optionalINSA_INS8_29WebExtensionTabIdentifierTypeESD_yEEEERKNS8_37WebExtensionScriptInjectionParametersEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvNS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJST_EE4callEST_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3665;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<void,WTF::String>,void>::encode<IPC::Encoder>(v5, a2);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext25WebNavigationGetAllFramesENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_23ObjectIdentifierGenericINS8_29WebExtensionTabIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINS_6VectorINS8_27WebExtensionFrameParametersELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEENS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSQ_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F44A0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext25WebNavigationGetAllFramesENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_23ObjectIdentifierGenericINS8_29WebExtensionTabIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINS_6VectorINS8_27WebExtensionFrameParametersELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEENS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSQ_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F44A0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext25WebNavigationGetAllFramesENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_23ObjectIdentifierGenericINS8_29WebExtensionTabIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINS_6VectorINS8_27WebExtensionFrameParametersELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEENS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSQ_EE4callESQ_(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3671;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v14 = v5;
  if (*(a2 + 16))
  {
    v16 = 0;
    v6 = IPC::Encoder::operator<<<BOOL>(v5, &v16);
    if (*(a2 + 16) == 1)
    {
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v5, a2);
      goto LABEL_8;
    }

LABEL_11:
    mpark::throw_bad_variant_access(v6);
  }

  v15 = 1;
  v6 = IPC::Encoder::operator<<<BOOL>(v5, &v15);
  if (*(a2 + 16))
  {
    goto LABEL_11;
  }

  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v5, *(a2 + 3));
  v7 = *(a2 + 3);
  if (v7)
  {
    v8 = *a2;
    v9 = 96 * v7;
    do
    {
      IPC::ArgumentCoder<WebKit::WebExtensionFrameParameters,void>::encode(v5, v8);
      v8 += 96;
      v9 -= 96;
    }

    while (v9);
  }

LABEL_8:
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext21WebNavigationGetFrameENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_23ObjectIdentifierGenericINS8_29WebExtensionTabIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSA_INS8_31WebExtensionFrameIdentifierTypeESD_yEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINSt3__18optionalINS8_27WebExtensionFrameParametersEEENS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSR_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F44C8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext21WebNavigationGetFrameENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_23ObjectIdentifierGenericINS8_29WebExtensionTabIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSA_INS8_31WebExtensionFrameIdentifierTypeESD_yEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINSt3__18optionalINS8_27WebExtensionFrameParametersEEENS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSR_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F44C8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext21WebNavigationGetFrameENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_23ObjectIdentifierGenericINS8_29WebExtensionTabIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSA_INS8_31WebExtensionFrameIdentifierTypeESD_yEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINSt3__18optionalINS8_27WebExtensionFrameParametersEEENS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSR_EE4callESR_(uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3672;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v13 = v5;
  if (a2[112])
  {
    v15 = 0;
    v6 = IPC::Encoder::operator<<<BOOL>(v5, &v15);
    if (a2[112] == 1)
    {
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v5, a2);
      goto LABEL_9;
    }

LABEL_12:
    mpark::throw_bad_variant_access(v6);
  }

  v14 = 1;
  v6 = IPC::Encoder::operator<<<BOOL>(v5, &v14);
  if (a2[112])
  {
    goto LABEL_12;
  }

  if (a2[96])
  {
    v16 = 1;
    IPC::Encoder::operator<<<BOOL>(v5, &v16);
    if ((a2[96] & 1) == 0)
    {
      v11 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::Decoder::decode<WebKit::WebExtensionWindowParameters>(v11, v12);
    }

    IPC::ArgumentCoder<WebKit::WebExtensionFrameParameters,void>::encode(v5, a2);
  }

  else
  {
    v17 = 0;
    IPC::Encoder::operator<<<BOOL>(v5, &v17);
  }

LABEL_9:
  IPC::Connection::sendMessageImpl(v3, &v13, 0, 0);
  result = v13;
  v13 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v7);
    return bmalloc::api::tzoneFree(v9, v10);
  }

  return result;
}

uint64_t IPC::Decoder::decode<WebKit::WebExtensionWindowParameters>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<WebKit::WebExtensionWindowParameters,void>::decode(a1, a2);
  if ((*(a2 + 96) & 1) == 0)
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext13WindowsCreateENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvRKNS8_28WebExtensionWindowParametersEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINSt3__18optionalISA_EENS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSM_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F44F0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext13WindowsCreateENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvRKNS8_28WebExtensionWindowParametersEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINSt3__18optionalISA_EENS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSM_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F44F0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext13WindowsCreateENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvRKNS8_28WebExtensionWindowParametersEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINSt3__18optionalISA_EENS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSM_EE4callESM_(uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3673;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v12 = v5;
  if (a2[104])
  {
    v14 = 0;
    v6 = IPC::Encoder::operator<<<BOOL>(v5, &v14);
    if (a2[104] == 1)
    {
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v5, a2);
      goto LABEL_9;
    }

LABEL_12:
    mpark::throw_bad_variant_access(v6);
  }

  v13 = 1;
  v6 = IPC::Encoder::operator<<<BOOL>(v5, &v13);
  if (a2[104])
  {
    goto LABEL_12;
  }

  if (a2[96])
  {
    v15 = 1;
    IPC::Encoder::operator<<<BOOL>(v5, &v15);
    if ((a2[96] & 1) == 0)
    {
      v11 = std::__throw_bad_optional_access[abi:sn200100]();
      return _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext10WindowsGetENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSA_INS8_32WebExtensionWindowIdentifierTypeESD_yEENS_9OptionSetINS8_28WebExtensionWindowTypeFilterEEENS8_18WebExtensionWindow12PopulateTabsEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINS8_28WebExtensionWindowParametersENS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJST_EED1Ev(v11);
    }

    IPC::ArgumentCoder<WebKit::WebExtensionWindowParameters,void>::encode(v5, a2);
  }

  else
  {
    v16 = 0;
    IPC::Encoder::operator<<<BOOL>(v5, &v16);
  }

LABEL_9:
  IPC::Connection::sendMessageImpl(v3, &v12, 0, 0);
  result = v12;
  v12 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v7);
    return bmalloc::api::tzoneFree(v9, v10);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext10WindowsGetENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSA_INS8_32WebExtensionWindowIdentifierTypeESD_yEENS_9OptionSetINS8_28WebExtensionWindowTypeFilterEEENS8_18WebExtensionWindow12PopulateTabsEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINS8_28WebExtensionWindowParametersENS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJST_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F4518;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext10WindowsGetENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSA_INS8_32WebExtensionWindowIdentifierTypeESD_yEENS_9OptionSetINS8_28WebExtensionWindowTypeFilterEEENS8_18WebExtensionWindow12PopulateTabsEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINS8_28WebExtensionWindowParametersENS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJST_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F4518;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext10WindowsGetENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSA_INS8_32WebExtensionWindowIdentifierTypeESD_yEENS_9OptionSetINS8_28WebExtensionWindowTypeFilterEEENS8_18WebExtensionWindow12PopulateTabsEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINS8_28WebExtensionWindowParametersENS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJST_EE4callEST_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3676;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<WebKit::WebExtensionWindowParameters,WTF::String>,void>::encode<IPC::Encoder>(v5, a2);
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

void *IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<WebKit::WebExtensionWindowParameters,WTF::String>,void>::encode<IPC::Encoder>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 96))
  {
    v7 = 0;
    v4 = IPC::Encoder::operator<<<BOOL>(a1, &v7);
    if (*(a2 + 96) == 1)
    {
      return IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
    }

LABEL_7:
    mpark::throw_bad_variant_access(v4);
  }

  v6 = 1;
  v4 = IPC::Encoder::operator<<<BOOL>(a1, &v6);
  if (*(a2 + 96))
  {
    goto LABEL_7;
  }

  return IPC::ArgumentCoder<WebKit::WebExtensionWindowParameters,void>::encode(a1, a2);
}

uint64_t IPC::Decoder::decode<std::tuple<WTF::OptionSet<WebKit::WebExtensionWindowTypeFilter>,WebKit::WebExtensionWindow::PopulateTabs>>(uint64_t *a1)
{
  v3 = IPC::Decoder::decode<WebKit::WebExtensionContentWorldType>(a1);
  if ((v3 & 0x100) != 0)
  {
    v4 = v3;
    v9 = IPC::Decoder::decode<WebCore::GraphicsContextGLSurfaceBuffer>(a1);
    v1 = v9;
    if ((v9 & 0xFF00) == 0)
    {
      v4 = 0;
    }

    if (v9 > 0xFFu)
    {
      v8 = 1;
      return v4 | (v1 << 8) | (v8 << 16);
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = *a1;
  v6 = a1[1];
  *a1 = 0;
  a1[1] = 0;
  v7 = a1[3];
  if (v7 && v6)
  {
    (*(*v7 + 16))(v7, v5);
  }

  v8 = 0;
  return v4 | (v1 << 8) | (v8 << 16);
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext21WindowsGetLastFocusedENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_9OptionSetINS8_28WebExtensionWindowTypeFilterEEENS8_18WebExtensionWindow12PopulateTabsEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINS8_28WebExtensionWindowParametersENS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSM_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F4540;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext21WindowsGetLastFocusedENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_9OptionSetINS8_28WebExtensionWindowTypeFilterEEENS8_18WebExtensionWindow12PopulateTabsEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINS8_28WebExtensionWindowParametersENS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSM_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F4540;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext21WindowsGetLastFocusedENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_9OptionSetINS8_28WebExtensionWindowTypeFilterEEENS8_18WebExtensionWindow12PopulateTabsEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINS8_28WebExtensionWindowParametersENS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSM_EE4callESM_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3675;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<WebKit::WebExtensionWindowParameters,WTF::String>,void>::encode<IPC::Encoder>(v5, a2);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext13WindowsGetAllENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_9OptionSetINS8_28WebExtensionWindowTypeFilterEEENS8_18WebExtensionWindow12PopulateTabsEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINS_6VectorINS8_28WebExtensionWindowParametersELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEENS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSQ_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F4568;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext13WindowsGetAllENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_9OptionSetINS8_28WebExtensionWindowTypeFilterEEENS8_18WebExtensionWindow12PopulateTabsEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINS_6VectorINS8_28WebExtensionWindowParametersELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEENS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSQ_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F4568;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext13WindowsGetAllENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_9OptionSetINS8_28WebExtensionWindowTypeFilterEEENS8_18WebExtensionWindow12PopulateTabsEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINS_6VectorINS8_28WebExtensionWindowParametersELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEENS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSQ_EE4callESQ_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3674;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v14 = v5;
  if (*(a2 + 16))
  {
    v16 = 0;
    v6 = IPC::Encoder::operator<<<BOOL>(v5, &v16);
    if (*(a2 + 16) == 1)
    {
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v5, a2);
      goto LABEL_8;
    }

LABEL_11:
    mpark::throw_bad_variant_access(v6);
  }

  v15 = 1;
  v6 = IPC::Encoder::operator<<<BOOL>(v5, &v15);
  if (*(a2 + 16))
  {
    goto LABEL_11;
  }

  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v5, *(a2 + 3));
  v7 = *(a2 + 3);
  if (v7)
  {
    v8 = *a2;
    v9 = 96 * v7;
    do
    {
      IPC::ArgumentCoder<WebKit::WebExtensionWindowParameters,void>::encode(v5, v8);
      v8 += 96;
      v9 -= 96;
    }

    while (v9);
  }

LABEL_8:
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext13WindowsUpdateENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_23ObjectIdentifierGenericINS8_32WebExtensionWindowIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENS8_28WebExtensionWindowParametersEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedISF_NS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSM_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F4590;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext13WindowsUpdateENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_23ObjectIdentifierGenericINS8_32WebExtensionWindowIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENS8_28WebExtensionWindowParametersEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedISF_NS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSM_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F4590;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext13WindowsUpdateENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_23ObjectIdentifierGenericINS8_32WebExtensionWindowIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENS8_28WebExtensionWindowParametersEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedISF_NS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSM_EE4callESM_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3678;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<WebKit::WebExtensionWindowParameters,WTF::String>,void>::encode<IPC::Encoder>(v5, a2);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext13WindowsRemoveENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_23ObjectIdentifierGenericINS8_32WebExtensionWindowIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvNS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSL_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F45B8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext13WindowsRemoveENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_23ObjectIdentifierGenericINS8_32WebExtensionWindowIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvNS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSL_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F45B8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext13WindowsRemoveENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_23ObjectIdentifierGenericINS8_32WebExtensionWindowIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvNS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSL_EE4callESL_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3677;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<void,WTF::String>,void>::encode<IPC::Encoder>(v5, a2);
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

_DWORD *WTF::RefCounted<WebKit::WebExtensionContextProxy>::deref(_DWORD *result, void *a2)
{
  if (*result == 1)
  {
    WebKit::WebExtensionContextProxy::~WebExtensionContextProxy((result - 4), a2);

    return bmalloc::api::tzoneFree(v3, v4);
  }

  else
  {
    --*result;
  }

  return result;
}

WTF::StringImpl *IPC::ArgumentCoder<std::tuple<WTF::String,WTF::String,WTF::String>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a1, &v9);
  if (v10 & 1) != 0 || ((v6 = *a1, v7 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (result = *(a1 + 3)) != 0) ? (v8 = v7 == 0) : (v8 = 1), !v8 && (result = (*(*result + 16))(result, v6), (v10)))
  {
    result = IPC::ArgumentCoder<std::tuple<WTF::String,WTF::String,WTF::String>,void>::decode<IPC::Decoder,WTF::String>(a1, &v9, a2);
    if (v10)
    {
      result = v9;
      v9 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v5);
        }
      }
    }
  }

  else
  {
    *a2 = 0;
    a2[24] = 0;
  }

  return result;
}

WTF::StringImpl *IPC::ArgumentCoder<std::tuple<WTF::String,WTF::String,WTF::String>,void>::decode<IPC::Decoder,WTF::String>@<X0>(IPC::Decoder *a1@<X0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a1, &v11);
  if (v12 & 1) != 0 || ((v8 = *a1, v9 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (result = *(a1 + 3)) != 0) ? (v10 = v9 == 0) : (v10 = 1), !v10 && (result = (*(*result + 16))(result, v8), (v12)))
  {
    result = IPC::ArgumentCoder<std::tuple<WTF::String,WTF::String,WTF::String>,void>::decode<IPC::Decoder,WTF::String,WTF::String>(a1, a2, &v11, a3);
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
    a3[24] = 0;
  }

  return result;
}

IPC::Decoder *IPC::ArgumentCoder<std::tuple<WTF::String,WTF::String,WTF::String>,void>::decode<IPC::Decoder,WTF::String,WTF::String>@<X0>(IPC::Decoder *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a1, &v15);
  if ((v16 & 1) == 0)
  {
    goto LABEL_7;
  }

  do
  {
    if (a2[1] & 1) != 0 && (a3[1])
    {
      v9 = *a2;
      *a2 = 0;
      v10 = *a3;
      *a3 = 0;
      *a4 = v9;
      *(a4 + 8) = v10;
      *(a4 + 16) = v15;
      v11 = 1;
      goto LABEL_5;
    }

    __break(1u);
LABEL_7:
    v12 = *a1;
    v13 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result)
    {
      v14 = v13 == 0;
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      break;
    }

    result = (*(*result + 16))(result, v12);
  }

  while ((v16 & 1) != 0);
  v11 = 0;
  *a4 = 0;
LABEL_5:
  *(a4 + 24) = v11;
  return result;
}

IPC::Decoder *IPC::Decoder::decode<std::optional<WebKit::WebExtensionMessageTargetParameters>>(IPC::Decoder *result, IPC::Decoder *a2)
{
  v3 = result;
  v17 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 2);
  v5 = *a2;
  v6 = *(a2 + 1);
  if (v6 <= &v4[-v5])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v10 = *(a2 + 3);
    if (v10)
    {
      if (v6)
      {
        (*(*v10 + 16))(v10);
        v5 = *a2;
        v6 = *(a2 + 1);
        goto LABEL_12;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
LABEL_12:
    *a2 = 0;
    *(a2 + 1) = 0;
    v11 = *(a2 + 3);
    if (v11)
    {
      if (v6)
      {
        (*(*v11 + 16))(v11, v5);
        v5 = *a2;
        v6 = *(a2 + 1);
        goto LABEL_15;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
LABEL_15:
    *a2 = 0;
    *(a2 + 1) = 0;
    v12 = *(a2 + 3);
    if (v12 && v6)
    {
      (*(*v12 + 16))(v12, v5);
    }

    goto LABEL_16;
  }

  *(a2 + 2) = v4 + 1;
  if (!v4)
  {
    goto LABEL_12;
  }

  v7 = *v4;
  if (v7 >= 2)
  {
    goto LABEL_15;
  }

  if (!v7)
  {
    *result = 0;
    *(result + 48) = 0;
    v8 = 1;
    goto LABEL_8;
  }

  result = IPC::Decoder::decode<WebKit::WebExtensionMessageTargetParameters>(v15, a2);
  v8 = v16;
  if (v16 == 1)
  {
    v9 = v15[1];
    *v3 = v15[0];
    *(v3 + 1) = v9;
    *(v3 + 2) = v15[2];
    *(v3 + 48) = v8;
LABEL_8:
    *(v3 + 64) = v8;
    return result;
  }

LABEL_16:
  *v3 = 0;
  *(v3 + 64) = 0;
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages24WebExtensionContextProxy27DispatchRuntimeMessageEventENS2_10ConnectionEN6WebKit24WebExtensionContextProxyES9_FvNS8_28WebExtensionContentWorldTypeERKNS_6StringERKNSt3__18optionalINS8_35WebExtensionMessageTargetParametersEEERKNS8_35WebExtensionMessageSenderParametersEONS_17CompletionHandlerIFvOSB_EEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSO_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F45E0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages24WebExtensionContextProxy27DispatchRuntimeMessageEventENS2_10ConnectionEN6WebKit24WebExtensionContextProxyES9_FvNS8_28WebExtensionContentWorldTypeERKNS_6StringERKNSt3__18optionalINS8_35WebExtensionMessageTargetParametersEEERKNS8_35WebExtensionMessageSenderParametersEONS_17CompletionHandlerIFvOSB_EEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSO_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F45E0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages24WebExtensionContextProxy27DispatchRuntimeMessageEventENS2_10ConnectionEN6WebKit24WebExtensionContextProxyES9_FvNS8_28WebExtensionContentWorldTypeERKNS_6StringERKNSt3__18optionalINS8_35WebExtensionMessageTargetParametersEEERKNS8_35WebExtensionMessageSenderParametersEONS_17CompletionHandlerIFvOSB_EEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSO_EE4callESO_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3590;
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages24WebExtensionContextProxy27DispatchRuntimeConnectEventENS2_10ConnectionEN6WebKit24WebExtensionContextProxyES9_FvNS8_28WebExtensionContentWorldTypeENS_23ObjectIdentifierGenericINS8_37WebExtensionPortChannelIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEERKNS_6StringERKNSt3__18optionalINS8_35WebExtensionMessageTargetParametersEEERKNS8_35WebExtensionMessageSenderParametersEONS_17CompletionHandlerIFvONS_14HashCountedSetINSB_INS8_26WebPageProxyIdentifierTypeESE_yEENS_11DefaultHashISV_EENS_10HashTraitsISV_EEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJS11_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F4608;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages24WebExtensionContextProxy27DispatchRuntimeConnectEventENS2_10ConnectionEN6WebKit24WebExtensionContextProxyES9_FvNS8_28WebExtensionContentWorldTypeENS_23ObjectIdentifierGenericINS8_37WebExtensionPortChannelIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEERKNS_6StringERKNSt3__18optionalINS8_35WebExtensionMessageTargetParametersEEERKNS8_35WebExtensionMessageSenderParametersEONS_17CompletionHandlerIFvONS_14HashCountedSetINSB_INS8_26WebPageProxyIdentifierTypeESE_yEENS_11DefaultHashISV_EENS_10HashTraitsISV_EEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJS11_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F4608;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages24WebExtensionContextProxy27DispatchRuntimeConnectEventENS2_10ConnectionEN6WebKit24WebExtensionContextProxyES9_FvNS8_28WebExtensionContentWorldTypeENS_23ObjectIdentifierGenericINS8_37WebExtensionPortChannelIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEERKNS_6StringERKNSt3__18optionalINS8_35WebExtensionMessageTargetParametersEEERKNS8_35WebExtensionMessageSenderParametersEONS_17CompletionHandlerIFvONS_14HashCountedSetINSB_INS8_26WebPageProxyIdentifierTypeESE_yEENS_11DefaultHashISV_EENS_10HashTraitsISV_EEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJS11_EE4callES11_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3589;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v16 = v5;
  if (*a2)
  {
    v6 = *(*a2 - 12);
  }

  else
  {
    v6 = 0;
  }

  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v5, v6);
  v7 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::WallTime>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::WallTime>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::WallTime,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::WallTime>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(a2);
  v8 = v7;
  v10 = v9;
  if (*a2)
  {
    v11 = *a2 + 16 * *(*a2 - 4);
  }

  else
  {
    v11 = 0;
  }

  if (v11 != v7)
  {
    do
    {
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v5, *v8);
      IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v5, *(v8 + 2));
      do
      {
        v8 += 2;
      }

      while (v8 != v10 && (*v8 + 1) <= 1);
    }

    while (v8 != v11);
  }

  IPC::Connection::sendMessageImpl(v3, &v16, 0, 0);
  result = v16;
  v16 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v12);
    return bmalloc::api::tzoneFree(v14, v15);
  }

  return result;
}

unint64_t IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,unsigned long long>>(uint64_t a1, uint64_t *a2)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if (v5)
  {
    v6 = v4;
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v8)
    {
      v9 = a2[1];
      v10 = ((a2[2] + 7) & 0xFFFFFFFFFFFFFFF8);
      v11 = v10 - *a2;
      v12 = v9 >= v11;
      v13 = v9 - v11;
      if (v12 && v13 > 7)
      {
        a2[2] = (v10 + 1);
        if (v10)
        {
          v15 = *v10;
          *a1 = v6;
          *(a1 + 8) = result;
          *(a1 + 16) = v15;
          *(a1 + 24) = 1;
          return result;
        }
      }

      else
      {
        *a2 = 0;
        a2[1] = 0;
        v16 = a2[3];
        if (v16)
        {
          if (v9)
          {
            (*(*v16 + 16))(v16);
            v9 = a2[1];
          }
        }

        else
        {
          v9 = 0;
        }
      }

      *a2 = 0;
      a2[1] = 0;
      v17 = a2[3];
      if (v17 && v9)
      {
        (*(*v17 + 16))(v17);
      }
    }
  }

  *a1 = 0;
  *(a1 + 24) = 0;
  v18 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  result = a2[3];
  if (result)
  {
    v19 = v18 == 0;
  }

  else
  {
    v19 = 1;
  }

  if (!v19)
  {
    v20 = *(*result + 16);

    return v20();
  }

  return result;
}

uint64_t IPC::Decoder::decode<std::tuple<WTF::String,WebKit::WebExtensionContentWorldType>>(uint64_t a1, IPC::Decoder *a2)
{
  IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a2, &v14);
  if ((v15 & 1) == 0)
  {
    goto LABEL_16;
  }

  while (1)
  {
    result = IPC::Decoder::decode<WebKit::WebExtensionContentWorldType>(a2);
    if ((result & 0x100) == 0)
    {
      break;
    }

    if (v15)
    {
      *a1 = v14;
      *(a1 + 8) = result;
      *(a1 + 16) = 1;
      return result;
    }

    __break(1u);
LABEL_16:
    v10 = *a2;
    v11 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v12 = *(a2 + 3);
    if (v12)
    {
      v13 = v11 == 0;
    }

    else
    {
      v13 = 1;
    }

    if (!v13)
    {
      (*(*v12 + 16))(v12, v10);
      if (v15)
      {
        continue;
      }
    }

    *a1 = 0;
    *(a1 + 16) = 0;
    goto LABEL_7;
  }

  *a1 = 0;
  v6 = v15;
  *(a1 + 16) = 0;
  if (v6)
  {
    v7 = v14;
    v14 = 0;
    if (v7)
    {
      if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, v5);
      }
    }
  }

LABEL_7:
  v8 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result && v8)
  {
    v9 = *(*result + 16);

    return v9();
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::optional<WebKit::WebExtensionWindowParameters>,void>::decode<IPC::Decoder>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a1;
  if (v3 <= &v4[-*a1])
  {
    *a1 = 0;
    a1[1] = 0;
    v14 = a1;
    v12 = a1[3];
    if (v12)
    {
      if (v3)
      {
        (*(*v12 + 16))(v12);
        v5 = *v14;
        v3 = v14[1];
        goto LABEL_15;
      }
    }

    else
    {
      v3 = 0;
    }

    v5 = 0;
LABEL_15:
    *v14 = 0;
    v14[1] = 0;
    v13 = v14[3];
    if (v13)
    {
      if (v3)
      {
        (*(*v13 + 16))(v13, v5);
        v5 = *v14;
        v3 = v14[1];
        goto LABEL_19;
      }
    }

    else
    {
      v3 = 0;
    }

    v5 = 0;
LABEL_19:
    *v14 = 0;
    v14[1] = 0;
    result = v14[3];
    if (result && v3)
    {
      result = (*(*result + 16))(result, v5);
    }

    goto LABEL_20;
  }

  a1[2] = (v4 + 1);
  if (!v4)
  {
    v14 = a1;
    goto LABEL_15;
  }

  v6 = *v4;
  if (v6 >= 2)
  {
    v14 = a1;
    goto LABEL_19;
  }

  if (!v6)
  {
    LOBYTE(v15) = 0;
    v22 = 0;
    result = std::__optional_move_base<WebKit::WebExtensionWindowParameters,false>::__optional_move_base[abi:sn200100](a2, &v15);
    *(a2 + 104) = 1;
    if (v22 == 1 && v19 == 1)
    {
      return WTF::Vector<WebKit::WebExtensionTabParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v17, v8);
    }

    return result;
  }

  result = IPC::Decoder::decode<WebKit::WebExtensionWindowParameters>(a1, &v15);
  if (v22 != 1)
  {
LABEL_20:
    *a2 = 0;
    *(a2 + 104) = 0;
    return result;
  }

  *a2 = v15;
  *(a2 + 16) = v16;
  *(a2 + 24) = 0;
  *(a2 + 40) = 0;
  if (v19)
  {
    *(a2 + 24) = v17;
    v9 = v18;
    v17 = 0;
    v18 = 0;
    *(a2 + 32) = v9;
    *(a2 + 40) = 1;
    v10 = v21[0];
    *(a2 + 48) = v20;
    *(a2 + 64) = v10;
    *(a2 + 76) = *(v21 + 12);
    *(a2 + 96) = 1;
    *(a2 + 104) = 1;
    return WTF::Vector<WebKit::WebExtensionTabParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v17, v8);
  }

  v11 = v21[0];
  *(a2 + 48) = v20;
  *(a2 + 64) = v11;
  *(a2 + 76) = *(v21 + 12);
  *(a2 + 96) = 1;
  *(a2 + 104) = 1;
  return result;
}

uint64_t std::__optional_move_base<WebKit::WebExtensionWindowParameters,false>::__optional_move_base[abi:sn200100](uint64_t a1, __int128 *a2)
{
  *a1 = 0;
  *(a1 + 96) = 0;
  if (*(a2 + 96) == 1)
  {
    v4 = *a2;
    *(a1 + 16) = *(a2 + 4);
    *a1 = v4;
    *(a1 + 24) = 0;
    v5 = (a1 + 24);
    *(a1 + 40) = 0;
    if (*(a2 + 40) == 1)
    {
      *v5 = 0;
      *(a1 + 32) = 0;
      WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(v5, a2 + 6);
      *(a1 + 40) = 1;
    }

    v6 = a2[3];
    v7 = a2[4];
    *(a1 + 76) = *(a2 + 76);
    *(a1 + 48) = v6;
    *(a1 + 64) = v7;
    *(a1 + 96) = 1;
  }

  return a1;
}

void API::Attachment::setFileWrapper(atomic_uchar *this, NSFileWrapper *a2)
{
  v4 = 0;
  v5 = this + 16;
  atomic_compare_exchange_strong_explicit(this + 16, &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (!v4)
  {
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  MEMORY[0x19EB01E30](this + 16);
  if (a2)
  {
LABEL_3:
    v6 = a2;
  }

LABEL_4:
  v7 = *(this + 3);
  *(this + 3) = a2;
  if (v7)
  {
  }

  v8 = 1;
  atomic_compare_exchange_strong_explicit(v5, &v8, 0, memory_order_release, memory_order_relaxed);
  if (v8 != 1)
  {

    WTF::Lock::unlockSlow(v5);
  }
}

void sub_19DA5B014(_Unwind_Exception *exception_object)
{
  v3 = 1;
  atomic_compare_exchange_strong_explicit(v1, &v3, 0, memory_order_release, memory_order_relaxed);
  if (v3 != 1)
  {
    WTF::Lock::unlockSlow(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t API::Attachment::doWithFileWrapper(uint64_t a1, void *a2)
{
  v4 = 0;
  v5 = (a1 + 16);
  atomic_compare_exchange_strong_explicit((a1 + 16), &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    MEMORY[0x19EB01E30](a1 + 16);
  }

  result = (*(**a2 + 16))(*a2, *(a1 + 24));
  v7 = 1;
  atomic_compare_exchange_strong_explicit(v5, &v7, 0, memory_order_release, memory_order_relaxed);
  if (v7 != 1)
  {

    return WTF::Lock::unlockSlow(v5);
  }

  return result;
}

void sub_19DA5B0EC(_Unwind_Exception *exception_object)
{
  v3 = 1;
  atomic_compare_exchange_strong_explicit(v1, &v3, 0, memory_order_release, memory_order_relaxed);
  if (v3 != 1)
  {
    WTF::Lock::unlockSlow(v1);
  }

  _Unwind_Resume(exception_object);
}

void API::Attachment::mimeType(API::Attachment *this@<X0>, atomic_uint **a2@<X8>)
{
  v3 = *(this + 6);
  if (v3 && v3[1])
  {
    atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&inUTI, v3, this);
    if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) != 2)
    {
      goto LABEL_12;
    }

    v5 = v3;
    goto LABEL_11;
  }

  API::mimeTypeInferredFromFileExtension(&v12, this);
  v6 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&inUTI, v6);
    if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v4);
    }
  }

  else
  {
    inUTI = &stru_1F1147748;
    v7 = &stru_1F1147748;
  }

  v5 = v12;
  v12 = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
LABEL_11:
    WTF::StringImpl::destroy(v5, v4);
  }

LABEL_12:
  if ([(__CFString *)inUTI length])
  {
    if (API::isDeclaredOrDynamicTypeIdentifier(inUTI, v8))
    {
      v9 = UTTypeCopyPreferredTagWithClass(inUTI, *MEMORY[0x1E6963718]);
      MEMORY[0x19EB02040](a2, v9);
      if (v9)
      {
        CFRelease(v9);
      }
    }

    else
    {
      MEMORY[0x19EB02040](a2, inUTI);
    }
  }

  else
  {
    v10 = *MEMORY[0x1E696EBA0];
    if (*MEMORY[0x1E696EBA0])
    {
      atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
    }

    *a2 = v10;
  }

  v11 = inUTI;
  inUTI = 0;
  if (v11)
  {
  }
}

void sub_19DA5B278(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void API::mimeTypeInferredFromFileExtension(API *this, const API::Attachment *a2)
{
  API::Attachment::fileName(a2, &v14);
  v3 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v15, v3);
    if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, v4);
    }
  }

  else
  {
    v15 = &stru_1F1147748;
    v5 = &stru_1F1147748;
  }

  v6 = [(WTF::StringImpl *)v15 pathExtension];
  v8 = v6;
  if (v6)
  {
    v9 = v6;
  }

  v10 = v15;
  v15 = 0;
  if (v10)
  {
  }

  v11 = v14;
  v14 = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v7);
    if (v8)
    {
      goto LABEL_12;
    }

LABEL_17:
    *this = 0;
    return;
  }

  if (!v8)
  {
    goto LABEL_17;
  }

LABEL_12:
  MEMORY[0x19EB02040](&v15, v8);
  WebCore::MIMETypeRegistry::mimeTypeForExtension();
  v13 = v15;
  v15 = 0;
  if (v13)
  {
    if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v12);
    }
  }
}

void sub_19DA5B440(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, WTF::StringImpl *a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void API::Attachment::utiType(API::Attachment *this@<X0>, atomic_uint **a2@<X8>)
{
  v3 = *(this + 6);
  if (v3 && v3[1])
  {
    atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&inTag, v3, this);
    if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) != 2)
    {
      goto LABEL_12;
    }

    v5 = v3;
    goto LABEL_11;
  }

  API::mimeTypeInferredFromFileExtension(&v12, this);
  v6 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&inTag, v6);
    if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v4);
    }
  }

  else
  {
    inTag = &stru_1F1147748;
    v7 = &stru_1F1147748;
  }

  v5 = v12;
  v12 = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
LABEL_11:
    WTF::StringImpl::destroy(v5, v4);
  }

LABEL_12:
  if ([(__CFString *)inTag length])
  {
    if (API::isDeclaredOrDynamicTypeIdentifier(inTag, v8))
    {
      MEMORY[0x19EB02040](a2, inTag);
    }

    else
    {
      PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(*MEMORY[0x1E6963718], inTag, 0);
      MEMORY[0x19EB02040](a2, PreferredIdentifierForTag);
      if (PreferredIdentifierForTag)
      {
        CFRelease(PreferredIdentifierForTag);
      }
    }
  }

  else
  {
    v9 = *MEMORY[0x1E696EBA0];
    if (*MEMORY[0x1E696EBA0])
    {
      atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
    }

    *a2 = v9;
  }

  v11 = inTag;
  inTag = 0;
  if (v11)
  {
  }
}

void sub_19DA5B67C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t API::Attachment::fileName@<X0>(API::Attachment *this@<X0>, uint64_t a2@<X8>)
{
  v4 = 0;
  v5 = this + 16;
  atomic_compare_exchange_strong_explicit(this + 16, &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    MEMORY[0x19EB01E30](this + 16);
  }

  v6 = [objc_msgSend(*(this + 3) "filename")];
  v7 = *(this + 3);
  if (v6)
  {
    v8 = [v7 filename];
  }

  else
  {
    v8 = [v7 preferredFilename];
  }

  result = MEMORY[0x19EB02040](a2, v8);
  v10 = 1;
  atomic_compare_exchange_strong_explicit(v5, &v10, 0, memory_order_release, memory_order_relaxed);
  if (v10 != 1)
  {

    return WTF::Lock::unlockSlow(v5);
  }

  return result;
}

void sub_19DA5B7CC(_Unwind_Exception *exception_object)
{
  v3 = 1;
  atomic_compare_exchange_strong_explicit(v1, &v3, 0, memory_order_release, memory_order_relaxed);
  if (v3 != 1)
  {
    WTF::Lock::unlockSlow(v1);
  }

  _Unwind_Resume(exception_object);
}

void API::Attachment::setFileWrapperAndUpdateContentType(API::Attachment *this, NSFileWrapper *a2, NSString *a3)
{
  v3 = a3;
  if (a3)
  {
    v6 = a3;
  }

  if (![(NSString *)v3 length])
  {
    if ([(NSFileWrapper *)a2 isDirectory])
    {
      v7 = *MEMORY[0x1E69637A8];
      if (*MEMORY[0x1E69637A8])
      {
        v8 = v7;
      }

LABEL_7:
      if (v3)
      {
      }

      v3 = v7;
      goto LABEL_30;
    }

    if ([(NSFileWrapper *)a2 isRegularFile])
    {
      if ([(NSString *)[(NSFileWrapper *)a2 filename] length])
      {
        v9 = [(NSFileWrapper *)a2 filename];
      }

      else
      {
        v9 = [(NSFileWrapper *)a2 preferredFilename];
      }

      v10 = [(NSString *)v9 pathExtension];
      v11 = v10;
      if (v10)
      {
        v12 = v10;
        MEMORY[0x19EB02040](&v25, v11);
        WebCore::MIMETypeRegistry::mimeTypeForExtension();
        v13 = v26;
        if (v26)
        {
          atomic_fetch_add_explicit(v26, 2u, memory_order_relaxed);
          MEMORY[0x19EB00B70](&v27, v13);
          if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v13, v14);
          }
        }

        else
        {
          v27 = &stru_1F1147748;
          v15 = &stru_1F1147748;
        }

        v16 = v27;
        v27 = 0;
        if (v3)
        {

          v17 = v27;
          v27 = 0;
          if (v17)
          {
          }
        }

        v18 = v26;
        v26 = 0;
        if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v18, v14);
        }

        v19 = v25;
        v25 = 0;
        if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v19, v14);
        }

        v3 = v16;
      }

      if (![(NSString *)v3 length])
      {
        v7 = *MEMORY[0x1E6963798];
        if (*MEMORY[0x1E6963798])
        {
          v24 = v7;
        }

        goto LABEL_7;
      }
    }
  }

LABEL_30:
  MEMORY[0x19EB02040](&v27, v3);
  v21 = v27;
  if (v27)
  {
    atomic_fetch_add_explicit(v27, 2u, memory_order_relaxed);
  }

  v22 = *(this + 6);
  *(this + 6) = v21;
  if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v22, v20);
  }

  v23 = v27;
  v27 = 0;
  if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v23, v20);
  }

  API::Attachment::setFileWrapper(this, a2);
  if (v3)
  {
  }
}

void sub_19DA5BA38(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WTF::StringImpl *a11)
{
  if (a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  if (a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, a2);
  }

  if (v11)
  {
  }

  _Unwind_Resume(a1);
}

unint64_t API::Attachment::fileSizeForDisplay(API::Attachment *this)
{
  v2 = 0;
  v3 = this + 16;
  atomic_compare_exchange_strong_explicit(this + 16, &v2, 1u, memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    MEMORY[0x19EB01E30](this + 16);
  }

  if ([*(this + 3) isRegularFile])
  {
    v4 = [*(this + 3) fileAttributes];
    v5 = [objc_msgSend(v4 objectForKeyedSubscript:{*MEMORY[0x1E696A3B8]), "unsignedLongLongValue"}];
    if (!v5)
    {
      v5 = [objc_msgSend(*(this + 3) "regularFileContents")];
    }

    v6 = v5 & 0xFFFFFFFFFFFFFF00;
  }

  else
  {
    LOBYTE(v5) = 0;
    v6 = 0;
  }

  v7 = 1;
  atomic_compare_exchange_strong_explicit(v3, &v7, 0, memory_order_release, memory_order_relaxed);
  if (v7 != 1)
  {
    v11 = v5;
    v9 = v3;
    v10 = v6;
    WTF::Lock::unlockSlow(v9);
    v6 = v10;
    LOBYTE(v5) = v11;
  }

  return v6 | v5;
}

void sub_19DA5BBA4(_Unwind_Exception *exception_object)
{
  v3 = 1;
  atomic_compare_exchange_strong_explicit(v1, &v3, 0, memory_order_release, memory_order_relaxed);
  if (v3 != 1)
  {
    WTF::Lock::unlockSlow(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t API::Attachment::associatedElementData@<X0>(uint64_t this@<X0>, uint64_t *a2@<X8>)
{
  if (*(this + 65))
  {
    v3 = this;
    v4 = 0;
    v9 = 0;
    v5 = (this + 16);
    atomic_compare_exchange_strong_explicit((this + 16), &v4, 1u, memory_order_acquire, memory_order_acquire);
    if (v4)
    {
      MEMORY[0x19EB01E30](this + 16);
    }

    this = [*(v3 + 24) isRegularFile];
    v7 = this;
    if (this)
    {
      this = [*(v3 + 24) regularFileContents];
      v9 = this;
    }

    else
    {
      *a2 = 0;
    }

    v8 = 1;
    atomic_compare_exchange_strong_explicit(v5, &v8, 0, memory_order_release, memory_order_relaxed);
    if (v8 == 1)
    {
      if (!v7)
      {
        return this;
      }
    }

    else
    {
      this = WTF::Lock::unlockSlow(v5);
      if (!v7)
      {
        return this;
      }
    }

    if (v9)
    {
      return WebCore::SharedBuffer::create<NSData *&>(&v9, v6, a2);
    }
  }

  *a2 = 0;
  return this;
}

void sub_19DA5BC9C(_Unwind_Exception *exception_object)
{
  v3 = 1;
  atomic_compare_exchange_strong_explicit(v1, &v3, 0, memory_order_release, memory_order_relaxed);
  if (v3 != 1)
  {
    WTF::Lock::unlockSlow(v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL API::Attachment::isEmpty(atomic_uchar *this)
{
  v2 = 0;
  v3 = this + 16;
  v4 = 1;
  atomic_compare_exchange_strong_explicit(this + 16, &v2, 1u, memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    MEMORY[0x19EB01E30](this + 16);
  }

  v5 = *(this + 3);
  atomic_compare_exchange_strong_explicit(v3, &v4, 0, memory_order_release, memory_order_relaxed);
  if (v4 != 1)
  {
    WTF::Lock::unlockSlow(v3);
  }

  return v5 == 0;
}

atomic_uchar *API::Attachment::createSerializedRepresentation@<X0>(atomic_uchar *this@<X0>, uint64_t *a2@<X8>)
{
  v2 = this;
  v4 = 0;
  v10 = 0;
  v5 = this + 16;
  atomic_compare_exchange_strong_explicit(this + 16, &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    this = MEMORY[0x19EB01E30](this + 16);
  }

  if (*(v2 + 3) && (v6 = *(v2 + 7)) != 0 && *(v6 + 8))
  {
    v7 = 1;
    this = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:? requiringSecureCoding:? error:?];
    v10 = this;
    atomic_compare_exchange_strong_explicit(v5, &v7, 0, memory_order_release, memory_order_relaxed);
    if (v7 != 1)
    {
      this = WTF::Lock::unlockSlow(v5);
    }

    if (v10)
    {
      return WebCore::SharedBuffer::create<NSData *&>(&v10, v8, a2);
    }

    else
    {
      *a2 = 0;
    }
  }

  else
  {
    *a2 = 0;
    v9 = 1;
    atomic_compare_exchange_strong_explicit(v5, &v9, 0, memory_order_release, memory_order_relaxed);
    if (v9 != 1)
    {

      return WTF::Lock::unlockSlow(v5);
    }
  }

  return this;
}

void sub_19DA5BE38(_Unwind_Exception *exception_object)
{
  atomic_compare_exchange_strong_explicit(v1, &v2, 0, memory_order_release, memory_order_relaxed);
  if (v2 != 1)
  {
    WTF::Lock::unlockSlow(v1);
  }

  _Unwind_Resume(exception_object);
}

void API::Attachment::updateFromSerializedRepresentation(uint64_t a1, WebCore::SharedBuffer **a2, atomic_uint **a3)
{
  v3 = *(a1 + 56);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      CFRetain(*(v4 - 8));
      v8 = *(v4 + 40);
      if (!v8)
      {
        goto LABEL_21;
      }

      v9 = *(v8 + 8);
      if (!v9)
      {
        goto LABEL_21;
      }

      (*(*v9 + 1712))(v9);
      WebCore::SharedBuffer::createNSData(&v23, *a2);
      if (!v23)
      {
LABEL_20:
        (*(*v9 + 1720))(v9);
LABEL_21:
        CFRelease(*(v4 - 8));
        return;
      }

      v10 = MEMORY[0x1E696ACD0];
      v11 = (*(*v9 + 1848))(v9);
      v12 = [v10 unarchivedObjectOfClasses:v11 fromData:v23 error:0];
      v13 = v12;
      if (v12)
      {
        v14 = v12;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_16;
      }

      *(a1 + 66) = 1;
      v15 = *a3;
      if (v15)
      {
        atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed);
        MEMORY[0x19EB00B70](&v22, v15);
        if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v15, v16);
        }
      }

      else
      {
        v22 = &stru_1F1147748;
        v17 = &stru_1F1147748;
      }

      API::Attachment::setFileWrapperAndUpdateContentType(a1, v13, v22);
      v18 = v22;
      v22 = 0;
      if (v18)
      {
      }

      v19 = WTF::fastMalloc(0x10);
      *v19 = &unk_1F10F4700;
      v22 = v19;
      WebKit::WebPageProxy::updateAttachmentAttributes(v4 - 16, a1, &v22);
      v20 = v22;
      v22 = 0;
      if (v20)
      {
        (*(*v20 + 1))(v20);
        if (!v13)
        {
LABEL_18:
          v21 = v23;
          v23 = 0;
          if (v21)
          {
          }

          goto LABEL_20;
        }
      }

      else
      {
LABEL_16:
        if (!v13)
        {
          goto LABEL_18;
        }
      }

      goto LABEL_18;
    }
  }
}

void sub_19DA5C0B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  if (v11)
  {
  }

  if (a10)
  {
  }

  (*(*v10 + 1720))(v10);
  CFRelease(*(v12 - 8));
  _Unwind_Resume(a1);
}

void API::Attachment::cloneFileWrapperTo(API::Attachment *this, API::Attachment *a2)
{
  v4 = 0;
  *(a2 + 66) = *(this + 66);
  v5 = this + 16;
  atomic_compare_exchange_strong_explicit(this + 16, &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    MEMORY[0x19EB01E30](this + 16);
  }

  API::Attachment::setFileWrapper(a2, *(this + 3));
  v6 = 1;
  atomic_compare_exchange_strong_explicit(v5, &v6, 0, memory_order_release, memory_order_relaxed);
  if (v6 != 1)
  {

    WTF::Lock::unlockSlow(v5);
  }
}

void sub_19DA5C234(_Unwind_Exception *exception_object)
{
  v3 = 1;
  atomic_compare_exchange_strong_explicit(v1, &v3, 0, memory_order_release, memory_order_relaxed);
  if (v3 != 1)
  {
    WTF::Lock::unlockSlow(v1);
  }

  _Unwind_Resume(exception_object);
}

void API::ContentRuleListStore::defaultStorePath(API::ContentRuleListStore *this)
{
  if ((_MergedGlobals_64 & 1) == 0)
  {
    qword_1ED6423C8 = 0;
    _MergedGlobals_64 = 1;
  }

  if (qword_1ED6423C0 != -1)
  {
    dispatch_once(&qword_1ED6423C0, &__block_literal_global_15);
  }

  v1 = [MEMORY[0x1E696AC08] defaultManager];
  [v1 createDirectoryAtURL:qword_1ED6423C8 withIntermediateDirectories:1 attributes:0 error:0];
  [objc_msgSend(qword_1ED6423C8 "absoluteURL")];

  JUMPOUT(0x19EB02040);
}

void ___ZN3API20ContentRuleListStore16defaultStorePathEv_block_invoke()
{
  v0 = [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
  if (v0)
  {
    v1 = [v0 URLByAppendingPathComponent:@"WebKit" isDirectory:1];
    if ((WebKit::processHasContainer(v1) & 1) == 0)
    {
      v2 = [objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")];
      if (!v2)
      {
        v2 = [objc_msgSend(MEMORY[0x1E696AE30] "processInfo")];
      }

      v1 = [v1 URLByAppendingPathComponent:v2 isDirectory:1];
    }

    v3 = [v1 URLByAppendingPathComponent:@"ContentRuleLists" isDirectory:1];
    v4 = v3;
    if (v3)
    {
      v5 = v3;
    }

    v6 = qword_1ED6423C8;
    qword_1ED6423C8 = v4;
    if (v6)
    {
    }
  }

  else
  {
    __break(0xC471u);
  }
}

void API::SerializedScriptValue::deserializationContext(API::SerializedScriptValue *this@<X0>, OpaqueJSContext **a2@<X8>)
{
  {
    API::SharedJSContext::SharedJSContext(this);
  }

  API::SharedJSContext::ensureContext(&v5);
  v4 = v5;
  v3 = [v5 JSGlobalContextRef];
  *a2 = v3;
  if (v3)
  {
    JSGlobalContextRetain(v3);
  }

  if (v4)
  {
  }
}

void sub_19DA5C4A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9)
{
  if (a9)
  {
  }

  _Unwind_Resume(exception_object);
}

id API::SharedJSContext::ensureContext(API::SharedJSContext *this)
{
  WTF::MonotonicTime::now(this);
  qword_1ED6423A8 = v2;
  result = API::SharedJSContext::singleton(void)::sharedContext;
  if (API::SharedJSContext::singleton(void)::sharedContext)
  {
    *this = API::SharedJSContext::singleton(void)::sharedContext;
LABEL_5:

    return result;
  }

  JSRemoteInspectorGetInspectionFollowsInternalPolicies();
  JSRemoteInspectorSetInspectionFollowsInternalPolicies();
  JSRemoteInspectorGetInspectionEnabledByDefault();
  JSRemoteInspectorSetInspectionEnabledByDefault();
  v4 = objc_alloc_init(MEMORY[0x1E696EB40]);
  v5 = API::SharedJSContext::singleton(void)::sharedContext;
  API::SharedJSContext::singleton(void)::sharedContext = v4;
  if (v5)
  {
  }

  JSRemoteInspectorSetInspectionEnabledByDefault();
  JSRemoteInspectorSetInspectionFollowsInternalPolicies();
  WTF::RunLoop::TimerBase::start();
  result = API::SharedJSContext::singleton(void)::sharedContext;
  *this = API::SharedJSContext::singleton(void)::sharedContext;
  if (result)
  {
    goto LABEL_5;
  }

  return result;
}

uint64_t readOnlyAccessPaths(void)
{
  if (byte_1ED6423BC == 1)
  {
    return qword_1ED6423E8;
  }

  result = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{2, v0, v1}];
  qword_1ED6423E8 = result;
  byte_1ED6423BC = 1;
  return result;
}

uint64_t WTF::dynamic_objc_cast<NSURL>(uint64_t result)
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

void sub_19DA5D1B8(_Unwind_Exception *exception_object)
{
  *v1 = 0;
  if (v2)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DA5DC18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a61, 8);
  v70 = a67;
  a67 = 0;
  if (v70)
  {
    WTF::RefCounted<WebKit::ProcessThrottlerActivity>::deref((v70 + 8), v69);
  }

  _Block_object_dispose((v67 - 248), 8);
  v71 = *(v67 - 200);
  *(v67 - 200) = 0;
  if (v71)
  {
  }

  _Block_object_dispose((v67 - 192), 8);
  v72 = *(v67 - 144);
  *(v67 - 144) = 0;
  if (v72)
  {
  }

  _Block_object_dispose((v67 - 136), 8);
  v73 = *(v67 - 88);
  *(v67 - 88) = 0;
  if (v73)
  {
  }

  _Block_object_dispose((v67 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  return result;
}

void __Block_byref_object_dispose__3(uint64_t a1)
{
  v1 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v1)
  {
  }
}

uint64_t __Block_byref_object_copy__203(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  return result;
}

void __Block_byref_object_dispose__204(uint64_t a1)
{
  v1 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v1)
  {
  }
}

uint64_t __Block_byref_object_copy__207(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  return result;
}

void __Block_byref_object_dispose__208(uint64_t a1)
{
  v1 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v1)
  {
  }
}

uint64_t __Block_byref_object_copy__210(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  return result;
}

_DWORD *__Block_byref_object_dispose__211(_DWORD *result, void *a2)
{
  v2 = *(result + 6);
  *(result + 6) = 0;
  if (v2)
  {
    return WTF::RefCounted<WebKit::ProcessThrottlerActivity>::deref((v2 + 8), a2);
  }

  return result;
}

void sub_19DA5DF24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (v10)
  {
  }

  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DA5DFBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DA5E508(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DA5E600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  CFRelease(*(v9 + 8));
  if (a9)
  {
    CFRelease(*(a9 + 8));
  }

  _Unwind_Resume(a1);
}

void sub_19DA5E6EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  CFRelease(*(v10 + 8));
  if (a10)
  {
    CFRelease(*(a10 + 8));
  }

  _Unwind_Resume(a1);
}

void sub_19DA5E7D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  CFRelease(*(v10 + 8));
  if (a10)
  {
    CFRelease(*(a10 + 8));
  }

  _Unwind_Resume(a1);
}

void sub_19DA5E8CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  CFRelease(*(v10 + 8));
  if (a10)
  {
    CFRelease(*(a10 + 8));
  }

  _Unwind_Resume(a1);
}

void sub_19DA5E9C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    CFRelease(*(a10 + 8));
  }

  if (a9)
  {
    CFRelease(*(a9 + 8));
  }

  _Unwind_Resume(exception_object);
}

void sub_19DA5EACC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    CFRelease(*(a10 + 8));
  }

  if (a9)
  {
    CFRelease(*(a9 + 8));
  }

  _Unwind_Resume(exception_object);
}

void sub_19DA5EBA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    CFRelease(*(a10 + 8));
  }

  _Unwind_Resume(exception_object);
}

void sub_19DA5ED44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    CFRelease(*(a10 + 8));
  }

  _Unwind_Resume(exception_object);
}

void sub_19DA5EE28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  CFRelease(*(v10 + 16));
  _Unwind_Resume(a1);
}

void sub_19DA5EEF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    CFRelease(*(a10 + 8));
  }

  _Unwind_Resume(exception_object);
}

uint64_t API::SharedJSContext::SharedJSContext(API::SharedJSContext *this)
{
  API::SharedJSContext::singleton(void)::sharedContext = 0;
  v1 = WTF::RunLoop::mainSingleton(this);
  v2 = v1;
  while (1)
  {
    v3 = *(v1 + 8);
    if ((v3 & 1) == 0)
    {
      break;
    }

    v5 = *(v1 + 8);
    atomic_compare_exchange_strong_explicit((v1 + 8), &v5, v3 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v5 == v3)
    {
      goto LABEL_4;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v1 + 8));
LABEL_4:
  result = WTF::RunLoop::Timer::Timer<API::SharedJSContext>();
  if (v2)
  {
    result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v2 + 8));
  }

  qword_1ED6423A8 = 0;
  return result;
}

void sub_19DA5F11C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((a10 + 8));
  }

  v12 = *(v10 + 880);
  *(v10 + 880) = 0;
  if (v12)
  {
  }

  _Unwind_Resume(exception_object);
}

void API::SharedJSContext::releaseContextIfNecessary(API::SharedJSContext *this)
{
  WTF::MonotonicTime::now(this);
  if (v2 - *(this + 7) < 10.0)
  {

    WTF::RunLoop::TimerBase::start();
  }

  else
  {
    v3 = *this;
    *this = 0;
    if (v3)
    {
    }
  }
}

uint64_t WTF::RunLoop::Timer::Timer<API::SharedJSContext>()
{
  v0 = WTF::fastMalloc(0x20);
  *v0 = &unk_1F10F46D8;
  v0[1] = &API::SharedJSContext::singleton(void)::sharedContext;
  v0[2] = API::SharedJSContext::releaseContextIfNecessary;
  v0[3] = 0;
  result = WTF::RunLoop::TimerBase::TimerBase();
  qword_1ED642378 = &unk_1F10E6DC8;
  qword_1ED6423A0 = v0;
  return result;
}

uint64_t WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<API::SharedJSContext>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,API::SharedJSContext *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>::call(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = (a1[1] + (v2 >> 1));
  if (v2)
  {
    return (*(*v3 + v1))();
  }

  else
  {
    return v1(v3);
  }
}

WebCore::IOSurface **WTF::RefCounted<WebKit::ViewSnapshot>::deref(WebCore::IOSurface **result)
{
  if (*result == 1)
  {
    WebKit::ViewSnapshot::~ViewSnapshot(result - 1);

    return WTF::fastFree(v2, v3);
  }

  else
  {
    --*result;
  }

  return result;
}

void WebKit::WebExtensionController::didReceiveMessage(CFTypeRef *this, IPC::Connection *a2, IPC::Decoder *a3)
{
  v133 = *MEMORY[0x1E69E9840];
  CFRetain(this[1]);
  v10 = *(a3 + 25);
  if (v10 > 0x7D2)
  {
    if (*(a3 + 25) <= 0x7D5u)
    {
      if (v10 != 2003)
      {
        if (v10 != 2004)
        {
          if (v10 == 2005)
          {
            if ((this[22] & 2) == 0)
            {
              v11 = qword_1ED6416C8;
              if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315138;
                *&buf[4] = "WebExtensionController_TestLogMessage";
                v12 = "Message %s fails validation";
LABEL_69:
                v23 = v11;
                v24 = 12;
LABEL_70:
                _os_log_error_impl(&dword_19D52D000, v23, OS_LOG_TYPE_ERROR, v12, buf, v24);
                goto LABEL_71;
              }

              goto LABEL_71;
            }

            IPC::Decoder::decode<std::tuple<WTF::String,WTF::String,unsigned int>>(buf, a3);
            if (v129 != 1)
            {
              goto LABEL_72;
            }

            v49 = WebKit::WebExtensionController::testLogMessage;
            goto LABEL_122;
          }

LABEL_56:
          v19 = qword_1ED6416C8;
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
            *buf = 136315394;
            *&buf[4] = v21;
            *&buf[12] = 2048;
            *&buf[14] = v22;
            v12 = "Unhandled message %s to %llu";
            v23 = v19;
            v24 = 22;
            goto LABEL_70;
          }

          goto LABEL_71;
        }

        if ((this[22] & 2) == 0)
        {
          v11 = qword_1ED6416C8;
          if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315138;
            *&buf[4] = "WebExtensionController_TestFinished";
            v12 = "Message %s fails validation";
            goto LABEL_69;
          }

          goto LABEL_71;
        }

        IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, &v124);
        if ((v125 & 1) == 0)
        {
          v76 = *a3;
          v77 = *(a3 + 1);
          *a3 = 0;
          *(a3 + 1) = 0;
          v78 = *(a3 + 3);
          if (!v78)
          {
            goto LABEL_71;
          }

          if (!v77)
          {
            goto LABEL_71;
          }

          (*(*v78 + 16))(v78, v76);
          if ((v125 & 1) == 0)
          {
            goto LABEL_71;
          }
        }

        v28 = *(a3 + 1);
        v29 = *(a3 + 2);
        v30 = *a3;
        if (v28 <= &v29[-*a3])
        {
          *a3 = 0;
          *(a3 + 1) = 0;
          v119 = *(a3 + 3);
          if (v119)
          {
            if (v28)
            {
              (*(*v119 + 16))(v119);
              v28 = *(a3 + 1);
            }
          }

          else
          {
            v28 = 0;
          }
        }

        else
        {
          *(a3 + 2) = v29 + 1;
          if (v29)
          {
            v10 = *v29;
            if (v10 < 2)
            {
              IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, &v126);
              if ((v127 & 1) == 0)
              {
                v30 = *a3;
                v90 = *(a3 + 1);
                *a3 = 0;
                *(a3 + 1) = 0;
                v91 = *(a3 + 3);
                if (!v91 || !v90 || ((*(*v91 + 16))(v91, v30), (v127 & 1) == 0))
                {
                  v37 = 0;
                  v36 = 0;
LABEL_90:
                  if (v125)
                  {
                    v39 = v124;
                    v124 = 0;
                    if (v39)
                    {
                      if (atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v39, v30);
                      }
                    }
                  }

                  if ((v37 & 1) == 0)
                  {
                    goto LABEL_71;
                  }

                  *buf = v36;
                  v126 = v6;
                  v124 = v5;
                  WebKit::WebExtensionController::testFinished(this, buf, v10 & 1, &v126, &v124, v3);
                  goto LABEL_159;
                }
              }

              IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, buf);
              if ((buf[8] & 1) == 0)
              {
                v30 = *a3;
                v98 = *(a3 + 1);
                *a3 = 0;
                *(a3 + 1) = 0;
                v99 = *(a3 + 3);
                if (!v99)
                {
                  goto LABEL_215;
                }

                if (!v98)
                {
                  goto LABEL_215;
                }

                (*(*v99 + 16))(v99, v30);
                if ((buf[8] & 1) == 0)
                {
                  goto LABEL_215;
                }
              }

              v31 = *(a3 + 1);
              v32 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
              v30 = *a3;
              v33 = v32 - *a3;
              v34 = v31 >= v33;
              v35 = v31 - v33;
              if (v34 && v35 > 3)
              {
                *(a3 + 2) = v32 + 1;
                if (v32)
                {
                  if (v125 & 1) != 0 && (v127)
                  {
                    v3 = *v32;
                    v36 = v124;
                    v124 = 0;
                    v6 = v126;
                    v126 = 0;
                    v37 = 1;
                    v5 = *buf;
LABEL_86:
                    if (v127)
                    {
                      v38 = v126;
                      v126 = 0;
                      if (v38)
                      {
                        if (atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
                        {
                          WTF::StringImpl::destroy(v38, v30);
                        }
                      }
                    }

                    goto LABEL_90;
                  }

LABEL_187:
                  __break(1u);
                }

LABEL_239:
                *a3 = 0;
                *(a3 + 1) = 0;
                v111 = *(a3 + 3);
                if (v111 && v31)
                {
                  (*(*v111 + 16))(v111);
                }

                if (buf[8])
                {
                  v112 = *buf;
                  *buf = 0;
                  if (v112)
                  {
                    if (atomic_fetch_add_explicit(v112, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v112, v30);
                    }
                  }
                }

LABEL_215:
                v37 = 0;
                v36 = 0;
                goto LABEL_86;
              }

              *a3 = 0;
              *(a3 + 1) = 0;
              v110 = *(a3 + 3);
              if (v110)
              {
                if (v31)
                {
                  (*(*v110 + 16))(v110);
                  v30 = *a3;
                  v31 = *(a3 + 1);
                  goto LABEL_239;
                }
              }

              else
              {
                v31 = 0;
              }

              v30 = 0;
              goto LABEL_239;
            }

LABEL_265:
            *a3 = 0;
            *(a3 + 1) = 0;
            v121 = *(a3 + 3);
            if (v121 && v28)
            {
              (*(*v121 + 16))(v121, v30);
            }

            v37 = 0;
            v36 = 0;
            goto LABEL_90;
          }
        }

        *a3 = 0;
        *(a3 + 1) = 0;
        v120 = *(a3 + 3);
        if (v120)
        {
          if (v28)
          {
            (*(*v120 + 16))(v120);
            v30 = *a3;
            v28 = *(a3 + 1);
            goto LABEL_265;
          }
        }

        else
        {
          v28 = 0;
        }

        v30 = 0;
        goto LABEL_265;
      }

      if ((this[22] & 2) == 0)
      {
        v11 = qword_1ED6416C8;
        if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          *&buf[4] = "WebExtensionController_TestEqual";
          v12 = "Message %s fails validation";
          goto LABEL_69;
        }

        goto LABEL_71;
      }

      v51 = *(a3 + 1);
      v52 = *(a3 + 2);
      v53 = *a3;
      if (v51 > &v52[-*a3])
      {
        *(a3 + 2) = v52 + 1;
        if (v52)
        {
          v54 = *v52;
          if (v54 < 2)
          {
            IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, &v122);
            if ((v123 & 1) == 0)
            {
              v82 = *a3;
              v83 = *(a3 + 1);
              *a3 = 0;
              *(a3 + 1) = 0;
              v84 = *(a3 + 3);
              if (!v84)
              {
                goto LABEL_71;
              }

              if (!v83)
              {
                goto LABEL_71;
              }

              (*(*v84 + 16))(v84, v82);
              if ((v123 & 1) == 0)
              {
                goto LABEL_71;
              }
            }

            IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, &v124);
            if ((v125 & 1) == 0)
            {
              v57 = *a3;
              v92 = *(a3 + 1);
              *a3 = 0;
              *(a3 + 1) = 0;
              v93 = *(a3 + 3);
              if (!v93 || !v92 || ((*(*v93 + 16))(v93, v57), (v125 & 1) == 0))
              {
                v60 = 0;
                LOBYTE(v54) = 0;
LABEL_151:
                if (v123)
                {
                  v63 = v122;
                  v122 = 0;
                  if (v63)
                  {
                    if (atomic_fetch_add_explicit(v63, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v63, v57);
                    }
                  }
                }

                if ((v60 & 1) == 0)
                {
                  goto LABEL_71;
                }

                *buf = v7;
                v126 = v6;
                v124 = v5;
                v122 = v4;
                WebKit::WebExtensionController::testEqual(this, v54 & 1, buf, &v126, &v124, &v122, v3);
                v64 = v122;
                v122 = 0;
                if (v64 && atomic_fetch_add_explicit(v64, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v64, v14);
                }

                goto LABEL_159;
              }
            }

            IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, &v126);
            if ((v127 & 1) == 0)
            {
              v57 = *a3;
              v100 = *(a3 + 1);
              *a3 = 0;
              *(a3 + 1) = 0;
              v101 = *(a3 + 3);
              if (!v101 || !v100 || ((*(*v101 + 16))(v101, v57), (v127 & 1) == 0))
              {
                v60 = 0;
                LOBYTE(v54) = 0;
LABEL_147:
                if (v125)
                {
                  v62 = v124;
                  v124 = 0;
                  if (v62)
                  {
                    if (atomic_fetch_add_explicit(v62, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v62, v57);
                    }
                  }
                }

                goto LABEL_151;
              }
            }

            IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, buf);
            if ((buf[8] & 1) == 0)
            {
              v57 = *a3;
              v102 = *(a3 + 1);
              *a3 = 0;
              *(a3 + 1) = 0;
              v103 = *(a3 + 3);
              if (!v103)
              {
                goto LABEL_219;
              }

              if (!v102)
              {
                goto LABEL_219;
              }

              (*(*v103 + 16))(v103, v57);
              if ((buf[8] & 1) == 0)
              {
                goto LABEL_219;
              }
            }

            v55 = *(a3 + 1);
            v56 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
            v57 = *a3;
            v58 = v56 - *a3;
            v34 = v55 >= v58;
            v59 = v55 - v58;
            if (v34 && v59 > 3)
            {
              *(a3 + 2) = v56 + 1;
              if (v56)
              {
                if ((v123 & 1) == 0 || (v125 & 1) == 0 || (v127 & 1) == 0)
                {
                  goto LABEL_187;
                }

                LODWORD(v3) = *v56;
                v7 = v122;
                v122 = 0;
                v6 = v124;
                v124 = 0;
                v5 = v126;
                v126 = 0;
                v60 = 1;
                v4 = *buf;
                goto LABEL_143;
              }

              goto LABEL_247;
            }

            *a3 = 0;
            *(a3 + 1) = 0;
            v113 = *(a3 + 3);
            if (v113)
            {
              if (v55)
              {
                (*(*v113 + 16))(v113);
                v57 = *a3;
                v55 = *(a3 + 1);
LABEL_247:
                *a3 = 0;
                *(a3 + 1) = 0;
                v114 = *(a3 + 3);
                if (v114 && v55)
                {
                  (*(*v114 + 16))(v114);
                }

                if (buf[8])
                {
                  v115 = *buf;
                  *buf = 0;
                  if (v115)
                  {
                    if (atomic_fetch_add_explicit(v115, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v115, v57);
                    }
                  }
                }

LABEL_219:
                v60 = 0;
                LOBYTE(v54) = 0;
LABEL_143:
                if (v127)
                {
                  v61 = v126;
                  v126 = 0;
                  if (v61)
                  {
                    if (atomic_fetch_add_explicit(v61, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v61, v57);
                    }
                  }
                }

                goto LABEL_147;
              }
            }

            else
            {
              v55 = 0;
            }

            v57 = 0;
            goto LABEL_247;
          }

          goto LABEL_257;
        }

LABEL_254:
        *a3 = 0;
        *(a3 + 1) = 0;
        v117 = *(a3 + 3);
        if (v117)
        {
          if (v51)
          {
            (*(*v117 + 16))(v117);
            v53 = *a3;
            v51 = *(a3 + 1);
            goto LABEL_257;
          }
        }

        else
        {
          v51 = 0;
        }

        v53 = 0;
LABEL_257:
        *a3 = 0;
        *(a3 + 1) = 0;
        v118 = *(a3 + 3);
        if (v118 && v51)
        {
          (*(*v118 + 16))(v118, v53);
        }

        goto LABEL_71;
      }

LABEL_252:
      *a3 = 0;
      *(a3 + 1) = 0;
      v116 = *(a3 + 3);
      if (v116)
      {
        if (v51)
        {
          (*(*v116 + 16))(v116);
          v51 = *(a3 + 1);
        }
      }

      else
      {
        v51 = 0;
      }

      goto LABEL_254;
    }

    if (v10 != 2006)
    {
      if (v10 != 2007)
      {
        if (v10 == 2008)
        {
          if ((this[22] & 2) == 0)
          {
            v11 = qword_1ED6416C8;
            if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315138;
              *&buf[4] = "WebExtensionController_TestStarted";
              v12 = "Message %s fails validation";
              goto LABEL_69;
            }

            goto LABEL_71;
          }

          IPC::Decoder::decode<std::tuple<WTF::String,WTF::String,unsigned int>>(buf, a3);
          if (v129 != 1)
          {
            goto LABEL_72;
          }

          v49 = WebKit::WebExtensionController::testStarted;
          goto LABEL_122;
        }

        goto LABEL_56;
      }

      if ((this[22] & 2) == 0)
      {
        v11 = qword_1ED6416C8;
        if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          *&buf[4] = "WebExtensionController_TestSentMessage";
          v12 = "Message %s fails validation";
          goto LABEL_69;
        }

        goto LABEL_71;
      }

      IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, &v124);
      if ((v125 & 1) == 0)
      {
        v79 = *a3;
        v80 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v81 = *(a3 + 3);
        if (!v81)
        {
          goto LABEL_71;
        }

        if (!v80)
        {
          goto LABEL_71;
        }

        (*(*v81 + 16))(v81, v79);
        if ((v125 & 1) == 0)
        {
          goto LABEL_71;
        }
      }

      IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, &v126);
      if ((v127 & 1) == 0)
      {
        v42 = *a3;
        v88 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v89 = *(a3 + 3);
        if (!v89 || !v88 || ((*(*v89 + 16))(v89, v42), (v127 & 1) == 0))
        {
          v46 = 0;
          v45 = 0;
LABEL_110:
          if (v125)
          {
            v48 = v124;
            v124 = 0;
            if (v48)
            {
              if (atomic_fetch_add_explicit(v48, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v48, v42);
              }
            }
          }

          if ((v46 & 1) == 0)
          {
            goto LABEL_71;
          }

          *buf = v45;
          v126 = v5;
          v124 = v4;
          WebKit::WebExtensionController::testSentMessage(this, buf, &v126, &v124, v3);
LABEL_159:
          v65 = v124;
          v124 = 0;
          if (v65 && atomic_fetch_add_explicit(v65, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v65, v14);
          }

          goto LABEL_179;
        }
      }

      IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, buf);
      if ((buf[8] & 1) == 0)
      {
        v42 = *a3;
        v96 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v97 = *(a3 + 3);
        if (!v97)
        {
          goto LABEL_213;
        }

        if (!v96)
        {
          goto LABEL_213;
        }

        (*(*v97 + 16))(v97, v42);
        if ((buf[8] & 1) == 0)
        {
          goto LABEL_213;
        }
      }

      v40 = *(a3 + 1);
      v41 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
      v42 = *a3;
      v43 = v41 - *a3;
      v34 = v40 >= v43;
      v44 = v40 - v43;
      if (v34 && v44 > 3)
      {
        *(a3 + 2) = v41 + 1;
        if (v41)
        {
          if ((v125 & 1) == 0 || (v127 & 1) == 0)
          {
            goto LABEL_187;
          }

          v3 = *v41;
          v45 = v124;
          v124 = 0;
          v5 = v126;
          v126 = 0;
          v46 = 1;
          v4 = *buf;
          goto LABEL_106;
        }

        goto LABEL_231;
      }

      *a3 = 0;
      *(a3 + 1) = 0;
      v107 = *(a3 + 3);
      if (v107)
      {
        if (v40)
        {
          (*(*v107 + 16))(v107);
          v42 = *a3;
          v40 = *(a3 + 1);
LABEL_231:
          *a3 = 0;
          *(a3 + 1) = 0;
          v108 = *(a3 + 3);
          if (v108 && v40)
          {
            (*(*v108 + 16))(v108);
          }

          if (buf[8])
          {
            v109 = *buf;
            *buf = 0;
            if (v109)
            {
              if (atomic_fetch_add_explicit(v109, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v109, v42);
              }
            }
          }

LABEL_213:
          v46 = 0;
          v45 = 0;
LABEL_106:
          if (v127)
          {
            v47 = v126;
            v126 = 0;
            if (v47)
            {
              if (atomic_fetch_add_explicit(v47, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v47, v42);
              }
            }
          }

          goto LABEL_110;
        }
      }

      else
      {
        v40 = 0;
      }

      v42 = 0;
      goto LABEL_231;
    }

    if ((this[22] & 2) == 0)
    {
      v11 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        *&buf[4] = "WebExtensionController_TestResult";
        v12 = "Message %s fails validation";
        goto LABEL_69;
      }

      goto LABEL_71;
    }

    v51 = *(a3 + 1);
    v66 = *(a3 + 2);
    v53 = *a3;
    if (v51 <= &v66[-*a3])
    {
      goto LABEL_252;
    }

    *(a3 + 2) = v66 + 1;
    if (!v66)
    {
      goto LABEL_254;
    }

    v67 = *v66;
    if (v67 >= 2)
    {
      goto LABEL_257;
    }

    IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, &v126);
    if ((v127 & 1) == 0)
    {
      v85 = *a3;
      v86 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v87 = *(a3 + 3);
      if (!v87)
      {
        goto LABEL_71;
      }

      if (!v86)
      {
        goto LABEL_71;
      }

      (*(*v87 + 16))(v87, v85);
      if ((v127 & 1) == 0)
      {
        goto LABEL_71;
      }
    }

    IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, buf);
    if ((buf[8] & 1) == 0)
    {
      v70 = *a3;
      v94 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v95 = *(a3 + 3);
      if (!v95)
      {
        goto LABEL_211;
      }

      if (!v94)
      {
        goto LABEL_211;
      }

      (*(*v95 + 16))(v95, v70);
      if ((buf[8] & 1) == 0)
      {
        goto LABEL_211;
      }
    }

    v68 = *(a3 + 1);
    v69 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
    v70 = *a3;
    v71 = v69 - *a3;
    v34 = v68 >= v71;
    v72 = v68 - v71;
    if (v34 && v72 > 3)
    {
      *(a3 + 2) = v69 + 1;
      if (v69)
      {
        if ((v127 & 1) == 0)
        {
          goto LABEL_187;
        }

        v3 = *v69;
        v5 = v126;
        v126 = 0;
        v73 = 1;
        v4 = *buf;
LABEL_173:
        if (v127)
        {
          v74 = v126;
          v126 = 0;
          if (v74)
          {
            if (atomic_fetch_add_explicit(v74, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v74, v70);
            }
          }
        }

        if ((v73 & 1) == 0)
        {
          goto LABEL_71;
        }

        *buf = v5;
        v126 = v4;
        WebKit::WebExtensionController::testResult(this, v67 & 1, buf, &v126, v3);
LABEL_179:
        v75 = v126;
        v126 = 0;
        if (v75 && atomic_fetch_add_explicit(v75, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v75, v14);
        }

        v18 = *buf;
        *buf = 0;
        if (v18)
        {
          goto LABEL_183;
        }

        goto LABEL_72;
      }

      goto LABEL_223;
    }

    *a3 = 0;
    *(a3 + 1) = 0;
    v104 = *(a3 + 3);
    if (v104)
    {
      if (v68)
      {
        (*(*v104 + 16))(v104);
        v70 = *a3;
        v68 = *(a3 + 1);
LABEL_223:
        *a3 = 0;
        *(a3 + 1) = 0;
        v105 = *(a3 + 3);
        if (v105 && v68)
        {
          (*(*v105 + 16))(v105);
        }

        if (buf[8])
        {
          v106 = *buf;
          *buf = 0;
          if (v106)
          {
            if (atomic_fetch_add_explicit(v106, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v106, v70);
            }
          }
        }

LABEL_211:
        v73 = 0;
        LOBYTE(v67) = 0;
        goto LABEL_173;
      }
    }

    else
    {
      v68 = 0;
    }

    v70 = 0;
    goto LABEL_223;
  }

  if (*(a3 + 25) <= 0x7CFu)
  {
    if (v10 == 1998)
    {
      v15 = this[7];
      if (!v15 || !*(v15 - 3))
      {
        v11 = qword_1ED6416C8;
        if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          *&buf[4] = "WebExtensionController_DidCommitLoadForFrame";
          v12 = "Message %s fails validation";
          goto LABEL_69;
        }

        goto LABEL_71;
      }

      IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::WebExtensionFrameParameters,WTF::WallTime>>(buf, a3);
      if (v132 != 1)
      {
        goto LABEL_72;
      }

      WebKit::WebExtensionController::didCommitLoadForFrame(this, *buf, &buf[16], v131);
    }

    else
    {
      if (v10 != 1999)
      {
        goto LABEL_56;
      }

      v13 = this[7];
      if (!v13 || !*(v13 - 3))
      {
        v11 = qword_1ED6416C8;
        if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          *&buf[4] = "WebExtensionController_DidFailLoadForFrame";
          v12 = "Message %s fails validation";
          goto LABEL_69;
        }

        goto LABEL_71;
      }

      IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::WebExtensionFrameParameters,WTF::WallTime>>(buf, a3);
      if (v132 != 1)
      {
        goto LABEL_72;
      }

      WebKit::WebExtensionController::didFailLoadForFrame(this, *buf, &buf[16], v131);
    }

LABEL_46:
    if ((v132 & 1) == 0)
    {
      goto LABEL_72;
    }

    if (v130 != 1)
    {
      goto LABEL_72;
    }

    v18 = v129;
    v129 = 0;
    if (!v18)
    {
      goto LABEL_72;
    }

    goto LABEL_183;
  }

  if (v10 == 2000)
  {
    v17 = this[7];
    if (!v17 || !*(v17 - 3))
    {
      v11 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        *&buf[4] = "WebExtensionController_DidFinishLoadForFrame";
        v12 = "Message %s fails validation";
        goto LABEL_69;
      }

      goto LABEL_71;
    }

    IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::WebExtensionFrameParameters,WTF::WallTime>>(buf, a3);
    if (v132 != 1)
    {
      goto LABEL_72;
    }

    WebKit::WebExtensionController::didFinishLoadForFrame(this, *buf, &buf[16], v131);
    goto LABEL_46;
  }

  if (v10 == 2001)
  {
    v16 = this[7];
    if (!v16 || !*(v16 - 3))
    {
      v11 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        *&buf[4] = "WebExtensionController_DidStartProvisionalLoadForFrame";
        v12 = "Message %s fails validation";
        goto LABEL_69;
      }

      goto LABEL_71;
    }

    IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::WebExtensionFrameParameters,WTF::WallTime>>(buf, a3);
    if (v132 != 1)
    {
      goto LABEL_72;
    }

    WebKit::WebExtensionController::didStartProvisionalLoadForFrame(this, *buf, &buf[16], v131);
    goto LABEL_46;
  }

  if (v10 != 2002)
  {
    goto LABEL_56;
  }

  if ((this[22] & 2) == 0)
  {
    v11 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = "WebExtensionController_TestAdded";
      v12 = "Message %s fails validation";
      goto LABEL_69;
    }

LABEL_71:
    v25 = *a3;
    v26 = *(a3 + 1);
    *a3 = 0;
    *(a3 + 1) = 0;
    v27 = *(a3 + 3);
    if (v27 && v26)
    {
      (*(*v27 + 16))(v27, v25);
    }

    goto LABEL_72;
  }

  IPC::Decoder::decode<std::tuple<WTF::String,WTF::String,unsigned int>>(buf, a3);
  if (v129 != 1)
  {
    goto LABEL_72;
  }

  v49 = WebKit::WebExtensionController::testAdded;
LABEL_122:
  IPC::callMemberFunction<WebKit::WebExtensionController,WebKit::WebExtensionController,void ()(WTF::String,WTF::String,unsigned int),std::tuple<WTF::String,WTF::String,unsigned int>>(this, v49, 0, buf);
  if (v129)
  {
    v50 = *&buf[8];
    if (*&buf[8] && atomic_fetch_add_explicit(*&buf[8], 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v50, v14);
    }

    v18 = *buf;
    if (*buf)
    {
LABEL_183:
      if (atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v18, v14);
      }
    }
  }

LABEL_72:
  CFRelease(this[1]);
}

_DWORD *WebKit::WebExtensionControllerProxy::didReceiveMessage(WebKit::WebExtensionControllerProxy *this, IPC::Connection *a2, IPC::Decoder *a3)
{
  v51 = *MEMORY[0x1E69E9840];
  v5 = (this + 16);
  ++*(this + 4);
  v6 = *(a3 + 25);
  if (v6 == 1997)
  {
    v13 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
    if (v14)
    {
      WebKit::WebExtensionControllerProxy::unload(this, v13);
      return WTF::RefCounted<WebKit::WebExtensionControllerProxy>::deref(v5);
    }

    goto LABEL_9;
  }

  if (v6 != 1996)
  {
    v15 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
    {
      if (v6 >= 0x107F)
      {
        v20 = 4223;
      }

      else
      {
        v20 = v6;
      }

      v21 = (&IPC::Detail::messageDescriptions)[3 * v20];
      v22 = *(a3 + 7);
      *buf = 136315394;
      *&buf[4] = v21;
      *&buf[12] = 2048;
      *&buf[14] = v22;
      _os_log_error_impl(&dword_19D52D000, v15, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", buf, 0x16u);
    }

LABEL_9:
    v16 = *a3;
    v17 = *(a3 + 1);
    *a3 = 0;
    *(a3 + 1) = 0;
    v18 = *(a3 + 3);
    if (!v18)
    {
      return WTF::RefCounted<WebKit::WebExtensionControllerProxy>::deref(v5);
    }

    goto LABEL_20;
  }

  IPC::ArgumentCoder<WebKit::WebExtensionContextParameters,void>::decode(a3, buf);
  if (v50)
  {
    goto LABEL_4;
  }

  v23 = *a3;
  v24 = *(a3 + 1);
  *a3 = 0;
  *(a3 + 1) = 0;
  v25 = *(a3 + 3);
  if (!v25 || !v24)
  {
    *a3 = 0;
    *(a3 + 1) = 0;
    return WTF::RefCounted<WebKit::WebExtensionControllerProxy>::deref(v5);
  }

  (*(*v25 + 16))(v25, v23);
  if (v50)
  {
LABEL_4:
    v27 = *&buf[16];
    v28 = v40;
    LODWORD(v40) = v40 & 0xFFFFFFFE;
    v26 = *buf;
    *&buf[16] = 0;
    v29 = v41;
    v8 = v42;
    v42 = 0u;
    v30 = v8;
    v9 = v43;
    v43 = 0u;
    v31 = v9;
    v32 = v44;
    *&v33[9] = *(v45 + 9);
    *v33 = v45[0];
    v10 = v46;
    v44 = 0;
    v46 = 0;
    v34 = v10;
    *&v9 = v47;
    v47 = 0;
    v35 = v9;
    v11 = v48;
    v48 = 0;
    v36 = v11;
    *&v9 = v49;
    v49 = 0;
    v37 = v9;
    v38 = 1;
    WebKit::WebExtensionContextParameters::~WebExtensionContextParameters(buf, v7);
    WebKit::WebExtensionControllerProxy::load(this, &v26);
    if (v38)
    {
      WebKit::WebExtensionContextParameters::~WebExtensionContextParameters(&v26, v12);
    }

    return WTF::RefCounted<WebKit::WebExtensionControllerProxy>::deref(v5);
  }

  v18 = *(a3 + 3);
  v16 = *a3;
  v17 = *(a3 + 1);
  *a3 = 0;
  *(a3 + 1) = 0;
  if (!v18)
  {
    return WTF::RefCounted<WebKit::WebExtensionControllerProxy>::deref(v5);
  }

LABEL_20:
  if (v17)
  {
    (*(*v18 + 16))(v18, v16);
  }

  return WTF::RefCounted<WebKit::WebExtensionControllerProxy>::deref(v5);
}

uint64_t *WebKit::WebFileSystemStorageConnection::didReceiveMessage(atomic_uint *this, IPC::Connection *a2, IPC::Decoder *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  atomic_fetch_add(this + 2, 1u);
  v5 = *(a3 + 25);
  if (v5 == 2010)
  {
    v9 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
    if (v10)
    {
      result = WebKit::WebFileSystemStorageConnection::invalidateWritable(this, v9);
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v5 != 2009)
  {
    v11 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
    {
      if (v5 >= 0x107F)
      {
        v14 = 4223;
      }

      else
      {
        v14 = v5;
      }

      v15 = (&IPC::Detail::messageDescriptions)[3 * v14];
      v16 = *(a3 + 7);
      v17 = 136315394;
      v18 = v15;
      v19 = 2048;
      v20 = v16;
      _os_log_error_impl(&dword_19D52D000, v11, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", &v17, 0x16u);
    }

    goto LABEL_8;
  }

  v6 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
  if ((v7 & 1) == 0)
  {
LABEL_8:
    v12 = *a3;
    v13 = *(a3 + 1);
    *a3 = 0;
    *(a3 + 1) = 0;
    result = *(a3 + 3);
    if (result && v13)
    {
      result = (*(*result + 16))(result, v12);
    }

LABEL_9:
    if (!this)
    {
      return result;
    }

    goto LABEL_10;
  }

  result = (*(*this + 128))(this, v6);
LABEL_10:
  if (atomic_fetch_add(this + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, this + 2);
    return (*(*this + 8))(this);
  }

  return result;
}

uint64_t WebKit::WebFullScreenManager::didReceiveMessage(WebKit::WebFullScreenManager *this, atomic_ullong *a2, IPC::Decoder *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  ++*(this + 4);
  v6 = *(a3 + 25);
  if (v6 <= 0x7EA)
  {
    switch(v6)
    {
      case 0x7E8u:
        result = IPC::Decoder::decode<std::tuple<PAL::SessionID>>(a3);
        if ((v8 & 1) == 0)
        {
          goto LABEL_46;
        }

        v10 = result;
        result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
        if ((v8 & 1) == 0)
        {
          goto LABEL_46;
        }

        v11 = result;
        while (1)
        {
          v12 = *a2;
          if ((*a2 & 1) == 0)
          {
            break;
          }

          v13 = *a2;
          atomic_compare_exchange_strong_explicit(a2, &v13, v12 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v13 == v12)
          {
            goto LABEL_43;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_43:
        v23 = WTF::fastMalloc(0x18);
        *v23 = &unk_1F10F4778;
        v23[1] = v11;
        v23[2] = a2;
        *buf = v23;
        WebKit::WebFullScreenManager::enterFullScreenForOwnerElements(this, v10, buf);
        break;
      case 0x7E9u:
        result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
        if ((v8 & 1) == 0)
        {
          goto LABEL_46;
        }

        v18 = result;
        while (1)
        {
          v19 = *a2;
          if ((*a2 & 1) == 0)
          {
            break;
          }

          v20 = *a2;
          atomic_compare_exchange_strong_explicit(a2, &v20, v19 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v20 == v19)
          {
            goto LABEL_41;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_41:
        v22 = WTF::fastMalloc(0x18);
        *v22 = &unk_1F10F47A0;
        v22[1] = v18;
        v22[2] = a2;
        *buf = v22;
        WebKit::WebFullScreenManager::exitFullScreenInMainFrame(this, buf);
        break;
      case 0x7EAu:
        result = WebKit::WebFullScreenManager::requestExitFullScreen(this);
        goto LABEL_46;
      default:
        goto LABEL_21;
    }

    result = *buf;
    *buf = 0;
    if (!result)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  if (*(a3 + 25) <= 0x7ECu)
  {
    if (v6 != 2027)
    {
      if (v6 == 2028)
      {
        result = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
        if ((result & 0x100) != 0)
        {
          result = WebKit::WebFullScreenManager::setAnimatingFullScreen(this, result & 1);
        }

        goto LABEL_46;
      }

      goto LABEL_21;
    }

    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
    if ((v8 & 1) == 0)
    {
      goto LABEL_46;
    }

    v15 = result;
    while (1)
    {
      v16 = *a2;
      if ((*a2 & 1) == 0)
      {
        break;
      }

      v17 = *a2;
      atomic_compare_exchange_strong_explicit(a2, &v17, v16 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v17 == v16)
      {
        goto LABEL_38;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_38:
    v21 = WTF::fastMalloc(0x18);
    *v21 = &unk_1F10F4750;
    v21[1] = v15;
    v21[2] = a2;
    *buf = v21;
    WebKit::WebFullScreenManager::requestRestoreFullScreen(this, buf);
    result = *buf;
    *buf = 0;
    if (!result)
    {
      goto LABEL_46;
    }

LABEL_45:
    result = (*(*result + 8))(result);
    goto LABEL_46;
  }

  if (v6 == 2029)
  {
    result = IPC::Decoder::decode<std::tuple<WTF::Seconds>>(a3);
    if (v8)
    {
      result = WebCore::Page::setFullscreenAutoHideDuration();
    }

    goto LABEL_46;
  }

  if (v6 == 2030)
  {
    IPC::ArgumentCoder<WebCore::RectEdges<float>,void>::decode(a3, buf);
    if ((buf_14 & 0x10000) != 0)
    {
      goto LABEL_14;
    }

    v8 = *a3;
    v9 = *(a3 + 1);
    *a3 = 0;
    *(a3 + 1) = 0;
    result = *(a3 + 3);
    if (!result || !v9)
    {
      *a3 = 0;
      *(a3 + 1) = 0;
      goto LABEL_46;
    }

    (*(*result + 16))(result, v8);
    if ((buf_14 & 0x10000) != 0)
    {
LABEL_14:
      result = WebKit::WebFullScreenManager::setFullscreenInsets();
      goto LABEL_46;
    }

    v8 = *a3;
    v9 = *(a3 + 1);
    result = *(a3 + 3);
    *a3 = 0;
    *(a3 + 1) = 0;
    if (result)
    {
      goto LABEL_23;
    }

    goto LABEL_46;
  }

LABEL_21:
  v14 = qword_1ED6416C8;
  if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
  {
    if (v6 >= 0x107F)
    {
      v24 = 4223;
    }

    else
    {
      v24 = v6;
    }

    v25 = (&IPC::Detail::messageDescriptions)[3 * v24];
    v26 = *(a3 + 7);
    *buf = 136315394;
    *&buf[4] = v25;
    buf_12 = 2048;
    buf_14 = v26;
    _os_log_error_impl(&dword_19D52D000, v14, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", buf, 0x16u);
  }

  v8 = *a3;
  v9 = *(a3 + 1);
  *a3 = 0;
  *(a3 + 1) = 0;
  result = *(a3 + 3);
  if (result)
  {
LABEL_23:
    if (v9)
    {
      result = (*(*result + 16))(result, v8);
    }
  }

LABEL_46:
  if (*(this + 4) == 1)
  {
    return (*(*this + 8))(this, v8, v9);
  }

  --*(this + 4);
  return result;
}

WTF::StringImpl *WebKit::WebFullScreenManagerProxy::didReceiveMessage(WebKit::WebFullScreenManagerProxy *this, IPC::Connection *a2, IPC::Decoder *a3)
{
  v92 = *MEMORY[0x1E69E9840];
  v6 = WebKit::AuxiliaryProcessProxy::fromConnection(a2, a2);
  if ((*(*v6 + 104))(v6) == 2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if ((*(v7 + 1104) & 0x80000020) != 0)
  {
    ++*(this + 5);
    v8 = *(a3 + 25);
    if (v8 > 0x7E4)
    {
      if (v8 == 2021)
      {
        result = WebKit::WebFullScreenManagerProxy::close(this);
        goto LABEL_93;
      }

      if (v8 != 2023)
      {
        if (v8 == 2022)
        {
          v9 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
          if ((v10 & 1) == 0)
          {
LABEL_127:
            buf[0] = 0;
            v91 = 0;
LABEL_128:
            v20 = *a3;
            v21 = *(a3 + 1);
            *a3 = 0;
            *(a3 + 1) = 0;
            result = *(a3 + 3);
            if (!result || !v21 || (result = (*(*result + 16))(result, v20), (v91 & 1) == 0))
            {
LABEL_87:
              if (v91 == 1)
              {
                if (v90 == 1)
                {
                  WTF::MachSendRight::~MachSendRight(v88);
                }

                result = v87;
                v87 = 0;
                if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  result = WTF::StringImpl::destroy(result, v20);
                }
              }

              goto LABEL_93;
            }

LABEL_22:
            result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
            if ((v20 & 1) == 0)
            {
              goto LABEL_87;
            }

            a3 = result;
            while (1)
            {
              v22 = *a2;
              if ((*a2 & 1) == 0)
              {
                break;
              }

              v23 = *a2;
              atomic_compare_exchange_strong_explicit(a2, &v23, v22 + 2, memory_order_relaxed, memory_order_relaxed);
              if (v23 == v22)
              {
                goto LABEL_67;
              }
            }

            WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_67:
            v30 = WTF::fastMalloc(0x18);
            *v30 = &unk_1F10F47C8;
            *(v30 + 8) = a3;
            *(v30 + 16) = a2;
            if (v91)
            {
              v48 = v30;
              a3 = WTF::fastMalloc(0x38);
              *a3 = IPC::callMemberFunctionCoroutine<WebKit::WebFullScreenManagerProxy,WebKit::WebFullScreenManagerProxy,WTF::Awaitable<BOOL> ()(IPC::Connection &,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,BOOL,WebKit::FullScreenMediaDetails),std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,BOOL,WebKit::FullScreenMediaDetails>,void ()(BOOL)>(WebKit::WebFullScreenManagerProxy *,WTF::Awaitable<BOOL> ()(IPC::Connection &,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,BOOL,WebKit::FullScreenMediaDetails) WebKit::WebFullScreenManagerProxy::*,IPC::Connection &,std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,BOOL,WebKit::FullScreenMediaDetails> &&,WTF::CompletionHandler<void ()(BOOL)> &&)::{lambda(WebKit::WebFullScreenManagerProxy)#1}::operator()<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,BOOL,WebKit::FullScreenMediaDetails> &&<void ()(BOOL)>>;
              *(a3 + 1) = IPC::callMemberFunctionCoroutine<WebKit::WebFullScreenManagerProxy,WebKit::WebFullScreenManagerProxy,WTF::Awaitable<BOOL> ()(IPC::Connection &,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,BOOL,WebKit::FullScreenMediaDetails),std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,BOOL,WebKit::FullScreenMediaDetails>,void ()(BOOL)>(WebKit::WebFullScreenManagerProxy *,WTF::Awaitable<BOOL> ()(IPC::Connection &,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,BOOL,WebKit::FullScreenMediaDetails) WebKit::WebFullScreenManagerProxy::*,IPC::Connection &,std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,BOOL,WebKit::FullScreenMediaDetails> &&,WTF::CompletionHandler<void ()(BOOL)> &&)::{lambda(WebKit::WebFullScreenManagerProxy)#1}::operator()<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,BOOL,WebKit::FullScreenMediaDetails> &&<void ()(BOOL)>>;
              *(a3 + 5) = v48;
              *(a3 + 6) = this;
              ++*(this + 5);
              v49 = *buf;
              v50 = buf[8];
              v78 = *&buf[16];
              LODWORD(v79) = v86;
              v51 = v87;
              v87 = 0;
              v80 = v51;
              v81[0] = 0;
              v83 = 0;
              if (v90 == 1)
              {
                WTF::MachSendRight::MachSendRight();
                v82 = v89;
                v83 = 1;
              }

              WebKit::WebFullScreenManagerProxy::enterFullScreen(this, a2, v49, v50, &v78, a3 + 4);
              if (v83 == 1)
              {
                WTF::MachSendRight::~MachSendRight(v81);
              }

              v30 = v80;
              v80 = 0;
              if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                v30 = WTF::StringImpl::destroy(v30, v52);
              }

              v53 = *(a3 + 4);
              *(a3 + 3) = v53;
              if (v53)
              {
                if (*v53)
                {
                  *(a3 + 17) = 0;
                  *(v53 + 16) = a3;
                  result = (**(a3 + 3))();
                  goto LABEL_87;
                }

                v57 = *(a3 + 5);
                v58 = *(v53 + 24);
                *(v53 + 24) = 0;
                (*(*v57 + 16))(v57, v58);
                (*(*v57 + 8))(v57);
                v60 = *(a3 + 4);
                if (v60)
                {
                  (*(v60 + 8))();
                }

                v30 = *(a3 + 6);
                if (*(v30 + 20) != 1)
                {
                  --*(v30 + 20);
LABEL_86:
                  result = WTF::fastFree(a3, v59);
                  goto LABEL_87;
                }

LABEL_114:
                (*(*v30 + 24))(v30);
                goto LABEL_86;
              }
            }

LABEL_113:
            __break(1u);
            goto LABEL_114;
          }

          v11 = *(a3 + 1);
          v12 = *(a3 + 2);
          v13 = *a3;
          if (v11 <= &v12[-*a3])
          {
            *a3 = 0;
            *(a3 + 1) = 0;
            v75 = *(a3 + 3);
            if (v75)
            {
              if (v11)
              {
                (*(*v75 + 16))(v75);
                v11 = *(a3 + 1);
              }
            }

            else
            {
              v11 = 0;
            }
          }

          else
          {
            *(a3 + 2) = v12 + 1;
            if (v12)
            {
              v14 = *v12;
              if (v14 < 2)
              {
                v15 = v9;
                IPC::ArgumentCoder<WebKit::FullScreenMediaDetails,void>::decode(a3, &v78);
                if (v84 & 1) != 0 || (v72 = *a3, v73 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v74 = *(a3 + 3)) != 0) && v73 && ((*(*v74 + 16))(v74, v72), (v84))
                {
                  *buf = v15;
                  buf[8] = v14;
                  *&buf[16] = v78;
                  v86 = v79;
                  v17 = v80;
                  v80 = 0;
                  v87 = v17;
                  v88[0] = 0;
                  v90 = 0;
                  if (v83 == 1)
                  {
                    WTF::MachSendRight::MachSendRight();
                    v89 = v82;
                    v90 = 1;
                    v91 = 1;
                    if ((v84 & 1) == 0)
                    {
                      goto LABEL_21;
                    }

                    if (v83)
                    {
                      WTF::MachSendRight::~MachSendRight(v81);
                    }
                  }

                  else
                  {
                    v91 = 1;
                  }

                  v18 = v80;
                  v80 = 0;
                  if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v18, v16);
                  }
                }

                else
                {
                  buf[0] = 0;
                  v91 = 0;
                }

LABEL_21:
                if (v91)
                {
                  goto LABEL_22;
                }

                goto LABEL_128;
              }

              goto LABEL_126;
            }
          }

          *a3 = 0;
          *(a3 + 1) = 0;
          v76 = *(a3 + 3);
          if (v76)
          {
            if (v11)
            {
              (*(*v76 + 16))(v76);
              v13 = *a3;
              v11 = *(a3 + 1);
              goto LABEL_126;
            }
          }

          else
          {
            v11 = 0;
          }

          v13 = 0;
LABEL_126:
          *a3 = 0;
          *(a3 + 1) = 0;
          v77 = *(a3 + 3);
          if (v77 && v11)
          {
            (*(*v77 + 16))(v77, v13);
          }

          goto LABEL_127;
        }

        goto LABEL_56;
      }

      result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if (v20)
      {
        a3 = result;
        while (1)
        {
          v37 = *a2;
          if ((*a2 & 1) == 0)
          {
            break;
          }

          v38 = *a2;
          atomic_compare_exchange_strong_explicit(a2, &v38, v37 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v38 == v37)
          {
            goto LABEL_61;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_61:
        v46 = WTF::fastMalloc(0x18);
        *v46 = &unk_1F10F47F0;
        v46[1] = a3;
        v46[2] = a2;
        v47 = WTF::fastMalloc(0x38);
        *v47 = _ZZN3IPC31callMemberFunctionCoroutineVoidIN6WebKit25WebFullScreenManagerProxyES2_FN3WTF9AwaitableIvEEvENSt3__15tupleIJEEEFvvEEEvPT_MT0_T1_OT2_ONS3_17CompletionHandlerIT3_EEENKUlSB_E_clINSI_ISA_EEEENS3_4TaskESB__resume;
        *(v47 + 8) = _ZZN3IPC31callMemberFunctionCoroutineVoidIN6WebKit25WebFullScreenManagerProxyES2_FN3WTF9AwaitableIvEEvENSt3__15tupleIJEEEFvvEEEvPT_MT0_T1_OT2_ONS3_17CompletionHandlerIT3_EEENKUlSB_E_clINSI_ISA_EEEENS3_4TaskESB__destroy;
        *(v47 + 40) = v46;
        *(v47 + 48) = this;
        ++*(this + 5);
        WebKit::WebFullScreenManagerProxy::exitFullScreen(this, (v47 + 32));
LABEL_62:
        v30 = *(v47 + 32);
        *(v47 + 24) = v30;
        if (!v30)
        {
          goto LABEL_113;
        }

        if (*v30)
        {
          *(v47 + 17) = 0;
          *(v30 + 16) = v47;
LABEL_65:
          result = (**(v47 + 24))();
          goto LABEL_93;
        }

        (*(v30 + 8))();
        v54 = *(v47 + 40);
        (*(*v54 + 16))(v54);
        (*(*v54 + 8))(v54);
        goto LABEL_79;
      }

      goto LABEL_93;
    }

    if (v8 == 2019)
    {
      IPC::Decoder::decode<WebCore::IntRect>(a3, &v78);
      if (v80)
      {
        v30 = IPC::Decoder::decode<WebCore::IntRect>(a3, buf);
        if (buf[16] == 1)
        {
          if ((v80 & 1) == 0)
          {
            goto LABEL_113;
          }

          v39 = v78;
          v40 = v79;
          v41 = *buf;
          v42 = *&buf[8];
          result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
          if (v20)
          {
            a3 = result;
            while (1)
            {
              v43 = *a2;
              if ((*a2 & 1) == 0)
              {
                break;
              }

              v44 = *a2;
              atomic_compare_exchange_strong_explicit(a2, &v44, v43 + 2, memory_order_relaxed, memory_order_relaxed);
              if (v44 == v43)
              {
                goto LABEL_97;
              }
            }

            WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_97:
            v61 = WTF::fastMalloc(0x18);
            *v61 = &unk_1F10F4818;
            v61[1] = a3;
            v61[2] = a2;
            v47 = WTF::fastMalloc(0x38);
            *v47 = IPC::callMemberFunctionCoroutine<WebKit::WebFullScreenManagerProxy,WebKit::WebFullScreenManagerProxy,WTF::Awaitable<BOOL> ()(WebCore::IntRect,WebCore::IntRect),std::tuple<WebCore::IntRect,WebCore::IntRect>,void ()(BOOL)>(WebKit::WebFullScreenManagerProxy *,WTF::Awaitable<BOOL> ()(WebCore::IntRect,WebCore::IntRect) WebKit::WebFullScreenManagerProxy::*,std::tuple<WebCore::IntRect,WebCore::IntRect> &&,WTF::CompletionHandler<void ()(BOOL)> &&)::{lambda(WebKit::WebFullScreenManagerProxy)#1}::operator()<std::tuple<WebCore::IntRect,WebCore::IntRect> &&<void ()(BOOL)>>;
            *(v47 + 8) = IPC::callMemberFunctionCoroutine<WebKit::WebFullScreenManagerProxy,WebKit::WebFullScreenManagerProxy,WTF::Awaitable<BOOL> ()(WebCore::IntRect,WebCore::IntRect),std::tuple<WebCore::IntRect,WebCore::IntRect>,void ()(BOOL)>(WebKit::WebFullScreenManagerProxy *,WTF::Awaitable<BOOL> ()(WebCore::IntRect,WebCore::IntRect) WebKit::WebFullScreenManagerProxy::*,std::tuple<WebCore::IntRect,WebCore::IntRect> &&,WTF::CompletionHandler<void ()(BOOL)> &&)::{lambda(WebKit::WebFullScreenManagerProxy)#1}::operator()<std::tuple<WebCore::IntRect,WebCore::IntRect> &&<void ()(BOOL)>>;
            *(v47 + 40) = v61;
            *(v47 + 48) = this;
            ++*(this + 5);
            v30 = WebKit::WebFullScreenManagerProxy::beganEnterFullScreen(this, v39, v40, v41, v42, (v47 + 32));
            v62 = *(v47 + 32);
            *(v47 + 24) = v62;
            if (!v62)
            {
              goto LABEL_113;
            }

            if (*v62)
            {
              *(v47 + 17) = 0;
              *(v62 + 16) = v47;
              goto LABEL_65;
            }

            v66 = *(v47 + 40);
            v67 = *(v62 + 24);
            *(v62 + 24) = 0;
            (*(*v66 + 16))(v66, v67);
            (*(*v66 + 8))(v66);
            v68 = *(v47 + 32);
            if (v68)
            {
              (*(v68 + 8))();
            }

LABEL_79:
            v56 = *(v47 + 48);
            if (v56[5] == 1)
            {
              (*(*v56 + 24))(v56);
            }

            else
            {
              --v56[5];
            }

            result = WTF::fastFree(v47, v55);
            goto LABEL_93;
          }

          goto LABEL_93;
        }
      }
    }

    else
    {
      if (v8 != 2020)
      {
LABEL_56:
        v45 = qword_1ED6416C8;
        if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          if (v8 >= 0x107F)
          {
            v69 = 4223;
          }

          else
          {
            v69 = v8;
          }

          v70 = (&IPC::Detail::messageDescriptions)[3 * v69];
          v71 = *(a3 + 7);
          *buf = 136315394;
          *&buf[4] = v70;
          *&buf[12] = 2048;
          *&buf[14] = v71;
          _os_log_error_impl(&dword_19D52D000, v45, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", buf, 0x16u);
        }

        goto LABEL_57;
      }

      v27 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if (v28)
      {
        v29 = v27;
        IPC::Decoder::decode<WebCore::IntRect>(a3, &v78);
        if (v80)
        {
          v30 = IPC::Decoder::decode<WebCore::IntRect>(a3, buf);
          if (buf[16] == 1)
          {
            if ((v80 & 1) == 0)
            {
              goto LABEL_113;
            }

            v31 = v78;
            v32 = v79;
            v33 = *buf;
            v34 = *&buf[8];
            result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
            if (v20)
            {
              a3 = result;
              while (1)
              {
                v35 = *a2;
                if ((*a2 & 1) == 0)
                {
                  break;
                }

                v36 = *a2;
                atomic_compare_exchange_strong_explicit(a2, &v36, v35 + 2, memory_order_relaxed, memory_order_relaxed);
                if (v36 == v35)
                {
                  goto LABEL_104;
                }
              }

              WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_104:
              v65 = WTF::fastMalloc(0x18);
              *v65 = &unk_1F10F4840;
              v65[1] = a3;
              v65[2] = a2;
              v47 = WTF::fastMalloc(0x38);
              *v47 = IPC::callMemberFunctionCoroutineVoid<WebKit::WebFullScreenManagerProxy,WebKit::WebFullScreenManagerProxy,WTF::Awaitable<void> ()(WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::IntRect,WebCore::IntRect),std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::IntRect,WebCore::IntRect>,void ()(void)>(WebKit::WebFullScreenManagerProxy *,WTF::Awaitable<void> ()(WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::IntRect,WebCore::IntRect) WebKit::WebFullScreenManagerProxy::*,std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::IntRect,WebCore::IntRect> &&,WTF::CompletionHandler<void ()(void)> &&)::{lambda(WebKit::WebFullScreenManagerProxy)#1}::operator()<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::IntRect,WebCore::IntRect> &&<void ()(void)>>;
              *(v47 + 8) = IPC::callMemberFunctionCoroutineVoid<WebKit::WebFullScreenManagerProxy,WebKit::WebFullScreenManagerProxy,WTF::Awaitable<void> ()(WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::IntRect,WebCore::IntRect),std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::IntRect,WebCore::IntRect>,void ()(void)>(WebKit::WebFullScreenManagerProxy *,WTF::Awaitable<void> ()(WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::IntRect,WebCore::IntRect) WebKit::WebFullScreenManagerProxy::*,std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::IntRect,WebCore::IntRect> &&,WTF::CompletionHandler<void ()(void)> &&)::{lambda(WebKit::WebFullScreenManagerProxy)#1}::operator()<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::IntRect,WebCore::IntRect> &&<void ()(void)>>;
              *(v47 + 40) = v65;
              *(v47 + 48) = this;
              ++*(this + 5);
              WebKit::WebFullScreenManagerProxy::beganExitFullScreen(this, v29, v31, v32, v33, v34, (v47 + 32));
              goto LABEL_62;
            }

LABEL_93:
            if (*(this + 5) == 1)
            {
              return (*(*this + 24))(this, v20, v21);
            }

            --*(this + 5);
            return result;
          }
        }
      }
    }

LABEL_57:
    v20 = *a3;
    v21 = *(a3 + 1);
    *a3 = 0;
    *(a3 + 1) = 0;
    result = *(a3 + 3);
    if (result && v21)
    {
      result = (*(*result + 16))(result, v20);
    }

    goto LABEL_93;
  }

  v24 = qword_1ED6416C8;
  if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
  {
    v63 = *(a3 + 25);
    if (v63 >= 0x107F)
    {
      v63 = 4223;
    }

    v64 = (&IPC::Detail::messageDescriptions)[3 * v63];
    *buf = 136315138;
    *&buf[4] = v64;
    _os_log_error_impl(&dword_19D52D000, v24, OS_LOG_TYPE_ERROR, "Message %s received by a disabled message receiver WebFullScreenManagerProxy", buf, 0xCu);
  }

  v25 = *a3;
  v26 = *(a3 + 1);
  *a3 = 0;
  *(a3 + 1) = 0;
  result = *(a3 + 3);
  if (result && v26)
  {
    return (*(*result + 16))(result, v25);
  }

  return result;
}