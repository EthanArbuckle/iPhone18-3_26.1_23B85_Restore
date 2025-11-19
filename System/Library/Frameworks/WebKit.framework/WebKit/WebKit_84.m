void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages14NetworkProcess39ResetResourceMonitorThrottlerForTestingENS2_10ConnectionEN6WebKit14NetworkProcessES9_FvN3PAL9SessionIDEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10F0EA8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages14NetworkProcess39ResetResourceMonitorThrottlerForTestingENS2_10ConnectionEN6WebKit14NetworkProcessES9_FvN3PAL9SessionIDEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F0EA8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages14NetworkProcess39ResetResourceMonitorThrottlerForTestingENS2_10ConnectionEN6WebKit14NetworkProcessES9_FvN3PAL9SessionIDEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3361;
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

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages14NetworkProcess36SetCacheModelSynchronouslyForTestingEN6WebKit14NetworkProcessES8_FvNS7_10CacheModelEONS_17CompletionHandlerIFvvEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJEED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F0ED0;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages14NetworkProcess36SetCacheModelSynchronouslyForTestingEN6WebKit14NetworkProcessES8_FvNS7_10CacheModelEONS_17CompletionHandlerIFvvEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJEED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F0ED0;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages14NetworkProcess42ProcessWillSuspendImminentlyForTestingSyncEN6WebKit14NetworkProcessES8_FvONS_17CompletionHandlerIFvvEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJEED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F0EF8;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages14NetworkProcess42ProcessWillSuspendImminentlyForTestingSyncEN6WebKit14NetworkProcessES8_FvONS_17CompletionHandlerIFvvEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJEED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F0EF8;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t IPC::Decoder::decode<std::tuple<WTF::Seconds>>(IPC::Decoder *a1)
{
  result = IPC::Decoder::decode<WTF::Seconds>(a1);
  if ((v3 & 1) == 0)
  {
    v5 = *a1;
    v4 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v6 = *(a1 + 3);
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

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages14NetworkProcess38SetServiceWorkerFetchTimeoutForTestingEN6WebKit14NetworkProcessES8_FvNS_7SecondsEONS_17CompletionHandlerIFvvEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJEED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F0F20;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages14NetworkProcess38SetServiceWorkerFetchTimeoutForTestingEN6WebKit14NetworkProcessES8_FvNS_7SecondsEONS_17CompletionHandlerIFvvEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJEED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F0F20;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages14NetworkProcess40ResetServiceWorkerFetchTimeoutForTestingEN6WebKit14NetworkProcessES8_FvONS_17CompletionHandlerIFvvEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJEED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F0F48;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages14NetworkProcess40ResetServiceWorkerFetchTimeoutForTestingEN6WebKit14NetworkProcessES8_FvONS_17CompletionHandlerIFvvEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJEED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F0F48;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

void IPC::Decoder::decode<WebCore::AuthenticationChallenge>(uint64_t a1, IPC::Decoder *a2)
{
  IPC::ArgumentCoder<WebCore::AuthenticationChallenge,void>::decode(a2, a1);
  if ((*(a1 + 440) & 1) == 0)
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

void IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::URL>>(_BYTE *a1, IPC::Decoder *a2)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v6 & 1) == 0)
  {
    *a1 = 0;
    a1[48] = 0;
LABEL_10:
    v10 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v11 = *(a2 + 3);
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
      v13 = *(*v11 + 16);

      v13(v5);
    }

    return;
  }

  v7 = v4;
  IPC::ArgumentCoder<WTF::URL,void>::decode(a2, v17);
  if (v18 & 1) != 0 || (v14 = *a2, v15 = *(a2 + 1), *a2 = 0, *(a2 + 1) = 0, (v16 = *(a2 + 3)) != 0) && v15 && ((*(*v16 + 16))(v16, v14), (v18))
  {
    *a1 = v7;
    v5.n128_f64[0] = WTF::URL::URL((a1 + 8), v17);
    a1[48] = 1;
    if (v18)
    {
      v9 = v17[0];
      v17[0] = 0;
      if (v9)
      {
        if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v9, v8);
        }
      }
    }
  }

  else
  {
    *a1 = 0;
    a1[48] = 0;
  }

  if ((a1[48] & 1) == 0)
  {
    goto LABEL_10;
  }
}

uint64_t std::__optional_destruct_base<WebCore::OrganizationStorageAccessPromptQuirk,false>::__optional_destruct_base[abi:sn200100]<WebCore::OrganizationStorageAccessPromptQuirk>(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  *a1 = v3;
  *(a1 + 8) = 0;
  v4 = a2[1];
  a2[1] = 0;
  *(a1 + 8) = v4;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 16, a2 + 4);
  *(a1 + 32) = 1;
  return a1;
}

uint64_t std::__optional_move_base<WebCore::OrganizationStorageAccessPromptQuirk,false>::__optional_move_base[abi:sn200100](uint64_t a1, uint64_t *a2)
{
  *a1 = 0;
  *(a1 + 32) = 0;
  if (*(a2 + 32) == 1)
  {
    v3 = *a2;
    *a2 = 0;
    *a1 = v3;
    *(a1 + 8) = 0;
    v4 = a2[1];
    a2[1] = 0;
    *(a1 + 8) = v4;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 16, a2 + 4);
    *(a1 + 32) = 1;
  }

  return a1;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19NetworkProcessProxy27RequestStorageAccessConfirmENS2_10ConnectionEN6WebKit19NetworkProcessProxyES9_FvNS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSA_IN7WebCore19FrameIdentifierTypeESD_yEERKNSF_17RegistrableDomainESK_ONSt3__18optionalINSF_36OrganizationStorageAccessPromptQuirkEEEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED1Ev(void *a1)
{
  *a1 = &unk_1F10F0F70;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19NetworkProcessProxy27RequestStorageAccessConfirmENS2_10ConnectionEN6WebKit19NetworkProcessProxyES9_FvNS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSA_IN7WebCore19FrameIdentifierTypeESD_yEERKNSF_17RegistrableDomainESK_ONSt3__18optionalINSF_36OrganizationStorageAccessPromptQuirkEEEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F0F70;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19NetworkProcessProxy27RequestStorageAccessConfirmENS2_10ConnectionEN6WebKit19NetworkProcessProxyES9_FvNS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSA_IN7WebCore19FrameIdentifierTypeESD_yEERKNSF_17RegistrableDomainESK_ONSt3__18optionalINSF_36OrganizationStorageAccessPromptQuirkEEEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEE4callEb(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3289;
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19NetworkProcessProxy49DeleteWebsiteDataInUIProcessForRegistrableDomainsENS2_10ConnectionEN6WebKit19NetworkProcessProxyES9_FvN3PAL9SessionIDENS_9OptionSetINS8_15WebsiteDataTypeEEENSC_INS8_22WebsiteDataFetchOptionEEEONS_6VectorIN7WebCore17RegistrableDomainELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvONS_7HashSetISJ_NS_11DefaultHashISJ_EENS_10HashTraitsISJ_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1EEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSX_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F0F98;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19NetworkProcessProxy49DeleteWebsiteDataInUIProcessForRegistrableDomainsENS2_10ConnectionEN6WebKit19NetworkProcessProxyES9_FvN3PAL9SessionIDENS_9OptionSetINS8_15WebsiteDataTypeEEENSC_INS8_22WebsiteDataFetchOptionEEEONS_6VectorIN7WebCore17RegistrableDomainELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvONS_7HashSetISJ_NS_11DefaultHashISJ_EENS_10HashTraitsISJ_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1EEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSX_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F0F98;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19NetworkProcessProxy49DeleteWebsiteDataInUIProcessForRegistrableDomainsENS2_10ConnectionEN6WebKit19NetworkProcessProxyES9_FvN3PAL9SessionIDENS_9OptionSetINS8_15WebsiteDataTypeEEENSC_INS8_22WebsiteDataFetchOptionEEEONS_6VectorIN7WebCore17RegistrableDomainELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvONS_7HashSetISJ_NS_11DefaultHashISJ_EENS_10HashTraitsISJ_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1EEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSX_EE4callESX_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3280;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,void>::encode<IPC::Encoder>(v5, a2);
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

WTF::StringImpl *IPC::Decoder::decode<std::tuple<WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>@<X0>(WTF::StringImpl *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::Decoder::decode<WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>(a1, &v6);
  if (v7 == 1)
  {
    *a2 = v6;
    v5 = 1;
  }

  else
  {
    *a2 = 0;
    result = IPC::Decoder::markInvalid(a1);
    v5 = 0;
  }

  *(a2 + 8) = v5;
  return result;
}

WTF::StringImpl **IPC::ArgumentCoder<std::tuple<WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,void>::decode<IPC::Decoder>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,void>::decode<IPC::Decoder>(a1, &v9);
  if (v10 & 1) != 0 || ((v6 = *a1, v7 = *(a1 + 8), *a1 = 0, *(a1 + 8) = 0, (result = *(a1 + 24)) != 0) ? (v8 = v7 == 0) : (v8 = 1), !v8 && (result = (*(*result + 2))(result, v6), (v10)))
  {
    *a2 = v9;
    v5 = 1;
  }

  else
  {
    v5 = 0;
    *a2 = 0;
  }

  *(a2 + 8) = v5;
  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19NetworkProcessProxy36SetDomainsWithCrossPageStorageAccessENS2_10ConnectionEN6WebKit19NetworkProcessProxyES9_FvONS_7HashMapIN7WebCore17RegistrableDomainENS_6VectorISC_Lm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEENS_11DefaultHashISC_EENS_10HashTraitsISC_EENSJ_ISG_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1ESF_EEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10F0FC0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19NetworkProcessProxy36SetDomainsWithCrossPageStorageAccessENS2_10ConnectionEN6WebKit19NetworkProcessProxyES9_FvONS_7HashMapIN7WebCore17RegistrableDomainENS_6VectorISC_Lm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEENS_11DefaultHashISC_EENS_10HashTraitsISC_EENSJ_ISG_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1ESF_EEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F0FC0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19NetworkProcessProxy36SetDomainsWithCrossPageStorageAccessENS2_10ConnectionEN6WebKit19NetworkProcessProxyES9_FvONS_7HashMapIN7WebCore17RegistrableDomainENS_6VectorISC_Lm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEENS_11DefaultHashISC_EENS_10HashTraitsISC_EENSJ_ISG_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1ESF_EEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3290;
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19NetworkProcessProxy32RequestBackgroundFetchPermissionENS2_10ConnectionEN6WebKit19NetworkProcessProxyES9_FvN3PAL9SessionIDERKN7WebCore12ClientOriginEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED1Ev(void *a1)
{
  *a1 = &unk_1F10F0FE8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19NetworkProcessProxy32RequestBackgroundFetchPermissionENS2_10ConnectionEN6WebKit19NetworkProcessProxyES9_FvN3PAL9SessionIDERKN7WebCore12ClientOriginEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F0FE8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19NetworkProcessProxy32RequestBackgroundFetchPermissionENS2_10ConnectionEN6WebKit19NetworkProcessProxyES9_FvN3PAL9SessionIDERKN7WebCore12ClientOriginEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEE4callEb(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3288;
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19NetworkProcessProxy54EstablishRemoteWorkerContextConnectionToNetworkProcessENS2_10ConnectionEN6WebKit19NetworkProcessProxyES9_FvNS8_16RemoteWorkerTypeEON7WebCore4SiteENSt3__18optionalINS_23ObjectIdentifierGenericINSB_21ProcessIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEENSF_INSB_16ProcessQualifiedINS_4UUIDEEEEEN3PAL9SessionIDEONS_17CompletionHandlerIFvSL_EEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSL_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F1010;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19NetworkProcessProxy54EstablishRemoteWorkerContextConnectionToNetworkProcessENS2_10ConnectionEN6WebKit19NetworkProcessProxyES9_FvNS8_16RemoteWorkerTypeEON7WebCore4SiteENSt3__18optionalINS_23ObjectIdentifierGenericINSB_21ProcessIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEENSF_INSB_16ProcessQualifiedINS_4UUIDEEEEEN3PAL9SessionIDEONS_17CompletionHandlerIFvSL_EEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSL_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F1010;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19NetworkProcessProxy54EstablishRemoteWorkerContextConnectionToNetworkProcessENS2_10ConnectionEN6WebKit19NetworkProcessProxyES9_FvNS8_16RemoteWorkerTypeEON7WebCore4SiteENSt3__18optionalINS_23ObjectIdentifierGenericINSB_21ProcessIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEENSF_INSB_16ProcessQualifiedINS_4UUIDEEEEEN3PAL9SessionIDEONS_17CompletionHandlerIFvSL_EEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSL_EE4callESL_(uint64_t a1, void *a2, char a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = IPC::Encoder::operator new(0x238, a2);
  *v7 = 3282;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = v6;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  IPC::Encoder::encodeHeader(v7);
  v12 = v7;
  if (a3)
  {
    v13 = 1;
    IPC::Encoder::operator<<<BOOL>(v7, &v13);
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v7, a2);
  }

  else
  {
    v14 = 0;
    IPC::Encoder::operator<<<BOOL>(v7, &v14);
  }

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

uint64_t IPC::Decoder::decode<std::tuple<WebKit::RemoteWorkerType,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(uint64_t a1, uint64_t *a2)
{
  v4 = IPC::Decoder::decode<WebKit::RemoteWorkerType>(a2);
  if (v4 & 0x100) != 0 && (v5 = v4, v6 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2), (v7) && (v8 = v6, result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2), (v10))
  {
    *a1 = v5;
    *(a1 + 8) = v8;
    *(a1 + 16) = result;
    *(a1 + 24) = 1;
  }

  else
  {
    *a1 = 0;
    *(a1 + 24) = 0;
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19NetworkProcessProxy18GetAppBoundDomainsENS2_10ConnectionEN6WebKit19NetworkProcessProxyES9_FvN3PAL9SessionIDEONS_17CompletionHandlerIFvONS_7HashSetIN7WebCore17RegistrableDomainENS_11DefaultHashISF_EENS_10HashTraitsISF_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1EEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F1038;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19NetworkProcessProxy18GetAppBoundDomainsENS2_10ConnectionEN6WebKit19NetworkProcessProxyES9_FvN3PAL9SessionIDEONS_17CompletionHandlerIFvONS_7HashSetIN7WebCore17RegistrableDomainENS_11DefaultHashISF_EENS_10HashTraitsISF_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1EEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F1038;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19NetworkProcessProxy18GetAppBoundDomainsENS2_10ConnectionEN6WebKit19NetworkProcessProxyES9_FvN3PAL9SessionIDEONS_17CompletionHandlerIFvONS_7HashSetIN7WebCore17RegistrableDomainENS_11DefaultHashISF_EENS_10HashTraitsISF_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1EEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_EE4callESN_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3283;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,void>::encode<IPC::Encoder>(v5, a2);
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

WTF::StringImpl *IPC::Decoder::decode<WebKit::ResourceLoadInfo>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<WebKit::ResourceLoadInfo,void>::decode(a1, a2);
  if ((*(a2 + 128) & 1) == 0)
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

WTF::RefCountedBase *IPC::ArgumentCoder<std::optional<IPC::FormDataReference>,void>::decode<IPC::Decoder>@<X0>(WTF::RefCountedBase *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result;
  v4 = *(result + 1);
  v5 = *(result + 2);
  v6 = *result;
  if (v4 <= &v5[-*result])
  {
    *result = 0;
    *(result + 1) = 0;
    v11 = *(result + 3);
    if (v11)
    {
      if (v4)
      {
        (*(*v11 + 16))(v11);
        v4 = *(v2 + 1);
      }
    }

    else
    {
      v4 = 0;
    }

LABEL_15:
    *v2 = 0;
    *(v2 + 1) = 0;
    v12 = *(v2 + 3);
    if (v12)
    {
      if (v4)
      {
        (*(*v12 + 16))(v12);
        v6 = *v2;
        v4 = *(v2 + 1);
        goto LABEL_18;
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = 0;
    goto LABEL_18;
  }

  *(result + 2) = v5 + 1;
  if (!v5)
  {
    goto LABEL_15;
  }

  v7 = *v5;
  if (v7 < 2)
  {
    if (v7)
    {
      result = IPC::ArgumentCoder<IPC::FormDataReference,void>::decode(result, &v13);
      if (v14)
      {
        *a2 = v13;
        v8 = 1;
        *(a2 + 8) = 1;
      }

      else
      {
        v9 = *v2;
        v10 = *(v2 + 1);
        *v2 = 0;
        *(v2 + 1) = 0;
        result = *(v2 + 3);
        if (result)
        {
          if (v10)
          {
            result = (*(*result + 16))(result, v9);
          }
        }

        v8 = 0;
        *a2 = 0;
      }
    }

    else
    {
      *a2 = 0;
      *(a2 + 8) = 0;
      v8 = 1;
    }

    *(a2 + 16) = v8;
    return result;
  }

LABEL_18:
  *v2 = 0;
  *(v2 + 1) = 0;
  result = *(v2 + 3);
  if (result && v4)
  {
    result = (*(*result + 16))(result, v6);
  }

  *a2 = 0;
  *(a2 + 16) = 0;
  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19NetworkProcessProxy46TriggerBrowsingContextGroupSwitchForNavigationENS2_10ConnectionEN6WebKit19NetworkProcessProxyES9_FvNS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSA_IN7WebCore24NavigationIdentifierTypeESD_yEENSF_34BrowsingContextGroupSwitchDecisionERKNSF_4SiteENSA_INS8_33NetworkResourceLoadIdentifierTypeESD_yEEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED1Ev(void *a1)
{
  *a1 = &unk_1F10F1060;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19NetworkProcessProxy46TriggerBrowsingContextGroupSwitchForNavigationENS2_10ConnectionEN6WebKit19NetworkProcessProxyES9_FvNS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSA_IN7WebCore24NavigationIdentifierTypeESD_yEENSF_34BrowsingContextGroupSwitchDecisionERKNSF_4SiteENSA_INS8_33NetworkResourceLoadIdentifierTypeESD_yEEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F1060;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19NetworkProcessProxy46TriggerBrowsingContextGroupSwitchForNavigationENS2_10ConnectionEN6WebKit19NetworkProcessProxyES9_FvNS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSA_IN7WebCore24NavigationIdentifierTypeESD_yEENSF_34BrowsingContextGroupSwitchDecisionERKNSF_4SiteENSA_INS8_33NetworkResourceLoadIdentifierTypeESD_yEEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEE4callEb(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3291;
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19NetworkProcessProxy39GetPaymentCoordinatorEmbeddingUserAgentENS2_10ConnectionEN6WebKit19NetworkProcessProxyES9_FvNS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_17CompletionHandlerIFvRKNS_6StringEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSI_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F1088;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19NetworkProcessProxy39GetPaymentCoordinatorEmbeddingUserAgentENS2_10ConnectionEN6WebKit19NetworkProcessProxyES9_FvNS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_17CompletionHandlerIFvRKNS_6StringEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSI_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F1088;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19NetworkProcessProxy39GetPaymentCoordinatorEmbeddingUserAgentENS2_10ConnectionEN6WebKit19NetworkProcessProxyES9_FvNS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_17CompletionHandlerIFvRKNS_6StringEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSI_EE4callESI_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3284;
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19NetworkProcessProxy25DataTaskReceivedChallengeENS2_10ConnectionEN6WebKit19NetworkProcessProxyES9_FvNS_23ObjectIdentifierGenericINS8_22DataTaskIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEON7WebCore23AuthenticationChallengeEONS_17CompletionHandlerIFvNS8_34AuthenticationChallengeDispositionEONSF_10CredentialEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSJ_SL_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F10B0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19NetworkProcessProxy25DataTaskReceivedChallengeENS2_10ConnectionEN6WebKit19NetworkProcessProxyES9_FvNS_23ObjectIdentifierGenericINS8_22DataTaskIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEON7WebCore23AuthenticationChallengeEONS_17CompletionHandlerIFvNS8_34AuthenticationChallengeDispositionEONSF_10CredentialEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSJ_SL_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F10B0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19NetworkProcessProxy25DataTaskReceivedChallengeENS2_10ConnectionEN6WebKit19NetworkProcessProxyES9_FvNS_23ObjectIdentifierGenericINS8_22DataTaskIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEON7WebCore23AuthenticationChallengeEONS_17CompletionHandlerIFvNS8_34AuthenticationChallengeDispositionEONSF_10CredentialEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSJ_SL_EE4callESJ_SL_(uint64_t a1, void *a2, WebCore::Credential *a3)
{
  v4 = a2;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = IPC::Encoder::operator new(0x238, a2);
  *v7 = 3278;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = v6;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  IPC::Encoder::encodeHeader(v7);
  v12 = v7;
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v7, v4);
  IPC::ArgumentCoder<WebCore::Credential,void>::encode(v7, a3);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19NetworkProcessProxy34DataTaskWillPerformHTTPRedirectionENS2_10ConnectionEN6WebKit19NetworkProcessProxyES9_FvNS_23ObjectIdentifierGenericINS8_22DataTaskIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEON7WebCore16ResourceResponseEONSF_15ResourceRequestEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED1Ev(void *a1)
{
  *a1 = &unk_1F10F10D8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19NetworkProcessProxy34DataTaskWillPerformHTTPRedirectionENS2_10ConnectionEN6WebKit19NetworkProcessProxyES9_FvNS_23ObjectIdentifierGenericINS8_22DataTaskIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEON7WebCore16ResourceResponseEONSF_15ResourceRequestEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F10D8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19NetworkProcessProxy34DataTaskWillPerformHTTPRedirectionENS2_10ConnectionEN6WebKit19NetworkProcessProxyES9_FvNS_23ObjectIdentifierGenericINS8_22DataTaskIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEON7WebCore16ResourceResponseEONSF_15ResourceRequestEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEE4callEb(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3279;
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19NetworkProcessProxy26DataTaskDidReceiveResponseENS2_10ConnectionEN6WebKit19NetworkProcessProxyES9_FvNS_23ObjectIdentifierGenericINS8_22DataTaskIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEON7WebCore16ResourceResponseEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED1Ev(void *a1)
{
  *a1 = &unk_1F10F1100;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19NetworkProcessProxy26DataTaskDidReceiveResponseENS2_10ConnectionEN6WebKit19NetworkProcessProxyES9_FvNS_23ObjectIdentifierGenericINS8_22DataTaskIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEON7WebCore16ResourceResponseEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F1100;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19NetworkProcessProxy26DataTaskDidReceiveResponseENS2_10ConnectionEN6WebKit19NetworkProcessProxyES9_FvNS_23ObjectIdentifierGenericINS8_22DataTaskIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEON7WebCore16ResourceResponseEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEE4callEb(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3277;
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19NetworkProcessProxy27OpenWindowFromServiceWorkerENS2_10ConnectionEN6WebKit19NetworkProcessProxyES9_FvN3PAL9SessionIDERKNS_6StringERKN7WebCore18SecurityOriginDataEONS_17CompletionHandlerIFvONSt3__18optionalINS_23ObjectIdentifierGenericINSF_18PageIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSS_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F1128;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19NetworkProcessProxy27OpenWindowFromServiceWorkerENS2_10ConnectionEN6WebKit19NetworkProcessProxyES9_FvN3PAL9SessionIDERKNS_6StringERKN7WebCore18SecurityOriginDataEONS_17CompletionHandlerIFvONSt3__18optionalINS_23ObjectIdentifierGenericINSF_18PageIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSS_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F1128;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19NetworkProcessProxy27OpenWindowFromServiceWorkerENS2_10ConnectionEN6WebKit19NetworkProcessProxyES9_FvN3PAL9SessionIDERKNS_6StringERKN7WebCore18SecurityOriginDataEONS_17CompletionHandlerIFvONSt3__18optionalINS_23ObjectIdentifierGenericINSF_18PageIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSS_EE4callESS_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3286;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::optional<unsigned long long>,void>::encode<IPC::Encoder,std::optional<unsigned long long>>(v5, a2);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19NetworkProcessProxy27NavigateServiceWorkerClientENS2_10ConnectionEN6WebKit19NetworkProcessProxyES9_FvNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSB_16ProcessQualifiedINS_4UUIDEEERKNS_3URLEONS_17CompletionHandlerIFvNSt3__18optionalINSA_INSB_18PageIdentifierTypeESE_yEEEENSO_ISF_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSR_SS_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F1150;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19NetworkProcessProxy27NavigateServiceWorkerClientENS2_10ConnectionEN6WebKit19NetworkProcessProxyES9_FvNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSB_16ProcessQualifiedINS_4UUIDEEERKNS_3URLEONS_17CompletionHandlerIFvNSt3__18optionalINSA_INSB_18PageIdentifierTypeESE_yEEEENSO_ISF_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSR_SS_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F1150;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19NetworkProcessProxy27NavigateServiceWorkerClientENS2_10ConnectionEN6WebKit19NetworkProcessProxyES9_FvNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSB_16ProcessQualifiedINS_4UUIDEEERKNS_3URLEONS_17CompletionHandlerIFvNSt3__18optionalINSA_INSB_18PageIdentifierTypeESE_yEEEENSO_ISF_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSR_SS_EE4callESR_SS_(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[0] = a2;
  v13[1] = a3;
  v12[0] = a4;
  v12[1] = a5;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = IPC::Encoder::operator new(0x238, a2);
  *v7 = 3285;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = v6;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  IPC::Encoder::encodeHeader(v7);
  v14 = v7;
  IPC::ArgumentCoder<std::optional<unsigned long long>,void>::encode<IPC::Encoder,std::optional<unsigned long long>>(v7, v13);
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(v7, v12);
  IPC::Connection::sendMessageImpl(v5, &v14, 0, 0);
  result = v14;
  v14 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v8);
    return bmalloc::api::tzoneFree(v10, v11);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19NetworkProcessProxy40DeleteWebsiteDataInWebProcessesForOriginENS2_10ConnectionEN6WebKit19NetworkProcessProxyES9_FvNS_9OptionSetINS8_15WebsiteDataTypeEEERKN7WebCore12ClientOriginEN3PAL9SessionIDENS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10F1178;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19NetworkProcessProxy40DeleteWebsiteDataInWebProcessesForOriginENS2_10ConnectionEN6WebKit19NetworkProcessProxyES9_FvNS_9OptionSetINS8_15WebsiteDataTypeEEERKN7WebCore12ClientOriginEN3PAL9SessionIDENS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F1178;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19NetworkProcessProxy40DeleteWebsiteDataInWebProcessesForOriginENS2_10ConnectionEN6WebKit19NetworkProcessProxyES9_FvNS_9OptionSetINS8_15WebsiteDataTypeEEERKN7WebCore12ClientOriginEN3PAL9SessionIDENS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3281;
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19NetworkProcessProxy32ReloadExecutionContextsForOriginENS2_10ConnectionEN6WebKit19NetworkProcessProxyES9_FvRKN7WebCore12ClientOriginEN3PAL9SessionIDENSt3__18optionalINS_23ObjectIdentifierGenericINSA_19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10F11A0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19NetworkProcessProxy32ReloadExecutionContextsForOriginENS2_10ConnectionEN6WebKit19NetworkProcessProxyES9_FvRKN7WebCore12ClientOriginEN3PAL9SessionIDENSt3__18optionalINS_23ObjectIdentifierGenericINSA_19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F11A0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19NetworkProcessProxy32ReloadExecutionContextsForOriginENS2_10ConnectionEN6WebKit19NetworkProcessProxyES9_FvRKN7WebCore12ClientOriginEN3PAL9SessionIDENSt3__18optionalINS_23ObjectIdentifierGenericINSA_19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3287;
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

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages19NetworkProcessProxy54TestProcessIncomingSyncMessagesWhenWaitingForSyncReplyEN6WebKit19NetworkProcessProxyES8_FvNS_23ObjectIdentifierGenericINS7_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_17CompletionHandlerIFvbEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJbEED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F11C8;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages19NetworkProcessProxy54TestProcessIncomingSyncMessagesWhenWaitingForSyncReplyEN6WebKit19NetworkProcessProxyES8_FvNS_23ObjectIdentifierGenericINS7_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_17CompletionHandlerIFvbEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJbEED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F11C8;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages19NetworkProcessProxy54TestProcessIncomingSyncMessagesWhenWaitingForSyncReplyEN6WebKit19NetworkProcessProxyES8_FvNS_23ObjectIdentifierGenericINS7_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_17CompletionHandlerIFvbEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJbEE4callEb(uint64_t a1, char a2)
{
  v4 = a2;
  v2 = a1 + 8;
  IPC::Encoder::operator<<<BOOL>(*(a1 + 8), &v4);
  return IPC::Connection::sendMessageImpl(*(v2 + 8), v2, 0, 0);
}

WTF *IPC::Decoder::decode<WebKit::WebRTCNetwork::SocketAddress>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<WebKit::WebRTCNetwork::SocketAddress,void>::decode(a2, a1);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages18NetworkRTCProvider16GetInterfaceNameENS2_10ConnectionEN6WebKit18NetworkRTCProviderES9_FvONS_3URLENS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEbbON7WebCore17RegistrableDomainEONS_17CompletionHandlerIFvONS_6StringEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSM_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F11F0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages18NetworkRTCProvider16GetInterfaceNameENS2_10ConnectionEN6WebKit18NetworkRTCProviderES9_FvONS_3URLENS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEbbON7WebCore17RegistrableDomainEONS_17CompletionHandlerIFvONS_6StringEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSM_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F11F0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages18NetworkRTCProvider16GetInterfaceNameENS2_10ConnectionEN6WebKit18NetworkRTCProviderES9_FvONS_3URLENS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEbbON7WebCore17RegistrableDomainEONS_17CompletionHandlerIFvONS_6StringEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSM_EE4callESM_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3420;
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages20NetworkSocketChannel10SendStringENS2_10ConnectionEN6WebKit20NetworkSocketChannelES9_FvNSt3__14spanIKhLm18446744073709551615EEEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10F1218;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages20NetworkSocketChannel10SendStringENS2_10ConnectionEN6WebKit20NetworkSocketChannelES9_FvNSt3__14spanIKhLm18446744073709551615EEEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F1218;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages20NetworkSocketChannel10SendStringENS2_10ConnectionEN6WebKit20NetworkSocketChannelES9_FvNSt3__14spanIKhLm18446744073709551615EEEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3422;
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages20NetworkSocketChannel8SendDataENS2_10ConnectionEN6WebKit20NetworkSocketChannelES9_FvNSt3__14spanIKhLm18446744073709551615EEEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10F1240;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages20NetworkSocketChannel8SendDataENS2_10ConnectionEN6WebKit20NetworkSocketChannelES9_FvNSt3__14spanIKhLm18446744073709551615EEEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F1240;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages20NetworkSocketChannel8SendDataENS2_10ConnectionEN6WebKit20NetworkSocketChannelES9_FvNSt3__14spanIKhLm18446744073709551615EEEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3421;
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

mpark *IPC::Decoder::decode<std::tuple<WebCore::ClientOrigin>>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<std::tuple<WebCore::ClientOrigin>,void>::decode<IPC::Decoder>(a2, a1);
  if ((*(a1 + 64) & 1) == 0)
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21NetworkStorageManager9PersistedENS2_10ConnectionEN6WebKit21NetworkStorageManagerES9_FvRKN7WebCore12ClientOriginEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED1Ev(void *a1)
{
  *a1 = &unk_1F10F1268;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21NetworkStorageManager9PersistedENS2_10ConnectionEN6WebKit21NetworkStorageManagerES9_FvRKN7WebCore12ClientOriginEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F1268;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21NetworkStorageManager9PersistedENS2_10ConnectionEN6WebKit21NetworkStorageManagerES9_FvRKN7WebCore12ClientOriginEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEE4callEb(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3448;
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21NetworkStorageManager7PersistENS2_10ConnectionEN6WebKit21NetworkStorageManagerES9_FvRKN7WebCore12ClientOriginEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED1Ev(void *a1)
{
  *a1 = &unk_1F10F1290;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21NetworkStorageManager7PersistENS2_10ConnectionEN6WebKit21NetworkStorageManagerES9_FvRKN7WebCore12ClientOriginEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F1290;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21NetworkStorageManager7PersistENS2_10ConnectionEN6WebKit21NetworkStorageManagerES9_FvRKN7WebCore12ClientOriginEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEE4callEb(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3447;
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21NetworkStorageManager8EstimateENS2_10ConnectionEN6WebKit21NetworkStorageManagerES9_FvRKN7WebCore12ClientOriginEONS_17CompletionHandlerIFvNSt3__18optionalINSA_15StorageEstimateEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSI_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F12B8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21NetworkStorageManager8EstimateENS2_10ConnectionEN6WebKit21NetworkStorageManagerES9_FvRKN7WebCore12ClientOriginEONS_17CompletionHandlerIFvNSt3__18optionalINSA_15StorageEstimateEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSI_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F12B8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21NetworkStorageManager8EstimateENS2_10ConnectionEN6WebKit21NetworkStorageManagerES9_FvRKN7WebCore12ClientOriginEONS_17CompletionHandlerIFvNSt3__18optionalINSA_15StorageEstimateEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSI_EE4callESI_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3437;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v11 = v5;
  if (a2[2])
  {
    v12 = 1;
    IPC::Encoder::operator<<<BOOL>(v5, &v12);
    if ((a2[2] & 1) == 0)
    {
      v10 = std::__throw_bad_optional_access[abi:sn200100]();
      return _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21NetworkStorageManager22FileSystemGetDirectoryENS2_10ConnectionEN6WebKit21NetworkStorageManagerES9_FvRS7_ON7WebCore12ClientOriginEONS_17CompletionHandlerIFvNSt12experimental15fundamentals_v38expectedINSt3__18optionalINS_23ObjectIdentifierGenericINSB_30FileSystemHandleIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEEENS8_22FileSystemStorageErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSR_EED1Ev(v10);
    }

    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v5, *a2);
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v5, a2[1]);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21NetworkStorageManager22FileSystemGetDirectoryENS2_10ConnectionEN6WebKit21NetworkStorageManagerES9_FvRS7_ON7WebCore12ClientOriginEONS_17CompletionHandlerIFvNSt12experimental15fundamentals_v38expectedINSt3__18optionalINS_23ObjectIdentifierGenericINSB_30FileSystemHandleIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEEENS8_22FileSystemStorageErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSR_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F12E0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21NetworkStorageManager22FileSystemGetDirectoryENS2_10ConnectionEN6WebKit21NetworkStorageManagerES9_FvRS7_ON7WebCore12ClientOriginEONS_17CompletionHandlerIFvNSt12experimental15fundamentals_v38expectedINSt3__18optionalINS_23ObjectIdentifierGenericINSB_30FileSystemHandleIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEEENS8_22FileSystemStorageErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSR_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F12E0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21NetworkStorageManager22FileSystemGetDirectoryENS2_10ConnectionEN6WebKit21NetworkStorageManagerES9_FvRS7_ON7WebCore12ClientOriginEONS_17CompletionHandlerIFvNSt12experimental15fundamentals_v38expectedINSt3__18optionalINS_23ObjectIdentifierGenericINSB_30FileSystemHandleIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEEENS8_22FileSystemStorageErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSR_EE4callESR_(uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3439;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v13 = v5;
  if (a2[16])
  {
    v15 = 0;
    v6 = IPC::Encoder::operator<<<BOOL>(v5, &v15);
    if (a2[16] == 1)
    {
      IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v5, *a2);
      goto LABEL_9;
    }

LABEL_12:
    mpark::throw_bad_variant_access(v6);
  }

  v14 = 1;
  v6 = IPC::Encoder::operator<<<BOOL>(v5, &v14);
  if (a2[16])
  {
    goto LABEL_12;
  }

  if (a2[8])
  {
    v16 = 1;
    IPC::Encoder::operator<<<BOOL>(v5, &v16);
    if ((a2[8] & 1) == 0)
    {
      v11 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(v11, v12);
    }

    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v5, *a2);
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

unint64_t IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(uint64_t a1, uint64_t *a2)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if (v5 & 1) != 0 && (v6 = v4, result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a2), (v8))
  {
    *a1 = v6;
    *(a1 + 8) = result;
    *(a1 + 16) = 1;
  }

  else
  {
    *a1 = 0;
    *(a1 + 16) = 0;
    v9 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    result = a2[3];
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21NetworkStorageManager11IsSameEntryENS2_10ConnectionEN6WebKit21NetworkStorageManagerES9_FvNS_23ObjectIdentifierGenericIN7WebCore30FileSystemHandleIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEESF_ONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED1Ev(void *a1)
{
  *a1 = &unk_1F10F1308;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21NetworkStorageManager11IsSameEntryENS2_10ConnectionEN6WebKit21NetworkStorageManagerES9_FvNS_23ObjectIdentifierGenericIN7WebCore30FileSystemHandleIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEESF_ONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F1308;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21NetworkStorageManager11IsSameEntryENS2_10ConnectionEN6WebKit21NetworkStorageManagerES9_FvNS_23ObjectIdentifierGenericIN7WebCore30FileSystemHandleIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEESF_ONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEE4callEb(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3445;
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

IPC::Decoder *IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String,BOOL>>(uint64_t a1, uint64_t *a2)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if (v5)
  {
    v6 = v4;
    result = IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a2, &v24);
    if (v25 & 1) != 0 || (v13 = *a2, v14 = a2[1], *a2 = 0, a2[1] = 0, (v15 = a2[3]) != 0) && v14 && (result = (*(*v15 + 16))(v15, v13), (v25))
    {
      v8 = a2[1];
      v9 = a2[2];
      v10 = *a2;
      if (v8 <= &v9[-*a2])
      {
        *a2 = 0;
        a2[1] = 0;
        v19 = a2[3];
        if (v19)
        {
          if (v8)
          {
            (*(*v19 + 16))(v19);
            v8 = a2[1];
          }
        }

        else
        {
          v8 = 0;
        }
      }

      else
      {
        a2[2] = (v9 + 1);
        if (v9)
        {
          v11 = *v9;
          if (v11 < 2)
          {
            v12 = v24;
            *a1 = v6;
            *(a1 + 8) = v12;
            *(a1 + 16) = v11;
            *(a1 + 24) = 1;
            return result;
          }

          goto LABEL_22;
        }
      }

      *a2 = 0;
      a2[1] = 0;
      v20 = a2[3];
      if (v20)
      {
        if (v8)
        {
          (*(*v20 + 16))(v20);
          v10 = *a2;
          v8 = a2[1];
LABEL_22:
          *a2 = 0;
          a2[1] = 0;
          v21 = a2[3];
          if (v21 && v8)
          {
            (*(*v21 + 16))(v21, v10);
          }

          *a1 = 0;
          v22 = v25;
          *(a1 + 24) = 0;
          if (v22)
          {
            v23 = v24;
            v24 = 0;
            if (v23)
            {
              if (atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v23, v10);
              }
            }
          }

          goto LABEL_10;
        }
      }

      else
      {
        v8 = 0;
      }

      v10 = 0;
      goto LABEL_22;
    }
  }

  *a1 = 0;
  *(a1 + 24) = 0;
LABEL_10:
  v16 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  result = a2[3];
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
    v18 = *(*result + 16);

    return v18();
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21NetworkStorageManager13GetFileHandleENS2_10ConnectionEN6WebKit21NetworkStorageManagerES9_FvRS7_NS_23ObjectIdentifierGenericIN7WebCore30FileSystemHandleIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_6StringEbONS_17CompletionHandlerIFvNSt12experimental15fundamentals_v38expectedISG_NS8_22FileSystemStorageErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSO_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F1330;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21NetworkStorageManager13GetFileHandleENS2_10ConnectionEN6WebKit21NetworkStorageManagerES9_FvRS7_NS_23ObjectIdentifierGenericIN7WebCore30FileSystemHandleIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_6StringEbONS_17CompletionHandlerIFvNSt12experimental15fundamentals_v38expectedISG_NS8_22FileSystemStorageErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSO_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F1330;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21NetworkStorageManager13GetFileHandleENS2_10ConnectionEN6WebKit21NetworkStorageManagerES9_FvRS7_NS_23ObjectIdentifierGenericIN7WebCore30FileSystemHandleIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_6StringEbONS_17CompletionHandlerIFvNSt12experimental15fundamentals_v38expectedISG_NS8_22FileSystemStorageErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSO_EE4callESO_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3441;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageError>,void>::encode<IPC::Encoder>(v5, a2);
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

uint64_t IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageError>,void>::encode<IPC::Encoder>(IPC::Encoder *a1, char *a2)
{
  if (a2[8])
  {
    v7 = 0;
    v4 = IPC::Encoder::operator<<<BOOL>(a1, &v7);
    if (a2[8] == 1)
    {
      return IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *a2);
    }

LABEL_7:
    mpark::throw_bad_variant_access(v4);
  }

  v6 = 1;
  v4 = IPC::Encoder::operator<<<BOOL>(a1, &v6);
  if (a2[8])
  {
    goto LABEL_7;
  }

  return IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *a2);
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21NetworkStorageManager18GetDirectoryHandleENS2_10ConnectionEN6WebKit21NetworkStorageManagerES9_FvRS7_NS_23ObjectIdentifierGenericIN7WebCore30FileSystemHandleIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_6StringEbONS_17CompletionHandlerIFvNSt12experimental15fundamentals_v38expectedISG_NS8_22FileSystemStorageErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSO_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F1358;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21NetworkStorageManager18GetDirectoryHandleENS2_10ConnectionEN6WebKit21NetworkStorageManagerES9_FvRS7_NS_23ObjectIdentifierGenericIN7WebCore30FileSystemHandleIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_6StringEbONS_17CompletionHandlerIFvNSt12experimental15fundamentals_v38expectedISG_NS8_22FileSystemStorageErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSO_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F1358;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21NetworkStorageManager18GetDirectoryHandleENS2_10ConnectionEN6WebKit21NetworkStorageManagerES9_FvRS7_NS_23ObjectIdentifierGenericIN7WebCore30FileSystemHandleIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_6StringEbONS_17CompletionHandlerIFvNSt12experimental15fundamentals_v38expectedISG_NS8_22FileSystemStorageErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSO_EE4callESO_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3440;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageError>,void>::encode<IPC::Encoder>(v5, a2);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21NetworkStorageManager11RemoveEntryENS2_10ConnectionEN6WebKit21NetworkStorageManagerES9_FvNS_23ObjectIdentifierGenericIN7WebCore30FileSystemHandleIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEERKNS_6StringEbONS_17CompletionHandlerIFvNSt3__18optionalINS8_22FileSystemStorageErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F1380;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21NetworkStorageManager11RemoveEntryENS2_10ConnectionEN6WebKit21NetworkStorageManagerES9_FvNS_23ObjectIdentifierGenericIN7WebCore30FileSystemHandleIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEERKNS_6StringEbONS_17CompletionHandlerIFvNSt3__18optionalINS8_22FileSystemStorageErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F1380;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21NetworkStorageManager11RemoveEntryENS2_10ConnectionEN6WebKit21NetworkStorageManagerES9_FvNS_23ObjectIdentifierGenericIN7WebCore30FileSystemHandleIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEERKNS_6StringEbONS_17CompletionHandlerIFvNSt3__18optionalINS8_22FileSystemStorageErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_EE4callESN_(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3449;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = v3;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v10 = v4;
  IPC::ArgumentCoder<std::optional<WebCore::ApplePayShippingContactEditingMode>,void>::encode<IPC::Encoder,std::optional<WebCore::ApplePayShippingContactEditingMode> const&>(v4, &v9);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21NetworkStorageManager7ResolveENS2_10ConnectionEN6WebKit21NetworkStorageManagerES9_FvNS_23ObjectIdentifierGenericIN7WebCore30FileSystemHandleIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEESF_ONS_17CompletionHandlerIFvNSt12experimental15fundamentals_v38expectedINS_6VectorINS_6StringELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEENS8_22FileSystemStorageErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSQ_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F13A8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21NetworkStorageManager7ResolveENS2_10ConnectionEN6WebKit21NetworkStorageManagerES9_FvNS_23ObjectIdentifierGenericIN7WebCore30FileSystemHandleIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEESF_ONS_17CompletionHandlerIFvNSt12experimental15fundamentals_v38expectedINS_6VectorINS_6StringELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEENS8_22FileSystemStorageErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSQ_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F13A8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21NetworkStorageManager7ResolveENS2_10ConnectionEN6WebKit21NetworkStorageManagerES9_FvNS_23ObjectIdentifierGenericIN7WebCore30FileSystemHandleIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEESF_ONS_17CompletionHandlerIFvNSt12experimental15fundamentals_v38expectedINS_6VectorINS_6StringELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEENS8_22FileSystemStorageErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSQ_EE4callESQ_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3452;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::FileSystemStorageError>,void>::encode<IPC::Encoder>(v5, a2);
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

uint64_t IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::FileSystemStorageError>,void>::encode<IPC::Encoder>(IPC::Encoder *a1, char *a2)
{
  if (a2[16])
  {
    v7 = 0;
    v4 = IPC::Encoder::operator<<<BOOL>(a1, &v7);
    if (a2[16] == 1)
    {
      return IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *a2);
    }

LABEL_7:
    mpark::throw_bad_variant_access(v4);
  }

  v6 = 1;
  v4 = IPC::Encoder::operator<<<BOOL>(a1, &v6);
  if (a2[16])
  {
    goto LABEL_7;
  }

  return IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, a2);
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21NetworkStorageManager4MoveENS2_10ConnectionEN6WebKit21NetworkStorageManagerES9_FvNS_23ObjectIdentifierGenericIN7WebCore30FileSystemHandleIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEESF_RKNS_6StringEONS_17CompletionHandlerIFvNSt3__18optionalINS8_22FileSystemStorageErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F13D0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21NetworkStorageManager4MoveENS2_10ConnectionEN6WebKit21NetworkStorageManagerES9_FvNS_23ObjectIdentifierGenericIN7WebCore30FileSystemHandleIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEESF_RKNS_6StringEONS_17CompletionHandlerIFvNSt3__18optionalINS8_22FileSystemStorageErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F13D0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21NetworkStorageManager4MoveENS2_10ConnectionEN6WebKit21NetworkStorageManagerES9_FvNS_23ObjectIdentifierGenericIN7WebCore30FileSystemHandleIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEESF_RKNS_6StringEONS_17CompletionHandlerIFvNSt3__18optionalINS8_22FileSystemStorageErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_EE4callESN_(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3446;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = v3;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v10 = v4;
  IPC::ArgumentCoder<std::optional<WebCore::ApplePayShippingContactEditingMode>,void>::encode<IPC::Encoder,std::optional<WebCore::ApplePayShippingContactEditingMode> const&>(v4, &v9);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21NetworkStorageManager7GetFileENS2_10ConnectionEN6WebKit21NetworkStorageManagerES9_FvNS_23ObjectIdentifierGenericIN7WebCore30FileSystemHandleIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_17CompletionHandlerIFvNSt12experimental15fundamentals_v38expectedINS_6StringENS8_22FileSystemStorageErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSM_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F13F8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21NetworkStorageManager7GetFileENS2_10ConnectionEN6WebKit21NetworkStorageManagerES9_FvNS_23ObjectIdentifierGenericIN7WebCore30FileSystemHandleIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_17CompletionHandlerIFvNSt12experimental15fundamentals_v38expectedINS_6StringENS8_22FileSystemStorageErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSM_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F13F8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21NetworkStorageManager7GetFileENS2_10ConnectionEN6WebKit21NetworkStorageManagerES9_FvNS_23ObjectIdentifierGenericIN7WebCore30FileSystemHandleIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_17CompletionHandlerIFvNSt12experimental15fundamentals_v38expectedINS_6StringENS8_22FileSystemStorageErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSM_EE4callESM_(uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3442;
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
      IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v5, *a2);
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

  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v5, a2);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21NetworkStorageManager22CreateSyncAccessHandleENS2_10ConnectionEN6WebKit21NetworkStorageManagerES9_FvNS_23ObjectIdentifierGenericIN7WebCore30FileSystemHandleIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_17CompletionHandlerIFvNSt12experimental15fundamentals_v38expectedINS8_30FileSystemSyncAccessHandleInfoENS8_22FileSystemStorageErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSM_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F1420;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21NetworkStorageManager22CreateSyncAccessHandleENS2_10ConnectionEN6WebKit21NetworkStorageManagerES9_FvNS_23ObjectIdentifierGenericIN7WebCore30FileSystemHandleIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_17CompletionHandlerIFvNSt12experimental15fundamentals_v38expectedINS8_30FileSystemSyncAccessHandleInfoENS8_22FileSystemStorageErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSM_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F1420;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21NetworkStorageManager22CreateSyncAccessHandleENS2_10ConnectionEN6WebKit21NetworkStorageManagerES9_FvNS_23ObjectIdentifierGenericIN7WebCore30FileSystemHandleIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_17CompletionHandlerIFvNSt12experimental15fundamentals_v38expectedINS8_30FileSystemSyncAccessHandleInfoENS8_22FileSystemStorageErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSM_EE4callESM_(uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3435;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v11 = v5;
  if (a2[24])
  {
    v13 = 0;
    v6 = IPC::Encoder::operator<<<BOOL>(v5, &v13);
    if (a2[24] == 1)
    {
      IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v5, *a2);
      goto LABEL_6;
    }

LABEL_9:
    mpark::throw_bad_variant_access(v6);
  }

  v12 = 1;
  v6 = IPC::Encoder::operator<<<BOOL>(v5, &v12);
  if (a2[24])
  {
    goto LABEL_9;
  }

  IPC::ArgumentCoder<WebKit::FileSystemSyncAccessHandleInfo,void>::encode(v5, a2);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21NetworkStorageManager21CloseSyncAccessHandleENS2_10ConnectionEN6WebKit21NetworkStorageManagerES9_FvNS_23ObjectIdentifierGenericIN7WebCore30FileSystemHandleIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEENSA_INSB_40FileSystemSyncAccessHandleIdentifierTypeESE_yEEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10F1448;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21NetworkStorageManager21CloseSyncAccessHandleENS2_10ConnectionEN6WebKit21NetworkStorageManagerES9_FvNS_23ObjectIdentifierGenericIN7WebCore30FileSystemHandleIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEENSA_INSB_40FileSystemSyncAccessHandleIdentifierTypeESE_yEEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F1448;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21NetworkStorageManager21CloseSyncAccessHandleENS2_10ConnectionEN6WebKit21NetworkStorageManagerES9_FvNS_23ObjectIdentifierGenericIN7WebCore30FileSystemHandleIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEENSA_INSB_40FileSystemSyncAccessHandleIdentifierTypeESE_yEEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3432;
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21NetworkStorageManager37RequestNewCapacityForSyncAccessHandleENS2_10ConnectionEN6WebKit21NetworkStorageManagerES9_FvNS_23ObjectIdentifierGenericIN7WebCore30FileSystemHandleIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEENSA_INSB_40FileSystemSyncAccessHandleIdentifierTypeESE_yEEyONS_17CompletionHandlerIFvNSt3__18optionalIyEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSL_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F1470;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21NetworkStorageManager37RequestNewCapacityForSyncAccessHandleENS2_10ConnectionEN6WebKit21NetworkStorageManagerES9_FvNS_23ObjectIdentifierGenericIN7WebCore30FileSystemHandleIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEENSA_INSB_40FileSystemSyncAccessHandleIdentifierTypeESE_yEEyONS_17CompletionHandlerIFvNSt3__18optionalIyEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSL_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F1470;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21NetworkStorageManager37RequestNewCapacityForSyncAccessHandleENS2_10ConnectionEN6WebKit21NetworkStorageManagerES9_FvNS_23ObjectIdentifierGenericIN7WebCore30FileSystemHandleIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEENSA_INSB_40FileSystemSyncAccessHandleIdentifierTypeESE_yEEyONS_17CompletionHandlerIFvNSt3__18optionalIyEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSL_EE4callESL_(uint64_t a1, void *a2, uint64_t a3)
{
  v10[0] = a2;
  v10[1] = a3;
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3451;
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21NetworkStorageManager14CreateWritableENS2_10ConnectionEN6WebKit21NetworkStorageManagerES9_FvNS_23ObjectIdentifierGenericIN7WebCore30FileSystemHandleIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEbONS_17CompletionHandlerIFvNSt12experimental15fundamentals_v38expectedINSA_INSB_42FileSystemWritableFileStreamIdentifierTypeESE_yEENS8_22FileSystemStorageErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F1498;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21NetworkStorageManager14CreateWritableENS2_10ConnectionEN6WebKit21NetworkStorageManagerES9_FvNS_23ObjectIdentifierGenericIN7WebCore30FileSystemHandleIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEbONS_17CompletionHandlerIFvNSt12experimental15fundamentals_v38expectedINSA_INSB_42FileSystemWritableFileStreamIdentifierTypeESE_yEENS8_22FileSystemStorageErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F1498;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21NetworkStorageManager14CreateWritableENS2_10ConnectionEN6WebKit21NetworkStorageManagerES9_FvNS_23ObjectIdentifierGenericIN7WebCore30FileSystemHandleIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEbONS_17CompletionHandlerIFvNSt12experimental15fundamentals_v38expectedINSA_INSB_42FileSystemWritableFileStreamIdentifierTypeESE_yEENS8_22FileSystemStorageErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_EE4callESN_(uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3436;
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
      IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v5, *a2);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21NetworkStorageManager13CloseWritableENS2_10ConnectionEN6WebKit21NetworkStorageManagerES9_FvNS_23ObjectIdentifierGenericIN7WebCore30FileSystemHandleIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEENSA_INSB_42FileSystemWritableFileStreamIdentifierTypeESE_yEENSB_26FileSystemWriteCloseReasonEONS_17CompletionHandlerIFvNSt3__18optionalINS8_22FileSystemStorageErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F14C0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21NetworkStorageManager13CloseWritableENS2_10ConnectionEN6WebKit21NetworkStorageManagerES9_FvNS_23ObjectIdentifierGenericIN7WebCore30FileSystemHandleIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEENSA_INSB_42FileSystemWritableFileStreamIdentifierTypeESE_yEENSB_26FileSystemWriteCloseReasonEONS_17CompletionHandlerIFvNSt3__18optionalINS8_22FileSystemStorageErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F14C0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21NetworkStorageManager13CloseWritableENS2_10ConnectionEN6WebKit21NetworkStorageManagerES9_FvNS_23ObjectIdentifierGenericIN7WebCore30FileSystemHandleIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEENSA_INSB_42FileSystemWritableFileStreamIdentifierTypeESE_yEENSB_26FileSystemWriteCloseReasonEONS_17CompletionHandlerIFvNSt3__18optionalINS8_22FileSystemStorageErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_EE4callESN_(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3433;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = v3;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v10 = v4;
  IPC::ArgumentCoder<std::optional<WebCore::ApplePayShippingContactEditingMode>,void>::encode<IPC::Encoder,std::optional<WebCore::ApplePayShippingContactEditingMode> const&>(v4, &v9);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21NetworkStorageManager25ExecuteCommandForWritableENS2_10ConnectionEN6WebKit21NetworkStorageManagerES9_FvNS_23ObjectIdentifierGenericIN7WebCore30FileSystemHandleIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEENSA_INSB_42FileSystemWritableFileStreamIdentifierTypeESE_yEENSB_26FileSystemWriteCommandTypeENSt3__18optionalIyEESL_NSJ_4spanIKhLm18446744073709551615EEEbONS_17CompletionHandlerIFvNSK_INS8_22FileSystemStorageErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSR_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F14E8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21NetworkStorageManager25ExecuteCommandForWritableENS2_10ConnectionEN6WebKit21NetworkStorageManagerES9_FvNS_23ObjectIdentifierGenericIN7WebCore30FileSystemHandleIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEENSA_INSB_42FileSystemWritableFileStreamIdentifierTypeESE_yEENSB_26FileSystemWriteCommandTypeENSt3__18optionalIyEESL_NSJ_4spanIKhLm18446744073709551615EEEbONS_17CompletionHandlerIFvNSK_INS8_22FileSystemStorageErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSR_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F14E8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21NetworkStorageManager25ExecuteCommandForWritableENS2_10ConnectionEN6WebKit21NetworkStorageManagerES9_FvNS_23ObjectIdentifierGenericIN7WebCore30FileSystemHandleIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEENSA_INSB_42FileSystemWritableFileStreamIdentifierTypeESE_yEENSB_26FileSystemWriteCommandTypeENSt3__18optionalIyEESL_NSJ_4spanIKhLm18446744073709551615EEEbONS_17CompletionHandlerIFvNSK_INS8_22FileSystemStorageErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSR_EE4callESR_(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3438;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = v3;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v10 = v4;
  IPC::ArgumentCoder<std::optional<WebCore::ApplePayShippingContactEditingMode>,void>::encode<IPC::Encoder,std::optional<WebCore::ApplePayShippingContactEditingMode> const&>(v4, &v9);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21NetworkStorageManager14GetHandleNamesENS2_10ConnectionEN6WebKit21NetworkStorageManagerES9_FvNS_23ObjectIdentifierGenericIN7WebCore30FileSystemHandleIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_17CompletionHandlerIFvNSt12experimental15fundamentals_v38expectedINS_6VectorINS_6StringELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEENS8_22FileSystemStorageErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSQ_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F1510;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21NetworkStorageManager14GetHandleNamesENS2_10ConnectionEN6WebKit21NetworkStorageManagerES9_FvNS_23ObjectIdentifierGenericIN7WebCore30FileSystemHandleIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_17CompletionHandlerIFvNSt12experimental15fundamentals_v38expectedINS_6VectorINS_6StringELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEENS8_22FileSystemStorageErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSQ_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F1510;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21NetworkStorageManager14GetHandleNamesENS2_10ConnectionEN6WebKit21NetworkStorageManagerES9_FvNS_23ObjectIdentifierGenericIN7WebCore30FileSystemHandleIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_17CompletionHandlerIFvNSt12experimental15fundamentals_v38expectedINS_6VectorINS_6StringELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEENS8_22FileSystemStorageErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSQ_EE4callESQ_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3443;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::FileSystemStorageError>,void>::encode<IPC::Encoder>(v5, a2);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21NetworkStorageManager9GetHandleENS2_10ConnectionEN6WebKit21NetworkStorageManagerES9_FvRS7_NS_23ObjectIdentifierGenericIN7WebCore30FileSystemHandleIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_6StringEONS_17CompletionHandlerIFvNSt12experimental15fundamentals_v38expectedINSt3__18optionalINSN_4pairISG_bEEEENS8_22FileSystemStorageErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJST_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F1538;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21NetworkStorageManager9GetHandleENS2_10ConnectionEN6WebKit21NetworkStorageManagerES9_FvRS7_NS_23ObjectIdentifierGenericIN7WebCore30FileSystemHandleIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_6StringEONS_17CompletionHandlerIFvNSt12experimental15fundamentals_v38expectedINSt3__18optionalINSN_4pairISG_bEEEENS8_22FileSystemStorageErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJST_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F1538;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21NetworkStorageManager9GetHandleENS2_10ConnectionEN6WebKit21NetworkStorageManagerES9_FvRS7_NS_23ObjectIdentifierGenericIN7WebCore30FileSystemHandleIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_6StringEONS_17CompletionHandlerIFvNSt12experimental15fundamentals_v38expectedINSt3__18optionalINSN_4pairISG_bEEEENS8_22FileSystemStorageErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJST_EE4callEST_(uint64_t a1, char *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3444;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v15 = v5;
  if (a2[24])
  {
    v17 = 0;
    v6 = IPC::Encoder::operator<<<BOOL>(v5, &v17);
    if (a2[24] == 1)
    {
      IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v5, *a2);
      goto LABEL_10;
    }

LABEL_13:
    mpark::throw_bad_variant_access(v6);
  }

  v16 = 1;
  v6 = IPC::Encoder::operator<<<BOOL>(v5, &v16);
  if (a2[24])
  {
    goto LABEL_13;
  }

  if (a2[16])
  {
    v18 = 1;
    IPC::Encoder::operator<<<BOOL>(v5, &v18);
    if ((a2[16] & 1) == 0)
    {
      v13 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::Decoder::decode<std::tuple<WebCore::StorageType,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::StorageNamespaceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ClientOrigin>>(v13, v14);
    }

    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v5, *a2);
    v7 = v5;
    v8 = a2 + 8;
  }

  else
  {
    v19 = 0;
    v8 = &v19;
    v7 = v5;
  }

  IPC::Encoder::operator<<<BOOL>(v7, v8);
LABEL_10:
  IPC::Connection::sendMessageImpl(v3, &v15, 0, 0);
  result = v15;
  v15 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v9);
    return bmalloc::api::tzoneFree(v11, v12);
  }

  return result;
}

unint64_t IPC::Decoder::decode<std::tuple<WebCore::StorageType,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::StorageNamespaceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ClientOrigin>>(_BYTE *a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<std::tuple<WebCore::StorageType,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::StorageNamespaceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ClientOrigin>,void>::decode<IPC::Decoder>(a1, a2);
  if ((a1[96] & 1) == 0)
  {

    return IPC::Decoder::markInvalid(a2);
  }

  return result;
}

uint64_t IPC::callMemberFunction<WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(IPC::Connection &,WebCore::StorageType,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::StorageNamespaceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ClientOrigin const&,WTF::CompletionHandler<void ()(std::optional<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,unsigned long long)> &&),std::tuple<WebCore::StorageType,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::StorageNamespaceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ClientOrigin>,void ()(std::optional<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,unsigned long long)>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8[1] = a3;
  v9 = a1;
  v8[0] = a2;
  v7[0] = &v9;
  v7[1] = v8;
  v7[2] = a4;
  v7[3] = a6;
  return IPC::callMemberFunction<WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(IPC::Connection &,WebCore::StorageType,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::StorageNamespaceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ClientOrigin const&,WTF::CompletionHandler<void ()(std::optional<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,unsigned long long)> &&),std::tuple<WebCore::StorageType,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::StorageNamespaceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ClientOrigin>,void ()(std::optional<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,unsigned long long)>(WebKit::NetworkStorageManager *,void ()(IPC::Connection &,WebCore::StorageType,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::StorageNamespaceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ClientOrigin const&,WTF::CompletionHandler<void ()(std::optional<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,unsigned long long)> &&) WebKit::NetworkStorageManager::*,IPC::Connection &,std::tuple<WebCore::StorageType,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::StorageNamespaceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ClientOrigin> &&,WTF::CompletionHandler<void ()(std::optional<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,unsigned long long)> &&)::{lambda(WebKit::NetworkStorageManager &&)#1}::operator()<WebCore::StorageType,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::StorageNamespaceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ClientOrigin>( v7,  *a5,  *(a5 + 8),  *(a5 + 16),  *(a5 + 24),  a5 + 32);
}

unint64_t IPC::ArgumentCoder<std::tuple<WebCore::StorageType,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::StorageNamespaceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ClientOrigin>,void>::decode<IPC::Decoder>(_BYTE *a1, IPC::Decoder *a2)
{
  result = IPC::Decoder::decode<WebCore::StorageType>(a2);
  v5 = result;
  if (result > 0xFFu)
  {
    return IPC::ArgumentCoder<std::tuple<WebCore::StorageType,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::StorageNamespaceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ClientOrigin>,void>::decode<IPC::Decoder,WebCore::StorageType>(a1, a2, &v5);
  }

  *a1 = 0;
  a1[96] = 0;
  return result;
}

uint64_t IPC::Decoder::decode<WebCore::StorageType>(IPC::Decoder *a1)
{
  v2 = IPC::ArgumentCoder<WebCore::StorageType,void>::decode<IPC::Decoder>(a1);
  if (v2 <= 0xFFu)
  {
    IPC::Decoder::markInvalid(a1);
  }

  return v2;
}

unint64_t IPC::ArgumentCoder<std::tuple<WebCore::StorageType,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::StorageNamespaceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ClientOrigin>,void>::decode<IPC::Decoder,WebCore::StorageType>(_BYTE *a1, IPC::Decoder *a2, char *a3)
{
  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  v8 = result;
  v9 = v7;
  if (v7)
  {
    return IPC::ArgumentCoder<std::tuple<WebCore::StorageType,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::StorageNamespaceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ClientOrigin>,void>::decode<IPC::Decoder,WebCore::StorageType,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1, a2, a3, &v8);
  }

  *a1 = 0;
  a1[96] = 0;
  return result;
}

uint64_t IPC::ArgumentCoder<WebCore::StorageType,void>::decode<IPC::Decoder>(IPC::Decoder *a1)
{
  v1 = IPC::Decoder::decode<unsigned char>(a1);
  if ((v1 & 0x100) != 0 && (v2 = v1, WTF::isValidEnum<WebCore::StorageType>(v1)))
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

unint64_t IPC::ArgumentCoder<std::tuple<WebCore::StorageType,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::StorageNamespaceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ClientOrigin>,void>::decode<IPC::Decoder,WebCore::StorageType,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(_BYTE *a1, IPC::Decoder *a2, char *a3, uint64_t a4)
{
  result = IPC::Decoder::decode<std::optional<WTF::ObjectIdentifierGeneric<WebKit::StorageNamespaceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(v9, a2);
  if (v9[16])
  {
    return IPC::ArgumentCoder<std::tuple<WebCore::StorageType,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::StorageNamespaceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ClientOrigin>,void>::decode<IPC::Decoder,WebCore::StorageType,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::StorageNamespaceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a1, a2, a3, a4, v9);
  }

  *a1 = 0;
  a1[96] = 0;
  return result;
}

unint64_t IPC::Decoder::decode<std::optional<WTF::ObjectIdentifierGeneric<WebKit::StorageNamespaceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebKit::StorageNamespaceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(a1, a2);
  if ((*(a1 + 16) & 1) == 0)
  {

    return IPC::Decoder::markInvalid(a2);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::tuple<WebCore::StorageType,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::StorageNamespaceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ClientOrigin>,void>::decode<IPC::Decoder,WebCore::StorageType,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::StorageNamespaceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(_BYTE *a1, IPC::Decoder *a2, char *a3, uint64_t a4, uint64_t a5)
{
  v12 = *MEMORY[0x1E69E9840];
  IPC::Decoder::decode<WebCore::ClientOrigin>(a2, v11);
  if (v11[64])
  {
    IPC::ArgumentCoder<std::tuple<WebCore::StorageType,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::StorageNamespaceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ClientOrigin>,void>::decode<IPC::Decoder,WebCore::StorageType,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::StorageNamespaceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ClientOrigin>(a1, *a3, a3[1], a4, a5, v11);
  }

  else
  {
    *a1 = 0;
    a1[96] = 0;
  }

  return std::optional<WebCore::ClientOrigin>::~optional(v11, v9);
}

unint64_t IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebKit::StorageNamespaceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::Decoder::decode<BOOL>(a2);
  if ((result & 0x100) == 0)
  {
    goto LABEL_7;
  }

  if (result)
  {
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v6)
    {
      *a1 = result;
      v5 = 1;
      *(a1 + 8) = 1;
      goto LABEL_4;
    }

LABEL_7:
    v5 = 0;
    *a1 = 0;
    goto LABEL_4;
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  v5 = 1;
LABEL_4:
  *(a1 + 16) = v5;
  return result;
}

uint64_t IPC::ArgumentCoder<std::tuple<WebCore::StorageType,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::StorageNamespaceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ClientOrigin>,void>::decode<IPC::Decoder,WebCore::StorageType,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::StorageNamespaceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ClientOrigin>(uint64_t result, char a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3 & 1) != 0 && (*(a4 + 8) & 1) != 0 && (*(a5 + 16) & 1) != 0 && (*(a6 + 64))
  {
    return _ZNSt3__127__optional_copy_assign_baseINS_5tupleIJN7WebCore11StorageTypeEN3WTF23ObjectIdentifierGenericIN6WebKit28StorageAreaMapIdentifierTypeENS4_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENS_8optionalINS5_INS6_30StorageNamespaceIdentifierTypeES9_yEEEENS2_12ClientOriginEEEELb0EECI2NS_24__optional_destruct_baseISG_Lb0EEEIJS3_SA_SE_SF_EEENS_10in_place_tEDpOT_(result, a2, a4, a5);
  }

  __break(1u);
  return result;
}

uint64_t _ZNSt3__127__optional_copy_assign_baseINS_5tupleIJN7WebCore11StorageTypeEN3WTF23ObjectIdentifierGenericIN6WebKit28StorageAreaMapIdentifierTypeENS4_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENS_8optionalINS5_INS6_30StorageNamespaceIdentifierTypeES9_yEEEENS2_12ClientOriginEEEELb0EECI2NS_24__optional_destruct_baseISG_Lb0EEEIJS3_SA_SE_SF_EEENS_10in_place_tEDpOT_(uint64_t a1, char a2, void *a3, _OWORD *a4)
{
  *a1 = a2;
  *(a1 + 8) = *a3;
  *(a1 + 16) = *a4;
  mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment((a1 + 32));
  mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment((a1 + 64));
  *(a1 + 96) = 1;
  return a1;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21NetworkStorageManager20ConnectToStorageAreaENS2_10ConnectionEN6WebKit21NetworkStorageManagerES9_FvRS7_N7WebCore11StorageTypeENS_23ObjectIdentifierGenericINS8_28StorageAreaMapIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSt3__18optionalINSD_INS8_30StorageNamespaceIdentifierTypeESG_yEEEERKNSB_12ClientOriginEONS_17CompletionHandlerIFvNSJ_INSD_INS8_25StorageAreaIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEEENS_7HashMapINS_6StringESX_NS_11DefaultHashISX_EENS_10HashTraitsISX_EES11_NS_15HashTableTraitsELNS_17ShouldValidateKeyE1ENS_10FastMallocEEEyEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSV_S15_yEED1Ev(void *a1)
{
  *a1 = &unk_1F10F1560;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21NetworkStorageManager20ConnectToStorageAreaENS2_10ConnectionEN6WebKit21NetworkStorageManagerES9_FvRS7_N7WebCore11StorageTypeENS_23ObjectIdentifierGenericINS8_28StorageAreaMapIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSt3__18optionalINSD_INS8_30StorageNamespaceIdentifierTypeESG_yEEEERKNSB_12ClientOriginEONS_17CompletionHandlerIFvNSJ_INSD_INS8_25StorageAreaIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEEENS_7HashMapINS_6StringESX_NS_11DefaultHashISX_EENS_10HashTraitsISX_EES11_NS_15HashTableTraitsELNS_17ShouldValidateKeyE1ENS_10FastMallocEEEyEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSV_S15_yEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F1560;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21NetworkStorageManager20ConnectToStorageAreaENS2_10ConnectionEN6WebKit21NetworkStorageManagerES9_FvRS7_N7WebCore11StorageTypeENS_23ObjectIdentifierGenericINS8_28StorageAreaMapIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSt3__18optionalINSD_INS8_30StorageNamespaceIdentifierTypeESG_yEEEERKNSB_12ClientOriginEONS_17CompletionHandlerIFvNSJ_INSD_INS8_25StorageAreaIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEEENS_7HashMapINS_6StringESX_NS_11DefaultHashISX_EENS_10HashTraitsISX_EES11_NS_15HashTableTraitsELNS_17ShouldValidateKeyE1ENS_10FastMallocEEEyEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSV_S15_yEE4callESV_S15_y(uint64_t a1, uint64_t a2, uint64_t a3, void **a4, uint64_t a5)
{
  v7[0] = a2;
  v7[1] = a3;
  v6 = a5;
  return IPC::Connection::sendAsyncReply<Messages::NetworkStorageManager::ConnectToStorageArea,std::optional<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,unsigned long long>(*(a1 + 16), *(a1 + 8), v7, a4, &v6);
}

IPC::Encoder *IPC::Connection::sendAsyncReply<Messages::NetworkStorageManager::ConnectToStorageArea,std::optional<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,unsigned long long>(uint64_t *a1, void *a2, uint64_t a3, void **a4, uint64_t *a5)
{
  v10 = IPC::Encoder::operator new(0x238, a2);
  *v10 = 3434;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 1) = a2;
  *(v10 + 68) = 0;
  *(v10 + 70) = 0;
  *(v10 + 69) = 0;
  IPC::Encoder::encodeHeader(v10);
  v15 = v10;
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,std::optional<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(v10, a3);
  IPC::ArgumentCoder<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,void>::encode<IPC::Encoder,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>(v10, a4);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v10, *a5);
  IPC::Connection::sendMessageImpl(a1, &v15, 0, 0);
  result = v15;
  v15 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v11);
    return bmalloc::api::tzoneFree(v13, v14);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,std::optional<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    v11 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v11);
    if (*(a2 + 8))
    {
      return IPC::ArgumentCoder<WebKit::CallbackID,void>::encode(a1, a2);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::callMemberFunction<WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(IPC::Connection &,WebCore::StorageType,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::StorageNamespaceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ClientOrigin const&,WTF::CompletionHandler<void ()(std::optional<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,unsigned long long)> &&),std::tuple<WebCore::StorageType,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::StorageNamespaceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ClientOrigin>,void ()(std::optional<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,unsigned long long)>(WebKit::NetworkStorageManager *,void ()(IPC::Connection &,WebCore::StorageType,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::StorageNamespaceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ClientOrigin const&,WTF::CompletionHandler<void ()(std::optional<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,unsigned long long)> &&) WebKit::NetworkStorageManager::*,IPC::Connection &,std::tuple<WebCore::StorageType,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::StorageNamespaceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ClientOrigin> &&,WTF::CompletionHandler<void ()(std::optional<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,unsigned long long)> &&)::{lambda(WebKit::NetworkStorageManager &&)#1}::operator()<WebCore::StorageType,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::StorageNamespaceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ClientOrigin>( v5,  v6,  v7,  v8,  v9,  v10);
    }
  }

  else
  {
    v12 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v12);
  }
}

uint64_t IPC::callMemberFunction<WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(IPC::Connection &,WebCore::StorageType,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::StorageNamespaceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ClientOrigin const&,WTF::CompletionHandler<void ()(std::optional<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,unsigned long long)> &&),std::tuple<WebCore::StorageType,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::StorageNamespaceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ClientOrigin>,void ()(std::optional<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,unsigned long long)>(WebKit::NetworkStorageManager *,void ()(IPC::Connection &,WebCore::StorageType,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::StorageNamespaceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ClientOrigin const&,WTF::CompletionHandler<void ()(std::optional<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,unsigned long long)> &&) WebKit::NetworkStorageManager::*,IPC::Connection &,std::tuple<WebCore::StorageType,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::StorageNamespaceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ClientOrigin> &&,WTF::CompletionHandler<void ()(std::optional<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,unsigned long long)> &&)::{lambda(WebKit::NetworkStorageManager &&)#1}::operator()<WebCore::StorageType,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::StorageNamespaceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ClientOrigin>(uint64_t a1, unsigned __int8 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a1 + 8);
  v8 = *v6;
  v7 = *(v6 + 8);
  v9 = (**a1 + (v7 >> 1));
  if (v7)
  {
    v8 = *(*v9 + v8);
  }

  return v8(v9, *(a1 + 16), a2, a3, a4, a5, a6, *(a1 + 24));
}

uint64_t std::optional<std::tuple<WebCore::StorageType,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::StorageNamespaceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ClientOrigin>>::~optional(uint64_t a1, WTF::StringImpl *a2)
{
  if (*(a1 + 96) == 1)
  {
    if (!*(a1 + 88))
    {
      v3 = *(a1 + 72);
      *(a1 + 72) = 0;
      if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v3, a2);
      }

      v4 = *(a1 + 64);
      *(a1 + 64) = 0;
      if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v4, a2);
      }
    }

    *(a1 + 88) = -1;
    if (!*(a1 + 56))
    {
      v5 = *(a1 + 40);
      *(a1 + 40) = 0;
      if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, a2);
      }

      v6 = *(a1 + 32);
      *(a1 + 32) = 0;
      if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, a2);
      }
    }

    *(a1 + 56) = -1;
  }

  return a1;
}

uint64_t IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(IPC::Decoder *a1)
{
  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if ((v3 & 1) == 0)
  {
    v5 = *a1;
    v4 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v6 = *(a1 + 3);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21NetworkStorageManager7SetItemENS2_10ConnectionEN6WebKit21NetworkStorageManagerES9_FvRS7_NS_23ObjectIdentifierGenericINS8_25StorageAreaIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEENSB_INS8_29StorageAreaImplIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_6StringESL_SL_ONS_17CompletionHandlerIFvbONS_7HashMapISK_SK_NS_11DefaultHashISK_EENS_10HashTraitsISK_EESR_NS_15HashTableTraitsELNS_17ShouldValidateKeyE1ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbSW_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F1588;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21NetworkStorageManager7SetItemENS2_10ConnectionEN6WebKit21NetworkStorageManagerES9_FvRS7_NS_23ObjectIdentifierGenericINS8_25StorageAreaIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEENSB_INS8_29StorageAreaImplIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_6StringESL_SL_ONS_17CompletionHandlerIFvbONS_7HashMapISK_SK_NS_11DefaultHashISK_EENS_10HashTraitsISK_EESR_NS_15HashTableTraitsELNS_17ShouldValidateKeyE1ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbSW_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F1588;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21NetworkStorageManager7SetItemENS2_10ConnectionEN6WebKit21NetworkStorageManagerES9_FvRS7_NS_23ObjectIdentifierGenericINS8_25StorageAreaIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEENSB_INS8_29StorageAreaImplIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_6StringESL_SL_ONS_17CompletionHandlerIFvbONS_7HashMapISK_SK_NS_11DefaultHashISK_EENS_10HashTraitsISK_EESR_NS_15HashTableTraitsELNS_17ShouldValidateKeyE1ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbSW_EE4callEbSW_(uint64_t a1, void *a2, void **a3)
{
  v12 = a2;
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 3453;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = v5;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v13 = v6;
  v7 = IPC::Encoder::operator<<<BOOL>(v6, &v12);
  IPC::ArgumentCoder<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,void>::encode<IPC::Encoder,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>(v7, a3);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21NetworkStorageManager10RemoveItemENS2_10ConnectionEN6WebKit21NetworkStorageManagerES9_FvRS7_NS_23ObjectIdentifierGenericINS8_25StorageAreaIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEENSB_INS8_29StorageAreaImplIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_6StringESL_ONS_17CompletionHandlerIFvbONS_7HashMapISK_SK_NS_11DefaultHashISK_EENS_10HashTraitsISK_EESR_NS_15HashTableTraitsELNS_17ShouldValidateKeyE1ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbSW_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F15B0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21NetworkStorageManager10RemoveItemENS2_10ConnectionEN6WebKit21NetworkStorageManagerES9_FvRS7_NS_23ObjectIdentifierGenericINS8_25StorageAreaIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEENSB_INS8_29StorageAreaImplIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_6StringESL_ONS_17CompletionHandlerIFvbONS_7HashMapISK_SK_NS_11DefaultHashISK_EENS_10HashTraitsISK_EESR_NS_15HashTableTraitsELNS_17ShouldValidateKeyE1ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbSW_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F15B0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21NetworkStorageManager10RemoveItemENS2_10ConnectionEN6WebKit21NetworkStorageManagerES9_FvRS7_NS_23ObjectIdentifierGenericINS8_25StorageAreaIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEENSB_INS8_29StorageAreaImplIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_6StringESL_ONS_17CompletionHandlerIFvbONS_7HashMapISK_SK_NS_11DefaultHashISK_EENS_10HashTraitsISK_EESR_NS_15HashTableTraitsELNS_17ShouldValidateKeyE1ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbSW_EE4callEbSW_(uint64_t a1, void *a2, void **a3)
{
  v12 = a2;
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 3450;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = v5;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v13 = v6;
  v7 = IPC::Encoder::operator<<<BOOL>(v6, &v12);
  IPC::ArgumentCoder<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,void>::encode<IPC::Encoder,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>(v7, a3);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21NetworkStorageManager5ClearENS2_10ConnectionEN6WebKit21NetworkStorageManagerES9_FvRS7_NS_23ObjectIdentifierGenericINS8_25StorageAreaIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEENSB_INS8_29StorageAreaImplIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_6StringEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10F15D8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21NetworkStorageManager5ClearENS2_10ConnectionEN6WebKit21NetworkStorageManagerES9_FvRS7_NS_23ObjectIdentifierGenericINS8_25StorageAreaIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEENSB_INS8_29StorageAreaImplIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_6StringEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F15D8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21NetworkStorageManager5ClearENS2_10ConnectionEN6WebKit21NetworkStorageManagerES9_FvRS7_NS_23ObjectIdentifierGenericINS8_25StorageAreaIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEENSB_INS8_29StorageAreaImplIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_6StringEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3431;
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

WTF::StringImpl *IPC::Decoder::decode<std::tuple<WebCore::IDBOpenRequestData>>(uint64_t a1, IPC::Decoder *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  IPC::ArgumentCoder<WebCore::IDBOpenRequestData,void>::decode(a2, &v21);
  if ((v33 & 1) == 0)
  {
    v15 = *a2;
    v16 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v17 = *(a2 + 3);
    v18 = !v17 || v16 == 0;
    if (v18 || ((*(*v17 + 16))(v17, v15), (v33 & 1) == 0))
    {
      *a1 = 0;
      *(a1 + 120) = 0;
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
  }

  *a1 = v21;
  v5 = v23;
  v23 = 0;
  *(a1 + 16) = v22;
  *(a1 + 24) = v5;
  *(a1 + 32) = 0;
  *(a1 + 56) = -1;
  v6 = v26;
  if (!v26)
  {
    v7 = *v24;
    v24[0] = 0;
    v24[1] = 0;
    *(a1 + 32) = v7;
    *(a1 + 48) = v25;
LABEL_4:
    *(a1 + 56) = v6;
    goto LABEL_5;
  }

  if (v26 != 255)
  {
    *(a1 + 32) = *v24;
    goto LABEL_4;
  }

LABEL_5:
  *(a1 + 64) = 0;
  *(a1 + 88) = -1;
  v8 = v29;
  if (!v29)
  {
    v9 = *v27;
    v27[0] = 0;
    v27[1] = 0;
    *(a1 + 64) = v9;
    *(a1 + 80) = v28;
    goto LABEL_7;
  }

  if (v29 != 255)
  {
    *(a1 + 64) = *v27;
LABEL_7:
    *(a1 + 88) = v8;
    *(a1 + 96) = v30;
    *(a1 + 104) = v31;
    *(a1 + 112) = v32;
    *(a1 + 120) = 1;
    if (!v8)
    {
      v10 = v27[1];
      v27[1] = 0;
      if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v10, v4);
      }

      v11 = v27[0];
      v27[0] = 0;
      if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v11, v4);
      }
    }

    goto LABEL_14;
  }

  *(a1 + 96) = v30;
  *(a1 + 104) = v31;
  *(a1 + 112) = v32;
  *(a1 + 120) = 1;
LABEL_14:
  v29 = -1;
  if (!v26)
  {
    v12 = v24[1];
    v24[1] = 0;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v4);
    }

    v13 = v24[0];
    v24[0] = 0;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v4);
    }
  }

  v26 = -1;
  result = v23;
  v23 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v4);
    }
  }

  return result;
}

uint64_t IPC::Decoder::decode<WebCore::IndexKey>(_BYTE *a1, uint64_t *a2)
{
  result = IPC::ArgumentCoder<WebCore::IndexKey,void>::decode(a2, a1);
  if ((a1[40] & 1) == 0)
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

uint64_t mpark::detail::move_assignment<mpark::detail::traits<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1>::move_assignment(uint64_t a1, uint64_t *a2)
{
  *a1 = 0;
  *(a1 + 16) = -1;
  v3 = *(a2 + 16);
  if (v3 != 255)
  {
    if (*(a2 + 16))
    {
      *a1 = 0;
      *(a1 + 8) = 0;
      WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1, a2);
      LOBYTE(v3) = *(a2 + 16);
    }

    else
    {
      v6 = *a2;
      *a2 = 0;
      *a1 = v6;
    }

    *(a1 + 16) = v3;
  }

  return a1;
}

uint64_t mpark::detail::move_assignment<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1>::move_assignment(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 32) = -1;
  if (*(a2 + 32) <= 1u)
  {
    if (*(a2 + 32))
    {
      *a1 = *a2;
      *(a1 + 8) = 0;
      v4 = (a1 + 8);
      *(a1 + 24) = -1;
      LODWORD(v5) = *(a2 + 24);
      if (v5 > 4)
      {
        if (*(a2 + 24) <= 6u)
        {
          if (v5 == 5)
          {
            *v4 = *(a2 + 8);
            LOBYTE(v5) = 5;
          }

          else
          {
            v5 = *(a2 + 8);
            *(a2 + 8) = 0;
            *v4 = v5;
            LOBYTE(v5) = 6;
          }
        }

        else if ((v5 - 7) >= 2)
        {
          goto LABEL_22;
        }
      }

      else if (*(a2 + 24) <= 1u)
      {
        if (!*(a2 + 24))
        {
          *v4 = 0;
        }
      }

      else if (v5 == 2)
      {
        *v4 = 0;
        *(a1 + 16) = 0;
        WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(v4, (a2 + 8));
        LOBYTE(v5) = *(a2 + 24);
      }

      else if (v5 == 3)
      {
        v5 = *(a2 + 8);
        *(a2 + 8) = 0;
        *v4 = v5;
        LOBYTE(v5) = 3;
      }

      else
      {
        *v4 = *(a2 + 8);
        LOBYTE(v5) = 4;
      }

      *(a1 + 24) = v5;
    }

    else
    {
      *a1 = 0;
    }

LABEL_22:
    *(a1 + 32) = *(a2 + 32);
    return a1;
  }

  if (*(a2 + 32) == 2)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1, a2);
    goto LABEL_22;
  }

  return a1;
}

uint64_t mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1> &>(uint64_t result, WTF::StringImpl *a2)
{
  v2 = *(result + 32);
  if (v2 == 255)
  {
    v2 = -1;
  }

  if (v2)
  {
    v3 = result;
    if (v2 == 2)
    {

      return WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(result, a2);
    }

    else
    {
      v4 = *(result + 24);
      if (v4 <= 2)
      {
        if (v4 >= 2)
        {
          result = WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(result + 8, a2);
        }
      }

      else if (v4 <= 8 && ((1 << v4) & 0x1B0) == 0)
      {
        if (v4 == 3)
        {
          result = *(result + 8);
          *(v3 + 8) = 0;
          if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            result = WTF::StringImpl::destroy(result, a2);
          }
        }

        else if (v4 == 6)
        {
          result = *(result + 8);
          *(v3 + 8) = 0;
          if (result)
          {
            result = WTF::ThreadSafeRefCounted<WebCore::ThreadSafeDataBufferImpl,(WTF::DestructionThread)0>::deref(result, a2);
          }
        }
      }

      *(v3 + 24) = -1;
    }
  }

  return result;
}

unint64_t IPC::Decoder::decode<std::tuple<WebCore::IDBResourceIdentifier>>(uint64_t a1, uint64_t *a2)
{
  result = IPC::Decoder::decode<WebCore::IDBResourceIdentifier>(a2, &v9);
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

unint64_t IPC::Decoder::decode<WebCore::IDBRequestData>(_BYTE *a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<WebCore::IDBRequestData,void>::decode(a2, a1);
  if ((a1[104] & 1) == 0)
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

IPC::Decoder *IPC::Decoder::decode<std::tuple<WebCore::IDBRequestData,WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String>>(uint64_t a1, IPC::Decoder *a2)
{
  IPC::Decoder::decode<WebCore::IDBRequestData>(v18, a2);
  if (v20 == 1 && (v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a2), (v5 & 1) != 0))
  {
    v6 = v4;
    result = IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a2, &v21);
    if ((v22 & 1) == 0)
    {
      goto LABEL_8;
    }

    while ((v20 & 1) == 0)
    {
      __break(1u);
LABEL_8:
      v12 = *a2;
      v13 = *(a2 + 1);
      *a2 = 0;
      *(a2 + 1) = 0;
      v14 = *(a2 + 3);
      if (v14)
      {
        if (v13)
        {
          result = (*(*v14 + 16))(v14, v12);
          if (v22)
          {
            continue;
          }
        }
      }

      goto LABEL_9;
    }

    v8 = v18[5];
    *(a1 + 64) = v18[4];
    *(a1 + 80) = v8;
    v9 = v19;
    v10 = v18[1];
    *a1 = v18[0];
    *(a1 + 16) = v10;
    v11 = v18[3];
    *(a1 + 32) = v18[2];
    *(a1 + 48) = v11;
    *(a1 + 96) = v9;
    *(a1 + 104) = v6;
    *(a1 + 112) = v21;
    *(a1 + 120) = 1;
  }

  else
  {
LABEL_9:
    *a1 = 0;
    *(a1 + 120) = 0;
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

WebCore::IndexKey *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IndexKey>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IndexKey>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IndexKey,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebCore::IndexKey>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = *(v2 - 4);
    v4 = *(v2 - 12);
    if (v3)
    {
      v5 = v3 << (6 * v4 >= (2 * v3));
      goto LABEL_6;
    }
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  v5 = 8;
LABEL_6:
  result = WTF::fastMalloc((48 * v5 + 16));
  v8 = result;
  v9 = result + 16;
  if (v5)
  {
    v10 = v5;
    result = (result + 24);
    do
    {
      *(result - 1) = 0;
      result = (WebCore::IndexKey::IndexKey(result) + 48);
      --v10;
    }

    while (v10);
  }

  *a1 = v9;
  *(v8 + 2) = v5 - 1;
  *(v8 + 3) = v5;
  *v8 = 0;
  *(v8 + 1) = v4;
  if (v3)
  {
    for (i = 0; i != v3; ++i)
    {
      v12 = (v2 + 48 * i);
      v13 = *v12;
      if (*v12 != -1)
      {
        if (v13)
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

          v16 = (v13 + ~(v13 << 32)) ^ ((v13 + ~(v13 << 32)) >> 22);
          v17 = 9 * ((v16 + ~(v16 << 13)) ^ ((v16 + ~(v16 << 13)) >> 8));
          v18 = (v17 ^ (v17 >> 15)) + ~((v17 ^ (v17 >> 15)) << 27);
          v19 = v15 & ((v18 >> 31) ^ v18);
          v20 = 1;
          do
          {
            v21 = v14 + 48 * v19;
            v19 = (v19 + v20++) & v15;
          }

          while (*v21);
          if (*(v21 + 40) != 255)
          {
            mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1> &>(v21 + 8, v7);
          }

          *(v21 + 40) = -1;
          *v21 = *v12;
          mpark::detail::move_assignment<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1>::move_assignment(v21 + 8, (v12 + 1));
          if (*(v12 + 40) != 255)
          {
            mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1> &>((v12 + 1), v7);
          }

          *(v12 + 40) = -1;
        }

        else
        {
          if (*(v12 + 40) != 255)
          {
            mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1> &>((v12 + 1), v7);
          }

          *(v12 + 40) = -1;
        }
      }
    }
  }

  else if (!v2)
  {
    return result;
  }

  return WTF::fastFree((v2 - 16), v7);
}

uint64_t WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(uint64_t a1, WTF::StringImpl *a2)
{
  v4 = *(a1 + 12);
  if (v4)
  {
    v5 = 32 * v4;
    v6 = (*a1 + 24);
    do
    {
      v7 = (v6 - 16);
      v8 = *v6;
      if (v8 <= 2)
      {
        if (v8 >= 2)
        {
          WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v7, a2);
        }
      }

      else if (v8 <= 8 && ((1 << v8) & 0x1B0) == 0)
      {
        if (v8 == 3)
        {
          v10 = *v7;
          *v7 = 0;
          if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v10, a2);
          }
        }

        else if (v8 == 6)
        {
          v11 = *v7;
          *v7 = 0;
          if (v11)
          {
            WTF::ThreadSafeRefCounted<WebCore::ThreadSafeDataBufferImpl,(WTF::DestructionThread)0>::deref(v11, a2);
          }
        }
      }

      *v6 = -1;
      v6 += 32;
      v5 -= 32;
    }

    while (v5);
  }

  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1, a2);
  return a1;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IndexKey>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IndexKey>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IndexKey,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebCore::IndexKey>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = (a1 + 40);
    do
    {
      if (*(v4 - 5) != -1)
      {
        if (*v4 != 255)
        {
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1> &>((v4 - 32), a2);
        }

        *v4 = -1;
      }

      v4 += 48;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

uint64_t WebCore::IDBKeyRangeData::IDBKeyRangeData(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 24) = -1;
  LODWORD(v5) = *(a2 + 24);
  if (v5 <= 4)
  {
    if (*(a2 + 24) <= 1u)
    {
      if (!*(a2 + 24))
      {
        *v4 = 0;
      }
    }

    else if (v5 == 2)
    {
      *v4 = 0;
      v4[1] = 0;
      WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(v4, (a2 + 8));
      LOBYTE(v5) = *(a2 + 24);
    }

    else if (v5 == 3)
    {
      v5 = *(a2 + 8);
      *(a2 + 8) = 0;
      *v4 = v5;
      LOBYTE(v5) = 3;
    }

    else
    {
      *v4 = *(a2 + 8);
      LOBYTE(v5) = 4;
    }

    goto LABEL_16;
  }

  if (*(a2 + 24) <= 6u)
  {
    if (v5 == 5)
    {
      *v4 = *(a2 + 8);
      LOBYTE(v5) = 5;
    }

    else
    {
      v5 = *(a2 + 8);
      *(a2 + 8) = 0;
      *v4 = v5;
      LOBYTE(v5) = 6;
    }

    goto LABEL_16;
  }

  if ((v5 - 7) < 2)
  {
LABEL_16:
    *(a1 + 24) = v5;
  }

  v6 = *(a2 + 32);
  *(a1 + 40) = 0;
  v7 = (a1 + 40);
  *(a1 + 32) = v6;
  *(a1 + 56) = -1;
  LODWORD(v8) = *(a2 + 56);
  if (v8 > 4)
  {
    if (*(a2 + 56) <= 6u)
    {
      if (v8 == 5)
      {
        *v7 = *(a2 + 40);
        LOBYTE(v8) = 5;
      }

      else
      {
        v8 = *(a2 + 40);
        *(a2 + 40) = 0;
        *v7 = v8;
        LOBYTE(v8) = 6;
      }
    }

    else if ((v8 - 7) >= 2)
    {
      goto LABEL_33;
    }
  }

  else if (*(a2 + 56) <= 1u)
  {
    if (!*(a2 + 56))
    {
      *v7 = 0;
    }
  }

  else if (v8 == 2)
  {
    *v7 = 0;
    *(a1 + 48) = 0;
    WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(v7, (a2 + 40));
    LOBYTE(v8) = *(a2 + 56);
  }

  else if (v8 == 3)
  {
    v8 = *(a2 + 40);
    *(a2 + 40) = 0;
    *v7 = v8;
    LOBYTE(v8) = 3;
  }

  else
  {
    *v7 = *(a2 + 40);
    LOBYTE(v8) = 4;
  }

  *(a1 + 56) = v8;
LABEL_33:
  *(a1 + 64) = *(a2 + 64);
  return a1;
}

void WebCore::IDBKeyRangeData::~IDBKeyRangeData(WebCore::IDBKeyRangeData *this, WTF::StringImpl *a2)
{
  v3 = *(this + 56);
  if (v3 <= 2)
  {
    if (v3 >= 2)
    {
      WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 40, a2);
    }
  }

  else if (v3 <= 8 && ((1 << v3) & 0x1B0) == 0)
  {
    if (v3 == 3)
    {
      v5 = *(this + 5);
      *(this + 5) = 0;
      if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, a2);
      }
    }

    else if (v3 == 6)
    {
      v6 = *(this + 5);
      *(this + 5) = 0;
      if (v6)
      {
        WTF::ThreadSafeRefCounted<WebCore::ThreadSafeDataBufferImpl,(WTF::DestructionThread)0>::deref(v6, a2);
      }
    }
  }

  *(this + 56) = -1;
  v7 = *(this + 24);
  if (v7 <= 2)
  {
    if (v7 >= 2)
    {
      WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 8, a2);
    }
  }

  else if (v7 <= 8 && ((1 << v7) & 0x1B0) == 0)
  {
    if (v7 == 3)
    {
      v9 = *(this + 1);
      *(this + 1) = 0;
      if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v9, a2);
      }
    }

    else if (v7 == 6)
    {
      v10 = *(this + 1);
      *(this + 1) = 0;
      if (v10)
      {
        WTF::ThreadSafeRefCounted<WebCore::ThreadSafeDataBufferImpl,(WTF::DestructionThread)0>::deref(v10, a2);
      }
    }
  }

  *(this + 24) = -1;
}

void IPC::Decoder::decode<std::tuple<WebCore::IDBRequestData,WebCore::IDBKeyRangeData>>(uint64_t a1, IPC::Decoder *a2)
{
  IPC::Decoder::decode<WebCore::IDBRequestData>(v15, a2);
  if ((v17 & 1) == 0)
  {
LABEL_8:
    *a1 = 0;
    *(a1 + 176) = 0;
LABEL_9:
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
      v14 = *(*v12 + 16);

      v14();
    }

    return;
  }

  v4 = IPC::ArgumentCoder<WebCore::IDBKeyRangeData,void>::decode(a2, v18);
  if ((v19 & 1) == 0)
  {
    v5 = *a2;
    v6 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v4 = *(a2 + 3);
    if (v4)
    {
      goto LABEL_17;
    }

    goto LABEL_8;
  }

  while ((v17 & 1) == 0)
  {
    __break(1u);
LABEL_17:
    if (v6)
    {
      v4 = (*(*v4 + 16))(v4, v5);
      if (v19)
      {
        continue;
      }
    }

    goto LABEL_8;
  }

  v7 = v15[5];
  *(a1 + 64) = v15[4];
  *(a1 + 80) = v7;
  *(a1 + 96) = v16;
  v8 = v15[1];
  *a1 = v15[0];
  *(a1 + 16) = v8;
  v9 = v15[3];
  *(a1 + 32) = v15[2];
  *(a1 + 48) = v9;
  WebCore::IDBKeyRangeData::IDBKeyRangeData(a1 + 104, v18);
  *(a1 + 176) = 1;
  if (v19)
  {
    WebCore::IDBKeyRangeData::~IDBKeyRangeData(v18, v10);
    if ((*(a1 + 176) & 1) == 0)
    {
      goto LABEL_9;
    }
  }
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21NetworkStorageManager21CacheStorageOpenCacheENS2_10ConnectionEN6WebKit21NetworkStorageManagerES9_FvRKN7WebCore12ClientOriginERKNS_6StringEONS_17CompletionHandlerIFvRKNSt12experimental15fundamentals_v38expectedINSA_14DOMCacheEngine30CacheIdentifierOperationResultENSL_5ErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSQ_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F1600;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21NetworkStorageManager21CacheStorageOpenCacheENS2_10ConnectionEN6WebKit21NetworkStorageManagerES9_FvRKN7WebCore12ClientOriginERKNS_6StringEONS_17CompletionHandlerIFvRKNSt12experimental15fundamentals_v38expectedINSA_14DOMCacheEngine30CacheIdentifierOperationResultENSL_5ErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSQ_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F1600;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21NetworkStorageManager21CacheStorageOpenCacheENS2_10ConnectionEN6WebKit21NetworkStorageManagerES9_FvRKN7WebCore12ClientOriginERKNS_6StringEONS_17CompletionHandlerIFvRKNSt12experimental15fundamentals_v38expectedINSA_14DOMCacheEngine30CacheIdentifierOperationResultENSL_5ErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSQ_EE4callESQ_(uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3425;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v11 = v5;
  if (a2[24])
  {
    v13 = 0;
    v6 = IPC::Encoder::operator<<<BOOL>(v5, &v13);
    if (a2[24] == 1)
    {
      IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v5, *a2);
      goto LABEL_6;
    }

LABEL_9:
    mpark::throw_bad_variant_access(v6);
  }

  v12 = 1;
  v6 = IPC::Encoder::operator<<<BOOL>(v5, &v12);
  if (a2[24])
  {
    goto LABEL_9;
  }

  IPC::ArgumentCoder<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,void>::encode(v5, a2);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21NetworkStorageManager23CacheStorageRemoveCacheENS2_10ConnectionEN6WebKit21NetworkStorageManagerES9_FvN7WebCore16ProcessQualifiedINS_23ObjectIdentifierGenericINSA_22DOMCacheIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvRKNSt12experimental15fundamentals_v38expectedIbNSA_14DOMCacheEngine5ErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSQ_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F1628;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21NetworkStorageManager23CacheStorageRemoveCacheENS2_10ConnectionEN6WebKit21NetworkStorageManagerES9_FvN7WebCore16ProcessQualifiedINS_23ObjectIdentifierGenericINSA_22DOMCacheIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvRKNSt12experimental15fundamentals_v38expectedIbNSA_14DOMCacheEngine5ErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSQ_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F1628;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21NetworkStorageManager23CacheStorageRemoveCacheENS2_10ConnectionEN6WebKit21NetworkStorageManagerES9_FvN7WebCore16ProcessQualifiedINS_23ObjectIdentifierGenericINSA_22DOMCacheIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvRKNSt12experimental15fundamentals_v38expectedIbNSA_14DOMCacheEngine5ErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSQ_EE4callESQ_(uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3427;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v11 = v5;
  if (a2[1])
  {
    v13 = 0;
    v6 = IPC::Encoder::operator<<<BOOL>(v5, &v13);
    if (a2[1] == 1)
    {
      IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v5, *a2);
      goto LABEL_6;
    }

LABEL_9:
    mpark::throw_bad_variant_access(v6);
  }

  v12 = 1;
  v6 = IPC::Encoder::operator<<<BOOL>(v5, &v12);
  if (a2[1])
  {
    goto LABEL_9;
  }

  IPC::Encoder::operator<<<BOOL>(v5, a2);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21NetworkStorageManager21CacheStorageAllCachesENS2_10ConnectionEN6WebKit21NetworkStorageManagerES9_FvRKN7WebCore12ClientOriginEyONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINSA_14DOMCacheEngine10CacheInfosENSI_5ErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSM_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F1650;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21NetworkStorageManager21CacheStorageAllCachesENS2_10ConnectionEN6WebKit21NetworkStorageManagerES9_FvRKN7WebCore12ClientOriginEyONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINSA_14DOMCacheEngine10CacheInfosENSI_5ErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSM_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F1650;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21NetworkStorageManager21CacheStorageAllCachesENS2_10ConnectionEN6WebKit21NetworkStorageManagerES9_FvRKN7WebCore12ClientOriginEyONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINSA_14DOMCacheEngine10CacheInfosENSI_5ErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSM_EE4callESM_(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3423;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v11 = v5;
  if (*(a2 + 24))
  {
    v13 = 0;
    v6 = IPC::Encoder::operator<<<BOOL>(v5, &v13);
    if (*(a2 + 24) == 1)
    {
      IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v5, *a2);
      goto LABEL_6;
    }

LABEL_9:
    mpark::throw_bad_variant_access(v6);
  }

  v12 = 1;
  v6 = IPC::Encoder::operator<<<BOOL>(v5, &v12);
  if (*(a2 + 24))
  {
    goto LABEL_9;
  }

  IPC::VectorArgumentCoder<false,WebKit::WebScriptMessageHandlerData,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebKit::WebScriptMessageHandlerData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(v5, a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v5, a2[2]);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21NetworkStorageManager27CacheStorageRetrieveRecordsENS2_10ConnectionEN6WebKit21NetworkStorageManagerES9_FvN7WebCore16ProcessQualifiedINS_23ObjectIdentifierGenericINSA_22DOMCacheIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEEEONSA_22RetrieveRecordsOptionsEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINS_6VectorINSA_14DOMCacheEngine17CrossThreadRecordELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEENSP_5ErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSW_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F1678;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21NetworkStorageManager27CacheStorageRetrieveRecordsENS2_10ConnectionEN6WebKit21NetworkStorageManagerES9_FvN7WebCore16ProcessQualifiedINS_23ObjectIdentifierGenericINSA_22DOMCacheIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEEEONSA_22RetrieveRecordsOptionsEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINS_6VectorINSA_14DOMCacheEngine17CrossThreadRecordELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEENSP_5ErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSW_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F1678;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21NetworkStorageManager27CacheStorageRetrieveRecordsENS2_10ConnectionEN6WebKit21NetworkStorageManagerES9_FvN7WebCore16ProcessQualifiedINS_23ObjectIdentifierGenericINSA_22DOMCacheIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEEEONSA_22RetrieveRecordsOptionsEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINS_6VectorINSA_14DOMCacheEngine17CrossThreadRecordELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEENSP_5ErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSW_EE4callESW_(uint64_t a1, unsigned int *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3430;
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
      IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v5, *a2);
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
    v9 = 608 * v7;
    do
    {
      IPC::ArgumentCoder<WebCore::DOMCacheEngine::CrossThreadRecord,void>::encode(v5, v8);
      v8 += 608;
      v9 -= 608;
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21NetworkStorageManager25CacheStorageRemoveRecordsENS2_10ConnectionEN6WebKit21NetworkStorageManagerES9_FvN7WebCore16ProcessQualifiedINS_23ObjectIdentifierGenericINSA_22DOMCacheIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEEEONSA_15ResourceRequestEONSA_17CacheQueryOptionsEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINS_6VectorIyLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEENSA_14DOMCacheEngine5ErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSX_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F16A0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21NetworkStorageManager25CacheStorageRemoveRecordsENS2_10ConnectionEN6WebKit21NetworkStorageManagerES9_FvN7WebCore16ProcessQualifiedINS_23ObjectIdentifierGenericINSA_22DOMCacheIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEEEONSA_15ResourceRequestEONSA_17CacheQueryOptionsEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINS_6VectorIyLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEENSA_14DOMCacheEngine5ErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSX_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F16A0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21NetworkStorageManager25CacheStorageRemoveRecordsENS2_10ConnectionEN6WebKit21NetworkStorageManagerES9_FvN7WebCore16ProcessQualifiedINS_23ObjectIdentifierGenericINSA_22DOMCacheIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEEEONSA_15ResourceRequestEONSA_17CacheQueryOptionsEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINS_6VectorIyLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEENSA_14DOMCacheEngine5ErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSX_EE4callESX_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3428;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error>,void>::encode<IPC::Encoder>(v5, a2);
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

uint64_t IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error>,void>::encode<IPC::Encoder>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v7 = 0;
    v4 = IPC::Encoder::operator<<<BOOL>(a1, &v7);
    if (*(a2 + 16) == 1)
    {
      return IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *a2);
    }

LABEL_7:
    mpark::throw_bad_variant_access(v4);
  }

  v6 = 1;
  v4 = IPC::Encoder::operator<<<BOOL>(a1, &v6);
  if (*(a2 + 16))
  {
    goto LABEL_7;
  }

  return IPC::ArgumentCoder<std::span<double const,18446744073709551615ul>,void>::encode<IPC::Encoder>(a1, *a2, *(a2 + 12));
}

uint64_t IPC::VectorArgumentCoder<false,WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>@<X0>(WTF::StringImpl **a1@<X0>, char *a2@<X8>, __n128 a3@<Q1>)
{
  v26 = *MEMORY[0x1E69E9840];
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
    v22 = a1[3];
    if (v22)
    {
      if (v5)
      {
        (*(*v22 + 16))(v22);
        v5 = a1[1];
      }
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_40;
  }

  a1[2] = (v6 + 1);
  if (v6)
  {
    v12 = *v6;
    v23 = 0uLL;
    if (v12 >= 0x6BC)
    {
      v13 = *a2;
      v19 = a2[16];
      while (1)
      {
        IPC::Decoder::decode<WebCore::DOMCacheEngine::CrossThreadRecord>(a1, v24);
        v20 = v25;
        if (v25 == 1)
        {
          if (v23.n128_u32[3] == v23.n128_u32[2])
          {
            WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::DOMCacheEngine::CrossThreadRecord>(&v23, v24);
          }

          else
          {
            WebCore::DOMCacheEngine::CrossThreadRecord::CrossThreadRecord(v23.n128_u64[0] + 608 * v23.n128_u32[3]++, v24);
          }
        }

        else
        {
          v19 = 0;
          v13 = 0;
        }

        if (v25 == 1)
        {
          WebCore::DOMCacheEngine::CrossThreadRecord::~CrossThreadRecord(v24, v7);
        }

        if ((v20 & 1) == 0)
        {
          break;
        }

        if (!--v12)
        {
          WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v23, v23.n128_u32[3]);
          *a2 = v23.n128_u64[0];
          v21 = v23.n128_u64[1];
          v23 = 0uLL;
          *(a2 + 1) = v21;
          goto LABEL_22;
        }
      }

      a2[16] = v19;
    }

    else
    {
      if (!v12)
      {
        v16 = 0;
        v17 = 0;
LABEL_21:
        a3.n128_u64[0] = 0;
        v23 = a3;
        *a2 = v16;
        *(a2 + 1) = v17;
LABEL_22:
        a2[16] = 1;
        return WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v23, v7);
      }

      v23.n128_u32[2] = (226050911 * ((19 * v12) & 0x7FFFFFF)) >> 32;
      v23.n128_u64[0] = WTF::fastMalloc((608 * v12));
      v13 = *a2;
      v14 = a2[16];
      while (1)
      {
        IPC::Decoder::decode<WebCore::DOMCacheEngine::CrossThreadRecord>(a1, v24);
        v15 = v25;
        if (v25 == 1)
        {
          if (v23.n128_u32[3] == v23.n128_u32[2])
          {
            WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::DOMCacheEngine::CrossThreadRecord>(&v23, v24);
          }

          else
          {
            WebCore::DOMCacheEngine::CrossThreadRecord::CrossThreadRecord(v23.n128_u64[0] + 608 * v23.n128_u32[3]++, v24);
          }
        }

        else
        {
          v14 = 0;
          v13 = 0;
        }

        if (v25 == 1)
        {
          WebCore::DOMCacheEngine::CrossThreadRecord::~CrossThreadRecord(v24, v7);
        }

        if ((v15 & 1) == 0)
        {
          break;
        }

        if (!--v12)
        {
          v17 = v23.n128_u64[1];
          v16 = v23.n128_u64[0];
          goto LABEL_21;
        }
      }

      a2[16] = v14;
    }

    *a2 = v13;
    return WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v23, v7);
  }

LABEL_40:
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

void IPC::Decoder::decode<WebCore::DOMCacheEngine::CrossThreadRecord>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  IPC::ArgumentCoder<WebCore::DOMCacheEngine::CrossThreadRecord,void>::decode(a1, a2);
  if ((a2[608] & 1) == 0)
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

uint64_t WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::DOMCacheEngine::CrossThreadRecord>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  WebCore::DOMCacheEngine::CrossThreadRecord::CrossThreadRecord(*a1 + 608 * *(a1 + 12), v3);
  ++*(a1 + 12);
  return 1;
}

unint64_t WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 608 * *(a1 + 12) <= a3)
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

    WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    if (a2 >= 0x6BCA1B)
    {
      __break(0xC471u);
      JUMPOUT(0x19D9F1AD0);
    }

    v3 = *a1;
    v4 = (*a1 + 608 * *(a1 + 12));
    v5 = 608 * a2;
    v6 = WTF::fastMalloc((608 * a2));
    *(a1 + 8) = (226050911 * (v5 >> 5)) >> 32;
    *a1 = v6;
    WTF::VectorMover<false,WebCore::DOMCacheEngine::CrossThreadRecord>::move(v3, v4, v6);
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

void WTF::VectorMover<false,WebCore::DOMCacheEngine::CrossThreadRecord>::move(__int128 *a1, __int128 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      WebCore::DOMCacheEngine::CrossThreadRecord::CrossThreadRecord(a3, v5);
      WebCore::DOMCacheEngine::CrossThreadRecord::~CrossThreadRecord(v5, v6);
      a3 += 608;
      v5 += 38;
    }

    while (v5 != a2);
  }
}

void WebCore::DOMCacheEngine::CrossThreadRecord::~CrossThreadRecord(WebCore::DOMCacheEngine::CrossThreadRecord *this, WTF::StringImpl *a2)
{
  if (*(this + 592) > 1u)
  {
    if (*(this + 592) == 2)
    {
      v4 = *(this + 73);
      *(this + 73) = 0;
      if (v4)
      {
        if (atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v4 + 2);
          (*(*v4 + 8))(v4);
        }
      }
    }
  }

  else if (*(this + 592))
  {
    v3 = *(this + 73);
    *(this + 73) = 0;
    if (v3)
    {
      WTF::RefCounted<WebCore::FormData>::deref(v3);
    }
  }

  *(this + 592) = -1;
  WebCore::ResourceResponseData::~ResourceResponseData((this + 288), a2);
  v6 = *(this + 34);
  *(this + 34) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v5);
  }

  v7 = *(this + 29);
  *(this + 29) = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v5);
  }

  WebCore::ResourceRequest::~ResourceRequest((this + 24));
}

void WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(unsigned int *a1, unint64_t a2)
{
  if (a1[2] > a2)
  {
    if (a1[3] > a2)
    {
      WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrink(a1, a2);
    }

    v4 = *a1;
    if (a2)
    {
      if (a2 >= 0x6BCA1B)
      {
        __break(0xC471u);
        return;
      }

      v5 = a1[3];
      v6 = (608 * a2);
      v7 = WTF::fastMalloc(v6);
      a1[2] = (226050911 * (v6 >> 5)) >> 32;
      *a1 = v7;
      if (v7 != v4)
      {
        WTF::VectorMover<false,WebCore::DOMCacheEngine::CrossThreadRecord>::move(v4, &v4[38 * v5], v7);
      }
    }

    if (v4)
    {
      if (*a1 == v4)
      {
        *a1 = 0;
        a1[2] = 0;
      }

      WTF::fastFree(v4, a2);
    }
  }
}

unsigned int *WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrink(unsigned int *result, WTF::StringImpl *a2)
{
  v2 = result[3];
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
      result = (*result + 608 * a2);
      v5 = 608 * v2 - 608 * a2;
      do
      {
        WebCore::DOMCacheEngine::CrossThreadRecord::~CrossThreadRecord(result, a2);
        result = (v6 + 608);
        v5 -= 608;
      }

      while (v5);
    }

    v4[3] = v3;
  }

  return result;
}

uint64_t WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = *a1;
    v5 = 608 * v3;
    do
    {
      WebCore::DOMCacheEngine::CrossThreadRecord::~CrossThreadRecord(v4, a2);
      v4 = (v6 + 608);
      v5 -= 608;
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21NetworkStorageManager22CacheStoragePutRecordsENS2_10ConnectionEN6WebKit21NetworkStorageManagerES9_FvRS7_N7WebCore16ProcessQualifiedINS_23ObjectIdentifierGenericINSB_22DOMCacheIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEEEONS_6VectorINSB_14DOMCacheEngine17CrossThreadRecordELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINSJ_IyLm0ESM_Lm16ESN_EENSK_5ErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSX_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F16C8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21NetworkStorageManager22CacheStoragePutRecordsENS2_10ConnectionEN6WebKit21NetworkStorageManagerES9_FvRS7_N7WebCore16ProcessQualifiedINS_23ObjectIdentifierGenericINSB_22DOMCacheIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEEEONS_6VectorINSB_14DOMCacheEngine17CrossThreadRecordELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINSJ_IyLm0ESM_Lm16ESN_EENSK_5ErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSX_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F16C8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21NetworkStorageManager22CacheStoragePutRecordsENS2_10ConnectionEN6WebKit21NetworkStorageManagerES9_FvRS7_N7WebCore16ProcessQualifiedINS_23ObjectIdentifierGenericINSB_22DOMCacheIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEEEONS_6VectorINSB_14DOMCacheEngine17CrossThreadRecordELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINSJ_IyLm0ESM_Lm16ESN_EENSK_5ErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSX_EE4callESX_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3426;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error>,void>::encode<IPC::Encoder>(v5, a2);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21NetworkStorageManager37CacheStorageClearMemoryRepresentationENS2_10ConnectionEN6WebKit21NetworkStorageManagerES9_FvRKN7WebCore12ClientOriginEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10F16F0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21NetworkStorageManager37CacheStorageClearMemoryRepresentationENS2_10ConnectionEN6WebKit21NetworkStorageManagerES9_FvRKN7WebCore12ClientOriginEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F16F0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21NetworkStorageManager37CacheStorageClearMemoryRepresentationENS2_10ConnectionEN6WebKit21NetworkStorageManagerES9_FvRKN7WebCore12ClientOriginEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3424;
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21NetworkStorageManager26CacheStorageRepresentationENS2_10ConnectionEN6WebKit21NetworkStorageManagerES9_FvONS_17CompletionHandlerIFvRKNS_6StringEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSD_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F1718;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21NetworkStorageManager26CacheStorageRepresentationENS2_10ConnectionEN6WebKit21NetworkStorageManagerES9_FvONS_17CompletionHandlerIFvRKNS_6StringEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSD_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F1718;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages21NetworkStorageManager26CacheStorageRepresentationENS2_10ConnectionEN6WebKit21NetworkStorageManagerES9_FvONS_17CompletionHandlerIFvRKNS_6StringEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSD_EE4callESD_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3429;
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

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages21NetworkStorageManager24ConnectToStorageAreaSyncEN6WebKit21NetworkStorageManagerES8_FvRNS2_10ConnectionEN7WebCore11StorageTypeENS_23ObjectIdentifierGenericINS7_28StorageAreaMapIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSt3__18optionalINSD_INS7_30StorageNamespaceIdentifierTypeESG_yEEEERKNSB_12ClientOriginEONS_17CompletionHandlerIFvNSJ_INSD_INS7_25StorageAreaIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEEENS_7HashMapINS_6StringESX_NS_11DefaultHashISX_EENS_10HashTraitsISX_EES11_NS_15HashTableTraitsELNS_17ShouldValidateKeyE1ENS_10FastMallocEEEyEEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSV_S15_yEED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F1740;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages21NetworkStorageManager24ConnectToStorageAreaSyncEN6WebKit21NetworkStorageManagerES8_FvRNS2_10ConnectionEN7WebCore11StorageTypeENS_23ObjectIdentifierGenericINS7_28StorageAreaMapIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSt3__18optionalINSD_INS7_30StorageNamespaceIdentifierTypeESG_yEEEERKNSB_12ClientOriginEONS_17CompletionHandlerIFvNSJ_INSD_INS7_25StorageAreaIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEEENS_7HashMapINS_6StringESX_NS_11DefaultHashISX_EENS_10HashTraitsISX_EES11_NS_15HashTableTraitsELNS_17ShouldValidateKeyE1ENS_10FastMallocEEEyEEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSV_S15_yEED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F1740;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages21NetworkStorageManager24ConnectToStorageAreaSyncEN6WebKit21NetworkStorageManagerES8_FvRNS2_10ConnectionEN7WebCore11StorageTypeENS_23ObjectIdentifierGenericINS7_28StorageAreaMapIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSt3__18optionalINSD_INS7_30StorageNamespaceIdentifierTypeESG_yEEEERKNSB_12ClientOriginEONS_17CompletionHandlerIFvNSJ_INSD_INS7_25StorageAreaIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEEENS_7HashMapINS_6StringESX_NS_11DefaultHashISX_EENS_10HashTraitsISX_EES11_NS_15HashTableTraitsELNS_17ShouldValidateKeyE1ENS_10FastMallocEEEyEEEEEEbSA_RNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSV_S15_yEE4callESV_S15_y(uint64_t a1, uint64_t a2, uint64_t a3, void **a4, uint64_t a5)
{
  v10[0] = a2;
  v10[1] = a3;
  v7 = a1 + 8;
  v8 = *(a1 + 8);
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,std::optional<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(v8, v10);
  IPC::ArgumentCoder<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,void>::encode<IPC::Encoder,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>(v8, a4);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v8, a5);
  return IPC::Connection::sendMessageImpl(*(v7 + 8), v7, 0, 0);
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages33NotificationManagerMessageHandler16ShowNotificationENS2_10ConnectionEN6WebKit33NotificationManagerMessageHandlerES9_FvRS7_RKN7WebCore16NotificationDataEONS_6RefPtrINSB_21NotificationResourcesENS_12RawPtrTraitsISG_EENS_21DefaultRefDerefTraitsISG_EEEEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10F1768;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages33NotificationManagerMessageHandler16ShowNotificationENS2_10ConnectionEN6WebKit33NotificationManagerMessageHandlerES9_FvRS7_RKN7WebCore16NotificationDataEONS_6RefPtrINSB_21NotificationResourcesENS_12RawPtrTraitsISG_EENS_21DefaultRefDerefTraitsISG_EEEEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F1768;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages33NotificationManagerMessageHandler16ShowNotificationENS2_10ConnectionEN6WebKit33NotificationManagerMessageHandlerES9_FvRS7_RKN7WebCore16NotificationDataEONS_6RefPtrINSB_21NotificationResourcesENS_12RawPtrTraitsISG_EENS_21DefaultRefDerefTraitsISG_EEEEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3460;
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

WTF *IPC::ArgumentCoder<std::tuple<WTF::Vector<WTF::UUID,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::VectorArgumentCoder<false,WTF::UUID,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a1, v9);
  if (v10 & 1) != 0 || ((v6 = *a1, v7 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (result = *(a1 + 3)) != 0) ? (v8 = v7 == 0) : (v8 = 1), !v8 && (result = (*(*result + 16))(result, v6), (v10)))
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages33NotificationManagerMessageHandler17RequestPermissionENS2_10ConnectionEN6WebKit33NotificationManagerMessageHandlerES9_FvON7WebCore18SecurityOriginDataEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED1Ev(void *a1)
{
  *a1 = &unk_1F10F1790;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages33NotificationManagerMessageHandler17RequestPermissionENS2_10ConnectionEN6WebKit33NotificationManagerMessageHandlerES9_FvON7WebCore18SecurityOriginDataEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F1790;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages33NotificationManagerMessageHandler17RequestPermissionENS2_10ConnectionEN6WebKit33NotificationManagerMessageHandlerES9_FvON7WebCore18SecurityOriginDataEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEE4callEb(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3459;
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages33NotificationManagerMessageHandler18GetPermissionStateENS2_10ConnectionEN6WebKit33NotificationManagerMessageHandlerES9_FvON7WebCore18SecurityOriginDataEONS_17CompletionHandlerIFvNSA_19PushPermissionStateEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSE_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F17B8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages33NotificationManagerMessageHandler18GetPermissionStateENS2_10ConnectionEN6WebKit33NotificationManagerMessageHandlerES9_FvON7WebCore18SecurityOriginDataEONS_17CompletionHandlerIFvNSA_19PushPermissionStateEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSE_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F17B8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages33NotificationManagerMessageHandler18GetPermissionStateENS2_10ConnectionEN6WebKit33NotificationManagerMessageHandlerES9_FvON7WebCore18SecurityOriginDataEONS_17CompletionHandlerIFvNSA_19PushPermissionStateEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSE_EE4callESE_(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3458;
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

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages33NotificationManagerMessageHandler22GetPermissionStateSyncEN6WebKit33NotificationManagerMessageHandlerES8_FvON7WebCore18SecurityOriginDataEONS_17CompletionHandlerIFvNS9_19PushPermissionStateEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSD_EED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F17E0;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages33NotificationManagerMessageHandler22GetPermissionStateSyncEN6WebKit33NotificationManagerMessageHandlerES8_FvON7WebCore18SecurityOriginDataEONS_17CompletionHandlerIFvNS9_19PushPermissionStateEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSD_EED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F17E0;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages33NotificationManagerMessageHandler22GetPermissionStateSyncEN6WebKit33NotificationManagerMessageHandlerES8_FvON7WebCore18SecurityOriginDataEONS_17CompletionHandlerIFvNS9_19PushPermissionStateEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSD_EE4callESD_(uint64_t a1, char a2)
{
  v2 = (a1 + 8);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(*(a1 + 8), a2);
  v3 = v2[1];

  return IPC::Connection::sendMessageImpl(v3, v2, 0, 0);
}

uint64_t API::Object::wrap(uint64_t this, API::Object *a2)
{
  if (this)
  {
    return *(this + 8);
  }

  return this;
}

void API::Object::toNSObject(API::Object *this@<X0>, void *a2@<X8>)
{
  v4 = (*(*this + 16))(this);
  if (v4 > 30)
  {
    if (v4 > 32)
    {
      if (v4 == 33)
      {
        v26 = objc_alloc(MEMORY[0x1E696AD98]);
        if ((*(*this + 16))(this) != 33)
        {
          __break(0xC471u);
          JUMPOUT(0x19D9F2EC8);
        }

        v7 = [v26 initWithUnsignedLongLong:*(this + 2)];
      }

      else
      {
        if (v4 != 34)
        {
          goto LABEL_25;
        }

        v9 = objc_alloc(MEMORY[0x1E696AD98]);
        if ((*(*this + 16))(this) != 34)
        {
          __break(0xC471u);
          JUMPOUT(0x19D9F2E48);
        }

        v7 = [v9 initWithLongLong:*(this + 2)];
      }
    }

    else if (v4 == 31)
    {
      v15 = objc_alloc(MEMORY[0x1E696AD98]);
      if ((*(*this + 16))(this) != 31)
      {
        __break(0xC471u);
        JUMPOUT(0x19D9F2E88);
      }

      v7 = [v15 initWithBool:*(this + 16)];
    }

    else
    {
      v6 = objc_alloc(MEMORY[0x1E696AD98]);
      if ((*(*this + 16))(this) != 32)
      {
        __break(0xC471u);
        JUMPOUT(0x19D9F2E08);
      }

      v7 = [v6 initWithDouble:*(this + 2)];
    }

    *a2 = v7;
    return;
  }

  if (v4 <= 8)
  {
    if (v4 != 1)
    {
      if (v4 == 8)
      {
        if ((*(*this + 16))(this) != 8)
        {
          goto LABEL_73;
        }

        v35 = *(this + 1);
        if (v35)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            *a2 = v35;

            v5 = v35;
            return;
          }

LABEL_73:
          __break(0xC471u);
          JUMPOUT(0x19D9F2DE8);
        }
      }

LABEL_25:
      *a2 = 0;
      return;
    }

    if ((*(*this + 16))(this) != 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19D9F2E68);
    }

    v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:*(this + 7)];
    v11 = *(this + 7);
    if (v11)
    {
      v12 = *(this + 2);
      v13 = 8 * v11;
      do
      {
        if (*v12)
        {
          API::Object::toNSObject(&v37, *v12);
          v14 = v37;
          if (v37)
          {
            [v10 addObject:v37];
          }
        }

        ++v12;
        v13 -= 8;
      }

      while (v13);
    }

LABEL_62:
    *a2 = v10;
    return;
  }

  if (v4 == 9)
  {
    if ((*(*this + 16))(this) != 9)
    {
      __break(0xC471u);
      JUMPOUT(0x19D9F2EA8);
    }

    v16 = objc_alloc(MEMORY[0x1E695DF90]);
    v19 = *(this + 2);
    v18 = (this + 16);
    v17 = v19;
    if (v19)
    {
      v20 = *(v17 - 12);
    }

    else
    {
      v20 = 0;
    }

    v10 = [v16 initWithCapacity:v20];
    v21 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(v18);
    v22 = v21;
    v24 = v23;
    if (*v18)
    {
      v25 = &(*v18)[2 * *(*v18 - 1)];
    }

    else
    {
      v25 = 0;
    }

    if (v25 != v21)
    {
      do
      {
        v29 = v22[1];
        if (v29)
        {
          CFRetain(v29[1]);
          API::Object::toNSObject(&v37, v29);
          CFRelease(v29[1]);
          v30 = v37;
          if (v37)
          {
            v31 = *v22;
            if (*v22)
            {
              atomic_fetch_add_explicit(v31, 2u, memory_order_relaxed);
              MEMORY[0x19EB00B70](&v36, v31);
              if (atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v31, v32);
              }
            }

            else
            {
              v36 = &stru_1F1147748;
              v33 = &stru_1F1147748;
            }

            [v10 setObject:v30 forKey:v36];
            v34 = v36;
            v36 = 0;
            if (v34)
            {
            }
          }
        }

        do
        {
          v22 += 2;
        }

        while (v22 != v24 && *v22 + 1 <= 1);
      }

      while (v22 != v25);
    }

    goto LABEL_62;
  }

  if (v4 != 20)
  {
    goto LABEL_25;
  }

  if ((*(*this + 16))(this) != 20)
  {
    __break(0xC471u);
    JUMPOUT(0x19D9F2E28);
  }

  WTF::String::isolatedCopy();
  if (v36)
  {
    atomic_fetch_add_explicit(v36, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v37, v36);
    if (atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v36, v8);
    }
  }

  else
  {
    v37 = &stru_1F1147748;
    v27 = &stru_1F1147748;
  }

  v28 = v36;
  *a2 = v37;
  v36 = 0;
  v37 = 0;
  if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v28, v8);
  }
}

void sub_19D9F2EEC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

unint64_t API::Object::fromNSObject@<X0>(unint64_t result@<X0>, API::Object **a2@<X8>)
{
  v29 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    goto LABEL_2;
  }

  v12 = a2;
  obj = result;
  if (WTF::ObjCTypeCastTraits<NSString>::isType<NSObject>())
  {
    MEMORY[0x19EB02040](&v27, obj);
    API::String::create(&v27, &v16);
    *v12 = v16;
    v16 = 0;
    result = v27;
    v27 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v2);
      }
    }
  }

  else if (WTF::ObjCTypeCastTraits<NSData>::isType<NSObject>())
  {

    return API::Data::createWithoutCopying(obj, v12);
  }

  else if (WTF::ObjCTypeCastTraits<NSNumber>::isType<NSObject>())
  {
    [(API::Data *)obj doubleValue];

    return API::Double::create(v3, v12);
  }

  else if (WTF::ObjCTypeCastTraits<NSArray>::isType<NSObject>())
  {
    v16 = 0;
    v17 = 0;
    result = [(API::Data *)obj count];
    if (result)
    {
      if (result >> 29)
      {
        __break(0xC471u);
        return result;
      }

      LODWORD(v17) = result;
      v16 = WTF::fastMalloc((8 * result));
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v4 = [(API::Data *)obj countByEnumeratingWithState:&v23 objects:v28 count:16, v12];
    if (v4)
    {
      v5 = *v24;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v24 != v5)
          {
            objc_enumerationMutation(obj);
          }

          API::Object::fromNSObject(&v27, *(*(&v23 + 1) + 8 * i));
          v7 = v27;
          if (v27)
          {
            v8 = HIDWORD(v17);
            if (HIDWORD(v17) == v17)
            {
              WTF::Vector<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>(&v16, &v27);
            }

            else
            {
              v27 = 0;
              *(v16 + HIDWORD(v17)) = v7;
              HIDWORD(v17) = v8 + 1;
            }

            v9 = v27;
            v27 = 0;
            if (v9)
            {
              CFRelease(*(v9 + 1));
            }
          }
        }

        v4 = [(API::Data *)obj countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v4);
    }

    API::Array::create(&v16, &v27);
    *v13 = v27;
    return WTF::Vector<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v16, v10);
  }

  else
  {
    result = WTF::ObjCTypeCastTraits<NSDictionary>::isType<NSObject>();
    a2 = v12;
    if (!result)
    {
LABEL_2:
      *a2 = 0;
      return result;
    }

    v16 = 0;
    v17 = &v16;
    v18 = 0x3812000000;
    v19 = __Block_byref_object_copy__1;
    v20 = __Block_byref_object_dispose__1;
    v21 = &unk_19EA2799F;
    v22 = 0;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = ___ZN3API6Object12fromNSObjectEPU25objcproto14NSSecureCoding8NSObject_block_invoke;
    v15[3] = &unk_1E7630E58;
    v15[4] = &v16;
    [(API::Data *)obj enumerateKeysAndObjectsUsingBlock:v15];
    API::Dictionary::create(v17 + 6, &v27);
    *v12 = v27;
    _Block_object_dispose(&v16, 8);
    result = v22;
    if (v22)
    {
      return WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v22, v11);
    }
  }

  return result;
}

void sub_19D9F331C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, WTF::StringImpl *a31)
{
  _Block_object_dispose(&a16, 8);
  if (a22)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(a22, v32);
  }

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 48) = 0;
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  return result;
}

uint64_t __Block_byref_object_dispose__1(uint64_t a1, WTF::StringImpl *a2)
{
  result = *(a1 + 48);
  if (result)
  {
    return WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(result, a2);
  }

  return result;
}

void ___ZN3API6Object12fromNSObjectEPU25objcproto14NSSecureCoding8NSObject_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  API::Object::fromNSObject(&v11, a3);
  v5 = v11;
  if (v11)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v11 = 0;
LABEL_9:
      CFRelease(*(v5 + 8));
      return;
    }

    v6 = *(*(a1 + 32) + 8);
    MEMORY[0x19EB02040](&v10, a2);
    WTF::HashMap<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>((v6 + 48), &v10, &v11, v9);
    v8 = v10;
    v10 = 0;
    if (v8)
    {
      if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v7);
      }
    }

    v5 = v11;
    v11 = 0;
    if (v5)
    {
      goto LABEL_9;
    }
  }
}

void sub_19D9F34A0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, uint64_t a14)
{
  if (a13 && atomic_fetch_add_explicit(a13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a13, a2);
  }

  if (a14)
  {
    CFRelease(*(a14 + 8));
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::ARKitLibrary(WebKit *this)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN6WebKit12ARKitLibraryEb_block_invoke;
  block[3] = &__block_descriptor_33_e5_v8__0l;
  v3 = 0;
  if (qword_1ED641DE8 != -1)
  {
    dispatch_once(&qword_1ED641DE8, block);
  }

  return qword_1ED641DE0;
}

uint64_t ___ZN6WebKit12ARKitLibraryEb_block_invoke(uint64_t a1)
{
  result = dlopen("/System/Library/Frameworks/ARKit.framework/ARKit", 2);
  qword_1ED641DE0 = result;
  if ((*(a1 + 32) & 1) == 0 && !result)
  {
    result = 33;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::initARQuickLookPreviewItem(WebKit *this)
{
  if (qword_1ED641DF8 != -1)
  {
    dispatch_once(&qword_1ED641DF8, &__block_literal_global_11);
  }

  return qword_1ED641E00;
}

void WebKit::AuxiliaryProcess::didReceiveInvalidMessage(uint64_t a1, uint64_t a2, unsigned int a3, _DWORD *a4)
{
  if (a3 >= 0x107F)
  {
    v4 = 4223;
  }

  else
  {
    v4 = a3;
  }

  v5 = &(&IPC::Detail::messageDescriptions)[3 * v4];
  v6 = v5[1];
  v7 = v6 != 0;
  v8 = (v6 - 1);
  if (v7)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9 >> 31;
  if (!(v9 >> 31))
  {
    v13 = *v5;
    v14 = a3;
    do
    {
      LODWORD(v10) = v10 + 1;
      v15 = v14;
      v14 /= 0xAu;
    }

    while (v15 > 9);
    if ((v10 & 0x80000000) == 0)
    {
      v16 = __OFADD__(v10, 1);
      v17 = v10 + 1;
      if (!v16)
      {
        v16 = __OFADD__(v17, 3);
        v18 = v17 + 3;
        if (!v16)
        {
          v16 = __OFADD__(v9, v18);
          v19 = v9 + v18;
          if (!v16)
          {
            v20 = (v19 + 27);
            if (!__OFADD__(v19, 27))
            {
              if (v19 == -27)
              {
                v21 = MEMORY[0x1E696EB88];
                atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
                goto LABEL_29;
              }

              if ((v20 & 0x80000000) == 0)
              {
                WTF::tryFastCompactMalloc((v20 + 20));
                v21 = v41;
                if (v41)
                {
                  *v41 = 2;
                  v21[1] = v20;
                  *(v21 + 1) = v21 + 5;
                  LODWORD(v22) = 4;
                  v21[4] = 4;
                  qmemcpy(v21 + 5, "Received invalid message: '", 27);
                  if (v20 <= 0x1A)
                  {
                    goto LABEL_45;
                  }

                  v23 = v20 - 27;
                  v24 = v21 + 47;
                  if (v9)
                  {
                    if (v9 == 1)
                    {
                      *v24 = *v13;
                    }

                    else
                    {
                      memcpy(v21 + 47, v13, v9);
                    }
                  }

                  v22 = v23 - v9;
                  if (v23 < v9)
                  {
                    goto LABEL_45;
                  }

                  v25 = &v24[v9];
                  v25[2] = 40;
                  *v25 = 8231;
                  if (v22 <= 2)
                  {
                    goto LABEL_45;
                  }

                  v26 = v22 - 3;
                  v27 = v25 + 3;
                  LOWORD(v41) = a3;
                  WTF::StringTypeAdapter<IPC::MessageName,void>::writeTo<unsigned char>(&v41, v25 + 3, v22 - 3);
                  LODWORD(v22) = 0;
                  v28 = v41;
                  do
                  {
                    v22 = (v22 + 1);
                    v29 = v28 > 9;
                    v28 /= 0xAu;
                  }

                  while (v29);
                  if (v26 < v22 || v26 == v22)
                  {
                    goto LABEL_45;
                  }

                  v27[v22] = 41;
LABEL_29:
                  v41 = v21;
                  WTF::String::utf8();
                  if (v40)
                  {
                    v30 = (v40 + 16);
                  }

                  else
                  {
                    v30 = 0;
                  }

                  WTFLogAlways();
                  WTF::setCrashLogMessage(v30, v31);
                  if (v40)
                  {
                    if (*v40 == 1)
                    {
                      WTF::fastFree(v40, v32);
                    }

                    else
                    {
                      --*v40;
                    }
                  }

                  LODWORD(v22) = a4[3];
                  if (v22 < 6)
                  {
                    if (v22 != 5)
                    {
                      goto LABEL_46;
                    }

                    v33 = *a4;
                    v34 = -1;
                  }

                  else
                  {
                    v33 = *a4;
                    v34 = *(*a4 + 20);
                  }

                  v35 = v33[4];
LABEL_40:
                  v36 = v33[3];
LABEL_41:
                  v37 = v33[2];
LABEL_42:
                  v38 = v33[1];
                  while (1)
                  {
                    for (i = *v33; ; i = -1)
                    {
                      WTFCrashWithInfoImpl(131, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/Shared/Cocoa/AuxiliaryProcessCocoa.mm", "virtual void WebKit::AuxiliaryProcess::didReceiveInvalidMessage(IPC::Connection &, IPC::MessageName, const Vector<uint32_t> &)", 179, a3, v34, v35, v36, v37, v38, i);
LABEL_45:
                      __break(1u);
LABEL_46:
                      if (v22 >= 4)
                      {
                        v33 = *a4;
                        v35 = -1;
                        v34 = -1;
                        goto LABEL_40;
                      }

                      if (v22 == 3)
                      {
                        v33 = *a4;
                        v36 = -1;
                        v34 = -1;
                        v35 = -1;
                        goto LABEL_41;
                      }

                      if (v22 >= 2)
                      {
                        v33 = *a4;
                        v37 = -1;
                        v35 = -1;
                        v34 = -1;
                        v36 = -1;
                        goto LABEL_42;
                      }

                      v38 = -1;
                      if (v22)
                      {
                        break;
                      }

                      v36 = -1;
                      v34 = -1;
                      v35 = -1;
                      v37 = -1;
                    }

                    v33 = *a4;
                    v36 = -1;
                    v34 = -1;
                    v35 = -1;
                    v37 = -1;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  __break(0xC471u);
  JUMPOUT(0x19D9F3940);
}

void sub_19D9F3964(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF *a13, WTF::StringImpl *a14)
{
  if (a14)
  {
    if (atomic_fetch_add_explicit(a14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a14, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

char *___ZN6WebKit16AuxiliaryProcess23registerWithStateDumperEN3WTF12ASCIILiteralE_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = objc_autoreleasePoolPush();
  if (*(a2 + 16) == 1)
  {
    v6 = 0;
  }

  else
  {
    (*(*v4 + 152))(&v18, v4);
    if ([v18 count] && (v17 = 0, v7 = objc_msgSend(MEMORY[0x1E696AE40], "dataWithPropertyList:format:options:error:", v18, 200, 0, &v17), (v8 = v7) != 0))
    {
      v9 = v7;
      v10 = [v8 length];
      v11 = malloc_type_malloc(v10 + 200, 0x69B03CEuLL);
      v6 = v11;
      if (!v11 || (bzero(v11, v10 + 200), *v6 = 1, *(v6 + 1) = [v8 length], strlcpy(v6 + 136, *(a1 + 40), 0x40uLL), v12 = *(v6 + 1), v13 = objc_msgSend(v8, "bytes"), v14 = objc_msgSend(v8, "length"), v14 > v12))
      {
        __break(0xC471u);
        JUMPOUT(0x19D9F3B5CLL);
      }

      memcpy(v6 + 200, v13, v14);
    }

    else
    {
      v6 = 0;
    }

    v15 = v18;
    v18 = 0;
    if (v15)
    {
    }
  }

  objc_autoreleasePoolPop(v5);
  return v6;
}

void sub_19D9F3B80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(a1);
}

void WebKit::AuxiliaryProcess::decodePreferenceValue(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 8))
  {
    v4 = objc_alloc(MEMORY[0x1E695DEF0]);
    if (*(a1 + 8))
    {
      v5 = v4;
      v6 = *a1;
      if (v6)
      {
        atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
        MEMORY[0x19EB00B70](&v26, v6);
        if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v6, v7);
        }
      }

      else
      {
        v26 = &stru_1F1147748;
        v8 = &stru_1F1147748;
      }

      v9 = [v5 initWithBase64EncodedString:v26 options:0];
      v10 = v26;
      v26 = 0;
      if (v10)
      {
      }

      v25 = MEMORY[0x1E695DFD8];
      v24 = objc_opt_class();
      v11 = objc_opt_class();
      v12 = objc_opt_class();
      v13 = objc_opt_class();
      v14 = objc_opt_class();
      v15 = objc_opt_class();
      v16 = objc_opt_class();
      v17 = objc_opt_class();
      v18 = objc_opt_class();
      v19 = [v25 setWithObjects:{v24, v11, v12, v13, v14, v15, v16, v17, v18, objc_opt_class(), 0}];
      v20 = v19;
      if (v19)
      {
        v21 = v19;
      }

      v26 = 0;
      v22 = [MEMORY[0x1E696ACD0] _strictlyUnarchivedObjectOfClasses:v20 fromData:v9 error:&v26];
      *a2 = v22;
      if (v22)
      {
        v23 = v22;
      }

      if (v20)
      {
      }

      if (v9)
      {
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    *a2 = 0;
  }
}

void sub_19D9F3DA0(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

void WebKit::AuxiliaryProcess::setPreferenceValue(WebKit::AuxiliaryProcess *this, const WTF::String *a2, const WTF::String *a3, objc_object *a4)
{
  if (*this && *(*this + 4))
  {
    WTF::String::createCFString(&key, a2);
    v6 = key;
    WTF::String::createCFString(&applicationID, this);
    CFPreferencesSetValue(v6, a3, applicationID, *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
    v7 = applicationID;
    applicationID = 0;
    if (v7)
    {
      CFRelease(v7);
    }
  }

  else
  {
    WTF::String::createCFString(&key, a2);
    CFPreferencesSetValue(key, a3, *MEMORY[0x1E695E890], *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  }

  v8 = key;
  key = 0;
  if (v8)
  {
    CFRelease(v8);
  }
}

void sub_19D9F3EE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, CFTypeRef cf, CFTypeRef a10)
{
  if (cf)
  {
    CFRelease(cf);
  }

  if (a10)
  {
    CFRelease(a10);
  }

  _Unwind_Resume(exception_object);
}

void WebKit::AuxiliaryProcess::preferenceDidUpdate(uint64_t a1, WebKit::AuxiliaryProcess *a2, const WTF::String *a3, uint64_t a4)
{
  if (*(a4 + 8) == 1)
  {
    WebKit::AuxiliaryProcess::decodePreferenceValue(a4, &v9);
    v7 = v9;
    if (!v9)
    {
      return;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  WebKit::AuxiliaryProcess::setPreferenceValue(a2, a3, v7, a4);
  (*(*a1 + 160))(a1, a2, a3, v8);
  if (v8)
  {
  }
}

void sub_19D9F3FEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9)
{
  if (a9)
  {
  }

  _Unwind_Resume(exception_object);
}

WTF::StringImpl *WebKit::AuxiliaryProcess::handleAXPreferenceChange(WebKit::AuxiliaryProcess *this, WTF **a2, const WTF::String *a3, objc_object *a4)
{
  {
    result = libAccessibilityLibrary(void)::dylib;
    if (!libAccessibilityLibrary(void)::dylib)
    {
      return result;
    }
  }

  else
  {
    result = dlopen("/usr/lib/libAccessibility.dylib", 2);
    libAccessibilityLibrary(void)::dylib = result;
    if (!result)
    {
      return result;
    }
  }

  MEMORY[0x19EB02040](&v10, *MEMORY[0x1E69E4BB0], a3, a4);
  v8 = WTF::equal(*a2, v10, v6);
  result = v10;
  v10 = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v7);
    if (!v8)
    {
      return result;
    }
  }

  else if (!v8)
  {
    return result;
  }

  result = _AXSUpdateWebAccessibilitySettingsPtr();
  if (result)
  {
    v9 = _AXSUpdateWebAccessibilitySettingsPtr();
    return v9();
  }

  return result;
}

void sub_19D9F40D8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
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

void *_AXSUpdateWebAccessibilitySettingsPtr(void)
{
  if (byte_1ED641DD6 == 1)
  {
    return qword_1ED641E08;
  }

  {
    v1 = libAccessibilityLibrary(void)::dylib;
  }

  else
  {
    v1 = dlopen("/usr/lib/libAccessibility.dylib", 2);
    libAccessibilityLibrary(void)::dylib = v1;
  }

  result = dlsym(v1, "_AXSUpdateWebAccessibilitySettings");
  qword_1ED641E08 = result;
  byte_1ED641DD6 = 1;
  return result;
}

uint64_t WebKit::AuxiliaryProcess::handlePreferenceChange(WebKit::AuxiliaryProcess *this, WTF **a2, const WTF::String *a3, objc_object *a4)
{
  WebKit::AuxiliaryProcess::handleAXPreferenceChange(this, a2, a3, a4);
  v6 = *(*this + 168);

  return v6(this, a3);
}

uint64_t WebKit::AuxiliaryProcess::isSystemWebKit(WebKit::AuxiliaryProcess *this)
{
  if (byte_1ED641DD1 == 1)
  {
    LOBYTE(ImageName) = _MergedGlobals_59;
  }

  else
  {
    v3 = objc_opt_class();
    ImageName = class_getImageName(v3);
    if (ImageName)
    {
      v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:ImageName];
      LOBYTE(ImageName) = [v4 hasPrefix:WTF::FileSystemImpl::systemDirectoryPath(v4)];
      if (v4)
      {
      }
    }

    _MergedGlobals_59 = ImageName;
    byte_1ED641DD1 = 1;
  }

  return ImageName & 1;
}

void sub_19D9F4298(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::AuxiliaryProcess::increaseFileDescriptorLimit(WebKit::AuxiliaryProcess *this)
{
  v24 = *MEMORY[0x1E69E9840];
  v18.rlim_cur = 0;
  v18.rlim_max = 0;
  v1 = getrlimit(8, &v18);
  if (v1)
  {
    v12 = v1;
    v8 = qword_1ED6416A0;
    if (os_log_type_enabled(qword_1ED6416A0, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v20) = v12;
      v9 = "Could not getrlimit(RLIMIT_NOFILE): %d";
      goto LABEL_12;
    }
  }

  else
  {
    *v23 = 0x1D00000001;
    v17 = 0;
    v16 = 4;
    v2 = sysctl(v23, 2u, &v17, &v16, 0, 0);
    if (v2)
    {
      v13 = v2;
      v8 = qword_1ED6416A0;
      if (os_log_type_enabled(qword_1ED6416A0, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v20) = v13;
        v9 = "Could not get KERN_MAXFILESPERPROC: %d";
        goto LABEL_12;
      }
    }

    else
    {
      v15 = v18;
      rlim_max = v17;
      rlim_cur = v18.rlim_cur;
      if (v18.rlim_max < v17)
      {
        rlim_max = v18.rlim_max;
      }

      if (rlim_max >= 0xA00)
      {
        v5 = 2560;
      }

      else
      {
        v5 = rlim_max;
      }

      v15.rlim_cur = v5;
      if (v5 < v18.rlim_cur)
      {
        v14 = qword_1ED6416A0;
        if (os_log_type_enabled(qword_1ED6416A0, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          v20 = v5;
          v21 = 2048;
          v22 = rlim_cur;
          v9 = "Could not increase fd limit: proposed limit %llu is less than current limit %llu";
          v10 = v14;
          v11 = 22;
          goto LABEL_13;
        }
      }

      else
      {
        v6 = setrlimit(8, &v15);
        if (v6)
        {
          v7 = v6;
          v8 = qword_1ED6416A0;
          if (os_log_type_enabled(qword_1ED6416A0, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            LODWORD(v20) = v7;
            v9 = "Could not setrlimit(RLIMIT_NOFILE): %d";
LABEL_12:
            v10 = v8;
            v11 = 8;
LABEL_13:
            _os_log_error_impl(&dword_19D52D000, v10, OS_LOG_TYPE_ERROR, v9, buf, v11);
          }
        }
      }
    }
  }
}

void WebKit::codeSigningIdentifier(WebKit *this@<X0>, uint64_t a2@<X8>)
{
  v4 = SecTaskCopySigningIdentifier(this, 0);
  MEMORY[0x19EB02040](a2, v4);
  if (v4)
  {

    CFRelease(v4);
  }
}

void sub_19D9F4514(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    CFRelease(v1);
  }

  _Unwind_Resume(exception_object);
}

void WebKit::codeSigningIdentifierAndPlatformBinaryStatus(WebKit *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x1E695E480];
  v5 = *(this + 1);
  *v11.val = *this;
  *&v11.val[4] = v5;
  v6 = SecTaskCreateWithAuditToken(v4, &v11);
  CodeSignStatus = SecTaskGetCodeSignStatus(v6);
  WebKit::codeSigningIdentifier(v6, &v11);
  v9 = *v11.val;
  if (*v11.val)
  {
    atomic_fetch_add_explicit(*v11.val, 2u, memory_order_relaxed);
    v10 = *v11.val;
    *a2 = v9;
    *(a2 + 8) = (CodeSignStatus & 0x4000000) != 0;
    *v11.val = 0;
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v8);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = (CodeSignStatus & 0x4000000) != 0;
  }

  if (v6)
  {
    CFRelease(v6);
  }
}

void sub_19D9F45E8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    CFRelease(v1);
  }

  _Unwind_Resume(exception_object);
}

WTF::StringImpl *WebKit::codeSigningIdentifier@<X0>(WebKit *this@<X0>, WTF::StringImpl **a2@<X8>)
{
  v4 = *(this + 1);
  v7[0] = *this;
  v7[1] = v4;
  WebKit::codeSigningIdentifierAndPlatformBinaryStatus(v7, &v8);
  result = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
    *a2 = result;
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {

      return WTF::StringImpl::destroy(result, v5);
    }
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

Class WebKit::CompletionHandlerCallChecker::create@<X0>(WebKit::CompletionHandlerCallChecker *this@<X0>, objc_object *a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = WTF::fastMalloc(0x20);
  result = object_getClass(this);
  *v7 = 1;
  *(v7 + 8) = result;
  *(v7 + 16) = a2;
  *(v7 + 24) = 0;
  *a3 = v7;
  return result;
}

void WebKit::CompletionHandlerCallChecker::~CompletionHandlerCallChecker(SEL *this)
{
  if ((this[3] & 1) == 0)
  {
    WebKit::CompletionHandlerCallChecker::classImplementingDelegateMethod(&cls, this);
    v2 = MEMORY[0x1E695DF30];
    v3 = cls;
    if (class_isMetaClass(cls))
    {
      v4 = 43;
    }

    else
    {
      v4 = 45;
    }

    v5 = NSStringFromClass(v3);
    [v2 raise:*MEMORY[0x1E695D930] format:{@"Completion handler passed to %c[%@ %@] was not called", v4, v5, NSStringFromSelector(this[2])}];
    if (v3)
    {
    }
  }
}

void sub_19D9F47AC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::CompletionHandlerCallChecker::classImplementingDelegateMethod(WebKit::CompletionHandlerCallChecker *this, uint64_t a2)
{
  v4 = *(a2 + 8);
  *this = v4;
  if (v4)
  {
    v5 = v4;
  }

  InstanceMethod = class_getInstanceMethod(v4, *(a2 + 16));
  Superclass = class_getSuperclass(v4);
  v8 = Superclass;
  if (Superclass)
  {
    v9 = Superclass;
    while (1)
    {
      v14 = v8;
      if (class_getInstanceMethod(v8, *(a2 + 16)) != InstanceMethod)
      {
        break;
      }

      v10 = v8;
      if (v4)
      {
      }

      v11 = class_getSuperclass(v8);
      v8 = v11;
      if (!v11)
      {

        v13 = v14;
        goto LABEL_14;
      }

      v12 = v11;

      v4 = v14;
    }

    *this = v4;
  }

  else
  {
    v13 = v4;
LABEL_14:
    *this = v13;
  }
}

void sub_19D9F48D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  *v10 = 0;
  if (v11)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::CompletionHandlerCallChecker::completionHandlerHasBeenCalled(SEL *this)
{
  v1 = *(this + 24);
  if (v1 == 1)
  {
    if (atomic_load_explicit(&qword_1ED641E10, memory_order_acquire) != -1)
    {
      cls = &v8;
      p_cls = &cls;
      std::__call_once(&qword_1ED641E10, &p_cls, std::__call_once_proxy[abi:sn200100]<std::tuple<WebKit::shouldThrowExceptionForDuplicateCompletionHandlerCall(void)::$_0 &&>>);
    }

    if (byte_1ED641DD7 == 1)
    {
      WebKit::CompletionHandlerCallChecker::classImplementingDelegateMethod(&cls, this);
      v3 = MEMORY[0x1E695DF30];
      v4 = cls;
      if (class_isMetaClass(cls))
      {
        v5 = 43;
      }

      else
      {
        v5 = 45;
      }

      v6 = NSStringFromClass(v4);
      [v3 raise:*MEMORY[0x1E695D930] format:{@"Completion handler passed to %c[%@ %@] was called more than once", v5, v6, NSStringFromSelector(this[2])}];
      if (v4)
      {
      }
    }
  }

  return v1;
}

void sub_19D9F4A14(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t *WebKit::appBoundDomainsForTesting(WebKit *this, const WTF::String *a2)
{
  if (!MEMORY[0x19EB01EF0](*this, "inAppBrowserPrivacyTestIdentifier", 33))
  {
    return 0;
  }

  {
    return &WebKit::appBoundDomainsForTesting(WTF::String const&)::domains;
  }

  WTF::StringImpl::createWithoutCopyingNonEmpty();
  WebCore::RegistrableDomain::uncheckedCreateFromRegistrableDomainString(&v5, &v6);
  v4 = v5;
  WebKit::appBoundDomainsForTesting(WTF::String const&)::domains = v6;
  v5 = 0;
  v6 = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, v3);
    }
  }

  return &WebKit::appBoundDomainsForTesting(WTF::String const&)::domains;
}

void sub_19D9F4AE8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
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

uint64_t WebKit::isParentProcessAFullWebBrowser(WebKit *this, WebKit::AuxiliaryProcess *a2)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN6WebKit30isParentProcessAFullWebBrowserERNS_16AuxiliaryProcessE_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = this;
  if (qword_1ED641DF0 != -1)
  {
    dispatch_once(&qword_1ED641DF0, block);
  }

  WTF::applicationBundleIdentifier(&v7, this);
  if (WebKit::isRunningTest(&v7, v2))
  {
    v4 = 1;
  }

  else if (byte_1ED641DD5 == 1)
  {
    v4 = MEMORY[0x19EB01EF0](v7, "inAppBrowserPrivacyTestIdentifier", 33) ^ 1;
  }

  else
  {
    v4 = 0;
  }

  v5 = v7;
  v7 = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v3);
  }

  return v4;
}

void sub_19D9F4C18(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
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

uint64_t WebKit::hasProhibitedUsageStrings(WebKit *this)
{
  v22 = *MEMORY[0x1E69E9840];
  v1 = atomic_load(byte_1ED641DD8);
  if (v1)
  {
    return byte_1ED641DD4;
  }

  v3 = [objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")];
  if (v3)
  {
    v4 = v3;
    v5 = v3;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = [&unk_1F1184C98 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = *v18;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v18 != v7)
          {
            objc_enumerationMutation(&unk_1F1184C98);
          }

          v9 = *(*(&v17 + 1) + 8 * i);
          if ([v4 objectForKey:v9])
          {
            v10 = objc_alloc(MEMORY[0x1E696AEC0]);
            v11 = [v10 initWithFormat:@"[In-App Browser Privacy] %@ used prohibited usage string %@.", objc_msgSend(objc_msgSend(MEMORY[0x1E696AAE8], "mainBundle"), "bundleIdentifier"), v9];
            MEMORY[0x19EB02040](&v16, v11);
            if (v11)
            {
            }

            WTF::String::utf8();
            WTFLogAlways();
            if (v15)
            {
              if (*v15 == 1)
              {
                WTF::fastFree(v15, v12);
              }

              else
              {
                --*v15;
              }
            }

            byte_1ED641DD4 = 1;
            v13 = v16;
            v16 = 0;
            if (v13)
            {
              if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v13, v12);
              }
            }

            goto LABEL_21;
          }
        }

        v6 = [&unk_1F1184C98 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_21:
    atomic_store(1u, byte_1ED641DD8);
    v2 = byte_1ED641DD4;

    return v2;
  }

  result = 215;
  __break(0xC471u);
  return result;
}

void ___ZN6WebKit30isParentProcessAFullWebBrowserERNS_16AuxiliaryProcessE_block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 40);
  if (v1)
  {
    while (1)
    {
      v2 = *v1;
      if ((*v1 & 1) == 0)
      {
        break;
      }

      v5 = *v1;
      atomic_compare_exchange_strong_explicit(v1, &v5, v2 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v5 == v2)
      {
        goto LABEL_4;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v1);
LABEL_4:
    IPC::Connection::getAuditToken(v1, buf);
    if (v9)
    {
      v6[0] = *buf;
      v6[1] = v8;
      byte_1ED641DD5 = WTF::hasEntitlement();
    }

    else
    {
      v3 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v6[0]) = 0;
        _os_log_error_impl(&dword_19D52D000, v3, OS_LOG_TYPE_ERROR, "Unable to get parent process audit token", v6, 2u);
      }
    }

    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v1);
  }

  else
  {
    v4 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_19D52D000, v4, OS_LOG_TYPE_ERROR, "Unable to get parent process connection", buf, 2u);
    }
  }
}

uint64_t WebKit::shouldEvaluateJavaScriptWithoutTransientActivation(WebKit *this)
{
  {
    isFullWebBrowserOrRunningTest = WebKit::shouldEvaluateJavaScriptWithoutTransientActivation(void)::staticShouldEvaluateJavaScriptWithoutTransientActivation;
  }

  else
  {
    v3 = WTF::linkedOnOrAfterSDKWithBehavior();
    isFullWebBrowserOrRunningTest = 1;
    if ((v3 & 1) == 0)
    {
      isFullWebBrowserOrRunningTest = WebKit::isFullWebBrowserOrRunningTest(1);
    }

    WebKit::shouldEvaluateJavaScriptWithoutTransientActivation(void)::staticShouldEvaluateJavaScriptWithoutTransientActivation = isFullWebBrowserOrRunningTest;
  }

  return isFullWebBrowserOrRunningTest & 1;
}

uint64_t ___ZN6WebKitL26initARQuickLookPreviewItemEv_block_invoke(WebKit *a1)
{
  WebKit::ARKitLibrary(a1);
  result = objc_getClass("ARQuickLookPreviewItem");
  qword_1ED641E00 = result;
  if (result)
  {
    WebKit::getARQuickLookPreviewItemClass[0] = WebKit::ARQuickLookPreviewItemFunction;
  }

  else
  {
    result = 35;
    __break(0xC471u);
  }

  return result;
}

uint64_t std::__call_once_proxy[abi:sn200100]<std::tuple<WebKit::shouldThrowExceptionForDuplicateCompletionHandlerCall(void)::$_0 &&>>()
{
  result = WTF::linkedOnOrAfterSDKWithBehavior();
  byte_1ED641DD7 = result;
  return result;
}

void *WTF::Detail::CallableWrapper<API::Data::createWithoutCopying(NSData *)::$_0,void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F10F1858;
  a1[1] = 0;
  if (v2)
  {
  }

  return a1;
}

unsigned __int16 *WTF::StringTypeAdapter<IPC::MessageName,void>::writeTo<unsigned char>(unsigned __int16 *result, _BYTE *a2, uint64_t a3)
{
  v3 = *result;
  v4 = 6;
  while (v4 != -1)
  {
    v5 = v3;
    v8[v4--] = (v3 % 0xAu) | 0x30;
    v3 /= 0xAu;
    if (v5 <= 9)
    {
      v6 = v4 + 1;
      v7 = v4 + 2;
      while (a3)
      {
        *a2++ = v8[v6++];
        ++v7;
        --a3;
        if (v7 == 8)
        {
          return result;
        }
      }

      break;
    }
  }

  __break(1u);
  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::determineTrackingPreventionState(void)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F10F1880;
  v3 = a1[2];
  a1[2] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  return a1;
}

uint64_t WebKit::PlaybackSessionManager::didReceiveMessage(WebKit::PlaybackSessionManager *this, IPC::Connection *a2, IPC::Decoder *a3)
{
  v42 = *MEMORY[0x1E69E9840];
  ++*(this + 4);
  v5 = *(a3 + 25);
  switch(*(a3 + 25))
  {
    case 0x35F:
      result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
      if (v7)
      {
        result = WebKit::PlaybackSessionManager::beginScanningBackward(this, result);
      }

      break;
    case 0x360:
      result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
      if (v7)
      {
        result = WebKit::PlaybackSessionManager::beginScanningForward(this, result);
      }

      break;
    case 0x361:
      result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
      if (v7)
      {
        result = WebKit::PlaybackSessionManager::beginScrubbing(this, result);
      }

      break;
    case 0x362:
      result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
      if (v7)
      {
        result = WebKit::PlaybackSessionManager::endScanning(this, result);
      }

      break;
    case 0x363:
      result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
      if (v7)
      {
        result = WebKit::PlaybackSessionManager::endScrubbing(this, result);
      }

      break;
    case 0x364:
      result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
      if (v7)
      {
        result = WebKit::PlaybackSessionManager::enterFullscreen(this, result);
      }

      break;
    case 0x365:
      result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
      if (v7)
      {
        result = WebKit::PlaybackSessionManager::enterInWindow(this, result);
      }

      break;
    case 0x366:
      result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
      if (v7)
      {
        result = WebKit::PlaybackSessionManager::exitFullscreen(this, result);
      }

      break;
    case 0x367:
      result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
      if (v7)
      {
        result = WebKit::PlaybackSessionManager::exitInWindow(this, result);
      }

      break;
    case 0x368:
      result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,double>>(buf, a3);
      if (buf[16] == 1)
      {
        result = WebKit::PlaybackSessionManager::fastSeek(this, *buf, *&buf[8]);
      }

      break;
    case 0x369:
      result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
      if (v7)
      {
        result = WebKit::PlaybackSessionManager::handleControlledElementIDRequest(this, result);
      }

      break;
    case 0x36A:
      result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
      if (v7)
      {
        result = WebKit::PlaybackSessionManager::pause(this, result);
      }

      break;
    case 0x36B:
      result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
      if (v7)
      {
        result = WebKit::PlaybackSessionManager::play(this, result);
      }

      break;
    case 0x36C:
      v14 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v15 & 1) == 0)
      {
        goto LABEL_63;
      }

      v16 = v14;
      v17 = IPC::Decoder::decode<unsigned long long>(a3);
      if ((v18 & 1) == 0)
      {
        goto LABEL_63;
      }

      v19 = *&v17;
      v20 = IPC::Decoder::decode<unsigned long long>(a3);
      if ((v21 & 1) == 0)
      {
        goto LABEL_63;
      }

      v22 = *&v20;
      v23 = IPC::Decoder::decode<unsigned long long>(a3);
      if ((v24 & 1) == 0)
      {
        goto LABEL_63;
      }

      result = WebKit::PlaybackSessionManager::seekToTime(this, v16, v19, v22, *&v23);
      break;
    case 0x36D:
      result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,unsigned long long>>(buf, a3);
      if (buf[16] == 1)
      {
        result = WebKit::PlaybackSessionManager::selectAudioMediaOption(this, *buf);
      }

      break;
    case 0x36E:
      result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,unsigned long long>>(buf, a3);
      if (buf[16] == 1)
      {
        result = WebKit::PlaybackSessionManager::selectLegibleMediaOption(this, *buf);
      }

      break;
    case 0x36F:
      v9 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v10 & 1) == 0)
      {
        goto LABEL_63;
      }

      v11 = v9;
      v12 = IPC::Decoder::decode<WebCore::PlatformMediaSessionRemoteControlCommandType>(a3);
      if ((v12 & 0x100) == 0)
      {
        goto LABEL_63;
      }

      v13 = v12;
      IPC::ArgumentCoder<WebCore::PlatformMediaSessionRemoteCommandArgument,void>::decode(a3, &v36);
      if ((v38 & 1) == 0)
      {
        v33 = *a3;
        v34 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v35 = *(a3 + 3);
        if (v35 && v34)
        {
          (*(*v35 + 16))(v35, v33);
        }

        goto LABEL_63;
      }

      *buf = v11;
      buf[8] = v13;
      *&buf[16] = v36;
      v40 = v37;
      v41 = 1;
      result = WebKit::PlaybackSessionManager::sendRemoteCommand(this, v11);
      break;
    case 0x370:
      result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,float>>(buf, a3);
      if (buf[16] == 1)
      {
        result = WebKit::PlaybackSessionManager::setDefaultPlaybackRate(this, *buf, *&buf[8]);
      }

      break;
    case 0x371:
      result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,BOOL>>(a3, buf);
      if (buf[16] == 1)
      {
        result = WebKit::PlaybackSessionManager::setMuted(this, *buf);
      }

      break;
    case 0x372:
      result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,float>>(buf, a3);
      if (buf[16] == 1)
      {
        result = WebKit::PlaybackSessionManager::setPlaybackRate(this, *buf, *&buf[8]);
      }

      break;
    case 0x373:
      result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
      if (v7)
      {
        result = WebKit::PlaybackSessionManager::setPlayerIdentifierForVideoElement(this, result);
      }

      break;
    case 0x374:
      result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,BOOL>>(a3, buf);
      if (buf[16] == 1)
      {
        result = WebKit::PlaybackSessionManager::setPlayingOnSecondScreen(this, *buf);
      }

      break;
    case 0x375:
      v25 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v26 & 1) == 0)
      {
        goto LABEL_63;
      }

      v27 = v25;
      v28 = IPC::Decoder::decode<WebKit::WebExtensionContentWorldType>(a3);
      if ((v28 & 0x100) == 0)
      {
        goto LABEL_63;
      }

      result = WebKit::PlaybackSessionManager::setSoundStageSize(this, v27, v28);
      break;
    case 0x376:
      result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,double>>(buf, a3);
      if (buf[16] == 1)
      {
        result = WebKit::PlaybackSessionManager::setVolume(this, *buf, *&buf[8]);
      }

      break;
    case 0x377:
      result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
      if (v7)
      {
        result = WebKit::PlaybackSessionManager::toggleMuted(this, result);
      }

      break;
    case 0x378:
      result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
      if (v7)
      {
        result = WebKit::PlaybackSessionManager::togglePictureInPicture(this, result);
      }

      break;
    case 0x379:
      result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
      if (v7)
      {
        result = WebKit::PlaybackSessionManager::togglePlayState(this, result);
      }

      break;
    default:
      v29 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        if (v5 >= 0x107F)
        {
          v30 = 4223;
        }

        else
        {
          v30 = v5;
        }

        v31 = (&IPC::Detail::messageDescriptions)[3 * v30];
        v32 = *(a3 + 7);
        *buf = 136315394;
        *&buf[4] = v31;
        *&buf[12] = 2048;
        *&buf[14] = v32;
        _os_log_error_impl(&dword_19D52D000, v29, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", buf, 0x16u);
      }

LABEL_63:
      v7 = *a3;
      v8 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      result = *(a3 + 3);
      if (result && v8)
      {
        result = (*(*result + 16))(result, v7);
      }

      break;
  }

  if (*(this + 4) == 1)
  {
    return (*(*this + 24))(this, v7, v8);
  }

  --*(this + 4);
  return result;
}

void WebKit::PlaybackSessionManagerProxy::didReceiveMessage(WebKit::PlaybackSessionManagerProxy *this, IPC::Connection *a2, IPC::Decoder *a3)
{
  v86 = *MEMORY[0x1E69E9840];
  WebKit::WebProcessProxy::fromConnection(a2, a2, buf);
  v7 = *(*buf + 1104);
  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((*buf + 16));
  if ((v7 & 0x18) != 0)
  {
    ++*(this + 4);
    v8 = *(a3 + 25);
    switch(*(a3 + 25))
    {
      case 0x347:
        IPC::Decoder::decode<std::tuple<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,unsigned long long>>(buf, a3);
        if (buf[24] == 1)
        {
          WebKit::PlaybackSessionManagerProxy::audioMediaSelectionIndexChanged(this, *buf, *&buf[8], *&buf[16]);
        }

        goto LABEL_144;
      case 0x348:
        IPC::Decoder::decode<std::tuple<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Vector<WebCore::MediaSelectionOption,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,unsigned long long>>(buf, a3);
        if (v84 == 1)
        {
          v79[0] = *&buf[16];
          v38 = *&buf[24];
          *&buf[16] = 0;
          *&buf[24] = 0;
          v79[1] = v38;
          WebKit::PlaybackSessionManagerProxy::audioMediaSelectionOptionsChanged(this, *buf, *&buf[8], v79, v83);
          goto LABEL_49;
        }

        goto LABEL_144;
      case 0x349:
        IPC::Decoder::decode<std::tuple<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,double>>(buf, a3);
        if (buf[24] == 1)
        {
          WebKit::PlaybackSessionManagerProxy::bufferedTimeChanged(this, *buf, *&buf[8], *&buf[16]);
        }

        goto LABEL_144;
      case 0x34A:
        IPC::Decoder::decode<std::tuple<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,BOOL>>(a3, buf);
        if (buf[24] == 1)
        {
          WebKit::PlaybackSessionManagerProxy::canPlayFastReverseChanged(this, *buf, *&buf[8], buf[16]);
        }

        goto LABEL_144;
      case 0x34B:
        WebKit::PlaybackSessionManagerProxy::clearPlaybackControlsManager(this);
        goto LABEL_144;
      case 0x34C:
        IPC::Decoder::decode<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(a3, buf);
        if (buf[16] != 1)
        {
          goto LABEL_143;
        }

        v40 = IPC::Decoder::decode<unsigned long long>(a3);
        if ((v41 & 1) == 0)
        {
          goto LABEL_143;
        }

        v42 = *&v40;
        IPC::Decoder::decode<unsigned long long>(a3);
        if ((v43 & 1) == 0)
        {
          goto LABEL_143;
        }

        if ((buf[16] & 1) == 0)
        {
          goto LABEL_110;
        }

        WebKit::PlaybackSessionManagerProxy::currentTimeChanged(this, *buf, *&buf[8], v42);
        goto LABEL_144;
      case 0x34D:
        IPC::Decoder::decode<std::tuple<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,double>>(buf, a3);
        if (buf[24] == 1)
        {
          WebKit::PlaybackSessionManagerProxy::durationChanged(this, *buf, *&buf[8], *&buf[16]);
        }

        goto LABEL_144;
      case 0x34E:
        IPC::Decoder::decode<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(a3, buf);
        if (buf[16] != 1)
        {
          goto LABEL_143;
        }

        v24 = *(a3 + 1);
        v33 = *(a3 + 2);
        v26 = *a3;
        if (v24 <= &v33[-*a3])
        {
          goto LABEL_132;
        }

        v34 = v33 + 1;
        *(a3 + 2) = v33 + 1;
        if (!v33)
        {
          goto LABEL_134;
        }

        v35 = *v33;
        if (v35 >= 2)
        {
          goto LABEL_142;
        }

        if (v24 <= &v34[-v26])
        {
          v71 = 0;
          v72 = 0;
          *a3 = 0;
          *(a3 + 1) = 0;
          v73 = *(a3 + 3);
          if (v73)
          {
            (*(*v73 + 16))(v73);
            v72 = *a3;
            v71 = *(a3 + 1);
          }
        }

        else
        {
          *(a3 + 2) = v33 + 2;
          if (v33 != -1)
          {
            v36 = *v34;
            if (v36 >= 3)
            {
              goto LABEL_142;
            }

            IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, v79);
            if ((v79[1] & 1) == 0)
            {
              v66 = *a3;
              v67 = *(a3 + 1);
              *a3 = 0;
              *(a3 + 1) = 0;
              v68 = *(a3 + 3);
              if (!v68)
              {
                goto LABEL_143;
              }

              if (!v67)
              {
                goto LABEL_143;
              }

              (*(*v68 + 16))(v68, v66);
              if ((v79[1] & 1) == 0)
              {
                goto LABEL_143;
              }
            }

            if ((buf[16] & 1) == 0)
            {
              goto LABEL_110;
            }

            v37 = *buf;
            *buf = v79[0];
            WebKit::PlaybackSessionManagerProxy::externalPlaybackPropertiesChanged(this, v37, *&buf[8], v35 & 1, v36, buf);
LABEL_83:
            v45 = *buf;
            *buf = 0;
            if (v45 && atomic_fetch_add_explicit(v45, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v45, v9);
            }

LABEL_144:
            if (*(this + 4) == 1)
            {
              (*(*this + 24))(this, v9, v10);
            }

            else
            {
              --*(this + 4);
            }

            return;
          }

          v71 = v24;
          v72 = v26;
        }

        *a3 = 0;
        *(a3 + 1) = 0;
        v74 = *(a3 + 3);
        if (v74 && v71)
        {
          (*(*v74 + 16))(v74, v72, v71);
          goto LABEL_157;
        }

        goto LABEL_140;
      case 0x34F:
        IPC::Decoder::decode<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(a3, buf);
        if ((buf[16] & 1) == 0)
        {
          goto LABEL_143;
        }

        IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, v79);
        if ((v79[1] & 1) == 0)
        {
          v63 = *a3;
          v64 = *(a3 + 1);
          *a3 = 0;
          *(a3 + 1) = 0;
          v65 = *(a3 + 3);
          if (!v65)
          {
            goto LABEL_143;
          }

          if (!v64)
          {
            goto LABEL_143;
          }

          (*(*v65 + 16))(v65, v63);
          if ((v79[1] & 1) == 0)
          {
            goto LABEL_143;
          }
        }

        if ((buf[16] & 1) == 0)
        {
          goto LABEL_110;
        }

        *buf = v79[0];
        WTF::isIntegralOrPointerType(this);
        goto LABEL_83;
      case 0x350:
        IPC::Decoder::decode<std::tuple<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,BOOL>>(a3, buf);
        if (buf[24] == 1)
        {
          WebKit::PlaybackSessionManagerProxy::isInWindowFullscreenActiveChanged(this, *buf, *&buf[8], buf[16]);
        }

        goto LABEL_144;
      case 0x351:
        IPC::Decoder::decode<std::tuple<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,unsigned long long>>(buf, a3);
        if (buf[24] == 1)
        {
          WebKit::PlaybackSessionManagerProxy::legibleMediaSelectionIndexChanged(this, *buf, *&buf[8], *&buf[16]);
        }

        goto LABEL_144;
      case 0x352:
        IPC::Decoder::decode<std::tuple<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Vector<WebCore::MediaSelectionOption,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,unsigned long long>>(buf, a3);
        if (v84 == 1)
        {
          v79[0] = *&buf[16];
          v22 = *&buf[24];
          *&buf[16] = 0;
          *&buf[24] = 0;
          v79[1] = v22;
          WebKit::PlaybackSessionManagerProxy::legibleMediaSelectionOptionsChanged(this, *buf, *&buf[8], v79, v83);
LABEL_49:
          WTF::Vector<WebCore::TextList,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v79, v23);
          WTF::Vector<WebCore::TextList,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&buf[16], v39);
        }

        goto LABEL_144;
      case 0x353:
        IPC::Decoder::decode<std::tuple<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,BOOL>>(a3, buf);
        if (buf[24] == 1)
        {
          WebKit::PlaybackSessionManagerProxy::mutedChanged(this, *buf, *&buf[8], buf[16]);
        }

        goto LABEL_144;
      case 0x354:
        IPC::Decoder::decode<std::tuple<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,BOOL>>(a3, buf);
        if (buf[24] == 1)
        {
          WebKit::PlaybackSessionManagerProxy::pictureInPictureSupportedChanged(this, *buf, *&buf[8], buf[16]);
        }

        goto LABEL_144;
      case 0x355:
        IPC::Decoder::decode<std::tuple<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,double>>(buf, a3);
        if (buf[24] == 1)
        {
          WebKit::PlaybackSessionManagerProxy::playbackStartedTimeChanged(this, *buf, *&buf[8], *&buf[16]);
        }

        goto LABEL_144;
      case 0x356:
        IPC::Decoder::decode<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(a3, buf);
        if (buf[16] != 1)
        {
          goto LABEL_143;
        }

        v24 = *(a3 + 1);
        v25 = *(a3 + 2);
        v26 = *a3;
        if (v24 <= &v25[-*a3])
        {
LABEL_132:
          *a3 = 0;
          *(a3 + 1) = 0;
          v69 = *(a3 + 3);
          if (v69)
          {
            if (v24)
            {
              (*(*v69 + 16))(v69);
              v24 = *(a3 + 1);
            }
          }

          else
          {
            v24 = 0;
          }
        }

        else
        {
          *(a3 + 2) = v25 + 1;
          if (v25)
          {
            v27 = *v25;
            if (v27 < 4)
            {
              v28 = IPC::Decoder::decode<unsigned long long>(a3);
              if ((v29 & 1) == 0)
              {
                goto LABEL_143;
              }

              v30 = *&v28;
              v31 = IPC::Decoder::decode<unsigned long long>(a3);
              if ((v32 & 1) == 0)
              {
                goto LABEL_143;
              }

              if ((buf[16] & 1) == 0)
              {
                goto LABEL_110;
              }

              WebKit::PlaybackSessionManagerProxy::rateChanged(this, *buf, *&buf[8], v27, v30, *&v31);
              goto LABEL_144;
            }

            goto LABEL_142;
          }
        }

LABEL_134:
        *a3 = 0;
        *(a3 + 1) = 0;
        v70 = *(a3 + 3);
        if (v70)
        {
          if (v24)
          {
            (*(*v70 + 16))(v70);
LABEL_157:
            v26 = *a3;
            v24 = *(a3 + 1);
            goto LABEL_142;
          }
        }

        else
        {
LABEL_140:
          v24 = 0;
        }

        v26 = 0;
LABEL_142:
        *a3 = 0;
        *(a3 + 1) = 0;
        v75 = *(a3 + 3);
        if (v75 && v24)
        {
          (*(*v75 + 16))(v75, v26);
        }

        goto LABEL_143;
      case 0x357:
        IPC::Decoder::decode<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(a3, &v77);
        if ((v78 & 1) == 0)
        {
          goto LABEL_143;
        }

        IPC::ArgumentCoder<WebCore::PlatformTimeRanges,void>::decode(a3, v79);
        if ((v80 & 1) == 0)
        {
          v54 = *a3;
          v55 = *(a3 + 1);
          *a3 = 0;
          *(a3 + 1) = 0;
          v56 = *(a3 + 3);
          if (!v56)
          {
            goto LABEL_143;
          }

          if (!v55)
          {
            goto LABEL_143;
          }

          (*(*v56 + 16))(v56, v54);
          if ((v80 & 1) == 0)
          {
            goto LABEL_143;
          }
        }

        v15 = IPC::Decoder::decode<unsigned long long>(a3);
        if (v16 & 1) != 0 && (v17 = v15, v18 = IPC::Decoder::decode<unsigned long long>(a3), (v16))
        {
          if ((v78 & 1) == 0 || (v80 & 1) == 0)
          {
LABEL_110:
            __break(1u);
LABEL_111:
            WTF::JSONImpl::Value::operator delete();
            goto LABEL_144;
          }

          *buf = v77;
          v19 = v79[0];
          v79[0] = 0;
          *&buf[16] = v19;
          v20 = v79[1];
          HIDWORD(v79[1]) = 0;
          *&buf[24] = v20;
          v83 = v17;
          v84 = v18;
          v4 = *&v17;
          v3 = *&v18;
          v21 = 1;
        }

        else
        {
          v21 = 0;
          buf[0] = 0;
        }

        v85 = v21;
        if (v80)
        {
          v52 = v79[0];
          if (v79[0])
          {
            v79[0] = 0;
            LODWORD(v79[1]) = 0;
            WTF::fastFree(v52, v16);
          }
        }

        if (v21)
        {
          WebKit::PlaybackSessionManagerProxy::seekableRangesVectorChanged(this, *buf, *&buf[8], &buf[16], v4, v3);
          if (v85)
          {
            v53 = *&buf[16];
            if (*&buf[16])
            {
              *&buf[16] = 0;
              *&buf[24] = 0;
              WTF::fastFree(v53, v9);
            }
          }
        }

        else
        {
LABEL_143:
          v9 = *a3;
          v10 = *(a3 + 1);
          *a3 = 0;
          *(a3 + 1) = 0;
          v76 = *(a3 + 3);
          if (v76 && v10)
          {
            (*(*v76 + 16))(v76, v9);
          }
        }

        goto LABEL_144;
      case 0x358:
        IPC::Decoder::decode<std::tuple<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,unsigned long long>>(buf, a3);
        if (buf[24] == 1)
        {
          WebKit::PlaybackSessionManagerProxy::setLogIdentifier(this, *buf, *&buf[8], *&buf[16]);
        }

        goto LABEL_144;
      case 0x359:
        IPC::Decoder::decode<std::tuple<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,BOOL>>(a3, buf);
        if (buf[24] == 1)
        {
          WebKit::PlaybackSessionManagerProxy::setUpPlaybackControlsManagerWithID(this, *buf, *&buf[8], buf[16]);
        }

        goto LABEL_144;
      case 0x35A:
        IPC::Decoder::decode<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(a3, &v77);
        if ((v78 & 1) == 0)
        {
          goto LABEL_143;
        }

        IPC::ArgumentCoder<std::optional<WebCore::SpatialVideoMetadata>,void>::decode<IPC::Decoder>(a3, v79);
        if ((v81 & 1) == 0)
        {
          v60 = *a3;
          v61 = *(a3 + 1);
          *a3 = 0;
          *(a3 + 1) = 0;
          v62 = *(a3 + 3);
          if (!v62)
          {
            goto LABEL_143;
          }

          if (!v61)
          {
            goto LABEL_143;
          }

          (*(*v62 + 16))(v62, v60);
          if ((v81 & 1) == 0)
          {
            goto LABEL_143;
          }
        }

        if ((v78 & 1) == 0)
        {
          goto LABEL_110;
        }

        *buf = v77;
        *&buf[16] = *v79;
        v83 = v80;
        LOBYTE(v84) = 1;
        WebKit::PlaybackSessionManagerProxy::spatialVideoMetadataChanged(this, v77, *(&v77 + 1), &buf[16]);
        goto LABEL_144;
      case 0x35B:
        IPC::Decoder::decode<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(a3, v79);
        if ((v80 & 1) == 0)
        {
          goto LABEL_143;
        }

        IPC::Decoder::decode<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(a3, buf);
        if (buf[16] != 1)
        {
          goto LABEL_143;
        }

        if ((v80 & 1) == 0)
        {
          goto LABEL_110;
        }

        WebKit::PlaybackSessionManagerProxy::swapFullscreenModes(this, v79[0], v79[1], *buf, *&buf[8]);
        goto LABEL_144;
      case 0x35C:
        IPC::Decoder::decode<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(a3, &v77);
        if ((v78 & 1) == 0)
        {
          goto LABEL_143;
        }

        IPC::ArgumentCoder<std::optional<WebCore::VideoProjectionMetadata>,void>::decode<IPC::Decoder>(a3, v79);
        if ((v81 & 1) == 0)
        {
          v57 = *a3;
          v58 = *(a3 + 1);
          *a3 = 0;
          *(a3 + 1) = 0;
          v59 = *(a3 + 3);
          if (!v59)
          {
            goto LABEL_143;
          }

          if (!v58)
          {
            goto LABEL_143;
          }

          (*(*v59 + 16))(v59, v57);
          if ((v81 & 1) == 0)
          {
            goto LABEL_143;
          }
        }

        if ((v78 & 1) == 0)
        {
          goto LABEL_110;
        }

        *buf = v77;
        buf[16] = 0;
        LOBYTE(v83) = 0;
        if (v80 == 1)
        {
          buf[16] = v79[0];
          *&buf[24] = v79[1];
          LOBYTE(v83) = 1;
        }

        LOBYTE(v84) = 1;
        WebKit::PlaybackSessionManagerProxy::videoProjectionMetadataChanged(this, *buf, *&buf[8], &buf[16]);
        if ((v84 & 1) == 0)
        {
          goto LABEL_144;
        }

        if (v83 != 1)
        {
          goto LABEL_144;
        }

        v44 = *&buf[24];
        *&buf[24] = 0;
        if (!v44)
        {
          goto LABEL_144;
        }

        if (*v44 == 1)
        {
          goto LABEL_111;
        }

        --*v44;
        goto LABEL_144;
      case 0x35D:
        IPC::Decoder::decode<std::tuple<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,double>>(buf, a3);
        if (buf[24] == 1)
        {
          WebKit::PlaybackSessionManagerProxy::volumeChanged(this, *buf, *&buf[8], *&buf[16]);
        }

        goto LABEL_144;
      case 0x35E:
        IPC::Decoder::decode<std::tuple<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,BOOL>>(a3, buf);
        if (buf[24] == 1)
        {
          WebKit::PlaybackSessionManagerProxy::wirelessVideoPlaybackDisabledChanged(this, *buf, *&buf[8], buf[16]);
        }

        goto LABEL_144;
      default:
        v46 = qword_1ED6416C8;
        if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          if (v8 >= 0x107F)
          {
            v47 = 4223;
          }

          else
          {
            v47 = v8;
          }

          v48 = (&IPC::Detail::messageDescriptions)[3 * v47];
          v49 = *(a3 + 7);
          *buf = 136315394;
          *&buf[4] = v48;
          *&buf[12] = 2048;
          *&buf[14] = v49;
          _os_log_error_impl(&dword_19D52D000, v46, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", buf, 0x16u);
        }

        goto LABEL_143;
    }
  }

  v11 = qword_1ED6416C8;
  if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
  {
    v50 = *(a3 + 25);
    if (v50 >= 0x107F)
    {
      v50 = 4223;
    }

    v51 = (&IPC::Detail::messageDescriptions)[3 * v50];
    *buf = 136315138;
    *&buf[4] = v51;
    _os_log_error_impl(&dword_19D52D000, v11, OS_LOG_TYPE_ERROR, "Message %s received by a disabled message receiver PlaybackSessionManagerProxy", buf, 0xCu);
  }

  v12 = *a3;
  v13 = *(a3 + 1);
  *a3 = 0;
  *(a3 + 1) = 0;
  v14 = *(a3 + 3);
  if (v14 && v13)
  {
    (*(*v14 + 16))(v14, v12);
  }
}

void WebKit::RemoteAudioDestinationManager::didReceiveMessage(WebKit::RemoteAudioDestinationManager *this, atomic_ullong *a2, IPC::Decoder *a3)
{
  v107 = *MEMORY[0x1E69E9840];
  WebKit::RemoteAudioDestinationManager::sharedPreferencesForWebProcess(this, v93);
  if (v93[24] != 1 || (v93[8] & 2) == 0)
  {
    v6 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
    {
      v21 = *(a3 + 25);
      if (v21 >= 0x107F)
      {
        v21 = 4223;
      }

      v22 = (&IPC::Detail::messageDescriptions)[3 * v21];
      *buf = 136315138;
      *&buf[4] = v22;
      _os_log_error_impl(&dword_19D52D000, v6, OS_LOG_TYPE_ERROR, "Message %s received by a disabled message receiver RemoteAudioDestinationManager", buf, 0xCu);
    }

    v7 = *a3;
    v8 = *(a3 + 1);
    *a3 = 0;
    *(a3 + 1) = 0;
    v9 = *(a3 + 3);
    if (v9)
    {
      if (v8)
      {
        (*(*v9 + 16))(v9, v7);
      }
    }

    return;
  }

  WebKit::RemoteAudioDestinationManager::ref(this);
  v10 = *(a3 + 25);
  if (v10 <= 0x3A0)
  {
    if (v10 == 926)
    {
      v23 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if (v24)
      {
        v25 = v23;
        IPC::Decoder::decode<WebKit::ConsumerSharedCARingBufferHandle>(&v99, a3);
        if (v101 == 1)
        {
          *buf = v25;
          WTF::MachSendRight::MachSendRight();
          *&buf[16] = v100;
          v103[0] = 1;
          if ((v101 & 1) == 0)
          {
            goto LABEL_28;
          }

          WTF::MachSendRight::~MachSendRight(&v99);
          if (v103[0])
          {
            goto LABEL_28;
          }

          goto LABEL_104;
        }
      }

LABEL_103:
      buf[0] = 0;
      v103[0] = 0;
LABEL_104:
      v77 = *a3;
      v78 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v79 = *(a3 + 3);
      if (!v79)
      {
        goto LABEL_92;
      }

      if (!v78)
      {
        goto LABEL_92;
      }

      (*(*v79 + 16))(v79, v77);
      if ((v103[0] & 1) == 0)
      {
        goto LABEL_92;
      }

LABEL_28:
      WebKit::RemoteAudioDestinationManager::audioSamplesStorageChanged(this, *buf, &buf[8]);
      if (v103[0])
      {
        WTF::MachSendRight::~MachSendRight(&buf[8]);
      }

      goto LABEL_92;
    }

    if (v10 != 927)
    {
      if (v10 == 928)
      {
        v11 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
        if (v12)
        {
          WebKit::RemoteAudioDestinationManager::deleteAudioDestination(this, v11);
        }

        goto LABEL_92;
      }

      goto LABEL_34;
    }

    v34 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
    if ((v35 & 1) == 0)
    {
      buf[0] = 0;
      v106 = 0;
LABEL_109:
      v80 = *a3;
      v81 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v82 = *(a3 + 3);
      if (!v82)
      {
        goto LABEL_87;
      }

      if (!v81)
      {
        goto LABEL_87;
      }

      (*(*v82 + 16))(v82, v80);
      if ((v106 & 1) == 0)
      {
        goto LABEL_87;
      }

LABEL_66:
      v53 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v54 & 1) == 0)
      {
        goto LABEL_87;
      }

      a3 = v53;
      while (1)
      {
        v55 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v56 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v56, v55 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v56 == v55)
        {
          goto LABEL_84;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_84:
      v68 = WTF::fastMalloc(0x18);
      *v68 = &unk_1F10F1A28;
      v68[1] = a3;
      v68[2] = a2;
      v99 = v68;
      if (v106)
      {
        LODWORD(v69) = *&buf[24];
        WebKit::RemoteAudioDestinationManager::createAudioDestination(this, *buf, v69, *&buf[28], &buf[8], *&buf[16], *&buf[20], v103, v105, &v99);
        v70 = v99;
        v99 = 0;
        if (v70)
        {
          (*(*v70 + 8))(v70);
        }

LABEL_87:
        if (v106 == 1)
        {
          WTF::MachSendRight::~MachSendRight(v105);
          IPC::Semaphore::destroy(v103);
          WTF::MachSendRight::~MachSendRight(v103);
          goto LABEL_89;
        }

        goto LABEL_92;
      }

      goto LABEL_102;
    }

    v36 = v34;
    IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, &v94);
    if ((v95 & 1) == 0)
    {
      v88 = *a3;
      v89 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v90 = *(a3 + 3);
      if (!v90 || !v89 || ((*(*v90 + 16))(v90, v88), (v95 & 1) == 0))
      {
        buf[0] = 0;
        v106 = 0;
        goto LABEL_65;
      }
    }

    v37 = *(a3 + 1);
    v38 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
    v39 = *a3;
    v40 = v38 - *a3;
    v41 = v37 >= v40;
    v42 = v37 - v40;
    if (!v41 || v42 <= 3)
    {
      goto LABEL_127;
    }

    *(a3 + 2) = v38 + 1;
    if (!v38)
    {
      goto LABEL_130;
    }

    v43 = *v38;
    v44 = ((v38 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    if (v37 < v44 - v39 || v37 - (v44 - v39) <= 3)
    {
      goto LABEL_127;
    }

    *(a3 + 2) = v44 + 4;
    if (!v44)
    {
      goto LABEL_130;
    }

    v45 = *v44;
    v46 = ((v44 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    if (v37 < v46 - v39 || v37 - (v46 - v39) <= 3)
    {
      goto LABEL_127;
    }

    *(a3 + 2) = v46 + 4;
    if (!v46)
    {
      goto LABEL_130;
    }

    v47 = *v46;
    v48 = ((v46 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    if (v37 >= v48 - v39 && v37 - (v48 - v39) > 3)
    {
      *(a3 + 2) = v48 + 4;
      if (v48)
      {
        v49 = *v48;
        IPC::ArgumentCoder<IPC::Semaphore,void>::decode(a3, v96);
        if (v98 & 1) != 0 || (v39 = *a3, v75 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v76 = *(a3 + 3)) != 0) && v75 && ((*(*v76 + 16))(v76, v39), (v98))
        {
          IPC::ArgumentCoder<WebCore::SharedMemoryHandle,void>::decode(a3, &v99);
          if (BYTE8(v100) & 1) != 0 || (v39 = *a3, v83 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v84 = *(a3 + 3)) != 0) && v83 && ((*(*v84 + 16))(v84, v39), (BYTE8(v100)))
          {
            if ((v95 & 1) == 0 || (v98 & 1) == 0)
            {
LABEL_102:
              __break(1u);
              goto LABEL_103;
            }

            v50 = v94;
            v94 = 0;
            *buf = v36;
            *&buf[8] = v50;
            *&buf[16] = v43;
            *&buf[20] = v45;
            *&buf[24] = v47;
            *&buf[28] = v49;
            WTF::MachSendRight::MachSendRight();
            v51 = v97;
            v97 = 0;
            v104 = v51;
            WTF::MachSendRight::MachSendRight();
            v105[1] = v100;
            v106 = 1;
            if (BYTE8(v100))
            {
              WTF::MachSendRight::~MachSendRight(&v99);
            }
          }

          else
          {
            buf[0] = 0;
            v106 = 0;
          }

          if (v98)
          {
            IPC::Semaphore::destroy(v96);
            WTF::MachSendRight::~MachSendRight(v96);
          }

          goto LABEL_61;
        }

LABEL_101:
        buf[0] = 0;
        v106 = 0;
LABEL_61:
        if (v95)
        {
          v52 = v94;
          v94 = 0;
          if (v52)
          {
            if (atomic_fetch_add_explicit(v52, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v52, v39);
            }
          }
        }

LABEL_65:
        if (v106)
        {
          goto LABEL_66;
        }

        goto LABEL_109;
      }
    }

    else
    {
LABEL_127:
      *a3 = 0;
      *(a3 + 1) = 0;
      v91 = *(a3 + 3);
      if (v91)
      {
        if (v37)
        {
          (*(*v91 + 16))(v91);
          v39 = *a3;
          v37 = *(a3 + 1);
          goto LABEL_130;
        }
      }

      else
      {
        v37 = 0;
      }

      v39 = 0;
    }

LABEL_130:
    *a3 = 0;
    *(a3 + 1) = 0;
    v92 = *(a3 + 3);
    if (v92 && v37)
    {
      (*(*v92 + 16))(v92);
    }

    goto LABEL_101;
  }

  if (v10 == 929)
  {
    v26 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
    if ((v27 & 1) == 0 || (v28 = v26, IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, &v99), (v100 & 1) == 0) && ((v85 = *a3, v86 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v87 = *(a3 + 3)) == 0) || !v86 || ((*(*v87 + 16))(v87, v85), (v100 & 1) == 0)))
    {
LABEL_35:
      v31 = *a3;
      v32 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v33 = *(a3 + 3);
      if (v33 && v32)
      {
        (*(*v33 + 16))(v33, v31);
      }

      goto LABEL_92;
    }

    *buf = v28;
    *&buf[8] = v99;
    buf[16] = 1;
    WebKit::RemoteAudioDestinationManager::setSceneIdentifier(this, v28, &buf[8]);
    if (buf[16])
    {
LABEL_89:
      v71 = *&buf[8];
      *&buf[8] = 0;
      if (v71 && atomic_fetch_add_explicit(v71, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v71, v29);
      }
    }
  }

  else
  {
    if (v10 == 930)
    {
      v57 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
      if ((v58 & 1) == 0)
      {
        goto LABEL_92;
      }

      v59 = v57;
      v60 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v61 & 1) == 0)
      {
        goto LABEL_92;
      }

      v62 = v60;
      while (1)
      {
        v63 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v64 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v64, v63 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v64 == v63)
        {
          goto LABEL_81;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_81:
      v67 = WTF::fastMalloc(0x18);
      *v67 = &unk_1F10F1A50;
      v67[1] = v62;
      v67[2] = a2;
      *buf = v67;
      WebKit::RemoteAudioDestinationManager::startAudioDestination(this, v59, buf);
      v66 = *buf;
      *buf = 0;
      if (!v66)
      {
        goto LABEL_92;
      }
    }

    else
    {
      if (v10 != 931)
      {
LABEL_34:
        v30 = qword_1ED6416C8;
        if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          if (v10 >= 0x107F)
          {
            v72 = 4223;
          }

          else
          {
            v72 = v10;
          }

          v73 = (&IPC::Detail::messageDescriptions)[3 * v72];
          v74 = *(a3 + 7);
          *buf = 136315394;
          *&buf[4] = v73;
          *&buf[12] = 2048;
          *&buf[14] = v74;
          _os_log_error_impl(&dword_19D52D000, v30, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", buf, 0x16u);
        }

        goto LABEL_35;
      }

      v13 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
      if ((v14 & 1) == 0)
      {
        goto LABEL_92;
      }

      v15 = v13;
      v16 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v17 & 1) == 0)
      {
        goto LABEL_92;
      }

      v18 = v16;
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
          goto LABEL_78;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_78:
      v65 = WTF::fastMalloc(0x18);
      *v65 = &unk_1F10F1A78;
      v65[1] = v18;
      v65[2] = a2;
      *buf = v65;
      WebKit::RemoteAudioDestinationManager::stopAudioDestination(this, v15, buf);
      v66 = *buf;
      *buf = 0;
      if (!v66)
      {
        goto LABEL_92;
      }
    }

    (*(*v66 + 8))(v66);
  }

LABEL_92:
  if (this)
  {
    WebKit::RemoteAudioDestinationManager::deref(this);
  }
}

atomic_ullong *WebKit::RemoteAudioHardwareListener::didReceiveMessage(WebKit::RemoteAudioHardwareListener *this, IPC::Connection *a2, IPC::Decoder *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = (this + 72);
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
  v8 = *(a3 + 25);
  switch(v8)
  {
    case 0x3A6u:
      IPC::Decoder::decode<std::tuple<unsigned long long,unsigned long long>>(a3, v17);
      if (v17[16] == 1)
      {
        *(this + 24) = *v17;
        (*(**(this + 1) + 32))(*(this + 1));
      }

      break;
    case 0x3A5u:
      *(this + 4) = 2;
      (*(**(this + 1) + 24))(*(this + 1), a2);
      break;
    case 0x3A4u:
      *(this + 4) = 1;
      (*(**(this + 1) + 16))(*(this + 1), a2);
      break;
    default:
      v10 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        if (v8 >= 0x107F)
        {
          v14 = 4223;
        }

        else
        {
          v14 = v8;
        }

        v15 = (&IPC::Detail::messageDescriptions)[3 * v14];
        v16 = *(a3 + 7);
        *v17 = 136315394;
        *&v17[4] = v15;
        *&v17[12] = 2048;
        *&v17[14] = v16;
        _os_log_error_impl(&dword_19D52D000, v10, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", v17, 0x16u);
      }

      v9 = *a3;
      v11 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v12 = *(a3 + 3);
      if (v12 && v11)
      {
        (*(*v12 + 16))(v12, v9);
      }

      break;
  }

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::RemoteAudioHardwareListener,(WTF::DestructionThread)0>::deref(v5, v9);
}

atomic_uchar **WebKit::RemoteAudioSession::didReceiveMessage(WebKit::RemoteAudioSession *this, IPC::Connection *a2, IPC::Decoder *a3)
{
  v26 = *MEMORY[0x1E69E9840];
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
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v5);
LABEL_6:
  v8 = *(a3 + 25);
  switch(v8)
  {
    case 0x3B5u:
      WebKit::RemoteAudioSession::beginInterruptionRemote(this);
      break;
    case 0x3B7u:
      if (IPC::Decoder::decode<std::tuple<WebCore::AudioSessionMayResume>>(a3) >= 0x100u)
      {
        WebKit::RemoteAudioSession::endInterruptionRemote(this);
      }

      break;
    case 0x3B6u:
      IPC::ArgumentCoder<std::tuple<WebKit::RemoteAudioSessionConfiguration>,void>::decode<IPC::Decoder>(a3, v21);
      if (v25 & 1) != 0 || (v9 = *a3, v19 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v20 = *(a3 + 3)) != 0) && v19 && ((*(*v20 + 16))(v20, v9), (v25))
      {
        WebKit::RemoteAudioSession::configurationChanged(this, v21);
        if (v25)
        {
          v10 = v24;
          v24 = 0;
          if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v10, v9);
          }

          v11 = *v21;
          *v21 = 0;
          if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v11, v9);
          }
        }
      }

      break;
    default:
      v12 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        if (v8 >= 0x107F)
        {
          v16 = 4223;
        }

        else
        {
          v16 = v8;
        }

        v17 = (&IPC::Detail::messageDescriptions)[3 * v16];
        v18 = *(a3 + 7);
        *v21 = 136315394;
        *&v21[4] = v17;
        v22 = 2048;
        v23 = v18;
        _os_log_error_impl(&dword_19D52D000, v12, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", v21, 0x16u);
      }

      v9 = *a3;
      v13 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v14 = *(a3 + 3);
      if (v14 && v13)
      {
        (*(*v14 + 16))(v14, v9);
      }

      break;
  }

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::AudioSession,(WTF::DestructionThread)0>::deref(v5, v9);
}

uint64_t WebKit::RemoteAudioSessionProxy::didReceiveMessage(WebKit::RemoteAudioSessionProxy *this, IPC::Connection *a2, IPC::Decoder *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  WebKit::RemoteAudioDestinationManager::sharedPreferencesForWebProcess(this, &v32);
  if (v34 == 1)
  {
    v5 = v33;
    if ((~v33 & 0x100200000000) == 0)
    {
      ++*(this + 4);
      v6 = *(a3 + 25);
      if (v6 <= 0x3AF)
      {
        if (*(a3 + 25) > 0x3ADu)
        {
          if (v6 == 942)
          {
            v17 = IPC::Decoder::decode<WebCore::FocusDirection>(a3);
            if ((v17 & 0x100) == 0)
            {
              goto LABEL_56;
            }

            v18 = v17;
            v19 = IPC::Decoder::decode<WebCore::NotificationDirection>(a3);
            if ((v19 & 0x100) == 0)
            {
              goto LABEL_56;
            }

            v20 = v19;
            v21 = IPC::Decoder::decode<WebKit::AuthenticationChallengeDisposition>(a3);
            v22 = (v20 | (v21 << 8)) << 8;
            if ((v21 & 0x100) != 0)
            {
              v23 = v18;
            }

            else
            {
              v23 = 0;
            }

            if ((v21 & 0x100) != 0)
            {
              v24 = 0x1000000;
            }

            else
            {
              v24 = 0;
            }

            if ((v21 & 0x100) == 0)
            {
              v22 = 0;
            }

            if (!HIBYTE(v24))
            {
              goto LABEL_56;
            }

            result = WebKit::RemoteAudioSessionProxy::setCategory(this, v23, ((v24 | v23 | v22) >> 8), HIWORD(v22));
            goto LABEL_57;
          }

          if (v6 == 943)
          {
            result = IPC::Decoder::decode<std::tuple<std::optional<BOOL>>>(a3);
            *buf = result;
            buf[2] = BYTE2(result);
            if ((result & 0x10000) != 0)
            {
              result = WebKit::RemoteAudioSessionProxy::setIsPlayingToBluetoothOverride(this, buf);
            }

            goto LABEL_57;
          }
        }

        else
        {
          if (v6 == 940)
          {
            result = WebKit::RemoteAudioSessionProxy::beginInterruptionRemote(this);
            goto LABEL_57;
          }

          if (v6 == 941)
          {
            result = IPC::Decoder::decode<std::tuple<WebCore::AudioSessionMayResume>>(a3);
            if (result >= 0x100u)
            {
              result = WebKit::RemoteAudioSessionProxy::endInterruptionRemote(this, result & 1);
            }

            goto LABEL_57;
          }
        }
      }

      else if (*(a3 + 25) <= 0x3B1u)
      {
        if (v6 == 944)
        {
          result = IPC::Decoder::decode<std::tuple<unsigned long long>>(a3);
          if (v13)
          {
            result = WebKit::RemoteAudioSessionProxy::setPreferredBufferSize(this, result);
          }

          goto LABEL_57;
        }

        if (v6 == 945)
        {
          IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a3, buf);
          if (buf[8] & 1) != 0 || (v13 = *a3, v14 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (result = *(a3 + 3)) != 0) && v14 && (result = (*(*result + 16))(result, v13), (buf[8]))
          {
            result = WebKit::RemoteAudioSessionProxy::setSceneIdentifier(this, buf);
            if (buf[8])
            {
              result = *buf;
              *buf = 0;
              if (result)
              {
                if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  result = WTF::StringImpl::destroy(result, v13);
                }
              }
            }
          }

          goto LABEL_57;
        }
      }

      else
      {
        switch(v6)
        {
          case 0x3B2u:
            v25 = IPC::Decoder::decode<WebKit::WebExtensionContentWorldType>(a3);
            if ((v25 & 0x100) == 0)
            {
              goto LABEL_56;
            }

            result = WebKit::RemoteAudioSessionProxy::setSoundStageSize(this, v25);
            goto LABEL_57;
          case 0x3B3u:
            if ((v5 & 4) == 0)
            {
              v7 = qword_1ED6416C8;
              if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315138;
                *&buf[4] = "RemoteAudioSessionProxy_TriggerBeginInterruptionForTesting";
                v8 = "Message %s received by a disabled message endpoint";
                goto LABEL_54;
              }

LABEL_56:
              v13 = *a3;
              v14 = *(a3 + 1);
              *a3 = 0;
              *(a3 + 1) = 0;
              result = *(a3 + 3);
              if (result && v14)
              {
                result = (*(*result + 16))(result, v13);
              }

              goto LABEL_57;
            }

            result = WebKit::RemoteAudioSessionProxy::triggerBeginInterruptionForTesting(this);
LABEL_57:
            if (*(this + 4) == 1)
            {
              return (*(*this + 24))(this, v13, v14);
            }

            --*(this + 4);
            return result;
          case 0x3B4u:
            if ((v5 & 4) == 0)
            {
              v7 = qword_1ED6416C8;
              if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315138;
                *&buf[4] = "RemoteAudioSessionProxy_TriggerEndInterruptionForTesting";
                v8 = "Message %s received by a disabled message endpoint";
LABEL_54:
                v26 = v7;
                v27 = 12;
LABEL_66:
                _os_log_error_impl(&dword_19D52D000, v26, OS_LOG_TYPE_ERROR, v8, buf, v27);
                goto LABEL_56;
              }

              goto LABEL_56;
            }

            result = WebKit::RemoteAudioSessionProxy::triggerEndInterruptionForTesting(this);
            goto LABEL_57;
        }
      }

      v28 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        if (v6 >= 0x107F)
        {
          v29 = 4223;
        }

        else
        {
          v29 = v6;
        }

        v30 = (&IPC::Detail::messageDescriptions)[3 * v29];
        v31 = *(a3 + 7);
        *buf = 136315394;
        *&buf[4] = v30;
        v36 = 2048;
        v37 = v31;
        v8 = "Unhandled message %s to %llu";
        v26 = v28;
        v27 = 22;
        goto LABEL_66;
      }

      goto LABEL_56;
    }
  }

  v9 = qword_1ED6416C8;
  if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
  {
    v15 = *(a3 + 25);
    if (v15 >= 0x107F)
    {
      v15 = 4223;
    }

    v16 = (&IPC::Detail::messageDescriptions)[3 * v15];
    *buf = 136315138;
    *&buf[4] = v16;
    _os_log_error_impl(&dword_19D52D000, v9, OS_LOG_TYPE_ERROR, "Message %s received by a disabled message receiver RemoteAudioSessionProxy", buf, 0xCu);
  }

  v10 = *a3;
  v11 = *(a3 + 1);
  *a3 = 0;
  *(a3 + 1) = 0;
  result = *(a3 + 3);
  if (result && v11)
  {
    return (*(*result + 16))(result, v10);
  }

  return result;
}

BOOL WebKit::RemoteAudioSessionProxy::didReceiveSyncMessage(WebKit::RemoteAudioDestinationManager *a1, atomic_ullong *a2, IPC::Decoder *a3, uint64_t *a4)
{
  v37 = *MEMORY[0x1E69E9840];
  WebKit::RemoteAudioDestinationManager::sharedPreferencesForWebProcess(a1, v32);
  if (v33 != 1 || (~v32[1] & 0x100200000000) != 0)
  {
    v17 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
    {
      v27 = *(a3 + 25);
      if (v27 >= 0x107F)
      {
        v27 = 4223;
      }

      v28 = (&IPC::Detail::messageDescriptions)[3 * v27];
      *buf = 136315138;
      *&buf[4] = v28;
      _os_log_error_impl(&dword_19D52D000, v17, OS_LOG_TYPE_ERROR, "Message %s received by a disabled message receiver RemoteAudioSessionProxy", buf, 0xCu);
    }

    v18 = *a3;
    v19 = *(a3 + 1);
    *a3 = 0;
    *(a3 + 1) = 0;
    v20 = *(a3 + 3);
    if (v20 && v19)
    {
      (*(*v20 + 16))(v20, v18);
    }

    return 0;
  }

  else
  {
    ++*(a1 + 4);
    v8 = *(a3 + 25);
    v9 = v8 == 4017;
    if (v8 == 4017)
    {
      v10 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
      if ((v10 & 0x100) != 0)
      {
        v13 = v10;
        v14 = *a4;
        *a4 = 0;
        while (1)
        {
          v15 = *a2;
          if ((*a2 & 1) == 0)
          {
            break;
          }

          v16 = *a2;
          atomic_compare_exchange_strong_explicit(a2, &v16, v15 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v16 == v15)
          {
            goto LABEL_18;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_18:
        v24 = WTF::fastMalloc(0x18);
        *v24 = &unk_1F10F1AA0;
        v24[1] = v14;
        v24[2] = a2;
        *buf = v24;
        WebKit::RemoteAudioSessionProxy::tryToSetActive(a1, v13 & 1, buf);
        v25 = *buf;
        *buf = 0;
        if (v25)
        {
          (*(*v25 + 8))(v25);
        }
      }
    }

    else
    {
      v21 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        if (v8 >= 0x107F)
        {
          v29 = 4223;
        }

        else
        {
          v29 = v8;
        }

        v30 = (&IPC::Detail::messageDescriptions)[3 * v29];
        v31 = *(a3 + 7);
        *buf = 136315394;
        *&buf[4] = v30;
        v35 = 2048;
        v36 = v31;
        _os_log_error_impl(&dword_19D52D000, v21, OS_LOG_TYPE_ERROR, "Unhandled synchronous message %s to %llu", buf, 0x16u);
      }

      v11 = *a3;
      v12 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v23 = *(a3 + 3);
      if (v23 && v12)
      {
        (*(*v23 + 16))(v23, v11);
      }
    }

    if (*(a1 + 4) == 1)
    {
      (*(*a1 + 24))(a1, v11, v12);
    }

    else
    {
      --*(a1 + 4);
    }
  }

  return v9;
}