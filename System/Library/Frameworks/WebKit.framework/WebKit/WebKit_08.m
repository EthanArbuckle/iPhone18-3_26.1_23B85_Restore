unsigned __int8 *WebKit::DrawingAreaProxy::startReceivingMessages(WebKit::DrawingAreaProxy *this, WebKit::WebProcessProxy *a2)
{
  result = (*(*this + 72))(this);
  if (v5)
  {
    v6 = result;
    v7 = v5;
    do
    {
      v8 = *v6++;
      v9 = *(this + 3);
      v11[0] = v8;
      v11[1] = v9;
      result = WTF::HashMap<std::pair<IPC::ReceiverName,unsigned long long>,WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<std::pair<IPC::ReceiverName,unsigned long long>>,WTF::PairHashTraits<WTF::StrongEnumHashTraits<IPC::ReceiverName>,WTF::HashTraits<unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<std::pair<IPC::ReceiverName,unsigned long long>,IPC::MessageReceiver&>(a2 + 13, v11, this, v10);
      --v7;
    }

    while (v7);
  }

  return result;
}

__int16 *WebKit::RemoteLayerTreeDrawingAreaProxy::messageReceiverNames(WebKit::RemoteLayerTreeDrawingAreaProxy *this)
{
  if ((_MergedGlobals_79 & 1) == 0)
  {
    word_1ED6426FA = 23303;
    _MergedGlobals_79 = 1;
  }

  return &word_1ED6426FA;
}

BOOL WebKit::DrawingAreaProxy::setSize(int32x2_t *this, const IntSize *a2, int32x2_t *a3, double a4, int32x4_t a5)
{
  *v5.i8 = this[7];
  *a5.i8 = *a2;
  v5.u64[1] = *a3;
  v6 = vceqq_s32(v5, a5);
  v7 = vaddvq_s32(vbicq_s8(xmmword_19E703830, v6));
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(v6))))
  {
    this[7] = *a2;
    this[8] = vadd_s32(*a3, this[8]);
    (*(*this + 344))(this);
  }

  return (v7 & 0xF) != 0;
}

WebKit::RemoteScrollingCoordinatorProxy *WebKit::RemoteLayerTreeDrawingAreaProxyIOS::createScrollingCoordinatorProxy@<X0>(WebKit::RemoteLayerTreeDrawingAreaProxyIOS *this@<X0>, void *a2@<X1>, WebKit::RemoteScrollingCoordinatorProxy **a3@<X8>)
{
  v4 = *(this + 5);
  if (v4)
  {
    v5 = *(v4 + 8);
    if (v5)
    {
      v6 = (v5 - 16);
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  if (WebKit::RemoteScrollingCoordinatorProxyIOS::s_heapRef)
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::RemoteScrollingCoordinatorProxyIOS::s_heapRef, a2);
  }

  else
  {
    NonCompact = WebKit::RemoteScrollingCoordinatorProxyIOS::operatorNewSlow(0);
  }

  result = WebKit::RemoteScrollingCoordinatorProxy::RemoteScrollingCoordinatorProxy(NonCompact, v6);
  *result = &unk_1F1109D80;
  *(result + 19) = 0;
  *(result + 20) = 0;
  *a3 = result;
  return result;
}

WebKit::RemoteScrollingCoordinatorProxy *WebKit::RemoteScrollingCoordinatorProxy::RemoteScrollingCoordinatorProxy(WebKit::RemoteScrollingCoordinatorProxy *this, WebKit::WebPageProxy *a2)
{
  *(this + 4) = 0;
  *this = &unk_1F1120790;
  *(this + 1) = 0;
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2 + 6, a2 + 16);
  v4 = *(a2 + 3);
  atomic_fetch_add(v4, 1u);
  *(this + 3) = v4;
  v6 = WebKit::RemoteScrollingTreeIOS::operator new(0x188, v5);
  *(this + 4) = WebKit::RemoteScrollingTreeIOS::RemoteScrollingTreeIOS(v6, this);
  *(this + 40) = 0;
  *(this + 84) = 0;
  *(this + 88) = 0;
  *(this + 124) = 0;
  *(this + 128) = 0;
  *(this + 132) = 0;
  *(this + 136) = 0;
  *(this + 18) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 12) = 0;
  *(this + 120) = 0;
  return this;
}

uint64_t WebKit::RemoteScrollingTreeIOS::operator new(WebKit::RemoteScrollingTreeIOS *this, void *a2)
{
  if (this == 392 && WebKit::RemoteScrollingTreeIOS::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::RemoteScrollingTreeIOS::s_heapRef, a2);
  }

  else
  {
    return WebKit::RemoteScrollingTreeIOS::operatorNewSlow(this);
  }
}

uint64_t WebKit::BrowsingContextGroup::ensureProcessForSite@<X0>(WebKit::BrowsingContextGroup *a1@<X0>, WTF **a2@<X1>, const WTF::StringImpl *a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t *a6@<X8>)
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::siteIsolationEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::siteIsolationEnabledKey(void)::key = WebKit::WebPreferencesKey::siteIsolationEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  if (!WebKit::WebPreferencesStore::getBoolValueForKey((a4 + 40), &WebKit::WebPreferencesKey::siteIsolationEnabledKey(void)::key, a3))
  {
    goto LABEL_7;
  }

  result = WebKit::BrowsingContextGroup::processForSite(a1, a2, v12);
  if (!result)
  {
    goto LABEL_7;
  }

  ++*(result + 8);
  if (*(*(result + 16) + 120) != *(a3 + 15))
  {
    WTF::RefCounted<WebKit::FrameProcess>::deref((result + 8), v14, v15);
LABEL_7:
    v16 = WTF::fastMalloc(0x30);
    result = WebKit::FrameProcess::FrameProcess(v16, a3, a1, a2, a4, a5);
  }

  *a6 = result;
  return result;
}

uint64_t WebKit::FrameProcess::FrameProcess(uint64_t a1, uint64_t a2, unsigned int *a3, atomic_uint **a4, uint64_t a5, int a6)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  atomic_fetch_add((a2 + 16), 1u);
  *(a1 + 16) = a2;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a3, a3);
  v13 = *a3;
  atomic_fetch_add(*a3, 1u);
  *(a1 + 24) = v13;
  v14 = *a4;
  if (*a4)
  {
    atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
  }

  *(a1 + 32) = v14;
  v15 = a4[1];
  if (v15)
  {
    atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed);
  }

  *(a1 + 40) = v15;
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::siteIsolationEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::siteIsolationEnabledKey(void)::key = WebKit::WebPreferencesKey::siteIsolationEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  if (WebKit::WebPreferencesStore::getBoolValueForKey((a5 + 40), &WebKit::WebPreferencesKey::siteIsolationEnabledKey(void)::key, v12))
  {
    if (a6)
    {
      WebKit::BrowsingContextGroup::addFrameProcess(a3, a1);
    }

    std::optional<WebCore::Site>::operator=[abi:sn200100]<WebCore::Site,void>(a2 + 736, a4);
  }

  else
  {
    v17 = *(a1 + 24);
    *(a1 + 24) = 0;
    if (v17 && atomic_fetch_add(v17, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v17);
      WTF::fastFree(v17, v16);
    }
  }

  return a1;
}

uint64_t WebKit::WebFrameProxy::WebFrameProxy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, char a6, uint64_t a7, char a8)
{
  v16 = API::Object::Object(a1);
  v17 = v16 + 16;
  *(v16 + 3) = 0;
  v18 = (v16 + 24);
  *v16 = &unk_1F1116360;
  *(v16 + 2) = &unk_1F11163A0;
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a2 + 24), a2 + 16);
  v19 = *(a2 + 24);
  atomic_fetch_add(v19, 1u);
  ++*(a3 + 8);
  *(a1 + 32) = v19;
  *(a1 + 40) = a3;
  if (a7)
  {
    WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a7 + 24), a7 + 16);
    v20 = *(a7 + 24);
    if (v20)
    {
      atomic_fetch_add(v20, 1u);
    }
  }

  else
  {
    v20 = 0;
  }

  *(a1 + 48) = v20;
  *(a1 + 56) = a8;
  *(a1 + 60) = 2;
  *(a1 + 64) = 0;
  WTF::URL::invalidate((a1 + 64));
  *(a1 + 104) = 0;
  WTF::URL::invalidate((a1 + 104));
  *(a1 + 144) = 0;
  WTF::URL::invalidate((a1 + 144));
  *(a1 + 184) = 0;
  WTF::URL::invalidate((a1 + 184));
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 249) = 0u;
  *(a1 + 288) = a4;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0;
  WTF::URL::invalidate((a1 + 344));
  *(a1 + 408) = 0;
  *(a1 + 416) = 0;
  *(a1 + 456) = 0;
  *(a1 + 472) = 0;
  *(a1 + 480) = 0;
  *(a1 + 464) = 0;
  *(a1 + 488) = 0;
  *(a1 + 496) = 0;
  *(a1 + 504) = WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>::generateIdentifierInternal();
  *(a1 + 512) = 0;
  *(a1 + 516) = 0;
  *(a1 + 524) = 0;
  *(a1 + 528) = a5;
  *(a1 + 530) = a6;
  {
    WebKit::allFrames(void)::map = 0;
  }

  if (a4 == -1 || !a4)
  {
    __break(0xC471u);
    JUMPOUT(0x19D5D6978);
  }

  v21 = WebKit::allFrames(void)::map;
  if (!WebKit::allFrames(void)::map)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebFrameProxy,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebFrameProxy,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebFrameProxy,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebFrameProxy,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand();
    v21 = WebKit::allFrames(void)::map;
  }

  v22 = *(v21 - 8);
  v23 = (~(a4 << 32) + a4) ^ ((~(a4 << 32) + a4) >> 22);
  v24 = 9 * ((v23 + ~(v23 << 13)) ^ ((v23 + ~(v23 << 13)) >> 8));
  v25 = (v24 ^ (v24 >> 15)) + ~((v24 ^ (v24 >> 15)) << 27);
  v26 = v22 & ((v25 >> 31) ^ v25);
  v27 = (v21 + 16 * v26);
  v28 = *v27;
  if (!*v27)
  {
LABEL_19:
    *v27 = a4;
    WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(v18, v17);
    v32 = *v18;
    atomic_fetch_add(*v18, 1u);
    v33 = v27[1];
    v27[1] = v32;
    if (v33 && atomic_fetch_add(v33, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v33);
      WTF::fastFree(v33, v31);
    }

    v34 = WebKit::allFrames(void)::map;
    if (WebKit::allFrames(void)::map)
    {
      v35 = *(WebKit::allFrames(void)::map - 12) + 1;
    }

    else
    {
      v35 = 1;
    }

    *(WebKit::allFrames(void)::map - 12) = v35;
    v39 = (*(v34 - 16) + v35);
    v40 = *(v34 - 4);
    if (v40 > 0x400)
    {
      if (v40 > 2 * v39)
      {
        goto LABEL_29;
      }
    }

    else if (3 * v40 > 4 * v39)
    {
      goto LABEL_29;
    }

    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebFrameProxy,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebFrameProxy,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebFrameProxy,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebFrameProxy,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand();
    goto LABEL_29;
  }

  v29 = 0;
  v30 = 1;
  while (v28 != a4)
  {
    if (v28 == -1)
    {
      v29 = v27;
    }

    v26 = (v26 + v30) & v22;
    v27 = (v21 + 16 * v26);
    v28 = *v27;
    ++v30;
    if (!*v27)
    {
      if (v29)
      {
        *v29 = 0;
        v29[1] = 0;
        --*(v21 - 16);
        v27 = v29;
      }

      goto LABEL_19;
    }
  }

  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(v18, v17);
  v37 = *v18;
  atomic_fetch_add(*v18, 1u);
  v38 = v27[1];
  v27[1] = v37;
  if (v38 && atomic_fetch_add(v38, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v38);
    WTF::fastFree(v38, v36);
  }

LABEL_29:
  ++dword_1ED6435F8;
  return a1;
}

_DWORD *WTF::RefCounted<WebKit::FrameProcess>::deref(_DWORD *result, WTF::StringImpl *a2, const WTF::StringImpl *a3)
{
  if (*result == 1)
  {
    WebKit::FrameProcess::~FrameProcess((result - 2), a2, a3);

    return WTF::fastFree(v4, v5);
  }

  else
  {
    --*result;
  }

  return result;
}

void WebKit::WebPageProxy::creationParameters(uint64_t a1@<X0>, WebKit::WebProcessProxy *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 *a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v12 = *(a1 + 376);
  CFRetain(*(v12 + 8));
  if (*a7)
  {
    v13 = *(*a7 + 152);
    if (v13)
    {
      CFRetain(*(v13 + 8));
      CFRelease(*(v12 + 8));
      v12 = v13;
    }
  }

  WTF::WeakHashSet<WebKit::WebPageProxy,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::add<WebKit::WebPageProxy>(a2 + 680, v12, v169);
  WebKit::WebUserContentControllerProxy::addProcess(v12, a2);
  if (*(a1 + 1328) == 1)
  {
    WebKit::WebBackForwardList::setItemsAsRestoredFromSession(*(a1 + 712));
  }

  v14 = *(a1 + 56);
  if (v14 && (v15 = *(v14 + 8)) != 0)
  {
    v164 = *(v14 + 8);
    (*(*v15 + 1712))(v15);
    v159 = 0;
  }

  else
  {
    v164 = 0;
    v159 = 1;
  }

  *(a8 + 16) = 0u;
  *(a8 + 8) = 0;
  *a8 = 0;
  *(a8 + 32) = 0u;
  *(a8 + 48) = 0u;
  *(a8 + 64) = 0;
  v16 = *(a1 + 40);
  *(a8 + 72) = *(a3 + 24);
  *(a8 + 80) = v16;
  v166 = a1;
  v17 = *(a1 + 360);
  v18 = *(v17 + 24);
  if (v18)
  {
    atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed);
  }

  *(a8 + 88) = v18;
  v19 = *(v17 + 32);
  *(a8 + 156) = 0;
  *(a8 + 96) = v19;
  *(a8 + 104) = 0;
  *(a8 + 112) = 0;
  *(a8 + 120) = 0;
  *(a8 + 172) = 0;
  *(a8 + 176) = 0;
  *(a8 + 180) = 0;
  *(a8 + 184) = 0;
  *(a8 + 188) = 0;
  *(a8 + 124) = 0uLL;
  *(a8 + 140) = 0uLL;
  *(a8 + 192) = 0;
  *(a8 + 196) = 0;
  *(a8 + 200) = 0;
  *(a8 + 208) = 0uLL;
  *(a8 + 224) = *(*(a1 + 400) + 32);
  *(a8 + 232) = 0;
  *(a8 + 236) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(a8 + 248) = _Q0;
  *(a8 + 308) = 0;
  *(a8 + 316) = 0;
  *(a8 + 424) = 0;
  v25 = (a8 + 480);
  *(a8 + 480) = 0;
  *(a8 + 488) = 0;
  *(a8 + 568) = 0;
  v26 = (a8 + 576);
  *(a8 + 872) = 0;
  *(a8 + 289) = 0u;
  *(a8 + 280) = 0u;
  *(a8 + 264) = 0u;
  *(a8 + 324) = 0;
  *(a8 + 320) = 0;
  *(a8 + 341) = 0;
  *(a8 + 328) = 0u;
  *(a8 + 384) = 0;
  *(a8 + 368) = 0u;
  *(a8 + 352) = 0u;
  *(a8 + 457) = 0u;
  *(a8 + 428) = 0u;
  *(a8 + 444) = 0u;
  *(a8 + 544) = 0;
  *(a8 + 528) = 0u;
  *(a8 + 512) = 0u;
  v167 = (a8 + 496);
  *(a8 + 496) = 0u;
  *(a8 + 560) = 0;
  *(a8 + 552) = 0;
  *(a8 + 600) = 0;
  *(a8 + 592) = 0;
  *(a8 + 576) = 0u;
  *(a8 + 880) = 0x10000;
  WebKit::WebUserContentControllerProxy::parameters(v12, a8 + 888);
  *(a8 + 976) = 0;
  *(a8 + 1008) = 0;
  *(a8 + 1016) = 0;
  *(a8 + 1024) = 0;
  *(a8 + 1032) = 0;
  *(a8 + 1040) = 0;
  *(a8 + 1048) = 0u;
  *(a8 + 1064) = 0u;
  *(a8 + 1080) = 1;
  *(a8 + 1088) = 0;
  *(a8 + 1112) = 0;
  *(a8 + 1120) = 0;
  *(a8 + 1124) = 0;
  *(a8 + 1126) = 1;
  *(a8 + 1128) = 0u;
  *(a8 + 1141) = 0;
  *(a8 + 1149) = 16777473;
  *(a8 + 1153) = 0;
  *(a8 + 1155) = 0;
  *(a8 + 1160) = 0;
  *(a8 + 1384) = 0;
  *(a8 + 1392) = 0;
  *(a8 + 1448) = 0;
  *(a8 + 1456) = a4;
  v27 = *(a1 + 488);
  if (v27)
  {
    atomic_fetch_add_explicit(v27, 2u, memory_order_relaxed);
  }

  *(a8 + 1464) = v27;
  *(a8 + 1472) = 0;
  *(a8 + 1480) = 0;
  v28 = *(a1 + 424);
  if (v28)
  {
    LOWORD(v28) = *(v28 + 528);
  }

  *(a8 + 1488) = v28;
  *(a8 + 1496) = 0;
  *(a8 + 1576) = 0;
  *(a8 + 1656) = 0;
  *(a8 + 1664) = 0;
  *(a8 + 1584) = 0u;
  *(a8 + 1600) = 0u;
  *(a8 + 1609) = 0u;
  v29 = *(a1 + 64);
  *(a8 + 1672) = *(v29 + 588);
  WTF::String::operator=((a8 + 1128), (v29 + 448));
  std::__optional_storage_base<WebKit::RemotePageParameters,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebKit::RemotePageParameters,false>>((a8 + 1160), a5);
  v30 = *(a1 + 424);
  if (v30 && (v30 = *(v30 + 48)) != 0 && (v30 = *(v30 + 8)) != 0)
  {
    v30 = *(v30 + 272);
    v31 = v30 & 0xFFFFFFFFFFFFFF00;
    v32 = v30;
    LOBYTE(v30) = 1;
  }

  else
  {
    v32 = 0;
    v31 = 0;
  }

  *(a8 + 1472) = v31 | v32;
  *(a8 + 1480) = v30;
  std::__optional_storage_base<WebCore::WindowFeatures,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<WebCore::WindowFeatures,false> const&>((a8 + 1496), (*(a1 + 64) + 168));
  v33 = v164;
  v160 = v12;
  if (v164)
  {
    v33 = (*(*v164 + 48))(v164);
  }

  *a8 = v33;
  *(a8 + 8) = *(*(a1 + 32) + 80);
  *(a8 + 64) = *(a3 + 36);
  v34 = *(a1 + 368);
  WTF::RobinHoodHashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>::operator=(a8 + 16, (v34 + 40));
  WTF::RobinHoodHashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>::operator=(a8 + 40, (v34 + 64));
  *(a8 + 104) = *(a1 + 736);
  v36 = *(a1 + 32);
  v37 = *(a8 + 112);
  if (v37 != *(v36 + 2048))
  {
    if ((v37 & 0x8000000000000) != 0)
    {
      v157 = (v37 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((v37 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v157);
        WTF::fastFree(v157, v35);
      }
    }

    v38 = *(v36 + 2048);
    *(a8 + 112) = v38;
    if ((v38 & 0x8000000000000) != 0)
    {
      atomic_fetch_add((v38 & 0xFFFFFFFFFFFFLL), 1u);
    }
  }

  *(a8 + 120) = *(a1 + 837);
  v39 = *(a1 + 32);
  *(a8 + 124) = *(v39 + 816);
  *(a8 + 132) = *(v39 + 264);
  *(a8 + 140) = *(v39 + 992);
  *(a8 + 148) = *(v39 + 908);
  v40 = *(v39 + 2112);
  *(a8 + 172) = *(v39 + 2128);
  *(a8 + 156) = v40;
  if (*(a1 + 892) == 1)
  {
    *(a8 + 176) = *(a1 + 888);
    *(a8 + 180) = *(a1 + 892);
    v41 = (*(*a3 + 112))(a3);
    *(a8 + 184) = v41;
    *(a8 + 188) = BYTE4(v41);
  }

  *(a8 + 192) = *(a1 + 838);
  *(a8 + 196) = *(a1 + 842);
  *(a8 + 200) = *(a1 + 848);
  WTF::String::operator=((a8 + 216), (a1 + 440));
  *(a8 + 232) = (*(**(a1 + 120) + 240))(*(a1 + 120));
  *(a8 + 233) = *(a1 + 866);
  v42 = 824;
  if (*(a1 + 832))
  {
    v42 = 828;
  }

  v43 = *(a1 + 816);
  *(a8 + 236) = *(a1 + v42);
  *(a8 + 240) = v43;
  *(a8 + 248) = *(a1 + 744);
  v44 = *(a1 + 32);
  *(a8 + 264) = *(v44 + 1976);
  *(a8 + 280) = *(a1 + 1020);
  *(a8 + 284) = *(v44 + 1048);
  *(a8 + 285) = *(a1 + 1184);
  *(a8 + 286) = *(a1 + 1024);
  *(a8 + 287) = *(a1 + 1025);
  *(a8 + 288) = *(v44 + 984);
  *(a8 + 296) = *(v44 + 1956);
  *(a8 + 304) = *(a1 + 1018);
  v45 = *(v44 + 2132);
  *(a8 + 316) = *(v44 + 2140);
  *(a8 + 308) = v45;
  *(a8 + 320) = *(v44 + 1952);
  if (*(a1 + 1081) == 1)
  {
    *(a8 + 321) = *(a1 + 1080) | 0x100;
  }

  else if (*(a8 + 322) == 1)
  {
    *(a8 + 322) = 0;
  }

  *(a8 + 323) = *(a1 + 990);
  *(a8 + 344) = *(a1 + 962);
  *(a8 + 345) = a6;
  *(a8 + 346) = WebKit::WebPageProxy::useDarkAppearance(a1);
  v46 = WebKit::WebPageProxy::useElevatedUserInterfaceLevel(a1);
  *(a8 + 347) = v46;
  *(a8 + 348) = *(a1 + 1141);
  v47 = *(a1 + 32);
  *(a8 + 352) = *(v47 + 2452);
  v48 = *(a1 + 1152);
  *(a8 + 360) = *(a1 + 1144);
  *(a8 + 368) = v48;
  v47 += 2408;
  v49 = *(v47 + 25);
  v50 = *(v47 + 16);
  *(a8 + 384) = *v47;
  *(a8 + 409) = v49;
  *(a8 + 400) = v50;
  v51 = WebCore::screenSize(v46);
  *(a8 + 428) = v52;
  *(a8 + 432) = v53;
  v54 = WebCore::availableScreenSize(v51);
  *(a8 + 436) = v55;
  *(a8 + 440) = v56;
  v57 = WebCore::overrideScreenSize(v54);
  *(a8 + 444) = v58;
  *(a8 + 448) = v59;
  v60 = WebCore::overrideAvailableScreenSize(v57);
  *(a8 + 452) = v61;
  *(a8 + 456) = v62;
  WebCore::screenSize(v60);
  *(a8 + 460) = v64;
  if (v164)
  {
    (*(*v164 + 1160))(v169, v164);
  }

  else
  {
    v169[0] = 0;
    v169[1] = 0;
  }

  v65 = *(a8 + 340);
  if (v65)
  {
    WTF::VectorDestructor<true,WTF::String>::destruct(*(a8 + 328), (*(a8 + 328) + 8 * v65));
  }

  v66 = *(a8 + 328);
  if (v66)
  {
    *(a8 + 328) = 0;
    *(a8 + 336) = 0;
    WTF::fastFree(v66, v63);
  }

  *(a8 + 328) = v169[0];
  v67 = v169[1];
  v169[0] = 0;
  v169[1] = 0;
  *(a8 + 336) = v67;
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v169, v63);
  *(a8 + 464) = *(a1 + 540);
  v68 = API::PageConfiguration::Data::LazyInitializedRef<WebKit::WebProcessPool,&API::PageConfiguration::Data::createWebProcessPool>::get(*(a1 + 64) + 16);
  v69 = WebKit::WebProcessPool::cachedHardwareKeyboardState(v68);
  *(a8 + 468) = v69;
  *(a8 + 470) = BYTE2(v69);
  *(a8 + 471) = *(*(a1 + 64) + 280);
  if (v164)
  {
    (*(*v164 + 1264))(v169, v164);
  }

  else
  {
    v169[0] = 0;
  }

  if (v25 == v169)
  {
    if ((v169[0] & 0x8000000000000) != 0)
    {
      v155 = (v169[0] & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((v169[0] & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v155);
        WTF::fastFree(v155, v70);
      }
    }
  }

  else
  {
    v71 = *v25;
    if ((*v25 & 0x8000000000000) != 0)
    {
      v156 = (v71 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((v71 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v156);
        WTF::fastFree(v156, v70);
      }
    }

    *v25 = v169[0];
  }

  v163 = *(a1 + 368);
  CFRetain(*(v163 + 8));
  *(a8 + 488) = *(a1 + 968);
  v74 = *(a1 + 64);
  v172 = 0;
  v173 = 0;
  if (*(v74 + 376) == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v169, v74 + 360);
  }

  else
  {
    *&v73 = 0;
    *v169 = v73;
    v173 = 0;
  }

  v75 = *(a8 + 508);
  if (v75)
  {
    WTF::VectorDestructor<true,WTF::String>::destruct(*v167, (*v167 + 8 * v75));
  }

  v76 = *v167;
  if (*v167)
  {
    *(a8 + 496) = 0;
    *(a8 + 504) = 0;
    WTF::fastFree(v76, v72);
  }

  *(a8 + 496) = v169[0];
  v77 = v169[1];
  v169[0] = 0;
  v169[1] = 0;
  *(a8 + 504) = v77;
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v169, v72);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v172, v78);
  *(a8 + 544) = *(a1 + 1028);
  if (v164)
  {
    *(a8 + 545) = (*(*v164 + 1760))(v164);
  }

  *(a8 + 546) = *(*(a1 + 32) + 1080);
  WTF::String::operator=((a8 + 552), (a1 + 480));
  *(a8 + 1155) = *(*(a1 + 64) + 600);
  *(a8 + 568) = *(a1 + 704);
  *(a8 + 560) = *(a1 + 696);
  v79 = *(a1 + 1192);
  v80 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Ref<WebKit::SimulatedInputSource,WTF::RawPtrTraits<WebKit::SimulatedInputSource>,WTF::DefaultRefDerefTraits<WebKit::SimulatedInputSource>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Ref<WebKit::SimulatedInputSource,WTF::RawPtrTraits<WebKit::SimulatedInputSource>,WTF::DefaultRefDerefTraits<WebKit::SimulatedInputSource>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Ref<WebKit::SimulatedInputSource,WTF::RawPtrTraits<WebKit::SimulatedInputSource>,WTF::DefaultRefDerefTraits<WebKit::SimulatedInputSource>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WebKit::SimulatedInputSource,WTF::RawPtrTraits<WebKit::SimulatedInputSource>,WTF::DefaultRefDerefTraits<WebKit::SimulatedInputSource>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(v79);
  v82 = v80;
  v84 = v83;
  if (v79)
  {
    v85 = &v79[2 * *(v79 - 1)];
  }

  else
  {
    v85 = 0;
  }

  if (v85 == v80)
  {
    goto LABEL_92;
  }

  v168 = (a8 + 576);
  do
  {
    if (*v82 == -1 || !*v82)
    {
      __break(0xC471u);
      JUMPOUT(0x19D5D7E4CLL);
    }

    v86 = *(v82[1] + 2);
    v87 = *v26;
    if (*v26 || (WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(v26, 0), (v87 = *v26) != 0))
    {
      v88 = *(v87 - 8);
    }

    else
    {
      v88 = 0;
    }

    v89 = *(*v82 + 4);
    if (v89 < 0x100)
    {
      v90 = WTF::StringImpl::hashSlowCase(*v82);
    }

    else
    {
      v90 = v89 >> 8;
    }

    v91 = 0;
    for (i = 1; ; ++i)
    {
      v93 = v90 & v88;
      v94 = (v87 + 16 * (v90 & v88));
      v95 = *v94;
      if (*v94 == -1)
      {
        v91 = (v87 + 16 * v93);
        goto LABEL_75;
      }

      if (!v95)
      {
        break;
      }

      if (WTF::equal(v95, *v82, v81))
      {
        v94[1] = v86;
        v26 = (a8 + 576);
        goto LABEL_84;
      }

LABEL_75:
      v90 = i + v93;
    }

    v26 = (a8 + 576);
    if (v91)
    {
      *v91 = 0;
      v91[1] = 0;
      --*(*v168 - 16);
      v94 = v91;
    }

    WTF::String::operator=(v94, v82);
    v94[1] = v86;
    v96 = *v168;
    if (*v168)
    {
      v97 = *(v96 - 12) + 1;
    }

    else
    {
      v97 = 1;
    }

    *(v96 - 12) = v97;
    v98 = (*(v96 - 16) + v97);
    v99 = *(v96 - 4);
    if (v99 > 0x400)
    {
      if (v99 <= 2 * v98)
      {
LABEL_83:
        WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(v168, v94);
      }
    }

    else if (3 * v99 <= 4 * v98)
    {
      goto LABEL_83;
    }

    do
    {
LABEL_84:
      v82 += 2;
    }

    while (v82 != v84 && *v82 + 1 <= 1);
  }

  while (v82 != v85);
LABEL_92:
  {
    WebKit::globalURLSchemesWithCustomProtocolHandlers(void)::set = 0;
  }

  v169[0] = 0;
  v169[1] = 0;
  WTF::Mapper<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> WTF::copyToVectorOf<WTF::String,WTF::HashSet<WTF::String,WTF::ASCIICaseInsensitiveHash,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>(WTF::HashSet<WTF::String,WTF::ASCIICaseInsensitiveHash,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&)::{lambda(WTF::String&&)#1},WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashSet<WTF::String,WTF::ASCIICaseInsensitiveHash,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,void>::map(v169, &WebKit::globalURLSchemesWithCustomProtocolHandlers(void)::set);
  v101 = *(a8 + 596);
  if (v101)
  {
    WTF::VectorDestructor<true,WTF::String>::destruct(*(a8 + 584), (*(a8 + 584) + 8 * v101));
  }

  v102 = *(a8 + 584);
  if (v102)
  {
    *(a8 + 584) = 0;
    *(a8 + 592) = 0;
    WTF::fastFree(v102, v100);
  }

  *(a8 + 584) = v169[0];
  v103 = v169[1];
  v169[0] = 0;
  v169[1] = 0;
  *(a8 + 592) = v103;
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v169, v100);
  if (*(v163 + 118) == 1)
  {
    BoolValueForKey = *(v163 + 117);
  }

  else
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::iceCandidateFilteringEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::iceCandidateFilteringEnabledKey(void)::key = WebKit::WebPreferencesKey::iceCandidateFilteringEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    BoolValueForKey = WebKit::WebPreferencesStore::getBoolValueForKey((v163 + 40), &WebKit::WebPreferencesKey::iceCandidateFilteringEnabledKey(void)::key, v104);
  }

  *(a8 + 882) = BoolValueForKey & 1;
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::enumeratingAllNetworkInterfacesEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::enumeratingAllNetworkInterfacesEnabledKey(void)::key = WebKit::WebPreferencesKey::enumeratingAllNetworkInterfacesEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  *(a8 + 883) = WebKit::WebPreferencesStore::getBoolValueForKey((v163 + 40), &WebKit::WebPreferencesKey::enumeratingAllNetworkInterfacesEnabledKey(void)::key, v104);
  v106 = *(*(v166 + 64) + 400);
  if (v106)
  {
    WebCore::ApplicationManifest::ApplicationManifest(v169, v106 + 16);
    LOBYTE(v106) = 1;
  }

  else
  {
    LOBYTE(v169[0]) = 0;
  }

  v171 = v106;
  std::__optional_storage_base<WebCore::ApplicationManifest,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::ApplicationManifest,false>>((a8 + 600), v169);
  if (v171 == 1)
  {
    WebCore::ApplicationManifest::~ApplicationManifest(v169, v107);
  }

  *(a8 + 880) = *(v166 + 1252);
  *(a8 + 881) = *(v166 + 1428);
  std::__optional_storage_base<WebCore::Color,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<WebCore::Color,false> const&>((a8 + 1016), (*(v166 + 32) + 136));
  WTF::String::operator=((a8 + 1048), (v166 + 1336));
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=((a8 + 1056), v166 + 1344);
  API::PageConfiguration::maskedURLSchemes(*(v166 + 64), v169);
  v109 = v169[0];
  v169[0] = 0;
  v110 = *(a8 + 1072);
  *(a8 + 1072) = v109;
  if (v110)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v110, v108);
    if (v169[0])
    {
      WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v169[0], v154);
    }
  }

  std::__optional_storage_base<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1>,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1>,false> const&>((a8 + 1088), *(v166 + 64) + 464);
  v112 = *(v166 + 64);
  *(a8 + 1080) = *(v112 + 456);
  *(a8 + 1126) = *(v112 + 441);
  *(a8 + 324) = *(v166 + 152) != 0;
  v113 = *(v112 + 340);
  v114 = *(v112 + 336);
  if (*(a8 + 1124) == v113)
  {
    if (*(a8 + 1124))
    {
      *(a8 + 1120) = v114;
    }
  }

  else if (*(a8 + 1124))
  {
    *(a8 + 1124) = 0;
  }

  else
  {
    *(a8 + 1120) = v114;
    *(a8 + 1124) = 1;
  }

  v115 = *(v166 + 384);
  if (v115)
  {
    CFRetain(v115[1]);
    WebKit::WebExtensionController::parameters(v115, *(v166 + 64), v169);
    std::optional<WebKit::WebExtensionControllerParameters>::operator=[abi:sn200100]<WebKit::WebExtensionControllerParameters,void>(a8 + 976, v169);
    WTF::Vector<WebKit::WebExtensionContextParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v170, v116);
    CFRelease(v115[1]);
  }

  v117 = *(v166 + 392);
  if (v117)
  {
    v118 = *(v117 + 8);
    if (v118)
    {
      CFRetain(*(v118 - 8));
      WebKit::WebExtensionController::parameters((v118 - 16), *(v166 + 64), v169);
      std::optional<WebKit::WebExtensionControllerParameters>::operator=[abi:sn200100]<WebKit::WebExtensionControllerParameters,void>(a8 + 976, v169);
      WTF::Vector<WebKit::WebExtensionContextParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v170, v119);
      CFRelease(*(v118 - 8));
    }
  }

  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::captureAudioInGPUProcessEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::captureAudioInGPUProcessEnabledKey(void)::key = WebKit::WebPreferencesKey::captureAudioInGPUProcessEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  *(a8 + 1137) = WebKit::WebPreferencesStore::getBoolValueForKey((v163 + 40), &WebKit::WebPreferencesKey::captureAudioInGPUProcessEnabledKey(void)::key, v111);
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::captureVideoInGPUProcessEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::captureVideoInGPUProcessEnabledKey(void)::key = WebKit::WebPreferencesKey::captureVideoInGPUProcessEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  *(a8 + 1139) = WebKit::WebPreferencesStore::getBoolValueForKey((v163 + 40), &WebKit::WebPreferencesKey::captureVideoInGPUProcessEnabledKey(void)::key, v120);
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::useGPUProcessForCanvasRenderingEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::useGPUProcessForCanvasRenderingEnabledKey(void)::key = WebKit::WebPreferencesKey::useGPUProcessForCanvasRenderingEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  *(a8 + 1142) = WebKit::WebPreferencesStore::getBoolValueForKey((v163 + 40), &WebKit::WebPreferencesKey::useGPUProcessForCanvasRenderingEnabledKey(void)::key, v121);
  *(a8 + 1143) = WebKit::WebPageProxy::useGPUProcessForDOMRenderingEnabled(v166);
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::useGPUProcessForMediaEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::useGPUProcessForMediaEnabledKey(void)::key = WebKit::WebPreferencesKey::useGPUProcessForMediaEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  *(a8 + 1144) = WebKit::WebPreferencesStore::getBoolValueForKey((v163 + 40), &WebKit::WebPreferencesKey::useGPUProcessForMediaEnabledKey(void)::key, v122);
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::useGPUProcessForWebGLEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::useGPUProcessForWebGLEnabledKey(void)::key = WebKit::WebPreferencesKey::useGPUProcessForWebGLEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  *(a8 + 1145) = WebKit::WebPreferencesStore::getBoolValueForKey((v163 + 40), &WebKit::WebPreferencesKey::useGPUProcessForWebGLEnabledKey(void)::key, v123);
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::vp9DecoderEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::vp9DecoderEnabledKey(void)::key = WebKit::WebPreferencesKey::vp9DecoderEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  *(a8 + 1147) = WebKit::WebPreferencesStore::getBoolValueForKey((v163 + 40), &WebKit::WebPreferencesKey::vp9DecoderEnabledKey(void)::key, v124);
  *(a8 + 1140) = *(*(API::PageConfiguration::Data::LazyInitializedRef<WebKit::WebProcessPool,&API::PageConfiguration::Data::createWebProcessPool>::get(*(v166 + 64) + 16) + 48) + 78);
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::useGPUProcessForDisplayCaptureKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::useGPUProcessForDisplayCaptureKey(void)::key = WebKit::WebPreferencesKey::useGPUProcessForDisplayCaptureKey(void)::$_0::operator() const(void)::impl;
  }

  *(a8 + 1141) = WebKit::WebPreferencesStore::getBoolValueForKey((v163 + 40), &WebKit::WebPreferencesKey::useGPUProcessForDisplayCaptureKey(void)::key, v125);
  *(a8 + 1148) = *(v166 + 1397);
  *(a8 + 1149) = *(v166 + 1424);
  *(a8 + 1151) = *(*(v166 + 64) + 590);
  *(a8 + 1150) = *(v166 + 1400);
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::upgradeKnownHostsToHTTPSEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::upgradeKnownHostsToHTTPSEnabledKey(void)::key = WebKit::WebPreferencesKey::upgradeKnownHostsToHTTPSEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  if (WebKit::WebPreferencesStore::getBoolValueForKey((v163 + 40), &WebKit::WebPreferencesKey::upgradeKnownHostsToHTTPSEnabledKey(void)::key, v126))
  {
    v127 = v166;
    v128 = *(*(v166 + 64) + 499);
  }

  else
  {
    v128 = 0;
    v127 = v166;
  }

  *(a8 + 1152) = v128 & 1;
  *(a8 + 1153) = [*(v127 + 1448) isVisible];
  if (v164)
  {
    v129 = (*(*v164 + 1584))(v164);
  }

  else
  {
    v129 = 0;
  }

  *(a8 + 1154) = v129;
  if ((byte_1ED642A00 & 1) == 0)
  {
    *algn_1ED642A88 = 0u;
    *&qword_1ED642AA8 = 0u;
    dword_1ED642A90 = 1;
    qword_1ED642A98 = 0;
    unk_1ED642AA0 = 0;
    qword_1ED642AA8 = 0;
    byte_1ED642AB0 = 0;
    qword_1ED642AB8 = 0;
    unk_1ED642AC0 = 0;
    qword_1ED642A80 = &unk_1F10EE480;
    byte_1ED642A00 = 1;
  }

  v130 = WTF::Vector<WebCore::LinkDecorationFilteringData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(a8 + 1584, &qword_1ED642AB8);
  WebKit::WebPageProxy::cachedAllowedQueryParametersForAdvancedPrivacyProtections(v130, v131, v132);
  WTF::Vector<WebCore::LinkDecorationFilteringData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(a8 + 1600, &qword_1ED642A20);
  v134 = *(a3 + 36);
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::useGPUProcessForMediaEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::useGPUProcessForMediaEnabledKey(void)::key = WebKit::WebPreferencesKey::useGPUProcessForMediaEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  if (!WebKit::WebPreferencesStore::getBoolValueForKey((v163 + 40), &WebKit::WebPreferencesKey::useGPUProcessForMediaEnabledKey(void)::key, v133))
  {
    goto LABEL_168;
  }

  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::captureVideoInGPUProcessEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::captureVideoInGPUProcessEnabledKey(void)::key = WebKit::WebPreferencesKey::captureVideoInGPUProcessEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  if (!WebKit::WebPreferencesStore::getBoolValueForKey((v163 + 40), &WebKit::WebPreferencesKey::captureVideoInGPUProcessEnabledKey(void)::key, v135))
  {
    goto LABEL_168;
  }

  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::captureAudioInGPUProcessEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::captureAudioInGPUProcessEnabledKey(void)::key = WebKit::WebPreferencesKey::captureAudioInGPUProcessEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  if (!WebKit::WebPreferencesStore::getBoolValueForKey((v163 + 40), &WebKit::WebPreferencesKey::captureAudioInGPUProcessEnabledKey(void)::key, v136))
  {
    goto LABEL_168;
  }

  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::webRTCPlatformCodecsInGPUProcessEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::webRTCPlatformCodecsInGPUProcessEnabledKey(void)::key = WebKit::WebPreferencesKey::webRTCPlatformCodecsInGPUProcessEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  if (!WebKit::WebPreferencesStore::getBoolValueForKey((v163 + 40), &WebKit::WebPreferencesKey::webRTCPlatformCodecsInGPUProcessEnabledKey(void)::key, v137))
  {
    goto LABEL_168;
  }

  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::useGPUProcessForCanvasRenderingEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::useGPUProcessForCanvasRenderingEnabledKey(void)::key = WebKit::WebPreferencesKey::useGPUProcessForCanvasRenderingEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  if (!WebKit::WebPreferencesStore::getBoolValueForKey((v163 + 40), &WebKit::WebPreferencesKey::useGPUProcessForCanvasRenderingEnabledKey(void)::key, v138))
  {
    goto LABEL_168;
  }

  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::useGPUProcessForDOMRenderingEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::useGPUProcessForDOMRenderingEnabledKey(void)::key = WebKit::WebPreferencesKey::useGPUProcessForDOMRenderingEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  if (!WebKit::WebPreferencesStore::getBoolValueForKey((v163 + 40), &WebKit::WebPreferencesKey::useGPUProcessForDOMRenderingEnabledKey(void)::key, v139))
  {
    goto LABEL_168;
  }

  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::useGPUProcessForWebGLEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::useGPUProcessForWebGLEnabledKey(void)::key = WebKit::WebPreferencesKey::useGPUProcessForWebGLEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  v141 = WebKit::WebPreferencesStore::getBoolValueForKey((v163 + 40), &WebKit::WebPreferencesKey::useGPUProcessForWebGLEnabledKey(void)::key, v140);
  if (v134 || (v141 & 1) == 0)
  {
LABEL_168:
    WebKit::SandboxExtension::createHandleForMachBootstrapExtension(v169);
    v142 = v169[0];
    v169[0] = 0;
    std::unique_ptr<WebKit::SandboxExtensionImpl>::reset[abi:sn200100]((a8 + 1616), v142);
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(v169);
  }

  v143 = (a8 + 1624);
  v144 = (v166 + 1540);
  if (*(a8 + 1656) == *(v166 + 1572))
  {
    v145 = v160;
    v146 = v164;
    v147 = v163;
    if (*(a8 + 1656))
    {
      v148 = *(v166 + 1556);
      *v143 = *v144;
      *(a8 + 1640) = v148;
    }
  }

  else
  {
    v145 = v160;
    v146 = v164;
    v147 = v163;
    if (*(a8 + 1656))
    {
      *(a8 + 1656) = 0;
    }

    else
    {
      v149 = *(v166 + 1556);
      *v143 = *v144;
      *(a8 + 1640) = v149;
      *(a8 + 1656) = 1;
    }
  }

  WebKit::WebPageProxy::presentingApplicationBundleIdentifier(v166, v169);
  v151 = v169[0];
  v169[0] = 0;
  v152 = *(a8 + 1664);
  *(a8 + 1664) = v151;
  if (v152)
  {
    if (atomic_fetch_add_explicit(v152, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v152, v150);
    }

    v153 = v169[0];
    v169[0] = 0;
    if (v153 && atomic_fetch_add_explicit(v153, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v153, v150);
    }
  }

  CFRelease(*(v147 + 8));
  if ((v159 & 1) == 0)
  {
    (*(*v146 + 1720))(v146);
  }

  CFRelease(*(v145 + 8));
}

unsigned __int8 *WebKit::WebUserContentControllerProxy::addProcess(WebKit::WebUserContentControllerProxy *this, WebKit::WebProcessProxy *a2)
{
  result = WTF::WeakHashSet<WebKit::FrameLoadStateObserver,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::add<WebKit::FrameLoadStateObserver>(this + 40, a2, v6);
  if (v6[16] == 1)
  {
    v5 = *(this + 4);
    v7[0] = 212;
    v7[1] = v5;
    return WTF::HashMap<std::pair<IPC::ReceiverName,unsigned long long>,WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<std::pair<IPC::ReceiverName,unsigned long long>>,WTF::PairHashTraits<WTF::StrongEnumHashTraits<IPC::ReceiverName>,WTF::HashTraits<unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<std::pair<IPC::ReceiverName,unsigned long long>,IPC::MessageReceiver&>(a2 + 13, v7, this + 16, v6);
  }

  return result;
}

uint64_t WebKit::WebUserContentControllerProxy::parameters@<X0>(WebKit::WebUserContentControllerProxy *this@<X0>, uint64_t a2@<X8>)
{
  v93 = *MEMORY[0x1E69E9840];
  v88 = 0uLL;
  v4 = *(this + 10);
  v70 = a2;
  if (!v4)
  {
    v10 = 0;
    v69 = 0;
    v72 = 0;
    goto LABEL_27;
  }

  v5 = *(v4 - 3);
  if (v5)
  {
    if (v5 >= 0xAAAAAAB)
    {
      __break(0xC471u);
      JUMPOUT(0x19D5D85E4);
    }

    v17 = 24 * v5;
    v18 = WTF::fastMalloc((24 * v5));
    v6 = v17 / 0x18;
    DWORD2(v88) = v17 / 0x18;
    v72 = v18;
    *&v88 = v18;
    v4 = *(this + 10);
    if (!v4)
    {
      v69 = v17 / 0x18;
LABEL_26:
      v10 = 0;
      goto LABEL_27;
    }
  }

  else
  {
    v72 = 0;
    v6 = 0;
  }

  v69 = v6;
  if (!*(v4 - 3))
  {
    goto LABEL_26;
  }

  v7 = *(v4 - 1);
  v8 = v4;
  if (v7)
  {
    v9 = 8 * v7;
    v8 = v4;
    while ((*v8 + 1) <= 1)
    {
      ++v8;
      v9 -= 8;
      if (!v9)
      {
        goto LABEL_26;
      }
    }
  }

  v11 = &v4[v7];
  if (v11 == v8)
  {
    goto LABEL_26;
  }

  v10 = 0;
  do
  {
    *&v73 = *v8;
    {
      API::sharedWorldIdentifierMap(void)::sharedMap = 0;
    }

    v12 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<API::ContentWorld,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<API::ContentWorld,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<API::ContentWorld,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<API::ContentWorld,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(&API::sharedWorldIdentifierMap(void)::sharedMap, &v73);
    if (!v12)
    {
      goto LABEL_94;
    }

    v14 = *(v12 + 24);
    v13 = *(v12 + 32);
    if (v13)
    {
      atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
    }

    v15 = *(v12 + 40);
    v16 = v72 + 24 * v10;
    *v16 = v14;
    *(v16 + 8) = v13;
    *(v16 + 16) = v15;
    do
    {
      ++v8;
    }

    while (v8 != v11 && (*v8 + 1) <= 1);
    ++v10;
  }

  while (v8 != v11);
  HIDWORD(v88) = v10;
LABEL_27:
  v87 = 0uLL;
  API::Array::elementsOfType<API::UserScript>(v89, *(this + 7));
  v19 = v90;
  v20 = v92;
  if (v90 != v92)
  {
    v21 = v91;
    do
    {
      v22 = *v19;
      API::Array::GetObjectTransform<API::UserScript>::operator()(*v19);
      if (v22)
      {
        CFRetain(*(v22 + 8));
      }

      v23 = *(*(v22 + 112) + 24);
      *&v73 = *(v22 + 16);
      *(&v73 + 1) = v23;
      WebCore::UserScript::UserScript(&v74, v22 + 24);
      if (HIDWORD(v87) == DWORD2(v87))
      {
        WTF::Vector<WebKit::WebUserScriptData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::WebUserScriptData>(&v87, &v73);
      }

      else
      {
        v25 = (v87 + 104 * HIDWORD(v87));
        *v25 = v73;
        WebCore::UserScript::UserScript((v25 + 1), &v74);
        ++HIDWORD(v87);
      }

      WebCore::UserScript::~UserScript(&v74, v24);
      CFRelease(*(v22 + 8));
      v26 = v19 + 1;
      while (v26 - 1 != v21)
      {
        v19 = v26;
        if (v26 != v21)
        {
          ++v26;
          if ((*(**v19 + 16))() != 27)
          {
            continue;
          }
        }

        goto LABEL_40;
      }

      v19 = v26 - 1;
LABEL_40:
      ;
    }

    while (v19 != v20);
  }

  v86 = 0uLL;
  v71 = this;
  API::Array::elementsOfType<API::UserStyleSheet>(v89, *(this + 8));
  v28 = v90;
  v29 = v92;
  if (v90 != v92)
  {
    v30 = v91;
    do
    {
      v31 = *v28;
      API::Array::GetObjectTransform<API::UserStyleSheet>::operator()(*v28);
      if (v31)
      {
        CFRetain(*(v31 + 8));
      }

      v32 = *(*(v31 + 128) + 24);
      v33 = *(v31 + 24);
      *&v73 = *(v31 + 16);
      *(&v73 + 1) = v32;
      if (v33)
      {
        atomic_fetch_add_explicit(v33, 2u, memory_order_relaxed);
      }

      v74 = v33;
      v34 = *(v31 + 32);
      if (v34)
      {
        atomic_fetch_add_explicit(v34, 2u, memory_order_relaxed);
      }

      v75 = v34;
      v35 = *(v31 + 56);
      v76 = *(v31 + 40);
      v77 = v35;
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v78, v31 + 72);
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v81, v31 + 88);
      v36 = *(v31 + 104);
      v85 = *(v31 + 120);
      v84 = v36;
      if (HIDWORD(v86) == DWORD2(v86))
      {
        WTF::Vector<WebKit::WebUserStyleSheetData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::WebUserStyleSheetData>(&v86, &v73);
      }

      else
      {
        v38 = v86 + 120 * HIDWORD(v86);
        *v38 = v73;
        v39 = v74;
        v74 = 0;
        *(v38 + 16) = v39;
        WTF::URL::URL(v38 + 24, &v75);
        *(v38 + 64) = 0;
        *(v38 + 72) = 0;
        v40 = v78;
        v78 = 0;
        *(v38 + 64) = v40;
        LODWORD(v40) = v79;
        v79 = 0;
        *(v38 + 72) = v40;
        LODWORD(v40) = v80;
        v80 = 0;
        *(v38 + 76) = v40;
        *(v38 + 80) = 0;
        *(v38 + 88) = 0;
        v41 = v81;
        v81 = 0;
        *(v38 + 80) = v41;
        LODWORD(v41) = v82;
        v82 = 0;
        *(v38 + 88) = v41;
        LODWORD(v41) = v83;
        v83 = 0;
        *(v38 + 92) = v41;
        LOBYTE(v41) = v85;
        *(v38 + 96) = v84;
        *(v38 + 112) = v41;
        ++HIDWORD(v86);
      }

      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v81, v37);
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v78, v42);
      v44 = v75;
      v75 = 0;
      if (v44 && atomic_fetch_add_explicit(v44, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v44, v43);
      }

      v45 = v74;
      v74 = 0;
      if (v45 && atomic_fetch_add_explicit(v45, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v45, v43);
      }

      CFRelease(*(v31 + 8));
      v46 = v28 + 1;
      while (v46 - 1 != v30)
      {
        v28 = v46;
        if (v46 != v30)
        {
          ++v46;
          if ((*(**v28 + 16))() != 28)
          {
            continue;
          }
        }

        goto LABEL_64;
      }

      v28 = v46 - 1;
LABEL_64:
      ;
    }

    while (v28 != v29);
  }

  v47 = *(v71 + 9);
  if (!v47)
  {
    v49 = 0;
    v50 = 0;
    goto LABEL_90;
  }

  v48 = *(v47 - 3);
  if (v48)
  {
    if (v48 >= 0xAAAAAAB)
    {
LABEL_94:
      __break(0xC471u);
      JUMPOUT(0x19D5D85DCLL);
    }

    v61 = 24 * v48;
    v49 = WTF::fastMalloc((24 * v48));
    v50 = v61 / 0x18;
    v47 = *(v71 + 9);
    if (!v47)
    {
      goto LABEL_90;
    }
  }

  else
  {
    v49 = 0;
    v50 = 0;
  }

  if (!*(v47 - 3))
  {
    goto LABEL_90;
  }

  v51 = *(v47 - 1);
  v52 = v47;
  if (v51)
  {
    v53 = 16 * v51;
    v52 = v47;
    while ((*v52 + 1) <= 1)
    {
      v52 += 2;
      v53 -= 16;
      if (!v53)
      {
        goto LABEL_90;
      }
    }
  }

  v54 = &v47[2 * v51];
  if (v54 == v52)
  {
LABEL_90:
    v55 = 0;
    goto LABEL_91;
  }

  v55 = 0;
  do
  {
    v56 = v52[1];
    if (v56)
    {
      ++*(v56 + 8);
    }

    v57 = *(v56 + 16);
    v58 = *(v56 + 32);
    v59 = *(*(v56 + 40) + 24);
    if (v58)
    {
      atomic_fetch_add_explicit(v58, 2u, memory_order_relaxed);
    }

    v60 = (v49 + 24 * v55);
    *v60 = v57;
    v60[1] = v59;
    v60[2] = v58;
    if (*(v56 + 8) == 1)
    {
      (*(*v56 + 8))(v56);
    }

    else
    {
      --*(v56 + 8);
    }

    do
    {
      v52 += 2;
    }

    while (v52 != v54 && (*v52 + 1) <= 1);
    ++v55;
  }

  while (v52 != v54);
LABEL_91:
  *&v27 = 0;
  *v70 = *(v71 + 4);
  *(v70 + 8) = v72;
  *(v70 + 16) = v69;
  *(v70 + 20) = v10;
  v62 = v87;
  v87 = v27;
  v88 = v27;
  *(v70 + 24) = v62;
  v63 = v86;
  v86 = v27;
  *(v70 + 40) = v63;
  *&v73 = 0;
  *(v70 + 56) = v49;
  *(&v73 + 1) = 0;
  *(v70 + 64) = v50;
  *(v70 + 68) = v55;
  WebKit::WebUserContentControllerProxy::contentRuleListData(v71, v70 + 72);
  WTF::Vector<WebKit::WebScriptMessageHandlerData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v73, v64);
  WTF::Vector<WebKit::WebUserStyleSheetData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v86, v65);
  WTF::Vector<WebKit::WebUserScriptData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v87, v66);
  return WTF::Vector<WebKit::ContentWorldData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v88, v67);
}

uint64_t API::Array::elementsOfType<API::UserScript>(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(a2 + 16);
  v4 = *(a2 + 28);
  v5 = v3 + 8 * v4;
  if (v4)
  {
    v7 = 8 * v4;
    while (1)
    {
      result = (*(**v3 + 16))();
      if (result == 27)
      {
        break;
      }

      v3 += 8;
      v7 -= 8;
      if (!v7)
      {
        v3 = v5;
        break;
      }
    }

    v8 = v3;
    v3 = *(a2 + 16);
    v9 = *(a2 + 28);
  }

  else
  {
    v9 = 0;
    v8 = *(a2 + 16);
  }

  v2[2] = v8;
  v2[3] = v5;
  v10 = v3 + 8 * v9;
  v2[6] = v10;
  v2[7] = v10;
  return result;
}

uint64_t API::Array::elementsOfType<API::UserStyleSheet>(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(a2 + 16);
  v4 = *(a2 + 28);
  v5 = v3 + 8 * v4;
  if (v4)
  {
    v7 = 8 * v4;
    while (1)
    {
      result = (*(**v3 + 16))();
      if (result == 28)
      {
        break;
      }

      v3 += 8;
      v7 -= 8;
      if (!v7)
      {
        v3 = v5;
        break;
      }
    }

    v8 = v3;
    v3 = *(a2 + 16);
    v9 = *(a2 + 28);
  }

  else
  {
    v9 = 0;
    v8 = *(a2 + 16);
  }

  v2[2] = v8;
  v2[3] = v5;
  v10 = v3 + 8 * v9;
  v2[6] = v10;
  v2[7] = v10;
  return result;
}

void *WebKit::WebUserContentControllerProxy::contentRuleListData@<X0>(void *this@<X0>, uint64_t a2@<X8>)
{
  v4 = (this + 13);
  v3 = this[13];
  *a2 = 0;
  *(a2 + 8) = 0;
  if (v3)
  {
    v5 = *(v3 - 12);
    if (v5)
    {
      if (v5 >= 0x2222223)
      {
        __break(0xC471u);
        return this;
      }

      v6 = 120 * v5;
      v7 = WTF::fastMalloc((120 * v5));
      *(a2 + 8) = v6 / 0x78;
      *a2 = v7;
    }
  }

  this = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,std::pair<WTF::Ref<API::ContentRuleList,WTF::RawPtrTraits<API::ContentRuleList>,WTF::DefaultRefDerefTraits<API::ContentRuleList>>,WTF::URL>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,std::pair<WTF::Ref<API::ContentRuleList,WTF::RawPtrTraits<API::ContentRuleList>,WTF::DefaultRefDerefTraits<API::ContentRuleList>>,WTF::URL>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,std::pair<WTF::Ref<API::ContentRuleList,WTF::RawPtrTraits<API::ContentRuleList>,WTF::DefaultRefDerefTraits<API::ContentRuleList>>,WTF::URL>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::pair<WTF::Ref<API::ContentRuleList,WTF::RawPtrTraits<API::ContentRuleList>,WTF::DefaultRefDerefTraits<API::ContentRuleList>>,WTF::URL>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(v4);
  v8 = this;
  v10 = v9;
  if (*v4)
  {
    v11 = &(*v4)[7 * *(*v4 - 1)];
  }

  else
  {
    v11 = 0;
  }

  if (v11 != this)
  {
    do
    {
      v12 = *(*(v8 + 8) + 16);
      v13 = *(v12 + 16);
      if (v13)
      {
        atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
      }

      v21 = v13;
      v14 = *(v12 + 24);
      if (v14)
      {
        atomic_fetch_add(v14, 1u);
      }

      v24 = *(v12 + 64);
      v25 = *(v12 + 80);
      v22 = *(v12 + 32);
      v23 = *(v12 + 48);
      v15 = *(v8 + 16);
      if (v15)
      {
        atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed);
      }

      v26 = v15;
      v16 = *(v8 + 24);
      v28 = *(v8 + 40);
      v27 = v16;
      v17 = *(a2 + 12);
      v18 = *a2 + 120 * v17;
      *v18 = v21;
      *(v18 + 8) = v14;
      *(v18 + 48) = v24;
      *(v18 + 64) = v25;
      *(v18 + 16) = v22;
      *(v18 + 32) = v23;
      WTF::URL::URL(v18 + 80, &v26);
      *(a2 + 12) = v17 + 1;
      v20 = v26;
      v26 = 0;
      if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v20, v19);
      }

      this = 0;
      do
      {
        v8 += 56;
      }

      while (v8 != v10 && (*v8 + 1) <= 1);
    }

    while (v8 != v11);
  }

  return this;
}

uint64_t WTF::Vector<WebKit::WebUserStyleSheetData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorTypeOperations<WebKit::WebUserStyleSheetData>::destruct(*a1, (*a1 + 120 * v3));
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

void sub_19D5D8998(_Unwind_Exception *exception_object, void *a2)
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

uint64_t WTF::Vector<WebCore::DOMCacheEngine::CacheInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorDestructor<true,WebCore::DOMCacheEngine::CacheInfo>::destruct(*a1, (*a1 + 24 * v3));
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

_DWORD *WTF::Vector<WebKit::WebUserScriptData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(_DWORD *a1, void *a2)
{
  v3 = a1[3];
  if (v3)
  {
    v6 = 104 * v3;
    v7 = (*a1 + 16);
    do
    {
      WebCore::UserScript::~UserScript(v7, a2);
      v7 = (v8 + 104);
      v6 -= 104;
    }

    while (v6);
  }

  v4 = *a1;
  if (*a1)
  {
    *a1 = 0;
    a1[2] = 0;
    WTF::fastFree(v4, a2);
  }

  return a1;
}

uint64_t WTF::Vector<WebCore::TextList,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorDestructor<true,WebCore::TextList>::destruct(*a1, (*a1 + 24 * v3));
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

_BYTE *std::__optional_storage_base<WebKit::RemotePageParameters,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebKit::RemotePageParameters,false>>(_BYTE *result, unsigned __int8 *a2)
{
  v2 = result;
  if (result[224] == a2[224])
  {
    if (result[224])
    {

      return WebKit::RemotePageParameters::operator=(result, a2);
    }
  }

  else if (result[224])
  {
    if (result[216] == 1)
    {
      WebKit::WebsitePoliciesData::~WebsitePoliciesData((result + 96), a2);
    }

    WTF::Vector<WebKit::FrameTreeCreationParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((v2 + 80), a2);
    v4 = *(v2 + 9);
    *(v2 + 9) = 0;
    if (v4)
    {
      WTF::RefCounted<WebCore::FrameTreeSyncData>::deref(v4, v3);
    }

    v5 = *(v2 + 8);
    *(v2 + 8) = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, v3);
    }

    result = *v2;
    *v2 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v3);
    }

    v2[224] = 0;
  }

  else
  {

    return std::__optional_storage_base<WebKit::RemotePageParameters,false>::__construct[abi:sn200100]<WebKit::RemotePageParameters>(result, a2);
  }

  return result;
}

uint64_t WebKit::WebPageProxy::useDarkAppearance(WebKit::WebPageProxy *this)
{
  v1 = *(this + 7);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 8);
  if (!v2)
  {
    return 0;
  }

  (*(*v2 + 1712))(v2);
  v3 = (*(*v2 + 800))(v2);
  (*(*v2 + 1720))(v2);
  return v3;
}

uint64_t WebKit::PageClientImpl::effectiveAppearanceIsDark(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 2);
  v2 = [WeakRetained _effectiveAppearanceIsDark];
  if (WeakRetained)
  {
  }

  return v2;
}

void sub_19D5D8CCC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::WebPageProxy::useElevatedUserInterfaceLevel(WebKit::WebPageProxy *this)
{
  v1 = *(this + 7);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 8);
  if (!v2)
  {
    return 0;
  }

  (*(*v2 + 1712))(v2);
  v3 = (*(*v2 + 808))(v2);
  (*(*v2 + 1720))(v2);
  return v3;
}

uint64_t WebKit::PageClientImpl::effectiveUserInterfaceLevelIsElevated(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 2);
  v2 = [WeakRetained _effectiveUserInterfaceLevelIsElevated];
  if (WeakRetained)
  {
  }

  return v2;
}

void sub_19D5D8E18(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::WebProcessProxy::sendProcessDidResume(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED641030;
  if (os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 80);
    if (v4)
    {
      LODWORD(v4) = *(v4 + 108);
    }

    *buf = 134218240;
    *&buf[4] = a1;
    v14 = 1024;
    v15 = v4;
    _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "%p - [PID=%i] WebProcessProxy::sendProcessDidResume:", buf, 0x12u);
  }

  v5 = *(a1 + 80);
  if (v5 && (*(v5 + 104) & 1) != 0 || *(a1 + 88))
  {
    v6 = IPC::Encoder::operator new(0x238, v3);
    *v6 = 2964;
    *(v6 + 68) = 0;
    *(v6 + 70) = 0;
    *(v6 + 69) = 0;
    *(v6 + 2) = 0;
    *(v6 + 3) = 0;
    *(v6 + 1) = 0;
    IPC::Encoder::encodeHeader(v6);
    v12 = v6;
    buf[0] = 0;
    BYTE2(v15) = 0;
    WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v12, 0, buf, 1);
    if (BYTE2(v15) == 1)
    {
      v8 = *buf;
      *buf = 0;
      if (v8)
      {
        (*(*v8 + 8))(v8);
      }
    }

    v9 = v12;
    v12 = 0;
    if (v9)
    {
      IPC::Encoder::~Encoder(v9, v7);
      bmalloc::api::tzoneFree(v10, v11);
    }
  }
}

void WebKit::PageClientImpl::mimeTypesWithCustomContentProviders(id *this@<X0>, void *a2@<X8>)
{
  WeakRetained = objc_loadWeakRetained(this + 2);
  v3 = [WeakRetained _contentProviderRegistry];
  if (v3)
  {
    [v3 _mimeTypesWithCustomContentProviders];
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  if (WeakRetained)
  {
  }
}

void sub_19D5D903C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::WebProcessPool::cachedHardwareKeyboardState(WebKit::WebProcessPool *this)
{
  if (WTF::isMainRunLoop(this))
  {
    return *(this + 1017) | (*(this + 1019) << 16);
  }

  result = 1430;
  __break(0xC471u);
  return result;
}

void WebKit::PageClientImpl::insertionPointColor(id *this@<X0>, uint64_t *a2@<X8>)
{
  WeakRetained = objc_loadWeakRetained(this + 2);
  v3 = [objc_msgSend(WeakRetained "_insertionPointColor")];
  v5 = WebCore::roundAndClampToSRGBALossy(v3, v4);
  *a2 = (bswap32(v5) | 0x1104000000000000) & (v5 << 31 >> 63);
  if (WeakRetained)
  {
  }
}

void sub_19D5D9370(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

BOOL WebKit::PageClientImpl::userInterfaceLayoutDirection(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 2);
  if (!WeakRetained)
  {
    return 0;
  }

  v2 = WeakRetained;
  v3 = [MEMORY[0x1E69DD250] userInterfaceLayoutDirectionForSemanticContentAttribute:{objc_msgSend(WeakRetained, "semanticContentAttribute")}] != 0;

  return v3;
}

void std::__optional_storage_base<WebCore::ApplicationManifest,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::ApplicationManifest,false>>(WebCore::ApplicationManifest *a1, unsigned __int8 *a2)
{
  if (*(a1 + 272) == a2[272])
  {
    if (*(a1 + 272))
    {

      WebCore::ApplicationManifest::operator=(a1, a2);
    }
  }

  else if (*(a1 + 272))
  {
    WebCore::ApplicationManifest::~ApplicationManifest(a1, a2);
    *(v2 + 272) = 0;
  }

  else
  {
    *(WebCore::ApplicationManifest::ApplicationManifest(a1, a2) + 272) = 1;
  }
}

uint64_t *std::__optional_storage_base<WebCore::Color,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<WebCore::Color,false> const&>(uint64_t *result, uint64_t *a2)
{
  if (*(result + 8) == *(a2 + 8))
  {
    if (*(result + 8))
    {

      return WebCore::Color::operator=(result, a2);
    }
  }

  else if (*(result + 8))
  {
    if ((*result & 0x8000000000000) != 0)
    {
      v4 = (*result & 0xFFFFFFFFFFFFLL);
      add = atomic_fetch_add(v4, 0xFFFFFFFF);
      if (add == 1)
      {
        atomic_store(1u, v4);
        v6 = result;
        WTF::fastFree(v4, a2);
        result = v6;
      }
    }

    *(result + 8) = 0;
  }

  else
  {
    v3 = *a2;
    *result = *a2;
    if ((v3 & 0x8000000000000) != 0)
    {
      atomic_fetch_add((v3 & 0xFFFFFFFFFFFFLL), 1u);
    }

    *(result + 8) = 1;
  }

  return result;
}

uint64_t *API::PageConfiguration::maskedURLSchemes@<X0>(uint64_t *this@<X0>, uint64_t *a2@<X8>)
{
  if (*(this + 440) == 1)
  {
    v3 = this + 54;
  }

  else
  {
    if (!this[13])
    {
      v4 = this[14];
      if (!v4 || !*(v4 + 8))
      {
        *a2 = 0;
        return this;
      }
    }

    v3 = WebKit::WebExtensionMatchPattern::extensionSchemes(this);
  }

  return WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::HashTable(a2, v3);
}

uint64_t std::optional<WebKit::WebExtensionControllerParameters>::operator=[abi:sn200100]<WebKit::WebExtensionControllerParameters,void>(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 32);
  v5 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v5;
  if (v4 == 1)
  {
    v6 = *(a1 + 28);
    if (v6)
    {
      v7 = *(a1 + 16);
      v8 = 160 * v6;
      do
      {
        WebKit::WebExtensionContextParameters::~WebExtensionContextParameters(v7, a2);
        v7 = (v9 + 160);
        v8 -= 160;
      }

      while (v8);
    }

    WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 16, a2 + 4);
  }

  else
  {
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 16, a2 + 4);
    *(a1 + 32) = 1;
  }

  return a1;
}

uint64_t WTF::Vector<WebKit::WebExtensionContextParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v6 = *a1;
    v7 = 160 * v3;
    do
    {
      WebKit::WebExtensionContextParameters::~WebExtensionContextParameters(v6, a2);
      v6 = (v8 + 160);
      v7 -= 160;
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

uint64_t WebKit::WebPageProxy::useGPUProcessForDOMRenderingEnabled(WebKit::WebPageProxy *this)
{
  v2 = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
  if (v2)
  {
    v3 = v2;
    v4 = v2;
    v5 = [v3 BOOLValue];

    return v5;
  }

  v7 = *(this + 46);
  CFRetain(*(v7 + 8));
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::useGPUProcessForDOMRenderingEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::useGPUProcessForDOMRenderingEnabledKey(void)::key = WebKit::WebPreferencesKey::useGPUProcessForDOMRenderingEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  BoolValueForKey = WebKit::WebPreferencesStore::getBoolValueForKey((v7 + 40), &WebKit::WebPreferencesKey::useGPUProcessForDOMRenderingEnabledKey(void)::key, v8);
  CFRelease(*(v7 + 8));
  if (BoolValueForKey)
  {
    return 1;
  }

  v10 = *(this + 8);
  CFRetain(*(v10 + 8));
  v28 = 0;
  CFRetain(*(this + 1));
  v27 = this;
  WTF::HashTable<WTF::RefPtr<WebKit::WebPageProxy const,WTF::RawPtrTraits<WebKit::WebPageProxy const>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy const>>,WTF::RefPtr<WebKit::WebPageProxy const,WTF::RawPtrTraits<WebKit::WebPageProxy const>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy const>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RefPtr<WebKit::WebPageProxy const,WTF::RawPtrTraits<WebKit::WebPageProxy const>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy const>>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebPageProxy const,WTF::RawPtrTraits<WebKit::WebPageProxy const>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy const>>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebPageProxy const,WTF::RawPtrTraits<WebKit::WebPageProxy const>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy const>>>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(v26, &v28, &v27);
  if (v27)
  {
    CFRelease(*(v27 + 1));
  }

  v12 = *(v10 + 128);
  if (!v12 || (v13 = *(v12 + 8)) == 0)
  {
    v5 = 0;
    goto LABEL_32;
  }

  CFRetain(*(v13 - 8));
  while (1)
  {
    CFRetain(*(v13 - 8));
    v14 = v13 - 16;
    if (!v28)
    {
      goto LABEL_21;
    }

    if (v13 == 15 || v13 == 16)
    {
      __break(0xC471u);
      JUMPOUT(0x19D5D9B30);
    }

    v15 = *(v28 - 2);
    v16 = (~(v14 << 32) + v14) ^ ((~(v14 << 32) + v14) >> 22);
    v17 = 9 * ((v16 + ~(v16 << 13)) ^ ((v16 + ~(v16 << 13)) >> 8));
    v18 = (v17 ^ (v17 >> 15)) + ~((v17 ^ (v17 >> 15)) << 27);
    v19 = v15 & ((v18 >> 31) ^ v18);
    v20 = v28[v19];
    if (v20 == v14)
    {
      break;
    }

    v21 = 1;
    while (v20)
    {
      v19 = (v19 + v21) & v15;
      v20 = v28[v19];
      ++v21;
      if (v20 == v14)
      {
        goto LABEL_30;
      }
    }

LABEL_21:
    CFRelease(*(v13 - 8));
    v22 = *(v13 + 352);
    CFRetain(*(v22 + 8));
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::useGPUProcessForDOMRenderingEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::useGPUProcessForDOMRenderingEnabledKey(void)::key = WebKit::WebPreferencesKey::useGPUProcessForDOMRenderingEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    v5 = WebKit::WebPreferencesStore::getBoolValueForKey((v22 + 40), &WebKit::WebPreferencesKey::useGPUProcessForDOMRenderingEnabledKey(void)::key, v23);
    CFRelease(*(v22 + 8));
    if (v5)
    {
      goto LABEL_31;
    }

    CFRetain(*(v13 - 8));
    v27 = (v13 - 16);
    WTF::HashTable<WTF::RefPtr<WebKit::WebPageProxy const,WTF::RawPtrTraits<WebKit::WebPageProxy const>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy const>>,WTF::RefPtr<WebKit::WebPageProxy const,WTF::RawPtrTraits<WebKit::WebPageProxy const>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy const>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RefPtr<WebKit::WebPageProxy const,WTF::RawPtrTraits<WebKit::WebPageProxy const>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy const>>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebPageProxy const,WTF::RawPtrTraits<WebKit::WebPageProxy const>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy const>>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebPageProxy const,WTF::RawPtrTraits<WebKit::WebPageProxy const>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy const>>>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(v26, &v28, &v27);
    if (v27)
    {
      CFRelease(*(v27 + 1));
    }

    v24 = *(*(v13 + 48) + 128);
    if (!v24)
    {
      goto LABEL_31;
    }

    v25 = *(v24 + 8);
    if (!v25)
    {
      goto LABEL_31;
    }

    CFRetain(*(v25 - 8));
    CFRelease(*(v13 - 8));
    v13 = v25;
  }

LABEL_30:
  CFRelease(*(v13 - 8));
  v5 = 0;
LABEL_31:
  CFRelease(*(v13 - 8));
LABEL_32:
  if (v28)
  {
    WTF::HashTable<WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>,WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>>,WTF::HashTraits<WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>>,WTF::HashTraits<WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>>,WTF::FastMalloc>::deallocateTable(v28, v11);
  }

  if (v10)
  {
    CFRelease(*(v10 + 8));
  }

  return v5;
}

void sub_19D5D9B54(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t *a14)
{
  if (a14)
  {
    WTF::HashTable<WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>,WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>>,WTF::HashTraits<WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>>,WTF::HashTraits<WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>>,WTF::FastMalloc>::deallocateTable(a14, a2);
  }

  if (v14)
  {
    CFRelease(*(v14 + 8));
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::PageClientImpl::hasResizableWindows(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 2);
  v2 = [WeakRetained _isWindowResizingEnabled];
  if (WeakRetained)
  {
  }

  return v2;
}

void sub_19D5D9C18(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Vector<WebCore::LinkDecorationFilteringData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    v4 = *(a1 + 12);
    v5 = *(a2 + 12);
    if (v4 <= v5)
    {
      if (v5 > *(a1 + 8))
      {
        WTF::Vector<WebCore::LinkDecorationFilteringData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(a1, 0);
        WTF::Vector<WebCore::LinkDecorationFilteringData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, *(a2 + 12));
        v4 = *(a1 + 12);
      }
    }

    else
    {
      WTF::VectorTypeOperations<WebCore::LinkDecorationFilteringData>::destruct((*a1 + 24 * v5), (*a1 + 24 * v4));
      *(a1 + 12) = v5;
      v4 = v5;
    }

    v6 = *a2;
    v7 = *a1;
    if (v4)
    {
      v8 = &v6[3 * v4];
      do
      {
        WTF::String::operator=(v7, v6);
        WTF::String::operator=(v7 + 1, v6 + 1);
        WTF::String::operator=(v7 + 2, v6 + 2);
        v6 += 3;
        v7 += 3;
      }

      while (v6 != v8);
      v6 = *a2;
      v9 = *(a1 + 12);
      v7 = *a1;
    }

    else
    {
      v9 = 0;
    }

    WTF::VectorCopier<false,WebCore::LinkDecorationFilteringData>::uninitializedCopy<WebCore::LinkDecorationFilteringData>(&v6[3 * v9], &v6[3 * *(a2 + 12)], &v7[3 * v9]);
    *(a1 + 12) = *(a2 + 12);
  }

  return a1;
}

void sub_19D5DAACC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

atomic_uint **WTF::VectorCopier<false,WebCore::LinkDecorationFilteringData>::uninitializedCopy<WebCore::LinkDecorationFilteringData>(atomic_uint **result, atomic_uint **a2, atomic_uint **a3)
{
  for (; result != a2; result += 3)
  {
    v3 = *result;
    if (*result)
    {
      atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
    }

    *a3 = v3;
    v4 = result[1];
    if (v4)
    {
      atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
    }

    a3[1] = v4;
    v5 = result[2];
    if (v5)
    {
      atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
    }

    a3[2] = v5;
    a3 += 3;
  }

  return result;
}

uint64_t WebKit::WebPageProxy::cachedAllowedQueryParametersForAdvancedPrivacyProtections(WebKit::WebPageProxy *this, void *a2, __n128 a3)
{
  if ((byte_1ED6429B4 & 1) == 0)
  {
    v7 = v3;
    v8 = v4;
    a3.n128_u64[0] = 0;
    v6 = a3;
    *&qword_1ED642A20 = a3;
    result = WTF::Vector<WebCore::LinkDecorationFilteringData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v6, a2);
    byte_1ED6429B4 = 1;
  }

  return result;
}

uint64_t WTF::Vector<WebCore::LinkDecorationFilteringData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorTypeOperations<WebCore::LinkDecorationFilteringData>::destruct(*a1, (*a1 + 24 * v3));
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

void sub_19D5DAC60(_Unwind_Exception *exception_object, void *a2)
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

void WebKit::WebPageProxy::presentingApplicationBundleIdentifier(WebKit::WebPageProxy *this@<X0>, void *a2@<X8>)
{
  v13 = *MEMORY[0x1E69E9840];
  if ((*(this + 1572) & 1) == 0)
  {
    goto LABEL_11;
  }

  v10 = 0;
  v3 = *(this + 1556);
  *buf = *(this + 1540);
  v12 = v3;
  v4 = [MEMORY[0x1E6963618] bundleProxyWithAuditToken:buf error:&v10];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  v7 = v10;
  if (v10)
  {
    v8 = qword_1ED641580;
    if (os_log_type_enabled(qword_1ED641580, OS_LOG_TYPE_ERROR))
    {
      v9 = [v7 localizedDescription];
      *buf = 138412290;
      *&buf[4] = v9;
      _os_log_error_impl(&dword_19D52D000, v8, OS_LOG_TYPE_ERROR, "Failed to get attribution bundleID from audit token with error: %@.", buf, 0xCu);
    }
  }

  else
  {
    MEMORY[0x19EB02040](a2, [v5 bundleIdentifier]);
  }

  if (v5)
  {
  }

  if (v7)
  {
LABEL_11:
    *a2 = 0;
  }
}

void sub_19D5DAE08(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::WebProcess::CreateWebPage>(uint64_t a1, uint64_t *a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 2935;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v8, **a2);
  IPC::ArgumentCoder<WebKit::WebPageCreationParameters,void>::encode(v8, a2[1]);
  LOBYTE(v16) = 0;
  v17 = 0;
  v10 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v18, a4, &v16, 1);
  if (v17 == 1)
  {
    v11 = v16;
    v16 = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }
  }

  v12 = v18;
  v18 = 0;
  if (v12)
  {
    IPC::Encoder::~Encoder(v12, v9);
    bmalloc::api::tzoneFree(v14, v15);
  }

  return v10;
}

IPC::Encoder *IPC::ArgumentCoder<WebKit::WebPageCreationParameters,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::Encoder::operator<<<WebCore::IntSize>(a1, a2);
  IPC::ArgumentCoder<unsigned short,void>::encode<IPC::Encoder>(a1, *(a2 + 8));
  IPC::ArgumentCoder<WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,void>::encode<IPC::Encoder,WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc> const&>(a1, (a2 + 16));
  IPC::ArgumentCoder<WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,void>::encode<IPC::Encoder,WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc> const&>(a1, (a2 + 40));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 64));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 72));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 80));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 88));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 96));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 104));
  IPC::ArgumentCoder<WebCore::Color,void>::encode(a1, (a2 + 112));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 120));
  IPC::Encoder::operator<<<WebCore::IntSize>(a1, (a2 + 124));
  IPC::Encoder::operator<<<WebCore::FloatPoint const&>(a1, (a2 + 132));
  IPC::Encoder::operator<<<WebCore::FloatPoint const&>(a1, (a2 + 140));
  IPC::Encoder::operator<<<WebCore::FloatPoint const&>(a1, (a2 + 148));
  if (*(a2 + 172))
  {
    v22 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v22);
    if ((*(a2 + 172) & 1) == 0)
    {
      goto LABEL_74;
    }

    IPC::ArgumentCoder<WebCore::FloatRect,void>::encode(a1, (a2 + 156));
  }

  else
  {
    v22 = 0;
    IPC::Encoder::operator<<<BOOL>(a1, &v22);
  }

  IPC::ArgumentCoder<std::optional<unsigned int>,void>::encode<IPC::Encoder,std::optional<unsigned int>>(a1, a2 + 176);
  IPC::ArgumentCoder<std::optional<unsigned int>,void>::encode<IPC::Encoder,std::optional<unsigned int>>(a1, a2 + 184);
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 192));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 193));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 194));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 195));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 196));
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 200));
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 208));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 216));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 224));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 232));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 233));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 236));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 240));
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 248));
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 256));
  IPC::ArgumentCoder<WebCore::PathQuadCurveTo,void>::encode(a1, (a2 + 264));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 280));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 284));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 285));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 286));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 287));
  IPC::Encoder::operator<<<WebCore::IntSize>(a1, (a2 + 288));
  IPC::Encoder::operator<<<WebCore::IntSize>(a1, (a2 + 296));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 304));
  IPC::ArgumentCoder<std::optional<WebCore::FloatSize>,void>::encode<IPC::Encoder,std::optional<WebCore::FloatSize>>(a1, a2 + 308);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 320));
  if (*(a2 + 322))
  {
    v22 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v22);
    if ((*(a2 + 322) & 1) == 0)
    {
      goto LABEL_74;
    }

    IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 321));
  }

  else
  {
    v22 = 0;
    IPC::Encoder::operator<<<BOOL>(a1, &v22);
  }

  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 323));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 324));
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, a2 + 328);
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 344));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 345));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 346));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 347));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 348));
  IPC::Encoder::operator<<<WebCore::FloatPoint const&>(a1, (a2 + 352));
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 360));
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 368));
  IPC::Encoder::operator<<<WebCore::FloatPoint const&>(a1, (a2 + 376));
  if (*(a2 + 424))
  {
    v22 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v22);
    if ((*(a2 + 424) & 1) == 0)
    {
      goto LABEL_74;
    }

    IPC::ArgumentCoder<WebCore::ViewportArguments,void>::encode(a1, a2 + 384);
  }

  else
  {
    v22 = 0;
    IPC::Encoder::operator<<<BOOL>(a1, &v22);
  }

  IPC::Encoder::operator<<<WebCore::FloatPoint const&>(a1, (a2 + 428));
  IPC::Encoder::operator<<<WebCore::FloatPoint const&>(a1, (a2 + 436));
  IPC::Encoder::operator<<<WebCore::FloatPoint const&>(a1, (a2 + 444));
  IPC::Encoder::operator<<<WebCore::FloatPoint const&>(a1, (a2 + 452));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 460));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 464));
  IPC::ArgumentCoder<WebKit::HardwareKeyboardState,void>::encode(a1, (a2 + 468));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 471));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 472));
  IPC::ArgumentCoder<WebCore::Color,void>::encode(a1, (a2 + 480));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 488));
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, a2 + 496);
  IPC::VectorArgumentCoder<false,WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, a2 + 512);
  IPC::VectorArgumentCoder<false,WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, a2 + 528);
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 544));
  v22 = *(a2 + 545);
  IPC::Encoder::operator<<<BOOL>(a1, &v22);
  IPC::ArgumentCoder<unsigned short,void>::encode<IPC::Encoder>(a1, *(a2 + 546));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 552));
  IPC::ArgumentCoder<std::optional<double>,void>::encode<IPC::Encoder,std::optional<double>>(a1, a2 + 560);
  v4 = (a2 + 576);
  v5 = *(a2 + 576);
  if (v5)
  {
    v6 = *(v5 - 12);
  }

  else
  {
    v6 = 0;
  }

  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, v6);
  v7 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::begin((a2 + 576));
  v8 = v7;
  v10 = v9;
  if (*v4)
  {
    v11 = *v4 + 16 * *(*v4 - 4);
  }

  else
  {
    v11 = 0;
  }

  if (v11 != v7)
  {
    do
    {
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, v8);
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, v8[1]);
      do
      {
        v8 += 2;
      }

      while (v8 != v10 && (*v8 + 1) <= 1);
    }

    while (v8 != v11);
  }

  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, a2 + 584);
  if (*(a2 + 872))
  {
    v22 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v22);
    if ((*(a2 + 872) & 1) == 0)
    {
      goto LABEL_74;
    }

    IPC::ArgumentCoder<WebCore::ApplicationManifest,void>::encode(a1, a2 + 600);
  }

  else
  {
    v22 = 0;
    IPC::Encoder::operator<<<BOOL>(a1, &v22);
  }

  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 880));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 881));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 882));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 883));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 888));
  IPC::VectorArgumentCoder<false,WebKit::ContentWorldData,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebKit::ContentWorldData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2 + 896);
  IPC::VectorArgumentCoder<false,WebKit::WebUserScriptData,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebKit::WebUserScriptData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2 + 912);
  IPC::VectorArgumentCoder<false,WebKit::WebUserStyleSheetData,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebKit::WebUserStyleSheetData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2 + 928);
  IPC::VectorArgumentCoder<false,WebKit::WebScriptMessageHandlerData,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebKit::WebScriptMessageHandlerData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2 + 944);
  IPC::VectorArgumentCoder<false,std::pair<WebKit::WebCompiledContentRuleListData,WTF::URL>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<std::pair<WebKit::WebCompiledContentRuleListData,WTF::URL>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2 + 960);
  if (*(a2 + 1008))
  {
    v22 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v22);
    if ((*(a2 + 1008) & 1) == 0)
    {
      goto LABEL_74;
    }

    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 976));
    IPC::Encoder::operator<<<BOOL>(a1, (a2 + 984));
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 1004));
    v12 = *(a2 + 1004);
    if (v12)
    {
      v13 = *(a2 + 992);
      v14 = 160 * v12;
      do
      {
        IPC::ArgumentCoder<WebKit::WebExtensionContextParameters,void>::encode(a1, v13);
        v13 += 160;
        v14 -= 160;
      }

      while (v14);
    }
  }

  else
  {
    v22 = 0;
    IPC::Encoder::operator<<<BOOL>(a1, &v22);
  }

  if (*(a2 + 1024))
  {
    v22 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v22);
    if ((*(a2 + 1024) & 1) == 0)
    {
      goto LABEL_74;
    }

    IPC::ArgumentCoder<WebCore::Color,void>::encode(a1, (a2 + 1016));
  }

  else
  {
    v22 = 0;
    IPC::Encoder::operator<<<BOOL>(a1, &v22);
  }

  IPC::ArgumentCoder<std::optional<unsigned long long>,void>::encode<IPC::Encoder,std::optional<unsigned long long>>(a1, a2 + 1032);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 1048));
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, a2 + 1056);
  IPC::ArgumentCoder<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,void>::encode<IPC::Encoder>(a1, (a2 + 1072));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 1080));
  if (*(a2 + 1112))
  {
    v22 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v22);
    if ((*(a2 + 1112) & 1) == 0)
    {
      goto LABEL_74;
    }

    IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 1100));
    if (*(a2 + 1100))
    {
      v15 = *(a2 + 1096);
      if (v15)
      {
        v16 = 8 * v15;
        v17 = *(a2 + 1088);
        while (!*v17)
        {
          ++v17;
          v16 -= 8;
          if (!v16)
          {
            goto LABEL_48;
          }
        }
      }

      else
      {
        v17 = *(a2 + 1088);
      }

      v19 = *(a2 + 1088) + 8 * v15;
LABEL_69:
      if (v17 != v19)
      {
        IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, v17);
        while (++v17 != v19)
        {
          if (*v17)
          {
            goto LABEL_69;
          }
        }
      }
    }
  }

  else
  {
    v22 = 0;
    IPC::Encoder::operator<<<BOOL>(a1, &v22);
  }

LABEL_48:
  if (*(a2 + 1124))
  {
    v22 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v22);
    if ((*(a2 + 1124) & 1) == 0)
    {
      goto LABEL_74;
    }

    IPC::ArgumentCoder<unsigned short,void>::encode<IPC::Encoder>(a1, *(a2 + 1120));
    IPC::ArgumentCoder<unsigned short,void>::encode<IPC::Encoder>(a1, *(a2 + 1122));
  }

  else
  {
    v22 = 0;
    IPC::Encoder::operator<<<BOOL>(a1, &v22);
  }

  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 1126));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 1128));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 1136));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 1137));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 1138));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 1139));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 1140));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 1141));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 1142));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 1143));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 1144));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 1145));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 1146));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 1147));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 1148));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 1149));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 1150));
  v22 = *(a2 + 1151);
  IPC::Encoder::operator<<<BOOL>(a1, &v22);
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 1152));
  v22 = *(a2 + 1153);
  IPC::Encoder::operator<<<BOOL>(a1, &v22);
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 1154));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 1155));
  if ((*(a2 + 1384) & 1) == 0)
  {
    goto LABEL_57;
  }

  v22 = 1;
  IPC::Encoder::operator<<<BOOL>(a1, &v22);
  if ((*(a2 + 1384) & 1) == 0)
  {
    goto LABEL_74;
  }

  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 1160));
  IPC::ArgumentCoder<WebKit::FrameTreeCreationParameters,void>::encode(a1, a2 + 1200);
  if (*(a2 + 1376))
  {
    v22 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v22);
    if ((*(a2 + 1376) & 1) == 0)
    {
      goto LABEL_74;
    }

    IPC::ArgumentCoder<WebKit::WebsitePoliciesData,void>::encode(a1, a2 + 1256);
  }

  else
  {
LABEL_57:
    v22 = 0;
    IPC::Encoder::operator<<<BOOL>(a1, &v22);
  }

  if (*(a2 + 1448))
  {
    v22 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v22);
    if ((*(a2 + 1448) & 1) == 0)
    {
      goto LABEL_74;
    }

    IPC::ArgumentCoder<WebKit::ProvisionalFrameCreationParameters,void>::encode(a1, a2 + 1392);
  }

  else
  {
    v22 = 0;
    IPC::Encoder::operator<<<BOOL>(a1, &v22);
  }

  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 1456));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 1464));
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a1, a2 + 1472);
  IPC::ArgumentCoder<unsigned short,void>::encode<IPC::Encoder>(a1, *(a2 + 1488));
  if ((*(a2 + 1576) & 1) == 0)
  {
    v22 = 0;
    IPC::Encoder::operator<<<BOOL>(a1, &v22);
    goto LABEL_66;
  }

  v22 = 1;
  IPC::Encoder::operator<<<BOOL>(a1, &v22);
  if (*(a2 + 1576))
  {
    IPC::ArgumentCoder<WebCore::WindowFeatures,void>::encode(a1, (a2 + 1496));
LABEL_66:
    IPC::VectorArgumentCoder<false,WebCore::RsaOtherPrimesInfo,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::RsaOtherPrimesInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2 + 1584);
    IPC::VectorArgumentCoder<false,WebCore::RsaOtherPrimesInfo,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::RsaOtherPrimesInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2 + 1600);
    IPC::ArgumentCoder<WebKit::SandboxExtensionHandle,void>::encode(a1, (a2 + 1616));
    IPC::ArgumentCoder<std::optional<WebKit::CoreIPCAuditToken>,void>::encode<IPC::Encoder,std::optional<WebKit::CoreIPCAuditToken>>(a1, a2 + 1624);
    IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 1664));
    return IPC::Encoder::operator<<<BOOL>(a1, (a2 + 1672));
  }

LABEL_74:
  v20 = std::__throw_bad_optional_access[abi:sn200100]();
  return IPC::Encoder::operator<<<WebCore::FloatPoint const&>(v20, v21);
}

IPC::Encoder *IPC::Encoder::operator<<<WebCore::FloatPoint const&>(IPC::Encoder *a1, float *a2)
{
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, a2[1]);
  return a1;
}

uint64_t IPC::ArgumentCoder<WebCore::PathQuadCurveTo,void>::encode(IPC::Encoder *a1, float *a2)
{
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, a2[1]);
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, a2[2]);
  v4 = a2[3];

  return IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, v4);
}

IPC::Encoder *IPC::ArgumentCoder<std::optional<WebCore::FloatSize>,void>::encode<IPC::Encoder,std::optional<WebCore::FloatSize>>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    v6 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v6);
    if (*(a2 + 8))
    {
      return IPC::Encoder::operator<<<WebCore::FloatPoint const&>(a1, a2);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::ArgumentCoder<WebKit::AppPrivacyReportTestingData,void>::encode(v5);
    }
  }

  else
  {
    v7 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v7);
  }
}

uint64_t IPC::ArgumentCoder<WebKit::AppPrivacyReportTestingData,void>::encode(IPC::Encoder *a1, char *a2)
{
  IPC::Encoder::operator<<<BOOL>(a1, a2);
  IPC::Encoder::operator<<<BOOL>(a1, a2 + 1);

  return IPC::Encoder::operator<<<BOOL>(a1, a2 + 2);
}

uint64_t IPC::VectorArgumentCoder<false,WebKit::ContentWorldData,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebKit::ContentWorldData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = 24 * v5;
    do
    {
      result = IPC::ArgumentCoder<WebKit::ContentWorldData,void>::encode(a1, v6);
      v6 += 24;
      v7 -= 24;
    }

    while (v7);
  }

  return result;
}

uint64_t IPC::VectorArgumentCoder<false,std::pair<WebKit::WebCompiledContentRuleListData,WTF::URL>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<std::pair<WebKit::WebCompiledContentRuleListData,WTF::URL>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = &v6[15 * v5];
    do
    {
      IPC::ArgumentCoder<WebKit::WebCompiledContentRuleListData,void>::encode(a1, v6);
      result = IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, v6 + 10);
      v6 += 15;
    }

    while (v6 != v7);
  }

  return result;
}

uint64_t IPC::VectorArgumentCoder<false,WebKit::WebScriptMessageHandlerData,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebKit::WebScriptMessageHandlerData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = 24 * v5;
    do
    {
      result = IPC::ArgumentCoder<WebCore::DOMCacheEngine::CacheInfo,void>::encode(a1, v6);
      v6 += 3;
      v7 -= 24;
    }

    while (v7);
  }

  return result;
}

uint64_t IPC::VectorArgumentCoder<false,WebKit::WebUserStyleSheetData,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebKit::WebUserStyleSheetData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = 120 * v5;
    do
    {
      result = IPC::ArgumentCoder<WebKit::WebUserStyleSheetData,void>::encode(a1, v6);
      v6 += 15;
      v7 -= 120;
    }

    while (v7);
  }

  return result;
}

uint64_t IPC::VectorArgumentCoder<false,WebKit::WebUserScriptData,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebKit::WebUserScriptData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = 104 * v5;
    do
    {
      result = IPC::ArgumentCoder<WebKit::WebUserScriptData,void>::encode(a1, v6);
      v6 += 13;
      v7 -= 104;
    }

    while (v7);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<WebKit::WebCompiledContentRuleListData,void>::encode(IPC::Encoder *a1, uint64_t *a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  WebKit::WebCompiledContentRuleListData::createDataHandle(a2);
  IPC::ArgumentCoder<std::optional<WebCore::SharedMemoryHandle>,void>::encode<IPC::Encoder,std::optional<WebCore::SharedMemoryHandle>>(a1, v5);
  if (v5[16] == 1)
  {
    WTF::MachSendRight::~MachSendRight(v5);
  }

  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, a2[2]);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, a2[3]);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, a2[4]);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, a2[5]);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, a2[6]);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, a2[7]);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, a2[8]);
  return IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, a2[9]);
}

void sub_19D5DBDB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12)
{
  if (a12 == 1)
  {
    WTF::MachSendRight::~MachSendRight(&a10);
  }

  _Unwind_Resume(exception_object);
}

atomic_uint *WebKit::WebCompiledContentRuleListData::createDataHandle(uint64_t a1)
{
  v1 = *(a1 + 8);
  atomic_fetch_add(v1, 1u);
  result = WebCore::SharedMemory::createHandle();
  if (v1)
  {

    return WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v1);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::optional<WebCore::SharedMemoryHandle>,void>::encode<IPC::Encoder,std::optional<WebCore::SharedMemoryHandle>>(IPC::Encoder *a1, unint64_t a2)
{
  if (*(a2 + 16))
  {
    v6 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v6);
    if (*(a2 + 16))
    {
      IPC::Encoder::addAttachment(a1, a2);
      return IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 8));
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::VectorArgumentCoder<false,WebCore::RsaOtherPrimesInfo,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::RsaOtherPrimesInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(v5);
    }
  }

  else
  {
    v7 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v7);
  }
}

uint64_t IPC::VectorArgumentCoder<false,WebCore::RsaOtherPrimesInfo,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::RsaOtherPrimesInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = 24 * v5;
    do
    {
      result = IPC::ArgumentCoder<WebKit::WebExtensionCommandParameters,void>::encode(a1, v6);
      v6 += 3;
      v7 -= 24;
    }

    while (v7);
  }

  return result;
}

void IPC::ArgumentCoder<std::optional<WebKit::CoreIPCAuditToken>,void>::encode<IPC::Encoder,std::optional<WebKit::CoreIPCAuditToken>>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 32))
  {
    v6 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v6);
    if (*(a2 + 32) == 1)
    {
      for (i = 0; i != 32; i += 4)
      {
        IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + i));
      }
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      WebKit::WebPageCreationParameters::~WebPageCreationParameters(v5);
    }
  }

  else
  {
    v7 = 0;
    IPC::Encoder::operator<<<BOOL>(a1, &v7);
  }
}

void WebKit::WebPageCreationParameters::~WebPageCreationParameters(WebKit::WebPageCreationParameters *this, WTF::StringImpl *a2)
{
  v3 = *(this + 208);
  *(this + 208) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(this + 202);
  WTF::Vector<WebCore::LinkDecorationFilteringData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 1600, v4);
  WTF::Vector<WebCore::LinkDecorationFilteringData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 1584, v5);
  if (*(this + 1576) == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 1560, v6);
  }

  v7 = *(this + 183);
  *(this + 183) = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v6);
  }

  if (*(this + 1384) == 1)
  {
    if (*(this + 1376) == 1)
    {
      WebKit::WebsitePoliciesData::~WebsitePoliciesData((this + 1256), v6);
    }

    WTF::Vector<WebKit::FrameTreeCreationParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 1240, v6);
    v31 = *(this + 154);
    *(this + 154) = 0;
    if (v31)
    {
      WTF::RefCounted<WebCore::FrameTreeSyncData>::deref(v31, v6);
    }

    v32 = *(this + 153);
    *(this + 153) = 0;
    if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v32, v6);
    }

    v33 = *(this + 145);
    *(this + 145) = 0;
    if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v33, v6);
    }
  }

  v8 = *(this + 141);
  *(this + 141) = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v6);
  }

  if (*(this + 1112) == 1)
  {
    v34 = *(this + 136);
    if (v34)
    {
      WTF::RobinHoodHashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableSizePolicy,WTF::FastMalloc>::deallocateTable(v34, *(this + 274));
    }
  }

  v9 = *(this + 134);
  if (v9)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v9, v6);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 1056, v6);
  v11 = *(this + 131);
  *(this + 131) = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v10);
  }

  if (*(this + 1024) == 1)
  {
    v12 = *(this + 127);
    if ((v12 & 0x8000000000000) != 0)
    {
      v37 = (v12 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((v12 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v37);
        WTF::fastFree(v37, v10);
      }
    }
  }

  if (*(this + 1008) == 1)
  {
    WTF::Vector<WebKit::WebExtensionContextParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 992, v10);
  }

  WTF::Vector<std::pair<WebKit::WebCompiledContentRuleListData,WTF::URL>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 960, v10);
  WTF::Vector<WebKit::WebScriptMessageHandlerData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 944, v13);
  WTF::Vector<WebKit::WebUserStyleSheetData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 928, v14);
  WTF::Vector<WebKit::WebUserScriptData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 228, v15);
  WTF::Vector<WebKit::ContentWorldData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 896, v16);
  if (*(this + 872) == 1)
  {
    WebCore::ApplicationManifest::~ApplicationManifest((this + 600), v17);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 584, v17);
  v19 = *(this + 72);
  if (v19)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v19, v18);
  }

  v20 = *(this + 69);
  *(this + 69) = 0;
  if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v20, v18);
  }

  WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 528, v18);
  WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 512, v21);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 496, v22);
  v24 = *(this + 60);
  if ((v24 & 0x8000000000000) != 0)
  {
    v35 = (v24 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v24 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v35);
      WTF::fastFree(v35, v23);
    }
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 328, v23);
  v26 = *(this + 27);
  *(this + 27) = 0;
  if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v26, v25);
  }

  v27 = *(this + 14);
  if ((v27 & 0x8000000000000) != 0)
  {
    v36 = (v27 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v27 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v36);
      WTF::fastFree(v36, v25);
    }
  }

  v28 = *(this + 11);
  *(this + 11) = 0;
  if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v28, v25);
  }

  v29 = *(this + 5);
  if (v29)
  {
    WTF::RobinHoodHashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>::deallocateTable(v29, *(this + 12));
  }

  v30 = *(this + 2);
  if (v30)
  {
    WTF::RobinHoodHashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>::deallocateTable(v30, *(this + 6));
  }
}

uint64_t WTF::Vector<std::pair<WebKit::WebCompiledContentRuleListData,WTF::URL>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v6 = *a1;
    v7 = 120 * v3;
    do
    {
      v6 = std::pair<WebKit::WebCompiledContentRuleListData,WTF::URL>::~pair(v6, a2) + 120;
      v7 -= 120;
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

uint64_t WebKit::PageLoadTimingFrameLoadStateObserver::ref(WebKit::PageLoadTimingFrameLoadStateObserver *this)
{
  v1 = *(*(this + 2) + 8);
  if (v1)
  {
    return CFRetain(*(v1 - 8));
  }

  result = 92;
  __break(0xC471u);
  return result;
}

void WebKit::PageLoadTimingFrameLoadStateObserver::deref(WebKit::PageLoadTimingFrameLoadStateObserver *this)
{
  v1 = *(*(this + 2) + 8);
  if (v1)
  {
    CFRelease(*(v1 - 8));
  }

  else
  {
    __break(0xC471u);
  }
}

void WebKit::WebProcessProxy::addVisitedLinkStoreUser(unsigned int *a1, unsigned int *a2, uint64_t a3)
{
  v32 = a3;
  v5 = (a1 + 166);
  v6 = a1[168];
  a1[168] = v6 + 1;
  if (v6 > a1[169])
  {
    WTF::WeakHashMap<WebKit::VisitedLinkStore,WTF::HashSet<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultWeakPtrImpl>::removeNullReferences(a1 + 166, a2);
  }

  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2 + 6, (a2 + 4));
  v7 = *(a2 + 3);
  atomic_fetch_add(v7, 1u);
  v33 = v7;
  if (v7 == -1 || !v7)
  {
    __break(0xC471u);
    JUMPOUT(0x19D5DC650);
  }

  v8 = *v5;
  if (*v5
    || (WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::HashSet<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::HashSet<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashMap<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::HashSet<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::HashSet<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::expand( v5,  0),  (v8 = *v5) != 0))
  {
    v9 = *(v8 - 8);
  }

  else
  {
    v9 = 0;
  }

  v11 = WTF::PtrHashBase<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,true>::hash(&v33);
  v12 = 0;
  v13 = 1;
  v14 = v33;
  while (1)
  {
    v15 = v11 & v9;
    v16 = (v8 + 16 * v15);
    v17 = *v16;
    if (*v16 != -1)
    {
      break;
    }

    v12 = (v8 + 16 * v15);
LABEL_14:
    v11 = v13 + v15;
    ++v13;
  }

  if (!v17)
  {
    if (v12)
    {
      *v12 = 0;
      v12[1] = 0;
      --*(*v5 - 16);
      v16 = v12;
    }

    v33 = 0;
    v18 = *v16;
    *v16 = v14;
    if (v18 && atomic_fetch_add(v18, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v18);
      WTF::fastFree(v18, v10);
    }

    v19 = v16[1];
    v16[1] = 0;
    if (v19)
    {
      WTF::fastFree((v19 - 16), v10);
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
    v24 = (*(v20 - 16) + v21);
    v25 = *(v20 - 4);
    if (v25 > 0x400)
    {
      if (v25 <= 2 * v24)
      {
LABEL_27:
        v16 = WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::HashSet<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::HashSet<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashMap<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::HashSet<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::HashSet<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::expand( v5,  v16);
        v20 = *v5;
        if (*v5)
        {
          v25 = *(v20 - 4);
        }

        else
        {
          v25 = 0;
        }
      }
    }

    else if (3 * v25 <= 4 * v24)
    {
      goto LABEL_27;
    }

    v26 = v20 + 16 * v25;
    v14 = v33;
    goto LABEL_34;
  }

  if (v17 != v33)
  {
    goto LABEL_14;
  }

  v22 = *v5;
  if (*v5)
  {
    v23 = *(v22 - 4);
  }

  else
  {
    v23 = 0;
  }

  v26 = v22 + 16 * v23;
LABEL_34:
  v33 = 0;
  if (v14 && atomic_fetch_add(v14, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v14);
    WTF::fastFree(v14, v10);
  }

  v33 = v5;
  v34 = v16;
  v35 = v26;
  v27 = *v5;
  if (*v5)
  {
    v28 = *(v27 - 4);
    v29 = v27 + 16 * v28;
  }

  else
  {
    v29 = 0;
    v28 = 0;
  }

  v36 = v29;
  v37 = v27 + 16 * v28;
  v38 = 0;
  WTF::WeakHashMap<WebKit::WebPageProxy,WTF::HashSet<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>,WTF::DefaultHash<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultWeakPtrImpl>::WeakHashMapIteratorBase<WTF::WeakHashMap<WebKit::WebPageProxy,WTF::HashSet<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>,WTF::DefaultHash<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultWeakPtrImpl>,WTF::HashTableIteratorAdapter<WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::HashSet<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>,WTF::DefaultHash<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::HashSet<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>,WTF::DefaultHash<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashMap<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::HashSet<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>,WTF::DefaultHash<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::HashSet<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>,WTF::DefaultHash<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>,WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::HashSet<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>,WTF::DefaultHash<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::WeakHashMap<WebKit::WebPageProxy,WTF::HashSet<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>,WTF::DefaultHash<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultWeakPtrImpl>::PeekPtrType,WTF::WeakHashMap<WebKit::WebPageProxy,WTF::HashSet<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>,WTF::DefaultHash<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultWeakPtrImpl>::PeekType>::skipEmptyBuckets(&v33);
  v30 = v34;
  WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(v34 + 1, &v32, &v33);
  v31 = v30[1];
  if (v31)
  {
    if (*(v31 - 3) == 1)
    {
      WebKit::VisitedLinkStore::addProcess(a2, a1);
    }
  }
}

void WebKit::VisitedLinkStore::addProcess(WebKit::VisitedLinkStore *this, WebKit::WebProcessProxy *a2)
{
  WTF::WeakHashSet<WebKit::FrameLoadStateObserver,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::add<WebKit::FrameLoadStateObserver>(this + 48, a2, v5);
  if (v5[16] == 1)
  {
    v4 = *(this + 4);
    v6[0] = 155;
    v6[1] = v4;
    WTF::HashMap<std::pair<IPC::ReceiverName,unsigned long long>,WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<std::pair<IPC::ReceiverName,unsigned long long>>,WTF::PairHashTraits<WTF::StrongEnumHashTraits<IPC::ReceiverName>,WTF::HashTraits<unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<std::pair<IPC::ReceiverName,unsigned long long>,IPC::MessageReceiver&>(a2 + 13, v6, this + 16, v5);
    if (*(this + 20))
    {
      WebKit::VisitedLinkStore::sendStoreHandleToProcess(this, a2);
    }
  }
}

uint64_t WebKit::WebPageProxy::setIntrinsicDeviceScaleFactor(uint64_t this, float a2)
{
  if (*(this + 824) != a2)
  {
    v7[3] = v2;
    v7[4] = v3;
    *(this + 824) = a2;
    v4 = *(this + 328);
    if (v4)
    {
      (**v4)(*(this + 328));
      v5 = WTF::fastMalloc(0x10);
      *v5 = &unk_1F1117FA8;
      v7[0] = v5;
      (*(*v4 + 88))(v4, v7);
      v6 = v7[0];
      v7[0] = 0;
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }

      return (*(*v4 + 8))(v4);
    }
  }

  return this;
}

atomic_uint *WebKit::RemoteLayerTreeDrawingAreaProxy::deviceScaleFactorDidChange(uint64_t a1, uint64_t *a2)
{
  v4 = WTF::fastMalloc(0x10);
  *v4 = 1;
  v5 = *a2;
  *a2 = 0;
  *(v4 + 8) = v5;
  v9 = v4;
  v6 = WTF::fastMalloc(0x18);
  *v6 = &unk_1F1108BB0;
  v6[1] = a1;
  v6[2] = &v9;
  v8 = v6;
  WebKit::RemoteLayerTreeDrawingAreaProxy::forEachProcessState(a1, &v8);
  (*(*v6 + 8))(v6);
  result = v9;
  v9 = 0;
  if (result)
  {
    return WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(result);
  }

  return result;
}

void sub_19D5DCA70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, atomic_uint *a10)
{
  (*(*v10 + 8))(v10);
  if (a10)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(a10);
  }

  _Unwind_Resume(a1);
}

uint64_t WebKit::RemoteLayerTreeDrawingAreaProxy::forEachProcessState(uint64_t a1, void *a2)
{
  (*(**a2 + 16))(*a2, a1 + 96, *(a1 + 48));
  v4 = *(a1 + 168);
  result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::RemoteLayerTreeDrawingAreaProxy::ProcessState>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::RemoteLayerTreeDrawingAreaProxy::ProcessState>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::RemoteLayerTreeDrawingAreaProxy::ProcessState,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::RemoteLayerTreeDrawingAreaProxy::ProcessState>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::begin(v4);
  v6 = result;
  v8 = v7;
  if (v4)
  {
    v9 = &v4[10 * *(v4 - 1)];
  }

  else
  {
    v9 = 0;
  }

  if (v9 != result)
  {
    do
    {
      v11 = *v6;
      {
        WebKit::WebProcessProxy::allProcessMap(void)::map = 0;
      }

      result = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(&WebKit::WebProcessProxy::allProcessMap(void)::map, &v11);
      if (result)
      {
        v10 = (result + 16);
        atomic_fetch_add((result + 16), 1u);
        (*(**a2 + 16))(*a2, v6 + 1, result);
        result = WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v10);
      }

      do
      {
        v6 += 10;
      }

      while (v6 != v8 && (*v6 + 1) <= 1);
    }

    while (v6 != v9);
  }

  return result;
}

void WTF::Detail::CallableWrapper<WebKit::RemoteLayerTreeDrawingAreaProxy::deviceScaleFactorDidChange(WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::RemoteLayerTreeDrawingAreaProxy::ProcessState &,WebKit::WebProcessProxy &>::call(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  v4 = *(v3 + 40);
  if (v4)
  {
    v5 = *(v4 + 8);
    if (v5)
    {
      CFRetain(*(v5 - 8));
      v9 = 824;
      if (*(v5 + 816))
      {
        v9 = 828;
      }

      v10 = *(v5 + v9 - 16);
      v11 = **(a1 + 16);
      atomic_fetch_add(v11, 1u);
      v12 = *(v3 + 24);
      v13 = IPC::Encoder::operator new(0x238, v8);
      *v13 = 30;
      *(v13 + 2) = 0;
      *(v13 + 3) = 0;
      *(v13 + 1) = v12;
      *(v13 + 68) = 0;
      *(v13 + 70) = 0;
      *(v13 + 69) = 0;
      IPC::Encoder::encodeHeader(v13);
      v22 = v13;
      IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(v13, v10);
      v14 = WTF::fastMalloc(0x10);
      *v14 = &unk_1F1108BD8;
      v14[1] = v11;
      if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
      {
        __break(0xC471u);
      }

      else
      {
        v20[0] = v14;
        v20[1] = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
        v21 = 1;
        WebKit::AuxiliaryProcessProxy::sendMessage(a3, &v22, 0, v20, 1);
        if (v21 == 1)
        {
          v16 = v20[0];
          v20[0] = 0;
          if (v16)
          {
            (*(*v16 + 8))(v16);
          }
        }

        v17 = v22;
        v22 = 0;
        if (v17)
        {
          IPC::Encoder::~Encoder(v17, v15);
          bmalloc::api::tzoneFree(v18, v19);
        }

        CFRelease(*(v5 - 8));
      }
    }
  }
}

void sub_19D5DCDDC(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
{
  if (a11 == 1 && a9)
  {
    (*(*a9 + 8))(a9);
  }

  if (a12)
  {
    IPC::Encoder::~Encoder(a12, a2);
    bmalloc::api::tzoneFree(v14, v15);
  }

  CFRelease(*(v12 - 8));
  _Unwind_Resume(a1);
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::SetUseFixedLayout>(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 2787;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  IPC::Encoder::operator<<<BOOL &>(v8, a2);
  LOBYTE(v16) = 0;
  v17 = 0;
  v10 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v18, a4, &v16, 1);
  if (v17 == 1)
  {
    v11 = v16;
    v16 = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }
  }

  v12 = v18;
  v18 = 0;
  if (v12)
  {
    IPC::Encoder::~Encoder(v12, v9);
    bmalloc::api::tzoneFree(v14, v15);
  }

  return v10;
}

atomic_uint *WebKit::WebPageProxy::send<Messages::WebPage::SetUseFixedLayout>(uint64_t a1, void *a2)
{
  v2 = *(a1 + 352);
  atomic_fetch_add((v2 + 16), 1u);
  result = WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::SetUseFixedLayout>(v2, a2, *(a1 + 48), 0);
  if (v2)
  {

    return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v2 + 16));
  }

  return result;
}

atomic_uint *WebKit::WebPageProxy::setUseFixedLayout(atomic_uint *this, int a2)
{
  if (*(this + 837) != a2)
  {
    *(this + 837) = a2;
    if ((a2 & 1) == 0)
    {
      *(*(this + 4) + 816) = 0;
    }

    if ((*(this + 865) & 1) == 0 && *(this + 864) == 1)
    {
      v5 = v2;
      v6 = v3;
      v4 = a2;
      return WebKit::WebPageProxy::send<Messages::WebPage::SetUseFixedLayout>(this, &v4);
    }
  }

  return this;
}

uint64_t WebKit::WebPageProxy::setScreenIsBeingCaptured(uint64_t this, char a2)
{
  if ((*(this + 865) & 1) == 0 && *(this + 864) == 1)
  {
    v6 = v2;
    v7 = v3;
    v4 = *(this + 352);
    v5 = a2;
    return WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::SetScreenIsBeingCaptured>(v4, &v5, *(this + 48), 0);
  }

  return this;
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::SetScreenIsBeingCaptured>(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 2771;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  IPC::Encoder::operator<<<BOOL &>(v8, a2);
  LOBYTE(v16) = 0;
  v17 = 0;
  v10 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v18, a4, &v16, 1);
  if (v17 == 1)
  {
    v11 = v16;
    v16 = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }
  }

  v12 = v18;
  v18 = 0;
  if (v12)
  {
    IPC::Encoder::~Encoder(v12, v9);
    bmalloc::api::tzoneFree(v14, v15);
  }

  return v10;
}

void sub_19D5DD1D4(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
{
  if (a11 == 1 && a9)
  {
    (*(*a9 + 8))(a9);
  }

  if (a12)
  {
    IPC::Encoder::~Encoder(a12, a2);
    bmalloc::api::tzoneFree(v13, v14);
  }

  _Unwind_Resume(exception_object);
}

atomic_uint *WebKit::WebPageProxy::windowScreenDidChange(atomic_uint *this, uint64_t a2)
{
  v3 = this;
  this[222] = a2;
  *(this + 892) = 1;
  v4 = *(this + 41);
  if (v4)
  {
    (**v4)(*(this + 41));
    this = (*(*v4 + 104))(v4, a2);
  }

  if ((*(v3 + 865) & 1) == 0 && *(v3 + 864) == 1)
  {
    LOBYTE(v9) = 0;
    v10 = 0;
    if (v4)
    {
      v5 = (*(*v4 + 112))(v4);
      v9 = v5;
      v10 = BYTE4(v5);
    }

    v6 = v3 + 48;
    LODWORD(v7) = a2;
    v8 = &v9;
    WebKit::WebPageProxy::send<Messages::EventDispatcher::PageScreenDidChange>(v3, &v6);
    LODWORD(v6) = a2;
    v7 = &v9;
    this = WebKit::WebPageProxy::send<Messages::WebPage::WindowScreenDidChange>(v3, &v6);
  }

  if (v4)
  {
    return (*(*v4 + 8))(v4);
  }

  return this;
}

WKDisplayLinkHandler *WebKit::RemoteLayerTreeDrawingAreaProxyIOS::displayLinkHandler(WebKit::RemoteLayerTreeDrawingAreaProxyIOS *this)
{
  result = *(this + 36);
  if (!result)
  {
    result = [[WKDisplayLinkHandler alloc] initWithDrawingAreaProxy:this];
    v3 = *(this + 36);
    *(this + 36) = result;
    if (v3)
    {

      return *(this + 36);
    }
  }

  return result;
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::EventDispatcher::PageScreenDidChange>(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 33;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  Messages::EventDispatcher::PageScreenDidChange::encode<IPC::Encoder>(a2, v8);
  LOBYTE(v16) = 0;
  v17 = 0;
  v10 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v18, a4, &v16, 1);
  if (v17 == 1)
  {
    v11 = v16;
    v16 = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }
  }

  v12 = v18;
  v18 = 0;
  if (v12)
  {
    IPC::Encoder::~Encoder(v12, v9);
    bmalloc::api::tzoneFree(v14, v15);
  }

  return v10;
}

atomic_uint *WebKit::WebPageProxy::send<Messages::EventDispatcher::PageScreenDidChange>(uint64_t a1, void *a2)
{
  v2 = *(a1 + 352);
  atomic_fetch_add((v2 + 16), 1u);
  result = WebKit::AuxiliaryProcessProxy::send<Messages::EventDispatcher::PageScreenDidChange>(v2, a2, *(a1 + 48), 0);
  if (v2)
  {

    return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v2 + 16));
  }

  return result;
}

uint64_t Messages::EventDispatcher::PageScreenDidChange::encode<IPC::Encoder>(uint64_t a1, IPC::Encoder *a2)
{
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a2, **a1);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a2, *(a1 + 8));
  v4 = *(a1 + 16);

  return IPC::ArgumentCoder<std::optional<unsigned int>,void>::encode<IPC::Encoder,std::optional<unsigned int>>(a2, v4);
}

atomic_uint *WebKit::WebPageProxy::send<Messages::WebPage::WindowScreenDidChange>(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 352);
  atomic_fetch_add((v2 + 16), 1u);
  result = WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::WindowScreenDidChange>(v2, a2, *(a1 + 48), 0);
  if (v2)
  {

    return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v2 + 16));
  }

  return result;
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::WindowScreenDidChange>(uint64_t a1, uint64_t *a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 2866;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v8, *a2);
  IPC::ArgumentCoder<std::optional<unsigned int>,void>::encode<IPC::Encoder,std::optional<unsigned int>>(v8, a2[1]);
  LOBYTE(v16) = 0;
  v17 = 0;
  v10 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v18, a4, &v16, 1);
  if (v17 == 1)
  {
    v11 = v16;
    v16 = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }
  }

  v12 = v18;
  v18 = 0;
  if (v12)
  {
    IPC::Encoder::~Encoder(v12, v9);
    bmalloc::api::tzoneFree(v14, v15);
  }

  return v10;
}

uint64_t WebKit::WebPageProxy::setFullscreenClient(uint64_t a1, void *a2)
{
  v3 = *a2;
  if (*a2)
  {
    *a2 = 0;
  }

  else
  {
    v3 = API::FullscreenClient::operator new(8, a2);
    *v3 = &unk_1F11170C0;
  }

  result = *(a1 + 512);
  *(a1 + 512) = v3;
  if (result)
  {
    v5 = *(*result + 16);

    return v5();
  }

  return result;
}

uint64_t IPC::FunctionDispatcherQueue::enqueueMessage(uint64_t a1, atomic_ullong *a2, uint64_t *a3)
{
  v6 = *(a1 + 8);
  while (1)
  {
    v7 = *a2;
    if ((*a2 & 1) == 0)
    {
      break;
    }

    v12 = *a2;
    atomic_compare_exchange_strong_explicit(a2, &v12, v7 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v12 == v7)
    {
      goto LABEL_4;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_4:
  v8 = *a3;
  *a3 = 0;
  v9 = *(*(a1 + 16) + 8);
  if (v9)
  {
    (**v9)(v9);
    v10 = WTF::fastMalloc(0x20);
    *v10 = &unk_1F1147340;
    v10[1] = a2;
    v10[2] = v8;
    v10[3] = v9;
    v13 = v10;
    (*(*v6 + 16))(v6, &v13);
    result = v13;
    v13 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  else
  {
    result = 103;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::EventDispatcher::didReceiveMessage(WebKit::EventDispatcher *this, atomic_ullong *a2, IPC::Decoder *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  WebKit::EventDispatcher::ref(this);
  v6 = *(a3 + 25);
  switch(v6)
  {
    case '!':
      result = IPC::handleMessage<Messages::EventDispatcher::PageScreenDidChange,IPC::Connection,WebKit::EventDispatcher,WebKit::EventDispatcher,void ()(WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,unsigned int,std::optional<unsigned int>)>(a3, this);
      break;
    case '#':
      result = IPC::handleMessage<Messages::EventDispatcher::WheelEvent,IPC::Connection,WebKit::EventDispatcher,WebKit::EventDispatcher,void ()(WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::WebWheelEvent const&,WebCore::RectEdges<WebCore::RubberBandingBehavior>)>(a3, this);
      break;
    case '""':
      result = IPC::handleMessageAsync<Messages::EventDispatcher::TouchEvent,IPC::Connection,WebKit::EventDispatcher,WebKit::EventDispatcher,void ()(WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::WebTouchEvent const&,WTF::CompletionHandler<void ()(BOOL,std::optional<WebKit::RemoteWebTouchEvent>)> &&)>(a2, a3, this);
      break;
    default:
      v8 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        if (v6 >= 0x107F)
        {
          v9 = 4223;
        }

        else
        {
          v9 = v6;
        }

        v10 = (&IPC::Detail::messageDescriptions)[3 * v9];
        v11 = *(a3 + 7);
        v12 = 136315394;
        v13 = v10;
        v14 = 2048;
        v15 = v11;
        _os_log_error_impl(&dword_19D52D000, v8, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", &v12, 0x16u);
      }

      result = IPC::Decoder::markInvalid(a3);
      break;
  }

  if (this)
  {
    return WebKit::EventDispatcher::deref(this);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,unsigned int,std::optional<unsigned int>>,void>::decode<IPC::Decoder>(_BYTE *a1, IPC::Decoder *a2)
{
  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  v6 = result;
  v7 = v5;
  if (v5)
  {
    return IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,unsigned int,std::optional<unsigned int>>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1, a2, &v6);
  }

  *a1 = 0;
  a1[24] = 0;
  return result;
}

uint64_t IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,unsigned int,std::optional<unsigned int>>>(_BYTE *a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,unsigned int,std::optional<unsigned int>>,void>::decode<IPC::Decoder>(a1, a2);
  if ((a1[24] & 1) == 0)
  {

    return IPC::Decoder::markInvalid(a2);
  }

  return result;
}

uint64_t IPC::handleMessage<Messages::EventDispatcher::PageScreenDidChange,IPC::Connection,WebKit::EventDispatcher,WebKit::EventDispatcher,void ()(WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,unsigned int,std::optional<unsigned int>)>(IPC::Decoder *a1, WTF *a2)
{
  result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,unsigned int,std::optional<unsigned int>>>(&v4, a1);
  if (v5 == 1)
  {

    return WTF::isIntegralOrPointerType(a2);
  }

  return result;
}

IPC::Encoder *WTF::Detail::CallableWrapper<IPC::FunctionDispatcherQueue::enqueueMessage(IPC::Connection &,WTF::UniqueRef<IPC::Decoder> &&)::{lambda(void)#1},void>::call(void *a1, void *a2)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[1];
  if (*(v3 + 50) < 0xF8Fu)
  {
    result = (*(*v4 + 32))(a1[3], v5);
    goto LABEL_3;
  }

  v8 = *(v3 + 64);
  if (!v8)
  {
    __break(0xC471u);
    goto LABEL_15;
  }

  v9 = IPC::Encoder::operator new(0x238, a2);
  *v9 = 3199;
  *(v9 + 2) = 0;
  *(v9 + 3) = 0;
  *(v9 + 1) = v8;
  *(v9 + 68) = 0;
  *(v9 + 70) = 0;
  *(v9 + 69) = 0;
  IPC::Encoder::encodeHeader(v9);
  v24 = v9;
  result = (*(*v4 + 48))(v4, v5, a1[2], &v24);
  v11 = v24;
  v24 = 0;
  if (!v11)
  {
    goto LABEL_3;
  }

  v12 = *(a1[2] + 64);
  if (!v12)
  {
    __break(0xC471u);
LABEL_15:
    JUMPOUT(0x19D5DDE64);
  }

  v13 = IPC::Encoder::operator new(0x238, v10);
  *v13 = 3194;
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  *(v13 + 1) = v12;
  *(v13 + 68) = 0;
  *(v13 + 70) = 0;
  *(v13 + 69) = 0;
  IPC::Encoder::encodeHeader(v13);
  v23 = v13;
  IPC::Connection::sendMessageImpl(v5, &v23, 0, 0);
  v15 = v23;
  v23 = 0;
  if (v15)
  {
    IPC::Encoder::~Encoder(v15, v14);
    bmalloc::api::tzoneFree(v21, v22);
  }

  IPC::Encoder::~Encoder(v11, v14);
  bmalloc::api::tzoneFree(v16, v17);
  result = v24;
  v24 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v18);
    result = bmalloc::api::tzoneFree(v19, v20);
  }

LABEL_3:
  v7 = a1[2];
  if (!*v7)
  {
    return IPC::Connection::dispatchDidReceiveInvalidMessage(v5, *(v7 + 50), v7 + 72);
  }

  return result;
}

uint64_t IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(IPC::Decoder *a1)
{
  v2 = IPC::ArgumentCoder<PAL::SessionID,void>::decode(a1);
  if ((v3 & 1) == 0)
  {
    IPC::Decoder::markInvalid(a1);
  }

  return v2;
}

uint64_t IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,unsigned int,std::optional<unsigned int>>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(_BYTE *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<float>(a2);
  v7 = result;
  v8 = BYTE4(result);
  if ((result & 0x100000000) != 0)
  {
    return IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,unsigned int,std::optional<unsigned int>>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,unsigned int>(a1, a2, a3, &v7);
  }

  *a1 = 0;
  a1[24] = 0;
  return result;
}

uint64_t IPC::ArgumentCoder<PAL::SessionID,void>::decode(IPC::Decoder *a1)
{
  v1 = *(a1 + 1);
  v2 = ((*(a1 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v3 = *a1;
  v4 = v2 - *a1;
  v9 = v1 >= v4;
  v5 = v1 - v4;
  if (v9 && v5 > 7)
  {
    *(a1 + 2) = v2 + 1;
    if (v2)
    {
      v7 = *v2;
      v8 = *v2 - 1;
      if (v3)
      {
        v9 = v8 >= 0xFFFFFFFFFFFFFFFELL;
      }

      else
      {
        v9 = 1;
      }

      if (!v9)
      {
        v10 = v7 & 0xFFFFFFFFFFFFFF00;
        v11 = v7;
        return v10 | v11;
      }

      v11 = 0;
LABEL_14:
      v10 = 0;
      return v10 | v11;
    }
  }

  else
  {
    v14 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v14;
  }

  v13 = a1;
  result = IPC::Decoder::markInvalid(a1);
  v11 = *v13;
  if (!*v13)
  {
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t IPC::ArgumentCoder<std::optional<unsigned int>,void>::decode<IPC::Decoder>(IPC::Decoder *a1)
{
  v2 = *(a1 + 1);
  v1 = *(a1 + 2);
  v3 = *a1;
  if (v2 <= v1 - *a1)
  {
    v15 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v15;
    goto LABEL_16;
  }

  *(a1 + 2) = v1 + 1;
  if (!v1)
  {
LABEL_16:
    v16 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v16;
    goto LABEL_17;
  }

  if (*v1 >= 2u)
  {
LABEL_17:
    IPC::Decoder::markInvalid(a1);
    v12 = 0;
    v11 = 0;
    v10 = 0;
    return v12 | v10 | v11;
  }

  if (*v1)
  {
    v4 = v1 & 0xFFFFFFFFFFFFFFFCLL;
    v5 = ((v1 & 0xFFFFFFFFFFFFFFFCLL) + 4);
    v6 = v5 - v3;
    v7 = v2 >= v6;
    v8 = v2 - v6;
    if (!v7 || v8 <= 3)
    {
      v14 = a1;
      IPC::Decoder::markInvalid(a1);
      a1 = v14;
LABEL_14:
      IPC::Decoder::markInvalid(a1);
      v11 = 0;
      v10 = 0;
      v12 = 0x100000000;
      return v12 | v10 | v11;
    }

    *(a1 + 2) = v4 + 8;
    if (!v5)
    {
      goto LABEL_14;
    }

    v11 = *v5;
    v10 = *v5 & 0xFFFFFF00;
    v11 = v11;
    v12 = 0x100000000;
  }

  else
  {
    v12 = 0;
    v11 = 0;
    v10 = 0;
  }

  return v12 | v10 | v11;
}

uint64_t IPC::Decoder::decode<std::optional<unsigned int>>(IPC::Decoder *a1)
{
  v2 = IPC::ArgumentCoder<std::optional<unsigned int>,void>::decode<IPC::Decoder>(a1);
  if ((v3 & 1) == 0)
  {
    IPC::Decoder::markInvalid(a1);
  }

  return v2;
}

uint64_t IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,unsigned int,std::optional<unsigned int>>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,unsigned int>(uint64_t a1, IPC::Decoder *a2, uint64_t a3, uint64_t a4)
{
  result = IPC::Decoder::decode<std::optional<unsigned int>>(a2);
  if ((v8 & 1) == 0)
  {
    v9 = 0;
    *a1 = 0;
    goto LABEL_5;
  }

  if (*(a3 + 8) & 1) != 0 && (*(a4 + 4))
  {
    *a1 = *a3;
    *(a1 + 8) = *a4;
    *(a1 + 12) = result;
    v9 = 1;
LABEL_5:
    *(a1 + 24) = v9;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t WTF::Detail::CallableWrapper<IPC::FunctionDispatcherQueue::enqueueMessage(IPC::Connection &,WTF::UniqueRef<IPC::Decoder> &&)::{lambda(void)#1},void>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F1147340;
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::unique_ptr<IPC::Decoder>::reset[abi:sn200100]((a1 + 16), 0);
  v4 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v4);
  }

  return WTF::fastFree(a1, v3);
}

void sub_19D5DE330(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::ExtensionProcess::createVisibilityPropagationInteraction(WebKit::ExtensionProcess *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  v3 = *(this + 8);
  if (v3 == 255)
  {
    v4 = -1;
  }

  else
  {
    v4 = *(this + 8);
  }

  if (v4 == 2)
  {
    if (v3 != 2)
    {
      goto LABEL_23;
    }

    v5 = *this;
    v12 = v5;
    if (v5)
    {
      v6 = v5;
      v5 = v12;
    }

    v7 = [v5 createVisibilityPropagationInteraction];
    v8 = v7;
    if (!v7)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (v4 != 1)
  {
    if (*(this + 8))
    {
      goto LABEL_23;
    }

    v9 = *this;
    v12 = v9;
    if (v9)
    {
      v10 = v9;
      v9 = v12;
    }

    v7 = [v9 createVisibilityPropagationInteraction];
    v8 = v7;
    if (!v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = v7;
LABEL_18:
    *a2 = v8;
    if (v12)
    {
    }

    return;
  }

  if (v3 != 1)
  {
LABEL_23:
    mpark::throw_bad_variant_access(this);
  }
}

unsigned int *WTF::VectorMover<false,std::pair<WTF::WeakPtr<WebKit::AuxiliaryProcessProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::RetainPtr<objc_object  {objcproto13UIInteraction}*>>>::move(unsigned int *result, unsigned int *a2, unsigned int **a3)
{
  if (result != a2)
  {
    v5 = result;
    do
    {
      v6 = *v5;
      *v5 = 0;
      *a3 = v6;
      v7 = *(v5 + 1);
      *(v5 + 1) = 0;
      a3[1] = v7;
      v8 = *(v5 + 1);
      *(v5 + 1) = 0;
      if (v8)
      {
      }

      result = *v5;
      *v5 = 0;
      if (result)
      {
        if (atomic_fetch_add(result, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, result);
          result = WTF::fastFree(result, a2);
        }
      }

      a3 += 2;
      v5 += 4;
    }

    while (v5 != a2);
  }

  return result;
}

void sub_19D5DEC30(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::WebPageProxy::setDeviceOrientation(WebKit::WebPageProxy *this, int a2)
{
  v9 = a2;
  v4 = *(this + 173);
  if (v4)
  {
    if (a2 == 90)
    {
      v5 = 2;
    }

    else
    {
      v5 = a2 == 180;
    }

    if (a2 == -90)
    {
      v6 = 3;
    }

    else
    {
      v6 = v5;
    }

    WebKit::WebScreenOrientationManagerProxy::setCurrentOrientation(v4, v6);
  }

  if (*(this + 135) != a2)
  {
    *(this + 135) = a2;
    if ((*(this + 865) & 1) == 0 && *(this + 864) == 1)
    {
      v7 = *(this + 44);
      v8 = &v9;
      WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::SetDeviceOrientation>(v7, &v8, *(this + 6), 0);
    }
  }
}

void WebKit::WebScreenOrientationManagerProxy::setCurrentOrientation(uint64_t a1, int a2)
{
  if (*(a1 + 32) != a2)
  {
    v2 = a2;
    *(a1 + 32) = a2;
    if (*(a1 + 48) == 1)
    {
      v4 = *(*(a1 + 24) + 8);
      if (!v4 || (CFRetain(*(v4 - 8)), v5 = *(v4 + 336), atomic_fetch_add((v5 + 16), 1u), v10[0] = v2, (v6 = *(*(a1 + 24) + 8)) == 0))
      {
        __break(0xC471u);
        JUMPOUT(0x19D5DEF98);
      }

      WebKit::AuxiliaryProcessProxy::send<Messages::WebScreenOrientationManager::OrientationDidChange>(v5, v10, *(v6 + 32), 0);
      if (v5)
      {
        WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v5 + 16));
      }

      CFRelease(*(v4 - 8));
      v7 = *(a1 + 40);
      if (v7)
      {
        v10[0] = 0;
        v12 = 0;
        *(a1 + 40) = 0;
        (*(*v7 + 16))(v7, v10);
        (*(*v7 + 8))(v7);
        if (v12 == 1)
        {
          v9 = v11;
          v11 = 0;
          if (v9)
          {
            if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v9, v8);
            }
          }
        }
      }
    }
  }
}

atomic_uint *WebKit::WebPageProxy::setOrientationForMediaCapture(atomic_uint *this, int a2)
{
  this[284] = a2;
  if ((*(this + 865) & 1) == 0)
  {
    v2 = this;
    if (*(this + 864) == 1)
    {
      this = API::PageConfiguration::Data::LazyInitializedRef<WebKit::WebProcessPool,&API::PageConfiguration::Data::createWebProcessPool>::get((*(this + 8) + 16));
      v4 = *(this + 22);
      if (v4)
      {
        atomic_fetch_add((v4 + 16), 1u);
        v5 = *(v2 + 46);
        CFRetain(*(v5 + 8));
        {
          atomic_fetch_add_explicit(WebKit::WebPreferencesKey::captureVideoInGPUProcessEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
          WebKit::WebPreferencesKey::captureVideoInGPUProcessEnabledKey(void)::key = WebKit::WebPreferencesKey::captureVideoInGPUProcessEnabledKey(void)::$_0::operator() const(void)::impl;
        }

        BoolValueForKey = WebKit::WebPreferencesStore::getBoolValueForKey((v5 + 40), &WebKit::WebPreferencesKey::captureVideoInGPUProcessEnabledKey(void)::key, v6);
        CFRelease(*(v5 + 8));
        if (BoolValueForKey)
        {
          WebKit::GPUProcessProxy::setOrientationForMediaCapture(v4, a2);
        }

        return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v4 + 16));
      }
    }
  }

  return this;
}

atomic_uint *WebKit::WebPageProxy::forEachWebContentProcess(void *a1, void *a2)
{
  v4 = a1[185];
  ++*(v4 + 8);
  v5 = WTF::fastMalloc(0x10);
  *v5 = &unk_1F1118638;
  v5[1] = a2;
  v10 = v5;
  WebKit::BrowsingContextGroup::forEachRemotePage(v4, a1, &v10);
  v7 = v10;
  v10 = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  WTF::RefCounted<WebKit::BrowsingContextGroup>::deref((v4 + 8), v6);
  v8 = a1[44];
  atomic_fetch_add((v8 + 16), 1u);
  result = (*(**a2 + 16))(*a2, v8, a1[6]);
  if (v8)
  {
    return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v8 + 16));
  }

  return result;
}

uint64_t WebKit::GPUProcessProxy::setOrientationForMediaCapture(uint64_t this, int a2)
{
  v3 = a2;
  if (*(this + 428) != a2)
  {
    *(this + 428) = a2;
    v2 = &v3;
    return WebKit::AuxiliaryProcessProxy::send<Messages::GPUProcess::SetOrientationForMediaCapture>(this, &v2, 0, 0);
  }

  return this;
}

uint64_t scrollViewBackgroundColor(void *a1, void *a2, char a3)
{
  v11 = a2;
  v10 = a3;
  result = [a2 isOpaque];
  if (result)
  {
    *a1 = 0;
    v6 = [a2 traitCollection];
    v8 = WebCore::traitCollectionWithAdjustedIdiomForSystemColors(v6, v7);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3321888768;
    v9[2] = ___ZL25scrollViewBackgroundColorP9WKWebView32AllowPageBackgroundColorOverride_block_invoke;
    v9[3] = &__block_descriptor_56_e8_32c84_ZTSKZL25scrollViewBackgroundColorP9WKWebView32AllowPageBackgroundColorOverrideE3__0_e5_v8__0l;
    v9[4] = a1;
    v9[5] = &v11;
    v9[6] = &v10;
    return [v8 performAsCurrentTraitCollection:v9];
  }

  else
  {
    *a1 = 0x1104000000000000;
  }

  return result;
}

void sub_19D5DF2CC(_Unwind_Exception *exception_object, void *a2)
{
  v4 = *v2;
  if ((*v2 & 0x8000000000000) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v4 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v5);
      WTF::fastFree(v5, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_19D5DF4A0(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  if (a13)
  {
  }

  if ((a10 & 0x8000000000000) != 0)
  {
    v14 = (a10 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((a10 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v14);
      WTF::fastFree(v14, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::WebPageProxy::platformUnderPageBackgroundColor@<X0>(uint64_t this@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(this + 56);
  if (v3 && (v4 = *(v3 + 8)) != 0)
  {
    (*(*v4 + 1712))(v4);
    (*(*v4 + 1256))(v4);
    v6 = *a2;
    if ((*a2 & 0x4000000000000) == 0)
    {
      if ((v6 & 0x8000000000000) != 0)
      {
        v8 = (v6 & 0xFFFFFFFFFFFFLL);
        if (atomic_fetch_add((v6 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v8);
          WTF::fastFree(v8, v5);
        }
      }

      *a2 = 0x11040000FFFFFFFFLL;
    }

    v7 = *(*v4 + 1720);

    return v7(v4);
  }

  else
  {
    *a2 = 0x11040000FFFFFFFFLL;
  }

  return this;
}

uint64_t ___ZL25scrollViewBackgroundColorP9WKWebView32AllowPageBackgroundColorOverride_block_invoke(uint64_t a1, void *a2)
{
  v3 = **(a1 + 40);
  result = v3[209];
  if (result)
  {
    v5 = [objc_msgSend(result "backgroundColor")];
    result = WebCore::roundAndClampToSRGBALossy(v5, v6);
    v34 = (bswap32(result) | 0x1104000000000000) & (result << 31 >> 63);
    goto LABEL_3;
  }

  v23 = **(a1 + 48);
  v24 = v3[83];
  if (v24)
  {
    v25 = *(v24 + 112);
    v34 = v25;
    if ((v25 & 0x8000000000000) != 0)
    {
      atomic_fetch_add((v25 & 0xFFFFFFFFFFFFLL), 1u);
      v25 = v34;
      if ((v34 & 0x4000000000000) != 0)
      {
        goto LABEL_3;
      }
    }

    else if ((v25 & 0x4000000000000) != 0)
    {
      goto LABEL_3;
    }

    if ((v25 & 0x8000000000000) != 0)
    {
      v27 = (v25 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((v25 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v27);
        v30 = v3;
        v28 = v23;
        WTF::fastFree(v27, a2);
        v23 = v28;
        v3 = v30;
      }
    }
  }

  result = v3[52];
  if (result)
  {
    if (v23)
    {
      result = WebKit::WebPageProxy::underPageBackgroundColor(result, &v34);
    }

    else
    {
      v26 = *(*(result + 32) + 1088);
      v34 = v26;
      if ((v26 & 0x8000000000000) != 0)
      {
        atomic_fetch_add((v26 & 0xFFFFFFFFFFFFLL), 1u);
      }
    }
  }

  else
  {
    v34 = 0;
  }

LABEL_3:
  v7 = *(a1 + 32);
  if (v7 != &v34)
  {
    v8 = *v7;
    if ((*v7 & 0x8000000000000) != 0)
    {
      result = v8 & 0xFFFFFFFFFFFFLL;
      if (atomic_fetch_add((v8 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, result);
        v31 = v7;
        result = WTF::fastFree(result, a2);
        v7 = v31;
      }
    }

    v9 = v34;
    v34 = 0;
    *v7 = v9;
  }

  if ((v34 & 0x8000000000000) != 0)
  {
    result = v34 & 0xFFFFFFFFFFFFLL;
    if (atomic_fetch_add((v34 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result);
      result = WTF::fastFree(result, a2);
    }
  }

  v10 = **(a1 + 32);
  if ((v10 & 0x4000000000000) == 0)
  {
    result = *(**(a1 + 40) + 656);
    if (result)
    {
      v11 = [objc_msgSend(result "backgroundColor")];
      result = WebCore::roundAndClampToSRGBALossy(v11, v12);
      v14 = (bswap32(result) | 0x1104000000000000) & (result << 31 >> 63);
      v15 = *(a1 + 32);
      v16 = *v15;
      if ((*v15 & 0x8000000000000) != 0)
      {
        result = v16 & 0xFFFFFFFFFFFFLL;
        if (atomic_fetch_add((v16 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, result);
          v29 = v15;
          v33 = v14;
          result = WTF::fastFree(result, v13);
          v15 = v29;
          v14 = v33;
        }
      }

      *v15 = v14;
      v10 = **(a1 + 32);
    }
  }

  if ((v10 & 0x4000000000000) == 0)
  {
    v17 = [objc_msgSend(MEMORY[0x1E69DC888] "systemBackgroundColor")];
    result = WebCore::roundAndClampToSRGBALossy(v17, v18);
    v20 = (bswap32(result) | 0x1104000000000000) & (result << 31 >> 63);
    v21 = *(a1 + 32);
    v22 = *v21;
    if ((*v21 & 0x8000000000000) != 0)
    {
      result = v22 & 0xFFFFFFFFFFFFLL;
      if (atomic_fetch_add((v22 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, result);
        v32 = v20;
        result = WTF::fastFree(result, v19);
        v20 = v32;
      }
    }

    *v21 = v20;
  }

  return result;
}

uint64_t WebKit::WebPageProxy::underPageBackgroundColor@<X0>(WebKit::WebPageProxy *this@<X0>, uint64_t *a2@<X8>)
{
  result = WebKit::WebPageProxy::underPageBackgroundColorIgnoringPlatformColor(this, a2);
  v6 = *a2;
  if ((*a2 & 0x4000000000000) == 0)
  {
    if ((v6 & 0x8000000000000) != 0)
    {
      v7 = (v6 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((v6 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v7);
        WTF::fastFree(v7, v5);
      }
    }

    return WebKit::WebPageProxy::platformUnderPageBackgroundColor(this, a2);
  }

  return result;
}

void WebKit::PageClientImpl::contentViewBackgroundColor(id *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  WeakRetained = objc_loadWeakRetained(this + 2);
  v5 = [WeakRetained traitCollection];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3321888768;
  v6[2] = ___ZN6WebKit14PageClientImpl26contentViewBackgroundColorEv_block_invoke;
  v6[3] = &__block_descriptor_48_e8_32c65_ZTSKZN6WebKit14PageClientImpl26contentViewBackgroundColorEvE3__0_e5_v8__0l;
  v6[4] = a2;
  v6[5] = this;
  [v5 performAsCurrentTraitCollection:v6];
  if (WeakRetained)
  {
  }
}

void sub_19D5DF9E0(_Unwind_Exception *exception_object, void *a2)
{
  if (v3)
  {
  }

  v5 = *v2;
  if ((*v2 & 0x8000000000000) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v5 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v6);
      WTF::fastFree(v6, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void ___ZN6WebKit14PageClientImpl26contentViewBackgroundColorEv_block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 56));
  v3 = [objc_msgSend(WeakRetained "backgroundColor")];
  v5 = WebCore::roundAndClampToSRGBALossy(v3, v4);
  v7 = (bswap32(v5) | 0x1104000000000000) & (v5 << 31 >> 63);
  v8 = *(a1 + 32);
  v9 = *v8;
  if ((*v8 & 0x8000000000000) != 0)
  {
    v17 = (v9 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v9 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v17);
      v19 = v8;
      v20 = v7;
      WTF::fastFree(v17, v6);
      v8 = v19;
      v7 = v20;
    }
  }

  *v8 = v7;
  if (WeakRetained)
  {
  }

  if ((*(*(a1 + 32) + 6) & 4) == 0)
  {
    v10 = [objc_msgSend(MEMORY[0x1E69DC888] "systemBackgroundColor")];
    v12 = WebCore::roundAndClampToSRGBALossy(v10, v11);
    v14 = (bswap32(v12) | 0x1104000000000000) & (v12 << 31 >> 63);
    v15 = *(a1 + 32);
    v16 = *v15;
    if ((*v15 & 0x8000000000000) != 0)
    {
      v18 = (v16 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((v16 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v18);
        WTF::fastFree(v18, v13);
      }
    }

    *v15 = v14;
  }
}

void sub_19D5DFB24(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19D5DFC58(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if ((a10 & 0x8000000000000) != 0)
  {
    v11 = (a10 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((a10 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v11);
      WTF::fastFree(v11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::WebPageProxy::setViewportConfigurationViewLayoutSize(uint64_t this, const WebCore::FloatSize *a2, double a3, double a4)
{
  v7 = this;
  *(*(this + 32) + 2452) = *a2;
  *(this + 1144) = a3;
  *(this + 1152) = a4;
  v8 = *(this + 1256);
  if (v8)
  {
    v10 = a2;
    v11 = a3;
    v12 = a4;
    this = IPC::MessageSender::send<Messages::WebPage::SetViewportConfigurationViewLayoutSize>(v8 + 16, &v10);
  }

  if ((*(v7 + 865) & 1) == 0 && *(v7 + 864) == 1)
  {
    v9 = *(v7 + 352);
    v10 = a2;
    v11 = a3;
    v12 = a4;
    return WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::SetViewportConfigurationViewLayoutSize>(v9, &v10, *(v7 + 48), 0);
  }

  return this;
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::SetViewportConfigurationViewLayoutSize>(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 2791;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  Messages::WebPage::SetViewportConfigurationViewLayoutSize::encode<IPC::Encoder>(a2, v8);
  LOBYTE(v16) = 0;
  v17 = 0;
  v10 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v18, a4, &v16, 1);
  if (v17 == 1)
  {
    v11 = v16;
    v16 = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }
  }

  v12 = v18;
  v18 = 0;
  if (v12)
  {
    IPC::Encoder::~Encoder(v12, v9);
    bmalloc::api::tzoneFree(v14, v15);
  }

  return v10;
}

void sub_19D5E03A4(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
{
  if (a11 == 1 && a9)
  {
    (*(*a9 + 8))(a9);
  }

  if (a12)
  {
    IPC::Encoder::~Encoder(a12, a2);
    bmalloc::api::tzoneFree(v13, v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebCore::FloatPoint,void>::encode(IPC::Encoder *a1, float *a2)
{
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *a2);
  v4 = a2[1];

  return IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, v4);
}

uint64_t Messages::WebPage::SetViewportConfigurationViewLayoutSize::encode<IPC::Encoder>(uint64_t a1, IPC::Encoder *a2)
{
  IPC::ArgumentCoder<WebCore::FloatPoint,void>::encode(a2, *a1);
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a2, *(a1 + 8));
  v4 = *(a1 + 16);

  return IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a2, v4);
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::SetDefaultUnobscuredSize>(uint64_t a1, float **a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 2730;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  IPC::ArgumentCoder<WebCore::FloatPoint,void>::encode(v8, *a2);
  LOBYTE(v16) = 0;
  v17 = 0;
  v10 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v18, a4, &v16, 1);
  if (v17 == 1)
  {
    v11 = v16;
    v16 = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }
  }

  v12 = v18;
  v18 = 0;
  if (v12)
  {
    IPC::Encoder::~Encoder(v12, v9);
    bmalloc::api::tzoneFree(v14, v15);
  }

  return v10;
}

atomic_uint *WebKit::WebPageProxy::send<Messages::WebPage::SetDefaultUnobscuredSize>(uint64_t a1, float **a2)
{
  v2 = *(a1 + 352);
  atomic_fetch_add((v2 + 16), 1u);
  result = WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::SetDefaultUnobscuredSize>(v2, a2, *(a1 + 48), 0);
  if (v2)
  {

    return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v2 + 16));
  }

  return result;
}

atomic_uint *WebKit::WebPageProxy::setDefaultUnobscuredSize(atomic_uint *this, const WebCore::FloatSize *a2)
{
  v4 = *(this + 4);
  if (*a2 != *(v4 + 264) || *(a2 + 1) != *(v4 + 268))
  {
    *(v4 + 264) = *a2;
    if ((*(this + 865) & 1) == 0 && *(this + 864) == 1)
    {
      v6[1] = v2;
      v6[2] = v3;
      v6[0] = (*(this + 4) + 264);
      return WebKit::WebPageProxy::send<Messages::WebPage::SetDefaultUnobscuredSize>(this, v6);
    }
  }

  return this;
}

void sub_19D5E0930(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19D5E0BC4(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if ((a12 & 0x8000000000000) != 0)
  {
    v13 = (a12 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((a12 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v13);
      WTF::fastFree(v13, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_19D5E0EC0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::SetMinimumUnobscuredSize>(uint64_t a1, float **a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 2757;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  IPC::ArgumentCoder<WebCore::FloatPoint,void>::encode(v8, *a2);
  LOBYTE(v16) = 0;
  v17 = 0;
  v10 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v18, a4, &v16, 1);
  if (v17 == 1)
  {
    v11 = v16;
    v16 = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }
  }

  v12 = v18;
  v18 = 0;
  if (v12)
  {
    IPC::Encoder::~Encoder(v12, v9);
    bmalloc::api::tzoneFree(v14, v15);
  }

  return v10;
}

atomic_uint *WebKit::WebPageProxy::send<Messages::WebPage::SetMinimumUnobscuredSize>(uint64_t a1, float **a2)
{
  v2 = *(a1 + 352);
  atomic_fetch_add((v2 + 16), 1u);
  result = WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::SetMinimumUnobscuredSize>(v2, a2, *(a1 + 48), 0);
  if (v2)
  {

    return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v2 + 16));
  }

  return result;
}

atomic_uint *WebKit::WebPageProxy::setMinimumUnobscuredSize(atomic_uint *this, const WebCore::FloatSize *a2)
{
  v4 = *(this + 4);
  if (*a2 != *(v4 + 992) || *(a2 + 1) != *(v4 + 996))
  {
    *(v4 + 992) = *a2;
    if ((*(this + 865) & 1) == 0 && *(this + 864) == 1)
    {
      v6[1] = v2;
      v6[2] = v3;
      v6[0] = (*(this + 4) + 992);
      return WebKit::WebPageProxy::send<Messages::WebPage::SetMinimumUnobscuredSize>(this, v6);
    }
  }

  return this;
}

atomic_uint *WebKit::WebPageProxy::send<Messages::WebPage::SetMaximumUnobscuredSize>(uint64_t a1, float **a2)
{
  v2 = *(a1 + 352);
  atomic_fetch_add((v2 + 16), 1u);
  result = WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::SetMaximumUnobscuredSize>(v2, a2, *(a1 + 48), 0);
  if (v2)
  {

    return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v2 + 16));
  }

  return result;
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::SetMaximumUnobscuredSize>(uint64_t a1, float **a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 2752;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  IPC::ArgumentCoder<WebCore::FloatPoint,void>::encode(v8, *a2);
  LOBYTE(v16) = 0;
  v17 = 0;
  v10 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v18, a4, &v16, 1);
  if (v17 == 1)
  {
    v11 = v16;
    v16 = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }
  }

  v12 = v18;
  v18 = 0;
  if (v12)
  {
    IPC::Encoder::~Encoder(v12, v9);
    bmalloc::api::tzoneFree(v14, v15);
  }

  return v10;
}

atomic_uint *WebKit::WebPageProxy::setMaximumUnobscuredSize(atomic_uint *this, const WebCore::FloatSize *a2)
{
  v4 = *(this + 4);
  if (*a2 != *(v4 + 908) || *(a2 + 1) != *(v4 + 912))
  {
    *(v4 + 908) = *a2;
    if ((*(this + 865) & 1) == 0 && *(this + 864) == 1)
    {
      v6[1] = v2;
      v6[2] = v3;
      v6[0] = (*(this + 4) + 908);
      return WebKit::WebPageProxy::send<Messages::WebPage::SetMaximumUnobscuredSize>(this, v6);
    }
  }

  return this;
}

uint64_t contentOffsetBoundedInValidRange(UIScrollView *a1, CGPoint a2)
{
  [(UIScrollView *)a1 adjustedContentInset];
  [(UIScrollView *)a1 contentSize];
  return [(UIScrollView *)a1 bounds];
}

atomic_uint *WebKit::WebPageProxy::send<Messages::WebPage::SetShouldSuppressHDR>(uint64_t a1, void *a2)
{
  v2 = *(a1 + 352);
  atomic_fetch_add((v2 + 16), 1u);
  result = WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::SetShouldSuppressHDR>(v2, a2, *(a1 + 48), 0);
  if (v2)
  {

    return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v2 + 16));
  }

  return result;
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::SetShouldSuppressHDR>(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  if (*(a1 + 114) != 1)
  {
    v8 = IPC::Encoder::operator new(0x238, a2);
    *v8 = 2778;
    *(v8 + 2) = 0;
    *(v8 + 3) = 0;
    *(v8 + 1) = a3;
    *(v8 + 68) = 0;
    *(v8 + 70) = 0;
    *(v8 + 69) = 0;
    IPC::Encoder::encodeHeader(v8);
    v28 = v8;
    IPC::Encoder::operator<<<BOOL &>(v8, a2);
    LOBYTE(v25) = 0;
    v26 = 0;
    v10 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v28, a4, &v25, 1);
    if (v26 == 1)
    {
      v11 = v25;
      v25 = 0;
      if (v11)
      {
        (*(*v11 + 8))(v11);
      }
    }

    v12 = v28;
    v28 = 0;
    if (!v12)
    {
      return v10;
    }

    goto LABEL_19;
  }

  v14 = IPC::Encoder::operator new(0x238, a2);
  *v14 = 2778;
  v14[2] = 0;
  v14[3] = 0;
  v14[1] = a3;
  v14[68] = 0;
  v14[70] = 0;
  v14[69] = 0;
  result = IPC::Encoder::encodeHeader(v14);
  v16 = v14[2];
  if (v16)
  {
    v17 = v14[3];
  }

  else
  {
    v16 = v14 + 4;
    v17 = 512;
  }

  v18 = v14[68];
  if (v17 < v18)
  {
    __break(1u);
  }

  else
  {
    v28 = 0;
    v29 = 0;
    v30 = v18;
    if (!v18)
    {
LABEL_14:
      v19 = IPC::Encoder::operator new(0x238, v15);
      *v19 = 2778;
      *(v19 + 2) = 0;
      *(v19 + 3) = 0;
      *(v19 + 1) = a3;
      *(v19 + 68) = 0;
      *(v19 + 70) = 0;
      *(v19 + 69) = 0;
      IPC::Encoder::encodeHeader(v19);
      v27 = v19;
      IPC::Encoder::operator<<<BOOL &>(v19, a2);
      v10 = WebKit::AuxiliaryProcessProxy::sendMessageAfterResuming(a1, &v28, &v27);
      if (v27)
      {
        IPC::Encoder::~Encoder(v27, v9);
        bmalloc::api::tzoneFree(v23, v24);
      }

      v20 = v28;
      if (v28)
      {
        v28 = 0;
        v29 = 0;
        WTF::fastFree(v20, v9);
      }

      v12 = v14;
LABEL_19:
      IPC::Encoder::~Encoder(v12, v9);
      bmalloc::api::tzoneFree(v21, v22);
      return v10;
    }

    if (!HIDWORD(v18))
    {
      v29 = v18;
      v28 = WTF::fastMalloc(v18);
      memcpy(v28, v16, v18);
      goto LABEL_14;
    }
  }

  __break(0xC471u);
  return result;
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::ContentSizeCategoryDidChange>(uint64_t a1, uint64_t **a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 2475;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v8, *a2);
  LOBYTE(v16) = 0;
  v17 = 0;
  v10 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v18, a4, &v16, 1);
  if (v17 == 1)
  {
    v11 = v16;
    v16 = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }
  }

  v12 = v18;
  v18 = 0;
  if (v12)
  {
    IPC::Encoder::~Encoder(v12, v9);
    bmalloc::api::tzoneFree(v14, v15);
  }

  return v10;
}

void sub_19D5E1FA0(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
{
  if (a11 == 1 && a9)
  {
    (*(*a9 + 8))(a9);
  }

  if (a12)
  {
    IPC::Encoder::~Encoder(a12, a2);
    bmalloc::api::tzoneFree(v13, v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::SetForceAlwaysUserScalable>(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 2738;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  IPC::Encoder::operator<<<BOOL &>(v8, a2);
  LOBYTE(v16) = 0;
  v17 = 0;
  v10 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v18, a4, &v16, 1);
  if (v17 == 1)
  {
    v11 = v16;
    v16 = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }
  }

  v12 = v18;
  v18 = 0;
  if (v12)
  {
    IPC::Encoder::~Encoder(v12, v9);
    bmalloc::api::tzoneFree(v14, v15);
  }

  return v10;
}

void sub_19D5E2104(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
{
  if (a11 == 1 && a9)
  {
    (*(*a9 + 8))(a9);
  }

  if (a12)
  {
    IPC::Encoder::~Encoder(a12, a2);
    bmalloc::api::tzoneFree(v13, v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::WebPageProxy::setForceAlwaysUserScalable(uint64_t this, int a2)
{
  if (*(this + 1141) != a2)
  {
    *(this + 1141) = a2;
    if ((*(this + 865) & 1) == 0 && *(this + 864) == 1)
    {
      v6 = v2;
      v7 = v3;
      v4 = *(this + 352);
      v5 = a2;
      return WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::SetForceAlwaysUserScalable>(v4, &v5, *(this + 48), 0);
    }
  }

  return this;
}

void sub_19D5E2268(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
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

uint64_t WebKit::WebPageProxy::setApplicationNameForUserAgent(WTF **this, const WTF::StringImpl **a2, const WTF::StringImpl *a3)
{
  result = WTF::equal(this[56], *a2, a3);
  if ((result & 1) == 0)
  {
    result = WTF::String::operator=(this + 56, a2);
    v6 = this[58];
    if (!v6 || !*(v6 + 1))
    {
      WebCore::standardUserAgentWithApplicationName();
      WebKit::WebPageProxy::setUserAgent(this, &v8, 0);
      result = v8;
      v8 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v7);
        }
      }
    }
  }

  return result;
}

uint64_t WebKit::WebProcessPool::updateRemoteWorkerUserAgent(WTF **this, const WTF::StringImpl **a2, const WTF::StringImpl *a3)
{
  v4 = (this + 21);
  result = WTF::equal(this[21], *a2, a3);
  if ((result & 1) == 0)
  {
    WTF::String::operator=(v4, a2);
    {
      WebKit::WebProcessPool::remoteWorkerProcesses(void)::processes = 0;
      *algn_1ED643608 = 0;
    }

    WTF::WeakHashSet<WebKit::ApplicationStateTracker,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::begin(&WebKit::WebProcessPool::remoteWorkerProcesses(void)::processes, &v15);
    if (WebKit::WebProcessPool::remoteWorkerProcesses(void)::processes)
    {
      v6 = *(WebKit::WebProcessPool::remoteWorkerProcesses(void)::processes - 4);
      v7 = WebKit::WebProcessPool::remoteWorkerProcesses(void)::processes + 8 * v6;
    }

    else
    {
      v7 = 0;
      v6 = 0;
    }

    v10 = &WebKit::WebProcessPool::remoteWorkerProcesses(void)::processes;
    v11 = v7;
    v12 = v7;
    v13 = v7;
    v14 = WebKit::WebProcessPool::remoteWorkerProcesses(void)::processes + 8 * v6;
    result = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v10);
    for (i = v16; v16 != v11; i = v16)
    {
      v9 = *(*i + 8);
      atomic_fetch_add((v9 + 16), 1u);
      WebKit::WebProcessProxy::setRemoteWorkerUserAgent(v9, v4);
      if (v9)
      {
        WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v9 + 16));
      }

      result = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::operator++(&v15);
    }
  }

  return result;
}

void WebKit::WebPageProxy::setUserAgent(uint64_t a1, const WTF::StringImpl **a2, const WTF::StringImpl *a3)
{
  v12 = a3;
  if ((WTF::equal(*(a1 + 440), *a2, a3) & 1) == 0)
  {
    v6 = *a2;
    *a2 = 0;
    v7 = *(a1 + 440);
    *(a1 + 440) = v6;
    if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v5);
    }

    v8 = API::PageConfiguration::Data::LazyInitializedRef<WebKit::WebProcessPool,&API::PageConfiguration::Data::createWebProcessPool>::get((*(a1 + 64) + 16));
    CFRetain(*(v8 + 8));
    WebKit::WebProcessPool::updateRemoteWorkerUserAgent(v8, (a1 + 440), v9);
    CFRelease(*(v8 + 8));
    if ((*(a1 + 865) & 1) == 0 && *(a1 + 864) == 1)
    {
      v10 = WTF::fastMalloc(0x18);
      *v10 = &unk_1F1117EB8;
      v10[1] = a1;
      v10[2] = &v12;
      v11 = v10;
      WebKit::WebPageProxy::forEachWebContentProcess(a1, &v11);
      if (v11)
      {
        (*(*v11 + 8))(v11);
      }
    }
  }
}

IPC::Encoder *WTF::Detail::CallableWrapper<WebKit::WebPageProxy::setUserAgent(WTF::String &&,WebKit::WebPageProxy::IsCustomUserAgent)::$_0,void,WebKit::WebProcessProxy &,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>::call(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  v7 = IPC::Encoder::operator new(0x238, a2);
  *v7 = 2789;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = a3;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  IPC::Encoder::encodeHeader(v7);
  v22 = v7;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v7, (v6 + 440));
  LOBYTE(v20[0]) = 0;
  v21 = 0;
  WebKit::AuxiliaryProcessProxy::sendMessage(a2, &v22, 0, v20, 1);
  if (v21 == 1)
  {
    v9 = v20[0];
    v20[0] = 0;
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }
  }

  v10 = v22;
  v22 = 0;
  if (v10)
  {
    IPC::Encoder::~Encoder(v10, v8);
    bmalloc::api::tzoneFree(v15, v16);
  }

  v19 = **(a1 + 16);
  v11 = IPC::Encoder::operator new(0x238, v8);
  *v11 = 2740;
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *(v11 + 1) = a3;
  *(v11 + 68) = 0;
  *(v11 + 70) = 0;
  *(v11 + 69) = 0;
  IPC::Encoder::encodeHeader(v11);
  v22 = v11;
  IPC::Encoder::operator<<<BOOL &>(v11, &v19);
  LOBYTE(v20[0]) = 0;
  v21 = 0;
  WebKit::AuxiliaryProcessProxy::sendMessage(a2, &v22, 0, v20, 1);
  if (v21 == 1)
  {
    v13 = v20[0];
    v20[0] = 0;
    if (v13)
    {
      (*(*v13 + 8))(v13);
    }
  }

  result = v22;
  v22 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v12);
    return bmalloc::api::tzoneFree(v17, v18);
  }

  return result;
}

void sub_19D5E2770(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

WebKit::NavigationState *WebKit::NavigationState::NavigationState(WebKit::NavigationState *this, WKWebView *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_1F10FFAD8;
  *(this + 2) = 0;
  inited = objc_initWeak(this + 2, a2);
  *(this + 3) = 0;
  *(this + 6) = 0;
  *(this + 56) = 0;
  *(this + 8) = 0;
  *(this + 4) = 0;
  *(this + 40) = 0;
  v6 = WTF::RunLoop::currentSingleton(inited);
  v7 = v6;
  while (1)
  {
    v8 = *(v6 + 8);
    if ((v8 & 1) == 0)
    {
      break;
    }

    v9 = *(v6 + 8);
    atomic_compare_exchange_strong_explicit((v6 + 8), &v9, v8 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v9 == v8)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v6 + 8));
LABEL_6:
  v38[0] = v7;
  v10 = WTF::fastMalloc(0x20);
  *v10 = &unk_1F1100B30;
  v10[1] = this;
  v10[2] = WebKit::NavigationState::releaseNetworkActivityAfterLoadCompletion;
  v10[3] = 0;
  v11 = WTF::RunLoop::TimerBase::TimerBase();
  *(this + 9) = &unk_1F10E6DC8;
  *(this + 14) = v10;
  v13 = v38[0];
  v38[0] = 0;
  if (v13)
  {
    v11 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v13 + 8));
  }

  m_ptr = a2->_page.m_ptr;
  if (m_ptr)
  {
    v11 = CFRetain(*(m_ptr + 1));
  }

  {
    v15 = dword_1ED6433F8++;
    if (v15 > dword_1ED6433FC)
    {
      WTF::WeakHashMap<WebKit::WebPageProxy,WTF::WeakPtr<WebKit::NavigationState,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultWeakPtrImpl>::removeNullReferences(v11, v12);
    }
  }

  else
  {
    WebKit::navigationStates(void)::navigationStates = 0;
    *&dword_1ED6433F8 = 1;
  }

  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(m_ptr + 6, m_ptr + 16);
  v17 = *(m_ptr + 3);
  atomic_fetch_add(v17, 1u);
  if (v17 == -1 || !v17)
  {
    __break(0xC471u);
    JUMPOUT(0x19D5E2B74);
  }

  v18 = WebKit::navigationStates(void)::navigationStates;
  if (WebKit::navigationStates(void)::navigationStates || (WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::WeakPtr<WebKit::NavigationState,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::WeakPtr<WebKit::NavigationState,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashMap<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::WeakPtr<WebKit::NavigationState,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::WeakPtr<WebKit::NavigationState,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::expand(), (v18 = WebKit::navigationStates(void)::navigationStates) != 0))
  {
    v19 = *(v18 - 8);
  }

  else
  {
    v19 = 0;
  }

  v20 = 0;
  v21 = (v17 + ~(v17 << 32)) ^ ((v17 + ~(v17 << 32)) >> 22);
  v22 = 9 * ((v21 + ~(v21 << 13)) ^ ((v21 + ~(v21 << 13)) >> 8));
  v23 = (v22 ^ (v22 >> 15)) + ~((v22 ^ (v22 >> 15)) << 27);
  v24 = (v23 >> 31) ^ v23;
  for (i = 1; ; ++i)
  {
    v26 = v24 & v19;
    v27 = (v18 + 16 * v26);
    v28 = *v27;
    if (*v27 == -1)
    {
      v20 = (v18 + 16 * v26);
      goto LABEL_24;
    }

    if (!v28)
    {
      if (v20)
      {
        *v20 = 0;
        v20[1] = 0;
        --*(WebKit::navigationStates(void)::navigationStates - 16);
        *v20 = v17;
      }

      else
      {
        *v27 = v17;
        v20 = (v18 + 16 * v26);
      }

      WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(v4, this);
      v30 = *v4;
      atomic_fetch_add(*v4, 1u);
      v31 = v20[1];
      v20[1] = v30;
      if (v31 && atomic_fetch_add(v31, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v31);
        WTF::fastFree(v31, v29);
      }

      v32 = WebKit::navigationStates(void)::navigationStates;
      if (WebKit::navigationStates(void)::navigationStates)
      {
        v33 = *(WebKit::navigationStates(void)::navigationStates - 12) + 1;
      }

      else
      {
        v33 = 1;
      }

      *(WebKit::navigationStates(void)::navigationStates - 12) = v33;
      v34 = (*(v32 - 16) + v33);
      v35 = *(v32 - 4);
      if (v35 > 0x400)
      {
        if (v35 > 2 * v34)
        {
          goto LABEL_39;
        }
      }

      else if (3 * v35 > 4 * v34)
      {
        goto LABEL_39;
      }

      WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::WeakPtr<WebKit::NavigationState,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::WeakPtr<WebKit::NavigationState,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashMap<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::WeakPtr<WebKit::NavigationState,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::WeakPtr<WebKit::NavigationState,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::expand();
      goto LABEL_39;
    }

    if (v28 == v17)
    {
      break;
    }

LABEL_24:
    v24 = i + v26;
  }

  if (atomic_fetch_add(v17, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v17);
    WTF::fastFree(v17, v16);
  }

LABEL_39:
  v36 = *(m_ptr + 4);
  WebKit::PageLoadState::ref((v36 + 1120));
  WTF::WeakHashSet<WebKit::FrameLoadStateObserver,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::add<WebKit::FrameLoadStateObserver>(v36 + 1120, this, v38);
  WebKit::PageLoadState::deref((v36 + 1120));
  CFRelease(*(m_ptr + 1));
  return this;
}

void sub_19D5E2B98(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id *location, uint64_t a12)
{
  if (v17 && atomic_fetch_add(v17, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v17);
    WTF::fastFree(v17, a2);
  }

  CFRelease(*(v18 + 8));
  v12[9] = a10;
  v20 = v12[14];
  v12[14] = 0;
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  WTF::RunLoop::TimerBase::~TimerBase(v16);
  v22 = v12[8];
  v12[8] = 0;
  if (v22)
  {
    WTF::RefCounted<WebKit::ProcessThrottlerActivity>::deref((v22 + 8), v21);
  }

  objc_destroyWeak(location);
  objc_destroyWeak(v15);
  objc_destroyWeak(v14);
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(v13, v23);
  _Unwind_Resume(a1);
}

WebKit::NavigationState *std::unique_ptr<WebKit::NavigationState>::reset[abi:sn200100](WebKit::NavigationState **a1, WebKit::NavigationState *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    WebKit::NavigationState::~NavigationState(result);

    return bmalloc::api::tzoneFree(v4, v5);
  }

  return result;
}

unsigned int *WTF::makeUniqueRefWithoutFastMallocCheck<WebKit::NavigationState::NavigationClient,WebKit::NavigationState&>@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v5 = WebKit::NavigationState::NavigationClient::operator new(0x10, a2);
  *v5 = &unk_1F10FFBD0;
  result = WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a1 + 8), a1);
  v7 = *(a1 + 8);
  atomic_fetch_add(v7, 1u);
  v5[1] = v7;
  *a3 = v5;
  return result;
}

uint64_t WebKit::NavigationState::NavigationClient::operator new(WebKit::NavigationState::NavigationClient *this, void *a2)
{
  if (this == 16 && WebKit::NavigationState::NavigationClient::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::NavigationState::NavigationClient::s_heapRef, a2);
  }

  else
  {
    return WebKit::NavigationState::NavigationClient::operatorNewSlow(this);
  }
}

WebKit::UIDelegate *WebKit::UIDelegate::UIDelegate(WebKit::UIDelegate *this, WKWebView *a2)
{
  *this = 0;
  *(this + 1) = 0;
  objc_initWeak(this + 1, a2);
  *(this + 2) = 0;
  return this;
}

uint64_t *std::unique_ptr<WebKit::UIDelegate>::reset[abi:sn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    objc_destroyWeak((v2 + 16));
    objc_destroyWeak((v2 + 8));
    v4 = WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(v2, v3);

    return bmalloc::api::tzoneFree(v4, v5);
  }

  return result;
}

uint64_t WebKit::WebPageProxy::setFindClient(uint64_t a1, void *a2)
{
  v3 = *a2;
  if (*a2)
  {
    *a2 = 0;
  }

  else
  {
    v3 = API::FindClient::operator new(8, a2);
    *v3 = &unk_1F1117040;
  }

  result = *(a1 + 128);
  *(a1 + 128) = v3;
  if (result)
  {
    v5 = *(*result + 8);

    return v5();
  }

  return result;
}

WTF::StringImpl *WebKit::WebPageProxy::setURLSchemeHandlerForScheme(uint64_t a1, const WTF::StringImpl **a2, WebCore::LegacySchemeRegistry *a3)
{
  WTF::URLParser::maybeCanonicalizeScheme();
  if ((v18 & 1) == 0)
  {
    goto LABEL_11;
  }

  WTF::HashMap<WTF::String,WTF::Ref<WebKit::WebURLSchemeHandler,WTF::RawPtrTraits<WebKit::WebURLSchemeHandler>,WTF::DefaultRefDerefTraits<WebKit::WebURLSchemeHandler>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WebKit::WebURLSchemeHandler,WTF::RawPtrTraits<WebKit::WebURLSchemeHandler>,WTF::DefaultRefDerefTraits<WebKit::WebURLSchemeHandler>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WebKit::WebURLSchemeHandler&>((a1 + 1192), &v17, *a2, v16);
  v15 = *(*a2 + 2);
  WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebURLSchemeHandler,WTF::RawPtrTraits<WebKit::WebURLSchemeHandler>,WTF::DefaultRefDerefTraits<WebKit::WebURLSchemeHandler>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::WebURLSchemeHandler,WTF::RawPtrTraits<WebKit::WebURLSchemeHandler>,WTF::DefaultRefDerefTraits<WebKit::WebURLSchemeHandler>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::Ref<WebKit::WebURLSchemeHandler,WTF::RawPtrTraits<WebKit::WebURLSchemeHandler>,WTF::DefaultRefDerefTraits<WebKit::WebURLSchemeHandler>>>((*(a1 + 32) + 2104), &v15, a2, v14);
  result = WebCore::LegacySchemeRegistry::registerURLSchemeAsHandledBySchemeHandler(a3, v6);
  if ((*(a1 + 865) & 1) == 0 && *(a1 + 864) == 1)
  {
    if (v18)
    {
      v13[0] = &v15;
      v13[1] = &v17;
      result = WebKit::WebPageProxy::send<Messages::WebPage::RegisterURLSchemeHandler>(a1, v13);
      goto LABEL_6;
    }

LABEL_11:
    v9 = std::__throw_bad_optional_access[abi:sn200100]();
    return WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::RegisterURLSchemeHandler>(v9, v10, v11, v12);
  }

LABEL_6:
  if (v18 == 1)
  {
    result = v17;
    v17 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v8);
      }
    }
  }

  return result;
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::RegisterURLSchemeHandler>(uint64_t a1, uint64_t **a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 2658;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v8, **a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v8, a2[1]);
  LOBYTE(v16) = 0;
  v17 = 0;
  v10 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v18, a4, &v16, 1);
  if (v17 == 1)
  {
    v11 = v16;
    v16 = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }
  }

  v12 = v18;
  v18 = 0;
  if (v12)
  {
    IPC::Encoder::~Encoder(v12, v9);
    bmalloc::api::tzoneFree(v14, v15);
  }

  return v10;
}

atomic_uint *WebKit::WebPageProxy::send<Messages::WebPage::RegisterURLSchemeHandler>(uint64_t a1, uint64_t **a2)
{
  v2 = *(a1 + 352);
  atomic_fetch_add((v2 + 16), 1u);
  result = WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::RegisterURLSchemeHandler>(v2, a2, *(a1 + 48), 0);
  if (v2)
  {

    return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v2 + 16));
  }

  return result;
}

id **std::unique_ptr<WebKit::PointerTouchCompatibilitySimulator>::reset[abi:sn200100](id **result, id *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    objc_destroyWeak(v2);

    return bmalloc::api::tzoneFree(v2, v3);
  }

  return result;
}

atomic_uint *WebKit::WebPageProxy::send<Messages::WebPage::ListenForLayoutMilestones>(uint64_t a1, _WORD **a2)
{
  v2 = *(a1 + 352);
  atomic_fetch_add((v2 + 16), 1u);
  result = WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::ListenForLayoutMilestones>(v2, a2, *(a1 + 48), 0);
  if (v2)
  {

    return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v2 + 16));
  }

  return result;
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::ListenForLayoutMilestones>(uint64_t a1, _WORD **a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 2617;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  IPC::ArgumentCoder<unsigned short,void>::encode<IPC::Encoder>(v8, **a2);
  LOBYTE(v16) = 0;
  v17 = 0;
  v10 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v18, a4, &v16, 1);
  if (v17 == 1)
  {
    v11 = v16;
    v16 = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }
  }

  v12 = v18;
  v18 = 0;
  if (v12)
  {
    IPC::Encoder::~Encoder(v12, v9);
    bmalloc::api::tzoneFree(v14, v15);
  }

  return v10;
}

atomic_uint *WebKit::WebPageProxy::listenForLayoutMilestones(atomic_uint *result, unsigned __int16 a2)
{
  v4 = a2;
  v2 = *(result + 4);
  if (*(v2 + 1080) != a2)
  {
    *(v2 + 1080) = a2;
    if ((*(result + 865) & 1) == 0 && *(result + 864) == 1)
    {
      v3 = &v4;
      return WebKit::WebPageProxy::send<Messages::WebPage::ListenForLayoutMilestones>(result, &v3);
    }
  }

  return result;
}

void WebKit::NavigationState::NavigationClient::~NavigationClient(WebKit::NavigationState::NavigationClient *this, void *a2)
{
  v3 = *(this + 1);
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  bmalloc::api::tzoneFree(this, a2);
}

{
  v3 = *(this + 1);
  *(this + 1) = 0;
  if (v3)
  {
    if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3);
      WTF::fastFree(v3, a2);
    }
  }
}

uint64_t WebKit::NavigationState::setNavigationDelegate(uint64_t a1, void *a2)
{
  objc_storeWeak((a1 + 24), a2);
  *(a1 + 32) = *(a1 + 32) & 0xFFFFFFFE | objc_opt_respondsToSelector() & 1;
  if (objc_opt_respondsToSelector())
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(a1 + 32) = *(a1 + 32) & 0xFFFFFFFD | v3;
  if (objc_opt_respondsToSelector())
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  *(a1 + 32) = *(a1 + 32) & 0xFFFFFFFB | v4;
  if (objc_opt_respondsToSelector())
  {
    v5 = 8;
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 32) = *(a1 + 32) & 0xFFFFFFF7 | v5;
  if (objc_opt_respondsToSelector())
  {
    v6 = 16;
  }

  else
  {
    v6 = 0;
  }

  *(a1 + 32) = *(a1 + 32) & 0xFFFFFFEF | v6;
  if (objc_opt_respondsToSelector())
  {
    v7 = 32;
  }

  else
  {
    v7 = 0;
  }

  *(a1 + 32) = *(a1 + 32) & 0xFFFFFFDF | v7;
  if (objc_opt_respondsToSelector())
  {
    v8 = 64;
  }

  else
  {
    v8 = 0;
  }

  *(a1 + 32) = *(a1 + 32) & 0xFFFFFFBF | v8;
  if (objc_opt_respondsToSelector())
  {
    v9 = 128;
  }

  else
  {
    v9 = 0;
  }

  *(a1 + 32) = *(a1 + 32) & 0xFFFFFF7F | v9;
  if (objc_opt_respondsToSelector())
  {
    v10 = 256;
  }

  else
  {
    v10 = 0;
  }

  *(a1 + 32) = *(a1 + 32) & 0xFFFFFEFF | v10;
  if (objc_opt_respondsToSelector())
  {
    v11 = 0x4000;
  }

  else
  {
    v11 = 0;
  }

  *(a1 + 32) = *(a1 + 32) & 0xFFFFBFFF | v11;
  if (objc_opt_respondsToSelector())
  {
    v12 = 0x8000;
  }

  else
  {
    v12 = 0;
  }

  *(a1 + 32) = *(a1 + 32) & 0xFFFF7FFF | v12;
  if (objc_opt_respondsToSelector())
  {
    v13 = 0x20000;
  }

  else
  {
    v13 = 0;
  }

  *(a1 + 32) = *(a1 + 32) & 0xFFFDFFFF | v13;
  if (objc_opt_respondsToSelector())
  {
    v14 = 0x40000;
  }

  else
  {
    v14 = 0;
  }

  *(a1 + 32) = *(a1 + 32) & 0xFFFBFFFF | v14;
  if (objc_opt_respondsToSelector())
  {
    v15 = 0x80000;
  }

  else
  {
    v15 = 0;
  }

  *(a1 + 32) = *(a1 + 32) & 0xFFF7FFFF | v15;
  if (objc_opt_respondsToSelector())
  {
    v16 = 0x100000;
  }

  else
  {
    v16 = 0;
  }

  *(a1 + 32) = *(a1 + 32) & 0xFFEFFFFF | v16;
  if (objc_opt_respondsToSelector())
  {
    v17 = 0x200000;
  }

  else
  {
    v17 = 0;
  }

  *(a1 + 32) = *(a1 + 32) & 0xFFDFFFFF | v17;
  if (objc_opt_respondsToSelector())
  {
    v18 = 0x800000;
  }

  else
  {
    v18 = 0;
  }

  *(a1 + 32) = *(a1 + 32) & 0xFF7FFFFF | v18;
  if (objc_opt_respondsToSelector())
  {
    v19 = 0x1000000;
  }

  else
  {
    v19 = 0;
  }

  *(a1 + 32) = *(a1 + 32) & 0xFEFFFFFF | v19;
  if (objc_opt_respondsToSelector())
  {
    v20 = 0x2000000;
  }

  else
  {
    v20 = 0;
  }

  *(a1 + 32) = *(a1 + 32) & 0xFDFFFFFF | v20;
  if (objc_opt_respondsToSelector())
  {
    v21 = 512;
  }

  else
  {
    v21 = 0;
  }

  *(a1 + 32) = *(a1 + 32) & 0xFFFFFDFF | v21;
  if (objc_opt_respondsToSelector())
  {
    v22 = 2048;
  }

  else
  {
    v22 = 0;
  }

  *(a1 + 32) = *(a1 + 32) & 0xFFFFF7FF | v22;
  if (objc_opt_respondsToSelector())
  {
    v23 = 4096;
  }

  else
  {
    v23 = 0;
  }

  *(a1 + 32) = *(a1 + 32) & 0xFFFFEFFF | v23;
  if (objc_opt_respondsToSelector())
  {
    v24 = 0x2000;
  }

  else
  {
    v24 = 0;
  }

  *(a1 + 32) = *(a1 + 32) & 0xFFFFDFFF | v24;
  if (objc_opt_respondsToSelector())
  {
    v25 = 0x10000;
  }

  else
  {
    v25 = 0;
  }

  *(a1 + 32) = *(a1 + 32) & 0xFFFEFFFF | v25;
  if (objc_opt_respondsToSelector())
  {
    v26 = 0x400000;
  }

  else
  {
    v26 = 0;
  }

  *(a1 + 32) = *(a1 + 32) & 0xFFBFFFFF | v26;
  if (objc_opt_respondsToSelector())
  {
    v27 = 0x4000000;
  }

  else
  {
    v27 = 0;
  }

  *(a1 + 32) = *(a1 + 32) & 0xFBFFFFFF | v27;
  if (objc_opt_respondsToSelector())
  {
    v28 = 0x8000000;
  }

  else
  {
    v28 = 0;
  }

  *(a1 + 32) = *(a1 + 32) & 0xF7FFFFFF | v28;
  if (objc_opt_respondsToSelector())
  {
    v29 = 0x10000000;
  }

  else
  {
    v29 = 0;
  }

  *(a1 + 32) = *(a1 + 32) & 0xEFFFFFFF | v29;
  if (objc_opt_respondsToSelector())
  {
    v30 = 0x20000000;
  }

  else
  {
    v30 = 0;
  }

  *(a1 + 32) = *(a1 + 32) & 0xDFFFFFFF | v30;
  if (objc_opt_respondsToSelector())
  {
    v31 = 0x40000000;
  }

  else
  {
    v31 = 0;
  }

  *(a1 + 32) = *(a1 + 32) & 0xBFFFFFFF | v31;
  if (objc_opt_respondsToSelector())
  {
    v32 = 0x80000000;
  }

  else
  {
    v32 = 0;
  }

  *(a1 + 32) = v32 & 0x80000000 | *(a1 + 32) & 0x7FFFFFFF;
  *(a1 + 36) = *(a1 + 36) & 0xFE | objc_opt_respondsToSelector() & 1;
  if (objc_opt_respondsToSelector())
  {
    v33 = 2;
  }

  else
  {
    v33 = 0;
  }

  *(a1 + 36) = *(a1 + 36) & 0xFD | v33;
  if (objc_opt_respondsToSelector())
  {
    v34 = 4;
  }

  else
  {
    v34 = 0;
  }

  *(a1 + 36) = *(a1 + 36) & 0xFB | v34;
  if (objc_opt_respondsToSelector())
  {
    v35 = 8;
  }

  else
  {
    v35 = 0;
  }

  *(a1 + 36) = *(a1 + 36) & 0xF7 | v35;
  if (objc_opt_respondsToSelector())
  {
    v36 = 16;
  }

  else
  {
    v36 = 0;
  }

  *(a1 + 36) = *(a1 + 36) & 0xEF | v36;
  if (objc_opt_respondsToSelector())
  {
    v37 = 32;
  }

  else
  {
    v37 = 0;
  }

  *(a1 + 36) = *(a1 + 36) & 0xDF | v37;
  if (objc_opt_respondsToSelector())
  {
    v38 = 64;
  }

  else
  {
    v38 = 0;
  }

  *(a1 + 36) = *(a1 + 36) & 0xBF | v38;
  if (objc_opt_respondsToSelector())
  {
    v39 = 0x80;
  }

  else
  {
    v39 = 0;
  }

  *(a1 + 36) = v39 & 0x80 | *(a1 + 36) & 0x7F;
  *(a1 + 37) = objc_opt_respondsToSelector() & 1;
  *(a1 + 38) = *(a1 + 38) & 0xFFFE | objc_opt_respondsToSelector() & 1;
  if (objc_opt_respondsToSelector())
  {
    v40 = 2;
  }

  else
  {
    v40 = 0;
  }

  *(a1 + 38) = *(a1 + 38) & 0xFFFD | v40;
  if (objc_opt_respondsToSelector())
  {
    v41 = 4;
  }

  else
  {
    v41 = 0;
  }

  *(a1 + 38) = *(a1 + 38) & 0xFFFB | v41;
  if (objc_opt_respondsToSelector())
  {
    v42 = 8;
  }

  else
  {
    v42 = 0;
  }

  *(a1 + 38) = *(a1 + 38) & 0xFFF7 | v42;
  if (objc_opt_respondsToSelector())
  {
    v43 = 16;
  }

  else
  {
    v43 = 0;
  }

  *(a1 + 38) = *(a1 + 38) & 0xFFEF | v43;
  if (objc_opt_respondsToSelector())
  {
    v44 = 32;
  }

  else
  {
    v44 = 0;
  }

  *(a1 + 38) = *(a1 + 38) & 0xFFDF | v44;
  if (objc_opt_respondsToSelector())
  {
    v45 = 64;
  }

  else
  {
    v45 = 0;
  }

  *(a1 + 38) = *(a1 + 38) & 0xFFBF | v45;
  if (objc_opt_respondsToSelector())
  {
    v46 = 128;
  }

  else
  {
    v46 = 0;
  }

  *(a1 + 38) = *(a1 + 38) & 0xFF7F | v46;
  if (objc_opt_respondsToSelector())
  {
    v47 = 256;
  }

  else
  {
    v47 = 0;
  }

  *(a1 + 38) = *(a1 + 38) & 0xFEFF | v47;
  if (objc_opt_respondsToSelector())
  {
    v48 = 512;
  }

  else
  {
    v48 = 0;
  }

  *(a1 + 38) = *(a1 + 38) & 0xFDFF | v48;
  if (objc_opt_respondsToSelector())
  {
    v49 = 1024;
  }

  else
  {
    v49 = 0;
  }

  *(a1 + 38) = *(a1 + 38) & 0xFBFF | v49;
  if (objc_opt_respondsToSelector())
  {
    v50 = 2048;
  }

  else
  {
    v50 = 0;
  }

  *(a1 + 38) = *(a1 + 38) & 0xF7FF | v50;
  if (objc_opt_respondsToSelector())
  {
    v51 = 4096;
  }

  else
  {
    v51 = 0;
  }

  *(a1 + 38) = *(a1 + 38) & 0xEFFF | v51;
  if (objc_opt_respondsToSelector())
  {
    v52 = 0x2000;
  }

  else
  {
    v52 = 0;
  }

  *(a1 + 38) = *(a1 + 38) & 0xDFFF | v52;
  if (objc_opt_respondsToSelector())
  {
    v53 = 0x4000;
  }

  else
  {
    v53 = 0;
  }

  *(a1 + 38) = *(a1 + 38) & 0xBFFF | v53;
  if (objc_opt_respondsToSelector())
  {
    v54 = 0x8000;
  }

  else
  {
    v54 = 0;
  }

  *(a1 + 38) = v54 & 0x8000 | *(a1 + 38) & 0x7FFF;
  result = objc_opt_respondsToSelector();
  *(a1 + 40) = *(a1 + 40) & 0xFE | result & 1;
  return result;
}

uint64_t WebKit::UIDelegate::setDelegate(uint64_t a1, void *a2)
{
  objc_storeWeak((a1 + 16), a2);
  *(a1 + 24) = *(a1 + 24) & 0xFFFFFFFE | objc_opt_respondsToSelector() & 1;
  if (objc_opt_respondsToSelector())
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(a1 + 24) = *(a1 + 24) & 0xFFFFFFFD | v3;
  if (objc_opt_respondsToSelector())
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  *(a1 + 24) = *(a1 + 24) & 0xFFFFFFFB | v4;
  if (objc_opt_respondsToSelector())
  {
    v5 = 8;
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 24) = *(a1 + 24) & 0xFFFFFFF7 | v5;
  if (objc_opt_respondsToSelector())
  {
    v6 = 16;
  }

  else
  {
    v6 = 0;
  }

  *(a1 + 24) = *(a1 + 24) & 0xFFFFFFEF | v6;
  if (objc_opt_respondsToSelector())
  {
    v7 = 32;
  }

  else
  {
    v7 = 0;
  }

  *(a1 + 24) = *(a1 + 24) & 0xFFFFFFDF | v7;
  if (objc_opt_respondsToSelector())
  {
    v8 = 64;
  }

  else
  {
    v8 = 0;
  }

  *(a1 + 24) = *(a1 + 24) & 0xFFFFFFBF | v8;
  if (objc_opt_respondsToSelector())
  {
    v9 = 128;
  }

  else
  {
    v9 = 0;
  }

  *(a1 + 24) = *(a1 + 24) & 0xFFFFFF7F | v9;
  if (objc_opt_respondsToSelector())
  {
    v10 = 512;
  }

  else
  {
    v10 = 0;
  }

  *(a1 + 24) = *(a1 + 24) & 0xFFFFFDFF | v10;
  if (objc_opt_respondsToSelector())
  {
    v11 = 256;
  }

  else
  {
    v11 = 0;
  }

  *(a1 + 24) = *(a1 + 24) & 0xFFFFFEFF | v11;
  if (objc_opt_respondsToSelector())
  {
    v12 = 1024;
  }

  else
  {
    v12 = 0;
  }

  *(a1 + 24) = *(a1 + 24) & 0xFFFFFBFF | v12;
  if (objc_opt_respondsToSelector())
  {
    v13 = 2048;
  }

  else
  {
    v13 = 0;
  }

  *(a1 + 24) = *(a1 + 24) & 0xFFFFF7FF | v13;
  if (objc_opt_respondsToSelector())
  {
    v14 = 4096;
  }

  else
  {
    v14 = 0;
  }

  *(a1 + 24) = *(a1 + 24) & 0xFFFFEFFF | v14;
  if (objc_opt_respondsToSelector())
  {
    v15 = 0x4000;
  }

  else
  {
    v15 = 0;
  }

  *(a1 + 24) = *(a1 + 24) & 0xFFFFBFFF | v15;
  if (objc_opt_respondsToSelector())
  {
    v16 = 0x2000;
  }

  else
  {
    v16 = 0;
  }

  *(a1 + 24) = *(a1 + 24) & 0xFFFFDFFF | v16;
  if (objc_opt_respondsToSelector())
  {
    v17 = 0x8000;
  }

  else
  {
    v17 = 0;
  }

  *(a1 + 24) = *(a1 + 24) & 0xFFFF7FFF | v17;
  if (objc_opt_respondsToSelector())
  {
    v18 = 0x10000;
  }

  else
  {
    v18 = 0;
  }

  *(a1 + 24) = *(a1 + 24) & 0xFFFEFFFF | v18;
  if (objc_opt_respondsToSelector())
  {
    v19 = 0x20000;
  }

  else
  {
    v19 = 0;
  }

  *(a1 + 24) = *(a1 + 24) & 0xFFFDFFFF | v19;
  if (objc_opt_respondsToSelector())
  {
    v20 = 0x40000;
  }

  else
  {
    v20 = 0;
  }

  *(a1 + 24) = *(a1 + 24) & 0xFFFBFFFF | v20;
  if (objc_opt_respondsToSelector())
  {
    v21 = 0x200000;
  }

  else
  {
    v21 = 0;
  }

  *(a1 + 24) = *(a1 + 24) & 0xFFDFFFFF | v21;
  if (objc_opt_respondsToSelector())
  {
    v22 = 0x400000;
  }

  else
  {
    v22 = 0;
  }

  *(a1 + 24) = *(a1 + 24) & 0xFFBFFFFF | v22;
  if (objc_opt_respondsToSelector())
  {
    v23 = 0x800000;
  }

  else
  {
    v23 = 0;
  }

  *(a1 + 24) = *(a1 + 24) & 0xFF7FFFFF | v23;
  if (objc_opt_respondsToSelector())
  {
    v24 = 0x1000000;
  }

  else
  {
    v24 = 0;
  }

  *(a1 + 24) = *(a1 + 24) & 0xFEFFFFFF | v24;
  if (objc_opt_respondsToSelector())
  {
    v25 = 0x2000000;
  }

  else
  {
    v25 = 0;
  }

  *(a1 + 24) = *(a1 + 24) & 0xFDFFFFFF | v25;
  if (objc_opt_respondsToSelector())
  {
    v26 = 0x4000000;
  }

  else
  {
    v26 = 0;
  }

  *(a1 + 24) = *(a1 + 24) & 0xFBFFFFFF | v26;
  if (objc_opt_respondsToSelector())
  {
    v27 = 0x8000000;
  }

  else
  {
    v27 = 0;
  }

  *(a1 + 24) = *(a1 + 24) & 0xF7FFFFFF | v27;
  if (objc_opt_respondsToSelector())
  {
    v28 = 0x10000000;
  }

  else
  {
    v28 = 0;
  }

  *(a1 + 24) = *(a1 + 24) & 0xEFFFFFFF | v28;
  if (objc_opt_respondsToSelector())
  {
    v29 = 0x20000000;
  }

  else
  {
    v29 = 0;
  }

  *(a1 + 24) = *(a1 + 24) & 0xDFFFFFFF | v29;
  *(a1 + 28) = *(a1 + 28) & 0xFFFE | objc_opt_respondsToSelector() & 1;
  if (objc_opt_respondsToSelector())
  {
    v30 = 2;
  }

  else
  {
    v30 = 0;
  }

  *(a1 + 28) = *(a1 + 28) & 0xFFFD | v30;
  if (objc_opt_respondsToSelector())
  {
    v31 = 4;
  }

  else
  {
    v31 = 0;
  }

  *(a1 + 28) = *(a1 + 28) & 0xFFFB | v31;
  if (objc_opt_respondsToSelector())
  {
    v32 = 8;
  }

  else
  {
    v32 = 0;
  }

  *(a1 + 28) = *(a1 + 28) & 0xFFF7 | v32;
  if (objc_opt_respondsToSelector())
  {
    v33 = 16;
  }

  else
  {
    v33 = 0;
  }

  *(a1 + 28) = *(a1 + 28) & 0xFFEF | v33;
  if (objc_opt_respondsToSelector())
  {
    v34 = 0x80000;
  }

  else
  {
    v34 = 0;
  }

  *(a1 + 24) = *(a1 + 24) & 0xFFF7FFFF | v34;
  if (objc_opt_respondsToSelector())
  {
    v35 = 0x100000;
  }

  else
  {
    v35 = 0;
  }

  *(a1 + 24) = *(a1 + 24) & 0xFFEFFFFF | v35;
  if (objc_opt_respondsToSelector())
  {
    v36 = 32;
  }

  else
  {
    v36 = 0;
  }

  *(a1 + 28) = *(a1 + 28) & 0xFFDF | v36;
  if (objc_opt_respondsToSelector())
  {
    v37 = 0x40000000;
  }

  else
  {
    v37 = 0;
  }

  *(a1 + 24) = *(a1 + 24) & 0xBFFFFFFF | v37;
  if (objc_opt_respondsToSelector())
  {
    v38 = 0x80000000;
  }

  else
  {
    v38 = 0;
  }

  *(a1 + 24) = v38 & 0x80000000 | *(a1 + 24) & 0x7FFFFFFF;
  if (objc_opt_respondsToSelector())
  {
    v39 = 64;
  }

  else
  {
    v39 = 0;
  }

  *(a1 + 28) = *(a1 + 28) & 0xFFBF | v39;
  if (objc_opt_respondsToSelector())
  {
    v40 = 128;
  }

  else
  {
    v40 = 0;
  }

  *(a1 + 28) = *(a1 + 28) & 0xFF7F | v40;
  if (objc_opt_respondsToSelector())
  {
    v41 = 256;
  }

  else
  {
    v41 = 0;
  }

  *(a1 + 28) = *(a1 + 28) & 0xFEFF | v41;
  if (objc_opt_respondsToSelector())
  {
    v42 = 512;
  }

  else
  {
    v42 = 0;
  }

  *(a1 + 28) = *(a1 + 28) & 0xFDFF | v42;
  if (objc_opt_respondsToSelector())
  {
    v43 = 1024;
  }

  else
  {
    v43 = 0;
  }

  *(a1 + 28) = *(a1 + 28) & 0xFBFF | v43;
  if (objc_opt_respondsToSelector())
  {
    v44 = 2048;
  }

  else
  {
    v44 = 0;
  }

  *(a1 + 28) = *(a1 + 28) & 0xF7FF | v44;
  if (objc_opt_respondsToSelector())
  {
    v45 = 4096;
  }

  else
  {
    v45 = 0;
  }

  *(a1 + 28) = *(a1 + 28) & 0xEFFF | v45;
  if (objc_opt_respondsToSelector())
  {
    v46 = 0x2000;
  }

  else
  {
    v46 = 0;
  }

  *(a1 + 28) = *(a1 + 28) & 0xDFFF | v46;
  if (objc_opt_respondsToSelector())
  {
    v47 = 0x4000;
  }

  else
  {
    v47 = 0;
  }

  *(a1 + 28) = *(a1 + 28) & 0xBFFF | v47;
  if (objc_opt_respondsToSelector())
  {
    v48 = 0x8000;
  }

  else
  {
    v48 = 0;
  }

  *(a1 + 28) = v48 & 0x8000 | *(a1 + 28) & 0x7FFF;
  *(a1 + 30) = *(a1 + 30) & 0xFE | objc_opt_respondsToSelector() & 1;
  if (objc_opt_respondsToSelector())
  {
    v49 = 2;
  }

  else
  {
    v49 = 0;
  }

  *(a1 + 30) = *(a1 + 30) & 0xFD | v49;
  if (objc_opt_respondsToSelector())
  {
    v50 = 4;
  }

  else
  {
    v50 = 0;
  }

  *(a1 + 30) = *(a1 + 30) & 0xFB | v50;
  if (objc_opt_respondsToSelector())
  {
    v51 = 8;
  }

  else
  {
    v51 = 0;
  }

  *(a1 + 30) = *(a1 + 30) & 0xF7 | v51;
  if (objc_opt_respondsToSelector())
  {
    v52 = 16;
  }

  else
  {
    v52 = 0;
  }

  *(a1 + 30) = *(a1 + 30) & 0xEF | v52;
  if (objc_opt_respondsToSelector())
  {
    v53 = 32;
  }

  else
  {
    v53 = 0;
  }

  *(a1 + 30) = *(a1 + 30) & 0xDF | v53;
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v55 = 64;
  }

  else
  {
    v55 = 0;
  }

  *(a1 + 30) = *(a1 + 30) & 0xBF | v55;
  return result;
}

WebKit::UIDelegate::UIClient *WebKit::UIDelegate::createUIClient@<X0>(WebKit::UIDelegate *this@<X0>, void *a2@<X1>, WebKit::UIDelegate::UIClient **a3@<X8>)
{
  v5 = WebKit::UIDelegate::UIClient::operator new(0x18, a2);
  result = WebKit::UIDelegate::UIClient::UIClient(v5, this);
  *a3 = v5;
  return result;
}

uint64_t WebKit::UIDelegate::UIClient::operator new(WebKit::UIDelegate::UIClient *this, void *a2)
{
  if (this == 24 && WebKit::UIDelegate::UIClient::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::UIDelegate::UIClient::s_heapRef, a2);
  }

  else
  {
    return WebKit::UIDelegate::UIClient::operatorNewSlow(this);
  }
}

WebKit::UIDelegate::UIClient *WebKit::UIDelegate::UIClient::UIClient(WebKit::UIDelegate::UIClient *this, WebKit::UIDelegate *a2)
{
  *(this + 1) = 0;
  *this = &unk_1F1102320;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2, a2);
  v4 = *a2;
  atomic_fetch_add(*a2, 1u);
  *(this + 2) = v4;
  return this;
}

atomic_uint *WebKit::WebPageProxy::setUIClient(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    *a2 = 0;
    v4 = *(a1 + 120);
    *(a1 + 120) = v3;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    if ((*(a1 + 865) & 1) == 0 && *(a1 + 864) == 1)
    {
      v10 = (*(**(a1 + 120) + 240))(*(a1 + 120));
      WebKit::WebPageProxy::send<Messages::WebPage::SetCanRunBeforeUnloadConfirmPanel>(a1, &v10);
    }

    v5 = (*(**(a1 + 120) + 408))(*(a1 + 120));
    WebKit::WebPageProxy::setCanRunModal(a1, v5);
    v6 = (*(**(a1 + 120) + 288))();
    return WebKit::WebPageProxy::setNeedsFontAttributes(a1, v6);
  }

  else
  {
    v8 = API::UIClient::operator new(8, a2);
    *v8 = &unk_1F111B880;
    result = *(a1 + 120);
    *(a1 + 120) = v8;
    if (result)
    {
      v9 = *(*result + 8);

      return v9();
    }
  }

  return result;
}

uint64_t WebKit::UIDelegate::UIClient::canRunBeforeUnloadConfirmPanel(WebKit::UIDelegate::UIClient *this)
{
  v1 = *(this + 2);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = objc_loadWeak((v2 + 8));
  v4 = (*(v2 + 24) >> 7) & 1;

  return v4;
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::SetCanRunBeforeUnloadConfirmPanel>(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 2721;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  IPC::Encoder::operator<<<BOOL &>(v8, a2);
  LOBYTE(v16) = 0;
  v17 = 0;
  v10 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v18, a4, &v16, 1);
  if (v17 == 1)
  {
    v11 = v16;
    v16 = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }
  }

  v12 = v18;
  v18 = 0;
  if (v12)
  {
    IPC::Encoder::~Encoder(v12, v9);
    bmalloc::api::tzoneFree(v14, v15);
  }

  return v10;
}

atomic_uint *WebKit::WebPageProxy::send<Messages::WebPage::SetCanRunBeforeUnloadConfirmPanel>(uint64_t a1, void *a2)
{
  v2 = *(a1 + 352);
  atomic_fetch_add((v2 + 16), 1u);
  result = WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::SetCanRunBeforeUnloadConfirmPanel>(v2, a2, *(a1 + 48), 0);
  if (v2)
  {

    return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v2 + 16));
  }

  return result;
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::SetCanRunModal>(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 2722;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  IPC::Encoder::operator<<<BOOL &>(v8, a2);
  LOBYTE(v16) = 0;
  v17 = 0;
  v10 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v18, a4, &v16, 1);
  if (v17 == 1)
  {
    v11 = v16;
    v16 = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }
  }

  v12 = v18;
  v18 = 0;
  if (v12)
  {
    IPC::Encoder::~Encoder(v12, v9);
    bmalloc::api::tzoneFree(v14, v15);
  }

  return v10;
}

atomic_uint *WebKit::WebPageProxy::send<Messages::WebPage::SetCanRunModal>(uint64_t a1, void *a2)
{
  v2 = *(a1 + 352);
  atomic_fetch_add((v2 + 16), 1u);
  result = WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::SetCanRunModal>(v2, a2, *(a1 + 48), 0);
  if (v2)
  {

    return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v2 + 16));
  }

  return result;
}

uint64_t WebKit::WebPageProxy::setCanRunModal(WebKit::WebPageProxy *this, char a2)
{
  result = (*(**(this + 15) + 408))(*(this + 15));
  *(this + 866) = result & a2;
  if ((*(this + 865) & 1) == 0 && *(this + 864) == 1)
  {
    v5 = result & a2;
    return WebKit::WebPageProxy::send<Messages::WebPage::SetCanRunModal>(this, &v5);
  }

  return result;
}

atomic_uint *WebKit::WebPageProxy::setNeedsFontAttributes(atomic_uint *this, int a2)
{
  if (*(this + 1252) != a2)
  {
    *(this + 1252) = a2;
    if ((*(this + 865) & 1) == 0 && *(this + 864) == 1)
    {
      v5 = v2;
      v6 = v3;
      v4 = a2;
      return WebKit::WebPageProxy::send<Messages::WebPage::SetNeedsFontAttributes>(this, &v4);
    }
  }

  return this;
}

uint64_t WebKit::UIDelegate::UIClient::needsFontAttributes(WebKit::UIDelegate::UIClient *this)
{
  v1 = *(this + 2);
  if (v1 && (v2 = *(v1 + 8)) != 0)
  {
    return *(v2 + 24) >> 31;
  }

  else
  {
    return 0;
  }
}

uint64_t WebKit::FullscreenClient::setDelegate(uint64_t a1, void *a2)
{
  objc_storeWeak((a1 + 16), a2);
  *(a1 + 24) = *(a1 + 24) & 0xFE | objc_opt_respondsToSelector() & 1;
  if (objc_opt_respondsToSelector())
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(a1 + 24) = *(a1 + 24) & 0xFD | v3;
  if (objc_opt_respondsToSelector())
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  *(a1 + 24) = *(a1 + 24) & 0xFB | v4;
  if (objc_opt_respondsToSelector())
  {
    v5 = 8;
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 24) = *(a1 + 24) & 0xF7 | v5;
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v7 = 16;
  }

  else
  {
    v7 = 0;
  }

  *(a1 + 24) = *(a1 + 24) & 0xEF | v7;
  return result;
}

uint64_t WebKit::WebPageProxy::setFormClient(uint64_t a1, void *a2)
{
  v3 = *a2;
  if (*a2)
  {
    *a2 = 0;
  }

  else
  {
    v3 = API::FormClient::operator new(8, a2);
    *v3 = &unk_1F1117018;
  }

  result = *(a1 + 112);
  *(a1 + 112) = v3;
  if (result)
  {
    v5 = *(*result + 8);

    return v5();
  }

  return result;
}

unsigned int *WTF::makeUniqueRefWithoutFastMallocCheck<WebKit::NavigationState::HistoryClient,WebKit::NavigationState&>@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v5 = WebKit::NavigationState::HistoryClient::operator new(0x10, a2);
  *v5 = &unk_1F10FFD58;
  result = WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a1 + 8), a1);
  v7 = *(a1 + 8);
  atomic_fetch_add(v7, 1u);
  v5[1] = v7;
  *a3 = v5;
  return result;
}

uint64_t WebKit::NavigationState::HistoryClient::operator new(WebKit::NavigationState::HistoryClient *this, void *a2)
{
  if (this == 16 && WebKit::NavigationState::HistoryClient::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::NavigationState::HistoryClient::s_heapRef, a2);
  }

  else
  {
    return WebKit::NavigationState::HistoryClient::operatorNewSlow(this);
  }
}

uint64_t WebKit::NavigationState::setHistoryDelegate(uint64_t a1, void *a2)
{
  objc_storeWeak((a1 + 48), a2);
  *(a1 + 56) = *(a1 + 56) & 0xFE | objc_opt_respondsToSelector() & 1;
  if (objc_opt_respondsToSelector())
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(a1 + 56) = *(a1 + 56) & 0xFD | v3;
  if (objc_opt_respondsToSelector())
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  *(a1 + 56) = *(a1 + 56) & 0xFB | v4;
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v6 = 8;
  }

  else
  {
    v6 = 0;
  }

  *(a1 + 56) = *(a1 + 56) & 0xF7 | v6;
  return result;
}

uint64_t WebKit::IconLoadingDelegate::IconLoadingClient::operator new(WebKit::IconLoadingDelegate::IconLoadingClient *this, void *a2)
{
  if (this == 16 && WebKit::IconLoadingDelegate::IconLoadingClient::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::IconLoadingDelegate::IconLoadingClient::s_heapRef, a2);
  }

  else
  {
    return WebKit::IconLoadingDelegate::IconLoadingClient::operatorNewSlow(this);
  }
}

atomic_uint *WebKit::WebPageProxy::send<Messages::WebPage::SetUseIconLoadingClient>(uint64_t a1, void *a2)
{
  v2 = *(a1 + 352);
  atomic_fetch_add((v2 + 16), 1u);
  result = WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::SetUseIconLoadingClient>(v2, a2, *(a1 + 48), 0);
  if (v2)
  {

    return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v2 + 16));
  }

  return result;
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::SetUseIconLoadingClient>(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 2788;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  IPC::Encoder::operator<<<BOOL &>(v8, a2);
  LOBYTE(v16) = 0;
  v17 = 0;
  v10 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v18, a4, &v16, 1);
  if (v17 == 1)
  {
    v11 = v16;
    v16 = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }
  }

  v12 = v18;
  v18 = 0;
  if (v12)
  {
    IPC::Encoder::~Encoder(v12, v9);
    bmalloc::api::tzoneFree(v14, v15);
  }

  return v10;
}

atomic_uint *WebKit::WebPageProxy::setIconLoadingClient(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    *a2 = 0;
    result = *(a1 + 104);
    *(a1 + 104) = v3;
    if (!result)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v5 = API::IconLoadingClient::operator new(8, a2);
  *v5 = &unk_1F1116FF0;
  result = *(a1 + 104);
  *(a1 + 104) = v5;
  if (result)
  {
LABEL_3:
    result = (*(*result + 8))(result);
  }

LABEL_4:
  if ((*(a1 + 865) & 1) == 0 && *(a1 + 864) == 1)
  {
    v6 = v3 != 0;
    return WebKit::WebPageProxy::send<Messages::WebPage::SetUseIconLoadingClient>(a1, &v6);
  }

  return result;
}

uint64_t WebKit::IconLoadingDelegate::setDelegate(uint64_t a1, void *a2)
{
  objc_storeWeak((a1 + 16), a2);
  result = objc_opt_respondsToSelector();
  *(a1 + 24) = *(a1 + 24) & 0xFE | result & 1;
  return result;
}

uint64_t WebKit::DiagnosticLoggingClient::setDelegate(uint64_t a1, void *a2)
{
  objc_storeWeak((a1 + 16), a2);
  *(a1 + 24) = *(a1 + 24) & 0xFE | objc_opt_respondsToSelector() & 1;
  if (objc_opt_respondsToSelector())
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(a1 + 24) = *(a1 + 24) & 0xFD | v3;
  if (objc_opt_respondsToSelector())
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  *(a1 + 24) = *(a1 + 24) & 0xFB | v4;
  if (objc_opt_respondsToSelector())
  {
    v5 = 8;
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 24) = *(a1 + 24) & 0xF7 | v5;
  if (objc_opt_respondsToSelector())
  {
    v6 = 16;
  }

  else
  {
    v6 = 0;
  }

  *(a1 + 24) = *(a1 + 24) & 0xEF | v6;
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v8 = 32;
  }

  else
  {
    v8 = 0;
  }

  *(a1 + 24) = *(a1 + 24) & 0xDF | v8;
  return result;
}

atomic_uchar **WebKit::WebPageProxy::setInspectable(atomic_uchar **this, int a2)
{
  v2 = this[152];
  if (v2)
  {
    v4 = this;
    v5 = (v2 + 1);
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
        goto LABEL_7;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v5);
LABEL_7:
    if (Inspector::RemoteInspectionTarget::inspectable(v2) != a2)
    {
      Inspector::RemoteInspectionTarget::setInspectable(v2);
      v9 = *(v4 + 408);
      CFRetain(v9[1]);
      WebKit::WebsiteDataStore::updateServiceWorkerInspectability(v9, v10);
      CFRelease(v9[1]);
    }

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<Inspector::RemoteControllableTarget,(WTF::DestructionThread)0>::deref(v2 + 1, v8);
  }

  return this;
}

atomic_uint *WebKit::WebPageProxy::setBackgroundExtendsBeyondPage(atomic_uint *this, int a2)
{
  if (*(this + 990) != a2)
  {
    *(this + 990) = a2;
    if ((*(this + 865) & 1) == 0 && *(this + 864) == 1)
    {
      v5 = v2;
      v6 = v3;
      v4 = a2;
      return WebKit::WebPageProxy::send<Messages::WebPage::SetBackgroundExtendsBeyondPage>(this, &v4);
    }
  }

  return this;
}

void initializeMethods(_WKRemoteObjectInterface *a1, Protocol *a2)
{
  WTF::protocol_copyProtocolListSpan(&v8, a2, a2);
  if (v9)
  {
    v4 = v8;
    v5 = 8 * v9;
    do
    {
      v6 = *v4;
      if (*v4)
      {
        v7 = v6;
      }

      if (v6 != &unk_1F1185A00)
      {
        initializeMethods(a1, v6);
      }

      if (v6)
      {
      }

      ++v4;
      v5 -= 8;
    }

    while (v5);
  }

  initializeMethods(a1, a2, 1);
  initializeMethods(a1, a2, 0);
  free(v8);
}

void sub_19D5E56F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9)
{
  if (v9)
  {
  }

  free(a9);
  _Unwind_Resume(a1);
}

void initializeMethods(_WKRemoteObjectInterface *a1, Protocol *this, Protocol *a3)
{
  WTF::protocol_copyMethodDescriptionListSpan(this, a3);
  v6 = v53;
  if (v54)
  {
    v7 = &v53[2 * v54];
    while (1)
    {
      v8 = *v6;
      *(&v9 + 1) = 0;
      v51 = 0u;
      v52 = 0u;
      v50 = 0u;
      if (v8 == -1 || !v8)
      {
        __break(0xC471u);
        JUMPOUT(0x19D5E5B60);
      }

      m_table = a1->_methods.m_impl.m_table;
      if (!m_table)
      {
        WTF::HashTable<objc_selector *,WTF::KeyValuePair<objc_selector *,MethodInfo>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<objc_selector *,MethodInfo>>,WTF::DefaultHash<objc_selector *>,WTF::HashMap<objc_selector *,MethodInfo,WTF::DefaultHash<objc_selector *>,WTF::HashTraits<objc_selector *>,WTF::HashTraits<MethodInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<objc_selector *>,WTF::FastMalloc>::expand(&a1->_methods, 0);
        m_table = a1->_methods.m_impl.m_table;
      }

      v11 = *(m_table - 2);
      v12 = &v8[~(v8 << 32)] ^ (&v8[~(v8 << 32)] >> 22);
      v13 = 9 * ((v12 + ~(v12 << 13)) ^ ((v12 + ~(v12 << 13)) >> 8));
      v14 = (v13 ^ (v13 >> 15)) + ~((v13 ^ (v13 >> 15)) << 27);
      v15 = v11 & ((v14 >> 31) ^ v14);
      v16 = &m_table[14 * v15];
      v17 = *v16;
      if (*v16)
      {
        v18 = 0;
        v19 = 1;
        while (v17 != v8)
        {
          if (v17 == -1)
          {
            v18 = v16;
          }

          v15 = (v15 + v19) & v11;
          v16 = &m_table[14 * v15];
          v17 = *v16;
          ++v19;
          if (!*v16)
          {
            if (v18)
            {
              v18[6] = 0;
              *(&v9 + 1) = 0;
              *(v18 + 1) = 0u;
              *(v18 + 2) = 0u;
              *v18 = 0u;
              --*(a1->_methods.m_impl.m_table - 4);
              v16 = v18;
            }

            goto LABEL_15;
          }
        }

        goto LABEL_31;
      }

LABEL_15:
      *v16 = v8;
      v22 = v50;
      v21 = v22 >> 64;
      v20 = v22;
      *&v55 = v50;
      v50 = 0uLL;
      *(&v55 + 1) = v21;
      v23 = v51;
      v51 = 0uLL;
      v56 = v23;
      v24 = *(&v52 + 1);
      v57 = v52;
      v52 = 0uLL;
      v58 = v24;
      v25 = *(v16 + 5);
      v26 = v16[1];
      if (v25)
      {
        v46 = 8 * v25;
        do
        {
          if (*v26)
          {
            v49 = v23;
            v48 = v46;
            WTF::fastFree((*v26 - 16), v5);
            v46 = v48;
            v23 = v49;
          }

          v26 = (v26 + 8);
          v46 -= 8;
        }

        while (v46);
        v26 = v16[1];
      }

      if (v26)
      {
        v16[1] = 0;
        *(v16 + 4) = 0;
        WTF::fastFree(v26, v5);
        v21 = *(&v55 + 1);
        v20 = v55;
        v27 = v56;
      }

      else
      {
        v27 = v23;
      }

      *&v9 = 0;
      v55 = v9;
      v16[1] = v20;
      v16[2] = v21;
      *&v56 = 0;
      v28 = v16[3];
      v16[3] = v27;
      if (v28)
      {
      }

      v29 = *(v16 + 11);
      v30 = v16[4];
      if (v29)
      {
        v47 = 8 * v29;
        do
        {
          if (*v30)
          {
            WTF::fastFree((*v30 - 16), v5);
          }

          v30 = (v30 + 8);
          v47 -= 8;
        }

        while (v47);
        v30 = v16[4];
      }

      if (v30)
      {
        v16[4] = 0;
        *(v16 + 10) = 0;
        WTF::fastFree(v30, v5);
      }

      v16[4] = *(&v56 + 1);
      v31 = v57;
      *(&v56 + 1) = 0;
      v57 = 0;
      v16[5] = v31;
      v32 = v16[6];
      v16[6] = v58;
      if (v32)
      {
      }

      v58 = 0;
      WTF::Vector<WTF::HashSet<void const*,WTF::DefaultHash<void const*>,WTF::HashTraits<void const*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v56 + 8, v5);
      v34 = v56;
      *&v56 = 0;
      if (v34)
      {
      }

      WTF::Vector<WTF::HashSet<void const*,WTF::DefaultHash<void const*>,WTF::HashTraits<void const*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v55, v33);
      v35 = a1->_methods.m_impl.m_table;
      if (v35)
      {
        v36 = *(v35 - 3) + 1;
      }

      else
      {
        v36 = 1;
      }

      *(v35 - 3) = v36;
      v37 = (*(v35 - 4) + v36);
      v38 = *(v35 - 1);
      if (v38 > 0x400)
      {
        if (v38 <= 2 * v37)
        {
LABEL_44:
          v16 = WTF::HashTable<objc_selector *,WTF::KeyValuePair<objc_selector *,MethodInfo>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<objc_selector *,MethodInfo>>,WTF::DefaultHash<objc_selector *>,WTF::HashMap<objc_selector *,MethodInfo,WTF::DefaultHash<objc_selector *>,WTF::HashTraits<objc_selector *>,WTF::HashTraits<MethodInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<objc_selector *>,WTF::FastMalloc>::expand(&a1->_methods, v16);
        }
      }

      else if (3 * v38 <= 4 * v37)
      {
        goto LABEL_44;
      }

LABEL_31:
      v39 = *(&v52 + 1);
      *(&v52 + 1) = 0;
      if (v39)
      {
      }

      WTF::Vector<WTF::HashSet<void const*,WTF::DefaultHash<void const*>,WTF::HashTraits<void const*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v51 + 8, v5);
      v41 = v51;
      *&v51 = 0;
      if (v41)
      {
      }

      WTF::Vector<WTF::HashSet<void const*,WTF::DefaultHash<void const*>,WTF::HashTraits<void const*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v50, v40);
      MethodTypeEncoding = _protocol_getMethodTypeEncoding();
      if (!MethodTypeEncoding)
      {
        [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Could not find method type encoding for method %s", sel_getName(v8)}];
      }

      v43 = [MEMORY[0x1E695DF68] signatureWithObjCTypes:MethodTypeEncoding];
      v44 = v43;
      if (v43)
      {
        v45 = v43;
      }

      initializeMethod((v16 + 1), this, v8, v44, 0);
      if (v44)
      {
      }

      v6 += 2;
      if (v6 == v7)
      {
        v6 = v53;
        break;
      }
    }
  }

  free(v6);
}

void sub_19D5E5B84(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, char a22)
{
  MethodInfo::~MethodInfo(&a22, a2);
  MethodInfo::~MethodInfo(&a13, v23);
  free(a20);
  _Unwind_Resume(a1);
}

uint64_t WTF::Vector<WTF::HashSet<void const*,WTF::DefaultHash<void const*>,WTF::HashTraits<void const*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  v4 = *a1;
  if (v3)
  {
    v6 = 8 * v3;
    do
    {
      if (*v4)
      {
        WTF::fastFree((*v4 - 16), a2);
      }

      v4 = (v4 + 8);
      v6 -= 8;
    }

    while (v6);
    v4 = *a1;
  }

  if (v4)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  return a1;
}

void initializeMethod(MethodInfo *a1, Protocol *a2, objc_selector *a3, NSMethodSignature *a4, int a5)
{
  v55[1] = *MEMORY[0x1E69E9840];
  if (a5)
  {
    v41 = [MEMORY[0x1E695DF50] invocationWithMethodSignature:a4];
    v42 = v41;
    if (v41)
    {
      v43 = v41;
    }

    v44 = *(a1 + 5);
    *(a1 + 5) = v42;
    if (v44)
    {
    }

    v20 = (a1 + 24);
    v19 = 1;
  }

  else
  {
    MethodDescription = protocol_getMethodDescription(a2, a3, 1, 1);
    types = MethodDescription.types;
    if (!MethodDescription.name)
    {
      v49 = protocol_getMethodDescription(a2, a3, 0, 1);
      types = v49.types;
      if (!v49.name)
      {
        types = 0;
      }
    }

    v12 = [MEMORY[0x1E695DF68] signatureWithObjCTypes:types];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    v15 = [MEMORY[0x1E695DF50] invocationWithMethodSignature:v13];
    v16 = v15;
    if (v15)
    {
      v17 = v15;
    }

    v18 = *(a1 + 2);
    *(a1 + 2) = v16;
    if (v18)
    {
    }

    if (v13)
    {
    }

    v19 = 2;
    v20 = a1;
  }

  v21 = [(NSMethodSignature *)a4 numberOfArguments];
  if (v19 < v21)
  {
    v22 = v21;
    v23 = 0;
    while (1)
    {
      v24 = [(NSMethodSignature *)a4 getArgumentTypeAtIndex:v19];
      v26 = v24;
      if (!v24)
      {
        break;
      }

      v27 = strlen(v24);
      if (!v27 || *v26 != 64)
      {
        break;
      }

      if (v27 != 1 && v26[1] == 63)
      {
        if (a5)
        {
          v53 = MEMORY[0x1E695DF30];
          Name = protocol_getName(a2);
          [v53 raise:*MEMORY[0x1E695D940] format:{@"Blocks as arguments to the reply block of method (%s / %s) are not allowed", Name, sel_getName(a3)}];
        }

        if (v23)
        {
          v51 = MEMORY[0x1E695DF30];
          v52 = protocol_getName(a2);
          [v51 raise:*MEMORY[0x1E695D940] format:{@"Only one reply block is allowed per method (%s / %s)", v52, sel_getName(a3)}];
        }

        v45 = [(NSMethodSignature *)a4 _signatureForBlockAtArgumentIndex:v19];
        v46 = v45;
        if (v45)
        {
          v47 = v45;
        }

        initializeMethod(a1, a2, a3, v46, 1);
        if (v46)
        {
        }

        v23 = 1;
      }

      v28 = [(NSMethodSignature *)a4 _classForObjectAtArgumentIndex:v19];
      v29 = v28;
      if (!v28)
      {
        v54 = 0;
        v36 = *(v20 + 3);
        if (v36 == *(v20 + 2))
        {
          goto LABEL_48;
        }

LABEL_29:
        v37 = *v20;
        *(*v20 + 8 * v36) = 0;
        v38 = v54;
        v54 = 0;
        *(v37 + 8 * v36) = v38;
        goto LABEL_30;
      }

      v30 = v28;
      v55[0] = v29;
      WTF::HashSet<void const*,WTF::DefaultHash<void const*>,WTF::HashTraits<void const*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet(&v54, v55, 1);
      v32 = *(v20 + 3);
      if (v32 == *(v20 + 2))
      {
        v35 = WTF::Vector<WTF::HashSet<void const*,WTF::DefaultHash<void const*>,WTF::HashTraits<void const*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(v20, v32 + 1, &v54);
        v32 = *(v20 + 3);
        v33 = *v20;
        *(*v20 + 8 * v32) = 0;
        v34 = *v35;
        *v35 = 0;
      }

      else
      {
        v33 = *v20;
        *(*v20 + 8 * v32) = 0;
        v34 = v54;
        v54 = 0;
      }

      *(v33 + 8 * v32) = v34;
      *(v20 + 3) = v32 + 1;
      if (v54)
      {
        WTF::fastFree((v54 - 16), v31);
      }

LABEL_25:
      if (v22 == ++v19)
      {
        return;
      }
    }

    v54 = 0;
    v36 = *(v20 + 3);
    if (v36 != *(v20 + 2))
    {
      goto LABEL_29;
    }

LABEL_48:
    v48 = WTF::Vector<WTF::HashSet<void const*,WTF::DefaultHash<void const*>,WTF::HashTraits<void const*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(v20, v36 + 1, &v54);
    v36 = *(v20 + 3);
    v39 = *v20;
    *(*v20 + 8 * v36) = 0;
    v40 = *v48;
    *v48 = 0;
    *(v39 + 8 * v36) = v40;
LABEL_30:
    *(v20 + 3) = v36 + 1;
    if (v54)
    {
      WTF::fastFree((v54 - 16), v25);
    }

    goto LABEL_25;
  }
}

void sub_19D5E6008(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    WTF::fastFree((a12 - 16), a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *WTF::HashSet<void const*,WTF::DefaultHash<void const*>,WTF::HashTraits<void const*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = 0;
  if (a3)
  {
    v6 = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::computeBestTableSize(a3);
    v7 = WTF::fastZeroedMalloc((8 * v6 + 16));
    *a1 = v7 + 16;
    *(v7 + 8) = v6 - 1;
    *(v7 + 12) = v6;
    v8 = &a2[a3];
    *v7 = 0;
    do
    {
      v9 = *a2;
      if (*a2 == -1 || !v9)
      {
        __break(0xC471u);
        JUMPOUT(0x19D5E6224);
      }

      v10 = *a1;
      if (!*a1)
      {
        WTF::HashTable<void const*,void const*,WTF::IdentityExtractor,WTF::DefaultHash<void const*>,WTF::HashTraits<void const*>,WTF::HashTraits<void const*>,WTF::FastMalloc>::expand(a1, 0);
        v10 = *a1;
        v9 = *a2;
      }

      v11 = *(v10 - 8);
      v12 = (v9 + ~(v9 << 32)) ^ ((v9 + ~(v9 << 32)) >> 22);
      v13 = 9 * ((v12 + ~(v12 << 13)) ^ ((v12 + ~(v12 << 13)) >> 8));
      v14 = (v13 ^ (v13 >> 15)) + ~((v13 ^ (v13 >> 15)) << 27);
      v15 = v11 & ((v14 >> 31) ^ v14);
      v16 = (v10 + 8 * v15);
      v17 = *v16;
      if (*v16)
      {
        v23 = 0;
        v24 = 1;
        while (v17 != v9)
        {
          if (v17 == -1)
          {
            v23 = v16;
          }

          v15 = (v15 + v24) & v11;
          v16 = (v10 + 8 * v15);
          v17 = *v16;
          ++v24;
          if (!*v16)
          {
            if (v23)
            {
              *v23 = 0;
              --*(*a1 - 16);
              v9 = *a2;
              v16 = v23;
            }

            goto LABEL_8;
          }
        }

        goto LABEL_12;
      }

LABEL_8:
      *v16 = v9;
      v18 = *a1;
      if (*a1)
      {
        v19 = *(v18 - 12) + 1;
      }

      else
      {
        v19 = 1;
      }

      *(v18 - 12) = v19;
      v20 = (*(v18 - 16) + v19);
      v21 = *(v18 - 4);
      if (v21 > 0x400)
      {
        if (v21 <= 2 * v20)
        {
LABEL_15:
          WTF::HashTable<void const*,void const*,WTF::IdentityExtractor,WTF::DefaultHash<void const*>,WTF::HashTraits<void const*>,WTF::HashTraits<void const*>,WTF::FastMalloc>::expand(a1, v16);
        }
      }

      else if (3 * v21 <= 4 * v20)
      {
        goto LABEL_15;
      }

LABEL_12:
      ++a2;
    }

    while (a2 != v8);
  }

  return a1;
}

void sub_19D5E6248(_Unwind_Exception *exception_object, void *a2)
{
  if (*v2)
  {
    WTF::fastFree((*v2 - 16), a2);
  }

  _Unwind_Resume(exception_object);
}

unint64_t WTF::Vector<WTF::HashSet<void const*,WTF::DefaultHash<void const*>,WTF::HashTraits<void const*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 <= a3 && v5 + 8 * *(a1 + 12) > a3)
  {
    v10 = a3 - v5;
    v11 = *(a1 + 8);
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

    WTF::Vector<WTF::HashSet<void const*,WTF::DefaultHash<void const*>,WTF::HashTraits<void const*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v13);
    return *a1 + v10;
  }

  else
  {
    v6 = *(a1 + 8);
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

    WTF::Vector<WTF::HashSet<void const*,WTF::DefaultHash<void const*>,WTF::HashTraits<void const*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v8);
  }

  return v3;
}

uint64_t WTF::Vector<WTF::HashSet<void const*,WTF::DefaultHash<void const*>,WTF::HashTraits<void const*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t result, unint64_t a2)
{
  if (*(result + 8) < a2)
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
      v5 = *(result + 12);
      result = WTF::fastMalloc((8 * a2));
      *(v3 + 8) = v2;
      *v3 = result;
      if (v5)
      {
        v7 = result;
        v8 = 8 * v5;
        v9 = v4;
        do
        {
          *v7 = 0;
          v10 = *v9;
          *v9 = 0;
          *v7 = v10;
          if (*v9)
          {
            result = WTF::fastFree((*v9 - 16), v6);
          }

          ++v7;
          v9 = (v9 + 8);
          v8 -= 8;
        }

        while (v8);
      }

      if (v4)
      {
        if (*v3 == v4)
        {
          *v3 = 0;
          *(v3 + 8) = 0;
        }

        return WTF::fastFree(v4, v6);
      }
    }
  }

  return result;
}

unint64_t classesForSelectorArgument(_WKRemoteObjectInterface *a1, objc_selector *a2, unint64_t a3, int a4)
{
  v15 = a2;
  v8 = WTF::HashTable<objc_selector *,WTF::KeyValuePair<objc_selector *,MethodInfo>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<objc_selector *,MethodInfo>>,WTF::DefaultHash<objc_selector *>,WTF::HashMap<objc_selector *,MethodInfo,WTF::DefaultHash<objc_selector *>,WTF::HashTraits<objc_selector *>,WTF::HashTraits<MethodInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<objc_selector *>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<objc_selector *,MethodInfo,WTF::DefaultHash<objc_selector *>,WTF::HashTraits<objc_selector *>,WTF::HashTraits<MethodInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<objc_selector *>>,(WTF::ShouldValidateKey)1,objc_selector *>(&a1->_methods, &v15);
  v9 = v8;
  m_table = a1->_methods.m_impl.m_table;
  if (m_table)
  {
    m_table += 7 * *(m_table - 1);
  }

  if (m_table == v8)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Interface does not contain selector %s", sel_getName(a2)}];
    if (a4)
    {
LABEL_5:
      if (!v9[6])
      {
        [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Selector %s does not have a reply block", sel_getName(a2)}];
      }

      v11 = v9 + 4;
      v12 = *(v9 + 11);
      if (v12 <= a3)
      {
        [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Argument index %ld is out of range for reply block of selector %s", a3, sel_getName(a2)}];
        v12 = *(v9 + 11);
      }

      if (v12 <= a3)
      {
        goto LABEL_16;
      }

      return *v11 + 8 * a3;
    }
  }

  else if (a4)
  {
    goto LABEL_5;
  }

  v11 = v9 + 1;
  v13 = *(v9 + 5);
  if (v13 <= a3)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Argument index %ld is out of range for selector %s", a3, sel_getName(a2)}];
    v13 = *(v9 + 5);
  }

  if (v13 <= a3)
  {
LABEL_16:
    __break(0xC471u);
    JUMPOUT(0x19D5E6504);
  }

  return *v11 + 8 * a3;
}

WebKit::RemoteObjectRegistry *WebKit::RemoteObjectRegistry::RemoteObjectRegistry(WebKit::RemoteObjectRegistry *this, _WKRemoteObjectRegistry *a2)
{
  *(this + 1) = 0;
  *this = &unk_1F10EEB58;
  *(this + 2) = 0;
  objc_initWeak(this + 2, a2);
  *(this + 3) = 0;
  return this;
}

void sub_19D5E66E4(_Unwind_Exception *a1, void *a2)
{
  *v2 = &unk_1F10EA5E0;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(v3, a2);
  _Unwind_Resume(a1);
}

uint64_t std::pair<WTF::RetainPtr<objc_object *>,WTF::RetainPtr<_WKRemoteObjectInterface>>::~pair(uint64_t a1)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v2)
  {
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
  }

  return a1;
}

void sub_19D5E6800(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  WebKit::PageLoadState::deref((v10 + 1120));
  _Unwind_Resume(a1);
}

unsigned __int8 *WebKit::PageLoadState::activeURL@<X0>(unsigned __int8 *this@<X0>, atomic_uint **a2@<X8>)
{
  v3 = *(this + 2);
  if (v3 || (v3 = *(this + 9)) != 0 && v3[1])
  {
LABEL_9:
    atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
    goto LABEL_10;
  }

  if (*this - 1 < 2)
  {
    v3 = *(this + 4);
    if (!v3)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (*this)
  {
    v3 = 0;
    goto LABEL_10;
  }

  v3 = *(this + 3);
  if (v3)
  {
    goto LABEL_9;
  }

LABEL_10:
  *a2 = v3;
  return this;
}

uint64_t WebKit::PageLoadState::hasOnlySecureContent(WebKit::PageLoadState *this, const Data *a2)
{
  if (*(this + 1))
  {
    return 0;
  }

  else
  {
    return WTF::protocolIs();
  }
}

void sub_19D5E6B88(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (v10)
  {
    WTF::fastFree(v10, a2);
  }

  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::RegisterUIProcessAccessibilityTokens>(uint64_t a1, const void ***a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 2657;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(v8, **a2, (*a2)[1]);
  IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(v8, *a2[1], a2[1][1]);
  LOBYTE(v16) = 0;
  v17 = 0;
  v10 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v18, a4, &v16, 1);
  if (v17 == 1)
  {
    v11 = v16;
    v16 = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }
  }

  v12 = v18;
  v18 = 0;
  if (v12)
  {
    IPC::Encoder::~Encoder(v12, v9);
    bmalloc::api::tzoneFree(v14, v15);
  }

  return v10;
}