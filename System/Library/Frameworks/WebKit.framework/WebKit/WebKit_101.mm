uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages10WebProcess36SetDomainsWithCrossPageStorageAccessENS2_10ConnectionEN6WebKit10WebProcessES9_FvONS_7HashMapIN7WebCore17RegistrableDomainENS_6VectorISC_Lm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEENS_11DefaultHashISC_EENS_10HashTraitsISC_EENSJ_ISG_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1ESF_EEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F7DD8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages10WebProcess36SetDomainsWithCrossPageStorageAccessENS2_10ConnectionEN6WebKit10WebProcessES9_FvONS_7HashMapIN7WebCore17RegistrableDomainENS_6VectorISC_Lm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEENS_11DefaultHashISC_EENS_10HashTraitsISC_EENSJ_ISG_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1ESF_EEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3935;
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages10WebProcess41SendResourceLoadStatisticsDataImmediatelyENS2_10ConnectionEN6WebKit10WebProcessES9_FvONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10F7E00;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

IPC::Encoder *IPC::Connection::sendAsyncReply<Messages::WebProcess::SendResourceLoadStatisticsDataImmediately>(uint64_t *a1, void *a2)
{
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3934;
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

uint64_t IPC::Decoder::decode<std::tuple<WebKit::ScriptTrackingPrivacyRules>>(_BYTE *a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<std::tuple<WebKit::ScriptTrackingPrivacyRules>,void>::decode<IPC::Decoder>(a1, a2);
  if ((a1[64] & 1) == 0)
  {

    return IPC::Decoder::markInvalid(a2);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::tuple<WebKit::ScriptTrackingPrivacyRules>,void>::decode<IPC::Decoder>(_BYTE *a1, IPC::Decoder *a2)
{
  IPC::Decoder::decode<WebKit::ScriptTrackingPrivacyRules>(a2, v5);
  if (v6)
  {
    _ZNSt3__127__optional_copy_assign_baseINS_5tupleIJN6WebKit26ScriptTrackingPrivacyRulesEEEELb0EECI2NS_24__optional_destruct_baseIS4_Lb0EEEIJS3_EEENS_10in_place_tEDpOT_(a1, v5);
  }

  else
  {
    *a1 = 0;
    a1[64] = 0;
  }

  return std::optional<WebKit::ScriptTrackingPrivacyRules>::~optional(v5, v3);
}

uint64_t _ZNSt3__127__optional_copy_assign_baseINS_5tupleIJN6WebKit26ScriptTrackingPrivacyRulesEEEELb0EECI2NS_24__optional_destruct_baseIS4_Lb0EEEIJS3_EEENS_10in_place_tEDpOT_(uint64_t a1, _DWORD *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1, a2);
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 16, a2 + 4);
  *(a1 + 40) = 0;
  *(a1 + 32) = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 32, a2 + 8);
  *(a1 + 56) = 0;
  *(a1 + 48) = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 48, a2 + 12);
  *(a1 + 64) = 1;
  return a1;
}

uint64_t IPC::Decoder::decode<std::tuple<WebKit::AccessibilityPreferences>>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::Decoder::decode<WebKit::AccessibilityPreferences>(a2, &v8);
  if (v10 == 1)
  {
    *a1 = v8;
    *(a1 + 16) = v9;
    *(a1 + 24) = 1;
  }

  else
  {
    *a1 = 0;
    *(a1 + 24) = 0;
    v5 = *a2;
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
      return (*(*result + 16))(result, v5);
    }
  }

  return result;
}

uint64_t IPC::Decoder::decode<std::tuple<WebCore::CaptionUserPreferencesDisplayMode,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(_BYTE *a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<std::tuple<WebCore::CaptionUserPreferencesDisplayMode,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder>(a1, a2);
  if ((a1[24] & 1) == 0)
  {

    return IPC::Decoder::markInvalid(a2);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::tuple<WebCore::CaptionUserPreferencesDisplayMode,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder>(_BYTE *a1, IPC::Decoder *a2)
{
  result = IPC::Decoder::decode<WebCore::CaptionUserPreferencesDisplayMode>(a2);
  v5 = result;
  if (result > 0xFFu)
  {
    return IPC::ArgumentCoder<std::tuple<WebCore::CaptionUserPreferencesDisplayMode,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder,WebCore::CaptionUserPreferencesDisplayMode>(a1, a2, &v5);
  }

  *a1 = 0;
  a1[24] = 0;
  return result;
}

uint64_t IPC::Decoder::decode<WebCore::CaptionUserPreferencesDisplayMode>(IPC::Decoder *a1)
{
  v2 = IPC::ArgumentCoder<WebCore::CaptionUserPreferencesDisplayMode,void>::decode<IPC::Decoder>(a1);
  if (v2 <= 0xFFu)
  {
    IPC::Decoder::markInvalid(a1);
  }

  return v2;
}

uint64_t IPC::ArgumentCoder<std::tuple<WebCore::CaptionUserPreferencesDisplayMode,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder,WebCore::CaptionUserPreferencesDisplayMode>(uint64_t a1, IPC::Decoder *a2, _BYTE *a3)
{
  result = IPC::Decoder::decode<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a2, &v8);
  if (v10 == 1)
  {
    if (a3[1])
    {
      *a1 = *a3;
      *(a1 + 8) = v8;
      v7 = v9;
      v8 = 0;
      v9 = 0;
      *(a1 + 16) = v7;
      *(a1 + 24) = 1;
      return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v8, v6);
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
  }

  return result;
}

uint64_t IPC::ArgumentCoder<WebCore::CaptionUserPreferencesDisplayMode,void>::decode<IPC::Decoder>(IPC::Decoder *a1)
{
  v1 = IPC::Decoder::decode<unsigned char>(a1);
  if ((v1 & 0x100) != 0 && (v2 = v1, WTF::isValidEnum<WebCore::CaptionUserPreferencesDisplayMode>(v1)))
  {
    v3 = 1;
  }

  else
  {
    v2 = 0;
    v3 = 0;
  }

  return v2 | (v3 << 8);
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages10WebProcess13ReleaseMemoryENS2_10ConnectionEN6WebKit10WebProcessES9_FvONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10F7E28;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages10WebProcess13ReleaseMemoryENS2_10ConnectionEN6WebKit10WebProcessES9_FvONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F7E28;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *IPC::Connection::sendAsyncReply<Messages::WebProcess::ReleaseMemory>(uint64_t *a1, void *a2)
{
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3931;
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

WTF::StringImpl *IPC::Decoder::decode<std::tuple<WTF::String,std::optional<unsigned long long>>>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<std::tuple<WTF::String,std::optional<unsigned long long>>,void>::decode<IPC::Decoder>(a1, a2);
  if ((*(a1 + 24) & 1) == 0)
  {

    return IPC::Decoder::markInvalid(a2);
  }

  return result;
}

WTF::StringImpl *IPC::ArgumentCoder<std::tuple<WTF::String,std::optional<unsigned long long>>,void>::decode<IPC::Decoder>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::Decoder::decode<WTF::String>(a2, &v7);
  if (v8 == 1)
  {
    result = IPC::Decoder::decode<std::optional<unsigned long long>>(a2, &v9);
    if (v10 == 1)
    {
      if (v8)
      {
        *a1 = v7;
        *(a1 + 8) = v9;
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
      v6 = v8;
      *(a1 + 24) = 0;
      if (v6)
      {
        result = v7;
        v7 = 0;
        if (result)
        {
          if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            return WTF::StringImpl::destroy(result, v5);
          }
        }
      }
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 24) = 0;
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages10WebProcess24GetNotifyStateForTestingENS2_10ConnectionEN6WebKit10WebProcessES9_FvRKNS_6StringEONS_17CompletionHandlerIFvNSt3__18optionalIyEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSG_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F7E50;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages10WebProcess24GetNotifyStateForTestingENS2_10ConnectionEN6WebKit10WebProcessES9_FvRKNS_6StringEONS_17CompletionHandlerIFvNSt3__18optionalIyEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSG_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F7E50;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages10WebProcess24GetNotifyStateForTestingENS2_10ConnectionEN6WebKit10WebProcessES9_FvRKNS_6StringEONS_17CompletionHandlerIFvNSt3__18optionalIyEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSG_EE4callESG_(uint64_t a1, void *a2, uint64_t a3)
{
  v10[0] = a2;
  v10[1] = a3;
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3926;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v11 = v5;
  IPC::ArgumentCoder<std::optional<unsigned long long>,void>::encode<IPC::Encoder,std::optional<unsigned long long>>(v5, v10);
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

uint64_t IPC::Decoder::decode<std::tuple<WebKit::WebCompiledContentRuleListData>>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<std::tuple<WebKit::WebCompiledContentRuleListData>,void>::decode<IPC::Decoder>(a1, a2);
  if ((*(a1 + 80) & 1) == 0)
  {

    return IPC::Decoder::markInvalid(a2);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::tuple<WebKit::WebCompiledContentRuleListData>,void>::decode<IPC::Decoder>(uint64_t a1, IPC::Decoder *a2)
{
  IPC::Decoder::decode<WebKit::WebCompiledContentRuleListData>(a2, v9);
  if (v10)
  {
    v4 = v9[0];
    v5 = v9[1];
    v9[0] = 0uLL;
    *a1 = v4;
    *(a1 + 16) = v5;
    v6 = v9[3];
    *(a1 + 32) = v9[2];
    *(a1 + 48) = v6;
    v7 = 1;
    *(a1 + 64) = v9[4];
  }

  else
  {
    v7 = 0;
    *a1 = 0;
  }

  *(a1 + 80) = v7;
  return std::optional<WebKit::WebCompiledContentRuleListData>::~optional(v9, v3);
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages10WebProcess38SetResourceMonitorContentRuleListAsyncENS2_10ConnectionEN6WebKit10WebProcessES9_FvONS8_30WebCompiledContentRuleListDataEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10F7E78;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages10WebProcess38SetResourceMonitorContentRuleListAsyncENS2_10ConnectionEN6WebKit10WebProcessES9_FvONS8_30WebCompiledContentRuleListDataEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F7E78;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages10WebProcess38SetResourceMonitorContentRuleListAsyncENS2_10ConnectionEN6WebKit10WebProcessES9_FvONS8_30WebCompiledContentRuleListDataEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3937;
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

_DWORD *WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::URL>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::URL>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::URL,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::URL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(uint64_t *a1)
{
  v1 = *a1;
  if (*a1)
  {
    v2 = *(v1 - 4);
    v3 = *(v1 - 12);
    if (v2)
    {
      v4 = v2 << (6 * v3 >= 2 * v2);
      goto LABEL_6;
    }
  }

  else
  {
    v2 = 0;
    v3 = 0;
  }

  v4 = 8;
LABEL_6:
  result = WTF::fastZeroedMalloc((48 * v4 + 16));
  *a1 = (result + 4);
  result[2] = v4 - 1;
  result[3] = v4;
  *result = 0;
  result[1] = v3;
  if (v2)
  {
    v7 = 0;
    v8 = v2;
    while (1)
    {
      v9 = v1 + 48 * v7;
      v10 = *v9;
      if (*v9 != -1)
      {
        if (v10)
        {
          v13 = *a1;
          if (*a1)
          {
            v14 = *(v13 - 8);
          }

          else
          {
            v14 = 0;
          }

          v15 = v10[4];
          if (v15 < 0x100)
          {
            v16 = WTF::StringImpl::hashSlowCase(v10);
          }

          else
          {
            v16 = v15 >> 8;
          }

          v17 = 0;
          do
          {
            v18 = (v13 + 48 * (v16 & v14));
            v16 = ++v17 + (v16 & v14);
          }

          while (*v18);
          v19 = v18[1];
          v18[1] = 0;
          if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v19, v6);
          }

          v20 = *v18;
          *v18 = 0;
          if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v20, v6);
          }

          v21 = *v9;
          *v9 = 0;
          *v18 = v21;
          WTF::URL::URL((v18 + 1), (v9 + 8));
          v22 = *(v9 + 8);
          *(v9 + 8) = 0;
          if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v22, v6);
          }

          v12 = *v9;
          *v9 = 0;
          if (!v12 || atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) != 2)
          {
            goto LABEL_35;
          }
        }

        else
        {
          v11 = *(v9 + 8);
          *(v9 + 8) = 0;
          if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v11, v6);
          }

          v12 = *v9;
          *v9 = 0;
          if (!v12 || atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) != 2)
          {
            goto LABEL_35;
          }
        }

        WTF::StringImpl::destroy(v12, v6);
      }

LABEL_35:
      if (++v7 == v8)
      {
        goto LABEL_39;
      }
    }
  }

  if (v1)
  {
LABEL_39:

    return WTF::fastFree((v1 - 16), v6);
  }

  return result;
}

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::URL>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::URL>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::URL,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::URL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(WTF::StringImpl **a1, WTF::StringImpl *a2)
{
  v3 = *(a1 - 1);
  if (v3)
  {
    v4 = a1;
    do
    {
      if (*v4 != -1)
      {
        v5 = v4[1];
        v4[1] = 0;
        if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v5, a2);
        }

        v6 = *v4;
        *v4 = 0;
        if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v6, a2);
        }
      }

      v4 += 6;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 2), a2);
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages14WebProcessPool20StoppedUsingGamepadsENS2_10ConnectionEN6WebKit14WebProcessPoolES9_FvRS7_ONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10F7EA0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages14WebProcessPool20StoppedUsingGamepadsENS2_10ConnectionEN6WebKit14WebProcessPoolES9_FvRS7_ONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F7EA0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages14WebProcessPool20StoppedUsingGamepadsENS2_10ConnectionEN6WebKit14WebProcessPoolES9_FvRS7_ONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3914;
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages14WebProcessPool17PlayGamepadEffectENS2_10ConnectionEN6WebKit14WebProcessPoolES9_FvjRKNS_6StringEN7WebCore23GamepadHapticEffectTypeERKNSD_23GamepadEffectParametersEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED1Ev(void *a1)
{
  *a1 = &unk_1F10F7EC8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages14WebProcessPool17PlayGamepadEffectENS2_10ConnectionEN6WebKit14WebProcessPoolES9_FvjRKNS_6StringEN7WebCore23GamepadHapticEffectTypeERKNSD_23GamepadEffectParametersEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F7EC8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages14WebProcessPool17PlayGamepadEffectENS2_10ConnectionEN6WebKit14WebProcessPoolES9_FvjRKNS_6StringEN7WebCore23GamepadHapticEffectTypeERKNSD_23GamepadEffectParametersEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEE4callEb(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3912;
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages14WebProcessPool18StopGamepadEffectsENS2_10ConnectionEN6WebKit14WebProcessPoolES9_FvjRKNS_6StringEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10F7EF0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages14WebProcessPool18StopGamepadEffectsENS2_10ConnectionEN6WebKit14WebProcessPoolES9_FvjRKNS_6StringEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F7EF0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages14WebProcessPool18StopGamepadEffectsENS2_10ConnectionEN6WebKit14WebProcessPoolES9_FvjRKNS_6StringEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3913;
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

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages14WebProcessPool24HandleSynchronousMessageEN6WebKit14WebProcessPoolES8_FvRNS2_10ConnectionERKNS_6StringERKNS7_8UserDataEONS_17CompletionHandlerIFvOSE_EEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSI_EED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F7F18;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages14WebProcessPool24HandleSynchronousMessageEN6WebKit14WebProcessPoolES8_FvRNS2_10ConnectionERKNS_6StringERKNS7_8UserDataEONS_17CompletionHandlerIFvOSE_EEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSI_EED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F7F18;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages14WebProcessPool24HandleSynchronousMessageEN6WebKit14WebProcessPoolES8_FvRNS2_10ConnectionERKNS_6StringERKNS7_8UserDataEONS_17CompletionHandlerIFvOSE_EEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSI_EE4callESI_(uint64_t a1, uint64_t *a2)
{
  v2 = (a1 + 8);
  IPC::ArgumentCoder<WebKit::UserData,void>::encode(*(a1 + 8), a2);
  v3 = v2[1];

  return IPC::Connection::sendMessageImpl(v3, v2, 0, 0);
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages15WebProcessProxy16GetNotificationsENS2_10ConnectionEN6WebKit15WebProcessProxyES9_FvRKNS_3URLERKNS_6StringEONS_17CompletionHandlerIFvONS_6VectorIN7WebCore16NotificationDataELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F7F40;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages15WebProcessProxy16GetNotificationsENS2_10ConnectionEN6WebKit15WebProcessProxyES9_FvRKNS_3URLERKNS_6StringEONS_17CompletionHandlerIFvONS_6VectorIN7WebCore16NotificationDataELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F7F40;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages15WebProcessProxy16GetNotificationsENS2_10ConnectionEN6WebKit15WebProcessProxyES9_FvRKNS_3URLERKNS_6StringEONS_17CompletionHandlerIFvONS_6VectorIN7WebCore16NotificationDataELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_EE4callESN_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3916;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::VectorArgumentCoder<false,WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v5, a2);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages15WebProcessProxy14SetupLogStreamENS2_10ConnectionEN6WebKit15WebProcessProxyES9_FvjONS2_28StreamServerConnectionHandleENS_23ObjectIdentifierGenericINS8_23LogStreamIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_17CompletionHandlerIFvRNS2_9SemaphoreESJ_EEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSJ_SJ_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F7F68;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages15WebProcessProxy29CreateServiceWorkerDebuggableENS2_10ConnectionEN6WebKit15WebProcessProxyES9_FvNS_23ObjectIdentifierGenericIN7WebCore27ServiceWorkerIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_3URLENSB_26ServiceWorkerIsInspectableEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED1Ev(void *a1)
{
  *a1 = &unk_1F10F7F90;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages15WebProcessProxy29CreateServiceWorkerDebuggableENS2_10ConnectionEN6WebKit15WebProcessProxyES9_FvNS_23ObjectIdentifierGenericIN7WebCore27ServiceWorkerIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_3URLENSB_26ServiceWorkerIsInspectableEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F7F90;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages15WebProcessProxy29CreateServiceWorkerDebuggableENS2_10ConnectionEN6WebKit15WebProcessProxyES9_FvNS_23ObjectIdentifierGenericIN7WebCore27ServiceWorkerIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_3URLENSB_26ServiceWorkerIsInspectableEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEE4callEb(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3915;
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

IPC::Decoder *IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String>,void>::decode<IPC::Decoder>@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1);
  v6 = result;
  v7 = v5;
  if (v5)
  {
    return IPC::ArgumentCoder<std::tuple<unsigned long long,WTF::String>,void>::decode<IPC::Decoder,unsigned long long>(a1, &v6, a2);
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages15WebProcessProxy15ShouldTerminateEN6WebKit15WebProcessProxyES8_FvONS_17CompletionHandlerIFvbEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJbEED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F7FB8;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages15WebProcessProxy15ShouldTerminateEN6WebKit15WebProcessProxyES8_FvONS_17CompletionHandlerIFvbEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJbEED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F7FB8;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages15WebProcessProxy15ShouldTerminateEN6WebKit15WebProcessProxyES8_FvONS_17CompletionHandlerIFvbEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJbEE4callEb(uint64_t a1, char a2)
{
  v4 = a2;
  v2 = a1 + 8;
  IPC::Encoder::operator<<<BOOL>(*(a1 + 8), &v4);
  return IPC::Connection::sendMessageImpl(*(v2 + 8), v2, 0, 0);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages15WebProcessProxy27GetNetworkProcessConnectionEN6WebKit15WebProcessProxyES8_FvONS_17CompletionHandlerIFvONS7_28NetworkProcessConnectionInfoEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSB_EED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F7FE0;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages15WebProcessProxy27GetNetworkProcessConnectionEN6WebKit15WebProcessProxyES8_FvONS_17CompletionHandlerIFvONS7_28NetworkProcessConnectionInfoEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSB_EED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F7FE0;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages15WebProcessProxy27GetNetworkProcessConnectionEN6WebKit15WebProcessProxyES8_FvONS_17CompletionHandlerIFvONS7_28NetworkProcessConnectionInfoEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSB_EE4callESB_(uint64_t a1, unint64_t a2)
{
  v2 = (a1 + 8);
  IPC::ArgumentCoder<WebKit::NetworkProcessConnectionInfo,void>::encode(*(a1 + 8), a2);
  v3 = v2[1];

  return IPC::Connection::sendMessageImpl(v3, v2, 0, 0);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages15WebProcessProxy43WaitForSharedPreferencesForWebProcessToSyncEN6WebKit15WebProcessProxyES8_FvyONS_17CompletionHandlerIFvbEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJbEED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F8008;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages15WebProcessProxy43WaitForSharedPreferencesForWebProcessToSyncEN6WebKit15WebProcessProxyES8_FvyONS_17CompletionHandlerIFvbEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJbEED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F8008;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages15WebProcessProxy43WaitForSharedPreferencesForWebProcessToSyncEN6WebKit15WebProcessProxyES8_FvyONS_17CompletionHandlerIFvbEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJbEE4callEb(uint64_t a1, char a2)
{
  v4 = a2;
  v2 = a1 + 8;
  IPC::Encoder::operator<<<BOOL>(*(a1 + 8), &v4);
  return IPC::Connection::sendMessageImpl(*(v2 + 8), v2, 0, 0);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages15WebProcessProxy25SerializeAndWrapCryptoKeyEN6WebKit15WebProcessProxyES8_FvON7WebCore13CryptoKeyDataEONS_17CompletionHandlerIFvONSt3__18optionalINS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSK_EED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F8030;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages15WebProcessProxy25SerializeAndWrapCryptoKeyEN6WebKit15WebProcessProxyES8_FvON7WebCore13CryptoKeyDataEONS_17CompletionHandlerIFvONSt3__18optionalINS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSK_EED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F8030;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages15WebProcessProxy25SerializeAndWrapCryptoKeyEN6WebKit15WebProcessProxyES8_FvON7WebCore13CryptoKeyDataEONS_17CompletionHandlerIFvONSt3__18optionalINS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSK_EE4callESK_(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 8);
  IPC::ArgumentCoder<std::optional<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::Encoder,std::optional<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(*(a1 + 8), a2);
  v3 = v2[1];

  return IPC::Connection::sendMessageImpl(v3, v2, 0, 0);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages15WebProcessProxy15UnwrapCryptoKeyEN6WebKit15WebProcessProxyES8_FvON7WebCore16WrappedCryptoKeyEONS_17CompletionHandlerIFvONSt3__18optionalINS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSK_EED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F8058;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages15WebProcessProxy15UnwrapCryptoKeyEN6WebKit15WebProcessProxyES8_FvON7WebCore16WrappedCryptoKeyEONS_17CompletionHandlerIFvONSt3__18optionalINS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSK_EED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F8058;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages15WebProcessProxy15UnwrapCryptoKeyEN6WebKit15WebProcessProxyES8_FvON7WebCore16WrappedCryptoKeyEONS_17CompletionHandlerIFvONSt3__18optionalINS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSK_EE4callESK_(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 8);
  IPC::ArgumentCoder<std::optional<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::Encoder,std::optional<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(*(a1 + 8), a2);
  v3 = v2[1];

  return IPC::Connection::sendMessageImpl(v3, v2, 0, 0);
}

void sub_19DADCDDC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DADCEB4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
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

void sub_19DADD264(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DADD344(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DADD5C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    CFRelease(*(a10 + 8));
  }

  _Unwind_Resume(exception_object);
}

void sub_19DADDA08(_Unwind_Exception *a1)
{
  if (v2)
  {
  }

  CFRelease(*(v1 + 8));
  _Unwind_Resume(a1);
}

void sub_19DADED30(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DADEE98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  CFRelease(*(v3 + 8));
  WTF::Vector<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va, v5);
  _Unwind_Resume(a1);
}

void sub_19DADEF80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  CFRelease(*(v3 + 8));
  WTF::Vector<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va, v5);
  _Unwind_Resume(a1);
}

uint64_t WebKit::WebRTCMonitor::didReceiveMessage(WebKit::WebRTCMonitor *this, IPC::Connection *a2, IPC::Decoder *a3)
{
  v66 = *MEMORY[0x1E69E9840];
  WebKit::WebRTCMonitor::ref(this);
  v6 = *(a3 + 25);
  if (v6 != 3024)
  {
    v26 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
    {
      if (v6 >= 0x107F)
      {
        v27 = 4223;
      }

      else
      {
        v27 = v6;
      }

      v28 = (&IPC::Detail::messageDescriptions)[3 * v27];
      v29 = *(a3 + 7);
      *buf = 136315394;
      *&buf[4] = v28;
      *v60 = 2048;
      *&v60[2] = v29;
      _os_log_error_impl(&dword_19D52D000, v26, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", buf, 0x16u);
    }

    goto LABEL_38;
  }

  v7 = *(a3 + 1);
  v8 = ((*(a3 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *a3;
  v10 = v8 - *a3;
  v11 = v7 >= v10;
  v12 = v7 - v10;
  if (!v11 || v12 <= 7)
  {
    *a3 = 0;
    *(a3 + 1) = 0;
    v49 = *(a3 + 3);
    if (v49)
    {
      if (v7)
      {
        (*(*v49 + 16))(v49);
        v7 = *(a3 + 1);
      }
    }

    else
    {
      v7 = 0;
    }

    goto LABEL_65;
  }

  *(a3 + 2) = v8 + 1;
  if (!v8)
  {
LABEL_65:
    *a3 = 0;
    *(a3 + 1) = 0;
    v50 = *(a3 + 3);
    if (v50 && v7)
    {
      (*(*v50 + 16))(v50);
    }

    goto LABEL_59;
  }

  v14 = *v8;
  v56[0] = 0;
  v56[1] = 0;
  if (v14 >= 0x2AAA)
  {
    while (1)
    {
      IPC::Decoder::decode<WebKit::RTCNetwork>(buf, a3);
      v36 = v65;
      if (v65 == 1)
      {
        if (HIDWORD(v56[1]) == LODWORD(v56[1]))
        {
          WTF::Vector<WebKit::RTCNetwork,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::RTCNetwork>(v56, buf);
        }

        else
        {
          v37 = v56[0] + 96 * HIDWORD(v56[1]);
          *v37 = 0;
          *(v37 + 1) = 0;
          v38 = *buf;
          *buf = 0;
          *v37 = v38;
          LODWORD(v38) = *&buf[8];
          *&buf[8] = 0;
          *(v37 + 2) = v38;
          LODWORD(v38) = *v60;
          *v60 = 0;
          *(v37 + 3) = v38;
          *(v37 + 2) = 0;
          *(v37 + 3) = 0;
          v39 = *&v60[4];
          *&v60[4] = 0;
          *(v37 + 2) = v39;
          LODWORD(v39) = *&v60[12];
          *&v60[12] = 0;
          *(v37 + 6) = v39;
          LODWORD(v39) = *&v60[16];
          *&v60[16] = 0;
          *(v37 + 7) = v39;
          v40 = *v61;
          v41 = *&v61[16];
          *(v37 + 60) = *&v61[28];
          *(v37 + 2) = v40;
          *(v37 + 3) = v41;
          *(v37 + 10) = 0;
          *(v37 + 11) = 0;
          v42 = v62;
          v62 = 0;
          *(v37 + 10) = v42;
          LODWORD(v42) = v63;
          v63 = 0;
          *(v37 + 22) = v42;
          LODWORD(v42) = v64;
          v64 = 0;
          *(v37 + 23) = v42;
          ++HIDWORD(v56[1]);
        }
      }

      if (v65 == 1)
      {
        v43 = v62;
        if (v62)
        {
          v62 = 0;
          v63 = 0;
          WTF::fastFree(v43, v9);
        }

        v44 = *&v60[4];
        if (*&v60[4])
        {
          *&v60[4] = 0;
          *&v60[12] = 0;
          WTF::fastFree(v44, v9);
        }

        v45 = *buf;
        if (*buf)
        {
          memset(buf, 0, sizeof(buf));
          WTF::fastFree(v45, v9);
        }
      }

      if ((v36 & 1) == 0)
      {
        goto LABEL_58;
      }

      if (!--v14)
      {
        WTF::Vector<WebKit::RTCNetwork,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(v56, HIDWORD(v56[1]));
        v24 = v56[0];
        *&v51 = v56[0];
        LODWORD(v14) = v56[1];
        v25 = HIDWORD(v56[1]);
        v56[0] = 0;
        v56[1] = 0;
        goto LABEL_32;
      }
    }
  }

  if (v14)
  {
    LODWORD(v56[1]) = 96 * v14 / 0x60u;
    v56[0] = WTF::fastMalloc((96 * v14));
    while (1)
    {
      IPC::Decoder::decode<WebKit::RTCNetwork>(buf, a3);
      v15 = v65;
      if (v65 == 1)
      {
        if (HIDWORD(v56[1]) == LODWORD(v56[1]))
        {
          WTF::Vector<WebKit::RTCNetwork,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::RTCNetwork>(v56, buf);
        }

        else
        {
          v16 = v56[0] + 96 * HIDWORD(v56[1]);
          *v16 = 0;
          *(v16 + 1) = 0;
          v17 = *buf;
          *buf = 0;
          *v16 = v17;
          LODWORD(v17) = *&buf[8];
          *&buf[8] = 0;
          *(v16 + 2) = v17;
          LODWORD(v17) = *v60;
          *v60 = 0;
          *(v16 + 3) = v17;
          *(v16 + 2) = 0;
          *(v16 + 3) = 0;
          v18 = *&v60[4];
          *&v60[4] = 0;
          *(v16 + 2) = v18;
          LODWORD(v18) = *&v60[12];
          *&v60[12] = 0;
          *(v16 + 6) = v18;
          LODWORD(v18) = *&v60[16];
          *&v60[16] = 0;
          *(v16 + 7) = v18;
          v5 = *v61;
          v19 = *&v61[16];
          *(v16 + 60) = *&v61[28];
          *(v16 + 2) = v5;
          *(v16 + 3) = v19;
          *(v16 + 10) = 0;
          *(v16 + 11) = 0;
          v20 = v62;
          v62 = 0;
          *(v16 + 10) = v20;
          LODWORD(v20) = v63;
          v63 = 0;
          *(v16 + 22) = v20;
          LODWORD(v20) = v64;
          v64 = 0;
          *(v16 + 23) = v20;
          ++HIDWORD(v56[1]);
        }
      }

      if (v65 == 1)
      {
        v21 = v62;
        if (v62)
        {
          v62 = 0;
          v63 = 0;
          WTF::fastFree(v21, v9);
        }

        v22 = *&v60[4];
        if (*&v60[4])
        {
          *&v60[4] = 0;
          *&v60[12] = 0;
          WTF::fastFree(v22, v9);
        }

        v23 = *buf;
        if (*buf)
        {
          memset(buf, 0, sizeof(buf));
          WTF::fastFree(v23, v9);
        }
      }

      if ((v15 & 1) == 0)
      {
        break;
      }

      if (!--v14)
      {
        v24 = v56[0];
        LODWORD(v14) = v56[1];
        v25 = HIDWORD(v56[1]);
        goto LABEL_31;
      }
    }

LABEL_58:
    WTF::Vector<WebKit::RTCNetwork,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v56, v9);
LABEL_59:
    v46 = *a3;
    v47 = *(a3 + 1);
    *a3 = 0;
    *(a3 + 1) = 0;
    v48 = *(a3 + 3);
    if (v48 && v47)
    {
      (*(*v48 + 16))(v48, v46);
    }

    goto LABEL_38;
  }

  v25 = 0;
  v24 = 0;
LABEL_31:
  *&v5 = 0;
  *v56 = v5;
  *&v51 = v24;
LABEL_32:
  *(&v51 + 1) = __PAIR64__(v25, v14);
  v52 = 1;
  WTF::Vector<WebKit::RTCNetwork,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v56, v9);
  IPC::Decoder::decode<WebKit::WebRTCNetwork::IPAddress>(a3, &v53);
  if ((v55 & 1) == 0 || (IPC::Decoder::decode<WebKit::WebRTCNetwork::IPAddress>(a3, v56), v58 != 1))
  {
    WTF::Vector<WebKit::RTCNetwork,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v51, v30);
LABEL_38:
    v34 = *a3;
    v35 = *(a3 + 1);
    *a3 = 0;
    *(a3 + 1) = 0;
    result = *(a3 + 3);
    if (result && v35)
    {
      result = (*(*result + 16))(result, v34);
    }

    goto LABEL_39;
  }

  if ((v55 & 1) == 0)
  {
    __break(1u);
  }

  *&v31 = 0;
  v51 = v31;
  *buf = v24;
  *&buf[8] = v14;
  *v60 = v25;
  *&v60[4] = v53;
  *v61 = v54;
  *&v61[4] = *v56;
  *&v61[20] = v57;
  v61[24] = 1;
  WTF::Vector<WebKit::RTCNetwork,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v51, v30);
  result = WebKit::WebRTCMonitor::networksChanged(this, buf, &v60[4], &v61[4]);
  if (v61[24])
  {
    result = WTF::Vector<WebKit::RTCNetwork,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(buf, v33);
  }

LABEL_39:
  if (this)
  {
    return WebKit::WebRTCMonitor::ref(this);
  }

  return result;
}

WebKit::WebRTCResolver *WebKit::WebRTCResolver::didReceiveMessage(WebKit::WebRTCResolver *this, IPC::Connection *a2, IPC::Decoder *a3, __n128 a4, __n128 a5)
{
  v50 = *MEMORY[0x1E69E9840];
  ++*this;
  v7 = *(a3 + 25);
  if (v7 == 3025)
  {
    v24 = IPC::Decoder::decode<std::tuple<int>>(a3);
    if ((v24 & 0x100000000) != 0)
    {
      WebKit::WebRTCResolver::resolvedAddressError(this, v24);
    }
  }

  else if (v7 == 3026)
  {
    v8 = *(a3 + 1);
    v9 = ((*(a3 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
    v10 = v9 - *a3;
    v11 = v8 >= v10;
    v12 = v8 - v10;
    if (!v11 || v12 <= 7)
    {
      *a3 = 0;
      *(a3 + 1) = 0;
      v45 = *(a3 + 3);
      if (v45)
      {
        if (v8)
        {
          (*(*v45 + 16))(v45);
          v8 = *(a3 + 1);
        }
      }

      else
      {
        v8 = 0;
      }

      goto LABEL_47;
    }

    *(a3 + 2) = v9 + 1;
    if (!v9)
    {
LABEL_47:
      *a3 = 0;
      *(a3 + 1) = 0;
      v46 = *(a3 + 3);
      if (v46 && v8)
      {
        (*(*v46 + 16))(v46);
      }

      goto LABEL_39;
    }

    v14 = *v9;
    v47 = 0;
    v48 = 0;
    if (v14 >= 0xCCCC)
    {
      while (1)
      {
        IPC::Decoder::decode<WebKit::WebRTCNetwork::IPAddress>(a3, buf);
        if (buf[20] != 1)
        {
          goto LABEL_37;
        }

        v34 = HIDWORD(v48);
        if (HIDWORD(v48) == v48)
        {
          v35 = WTF::Vector<WebCore::FloatLine,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v47, HIDWORD(v48) + 1, buf);
          v34 = HIDWORD(v48);
          v36 = v47 + 20 * HIDWORD(v48);
          v37 = *(v35 + 16);
          *v36 = *v35;
          *(v36 + 4) = v37;
        }

        else
        {
          v38 = v47 + 20 * HIDWORD(v48);
          v39 = *buf;
          *(v38 + 4) = *&buf[16];
          *v38 = v39;
        }

        HIDWORD(v48) = v34 + 1;
        if (!--v14)
        {
          WTF::Vector<WebCore::FloatLine,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v47, (v34 + 1));
          v18 = v47;
          v23 = v48;
          v22 = HIDWORD(v48);
          goto LABEL_24;
        }
      }
    }

    if (v14)
    {
      LODWORD(v48) = 20 * v14 / 0x14u;
      v47 = WTF::fastMalloc((20 * v14));
      while (1)
      {
        IPC::Decoder::decode<WebKit::WebRTCNetwork::IPAddress>(a3, buf);
        if (buf[20] != 1)
        {
          break;
        }

        v16 = HIDWORD(v48);
        if (HIDWORD(v48) == v48)
        {
          v17 = WTF::Vector<WebCore::FloatLine,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v47, HIDWORD(v48) + 1, buf);
          v16 = HIDWORD(v48);
          v18 = v47;
          v19 = v47 + 20 * HIDWORD(v48);
          v20 = v17[1].n128_u32[0];
          a4 = *v17;
          *v19 = *v17;
          *(v19 + 4) = v20;
        }

        else
        {
          v18 = v47;
          v21 = (v47 + 20 * HIDWORD(v48));
          a4 = *buf;
          v21[1].n128_u32[0] = *&buf[16];
          *v21 = a4;
        }

        v22 = v16 + 1;
        HIDWORD(v48) = v22;
        if (!--v14)
        {
          v23 = v48;
          goto LABEL_24;
        }
      }

LABEL_37:
      v40 = v47;
      if (v47)
      {
        v47 = 0;
        LODWORD(v48) = 0;
        WTF::fastFree(v40, v15);
      }

LABEL_39:
      v41 = *a3;
      v42 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v43 = *(a3 + 3);
      if (!v43)
      {
        return WTF::RefCounted<WebKit::WebRTCResolver>::deref(this);
      }

      if (!v42)
      {
        return WTF::RefCounted<WebKit::WebRTCResolver>::deref(this);
      }

      (*(*v43 + 16))(v43, v41);
      v26 = *a3;
      v27 = *(a3 + 1);
      v28 = *(a3 + 3);
      *a3 = 0;
      *(a3 + 1) = 0;
      if (!v28)
      {
        return WTF::RefCounted<WebKit::WebRTCResolver>::deref(this);
      }

      goto LABEL_43;
    }

    v22 = 0;
    v23 = 0;
    v18 = 0;
LABEL_24:
    *buf = v18;
    *&buf[8] = v23;
    *&buf[12] = v22;
    buf[16] = 1;
    WebKit::WebRTCResolver::setResolvedAddress(this, buf, a4.n128_f64[0], a5);
    if (buf[16])
    {
      v30 = *buf;
      if (*buf)
      {
        *buf = 0;
        *&buf[8] = 0;
        WTF::fastFree(v30, v29);
      }
    }
  }

  else
  {
    v25 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
    {
      if (v7 >= 0x107F)
      {
        v31 = 4223;
      }

      else
      {
        v31 = v7;
      }

      v32 = (&IPC::Detail::messageDescriptions)[3 * v31];
      v33 = *(a3 + 7);
      *buf = 136315394;
      *&buf[4] = v32;
      *&buf[12] = 2048;
      *&buf[14] = v33;
      _os_log_error_impl(&dword_19D52D000, v25, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", buf, 0x16u);
    }

    v26 = *a3;
    v27 = *(a3 + 1);
    *a3 = 0;
    *(a3 + 1) = 0;
    v28 = *(a3 + 3);
    if (v28)
    {
LABEL_43:
      if (v27)
      {
        (*(*v28 + 16))(v28, v26);
      }
    }
  }

  return WTF::RefCounted<WebKit::WebRTCResolver>::deref(this);
}

void WebKit::WebResourceLoader::didReceiveMessage(WebKit::WebResourceLoader *this, WTF::ThreadSafeWeakPtrControlBlock **a2, unsigned __int8 **a3)
{
  v69 = *MEMORY[0x1E69E9840];
  ++*(this + 2);
  v5 = *(a3 + 25);
  switch(*(a3 + 25))
  {
    case 0xBD3:
      IPC::handleMessage<Messages::WebResourceLoader::ContentFilterDidBlockLoad,IPC::Connection,WebKit::WebResourceLoader,WebKit::WebResourceLoader,void ()(WebCore::ContentFilterUnblockHandler const&,WTF::String &&,WebCore::ResourceError const&,WTF::URL const&,WebCore::SubstituteData &&)>(a3, this);
      goto LABEL_45;
    case 0xBD4:
      WebKit::WebResourceLoader::didBlockAuthenticationChallenge(this);
      goto LABEL_45;
    case 0xBD5:
      IPC::handleMessage<Messages::WebResourceLoader::DidFailResourceLoad,IPC::Connection,WebKit::WebResourceLoader,WebKit::WebResourceLoader,void ()(WebCore::ResourceError const&)>(a3, this);
      goto LABEL_45;
    case 0xBD6:
      IPC::handleMessage<Messages::WebResourceLoader::DidFailServiceWorkerLoad,IPC::Connection,WebKit::WebResourceLoader,WebKit::WebResourceLoader,void ()(WebCore::ResourceError const&)>(a3, this);
      goto LABEL_45;
    case 0xBD7:
      IPC::ArgumentCoder<std::tuple<WebCore::NetworkLoadMetrics>,void>::decode<IPC::Decoder>(a3, buf);
      if (v57 & 1) != 0 || (IPC::Decoder::markInvalid(a3), (v57))
      {
        WebKit::WebResourceLoader::didFinishResourceLoad(this, buf);
        if (v57)
        {
          v30 = v56;
          v56 = 0;
          if (v30)
          {
            WTF::RefCounted<WebCore::AdditionalNetworkLoadMetricsForWebInspector>::deref(v30, v29);
          }

          v31 = v55;
          v55 = 0;
          if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v31, v29);
          }
        }
      }

      goto LABEL_45;
    case 0xBD8:
      IPC::ArgumentCoder<IPC::SharedBufferReference,void>::decode(a3, &v39);
      if ((v41 & 1) == 0)
      {
        goto LABEL_69;
      }

      v6 = a3[1];
      v7 = ((a3[2] + 7) & 0xFFFFFFFFFFFFFFF8);
      v8 = (v7 - *a3);
      v9 = v6 >= v8;
      v10 = v6 - v8;
      if (v9 && v10 > 7)
      {
        a3[2] = (v7 + 1);
        if (v7)
        {
          v12 = *v7;
          *&buf[8] = v40;
          *buf = v39;
          v53 = v12;
          v54 = 1;
          v40 = 0uLL;
LABEL_10:
          v13 = v40;
          *&v40 = 0;
          if (v13 && atomic_fetch_add(v13 + 2, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v13 + 2);
            (*(*v13 + 8))(v13);
          }

          goto LABEL_13;
        }
      }

      else
      {
        IPC::Decoder::markInvalid(a3);
      }

      IPC::Decoder::markInvalid(a3);
      buf[0] = 0;
      v38 = *(&v40 + 1);
      v54 = 0;
      *(&v40 + 1) = 0;
      if (v38)
      {
        WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v38);
      }

      goto LABEL_10;
    case 0xBD9:
      IPC::ArgumentCoder<std::tuple<WebCore::ShareableResourceHandle>,void>::decode<IPC::Decoder>(a3, buf);
      if (v53 & 1) != 0 || (IPC::Decoder::markInvalid(a3), (v53))
      {
        WebKit::WebResourceLoader::didReceiveResource(this);
        if (v53)
        {
          WTF::MachSendRight::~MachSendRight(buf);
        }
      }

      goto LABEL_45;
    case 0xBDA:
      IPC::ArgumentCoder<WebCore::ResourceResponse,void>::decode(a3, &v39);
      if ((v43 & 1) == 0)
      {
        IPC::Decoder::markInvalid(a3);
        if ((v43 & 1) == 0)
        {
          buf[0] = 0;
          v68 = 0;
          goto LABEL_80;
        }
      }

      v17 = a3[1];
      v16 = a3[2];
      v18 = *a3;
      if (v17 <= v16 - *a3)
      {
        IPC::Decoder::markInvalid(a3);
        goto LABEL_94;
      }

      v19 = v16 + 1;
      a3[2] = v16 + 1;
      if (!v16)
      {
        goto LABEL_94;
      }

      v20 = *v16;
      if (v20 >= 2)
      {
LABEL_95:
        IPC::Decoder::markInvalid(a3);
        goto LABEL_96;
      }

      if (v17 <= v19 - v18)
      {
LABEL_94:
        IPC::Decoder::markInvalid(a3);
        goto LABEL_95;
      }

      a3[2] = v16 + 2;
      if (v16 == -1)
      {
        goto LABEL_95;
      }

      v21 = *v19;
      if (v21 >= 2)
      {
LABEL_96:
        IPC::Decoder::markInvalid(a3);
        v23 = 0;
        buf[0] = 0;
        v68 = 0;
LABEL_32:
        if (v43)
        {
          v24 = cf;
          cf = 0;
          if (v24)
          {
            CFRelease(v24);
          }

          WebCore::ResourceResponseBase::~ResourceResponseBase(&v39, v22);
          v23 = v68;
        }

        if (v23)
        {
LABEL_37:
          WebKit::WebResourceLoader::didReceiveResponse(this, buf, v59, v60, v61);
          if (v68)
          {
            if (v67 == 1)
            {
              v26 = v66;
              v66 = 0;
              if (v26)
              {
                WTF::RefCounted<WebCore::AdditionalNetworkLoadMetricsForWebInspector>::deref(v26, v25);
              }

              v27 = v63;
              v63 = 0;
              if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v27, v25);
              }
            }

            v28 = v58;
            v58 = 0;
            if (v28)
            {
              CFRelease(v28);
            }

            WebCore::ResourceResponseBase::~ResourceResponseBase(buf, v25);
          }

          goto LABEL_45;
        }

LABEL_80:
        IPC::Decoder::markInvalid(a3);
        if ((v68 & 1) == 0)
        {
          goto LABEL_45;
        }

        goto LABEL_37;
      }

      IPC::ArgumentCoder<std::optional<WebCore::NetworkLoadMetrics>,void>::decode<IPC::Decoder>(a3, v44);
      if ((v51 & 1) == 0)
      {
        IPC::Decoder::markInvalid(a3);
        if ((v51 & 1) == 0)
        {
          v23 = 0;
          buf[0] = 0;
LABEL_31:
          v68 = v23;
          goto LABEL_32;
        }
      }

      if (v43)
      {
        std::__tuple_leaf<0ul,WebCore::ResourceResponse,false>::__tuple_leaf[abi:sn200100]<WebCore::ResourceResponse,0>(buf, &v39);
        v59 = v20;
        v60 = v21;
        LOBYTE(v61[0]) = 0;
        v67 = 0;
        v23 = 1;
        if (v50 == 1)
        {
          v62 = v45;
          v61[2] = v44[2];
          v61[3] = v44[3];
          v61[4] = v44[4];
          v61[0] = v44[0];
          v61[1] = v44[1];
          v63 = v46;
          v64 = v47;
          v65 = v48;
          v66 = v49;
          v67 = 1;
        }

        goto LABEL_31;
      }

      __break(1u);
LABEL_69:
      IPC::Decoder::markInvalid(a3);
      buf[0] = 0;
      v54 = 0;
LABEL_13:
      if (v54)
      {
        WebKit::WebResourceLoader::didReceiveData(this, buf, v53);
        if (v54)
        {
          v14 = *&buf[16];
          *&buf[16] = 0;
          if (v14)
          {
            WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v14);
          }

          v15 = *&buf[8];
          *&buf[8] = 0;
          if (v15 && atomic_fetch_add(v15 + 2, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v15 + 2);
            (*(*v15 + 8))(v15);
          }
        }
      }

      else
      {
LABEL_86:
        IPC::Decoder::markInvalid(a3);
      }

LABEL_45:
      if (*(this + 2) == 1)
      {
        (*(*this + 8))(this);
      }

      else
      {
        --*(this + 2);
      }

      return;
    case 0xBDB:
      IPC::Decoder::decode<std::tuple<unsigned long long,unsigned long long>>(a3, buf);
      if (buf[16] == 1)
      {
        WebKit::WebResourceLoader::didSendData(this);
      }

      goto LABEL_45;
    case 0xBDC:
      WebKit::WebResourceLoader::serviceWorkerDidNotHandle(this);
      goto LABEL_45;
    case 0xBDD:
      v32 = IPC::Decoder::decode<std::tuple<WTF::MonotonicTime>>(a3);
      if (v33)
      {
        *(this + 12) = v32;
      }

      goto LABEL_45;
    case 0xBDE:
      IPC::handleMessage<Messages::WebResourceLoader::StopLoadingAfterXFrameOptionsOrContentSecurityPolicyDenied,IPC::Connection,WebKit::WebResourceLoader,WebKit::WebResourceLoader,void ()(WebCore::ResourceResponse const&)>(a3, this);
      goto LABEL_45;
    case 0xBDF:
      IPC::Decoder::decode<std::tuple<WTF::UUID,WTF::UUID>>(buf, a3);
      if (v54 == 1)
      {
        WebKit::WebResourceLoader::updateResultingClientIdentifier(this);
      }

      goto LABEL_45;
    case 0xBE0:
      IPC::handleMessageAsync<Messages::WebResourceLoader::WillSendRequest,IPC::Connection,WebKit::WebResourceLoader,WebKit::WebResourceLoader,void ()(WebCore::ResourceRequest &&,IPC::FormDataReference &&,WebCore::ResourceResponse &&,WTF::CompletionHandler<void ()(WebCore::ResourceRequest &,BOOL)> &&)>(a2, a3, this);
      goto LABEL_45;
    default:
      v34 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        if (v5 >= 0x107F)
        {
          v35 = 4223;
        }

        else
        {
          v35 = v5;
        }

        v36 = (&IPC::Detail::messageDescriptions)[3 * v35];
        v37 = a3[7];
        *buf = 136315394;
        *&buf[4] = v36;
        *&buf[12] = 2048;
        *&buf[14] = v37;
        _os_log_error_impl(&dword_19D52D000, v34, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", buf, 0x16u);
      }

      goto LABEL_86;
  }
}

uint64_t IPC::handleMessageAsync<Messages::WebResourceLoader::WillSendRequest,IPC::Connection,WebKit::WebResourceLoader,WebKit::WebResourceLoader,void ()(WebCore::ResourceRequest &&,IPC::FormDataReference &&,WebCore::ResourceResponse &&,WTF::CompletionHandler<void ()(WebCore::ResourceRequest &,BOOL)> &&)>(WTF::ThreadSafeWeakPtrControlBlock **a1, IPC::Decoder *a2, uint64_t a3)
{
  IPC::Decoder::decode<std::tuple<WebCore::ResourceRequest,IPC::FormDataReference,WebCore::ResourceResponse>>(v15, a2);
  if (v18 == 1)
  {
    v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v6)
    {
      v8 = v7;
LABEL_4:
      v9 = *a1;
      if ((*a1 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
        goto LABEL_6;
      }

      while (1)
      {
        v13 = v9;
        atomic_compare_exchange_strong_explicit(a1, &v13, v9 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v13 != v9)
        {
          goto LABEL_4;
        }

LABEL_6:
        v10 = WTF::fastMalloc(0x18);
        *v10 = &unk_1F10F80C8;
        v10[1] = v8;
        v10[2] = a1;
        v14 = v10;
        v9 = v18;
        if (v18)
        {
          break;
        }

        __break(1u);
      }

      WebKit::WebResourceLoader::willSendRequest(a3, v15, &v16, &v17, &v14);
      v11 = v14;
      v14 = 0;
      if (v11)
      {
        (*(*v11 + 8))(v11);
      }
    }
  }

  return std::optional<std::tuple<WebCore::ResourceRequest,IPC::FormDataReference,WebCore::ResourceResponse>>::~optional(v15, v6);
}

uint64_t IPC::handleMessage<Messages::WebResourceLoader::DidFailResourceLoad,IPC::Connection,WebKit::WebResourceLoader,WebKit::WebResourceLoader,void ()(WebCore::ResourceError const&)>(IPC::Decoder *a1, WebKit::WebResourceLoader *a2)
{
  IPC::Decoder::decode<std::tuple<WebCore::ResourceError>>(a1, v5);
  if (v5[80] == 1)
  {
    WebKit::WebResourceLoader::didFailResourceLoad(a2, v5);
  }

  return std::optional<std::tuple<WebCore::ResourceError>>::~optional(v5, v3);
}

WTF::StringImpl *IPC::handleMessage<Messages::WebResourceLoader::DidFailServiceWorkerLoad,IPC::Connection,WebKit::WebResourceLoader,WebKit::WebResourceLoader,void ()(WebCore::ResourceError const&)>(IPC::Decoder *a1, WebKit::WebResourceLoader *a2)
{
  result = IPC::Decoder::decode<std::tuple<WebCore::ResourceError>>(a1, &v8);
  if (v12 == 1)
  {
    result = WebKit::WebResourceLoader::didFailServiceWorkerLoad(a2, &v8);
    if (v12)
    {
      v5 = cf;
      cf = 0;
      if (v5)
      {
        CFRelease(v5);
      }

      v6 = v10;
      v10 = 0;
      if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, v4);
      }

      v7 = v9;
      v9 = 0;
      if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, v4);
      }

      result = v8;
      v8 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v4);
        }
      }
    }
  }

  return result;
}

void IPC::handleMessage<Messages::WebResourceLoader::StopLoadingAfterXFrameOptionsOrContentSecurityPolicyDenied,IPC::Connection,WebKit::WebResourceLoader,WebKit::WebResourceLoader,void ()(WebCore::ResourceResponse const&)>(IPC::Decoder *a1, WebKit::WebResourceLoader *a2)
{
  IPC::Decoder::decode<std::tuple<WebCore::ResourceResponse>>(v5, a1);
  if (v7 == 1)
  {
    WebKit::WebResourceLoader::stopLoadingAfterXFrameOptionsOrContentSecurityPolicyDenied(a2, v5);
    if (v7)
    {
      v4 = cf;
      cf = 0;
      if (v4)
      {
        CFRelease(v4);
      }

      WebCore::ResourceResponseBase::~ResourceResponseBase(v5, v3);
    }
  }
}

void IPC::handleMessage<Messages::WebResourceLoader::ContentFilterDidBlockLoad,IPC::Connection,WebKit::WebResourceLoader,WebKit::WebResourceLoader,void ()(WebCore::ContentFilterUnblockHandler const&,WTF::String &&,WebCore::ResourceError const&,WTF::URL const&,WebCore::SubstituteData &&)>(IPC::Decoder *a1, uint64_t a2)
{
  v161 = *MEMORY[0x1E69E9840];
  IPC::ArgumentCoder<WebCore::ContentFilterUnblockHandler,void>::decode(a1, &v148);
  if ((v160 & 1) == 0)
  {
    goto LABEL_79;
  }

  while (1)
  {
    IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a1, &v55);
    if ((v56 & 1) == 0)
    {
      v4 = *a1;
      v53 = *(a1 + 1);
      *a1 = 0;
      *(a1 + 1) = 0;
      v54 = *(a1 + 3);
      if (!v54 || !v53 || ((*(*v54 + 16))(v54, v4), (v56 & 1) == 0))
      {
        LOBYTE(v98[0]) = 0;
        v147 = 0;
        goto LABEL_36;
      }
    }

    IPC::Decoder::decode<WebCore::ResourceError>(a1, v57);
    if (v65 != 1)
    {
      LOBYTE(v98[0]) = 0;
      v147 = 0;
      goto LABEL_32;
    }

    IPC::ArgumentCoder<WTF::URL,void>::decode(a1, &v66);
    if ((v69 & 1) == 0)
    {
      v4 = *a1;
      v51 = *(a1 + 1);
      *a1 = 0;
      *(a1 + 1) = 0;
      v52 = *(a1 + 3);
      if (!v52 || !v51 || ((*(*v52 + 16))(v52, v4), (v69 & 1) == 0))
      {
        LOBYTE(v98[0]) = 0;
        v147 = 0;
        goto LABEL_31;
      }
    }

    IPC::ArgumentCoder<WebCore::SubstituteData,void>::decode(a1, v70);
    if ((v97 & 1) == 0)
    {
      v4 = *a1;
      v49 = *(a1 + 1);
      *a1 = 0;
      *(a1 + 1) = 0;
      v50 = *(a1 + 3);
      if (!v50 || !v49 || ((*(*v50 + 16))(v50, v4), (v97 & 1) == 0))
      {
        LOBYTE(v98[0]) = 0;
        v147 = 0;
        goto LABEL_27;
      }
    }

    if (v160 & 1) != 0 && (v56 & 1) != 0 && (v65 & 1) != 0 && (v69)
    {
      break;
    }

    __break(1u);
LABEL_79:
    v42 = *a1;
    v43 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v44 = *(a1 + 3);
    if (v44)
    {
      v45 = v43 == 0;
    }

    else
    {
      v45 = 1;
    }

    if (!v45)
    {
      (*(*v44 + 16))(v44, v42);
      if (v160)
      {
        continue;
      }
    }

    LOBYTE(v98[0]) = 0;
    v147 = 0;
    goto LABEL_38;
  }

  v5 = v148;
  v148 = 0uLL;
  v98[0] = v5;
  v98[1] = v149;
  v98[2] = v150;
  LODWORD(v149) = v149 & 0xFFFFFFFE;
  if (v152)
  {
    if (v152 == &v151)
    {
      v100 = &v99;
      (*(*v152 + 24))(v152);
    }

    else
    {
      v100 = v152;
      v152 = 0;
    }
  }

  else
  {
    v100 = 0;
  }

  LOBYTE(v101) = 0;
  v104 = 0;
  if (v156 == 1)
  {
    v6 = v153;
    v153 = 0;
    v101 = v6;
    v102 = v154;
    v103 = v155;
    LODWORD(v154) = v154 & 0xFFFFFFFE;
    v104 = 1;
  }

  v7 = v157;
  v157 = 0u;
  v105 = v7;
  v8 = v158;
  v158 = 0;
  v106 = v8;
  v107 = v159;
  v9 = v55;
  v55 = 0;
  v10 = *v57;
  *v57 = 0u;
  v109 = v10;
  v110 = v58;
  v111 = v59;
  LODWORD(v58) = v58 & 0xFFFFFFFE;
  v108 = v9;
  v112 = v60;
  v114 = v62;
  v113 = v61;
  v11 = v63;
  v60 = 0;
  v63 = 0;
  v115 = v11;
  v116 = v64;
  v12 = v66;
  v66 = 0;
  v117 = v12;
  v118 = v67;
  v119 = v68;
  LODWORD(v67) = v67 & 0xFFFFFFFE;
  v13 = *v70;
  *v70 = 0u;
  *v120 = v13;
  v121 = v71;
  v122 = v72;
  LODWORD(v71) = v71 & 0xFFFFFFFE;
  v14 = v74;
  LODWORD(v74) = v74 & 0xFFFFFFFE;
  v15 = v73;
  v16 = v76;
  v73 = 0;
  v124 = v14;
  v125 = v75;
  v76 = 0;
  v123 = v15;
  v126 = v16;
  v127 = v77;
  v17 = v78;
  v78 = 0u;
  v18 = v79;
  v79 = 0u;
  v128 = v17;
  v129 = v18;
  *&v17 = v80;
  v80 = 0;
  v130 = v17;
  v19 = v81;
  v81 = 0;
  v131 = v19;
  *&v17 = v82;
  v82 = 0;
  v132 = v17;
  v20 = v83;
  v83 = 0;
  v133 = v20;
  LOBYTE(v134) = 0;
  v135 = 0;
  if (v85 == 1)
  {
    v37 = v84;
    v84 = 0;
    v134 = v37;
    v135 = 1;
  }

  v136 = v86;
  v137 = v87;
  v141 = v91;
  v142 = v92;
  v139 = v89;
  v140 = v90;
  v143[0] = v93[0];
  v21 = v88;
  v88 = 0;
  *(v143 + 11) = *(v93 + 11);
  v138 = v21;
  cf = v94;
  v145 = v95;
  v146 = v96;
  v147 = 1;
  if (v97)
  {
    v94 = 0;
    WebCore::ResourceResponseBase::~ResourceResponseBase(&v73, v4);
    v22 = v70[1];
    v70[1] = 0;
    if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v22, v4);
    }

    v23 = v70[0];
    v70[0] = 0;
    if (v23 && atomic_fetch_add(v23 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v23 + 2);
      (*(*v23 + 8))(v23);
    }
  }

LABEL_27:
  if (v69)
  {
    v24 = v66;
    v66 = 0;
    if (v24)
    {
      if (atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v24, v4);
      }
    }
  }

LABEL_31:
  if (v65)
  {
    v38 = v63;
    v63 = 0;
    if (v38)
    {
      CFRelease(v38);
    }

    v39 = v60;
    v60 = 0;
    if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v39, v4);
    }

    v40 = v57[1];
    v57[1] = 0;
    if (v40 && atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v40, v4);
    }

    v41 = v57[0];
    v57[0] = 0;
    if (v41 && atomic_fetch_add_explicit(v41, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v41, v4);
    }
  }

LABEL_32:
  if (v56)
  {
    v25 = v55;
    v55 = 0;
    if (v25)
    {
      if (atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v25, v4);
      }
    }
  }

LABEL_36:
  if (v160)
  {
    WebCore::ContentFilterUnblockHandler::~ContentFilterUnblockHandler(&v148, v4);
  }

LABEL_38:
  if (v147 & 1) != 0 || (v46 = *a1, v47 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (v48 = *(a1 + 3)) != 0) && v47 && ((*(*v48 + 16))(v48, v46), (v147))
  {
    WebKit::WebResourceLoader::contentFilterDidBlockLoad(a2, v98, &v108, &v109, &v117, v120);
    if (v147)
    {
      v27 = cf;
      cf = 0;
      if (v27)
      {
        CFRelease(v27);
      }

      WebCore::ResourceResponseBase::~ResourceResponseBase(&v123, v26);
      v29 = v120[1];
      v120[1] = 0;
      if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v29, v28);
      }

      v30 = v120[0];
      v120[0] = 0;
      if (v30 && atomic_fetch_add(v30 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v30 + 2);
        (*(*v30 + 8))(v30);
      }

      v31 = v117;
      v117 = 0;
      if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v31, v28);
      }

      v32 = v115;
      v115 = 0;
      if (v32)
      {
        CFRelease(v32);
      }

      v33 = v112;
      v112 = 0;
      if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v33, v28);
      }

      v34 = *(&v109 + 1);
      *(&v109 + 1) = 0;
      if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v34, v28);
      }

      v35 = v109;
      *&v109 = 0;
      if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v35, v28);
      }

      v36 = v108;
      v108 = 0;
      if (v36)
      {
        if (atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v36, v28);
        }
      }

      WebCore::ContentFilterUnblockHandler::~ContentFilterUnblockHandler(v98, v28);
    }
  }
}

void WebKit::WebSWClientConnection::didReceiveMessage(WebKit::WebSWClientConnection *this, atomic_ullong *a2, IPC::Decoder *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  ++*(this + 2);
  if (*(a3 + 25) == 3052)
  {
    WebKit::WebSWClientConnection::setSWOriginTableIsImported(this);
  }

  else
  {
    switch(*(a3 + 25))
    {
      case 0xBE1:
        IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
        if (v5)
        {
          WebCore::SWClientConnection::fireUpdateFoundEvent();
        }

        break;
      case 0xBE2:
        IPC::handleMessageAsync<Messages::WebSWClientConnection::FocusServiceWorkerClient,IPC::Connection,WebKit::WebSWClientConnection,WebKit::WebSWClientConnection,void ()(WebCore::ProcessQualified<WTF::UUID>,WTF::CompletionHandler<void ()(std::optional<WebCore::ServiceWorkerClientData> &&)> &&)>(a2, a3, this);
        break;
      case 0xBE3:
        IPC::handleMessage<Messages::WebSWClientConnection::JobRejectedInServer,IPC::Connection,WebKit::WebSWClientConnection,WebCore::SWClientConnection,void ()(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerJobIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ExceptionData &&)>(a3);
        break;
      case 0xBE4:
        IPC::handleMessage<Messages::WebSWClientConnection::NotifyClientsOfControllerChange,IPC::Connection,WebKit::WebSWClientConnection,WebCore::SWClientConnection,void ()(WTF::HashSet<WebCore::ProcessQualified<WTF::UUID>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,std::optional<WebCore::ServiceWorkerData> &&)>(a3);
        break;
      case 0xBE5:
        IPC::handleMessage<Messages::WebSWClientConnection::NotifyRecordResponseBodyChunk,IPC::Connection,WebKit::WebSWClientConnection,WebKit::WebSWClientConnection,void ()(WTF::ObjectIdentifierGeneric<WebKit::RetrieveRecordResponseBodyCallbackIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,IPC::SharedBufferReference &&)>(a3, this);
        break;
      case 0xBE6:
        IPC::handleMessage<Messages::WebSWClientConnection::NotifyRecordResponseBodyEnd,IPC::Connection,WebKit::WebSWClientConnection,WebKit::WebSWClientConnection,void ()(WTF::ObjectIdentifierGeneric<WebKit::RetrieveRecordResponseBodyCallbackIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ResourceError &&)>(a3, this);
        break;
      case 0xBE7:
        IPC::handleMessage<Messages::WebSWClientConnection::PostMessageToServiceWorkerClient,IPC::Connection,WebKit::WebSWClientConnection,WebCore::SWClientConnection,void ()(WebCore::ProcessQualified<WTF::UUID>,WebCore::MessageWithMessagePorts &&,WebCore::ServiceWorkerData &&,WTF::String &&)>(a3);
        break;
      case 0xBE8:
        IPC::handleMessage<Messages::WebSWClientConnection::RegistrationJobResolvedInServer,IPC::Connection,WebKit::WebSWClientConnection,WebCore::SWClientConnection,void ()(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerJobIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ServiceWorkerRegistrationData &&,WebCore::ShouldNotifyWhenResolved)>(a3);
        break;
      case 0xBE9:
        IPC::handleMessage<Messages::WebSWClientConnection::ReportNetworkUsageToWorkerClient,IPC::Connection,WebKit::WebSWClientConnection,WebCore::SWClientConnection,void ()(WebCore::ProcessQualified<WTF::UUID>,unsigned long long)>(a3);
        break;
      case 0xBEA:
        IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WallTime>>(&buf, a3);
        if (BYTE2(v14) == 1)
        {
          WebCore::SWClientConnection::setRegistrationLastUpdateTime();
        }

        break;
      case 0xBEB:
        IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ServiceWorkerUpdateViaCache>>(&buf, a3);
        if (BYTE2(v14) == 1)
        {
          WebCore::SWClientConnection::setRegistrationUpdateViaCache();
        }

        break;
      case 0xBED:
        IPC::handleMessage<Messages::WebSWClientConnection::SetSWOriginTableSharedMemory,IPC::Connection,WebKit::WebSWClientConnection,WebKit::WebSWClientConnection,void ()(WebCore::SharedMemoryHandle &&)>(a3, this);
        break;
      case 0xBEE:
        IPC::handleMessageAsync<Messages::WebSWClientConnection::SetServiceWorkerClientIsControlled,IPC::Connection,WebKit::WebSWClientConnection,WebKit::WebSWClientConnection,void ()(WebCore::ProcessQualified<WTF::UUID>,WebCore::ServiceWorkerRegistrationData &&,WTF::CompletionHandler<void ()(BOOL)> &&)>(a2, a3, this);
        break;
      case 0xBEF:
        IPC::handleMessage<Messages::WebSWClientConnection::StartScriptFetchForServer,IPC::Connection,WebKit::WebSWClientConnection,WebCore::SWClientConnection,void ()(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerJobIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ServiceWorkerRegistrationKey &&,WebCore::FetchOptionsCache)>(a3);
        break;
      case 0xBF0:
        IPC::handleMessage<Messages::WebSWClientConnection::UpdateBackgroundFetchRegistration,IPC::Connection,WebKit::WebSWClientConnection,WebCore::SWClientConnection,void ()(WebCore::BackgroundFetchInformation const&)>(a3);
        break;
      case 0xBF1:
        IPC::handleMessage<Messages::WebSWClientConnection::UpdateRegistrationState,IPC::Connection,WebKit::WebSWClientConnection,WebCore::SWClientConnection,void ()(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ServiceWorkerRegistrationState,std::optional<WebCore::ServiceWorkerData> const&)>(a3);
        break;
      case 0xBF2:
        IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ServiceWorkerState>>(&buf, a3);
        if (BYTE2(v14) == 1)
        {
          WebCore::SWClientConnection::updateWorkerState();
        }

        break;
      default:
        v10 = *(a3 + 25);
        v6 = qword_1ED6416C8;
        if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          if (v10 >= 0x107F)
          {
            v7 = 4223;
          }

          else
          {
            v7 = v10;
          }

          v8 = (&IPC::Detail::messageDescriptions)[3 * v7];
          v9 = *(a3 + 7);
          buf = 136315394;
          *buf_4 = v8;
          v13 = 2048;
          v14 = v9;
          _os_log_error_impl(&dword_19D52D000, v6, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", &buf, 0x16u);
        }

        IPC::Decoder::markInvalid(a3);
        break;
    }
  }

  if (*(this + 2) == 1)
  {
    (*(*this + 8))(this);
  }

  else
  {
    --*(this + 2);
  }
}

uint64_t IPC::handleMessage<Messages::WebSWClientConnection::JobRejectedInServer,IPC::Connection,WebKit::WebSWClientConnection,WebCore::SWClientConnection,void ()(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerJobIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ExceptionData &&)>(uint64_t *a1)
{
  IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if (v2)
  {
    IPC::ArgumentCoder<WebCore::Exception,void>::decode(a1, v12);
    if (v14)
    {
      v11 = v13;
      WebCore::SWClientConnection::jobRejectedInServer();
      result = v11;
      if (v11)
      {
        if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(v11, v3);
        }
      }

      return result;
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
  }

  v8 = a1[1];
  *a1 = 0;
  a1[1] = 0;
  result = a1[3];
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

  return result;
}

void IPC::handleMessage<Messages::WebSWClientConnection::RegistrationJobResolvedInServer,IPC::Connection,WebKit::WebSWClientConnection,WebCore::SWClientConnection,void ()(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerJobIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ServiceWorkerRegistrationData &&,WebCore::ShouldNotifyWhenResolved)>(uint64_t *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if ((v2 & 1) == 0 || (IPC::Decoder::decode<WebCore::ServiceWorkerRegistrationData>(a1, v20), v21 != 1))
  {
    v19 = 0;
    goto LABEL_13;
  }

  v3 = a1[1];
  v4 = a1[2];
  v5 = *a1;
  if (v3 <= &v4[-*a1])
  {
    *a1 = 0;
    a1[1] = 0;
    v13 = a1[3];
    if (v13)
    {
      if (v3)
      {
        (*(*v13 + 16))(v13);
        v3 = a1[1];
      }
    }

    else
    {
      v3 = 0;
    }

LABEL_23:
    *a1 = 0;
    a1[1] = 0;
    v14 = a1[3];
    if (v14)
    {
      if (v3)
      {
        (*(*v14 + 16))(v14);
        v5 = *a1;
        v3 = a1[1];
        goto LABEL_26;
      }
    }

    else
    {
      v3 = 0;
    }

    v5 = 0;
    goto LABEL_26;
  }

  a1[2] = (v4 + 1);
  if (!v4)
  {
    goto LABEL_23;
  }

  v6 = *v4;
  if (v6 < 2)
  {
    WebCore::ServiceWorkerRegistrationData::ServiceWorkerRegistrationData(v18, v20);
    v18[352] = v6;
    v7 = 1;
    goto LABEL_7;
  }

LABEL_26:
  *a1 = 0;
  a1[1] = 0;
  v15 = a1[3];
  if (v15)
  {
    if (v3)
    {
      (*(*v15 + 16))(v15, v5);
      v16 = a1[3];
      v5 = *a1;
      v17 = a1[1];
      *a1 = 0;
      a1[1] = 0;
      if (v16)
      {
        if (v17)
        {
          (*(*v16 + 16))(v16, v5);
        }
      }
    }
  }

  v7 = 0;
LABEL_7:
  v19 = v7;
  if (v21)
  {
    WebCore::ServiceWorkerRegistrationData::~ServiceWorkerRegistrationData(v20, v5);
    if (v19)
    {
LABEL_9:
      WebCore::SWClientConnection::registrationJobResolvedInServer();
      if (v19)
      {
        WebCore::ServiceWorkerRegistrationData::~ServiceWorkerRegistrationData(v18, v8);
      }

      return;
    }
  }

  else if (v7)
  {
    goto LABEL_9;
  }

LABEL_13:
  v9 = *a1;
  v10 = a1[1];
  *a1 = 0;
  a1[1] = 0;
  v11 = a1[3];
  if (v11)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    (*(*v11 + 16))(v11, v9);
    if (v19)
    {
      goto LABEL_9;
    }
  }
}

uint64_t IPC::handleMessage<Messages::WebSWClientConnection::StartScriptFetchForServer,IPC::Connection,WebKit::WebSWClientConnection,WebCore::SWClientConnection,void ()(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerJobIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ServiceWorkerRegistrationKey &&,WebCore::FetchOptionsCache)>(uint64_t *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if ((v2 & 1) == 0 || (IPC::Decoder::decode<WebCore::ServiceWorkerRegistrationKey>(a1, v19), v23 != 1))
  {
LABEL_5:
    v5 = *a1;
    v6 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    result = a1[3];
    if (result)
    {
      v8 = v6 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      return (*(*result + 16))(result, v5);
    }

    return result;
  }

  Options = IPC::Decoder::decode<WebCore::FetchOptionsCache>(a1);
  if ((Options & 0x100) != 0)
  {
    if ((v23 & 1) == 0)
    {
      __break(1u);
    }

    LOBYTE(v15[0]) = 0;
    v16 = -1;
    if (v20)
    {
      if (v20 == 255)
      {
        goto LABEL_14;
      }

      *v15 = *v19;
    }

    else
    {
      v9 = *v19;
      v19[0] = 0;
      v19[1] = 0;
      *v15 = v9;
    }

    v16 = v20;
LABEL_14:
    v10 = v21;
    v21 = 0;
    v17 = v10;
    v22 &= ~1u;
    v18 = 1;
    goto LABEL_15;
  }

  v18 = 0;
  if ((v23 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_15:
  v11 = v21;
  v21 = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v3);
  }

  if (!v20)
  {
    v12 = v19[1];
    v19[1] = 0;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v3);
    }

    v13 = v19[0];
    v19[0] = 0;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v3);
    }
  }

  if ((Options & 0x100) == 0)
  {
    goto LABEL_5;
  }

  result = WebCore::SWClientConnection::startScriptFetchForServer();
  if (v18)
  {
    result = v17;
    if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(v17, v14);
    }

    if (!v16)
    {
      if (v15[1] && atomic_fetch_add_explicit(v15[1], 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v15[1], v14);
      }

      result = v15[0];
      if (v15[0] && atomic_fetch_add_explicit(v15[0], 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(v15[0], v14);
      }
    }
  }

  return result;
}

void IPC::handleMessage<Messages::WebSWClientConnection::UpdateRegistrationState,IPC::Connection,WebKit::WebSWClientConnection,WebCore::SWClientConnection,void ()(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ServiceWorkerRegistrationState,std::optional<WebCore::ServiceWorkerData> const&)>(uint64_t *a1)
{
  IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ServiceWorkerRegistrationState,std::optional<WebCore::ServiceWorkerData>>>(&v3, a1);
  if (v6 == 1)
  {
    WebCore::SWClientConnection::updateRegistrationState();
    if ((v6 & 1) != 0 && v5 == 1)
    {
      v2 = v4;
      v4 = 0;
      if (v2)
      {
        if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v2, v1);
        }
      }
    }
  }
}

WTF::StringImpl *IPC::handleMessage<Messages::WebSWClientConnection::NotifyClientsOfControllerChange,IPC::Connection,WebKit::WebSWClientConnection,WebCore::SWClientConnection,void ()(WTF::HashSet<WebCore::ProcessQualified<WTF::UUID>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,std::optional<WebCore::ServiceWorkerData> &&)>(IPC::Decoder *a1)
{
  v59 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 1);
  v3 = ((*(a1 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v4 = v3 - *a1;
  v5 = v2 >= v4;
  v6 = v2 - v4;
  if (!v5 || v6 <= 3)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v43 = *(a1 + 3);
    if (v43)
    {
      if (v2)
      {
        (*(*v43 + 16))(v43);
        v2 = *(a1 + 1);
      }
    }

    else
    {
      v2 = 0;
    }

    goto LABEL_77;
  }

  *(a1 + 2) = v3 + 1;
  if (!v3)
  {
LABEL_77:
    *a1 = 0;
    *(a1 + 1) = 0;
    v44 = *(a1 + 3);
    if (v44 && v2)
    {
      (*(*v44 + 16))(v44);
    }

    goto LABEL_68;
  }

  v8 = *v3;
  *&v45 = 0;
  if (v8)
  {
    v9 = 0;
    while (1)
    {
      IPC::ArgumentCoder<WebCore::ProcessQualified<WTF::UUID>,void>::decode(a1, v52);
      if ((v54 & 1) == 0)
      {
        v10 = *a1;
        v35 = *(a1 + 1);
        *a1 = 0;
        *(a1 + 1) = 0;
        v36 = *(a1 + 3);
        if (v36)
        {
          v37 = v35 == 0;
        }

        else
        {
          v37 = 1;
        }

        if (!v37)
        {
          (*(*v36 + 16))(v36, v10);
        }

        goto LABEL_66;
      }

      v11 = *&v52[16];
      if (*&v52[16] == -1)
      {
        goto LABEL_66;
      }

      v12 = *v52;
      if (!*&v52[16] && *v52 == 0)
      {
        goto LABEL_66;
      }

      if (!*&v52[16] && *v52 == 0)
      {
        __break(0xC471u);
        JUMPOUT(0x19DAE3808);
      }

      v13 = v45;
      if (v45 || (WTF::HashTable<WebCore::ProcessQualified<WTF::UUID>,WebCore::ProcessQualified<WTF::UUID>,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::FastMalloc>::expand(&v45), (v13 = v45) != 0))
      {
        v14 = *(v13 - 8);
      }

      else
      {
        v14 = 0;
      }

      v15 = WTF::IdentityHashTranslator<WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>>::hash<WebCore::ProcessQualified<WTF::UUID>>(v12, *(&v12 + 1)) & v14;
      v10 = (v13 + 32 * v15);
      v17 = *v10;
      v16 = v10[1];
      v18 = v10[2];
      if (*v10 != 0 || v18 != 0)
      {
        v20 = 0;
        v21 = 1;
        while (1)
        {
          v22 = v16 == *(&v12 + 1) && v17 == v12;
          if (v22 && v18 == v11)
          {
            break;
          }

          if (v18 == -1)
          {
            v20 = v10;
          }

          v15 = (v15 + v21) & v14;
          v10 = (v13 + 32 * v15);
          v17 = *v10;
          v16 = v10[1];
          v18 = v10[2];
          ++v21;
          if (*v10 == 0 && v18 == 0)
          {
            if (v20)
            {
              *v20 = 0;
              v20[1] = 0;
              v20[2] = 0;
              --*(v13 - 16);
              v10 = v20;
            }

            goto LABEL_39;
          }
        }

LABEL_66:
        if (v45)
        {
          WTF::fastFree((v45 - 16), v10);
        }

LABEL_68:
        v38 = *a1;
        v39 = *(a1 + 1);
        *a1 = 0;
        *(a1 + 1) = 0;
        v40 = *(a1 + 3);
        if (v40 && v39)
        {
          (*(*v40 + 16))(v40, v38);
        }

LABEL_69:
        v41 = *a1;
        v42 = *(a1 + 1);
        *a1 = 0;
        *(a1 + 1) = 0;
        result = *(a1 + 3);
        if (result)
        {
          if (v42)
          {
            return (*(*result + 16))(result, v41);
          }
        }

        return result;
      }

LABEL_39:
      v25 = *v52;
      v10[2] = *&v52[16];
      *v10 = v25;
      v26 = *(v13 - 16);
      v27 = *(v13 - 12) + 1;
      *(v13 - 12) = v27;
      v28 = (v26 + v27);
      v29 = *(v13 - 4);
      if (v29 > 0x400)
      {
        break;
      }

      if (3 * v29 <= 4 * v28)
      {
        goto LABEL_41;
      }

LABEL_42:
      if (++v9 == v8)
      {
        v34 = v45;
        goto LABEL_48;
      }
    }

    if (v29 > 2 * v28)
    {
      goto LABEL_42;
    }

LABEL_41:
    WTF::HashTable<WebCore::ProcessQualified<WTF::UUID>,WebCore::ProcessQualified<WTF::UUID>,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::FastMalloc>::expand(&v45);
    goto LABEL_42;
  }

  v34 = 0;
LABEL_48:
  IPC::Decoder::decode<std::optional<WebCore::ServiceWorkerData>>(a1, &v45);
  if (v51 == 1)
  {
    *v52 = v34;
    v52[8] = 0;
    v57 = 0;
    if (v50 == 1)
    {
      *&v52[8] = v45;
      v31 = v46;
      v46 = 0;
      v53 = v31;
      v54 = v47;
      v55 = v48;
      LODWORD(v47) = v47 & 0xFFFFFFFE;
      v56 = v49;
      v57 = 1;
    }

    v58 = 1;
  }

  else
  {
    v52[0] = 0;
    v58 = 0;
    if (!v34)
    {
      goto LABEL_69;
    }

    WTF::fastFree((v34 - 16), v30);
    if ((v58 & 1) == 0)
    {
      goto LABEL_69;
    }
  }

  result = WebCore::SWClientConnection::notifyClientsOfControllerChange();
  if (v58)
  {
    if (v57 == 1)
    {
      result = v53;
      v53 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, v33);
        }
      }
    }

    if (*v52)
    {
      return WTF::fastFree((*v52 - 16), v33);
    }
  }

  return result;
}

uint64_t IPC::handleMessage<Messages::WebSWClientConnection::UpdateBackgroundFetchRegistration,IPC::Connection,WebKit::WebSWClientConnection,WebCore::SWClientConnection,void ()(WebCore::BackgroundFetchInformation const&)>(uint64_t *a1)
{
  IPC::Decoder::decode<WebCore::BackgroundFetchInformation>(v8, a1);
  if (v9)
  {
    v7 = v8[1];
    WebCore::SWClientConnection::updateBackgroundFetchRegistration();
    result = v7;
    if (v7)
    {
      if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(v7, v2);
      }
    }
  }

  else
  {
    v4 = *a1;
    v5 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    result = a1[3];
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
      return (*(*result + 16))(result, v4);
    }
  }

  return result;
}

void IPC::handleMessage<Messages::WebSWClientConnection::SetSWOriginTableSharedMemory,IPC::Connection,WebKit::WebSWClientConnection,WebKit::WebSWClientConnection,void ()(WebCore::SharedMemoryHandle &&)>(IPC::Decoder *a1, uint64_t a2)
{
  IPC::Decoder::decode<std::tuple<WebCore::SharedMemoryHandle>>(a1, v3);
  if (v4 == 1)
  {
    WebKit::WebSWClientConnection::setSWOriginTableSharedMemory(a2);
    if (v4)
    {
      WTF::MachSendRight::~MachSendRight(v3);
    }
  }
}

atomic_uint *IPC::handleMessage<Messages::WebSWClientConnection::PostMessageToServiceWorkerClient,IPC::Connection,WebKit::WebSWClientConnection,WebCore::SWClientConnection,void ()(WebCore::ProcessQualified<WTF::UUID>,WebCore::MessageWithMessagePorts &&,WebCore::ServiceWorkerData &&,WTF::String &&)>(IPC::Decoder *a1)
{
  v44 = *MEMORY[0x1E69E9840];
  IPC::ArgumentCoder<WebCore::ProcessQualified<WTF::UUID>,void>::decode(a1, v38);
  if ((v39 & 1) == 0)
  {
    v14 = *a1;
    v15 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v16 = *(a1 + 3);
    if (v16)
    {
      v17 = v15 == 0;
    }

    else
    {
      v17 = 1;
    }

    if (!v17)
    {
      (*(*v16 + 16))(v16, v14);
    }

    goto LABEL_35;
  }

  IPC::Decoder::decode<WebCore::MessageWithMessagePorts>(a1, v22);
  if (v24 != 1)
  {
    goto LABEL_35;
  }

  IPC::Decoder::decode<WebCore::ServiceWorkerData>(a1, &v40);
  if (v43 != 1)
  {
    v1 = 0;
    LOBYTE(v27) = 0;
    v37 = 0;
    goto LABEL_12;
  }

  v4 = IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a1, &v25);
  if (v26 & 1) != 0 || (v3 = *a1, v20 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (v21 = *(a1 + 3)) != 0) && v20 && (v4 = (*(*v21 + 16))(v21, v3), (v26))
  {
    if ((v24 & 1) == 0 || (v43 & 1) == 0)
    {
      __break(1u);
LABEL_39:
      v22[1] = 0;
      LODWORD(v23) = 0;
      WTF::fastFree(v4, v3);
      goto LABEL_14;
    }

    v27 = v38[0];
    v28 = v38[1];
    v5 = *v22;
    v22[0] = 0;
    v22[1] = 0;
    *v29 = v5;
    *&v5 = v23;
    v23 = 0;
    v30 = v5;
    v31 = v40;
    v6 = v41[0];
    v41[0] = 0;
    v32 = v6;
    v33 = *&v41[1];
    v34 = *&v41[3];
    LODWORD(v41[1]) &= ~1u;
    v35 = v42;
    v36 = v25;
    v1 = 1;
    v37 = 1;
  }

  else
  {
    v1 = 0;
    LOBYTE(v27) = 0;
    v37 = 0;
    if ((v43 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  v7 = v41[0];
  v41[0] = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v3);
  }

LABEL_12:
  if ((v24 & 1) == 0)
  {
    goto LABEL_15;
  }

  v4 = v22[1];
  if (v22[1])
  {
    goto LABEL_39;
  }

LABEL_14:
  v8 = v22[0];
  v22[0] = 0;
  if (!v8)
  {
LABEL_15:
    if (v1)
    {
      goto LABEL_16;
    }

    goto LABEL_35;
  }

  WTF::ThreadSafeRefCounted<WebCore::SerializedScriptValue,(WTF::DestructionThread)0>::deref(v8);
  if (v1)
  {
LABEL_16:
    v40 = v27;
    *v41 = v28;
    result = WebCore::SWClientConnection::postMessageToServiceWorkerClient();
    if (v37)
    {
      v11 = v36;
      v36 = 0;
      if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v11, v10);
      }

      v12 = v32;
      v32 = 0;
      if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v12, v10);
      }

      v13 = v29[1];
      if (v29[1])
      {
        v29[1] = 0;
        LODWORD(v30) = 0;
        WTF::fastFree(v13, v10);
      }

      result = v29[0];
      v29[0] = 0;
      if (result)
      {
        return WTF::ThreadSafeRefCounted<WebCore::SerializedScriptValue,(WTF::DestructionThread)0>::deref(result);
      }
    }

    return result;
  }

LABEL_35:
  v18 = *a1;
  v19 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  result = *(a1 + 3);
  if (result && v19)
  {
    return (*(*result + 16))(result, v18);
  }

  return result;
}

void IPC::handleMessageAsync<Messages::WebSWClientConnection::SetServiceWorkerClientIsControlled,IPC::Connection,WebKit::WebSWClientConnection,WebKit::WebSWClientConnection,void ()(WebCore::ProcessQualified<WTF::UUID>,WebCore::ServiceWorkerRegistrationData &&,WTF::CompletionHandler<void ()(BOOL)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  v4 = a2;
  v27 = *MEMORY[0x1E69E9840];
  IPC::ArgumentCoder<WebCore::ProcessQualified<WTF::UUID>,void>::decode(a2, v23);
  if ((v24 & 1) == 0)
  {
    v13 = *v4;
    v14 = *(v4 + 1);
    *v4 = 0;
    *(v4 + 1) = 0;
    v15 = *(v4 + 3);
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
    }

    goto LABEL_21;
  }

  IPC::Decoder::decode<WebCore::ServiceWorkerRegistrationData>(v4, v25);
  if (v26 != 1)
  {
LABEL_21:
    LOBYTE(v19) = 0;
    v22 = 0;
    goto LABEL_22;
  }

  v19 = v23[0];
  v20 = v23[1];
  WebCore::ServiceWorkerRegistrationData::ServiceWorkerRegistrationData(v21, v25);
  v22 = 1;
  if (v26)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v4);
    if ((v8 & 1) == 0)
    {
      break;
    }

    v4 = v7;
    while (1)
    {
      v9 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v10 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v10 == v9)
      {
        goto LABEL_10;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_10:
    v11 = WTF::fastMalloc(0x18);
    *v11 = &unk_1F10F80F0;
    v11[1] = v4;
    v11[2] = a1;
    *&v23[0] = v11;
    if (v22)
    {
      v25[0] = v19;
      v25[1] = v20;
      WebKit::WebSWClientConnection::setServiceWorkerClientIsControlled(a3, v25, v21, v23);
      v12 = *&v23[0];
      *&v23[0] = 0;
      if (v12)
      {
        (*(*v12 + 8))(v12);
      }

      break;
    }

    __break(1u);
LABEL_27:
    WebCore::ServiceWorkerRegistrationData::~ServiceWorkerRegistrationData(v25, v6);
    if ((v22 & 1) == 0)
    {
LABEL_22:
      v8 = *v4;
      v17 = *(v4 + 1);
      *v4 = 0;
      *(v4 + 1) = 0;
      v18 = *(v4 + 3);
      if (!v18)
      {
        break;
      }

      if (!v17)
      {
        break;
      }

      (*(*v18 + 16))(v18, v8);
      if ((v22 & 1) == 0)
      {
        break;
      }
    }
  }

  if (v22 == 1)
  {
    WebCore::ServiceWorkerRegistrationData::~ServiceWorkerRegistrationData(v21, v8);
  }
}

uint64_t IPC::handleMessageAsync<Messages::WebSWClientConnection::FocusServiceWorkerClient,IPC::Connection,WebKit::WebSWClientConnection,WebKit::WebSWClientConnection,void ()(WebCore::ProcessQualified<WTF::UUID>,WTF::CompletionHandler<void ()(std::optional<WebCore::ServiceWorkerClientData> &&)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, WebCore::Document *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  IPC::ArgumentCoder<std::tuple<WebCore::ProcessQualified<WTF::UUID>>,void>::decode<IPC::Decoder>(a2, v16);
  if (v17 & 1) != 0 || ((v12 = *a2, v13 = *(a2 + 1), *a2 = 0, *(a2 + 1) = 0, (result = *(a2 + 3)) != 0) ? (v14 = v13 == 0) : (v14 = 1), !v14 && (result = (*(*result + 16))(result, v12), (v17)))
  {
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v7)
    {
      v8 = result;
      while (1)
      {
        v9 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v10 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v10 == v9)
        {
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      v11 = WTF::fastMalloc(0x18);
      *v11 = &unk_1F10F8118;
      v11[1] = v8;
      v11[2] = a1;
      v15 = v11;
      if ((v17 & 1) == 0)
      {
        __break(1u);
      }

      v18[0] = v16[0];
      v18[1] = v16[1];
      WebKit::WebSWClientConnection::focusServiceWorkerClient(a3, v18, &v15);
      result = v15;
      v15 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

void IPC::handleMessage<Messages::WebSWClientConnection::NotifyRecordResponseBodyChunk,IPC::Connection,WebKit::WebSWClientConnection,WebKit::WebSWClientConnection,void ()(WTF::ObjectIdentifierGeneric<WebKit::RetrieveRecordResponseBodyCallbackIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,IPC::SharedBufferReference &&)>(uint64_t *a1, uint64_t a2)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if (v5 & 1) != 0 && (v6 = v4, IPC::Decoder::decode<IPC::SharedBufferReference>(&v16, a1), (v18))
  {
    v13 = v16;
    v14 = v17;
    v15 = 1;
    WebKit::WebSWClientConnection::notifyRecordResponseBodyChunk(a2, v6, &v13);
    if (v15)
    {
      v7 = *(&v14 + 1);
      *(&v14 + 1) = 0;
      if (v7)
      {
        WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v7);
      }

      v8 = v14;
      *&v14 = 0;
      if (v8)
      {
        if (atomic_fetch_add(v8 + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v8 + 2);
          (*(*v8 + 8))(v8);
        }
      }
    }
  }

  else
  {
    v9 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v10 = a1[3];
    if (v10)
    {
      v11 = v9 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {
      v12 = *(*v10 + 16);

      v12();
    }
  }
}

void IPC::handleMessage<Messages::WebSWClientConnection::NotifyRecordResponseBodyEnd,IPC::Connection,WebKit::WebSWClientConnection,WebKit::WebSWClientConnection,void ()(WTF::ObjectIdentifierGeneric<WebKit::RetrieveRecordResponseBodyCallbackIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ResourceError &&)>(uint64_t *a1, uint64_t a2)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if (v5 & 1) != 0 && (v6 = v4, IPC::Decoder::decode<WebCore::ResourceError>(a1, v25), (v31))
  {
    *v16 = v25[0];
    v17 = v25[1];
    v18 = v25[2];
    v19 = v26;
    v20 = v27;
    v21 = v28;
    cf = v29;
    v23 = v30;
    v24 = 1;
    WebKit::WebSWClientConnection::notifyRecordResponseBodyEnd(a2, v6, v16);
    if (v24)
    {
      v8 = cf;
      cf = 0;
      if (v8)
      {
        CFRelease(v8);
      }

      v9 = v19;
      v19 = 0;
      if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v9, v7);
      }

      v10 = v16[1];
      v16[1] = 0;
      if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v10, v7);
      }

      v11 = v16[0];
      v16[0] = 0;
      if (v11)
      {
        if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v11, v7);
        }
      }
    }
  }

  else
  {
    v12 = *a1;
    v13 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v14 = a1[3];
    if (v14)
    {
      v15 = v13 == 0;
    }

    else
    {
      v15 = 1;
    }

    if (!v15)
    {
      (*(*v14 + 16))(v14, v12);
    }
  }
}

uint64_t IPC::handleMessage<Messages::WebSWClientConnection::ReportNetworkUsageToWorkerClient,IPC::Connection,WebKit::WebSWClientConnection,WebCore::SWClientConnection,void ()(WebCore::ProcessQualified<WTF::UUID>,unsigned long long)>(IPC::Decoder *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  IPC::ArgumentCoder<WebCore::ProcessQualified<WTF::UUID>,void>::decode(a1, v16);
  if ((v16[32] & 1) == 0)
  {
    v4 = *a1;
    v10 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v11 = *(a1 + 3);
    if (v11)
    {
      v12 = v10 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (!v12)
    {
      goto LABEL_25;
    }

    goto LABEL_15;
  }

  v2 = *(a1 + 1);
  v3 = (*(a1 + 2) + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *a1;
  v5 = v3 - *a1;
  v6 = v2 >= v5;
  v7 = v2 - v5;
  if (v6 && v7 > 7)
  {
    *(a1 + 2) = v3 + 8;
    if (v3)
    {
      return WebCore::SWClientConnection::reportNetworkUsageToWorkerClient();
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v15 = *(a1 + 3);
    if (v15)
    {
      if (v2)
      {
        (*(*v15 + 16))(v15);
        v4 = *a1;
        v2 = *(a1 + 1);
        goto LABEL_23;
      }
    }

    else
    {
      v2 = 0;
    }

    v4 = 0;
  }

LABEL_23:
  *a1 = 0;
  *(a1 + 1) = 0;
  v11 = *(a1 + 3);
  if (v11 && v2)
  {
LABEL_25:
    (*(*v11 + 16))(v11, v4);
  }

LABEL_15:
  v13 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  result = *(a1 + 3);
  if (result && v13)
  {
    v14 = *(*result + 16);

    return v14();
  }

  return result;
}

atomic_ullong *WebKit::WebSWContextManagerConnection::didReceiveMessage(WebKit::WebSWContextManagerConnection *this, atomic_ullong *a2, unsigned __int8 **a3, double a4, __n128 a5)
{
  v407 = *MEMORY[0x1E69E9840];
  v8 = (this + 24);
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
  v11 = *(a3 + 25);
  switch(*(a3 + 25))
  {
    case 0xBF3:
      IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(buf, a3);
      if (buf[24] == 1)
      {
        WebKit::WebSWContextManagerConnection::cancelFetch(this, *buf, *&buf[8], *&buf[16]);
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v8);
    case 0xBF4:
      WebKit::WebSWContextManagerConnection::close(this);
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v8);
    case 0xBF5:
      v80 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v81 & 1) == 0)
      {
        goto LABEL_119;
      }

      v82 = a3[1];
      v83 = a3[2];
      v84 = *a3;
      if (v82 <= v83 - *a3)
      {
        *a3 = 0;
        a3[1] = 0;
        v307 = a3[3];
        if (v307)
        {
          if (v82)
          {
            (*(*v307 + 16))(v307);
            v82 = a3[1];
          }
        }

        else
        {
          v82 = 0;
        }
      }

      else
      {
        v85 = v83 + 1;
        a3[2] = v83 + 1;
        if (v83)
        {
          if (*v83 >= 2u)
          {
            goto LABEL_532;
          }

          if (v82 <= v85 - v84)
          {
            v309 = 0;
            v310 = 0;
            *a3 = 0;
            a3[1] = 0;
            v311 = a3[3];
            if (v311)
            {
              (*(*v311 + 16))(v311);
              v310 = *a3;
              v309 = a3[1];
            }
          }

          else
          {
            a3[2] = v83 + 2;
            if (v83 != -1)
            {
              if (*v85 < 2u)
              {
                WebKit::WebSWContextManagerConnection::connectToInspector(this, v80);
                return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v8);
              }

LABEL_532:
              *a3 = 0;
              a3[1] = 0;
              v313 = a3[3];
              if (v313 && v82)
              {
                (*(*v313 + 16))(v313, v84);
              }

              goto LABEL_119;
            }

            v309 = v82;
            v310 = v84;
          }

          *a3 = 0;
          a3[1] = 0;
          v312 = a3[3];
          if (v312 && v309)
          {
            (*(*v312 + 16))(v312, v310, v309);
            goto LABEL_564;
          }

          goto LABEL_530;
        }
      }

      *a3 = 0;
      a3[1] = 0;
      v308 = a3[3];
      if (v308)
      {
        if (v82)
        {
          (*(*v308 + 16))(v308);
LABEL_564:
          v84 = *a3;
          v82 = a3[1];
          goto LABEL_532;
        }

LABEL_531:
        v84 = 0;
        goto LABEL_532;
      }

LABEL_530:
      v82 = 0;
      goto LABEL_531;
    case 0xBF6:
      IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(buf, a3);
      if (buf[24] == 1)
      {
        WebKit::WebSWContextManagerConnection::continueDidReceiveFetchResponse(this, *buf, *&buf[8], *&buf[16]);
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v8);
    case 0xBF7:
      IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(buf, a3);
      if (buf[24] == 1)
      {
        WebKit::WebSWContextManagerConnection::convertFetchToDownload(this, *buf, *&buf[8], *&buf[16]);
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v8);
    case 0xBF8:
      v321 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v116 & 1) == 0)
      {
        goto LABEL_119;
      }

      IPC::Decoder::decode<WebCore::ScriptBuffer>(a3, &v403);
      if (BYTE8(v403) != 1)
      {
        buf[0] = 0;
        buf[24] = 0;
        goto LABEL_355;
      }

      v117 = a3[1];
      v118 = ((a3[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
      v119 = (v118 - *a3);
      v120 = v117 >= v119;
      v121 = v117 - v119;
      if (!v120 || v121 <= 3)
      {
        *a3 = 0;
        a3[1] = 0;
        v302 = a3[3];
        if (v302)
        {
          if (v117)
          {
            (*(*v302 + 16))(v302);
            v117 = a3[1];
          }
        }

        else
        {
          v117 = 0;
        }

        goto LABEL_502;
      }

      a3[2] = (v118 + 1);
      if (!v118)
      {
LABEL_502:
        *a3 = 0;
        a3[1] = 0;
        v303 = a3[3];
        if (v303 && v117)
        {
          (*(*v303 + 16))(v303);
        }

        goto LABEL_338;
      }

      v123 = *v118;
      v330 = 0;
      v322 = v123;
      if (!v123)
      {
        v216 = 0;
LABEL_354:
        *buf = v321;
        *&buf[8] = v403;
        *&buf[16] = v216;
        buf[24] = 1;
        goto LABEL_355;
      }

      v124 = 0;
      while (2)
      {
        v323 = v124;
        IPC::ArgumentCoder<WTF::URL,void>::decode(a3, buf);
        if ((buf[40] & 1) == 0)
        {
          v125 = *a3;
          v145 = a3[1];
          *a3 = 0;
          a3[1] = 0;
          v146 = a3[3];
          if (!v146 || v145 == 0)
          {
            goto LABEL_336;
          }

          (*(*v146 + 16))(v146, v125);
          if ((buf[40] & 1) == 0)
          {
            goto LABEL_336;
          }
        }

        IPC::Decoder::decode<WebCore::ScriptBuffer>(a3, v374);
        if (v374[8] == 1)
        {
          if ((buf[40] & 1) == 0)
          {
            goto LABEL_423;
          }

          if (*buf != -1 && (WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WTF::URL>,false>::isEmptyValue<WTF::URL>(buf) & 1) == 0)
          {
            if ((buf[40] & 1) == 0 || (v374[8] & 1) == 0)
            {
              goto LABEL_423;
            }

            if (WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WTF::URL>,false>::isEmptyValue<WTF::URL>(buf))
            {
              __break(0xC471u);
              JUMPOUT(0x19DAE6B58);
            }

            if (*buf == -1)
            {
              __break(0xC471u);
              JUMPOUT(0x19DAE6B78);
            }

            v126 = v330;
            if (v330 || (WTF::HashTable<WTF::URL,WTF::KeyValuePair<WTF::URL,WebCore::ScriptBuffer>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::URL,WebCore::ScriptBuffer>>,WTF::DefaultHash<WTF::URL>,WTF::HashMap<WTF::URL,WebCore::ScriptBuffer,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WebCore::ScriptBuffer>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::URL>,WTF::FastMalloc>::expand(&v330, 0), (v126 = v330) != 0))
            {
              v127 = *(v126 - 2);
            }

            else
            {
              v127 = 0;
            }

            v128 = *(*buf + 16);
            if (v128 < 0x100)
            {
              v129 = WTF::StringImpl::hashSlowCase(*buf);
            }

            else
            {
              v129 = v128 >> 8;
            }

            v130 = v129 & v127;
            v131 = v126 + 48 * (v129 & v127);
            if ((WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WTF::URL>,false>::isEmptyValue<WTF::URL>(v131) & 1) == 0)
            {
              v133 = 0;
              v134 = 1;
              do
              {
                v135 = v131;
                if (*v131 != -1)
                {
                  v135 = v133;
                  if (WTF::equal(*v131, *buf, v132))
                  {
                    goto LABEL_328;
                  }
                }

                v130 = (v130 + v134) & v127;
                v131 = v126 + 48 * v130;
                ++v134;
                v133 = v135;
              }

              while (!WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WTF::URL>,false>::isEmptyValue<WTF::URL>(v131));
              if (v135)
              {
                *v135 = 0;
                WTF::URL::invalidate(v135);
                *(v135 + 5) = 0;
                --*(v330 - 4);
                v131 = v135;
              }
            }

            WTF::URL::operator=(v131, buf);
            v137 = *v374;
            *v374 = 0;
            v138 = *(v131 + 40);
            *(v131 + 40) = v137;
            if (v138 && atomic_fetch_add(v138 + 2, 0xFFFFFFFF) == 1)
            {
              atomic_store(1u, v138 + 2);
              (*(*v138 + 8))(v138);
            }

            v139 = v330;
            if (v330)
            {
              v140 = *(v330 - 3) + 1;
            }

            else
            {
              v140 = 1;
            }

            *(v330 - 3) = v140;
            v141 = (*(v139 - 4) + v140);
            v142 = *(v139 - 1);
            if (v142 > 0x400)
            {
              if (v142 > 2 * v141)
              {
                goto LABEL_176;
              }
            }

            else if (3 * v142 > 4 * v141)
            {
LABEL_176:
              if (v374[8] == 1)
              {
                v143 = *v374;
                *v374 = 0;
                if (v143)
                {
                  if (atomic_fetch_add(v143 + 2, 0xFFFFFFFF) == 1)
                  {
                    atomic_store(1u, v143 + 2);
                    (*(*v143 + 8))(v143);
                  }
                }
              }

              if (buf[40] == 1)
              {
                v144 = *buf;
                *buf = 0;
                if (v144)
                {
                  if (atomic_fetch_add_explicit(v144, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v144, v136);
                  }
                }
              }

              v124 = v323 + 1;
              if (v323 + 1 == v322)
              {
                if ((BYTE8(v403) & 1) == 0)
                {
                  goto LABEL_423;
                }

                v216 = v330;
                goto LABEL_354;
              }

              continue;
            }

            WTF::HashTable<WTF::URL,WTF::KeyValuePair<WTF::URL,WebCore::ScriptBuffer>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::URL,WebCore::ScriptBuffer>>,WTF::DefaultHash<WTF::URL>,WTF::HashMap<WTF::URL,WebCore::ScriptBuffer,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WebCore::ScriptBuffer>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::URL>,WTF::FastMalloc>::expand(&v330, v131);
            goto LABEL_176;
          }
        }

        break;
      }

LABEL_328:
      if (v374[8] == 1)
      {
        v205 = *v374;
        *v374 = 0;
        if (v205)
        {
          if (atomic_fetch_add(v205 + 2, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v205 + 2);
            (*(*v205 + 8))(v205);
          }
        }
      }

      if (buf[40] == 1)
      {
        v206 = *buf;
        *buf = 0;
        if (v206)
        {
          if (atomic_fetch_add_explicit(v206, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v206, v125);
          }
        }
      }

LABEL_336:
      if (v330)
      {
        WTF::HashTable<WTF::URL,WTF::KeyValuePair<WTF::URL,WebCore::ScriptBuffer>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::URL,WebCore::ScriptBuffer>>,WTF::DefaultHash<WTF::URL>,WTF::HashMap<WTF::URL,WebCore::ScriptBuffer,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WebCore::ScriptBuffer>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::URL>,WTF::FastMalloc>::deallocateTable(v330, v125);
      }

LABEL_338:
      v207 = *a3;
      v208 = a3[1];
      *a3 = 0;
      a3[1] = 0;
      v209 = a3[3];
      if (v209 && v208)
      {
        (*(*v209 + 16))(v209, v207);
      }

      buf[0] = 0;
      buf[24] = 0;
      if (BYTE8(v403))
      {
        v210 = v403;
        *&v403 = 0;
        if (v210)
        {
          if (atomic_fetch_add(v210 + 2, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v210 + 2);
            (*(*v210 + 8))(v210, v207, v208);
          }
        }
      }

LABEL_355:
      if (buf[24])
      {
        WebKit::WebSWContextManagerConnection::didSaveScriptsToDisk(this);
        if (buf[24])
        {
          if (*&buf[16])
          {
            WTF::HashTable<WTF::URL,WTF::KeyValuePair<WTF::URL,WebCore::ScriptBuffer>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::URL,WebCore::ScriptBuffer>>,WTF::DefaultHash<WTF::URL>,WTF::HashMap<WTF::URL,WebCore::ScriptBuffer,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WebCore::ScriptBuffer>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::URL>,WTF::FastMalloc>::deallocateTable(*&buf[16], v217);
          }

          v218 = *&buf[8];
          *&buf[8] = 0;
          if (v218 && atomic_fetch_add(v218 + 2, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v218 + 2);
            (*(*v218 + 8))(v218);
          }
        }
      }

      else
      {
LABEL_119:
        v95 = *a3;
        v96 = a3[1];
        *a3 = 0;
        a3[1] = 0;
        v97 = a3[3];
        if (v97 && v96)
        {
          (*(*v97 + 16))(v97, v95);
        }
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v8);
    case 0xBF9:
      v163 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
      if (v164)
      {
        WebKit::WebSWContextManagerConnection::disconnectFromInspector(this, v163);
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v8);
    case 0xBFA:
      IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String>>(buf, a3);
      if (buf[16] == 1)
      {
        WebKit::WebSWContextManagerConnection::dispatchMessageFromInspector(this);
        if (buf[16])
        {
          v29 = *&buf[8];
          *&buf[8] = 0;
          if (v29)
          {
            goto LABEL_307;
          }
        }
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v8);
    case 0xBFB:
      IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
      if (v178)
      {
        WebKit::WebSWContextManagerConnection::fireActivateEvent(this);
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v8);
    case 0xBFC:
      IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::BackgroundFetchInformation>>(buf, a3);
      if (buf[64] != 1)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v8);
      }

      v39 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v25 & 1) == 0)
      {
        goto LABEL_279;
      }

      v40 = v39;
      while (1)
      {
        v41 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v42 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v42, v41 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v42 == v41)
        {
          goto LABEL_273;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_273:
      v184 = WTF::fastMalloc(0x18);
      *v184 = &unk_1F10F81B8;
      v184[1] = v40;
      v184[2] = a2;
      *v374 = v184;
      WebKit::WebSWContextManagerConnection::fireBackgroundFetchClickEvent(this, *buf, &buf[8], v374);
      goto LABEL_276;
    case 0xBFD:
      IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::BackgroundFetchInformation>>(buf, a3);
      if (buf[64] != 1)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v8);
      }

      v174 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v25 & 1) == 0)
      {
        goto LABEL_279;
      }

      v175 = v174;
      while (1)
      {
        v176 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v177 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v177, v176 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v177 == v176)
        {
          goto LABEL_275;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_275:
      v185 = WTF::fastMalloc(0x18);
      *v185 = &unk_1F10F8190;
      v185[1] = v175;
      v185[2] = a2;
      *v374 = v185;
      WebKit::WebSWContextManagerConnection::fireBackgroundFetchEvent(this, *buf, &buf[8], v374);
LABEL_276:
      v186 = *v374;
      *v374 = 0;
      if (v186)
      {
        (*(*v186 + 8))(v186);
      }

      if ((buf[64] & 1) == 0)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v8);
      }

LABEL_279:
      v29 = *&buf[16];
      *&buf[16] = 0;
      if (!v29)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v8);
      }

      goto LABEL_307;
    case 0xBFE:
      IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
      if (v32)
      {
        WebKit::WebSWContextManagerConnection::fireInstallEvent(this);
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v8);
    case 0xBFF:
      v33 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if (v34 & 1) != 0 && ((v35 = v33, IPC::ArgumentCoder<WebCore::NotificationData,void>::decode(a3, v374), (v380) || (v276 = *a3, v277 = a3[1], *a3 = 0, a3[1] = 0, (v278 = a3[3]) != 0) && v277 && ((*(*v278 + 16))(v278, v276), (v380)))
      {
        v36 = IPC::Decoder::decode<WebKit::UseDownloadPlaceholder>(a3);
        if ((v36 & 0x100) != 0)
        {
          if ((v380 & 1) == 0)
          {
            goto LABEL_423;
          }

          v195 = *&v374[72];
          *buf = v35;
          *&buf[16] = *v374;
          *&buf[24] = *&v374[8];
          *&v374[8] &= ~1u;
          *v374 = 0;
          *&buf[40] = *&v374[24];
          v196 = *&v374[40];
          memset(&v374[40], 0, 40);
          *&buf[56] = v196;
          *&buf[72] = *&v374[56];
          *&buf[88] = v195;
          buf[96] = v374[80];
          v197 = v375;
          v375 = 0u;
          *&buf[104] = v197;
          *&buf[120] = v376;
          v333 = v377;
          LODWORD(v376) = v376 & 0xFFFFFFFE;
          v335 = *&v378[56];
          *v336 = *&v378[72];
          *&v334[24] = *&v378[24];
          *&v334[40] = *&v378[40];
          *&v334[8] = *&v378[8];
          v198 = *&v378[88];
          *&v378[88] = 0;
          *v337 = v198;
          *&v197 = *&v378[96];
          *&v378[96] = 0;
          *&v337[8] = v197;
          *&v337[16] = *&v378[104];
          v38 = 1;
          LOBYTE(cf) = v36;
        }

        else
        {
          v38 = 0;
          buf[0] = 0;
        }

        v340 = v38;
        if (v380)
        {
          WebCore::NotificationData::~NotificationData(v374, v37);
        }

        if (v38)
        {
          goto LABEL_317;
        }
      }

      else
      {
        buf[0] = 0;
        v340 = 0;
      }

      v200 = *a3;
      v279 = a3[1];
      *a3 = 0;
      a3[1] = 0;
      v280 = a3[3];
      if (!v280)
      {
        goto LABEL_326;
      }

      if (!v279)
      {
        goto LABEL_326;
      }

      (*(*v280 + 16))(v280, v200);
      if ((v340 & 1) == 0)
      {
        goto LABEL_326;
      }

LABEL_317:
      v199 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v200 & 1) == 0)
      {
        goto LABEL_326;
      }

      a3 = v199;
      while (1)
      {
        v201 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v202 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v202, v201 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v202 == v201)
        {
          goto LABEL_323;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_323:
      v203 = WTF::fastMalloc(0x18);
      *v203 = &unk_1F10F8168;
      v203[1] = a3;
      v203[2] = a2;
      *v374 = v203;
      if ((v340 & 1) == 0)
      {
        goto LABEL_423;
      }

      WebKit::WebSWContextManagerConnection::fireNotificationEvent(this, *buf, &buf[16], cf, v374);
      v204 = *v374;
      *v374 = 0;
      if (v204)
      {
        (*(*v204 + 8))(v204);
      }

LABEL_326:
      if (v340 == 1)
      {
        WebCore::NotificationData::~NotificationData(&buf[16], v200);
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v8);
    case 0xC00:
      v149 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if (v150 & 1) != 0 && ((v151 = v149, IPC::ArgumentCoder<std::optional<std::span<unsigned char const,18446744073709551615ul>>,void>::decode<IPC::Decoder>(a3, &v403), (v404[8]) || (v250 = *a3, v251 = a3[1], *a3 = 0, a3[1] = 0, (v252 = a3[3]) != 0) && v251 && ((*(*v252 + 16))(v252, v250), (v404[8])))
      {
        IPC::ArgumentCoder<std::optional<WebCore::NotificationPayload>,void>::decode<IPC::Decoder>(a3, v374);
        if (v378[8] & 1) != 0 || (v281 = *a3, v282 = a3[1], *a3 = 0, a3[1] = 0, (v283 = a3[3]) != 0) && v282 && ((*(*v283 + 16))(v283, v281), (v378[8]))
        {
          if ((v404[8] & 1) == 0)
          {
            goto LABEL_423;
          }

          *buf = v151;
          *&buf[8] = v403;
          *&buf[24] = *v404;
          std::optional<WebCore::NotificationPayload>::optional[abi:sn200100](&buf[32], v374);
          v334[24] = 1;
          if ((v378[8] & 1) != 0 && v378[0] == 1)
          {
            if (v377 == 1)
            {
              v153 = v376;
              *&v376 = 0;
              if (v153 && atomic_fetch_add_explicit(v153, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v153, v152);
              }

              v154 = *(&v375 + 1);
              *(&v375 + 1) = 0;
              if (v154 && atomic_fetch_add_explicit(v154, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v154, v152);
              }

              v155 = v375;
              *&v375 = 0;
              if (v155 && atomic_fetch_add_explicit(v155, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v155, v152);
              }

              v156 = *&v374[80];
              *&v374[80] = 0;
              if (v156 && atomic_fetch_add_explicit(v156, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v156, v152);
              }

              v157 = *&v374[72];
              *&v374[72] = 0;
              if (v157 && atomic_fetch_add_explicit(v157, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v157, v152);
              }
            }

            v158 = *&v374[40];
            *&v374[40] = 0;
            if (v158 && atomic_fetch_add_explicit(v158, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v158, v152);
            }

            v159 = *v374;
            *v374 = 0;
            if (v159 && atomic_fetch_add_explicit(v159, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v159, v152);
            }
          }
        }

        else
        {
          buf[0] = 0;
          v334[24] = 0;
        }

        if (v334[24])
        {
          goto LABEL_227;
        }
      }

      else
      {
        buf[0] = 0;
        v334[24] = 0;
      }

      v25 = *a3;
      v253 = a3[1];
      *a3 = 0;
      a3[1] = 0;
      v254 = a3[3];
      if (!v254)
      {
        goto LABEL_285;
      }

      if (!v253)
      {
        goto LABEL_285;
      }

      (*(*v254 + 16))(v254, v25);
      if ((v334[24] & 1) == 0)
      {
        goto LABEL_285;
      }

LABEL_227:
      v160 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v25 & 1) == 0)
      {
        goto LABEL_285;
      }

      a3 = v160;
      while (1)
      {
        v161 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v162 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v162, v161 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v162 == v161)
        {
          goto LABEL_282;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_282:
      v187 = WTF::fastMalloc(0x18);
      *v187 = &unk_1F10F8140;
      v187[1] = a3;
      v187[2] = a2;
      *&v403 = v187;
      if ((v334[24] & 1) == 0)
      {
        goto LABEL_423;
      }

      *v374 = *&buf[8];
      *&v374[16] = *&buf[24];
      WebKit::WebSWContextManagerConnection::firePushEvent(this, *buf, v374, &buf[32], &v403);
      v188 = v403;
      *&v403 = 0;
      if (v188)
      {
        (*(*v188 + 8))(v188);
      }

LABEL_285:
      if (v334[24] != 1 || v334[16] != 1)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v8);
      }

      if (v334[0] == 1)
      {
        v189 = v333;
        *&v333 = 0;
        if (v189 && atomic_fetch_add_explicit(v189, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v189, v25);
        }

        v190 = *&buf[128];
        *&buf[128] = 0;
        if (v190 && atomic_fetch_add_explicit(v190, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v190, v25);
        }

        v191 = *&buf[120];
        *&buf[120] = 0;
        if (v191 && atomic_fetch_add_explicit(v191, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v191, v25);
        }

        v192 = *&buf[112];
        *&buf[112] = 0;
        if (v192 && atomic_fetch_add_explicit(v192, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v192, v25);
        }

        v193 = *&buf[104];
        *&buf[104] = 0;
        if (v193 && atomic_fetch_add_explicit(v193, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v193, v25);
        }
      }

      v194 = *&buf[72];
      *&buf[72] = 0;
      if (v194 && atomic_fetch_add_explicit(v194, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v194, v25);
      }

LABEL_306:
      v29 = *&buf[32];
      *&buf[32] = 0;
      if (!v29)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v8);
      }

LABEL_307:
      if (atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v29, v25);
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v8);
    case 0xC01:
      v30 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
      if (v31)
      {
        WebCore::SWContextManager::singleton(v30);
        WebCore::SWContextManager::fireUpdateFoundEvent();
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v8);
    case 0xC02:
      IPC::ArgumentCoder<WebCore::ServiceWorkerContextData,void>::decode(a3, v374);
      if ((v402 & 1) == 0)
      {
        v264 = *a3;
        v265 = a3[1];
        *a3 = 0;
        a3[1] = 0;
        v266 = a3[3];
        if (!v266 || !v265 || ((*(*v266 + 16))(v266, v264), (v402 & 1) == 0))
        {
          buf[0] = 0;
          v373 = 0;
          goto LABEL_376;
        }
      }

      IPC::Decoder::decode<WebCore::ServiceWorkerData>(a3, &v403);
      if (v406 != 1)
      {
        buf[0] = 0;
        v373 = 0;
        goto LABEL_374;
      }

      IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, &v330);
      if ((v331 & 1) == 0)
      {
        v86 = *a3;
        v300 = a3[1];
        *a3 = 0;
        a3[1] = 0;
        v301 = a3[3];
        if (!v301 || !v300 || ((*(*v301 + 16))(v301, v86), (v331 & 1) == 0))
        {
          buf[0] = 0;
          v373 = 0;
          goto LABEL_370;
        }
      }

      v87 = a3[1];
      v88 = a3[2];
      v86 = *a3;
      if (v87 <= v88 - *a3)
      {
        *a3 = 0;
        a3[1] = 0;
        v316 = a3[3];
        if (v316)
        {
          if (v87)
          {
            (*(*v316 + 16))(v316);
            v87 = a3[1];
          }
        }

        else
        {
          v87 = 0;
        }
      }

      else
      {
        a3[2] = v88 + 1;
        if (v88)
        {
          v89 = *v88;
          if (v89 < 2)
          {
            v90 = IPC::Decoder::decode<WebKit::UseDownloadPlaceholder>(a3);
            if ((v90 & 0x100) != 0)
            {
              v91 = v90;
              v92 = IPC::Decoder::decode<WTF::OptionSet<WebCore::AdvancedPrivacyProtections>>(a3);
              if ((v92 & 0x10000) != 0)
              {
                if ((v402 & 1) == 0 || (v406 & 1) == 0 || (v331 & 1) == 0)
                {
                  goto LABEL_423;
                }

                v220 = v92;
                *buf = *v374;
                *&buf[16] = *&v374[16];
                WebCore::ServiceWorkerRegistrationData::ServiceWorkerRegistrationData(&buf[24], &v374[24]);
                v344 = v382;
                v345 = v383;
                v222 = *(&v384 + 1);
                v221 = v384;
                v383 = 0u;
                v384 = 0u;
                v346 = __PAIR128__(v222, v221);
                v223 = v388;
                v224 = v389;
                v388 = 0u;
                v389 = 0u;
                v347 = v385;
                v348 = v386;
                v349 = v387;
                v350 = v223;
                v351 = v224;
                v352 = v390;
                v353 = v391;
                LODWORD(v390) = v390 & 0xFFFFFFFE;
                v354 = v392;
                v225 = v393;
                v393 = 0;
                v355 = v225;
                *&v223 = v394;
                v394 = 0;
                v356 = v223;
                LODWORD(v225) = v395;
                v395 = 0;
                v357 = v225;
                LOBYTE(v225) = v396;
                v396 = 0;
                v358 = v225;
                v360 = v398;
                v361 = v399;
                v359 = v397;
                v362 = v400;
                v226 = v401;
                v401 = 0;
                v363 = v226;
                v364 = v403;
                v227 = *v404;
                *v404 = 0;
                v365 = v227;
                v366 = *&v404[8];
                v367 = *&v404[24];
                *&v404[8] &= ~1u;
                v368 = v405;
                v228 = v330;
                v330 = 0;
                v369 = v228;
                v370 = v89;
                v371 = v91;
                v93 = 1;
                v372 = v220;
LABEL_366:
                v373 = v93;
                if (v331)
                {
                  v229 = v330;
                  v330 = 0;
                  if (v229)
                  {
                    if (atomic_fetch_add_explicit(v229, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v229, v86);
                    }
                  }
                }

LABEL_370:
                if (v406)
                {
                  v230 = *v404;
                  *v404 = 0;
                  if (v230)
                  {
                    if (atomic_fetch_add_explicit(v230, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v230, v86);
                    }
                  }
                }

LABEL_374:
                if (v402)
                {
                  WebCore::ServiceWorkerContextData::~ServiceWorkerContextData(v374, v86);
                }

LABEL_376:
                if (v373 & 1) != 0 || (v273 = *a3, v274 = a3[1], *a3 = 0, a3[1] = 0, (v275 = a3[3]) != 0) && v274 && ((*(*v275 + 16))(v275, v273), (v373))
                {
                  WebKit::WebSWContextManagerConnection::installServiceWorker(this, buf, &v364, &v369, v370, v371, v372);
                  if (v373)
                  {
                    v232 = v369;
                    v369 = 0;
                    if (v232 && atomic_fetch_add_explicit(v232, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v232, v231);
                    }

                    v233 = v365;
                    v365 = 0;
                    if (v233 && atomic_fetch_add_explicit(v233, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v233, v231);
                    }

                    WebCore::ServiceWorkerContextData::~ServiceWorkerContextData(buf, v231);
                  }
                }

                return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v8);
              }
            }

LABEL_110:
            v93 = 0;
            buf[0] = 0;
            goto LABEL_366;
          }

          goto LABEL_545;
        }
      }

      *a3 = 0;
      a3[1] = 0;
      v317 = a3[3];
      if (v317)
      {
        if (v87)
        {
          (*(*v317 + 16))(v317);
          v86 = *a3;
          v87 = a3[1];
          goto LABEL_545;
        }
      }

      else
      {
        v87 = 0;
      }

      v86 = 0;
LABEL_545:
      *a3 = 0;
      a3[1] = 0;
      v318 = a3[3];
      if (v318)
      {
        if (v87)
        {
          (*(*v318 + 16))(v318, v86);
          v319 = a3[3];
          v86 = *a3;
          v320 = a3[1];
          *a3 = 0;
          a3[1] = 0;
          if (v319)
          {
            if (v320)
            {
              (*(*v319 + 16))(v319, v86);
            }
          }
        }
      }

      goto LABEL_110;
    case 0xC03:
      v16 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v17 & 1) == 0)
      {
        goto LABEL_119;
      }

      v18 = v16;
      v19 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v20 & 1) == 0)
      {
        goto LABEL_119;
      }

      v21 = v19;
      v22 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v23 & 1) == 0)
      {
        goto LABEL_119;
      }

      v24 = v22;
      IPC::Decoder::decode<WebCore::ResourceError>(a3, v374);
      if ((v374[80] & 1) == 0)
      {
        goto LABEL_119;
      }

      *buf = v18;
      *&buf[8] = v21;
      *&buf[16] = v24;
      *&buf[24] = *v374;
      *&buf[40] = *&v374[16];
      *&buf[56] = *&v374[32];
      *&v374[16] &= ~1u;
      *&buf[72] = *&v374[48];
      *&buf[80] = *&v374[56];
      *&buf[84] = *&v374[60];
      *&buf[88] = *&v374[64];
      buf[96] = v374[72];
      buf[104] = 1;
      WebKit::WebSWContextManagerConnection::navigationPreloadFailed(this);
      v26 = *&buf[88];
      *&buf[88] = 0;
      if (v26)
      {
        CFRelease(v26);
      }

      v27 = *&buf[72];
      *&buf[72] = 0;
      if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v27, v25);
      }

      v28 = *&buf[32];
      *&buf[32] = 0;
      if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v28, v25);
      }

      v29 = *&buf[24];
      *&buf[24] = 0;
      if (v29)
      {
        goto LABEL_307;
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v8);
    case 0xC04:
      v98 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v99 & 1) == 0)
      {
        goto LABEL_119;
      }

      v100 = v98;
      v101 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v102 & 1) == 0)
      {
        goto LABEL_119;
      }

      v103 = v101;
      v104 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v105 & 1) == 0)
      {
        goto LABEL_119;
      }

      v106 = v104;
      IPC::ArgumentCoder<WebCore::ResourceResponse,void>::decode(a3, v374);
      if ((v381 & 1) == 0)
      {
        v286 = *a3;
        v287 = a3[1];
        *a3 = 0;
        a3[1] = 0;
        v288 = a3[3];
        if (!v288)
        {
          goto LABEL_119;
        }

        if (!v287)
        {
          goto LABEL_119;
        }

        (*(*v288 + 16))(v288, v286);
        if ((v381 & 1) == 0)
        {
          goto LABEL_119;
        }
      }

      *&buf[32] = *&v374[8];
      *&buf[48] = *&v374[24];
      v108 = *&v374[56];
      memset(&v374[56], 0, 32);
      *buf = v100;
      *&buf[8] = v103;
      v109 = *v374;
      v110 = *&v374[40];
      *v374 = 0;
      *&buf[16] = v106;
      *&buf[24] = v109;
      *&v374[8] &= ~1u;
      *&v374[40] = 0;
      *&buf[64] = v110;
      *&buf[72] = *&v374[48];
      *&buf[80] = v108;
      *&buf[96] = *&v374[72];
      v111 = *(&v375 + 1);
      *&buf[112] = v375;
      v375 = 0uLL;
      *&buf[120] = v111;
      v112 = *(&v376 + 1);
      *&buf[128] = v376;
      v376 = 0uLL;
      *&v333 = v112;
      BYTE8(v333) = 0;
      v334[0] = 0;
      if (BYTE8(v377) == 1)
      {
        v219 = v377;
        *&v377 = 0;
        *(&v333 + 1) = v219;
        v334[0] = 1;
      }

      *&v334[8] = *v378;
      v334[10] = v378[2];
      *&v334[16] = *&v378[8];
      *&v378[8] = 0;
      v335 = *&v378[48];
      *v336 = *&v378[64];
      *v337 = *&v378[80];
      *&v337[11] = *&v378[91];
      *&v334[24] = *&v378[16];
      *&v334[40] = *&v378[32];
      cf = v379;
      LOBYTE(v339) = v380;
      v340 = 1;
      if (v381)
      {
        v379 = 0;
        WebCore::ResourceResponseBase::~ResourceResponseBase(v374, v107);
      }

      WebKit::WebSWContextManagerConnection::navigationPreloadIsReady(this);
      v114 = cf;
      cf = 0;
      if (v114)
      {
        CFRelease(v114);
      }

      WebCore::ResourceResponseBase::~ResourceResponseBase(&buf[24], v113);
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v8);
    case 0xC05:
      v165 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v166 & 1) == 0)
      {
        buf[0] = 0;
        v337[0] = 0;
        goto LABEL_434;
      }

      v167 = v165;
      IPC::Decoder::decode<WebCore::MessageWithMessagePorts>(a3, &v403);
      if (v404[8] != 1)
      {
        buf[0] = 0;
        v337[0] = 0;
        goto LABEL_400;
      }

      v168 = a3[1];
      v169 = a3[2];
      if (v168 <= v169 - *a3)
      {
        *a3 = 0;
        a3[1] = 0;
        v314 = a3[3];
        if (v314)
        {
          if (v168)
          {
            (*(*v314 + 16))(v314);
            v168 = a3[1];
          }
        }

        else
        {
          v168 = 0;
        }
      }

      else
      {
        a3[2] = v169 + 1;
        if (v169)
        {
          v170 = *v169;
          if (v170 >= 2)
          {
LABEL_239:
            v374[0] = 0;
            v378[72] = 0;
            goto LABEL_240;
          }

          if (!v170)
          {
            IPC::Decoder::decode<WebCore::ServiceWorkerData>(a3, buf);
            if (buf[64] == 1)
            {
              *v374 = *buf;
              *&v374[16] = *&buf[16];
              *&v374[24] = *&buf[24];
              *&v374[40] = *&buf[40];
              *&v374[56] = *&buf[56];
              v378[56] = 0;
              v378[72] = 1;
              goto LABEL_387;
            }

            goto LABEL_239;
          }

          IPC::ArgumentCoder<WebCore::ServiceWorkerClientData,void>::decode(a3, buf);
          if (v334[40] & 1) != 0 || (v171 = *a3, v292 = a3[1], *a3 = 0, a3[1] = 0, (v293 = a3[3]) != 0) && v292 && ((*(*v293 + 16))(v293, v171), (v334[40]))
          {
            *v374 = *buf;
            *&v374[16] = *&buf[16];
            *&v374[32] = *&buf[32];
            v211 = *&buf[40];
            *&buf[40] = 0;
            *&v374[40] = v211;
            *&v374[48] = *&buf[48];
            *&v374[64] = *&buf[64];
            *&buf[48] &= ~1u;
            v375 = *&buf[88];
            *&buf[88] &= ~1u;
            v212 = *&buf[80];
            *&buf[80] = 0;
            v376 = *&buf[104];
            *&v378[16] = *v334;
            *v378 = v333;
            v377 = *&buf[120];
            *&v374[80] = v212;
            *&v378[32] = *&v334[16];
            v213 = *&v334[24];
            *&v334[16] = 0;
            *&v334[24] = 0;
            *&v378[40] = v213;
            v378[56] = 1;
            v378[72] = 1;
            WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v334[16], v171);
            v214 = *&buf[80];
            *&buf[80] = 0;
            if (v214 && atomic_fetch_add_explicit(v214, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v214, v171);
            }

            v215 = *&buf[40];
            *&buf[40] = 0;
            if (v215 && atomic_fetch_add_explicit(v215, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v215, v171);
            }
          }

          else
          {
            v374[0] = 0;
            v378[72] = 0;
          }

          if (v378[72])
          {
            goto LABEL_387;
          }

LABEL_240:
          v171 = *a3;
          v172 = a3[1];
          *a3 = 0;
          a3[1] = 0;
          v173 = a3[3];
          if (!v173 || !v172 || ((*(*v173 + 16))(v173, v171), (v378[72] & 1) == 0))
          {
            buf[0] = 0;
            v337[0] = 0;
            goto LABEL_395;
          }

LABEL_387:
          if ((v404[8] & 1) == 0)
          {
            goto LABEL_423;
          }

          *buf = v167;
          v234 = v403;
          v403 = 0uLL;
          *&buf[8] = v234;
          *&v234 = *v404;
          *v404 = 0;
          *&buf[24] = v234;
          buf[32] = 0;
          LOBYTE(v336[0]) = -1;
          if (v378[56] == 255)
          {
            v337[0] = 1;
          }

          else
          {
            *&buf[32] = *v374;
            if (v378[56])
            {
              *&buf[48] = *&v374[16];
              *&buf[64] = *&v374[32];
              v236 = *&v374[40];
              *&v374[40] = 0;
              *&buf[72] = v236;
              *&buf[80] = *&v374[48];
              *&buf[96] = *&v374[64];
              *&v374[48] &= ~1u;
              *&buf[120] = v375;
              LODWORD(v375) = v375 & 0xFFFFFFFE;
              v237 = *&v374[80];
              v238 = *&v378[32];
              *&v374[80] = 0;
              v333 = v376;
              *&v334[32] = *&v378[16];
              *&v334[16] = *v378;
              *v334 = v377;
              *&v378[32] = 0;
              *&buf[112] = v237;
              *&v334[48] = v238;
              v239 = *&v378[40];
              *&v378[40] = 0;
              *&v335 = v239;
            }

            else
            {
              v235 = *&v374[16];
              *&v374[16] = 0;
              *&buf[48] = v235;
              *&buf[56] = *&v374[24];
              *&buf[72] = *&v374[40];
              *&v374[24] &= ~1u;
              *&buf[88] = *&v374[56];
            }

            LOBYTE(v336[0]) = v378[56];
            v337[0] = 1;
            if ((v378[72] & 1) == 0)
            {
              goto LABEL_395;
            }
          }

          mpark::variant<WebCore::ServiceWorkerData,WebCore::ServiceWorkerClientData>::~variant(v374, v171);
LABEL_395:
          if (v404[8])
          {
            v240 = *(&v403 + 1);
            if (*(&v403 + 1))
            {
              *(&v403 + 1) = 0;
              *v404 = 0;
              WTF::fastFree(v240, v171);
            }

            v241 = v403;
            *&v403 = 0;
            if (v241)
            {
              WTF::ThreadSafeRefCounted<WebCore::SerializedScriptValue,(WTF::DestructionThread)0>::deref(v241);
            }
          }

LABEL_400:
          if (v337[0])
          {
            goto LABEL_401;
          }

LABEL_434:
          v267 = *a3;
          v268 = a3[1];
          *a3 = 0;
          a3[1] = 0;
          v269 = a3[3];
          if (!v269)
          {
            return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v8);
          }

          if (!v268)
          {
            return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v8);
          }

          (*(*v269 + 16))(v269, v267);
          if ((v337[0] & 1) == 0)
          {
            return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v8);
          }

LABEL_401:
          WebKit::WebSWContextManagerConnection::postMessageToServiceWorker(this);
          if (v337[0])
          {
            mpark::variant<WebCore::ServiceWorkerData,WebCore::ServiceWorkerClientData>::~variant(&buf[32], v242);
            v244 = *&buf[16];
            if (*&buf[16])
            {
              *&buf[16] = 0;
              *&buf[24] = 0;
              WTF::fastFree(v244, v243);
            }

            v245 = *&buf[8];
            *&buf[8] = 0;
            if (v245)
            {
              WTF::ThreadSafeRefCounted<WebCore::SerializedScriptValue,(WTF::DestructionThread)0>::deref(v245);
            }
          }

          return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v8);
        }
      }

      *a3 = 0;
      a3[1] = 0;
      v315 = a3[3];
      if (v315 && v168)
      {
        (*(*v315 + 16))(v315);
      }

      goto LABEL_239;
    case 0xC06:
      v181 = IPC::Decoder::decode<WebKit::UseDownloadPlaceholder>(a3);
      if ((v181 & 0x100) == 0)
      {
        goto LABEL_119;
      }

      WebKit::WebSWContextManagerConnection::setInspectable(this, v181 & 1);
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v8);
    case 0xC07:
      v115 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WallTime>>(buf, a3);
      if (buf[16] == 1)
      {
        WebCore::SWContextManager::singleton(v115);
        WebCore::SWContextManager::setRegistrationLastUpdateTime();
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v8);
    case 0xC08:
      v148 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ServiceWorkerUpdateViaCache>>(buf, a3);
      if (buf[16] == 1)
      {
        WebCore::SWContextManager::singleton(v148);
        WebCore::SWContextManager::setRegistrationUpdateViaCache();
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v8);
    case 0xC09:
      v180 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
      if ((v180 & 0x100) != 0)
      {
        WebKit::WebSWContextManagerConnection::setThrottleState(this, v180 & 1);
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v8);
    case 0xC0A:
      IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a3, buf);
      if (buf[8] & 1) != 0 || (v255 = *a3, v256 = a3[1], *a3 = 0, a3[1] = 0, (v257 = a3[3]) != 0) && v256 && ((*(*v257 + 16))(v257, v255), (buf[8]))
      {
        WebKit::WebSWContextManagerConnection::setUserAgent(this, buf);
        if (buf[8])
        {
          v29 = *buf;
          *buf = 0;
          if (v29)
          {
            goto LABEL_307;
          }
        }
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v8);
    case 0xC0B:
      v45 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v46 & 1) == 0)
      {
        goto LABEL_424;
      }

      v47 = v45;
      v48 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v49 & 1) == 0)
      {
        goto LABEL_424;
      }

      v50 = v48;
      v51 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v52 & 1) == 0)
      {
        goto LABEL_424;
      }

      v53 = v51;
      IPC::ArgumentCoder<WebCore::ResourceRequest,void>::decode(a3, v374);
      if ((v378[64] & 1) == 0)
      {
        v289 = *a3;
        v290 = a3[1];
        *a3 = 0;
        a3[1] = 0;
        v291 = a3[3];
        if (!v291 || !v290 || ((*(*v291 + 16))(v291, v289), (v378[64] & 1) == 0))
        {
          buf[0] = 0;
          v343 = 0;
          goto LABEL_77;
        }
      }

      IPC::ArgumentCoder<WebCore::FetchOptions,void>::decode(a3, &v403);
      if ((v404[32] & 1) == 0)
      {
        v261 = *a3;
        v262 = a3[1];
        *a3 = 0;
        a3[1] = 0;
        v263 = a3[3];
        if (!v263 || !v262 || ((*(*v263 + 16))(v263, v261), (v404[32] & 1) == 0))
        {
          buf[0] = 0;
          v343 = 0;
          goto LABEL_75;
        }
      }

      IPC::ArgumentCoder<IPC::FormDataReference,void>::decode(a3, &v324);
      if ((v325 & 1) == 0)
      {
        v56 = *a3;
        v284 = a3[1];
        *a3 = 0;
        a3[1] = 0;
        v285 = a3[3];
        if (v285 && v284)
        {
          (*(*v285 + 16))(v285, v56);
        }

        buf[0] = 0;
        v343 = 0;
LABEL_71:
        if (v404[32])
        {
          v73 = *(&v403 + 1);
          *(&v403 + 1) = 0;
          if (v73)
          {
            if (atomic_fetch_add_explicit(v73, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v73, v56);
            }
          }
        }

LABEL_75:
        if (v378[64])
        {
          WebCore::ResourceRequest::~ResourceRequest(v374);
        }

LABEL_77:
        if (v343)
        {
          goto LABEL_78;
        }

LABEL_425:
        v258 = *a3;
        v259 = a3[1];
        *a3 = 0;
        a3[1] = 0;
        v260 = a3[3];
        if (!v260)
        {
          return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v8);
        }

        if (!v259)
        {
          return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v8);
        }

        (*(*v260 + 16))(v260, v258);
        if ((v343 & 1) == 0)
        {
          return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v8);
        }

LABEL_78:
        WebKit::WebSWContextManagerConnection::startFetch(this, *buf, *&buf[8], *&buf[16], &buf[24], v336, &cf);
        if (v343)
        {
          v75 = v342;
          v342 = 0;
          if (v75 && atomic_fetch_add_explicit(v75, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v75, v74);
          }

          v76 = v341;
          v341 = 0;
          if (v76 && atomic_fetch_add_explicit(v76, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v76, v74);
          }

          v77 = v339;
          v339 = 0;
          if (v77 && atomic_fetch_add_explicit(v77, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v77, v74);
          }

          v78 = cf;
          cf = 0;
          if (v78)
          {
            WTF::RefCounted<WebCore::FormData>::deref(v78);
          }

          v79 = v336[1];
          v336[1] = 0;
          if (v79 && atomic_fetch_add_explicit(v79, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v79, v74);
          }

          WebCore::ResourceRequest::~ResourceRequest(&buf[24]);
        }

        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v8);
      }

      IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, &v326);
      if ((v327 & 1) == 0)
      {
        v56 = *a3;
        v294 = a3[1];
        *a3 = 0;
        a3[1] = 0;
        v295 = a3[3];
        if (!v295 || !v294 || ((*(*v295 + 16))(v295, v56), (v327 & 1) == 0))
        {
          buf[0] = 0;
          v343 = 0;
LABEL_69:
          if (v324)
          {
            WTF::RefCounted<WebCore::FormData>::deref(v324);
          }

          goto LABEL_71;
        }
      }

      v54 = a3[1];
      v55 = a3[2];
      v56 = *a3;
      if (v54 <= v55 - *a3)
      {
        *a3 = 0;
        a3[1] = 0;
        v304 = a3[3];
        if (v304)
        {
          if (v54)
          {
            (*(*v304 + 16))(v304);
            v54 = a3[1];
          }
        }

        else
        {
          v54 = 0;
        }
      }

      else
      {
        a3[2] = v55 + 1;
        if (v55)
        {
          v57 = *v55;
          if (v57 < 2)
          {
            IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, &v328);
            if (v329 & 1) != 0 || (v56 = *a3, v296 = a3[1], *a3 = 0, a3[1] = 0, (v297 = a3[3]) != 0) && v296 && ((*(*v297 + 16))(v297, v56), (v329))
            {
              IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, &v330);
              if (v331 & 1) != 0 || (v56 = *a3, v298 = a3[1], *a3 = 0, a3[1] = 0, (v299 = a3[3]) != 0) && v298 && ((*(*v299 + 16))(v299, v56), (v331))
              {
                if ((v378[64] & 1) == 0 || (v404[32] & 1) == 0 || (v327 & 1) == 0 || (v329 & 1) == 0)
                {
LABEL_423:
                  __break(1u);
LABEL_424:
                  buf[0] = 0;
                  v343 = 0;
                  goto LABEL_425;
                }

                *buf = v47;
                *&buf[8] = v50;
                v58 = *v374;
                v59 = *&v374[40];
                *v374 = 0;
                *&buf[16] = v53;
                *&buf[24] = v58;
                *&buf[32] = *&v374[8];
                *&buf[48] = *&v374[24];
                *&v374[8] &= ~1u;
                *&v374[40] = 0;
                *&buf[64] = v59;
                *&buf[72] = *&v374[48];
                *&buf[88] = *&v374[64];
                *&v374[48] &= ~1u;
                *&buf[104] = *&v374[80];
                v60 = v375;
                v375 = 0u;
                *&buf[112] = v60;
                v61 = *(&v376 + 1);
                *&buf[128] = v376;
                v376 = 0uLL;
                *&v333 = v61;
                v62 = *(&v377 + 1);
                *(&v333 + 1) = v377;
                v377 = 0uLL;
                *v334 = v62;
                v63 = *v378;
                *v378 = 0;
                *&v334[8] = v63;
                v334[20] = v378[12];
                *&v334[16] = *&v378[8];
                v64 = *&v378[16];
                memset(&v378[16], 0, 24);
                *&v334[24] = v64;
                LOBYTE(v335) = v378[48];
                *&v334[40] = *&v378[32];
                v65 = *&v378[56];
                *&v378[56] = 0;
                *(&v335 + 1) = v65;
                *(v336 + 3) = *(&v403 + 3);
                LODWORD(v336[0]) = v403;
                v66 = *(&v403 + 1);
                *(&v403 + 1) = 0;
                v336[1] = v66;
                *v337 = *v404;
                *&v337[16] = *&v404[16];
                v67 = v324;
                v324 = 0;
                v68 = v326;
                v326 = 0;
                cf = v67;
                v339 = v68;
                v340 = v57;
                v69 = v328;
                v328 = 0;
                v70 = 1;
                v341 = v69;
                v342 = v330;
              }

              else
              {
                v70 = 0;
                buf[0] = 0;
              }

              v343 = v70;
              if (v329)
              {
                v71 = v328;
                v328 = 0;
                if (v71)
                {
                  if (atomic_fetch_add_explicit(v71, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v71, v56);
                  }
                }
              }

              goto LABEL_65;
            }

LABEL_475:
            buf[0] = 0;
            v343 = 0;
LABEL_65:
            if (v327)
            {
              v72 = v326;
              v326 = 0;
              if (v72)
              {
                if (atomic_fetch_add_explicit(v72, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v72, v56);
                }
              }
            }

            goto LABEL_69;
          }

          goto LABEL_510;
        }
      }

      *a3 = 0;
      a3[1] = 0;
      v305 = a3[3];
      if (v305)
      {
        if (v54)
        {
          (*(*v305 + 16))(v305);
          v56 = *a3;
          v54 = a3[1];
          goto LABEL_510;
        }
      }

      else
      {
        v54 = 0;
      }

      v56 = 0;
LABEL_510:
      *a3 = 0;
      a3[1] = 0;
      v306 = a3[3];
      if (v306 && v54)
      {
        (*(*v306 + 16))(v306, v56);
      }

      goto LABEL_475;
    case 0xC0C:
      v43 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
      if (v44)
      {
        WebKit::WebSWContextManagerConnection::terminateWorker(this, v43);
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v8);
    case 0xC0D:
      v182 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
      if (v183)
      {
        WebCore::SWContextManager::singleton(v182);
        WebCore::SWContextManager::stopRunningDebuggerTasksOnServiceWorker();
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v8);
    case 0xC0E:
      v12 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v13 & 1) == 0)
      {
        goto LABEL_119;
      }

      v14 = v12;
      v15 = IPC::Decoder::decode<WebCore::LockBackForwardList>(a3);
      if ((v15 & 0x100) == 0)
      {
        goto LABEL_119;
      }

      WebKit::WebSWContextManagerConnection::updateAppInitiatedValue(this, v14, v15 & 1);
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v8);
    case 0xC0F:
      IPC::ArgumentCoder<std::tuple<WebKit::WebPreferencesStore>,void>::decode<IPC::Decoder>(a3, buf, a4, a5);
      if (buf[48] & 1) != 0 || (v270 = *a3, v271 = a3[1], *a3 = 0, a3[1] = 0, (v272 = a3[3]) != 0) && v271 && ((*(*v272 + 16))(v272, v270), (buf[48]))
      {
        WebKit::WebSWContextManagerConnection::updatePreferencesStore(this, buf);
        if (buf[48])
        {
          if (*&buf[24])
          {
            WTF::RobinHoodHashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>::deallocateTable(*&buf[24], *&buf[32]);
          }

          if (*buf)
          {
            WTF::RobinHoodHashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>::deallocateTable(*buf, *&buf[8]);
          }
        }
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v8);
    case 0xC10:
      IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ServiceWorkerRegistrationState,std::optional<WebCore::ServiceWorkerData>>>(buf, a3);
      if (buf[88] != 1)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v8);
      }

      WebKit::WebSWContextManagerConnection::updateRegistrationState(this, *buf, buf[8], &buf[16]);
      if ((buf[88] & 1) == 0 || buf[80] != 1)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v8);
      }

      goto LABEL_306;
    case 0xC11:
      v179 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ServiceWorkerState>>(buf, a3);
      if (buf[16] == 1)
      {
        WebCore::SWContextManager::singleton(v179);
        WebCore::SWContextManager::updateWorkerState();
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v8);
    default:
      v94 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        if (v11 >= 0x107F)
        {
          v247 = 4223;
        }

        else
        {
          v247 = v11;
        }

        v248 = (&IPC::Detail::messageDescriptions)[3 * v247];
        v249 = a3[7];
        *buf = 136315394;
        *&buf[4] = v248;
        *&buf[12] = 2048;
        *&buf[14] = v249;
        _os_log_error_impl(&dword_19D52D000, v94, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", buf, 0x16u);
      }

      goto LABEL_119;
  }
}

void WebKit::WebSWServerConnection::didReceiveMessage(WebKit::WebSWServerConnection *this, atomic_ullong *a2, IPC::Decoder *a3)
{
  v86 = *MEMORY[0x1E69E9840];
  v6 = *(this + 10);
  if (v6 && (v3 = *(v6 + 8)) != 0)
  {
    v7 = 0;
    v3 = *(v3 + 280);
  }

  else
  {
LABEL_79:
    v7 = 1;
  }

  ++*(this + 4);
  switch(*(a3 + 25))
  {
    case 0xC12:
      if ((v3 & 0x4000000) == 0)
      {
        v7 = 1;
      }

      if (v7 == 1)
      {
        v32 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_113;
        }

        *buf = 136315138;
        *&buf[4] = "WebSWServerConnection_AbortBackgroundFetch";
        v33 = "Message %s received by a disabled message endpoint";
        goto LABEL_147;
      }

      IPC::handleMessageAsync<Messages::WebSWServerConnection::AbortBackgroundFetch,IPC::Connection,WebKit::WebSWServerConnection,WebCore::SWServer::Connection,void ()(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&,WTF::CompletionHandler<void ()(BOOL)> &&)>(a2, a3);
      goto LABEL_45;
    case 0xC13:
      if ((v3 & 0x200000) == 0)
      {
        v7 = 1;
      }

      if (v7 == 1)
      {
        v32 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_113;
        }

        *buf = 136315138;
        *&buf[4] = "WebSWServerConnection_AddCookieChangeSubscriptions";
        v33 = "Message %s received by a disabled message endpoint";
        goto LABEL_147;
      }

      IPC::handleMessageAsync<Messages::WebSWServerConnection::AddCookieChangeSubscriptions,IPC::Connection,WebKit::WebSWServerConnection,WebKit::WebSWServerConnection,void ()(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WebCore::CookieChangeSubscription,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(std::optional<WebCore::ExceptionData> &&)> &&)>(a2, a3, this);
      goto LABEL_45;
    case 0xC14:
      IPC::handleMessageAsync<Messages::WebSWServerConnection::AddRoutes,IPC::Connection,WebKit::WebSWServerConnection,WebKit::WebSWServerConnection,void ()(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WebCore::ServiceWorkerRoute,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<void,WebCore::ExceptionData> &&)> &&)>(a2, a3, this);
      goto LABEL_45;
    case 0xC15:
      IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
      if (v30)
      {
        WebCore::SWServer::Connection::addServiceWorkerRegistrationInServer();
      }

      goto LABEL_45;
    case 0xC16:
      if ((v3 & 0x4000000) == 0)
      {
        v7 = 1;
      }

      if (v7 == 1)
      {
        v32 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_113;
        }

        *buf = 136315138;
        *&buf[4] = "WebSWServerConnection_BackgroundFetchIdentifiers";
        v33 = "Message %s received by a disabled message endpoint";
        goto LABEL_147;
      }

      IPC::handleMessageAsync<Messages::WebSWServerConnection::BackgroundFetchIdentifiers,IPC::Connection,WebKit::WebSWServerConnection,WebCore::SWServer::Connection,void ()(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)>(a2, a3);
      goto LABEL_45;
    case 0xC17:
      if ((v3 & 0x4000000) == 0)
      {
        v7 = 1;
      }

      if (v7 == 1)
      {
        v32 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_113;
        }

        *buf = 136315138;
        *&buf[4] = "WebSWServerConnection_BackgroundFetchInformation";
        v33 = "Message %s received by a disabled message endpoint";
        goto LABEL_147;
      }

      IPC::handleMessageAsync<Messages::WebSWServerConnection::BackgroundFetchInformation,IPC::Connection,WebKit::WebSWServerConnection,WebCore::SWServer::Connection,void ()(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<std::optional<WebCore::BackgroundFetchInformation>,WebCore::ExceptionData> &&)> &&)>(a2, a3);
      goto LABEL_45;
    case 0xC18:
      if ((v3 & 0x200000) == 0)
      {
        v7 = 1;
      }

      if (v7 == 1)
      {
        v32 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_113;
        }

        *buf = 136315138;
        *&buf[4] = "WebSWServerConnection_CookieChangeSubscriptions";
        v33 = "Message %s received by a disabled message endpoint";
        goto LABEL_147;
      }

      IPC::handleMessageAsync<Messages::WebSWServerConnection::CookieChangeSubscriptions,IPC::Connection,WebKit::WebSWServerConnection,WebKit::WebSWServerConnection,void ()(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Vector<WebCore::CookieChangeSubscription,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::ExceptionData> &&)> &&)>(a2, a3, this);
      goto LABEL_45;
    case 0xC19:
      IPC::handleMessage<Messages::WebSWServerConnection::DidResolveRegistrationPromise,IPC::Connection,WebKit::WebSWServerConnection,WebCore::SWServer::Connection,void ()(WebCore::ServiceWorkerRegistrationKey const&)>(a3, this);
      goto LABEL_45;
    case 0xC1A:
      if ((v3 & 0x400000000000000) == 0)
      {
        v7 = 1;
      }

      if (v7 == 1)
      {
        v32 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_113;
        }

        *buf = 136315138;
        *&buf[4] = "WebSWServerConnection_DisableNavigationPreload";
        v33 = "Message %s received by a disabled message endpoint";
        goto LABEL_147;
      }

      IPC::handleMessageAsync<Messages::WebSWServerConnection::DisableNavigationPreload,IPC::Connection,WebKit::WebSWServerConnection,WebKit::WebSWServerConnection,void ()(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(std::optional<WebCore::ExceptionData> &&)> &&)>(a2, a3, this);
      goto LABEL_45;
    case 0xC1B:
      if ((v3 & 0x400000000000000) == 0)
      {
        v7 = 1;
      }

      if (v7 == 1)
      {
        v32 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_113;
        }

        *buf = 136315138;
        *&buf[4] = "WebSWServerConnection_EnableNavigationPreload";
        v33 = "Message %s received by a disabled message endpoint";
        goto LABEL_147;
      }

      IPC::handleMessageAsync<Messages::WebSWServerConnection::EnableNavigationPreload,IPC::Connection,WebKit::WebSWServerConnection,WebKit::WebSWServerConnection,void ()(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(std::optional<WebCore::ExceptionData> &&)> &&)>(a2, a3, this);
      goto LABEL_45;
    case 0xC1C:
      IPC::handleMessage<Messages::WebSWServerConnection::FinishFetchingScriptInServer,IPC::Connection,WebKit::WebSWServerConnection,WebCore::SWServer::Connection,void ()(WebCore::ServiceWorkerJobDataIdentifier const&,WebCore::ServiceWorkerRegistrationKey const&,WebCore::WorkerFetchResult &&)>(a3);
      goto LABEL_45;
    case 0xC1D:
      if ((v3 & 0x400000000000000) == 0)
      {
        v7 = 1;
      }

      if (v7 == 1)
      {
        v32 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_113;
        }

        *buf = 136315138;
        *&buf[4] = "WebSWServerConnection_GetNavigationPreloadState";
        v33 = "Message %s received by a disabled message endpoint";
        goto LABEL_147;
      }

      IPC::handleMessageAsync<Messages::WebSWServerConnection::GetNavigationPreloadState,IPC::Connection,WebKit::WebSWServerConnection,WebKit::WebSWServerConnection,void ()(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebCore::NavigationPreloadState,WebCore::ExceptionData> &&)> &&)>(a2, a3, this);
      goto LABEL_45;
    case 0xC1E:
      IPC::handleMessageAsync<Messages::WebSWServerConnection::GetNotifications,IPC::Connection,WebKit::WebSWServerConnection,WebKit::WebSWServerConnection,void ()(WTF::URL const&,WTF::String const&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::ExceptionData> &&)> &&)>(a2, a3, this);
      goto LABEL_45;
    case 0xC1F:
      IPC::handleMessageAsync<Messages::WebSWServerConnection::GetPushPermissionState,IPC::Connection,WebKit::WebSWServerConnection,WebKit::WebSWServerConnection,void ()(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<unsigned char,WebCore::ExceptionData> &&)> &&)>(a2, a3, this);
      goto LABEL_45;
    case 0xC20:
      IPC::handleMessageAsync<Messages::WebSWServerConnection::GetPushSubscription,IPC::Connection,WebKit::WebSWServerConnection,WebKit::WebSWServerConnection,void ()(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<std::optional<WebCore::PushSubscriptionData>,WebCore::ExceptionData> &&)> &&)>(a2, a3, this);
      goto LABEL_45;
    case 0xC21:
      IPC::handleMessageAsync<Messages::WebSWServerConnection::GetRegistrations,IPC::Connection,WebKit::WebSWServerConnection,WebKit::WebSWServerConnection,void ()(WebCore::SecurityOriginData const&,WTF::URL const&,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ServiceWorkerRegistrationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)> &&)>(a2, a3, this);
      goto LABEL_45;
    case 0xC22:
      if ((v3 & 0x4000000) == 0)
      {
        v7 = 1;
      }

      if (v7 == 1)
      {
        v32 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_113;
        }

        *buf = 136315138;
        *&buf[4] = "WebSWServerConnection_MatchBackgroundFetch";
        v33 = "Message %s received by a disabled message endpoint";
        goto LABEL_147;
      }

      IPC::handleMessageAsync<Messages::WebSWServerConnection::MatchBackgroundFetch,IPC::Connection,WebKit::WebSWServerConnection,WebCore::SWServer::Connection,void ()(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&,WebCore::RetrieveRecordsOptions &&,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::BackgroundFetchRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)>(a2, a3);
      goto LABEL_45;
    case 0xC23:
      IPC::handleMessageAsync<Messages::WebSWServerConnection::MatchRegistration,IPC::Connection,WebKit::WebSWServerConnection,WebKit::WebSWServerConnection,void ()(WebCore::SecurityOriginData const&,WTF::URL const&,WTF::CompletionHandler<void ()(std::optional<WebCore::ServiceWorkerRegistrationData> &&)> &&)>(a2, a3, this);
      goto LABEL_45;
    case 0xC24:
      IPC::handleMessage<Messages::WebSWServerConnection::PostMessageToServiceWorker,IPC::Connection,WebKit::WebSWServerConnection,WebKit::WebSWServerConnection,void ()(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::MessageWithMessagePorts &&,mpark::variant<WebCore::ProcessQualified<WTF::UUID>,WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>> const&)>(a3, this);
      goto LABEL_45;
    case 0xC25:
      IPC::ArgumentCoder<WebCore::ClientOrigin,void>::decode(a3, &v65);
      if ((v71 & 1) == 0)
      {
        IPC::Decoder::markInvalid(a3);
        if ((v71 & 1) == 0)
        {
          buf[0] = 0;
          v64 = 0;
          goto LABEL_30;
        }
      }

      IPC::ArgumentCoder<WebCore::ServiceWorkerClientData,void>::decode(a3, v72);
      if ((v85 & 1) == 0)
      {
        IPC::Decoder::markInvalid(a3);
        if ((v85 & 1) == 0)
        {
          buf[0] = 0;
          v64 = 0;
          goto LABEL_23;
        }
      }

      IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(a3, &v41);
      if (v42 & 1) != 0 || (IPC::Decoder::markInvalid(a3), (v42))
      {
        IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, &v43);
        if ((v44 & 1) == 0)
        {
          IPC::Decoder::markInvalid(a3);
          if ((v44 & 1) == 0)
          {
            v13 = 0;
            buf[0] = 0;
            goto LABEL_19;
          }
        }

        if ((v71 & 1) == 0 || (v85 & 1) == 0 || (v42 & 1) == 0)
        {
          __break(1u);
          goto LABEL_79;
        }

        buf[0] = 0;
        v46 = -1;
        if (v67)
        {
          if (v67 == 255)
          {
LABEL_15:
            LOBYTE(v47[0]) = 0;
            v49 = -1;
            if (v70)
            {
              if (v70 == 255)
              {
                goto LABEL_18;
              }

              *v47 = v68;
            }

            else
            {
              v9 = v68;
              v68 = 0uLL;
              *v47 = v9;
              v48 = v69;
            }

            v49 = v70;
LABEL_18:
            v50[0] = v72[0];
            v50[1] = v72[1];
            v51 = v73;
            v10 = v75;
            LODWORD(v75) = v75 & 0xFFFFFFFE;
            v11 = v74;
            v12 = v77;
            v74 = 0;
            v53 = v10;
            v54 = v76;
            v77 = 0;
            v52 = v11;
            v55 = v12;
            v56 = v78;
            v57 = v79;
            LODWORD(v78) = v78 & 0xFFFFFFFE;
            v60 = v82;
            v59 = v81;
            v58 = v80;
            v61[0] = v83;
            *&v10 = v84;
            v83 = 0;
            v84 = 0;
            v61[1] = v10;
            v62 = v41;
            v13 = 1;
            v63 = v43;
LABEL_19:
            v64 = v13;
            goto LABEL_20;
          }

          *buf = v65;
        }

        else
        {
          v8 = v65;
          v65 = 0uLL;
          *buf = v8;
          *&buf[16] = v66;
        }

        v46 = v67;
        goto LABEL_15;
      }

      buf[0] = 0;
      v64 = 0;
LABEL_20:
      if (v85)
      {
        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v83, a2);
        v14 = v77;
        v77 = 0;
        if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v14, a2);
        }

        v15 = v74;
        v74 = 0;
        if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v15, a2);
        }
      }

LABEL_23:
      if (v71)
      {
        if (!v70)
        {
          v16 = *(&v68 + 1);
          *(&v68 + 1) = 0;
          if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v16, a2);
          }

          v17 = v68;
          *&v68 = 0;
          if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v17, a2);
          }
        }

        v70 = -1;
        if (!v67)
        {
          v18 = *(&v65 + 1);
          *(&v65 + 1) = 0;
          if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v18, a2);
          }

          v19 = v65;
          *&v65 = 0;
          if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v19, a2);
          }
        }
      }

LABEL_30:
      if (v64 & 1) != 0 || (IPC::Decoder::markInvalid(a3), (v64))
      {
        WebKit::WebSWServerConnection::registerServiceWorkerClient(this, buf, v50, &v62, &v63);
        if (v64)
        {
          v21 = v63;
          v63 = 0;
          if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v21, v20);
          }

          WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v61, v20);
          v23 = v55;
          v55 = 0;
          if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v23, v22);
          }

          v24 = v52;
          v52 = 0;
          if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v24, v22);
          }

          if (!v49)
          {
            v25 = v47[1];
            v47[1] = 0;
            if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v25, v22);
            }

            v26 = v47[0];
            v47[0] = 0;
            if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v26, v22);
            }
          }

          v49 = -1;
          if (!v46)
          {
            v27 = *&buf[8];
            *&buf[8] = 0;
            if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v27, v22);
            }

            v28 = *buf;
            *buf = 0;
            if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v28, v22);
            }
          }
        }
      }

LABEL_45:
      if (*(this + 4) == 1)
      {
        (*(*this + 8))(this);
      }

      else
      {
        --*(this + 4);
      }

      return;
    case 0xC26:
      if ((v3 & 0x200000) == 0)
      {
        v7 = 1;
      }

      if (v7 == 1)
      {
        v32 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_113;
        }

        *buf = 136315138;
        *&buf[4] = "WebSWServerConnection_RemoveCookieChangeSubscriptions";
        v33 = "Message %s received by a disabled message endpoint";
        goto LABEL_147;
      }

      IPC::handleMessageAsync<Messages::WebSWServerConnection::RemoveCookieChangeSubscriptions,IPC::Connection,WebKit::WebSWServerConnection,WebKit::WebSWServerConnection,void ()(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WebCore::CookieChangeSubscription,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(std::optional<WebCore::ExceptionData> &&)> &&)>(a2, a3, this);
      goto LABEL_45;
    case 0xC27:
      IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
      if (v31)
      {
        WebCore::SWServer::Connection::removeServiceWorkerRegistrationInServer();
      }

      goto LABEL_45;
    case 0xC28:
      if ((v3 & 0x4000000) == 0)
      {
        v7 = 1;
      }

      if (v7 == 1)
      {
        v32 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_113;
        }

        *buf = 136315138;
        *&buf[4] = "WebSWServerConnection_RetrieveRecordResponse";
        v33 = "Message %s received by a disabled message endpoint";
        goto LABEL_147;
      }

      IPC::handleMessageAsync<Messages::WebSWServerConnection::RetrieveRecordResponse,IPC::Connection,WebKit::WebSWServerConnection,WebCore::SWServer::Connection,void ()(WTF::ObjectIdentifierGeneric<WebCore::BackgroundFetchRecordIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebCore::ResourceResponse,WebCore::ExceptionData> &&)> &&)>(a2, a3);
      goto LABEL_45;
    case 0xC29:
      if ((v3 & 0x4000000) == 0)
      {
        v7 = 1;
      }

      if (v7 == 1)
      {
        v32 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_113;
        }

        *buf = 136315138;
        *&buf[4] = "WebSWServerConnection_RetrieveRecordResponseBody";
        v33 = "Message %s received by a disabled message endpoint";
        goto LABEL_147;
      }

      IPC::handleMessage<Messages::WebSWServerConnection::RetrieveRecordResponseBody,IPC::Connection,WebKit::WebSWServerConnection,WebKit::WebSWServerConnection,void ()(WTF::ObjectIdentifierGeneric<WebCore::BackgroundFetchRecordIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::RetrieveRecordResponseBodyCallbackIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>)>(a3, this);
      goto LABEL_45;
    case 0xC2A:
      IPC::handleMessage<Messages::WebSWServerConnection::ScheduleJobInServer,IPC::Connection,WebKit::WebSWServerConnection,WebKit::WebSWServerConnection,void ()(WebCore::ServiceWorkerJobData &&)>(a3, this);
      goto LABEL_45;
    case 0xC2B:
      IPC::handleMessageAsync<Messages::WebSWServerConnection::ScheduleUnregisterJobInServer,IPC::Connection,WebKit::WebSWServerConnection,WebKit::WebSWServerConnection,void ()(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerJobIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebCore::ProcessQualified<WTF::UUID>,WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<BOOL,WebCore::ExceptionData> &&)> &&)>(a2, a3, this);
      goto LABEL_45;
    case 0xC2C:
      if ((v3 & 0x400000000000000) == 0)
      {
        v7 = 1;
      }

      if (v7 == 1)
      {
        v32 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_113;
        }

        *buf = 136315138;
        *&buf[4] = "WebSWServerConnection_SetNavigationPreloadHeaderValue";
        v33 = "Message %s received by a disabled message endpoint";
        goto LABEL_147;
      }

      IPC::handleMessageAsync<Messages::WebSWServerConnection::SetNavigationPreloadHeaderValue,IPC::Connection,WebKit::WebSWServerConnection,WebKit::WebSWServerConnection,void ()(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String &&,WTF::CompletionHandler<void ()(std::optional<WebCore::ExceptionData> &&)> &&)>(a2, a3, this);
      goto LABEL_45;
    case 0xC2D:
      v29 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
      if ((v29 & 0x100) != 0)
      {
        WebKit::WebSWServerConnection::setThrottleState(this, v29 & 1);
      }

      goto LABEL_45;
    case 0xC2E:
      if ((v3 & 0x4000000) == 0)
      {
        v7 = 1;
      }

      if (v7 == 1)
      {
        v32 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_113;
        }

        *buf = 136315138;
        *&buf[4] = "WebSWServerConnection_StartBackgroundFetch";
        v33 = "Message %s received by a disabled message endpoint";
LABEL_147:
        v34 = v32;
        v35 = 12;
        goto LABEL_148;
      }

      IPC::handleMessageAsync<Messages::WebSWServerConnection::StartBackgroundFetch,IPC::Connection,WebKit::WebSWServerConnection,WebCore::SWServer::Connection,void ()(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&,WTF::Vector<WebCore::BackgroundFetchRequest,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WebCore::BackgroundFetchOptions &&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<std::optional<WebCore::BackgroundFetchInformation>,WebCore::ExceptionData> &&)> &&)>(a2, a3);
      goto LABEL_45;
    case 0xC2F:
      IPC::handleMessageAsync<Messages::WebSWServerConnection::StoreRegistrationsOnDisk,IPC::Connection,WebKit::WebSWServerConnection,WebCore::SWServer::Connection,void ()(WTF::CompletionHandler<void ()(void)> &&)>(a2, a3);
      goto LABEL_45;
    case 0xC30:
      IPC::handleMessageAsync<Messages::WebSWServerConnection::SubscribeToPushService,IPC::Connection,WebKit::WebSWServerConnection,WebKit::WebSWServerConnection,void ()(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebCore::PushSubscriptionData,WebCore::ExceptionData> &&)> &&)>(a2, a3, this);
      goto LABEL_45;
    case 0xC31:
      IPC::handleMessageAsync<Messages::WebSWServerConnection::TerminateWorkerFromClient,IPC::Connection,WebKit::WebSWServerConnection,WebKit::WebSWServerConnection,void ()(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
      goto LABEL_45;
    case 0xC32:
      IPC::ArgumentCoder<std::tuple<WebCore::ProcessQualified<WTF::UUID>>,void>::decode<IPC::Decoder>(a3, buf);
      if (v47[0] & 1) != 0 || (IPC::Decoder::markInvalid(a3), (v47[0]))
      {
        WebKit::WebSWServerConnection::unregisterServiceWorkerClient(this, buf);
      }

      goto LABEL_45;
    case 0xC33:
      IPC::handleMessageAsync<Messages::WebSWServerConnection::UnsubscribeFromPushService,IPC::Connection,WebKit::WebSWServerConnection,WebKit::WebSWServerConnection,void ()(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PushSubscriptionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<BOOL,WebCore::ExceptionData> &&)> &&)>(a2, a3, this);
      goto LABEL_45;
    case 0xC34:
      IPC::handleMessageAsync<Messages::WebSWServerConnection::WhenRegistrationReady,IPC::Connection,WebKit::WebSWServerConnection,WebKit::WebSWServerConnection,void ()(WebCore::SecurityOriginData const&,WTF::URL const&,WTF::CompletionHandler<void ()(std::optional<WebCore::ServiceWorkerRegistrationData> &&)> &&)>(a2, a3, this);
      goto LABEL_45;
    case 0xC35:
      IPC::handleMessageAsync<Messages::WebSWServerConnection::WhenServiceWorkerIsTerminatedForTesting,IPC::Connection,WebKit::WebSWServerConnection,WebKit::WebSWServerConnection,void ()(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
      goto LABEL_45;
    default:
      v40 = *(a3 + 25);
      v36 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        if (v40 >= 0x107F)
        {
          v37 = 4223;
        }

        else
        {
          v37 = v40;
        }

        v38 = (&IPC::Detail::messageDescriptions)[3 * v37];
        v39 = *(a3 + 7);
        *buf = 136315394;
        *&buf[4] = v38;
        *&buf[12] = 2048;
        *&buf[14] = v39;
        v33 = "Unhandled message %s to %llu";
        v34 = v36;
        v35 = 22;
LABEL_148:
        _os_log_error_impl(&dword_19D52D000, v34, OS_LOG_TYPE_ERROR, v33, buf, v35);
      }

LABEL_113:
      IPC::Decoder::markInvalid(a3);
      goto LABEL_45;
  }
}

void IPC::handleMessage<Messages::WebSWServerConnection::ScheduleJobInServer,IPC::Connection,WebKit::WebSWServerConnection,WebKit::WebSWServerConnection,void ()(WebCore::ServiceWorkerJobData &&)>(IPC::Decoder *a1, WebKit::WebSWServerConnection *a2)
{
  v65 = *MEMORY[0x1E69E9840];
  IPC::ArgumentCoder<WebCore::ServiceWorkerJobData,void>::decode(a1, &v42);
  v5 = v64;
  if ((v64 & 1) == 0)
  {
    v12 = *a1;
    v13 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v14 = *(a1 + 3);
    v15 = !v14 || v13 == 0;
    if (v15 || ((*(*v14 + 16))(v14, v12), v5 = v64, (v64 & 1) == 0))
    {
      v16 = *a1;
      v17 = *(a1 + 1);
      *a1 = 0;
      *(a1 + 1) = 0;
      v18 = *(a1 + 3);
      if (v18 && v17)
      {
        (*(*v18 + 16))(v18, v16);
      }

      return;
    }
  }

  v6 = v45;
  v19 = v42;
  v20 = v43;
  LODWORD(v43) = v43 & 0xFFFFFFFE;
  v42 = 0;
  v21 = v44;
  v45 = 0;
  v22 = v6;
  v23 = v46;
  v24 = v47;
  LODWORD(v46) = v46 & 0xFFFFFFFE;
  LOBYTE(v25) = 0;
  v27 = -1;
  if (v50)
  {
    if (v50 == 255)
    {
      goto LABEL_5;
    }

    v25 = v48;
  }

  else
  {
    v7 = v48;
    v48 = 0uLL;
    v25 = v7;
    v26 = v49;
  }

  v27 = v50;
LABEL_5:
  v8 = v51;
  v51 = 0;
  v28 = v8;
  v29 = v52;
  v30 = v53;
  LODWORD(v52) = v52 & 0xFFFFFFFE;
  v31 = v54;
  v32 = v55;
  v33 = v56;
  v34 = v57;
  v9 = v58;
  v58 = 0;
  v35 = v9;
  v36 = v59;
  LOBYTE(v37) = 0;
  v39 = 0;
  if (v62 == 1)
  {
    v10 = v60;
    v60 = 0;
    v37 = v10;
    v38 = v61;
    v39 = 1;
  }

  v40 = v63;
  v41 = 1;
  if (v5)
  {
    WebCore::ServiceWorkerJobData::~ServiceWorkerJobData(&v42, v4);
  }

  WebKit::WebSWServerConnection::scheduleJobInServer(a2, &v19);
  if (v41)
  {
    WebCore::ServiceWorkerJobData::~ServiceWorkerJobData(&v19, v11);
  }
}

uint64_t IPC::handleMessageAsync<Messages::WebSWServerConnection::ScheduleUnregisterJobInServer,IPC::Connection,WebKit::WebSWServerConnection,WebKit::WebSWServerConnection,void ()(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerJobIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebCore::ProcessQualified<WTF::UUID>,WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<BOOL,WebCore::ExceptionData> &&)> &&)>(atomic_ullong *a1, uint64_t *a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if (v7 & 1) != 0 && (v8 = v6, v9 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a2), (v10) && (v11 = v9, IPC::Decoder::decode<mpark::variant<WebCore::ProcessQualified<WTF::UUID>,WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(&v25, a2), (v28))
  {
    v22 = v25;
    v23 = v26;
    v24 = v27;
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v13)
    {
      v14 = result;
      while (1)
      {
        v15 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v16 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v16, v15 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v16 == v15)
        {
          goto LABEL_16;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_16:
      v20 = WTF::fastMalloc(0x18);
      *v20 = &unk_1F10F81E0;
      v20[1] = v14;
      v20[2] = a1;
      v21 = v20;
      v25 = v22;
      v26 = v23;
      v27 = v24;
      WebKit::WebSWServerConnection::scheduleUnregisterJobInServer(a3, v8, v11, &v25, &v21);
      result = v21;
      v21 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  else
  {
    v17 = *a2;
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
      return (*(*result + 16))(result, v17);
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessage<Messages::WebSWServerConnection::FinishFetchingScriptInServer,IPC::Connection,WebKit::WebSWServerConnection,WebCore::SWServer::Connection,void ()(WebCore::ServiceWorkerJobDataIdentifier const&,WebCore::ServiceWorkerRegistrationKey const&,WebCore::WorkerFetchResult &&)>(IPC::Decoder *a1)
{
  v73 = *MEMORY[0x1E69E9840];
  IPC::Decoder::decode<WebCore::ServiceWorkerJobDataIdentifier>(a1, &v22);
  if ((v23 & 1) == 0)
  {
    LOBYTE(v43) = 0;
    v65 = 0;
    goto LABEL_39;
  }

  IPC::Decoder::decode<WebCore::ServiceWorkerRegistrationKey>(a1, &v66);
  if (v72 != 1)
  {
    LOBYTE(v43) = 0;
    v65 = 0;
    goto LABEL_23;
  }

  IPC::ArgumentCoder<WebCore::WorkerFetchResult,void>::decode(a1, &v24);
  if ((v42 & 1) == 0)
  {
    goto LABEL_44;
  }

  while ((v23 & 1) == 0 || (v72 & 1) == 0)
  {
    __break(1u);
LABEL_44:
    v2 = *a1;
    v20 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v21 = *(a1 + 3);
    if (v21)
    {
      if (v20)
      {
        (*(*v21 + 16))(v21, v2);
        if (v42)
        {
          continue;
        }
      }
    }

    LOBYTE(v43) = 0;
    v65 = 0;
    goto LABEL_11;
  }

  v43 = v22;
  LOBYTE(v44) = 0;
  v46 = -1;
  if (v68)
  {
    if (v68 == 255)
    {
      goto LABEL_9;
    }

    v44 = v66;
  }

  else
  {
    v3 = v66;
    v66 = 0uLL;
    v44 = v3;
    v45 = v67;
  }

  v46 = v68;
LABEL_9:
  v4 = v69;
  v69 = 0;
  v47 = v4;
  v48 = v70;
  v49 = v71;
  LODWORD(v70) = v70 & 0xFFFFFFFE;
  v50[0] = v24;
  v5 = v27;
  v50[2] = v26;
  v24 = 0u;
  v50[1] = v25;
  LODWORD(v25) = v25 & 0xFFFFFFFE;
  v27 = 0u;
  v50[3] = v5;
  v6 = v28;
  v28 = 0;
  v51 = v6;
  v53 = v30;
  v52 = v29;
  v54 = v31;
  v7 = v32;
  v32 = 0u;
  v8 = v33;
  v33 = 0u;
  v55 = v7;
  v56 = v8;
  v9 = v34;
  v34 = 0;
  v58 = v35;
  v59 = v36;
  LODWORD(v35) = v35 & 0xFFFFFFFE;
  v57 = v9;
  v60 = v37;
  v62 = v39;
  v61 = v38;
  v10 = v40;
  v37 = 0;
  v40 = 0;
  v63 = v10;
  v64 = v41;
  v65 = 1;
  if (v42)
  {
    WebCore::WorkerFetchResult::~WorkerFetchResult(&v24, v2);
  }

LABEL_11:
  if (v72)
  {
    v11 = v69;
    v69 = 0;
    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v2);
    }

    if (!v68)
    {
      v12 = *(&v66 + 1);
      *(&v66 + 1) = 0;
      if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v12, v2);
      }

      v13 = v66;
      *&v66 = 0;
      if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v2);
      }
    }
  }

LABEL_23:
  if ((v65 & 1) == 0)
  {
LABEL_39:
    v18 = *a1;
    v19 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (!result)
    {
      return result;
    }

    if (!v19)
    {
      return result;
    }

    result = (*(*result + 16))(result, v18);
    if ((v65 & 1) == 0)
    {
      return result;
    }
  }

  result = WebCore::SWServer::Connection::finishFetchingScriptInServer();
  if (v65)
  {
    WebCore::WorkerFetchResult::~WorkerFetchResult(v50, v15);
    result = v47;
    v47 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v16);
    }

    if (!v46)
    {
      v17 = *(&v44 + 1);
      *(&v44 + 1) = 0;
      if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v17, v16);
      }

      result = v44;
      *&v44 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v16);
        }
      }
    }
  }

  return result;
}

atomic_uint *IPC::handleMessage<Messages::WebSWServerConnection::PostMessageToServiceWorker,IPC::Connection,WebKit::WebSWServerConnection,WebKit::WebSWServerConnection,void ()(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::MessageWithMessagePorts &&,mpark::variant<WebCore::ProcessQualified<WTF::UUID>,WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>> const&)>(uint64_t *a1, _DWORD *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if ((v5 & 1) == 0)
  {
    goto LABEL_18;
  }

  v6 = v4;
  IPC::Decoder::decode<WebCore::MessageWithMessagePorts>(a1, v18);
  if (v20 != 1)
  {
    goto LABEL_18;
  }

  IPC::Decoder::decode<mpark::variant<WebCore::ProcessQualified<WTF::UUID>,WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(v26, a1);
  v8 = v27;
  if (v27 == 1)
  {
    if ((v20 & 1) == 0)
    {
      __break(1u);
    }

    v21 = v6;
    v9 = *v18;
    v18[0] = 0;
    v18[1] = 0;
    *v22 = v9;
    *&v9 = v19;
    v19 = 0;
    v23 = v9;
    v24[0] = v26[0];
    v24[1] = v26[1];
    v24[2] = v26[2];
    v25 = 1;
  }

  else
  {
    LOBYTE(v21) = 0;
    v25 = 0;
    if ((v20 & 1) == 0)
    {
      goto LABEL_18;
    }

    v10 = v18[1];
    if (v18[1])
    {
      v18[1] = 0;
      LODWORD(v19) = 0;
      WTF::fastFree(v10, v7);
    }
  }

  v11 = v18[0];
  v18[0] = 0;
  if (v11)
  {
    WTF::ThreadSafeRefCounted<WebCore::SerializedScriptValue,(WTF::DestructionThread)0>::deref(v11);
    if (v8)
    {
LABEL_11:
      result = WebKit::WebSWServerConnection::postMessageToServiceWorker(a2, v21, v22, v24);
      if (v25)
      {
        v14 = v22[1];
        if (v22[1])
        {
          v22[1] = 0;
          LODWORD(v23) = 0;
          WTF::fastFree(v14, v13);
        }

        result = v22[0];
        v22[0] = 0;
        if (result)
        {
          return WTF::ThreadSafeRefCounted<WebCore::SerializedScriptValue,(WTF::DestructionThread)0>::deref(result);
        }
      }

      return result;
    }
  }

  else if (v8)
  {
    goto LABEL_11;
  }

LABEL_18:
  v15 = *a1;
  v16 = a1[1];
  *a1 = 0;
  a1[1] = 0;
  result = a1[3];
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
    return (*(*result + 16))(result, v15);
  }

  return result;
}

WTF::StringImpl *IPC::handleMessage<Messages::WebSWServerConnection::DidResolveRegistrationPromise,IPC::Connection,WebKit::WebSWServerConnection,WebCore::SWServer::Connection,void ()(WebCore::ServiceWorkerRegistrationKey const&)>(IPC::Decoder *a1, WebCore::SWServer::Connection *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  IPC::Decoder::decode<WebCore::ServiceWorkerRegistrationKey>(a1, v21);
  LOBYTE(v14[0]) = 0;
  if (v27 == 1)
  {
    v16 = -1;
    if (v23)
    {
      if (v23 == 255)
      {
        goto LABEL_5;
      }

      *v14 = *v21;
    }

    else
    {
      v5 = *v21;
      v21[0] = 0;
      v21[1] = 0;
      *v14 = v5;
      v15 = v22;
    }

    v16 = v23;
LABEL_5:
    v17 = v24;
    v18 = v25;
    v19 = v26;
    LODWORD(v25) = v25 & 0xFFFFFFFE;
    v20 = 1;
    v24 = 0;
    if (!v23)
    {
      v6 = v21[1];
      v21[1] = 0;
      if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, v4);
      }

      v7 = v21[0];
      v21[0] = 0;
      if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, v4);
      }
    }

    result = WebCore::SWServer::Connection::didResolveRegistrationPromise(a2, v14);
    if (v20)
    {
      result = v17;
      v17 = 0;
      if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v9);
      }

      if (!v16)
      {
        v10 = v14[1];
        v14[1] = 0;
        if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v10, v9);
        }

        result = v14[0];
        v14[0] = 0;
        if (result)
        {
          if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            return WTF::StringImpl::destroy(result, v9);
          }
        }
      }
    }

    return result;
  }

  v11 = *a1;
  v12 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  result = *(a1 + 3);
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
    return (*(*result + 16))(result, v11);
  }

  return result;
}

void IPC::handleMessageAsync<Messages::WebSWServerConnection::MatchRegistration,IPC::Connection,WebKit::WebSWServerConnection,WebKit::WebSWServerConnection,void ()(WebCore::SecurityOriginData const&,WTF::URL const&,WTF::CompletionHandler<void ()(std::optional<WebCore::ServiceWorkerRegistrationData> &&)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, WebKit::WebSWServerConnection *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  IPC::Decoder::decode<std::tuple<WebCore::SecurityOriginData,WTF::URL>>(&v17, a2);
  if (v21 == 1)
  {
    v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v6)
    {
      v8 = v7;
      while (1)
      {
        v9 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v10 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v10 == v9)
        {
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      v11 = WTF::fastMalloc(0x18);
      *v11 = &unk_1F10F8208;
      v11[1] = v8;
      v11[2] = a1;
      v16 = v11;
      if ((v21 & 1) == 0)
      {
        __break(1u);
      }

      WebKit::WebSWServerConnection::matchRegistration(a3, &v17, &v20, &v16);
      v12 = v16;
      v16 = 0;
      if (v12)
      {
        (*(*v12 + 8))(v12);
      }
    }
  }

  if (v21 == 1)
  {
    v13 = v20;
    v20 = 0;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v6);
    }

    if (!v19)
    {
      v14 = v18;
      v18 = 0;
      if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v6);
      }

      v15 = v17;
      v17 = 0;
      if (v15)
      {
        if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v15, v6);
        }
      }
    }
  }
}

void IPC::handleMessageAsync<Messages::WebSWServerConnection::WhenRegistrationReady,IPC::Connection,WebKit::WebSWServerConnection,WebKit::WebSWServerConnection,void ()(WebCore::SecurityOriginData const&,WTF::URL const&,WTF::CompletionHandler<void ()(std::optional<WebCore::ServiceWorkerRegistrationData> &&)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, WebKit::WebSWServerConnection *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  IPC::Decoder::decode<std::tuple<WebCore::SecurityOriginData,WTF::URL>>(&v17, a2);
  if (v21 == 1)
  {
    v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v6)
    {
      v8 = v7;
      while (1)
      {
        v9 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v10 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v10 == v9)
        {
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      v11 = WTF::fastMalloc(0x18);
      *v11 = &unk_1F10F8230;
      v11[1] = v8;
      v11[2] = a1;
      v16 = v11;
      if ((v21 & 1) == 0)
      {
        __break(1u);
      }

      WebKit::WebSWServerConnection::whenRegistrationReady(a3, &v17, &v20, &v16);
      v12 = v16;
      v16 = 0;
      if (v12)
      {
        (*(*v12 + 8))(v12);
      }
    }
  }

  if (v21 == 1)
  {
    v13 = v20;
    v20 = 0;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v6);
    }

    if (!v19)
    {
      v14 = v18;
      v18 = 0;
      if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v6);
      }

      v15 = v17;
      v17 = 0;
      if (v15)
      {
        if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v15, v6);
        }
      }
    }
  }
}

void IPC::handleMessageAsync<Messages::WebSWServerConnection::GetRegistrations,IPC::Connection,WebKit::WebSWServerConnection,WebKit::WebSWServerConnection,void ()(WebCore::SecurityOriginData const&,WTF::URL const&,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ServiceWorkerRegistrationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, WebKit::WebSWServerConnection *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  IPC::Decoder::decode<std::tuple<WebCore::SecurityOriginData,WTF::URL>>(&v17, a2);
  if (v21 == 1)
  {
    v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v6)
    {
      v8 = v7;
      while (1)
      {
        v9 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v10 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v10 == v9)
        {
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      v11 = WTF::fastMalloc(0x18);
      *v11 = &unk_1F10F8258;
      v11[1] = v8;
      v11[2] = a1;
      v16 = v11;
      if ((v21 & 1) == 0)
      {
        __break(1u);
      }

      WebKit::WebSWServerConnection::getRegistrations(a3, &v17, &v20, &v16);
      v12 = v16;
      v16 = 0;
      if (v12)
      {
        (*(*v12 + 8))(v12);
      }
    }
  }

  if (v21 == 1)
  {
    v13 = v20;
    v20 = 0;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v6);
    }

    if (!v19)
    {
      v14 = v18;
      v18 = 0;
      if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v6);
      }

      v15 = v17;
      v17 = 0;
      if (v15)
      {
        if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v15, v6);
        }
      }
    }
  }
}

uint64_t IPC::handleMessageAsync<Messages::WebSWServerConnection::TerminateWorkerFromClient,IPC::Connection,WebKit::WebSWServerConnection,WebKit::WebSWServerConnection,void ()(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, uint64_t *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a2);
  if (v7)
  {
    v8 = result;
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v9)
    {
      v10 = result;
      while (1)
      {
        v11 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v12 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v12 == v11)
        {
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      v13 = WTF::fastMalloc(0x18);
      *v13 = &unk_1F10F8280;
      v13[1] = v10;
      v13[2] = a1;
      v14 = v13;
      WebKit::WebSWServerConnection::terminateWorkerFromClient(a3, v8, &v14);
      result = v14;
      v14 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebSWServerConnection::WhenServiceWorkerIsTerminatedForTesting,IPC::Connection,WebKit::WebSWServerConnection,WebKit::WebSWServerConnection,void ()(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, uint64_t *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a2);
  if (v7)
  {
    v8 = result;
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v9)
    {
      v10 = result;
      while (1)
      {
        v11 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v12 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v12 == v11)
        {
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      v13 = WTF::fastMalloc(0x18);
      *v13 = &unk_1F10F82A8;
      v13[1] = v10;
      v13[2] = a1;
      v14 = v13;
      WebKit::WebSWServerConnection::whenServiceWorkerIsTerminatedForTesting(a3, v8, &v14);
      result = v14;
      v14 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebSWServerConnection::StoreRegistrationsOnDisk,IPC::Connection,WebKit::WebSWServerConnection,WebCore::SWServer::Connection,void ()(WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2)
{
  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if (v4)
  {
    v5 = result;
    while (1)
    {
      v6 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v7 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v7, v6 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v7 == v6)
      {
        goto LABEL_7;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_7:
    v8 = WTF::fastMalloc(0x18);
    *v8 = &unk_1F10F82D0;
    v8[1] = v5;
    v8[2] = a1;
    v9 = v8;
    WebCore::SWServer::Connection::storeRegistrationsOnDisk();
    result = v9;
    if (v9)
    {
      return (*(*v9 + 8))(v9);
    }
  }

  return result;
}

WTF *IPC::handleMessageAsync<Messages::WebSWServerConnection::SubscribeToPushService,IPC::Connection,WebKit::WebSWServerConnection,WebKit::WebSWServerConnection,void ()(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebCore::PushSubscriptionData,WebCore::ExceptionData> &&)> &&)>(atomic_ullong *a1, uint64_t *a2, uint64_t a3)
{
  v6 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if (v7 & 1) != 0 && ((v8 = v6, IPC::VectorArgumentCoder<true,unsigned char,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a2, v25), (v26) || (v16 = *a2, v17 = a2[1], *a2 = 0, a2[1] = 0, (v18 = a2[3]) != 0) && v17 && ((*(*v18 + 16))(v18, v16), (v26)))
  {
    v22 = v25[0];
    v23 = v25[1];
    v24 = 1;
    v9 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if ((v10 & 1) == 0)
    {
      goto LABEL_12;
    }

    v11 = v9;
    while (1)
    {
      v12 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v13 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v13, v12 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v13 == v12)
      {
        goto LABEL_9;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_9:
    v14 = WTF::fastMalloc(0x18);
    *v14 = &unk_1F10F82F8;
    *(v14 + 1) = v11;
    *(v14 + 2) = a1;
    v25[0] = v14;
    WebKit::WebSWServerConnection::subscribeToPushService(a3, v8, &v22, v25);
    result = v25[0];
    v25[0] = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    if (v24)
    {
LABEL_12:
      result = v22;
      if (v22)
      {
        v22 = 0;
        LODWORD(v23) = 0;
        return WTF::fastFree(result, v10);
      }
    }
  }

  else
  {
    v19 = *a2;
    v20 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    result = a2[3];
    if (result)
    {
      v21 = v20 == 0;
    }

    else
    {
      v21 = 1;
    }

    if (!v21)
    {
      return (*(*result + 16))(result, v19);
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebSWServerConnection::UnsubscribeFromPushService,IPC::Connection,WebKit::WebSWServerConnection,WebKit::WebSWServerConnection,void ()(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PushSubscriptionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<BOOL,WebCore::ExceptionData> &&)> &&)>(atomic_ullong *a1, uint64_t *a2, WebKit::WebSWServerConnection *a3)
{
  v6 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if (v7 & 1) != 0 && (v8 = v6, v9 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a2), (v10))
  {
    v11 = v9;
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v13)
    {
      v14 = result;
      while (1)
      {
        v15 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v16 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v16, v15 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v16 == v15)
        {
          goto LABEL_15;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_15:
      v19 = WTF::fastMalloc(0x18);
      *v19 = &unk_1F10F8320;
      v19[1] = v14;
      v19[2] = a1;
      v21 = v19;
      WebKit::WebSWServerConnection::unsubscribeFromPushService(a3, v8, v11, &v21);
      result = v21;
      v21 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  else
  {
    v17 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    result = a2[3];
    if (result)
    {
      v18 = v17 == 0;
    }

    else
    {
      v18 = 1;
    }

    if (!v18)
    {
      v20 = *(*result + 16);

      return v20();
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebSWServerConnection::GetPushSubscription,IPC::Connection,WebKit::WebSWServerConnection,WebKit::WebSWServerConnection,void ()(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<std::optional<WebCore::PushSubscriptionData>,WebCore::ExceptionData> &&)> &&)>(atomic_ullong *a1, uint64_t *a2, WebKit::WebSWServerConnection *a3)
{
  result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a2);
  if (v7)
  {
    v8 = result;
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v9)
    {
      v10 = result;
      while (1)
      {
        v11 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v12 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v12 == v11)
        {
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      v13 = WTF::fastMalloc(0x18);
      *v13 = &unk_1F10F8348;
      v13[1] = v10;
      v13[2] = a1;
      v14 = v13;
      WebKit::WebSWServerConnection::getPushSubscription(a3, v8, &v14);
      result = v14;
      v14 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebSWServerConnection::GetPushPermissionState,IPC::Connection,WebKit::WebSWServerConnection,WebKit::WebSWServerConnection,void ()(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<unsigned char,WebCore::ExceptionData> &&)> &&)>(atomic_ullong *a1, uint64_t *a2, WebKit::WebSWServerConnection *a3)
{
  result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a2);
  if (v7)
  {
    v8 = result;
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v9)
    {
      v10 = result;
      while (1)
      {
        v11 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v12 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v12 == v11)
        {
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      v13 = WTF::fastMalloc(0x18);
      *v13 = &unk_1F10F8370;
      v13[1] = v10;
      v13[2] = a1;
      v14 = v13;
      WebKit::WebSWServerConnection::getPushPermissionState(a3, v8, &v14);
      result = v14;
      v14 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebSWServerConnection::EnableNavigationPreload,IPC::Connection,WebKit::WebSWServerConnection,WebKit::WebSWServerConnection,void ()(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(std::optional<WebCore::ExceptionData> &&)> &&)>(atomic_ullong *a1, uint64_t *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a2);
  if (v7)
  {
    v8 = result;
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v9)
    {
      v10 = result;
      while (1)
      {
        v11 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v12 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v12 == v11)
        {
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      v13 = WTF::fastMalloc(0x18);
      *v13 = &unk_1F10F8398;
      v13[1] = v10;
      v13[2] = a1;
      v14 = v13;
      WebKit::WebSWServerConnection::enableNavigationPreload(a3, v8, &v14);
      result = v14;
      v14 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebSWServerConnection::DisableNavigationPreload,IPC::Connection,WebKit::WebSWServerConnection,WebKit::WebSWServerConnection,void ()(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(std::optional<WebCore::ExceptionData> &&)> &&)>(atomic_ullong *a1, uint64_t *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a2);
  if (v7)
  {
    v8 = result;
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v9)
    {
      v10 = result;
      while (1)
      {
        v11 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v12 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v12 == v11)
        {
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      v13 = WTF::fastMalloc(0x18);
      *v13 = &unk_1F10F83C0;
      v13[1] = v10;
      v13[2] = a1;
      v14 = v13;
      WebKit::WebSWServerConnection::disableNavigationPreload(a3, v8, &v14);
      result = v14;
      v14 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::WebSWServerConnection::SetNavigationPreloadHeaderValue,IPC::Connection,WebKit::WebSWServerConnection,WebKit::WebSWServerConnection,void ()(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String &&,WTF::CompletionHandler<void ()(std::optional<WebCore::ExceptionData> &&)> &&)>(atomic_ullong *a1, uint64_t *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::MediaKeySystemRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String>>(&v14, a2);
  if (v16 == 1)
  {
    v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if ((v8 & 1) == 0)
    {
      goto LABEL_11;
    }

    v9 = v7;
    while (1)
    {
      v10 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v11 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v11, v10 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v11 == v10)
      {
        goto LABEL_8;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
    v12 = WTF::fastMalloc(0x18);
    *v12 = &unk_1F10F83E8;
    *(v12 + 1) = v9;
    *(v12 + 2) = a1;
    v13 = v12;
    WebKit::WebSWServerConnection::setNavigationPreloadHeaderValue(a3, v14, &v15, &v13);
    result = v13;
    v13 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    if (v16)
    {
LABEL_11:
      result = v15;
      v15 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v8);
        }
      }
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebSWServerConnection::GetNavigationPreloadState,IPC::Connection,WebKit::WebSWServerConnection,WebKit::WebSWServerConnection,void ()(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebCore::NavigationPreloadState,WebCore::ExceptionData> &&)> &&)>(atomic_ullong *a1, uint64_t *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a2);
  if (v7)
  {
    v8 = result;
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v9)
    {
      v10 = result;
      while (1)
      {
        v11 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v12 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v12 == v11)
        {
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      v13 = WTF::fastMalloc(0x18);
      *v13 = &unk_1F10F8410;
      v13[1] = v10;
      v13[2] = a1;
      v14 = v13;
      WebKit::WebSWServerConnection::getNavigationPreloadState(a3, v8, &v14);
      result = v14;
      v14 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

void IPC::handleMessageAsync<Messages::WebSWServerConnection::StartBackgroundFetch,IPC::Connection,WebKit::WebSWServerConnection,WebCore::SWServer::Connection,void ()(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&,WTF::Vector<WebCore::BackgroundFetchRequest,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WebCore::BackgroundFetchOptions &&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<std::optional<WebCore::BackgroundFetchInformation>,WebCore::ExceptionData> &&)> &&)>(atomic_ullong *a1, uint64_t *a2)
{
  v151 = *MEMORY[0x1E69E9840];
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v5 & 1) == 0 || (v6 = v4, IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a2, &v96), (v97 & 1) == 0) && ((v87 = *a2, v88 = a2[1], *a2 = 0, a2[1] = 0, (v89 = a2[3]) == 0) || !v88 || ((*(*v89 + 16))(v89, v87), (v97 & 1) == 0)))
  {
    LOBYTE(v104) = 0;
    v113 = 0;
    goto LABEL_90;
  }

  v8 = a2[1];
  v9 = ((a2[2] + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = *a2;
  v11 = v9 - *a2;
  v12 = v8 >= v11;
  v13 = v8 - v11;
  if (!v12 || v13 <= 7)
  {
    *a2 = 0;
    a2[1] = 0;
    v93 = a2[3];
    if (v93)
    {
      if (v8)
      {
        (*(*v93 + 16))(v93);
        v10 = *a2;
        v8 = a2[1];
        goto LABEL_102;
      }
    }

    else
    {
      v8 = 0;
    }

    v10 = 0;
LABEL_102:
    *a2 = 0;
    a2[1] = 0;
    v94 = a2[3];
    if (v94 && v8)
    {
      (*(*v94 + 16))(v94, v10);
    }

    goto LABEL_81;
  }

  a2[2] = (v9 + 1);
  if (!v9)
  {
    goto LABEL_102;
  }

  v15 = *v9;
  v100[0] = 0;
  v100[1] = 0;
  if (v15 >= 0xC30)
  {
    while (1)
    {
      IPC::Decoder::decode<WebCore::BackgroundFetchRequest>(&v104, a2);
      v59 = v150;
      if (v150 == 1)
      {
        if (HIDWORD(v100[1]) == LODWORD(v100[1]))
        {
          WTF::Vector<WebCore::BackgroundFetchRequest,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::BackgroundFetchRequest>(v100, &v104);
        }

        else
        {
          v60 = v100[0] + 336 * HIDWORD(v100[1]);
          WTF::URL::URL(v60, &v104);
          WTF::URL::URL((v60 + 40), &v110);
          *(v60 + 10) = v114;
          v61 = v115;
          v115 = 0;
          *(v60 + 12) = 0;
          *(v60 + 13) = 0;
          *(v60 + 11) = v61;
          v62 = v116;
          v116 = 0;
          *(v60 + 12) = v62;
          LODWORD(v62) = v117;
          v117 = 0;
          *(v60 + 26) = v62;
          LODWORD(v62) = v118;
          v118 = 0;
          *(v60 + 27) = v62;
          *(v60 + 14) = 0;
          *(v60 + 15) = 0;
          v63 = v119;
          v119 = 0;
          *(v60 + 14) = v63;
          LODWORD(v63) = v120;
          v120 = 0;
          *(v60 + 30) = v63;
          LODWORD(v63) = v121;
          v121 = 0;
          *(v60 + 31) = v63;
          *(v60 + 16) = 0;
          *(v60 + 17) = 0;
          v64 = v122;
          v122 = 0;
          *(v60 + 16) = v64;
          LODWORD(v64) = v123;
          v123 = 0;
          *(v60 + 34) = v64;
          LODWORD(v64) = v124;
          v124 = 0;
          *(v60 + 35) = v64;
          LODWORD(v64) = v125;
          v60[148] = v126;
          *(v60 + 36) = v64;
          v65 = v127;
          v127 = 0;
          *(v60 + 19) = v65;
          v66 = v128;
          v128 = 0;
          *(v60 + 20) = v66;
          v67 = v129;
          v129 = 0;
          *(v60 + 21) = v67;
          v68 = v130;
          v60[184] = v131;
          *(v60 + 22) = v68;
          v69 = v132;
          v132 = 0;
          *(v60 + 24) = v69;
          LODWORD(v69) = v133[0];
          *(v60 + 211) = *(v133 + 3);
          *(v60 + 52) = v69;
          v70 = v134;
          v134 = 0;
          *(v60 + 27) = v70;
          *(&v7 + 1) = *(&v135 + 1);
          v71 = v136;
          *(v60 + 14) = v135;
          *(v60 + 15) = v71;
          v60[256] = v137;
          *(v60 + 33) = 0;
          *(v60 + 34) = 0;
          v72 = v138;
          v138 = 0;
          *(v60 + 33) = v72;
          LODWORD(v72) = v139;
          v139 = 0;
          *(v60 + 68) = v72;
          LODWORD(v72) = v140;
          v140 = 0;
          *(v60 + 69) = v72;
          *(v60 + 35) = 0;
          *(v60 + 36) = 0;
          v73 = v141;
          v141 = 0;
          *(v60 + 35) = v73;
          LODWORD(v73) = v142;
          v142 = 0;
          *(v60 + 72) = v73;
          LODWORD(v73) = v143;
          v143 = 0;
          *(v60 + 73) = v73;
          v74 = v144;
          v144 = 0;
          *(v60 + 38) = 0;
          *(v60 + 39) = 0;
          *(v60 + 37) = v74;
          v75 = v145;
          v145 = 0;
          *(v60 + 38) = v75;
          LODWORD(v75) = v146;
          v146 = 0;
          *(v60 + 78) = v75;
          LODWORD(v75) = v147;
          v147 = 0;
          *(v60 + 79) = v75;
          LODWORD(v75) = v148;
          v60[324] = v149;
          *(v60 + 80) = v75;
          ++HIDWORD(v100[1]);
        }
      }

      if (v150 == 1)
      {
        WTF::Vector<std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v145, v10);
        v77 = v144;
        v144 = 0;
        if (v77 && atomic_fetch_add_explicit(v77, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v77, v76);
        }

        WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::~Vector(&v141, v76);
        WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::~Vector(&v138, v78);
        v80 = v134;
        v134 = 0;
        if (v80 && atomic_fetch_add_explicit(v80, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v80, v79);
        }

        WebCore::ResourceRequest::~ResourceRequest(&v104);
      }

      if ((v59 & 1) == 0)
      {
        goto LABEL_80;
      }

      if (!--v15)
      {
        LODWORD(v15) = v100[1];
        v40 = HIDWORD(v100[1]);
        v39 = v100[0];
        if (LODWORD(v100[1]) <= HIDWORD(v100[1]))
        {
          goto LABEL_29;
        }

        v81 = v100[0];
        if (HIDWORD(v100[1]))
        {
          if (HIDWORD(v100[1]) >= 0xC30C31)
          {
            __break(0xC471u);
            goto LABEL_112;
          }

          v81 = WTF::fastMalloc((336 * HIDWORD(v100[1])));
          LODWORD(v15) = 336 * v40 / 0x150;
          if (v81 != v39)
          {
            v95 = v81;
            WTF::VectorMover<false,WebCore::BackgroundFetchRequest>::move(v39, v39 + 336 * v40, v81);
            v81 = v95;
          }
        }

        if (v39)
        {
          if (v81 == v39)
          {
            LODWORD(v15) = 0;
            v82 = 0;
          }

          else
          {
            v82 = v81;
          }

          WTF::fastFree(v39, v10);
          v39 = v82;
        }

        else
        {
          v39 = v81;
        }

        goto LABEL_29;
      }
    }
  }

  if (v15)
  {
    v16 = WTF::fastMalloc((336 * v15));
    LODWORD(v100[1]) = 336 * v15 / 0x150u;
    v100[0] = v16;
    while (1)
    {
      IPC::Decoder::decode<WebCore::BackgroundFetchRequest>(&v104, a2);
      v17 = v150;
      if (v150 == 1)
      {
        if (HIDWORD(v100[1]) == LODWORD(v100[1]))
        {
          WTF::Vector<WebCore::BackgroundFetchRequest,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::BackgroundFetchRequest>(v100, &v104);
        }

        else
        {
          v18 = v100[0] + 336 * HIDWORD(v100[1]);
          WTF::URL::URL(v18, &v104);
          WTF::URL::URL((v18 + 40), &v110);
          *(v18 + 10) = v114;
          v19 = v115;
          v115 = 0;
          *(v18 + 12) = 0;
          *(v18 + 13) = 0;
          *(v18 + 11) = v19;
          v20 = v116;
          v116 = 0;
          *(v18 + 12) = v20;
          LODWORD(v20) = v117;
          v117 = 0;
          *(v18 + 26) = v20;
          LODWORD(v20) = v118;
          v118 = 0;
          *(v18 + 27) = v20;
          *(v18 + 14) = 0;
          *(v18 + 15) = 0;
          v21 = v119;
          v119 = 0;
          *(v18 + 14) = v21;
          LODWORD(v21) = v120;
          v120 = 0;
          *(v18 + 30) = v21;
          LODWORD(v21) = v121;
          v121 = 0;
          *(v18 + 31) = v21;
          *(v18 + 16) = 0;
          *(v18 + 17) = 0;
          v22 = v122;
          v122 = 0;
          *(v18 + 16) = v22;
          LODWORD(v22) = v123;
          v123 = 0;
          *(v18 + 34) = v22;
          LODWORD(v22) = v124;
          v124 = 0;
          *(v18 + 35) = v22;
          LODWORD(v22) = v125;
          v18[148] = v126;
          *(v18 + 36) = v22;
          v23 = v127;
          v127 = 0;
          *(v18 + 19) = v23;
          v24 = v128;
          v128 = 0;
          *(v18 + 20) = v24;
          v25 = v129;
          v129 = 0;
          *(v18 + 21) = v25;
          v26 = v130;
          v18[184] = v131;
          *(v18 + 22) = v26;
          v27 = v132;
          v132 = 0;
          *(v18 + 24) = v27;
          LODWORD(v27) = v133[0];
          *(v18 + 211) = *(v133 + 3);
          *(v18 + 52) = v27;
          v28 = v134;
          v134 = 0;
          *(v18 + 27) = v28;
          *(&v7 + 1) = *(&v135 + 1);
          v29 = v136;
          *(v18 + 14) = v135;
          *(v18 + 15) = v29;
          v18[256] = v137;
          *(v18 + 33) = 0;
          *(v18 + 34) = 0;
          v30 = v138;
          v138 = 0;
          *(v18 + 33) = v30;
          LODWORD(v30) = v139;
          v139 = 0;
          *(v18 + 68) = v30;
          LODWORD(v30) = v140;
          v140 = 0;
          *(v18 + 69) = v30;
          *(v18 + 35) = 0;
          *(v18 + 36) = 0;
          v31 = v141;
          v141 = 0;
          *(v18 + 35) = v31;
          LODWORD(v31) = v142;
          v142 = 0;
          *(v18 + 72) = v31;
          LODWORD(v31) = v143;
          v143 = 0;
          *(v18 + 73) = v31;
          v32 = v144;
          v144 = 0;
          *(v18 + 38) = 0;
          *(v18 + 39) = 0;
          *(v18 + 37) = v32;
          v33 = v145;
          v145 = 0;
          *(v18 + 38) = v33;
          LODWORD(v33) = v146;
          v146 = 0;
          *(v18 + 78) = v33;
          LODWORD(v33) = v147;
          v147 = 0;
          *(v18 + 79) = v33;
          LODWORD(v33) = v148;
          v18[324] = v149;
          *(v18 + 80) = v33;
          ++HIDWORD(v100[1]);
        }
      }

      if (v150 == 1)
      {
        WTF::Vector<std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v145, v10);
        v35 = v144;
        v144 = 0;
        if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v35, v34);
        }

        WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::~Vector(&v141, v34);
        WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::~Vector(&v138, v36);
        v38 = v134;
        v134 = 0;
        if (v38 && atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v38, v37);
        }

        WebCore::ResourceRequest::~ResourceRequest(&v104);
      }

      if ((v17 & 1) == 0)
      {
        break;
      }

      if (!--v15)
      {
        v39 = v100[0];
        LODWORD(v15) = v100[1];
        v40 = HIDWORD(v100[1]);
        goto LABEL_29;
      }
    }

LABEL_80:
    WTF::Vector<WebCore::BackgroundFetchRequest,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v100, v10);
LABEL_81:
    v46 = *a2;
    v83 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    v84 = a2[3];
    if (v84 && v83)
    {
      (*(*v84 + 16))(v84, v46);
    }

    v45 = 0;
    LOBYTE(v104) = 0;
    v113 = 0;
    goto LABEL_33;
  }

  v40 = 0;
  v39 = 0;
LABEL_29:
  *&v7 = 0;
  *v100 = v7;
  *&v98 = v39;
  *(&v98 + 1) = __PAIR64__(v40, v15);
  v99 = 1;
  WTF::Vector<WebCore::BackgroundFetchRequest,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v100, v10);
  IPC::ArgumentCoder<WebCore::BackgroundFetchOptions,void>::decode(a2, v100);
  if (v103 & 1) != 0 || (v41 = *a2, v85 = a2[1], *a2 = 0, a2[1] = 0, (v86 = a2[3]) != 0) && v85 && ((*(*v86 + 16))(v86, v41), (v103))
  {
    if ((v97 & 1) == 0)
    {
      goto LABEL_112;
    }

    v42 = v96;
    v96 = 0;
    v104 = v6;
    v105 = v42;
    v98 = 0u;
    v106 = v39;
    v107 = v15;
    v108 = v40;
    v43 = v100[0];
    v44 = v100[1];
    *v100 = 0u;
    v109 = v43;
    v110 = v44;
    v111 = v101;
    v112 = v102;
    v45 = 1;
    v113 = 1;
    v101 = 0;
    WTF::Vector<WebCore::ImageResource,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v100, v41);
  }

  else
  {
    v45 = 0;
    LOBYTE(v104) = 0;
    v113 = 0;
  }

  WTF::Vector<WebCore::BackgroundFetchRequest,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v98, v41);
LABEL_33:
  if ((v97 & 1) == 0 || (v47 = v96, v96 = 0, !v47) || atomic_fetch_add_explicit(v47, 0xFFFFFFFE, memory_order_relaxed) != 2)
  {
    if ((v45 & 1) == 0)
    {
      goto LABEL_90;
    }

LABEL_37:
    v48 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if ((v49 & 1) == 0)
    {
      goto LABEL_46;
    }

    v50 = v48;
    while (1)
    {
      v51 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v52 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v52, v51 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v52 == v51)
      {
        goto LABEL_43;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_43:
    v53 = WTF::fastMalloc(0x18);
    *v53 = &unk_1F10F8438;
    *(v53 + 1) = v50;
    *(v53 + 2) = a1;
    v100[0] = v53;
    if (v113)
    {
      WebCore::SWServer::Connection::startBackgroundFetch();
      v54 = v100[0];
      v100[0] = 0;
      if (v54)
      {
        (*(*v54 + 8))(v54);
      }

      goto LABEL_46;
    }

LABEL_112:
    __break(1u);
    return;
  }

  WTF::StringImpl::destroy(v47, v46);
  if (v45)
  {
    goto LABEL_37;
  }

LABEL_90:
  v49 = *a2;
  v90 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v91 = a2[3];
  if (v91)
  {
    v92 = v90 == 0;
  }

  else
  {
    v92 = 1;
  }

  if (!v92)
  {
    (*(*v91 + 16))(v91, v49);
    if (v113)
    {
      goto LABEL_37;
    }
  }

LABEL_46:
  if (v113 == 1)
  {
    v55 = v111;
    v111 = 0;
    if (v55 && atomic_fetch_add_explicit(v55, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v55, v49);
    }

    WTF::Vector<WebCore::ImageResource,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v109, v49);
    WTF::Vector<WebCore::BackgroundFetchRequest,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v106, v56);
    v58 = v105;
    v105 = 0;
    if (v58)
    {
      if (atomic_fetch_add_explicit(v58, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v58, v57);
      }
    }
  }
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::WebSWServerConnection::BackgroundFetchInformation,IPC::Connection,WebKit::WebSWServerConnection,WebCore::SWServer::Connection,void ()(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<std::optional<WebCore::BackgroundFetchInformation>,WebCore::ExceptionData> &&)> &&)>(atomic_ullong *a1, uint64_t *a2)
{
  result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::MediaKeySystemRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String>>(&v12, a2);
  if (v14 == 1)
  {
    v5 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if ((v6 & 1) == 0)
    {
      goto LABEL_11;
    }

    v7 = v5;
    while (1)
    {
      v8 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v9 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v9, v8 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v9 == v8)
      {
        goto LABEL_8;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
    v10 = WTF::fastMalloc(0x18);
    *v10 = &unk_1F10F8460;
    *(v10 + 1) = v7;
    *(v10 + 2) = a1;
    v11 = v10;
    WebCore::SWServer::Connection::backgroundFetchInformation();
    result = v11;
    if (v11)
    {
      result = (*(*v11 + 8))(v11);
    }

    if (v14)
    {
LABEL_11:
      result = v13;
      v13 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v6);
        }
      }
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebSWServerConnection::BackgroundFetchIdentifiers,IPC::Connection,WebKit::WebSWServerConnection,WebCore::SWServer::Connection,void ()(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)>(atomic_ullong *a1, uint64_t *a2)
{
  result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a2);
  if (v5)
  {
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v6)
    {
      v7 = result;
      while (1)
      {
        v8 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v9 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v9, v8 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v9 == v8)
        {
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      v10 = WTF::fastMalloc(0x18);
      *v10 = &unk_1F10F8488;
      v10[1] = v7;
      v10[2] = a1;
      v11 = v10;
      WebCore::SWServer::Connection::backgroundFetchIdentifiers();
      result = v11;
      if (v11)
      {
        return (*(*v11 + 8))(v11);
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::WebSWServerConnection::AbortBackgroundFetch,IPC::Connection,WebKit::WebSWServerConnection,WebCore::SWServer::Connection,void ()(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&,WTF::CompletionHandler<void ()(BOOL)> &&)>(atomic_ullong *a1, uint64_t *a2)
{
  result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::MediaKeySystemRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String>>(&v12, a2);
  if (v14 == 1)
  {
    v5 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if ((v6 & 1) == 0)
    {
      goto LABEL_11;
    }

    v7 = v5;
    while (1)
    {
      v8 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v9 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v9, v8 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v9 == v8)
      {
        goto LABEL_8;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
    v10 = WTF::fastMalloc(0x18);
    *v10 = &unk_1F10F84B0;
    *(v10 + 1) = v7;
    *(v10 + 2) = a1;
    v11 = v10;
    WebCore::SWServer::Connection::abortBackgroundFetch();
    result = v11;
    if (v11)
    {
      result = (*(*v11 + 8))(v11);
    }

    if (v14)
    {
LABEL_11:
      result = v13;
      v13 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v6);
        }
      }
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebSWServerConnection::MatchBackgroundFetch,IPC::Connection,WebKit::WebSWServerConnection,WebCore::SWServer::Connection,void ()(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&,WebCore::RetrieveRecordsOptions &&,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::BackgroundFetchRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)>(atomic_ullong *a1, uint64_t *a2)
{
  v2 = a2;
  IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v4 & 1) == 0)
  {
    goto LABEL_35;
  }

  IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(v2, &v60);
  if (v61 & 1) != 0 || (v31 = *v2, v32 = *(v2 + 1), *v2 = 0, *(v2 + 1) = 0, (v33 = *(v2 + 3)) != 0) && v32 && ((*(*v33 + 16))(v33, v31), (v61))
  {
    IPC::ArgumentCoder<WebCore::RetrieveRecordsOptions,void>::decode(v2, &v62);
    if (v86 & 1) != 0 || (v5 = *v2, v29 = *(v2 + 1), *v2 = 0, *(v2 + 1) = 0, (v30 = *(v2 + 3)) != 0) && v29 && ((*(*v30 + 16))(v30, v5), (v86))
    {
      if ((v61 & 1) == 0)
      {
        goto LABEL_34;
      }

      v6 = v60;
      v60 = 0;
      v34 = v6;
      v7 = v62;
      v8 = v65;
      v62 = 0;
      v35 = v7;
      v36 = v63;
      v37 = v64;
      LODWORD(v63) = v63 & 0xFFFFFFFE;
      v65 = 0;
      v38 = v8;
      v39 = v66;
      v40 = v67;
      LODWORD(v66) = v66 & 0xFFFFFFFE;
      v9 = v70;
      v41 = v68;
      v10 = v69;
      v69 = 0u;
      v42 = v10;
      v70 = 0;
      v43 = v9;
      v11 = v71;
      v71 = 0;
      v44 = v11;
      v12 = v72;
      v72 = 0;
      v45 = v12;
      v13 = v73;
      v73 = 0;
      v46 = v13;
      v14 = v74;
      v74 = 0;
      v47 = v14;
      v49 = v76;
      v48 = v75;
      v15 = v77;
      v77 = 0u;
      v50 = v15;
      v53 = v80;
      v51 = v78;
      v52 = v79;
      v16 = v81;
      v78 = 0;
      v81 = 0;
      v54 = v16;
      v55 = v82;
      *v56 = v83;
      v57 = v84;
      v58 = v85;
      v59 = 1;
      if (v86)
      {
        v83 = 0uLL;
        v84 = 0;
        WebCore::ResourceRequest::~ResourceRequest(&v62);
      }
    }

    else
    {
      v59 = 0;
    }

    if (v61)
    {
      v17 = v60;
      v60 = 0;
      if (v17)
      {
        if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v17, v5);
        }
      }
    }
  }

  else
  {
    v59 = 0;
  }

  if ((v59 & 1) == 0)
  {
    goto LABEL_36;
  }

  while (1)
  {
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v2);
    if ((v19 & 1) == 0)
    {
      break;
    }

    v2 = result;
    while (1)
    {
      v20 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v21 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v21, v20 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v21 == v20)
      {
        goto LABEL_18;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_18:
    v22 = WTF::fastMalloc(0x18);
    *v22 = &unk_1F10F84D8;
    v22[1] = v2;
    v22[2] = a1;
    v62 = v22;
    if (v59)
    {
      WebCore::SWServer::Connection::matchBackgroundFetch();
      result = v62;
      v62 = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }

      break;
    }

LABEL_34:
    __break(1u);
LABEL_35:
    v59 = 0;
LABEL_36:
    v19 = *v2;
    v27 = *(v2 + 1);
    *v2 = 0;
    *(v2 + 1) = 0;
    result = *(v2 + 3);
    if (result)
    {
      v28 = v27 == 0;
    }

    else
    {
      v28 = 1;
    }

    if (!v28)
    {
      result = (*(*result + 16))(result, v19);
      if (v59)
      {
        continue;
      }
    }

    break;
  }

  if (v59 == 1)
  {
    v23 = v57;
    v57 = 0;
    if (v23)
    {
      WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v23, v19);
    }

    v24 = v56[1];
    v56[1] = 0;
    if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v24, v19);
    }

    v25 = v56[0];
    v56[0] = 0;
    if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v25, v19);
    }

    WebCore::ResourceRequest::~ResourceRequest(&v35);
    result = v34;
    if (v34)
    {
      if (atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(v34, v26);
      }
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebSWServerConnection::RetrieveRecordResponse,IPC::Connection,WebKit::WebSWServerConnection,WebCore::SWServer::Connection,void ()(WTF::ObjectIdentifierGeneric<WebCore::BackgroundFetchRecordIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebCore::ResourceResponse,WebCore::ExceptionData> &&)> &&)>(atomic_ullong *a1, uint64_t *a2)
{
  IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if (v4)
  {
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v6)
    {
      v7 = result;
      while (1)
      {
        v8 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v9 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v9, v8 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v9 == v8)
        {
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      v10 = WTF::fastMalloc(0x18);
      *v10 = &unk_1F10F8500;
      v10[1] = v7;
      v10[2] = a1;
      v14 = v10;
      WebCore::SWServer::Connection::retrieveRecordResponse();
      result = v14;
      if (v14)
      {
        return (*(*v14 + 8))(v14);
      }
    }
  }

  else
  {
    v11 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    result = a2[3];
    if (result)
    {
      v12 = v11 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (!v12)
    {
      v13 = *(*result + 16);

      return v13();
    }
  }

  return result;
}