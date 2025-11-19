WebKit::WebBackForwardListFrameItem *WebKit::WebBackForwardListFrameItem::mainFrame(WebKit::WebBackForwardListFrameItem *this, void *a2)
{
  ++*(this + 2);
  v2 = *(this + 6);
  if (v2)
  {
    while (1)
    {
      v3 = *(v2 + 8);
      if (!v3)
      {
        break;
      }

      ++*(v3 + 2);
      WTF::RefCounted<WebKit::WebBackForwardListFrameItem>::deref(this + 2, a2);
      v2 = *(v3 + 6);
      this = v3;
      if (!v2)
      {
        goto LABEL_6;
      }
    }
  }

  v3 = this;
LABEL_6:
  WTF::RefCounted<WebKit::WebBackForwardListFrameItem>::deref(v3 + 2, a2);
  return v3;
}

uint64_t WebKit::WebBackForwardListFrameItem::setWasRestoredFromSession(uint64_t this)
{
  *(*(this + 40) + 209) = 1;
  v1 = *(this + 68);
  if (v1)
  {
    v2 = *(this + 56);
    v3 = 8 * v1;
    do
    {
      v4 = *v2++;
      this = WebKit::WebBackForwardListFrameItem::setWasRestoredFromSession(v4);
      v3 -= 8;
    }

    while (v3);
  }

  return this;
}

unsigned int *WebKit::WebBackForwardListFrameItem::setFrameState(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  v4 = *(a1 + 40);
  *(a1 + 40) = v3;
  if (v4)
  {
    WTF::RefCounted<WebKit::FrameState>::deref(v4);
    v3 = *(a1 + 40);
  }

  return WTF::Vector<WTF::Ref<WebKit::FrameState,WTF::RawPtrTraits<WebKit::FrameState>,WTF::DefaultRefDerefTraits<WebKit::FrameState>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity((v3 + 376), 0);
}

WebKit::FrameState *WebKit::WebBackForwardListFrameItem::copyFrameStateWithChildren@<X0>(WebKit::WebBackForwardListFrameItem *this@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(this + 5);
  ++*v4;
  WebKit::FrameState::copy(v4, a2);
  result = WTF::RefCounted<WebKit::FrameState>::deref(v4);
  v6 = *(this + 17);
  if (v6)
  {
    v7 = *(this + 7);
    v8 = 8 * v6;
    do
    {
      v9 = *a2;
      WebKit::WebBackForwardListFrameItem::copyFrameStateWithChildren(&v14, *v7);
      v10 = *(v9 + 388);
      if (v10 == *(v9 + 384))
      {
        v11 = WTF::Vector<WTF::Ref<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(v9 + 376, v10 + 1, &v14);
        v10 = *(v9 + 388);
        v12 = *(v9 + 376);
        v13 = *v11;
        *v11 = 0;
      }

      else
      {
        v12 = *(v9 + 376);
        v13 = v14;
        v14 = 0;
      }

      *(v12 + 8 * v10) = v13;
      *(v9 + 388) = v10 + 1;
      result = v14;
      v14 = 0;
      if (result)
      {
        result = WTF::RefCounted<WebKit::FrameState>::deref(result);
      }

      ++v7;
      v8 -= 8;
    }

    while (v8);
  }

  return result;
}

uint64_t WebKit::WebBackForwardListFrameItem::sharesAncestor(WebKit::WebBackForwardListFrameItem *this, WebKit::WebBackForwardListFrameItem *a2)
{
  v44 = 0;
  v3 = *(this + 6);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      v6 = (v4 + 24);
      v5 = *(v4 + 24);
      ++*(v4 + 8);
      v8 = (v4 + 32);
      v7 = *(v4 + 32);
      while (1)
      {
        if (!(v5 | v7))
        {
          __break(0xC471u);
          JUMPOUT(0x19DE68AC4);
        }

        if (v7 == -1)
        {
          __break(0xC471u);
          JUMPOUT(0x19DE68AE4);
        }

        v9 = v44;
        if (v44 || (WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::expand(&v44), (v9 = v44) != 0))
        {
          v10 = *(v9 - 8);
        }

        else
        {
          v10 = 0;
        }

        v11 = WTF::IdentityHashTranslator<WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>::hash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(*v6, *v8) & v10;
        v12 = (v9 + 16 * v11);
        v14 = *v12;
        v13 = v12[1];
        v15 = *v6;
        v16 = *v8;
        if (*v12 == 0)
        {
LABEL_18:
          *v12 = v15;
          v12[1] = v16;
          v19 = v44;
          if (v44)
          {
            v20 = *(v44 - 12) + 1;
          }

          else
          {
            v20 = 1;
          }

          *(v44 - 12) = v20;
          v21 = (*(v19 - 16) + v20);
          v22 = *(v19 - 4);
          if (v22 > 0x400)
          {
            if (v22 > 2 * v21)
            {
              goto LABEL_24;
            }

LABEL_23:
            WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::expand(&v44);
            goto LABEL_24;
          }

          if (3 * v22 <= 4 * v21)
          {
            goto LABEL_23;
          }
        }

        else
        {
          v17 = 0;
          v18 = 1;
          while (v14 != v15 || v13 != v16)
          {
            if (v13 == -1)
            {
              v17 = v12;
            }

            v11 = (v11 + v18) & v10;
            v12 = (v9 + 16 * v11);
            v14 = *v12;
            v13 = v12[1];
            ++v18;
            if (*v12 == 0)
            {
              if (v17)
              {
                *v17 = 0;
                v17[1] = 0;
                --*(v9 - 16);
                v15 = *v6;
                v16 = *v8;
                v12 = v17;
              }

              goto LABEL_18;
            }
          }
        }

LABEL_24:
        v23 = *(v4 + 48);
        if (!v23 || (v24 = *(v23 + 8)) == 0)
        {
          WTF::RefCounted<WebKit::WebBackForwardListFrameItem>::deref((v4 + 8), v12);
          break;
        }

        ++*(v24 + 8);
        WTF::RefCounted<WebKit::WebBackForwardListFrameItem>::deref((v4 + 8), v12);
        v6 = (v24 + 24);
        v5 = *(v24 + 24);
        v8 = (v24 + 32);
        v7 = *(v24 + 32);
        v4 = v24;
      }
    }
  }

  v25 = *(a2 + 6);
  if (!v25)
  {
    v42 = 0;
    v27 = v44;
    if (!v44)
    {
      return v42;
    }

    goto LABEL_56;
  }

  v26 = *(v25 + 8);
  v27 = v44;
  if (!v26)
  {
    v42 = 0;
    if (!v44)
    {
      return v42;
    }

    goto LABEL_56;
  }

  ++*(v26 + 8);
  if (!v27)
  {
    goto LABEL_48;
  }

LABEL_34:
  v28 = *(v26 + 32);
  if (*(v26 + 24) == 0)
  {
    __break(0xC471u);
    JUMPOUT(0x19DE68B04);
  }

  if (v28 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DE68B24);
  }

  v29 = *(v27 - 8);
  v30 = WTF::IdentityHashTranslator<WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>::hash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(*(v26 + 24), v28);
  v31 = *(v26 + 24);
  v32 = *(v26 + 32);
  v33 = v30 & v29;
  v34 = (v27 + 16 * (v30 & v29));
  v35 = *v34;
  v36 = v34[1];
  if (*v34 == v31 && v36 == v32)
  {
LABEL_52:
    v42 = 1;
  }

  else
  {
    v38 = 1;
    while (v35 | v36)
    {
      v33 = (v33 + v38) & v29;
      v39 = (v27 + 16 * v33);
      v35 = *v39;
      v36 = v39[1];
      ++v38;
      if (v35 == v31 && v36 == v32)
      {
        goto LABEL_52;
      }
    }

LABEL_48:
    while (1)
    {
      v41 = *(v26 + 48);
      if (!v41)
      {
        break;
      }

      v42 = *(v41 + 8);
      if (!v42)
      {
        goto LABEL_53;
      }

      ++*(v42 + 8);
      WTF::RefCounted<WebKit::WebBackForwardListFrameItem>::deref((v26 + 8), a2);
      v26 = v42;
      if (v27)
      {
        goto LABEL_34;
      }
    }

    v42 = 0;
  }

LABEL_53:
  WTF::RefCounted<WebKit::WebBackForwardListFrameItem>::deref((v26 + 8), a2);
  if (v27)
  {
LABEL_56:
    WTF::fastFree((v27 - 16), a2);
  }

  return v42;
}

uint64_t WebKit::WebBackForwardListItem::create@<X0>(WTF::RunLoop *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t *a5@<X8>)
{
  v10 = WTF::RunLoop::mainSingleton(a1);
  if (WTF::RunLoop::isCurrent(v10))
  {
    v11 = API::Object::newObject(0x90uLL, 43);
    result = WebKit::WebBackForwardListItem::WebBackForwardListItem(v11, a1, a2, a3, a4);
    *a5 = result;
  }

  else
  {
    result = 45;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::WebBackForwardListItem::WebBackForwardListItem(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = API::Object::Object(a1);
  *v10 = &unk_1F110D9D0;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  if (*(*a2 + 144))
  {
    *(a1 + 32) = *(*a2 + 144);
    v11 = WTF::fastMalloc(0x48);
    v12 = WebKit::WebBackForwardListFrameItem::WebBackForwardListFrameItem(v11, a1, 0, a2);
    if (a5)
    {
      v13 = a4;
    }

    else
    {
      v13 = 0;
    }

    *(a1 + 48) = v12;
    *(a1 + 56) = v13;
    *(a1 + 64) = 0;
    WTF::URL::invalidate((a1 + 64));
    *(a1 + 104) = a3;
    v14 = WebKit::WebBackForwardListItem::navigatedFrameItem(a1);
    v15 = *(v14 + 4);
    *(a1 + 136) = 0;
    *(a1 + 112) = v15;
    *(a1 + 120) = 0;
    *(a1 + 128) = 0;
    WebKit::WebBackForwardListItem::allItems(v14);
    WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::WeakRef<WebKit::WebBackForwardListItem,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebBackForwardListItem,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WebKit::WebBackForwardListItem&>(&WebKit::WebBackForwardListItem::allItems(void)::items, (a1 + 32), a1, v17);
    return a1;
  }

  else
  {
    result = 158;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::WebBackForwardListItem::navigatedFrameItem(WebKit::WebBackForwardListItem *this)
{
  v2 = *(this + 6);
  v1 = *(this + 7);
  if (v1)
  {
    v3 = WebKit::WebBackForwardListFrameItem::childItemForFrameID(*(this + 6), v1);
    if (v3)
    {
      v5 = v3;
      v7 = *(v3 + 8);
      v6 = (v3 + 8);
      *v6 = v7 + 1;
      WTF::RefCounted<WebKit::WebBackForwardListFrameItem>::deref(v6, v4);
      return v5;
    }
  }

  return v2;
}

uint64_t WebKit::WebBackForwardListItem::allItems(WebKit::WebBackForwardListItem *this)
{
  v1 = WTF::RunLoop::mainSingleton(this);
  if (WTF::RunLoop::isCurrent(v1))
  {
    {
      WebKit::WebBackForwardListItem::allItems(void)::items = 0;
    }

    return &WebKit::WebBackForwardListItem::allItems(void)::items;
  }

  else
  {
    result = 70;
    __break(0xC471u);
  }

  return result;
}

uint64_t WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::WeakRef<WebKit::WebBackForwardListItem,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebBackForwardListItem,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WebKit::WebBackForwardListItem&>@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*a2 == 0 || a2[1] == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DE68F8CLL);
  }

  v8 = *a1;
  if (*a1 || (WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::WeakRef<WebKit::WebBackForwardListItem,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::WeakRef<WebKit::WebBackForwardListItem,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::WeakRef<WebKit::WebBackForwardListItem,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebBackForwardListItem,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::expand(a1, 0), (v8 = *a1) != 0))
  {
    v9 = *(v8 - 8);
  }

  else
  {
    v9 = 0;
  }

  result = WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>::hash(a2);
  v11 = result & v9;
  v12 = (v8 + 24 * (result & v9));
  v14 = *v12;
  v13 = v12[1];
  if (*v12 != 0)
  {
    v15 = 0;
    v16 = 1;
    do
    {
      if (v14 == *a2 && v13 == a2[1])
      {
        v23 = *a1;
        if (*a1)
        {
          v24 = *(v23 - 4);
        }

        else
        {
          v24 = 0;
        }

        v26 = 0;
        v25 = v23 + 24 * v24;
        goto LABEL_30;
      }

      if (v13 == -1)
      {
        v15 = v12;
      }

      v11 = (v11 + v16) & v9;
      v12 = (v8 + 24 * v11);
      v14 = *v12;
      v13 = v12[1];
      ++v16;
    }

    while (*v12 != 0);
    if (v15)
    {
      *v15 = 0;
      v15[1] = 0;
      v15[2] = 0;
      --*(*a1 - 16);
      v12 = v15;
    }
  }

  *v12 = *a2;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a3 + 16), a3);
  v18 = *(a3 + 16);
  atomic_fetch_add(v18, 1u);
  result = v12[2];
  v12[2] = v18;
  if (result && atomic_fetch_add(result, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, result);
    result = WTF::fastFree(result, v17);
  }

  v19 = *a1;
  if (*a1)
  {
    v20 = *(v19 - 12) + 1;
  }

  else
  {
    v20 = 1;
  }

  *(v19 - 12) = v20;
  v21 = (*(v19 - 16) + v20);
  v22 = *(v19 - 4);
  if (v22 > 0x400)
  {
    if (v22 <= 2 * v21)
    {
LABEL_21:
      result = WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::WeakRef<WebKit::WebBackForwardListItem,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::WeakRef<WebKit::WebBackForwardListItem,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::WeakRef<WebKit::WebBackForwardListItem,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebBackForwardListItem,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::expand(a1, v12);
      v12 = result;
      v19 = *a1;
      if (*a1)
      {
        LODWORD(v22) = *(v19 - 4);
      }

      else
      {
        LODWORD(v22) = 0;
      }
    }
  }

  else if (3 * v22 <= 4 * v21)
  {
    goto LABEL_21;
  }

  v25 = v19 + 24 * v22;
  v26 = 1;
LABEL_30:
  *a4 = v12;
  *(a4 + 8) = v25;
  *(a4 + 16) = v26;
  return result;
}

void WebKit::WebBackForwardListItem::~WebBackForwardListItem(WebKit::WebBackForwardListItem *this)
{
  *this = &unk_1F110D9D0;
  v2 = WTF::RunLoop::mainSingleton(this);
  isCurrent = WTF::RunLoop::isCurrent(v2);
  if ((isCurrent & 1) == 0)
  {
    goto LABEL_49;
  }

  WebKit::WebBackForwardListItem::allItems(isCurrent);
  v4 = WebKit::WebBackForwardListItem::allItems(void)::items;
  if (!WebKit::WebBackForwardListItem::allItems(void)::items)
  {
    goto LABEL_29;
  }

  if (*(this + 2) == 0)
  {
    __break(0xC471u);
    JUMPOUT(0x19DE69218);
  }

  if (*(this + 5) == -1)
  {
LABEL_49:
    __break(0xC471u);
    JUMPOUT(0x19DE691F8);
  }

  v5 = *(WebKit::WebBackForwardListItem::allItems(void)::items - 8);
  v6 = WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>::hash(this + 4);
  v8 = *(this + 4);
  v9 = *(this + 5);
  v10 = v6 & v5;
  v11 = (v4 + 24 * (v6 & v5));
  v12 = *v11;
  v13 = v11[1];
  if (*v11 == v8 && v13 == v9)
  {
LABEL_16:
    v17 = WebKit::WebBackForwardListItem::allItems(void)::items;
    if (!WebKit::WebBackForwardListItem::allItems(void)::items)
    {
LABEL_21:
      if (v17 != v11)
      {
        *v11 = -1;
        v11[1] = -1;
        v18 = v11[2];
        v11[2] = 0;
        if (v18 && atomic_fetch_add(v18, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v18);
          WTF::fastFree(v18, v7);
        }

        v19 = WebKit::WebBackForwardListItem::allItems(void)::items;
        v20 = vadd_s32(*(WebKit::WebBackForwardListItem::allItems(void)::items - 16), 0xFFFFFFFF00000001);
        *(WebKit::WebBackForwardListItem::allItems(void)::items - 16) = v20;
        v21 = *(v19 - 4);
        if (6 * v20.i32[1] < v21 && v21 >= 9)
        {
          WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::WeakRef<WebKit::WebBackForwardListItem,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::WeakRef<WebKit::WebBackForwardListItem,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::WeakRef<WebKit::WebBackForwardListItem,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebBackForwardListItem,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::rehash(&WebKit::WebBackForwardListItem::allItems(void)::items, v21 >> 1, 0);
        }
      }

      goto LABEL_29;
    }

LABEL_20:
    v17 += 24 * *(v17 - 4);
    if (v17 == v11)
    {
      goto LABEL_29;
    }

    goto LABEL_21;
  }

  v15 = 1;
  while (v12 | v13)
  {
    v10 = (v10 + v15) & v5;
    v11 = (v4 + 24 * v10);
    v12 = *v11;
    v13 = v11[1];
    ++v15;
    if (*v11 == v8 && v13 == v9)
    {
      goto LABEL_16;
    }
  }

  v17 = WebKit::WebBackForwardListItem::allItems(void)::items;
  if (WebKit::WebBackForwardListItem::allItems(void)::items)
  {
    v11 = (WebKit::WebBackForwardListItem::allItems(void)::items + 24 * *(WebKit::WebBackForwardListItem::allItems(void)::items - 4));
    goto LABEL_20;
  }

LABEL_29:
  WebKit::WebBackForwardListItem::removeFromBackForwardCache(this);
  v24 = *(this + 16);
  *(this + 16) = 0;
  if (v24)
  {
    WTF::RefCounted<WebKit::ViewSnapshot>::deref((v24 + 8));
  }

  v25 = *(this + 15);
  *(this + 15) = 0;
  if (v25)
  {
    WTF::RefCounted<WebKit::WebBackForwardCacheEntry>::deref(v25);
  }

  v26 = *(this + 8);
  *(this + 8) = 0;
  if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v26, v23);
  }

  v27 = *(this + 6);
  *(this + 6) = 0;
  if (v27)
  {
    WTF::RefCounted<WebKit::WebBackForwardListFrameItem>::deref((v27 + 8), v23);
  }

  v28 = *(this + 3);
  *(this + 3) = 0;
  if (v28)
  {
    CFRelease(*(v28 + 8));
  }

  v29 = *(this + 2);
  if (v29)
  {
    *(v29 + 8) = 0;
    v30 = *(this + 2);
    *(this + 2) = 0;
    if (v30)
    {
      if (atomic_fetch_add(v30, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v30);
        WTF::fastFree(v30, v23);
      }
    }
  }
}

{
  WebKit::WebBackForwardListItem::~WebBackForwardListItem(this);

  JUMPOUT(0x19EB14CF0);
}

WebKit::WebBackForwardCacheEntry *WebKit::WebBackForwardListItem::removeFromBackForwardCache(WebKit::WebBackForwardCacheEntry *this)
{
  v1 = *(this + 15);
  if (v1)
  {
    ++*v1;
    v2 = *(v1 + 1);
    if (v2)
    {
      v3 = *(v2 + 8);
      if (v3)
      {
        v4 = this;
        WebKit::WebBackForwardCache::ref(*(v2 + 8));
        WebKit::WebBackForwardCache::removeEntry(v3, v4);
        WebKit::WebBackForwardCache::deref(v3);
      }
    }

    return WTF::RefCounted<WebKit::WebBackForwardCacheEntry>::deref(v1);
  }

  return this;
}

uint64_t WebKit::WebBackForwardListItem::itemIsClone(WebKit::WebBackForwardListFrameItem **this, WebKit::WebBackForwardListFrameItem **a2)
{
  if (this == a2)
  {
    return 0;
  }

  WebKit::WebBackForwardListFrameItem::copyFrameStateWithChildren(this[6], &v16);
  WebKit::WebBackForwardListFrameItem::copyFrameStateWithChildren(a2[6], &v15);
  v4 = v15;
  if (*(v16 + 88) == *(v15 + 88))
  {
    if (*(v16 + 32) == *(v15 + 32))
    {
      v5 = *(v16 + 388);
      if (v5 == *(v15 + 388))
      {
        if (!v5)
        {
          v12 = 1;
LABEL_18:
          v4 = v15;
          v15 = 0;
          if (!v4)
          {
            goto LABEL_20;
          }

          goto LABEL_19;
        }

        v6 = *(v16 + 376);
        v7 = &v6[v5];
        while (1)
        {
          v8 = *(v4 + 388);
          if (!v8)
          {
            break;
          }

          v9 = *v6;
          v10 = *(v4 + 376);
          v11 = 8 * v8;
          while ((WTF::equal(*(*v10 + 32), *(v9 + 32), v3) & 1) == 0)
          {
            v10 += 8;
            v11 -= 8;
            if (!v11)
            {
              goto LABEL_17;
            }
          }

          if (!*v10)
          {
            break;
          }

          ++v6;
          v12 = 1;
          if (v6 == v7)
          {
            goto LABEL_18;
          }
        }
      }
    }

LABEL_17:
    v12 = 0;
    goto LABEL_18;
  }

  v12 = 0;
  v15 = 0;
LABEL_19:
  WTF::RefCounted<WebKit::FrameState>::deref(v4);
LABEL_20:
  v13 = v16;
  v16 = 0;
  if (v13)
  {
    WTF::RefCounted<WebKit::FrameState>::deref(v13);
  }

  return v12;
}

uint64_t WebKit::WebCompiledContentRuleList::create@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  if (a1[1])
  {
    result = WTF::fastMalloc(0x60);
    *(result + 8) = 1;
    *result = &unk_1F110D9F8;
    v5 = *a1;
    *a1 = 0;
    *(result + 16) = v5;
    v6 = a1[1];
    a1[1] = 0;
    *(result + 24) = v6;
    v7 = *(a1 + 1);
    v8 = *(a1 + 2);
    v9 = *(a1 + 4);
    *(result + 64) = *(a1 + 3);
    *(result + 80) = v9;
    *(result + 32) = v7;
    *(result + 48) = v8;
  }

  else
  {
    result = 0;
  }

  *a2 = result;
  return result;
}

void WebKit::WebCompiledContentRuleList::~WebCompiledContentRuleList(WebKit::WebCompiledContentRuleList *this, WTF::StringImpl *a2)
{
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v3);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  MEMORY[0x1EEE56A68](this);
}

{
  WebKit::WebCompiledContentRuleList::~WebCompiledContentRuleList(this, a2);

  WTF::fastFree(v2, v3);
}

unint64_t WebKit::WebCompiledContentRuleList::spanWithOffsetAndLength(unint64_t this, unint64_t a2, unint64_t a3)
{
  v3 = *(this + 8);
  if (a3 + a2 > v3)
  {
    this = 71;
    __break(0xC471u);
  }

  else if (v3 >= a2 && (a3 == -1 || v3 - a2 >= a3))
  {
    return *(this + 16) + a2;
  }

  __break(1u);
  return this;
}

void *WebKit::WebCompiledContentRuleListData::WebCompiledContentRuleListData(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v17 = *a2;
  *a2 = 0;
  *a1 = v17;
  v18 = a1 + 1;
  if (*(a3 + 16) == 1)
  {
    WebCore::SharedMemory::map();
    v19 = *v18;
  }

  else
  {
    v19 = 0;
    *v18 = 0;
  }

  a1[2] = a4;
  a1[3] = a5;
  a1[4] = a6;
  a1[5] = a7;
  a1[6] = a8;
  a1[7] = a9;
  a1[8] = a10;
  a1[9] = a11;
  if (v19)
  {
    v20 = *(v19 + 8);
    if (v20 < a11 + a10 || v20 < a9 + a8 || v20 < a5 + a4 || v20 < a7 + a6)
    {
      *v18 = 0;
      WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v19);
    }
  }

  return a1;
}

{
  return WebKit::WebCompiledContentRuleListData::WebCompiledContentRuleListData(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
}

void WTF::HashMapTranslator<WTF::HashMap<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>::translate<WTF::String const&,WTF::KeyValuePair<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>,WTF::String,WTF::KeyValuePair<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>>> WTF::HashMap<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineAdd<WTF::String const&,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>(WTF::String const&,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>> &&)::{lambda(void)#1}>(uint64_t *a1, atomic_uint **a2, uint64_t **a3)
{
  WTF::String::operator=(a1, a2);
  v5 = **a3;
  **a3 = 0;
  v6 = a1[1];
  a1[1] = v5;
  if (v6)
  {
    v7 = *(v6 + 8);

    CFRelease(v7);
  }
}

uint64_t WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::SharedStringHashStore>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::SharedStringHashStore *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>::call(void *a1)
{
  v1 = a1[1];
  if (v1)
  {
    ++*v1;
  }

  v2 = a1[2];
  v3 = a1[3];
  v4 = (v1 + (v3 >> 1));
  if (v3)
  {
    result = (*(*v4 + v2))();
  }

  else
  {
    result = v2(v4);
    if (!v1)
    {
      return result;
    }
  }

  if (*v1)
  {
    --*v1;
  }

  else
  {
    result = 290;
    __break(0xC471u);
  }

  return result;
}

unsigned int *WTF::Vector<WebKit::SharedStringHashStore::Operation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(unsigned int *result, unint64_t a2)
{
  if (result[2] > a2)
  {
    v2 = result;
    if (result[3] > a2)
    {
      result[3] = a2;
    }

    result = *result;
    if (a2)
    {
      v2[2] = a2;
      result = WTF::fastRealloc(result, (8 * a2));
      *v2 = result;
    }

    else if (result)
    {
      *v2 = 0;
      v2[2] = 0;

      return WTF::fastFree(result, 0);
    }
  }

  return result;
}

_DWORD *WTF::RefCounted<WebKit::WebBackForwardListFrameItem>::deref(_DWORD *result, void *a2)
{
  if (*result == 1)
  {
    WebKit::WebBackForwardListFrameItem::~WebBackForwardListFrameItem((result - 2), a2);

    return WTF::fastFree(v3, v4);
  }

  else
  {
    --*result;
  }

  return result;
}

_DWORD *WTF::HashTable<std::pair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::KeyValuePair<std::pair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::WeakRef<WebKit::WebBackForwardListFrameItem,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::WeakRef<WebKit::WebBackForwardListFrameItem,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<std::pair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::HashMap<std::pair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::WeakRef<WebKit::WebBackForwardListFrameItem,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<std::pair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::HashTraits<std::pair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebBackForwardListFrameItem,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::FastMalloc>::expand()
{
  if (WebKit::WebBackForwardListFrameItem::allItems(void)::items && (v0 = *(WebKit::WebBackForwardListFrameItem::allItems(void)::items - 4)) != 0)
  {
    return WTF::HashTable<std::pair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::KeyValuePair<std::pair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::WeakRef<WebKit::WebBackForwardListFrameItem,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::WeakRef<WebKit::WebBackForwardListFrameItem,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<std::pair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::HashMap<std::pair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::WeakRef<WebKit::WebBackForwardListFrameItem,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<std::pair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::HashTraits<std::pair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebBackForwardListFrameItem,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::FastMalloc>::rehash(v0 << (6 * *(WebKit::WebBackForwardListFrameItem::allItems(void)::items - 12) >= (2 * v0)));
  }

  else
  {
    return WTF::HashTable<std::pair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::KeyValuePair<std::pair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::WeakRef<WebKit::WebBackForwardListFrameItem,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::WeakRef<WebKit::WebBackForwardListFrameItem,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<std::pair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::HashMap<std::pair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::WeakRef<WebKit::WebBackForwardListFrameItem,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<std::pair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::HashTraits<std::pair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebBackForwardListFrameItem,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::FastMalloc>::rehash(8u);
  }
}

_DWORD *WTF::HashTable<std::pair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::KeyValuePair<std::pair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::WeakRef<WebKit::WebBackForwardListFrameItem,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::WeakRef<WebKit::WebBackForwardListFrameItem,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<std::pair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::HashMap<std::pair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::WeakRef<WebKit::WebBackForwardListFrameItem,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<std::pair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::HashTraits<std::pair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebBackForwardListFrameItem,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::FastMalloc>::rehash(unsigned int a1)
{
  v2 = WebKit::WebBackForwardListFrameItem::allItems(void)::items;
  if (WebKit::WebBackForwardListFrameItem::allItems(void)::items)
  {
    v3 = *(WebKit::WebBackForwardListFrameItem::allItems(void)::items - 4);
    v4 = *(WebKit::WebBackForwardListFrameItem::allItems(void)::items - 12);
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  result = WTF::fastZeroedMalloc((40 * a1 + 16));
  WebKit::WebBackForwardListFrameItem::allItems(void)::items = (result + 4);
  result[2] = a1 - 1;
  result[3] = a1;
  *result = 0;
  result[1] = v4;
  if (v3)
  {
    v7 = 0;
    while (1)
    {
      v8 = (v2 + 40 * v7);
      v6 = v8[1];
      if (v6 != -1)
      {
        if (*v8 == 0 && *(v8 + 1) == 0)
        {
          v9 = v8[4];
          v8[4] = 0;
          if (!v9 || atomic_fetch_add(v9, 0xFFFFFFFF) != 1)
          {
            goto LABEL_21;
          }
        }

        else
        {
          v10 = WebKit::WebBackForwardListFrameItem::allItems(void)::items;
          if (WebKit::WebBackForwardListFrameItem::allItems(void)::items)
          {
            v11 = *(WebKit::WebBackForwardListFrameItem::allItems(void)::items - 8);
          }

          else
          {
            v11 = 0;
          }

          v12 = WTF::IdentityHashTranslator<WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>::hash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(*v8, v6);
          v13 = v11 & ((0xD7862706ELL * (277951225 * v12 + 95187966 * WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>::hash(v8 + 2))) >> 4);
          for (i = 1; ; ++i)
          {
            v15 = v10 + 40 * v13;
            if (*v15 == 0 && *(v15 + 16) == 0)
            {
              break;
            }

            v13 = (v13 + i) & v11;
          }

          v16 = *(v15 + 32);
          *(v15 + 32) = 0;
          if (v16 && atomic_fetch_add(v16, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v16);
            WTF::fastFree(v16, v6);
          }

          v17 = *(v8 + 1);
          *v15 = *v8;
          *(v15 + 16) = v17;
          v18 = v8[4];
          v8[4] = 0;
          *(v15 + 32) = v18;
          v9 = v8[4];
          v8[4] = 0;
          if (!v9 || atomic_fetch_add(v9, 0xFFFFFFFF) != 1)
          {
            goto LABEL_21;
          }
        }

        atomic_store(1u, v9);
        WTF::fastFree(v9, v6);
      }

LABEL_21:
      if (++v7 == v3)
      {
        goto LABEL_28;
      }
    }
  }

  if (v2)
  {
LABEL_28:

    return WTF::fastFree((v2 - 16), v6);
  }

  return result;
}

void *WTF::HashTable<std::pair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::KeyValuePair<std::pair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::WeakRef<WebKit::WebBackForwardListFrameItem,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::WeakRef<WebKit::WebBackForwardListFrameItem,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<std::pair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::HashMap<std::pair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::WeakRef<WebKit::WebBackForwardListFrameItem,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<std::pair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::HashTraits<std::pair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebBackForwardListFrameItem,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::FastMalloc>::lookup<WTF::HashMapTranslatorAdapter<WTF::HashMap<std::pair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::WeakRef<WebKit::WebBackForwardListFrameItem,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<std::pair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::HashTraits<std::pair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebBackForwardListFrameItem,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IdentityHashTranslator<WTF::HashMap<std::pair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::WeakRef<WebKit::WebBackForwardListFrameItem,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<std::pair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::HashTraits<std::pair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebBackForwardListFrameItem,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<std::pair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>>>,(WTF::ShouldValidateKey)1,std::pair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(uint64_t *a1, unint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  if (v4 | v5)
  {
    if (v5 == -1)
    {
LABEL_21:
      __break(0xC471u);
      JUMPOUT(0x19DE69D44);
    }
  }

  else if (*(a2 + 1) == 0)
  {
    goto LABEL_21;
  }

  v6 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v7 = *(v6 - 8);
  v8 = WTF::IdentityHashTranslator<WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>::hash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(v4, v5);
  v9 = v7 & ((0xD7862706ELL * (277951225 * v8 + 95187966 * WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>::hash(a2 + 2))) >> 4);
  for (i = 1; ; ++i)
  {
    result = (v6 + 40 * v9);
    if (*result == *a2 && result[1] == a2[1] && result[2] == a2[2] && result[3] == a2[3])
    {
      break;
    }

    if (*result == 0 && *(result + 1) == 0)
    {
      return 0;
    }

    v9 = (v9 + i) & v7;
  }

  return result;
}

_DWORD *WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::expand(uint64_t *a1)
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
  result = WTF::fastZeroedMalloc((16 * v5 + 16));
  *a1 = (result + 4);
  result[2] = v5 - 1;
  result[3] = v5;
  *result = 0;
  result[1] = v4;
  if (v3)
  {
    for (i = 0; i != v3; ++i)
    {
      v9 = (v2 + 16 * i);
      v7 = v9[1];
      if (v7 != -1 && *v9 != 0)
      {
        v10 = *a1;
        if (*a1)
        {
          v11 = *(v10 - 8);
        }

        else
        {
          v11 = 0;
        }

        v12 = WTF::IdentityHashTranslator<WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>::hash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(*v9, v7);
        v13 = 0;
        do
        {
          v14 = (v10 + 16 * (v12 & v11));
          v12 = ++v13 + (v12 & v11);
        }

        while (*v14 != 0);
        *v14 = *v9;
      }
    }
  }

  else if (!v2)
  {
    return result;
  }

  return WTF::fastFree((v2 - 16), v7);
}

WebKit::WebBackForwardCacheEntry *WTF::RefCounted<WebKit::WebBackForwardCacheEntry>::deref(WebKit::WebBackForwardCacheEntry *result)
{
  if (*result == 1)
  {
    WebKit::WebBackForwardCacheEntry::~WebBackForwardCacheEntry(result);

    return bmalloc::api::tzoneFree(v2, v3);
  }

  else
  {
    --*result;
  }

  return result;
}

uint64_t WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::WeakRef<WebKit::WebBackForwardListItem,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::WeakRef<WebKit::WebBackForwardListItem,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::WeakRef<WebKit::WebBackForwardListItem,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebBackForwardListItem,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t a2)
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

  return WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::WeakRef<WebKit::WebBackForwardListItem,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::WeakRef<WebKit::WebBackForwardListItem,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::WeakRef<WebKit::WebBackForwardListItem,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebBackForwardListItem,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

uint64_t WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::WeakRef<WebKit::WebBackForwardListItem,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::WeakRef<WebKit::WebBackForwardListItem,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::WeakRef<WebKit::WebBackForwardListItem,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebBackForwardListItem,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t a3)
{
  v5 = *a1;
  if (*a1)
  {
    v6 = *(v5 - 4);
    v7 = *(v5 - 12);
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v8 = WTF::fastZeroedMalloc((24 * a2 + 16));
  *a1 = (v8 + 4);
  v8[2] = a2 - 1;
  v8[3] = a2;
  *v8 = 0;
  v8[1] = v7;
  if (v6)
  {
    v10 = 0;
    v11 = 0;
    v12 = v6;
    do
    {
      v13 = v5 + 24 * v10;
      if (*(v13 + 8) != -1)
      {
        if (*v13 == 0)
        {
          v16 = *(v13 + 16);
          *(v13 + 16) = 0;
          if (v16 && atomic_fetch_add(v16, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v16);
            WTF::fastFree(v16, v9);
          }
        }

        else
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

          v17 = WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>::hash((v5 + 24 * v10));
          v18 = 0;
          do
          {
            v19 = v14 + 24 * (v17 & v15);
            v17 = ++v18 + (v17 & v15);
          }

          while (*v19 != 0);
          v20 = *(v19 + 16);
          *(v19 + 16) = 0;
          if (v20 && atomic_fetch_add(v20, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v20);
            WTF::fastFree(v20, v9);
          }

          *v19 = *v13;
          v21 = *(v13 + 16);
          *(v13 + 16) = 0;
          *(v19 + 16) = v21;
          v22 = *(v13 + 16);
          *(v13 + 16) = 0;
          if (v22 && atomic_fetch_add(v22, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v22);
            WTF::fastFree(v22, v9);
          }

          if (v13 == a3)
          {
            v11 = v19;
          }
        }
      }

      ++v10;
    }

    while (v10 != v12);
  }

  else
  {
    v11 = 0;
    result = 0;
    if (!v5)
    {
      return result;
    }
  }

  WTF::fastFree((v5 - 16), v9);
  return v11;
}

uint64_t WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::WeakRef<WebKit::WebBackForwardListItem,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebBackForwardListItem,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::WeakRef<WebKit::WebBackForwardListItem,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebBackForwardListItem,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(uint64_t *a1, void *a2)
{
  if (*a2 == 0 || a2[1] == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DE6A27CLL);
  }

  v2 = *a1;
  if (*a1)
  {
    v4 = *(v2 - 8);
    v5 = WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>::hash(a2);
    v6 = a2[1];
    v7 = v5 & v4;
    v8 = (v2 + 24 * (v5 & v4));
    v9 = *v8;
    v10 = v8[1];
    if (*v8 == *a2 && v10 == v6)
    {
LABEL_15:
      v15 = *(v2 + 24 * v7 + 16);
      if (v15)
      {
        return *(v15 + 8);
      }
    }

    else
    {
      v12 = 1;
      while (v9 | v10)
      {
        v7 = (v7 + v12) & v4;
        v13 = (v2 + 24 * v7);
        v9 = *v13;
        v10 = v13[1];
        ++v12;
        if (v9 == *a2 && v10 == v6)
        {
          goto LABEL_15;
        }
      }
    }
  }

  return 0;
}

void sub_19DE6A514(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DE6AAC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, CFTypeRef cf, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *aBlock)
{
  if (cf)
  {
    CFRelease(cf);
  }

  _Block_release(aBlock);
  objc_destroyWeak((v21 + 32));
  v24 = *(v22 - 72);
  *(v22 - 72) = 0;
  if (v24)
  {
  }

  _Unwind_Resume(a1);
}

void sub_19DE6AE18(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, uint64_t a11, WTF::StringImpl *a12)
{
  if (a12 && atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a12, a2);
  }

  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(a1);
}

void *__copy_helper_block_e8_32c96_ZTSKZ83__WKUSDPreviewView_web_setContentProviderData_suggestedFilename_completionHandler__E3__1(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 0;
  objc_copyWeak((a1 + 32), (a2 + 32));
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void __destroy_helper_block_e8_32c96_ZTSKZ83__WKUSDPreviewView_web_setContentProviderData_suggestedFilename_completionHandler__E3__1(uint64_t a1)
{
  _Block_release(*(a1 + 40));

  objc_destroyWeak((a1 + 32));
}

void *__copy_helper_block_e8_32c96_ZTSKZ83__WKUSDPreviewView_web_setContentProviderData_suggestedFilename_completionHandler__E3__2(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 32));
  *(a1 + 32) = result;
  return result;
}

void sub_19DE6B230(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  CFRelease(*(v10 + 8));
  _Unwind_Resume(a1);
}

void sub_19DE6B328(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  CFRelease(*(v10 + 8));
  _Unwind_Resume(a1);
}

void sub_19DE6B880(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, unsigned __int8 a11, int a12, __int16 a13, char a14, char a15)
{
  if (v15 && atomic_fetch_add(v15, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v15);
    WTF::fastFree(v15, a2);
  }

  if (a9)
  {
  }

  if (a13 == 1 && a11 != 255)
  {
    if (a10)
    {
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_19DE6BD00(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DE6C164(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, WTF *a9)
{
  if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, a2);
  }

  std::unique_ptr<PermissionRequest>::reset[abi:sn200100](&a9, 0);
  _Unwind_Resume(a1);
}

void sub_19DE6C88C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, WTF::StringImpl *a22)
{
  v25 = *(v23 - 96);
  *(v23 - 96) = 0;
  if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v25, a2);
  }

  if (v22)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DE6CFDC(_Unwind_Exception *a1)
{
  if (v1)
  {
  }

  _Unwind_Resume(a1);
}

void *__copy_helper_block_e8_48c43_ZTSN3WTF9RetainPtrI19NSMutableDictionaryEE(void *result, uint64_t a2)
{
  v2 = *(a2 + 48);
  result[6] = v2;
  if (v2)
  {
    return v2;
  }

  return result;
}

void __destroy_helper_block_e8_48c43_ZTSN3WTF9RetainPtrI19NSMutableDictionaryEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v1)
  {
  }
}

unsigned int *WebKit::WebDataListSuggestionsDropdownIOS::create@<X0>(WebKit::WebDataListSuggestionsDropdownIOS *this@<X0>, WebKit::WebPageProxy *a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = WTF::fastMalloc(0x30);
  *(v7 + 16) = 1;
  *v7 = &unk_1F1116260;
  *(v7 + 8) = 0;
  result = WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(this + 6, this + 16);
  v9 = *(this + 3);
  atomic_fetch_add(v9, 1u);
  *(v7 + 24) = v9;
  *(v7 + 32) = a2;
  *v7 = &unk_1F110DB58;
  *(v7 + 40) = 0;
  *a3 = v7;
  return result;
}

uint64_t WebKit::WebDataListSuggestionsDropdownIOS::show(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *(a1 + 40);
  if (v4)
  {

    return [v4 updateWithInformation:a2];
  }

  else
  {
    v6 = *a2;
    v7 = [*(a1 + 32) _shouldUseContextMenusForFormControls];
    if (v7)
    {
      v8 = WKDataListSuggestionsDropdown;
    }

    else if (PAL::currentUserInterfaceIdiomIsSmallScreen(v7))
    {
      v8 = WKDataListSuggestionsPicker;
    }

    else
    {
      v8 = WKDataListSuggestionsPopover;
    }

    v9 = [[v8 alloc] initWithInformation:a2 inView:*(a1 + 32)];
    v10 = *(a1 + 40);
    *(a1 + 40) = v9;
    if (v10)
    {

      v9 = *(a1 + 40);
    }

    return [v9 showSuggestionsDropdown:a1 activationType:v6];
  }
}

atomic_uint *WebKit::WebDataListSuggestionsDropdownIOS::close(id *this)
{
  [this[5] invalidate];
  v3 = this[5];
  this[5] = 0;
  if (v3)
  {
  }

  return WebKit::WebDataListSuggestionsDropdown::close(this, v2);
}

void sub_19DE6D9E8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DE6DE98(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10)
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

void sub_19DE6E218(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DE6E39C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10)
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

void sub_19DE6E6B0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10)
{
  if (a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, a2);
  }

  if (v10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DE6EAE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19DE6EBEC(_Unwind_Exception *a1)
{
  if (v2)
  {
  }

  _Unwind_Resume(a1);
}

void sub_19DE6EF00(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, WTF::StringImpl *a17, WTF::StringImpl *a18)
{
  if (a18)
  {
    if (atomic_fetch_add_explicit(a18, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a18, a2);
    }
  }

  objc_destroyWeak((v18 + 32));
  _Unwind_Resume(a1);
}

void __copy_helper_block_e8_32c76_ZTSKZ63__WKDataListSuggestionsDropdown__updateSuggestionsMenuElements_E3__9(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 0;
  v3 = a1 + 32;
  objc_copyWeak((a1 + 32), (a2 + 32));
  *(v3 + 8) = *(a2 + 40);
}

void sub_19DE6F3F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9)
{
  objc_destroyWeak((v9 + 32));
  objc_destroyWeak(&a9);
  _Unwind_Resume(a1);
}

void sub_19DE6F53C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9)
{
  objc_destroyWeak((v9 + 32));
  objc_destroyWeak(&a9);
  _Unwind_Resume(a1);
}

void WebKit::WebPageProxy::requestFocusedElementInformation(uint64_t a1, uint64_t *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 865) & 1) != 0 || (*(a1 + 864) & 1) == 0)
  {
    WTF::CompletionHandler<void ()(std::optional<WebKit::FocusedElementInformation> const&)>::operator()(a2);
  }

  else
  {
    WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::WebPage::RequestFocusedElementInformation,WTF::CompletionHandler<void ()(std::optional<WebKit::FocusedElementInformation> const&)>>(*(a1 + 352), v2, a2, *(a1 + 48), 0, 1);
  }
}

uint64_t WTF::CompletionHandler<void ()(std::optional<WebKit::FocusedElementInformation> const&)>::operator()(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::ViewUpdateDispatcher::VisibleContentRectUpdate>(uint64_t a1, uint64_t *a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 1813;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v8, **a2);
  IPC::ArgumentCoder<WebKit::VisibleContentRectUpdateInfo,void>::encode(v8, a2[1]);
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

void sub_19DE6F908(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
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

void *WebKit::WebPageProxy::resendLastVisibleContentRects(void *this)
{
  v3 = this[4];
  if (*(v3 + 2784) == 1)
  {
    v7[2] = v1;
    v7[3] = v2;
    v4 = v3 + 2600;
    v5 = this[44];
    v6 = this[6];
    v7[0] = &v6;
    v7[1] = v4;
    return WebKit::AuxiliaryProcessProxy::send<Messages::ViewUpdateDispatcher::VisibleContentRectUpdate>(v5, v7, 0, 0);
  }

  return this;
}

uint64_t *WebKit::WebPageProxy::updateStringForFind(uint64_t *this, atomic_uint **a2)
{
  if ((*(this + 865) & 1) == 0 && *(this + 864) == 1)
  {
    {
      WebKit::globalStringForFind(void)::string = 0;
    }

    return WTF::String::operator=(&WebKit::globalStringForFind(void)::string, a2);
  }

  return this;
}

uint64_t WebKit::WebPageProxy::scrollingNodeScrollViewWillStartPanGesture(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 56);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      (*(*v4 + 1712))(v4);
      (*(*v4 + 1136))(v4, a2, a3);
      v7 = *(*v4 + 1720);

      return v7(v4);
    }
  }

  return result;
}

uint64_t WebKit::WebPageProxy::scrollingNodeScrollWillStartScroll(uint64_t result, __int128 *a2)
{
  v2 = *(result + 56);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      (*(*v3 + 1712))(v3);
      v5 = *a2;
      v6 = *(a2 + 2);
      (*(*v3 + 1144))(v3, &v5);
      return (*(*v3 + 1720))(v3);
    }
  }

  return result;
}

uint64_t WebKit::WebPageProxy::scrollingNodeScrollDidEndScroll(uint64_t result, __int128 *a2)
{
  v2 = *(result + 56);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      (*(*v3 + 1712))(v3);
      v5 = *a2;
      v6 = *(a2 + 2);
      (*(*v3 + 1152))(v3, &v5);
      return (*(*v3 + 1720))(v3);
    }
  }

  return result;
}

void WebKit::WebPageProxy::dynamicViewportSizeUpdate(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 865) & 1) == 0 && *(a1 + 864) == 1)
  {
    v4 = *(a1 + 952);
    *(a1 + 952) = 0;
    if (v4)
    {
      WTF::RefCounted<WebCore::ValidationBubble>::deref(v4);
    }

    *(*(a1 + 32) + 2452) = *a2;
    *(*(a1 + 32) + 264) = *(a2 + 16);
    *(*(a1 + 32) + 992) = *(a2 + 8);
    *(*(a1 + 32) + 908) = *(a2 + 16);
    v5 = *(a1 + 352);
    v6 = a2;
    WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::DynamicViewportSizeUpdate>(v5, &v6, *(a1 + 48), 0);
    WebKit::WebPageProxy::setDeviceOrientation(a1, *(a2 + 96));
  }
}

uint64_t IPC::MessageSender::send<Messages::WebPage::SetViewportConfigurationViewLayoutSize>(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a1 + 56))(a1);
  v6 = IPC::Encoder::operator new(0x238, v5);
  *v6 = 2791;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = v4;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v13 = v6;
  Messages::WebPage::SetViewportConfigurationViewLayoutSize::encode<IPC::Encoder>(a2, v6);
  v8 = (*(*a1 + 32))(a1, &v13, 0);
  v9 = v13;
  v13 = 0;
  if (v9)
  {
    IPC::Encoder::~Encoder(v9, v7);
    bmalloc::api::tzoneFree(v11, v12);
  }

  return v8;
}

void sub_19DE6FF1C(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, IPC::Encoder *a10)
{
  if (a10)
  {
    IPC::Encoder::~Encoder(a10, a2);
    bmalloc::api::tzoneFree(v11, v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::WebPageProxy::setOverrideViewportArguments(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 32);
  v5 = *(a2 + 40);
  v6 = *(v4 + 2448);
  if (v5 != 1 || v6 == 0)
  {
    if (v5 == v6)
    {
      return result;
    }
  }

  else
  {
    result = WebCore::ViewportArguments::operator==(a2, v4 + 2408);
    if (result)
    {
      return result;
    }

    v4 = *(v3 + 32);
  }

  v8 = (v4 + 2408);
  v9 = *a2;
  v10 = *(a2 + 16);
  *(v8 + 25) = *(a2 + 25);
  *v8 = v9;
  v8[1] = v10;
  if ((*(v3 + 865) & 1) == 0 && *(v3 + 864) == 1)
  {
    v11 = *(v3 + 352);
    v12 = a2;
    return WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::SetOverrideViewportArguments>(v11, &v12, *(v3 + 48), 0);
  }

  return result;
}

uint64_t WebKit::WebPageProxy::updateLayoutViewportParameters(WebKit::WebPageProxy *this, const WebKit::RemoteLayerTreeTransaction *a2)
{
  v2 = *(this + 4);
  v3 = *(a2 + 19);
  if (v2[38] == v3 && v2[39] == HIDWORD(v3) && v2[244] == *(a2 + 40) && v2[245] == *(a2 + 41) && v2[225] == *(a2 + 42) && v2[226] == *(a2 + 43))
  {
    return 0;
  }

  *(v2 + 19) = v3;
  *(*(this + 4) + 976) = *(a2 + 20);
  *(*(this + 4) + 900) = *(a2 + 21);
  return 1;
}

uint64_t WebKit::WebPageProxy::selectWithGesture(uint64_t a1, uint64_t a2, char a3, char a4, char a5, uint64_t *a6)
{
  v12 = a2;
  if ((*(a1 + 865) & 1) != 0 || (*(a1 + 864) & 1) == 0)
  {
    v8 = 0;
    return WTF::CompletionHandler<void ()(WebCore::IntPoint const&,WebKit::GestureType,WebKit::GestureRecognizerState,WTF::OptionSet<WebKit::SelectionFlags>)>::operator()(a6, &v8, 0, 0, 0);
  }

  else
  {
    v6 = *(a1 + 352);
    v8 = &v12;
    v9 = a3;
    v10 = a4;
    v11 = a5;
    return WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::WebPage::SelectWithGesture,WTF::CompletionHandler<void ()(WebCore::IntPoint const&,WebKit::GestureType,WebKit::GestureRecognizerState,WTF::OptionSet<WebKit::SelectionFlags>)>>(v6, &v8, a6, *(a1 + 48), 0, 1);
  }
}

uint64_t WTF::CompletionHandler<void ()(WebCore::IntPoint const&,WebKit::GestureType,WebKit::GestureRecognizerState,WTF::OptionSet<WebKit::SelectionFlags>)>::operator()(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v5 = *a1;
  *a1 = 0;
  (*(*v5 + 16))(v5, a2, a3, a4, a5);
  v6 = *(*v5 + 8);

  return v6(v5);
}

uint64_t WebKit::WebPageProxy::updateSelectionWithTouches(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t *a5)
{
  v10 = a2;
  if ((*(a1 + 865) & 1) != 0 || (*(a1 + 864) & 1) == 0)
  {
    v7 = 0;
    return WTF::CompletionHandler<void ()(WebCore::IntPoint const&,WebKit::SelectionTouch,WTF::OptionSet<WebKit::SelectionFlags>)>::operator()(a5, &v7, 0, 0);
  }

  else
  {
    v5 = *(a1 + 352);
    v7 = &v10;
    v8 = a3;
    v9 = a4;
    return WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::WebPage::UpdateSelectionWithTouches,WTF::CompletionHandler<void ()(WebCore::IntPoint const&,WebKit::SelectionTouch,WTF::OptionSet<WebKit::SelectionFlags>)>>(v5, &v7, a5, *(a1 + 48), 0, 1);
  }
}

uint64_t WTF::CompletionHandler<void ()(WebCore::IntPoint const&,WebKit::SelectionTouch,WTF::OptionSet<WebKit::SelectionFlags>)>::operator()(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v4 = *a1;
  *a1 = 0;
  (*(*v4 + 16))(v4, a2, a3, a4);
  v5 = *(*v4 + 8);

  return v5(v4);
}

WTF *WebKit::WebPageProxy::requestAutocorrectionData(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if ((*(a1 + 865) & 1) != 0 || (*(a1 + 864) & 1) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    WTF::CompletionHandler<void ()(WebKit::WebAutocorrectionData)>::operator()(a3, &v8);
    v6 = v10;
    v10 = 0;
    if (v6)
    {
    }

    result = v8;
    if (v8)
    {
      v8 = 0;
      LODWORD(v9) = 0;
      return WTF::fastFree(result, v5);
    }
  }

  else
  {
    v3 = *(a1 + 352);
    v7 = a2;
    return WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::WebPage::RequestAutocorrectionData,WTF::CompletionHandler<void ()(WebKit::WebAutocorrectionData)>>(v3, &v7, a3, *(a1 + 48), 0, 1);
  }

  return result;
}

void sub_19DE70360(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF *a10, int a11, void *a12)
{
  if (a12)
  {
  }

  if (a10)
  {
    WTF::fastFree(a10, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::CompletionHandler<void ()(WebKit::WebAutocorrectionData)>::operator()(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = 0;
  v9 = *a2;
  v3 = *(a2 + 8);
  *a2 = 0;
  *(a2 + 8) = 0;
  v10 = v3;
  v4 = *(a2 + 16);
  *(a2 + 16) = 0;
  v11 = v4;
  v12 = v2;
  WTF::Function<void ()(WebKit::WebAutocorrectionData)>::operator()(&v12, &v9);
  v6 = v11;
  v11 = 0;
  if (v6)
  {
  }

  v7 = v9;
  if (v9)
  {
    v9 = 0;
    LODWORD(v10) = 0;
    WTF::fastFree(v7, v5);
  }

  result = v12;
  v12 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_19DE7043C(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF *a9, int a10, void *a11, uint64_t a12)
{
  if (a11)
  {
  }

  if (a9)
  {
    WTF::fastFree(a9, a2);
  }

  if (a12)
  {
    (*(*a12 + 8))(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::WebPageProxy::applyAutocorrection(WebKit::WebPageProxy *this, const WTF::String *a2, const WTF::String *a3, char a4)
{
  v4 = *(this + 44);
  v13[0] = a2;
  v13[1] = a3;
  v14 = a4;
  v5 = *(this + 6);
  WTF::ApproximateTime::now(this);
  WebKit::AuxiliaryProcessProxy::sendSync<Messages::WebPage::SyncApplyAutocorrection>(v4, v13, v5, 0, &v15, v6 + 1.0);
  v7 = v17;
  v8 = v16;
  if (!v17)
  {
    v9 = v15;
    v15 = 0;
    if (v9)
    {
      IPC::Decoder::~Decoder(v9);
      bmalloc::api::tzoneFree(v11, v12);
    }
  }

  return (v7 == 0) & v8;
}

atomic_uint *WebKit::WebPageProxy::selectTextWithGranularityAtPoint(uint64_t a1, void *a2, char a3, char a4, uint64_t *a5)
{
  v24 = a2;
  if (*(a1 + 865) & 1) == 0 && (*(a1 + 864))
  {
    v6 = *(a1 + 352);
    v23[0] = a4;
    v7 = *a5;
    *a5 = 0;
    v8 = *(a1 + 352);
    v9 = *(*(v8 + 160) + 8);
    if (v9)
    {
      atomic_fetch_add((v9 + 16), 1u);
      v10 = WebKit::ProcessThrottlerActivity::operator new(0x30, a2);
      WebKit::ProcessThrottlerActivity::ProcessThrottlerActivity(v10, v8 + 144, "WebPageProxy::selectTextWithGranularityAtPoint", 47, 0, 0);
      v11 = *(a1 + 48);
      v13 = IPC::Encoder::operator new(0x238, v12);
      *v13 = 2705;
      *(v13 + 2) = 0;
      *(v13 + 3) = 0;
      *(v13 + 1) = v11;
      *(v13 + 68) = 0;
      *(v13 + 70) = 0;
      *(v13 + 69) = 0;
      IPC::Encoder::encodeHeader(v13);
      v27 = v13;
      IPC::ArgumentCoder<WebCore::IntPoint,void>::encode(v13, &v24);
      IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v13, a3);
      IPC::Encoder::operator<<<BOOL &>(v13, v23);
      v14 = WTF::fastMalloc(0x18);
      *v14 = &unk_1F110DD40;
      v14[1] = v7;
      v14[2] = v10;
      if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected != 1)
      {
        IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
        v25[0] = v14;
        v25[1] = IdentifierInternal;
        v26 = 1;
        WebKit::AuxiliaryProcessProxy::sendMessage(v6, &v27, 0, v25, 1);
        if (v26 == 1)
        {
          v17 = v25[0];
          v25[0] = 0;
          if (v17)
          {
            (*(*v17 + 8))(v17);
          }
        }

        v18 = v27;
        v27 = 0;
        if (v18)
        {
          IPC::Encoder::~Encoder(v18, v16);
          bmalloc::api::tzoneFree(v20, v21);
        }

        return WebKit::ProcessThrottler::deref((v8 + 144));
      }

      __break(0xC471u);
    }

    else
    {
      __break(0xC471u);
    }

    JUMPOUT(0x19DE70738);
  }

  return WTF::CompletionHandler<void ()(void)>::operator()(a5);
}

void sub_19DE7075C(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, IPC::Encoder *a16)
{
  if (a15 == 1 && a13)
  {
    (*(*a13 + 8))(a13);
  }

  if (a16)
  {
    IPC::Encoder::~Encoder(a16, a2);
    bmalloc::api::tzoneFree(v18, v19);
  }

  WebKit::ProcessThrottler::deref((v16 + 144));
  _Unwind_Resume(a1);
}

atomic_uint *WebKit::WebPageProxy::selectPositionAtBoundaryWithDirection(uint64_t a1, void *a2, char a3, char a4, char a5, uint64_t *a6)
{
  v26 = a2;
  if (*(a1 + 865) & 1) == 0 && (*(a1 + 864))
  {
    v7 = *(a1 + 352);
    v25[0] = a5;
    v8 = *a6;
    *a6 = 0;
    v9 = *(a1 + 352);
    v10 = *(*(v9 + 160) + 8);
    if (v10)
    {
      atomic_fetch_add((v10 + 16), 1u);
      v11 = WebKit::ProcessThrottlerActivity::operator new(0x30, a2);
      WebKit::ProcessThrottlerActivity::ProcessThrottlerActivity(v11, v9 + 144, "WebPageProxy::selectPositionAtBoundaryWithDirection", 52, 0, 0);
      v12 = *(a1 + 48);
      v14 = IPC::Encoder::operator new(0x238, v13);
      *v14 = 2703;
      *(v14 + 2) = 0;
      *(v14 + 3) = 0;
      *(v14 + 1) = v12;
      *(v14 + 68) = 0;
      *(v14 + 70) = 0;
      *(v14 + 69) = 0;
      IPC::Encoder::encodeHeader(v14);
      v29 = v14;
      IPC::ArgumentCoder<WebCore::IntPoint,void>::encode(v14, &v26);
      IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v14, a3);
      IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v14, a4);
      IPC::Encoder::operator<<<BOOL &>(v14, v25);
      v15 = WTF::fastMalloc(0x18);
      *v15 = &unk_1F110DD68;
      v15[1] = v8;
      v15[2] = v11;
      if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected != 1)
      {
        IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
        v27[0] = v15;
        v27[1] = IdentifierInternal;
        v28 = 1;
        WebKit::AuxiliaryProcessProxy::sendMessage(v7, &v29, 0, v27, 1);
        if (v28 == 1)
        {
          v18 = v27[0];
          v27[0] = 0;
          if (v18)
          {
            (*(*v18 + 8))(v18);
          }
        }

        v19 = v29;
        v29 = 0;
        if (v19)
        {
          IPC::Encoder::~Encoder(v19, v17);
          bmalloc::api::tzoneFree(v21, v22);
        }

        return WebKit::ProcessThrottler::deref((v9 + 144));
      }

      __break(0xC471u);
    }

    else
    {
      __break(0xC471u);
    }

    JUMPOUT(0x19DE70AB0);
  }

  return WTF::CompletionHandler<void ()(void)>::operator()(a6);
}

void sub_19DE70AD4(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, IPC::Encoder *a16)
{
  if (a15 == 1 && a13)
  {
    (*(*a13 + 8))(a13);
  }

  if (a16)
  {
    IPC::Encoder::~Encoder(a16, a2);
    bmalloc::api::tzoneFree(v18, v19);
  }

  WebKit::ProcessThrottler::deref((v16 + 144));
  _Unwind_Resume(a1);
}

atomic_uint *WebKit::WebPageProxy::moveSelectionAtBoundaryWithDirection(uint64_t a1, void *a2, char a3, uint64_t *a4)
{
  if ((*(a1 + 865) & 1) != 0 || (*(a1 + 864) & 1) == 0)
  {

    return WTF::CompletionHandler<void ()(void)>::operator()(a4);
  }

  else
  {
    v5 = *(a1 + 352);
    v6 = *a4;
    *a4 = 0;
    v7 = *(a1 + 352);
    v8 = *(*(v7 + 160) + 8);
    if (!v8 || (v10 = a2, atomic_fetch_add((v8 + 16), 1u), v11 = WebKit::ProcessThrottlerActivity::operator new(0x30, a2), WebKit::ProcessThrottlerActivity::ProcessThrottlerActivity(v11, v7 + 144, "WebPageProxy::moveSelectionAtBoundaryWithDirection", 51, 0, 0), v12 = *(a1 + 48), v14 = IPC::Encoder::operator new(0x238, v13), *v14 = 2632, *(v14 + 2) = 0, *(v14 + 3) = 0, *(v14 + 1) = v12, *(v14 + 68) = 0, *(v14 + 70) = 0, *(v14 + 69) = 0, IPC::Encoder::encodeHeader(v14), v24 = v14, IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v14, v10), IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v14, a3), v15 = WTF::fastMalloc(0x18), *v15 = &unk_1F110DD90, v15[1] = v6, v15[2] = v11, WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1))
    {
      __break(0xC471u);
      JUMPOUT(0x19DE70E08);
    }

    v22[0] = v15;
    v22[1] = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v23 = 1;
    WebKit::AuxiliaryProcessProxy::sendMessage(v5, &v24, 0, v22, 1);
    if (v23 == 1)
    {
      v17 = v22[0];
      v22[0] = 0;
      if (v17)
      {
        (*(*v17 + 8))(v17);
      }
    }

    v18 = v24;
    v24 = 0;
    if (v18)
    {
      IPC::Encoder::~Encoder(v18, v16);
      bmalloc::api::tzoneFree(v20, v21);
    }

    return WebKit::ProcessThrottler::deref((v7 + 144));
  }
}

void sub_19DE70E2C(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
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

  WebKit::ProcessThrottler::deref((v12 + 144));
  _Unwind_Resume(a1);
}

atomic_uint *WebKit::WebPageProxy::selectPositionAtPoint(uint64_t a1, void *a2, char a3, uint64_t *a4)
{
  v22 = a2;
  if (*(a1 + 865) & 1) == 0 && (*(a1 + 864))
  {
    v5 = *(a1 + 352);
    v21[0] = a3;
    v6 = *a4;
    *a4 = 0;
    v7 = *(a1 + 352);
    v8 = *(*(v7 + 160) + 8);
    if (v8)
    {
      atomic_fetch_add((v8 + 16), 1u);
      v9 = WebKit::ProcessThrottlerActivity::operator new(0x30, a2);
      WebKit::ProcessThrottlerActivity::ProcessThrottlerActivity(v9, v7 + 144, "WebPageProxy::selectPositionAtPoint", 36, 0, 0);
      v10 = *(a1 + 48);
      v12 = IPC::Encoder::operator new(0x238, v11);
      *v12 = 2704;
      *(v12 + 2) = 0;
      *(v12 + 3) = 0;
      *(v12 + 1) = v10;
      *(v12 + 68) = 0;
      *(v12 + 70) = 0;
      *(v12 + 69) = 0;
      IPC::Encoder::encodeHeader(v12);
      v25 = v12;
      IPC::ArgumentCoder<WebCore::IntPoint,void>::encode(v12, &v22);
      IPC::Encoder::operator<<<BOOL &>(v12, v21);
      v13 = WTF::fastMalloc(0x18);
      *v13 = &unk_1F110DDB8;
      v13[1] = v6;
      v13[2] = v9;
      if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected != 1)
      {
        IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
        v23[0] = v13;
        v23[1] = IdentifierInternal;
        v24 = 1;
        WebKit::AuxiliaryProcessProxy::sendMessage(v5, &v25, 0, v23, 1);
        if (v24 == 1)
        {
          v16 = v23[0];
          v23[0] = 0;
          if (v16)
          {
            (*(*v16 + 8))(v16);
          }
        }

        v17 = v25;
        v25 = 0;
        if (v17)
        {
          IPC::Encoder::~Encoder(v17, v15);
          bmalloc::api::tzoneFree(v19, v20);
        }

        return WebKit::ProcessThrottler::deref((v7 + 144));
      }

      __break(0xC471u);
    }

    else
    {
      __break(0xC471u);
    }

    JUMPOUT(0x19DE71160);
  }

  return WTF::CompletionHandler<void ()(void)>::operator()(a4);
}

void sub_19DE71184(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, IPC::Encoder *a16)
{
  if (a15 == 1 && a13)
  {
    (*(*a13 + 8))(a13);
  }

  if (a16)
  {
    IPC::Encoder::~Encoder(a16, a2);
    bmalloc::api::tzoneFree(v18, v19);
  }

  WebKit::ProcessThrottler::deref((v16 + 144));
  _Unwind_Resume(a1);
}

uint64_t WebKit::WebPageProxy::requestRVItemInCurrentSelectedRange(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 865) & 1) == 0 && (*(a1 + 864))
  {
    return WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::WebPage::RequestRVItemInCurrentSelectedRange,WTF::CompletionHandler<void ()(WebKit::RevealItem const&)>>(*(a1 + 352), v3, a2, *(a1 + 48), 0, 1);
  }

  WTF::CompletionHandler<void ()(WebKit::RevealItem const&)>::operator()(a2);
  return 0;
}

void sub_19DE71350(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
  }

  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::CompletionHandler<void ()(WebKit::RevealItem const&)>::operator()(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

WTF::StringImpl *WebKit::WebPageProxy::prepareSelectionForContextMenuWithLocationInView(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if ((*(a1 + 865) & 1) != 0 || (*(a1 + 864) & 1) == 0)
  {
    WTF::CompletionHandler<void ()(BOOL,WebKit::RevealItem const&)>::operator()(a3);
    return 0;
  }

  else
  {
    WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a1 + 24), a1 + 16);
    v6 = *(a1 + 24);
    atomic_fetch_add(v6, 1u);
    v7 = *a3;
    *a3 = 0;
    v8 = WTF::fastMalloc(0x20);
    *v8 = &unk_1F110DE80;
    *(v8 + 1) = v6;
    *(v8 + 2) = a2;
    *(v8 + 3) = v7;
    v11[0] = v8;
    WebKit::WebPageProxy::dispatchAfterCurrentContextMenuEvent(a1, v11, v9);
    result = v11[0];
    v11[0] = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void sub_19DE71564(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  if (v12)
  {
    if (atomic_fetch_add(v12, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v12);
      WTF::fastFree(v12, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::CompletionHandler<void ()(BOOL,WebKit::RevealItem const&)>::operator()(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

uint64_t WebKit::WebPageProxy::handleAutocorrectionContext(uint64_t this, const WebAutocorrectionContext *a2)
{
  v2 = *(this + 56);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      (*(*v3 + 1712))(v3);
      (*(*v3 + 1224))(v3, a2);
      v5 = *(*v3 + 1720);

      return v5(v3);
    }
  }

  return this;
}

uint64_t WebKit::WebPageProxy::clearSelectionAfterTappingSelectionHighlightIfNeeded(uint64_t result, float a2, float a3)
{
  *v5 = a2;
  *&v5[1] = a3;
  if ((*(result + 865) & 1) == 0 && *(result + 864) == 1)
  {
    v3 = *(result + 352);
    v4 = v5;
    return WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::ClearSelectionAfterTappingSelectionHighlightIfNeeded>(v3, &v4, *(result + 48), 0);
  }

  return result;
}

uint64_t WebKit::WebPageProxy::getSelectionContext(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 865) & 1) == 0 && (*(a1 + 864))
  {
    return WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::WebPage::GetSelectionContext,WTF::CompletionHandler<void ()(WTF::String const&,WTF::String const&,WTF::String const&)>>(*(a1 + 352), &v3, a2, *(a1 + 48), 0, 1);
  }

  WTF::CompletionHandler<void ()(WTF::String const&,WTF::String const&,WTF::String const&)>::operator()(a2);
  return 0;
}

void sub_19DE718EC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WTF::StringImpl *a11, WTF::StringImpl *a12)
{
  if (a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, a2);
  }

  if (a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  if (a12)
  {
    if (atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a12, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::CompletionHandler<void ()(WTF::String const&,WTF::String const&,WTF::String const&)>::operator()(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

uint64_t WebKit::WebPageProxy::selectWithTwoTouches(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, uint64_t *a6)
{
  v11 = a3;
  v12 = a2;
  if ((*(a1 + 865) & 1) != 0 || (*(a1 + 864) & 1) == 0)
  {
    v8[0] = 0;
    return WTF::CompletionHandler<void ()(WebCore::IntPoint const&,WebKit::GestureType,WebKit::GestureRecognizerState,WTF::OptionSet<WebKit::SelectionFlags>)>::operator()(a6, v8, 0, 0, 0);
  }

  else
  {
    v6 = *(a1 + 352);
    v8[0] = &v12;
    v8[1] = &v11;
    v9 = a4;
    v10 = a5;
    return WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::WebPage::SelectWithTwoTouches,WTF::CompletionHandler<void ()(WebCore::IntPoint const&,WebKit::GestureType,WebKit::GestureRecognizerState,WTF::OptionSet<WebKit::SelectionFlags>)>>(v6, v8, a6, *(a1 + 48), 0, 1);
  }
}

uint64_t WebKit::WebPageProxy::didReceivePositionInformation(uint64_t this, const InteractionInformationAtPosition *a2)
{
  v2 = *(this + 56);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      (*(*v3 + 1712))(v3);
      (*(*v3 + 1072))(v3, a2);
      v5 = *(*v3 + 1720);

      return v5(v3);
    }
  }

  return this;
}

uint64_t WebKit::WebPageProxy::isValidPerformActionOnElementAuthorizationToken(WebKit::WebPageProxy *this, const WTF::StringImpl **a2, const WTF::StringImpl *a3)
{
  result = *a2;
  if (*a2)
  {
    v5 = *(this + 147);
    if (v5)
    {
      if (result == -1 || !result)
      {
        __break(0xC471u);
        JUMPOUT(0x19DE71C6CLL);
      }

      v7 = *(v5 - 8);
      v8 = *(result + 16);
      if (v8 < 0x100)
      {
        v9 = WTF::StringImpl::hashSlowCase(result);
      }

      else
      {
        v9 = v8 >> 8;
      }

      for (i = 0; ; v9 = i + v11)
      {
        v11 = v9 & v7;
        result = *(v5 + 8 * (v9 & v7));
        if (result != -1)
        {
          if (!result)
          {
            return result;
          }

          if (WTF::equal(result, *a2, a3))
          {
            break;
          }
        }

        ++i;
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t WebKit::WebPageProxy::performActionOnElement(WebKit::WebPageProxy *this, int a2)
{
  WTF::createVersion4UUIDString(&v19, this);
  WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(this + 147, &v19, v4, v20);
  v5 = *(this + 44);
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(this + 6, this + 16);
  v7 = *(this + 3);
  atomic_fetch_add(v7, 1u);
  v8 = v19;
  if (v19)
  {
    atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed);
  }

  v9 = *(this + 6);
  v10 = IPC::Encoder::operator new(0x238, v6);
  *v10 = 2640;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 1) = v9;
  *(v10 + 68) = 0;
  *(v10 + 70) = 0;
  *(v10 + 69) = 0;
  IPC::Encoder::encodeHeader(v10);
  v22 = v10;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v10, a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v10, &v19);
  v11 = WTF::fastMalloc(0x18);
  *v11 = &unk_1F110DF20;
  v11[1] = v7;
  v11[2] = v8;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v20[0] = v11;
    v20[1] = IdentifierInternal;
    v21 = 1;
    WebKit::AuxiliaryProcessProxy::sendMessage(v5, &v22, 0, v20, 1);
    if (v21 == 1)
    {
      v14 = v20[0];
      v20[0] = 0;
      if (v14)
      {
        (*(*v14 + 8))(v14);
      }
    }

    v15 = v22;
    v22 = 0;
    if (v15)
    {
      IPC::Encoder::~Encoder(v15, v13);
      bmalloc::api::tzoneFree(v17, v18);
    }

    result = v19;
    v19 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v13);
      }
    }
  }

  return result;
}

void sub_19DE71E58(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, uint64_t a11, uint64_t a12, char a13, IPC::Encoder *a14)
{
  if (a13 == 1 && a11)
  {
    (*(*a11 + 8))(a11);
  }

  if (a14)
  {
    IPC::Encoder::~Encoder(a14, a2);
    bmalloc::api::tzoneFree(v15, v16);
  }

  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void WebKit::WebPageProxy::saveImageToLibrary(WebKit::WebPageProxy *a1, uint64_t a2, const WTF::StringImpl *a3, const WTF::StringImpl **a4)
{
  buf[3] = *MEMORY[0x1E69E9840];
  if (WebKit::WebPageProxy::isValidPerformActionOnElementAuthorizationToken(a1, a4, a3))
  {
    WebCore::SharedMemory::map();
    v6 = buf[0];
    if (!buf[0])
    {
      return;
    }

    v7 = *(a1 + 7);
    if (v7 && (v8 = *(v7 + 8)) != 0)
    {
      (*(*v8 + 1712))(v8);
      WebCore::SharedMemory::createSharedBuffer(buf[0]);
      (*(*v8 + 1080))(v8, &v11);
      v9 = v11;
      v11 = 0;
      if (v9)
      {
        if (atomic_fetch_add(v9 + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v9 + 2);
          (*(*v9 + 8))(v9);
        }
      }

      (*(*v8 + 1720))(v8);
      v6 = buf[0];
      buf[0] = 0;
      if (!v6)
      {
        return;
      }
    }

    else
    {
      buf[0] = 0;
    }

    WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v6);
    return;
  }

  v10 = qword_1ED6416C8;
  if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
  {
    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = "void WebKit::WebPageProxy::saveImageToLibrary(IPC::Connection &, SharedMemory::Handle &&, const String &)";
    _os_log_fault_impl(&dword_19D52D000, v10, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/UIProcess/ios/WebPageProxyIOS.mm 597: Invalid message dispatched %{public}s", buf, 0xCu);
  }

  *(a2 + 94) = 1;
  if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DE72170);
  }
}

void sub_19DE721B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int *a10, atomic_uint *a11)
{
  if (a10 && atomic_fetch_add(a10 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, a10 + 2);
    (*(*a10 + 8))(a10);
  }

  (*(*v11 + 1720))(v11);
  if (a11)
  {
    WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(a11);
  }

  _Unwind_Resume(a1);
}

IPC::Encoder *WebKit::WebPageProxy::applicationDidEnterBackground(WebKit::WebPageProxy *this)
{
  v28 = *MEMORY[0x1E69E9840];
  *(this + 1169) = 1;
  v2 = [objc_msgSend(MEMORY[0x1E69DC668] "sharedApplication")];
  v3 = qword_1ED641490;
  if (os_log_type_enabled(qword_1ED641490, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(this + 5);
    v5 = *(this + 6);
    v7 = *(*(this + 44) + 80);
    if (v7)
    {
      LODWORD(v7) = *(v7 + 108);
    }

    *buf = 134219008;
    *&buf[4] = this;
    v20 = 2048;
    v21 = v6;
    v22 = 2048;
    v23 = v5;
    v24 = 1024;
    v25 = v7;
    v26 = 1024;
    v27 = v2;
    _os_log_impl(&dword_19D52D000, v3, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, PID=%i] WebPageProxy::applicationDidEnterBackground: isSuspendedUnderLock? %d", buf, 0x2Cu);
  }

  if (v2)
  {
    v8 = WebKit::NavigationState::fromWebPage(this, v4);
    if (v8)
    {
      WebKit::NavigationState::releaseNetworkActivity(v8, 1);
    }
  }

  v9 = *(this + 44);
  v17 = v2;
  v10 = *(this + 6);
  v11 = IPC::Encoder::operator new(0x238, v4);
  *v11 = 2436;
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *(v11 + 1) = v10;
  *(v11 + 68) = 0;
  *(v11 + 70) = 0;
  *(v11 + 69) = 0;
  IPC::Encoder::encodeHeader(v11);
  v18 = v11;
  IPC::Encoder::operator<<<BOOL &>(v11, &v17);
  buf[0] = 0;
  BYTE2(v21) = 0;
  WebKit::AuxiliaryProcessProxy::sendMessage(v9, &v18, 0, buf, 1);
  if (BYTE2(v21) == 1)
  {
    v13 = *buf;
    *buf = 0;
    if (v13)
    {
      (*(*v13 + 8))(v13);
    }
  }

  result = v18;
  v18 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v12);
    return bmalloc::api::tzoneFree(v15, v16);
  }

  return result;
}

void sub_19DE7243C(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, IPC::Encoder *a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a13 == 1 && a11)
  {
    (*(*a11 + 8))(a11);
  }

  if (a10)
  {
    IPC::Encoder::~Encoder(a10, a2);
    bmalloc::api::tzoneFree(v14, v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::WebPageProxy::applicationDidFinishSnapshottingAfterEnteringBackground(WebKit::WebPageProxy *this)
{
  v2 = *(this + 41);
  if (v2)
  {
    (*(*v2 + 232))(v2);
    (*(**(this + 41) + 200))(*(this + 41));
  }

  return WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::ApplicationDidFinishSnapshottingAfterEnteringBackground>(*(this + 44), &v4, *(this + 6), 0);
}

uint64_t WebKit::WebPageProxy::applicationWillEnterForeground(WebKit::WebPageProxy *this)
{
  v30 = *MEMORY[0x1E69E9840];
  *(this + 1169) = 0;
  v2 = [objc_msgSend(MEMORY[0x1E69DC668] "sharedApplication")];
  v3 = qword_1ED641490;
  if (os_log_type_enabled(qword_1ED641490, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(this + 5);
    v5 = *(this + 6);
    v7 = *(*(this + 44) + 80);
    if (v7)
    {
      LODWORD(v7) = *(v7 + 108);
    }

    *buf = 134219008;
    *&buf[4] = this;
    v22 = 2048;
    v23 = v6;
    v24 = 2048;
    v25 = v5;
    v26 = 1024;
    v27 = v7;
    v28 = 1024;
    v29 = v2;
    _os_log_impl(&dword_19D52D000, v3, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, PID=%i] WebPageProxy::applicationWillEnterForeground: isSuspendedUnderLock? %d", buf, 0x2Cu);
  }

  v8 = *(this + 44);
  v19 = v2;
  v9 = *(this + 6);
  v10 = IPC::Encoder::operator new(0x238, v4);
  *v10 = 2439;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 1) = v9;
  *(v10 + 68) = 0;
  *(v10 + 70) = 0;
  *(v10 + 69) = 0;
  IPC::Encoder::encodeHeader(v10);
  v20 = v10;
  IPC::Encoder::operator<<<BOOL &>(v10, &v19);
  buf[0] = 0;
  BYTE2(v23) = 0;
  WebKit::AuxiliaryProcessProxy::sendMessage(v8, &v20, 0, buf, 1);
  if (BYTE2(v23) == 1)
  {
    v12 = *buf;
    *buf = 0;
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }
  }

  v13 = v20;
  v20 = 0;
  if (v13)
  {
    IPC::Encoder::~Encoder(v13, v11);
    bmalloc::api::tzoneFree(v17, v18);
  }

  v14 = API::PageConfiguration::Data::LazyInitializedRef<WebKit::WebProcessPool,&API::PageConfiguration::Data::createWebProcessPool>::get((*(this + 8) + 16));
  v15 = WebKit::WebProcessPool::cachedHardwareKeyboardState(v14);
  return WebKit::WebPageProxy::hardwareKeyboardAvailabilityChanged(this, v15 & 0xFFFFFF);
}

void sub_19DE72710(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, IPC::Encoder *a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a13 == 1 && a11)
  {
    (*(*a11 + 8))(a11);
  }

  if (a10)
  {
    IPC::Encoder::~Encoder(a10, a2);
    bmalloc::api::tzoneFree(v14, v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::WebPageProxy::hardwareKeyboardAvailabilityChanged(WebCore::PlatformKeyboardEvent *a1, int a2)
{
  v2 = a1;
  v7 = a2;
  v8 = BYTE2(a2);
  v3 = *(a1 + 7);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      (*(*v4 + 1712))(v4);
      (*(*v4 + 1168))(v4);
      a1 = (*(*v4 + 1720))(v4);
    }
  }

  v10 = WebCore::PlatformKeyboardEvent::currentStateOfModifierKeys(a1);
  v9 = &v10;
  WebKit::WebPageProxy::send<Messages::WebPage::UpdateCurrentModifierState>(v2, &v9);
  v5 = *(v2 + 352);
  v9 = &v7;
  return WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::HardwareKeyboardAvailabilityChanged>(v5, &v9, *(v2 + 48), 0);
}

IPC::Encoder *WebKit::WebPageProxy::applicationDidEnterBackgroundForMedia(WebKit::WebPageProxy *this)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = [objc_msgSend(MEMORY[0x1E69DC668] "sharedApplication")];
  v3 = qword_1ED641490;
  if (os_log_type_enabled(qword_1ED641490, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(this + 5);
    v5 = *(this + 6);
    v7 = *(*(this + 44) + 80);
    if (v7)
    {
      LODWORD(v7) = *(v7 + 108);
    }

    *buf = 134219008;
    *&buf[4] = this;
    v19 = 2048;
    v20 = v6;
    v21 = 2048;
    v22 = v5;
    v23 = 1024;
    v24 = v7;
    v25 = 1024;
    v26 = v2;
    _os_log_impl(&dword_19D52D000, v3, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, PID=%i] WebPageProxy::applicationWillEnterForegroundForMedia: isSuspendedUnderLock? %d", buf, 0x2Cu);
  }

  v8 = *(this + 44);
  v16 = v2;
  v9 = *(this + 6);
  v10 = IPC::Encoder::operator new(0x238, v4);
  *v10 = 2437;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 1) = v9;
  *(v10 + 68) = 0;
  *(v10 + 70) = 0;
  *(v10 + 69) = 0;
  IPC::Encoder::encodeHeader(v10);
  v17 = v10;
  IPC::Encoder::operator<<<BOOL &>(v10, &v16);
  buf[0] = 0;
  BYTE2(v20) = 0;
  WebKit::AuxiliaryProcessProxy::sendMessage(v8, &v17, 0, buf, 1);
  if (BYTE2(v20) == 1)
  {
    v12 = *buf;
    *buf = 0;
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }
  }

  result = v17;
  v17 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v11);
    return bmalloc::api::tzoneFree(v14, v15);
  }

  return result;
}

void sub_19DE72A7C(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, IPC::Encoder *a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a13 == 1 && a11)
  {
    (*(*a11 + 8))(a11);
  }

  if (a10)
  {
    IPC::Encoder::~Encoder(a10, a2);
    bmalloc::api::tzoneFree(v14, v15);
  }

  _Unwind_Resume(exception_object);
}

IPC::Encoder *WebKit::WebPageProxy::applicationWillEnterForegroundForMedia(WebKit::WebPageProxy *this)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = [objc_msgSend(MEMORY[0x1E69DC668] "sharedApplication")];
  v3 = qword_1ED641490;
  if (os_log_type_enabled(qword_1ED641490, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(this + 5);
    v5 = *(this + 6);
    v7 = *(*(this + 44) + 80);
    if (v7)
    {
      LODWORD(v7) = *(v7 + 108);
    }

    *buf = 134219008;
    *&buf[4] = this;
    v19 = 2048;
    v20 = v6;
    v21 = 2048;
    v22 = v5;
    v23 = 1024;
    v24 = v7;
    v25 = 1024;
    v26 = v2;
    _os_log_impl(&dword_19D52D000, v3, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, PID=%i] WebPageProxy::applicationWillEnterForegroundForMedia: isSuspendedUnderLock? %d", buf, 0x2Cu);
  }

  v8 = *(this + 44);
  v16 = v2;
  v9 = *(this + 6);
  v10 = IPC::Encoder::operator new(0x238, v4);
  *v10 = 2440;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 1) = v9;
  *(v10 + 68) = 0;
  *(v10 + 70) = 0;
  *(v10 + 69) = 0;
  IPC::Encoder::encodeHeader(v10);
  v17 = v10;
  IPC::Encoder::operator<<<BOOL &>(v10, &v16);
  buf[0] = 0;
  BYTE2(v20) = 0;
  WebKit::AuxiliaryProcessProxy::sendMessage(v8, &v17, 0, buf, 1);
  if (BYTE2(v20) == 1)
  {
    v12 = *buf;
    *buf = 0;
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }
  }

  result = v17;
  v17 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v11);
    return bmalloc::api::tzoneFree(v14, v15);
  }

  return result;
}

void sub_19DE72CA0(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, IPC::Encoder *a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a13 == 1 && a11)
  {
    (*(*a11 + 8))(a11);
  }

  if (a10)
  {
    IPC::Encoder::~Encoder(a10, a2);
    bmalloc::api::tzoneFree(v14, v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::WebPageProxy::applicationDidBecomeActive(WebKit::WebPageProxy *this)
{
  v2 = *(this + 66);
  if (v2)
  {
    WebKit::VideoPresentationManagerProxy::applicationDidBecomeActive(v2);
  }

  return WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::ApplicationDidBecomeActive>(*(this + 44), &v4, *(this + 6), 0);
}

uint64_t WebKit::WebPageProxy::extendSelection(uint64_t a1, void *a2, uint64_t *a3)
{
  v3 = a2;
  v4 = *(a1 + 352);
  v5 = *a3;
  *a3 = 0;
  v6 = *(a1 + 48);
  v7 = IPC::Encoder::operator new(0x238, a2);
  *v7 = 2547;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = v6;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  IPC::Encoder::encodeHeader(v7);
  v16 = v7;
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v7, v3);
  v8 = WTF::fastMalloc(0x10);
  *v8 = &unk_1F110DF48;
  v8[1] = v5;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v14[0] = v8;
    v14[1] = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v15 = 1;
    WebKit::AuxiliaryProcessProxy::sendMessage(v4, &v16, 0, v14, 1);
    if (v15 == 1)
    {
      v10 = v14[0];
      v14[0] = 0;
      if (v10)
      {
        (*(*v10 + 8))(v10);
      }
    }

    result = v16;
    v16 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v9);
      return bmalloc::api::tzoneFree(v12, v13);
    }
  }

  return result;
}

void sub_19DE72EB0(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
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

uint64_t WebKit::WebPageProxy::requestRectsForGranularityWithSelectionOffset(uint64_t a1, char a2, int a3, uint64_t *a4)
{
  if ((*(a1 + 865) & 1) != 0 || (*(a1 + 864) & 1) == 0)
  {
    WTF::CompletionHandler<void ()(WTF::Vector<WebCore::SelectionGeometry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)>::operator()(a4);
    return 0;
  }

  else
  {
    v4 = *(a1 + 352);
    LOBYTE(v6) = a2;
    HIDWORD(v6) = a3;
    return WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::WebPage::GetRectsForGranularityWithSelectionOffset,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::SelectionGeometry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)>>(v4, &v6, a4, *(a1 + 48), 0, 1);
  }
}

void sub_19DE73034(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF *a9, int a10)
{
  if (a9)
  {
    WTF::fastFree(a9, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::CompletionHandler<void ()(WTF::Vector<WebCore::SelectionGeometry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)>::operator()(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

uint64_t WebKit::WebPageProxy::requestRectsAtSelectionOffsetWithText(uint64_t a1, int a2, WTF *a3, uint64_t *a4)
{
  if ((*(a1 + 865) & 1) != 0 || (*(a1 + 864) & 1) == 0)
  {
    WTF::CompletionHandler<void ()(WTF::Vector<WebCore::SelectionGeometry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)>::operator()(a4);
    return 0;
  }

  else
  {
    v4 = *(a1 + 352);
    LODWORD(v6[0]) = a2;
    v6[1] = a3;
    return WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::WebPage::GetRectsAtSelectionOffsetWithText,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::SelectionGeometry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)>>(v4, v6, a4, *(a1 + 48), 0, 1);
  }
}

void sub_19DE73198(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF *a9, int a10)
{
  if (a9)
  {
    WTF::fastFree(a9, a2);
  }

  _Unwind_Resume(exception_object);
}

atomic_uint *WebKit::WebPageProxy::moveSelectionByOffset(uint64_t a1, void *a2, uint64_t *a3)
{
  if ((*(a1 + 865) & 1) != 0 || (*(a1 + 864) & 1) == 0)
  {

    return WTF::CompletionHandler<void ()(void)>::operator()(a3);
  }

  else
  {
    v4 = *(a1 + 352);
    v5 = *a3;
    *a3 = 0;
    v6 = *(a1 + 352);
    v7 = *(*(v6 + 160) + 8);
    if (!v7 || (v8 = a2, atomic_fetch_add((v7 + 16), 1u), v9 = WebKit::ProcessThrottlerActivity::operator new(0x30, a2), WebKit::ProcessThrottlerActivity::ProcessThrottlerActivity(v9, v6 + 144, "WebPageProxy::moveSelectionByOffset", 36, 0, 0), v10 = *(a1 + 48), v12 = IPC::Encoder::operator new(0x238, v11), *v12 = 2633, *(v12 + 2) = 0, *(v12 + 3) = 0, *(v12 + 1) = v10, *(v12 + 68) = 0, *(v12 + 70) = 0, *(v12 + 69) = 0, IPC::Encoder::encodeHeader(v12), v22 = v12, IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v12, v8), v13 = WTF::fastMalloc(0x18), *v13 = &unk_1F110DFE8, v13[1] = v5, v13[2] = v9, WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1))
    {
      __break(0xC471u);
      JUMPOUT(0x19DE733B0);
    }

    v20[0] = v13;
    v20[1] = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v21 = 1;
    WebKit::AuxiliaryProcessProxy::sendMessage(v4, &v22, 0, v20, 1);
    if (v21 == 1)
    {
      v15 = v20[0];
      v20[0] = 0;
      if (v15)
      {
        (*(*v15 + 8))(v15);
      }
    }

    v16 = v22;
    v22 = 0;
    if (v16)
    {
      IPC::Encoder::~Encoder(v16, v14);
      bmalloc::api::tzoneFree(v18, v19);
    }

    return WebKit::ProcessThrottler::deref((v6 + 144));
  }
}

void sub_19DE733D4(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
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

  WebKit::ProcessThrottler::deref((v12 + 144));
  _Unwind_Resume(a1);
}

uint64_t *WebKit::WebPageProxy::interpretKeyEvent(WebKit::WebPageProxy *a1, uint64_t *a2, uint64_t a3, WTF::RefCountedBase *a4)
{
  WebKit::WebPageProxy::updateEditorState(a1, a2, 2);
  if (*(*(a1 + 4) + 864) != *(*(a1 + 4) + 872) && (v7 = *(a1 + 7)) != 0 && (v8 = *(v7 + 8)) != 0)
  {
    result = (*(*v8 + 1712))(v8);
    v10 = *(a1 + 4);
    v11 = *(v10 + 864);
    if (v11 >= *(v10 + 888))
    {
      __break(1u);
    }

    else
    {
      v12 = (*(*v8 + 1064))(v8, *(v10 + 880) + 112 * v11, a3);
      WTF::CompletionHandler<void ()(BOOL)>::operator()(a4, v12);
      v13 = *(*v8 + 1720);

      return v13(v8);
    }
  }

  else
  {

    return WTF::CompletionHandler<void ()(BOOL)>::operator()(a4, 0);
  }

  return result;
}

uint64_t WebKit::WebPageProxy::registerWebProcessAccessibilityToken(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 56);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      v7 = result;
      (*(*v4 + 1712))(v4);
      v8 = *(v7 + 352);
      atomic_fetch_add((v8 + 16), 1u);
      WebKit::AuxiliaryProcessProxy::protectedConnection(v8, &v12);
      v9 = v12[43];
      if (v9)
      {
        pid = xpc_connection_get_pid(v9);
      }

      else
      {
        pid = 0;
      }

      (*(*v4 + 456))(v4, a2, a3, pid);
      v11 = v12;
      v12 = 0;
      if (v11)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v11);
      }

      if (v8)
      {
        WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v8 + 16));
      }

      return (*(*v4 + 1720))(v4);
    }
  }

  return result;
}

void sub_19DE737D0(_Unwind_Exception *a1)
{
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v2);
  }

  (*(*v1 + 1720))(v1);
  _Unwind_Resume(a1);
}

uint64_t WebKit::WebPageProxy::relayAccessibilityNotification(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 56);
  if (v4)
  {
    v5 = *(v4 + 8);
    if (v5)
    {
      (*(*v5 + 1712))(v5);
      v10 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:a3 length:a4];
      (*(*v5 + 616))(v5, a2, &v10);
      v9 = v10;
      v10 = 0;
      if (v9)
      {
      }

      return (*(*v5 + 1720))(v5);
    }
  }

  return result;
}

void sub_19DE7393C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  (*(*v10 + 1720))(v10);
  _Unwind_Resume(a1);
}

uint64_t WebKit::WebPageProxy::assistiveTechnologyMakeFirstResponder(uint64_t this)
{
  v1 = *(this + 56);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      (*(*v2 + 1712))(v2);
      (*(*v2 + 504))(v2);
      v3 = *(*v2 + 1720);

      return v3(v2);
    }
  }

  return this;
}

uint64_t WebKit::WebPageProxy::potentialTapAtPosition(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v21[0] = a2;
  v21[1] = a3;
  v20 = a6;
  v11 = *(a1 + 952);
  *(a1 + 952) = 0;
  if (v11)
  {
    WTF::RefCounted<WebCore::ValidationBubble>::deref(v11);
  }

  v18[0] = v21;
  v18[1] = &v20;
  v18[2] = a4;
  v19 = a5;
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a1 + 24), a1 + 16);
  v12 = *(a1 + 24);
  atomic_fetch_add(v12, 1u);
  v13 = v20;
  v14 = WTF::fastMalloc(0x20);
  *v14 = &unk_1F110E010;
  *(v14 + 8) = v12;
  *(v14 + 16) = a5;
  *(v14 + 17) = *v16;
  *(v14 + 20) = *&v16[3];
  *(v14 + 24) = v13;
  v17 = v14;
  v22[0] = v18;
  v22[1] = &v17;
  v23 = 0;
  WebKit::WebPageProxy::sendToWebPage<std::optional<WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>> WebKit::WebPageProxy::sendWithAsyncReplyToProcessContainingFrame<Messages::WebPage::PotentialTapAtPosition,WTF::CompletionHandler<void ()(std::optional<WebCore::RemoteUserInputEventData> &&)>>(std::optional<WTF::CompletionHandler<void ()(std::optional<WebCore::RemoteUserInputEventData> &&)><WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,Messages::WebPage::PotentialTapAtPosition &&,WTF::CompletionHandler<void ()(std::optional<WebCore::RemoteUserInputEventData> &&)> &&,WTF::OptionSet<WTF::ObjectIdentifierGeneric::SendOption>)::{lambda(std::optional<WTF::CompletionHandler<void ()(std::optional<WebCore::RemoteUserInputEventData> &&)><WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>&)#1}>(a1, a2, a3, v22);
  result = v17;
  v17 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_19DE73BD0(_Unwind_Exception *exception_object, void *a2)
{
  if (v2)
  {
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      WTF::fastFree(v2, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::WebPageProxy::commitPotentialTap(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, int a7)
{
  v21[0] = a2;
  v21[1] = a3;
  v20 = a4;
  *&v19 = a5;
  *(&v19 + 1) = a6;
  v18 = a7;
  v17[0] = v21;
  v17[1] = &v20;
  v17[2] = &v19;
  v17[3] = &v18;
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a1 + 24), a1 + 16);
  v10 = *(a1 + 24);
  atomic_fetch_add(v10, 1u);
  v11 = v20;
  *&v15[7] = v19;
  v12 = v18;
  v13 = WTF::fastMalloc(0x30);
  *v13 = &unk_1F110E038;
  *(v13 + 8) = v10;
  *(v13 + 16) = v11;
  *(v13 + 17) = *v15;
  *(v13 + 32) = *&v15[15];
  *(v13 + 40) = v12;
  v16 = v13;
  v22[0] = v17;
  v22[1] = &v16;
  v23 = 0;
  WebKit::WebPageProxy::sendToWebPage<std::optional<WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>> WebKit::WebPageProxy::sendWithAsyncReplyToProcessContainingFrame<Messages::WebPage::CommitPotentialTap,WTF::CompletionHandler<void ()(std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>> &&)>>(std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,Messages::WebPage::CommitPotentialTap &&,WTF::CompletionHandler<void ()(std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>> &&)> &&,WTF::OptionSet<WTF::CompletionHandler<void ()(std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>> &&)>::SendOption>)::{lambda(std::optional<WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>&)#1}>(a1, a2, a3, v22);
  result = v16;
  v16 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_19DE73D24(_Unwind_Exception *exception_object, void *a2)
{
  if (v2)
  {
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      WTF::fastFree(v2, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::WebPageProxy::attemptSyntheticClick(uint64_t a1, float *a2, char a3, uint64_t a4, uint64_t a5)
{
  v16 = a3;
  v15[0] = a4;
  v15[1] = a5;
  v6 = *(a1 + 352);
  v7 = roundf(*a2);
  v8 = 0x7FFFFFFFLL;
  v9 = 0x80000000;
  if (v7 > -2147500000.0)
  {
    v9 = v7;
  }

  if (v7 < 2147500000.0)
  {
    v8 = v9;
  }

  v10 = roundf(a2[1]);
  if (v10 >= 2147500000.0)
  {
    v11 = 0x7FFFFFFF00000000;
  }

  else if (v10 <= -2147500000.0)
  {
    v11 = 0x8000000000000000;
  }

  else
  {
    v11 = v10 << 32;
  }

  v13 = v11 | v8;
  v14[0] = &v13;
  v14[1] = &v16;
  v14[2] = v15;
  return WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::AttemptSyntheticClick>(v6, v14, *(a1 + 48), 0);
}

uint64_t WebKit::WebPageProxy::couldNotRestorePageState(uint64_t this)
{
  v1 = *(this + 56);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      (*(*v2 + 1712))(v2);
      (*(*v2 + 976))(v2);
      v3 = *(*v2 + 1720);

      return v3(v2);
    }
  }

  return this;
}

void WebKit::WebPageProxy::restorePageState(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, double a7)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a7 <= 0.0)
  {
    v16 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      v17 = 136446210;
      v18 = "void WebKit::WebPageProxy::restorePageState(IPC::Connection &, std::optional<WebCore::FloatPoint>, const WebCore::FloatPoint &, const WebCore::FloatBoxExtent &, double)";
      _os_log_fault_impl(&dword_19D52D000, v16, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/UIProcess/ios/WebPageProxyIOS.mm 939: Invalid message dispatched %{public}s", &v17, 0xCu);
    }

    *(a2 + 94) = 1;
    if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
    {
      __break(0xC471u);
    }
  }

  else
  {
    v7 = *(a1 + 56);
    if (v7)
    {
      v8 = *(v7 + 8);
      if (v8)
      {
        (*(*v8 + 1712))(v8);
        (*(*v8 + 984))(v8, a3, a4, a5, a6, a7);
        v14 = *(*v8 + 1720);

        v14(v8);
      }
    }
  }
}

void WebKit::WebPageProxy::restorePageCenterAndScale(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, double a5)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a5 <= 0.0)
  {
    v12 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      v13 = 136446210;
      v14 = "void WebKit::WebPageProxy::restorePageCenterAndScale(IPC::Connection &, std::optional<WebCore::FloatPoint>, double)";
      _os_log_fault_impl(&dword_19D52D000, v12, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/UIProcess/ios/WebPageProxyIOS.mm 946: Invalid message dispatched %{public}s", &v13, 0xCu);
    }

    *(a2 + 94) = 1;
    if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
    {
      __break(0xC471u);
    }
  }

  else
  {
    v5 = *(a1 + 56);
    if (v5)
    {
      v6 = *(v5 + 8);
      if (v6)
      {
        (*(*v6 + 1712))(v6);
        (*(*v6 + 992))(v6, a3, a4, a5);
        v10 = *(*v6 + 1720);

        v10(v6);
      }
    }
  }
}

uint64_t WebKit::WebPageProxy::didGetTapHighlightGeometries(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = *(result + 56);
  if (v9)
  {
    v10 = *(v9 + 8);
    if (v10)
    {
      (*(*v10 + 1712))(v10);
      (*(*v10 + 960))(v10, a2, a3, a4, a5, a6, a7, a8, a9);
      v18 = *(*v10 + 1720);

      return v18(v10);
    }
  }

  return result;
}

uint64_t WebKit::WebPageProxy::updateInputContextAfterBlurringAndRefocusingElement(uint64_t this)
{
  v1 = *(this + 56);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      (*(*v2 + 1712))(v2);
      (*(*v2 + 1008))(v2);
      v3 = *(*v2 + 1720);

      return v3(v2);
    }
  }

  return this;
}

uint64_t WebKit::WebPageProxy::didProgrammaticallyClearFocusedElement(uint64_t result, uint64_t a2)
{
  v2 = *(result + 56);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      (*(*v3 + 1712))(v3);
      (*(*v3 + 1016))(v3, a2);
      v5 = *(*v3 + 1720);

      return v5(v3);
    }
  }

  return result;
}

uint64_t WebKit::WebPageProxy::elementDidFocus(uint64_t result, WebKit::WebProcessProxy *a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int16 a6, API::Object **a7)
{
  if (*(result + 538) == 1)
  {
    *(result + 538) = 0;
  }

  v13 = *(result + 56);
  if (v13)
  {
    v14 = *(v13 + 8);
    if (v14)
    {
      (*(*v14 + 1712))(v14);
      WebKit::WebProcessProxy::fromConnection(a2, v15, &v19);
      v16 = v19;
      WebKit::WebProcessProxy::transformHandlesToObjects(v19, *a7, &v20);
      v17 = v20;
      if (v20)
      {
        CFRetain(v20[1]);
        v18 = v20;
        v20 = 0;
        if (v18)
        {
          CFRelease(v18[1]);
        }
      }

      WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v16 + 4);
      (*(*v14 + 1000))(v14, a3, a4, a5, a6, v17);
      if (v17)
      {
        CFRelease(v17[1]);
      }

      return (*(*v14 + 1720))(v14);
    }
  }

  return result;
}

void sub_19DE7488C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    CFRelease(*(a10 + 8));
  }

  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v11 + 16));
  (*(*v10 + 1720))(v10);
  _Unwind_Resume(a1);
}

uint64_t WebKit::WebPageProxy::elementDidBlur(uint64_t this)
{
  if (*(this + 538) == 1)
  {
    *(this + 538) = 0;
  }

  v1 = *(this + 56);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      (*(*v2 + 1712))(v2);
      (*(*v2 + 1032))(v2);
      v3 = *(*v2 + 1720);

      return v3(v2);
    }
  }

  return this;
}

uint64_t WebKit::WebPageProxy::updateFocusedElementInformation(uint64_t this, const FocusedElementInformation *a2)
{
  v2 = *(this + 56);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      (*(*v3 + 1712))(v3);
      (*(*v3 + 1024))(v3, a2);
      v5 = *(*v3 + 1720);

      return v5(v3);
    }
  }

  return this;
}

uint64_t WebKit::WebPageProxy::focusedElementDidChangeInputMode(uint64_t result, uint64_t a2)
{
  v3 = *(result + 32);
  if (v3[2536] || v3[2537] || v3[2538] || v3[2539])
  {
    *(result + 537) = a2 | 0x100;
  }

  else
  {
    v4 = *(result + 56);
    if (v4)
    {
      v5 = *(v4 + 8);
      if (v5)
      {
        (*(*v5 + 1712))(v5);
        (*(*v5 + 1040))(v5, a2);
        v6 = *(*v5 + 1720);

        return v6(v5);
      }
    }
  }

  return result;
}

uint64_t WebKit::WebPageProxy::didReleaseAllTouchPoints(WebKit::WebPageProxy *this)
{
  result = WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::DidReleaseAllTouchPoints>(*(this + 44), &v5, *(this + 6), 0);
  if (*(this + 538) == 1)
  {
    v3 = *(this + 7);
    if (!v3)
    {
      goto LABEL_6;
    }

    v4 = *(v3 + 8);
    if (!v4)
    {
      goto LABEL_6;
    }

    result = (*(*v4 + 1712))(v4);
    if ((*(this + 538) & 1) == 0)
    {
      __break(1u);
      return result;
    }

    (*(*v4 + 1040))(v4, *(this + 537));
    result = (*(*v4 + 1720))(v4);
    if (*(this + 538))
    {
LABEL_6:
      *(this + 538) = 0;
    }
  }

  return result;
}

uint64_t WebKit::WebPageProxy::autofillLoginCredentials(WebKit::WebPageProxy *this, atomic_uint **a2, const WTF::String *a3)
{
  v6 = *(this + 72);
  WebKit::WebPageProxy::currentURL(this, &v12);
  MEMORY[0x19EB01DD0](v13, &v12, 0);
  WebKit::WebAuthenticatorCoordinatorProxy::recordAutofill(v6, a2, v13);
  v8 = v13[0];
  v13[0] = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v7);
  }

  v9 = v12;
  v12 = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v7);
  }

  v10 = *(this + 44);
  v13[0] = a2;
  v13[1] = a3;
  return WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::AutofillLoginCredentials>(v10, v13, *(this + 6), 0);
}

void sub_19DE74E7C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
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

uint64_t WebKit::WebPageProxy::showInspectorHighlight(uint64_t this, const InspectorOverlayHighlight *a2)
{
  v2 = *(this + 56);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      (*(*v3 + 1712))(v3);
      (*(*v3 + 1176))(v3, a2);
      v5 = *(*v3 + 1720);

      return v5(v3);
    }
  }

  return this;
}

uint64_t WebKit::WebPageProxy::hideInspectorHighlight(uint64_t this)
{
  v1 = *(this + 56);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      (*(*v2 + 1712))(v2);
      (*(*v2 + 1184))(v2);
      v3 = *(*v2 + 1720);

      return v3(v2);
    }
  }

  return this;
}

uint64_t WebKit::WebPageProxy::showInspectorIndication(uint64_t this)
{
  v1 = *(this + 56);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      (*(*v2 + 1712))(v2);
      (*(*v2 + 1192))(v2);
      v3 = *(*v2 + 1720);

      return v3(v2);
    }
  }

  return this;
}

uint64_t WebKit::WebPageProxy::hideInspectorIndication(uint64_t this)
{
  v1 = *(this + 56);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      (*(*v2 + 1712))(v2);
      (*(*v2 + 1200))(v2);
      v3 = *(*v2 + 1720);

      return v3(v2);
    }
  }

  return this;
}

uint64_t WebKit::WebPageProxy::enableInspectorNodeSearch(uint64_t this)
{
  v1 = *(this + 56);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      (*(*v2 + 1712))(v2);
      (*(*v2 + 1208))(v2);
      v3 = *(*v2 + 1720);

      return v3(v2);
    }
  }

  return this;
}

uint64_t WebKit::WebPageProxy::disableInspectorNodeSearch(uint64_t this)
{
  v1 = *(this + 56);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      (*(*v2 + 1712))(v2);
      (*(*v2 + 1216))(v2);
      v3 = *(*v2 + 1720);

      return v3(v2);
    }
  }

  return this;
}

atomic_uint *WebKit::WebPageProxy::focusNextFocusedElement(uint64_t a1, void *a2, uint64_t *a3)
{
  if (*(a1 + 865) & 1) == 0 && (*(a1 + 864))
  {
    v4 = *(a1 + 352);
    v20 = a2;
    v5 = *a3;
    *a3 = 0;
    v6 = *(a1 + 352);
    v7 = *(*(v6 + 160) + 8);
    if (v7)
    {
      atomic_fetch_add((v7 + 16), 1u);
      v8 = WebKit::ProcessThrottlerActivity::operator new(0x30, a2);
      WebKit::ProcessThrottlerActivity::ProcessThrottlerActivity(v8, v6 + 144, "WebPageProxy::focusNextFocusedElement", 38, 0, 0);
      v9 = *(a1 + 48);
      v11 = IPC::Encoder::operator new(0x238, v10);
      *v11 = 2558;
      *(v11 + 2) = 0;
      *(v11 + 3) = 0;
      *(v11 + 1) = v9;
      *(v11 + 68) = 0;
      *(v11 + 70) = 0;
      *(v11 + 69) = 0;
      IPC::Encoder::encodeHeader(v11);
      v23 = v11;
      IPC::Encoder::operator<<<BOOL &>(v11, &v20);
      v12 = WTF::fastMalloc(0x18);
      *v12 = &unk_1F110E060;
      v12[1] = v5;
      v12[2] = v8;
      if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected != 1)
      {
        IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
        v21[0] = v12;
        v21[1] = IdentifierInternal;
        v22 = 1;
        WebKit::AuxiliaryProcessProxy::sendMessage(v4, &v23, 0, v21, 1);
        if (v22 == 1)
        {
          v15 = v21[0];
          v21[0] = 0;
          if (v15)
          {
            (*(*v15 + 8))(v15);
          }
        }

        v16 = v23;
        v23 = 0;
        if (v16)
        {
          IPC::Encoder::~Encoder(v16, v14);
          bmalloc::api::tzoneFree(v18, v19);
        }

        return WebKit::ProcessThrottler::deref((v6 + 144));
      }

      __break(0xC471u);
    }

    else
    {
      __break(0xC471u);
    }

    JUMPOUT(0x19DE756F8);
  }

  return WTF::CompletionHandler<void ()(void)>::operator()(a3);
}

void sub_19DE7571C(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, IPC::Encoder *a14)
{
  if (a13 == 1 && a11)
  {
    (*(*a11 + 8))(a11);
  }

  if (a14)
  {
    IPC::Encoder::~Encoder(a14, a2);
    bmalloc::api::tzoneFree(v16, v17);
  }

  WebKit::ProcessThrottler::deref((v14 + 144));
  _Unwind_Resume(a1);
}

uint64_t WebKit::WebPageProxy::didPerformDictionaryLookup(uint64_t result, uint64_t a2)
{
  v2 = *(result + 56);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      (*(*v3 + 1712))(v3);
      (*(*v3 + 792))(v3, a2);
      v5 = *(*v3 + 1720);

      return v5(v3);
    }
  }

  return result;
}

WebKit::RemoteLayerTreeHost *WebKit::WebPageProxy::setRemoteLayerTreeRootNode(WebKit::WebPageProxy *this, WebKit::RemoteLayerTreeNode *a2)
{
  v3 = *(this + 7);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      (*(*v4 + 1712))(v4);
      (*(*v4 + 512))(v4, a2);
      (*(*v4 + 1720))(v4);
    }
  }

  return std::unique_ptr<WebKit::RemoteLayerTreeHost>::reset[abi:sn200100](this + 42, 0);
}

uint64_t WebKit::WebPageProxy::showPlaybackTargetPicker(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(result + 56);
  if (v5)
  {
    v6 = *(v5 + 8);
    if (v6)
    {
      (*(*v6 + 1712))(v6);
      (*(*v6 + 1088))(v6, a2, a3, a4, a5);
      v11 = *(*v6 + 1720);

      return v11(v6);
    }
  }

  return result;
}

uint64_t WebKit::WebPageProxy::commitPotentialTapFailed(uint64_t this)
{
  v1 = *(this + 56);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      (*(*v2 + 1712))(v2);
      (*(*v2 + 952))(v2);
      v3 = *(*v2 + 1720);

      return v3(v2);
    }
  }

  return this;
}

uint64_t WebKit::WebPageProxy::didNotHandleTapAsClick(WebKit::WebPageProxy *this, const IntPoint *a2)
{
  v4 = *(this + 7);
  if (v4)
  {
    v5 = *(v4 + 8);
    if (v5)
    {
      (*(*v5 + 1712))(v5);
      (*(*v5 + 624))(v5, a2);
      (*(*v5 + 1720))(v5);
    }
  }

  v6 = *(**(this + 15) + 480);

  return v6();
}

uint64_t WebKit::WebPageProxy::didHandleTapAsHover(uint64_t this)
{
  v1 = *(this + 56);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      (*(*v2 + 1712))(v2);
      (*(*v2 + 632))(v2);
      v3 = *(*v2 + 1720);

      return v3(v2);
    }
  }

  return this;
}

uint64_t WebKit::WebPageProxy::didCompleteSyntheticClick(uint64_t this)
{
  v1 = *(this + 56);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      (*(*v2 + 1712))(v2);
      (*(*v2 + 640))(v2);
      v3 = *(*v2 + 1720);

      return v3(v2);
    }
  }

  return this;
}

uint64_t WebKit::WebPageProxy::disableDoubleTapGesturesDuringTapIfNecessary(uint64_t result, uint64_t a2)
{
  v2 = *(result + 56);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      (*(*v3 + 1712))(v3);
      (*(*v3 + 1104))(v3, a2);
      v5 = *(*v3 + 1720);

      return v5(v3);
    }
  }

  return result;
}

uint64_t WebKit::WebPageProxy::handleSmartMagnificationInformationForPotentialTap(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8)
{
  v8 = *(result + 56);
  if (v8)
  {
    v9 = *(v8 + 8);
    if (v9)
    {
      (*(*v9 + 1712))(v9);
      (*(*v9 + 1112))(v9, a2, a3, a4, a5, a6, a7, a8);
      v17 = *(*v9 + 1720);

      return v17(v9);
    }
  }

  return result;
}

atomic_ullong WebKit::WebPageProxy::computePagesForPrintingiOS(const WebKit::WebPageProxy *a1, uint64_t a2, uint64_t a3)
{
  v12 = a2;
  if (*(a1 + 865))
  {
    return 0;
  }

  if (*(a1 + 864) != 1)
  {
    return 0;
  }

  v9[0] = &v12;
  v9[1] = a3;
  v8 = 0x7FF0000000000000;
  v13[0] = v9;
  v13[1] = &v8;
  WebKit::WebPageProxy::sendToWebPage<IPC::ConnectionSendSyncResult<Messages::WebPage::ComputePagesForPrintingiOS> WebKit::WebPageProxy::sendSyncToProcessContainingFrame<Messages::WebPage::ComputePagesForPrintingiOS>(std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,Messages::WebPage::ComputePagesForPrintingiOS&&,IPC::Timeout const&)::{lambda(Messages::WebPage::ComputePagesForPrintingiOS&)#1}>(a1, a2, 1, v13, v10);
  if (v11)
  {
    return 0;
  }

  v5 = v10[0];
  v3 = v10[1];
  v10[0] = 0;
  if (v5)
  {
    IPC::Decoder::~Decoder(v5);
    bmalloc::api::tzoneFree(v6, v7);
  }

  return v3;
}

uint64_t WebKit::WebPageProxy::drawToPDFiOS(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = a2;
  if ((*(a1 + 865) & 1) != 0 || (*(a1 + 864) & 1) == 0)
  {
    WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&)>::operator()(a5);
    return 0;
  }

  else
  {
    v6[0] = &v7;
    v6[1] = a3;
    v6[2] = a4;
    v8[0] = v6;
    v8[1] = a5;
    v9 = 0;
    return WebKit::WebPageProxy::sendToWebPage<std::optional<WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>> WebKit::WebPageProxy::sendWithAsyncReplyToProcessContainingFrame<Messages::WebPage::DrawToPDFiOS,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&)>>(std::__1<std::optional<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,Messages::WebPage::DrawToPDFiOS &&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&)> &&,WTF::OptionSet<WTF::ObjectIdentifierGeneric::SendOption>)::{lambda(std::__1<std::optional<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>&)#1}>(a1, a2, 1, v8);
  }
}

void sub_19DE76428(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned int *a14)
{
  if (a14)
  {
    if (atomic_fetch_add(a14 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, a14 + 2);
      (*(*a14 + 8))(a14);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::WebPageProxy::drawToImage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = a2;
  if ((*(a1 + 865) & 1) != 0 || (*(a1 + 864) & 1) == 0)
  {
    WTF::CompletionHandler<void ()(std::optional<WebCore::ShareableBitmapHandle> &&)>::operator()(a4);
    return 0;
  }

  else
  {
    v5[0] = &v8;
    v5[1] = a3;
    v6[0] = v5;
    v6[1] = a4;
    v7 = 0;
    return WebKit::WebPageProxy::sendToWebPage<std::optional<WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>> WebKit::WebPageProxy::sendWithAsyncReplyToProcessContainingFrame<Messages::WebPage::DrawToImage,WTF::CompletionHandler<void ()(std::optional<WebCore::ShareableBitmapHandle> &&)>>(std::optional<WTF::CompletionHandler<void ()(std::optional<WebCore::ShareableBitmapHandle> &&)><WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,Messages::WebPage::DrawToImage &&,WTF::CompletionHandler<void ()(std::optional<WebCore::ShareableBitmapHandle> &&)> &&,WTF::OptionSet<WTF::ObjectIdentifierGeneric::SendOption>)::{lambda(std::optional<WTF::CompletionHandler<void ()(std::optional<WebCore::ShareableBitmapHandle> &&)><WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>&)#1}>(a1, a2, 1, v6);
  }
}

void sub_19DE7652C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, CFTypeRef cf, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a21 == 1)
  {
    if (a15 == 1)
    {
      v22 = cf;
      cf = 0;
      if (v22)
      {
        CFRelease(v22);
      }
    }

    WTF::MachSendRight::~MachSendRight(&a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::WebPageProxy::generateSyntheticEditingCommand(uint64_t result, char a2)
{
  if ((*(result + 865) & 1) == 0 && *(result + 864) == 1)
  {
    v6 = v2;
    v7 = v3;
    v4 = *(result + 352);
    v5 = a2;
    return WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::GenerateSyntheticEditingCommand>(v4, &v5, *(result + 48), 0);
  }

  return result;
}

WebKit::WebPageProxy *WebKit::WebPageProxy::didUpdateEditorState(WebKit::WebPageProxy *this, const WebKit::EditorState *a2, const WebKit::EditorState *a3)
{
  v4 = this;
  if (*(a3 + 15) != *(a2 + 15) || (*(a2 + 9)) && (*(a3 + 9) & 1) == 0)
  {
    v5 = *(this + 7);
    if (v5)
    {
      v6 = *(v5 + 8);
      if (v6)
      {
        (*(*v6 + 1712))(v6);
        (*(*v6 + 472))(v6);
        this = (*(*v6 + 1720))(v6);
      }
    }
  }

  if ((*(a3 + 8) & 1) == 0)
  {
    this = WebKit::WebPageProxy::updateFontAttributesAfterEditorStateChange(v4, a2);
    v7 = *(v4 + 7);
    if (v7)
    {
      v8 = *(v7 + 8);
      if (v8)
      {
        (*(*v8 + 1712))(v8);
        (*(*v8 + 528))(v8);
        v9 = *(*v8 + 1720);

        return v9(v8);
      }
    }
  }

  return this;
}

uint64_t WebKit::WebPageProxy::dispatchDidUpdateEditorState(uint64_t this)
{
  if (*(this + 1168) == 1)
  {
    v1 = this;
    if (*(*(this + 32) + 528) == 1)
    {
      v2 = *(this + 56);
      if (v2)
      {
        v3 = *(v2 + 8);
        if (v3)
        {
          (*(*v3 + 1712))(v3);
          (*(*v3 + 1048))(v3);
          *(v1 + 1168) = 0;
          v4 = *(*v3 + 1720);

          return v4(v3);
        }
      }
    }
  }

  return this;
}

uint64_t WebKit::WebPageProxy::showValidationMessage(uint64_t result, const IntRect *a2, uint64_t a3)
{
  v3 = *(result + 56);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      v7 = result;
      (*(*v4 + 1712))(v4);
      v8 = *(v7 + 368);
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::minimumFontSizeKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::minimumFontSizeKey(void)::key = WebKit::WebPreferencesKey::minimumFontSizeKey(void)::$_0::operator() const(void)::impl;
      }

      v14 = WebKit::valueForKey<double>(v8 + 40, v8 + 64, &WebKit::WebPreferencesKey::minimumFontSizeKey(void)::key);
      (*(*v4 + 776))(&v15, v4, a3, &v14);
      v9 = v15;
      v15 = 0;
      v10 = *(v7 + 952);
      *(v7 + 952) = v9;
      if (v10)
      {
        WTF::RefCounted<WebCore::ValidationBubble>::deref(v10);
        v11 = v15;
        v15 = 0;
        if (v11)
        {
          WTF::RefCounted<WebCore::ValidationBubble>::deref(v11);
        }
      }

      v12 = *(v7 + 952);
      v13 = (*(**(v7 + 120) + 504))(*(v7 + 120));
      WebCore::ValidationBubble::setAnchorRect(v12, a2, v13);
      if ((*(v7 + 546) & 1) == 0)
      {
        WebCore::ValidationBubble::show(*(v7 + 952));
      }

      return (*(*v4 + 1720))(v4);
    }
  }

  return result;
}

uint64_t WebKit::WebPageProxy::requestEvasionRectsAboveSelection(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 865) & 1) == 0 && (*(a1 + 864))
  {
    return WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::WebPage::RequestEvasionRectsAboveSelection,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::FloatRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)>>(*(a1 + 352), &v3, a2, *(a1 + 48), 0, 1);
  }

  WTF::CompletionHandler<void ()(WTF::Vector<WebCore::FloatRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)>::operator()(a2);
  return 0;
}

void sub_19DE76B60(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF *a9, int a10)
{
  if (a9)
  {
    WTF::fastFree(a9, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::CompletionHandler<void ()(WTF::Vector<WebCore::FloatRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)>::operator()(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

uint64_t WebKit::WebPageProxy::updateSelectionWithDelta(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if ((*(a1 + 865) & 1) != 0 || (*(a1 + 864) & 1) == 0)
  {

    return WTF::CompletionHandler<void ()(void)>::operator()(a4);
  }

  else
  {
    v5 = *(a1 + 352);
    v7[0] = a2;
    v7[1] = a3;
    return WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::WebPage::UpdateSelectionWithDelta,WTF::CompletionHandler<void ()(void)>>(v5, v7, a4, *(a1 + 48), 0, 1);
  }
}

float WebKit::WebPageProxy::selectionBoundingRectInRootViewCoordinates(WebKit::WebPageProxy *this)
{
  v1 = *(this + 4);
  if (*(v1 + 281) == 1)
  {
    v10 = 0;
    v11 = 0;
  }

  else
  {
    v2 = *(v1 + 800);
    v10 = 0;
    v11 = 0;
    if (v2 == 1)
    {
      if (*(v1 + 282) == 1)
      {
        v3 = *(v1 + 620);
        if (v3)
        {
          v4 = *(v1 + 608);
          v5 = 84 * v3;
          do
          {
            v8[0] = WebCore::SelectionGeometry::rect(v4);
            v8[1] = v6;
            WebCore::FloatRect::FloatRect(v9, v8);
            WebCore::FloatRect::unite(&v10, v9);
            v4 = (v4 + 84);
            v5 -= 84;
          }

          while (v5);
        }
      }

      else
      {
        WebCore::FloatRect::FloatRect(&v10, (v1 + 544));
      }
    }
  }

  return *&v10;
}

uint64_t WebKit::WebPageProxy::requestDocumentEditingContext(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if ((*(a1 + 865) & 1) != 0 || (*(a1 + 864) & 1) == 0)
  {
    WebCore::AttributedString::AttributedString(v9);
    WebCore::AttributedString::AttributedString(v10);
    WebCore::AttributedString::AttributedString(v11);
    WebCore::AttributedString::AttributedString(v12);
    WebCore::AttributedString::AttributedString(v13);
    v15 = 0u;
    v14 = 0u;
    *&v13[40] = 0u;
    WTF::CompletionHandler<void ()(WebKit::DocumentEditingContext &&)>::operator()(a3);
    v7 = v15;
    if (v15)
    {
      *&v15 = 0;
      DWORD2(v15) = 0;
      WTF::fastFree(v7, v6);
    }

    v8 = v14;
    if (v14)
    {
      *&v14 = 0;
      DWORD2(v14) = 0;
      WTF::fastFree(v8, v6);
    }

    MEMORY[0x19EB065D0](v13);
    MEMORY[0x19EB065D0](v12);
    MEMORY[0x19EB065D0](v11);
    MEMORY[0x19EB065D0](v10);
    return MEMORY[0x19EB065D0](v9);
  }

  else
  {
    v4 = *(a1 + 352);
    v9[0] = a2;
    return WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::WebPage::RequestDocumentEditingContext,WTF::CompletionHandler<void ()(WebKit::DocumentEditingContext &&)>>(v4, v9, a3, *(a1 + 48), 0, 1);
  }
}

void sub_19DE76E60(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, WTF *a37, int a38, WTF *a39, int a40)
{
  v44 = a39;
  if (a39)
  {
    a39 = 0;
    a40 = 0;
    WTF::fastFree(v44, a2);
  }

  v45 = a37;
  if (a37)
  {
    a37 = 0;
    a38 = 0;
    WTF::fastFree(v45, a2);
  }

  MEMORY[0x19EB065D0](v42 + 160);
  MEMORY[0x19EB065D0](v41 + 120);
  MEMORY[0x19EB065D0](v41 + 80);
  MEMORY[0x19EB065D0](v40 + 40);
  MEMORY[0x19EB065D0](&a10);
  _Unwind_Resume(a1);
}

uint64_t WTF::CompletionHandler<void ()(WebKit::DocumentEditingContext &&)>::operator()(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

uint64_t *WebKit::WebPageProxy::requestDragStart(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, WTF::RefCountedBase *a7)
{
  v19[0] = a2;
  v19[1] = a3;
  v18 = a6;
  if ((*(a1 + 865) & 1) != 0 || (*(a1 + 864) & 1) == 0)
  {

    return WTF::CompletionHandler<void ()(BOOL)>::operator()(a7, 0);
  }

  else
  {
    v17[0] = v19;
    v17[1] = a4;
    v17[2] = a5;
    v17[3] = &v18;
    WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a1 + 24), a1 + 16);
    v11 = *(a1 + 24);
    atomic_fetch_add(v11, 1u);
    v12 = v18;
    v13 = *a7;
    *a7 = 0;
    v14 = WTF::fastMalloc(0x20);
    *v14 = &unk_1F110E100;
    *(v14 + 8) = v11;
    *(v14 + 16) = v12;
    *(v14 + 24) = v13;
    v16 = v14;
    v20[0] = v17;
    v20[1] = &v16;
    v21 = 0;
    WebKit::WebPageProxy::sendToWebPage<std::optional<WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>> WebKit::WebPageProxy::sendWithAsyncReplyToProcessContainingFrame<Messages::WebPage::RequestDragStart,WTF::CompletionHandler<void ()(WebKit::DragInitiationResult &&)>>(std::__1<std::optional<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,Messages::WebPage::RequestDragStart &&,WTF::CompletionHandler<void ()(WebKit::DragInitiationResult &&)> &&,WTF::OptionSet<WTF::ObjectIdentifierGeneric::SendOption>)::{lambda(std::__1<std::optional<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>&)#1}>(a1, a2, a3, v20);
    result = v16;
    v16 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void sub_19DE770E0(_Unwind_Exception *exception_object, void *a2)
{
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  if (v2)
  {
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      WTF::fastFree(v2, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t *WebKit::WebPageProxy::requestAdditionalItemsForDragSession(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, WTF::RefCountedBase *a7)
{
  v19[0] = a2;
  v19[1] = a3;
  v18 = a6;
  if ((*(a1 + 865) & 1) != 0 || (*(a1 + 864) & 1) == 0)
  {

    return WTF::CompletionHandler<void ()(BOOL)>::operator()(a7, 0);
  }

  else
  {
    v17[0] = v19;
    v17[1] = a4;
    v17[2] = a5;
    v17[3] = &v18;
    WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a1 + 24), a1 + 16);
    v11 = *(a1 + 24);
    atomic_fetch_add(v11, 1u);
    v12 = v18;
    v13 = *a7;
    *a7 = 0;
    v14 = WTF::fastMalloc(0x20);
    *v14 = &unk_1F110E128;
    *(v14 + 8) = v11;
    *(v14 + 16) = v12;
    *(v14 + 24) = v13;
    v16 = v14;
    v20[0] = v17;
    v20[1] = &v16;
    v21 = 0;
    WebKit::WebPageProxy::sendToWebPage<std::optional<WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>> WebKit::WebPageProxy::sendWithAsyncReplyToProcessContainingFrame<Messages::WebPage::RequestAdditionalItemsForDragSession,WTF::CompletionHandler<void ()(WebKit::DragInitiationResult &&)>>(std::__1<std::optional<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,Messages::WebPage::RequestAdditionalItemsForDragSession &&,WTF::CompletionHandler<void ()(WebKit::DragInitiationResult &&)> &&,WTF::OptionSet<WTF::ObjectIdentifierGeneric::SendOption>)::{lambda(std::__1<std::optional<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>&)#1}>(a1, a2, a3, v20);
    result = v16;
    v16 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void sub_19DE7728C(_Unwind_Exception *exception_object, void *a2)
{
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  if (v2)
  {
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      WTF::fastFree(v2, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::WebPageProxy::insertDroppedImagePlaceholders(uint64_t a1, unsigned int *a2, uint64_t *a3)
{
  if ((*(a1 + 865) & 1) != 0 || *(a1 + 864) != 1)
  {
    v32 = 0;
    IdentifierInternal = 0;
    LOBYTE(v24[0]) = 0;
    v31 = 0;
    WTF::CompletionHandler<void ()(WTF::Vector<WebCore::IntRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,std::optional<WebCore::TextIndicatorData>)>::operator()(a3, &v32, v24);
    if (v31 == 1)
    {
      if ((v30 & 0x8000000000000) != 0)
      {
        v23 = (v30 & 0xFFFFFFFFFFFFLL);
        if (atomic_fetch_add((v30 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v23);
          WTF::fastFree(v23, v18);
        }
      }

      v19 = v29;
      v29 = 0;
      if (v19)
      {
        if (v19[4] == 1)
        {
          (*(*v19 + 8))(v19);
        }

        else
        {
          --v19[4];
        }
      }

      v20 = v28;
      v28 = 0;
      if (v20)
      {
        if (v20[4] == 1)
        {
          (*(*v20 + 8))(v20);
        }

        else
        {
          --v20[4];
        }
      }

      v21 = v27;
      v27 = 0;
      if (v21)
      {
        if (v21[4] == 1)
        {
          (*(*v21 + 8))(v21);
        }

        else
        {
          --v21[4];
        }
      }

      v22 = v25;
      if (v25)
      {
        v25 = 0;
        v26 = 0;
        WTF::fastFree(v22, v18);
      }
    }

    result = v32;
    if (v32)
    {
      v32 = 0;
      LODWORD(IdentifierInternal) = 0;
      return WTF::fastFree(result, v18);
    }
  }

  else
  {
    v5 = *(a1 + 352);
    v6 = *(a1 + 48);
    v7 = IPC::Encoder::operator new(0x238, a2);
    *v7 = 2608;
    *(v7 + 2) = 0;
    *(v7 + 3) = 0;
    *(v7 + 1) = v6;
    *(v7 + 68) = 0;
    *(v7 + 70) = 0;
    *(v7 + 69) = 0;
    IPC::Encoder::encodeHeader(v7);
    v35 = v7;
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v7, a2[3]);
    v8 = a2[3];
    if (v8)
    {
      v9 = *a2;
      v10 = 8 * v8;
      do
      {
        IPC::ArgumentCoder<WebCore::IntPoint,void>::encode(v7, v9);
        v9 += 2;
        v10 -= 8;
      }

      while (v10);
    }

    v11 = *a3;
    *a3 = 0;
    v12 = WTF::fastMalloc(0x10);
    *v12 = &unk_1F110E150;
    v12[1] = v11;
    if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
    {
      result = 141;
      __break(0xC471u);
    }

    else
    {
      v32 = v12;
      IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
      v34 = 1;
      WebKit::AuxiliaryProcessProxy::sendMessage(v5, &v35, 0, &v32, 1);
      if (v34 == 1)
      {
        v14 = v32;
        v32 = 0;
        if (v14)
        {
          (*(*v14 + 8))(v14);
        }
      }

      result = v35;
      v35 = 0;
      if (result)
      {
        IPC::Encoder::~Encoder(result, v13);
        return bmalloc::api::tzoneFree(v16, v17);
      }
    }
  }

  return result;
}

void sub_19DE775C8(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, WTF *a15, int a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (*(v26 - 64) == 1)
  {
    v28 = *(v26 - 80);
    *(v26 - 80) = 0;
    if (v28)
    {
      (*(*v28 + 8))(v28);
    }
  }

  v29 = *(v26 - 56);
  *(v26 - 56) = 0;
  if (v29)
  {
    IPC::Encoder::~Encoder(v29, a2);
    bmalloc::api::tzoneFree(v30, v31);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::CompletionHandler<void ()(WTF::Vector<WebCore::IntRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,std::optional<WebCore::TextIndicatorData>)>::operator()(uint64_t *a1, uint64_t a2, __int128 *a3)
{
  v19 = *a1;
  *a1 = 0;
  std::__optional_move_base<WebCore::TextIndicatorData,false>::__optional_move_base[abi:sn200100](v11, a3);
  WTF::Function<void ()(WTF::Vector<WebCore::IntRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,std::optional<WebCore::TextIndicatorData>)>::operator()(&v19, a2, v11);
  if (v18 == 1)
  {
    if ((v17 & 0x8000000000000) != 0)
    {
      v10 = (v17 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((v17 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v10);
        WTF::fastFree(v10, v4);
      }
    }

    v5 = v16;
    v16 = 0;
    if (v5)
    {
      if (v5[4] == 1)
      {
        (*(*v5 + 8))(v5);
      }

      else
      {
        --v5[4];
      }
    }

    v6 = v15;
    v15 = 0;
    if (v6)
    {
      if (v6[4] == 1)
      {
        (*(*v6 + 8))(v6);
      }

      else
      {
        --v6[4];
      }
    }

    v7 = v14;
    v14 = 0;
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

    v8 = v12;
    if (v12)
    {
      v12 = 0;
      v13 = 0;
      WTF::fastFree(v8, v4);
    }
  }

  result = v19;
  v19 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_19DE77950(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, WTF *a16, int a17, uint64_t a18, _DWORD *a19, _DWORD *a20, _DWORD *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (a27 == 1)
  {
    if ((a22 & 0x8000000000000) != 0)
    {
      v29 = (a22 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((a22 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v29);
        WTF::fastFree(v29, a2);
      }
    }

    if (a21)
    {
      if (a21[4] == 1)
      {
        (*(*a21 + 8))(a21);
      }

      else
      {
        --a21[4];
      }
    }

    if (a20)
    {
      if (a20[4] == 1)
      {
        (*(*a20 + 8))(a20);
      }

      else
      {
        --a20[4];
      }
    }

    if (a19)
    {
      if (a19[4] == 1)
      {
        (*(*a19 + 8))(a19);
      }

      else
      {
        --a19[4];
      }
    }

    if (a16)
    {
      WTF::fastFree(a16, a2);
    }
  }

  v30 = *(v27 - 24);
  *(v27 - 24) = 0;
  if (v30)
  {
    (*(*v30 + 8))(v30);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::WebPageProxy::willReceiveEditDragSnapshot(uint64_t this)
{
  v1 = *(this + 56);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      (*(*v2 + 1712))(v2);
      (*(*v2 + 1784))(v2);
      v3 = *(*v2 + 1720);

      return v3(v2);
    }
  }

  return this;
}

uint64_t WebKit::WebPageProxy::didReceiveEditDragSnapshot(uint64_t result, __int128 *a2)
{
  v2 = *(result + 56);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      (*(*v3 + 1712))(v3);
      std::__optional_copy_base<WebCore::TextIndicatorData,false>::__optional_copy_base[abi:sn200100](v11, a2);
      (*(*v3 + 1792))(v3, v11);
      if (v18 == 1)
      {
        if ((v17 & 0x8000000000000) != 0)
        {
          v10 = (v17 & 0xFFFFFFFFFFFFLL);
          if (atomic_fetch_add((v17 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v10);
            WTF::fastFree(v10, v5);
          }
        }

        v6 = v16;
        v16 = 0;
        if (v6)
        {
          if (v6[4] == 1)
          {
            (*(*v6 + 8))(v6);
          }

          else
          {
            --v6[4];
          }
        }

        v7 = v15;
        v15 = 0;
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

        v8 = v14;
        v14 = 0;
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

        v9 = v12;
        if (v12)
        {
          v12 = 0;
          v13 = 0;
          WTF::fastFree(v9, v5);
        }
      }

      return (*(*v3 + 1720))(v3);
    }
  }

  return result;
}

void sub_19DE77DA4(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, WTF *a15, int a16, uint64_t a17, _DWORD *a18, _DWORD *a19, _DWORD *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a26 == 1)
  {
    if ((a21 & 0x8000000000000) != 0)
    {
      v28 = (a21 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((a21 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v28);
        WTF::fastFree(v28, a2);
      }
    }

    if (a20)
    {
      if (a20[4] == 1)
      {
        (*(*a20 + 8))(a20);
      }

      else
      {
        --a20[4];
      }
    }

    if (a19)
    {
      if (a19[4] == 1)
      {
        (*(*a19 + 8))(a19);
      }

      else
      {
        --a19[4];
      }
    }

    if (a18)
    {
      if (a18[4] == 1)
      {
        (*(*a18 + 8))(a18);
      }

      else
      {
        --a18[4];
      }
    }

    if (a15)
    {
      WTF::fastFree(a15, a2);
    }
  }

  (*(*v26 + 1720))(v26);
  _Unwind_Resume(a1);
}

WTF::StringImpl *WebKit::WebPageProxy::didStartLoadForQuickLookDocumentInMainFrame(WebKit::WebPageProxy *this, WTF::StringImpl **a2, const WTF::String *a3)
{
  v4 = *(this + 11);
  if (*a2 && (v6 = WTF::StringImpl::reverseFind(), (v7 = *a2) != 0))
  {
    if (v6 != -1 || (*(v7 + 1) & 0x80000000) != 0)
    {
      WTF::StringImpl::substring(v7);
    }

    else
    {
      atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
      v10 = v7;
    }
  }

  else
  {
    v10 = 0;
  }

  (*(*v4 + 280))(v4, &v10, a3);
  result = v10;
  v10 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v8);
    }
  }

  return result;
}

void sub_19DE77FE0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
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

uint64_t WebKit::WebPageProxy::didFinishLoadForQuickLookDocumentInMainFrame(uint64_t a1)
{
  result = WebCore::ShareableResourceHandle::tryWrapInSharedBuffer();
  if (v3)
  {
    (*(**(a1 + 88) + 288))(*(a1 + 88));
    result = v3;
    if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3 + 2);
      return (*(*v3 + 8))();
    }
  }

  return result;
}

void sub_19DE780C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, unsigned int *a10)
{
  if (a10)
  {
    if (atomic_fetch_add(a10 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, a10 + 2);
      (*(*a10 + 8))(a10);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::WebPageProxy::requestPasswordForQuickLookDocumentInMainFrameShared(uint64_t a1, uint64_t a2, WTF::RefCountedBase *a3)
{
  v4 = *(a1 + 56);
  if (v4 && (v5 = *(v4 + 8)) != 0)
  {
    (*(*v5 + 1712))(v5);
    v7 = WTF::fastMalloc(0x10);
    *v7 = &unk_1F110E178;
    v8 = *a3;
    *a3 = 0;
    *(v7 + 1) = v8;
    if (v8)
    {
      v12 = v7;
      (*(*v5 + 1776))(v5, a2, &v12);
      v9 = v12;
      v12 = 0;
      if (v9)
      {
        (*(*v9 + 8))(v9);
      }

      return (*(*v5 + 1720))(v5);
    }

    else
    {
      result = 141;
      __break(0xC471u);
    }
  }

  else
  {
    v12 = 0;
    WTF::CompletionHandler<void ()(WTF::String const&)>::operator()(a3, &v12);
    result = v12;
    v12 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v11);
    }
  }

  return result;
}

void sub_19DE782B8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
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

uint64_t WebKit::WebPageProxy::Internals::paymentCoordinatorPresentingViewController(WebKit::WebPageProxy::Internals *this, const WebKit::WebPaymentCoordinatorProxy *a2)
{
  v2 = *(*(this + 9) + 8);
  if (v2)
  {
    return (*(**(v2 + 104) + 504))();
  }

  result = 92;
  __break(0xC471u);
  return result;
}

uint64_t WebKit::WebPageProxy::Internals::paymentCoordinatorCTDataConnectionServiceType(WebKit::WebPageProxy::Internals *this, const WebKit::WebPaymentCoordinatorProxy *a2)
{
  v2 = *(*(this + 9) + 8);
  if (v2)
  {
    return *(*(v2 + 392) + 224) + 336;
  }

  result = 92;
  __break(0xC471u);
  return result;
}

uint64_t non-virtual thunk toWebKit::WebPageProxy::Internals::paymentCoordinatorCTDataConnectionServiceType(WebKit::WebPageProxy::Internals *this, const WebKit::WebPaymentCoordinatorProxy *a2)
{
  v2 = *(*(this + 7) + 8);
  if (v2)
  {
    return *(*(v2 + 392) + 224) + 336;
  }

  result = 92;
  __break(0xC471u);
  return result;
}

uint64_t WebKit::WebPageProxy::isDesktopClassBrowsingRecommended(WebKit::WebPageProxy *this, const WebCore::ResourceRequest *a2, const WTF::StringImpl *a3)
{
  v5 = *(this + 46);
  if (v5[126] == 1)
  {
    if ((v5[125] & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::needsSiteSpecificQuirksKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::needsSiteSpecificQuirksKey(void)::key = WebKit::WebPreferencesKey::needsSiteSpecificQuirksKey(void)::$_0::operator() const(void)::impl;
    }

    if (!WebKit::WebPreferencesStore::getBoolValueForKey((v5 + 40), &WebKit::WebPreferencesKey::needsSiteSpecificQuirksKey(void)::key, a3))
    {
      goto LABEL_9;
    }
  }

  v6 = WebKit::desktopClassBrowsingRecommendedForRequest(a2, a2);
  if (v6 == 1)
  {
    v9 = 1;
    return v9 & 1;
  }

  if (!v6)
  {
    goto LABEL_19;
  }

LABEL_9:
  v7 = *(this + 7);
  if (v7)
  {
    v8 = *(v7 + 8);
    if (v8)
    {
      (*(*v8 + 1712))(v8);
      if (((*(*v8 + 1584))(v8) & 1) == 0)
      {
        v10 = WebKit::WebPageProxy::viewSize(this);
        if ((v10 - 1) <= 0x176 && v10 > 0)
        {
          (*(*v8 + 1720))(v8);
LABEL_19:
          v9 = 0;
          return v9 & 1;
        }
      }

      (*(*v8 + 1720))(v8);
    }
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZNK6WebKit12WebPageProxy33isDesktopClassBrowsingRecommendedERKN7WebCore15ResourceRequestE_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = this;
  if (qword_1EB01D660 != -1)
  {
    dispatch_once(&qword_1EB01D660, block);
  }

  v9 = byte_1EB01D651;
  return v9 & 1;
}

uint64_t WebKit::desktopClassBrowsingRecommendedForRequest(WebKit *this, const WebCore::ResourceRequest *a2)
{
  v3 = WebCore::ResourceRequestBase::url(this);
  if (WebCore::Quirks::needsIPadMiniUserAgent(v3, v4))
  {
    return 0;
  }

  v5 = WebCore::ResourceRequestBase::url(this);
  if (WebCore::Quirks::needsIPhoneUserAgent(v5, v6))
  {
    return 0;
  }

  v8 = WebCore::ResourceRequestBase::url(this);
  if (WebCore::Quirks::needsDesktopUserAgent(v8, v9))
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t ___ZNK6WebKit12WebPageProxy33isDesktopClassBrowsingRecommendedERKN7WebCore15ResourceRequestE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = MGGetSInt32Answer();
  if (v2 > 0x1C || ((1 << v2) & 0x100000C0) == 0)
  {
    if (qword_1EB01D688 != -1)
    {
      dispatch_once(&qword_1EB01D688, &__block_literal_global_499);
    }

    v4 = byte_1EB01D654;
  }

  else
  {
    v4 = 0;
  }

  byte_1EB01D651 = v4 & 1;
  result = (*(**(v1 + 88) + 240))(*(v1 + 88));
  if ((result & 1) == 0)
  {
    result = WTF::linkedOnOrAfterSDKWithBehavior();
    if ((result & 1) == 0)
    {
      byte_1EB01D651 = 0;
    }
  }

  return result;
}

uint64_t WebKit::WebPageProxy::useDesktopClassBrowsing(WebKit::WebPageProxy *this, const API::WebsitePolicies *a2, const WebCore::ResourceRequest *a3)
{
  if (*(a2 + 132) == 2)
  {
    return *(a2 + 138) != 1 || WebKit::desktopClassBrowsingRecommendedForRequest(a3, a2) != 0;
  }

  else if (*(a2 + 132))
  {
    return 0;
  }

  else
  {

    return WebKit::WebPageProxy::isDesktopClassBrowsingRecommended(this, a3, a3);
  }
}

uint64_t WebKit::WebPageProxy::predictedUserAgentForRequest@<X0>(uint64_t this@<X0>, const WebCore::ResourceRequest *a2@<X1>, atomic_uint **a3@<X8>)
{
  v4 = this;
  v6 = *(this + 464);
  if (v6 && v6[1])
  {
    goto LABEL_17;
  }

  this = API::PageConfiguration::Data::LazyInitializedRef<API::WebsitePolicies,&API::PageConfiguration::Data::createWebsitePolicies>::get((*(this + 64) + 48));
  v8 = this;
  v6 = *(this + 64);
  if (v6)
  {
    if (v6[1])
    {
      goto LABEL_17;
    }
  }

  this = *(this + 88);
  if (!this)
  {
LABEL_16:
    v6 = *(v4 + 55);
    if (!v6)
    {
LABEL_18:
      *a3 = v6;
      return this;
    }

LABEL_17:
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
    goto LABEL_18;
  }

  atomic_fetch_add_explicit(this, 2u, memory_order_relaxed);
  v9 = *(this + 4);
  if (atomic_fetch_add_explicit(this, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    this = WTF::StringImpl::destroy(this, v7);
    if (!v9)
    {
      goto LABEL_16;
    }
  }

  else if (!v9)
  {
    goto LABEL_16;
  }

  this = WebKit::WebPageProxy::useDesktopClassBrowsing(v4, v8, a2);
  if ((this & 1) == 0)
  {
    goto LABEL_16;
  }

  v10 = *(v8 + 11);
  if (v10)
  {
    atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
  }

  v12 = v10;
  WebCore::standardUserAgentWithApplicationName();
  this = v12;
  if (v12)
  {
    if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(v12, v11);
    }
  }

  return this;
}

void sub_19DE7894C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
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

uint64_t WebKit::WebPageProxy::effectiveContentModeAfterAdjustingPolicies(WebKit::WebPageProxy *this, API::WebsitePolicies *a2, const WebCore::ResourceRequest *a3)
{
  v52[2] = *MEMORY[0x1E69E9840];
  v6 = *(this + 46);
  CFRetain(*(v6 + 8));
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mediaSourceEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::mediaSourceEnabledKey(void)::key = WebKit::WebPreferencesKey::mediaSourceEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  if (WebKit::WebPreferencesStore::getBoolValueForKey((v6 + 40), &WebKit::WebPreferencesKey::mediaSourceEnabledKey(void)::key, v7))
  {
    *(a2 + 125) = 2;
  }

  if (*(v6 + 126) == 1)
  {
    if ((*(v6 + 125) & 1) == 0)
    {
LABEL_7:
      v9 = 0;
      goto LABEL_28;
    }
  }

  else
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::needsSiteSpecificQuirksKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::needsSiteSpecificQuirksKey(void)::key = WebKit::WebPreferencesKey::needsSiteSpecificQuirksKey(void)::$_0::operator() const(void)::impl;
    }

    if (!WebKit::WebPreferencesStore::getBoolValueForKey((v6 + 40), &WebKit::WebPreferencesKey::needsSiteSpecificQuirksKey(void)::key, v8))
    {
      goto LABEL_7;
    }
  }

  v10 = WebCore::ResourceRequestBase::url(a3);
  WebCore::Quirks::defaultVisibilityAdjustmentSelectors(&v49, v10, v11);
  if (v51 == 1)
  {
    v52[0] = v49;
    v12 = v50;
    v49 = 0;
    v50 = 0;
    v52[1] = v12;
    v48 = 0x100000001;
    v47 = WTF::fastMalloc(0x10);
    WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v47, v52);
    API::WebsitePolicies::setVisibilityAdjustmentSelectors(a2, &v47);
    WTF::Vector<WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v47, v13);
    WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v52, v14);
    if (v51)
    {
      WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v49, v15);
    }
  }

  v16 = WebCore::ResourceRequestBase::url(a3);
  if (!WebCore::Quirks::needsIPhoneUserAgent(v16, v17))
  {
    v9 = 1;
LABEL_28:
    v25 = WebKit::WebPageProxy::useDesktopClassBrowsing(this, a2, a3);
    *(this + 1186) = 0;
    if ((v25 & 1) == 0)
    {
      v24 = 1;
      *(a2 + 136) = 1;
      goto LABEL_77;
    }

    v27 = *(a2 + 8);
    if (v27 && *(v27 + 4))
    {
      goto LABEL_64;
    }

    v28 = *(this + 58);
    if (v28)
    {
      if (*(v28 + 4))
      {
        goto LABEL_64;
      }
    }

    v29 = *(a2 + 11);
    if (v29)
    {
      atomic_fetch_add_explicit(v29, 2u, memory_order_relaxed);
      v52[0] = v29;
      if (v29[1])
      {
        goto LABEL_43;
      }
    }

    else
    {
      v52[0] = 0;
    }

    v30 = *(this + 57);
    if (v30)
    {
      atomic_fetch_add_explicit(v30, 2u, memory_order_relaxed);
      v29 = v52[0];
    }

    v52[0] = v30;
    if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v29, v26);
    }

LABEL_43:
    LOBYTE(v49) = 0;
    LOBYTE(v50) = 0;
    if (!v9)
    {
      goto LABEL_51;
    }

    v31 = WebCore::ResourceRequestBase::url(a3);
    WebCore::Quirks::needsCustomUserAgentOverride(&v47, v31, (this + 448), v32);
    std::__optional_storage_base<WTF::String,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WTF::String,false>>(&v49, &v47);
    if (v48 == 1)
    {
      v34 = v47;
      v47 = 0;
      if (v34)
      {
        if (atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v34, v33);
        }
      }
    }

    if (v50)
    {
      v35 = v49;
      v49 = 0;
      v36 = *(a2 + 8);
      *(a2 + 8) = v35;
      if (!v36)
      {
LABEL_57:
        if (v50 == 1)
        {
          v39 = v49;
          v49 = 0;
          if (v39)
          {
            if (atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v39, v33);
            }
          }
        }

        v40 = v52[0];
        v52[0] = 0;
        if (v40 && atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v40, v33);
        }

LABEL_64:
        v41 = *(a2 + 10);
        if (!v41 || !*(v41 + 4))
        {
          WTF::StringImpl::createWithoutCopyingNonEmpty();
          v43 = *(a2 + 10);
          *(a2 + 10) = v49;
          if (v43)
          {
            if (atomic_fetch_add_explicit(v43, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v43, v42);
            }
          }
        }

        if (qword_1EB01D688 != -1)
        {
          dispatch_once(&qword_1EB01D688, &__block_literal_global_499);
        }

        if (byte_1EB01D654 == 1)
        {
          *(a2 + 31) = 16843266;
          *(this + 1186) = 1;
        }

        if (v9)
        {
          v44 = WebCore::ResourceRequestBase::url(a3);
          if (WebCore::Quirks::shouldOmitTouchEventDOMAttributesForDesktopWebsite(v44, v45))
          {
            *(a2 + 60) = 256;
          }
        }

        v24 = 2;
        *(a2 + 140) = 2;
        goto LABEL_77;
      }
    }

    else
    {
LABEL_51:
      WebCore::standardUserAgentWithApplicationName();
      v37 = v47;
      v47 = 0;
      v38 = *(a2 + 8);
      *(a2 + 8) = v37;
      if (!v38)
      {
        goto LABEL_57;
      }

      if (atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v38, v33);
      }

      v36 = v47;
      v47 = 0;
      if (!v36)
      {
        goto LABEL_57;
      }
    }

    if (atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v36, v33);
    }

    goto LABEL_57;
  }

  WebCore::standardUserAgentWithApplicationName();
  if (v47)
  {
    WTF::StringImpl::replace();
    v19 = v49;
  }

  else
  {
    v19 = 0;
  }

  v20 = *(a2 + 8);
  *(a2 + 8) = v19;
  if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v20, v18);
  }

  v21 = v47;
  v47 = 0;
  if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v21, v18);
  }

  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v23 = *(a2 + 10);
  *(a2 + 10) = v49;
  if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v23, v22);
  }

  v24 = 1;
LABEL_77:
  CFRelease(*(v6 + 8));
  return v24;
}

void sub_19DE78E94(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10, WTF::StringImpl *a11, char a12, int a13, __int16 a14, char a15, char a16, WTF::StringImpl *a17)
{
  if (a10 == 1 && a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, a2);
  }

  if (a12 == 1 && a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  if (a17)
  {
    if (atomic_fetch_add_explicit(a17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a17, a2);
    }
  }

  CFRelease(*(v17 + 8));
  _Unwind_Resume(a1);
}

uint64_t WebKit::WebPageProxy::textInputContextsInRect(uint64_t a1, uint64_t *a2, float a3, float a4, float a5, float a6)
{
  *v9 = a3;
  *&v9[1] = a4;
  *&v9[2] = a5;
  *&v9[3] = a6;
  if ((*(a1 + 865) & 1) != 0 || (*(a1 + 864) & 1) == 0)
  {
    WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ElementContext,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)>::operator()(a2);
    return 0;
  }

  else
  {
    v6 = *(a1 + 352);
    v8 = v9;
    return WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::WebPage::TextInputContextsInRect,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ElementContext,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)>>(v6, &v8, a2, *(a1 + 48), 0, 1);
  }
}

void sub_19DE79038(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF *a9, int a10)
{
  if (a9)
  {
    WTF::fastFree(a9, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ElementContext,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)>::operator()(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

uint64_t *WebKit::WebPageProxy::focusTextInputContextAndPlaceCaret(uint64_t a1, int *a2, int *a3, WTF::RefCountedBase *a4)
{
  if ((*(a1 + 865) & 1) != 0 || (*(a1 + 864) & 1) == 0)
  {

    return WTF::CompletionHandler<void ()(BOOL)>::operator()(a4, 0);
  }

  else
  {
    v5 = *(a1 + 352);
    v7[0] = a2;
    v7[1] = a3;
    return WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::WebPage::FocusTextInputContextAndPlaceCaret,WTF::CompletionHandler<void ()(BOOL)>>(v5, v7, a4, *(a1 + 48), 0, 1);
  }
}

uint64_t WebKit::WebPageProxy::setShouldRevealCurrentSelectionAfterInsertion(uint64_t this, char a2)
{
  if ((*(this + 865) & 1) == 0 && *(this + 864) == 1)
  {
    v6 = v2;
    v7 = v3;
    v4 = *(this + 352);
    v5 = a2;
    return WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::SetShouldRevealCurrentSelectionAfterInsertion>(v4, &v5, *(this + 48), 0);
  }

  return this;
}

uint64_t WebKit::WebPageProxy::willOpenAppLink(WebKit::WebPageProxy *this)
{
  result = WebKit::WebPageProxy::hasValidOpeningAppLinkActivity(this);
  if ((result & 1) == 0)
  {
    v3 = WebKit::WebPageProxy::takeOpeningAppLinkActivity(this);
    v4 = WTF::WorkQueue::mainSingleton(v3);
    WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(this + 6, this + 16);
    v5 = *(this + 3);
    atomic_fetch_add(v5, 1u);
    v6 = WTF::fastMalloc(0x10);
    *v6 = &unk_1F110E1F0;
    v6[1] = v5;
    v7 = v6;
    (*(*v4 + 16))(v4, &v7, 25.0);
    result = v7;
    v7 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void sub_19DE792AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

unint64_t WebKit::WebPageProxy::willPerformPasteCommand(uint64_t a1, unsigned int a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (a2 <= 1)
  {
    MEMORY[0x19EB02040](&v13, *MEMORY[0x1E69DE288]);
    v5 = WebKit::WebPageProxy::grantAccessToCurrentPasteboardData(a1, &v13, a3, a4, a5);
    v11 = v13;
    v13 = 0;
    if (v11)
    {
      if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v11, v10);
      }
    }
  }

  return v5;
}

void sub_19DE793BC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
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

uint64_t WebKit::WebPageProxy::showDataDetectorsUIForPositionInformation(uint64_t this, const InteractionInformationAtPosition *a2)
{
  v2 = *(this + 56);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      (*(*v3 + 1712))(v3);
      (*(*v3 + 1096))(v3, a2);
      v5 = *(*v3 + 1720);

      return v5(v3);
    }
  }

  return this;
}

uint64_t *WebKit::WebPageProxy::shouldDismissKeyboardAfterTapAtPoint(uint64_t a1, WTF::RefCountedBase *a2, float a3, float a4)
{
  *v7 = a3;
  *&v7[1] = a4;
  if ((*(a1 + 865) & 1) != 0 || (*(a1 + 864) & 1) == 0)
  {

    return WTF::CompletionHandler<void ()(BOOL)>::operator()(a2, 0);
  }

  else
  {
    v4 = *(a1 + 352);
    v6 = v7;
    return WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::WebPage::ShouldDismissKeyboardAfterTapAtPoint,WTF::CompletionHandler<void ()(BOOL)>>(v4, &v6, a2, *(a1 + 48), 0, 1);
  }
}

uint64_t WebKit::WebPageProxy::statusBarWasTapped(WebKit::WebPageProxy *this)
{
  v2 = qword_1ED641580;
  if (os_log_type_enabled(qword_1ED641580, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_INFO, "WebPageProxy::statusBarWasTapped", v6, 2u);
  }

  v3 = [MEMORY[0x1E69DC668] sharedApplication];
  if (([v3 supportsMultipleScenes] & 1) == 0 && objc_msgSend(v3, "applicationState"))
  {
    v4 = [MEMORY[0x1E6963608] defaultWorkspace];
    [v4 openApplicationWithBundleID:{objc_msgSend(objc_msgSend(MEMORY[0x1E696AAE8], "mainBundle"), "bundleIdentifier")}];
  }

  return (*(**(this + 15) + 488))(*(this + 15));
}

float WebKit::WebPageProxy::computedObscuredInset(WebKit::WebPageProxy *this)
{
  v1 = *(this + 7);
  v2 = 0.0;
  if (v1)
  {
    v3 = *(v1 + 8);
    if (v3)
    {
      (*(*v3 + 1712))(v3);
      v2 = (*(*v3 + 1248))(v3);
      (*(*v3 + 1720))(v3);
    }
  }

  return v2;
}

void WebKit::WebPageProxy::didRefreshDisplay(WebKit::WebPageProxy *this)
{
  v1 = API::PageConfiguration::Data::LazyInitializedRef<WebKit::WebProcessPool,&API::PageConfiguration::Data::createWebProcessPool>::get((*(this + 8) + 16));
  CFRetain(v1[1]);
  WebKit::WebProcessPool::didRefreshDisplay(v1);
  v2 = v1[1];

  CFRelease(v2);
}

uint64_t WebKit::WebPageProxy::createPDFPageNumberIndicator(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 56);
  if (v4)
  {
    v5 = *(v4 + 8);
    if (v5)
    {
      (*(*v5 + 1712))(v5);
      (*(*v5 + 232))(v5, a2, a3, a4);
      v9 = *(*v5 + 1720);

      return v9(v5);
    }
  }

  return result;
}

uint64_t WebKit::WebPageProxy::removePDFPageNumberIndicator(uint64_t result, uint64_t a2)
{
  v2 = *(result + 56);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      (*(*v3 + 1712))(v3);
      (*(*v3 + 256))(v3, a2);
      v5 = *(*v3 + 1720);

      return v5(v3);
    }
  }

  return result;
}

uint64_t WebKit::WebPageProxy::updatePDFPageNumberIndicatorLocation(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 56);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      (*(*v4 + 1712))(v4);
      (*(*v4 + 240))(v4, a2, a3);
      v7 = *(*v4 + 1720);

      return v7(v4);
    }
  }

  return result;
}

uint64_t WebKit::WebPageProxy::updatePDFPageNumberIndicatorCurrentPage(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 56);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      (*(*v4 + 1712))(v4);
      (*(*v4 + 248))(v4, a2, a3);
      v7 = *(*v4 + 1720);

      return v7(v4);
    }
  }

  return result;
}

uint64_t WebKit::WebPageProxy::isPotentialTapInProgress(uint64_t a1, WTF::RefCountedBase *a2)
{
  v3 = *(a1 + 56);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      (*(*v4 + 1712))(v4);
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = (*(*v4 + 968))(v4);
  WTF::CompletionHandler<void ()(BOOL)>::operator()(a2, v5);
  v6 = *(*v4 + 1720);

  return v6(v4);
}

uint64_t WebKit::WebPageProxy::willBeginContextMenuInteraction(uint64_t this)
{
  if ((*(this + 865) & 1) == 0 && *(this + 864) == 1)
  {
    *&v3[1] = v1;
    v4 = v2;
    return WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::WillBeginContextMenuInteraction>(*(this + 352), v3, *(this + 48), 0);
  }

  return this;
}

uint64_t WebKit::WebPageProxy::didEndContextMenuInteraction(uint64_t this)
{
  if ((*(this + 865) & 1) == 0 && *(this + 864) == 1)
  {
    *&v3[1] = v1;
    v4 = v2;
    return WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::DidEndContextMenuInteraction>(*(this + 352), v3, *(this + 48), 0);
  }

  return this;
}

void WebKit::WebDataListSuggestionsDropdownIOS::~WebDataListSuggestionsDropdownIOS(WebKit::WebDataListSuggestionsDropdownIOS *this, void *a2)
{
  *this = &unk_1F110DB58;
  v3 = *(this + 5);
  *(this + 5) = 0;
  if (v3)
  {
  }

  WebKit::WebDataListSuggestionsDropdown::~WebDataListSuggestionsDropdown(this, a2);
}

{
  *this = &unk_1F110DB58;
  v3 = *(this + 5);
  *(this + 5) = 0;
  if (v3)
  {
  }

  WebKit::WebDataListSuggestionsDropdown::~WebDataListSuggestionsDropdown(this, a2);

  WTF::fastFree(v4, v5);
}

Class initASVThumbnailView(void)
{
  if ((byte_1EB01D652 & 1) == 0)
  {
    v1 = dlopen("/System/Library/PrivateFrameworks/AssetViewer.framework/AssetViewer", 2);
    if (!v1)
    {
      goto LABEL_6;
    }

    unk_1EB01D670 = v1;
    byte_1EB01D652 = 1;
  }

  result = objc_getClass("ASVThumbnailView");
  qword_1EB01D668 = result;
  if (!result)
  {
LABEL_6:
    __break(0xC471u);
    JUMPOUT(0x19DE79FA8);
  }

  getASVThumbnailViewClass = ASVThumbnailViewFunction;
  return result;
}

WTF **std::unique_ptr<PermissionRequest>::reset[abi:sn200100](WTF **result, WTF *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 4);
    *(v2 + 4) = 0;
    if (v3)
    {
    }

    v4 = *(v2 + 3);
    *(v2 + 3) = 0;
    if (v4)
    {
    }

    v5 = *(v2 + 2);
    *(v2 + 2) = 0;
    if (v5)
    {
    }

    v6 = *(v2 + 1);
    *(v2 + 1) = 0;
    if (v6)
    {
    }

    v7 = *v2;
    *v2 = 0;
    if (v7)
    {
    }

    return WTF::fastFree(v2, a2);
  }

  return result;
}

Class initCLLocationManager(void)
{
  if ((byte_1EB01D653 & 1) == 0)
  {
    v1 = dlopen("/System/Library/Frameworks/CoreLocation.framework/CoreLocation", 2);
    if (!v1)
    {
      goto LABEL_6;
    }

    unk_1EB01D680 = v1;
    byte_1EB01D653 = 1;
  }

  result = objc_getClass("CLLocationManager");
  qword_1EB01D678 = result;
  if (!result)
  {
LABEL_6:
    __break(0xC471u);
    JUMPOUT(0x19DE7A104);
  }

  getCLLocationManagerClass = CLLocationManagerFunction;
  return result;
}

uint64_t ___ZN6WebKitL29desktopClassBrowsingSupportedEv_block_invoke(PAL *a1)
{
  result = PAL::currentUserInterfaceIdiomIsSmallScreen(a1);
  byte_1EB01D654 = result ^ 1;
  return result;
}

unsigned int *WTF::VectorMover<false,std::pair<WTF::WeakPtr<WebKit::AuxiliaryProcessProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::RetainPtr<objc_object  {objcproto13UIInteraction}*>>>::moveOverlapping(unsigned int *result, unsigned int *a2, unsigned int **a3)
{
  v3 = a2;
  v4 = result;
  if (result <= a3)
  {
    if (a2 != result)
    {
      v5 = (a3 + a2 - result - 8);
      do
      {
        v6 = *(v3 - 2);
        v3 -= 2;
        *v3 = 0;
        *(v5 - 1) = v6;
        v7 = v3[1];
        v3[1] = 0;
        *v5 = v7;
        v8 = v3[1];
        v3[1] = 0;
        if (v8)
        {
        }

        result = *v3;
        *v3 = 0;
        if (result && atomic_fetch_add(result, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, result);
          result = WTF::fastFree(result, a2);
        }

        v5 -= 2;
      }

      while (v3 != v4);
    }
  }

  else
  {

    return WTF::VectorMover<false,std::pair<WTF::WeakPtr<WebKit::AuxiliaryProcessProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::RetainPtr<objc_object  {objcproto13UIInteraction}*>>>::move(result, a2, a3);
  }

  return result;
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::WebPage::RequestFocusedElementInformation,WTF::CompletionHandler<void ()(std::optional<WebKit::FocusedElementInformation> const&)>>(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v11 = IPC::Encoder::operator new(0x238, a2);
  *v11 = 2679;
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *(v11 + 1) = a4;
  *(v11 + 68) = 0;
  *(v11 + 70) = 0;
  *(v11 + 69) = 0;
  IPC::Encoder::encodeHeader(v11);
  v24 = v11;
  v12 = *a3;
  *a3 = 0;
  v13 = WTF::fastMalloc(0x10);
  *v13 = &unk_1F110DCA0;
  v13[1] = v12;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v22[0] = v13;
    v22[1] = IdentifierInternal;
    v23 = 1;
    v16 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v24, a5, v22, a6);
    if (v23 == 1)
    {
      v17 = v22[0];
      v22[0] = 0;
      if (v17)
      {
        (*(*v17 + 8))(v17);
      }
    }

    v18 = v24;
    v24 = 0;
    if (v18)
    {
      IPC::Encoder::~Encoder(v18, v15);
      bmalloc::api::tzoneFree(v20, v21);
    }

    if (v16)
    {
      return IdentifierInternal;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_19DE7A450(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
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

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::RequestFocusedElementInformation,WTF::CompletionHandler<void ()(std::optional<WebKit::FocusedElementInformation> const&)>>(WTF::CompletionHandler<void ()(std::optional<WebKit::FocusedElementInformation> const&)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F110DCA0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::RequestFocusedElementInformation,WTF::CompletionHandler<void ()(std::optional<WebKit::FocusedElementInformation> const&)>>(WTF::CompletionHandler<void ()(std::optional<WebKit::FocusedElementInformation> const&)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F110DCA0;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::RequestFocusedElementInformation,WTF::CompletionHandler<void ()(std::optional<WebKit::FocusedElementInformation> const&)>>(WTF::CompletionHandler<void ()(std::optional<WebKit::FocusedElementInformation> const&)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v5 = *a3;
    if (*a3)
    {
      v6 = *(a3 + 1);
      v7 = *(a3 + 2);
      if (v6 <= &v7[-v5])
      {
        *a3 = 0;
        *(a3 + 1) = 0;
        v11 = *(a3 + 3);
        if (v11)
        {
          if (v6)
          {
            (*(*v11 + 16))(v11);
            v5 = *a3;
            v6 = *(a3 + 1);
            goto LABEL_18;
          }
        }

        else
        {
          v6 = 0;
        }

        v5 = 0;
      }

      else
      {
        *(a3 + 2) = v7 + 1;
        if (v7)
        {
          v8 = *v7;
          if (v8 < 2)
          {
            if (!v8)
            {
              LOBYTE(v27[0]) = 0;
              v28 = 0;
              std::__optional_move_base<WebKit::FocusedElementInformation,false>::__optional_move_base[abi:sn200100](v24, v27);
              v26 = 1;
              if (v28 != 1)
              {
LABEL_23:
                if (v26 & 1) != 0 || (v16 = *a3, v17 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v18 = *(a3 + 3)) != 0) && v17 && ((*(*v18 + 16))(v18, v16), (v26))
                {
                  std::__optional_move_base<WebKit::FocusedElementInformation,false>::__optional_move_base[abi:sn200100](v22, v24);
                  v23 = 1;
                  if (v26 & 1) == 0 || (v25 & 1) == 0 || (WebKit::FocusedElementInformation::~FocusedElementInformation(v24, v14), (v23))
                  {
LABEL_27:
                    WTF::CompletionHandler<void ()(std::optional<WebKit::FocusedElementInformation> const&)>::operator()((a1 + 8));
                    if ((v23 & 1) != 0 && v22[784] == 1)
                    {
                      WebKit::FocusedElementInformation::~FocusedElementInformation(v22, v15);
                    }

                    return;
                  }
                }

                else
                {
                  v22[0] = 0;
                  v23 = 0;
                }

                v19 = *a3;
                v20 = *(a3 + 1);
                *a3 = 0;
                *(a3 + 1) = 0;
                v21 = *(a3 + 3);
                if (!v21 || !v20 || ((*(*v21 + 16))(v21, v19), (v23 & 1) == 0))
                {
                  IPC::Connection::cancelReply<Messages::WebPage::RequestFocusedElementInformation,WTF::CompletionHandler<void ()(std::optional<WebKit::FocusedElementInformation> const&)>>((a1 + 8));
                  return;
                }

                goto LABEL_27;
              }

LABEL_14:
              WebKit::FocusedElementInformation::~FocusedElementInformation(v27, v9);
              goto LABEL_23;
            }

            IPC::Decoder::decode<WebKit::FocusedElementInformation>(a3, v27);
            if (v28 == 1)
            {
              WebKit::FocusedElementInformation::FocusedElementInformation(v24, v27);
              v25 = 1;
              v26 = 1;
              if ((v28 & 1) == 0)
              {
                goto LABEL_23;
              }

              goto LABEL_14;
            }

LABEL_22:
            v24[0] = 0;
            v26 = 0;
            goto LABEL_23;
          }

          goto LABEL_21;
        }
      }

LABEL_18:
      *a3 = 0;
      *(a3 + 1) = 0;
      v12 = *(a3 + 3);
      if (v12)
      {
        if (v6)
        {
          (*(*v12 + 16))(v12, v5);
          v5 = *a3;
          v6 = *(a3 + 1);
          goto LABEL_21;
        }
      }

      else
      {
        v6 = 0;
      }

      v5 = 0;
LABEL_21:
      *a3 = 0;
      *(a3 + 1) = 0;
      v13 = *(a3 + 3);
      if (v13 && v6)
      {
        (*(*v13 + 16))(v13, v5);
      }

      goto LABEL_22;
    }
  }

  v10 = (a1 + 8);

  IPC::Connection::cancelReply<Messages::WebPage::RequestFocusedElementInformation,WTF::CompletionHandler<void ()(std::optional<WebKit::FocusedElementInformation> const&)>>(v10);
}

void sub_19DE7A900(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (LOBYTE(STACK[0x320]) == 1 && LOBYTE(STACK[0x310]) == 1)
  {
    WebKit::FocusedElementInformation::~FocusedElementInformation(&a9, a2);
  }

  _Unwind_Resume(a1);
}

void IPC::Connection::cancelReply<Messages::WebPage::RequestFocusedElementInformation,WTF::CompletionHandler<void ()(std::optional<WebKit::FocusedElementInformation> const&)>>(uint64_t *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  v6 = 0;
  std::__optional_move_base<WebKit::FocusedElementInformation,false>::__optional_move_base[abi:sn200100](v4, v5);
  if (v6 == 1)
  {
    WebKit::FocusedElementInformation::~FocusedElementInformation(v5, v2);
  }

  WTF::CompletionHandler<void ()(std::optional<WebKit::FocusedElementInformation> const&)>::operator()(a1);
  if (v4[784] == 1)
  {
    WebKit::FocusedElementInformation::~FocusedElementInformation(v4, v3);
  }
}

void sub_19DE7AA18(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (LOBYTE(STACK[0x310]) == 1)
  {
    WebKit::FocusedElementInformation::~FocusedElementInformation(&a9, a2);
  }

  _Unwind_Resume(a1);
}

_BYTE *std::__optional_move_base<WebKit::FocusedElementInformation,false>::__optional_move_base[abi:sn200100](_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[784] = 0;
  if (*(a2 + 784) == 1)
  {
    WebKit::FocusedElementInformation::FocusedElementInformation(a1, a2);
    a1[784] = 1;
  }

  return a1;
}

void sub_19DE7AA98(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (*(v2 + 784) == 1)
  {
    WebKit::FocusedElementInformation::~FocusedElementInformation(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::DynamicViewportSizeUpdate>(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 2539;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  IPC::ArgumentCoder<WebKit::DynamicViewportSizeUpdate,void>::encode(v8, *a2);
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

void sub_19DE7ABB8(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
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

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::SetDeviceOrientation>(uint64_t a1, _DWORD **a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 2731;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v8, **a2);
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

void sub_19DE7AD24(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
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

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::SetOverrideViewportArguments>(uint64_t a1, uint64_t *a2, uint64_t a3, char a4)
{
  v6 = a2;
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 2765;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v21 = v8;
  v9 = *v6;
  LOBYTE(v6) = *(*v6 + 40);
  v10 = IPC::Encoder::grow(v8, 1uLL, 1);
  if ((v6 & 1) == 0)
  {
    if (v11)
    {
      *v10 = 0;
      goto LABEL_7;
    }

LABEL_14:
    __break(0xC471u);
    JUMPOUT(0x19DE7AEE8);
  }

  if (!v11)
  {
    goto LABEL_14;
  }

  *v10 = 1;
  if ((*(v9 + 40) & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:sn200100]();
    goto LABEL_14;
  }

  IPC::ArgumentCoder<WebCore::ViewportArguments,void>::encode(v8, v9);
LABEL_7:
  LOBYTE(v19) = 0;
  v20 = 0;
  v13 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v21, a4, &v19, 1);
  if (v20 == 1)
  {
    v14 = v19;
    v19 = 0;
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }
  }

  v15 = v21;
  v21 = 0;
  if (v15)
  {
    IPC::Encoder::~Encoder(v15, v12);
    bmalloc::api::tzoneFree(v17, v18);
  }

  return v13;
}

void sub_19DE7AF0C(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
{
  if (a12)
  {
    IPC::Encoder::~Encoder(a12, a2);
    bmalloc::api::tzoneFree(v13, v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::WebPage::SelectWithGesture,WTF::CompletionHandler<void ()(WebCore::IntPoint const&,WebKit::GestureType,WebKit::GestureRecognizerState,WTF::OptionSet<WebKit::SelectionFlags>)>>(uint64_t a1, char *a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 2706;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v25 = v12;
  IPC::ArgumentCoder<WebCore::IntPoint,void>::encode(v12, *a2);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v12, a2[8]);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v12, a2[9]);
  IPC::Encoder::operator<<<BOOL &>(v12, a2 + 10);
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F110DCC8;
  v14[1] = v13;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v23[0] = v14;
    v23[1] = IdentifierInternal;
    v24 = 1;
    v17 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v25, a5, v23, a6);
    if (v24 == 1)
    {
      v18 = v23[0];
      v23[0] = 0;
      if (v18)
      {
        (*(*v18 + 8))(v18);
      }
    }

    v19 = v25;
    v25 = 0;
    if (v19)
    {
      IPC::Encoder::~Encoder(v19, v16);
      bmalloc::api::tzoneFree(v21, v22);
    }

    if (v17)
    {
      return IdentifierInternal;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_19DE7B124(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
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

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::SelectWithGesture,WTF::CompletionHandler<void ()(WebCore::IntPoint const&,WebKit::GestureType,WebKit::GestureRecognizerState,WTF::OptionSet<WebKit::SelectionFlags>)>>(WTF::CompletionHandler<void ()(WebCore::IntPoint const&,WebKit::GestureType,WebKit::GestureRecognizerState,WTF::OptionSet<WebKit::SelectionFlags>)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F110DCC8;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::SelectWithGesture,WTF::CompletionHandler<void ()(WebCore::IntPoint const&,WebKit::GestureType,WebKit::GestureRecognizerState,WTF::OptionSet<WebKit::SelectionFlags>)>>(WTF::CompletionHandler<void ()(WebCore::IntPoint const&,WebKit::GestureType,WebKit::GestureRecognizerState,WTF::OptionSet<WebKit::SelectionFlags>)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F110DCC8;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::SelectWithGesture,WTF::CompletionHandler<void ()(WebCore::IntPoint const&,WebKit::GestureType,WebKit::GestureRecognizerState,WTF::OptionSet<WebKit::SelectionFlags>)>>(WTF::CompletionHandler<void ()(WebCore::IntPoint const&,WebKit::GestureType,WebKit::GestureRecognizerState,WTF::OptionSet<WebKit::SelectionFlags>)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
{
  if (a3 && *a3 && (v10 = IPC::Decoder::decode<std::tuple<WebCore::IntPoint,WebKit::GestureType,WebKit::GestureRecognizerState,WTF::OptionSet<WebKit::SelectionFlags>>>(a3), v11 = v4, v12 = BYTE4(v4), (v4 & 0x100000000) != 0))
  {
    v8 = BYTE2(v4);
    v7 = BYTE1(v4);
    v5 = (a1 + 8);
    v6 = v4;
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v5 = (a1 + 8);
    v6 = 0;
    v7 = 0;
    v8 = 0;
  }

  return WTF::CompletionHandler<void ()(WebCore::IntPoint const&,WebKit::GestureType,WebKit::GestureRecognizerState,WTF::OptionSet<WebKit::SelectionFlags>)>::operator()(v5, &v10, v6, v7, v8);
}

unint64_t IPC::Decoder::decode<std::tuple<WebCore::IntPoint,WebKit::GestureType,WebKit::GestureRecognizerState,WTF::OptionSet<WebKit::SelectionFlags>>>(IPC::Decoder *a1)
{
  v2 = IPC::Decoder::decode<WebCore::IntPoint>(a1);
  if ((v3 & 1) == 0 || (v4 = v2, (IPC::Decoder::decode<WebKit::GestureType>(a1) & 0x100) == 0) || (IPC::Decoder::decode<WebKit::GestureRecognizerState>(a1) & 0x100) == 0 || IPC::Decoder::decode<WTF::OptionSet<WebKit::SelectionFlags>>(a1) < 0x100u)
  {
    v5 = *a1;
    v6 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v7 = *(a1 + 3);
    if (v7 && v6)
    {
      (*(*v7 + 16))(v7, v5);
    }

    return 0;
  }

  return v4;
}

uint64_t IPC::Decoder::decode<WTF::OptionSet<WebKit::SelectionFlags>>(void *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = *a1;
  if (v1 <= &v2[-*a1])
  {
    *a1 = 0;
    a1[1] = 0;
    v13 = a1;
    v8 = a1[3];
    if (v8)
    {
      if (v1)
      {
        (*(*v8 + 16))(v8);
        v3 = *v13;
        v1 = v13[1];
LABEL_12:
        *v13 = 0;
        v13[1] = 0;
        v9 = v13[3];
        if (v9 && v1)
        {
          (*(*v9 + 16))(v9, v3);
        }

        v5 = 0;
        a1 = v13;
        goto LABEL_14;
      }
    }

    else
    {
      v1 = 0;
    }

    v3 = 0;
    goto LABEL_12;
  }

  a1[2] = v2 + 1;
  if (!v2)
  {
    v13 = a1;
    goto LABEL_12;
  }

  v4 = *v2;
  if (v4 <= 7)
  {
    v5 = *v2;
  }

  else
  {
    v5 = 0;
  }

  if (v4 < 8)
  {
    v6 = 1;
    return v5 | (v6 << 8);
  }

LABEL_14:
  v10 = *a1;
  v11 = a1[1];
  *a1 = 0;
  a1[1] = 0;
  v12 = a1[3];
  if (v12)
  {
    v14 = v5;
    if (v11)
    {
      (*(*v12 + 16))(v12, v10);
    }

    v6 = 0;
    v5 = v14;
  }

  else
  {
    v6 = 0;
  }

  return v5 | (v6 << 8);
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::WebPage::UpdateSelectionWithTouches,WTF::CompletionHandler<void ()(WebCore::IntPoint const&,WebKit::SelectionTouch,WTF::OptionSet<WebKit::SelectionFlags>)>>(uint64_t a1, char *a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 2846;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v25 = v12;
  IPC::ArgumentCoder<WebCore::IntPoint,void>::encode(v12, *a2);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v12, a2[8]);
  IPC::Encoder::operator<<<BOOL &>(v12, a2 + 9);
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F110DCF0;
  v14[1] = v13;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v23[0] = v14;
    v23[1] = IdentifierInternal;
    v24 = 1;
    v17 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v25, a5, v23, a6);
    if (v24 == 1)
    {
      v18 = v23[0];
      v23[0] = 0;
      if (v18)
      {
        (*(*v18 + 8))(v18);
      }
    }

    v19 = v25;
    v25 = 0;
    if (v19)
    {
      IPC::Encoder::~Encoder(v19, v16);
      bmalloc::api::tzoneFree(v21, v22);
    }

    if (v17)
    {
      return IdentifierInternal;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_19DE7B700(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
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

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::UpdateSelectionWithTouches,WTF::CompletionHandler<void ()(WebCore::IntPoint const&,WebKit::SelectionTouch,WTF::OptionSet<WebKit::SelectionFlags>)>>(WTF::CompletionHandler<void ()(WebCore::IntPoint const&,WebKit::SelectionTouch,WTF::OptionSet<WebKit::SelectionFlags>)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F110DCF0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::UpdateSelectionWithTouches,WTF::CompletionHandler<void ()(WebCore::IntPoint const&,WebKit::SelectionTouch,WTF::OptionSet<WebKit::SelectionFlags>)>>(WTF::CompletionHandler<void ()(WebCore::IntPoint const&,WebKit::SelectionTouch,WTF::OptionSet<WebKit::SelectionFlags>)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F110DCF0;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::UpdateSelectionWithTouches,WTF::CompletionHandler<void ()(WebCore::IntPoint const&,WebKit::SelectionTouch,WTF::OptionSet<WebKit::SelectionFlags>)>>(WTF::CompletionHandler<void ()(WebCore::IntPoint const&,WebKit::SelectionTouch,WTF::OptionSet<WebKit::SelectionFlags>)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
{
  if (!a3 || !*a3)
  {
    goto LABEL_17;
  }

  v5 = IPC::Decoder::decode<WebCore::IntPoint>(a3);
  if ((v6 & 1) == 0 || (v7 = v5, v8 = IPC::Decoder::decode<WebKit::GestureRecognizerState>(a3), (v8 & 0x100) == 0))
  {
    v9 = 0;
    v10 = 0;
LABEL_6:
    v11 = *a3;
    v12 = *(a3 + 1);
    *a3 = 0;
    *(a3 + 1) = 0;
    v13 = *(a3 + 3);
    if (v13 && v12)
    {
      (*(*v13 + 16))(v13, v11);
    }

    goto LABEL_16;
  }

  v14 = v8;
  v15 = IPC::Decoder::decode<WTF::OptionSet<WebKit::SelectionFlags>>(a3);
  v16 = v14 | (v15 << 8);
  if (v15 >= 0x100u)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v15 >= 0x100u)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  v10 = v17 | ((v15 > 0xFFu) << 32);
  if (v15 <= 0xFFu)
  {
    goto LABEL_6;
  }

LABEL_16:
  v22 = v9;
  v23 = v10;
  v24 = BYTE4(v10);
  if ((v10 & 0x100000000) != 0)
  {
    v20 = BYTE1(v10);
    v18 = (a1 + 8);
    v19 = v10;
    return WTF::CompletionHandler<void ()(WebCore::IntPoint const&,WebKit::SelectionTouch,WTF::OptionSet<WebKit::SelectionFlags>)>::operator()(v18, &v22, v19, v20);
  }

LABEL_17:
  v22 = 0;
  v23 = 0;
  v18 = (a1 + 8);
  v19 = 0;
  v20 = 0;
  return WTF::CompletionHandler<void ()(WebCore::IntPoint const&,WebKit::SelectionTouch,WTF::OptionSet<WebKit::SelectionFlags>)>::operator()(v18, &v22, v19, v20);
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::WillInsertFinalDictationResult>(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v7 = IPC::Encoder::operator new(0x238, a2);
  *v7 = 2863;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = a3;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  IPC::Encoder::encodeHeader(v7);
  v17 = v7;
  LOBYTE(v15) = 0;
  v16 = 0;
  v9 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v17, a4, &v15, 1);
  if (v16 == 1)
  {
    v10 = v15;
    v15 = 0;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }
  }

  v11 = v17;
  v17 = 0;
  if (v11)
  {
    IPC::Encoder::~Encoder(v11, v8);
    bmalloc::api::tzoneFree(v13, v14);
  }

  return v9;
}

void sub_19DE7BAA8(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
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

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::DidInsertFinalDictationResult>(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v7 = IPC::Encoder::operator new(0x238, a2);
  *v7 = 2512;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = a3;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  IPC::Encoder::encodeHeader(v7);
  v17 = v7;
  LOBYTE(v15) = 0;
  v16 = 0;
  v9 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v17, a4, &v15, 1);
  if (v16 == 1)
  {
    v10 = v15;
    v15 = 0;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }
  }

  v11 = v17;
  v17 = 0;
  if (v11)
  {
    IPC::Encoder::~Encoder(v11, v8);
    bmalloc::api::tzoneFree(v13, v14);
  }

  return v9;
}

void sub_19DE7BBF4(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
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

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::ReplaceDictatedText>(uint64_t a1, uint64_t **a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 2665;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v8, *a2);
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

void sub_19DE7BD64(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
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

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::ReplaceSelectedText>(uint64_t a1, uint64_t **a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 2669;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v8, *a2);
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

void sub_19DE7BED4(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
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

WTF *WTF::Function<void ()(WebKit::WebAutocorrectionData)>::operator()(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v8 = *a2;
  v3 = *(a2 + 8);
  *a2 = 0;
  *(a2 + 8) = 0;
  v9 = v3;
  v4 = *(a2 + 16);
  *(a2 + 16) = 0;
  v10 = v4;
  (*(*v2 + 16))(v2, &v8);
  v6 = v10;
  v10 = 0;
  if (v6)
  {
  }

  result = v8;
  if (v8)
  {
    v8 = 0;
    LODWORD(v9) = 0;
    return WTF::fastFree(result, v5);
  }

  return result;
}

void sub_19DE7BFCC(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF *a10, int a11, void *a12)
{
  if (a12)
  {
  }

  if (a10)
  {
    WTF::fastFree(a10, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::WebPage::RequestAutocorrectionData,WTF::CompletionHandler<void ()(WebKit::WebAutocorrectionData)>>(uint64_t a1, uint64_t **a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 2675;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v25 = v12;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v12, *a2);
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F110DD18;
  v14[1] = v13;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v23[0] = v14;
    v23[1] = IdentifierInternal;
    v24 = 1;
    v17 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v25, a5, v23, a6);
    if (v24 == 1)
    {
      v18 = v23[0];
      v23[0] = 0;
      if (v18)
      {
        (*(*v18 + 8))(v18);
      }
    }

    v19 = v25;
    v25 = 0;
    if (v19)
    {
      IPC::Encoder::~Encoder(v19, v16);
      bmalloc::api::tzoneFree(v21, v22);
    }

    if (v17)
    {
      return IdentifierInternal;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_19DE7C184(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
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

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::RequestAutocorrectionData,WTF::CompletionHandler<void ()(WebKit::WebAutocorrectionData)>>(WTF::CompletionHandler<void ()(WebKit::WebAutocorrectionData)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F110DD18;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::RequestAutocorrectionData,WTF::CompletionHandler<void ()(WebKit::WebAutocorrectionData)>>(WTF::CompletionHandler<void ()(WebKit::WebAutocorrectionData)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F110DD18;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

WTF *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::RequestAutocorrectionData,WTF::CompletionHandler<void ()(WebKit::WebAutocorrectionData)>>(WTF::CompletionHandler<void ()(WebKit::WebAutocorrectionData)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
{
  if (a3 && *a3)
  {
    IPC::ArgumentCoder<WebKit::WebAutocorrectionData,void>::decode(a3, &v25);
    if (v28 & 1) != 0 || (v15 = *a3, v16 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v17 = *(a3 + 3)) != 0) && v16 && ((*(*v17 + 16))(v17, v15), (v28))
    {
      std::tuple<WebKit::WebAutocorrectionData>::tuple[abi:sn200100]<WebKit::WebAutocorrectionData,0>(&v21, &v25);
      v24 = 1;
      if (v28)
      {
        v6 = v27;
        v27 = 0;
        if (v6)
        {
        }

        v7 = v25;
        if (v25)
        {
          v25 = 0;
          LODWORD(v26) = 0;
          WTF::fastFree(v7, v5);
        }
      }
    }

    else
    {
      LOBYTE(v21) = 0;
      v24 = 0;
    }

    if (v24 & 1) != 0 || (v18 = *a3, v19 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v20 = *(a3 + 3)) != 0) && v19 && ((*(*v20 + 16))(v20, v18), (v24))
    {
      v25 = v21;
      v8 = v22;
      v21 = 0;
      v22 = 0;
      v26 = v8;
      v9 = v23;
      v23 = 0;
      v27 = v9;
      WTF::CompletionHandler<void ()(WebKit::WebAutocorrectionData)>::operator()((a1 + 8), &v25);
      v11 = v27;
      v27 = 0;
      if (v11)
      {
      }

      result = v25;
      if (v25)
      {
        v25 = 0;
        LODWORD(v26) = 0;
        result = WTF::fastFree(result, v10);
      }

      if (v24)
      {
        v13 = v23;
        v23 = 0;
        if (v13)
        {
        }

        result = v21;
        if (v21)
        {
          v21 = 0;
          LODWORD(v22) = 0;
          return WTF::fastFree(result, v10);
        }
      }
    }

    else
    {
      return IPC::Connection::cancelReply<Messages::WebPage::RequestAutocorrectionData,WTF::CompletionHandler<void ()(WebKit::WebAutocorrectionData)>>((a1 + 8));
    }
  }

  else
  {
    v14 = (a1 + 8);

    return IPC::Connection::cancelReply<Messages::WebPage::RequestAutocorrectionData,WTF::CompletionHandler<void ()(WebKit::WebAutocorrectionData)>>(v14);
  }

  return result;
}

void sub_19DE7C4F8(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF *a9, int a10, void *a11, char a12, WTF *a13, int a14, uint64_t a15, char a16)
{
  if (a12 == 1)
  {
    if (a11)
    {
    }

    if (a9)
    {
      WTF::fastFree(a9, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

WTF *IPC::Connection::cancelReply<Messages::WebPage::RequestAutocorrectionData,WTF::CompletionHandler<void ()(WebKit::WebAutocorrectionData)>>(uint64_t *a1)
{
  v16 = 0;
  v17 = 0;
  v18 = 0;
  std::tuple<WebKit::WebAutocorrectionData>::tuple[abi:sn200100]<WebKit::WebAutocorrectionData,0>(&v13, &v16);
  v3 = v18;
  v18 = 0;
  if (v3)
  {
  }

  v4 = v16;
  if (v16)
  {
    v16 = 0;
    LODWORD(v17) = 0;
    WTF::fastFree(v4, v2);
  }

  v5 = v13;
  v6 = v14;
  v13 = 0;
  v14 = 0;
  v17 = v6;
  v7 = v15;
  v15 = 0;
  v16 = v5;
  v18 = v7;
  WTF::CompletionHandler<void ()(WebKit::WebAutocorrectionData)>::operator()(a1, &v16);
  v9 = v18;
  v18 = 0;
  if (v9)
  {
  }

  v10 = v16;
  if (v16)
  {
    v16 = 0;
    LODWORD(v17) = 0;
    WTF::fastFree(v10, v8);
  }

  v11 = v15;
  v15 = 0;
  if (v11)
  {
  }

  result = v13;
  if (v13)
  {
    v13 = 0;
    LODWORD(v14) = 0;
    return WTF::fastFree(result, v8);
  }

  return result;
}

void sub_19DE7C668(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF *a9, int a10, void *a11, WTF *a12, int a13, void *a14)
{
  if (a14)
  {
  }

  if (a12)
  {
    WTF::fastFree(a12, a2);
  }

  if (a11)
  {
  }

  if (a9)
  {
    WTF::fastFree(a9, a2);
  }

  _Unwind_Resume(exception_object);
}

void *std::tuple<WebKit::WebAutocorrectionData>::tuple[abi:sn200100]<WebKit::WebAutocorrectionData,0>(void *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1, a2);
  v4 = *(a2 + 16);
  *(a2 + 16) = 0;
  a1[2] = v4;
  return a1;
}

void sub_19DE7C720(_Unwind_Exception *exception_object, void *a2)
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

atomic_ullong *WebKit::AuxiliaryProcessProxy::sendSync<Messages::WebPage::SyncApplyAutocorrection>@<X0>(atomic_ullong *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char *a5@<X8>, double a6@<D0>)
{
  v7 = result[11];
  if (v7)
  {
    while (1)
    {
      v12 = *v7;
      if ((*v7 & 1) == 0)
      {
        break;
      }

      v13 = *v7;
      atomic_compare_exchange_strong_explicit(v7, &v13, v12 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v13 == v12)
      {
        goto LABEL_6;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v7);
LABEL_6:
    kdebug_trace();
    IPC::Connection::sendSync<Messages::WebPage::SyncApplyAutocorrection>(v7, a2, a3, a4, a5, a6);
    kdebug_trace();

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v7);
  }

  else
  {
    *a5 = 1;
    a5[16] = 1;
  }

  return result;
}

void sub_19DE7C844(_Unwind_Exception *a1)
{
  kdebug_trace();
  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v1);
  _Unwind_Resume(a1);
}

IPC::Encoder *IPC::Connection::sendSync<Messages::WebPage::SyncApplyAutocorrection>@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char *a5@<X8>, double a6@<D0>)
{
  SyncMessageEncoder = IPC::Connection::createSyncMessageEncoder(0x105A, a3, v28);
  v12 = v28[0];
  if (a4)
  {
    v13 = *(v28[0] + 2);
    if (v13)
    {
      if (!*(v28[0] + 3))
      {
        __break(1u);
        goto LABEL_22;
      }
    }

    else
    {
      v13 = v28[0] + 32;
    }

    *v13 |= 4u;
    a1[92] = 1;
  }

  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v12, *a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v12, *(a2 + 8));
  IPC::Encoder::operator<<<BOOL &>(v12, (a2 + 16));
  SyncMessageEncoder = IPC::Connection::sendSyncMessage(a1, v28[1], v28, a4, &v26, a6);
  if (v27)
  {
    if (v27 == 1)
    {
      *a5 = v26;
      a5[16] = 1;
      goto LABEL_14;
    }

LABEL_22:
    mpark::throw_bad_variant_access(SyncMessageEncoder);
  }

  v15 = v26;
  v26 = 0;
  if (*(v15 + 25) == 3194)
  {
    v16 = 11;
  }

  else
  {
    v19 = IPC::Decoder::decode<std::tuple<BOOL>>(v15);
    if (v19 >= 0x100u)
    {
      *a5 = v15;
      a5[8] = v19;
      a5[16] = 0;
      goto LABEL_14;
    }

    v16 = 14;
  }

  *a5 = v16;
  a5[16] = 1;
  IPC::Decoder::~Decoder(v15);
  bmalloc::api::tzoneFree(v17, v18);
LABEL_14:
  if (!v27)
  {
    v20 = v26;
    v26 = 0;
    if (v20)
    {
      IPC::Decoder::~Decoder(v20);
      bmalloc::api::tzoneFree(v24, v25);
    }
  }

  result = v28[0];
  v28[0] = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v14);
    return bmalloc::api::tzoneFree(v22, v23);
  }

  return result;
}

void sub_19DE7CA0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, IPC::Decoder *a9, char a10, IPC::Encoder *a11)
{
  IPC::Decoder::~Decoder(v11);
  bmalloc::api::tzoneFree(v13, v14);
  if (!a10 && a9)
  {
    IPC::Decoder::~Decoder(a9);
    bmalloc::api::tzoneFree(v16, v17);
  }

  if (a11)
  {
    IPC::Encoder::~Encoder(a11, v15);
    bmalloc::api::tzoneFree(v18, v19);
  }

  _Unwind_Resume(a1);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::SelectTextWithGranularityAtPoint,WebKit::WebPageProxy::selectTextWithGranularityAtPoint(WebCore::IntPoint,WebCore::TextGranularity,BOOL,WTF::CompletionHandler<void ()(void)> &&)::$_0>(WebKit::WebPageProxy::selectTextWithGranularityAtPoint(WebCore::IntPoint,WebCore::TextGranularity,BOOL,WTF::CompletionHandler<void ()(void)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::WebPageProxy::selectTextWithGranularityAtPoint(WebCore::IntPoint,WebCore::TextGranularity,BOOL,WTF::CompletionHandler<void ()(void)> &&)::$_0,IPC::Decoder)#1},void,WebKit::WebPageProxy::selectTextWithGranularityAtPoint(WebCore::IntPoint,WebCore::TextGranularity,BOOL,WTF::CompletionHandler<void ()(void)> &&)::$_0,IPC::Decoder>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F110DD40;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::RefCounted<WebKit::ProcessThrottlerActivity>::deref((v3 + 8), a2);
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::SelectTextWithGranularityAtPoint,WebKit::WebPageProxy::selectTextWithGranularityAtPoint(WebCore::IntPoint,WebCore::TextGranularity,BOOL,WTF::CompletionHandler<void ()(void)> &&)::$_0>(WebKit::WebPageProxy::selectTextWithGranularityAtPoint(WebCore::IntPoint,WebCore::TextGranularity,BOOL,WTF::CompletionHandler<void ()(void)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::WebPageProxy::selectTextWithGranularityAtPoint(WebCore::IntPoint,WebCore::TextGranularity,BOOL,WTF::CompletionHandler<void ()(void)> &&)::$_0,IPC::Decoder)#1},void,WebKit::WebPageProxy::selectTextWithGranularityAtPoint(WebCore::IntPoint,WebCore::TextGranularity,BOOL,WTF::CompletionHandler<void ()(void)> &&)::$_0,IPC::Decoder>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F110DD40;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::RefCounted<WebKit::ProcessThrottlerActivity>::deref((v3 + 8), a2);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return WTF::fastFree(this, a2);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::SelectPositionAtBoundaryWithDirection,WebKit::WebPageProxy::selectPositionAtBoundaryWithDirection(WebCore::IntPoint,WebCore::TextGranularity,WebCore::SelectionDirection,BOOL,WTF::CompletionHandler<void ()(void)> &&)::$_0>(WebKit::WebPageProxy::selectPositionAtBoundaryWithDirection(WebCore::IntPoint,WebCore::TextGranularity,WebCore::SelectionDirection,BOOL,WTF::CompletionHandler<void ()(void)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::WebPageProxy::selectPositionAtBoundaryWithDirection(WebCore::IntPoint,WebCore::TextGranularity,WebCore::SelectionDirection,BOOL,WTF::CompletionHandler<void ()(void)> &&)::$_0,IPC::Decoder)#1},void,WebKit::WebPageProxy::selectPositionAtBoundaryWithDirection(WebCore::IntPoint,WebCore::TextGranularity,WebCore::SelectionDirection,BOOL,WTF::CompletionHandler<void ()(void)> &&)::$_0,IPC::Decoder>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F110DD68;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::RefCounted<WebKit::ProcessThrottlerActivity>::deref((v3 + 8), a2);
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::SelectPositionAtBoundaryWithDirection,WebKit::WebPageProxy::selectPositionAtBoundaryWithDirection(WebCore::IntPoint,WebCore::TextGranularity,WebCore::SelectionDirection,BOOL,WTF::CompletionHandler<void ()(void)> &&)::$_0>(WebKit::WebPageProxy::selectPositionAtBoundaryWithDirection(WebCore::IntPoint,WebCore::TextGranularity,WebCore::SelectionDirection,BOOL,WTF::CompletionHandler<void ()(void)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::WebPageProxy::selectPositionAtBoundaryWithDirection(WebCore::IntPoint,WebCore::TextGranularity,WebCore::SelectionDirection,BOOL,WTF::CompletionHandler<void ()(void)> &&)::$_0,IPC::Decoder)#1},void,WebKit::WebPageProxy::selectPositionAtBoundaryWithDirection(WebCore::IntPoint,WebCore::TextGranularity,WebCore::SelectionDirection,BOOL,WTF::CompletionHandler<void ()(void)> &&)::$_0,IPC::Decoder>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F110DD68;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::RefCounted<WebKit::ProcessThrottlerActivity>::deref((v3 + 8), a2);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return WTF::fastFree(this, a2);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::MoveSelectionAtBoundaryWithDirection,WebKit::WebPageProxy::moveSelectionAtBoundaryWithDirection(WebCore::TextGranularity,WebCore::SelectionDirection,WTF::CompletionHandler<void ()(void)> &&)::$_0>(WebKit::WebPageProxy::moveSelectionAtBoundaryWithDirection(WebCore::TextGranularity,WebCore::SelectionDirection,WTF::CompletionHandler<void ()(void)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::WebPageProxy::moveSelectionAtBoundaryWithDirection(WebCore::TextGranularity,WebCore::SelectionDirection,WTF::CompletionHandler<void ()(void)> &&)::$_0,IPC::Decoder)#1},void,WebKit::WebPageProxy::moveSelectionAtBoundaryWithDirection(WebCore::TextGranularity,WebCore::SelectionDirection,WTF::CompletionHandler<void ()(void)> &&)::$_0,IPC::Decoder>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F110DD90;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::RefCounted<WebKit::ProcessThrottlerActivity>::deref((v3 + 8), a2);
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::MoveSelectionAtBoundaryWithDirection,WebKit::WebPageProxy::moveSelectionAtBoundaryWithDirection(WebCore::TextGranularity,WebCore::SelectionDirection,WTF::CompletionHandler<void ()(void)> &&)::$_0>(WebKit::WebPageProxy::moveSelectionAtBoundaryWithDirection(WebCore::TextGranularity,WebCore::SelectionDirection,WTF::CompletionHandler<void ()(void)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::WebPageProxy::moveSelectionAtBoundaryWithDirection(WebCore::TextGranularity,WebCore::SelectionDirection,WTF::CompletionHandler<void ()(void)> &&)::$_0,IPC::Decoder)#1},void,WebKit::WebPageProxy::moveSelectionAtBoundaryWithDirection(WebCore::TextGranularity,WebCore::SelectionDirection,WTF::CompletionHandler<void ()(void)> &&)::$_0,IPC::Decoder>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F110DD90;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::RefCounted<WebKit::ProcessThrottlerActivity>::deref((v3 + 8), a2);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return WTF::fastFree(this, a2);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::SelectPositionAtPoint,WebKit::WebPageProxy::selectPositionAtPoint(WebCore::IntPoint,BOOL,WTF::CompletionHandler<void ()(void)> &&)::$_0>(WebKit::WebPageProxy::selectPositionAtPoint(WebCore::IntPoint,BOOL,WTF::CompletionHandler<void ()(void)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::WebPageProxy::selectPositionAtPoint(WebCore::IntPoint,BOOL,WTF::CompletionHandler<void ()(void)> &&)::$_0,IPC::Decoder)#1},void,WebKit::WebPageProxy::selectPositionAtPoint(WebCore::IntPoint,BOOL,WTF::CompletionHandler<void ()(void)> &&)::$_0,IPC::Decoder>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F110DDB8;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::RefCounted<WebKit::ProcessThrottlerActivity>::deref((v3 + 8), a2);
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::SelectPositionAtPoint,WebKit::WebPageProxy::selectPositionAtPoint(WebCore::IntPoint,BOOL,WTF::CompletionHandler<void ()(void)> &&)::$_0>(WebKit::WebPageProxy::selectPositionAtPoint(WebCore::IntPoint,BOOL,WTF::CompletionHandler<void ()(void)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::WebPageProxy::selectPositionAtPoint(WebCore::IntPoint,BOOL,WTF::CompletionHandler<void ()(void)> &&)::$_0,IPC::Decoder)#1},void,WebKit::WebPageProxy::selectPositionAtPoint(WebCore::IntPoint,BOOL,WTF::CompletionHandler<void ()(void)> &&)::$_0,IPC::Decoder>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F110DDB8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::RefCounted<WebKit::ProcessThrottlerActivity>::deref((v3 + 8), a2);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::WebPage::BeginSelectionInDirection,WTF::CompletionHandler<void ()(BOOL)>>(uint64_t a1, _BYTE *a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 2447;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v25 = v12;
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v12, *a2);
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F110DDE0;
  v14[1] = v13;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v23[0] = v14;
    v23[1] = IdentifierInternal;
    v24 = 1;
    v17 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v25, a5, v23, a6);
    if (v24 == 1)
    {
      v18 = v23[0];
      v23[0] = 0;
      if (v18)
      {
        (*(*v18 + 8))(v18);
      }
    }

    v19 = v25;
    v25 = 0;
    if (v19)
    {
      IPC::Encoder::~Encoder(v19, v16);
      bmalloc::api::tzoneFree(v21, v22);
    }

    if (v17)
    {
      return IdentifierInternal;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_19DE7D090(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
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

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::BeginSelectionInDirection,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F110DDE0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::BeginSelectionInDirection,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F110DDE0;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::BeginSelectionInDirection,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
{
  if (a3 && *a3)
  {
    v4 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
    v5 = *&v4 & ((v4 & 0x100) >> 8);
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return WTF::CompletionHandler<void ()(BOOL)>::operator()((a1 + 8), v5);
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::WebPage::UpdateSelectionWithExtentPoint,WTF::CompletionHandler<void ()(BOOL)>>(uint64_t a1, char *a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 2844;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v28 = v12;
  IPC::ArgumentCoder<WebCore::IntPoint,void>::encode(v12, *a2);
  IPC::Encoder::operator<<<BOOL &>(v12, a2 + 8);
  v13 = a2[9];
  v14 = IPC::Encoder::grow(v12, 1uLL, 1);
  if (!v15 || (*v14 = v13, v16 = *a3, *a3 = 0, v17 = WTF::fastMalloc(0x10), *v17 = &unk_1F110DE08, v17[1] = v16, WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1))
  {
    __break(0xC471u);
    JUMPOUT(0x19DE7D43CLL);
  }

  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  v26[0] = v17;
  v26[1] = IdentifierInternal;
  v27 = 1;
  v20 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v28, a5, v26, a6);
  if (v27 == 1)
  {
    v21 = v26[0];
    v26[0] = 0;
    if (v21)
    {
      (*(*v21 + 8))(v21);
    }
  }

  v22 = v28;
  v28 = 0;
  if (v22)
  {
    IPC::Encoder::~Encoder(v22, v19);
    bmalloc::api::tzoneFree(v24, v25);
  }

  if (v20)
  {
    return IdentifierInternal;
  }

  else
  {
    return 0;
  }
}

void sub_19DE7D460(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
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

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::UpdateSelectionWithExtentPoint,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F110DE08;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::UpdateSelectionWithExtentPoint,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F110DE08;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::UpdateSelectionWithExtentPoint,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
{
  if (a3 && *a3)
  {
    v4 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
    v5 = *&v4 & ((v4 & 0x100) >> 8);
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return WTF::CompletionHandler<void ()(BOOL)>::operator()((a1 + 8), v5);
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::WebPage::UpdateSelectionWithExtentPointAndBoundary,WTF::CompletionHandler<void ()(BOOL)>>(uint64_t a1, char *a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 2845;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v25 = v12;
  IPC::ArgumentCoder<WebCore::IntPoint,void>::encode(v12, *a2);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v12, a2[8]);
  IPC::Encoder::operator<<<BOOL &>(v12, a2 + 9);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v12, a2[10]);
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F110DE30;
  v14[1] = v13;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v23[0] = v14;
    v23[1] = IdentifierInternal;
    v24 = 1;
    v17 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v25, a5, v23, a6);
    if (v24 == 1)
    {
      v18 = v23[0];
      v23[0] = 0;
      if (v18)
      {
        (*(*v18 + 8))(v18);
      }
    }

    v19 = v25;
    v25 = 0;
    if (v19)
    {
      IPC::Encoder::~Encoder(v19, v16);
      bmalloc::api::tzoneFree(v21, v22);
    }

    if (v17)
    {
      return IdentifierInternal;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_19DE7D80C(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
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

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::UpdateSelectionWithExtentPointAndBoundary,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F110DE30;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::UpdateSelectionWithExtentPointAndBoundary,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F110DE30;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::UpdateSelectionWithExtentPointAndBoundary,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
{
  if (a3 && *a3)
  {
    v4 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
    v5 = *&v4 & ((v4 & 0x100) >> 8);
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return WTF::CompletionHandler<void ()(BOOL)>::operator()((a1 + 8), v5);
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::WebPage::RequestRVItemInCurrentSelectedRange,WTF::CompletionHandler<void ()(WebKit::RevealItem const&)>>(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v11 = IPC::Encoder::operator new(0x238, a2);
  *v11 = 2684;
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *(v11 + 1) = a4;
  *(v11 + 68) = 0;
  *(v11 + 70) = 0;
  *(v11 + 69) = 0;
  IPC::Encoder::encodeHeader(v11);
  v24 = v11;
  v12 = *a3;
  *a3 = 0;
  v13 = WTF::fastMalloc(0x10);
  *v13 = &unk_1F110DE58;
  v13[1] = v12;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v22[0] = v13;
    v22[1] = IdentifierInternal;
    v23 = 1;
    v16 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v24, a5, v22, a6);
    if (v23 == 1)
    {
      v17 = v22[0];
      v22[0] = 0;
      if (v17)
      {
        (*(*v17 + 8))(v17);
      }
    }

    v18 = v24;
    v24 = 0;
    if (v18)
    {
      IPC::Encoder::~Encoder(v18, v15);
      bmalloc::api::tzoneFree(v20, v21);
    }

    if (v16)
    {
      return IdentifierInternal;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_19DE7DB7C(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
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

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::RequestRVItemInCurrentSelectedRange,WTF::CompletionHandler<void ()(WebKit::RevealItem const&)>>(WTF::CompletionHandler<void ()(WebKit::RevealItem const&)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F110DE58;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::RequestRVItemInCurrentSelectedRange,WTF::CompletionHandler<void ()(WebKit::RevealItem const&)>>(WTF::CompletionHandler<void ()(WebKit::RevealItem const&)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F110DE58;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::RequestRVItemInCurrentSelectedRange,WTF::CompletionHandler<void ()(WebKit::RevealItem const&)>>(WTF::CompletionHandler<void ()(WebKit::RevealItem const&)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
{
  if (a3 && *a3)
  {
    IPC::Decoder::decode<WebKit::RevealItem>(v13, a3);
    if (v14)
    {
      v11 = v13[0];
      v12 = v13[3];
      WTF::CompletionHandler<void ()(WebKit::RevealItem const&)>::operator()((a1 + 8));
      if (v12)
      {
      }

      result = v11;
      if (v11)
      {
        if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(v11, v5);
        }
      }
    }

    else
    {
      v8 = *a3;
      v9 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v10 = *(a3 + 3);
      if (v10 && v9)
      {
        (*(*v10 + 16))(v10, v8);
      }

      return IPC::Connection::cancelReply<Messages::WebPage::RequestRVItemInCurrentSelectedRange,WTF::CompletionHandler<void ()(WebKit::RevealItem const&)>>((a1 + 8));
    }
  }

  else
  {
    v7 = (a1 + 8);

    return IPC::Connection::cancelReply<Messages::WebPage::RequestRVItemInCurrentSelectedRange,WTF::CompletionHandler<void ()(WebKit::RevealItem const&)>>(v7);
  }

  return result;
}

void sub_19DE7DE38(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, uint64_t a11, void *a12, char a13)
{
  if (a13 == 1)
  {
    if (a12)
    {
    }

    if (a9)
    {
      if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(a9, a2);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_19DE7DEE4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
  }

  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

WTF::StringImpl *IPC::Decoder::decode<WebKit::RevealItem>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<WebKit::RevealItem,void>::decode(a2, a1);
  if ((*(a1 + 32) & 1) == 0)
  {
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

void sub_19DE7DF98(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (*(v2 + 32) == 1)
  {
    v4 = *(v2 + 24);
    *(v2 + 24) = 0;
    if (v4)
    {
    }

    v5 = *v2;
    *v2 = 0;
    if (v5)
    {
      if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, a2);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

void *WTF::Detail::CallableWrapper<WebKit::WebPageProxy::prepareSelectionForContextMenuWithLocationInView(WebCore::IntPoint,WTF::CompletionHandler<void ()(BOOL,WebKit::RevealItem const&)> &&)::$_0,void,BOOL>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F110DE80;
  v3 = a1[3];
  a1[3] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebPageProxy::prepareSelectionForContextMenuWithLocationInView(WebCore::IntPoint,WTF::CompletionHandler<void ()(BOOL,WebKit::RevealItem const&)> &&)::$_0,void,BOOL>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F110DE80;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebPageProxy::prepareSelectionForContextMenuWithLocationInView(WebCore::IntPoint,WTF::CompletionHandler<void ()(BOOL,WebKit::RevealItem const&)> &&)::$_0,void,BOOL>::call(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  if (v3 && ((v4 = *(v3 + 8)) != 0 ? (v5 = a2 == 0) : (v5 = 0), v5))
  {
    v7 = *(v4 + 336);
    v8 = *(v4 + 32);
    v9 = IPC::Encoder::operator new(0x238, a2);
    *v9 = 2651;
    *(v9 + 2) = 0;
    *(v9 + 3) = 0;
    *(v9 + 1) = v8;
    *(v9 + 68) = 0;
    *(v9 + 70) = 0;
    *(v9 + 69) = 0;
    IPC::Encoder::encodeHeader(v9);
    v19 = v9;
    IPC::ArgumentCoder<WebCore::IntPoint,void>::encode(v9, (a1 + 16));
    v10 = *(a1 + 24);
    *(a1 + 24) = 0;
    v11 = WTF::fastMalloc(0x10);
    *v11 = &unk_1F110DEA8;
    *(v11 + 1) = v10;
    if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
    {
      result = 141;
      __break(0xC471u);
    }

    else
    {
      v16[0] = v11;
      v16[1] = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
      v17 = 1;
      WebKit::AuxiliaryProcessProxy::sendMessage(v7, &v19, 0, v16, 1);
      if (v17 == 1)
      {
        v13 = v16[0];
        v16[0] = 0;
        if (v13)
        {
          (*(*v13 + 8))(v13);
        }
      }

      result = v19;
      v19 = 0;
      if (result)
      {
        IPC::Encoder::~Encoder(result, v12);
        return bmalloc::api::tzoneFree(v14, v15);
      }
    }
  }

  else
  {
    WTF::CompletionHandler<void ()(BOOL,WebKit::RevealItem const&)>::operator()((a1 + 24));
    v18 = 0;
    result = 0;
    v16[0] = 0;
  }

  return result;
}

void sub_19DE7E2D8(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, IPC::Encoder *a14)
{
  if (a11 == 1 && a9)
  {
    (*(*a9 + 8))(a9);
  }

  if (a14)
  {
    IPC::Encoder::~Encoder(a14, a2);
    bmalloc::api::tzoneFree(v15, v16);
  }

  _Unwind_Resume(exception_object);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::PrepareSelectionForContextMenuWithLocationInView,WTF::CompletionHandler<void ()(BOOL,WebKit::RevealItem const&)>>(WTF::CompletionHandler<void ()(BOOL,WebKit::RevealItem const&)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F110DEA8;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::PrepareSelectionForContextMenuWithLocationInView,WTF::CompletionHandler<void ()(BOOL,WebKit::RevealItem const&)>>(WTF::CompletionHandler<void ()(BOOL,WebKit::RevealItem const&)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F110DEA8;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::PrepareSelectionForContextMenuWithLocationInView,WTF::CompletionHandler<void ()(BOOL,WebKit::RevealItem const&)>>(WTF::CompletionHandler<void ()(BOOL,WebKit::RevealItem const&)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
{
  if (a3)
  {
    v5 = *a3;
    if (*a3)
    {
      v6 = *(a3 + 1);
      v7 = *(a3 + 2);
      if (v6 <= &v7[-v5])
      {
        *a3 = 0;
        *(a3 + 1) = 0;
        v11 = *(a3 + 3);
        if (v11)
        {
          if (v6)
          {
            (*(*v11 + 16))(v11);
            v5 = *a3;
            v6 = *(a3 + 1);
            goto LABEL_19;
          }
        }

        else
        {
          v6 = 0;
        }

        v5 = 0;
      }

      else
      {
        *(a3 + 2) = v7 + 1;
        if (v7)
        {
          if (*v7 < 2u)
          {
            IPC::Decoder::decode<WebKit::RevealItem>(v19, a3);
            if (v20)
            {
              v17 = v19[0];
              v18 = v19[3];
              WTF::CompletionHandler<void ()(BOOL,WebKit::RevealItem const&)>::operator()((a1 + 8));
              if (v18)
              {
              }

              result = v17;
              if (v17)
              {
                if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  return WTF::StringImpl::destroy(v17, v8);
                }
              }

              return result;
            }

            goto LABEL_23;
          }

          goto LABEL_22;
        }
      }

LABEL_19:
      *a3 = 0;
      *(a3 + 1) = 0;
      v12 = *(a3 + 3);
      if (v12)
      {
        if (v6)
        {
          (*(*v12 + 16))(v12, v5);
          v5 = *a3;
          v6 = *(a3 + 1);
          goto LABEL_22;
        }
      }

      else
      {
        v6 = 0;
      }

      v5 = 0;
LABEL_22:
      *a3 = 0;
      *(a3 + 1) = 0;
      v13 = *(a3 + 3);
      if (v13 && v6)
      {
        (*(*v13 + 16))(v13, v5);
      }

LABEL_23:
      v14 = *a3;
      v15 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v16 = *(a3 + 3);
      if (v16 && v15)
      {
        (*(*v16 + 16))(v16, v14);
      }

      return IPC::Connection::cancelReply<Messages::WebPage::PrepareSelectionForContextMenuWithLocationInView,WTF::CompletionHandler<void ()(BOOL,WebKit::RevealItem const&)>>((a1 + 8));
    }
  }

  v10 = (a1 + 8);

  return IPC::Connection::cancelReply<Messages::WebPage::PrepareSelectionForContextMenuWithLocationInView,WTF::CompletionHandler<void ()(BOOL,WebKit::RevealItem const&)>>(v10);
}